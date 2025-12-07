uint64_t sub_24A7F5698()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7F573C(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A7F57CC(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A7F5878(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x73646F50726961;
  if (v2 != 1)
  {
    v5 = 0x726F737365636361;
    v4 = 0xE900000000000079;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676154726961;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FMIPUTAlertObservationType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6F4D6E4F70656562;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t sub_24A7F5924(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F4D6E4F70656562;
  }

  else
  {
    v3 = 0x647261646E617473;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA00000000006576;
  }

  if (*a2)
  {
    v5 = 0x6F4D6E4F70656562;
  }

  else
  {
    v5 = 0x647261646E617473;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006576;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();
  }

  return v8 & 1;
}

uint64_t sub_24A7F59D0()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7F5A58(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A7F5ACC(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A7F5B5C(uint64_t *a1@<X8>)
{
  v2 = 0x647261646E617473;
  if (*v1)
  {
    v2 = 0x6F4D6E4F70656562;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006576;
  }

  *a1 = v2;
  a1[1] = v3;
}

void __swiftcall FMIPUTAlertEvent.init(sheetType:completionAction:disableItemTapped:didCloseSheet:playSoundCount:tracksCount:tracksElapsedTime:precisionFindingSessionCount:proximityFindingSessionCount:productType:observationType:isPosh:)(FMIPCore::FMIPUTAlertEvent *__return_ptr retstr, FMIPCore::FMIPUTAlertSheetType sheetType, FMIPCore::FMIPUTAlertCompletionType completionAction, Swift::Bool disableItemTapped, Swift::Bool didCloseSheet, Swift::Int playSoundCount, Swift::Int tracksCount, Swift::Double tracksElapsedTime, Swift::Int precisionFindingSessionCount, Swift::Int proximityFindingSessionCount, FMIPCore::FMIPUTAlertProductType productType, FMIPCore::FMIPUTAlertObservationType observationType, Swift::Bool isPosh)
{
  v13 = *completionAction;
  v14 = *productType;
  v15 = *v16;
  retstr->sheetType = *sheetType;
  retstr->completionAction = v13;
  retstr->disableItemTapped = disableItemTapped;
  retstr->didCloseSheet = didCloseSheet;
  retstr->playSoundCount = playSoundCount;
  retstr->tracksCount = tracksCount;
  retstr->tracksElapsedTime = tracksElapsedTime;
  retstr->precisionFindingSessionCount = precisionFindingSessionCount;
  retstr->proximityFindingSessionCount = proximityFindingSessionCount;
  retstr->productType = v14;
  retstr->observationType = v15;
  retstr->isPosh = v17;
}

unint64_t sub_24A7F5E44(char a1)
{
  result = 0x7079547465656873;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x54656C6261736964;
      break;
    case 3:
      result = 0x5379616C50646964;
      break;
    case 4:
      result = 0x6E756F5379616C70;
      break;
    case 5:
      result = 0x6F43736B63617274;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
    case 10:
      result = 0xD00000000000001CLL;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 11:
      result = 0x54746375646F7270;
      break;
    case 12:
      result = 0x746176726573626FLL;
      break;
    case 13:
      result = 0x68736F507369;
      break;
    default:
      return result;
  }

  return result;
}

void FMIPManager.enqueue(UTEvent:item:)(unsigned __int8 *a1, uint64_t a2)
{
  v4 = sub_24A82CA34();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v66 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v66 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v66 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v75 = &v66 - v19;
  MEMORY[0x28223BE20](v18);
  v76 = &v66 - v20;
  v21 = *a1;
  *v89 = *(a1 + 1);
  v22 = *(a1 + 1);
  v74 = *(a1 + 2);
  *&v89[7] = v22;
  v23 = *(a1 + 3);
  v88[0] = *(a1 + 2);
  *(v88 + 15) = *(a1 + 47);
  v24 = type metadata accessor for FMIPUnknownItem(0);
  v25 = *(a2 + *(v24 + 32));
  v26 = *(v25 + 16);
  if (!v26)
  {
    goto LABEL_23;
  }

  v68 = v8;
  v69 = v11;
  v79 = v4;
  v27 = *(v25 + 40);
  v28 = v25;
  v77 = v26;
  v29 = v27;
  v80 = v28;
  v72 = a2;
  v71 = v21;
  v70 = v24;
  if (v77 != 1)
  {
    v31 = (v5 + 8);
    v32 = v28 + 40;
    v33 = 1;
    v73 = v5;
    v67 = v77 - 1;
    v66 = v28 + 40;
LABEL_5:
    v78 = v29;
    v34 = (v32 + 24 * v33);
    while (v33 < *(v80 + 16))
    {
      v35 = v33 + 1;
      v30 = *v34;
      v36 = [v30 timestamp];
      sub_24A82C9F4();

      v37 = [v78 timestamp];
      sub_24A82C9F4();

      LOBYTE(v37) = sub_24A82C9B4();
      v38 = *v31;
      v39 = v79;
      (*v31)(v14, v79);
      v38(v17, v39);
      if (v37)
      {

        v29 = v30;
        v40 = v67 == v33++;
        v5 = v73;
        v32 = v66;
        if (v40)
        {
          goto LABEL_12;
        }

        goto LABEL_5;
      }

      v34 += 3;
      ++v33;
      if (v77 == v35)
      {
        v30 = v78;
        v5 = v73;
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v30 = v29;
LABEL_12:
  v41 = [v30 timestamp];

  v42 = v75;
  sub_24A82C9F4();

  v43 = *(v5 + 32);
  v44 = v76;
  v45 = v79;
  v43(v76, v42, v79);
  v46 = *(v80 + 16);
  if (!v46)
  {
    (*(v5 + 8))(v44, v45);
    a2 = v72;
    LOBYTE(v21) = v71;
    v24 = v70;
LABEL_23:
    v87[0] = *v89;
    *(v87 + 7) = *&v89[7];
    v86[0] = v88[0];
    *(v86 + 15) = *(v88 + 15);
    v58 = v74;
    goto LABEL_25;
  }

  v74 = v43;
  v75 = (v5 + 32);
  v47 = v80;
  v48 = *(v80 + 40);
  if (v46 != 1)
  {
    v77 = v46;
    v49 = (v5 + 8);
    v50 = v47 + 40;
    v51 = 1;
    v73 = v5;
    v67 = v46 - 1;
    v66 = v47 + 40;
LABEL_15:
    v78 = v48;
    v52 = (v50 + 24 * v51);
    v53 = v51;
    while (v53 < *(v80 + 16))
    {
      v51 = v53 + 1;
      v48 = *v52;
      v54 = [v78 timestamp];
      sub_24A82C9F4();

      v55 = [v48 timestamp];
      sub_24A82C9F4();

      LOBYTE(v55) = sub_24A82C9B4();
      v56 = *v49;
      v57 = v79;
      (*v49)(v14, v79);
      v56(v17, v57);
      if (v55)
      {

        v45 = v79;
        v5 = v73;
        v50 = v66;
        if (v67 != v53)
        {
          goto LABEL_15;
        }

        goto LABEL_24;
      }

      v52 += 3;
      ++v53;
      if (v77 == v51)
      {
        v48 = v78;
        v45 = v79;
        v5 = v73;
        goto LABEL_24;
      }
    }

LABEL_30:
    __break(1u);
    return;
  }

LABEL_24:
  v59 = [v48 timestamp];

  v60 = v68;
  sub_24A82C9F4();

  v61 = v69;
  v74(v69, v60, v45);
  v87[0] = *v89;
  *(v87 + 7) = *&v89[7];
  v86[0] = v88[0];
  *(v86 + 15) = *(v88 + 15);
  v58 = *(v80 + 16) - 1;
  v62 = v76;
  sub_24A82C974();
  v23 = v63;
  v64 = *(v5 + 8);
  v64(v61, v45);
  v64(v62, v45);
  a2 = v72;
  LOBYTE(v21) = v71;
  v24 = v70;
LABEL_25:
  if (*(a2 + *(v24 + 24) + 8))
  {
    v65 = 1;
  }

  else
  {
    v65 = v21;
  }

  v81 = v65;
  *v82 = v87[0];
  *&v82[7] = *(v87 + 7);
  v83 = v58;
  v84 = v23;
  *v85 = v86[0];
  *&v85[15] = *(v86 + 15);
  _s8FMIPCore13FMIPAnalyticsV16sendUTAlertEvent5eventyAA011FMIPUTAlertE0V_tFZ_0(&v81);
}

void sub_24A7F6740(uint64_t a1)
{
  v2 = sub_24A6AE58C(MEMORY[0x277D84F90]);
  v3 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v4 = sub_24A82CF94();

  v5 = [v3 initWithString_];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v5, 0x7079547465656873, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v7 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v8 = sub_24A82CF94();

  v9 = [v7 initWithString_];

  v10 = swift_isUniquelyReferenced_nonNull_native();
  v45[0] = v2;
  sub_24A6AE690(v9, 0xD000000000000010, 0x800000024A84A660, v10);
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v45[0] = v2;
  sub_24A6AE690(v11, 0x54656C6261736964, 0xED00006465707061, v12);
  v13 = *(a1 + 8);
  v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v14, 0x5379616C50646964, 0xEC000000646E756FLL, v15);
  v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v45[0] = v2;
  sub_24A6AE690(v16, 0x6E756F5379616C70, 0xEE00746E756F4364, v17);
  v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v45[0] = v2;
  sub_24A6AE690(v18, 0x6F43736B63617274, 0xEB00000000746E75, v19);
  v20 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v45[0] = v2;
  sub_24A6AE690(v20, 0xD000000000000011, 0x800000024A84A680, v21);
  v22 = *(a1 + 32);
  v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v23, 0xD00000000000001ALL, 0x800000024A84A6A0, v24);
  v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v45[0] = v2;
  sub_24A6AE690(v25, 0xD00000000000001CLL, 0x800000024A84A6C0, v26);
  v27 = *(a1 + 40);
  v28 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v28, 0xD00000000000001ALL, 0x800000024A84A6E0, v29);
  v30 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v31 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v30, 0xD00000000000001CLL, 0x800000024A84A700, v31);
  v32 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v33 = sub_24A82CF94();

  v34 = [v32 initWithString_];

  v35 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v34, 0x54746375646F7270, 0xEB00000000657079, v35);
  v36 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v37 = sub_24A82CF94();

  v38 = [v36 initWithString_];

  v39 = swift_isUniquelyReferenced_nonNull_native();
  v45[0] = v2;
  sub_24A6AE690(v38, 0x746176726573626FLL, 0xEF657079546E6F69, v39);
  v40 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v41 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v40, 0x68736F507369, 0xE600000000000000, v41);
  v42 = sub_24A82CF94();
  v43 = swift_allocObject();
  *(v43 + 16) = v2;
  v45[4] = sub_24A6AEBB4;
  v45[5] = v43;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 1107296256;
  v45[2] = sub_24A6AEADC;
  v45[3] = &unk_285DCC9D8;
  v44 = _Block_copy(v45);

  AnalyticsSendEventLazy();
  _Block_release(v44);
}

uint64_t _s8FMIPCore13FMIPAnalyticsV16sendUTAlertEvent5eventyAA011FMIPUTAlertE0V_tFZ_0(uint64_t a1)
{
  v2 = sub_24A82CDF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A82CE54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF5CC50 != -1)
  {
    swift_once();
  }

  v10 = swift_allocObject();
  v11 = *(a1 + 16);
  *(v10 + 16) = *a1;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(a1 + 32);
  *(v10 + 63) = *(a1 + 47);
  aBlock[4] = sub_24A7F7390;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCC988;
  v12 = _Block_copy(aBlock);
  sub_24A82CE24();
  v14[1] = MEMORY[0x277D84F90];
  sub_24A6FA9B0();
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A6F2828();
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v9, v5, v12);
  _Block_release(v12);
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

unint64_t sub_24A7F7194()
{
  result = qword_27EF5F580;
  if (!qword_27EF5F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F580);
  }

  return result;
}

unint64_t sub_24A7F71EC()
{
  result = qword_27EF5F588;
  if (!qword_27EF5F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F588);
  }

  return result;
}

unint64_t sub_24A7F7244()
{
  result = qword_27EF5F590;
  if (!qword_27EF5F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F590);
  }

  return result;
}

unint64_t sub_24A7F729C()
{
  result = qword_27EF5F598;
  if (!qword_27EF5F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F598);
  }

  return result;
}

__n128 sub_24A7F7330(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24A7F734C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[51])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t FMIPRemoveDeviceAction.__allocating_init(device:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v3 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v7 = 0;
  v7[1] = 0;
  *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A68D6F8(a1, v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, type metadata accessor for FMIPDevice);
  return v2;
}

uint64_t FMIPRemoveDeviceAction.init(device:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v2 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A68D6F8(a1, v1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device, type metadata accessor for FMIPDevice);
  return v1;
}

uint64_t FMIPRemoveDeviceAction.__deallocating_deinit()
{
  FMIPDeviceAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24A7F7610()
{
  v1 = OBJC_IVAR____TtC8FMIPCore20FMIPRemoveItemAction_forced;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24A7F7654(char a1)
{
  v3 = OBJC_IVAR____TtC8FMIPCore20FMIPRemoveItemAction_forced;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t FMIPRemoveItemAction.init(item:forced:)(uint64_t a1, char a2)
{
  *(v2 + OBJC_IVAR____TtC8FMIPCore20FMIPRemoveItemAction_forced) = a2;
  sub_24A68D6F8(a1, v2 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, type metadata accessor for FMIPItem);
  return v2;
}

uint64_t sub_24A7F7858()
{
  v1 = OBJC_IVAR____TtC8FMIPCore25FMIPRemoveItemGroupAction_forced;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24A7F789C(char a1)
{
  v3 = OBJC_IVAR____TtC8FMIPCore25FMIPRemoveItemGroupAction_forced;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24A7F7974(uint64_t a1, char a2, void *a3, void *a4, uint64_t (*a5)(void))
{
  v10 = swift_allocObject();
  *(v10 + *a3) = a2;
  sub_24A68D6F8(a1, v10 + *a4, a5);
  return v10;
}

uint64_t FMIPRemoveItemGroupAction.init(itemGroup:forced:)(uint64_t a1, char a2)
{
  *(v2 + OBJC_IVAR____TtC8FMIPCore25FMIPRemoveItemGroupAction_forced) = a2;
  sub_24A68D6F8(a1, v2 + OBJC_IVAR____TtC8FMIPCore19FMIPItemGroupAction_itemGroup, type metadata accessor for FMIPItemGroup);
  return v2;
}

uint64_t sub_24A7F7A5C(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t *a5)
{
  if (a4(a1 + *a3, a2 + *a3))
  {
    v8 = *a5;
    swift_beginAccess();
    v9 = *(a1 + v8);
    v10 = *a5;
    swift_beginAccess();
    v11 = v9 ^ *(a2 + v10) ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_24A7F7B88(void *a1, uint64_t (*a2)(void))
{
  sub_24A69F384(v2 + *a1, a2);

  return swift_deallocClassInstance();
}

uint64_t sub_24A7F7C10(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a7)
{
  v8 = *a1;
  v9 = *a2;
  if (a6(*a1 + *a5, *a2 + *a5, a3, a4))
  {
    v10 = *a7;
    swift_beginAccess();
    v11 = *(v8 + v10);
    v12 = *a7;
    swift_beginAccess();
    v13 = v11 ^ *(v9 + v12) ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_24A7F7CAC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t sub_24A7F7D00(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

Swift::Bool __swiftcall CLLocation.fmifIsNearBy(_:inBTRangeDistanceInMeters:)(CLLocation _, Swift::Double inBTRangeDistanceInMeters)
{
  isa = _.super.isa;
  [v2 distanceFromLocation_];
  v6 = v5;
  [v2 horizontalAccuracy];
  v8 = v7;
  [(objc_class *)isa horizontalAccuracy];
  return v6 / sqrt(inBTRangeDistanceInMeters * inBTRangeDistanceInMeters + v8 * v8 + v9 * v9) < 1.5;
}

void sub_24A7F7FFC(void *a1)
{
  v2 = sub_24A82CA34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 coordinate];
  v7 = v6;
  [a1 coordinate];
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithGEOCoordinate_];
  if (!v9)
  {
    return;
  }

  v10 = v9;
  v11 = [a1 timestamp];
  sub_24A82C9F4();

  sub_24A82C9D4();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  [v10 setTimestamp_];
  [a1 horizontalAccuracy];
  [v10 setHorizontalAccuracy_];
  [a1 verticalAccuracy];
  [v10 setVerticalAccuracy_];
  [a1 course];
  [v10 setCourse_];
  [a1 courseAccuracy];
  [v10 setCourseAccuracy_];
  [a1 speed];
  [v10 setSpeed_];
  [a1 speedAccuracy];
  [v10 setSpeedAccuracy_];
  [a1 altitude];
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v14 <= -2147483650.0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v14 >= 2147483650.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v10 setAltitude_];
  v15 = [a1 floor];
  if (!v15)
  {
LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

  v16 = v15;
  v17 = [v15 level];

  if (v17 < 0xFFFFFFFF80000000)
  {
LABEL_18:
    __break(1u);
    return;
  }

  if (v17 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  [v10 setLevelOrdinal_];
  v18 = [a1 referenceFrame];
  if (v18 > 2)
  {
    v19 = 0;
  }

  else
  {
    v19 = dword_24A83FE50[v18];
  }

  [v10 setReferenceFrame_];
}

uint64_t type metadata accessor for FMIPSyncDeviceRequest(uint64_t a1)
{
  result = qword_281514DF8;
  if (!qword_281514DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A7F83D0()
{
  sub_24A82CB74();

  return swift_deallocClassInstance();
}

id String.isEmail.getter(uint64_t a1, uint64_t a2)
{
  if (qword_27EF5CC30 != -1)
  {
    swift_once();
  }

  v2 = qword_27EF5F5D0;
  v3 = sub_24A82CF94();
  v4 = [v2 evaluateWithObject_];

  return v4;
}

uint64_t sub_24A7F8500()
{
  sub_24A7F8B54();
  sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24A8327A0;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_24A6B243C();
  *(v0 + 32) = 0xD000000000000029;
  *(v0 + 40) = 0x800000024A84A880;
  result = sub_24A82D464();
  qword_27EF5F5D0 = result;
  return result;
}

id static String.emailPredicate.getter()
{
  if (qword_27EF5CC30 != -1)
  {
    swift_once();
  }

  v1 = qword_27EF5F5D0;

  return v1;
}

BOOL String.isPhoneNumber.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A82C604();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v20 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v20 - v12;
  sub_24A82C584();
  sub_24A82C594();
  sub_24A82C5F4();
  sub_24A82C5B4();
  sub_24A82C5F4();
  v14 = *(v5 + 8);
  v14(v8, v4);
  sub_24A82C5C4();
  sub_24A82C5F4();
  v14(v8, v4);
  v20[0] = a1;
  v20[1] = a2;
  sub_24A6B2490();
  v20[0] = sub_24A82D664();
  sub_24A6BBA94(&qword_27EF5D9D0, &qword_24A835090);
  sub_24A6FC920();
  v15 = sub_24A82CF74();
  v17 = v16;

  v14(v11, v4);
  v14(v13, v4);

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  return v18 != 0;
}

uint64_t String.sanitized.getter(uint64_t a1, unint64_t a2, __n128 a3)
{
  v5 = sub_24A82D154();

  if (v5)
  {
    v6 = sub_24A82D0A4();
    v7 = sub_24A7F8AA4(v6, a1, a2);
    v9 = v8;
    v11 = v10;
    v13 = v12;

    a1 = MEMORY[0x24C21C960](v7, v9, v11, v13);
    a2 = v14;
  }

  if (sub_24A82D154())
  {
    v15 = sub_24A82D0A4();
    v16 = sub_24A7F8AA4(v15, a1, a2);
    v18 = v17;
    v20 = v19;
    v22 = v21;

    a1 = MEMORY[0x24C21C960](v16, v18, v20, v22);
  }

  return a1;
}

Swift::String __swiftcall String.deletingPrefix(_:)(Swift::String a1)
{
  v3 = v2;
  v4 = v1;
  v5 = sub_24A82D154();

  if (v5)
  {
    v6 = sub_24A82D0A4();
    v7 = sub_24A7F8AA4(v6, v4, v3);
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v4 = MEMORY[0x24C21C960](v7, v9, v11, v13);
    v3 = v14;
  }

  v15 = v4;
  v16 = v3;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

unint64_t sub_24A7F8AA4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_24A82D0C4();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_24A82D1A4();
}

unint64_t sub_24A7F8B54()
{
  result = qword_27EF5F5E0;
  if (!qword_27EF5F5E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF5F5E0);
  }

  return result;
}

void __swiftcall FMIPPerson.init(identifier:person:)(FMIPCore::FMIPPerson *__return_ptr retstr, Swift::String identifier, FMIPCore::FMIPPerson *person)
{
  lastName = person->lastName;
  firstName = person->firstName;
  v12 = lastName;
  v5 = *&person->username._object;
  v13 = *&person->hasFamilyMembers;
  v14 = v5;
  v15 = *&person->identifier._object;
  object = person->phoneNumber.value._object;
  v6 = firstName._object;
  retstr->firstName._countAndFlagsBits = firstName._countAndFlagsBits;
  retstr->firstName._object = v6;
  v7 = v12._object;
  retstr->lastName._countAndFlagsBits = v12._countAndFlagsBits;
  retstr->lastName._object = v7;
  v8 = v14;
  retstr->username._countAndFlagsBits = *(&v13 + 1);
  retstr->username._object = v8;
  *&retstr->deviceFetchStatus = *(&v13 + 1);
  retstr->hasFamilyMembers = v13;
  retstr->isAccountHSA = BYTE3(v13);
  retstr->identifier = identifier;
  v10 = *(&v15 + 1);
  v9 = object;

  sub_24A6EF9B4(&firstName);
  retstr->phoneNumber.value._countAndFlagsBits = v10;
  retstr->phoneNumber.value._object = v9;
}

FMIPCore::FMIPPersonDeviceFetchStatus_optional __swiftcall FMIPPersonDeviceFetchStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FMIPPersonDeviceFetchStatus.rawValue.getter()
{
  if (*v0)
  {
    return 1162760004;
  }

  else
  {
    return 0x474E4944414F4CLL;
  }
}

uint64_t sub_24A7F8CFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1162760004;
  }

  else
  {
    v3 = 0x474E4944414F4CLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1162760004;
  }

  else
  {
    v5 = 0x474E4944414F4CLL;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();
  }

  return v8 & 1;
}

uint64_t sub_24A7F8D9C()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7F8E18(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A7F8E80(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7F8EF8@<X0>(char *a2@<X8>)
{
  v3 = sub_24A82D9C4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_24A7F8F58(uint64_t *a1@<X8>)
{
  v2 = 1162760004;
  if (!*v1)
  {
    v2 = 0x474E4944414F4CLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

FMIPCore::FMIPAccountFormatter_optional __swiftcall FMIPAccountFormatter.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t FMIPPerson.firstName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FMIPPerson.lastName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FMIPPerson.username.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t FMIPPerson.identifier.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t FMIPPerson.phoneNumber.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_24A7F9114()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A821BC4(v3, v1);
  return sub_24A82DD24();
}

uint64_t sub_24A7F9164(uint64_t a1)
{
  v2 = *v1;
  sub_24A82DCC4();
  sub_24A821BC4(v4, v2);
  return sub_24A82DD24();
}

unint64_t sub_24A7F91A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A7F9A8C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_24A7F91D8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A693BDC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_24A7F9204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A7F9A8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A7F922C(uint64_t a1)
{
  v2 = sub_24A693B6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7F9268(uint64_t a1)
{
  v2 = sub_24A693B6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPPerson.encode(to:)(void *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5F5F0, &unk_24A83FEB8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - v5;
  v7 = *(v1 + 16);
  v26 = *(v1 + 24);
  v27 = v7;
  v31 = *(v1 + 32);
  v25 = *(v1 + 33);
  v24 = *(v1 + 34);
  v20 = *(v1 + 35);
  v8 = *(v1 + 40);
  v22 = *(v1 + 48);
  v23 = v8;
  v9 = *(v1 + 64);
  v19[1] = *(v1 + 56);
  v19[2] = v9;
  v10 = *(v1 + 80);
  v21 = *(v1 + 72);
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  sub_24A67DF6C(v12, v11);
  sub_24A693B6C();
  sub_24A82DD84();
  LOBYTE(v29) = 4;
  v15 = v28;
  sub_24A82DB04();
  if (!v15)
  {
    v28 = v10;
    v16 = v21;
    LOBYTE(v29) = 5;
    sub_24A82DB04();
    LOBYTE(v29) = 6;
    sub_24A82DB04();
    LOBYTE(v29) = 0;
    sub_24A82DB34();
    LOBYTE(v29) = 1;
    sub_24A82DB04();
    v27 = 0;

    LOBYTE(v29) = 2;
    v17 = v27;
    sub_24A82DB14();
    if (!v17)
    {
      LOBYTE(v29) = 3;
      sub_24A82DB14();
      LOBYTE(v29) = 7;
      sub_24A82DB04();
      v29 = v16;
      v30 = v28;
      v32 = 8;
      sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
      sub_24A6CCEB0();
      sub_24A82DB44();
    }
  }

  return (*(v4 + 8))(v6, v14);
}

uint64_t _s8FMIPCore10FMIPPersonV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v31 = *(a1 + 33);
  v27 = *(a1 + 35);
  v5 = a1[5];
  v6 = a1[6];
  v24 = a1[7];
  v23 = a1[8];
  *(&v25 + 1) = a1[10];
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v29 = *(a1 + 34);
  v30 = *(a2 + 33);
  v28 = *(a2 + 34);
  v26 = *(a2 + 35);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v22 = *(a2 + 56);
  v20 = a1[9];
  v21 = *(a2 + 64);
  v19 = *(a2 + 72);
  *&v25 = *(a2 + 80);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_24A82DC04() & 1) == 0 || (v2 != v8 || v3 != v7) && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  if (v5 == v10 && v6 == v11)
  {
    if (v4 != v9)
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_24A82DC04();
    result = 0;
    if (v13 & 1) == 0 || ((v4 ^ v9))
    {
      return result;
    }
  }

  if (v31)
  {
    v14 = 1162760004;
  }

  else
  {
    v14 = 0x474E4944414F4CLL;
  }

  if (v31)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  if (v30)
  {
    v16 = 1162760004;
  }

  else
  {
    v16 = 0x474E4944414F4CLL;
  }

  if (v30)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE700000000000000;
  }

  if (v14 == v16 && v15 == v17)
  {

    result = 0;
    if (v29 != v28)
    {
      return result;
    }
  }

  else
  {
    v18 = sub_24A82DC04();

    result = 0;
    if (v18 & 1) == 0 || ((v29 ^ v28))
    {
      return result;
    }
  }

  if (((v27 ^ v26) & 1) == 0)
  {
    if ((v24 != v22 || v23 != v21) && (sub_24A82DC04() & 1) == 0)
    {
      return 0;
    }

    result = v25 == 0;
    if (*(&v25 + 1) && v25)
    {
      if (v20 == v19 && *(&v25 + 1) == v25)
      {
        return 1;
      }

      else
      {

        return sub_24A82DC04();
      }
    }
  }

  return result;
}

unint64_t sub_24A7F98F0()
{
  result = qword_27EF5F5F8;
  if (!qword_27EF5F5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F5F8);
  }

  return result;
}

unint64_t sub_24A7F9948()
{
  result = qword_27EF5F600;
  if (!qword_27EF5F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F600);
  }

  return result;
}

__n128 sub_24A7F99BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_24A7F99E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A7F9A38()
{
  result = qword_27EF5F608;
  if (!qword_27EF5F608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F608);
  }

  return result;
}

unint64_t sub_24A7F9A8C(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A82D9C4();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

void *FMIPReverseGeocodingCache.__allocating_init(preferredLocale:)(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  *(swift_allocObject() + qword_27EF78FC8 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_24A67E964(a1, v4, &qword_27EF5E930, &unk_24A8343F0);
  v5 = sub_24A67F608(v4);
  sub_24A67F378(a1, &qword_27EF5E930, &unk_24A8343F0);
  return v5;
}

void sub_24A7F9BC4(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for FMReverseGeocodingRequest(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v46 - v11;
  sub_24A75E6A0(a2, v50);
  memcpy(v51, v50, 0x120uLL);
  if (sub_24A6921A8(v51) != 1)
  {
    memcpy(a3, v50, 0x120uLL);
    nullsub_1();
    return;
  }

  v52 = a3;
  memcpy(v49, v50, sizeof(v49));
  sub_24A67F378(v49, &unk_27EF5E0D0, &qword_24A8319E0);
  v13 = sub_24A6F47C0();
  v15 = v14;
  v16 = qword_27EF5EFB8;
  swift_beginAccess();
  if (!*(*(a1 + v16) + 16))
  {

    goto LABEL_10;
  }

  sub_24A6A2D48(v13, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_10:
    if (qword_27EF5CB88 != -1)
    {
      swift_once();
    }

    v31 = sub_24A82CDC4();
    sub_24A6797D0(v31, qword_27EF78C00);
    sub_24A7FCAF4(a2, v12, type metadata accessor for FMReverseGeocodingRequest);

    v32 = sub_24A82CD94();
    v33 = sub_24A82D504();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v47 = v3;
      v35 = v34;
      v46 = swift_slowAlloc();
      *&v48[0] = v46;
      *v35 = 136315394;
      v36 = sub_24A82DDB4();
      v38 = sub_24A68761C(v36, v37, v48);

      *(v35 + 4) = v38;
      *(v35 + 12) = 2080;
      v39 = FMReverseGeocodingRequest.debugDescription.getter();
      v41 = v40;
      sub_24A7FC860(v12, type metadata accessor for FMReverseGeocodingRequest);
      v42 = sub_24A68761C(v39, v41, v48);

      *(v35 + 14) = v42;
      _os_log_impl(&dword_24A675000, v32, v33, "%s: Loading new address for %s", v35, 0x16u);
      v43 = v46;
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v43, -1, -1);
      MEMORY[0x24C21E1D0](v35, -1, -1);
    }

    else
    {

      sub_24A7FC860(v12, type metadata accessor for FMReverseGeocodingRequest);
    }

    sub_24A75F7DC(a2, 0, 0, 0);
    sub_24A68808C(v48);
    v44 = v52;
    goto LABEL_18;
  }

  v47 = v3;
  if (qword_27EF5CB88 != -1)
  {
    swift_once();
  }

  v19 = sub_24A82CDC4();
  sub_24A6797D0(v19, qword_27EF78C00);
  sub_24A7FCAF4(a2, v10, type metadata accessor for FMReverseGeocodingRequest);

  v20 = sub_24A82CD94();
  v21 = sub_24A82D504();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v48[0] = v23;
    *v22 = 136315394;
    v24 = sub_24A82DDB4();
    v26 = sub_24A68761C(v24, v25, v48);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    v27 = FMReverseGeocodingRequest.debugDescription.getter();
    v29 = v28;
    sub_24A7FC860(v10, type metadata accessor for FMReverseGeocodingRequest);
    v30 = sub_24A68761C(v27, v29, v48);

    *(v22 + 14) = v30;
    _os_log_impl(&dword_24A675000, v20, v21, "%s: Already loading address for same geohash as %s, ignoring.", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v23, -1, -1);
    MEMORY[0x24C21E1D0](v22, -1, -1);
  }

  else
  {

    sub_24A7FC860(v10, type metadata accessor for FMReverseGeocodingRequest);
  }

  v45 = v52;
  sub_24A68808C(v48);
  v44 = v45;
LABEL_18:
  memcpy(v44, v48, 0x120uLL);
}

uint64_t sub_24A7FA1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a2;
  v7 = sub_24A82CDF4();
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_24A82CE54();
  v10 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FMReverseGeocodingRequest(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v4 + qword_27EF5EFD0);
  sub_24A7FCAF4(a1, v16, type metadata accessor for FMReverseGeocodingRequest);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  sub_24A7FCB5C(v16, v19 + v17);
  v20 = (v19 + v18);
  *v20 = v24;
  v20[1] = a3;
  aBlock[4] = sub_24A7FCBC0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCCCE0;
  v21 = _Block_copy(aBlock);

  sub_24A82CE24();
  v28 = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v12, v9, v21);
  _Block_release(v21);
  (*(v27 + 8))(v9, v7);
  (*(v10 + 8))(v12, v26);
}

void sub_24A7FA540(uint64_t a1, uint64_t *a2, void (*a3)(_BYTE *), uint64_t a4)
{
  sub_24A75E6A0(a2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_24A6921A8(__dst) == 1)
  {
    memcpy(v16, __src, sizeof(v16));
    sub_24A67F378(v16, &unk_27EF5E0D0, &qword_24A8319E0);
    v8 = sub_24A6F47C0();
    v10 = v9;
    v11 = qword_27EF5EFB8;
    swift_beginAccess();
    if (*(*(a1 + v11) + 16))
    {

      sub_24A6A2D48(v8, v10);
      v13 = v12;

      if (v13)
      {
        sub_24A7FA70C(a2, a3, a4);
        return;
      }
    }

    else
    {
    }

    sub_24A75FBAC(a2, 0, a3, a4);
  }

  else
  {
    memcpy(v15, __src, sizeof(v15));
    memcpy(v14, __src, sizeof(v14));
    sub_24A67E964(v15, v16, &unk_27EF5E0D0, &qword_24A8319E0);
    a3(v14);
    sub_24A67F378(v15, &unk_27EF5E0D0, &qword_24A8319E0);
    memcpy(v16, v14, sizeof(v16));
    sub_24A67F378(v16, &unk_27EF5E0D0, &qword_24A8319E0);
  }
}

uint64_t sub_24A7FA70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24A82CDF4();
  v27 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A82CE54();
  v25 = *(v11 - 8);
  v26 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMReverseGeocodingRequest(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *(v4 + qword_27EF5EFD0);
  sub_24A7FCAF4(a1, v17, type metadata accessor for FMReverseGeocodingRequest);
  v18 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  sub_24A7FCB5C(v17, v20 + v18);
  v21 = (v20 + v19);
  *v21 = a2;
  v21[1] = a3;
  aBlock[4] = sub_24A7FCBD8;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCCD30;
  v22 = _Block_copy(aBlock);

  sub_24A6A7314(a2, a3);
  sub_24A82CE24();
  v28 = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v13, v10, v22);
  _Block_release(v22);
  (*(v27 + 8))(v10, v8);
  (*(v25 + 8))(v13, v26);
}

void sub_24A7FAAA8(void *a1, uint64_t *a2, void (*a3)(_BYTE *), uint64_t a4)
{
  v54 = a3;
  v7 = type metadata accessor for FMReverseGeocodingRequest(0);
  v53 = *(v7 - 8);
  v8 = *(v53 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v48[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v48[-v11];
  v13 = sub_24A6F47C0();
  v15 = v14;
  v16 = qword_27EF5EFB8;
  swift_beginAccess();
  v17 = *(a1 + v16);
  if (!*(v17 + 16))
  {

    v38 = v54;
    if (!v54)
    {
      return;
    }

LABEL_10:
    sub_24A75E6A0(a2, v55);
    v38(v55);
    memcpy(v56, v55, sizeof(v56));
    sub_24A67F378(v56, &unk_27EF5E0D0, &qword_24A8319E0);
    return;
  }

  v52 = a4;

  v18 = sub_24A6A2D48(v13, v15);
  v20 = v19;

  if ((v20 & 1) == 0)
  {

    v38 = v54;
    if (!v54)
    {
      return;
    }

    goto LABEL_10;
  }

  v21 = *(*(v17 + 56) + 8 * v18);

  if (qword_27EF5CB88 != -1)
  {
    swift_once();
  }

  v22 = sub_24A82CDC4();
  sub_24A6797D0(v22, qword_27EF78C00);
  sub_24A7FCAF4(a2, v12, type metadata accessor for FMReverseGeocodingRequest);
  v23 = v21;

  v24 = sub_24A82CD94();
  v25 = sub_24A82D504();
  v51 = v23;

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v56[0] = v50;
    *v26 = 136315650;
    v27 = sub_24A82DDB4();
    v49 = v25;
    v29 = sub_24A68761C(v27, v28, v56);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2080;
    v30 = FMReverseGeocodingRequest.debugDescription.getter();
    v32 = sub_24A68761C(v30, v31, v56);

    *(v26 + 14) = v32;
    *(v26 + 22) = 2080;
    v33 = FMReverseGeocodingRequest.debugDescription.getter();
    v35 = v34;
    sub_24A7FC860(v12, type metadata accessor for FMReverseGeocodingRequest);
    v36 = sub_24A68761C(v33, v35, v56);

    *(v26 + 24) = v36;
    _os_log_impl(&dword_24A675000, v24, v49, "%s: Attaching to an existing operation: %s, source: %s", v26, 0x20u);
    v37 = v50;
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v37, -1, -1);
    MEMORY[0x24C21E1D0](v26, -1, -1);
  }

  else
  {

    sub_24A7FC860(v12, type metadata accessor for FMReverseGeocodingRequest);
  }

  sub_24A7FCAF4(a2, v10, type metadata accessor for FMReverseGeocodingRequest);
  v39 = (*(v53 + 80) + 24) & ~*(v53 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = a1;
  sub_24A7FCB5C(v10, v40 + v39);
  v41 = (v40 + ((v8 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));
  v42 = v54;
  v43 = v52;
  *v41 = v54;
  v41[1] = v43;
  v56[4] = sub_24A7FCBF0;
  v56[5] = v40;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 1107296256;
  v56[2] = sub_24A699BA0;
  v56[3] = &unk_285DCCD80;
  v44 = _Block_copy(v56);
  v45 = objc_opt_self();

  sub_24A6A7314(v42, v43);
  v46 = [v45 blockOperationWithBlock_];
  _Block_release(v44);

  v47 = v51;
  [v46 addDependency_];
  [*(a1 + qword_27EF5EFC8) addOperation_];
}

uint64_t sub_24A7FB034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24A82CDF4();
  v27 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A82CE54();
  v25 = *(v11 - 8);
  v26 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMReverseGeocodingRequest(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *(a1 + qword_27EF5EFD0);
  sub_24A7FCAF4(a2, v17, type metadata accessor for FMReverseGeocodingRequest);
  v18 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  sub_24A7FCB5C(v17, v20 + v18);
  v21 = (v20 + v19);
  *v21 = a3;
  v21[1] = a4;
  aBlock[4] = sub_24A7FCD60;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCCDD0;
  v22 = _Block_copy(aBlock);

  sub_24A6A7314(a3, a4);
  sub_24A82CE24();
  v28 = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v13, v10, v22);
  _Block_release(v22);
  (*(v27 + 8))(v10, v8);
  (*(v25 + 8))(v13, v26);
}

uint64_t sub_24A7FB3D0(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v71 = a3;
  v72 = a4;
  v6 = sub_24A82CDF4();
  v77 = *(v6 - 8);
  v78 = v6;
  MEMORY[0x28223BE20](v6);
  v75 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_24A82CE54();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A82CE04();
  v69 = *(v9 - 8);
  v70 = v9;
  MEMORY[0x28223BE20](v9);
  v68 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A82CA34();
  v65 = *(v11 - 8);
  v66 = v11;
  MEMORY[0x28223BE20](v11);
  v64 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FMReverseGeocodingRequest(0);
  MEMORY[0x28223BE20](v13 - 8);
  v67 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A6BBA94(&unk_27EF5E150, &unk_24A83CCC0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v63 - v17;
  v19 = sub_24A6BBA94(&qword_27EF5E148, qword_24A837790);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v63 - v20;
  v79 = a2;
  v63 = a2[2];
  v22 = sub_24A6F47C0();
  v24 = v23;
  v25 = qword_27EF5EFA8;
  swift_beginAccess();
  v26 = *(a1 + v25);
  if (*(v26 + 16) && (, v27 = sub_24A6A2D48(v22, v24), v29 = v28, , (v29 & 1) != 0))
  {
    sub_24A67E964(*(v26 + 56) + *(v16 + 72) * v27, v21, &unk_27EF5E150, &unk_24A83CCC0);

    v30 = 0;
  }

  else
  {

    v30 = 1;
  }

  (*(v16 + 56))(v21, v30, 1, v15);
  if ((*(v16 + 48))(v21, 1, v15))
  {
    sub_24A67F378(v21, &qword_27EF5E148, qword_24A837790);
    sub_24A68808C(v84);
  }

  else
  {
    sub_24A67E964(v21, v18, &unk_27EF5E150, &unk_24A83CCC0);
    sub_24A67F378(v21, &qword_27EF5E148, qword_24A837790);
    memcpy(v83, &v18[*(v15 + 48)], sizeof(v83));
    sub_24A76ECE4(v83, v85);
    sub_24A67F378(v18, &unk_27EF5E150, &unk_24A83CCC0);
    memcpy(v85, v83, 0x120uLL);
    nullsub_1();
    memcpy(v84, v85, 0x120uLL);
  }

  v31 = v67;
  if (qword_27EF5CB88 != -1)
  {
    swift_once();
  }

  v32 = sub_24A82CDC4();
  sub_24A6797D0(v32, qword_27EF78C00);
  sub_24A7FCAF4(v79, v31, type metadata accessor for FMReverseGeocodingRequest);
  sub_24A67E964(v84, v85, &unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A67E964(v84, v85, &unk_27EF5E0D0, &qword_24A8319E0);

  v33 = sub_24A82CD94();
  v34 = sub_24A82D504();

  sub_24A67F378(v84, &unk_27EF5E0D0, &qword_24A8319E0);
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v80 = v36;
    *v35 = 136315650;
    v37 = sub_24A82DDB4();
    v39 = sub_24A68761C(v37, v38, &v80);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2080;
    v40 = FMReverseGeocodingRequest.debugDescription.getter();
    v42 = v41;
    sub_24A7FC860(v31, type metadata accessor for FMReverseGeocodingRequest);
    v43 = sub_24A68761C(v40, v42, &v80);

    *(v35 + 14) = v43;
    *(v35 + 22) = 2080;
    memcpy(v83, v84, sizeof(v83));
    memcpy(v85, v84, 0x120uLL);
    if (sub_24A6921A8(v85) == 1)
    {
      memcpy(v82, v83, sizeof(v82));
      sub_24A67E964(v84, v81, &unk_27EF5E0D0, &qword_24A8319E0);
      sub_24A67F378(v82, &unk_27EF5E0D0, &qword_24A8319E0);
      sub_24A67F378(v84, &unk_27EF5E0D0, &qword_24A8319E0);
      v44 = 0xE400000000000000;
      v45 = 1701736302;
    }

    else
    {
      sub_24A67E964(v84, v82, &unk_27EF5E0D0, &qword_24A8319E0);
      v46 = FMIPAddress.debugDescription.getter();
      v44 = v47;
      memcpy(v82, v83, sizeof(v82));
      sub_24A6CD854(v82);
      sub_24A67F378(v84, &unk_27EF5E0D0, &qword_24A8319E0);
      v45 = v46;
    }

    v48 = sub_24A68761C(v45, v44, &v80);

    *(v35 + 24) = v48;
    _os_log_impl(&dword_24A675000, v33, v34, "%s: Existing operation completed, notifying the duplicate: %s - %s", v35, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v36, -1, -1);
    MEMORY[0x24C21E1D0](v35, -1, -1);
  }

  else
  {
    sub_24A67F378(v84, &unk_27EF5E0D0, &qword_24A8319E0);

    sub_24A7FC860(v31, type metadata accessor for FMReverseGeocodingRequest);
  }

  memcpy(v83, v84, sizeof(v83));
  if (sub_24A6921A8(v83) != 1)
  {
    memcpy(v85, v84, 0x120uLL);
    memcpy(v82, v84, sizeof(v82));
    sub_24A76ECE4(v82, v81);
    v49 = [v63 timestamp];
    v50 = v64;
    sub_24A82C9F4();

    sub_24A75E250(v79, v85, v50);
    sub_24A67F378(v84, &unk_27EF5E0D0, &qword_24A8319E0);
    (*(v65 + 8))(v50, v66);
  }

  sub_24A67B054();
  v52 = v68;
  v51 = v69;
  v53 = v70;
  (*(v69 + 104))(v68, *MEMORY[0x277D851C8], v70);
  v54 = sub_24A82D5A4();
  (*(v51 + 8))(v52, v53);
  v55 = swift_allocObject();
  v57 = v71;
  v56 = v72;
  v55[2] = v71;
  v55[3] = v56;
  memcpy(v55 + 4, v84, 0x120uLL);
  v81[4] = sub_24A7FCE20;
  v81[5] = v55;
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 1107296256;
  v81[2] = sub_24A699BA0;
  v81[3] = &unk_285DCCE20;
  v58 = _Block_copy(v81);
  sub_24A67E964(v84, v82, &unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A6A7314(v57, v56);
  v59 = v73;
  sub_24A82CE24();
  v82[0] = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  v60 = v75;
  v61 = v78;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v59, v60, v58);
  _Block_release(v58);

  sub_24A67F378(v84, &unk_27EF5E0D0, &qword_24A8319E0);
  (*(v77 + 8))(v60, v61);
  (*(v74 + 8))(v59, v76);
}

uint64_t sub_24A7FBF30(const void *a1)
{
  v2 = sub_24A82CE54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A82CDF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v18, a1, 0x120uLL);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = *(result + 72);
    sub_24A82CDE4();
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    memcpy((v13 + 24), v18, 0x120uLL);
    v17[4] = sub_24A7FCAE8;
    v17[5] = v13;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_24A699BA0;
    v17[3] = &unk_285DCCC90;
    v14 = _Block_copy(v17);
    swift_unknownObjectRetain();
    sub_24A76ECE4(v18, &v16);
    sub_24A82CE24();
    MEMORY[0x24C21CE90](0, v5, v9, v14);
    _Block_release(v14);
    swift_unknownObjectRelease();

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_24A7FC1B4(uint64_t *a1)
{
  v4 = type metadata accessor for FMReverseGeocodingRequest(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[3];
  sub_24A67E964(v2 + qword_27EF78F28, v7 + v5[8], &qword_27EF5E930, &unk_24A8343F0);
  *v7 = v9;
  v7[1] = v8;
  *(v7 + v5[10]) = 0;
  *(v7 + v5[9]) = 0;
  v7[2] = v10;
  v14 = v2;
  v15 = v7;

  v11 = v10;
  sub_24A6BBA94(&unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A82D574();
  return sub_24A7FC860(v7, type metadata accessor for FMReverseGeocodingRequest);
}

uint64_t sub_24A7FC304(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FMReverseGeocodingRequest(0);
  v8 = (v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[3];
  sub_24A67E964(v3 + qword_27EF78F28, v10 + v8[8], &qword_27EF5E930, &unk_24A8343F0);
  *v10 = v12;
  v10[1] = v11;
  *(v10 + v8[10]) = 0;
  *(v10 + v8[9]) = 0;
  v10[2] = v13;

  v14 = v13;
  sub_24A7FA1A0(v10, a2, a3);
  return sub_24A7FC860(v10, type metadata accessor for FMReverseGeocodingRequest);
}

uint64_t sub_24A7FC414(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for FMIPSeparationLocation(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for FMReverseGeocodingRequest(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24A7FCAF4(a1, v7, type metadata accessor for FMIPSeparationLocation);
  sub_24A67E964(v3 + qword_27EF78F28, v11 + v9[8], &qword_27EF5E930, &unk_24A8343F0);
  v12 = v7[1];
  v13 = sub_24A6F47C0();
  v15 = v14;
  sub_24A7FC860(v7, type metadata accessor for FMIPSeparationLocation);
  *v11 = v13;
  v11[1] = v15;
  *(v11 + v9[10]) = 0;
  *(v11 + v9[9]) = 0;
  v11[2] = v12;
  v18 = v3;
  v19 = v11;
  sub_24A6BBA94(&unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A82D574();
  return sub_24A7FC860(v11, type metadata accessor for FMReverseGeocodingRequest);
}

uint64_t sub_24A7FC5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for FMIPSeparationLocation(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for FMReverseGeocodingRequest(0);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24A7FCAF4(a1, v10, type metadata accessor for FMIPSeparationLocation);
  sub_24A67E964(v4 + qword_27EF78F28, v14 + v12[8], &qword_27EF5E930, &unk_24A8343F0);
  v15 = v10[1];
  v16 = sub_24A6F47C0();
  v18 = v17;
  sub_24A7FC860(v10, type metadata accessor for FMIPSeparationLocation);
  *v14 = v16;
  v14[1] = v18;
  *(v14 + v12[10]) = 0;
  *(v14 + v12[9]) = 0;
  v14[2] = v15;
  sub_24A7FA1A0(v14, a2, a3);
  return sub_24A7FC860(v14, type metadata accessor for FMReverseGeocodingRequest);
}

void *FMIPReverseGeocodingCache.init(preferredLocale:)(uint64_t a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5E930, &unk_24A8343F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  *(v1 + qword_27EF78FC8 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_24A67E964(a1, v5, &qword_27EF5E930, &unk_24A8343F0);
  v6 = sub_24A67F608(v5);
  sub_24A67F378(a1, &qword_27EF5E930, &unk_24A8343F0);
  return v6;
}

uint64_t sub_24A7FC860(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FMIPReverseGeocodingCache.deinit()
{
  v1 = qword_27EF5EFA0;
  v2 = sub_24A82CA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24A67F378(v0 + qword_27EF78F28, &qword_27EF5E930, &unk_24A8343F0);
  sub_24A6BAF88(v0 + qword_27EF78FC8);
  return v0;
}

uint64_t FMIPReverseGeocodingCache.__deallocating_deinit()
{
  FMIPReverseGeocodingCache.deinit();

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of FMIPReverseGeocodingCache.address(for:)()
{
  return (*(*v0 + 408))();
}

{
  return (*(*v0 + 424))();
}

uint64_t dispatch thunk of FMIPReverseGeocodingCache.address(for:completion:)()
{
  return (*(*v0 + 416))();
}

{
  return (*(*v0 + 432))();
}

uint64_t sub_24A7FCAF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A7FCB5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMReverseGeocodingRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A7FCC08()
{
  v1 = (type metadata accessor for FMReverseGeocodingRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;

  v6 = v1[8];
  v7 = sub_24A82CAE4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  if (*(v0 + v4))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_24A7FCD78(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for FMReverseGeocodingRequest(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return a1(v4, v1 + v3, v6, v7);
}

void *sub_24A7FCE20()
{
  v1 = *(v0 + 16);
  result = memcpy(v3, (v0 + 32), sizeof(v3));
  if (v1)
  {
    return v1(v3);
  }

  return result;
}

char *sub_24A7FCE9C()
{
  v1 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  MEMORY[0x28223BE20](v1);
  v3 = &v16 - v2;
  v4 = sub_24A82C8B4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  if (qword_281514488 != -1)
  {
    swift_once();
  }

  v11 = sub_24A6797D0(v1, qword_281514490);
  sub_24A696E10(v11, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_24A6D3E54(v3);
    sub_24A754394();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v12 = type metadata accessor for FMIPDemoContent();
    (*(v5 + 32))(v8, v3, v4);
    sub_24A82C864();
    v13 = *(v5 + 8);
    v13(v8, v4);
    v3 = v12;
    v14 = static FMIPDemoContent.load(from:)(v10);
    if (!v0)
    {
      v3 = v14;
    }

    v13(v10, v4);
  }

  return v3;
}

char *sub_24A7FD120(uint64_t a1)
{
  result = sub_24A7FCE9C();
  v4 = result;
  if (!v1)
  {
    type metadata accessor for FMIPDemoDataSource();
    v5 = swift_allocObject();
    *(v5 + 128) = v4;
    type metadata accessor for FMIPDemoDataGenerator();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_24A840380;
    *(v6 + 32) = 0x4024000000000000;
    *(v5 + 136) = v6;

    sub_24A7CFAE8(v7, v12);
    v8 = v12[5];
    *(v5 + 80) = v12[4];
    *(v5 + 96) = v8;
    *(v5 + 112) = v12[6];
    v9 = v12[1];
    *(v5 + 16) = v12[0];
    *(v5 + 32) = v9;
    v10 = v12[3];
    *(v5 + 48) = v12[2];
    *(v5 + 64) = v10;
    sub_24A698230(a1, v11);
    type metadata accessor for FMIPDemoInteractionController();
    swift_allocObject();
    return sub_24A81C648(v5, v11);
  }

  return result;
}

uint64_t sub_24A7FD210()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24A7FD248(uint64_t a1)
{
  v3 = sub_24A82CAA4();
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_24A82D744();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v49 = MEMORY[0x277D84F90];
    sub_24A6FCAAC(0, v7 & ~(v7 >> 63), 0);
    v44 = v49;
    if (v43)
    {
      result = sub_24A82D6F4();
    }

    else
    {
      result = sub_24A82D6C4();
      v9 = *(a1 + 36);
    }

    v46 = result;
    v47 = v9;
    v48 = v43 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v39 = v7;
      v40 = v42 + 32;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v37 = a1 + 56;
      v38 = v11;
      v35[1] = v1;
      v36 = a1 + 64;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v46;
        v15 = v47;
        v16 = v48;
        v17 = a1;
        sub_24A810BC8(v46, v47, v48, a1, &qword_27EF5D720, 0x277D496B0);
        v19 = v18;
        v20 = [v18 identifier];
        sub_24A82CA84();

        v21 = v44;
        v49 = v44;
        v23 = *(v44 + 16);
        v22 = *(v44 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_24A6FCAAC((v22 > 1), v23 + 1, 1);
          v21 = v49;
        }

        *(v21 + 16) = v23 + 1;
        v24 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v44 = v21;
        result = (*(v42 + 32))(v21 + v24 + *(v42 + 72) * v23, v6, v41);
        if (v43)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          a1 = v17;
          if (sub_24A82D714())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v39;
          sub_24A6BBA94(&qword_27EF5D718, &qword_24A841600);
          v12 = sub_24A82D3E4();
          sub_24A82D7A4();
          result = v12(v45, 0);
          if (v10 == v7)
          {
LABEL_34:
            sub_24A6CA498(v46, v47, v48);
            return v44;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v17;
          v25 = 1 << *(v17 + 32);
          if (v14 >= v25)
          {
            goto LABEL_38;
          }

          v26 = v14 >> 6;
          v27 = *(v37 + 8 * (v14 >> 6));
          if (((v27 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v17 + 36) != v15)
          {
            goto LABEL_40;
          }

          v28 = v27 & (-2 << (v14 & 0x3F));
          if (v28)
          {
            v25 = __clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v36 + 8 * v26);
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                result = sub_24A6CA498(v14, v15, 0);
                v25 = __clz(__rbit64(v32)) + v29;
                goto LABEL_33;
              }
            }

            result = sub_24A6CA498(v14, v15, 0);
          }

LABEL_33:
          v34 = *(v17 + 36);
          v46 = v25;
          v47 = v34;
          v48 = 0;
          v7 = v39;
          if (v10 == v39)
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

void sub_24A7FD664(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_24A7FD6DC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v5 = type metadata accessor for FMIPItemPairingState(0);
  v16 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  v18 = a3;

  v13 = 0;
  while (v11)
  {
LABEL_9:
    sub_24A8126CC(*(v18 + 56) + *(v16 + 72) * (__clz(__rbit64(v11)) | (v13 << 6)), v7, type metadata accessor for FMIPItemPairingState);
    v15 = v17(v7);
    sub_24A812734(v7, type metadata accessor for FMIPItemPairingState);
    if (!v3)
    {
      v11 &= v11 - 1;
      if ((v15 & 1) == 0)
      {
        continue;
      }
    }

LABEL_11:

    return;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {
      goto LABEL_11;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_24A7FD8A8(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_24A7FD954(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_24A7FD9FC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v5 = type metadata accessor for FMIPItem(0);
  v16 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  v18 = a3;

  v13 = 0;
  while (v11)
  {
LABEL_9:
    sub_24A8126CC(*(v18 + 48) + *(v16 + 72) * (__clz(__rbit64(v11)) | (v13 << 6)), v7, type metadata accessor for FMIPItem);
    v15 = v17(v7);
    sub_24A812734(v7, type metadata accessor for FMIPItem);
    if (!v3)
    {
      v11 &= v11 - 1;
      if ((v15 & 1) == 0)
      {
        continue;
      }
    }

LABEL_11:

    return;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {
      goto LABEL_11;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_24A7FDBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x800000024A84AB20 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24A82DC04();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24A7FDC8C(uint64_t a1)
{
  v2 = sub_24A7FDE5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7FDCC8(uint64_t a1)
{
  v2 = sub_24A7FDE5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPBeaconRefreshingControllerClientConfiguration.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5F628, &unk_24A8403E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A7FDE5C();
  sub_24A82DD64();
  if (!v2)
  {
    v9 = sub_24A82DA54();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return sub_24A6876E8(a1);
}

unint64_t sub_24A7FDE5C()
{
  result = qword_27EF5F630;
  if (!qword_27EF5F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F630);
  }

  return result;
}

FMIPCore::FMIPUTAlertState_optional __swiftcall FMIPUTAlertState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24A7FDF2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64656C6261736964;
  }

  else
  {
    v3 = 0x64656C62616E65;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x64656C6261736964;
  }

  else
  {
    v5 = 0x64656C62616E65;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();
  }

  return v8 & 1;
}

uint64_t sub_24A7FDFD4()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7FE058(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A7FE0C8(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7FE148@<X0>(char *a2@<X8>)
{
  v3 = sub_24A82D9C4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_24A7FE1A8(uint64_t *a1@<X8>)
{
  v2 = 0x64656C62616E65;
  if (*v1)
  {
    v2 = 0x64656C6261736964;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FMIPDeviceConnectedState.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FMIPDeviceConnectedState(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t sub_24A7FE250()
{
  if (*v0)
  {
    return 0x6574617473;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_24A7FE28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x800000024A84AB40 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_24A7FE370(uint64_t a1)
{
  v2 = sub_24A8111A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7FE3AC(uint64_t a1)
{
  v2 = sub_24A8111A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPDeviceConnectedState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5F638, &qword_24A8403F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A8111A4();
  sub_24A82DD84();
  v10[15] = 0;
  sub_24A82CAA4();
  sub_24A697DF4(&qword_27EF5DBA8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_24A82DAF4();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for FMIPDeviceConnectedState(0) + 20));
    v10[13] = 1;
    sub_24A7E0C6C();
    sub_24A82DB44();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t FMIPDeviceConnectedState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_24A6BBA94(&qword_27EF5F648, &qword_24A8403F8);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for FMIPDeviceConnectedState(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A67DF6C(a1, a1[3]);
  sub_24A8111A4();
  sub_24A82DD64();
  if (v2)
  {
    return sub_24A6876E8(a1);
  }

  v13 = v12;
  v14 = v19;
  sub_24A82CAA4();
  v23 = 0;
  sub_24A697DF4(&qword_27EF5DBA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v15 = v20;
  sub_24A82DA34();
  sub_24A67E8FC(v6, v13, &qword_27EF5D020, &qword_24A830E40);
  v21 = 1;
  sub_24A68ADE8();
  sub_24A82DA84();
  (*(v14 + 8))(v9, v15);
  *(v13 + *(v10 + 20)) = v22;
  sub_24A8126CC(v13, v18, type metadata accessor for FMIPDeviceConnectedState);
  sub_24A6876E8(a1);
  return sub_24A812734(v13, type metadata accessor for FMIPDeviceConnectedState);
}

uint64_t FMIPDeviceConnectedStateType.description.getter()
{
  v1 = *v0;
  v2 = 0x656E6E6F63736964;
  v3 = 0x6465686361747461;
  v4 = 0x6465686361746564;
  if (v1 != 3)
  {
    v4 = 0x6465746365746564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657463656E6E6F63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24A7FE9C8(uint64_t a1)
{
  v2 = sub_24A8112A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7FEA04(uint64_t a1)
{
  v2 = sub_24A8112A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7FEA40(uint64_t a1)
{
  v2 = sub_24A68BAD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7FEA7C(uint64_t a1)
{
  v2 = sub_24A68BAD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7FEAB8(uint64_t a1)
{
  v2 = sub_24A8112F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7FEAF4(uint64_t a1)
{
  v2 = sub_24A8112F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7FEB30(uint64_t a1)
{
  v2 = sub_24A81124C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7FEB6C(uint64_t a1)
{
  v2 = sub_24A81124C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7FEBA8(uint64_t a1)
{
  v2 = sub_24A8111F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7FEBE4(uint64_t a1)
{
  v2 = sub_24A8111F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7FEC20(uint64_t a1)
{
  v2 = sub_24A68BDE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7FEC5C(uint64_t a1)
{
  v2 = sub_24A68BDE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPDeviceConnectedStateType.encode(to:)(void *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5F650, &qword_24A840400);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v33 - v4;
  v5 = sub_24A6BBA94(&qword_27EF5F658, &qword_24A840408);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v33 - v6;
  v7 = sub_24A6BBA94(&qword_27EF5F660, &qword_24A840410);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v33 = &v33 - v8;
  v9 = sub_24A6BBA94(&qword_27EF5F668, &qword_24A840418);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = sub_24A6BBA94(&qword_27EF5F670, &qword_24A840420);
  v42 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v45 = sub_24A6BBA94(&qword_27EF5F678, &qword_24A840428);
  v15 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v16 = *v1;
  v17 = a1[3];
  v18 = a1;
  v20 = &v33 - v19;
  sub_24A67DF6C(v18, v17);
  sub_24A68BAD0();
  sub_24A82DD84();
  v21 = (v15 + 8);
  if (v16 <= 1)
  {
    v26 = v20;
    v28 = v42;
    v27 = v43;
    v29 = v11;
    v30 = v44;
    if (v16)
    {
      v47 = 1;
      sub_24A8112F4();
      v31 = v45;
      sub_24A82DAC4();
      (*(v27 + 8))(v29, v30);
    }

    else
    {
      v46 = 0;
      sub_24A68BDE8();
      v31 = v45;
      sub_24A82DAC4();
      (*(v28 + 8))(v14, v12);
    }

    return (*v21)(v26, v31);
  }

  else
  {
    if (v16 == 2)
    {
      v48 = 2;
      sub_24A8112A0();
      v22 = v33;
      v23 = v45;
      sub_24A82DAC4();
      v25 = v34;
      v24 = v35;
    }

    else if (v16 == 3)
    {
      v49 = 3;
      sub_24A81124C();
      v22 = v36;
      v23 = v45;
      sub_24A82DAC4();
      v25 = v37;
      v24 = v38;
    }

    else
    {
      v50 = 4;
      sub_24A8111F8();
      v22 = v39;
      v23 = v45;
      sub_24A82DAC4();
      v25 = v40;
      v24 = v41;
    }

    (*(v25 + 8))(v22, v24);
    return (*v21)(v20, v23);
  }
}

uint64_t FMIPBeaconSeparationMonitoringState.description.getter()
{
  v1 = 0x64656C62616E65;
  v2 = 0x64656C6261736964;
  if (*v0 != 2)
  {
    v2 = 0x646573756170;
  }

  if (!*v0)
  {
    v1 = 0x6E776F6E6B6E75;
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

uint64_t sub_24A7FF298()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x64656C6261736964;
  if (*v0 != 2)
  {
    v2 = 0x646573756170;
  }

  if (*v0)
  {
    v1 = 0x64656C62616E65;
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

uint64_t sub_24A7FF310@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24A8124A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24A7FF338(uint64_t a1)
{
  v2 = sub_24A811348();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7FF374(uint64_t a1)
{
  v2 = sub_24A811348();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7FF3B0(uint64_t a1)
{
  v2 = sub_24A8113F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7FF3EC(uint64_t a1)
{
  v2 = sub_24A8113F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7FF428(uint64_t a1)
{
  v2 = sub_24A811444();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7FF464(uint64_t a1)
{
  v2 = sub_24A811444();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7FF4A0(uint64_t a1)
{
  v2 = sub_24A81139C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7FF4DC(uint64_t a1)
{
  v2 = sub_24A81139C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7FF518(uint64_t a1)
{
  v2 = sub_24A811498();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7FF554(uint64_t a1)
{
  v2 = sub_24A811498();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPBeaconSeparationMonitoringState.encode(to:)(void *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5F6E0, &qword_24A840468);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v22 - v4;
  v5 = sub_24A6BBA94(&qword_27EF5F6E8, &qword_24A840470);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v27 = &v22 - v6;
  v7 = sub_24A6BBA94(&qword_27EF5F6F0, &qword_24A840478);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v24 = &v22 - v8;
  v9 = sub_24A6BBA94(&qword_27EF5F6F8, &qword_24A840480);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = sub_24A6BBA94(&qword_27EF5F700, &qword_24A840488);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A811348();
  sub_24A82DD84();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_24A8113F0();
      v18 = v27;
      sub_24A82DAC4();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_24A81139C();
      v18 = v30;
      sub_24A82DAC4();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_24A811444();
    v18 = v24;
    sub_24A82DAC4();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_24A811498();
  sub_24A82DAC4();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t FMIPBeaconSeparationMonitoringState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = sub_24A6BBA94(&qword_27EF5F730, &qword_24A840490);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v34 - v3;
  v42 = sub_24A6BBA94(&qword_27EF5F738, &qword_24A840498);
  v38 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v43 = &v34 - v4;
  v40 = sub_24A6BBA94(&qword_27EF5F740, &qword_24A8404A0);
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v6 = &v34 - v5;
  v7 = sub_24A6BBA94(&qword_27EF5F748, &qword_24A8404A8);
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = sub_24A6BBA94(&qword_27EF5F750, &qword_24A8404B0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  sub_24A67DF6C(a1, v14);
  sub_24A811348();
  v15 = v46;
  sub_24A82DD64();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_24A82DAA4();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_24A7DB564();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_24A82D8A4();
      swift_allocError();
      v28 = v27;
      sub_24A6BBA94(&qword_27EF5F258, &qword_24A83DF00);
      *v28 = &type metadata for FMIPBeaconSeparationMonitoringState;
      sub_24A82D9E4();
      sub_24A82D894();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return sub_24A6876E8(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_24A811444();
        v32 = v35;
        sub_24A82D9D4();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_24A811498();
        v25 = v35;
        sub_24A82D9D4();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return sub_24A6876E8(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_24A8113F0();
      v31 = v35;
      sub_24A82D9D4();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_24A81139C();
      v33 = v35;
      sub_24A82D9D4();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return sub_24A6876E8(v47);
}

uint64_t sub_24A800024()
{
  v1 = 0x64656C62616E65;
  v2 = 0x64656C6261736964;
  if (*v0 != 2)
  {
    v2 = 0x646573756170;
  }

  if (!*v0)
  {
    v1 = 0x6E776F6E6B6E75;
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

BOOL static FMIPSeparationMonitoringState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 6)
  {
    return v3 == 6;
  }

  if (v2 == 7)
  {
    return v3 == 7;
  }

  if ((v3 & 0xFE) == 6)
  {
    return 0;
  }

  return v2 == v3;
}

BOOL FMIPSeparationMonitoringState.allowsSeparationMonitoringConfiguration.getter()
{
  v1 = *v0;
  v2 = v1 & 0xFE;
  v4 = v1 != 4 && v1 != 2;
  return v2 == 6 || v4;
}

BOOL sub_24A800158(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 == 6;
  v5 = v3 == 7;
  v7 = v2 == v3 && (v3 & 0xFE) != 6;
  if (v2 == 7)
  {
    v7 = v5;
  }

  if (v2 == 6)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_24A800194()
{
  v0 = sub_24A82CA34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A82CA24();
  sub_24A82C934();
  v5 = v4;
  sub_24A82C934();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  v8 = v5 - v7;
  if (v5 - v7 >= 0.0 && v8 <= 900.0)
  {
    return 0;
  }

  if (v8 >= 900.0 && v8 <= 3600.0)
  {
    return 1;
  }

  if (v8 > 43200.0 || v8 < 3600.0)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

void sub_24A8002F0(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_24A82CFC4();
  v6 = v5;
  if (v4 == sub_24A82CFC4() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_24A82DC04();

    if ((v9 & 1) == 0)
    {
      v11 = sub_24A82CFC4();
      v13 = v12;
      if (v11 == sub_24A82CFC4() && v13 == v14)
      {

        v10 = 1;
        goto LABEL_9;
      }

      v16 = sub_24A82DC04();

      if (v16)
      {

        v10 = 1;
        goto LABEL_9;
      }

      v17 = sub_24A82CFC4();
      v19 = v18;
      if (v17 == sub_24A82CFC4() && v19 == v20)
      {

        v10 = 2;
        goto LABEL_9;
      }

      v21 = sub_24A82DC04();

      if (v21)
      {

        v10 = 2;
        goto LABEL_9;
      }

      v22 = sub_24A82CFC4();
      v24 = v23;
      if (v22 == sub_24A82CFC4() && v24 == v25)
      {

        v10 = 3;
        goto LABEL_9;
      }

      v26 = sub_24A82DC04();

      if (v26)
      {

        v10 = 3;
        goto LABEL_9;
      }

      v27 = sub_24A82CFC4();
      v29 = v28;
      if (v27 == sub_24A82CFC4() && v29 == v30)
      {

        v10 = 4;
        goto LABEL_9;
      }

      v31 = sub_24A82DC04();

      if (v31)
      {

        v10 = 4;
        goto LABEL_9;
      }

      v32 = sub_24A82CFC4();
      v34 = v33;
      if (v32 == sub_24A82CFC4() && v34 == v35)
      {

        v10 = 5;
        goto LABEL_9;
      }

      v36 = sub_24A82DC04();

      if (v36)
      {

        v10 = 5;
        goto LABEL_9;
      }

      v37 = sub_24A82CFC4();
      v39 = v38;
      if (v37 == sub_24A82CFC4() && v39 == v40)
      {

        v10 = 6;
        goto LABEL_9;
      }

      v41 = sub_24A82DC04();

      if (v41)
      {

        v10 = 6;
        goto LABEL_9;
      }

      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v42 = sub_24A82CDC4();
      sub_24A6797D0(v42, qword_281518F88);
      v43 = sub_24A82CD94();
      v44 = sub_24A82D4F4();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_24A675000, v43, v44, "FMIPBeaconRefreshingController: unhandled beacon type!", v45, 2u);
        MEMORY[0x24C21E1D0](v45, -1, -1);
      }
    }
  }

  v10 = 0;
LABEL_9:
  *a2 = v10;
}

void sub_24A8007A4()
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v0 = sub_24A82CDC4();
  sub_24A6797D0(v0, qword_281518F88);
  v1 = sub_24A82CD94();
  v2 = sub_24A82D4C4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_24A68761C(0xD000000000000010, 0x800000024A84AAD0, &v5);
    _os_log_impl(&dword_24A675000, v1, v2, "FMIPBeaconRefreshingController: %s - Will update", v3, 0xCu);
    sub_24A6876E8(v4);
    MEMORY[0x24C21E1D0](v4, -1, -1);
    MEMORY[0x24C21E1D0](v3, -1, -1);
  }

  sub_24A80CB10();
}

uint64_t sub_24A8008F0()
{
  v1 = v0;
  v2 = sub_24A82CDF4();
  v16 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A82CE54();
  v5 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A82CDC4();
  sub_24A6797D0(v8, qword_281518F88);

  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_isThrottled);

    _os_log_impl(&dword_24A675000, v9, v10, "FMIPBeaconRefreshingController: isThrottled?: %{BOOL}d)", v11, 8u);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  else
  {
  }

  sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
  v12 = sub_24A82D564();
  aBlock[4] = sub_24A812640;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCD840;
  v13 = _Block_copy(aBlock);

  sub_24A82CE24();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40, MEMORY[0x277D83970]);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v7, v4, v13);
  _Block_release(v13);

  (*(v16 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v15);
}

void sub_24A800CBC(uint64_t a1, __n128 a2)
{
  if (*(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_isThrottled) != 1 || (*(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_isThrottledOverride) & 1) != 0)
  {
    v3 = *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue);
    v4 = swift_allocObject();
    *(v4 + 16) = sub_24A74EF84;
    *(v4 + 24) = a1;
    v6[4] = sub_24A680674;
    v6[5] = v4;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_24A6805E4;
    v6[3] = &unk_285DCD890;
    v5 = _Block_copy(v6);

    dispatch_sync(v3, v5);
    _Block_release(v5);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if ((v3 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  sub_24A8013D8();
  sub_24A80B7BC();
}

void sub_24A800E28()
{
  v1 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);

  oslog = sub_24A82CD94();
  v3 = sub_24A82D504();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    if (*(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_isRefreshing))
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (*(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_isRefreshing))
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    v8 = sub_24A68761C(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_24A675000, oslog, v3, "FMIPBeaconRefreshingController: auto refreshing set to: %s", v4, 0xCu);
    sub_24A6876E8(v5);
    MEMORY[0x24C21E1D0](v5, -1, -1);
    MEMORY[0x24C21E1D0](v4, -1, -1);
  }
}

uint64_t sub_24A800FB8()
{
  v1 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);

  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26 = v6;
    *v5 = 136315138;
    v7 = sub_24A82CA54();
    v9 = sub_24A695068(0xCuLL, v7, v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = MEMORY[0x24C21C960](v9, v11, v13, v15);
    v18 = v17;

    v19 = sub_24A68761C(v16, v18, &v26);

    *(v5 + 4) = v19;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPBeaconRefreshingController<%s>.deinit", v5, 0xCu);
    sub_24A6876E8(v6);
    MEMORY[0x24C21E1D0](v6, -1, -1);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  v20 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_identifier;
  v21 = sub_24A82CAA4();
  (*(*(v21 - 8) + 8))(v1 + v20, v21);

  v22 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_lastRefreshTime;
  v23 = sub_24A82CA34();
  v24 = *(*(v23 - 8) + 8);
  v24(v1 + v22, v23);
  sub_24A6BAF88(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_delegate);
  v24(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_lastActiveTimestamp, v23);

  return v1;
}

uint64_t sub_24A8012CC()
{
  sub_24A800FB8();

  return swift_deallocClassInstance();
}

uint64_t sub_24A801324(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24A80AFDC(a1);
  }

  return result;
}

uint64_t sub_24A801384(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_24A8013D8()
{
  v1 = sub_24A82CDF4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A82CE54();
  v5 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue);
  aBlock[4] = sub_24A814950;
  v14 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCE1C8;
  v8 = _Block_copy(aBlock);

  sub_24A82CE24();
  v12 = MEMORY[0x277D84F90];
  sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40, MEMORY[0x277D83970]);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

void sub_24A801694(_BYTE *a1)
{
  v2 = sub_24A82CA34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A82CDC4();
  sub_24A6797D0(v6, qword_281518F88);
  v7 = sub_24A82CD94();
  v8 = sub_24A82D504();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24A675000, v7, v8, "FMIPBeaconRefreshingController: Stop Refreshing", v9, 2u);
    MEMORY[0x24C21E1D0](v9, -1, -1);
  }

  a1[OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_isRefreshing] = 0;
  sub_24A800E28();
  a1[OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_currentlyRefreshing] = 0;
  a1[OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_nextRefreshQueued] = 0;
  sub_24A82C964();
  v10 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_lastRefreshTime;
  swift_beginAccess();
  (*(v3 + 40))(&a1[v10], v5, v2);
  swift_endAccess();
  v11 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v11, a1, *MEMORY[0x277D49840], 0);
  CFNotificationCenterRemoveObserver(v11, a1, *MEMORY[0x277D49888], 0);
  v12 = [objc_opt_self() defaultCenter];
  [v12 removeObserver_];

  v13 = sub_24A82C514();
  v28 = v13;
  v29 = sub_24A697DF4(&unk_281514680, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
  v14 = sub_24A697E3C(&aBlock);
  (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D08A00], v13);
  LOBYTE(v13) = sub_24A82C4D4();
  sub_24A6876E8(&aBlock);
  if ((v13 & 1) != 0 && a1[OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_shouldUseBeaconsOptimizationSPI] == 1)
  {
    v15 = sub_24A82CD94();
    v16 = sub_24A82D4D4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24A675000, v15, v16, "FMIPBeaconRefreshingController: stopUpdatingApplicationBeacons - Will call", v17, 2u);
      MEMORY[0x24C21E1D0](v17, -1, -1);
    }

    v18 = *&a1[OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession];
    v29 = sub_24A814958;
    v30 = a1;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_24A7FD664;
    v28 = &unk_285DCE218;
    v19 = _Block_copy(&aBlock);
    v20 = v18;

    [v20 stopUpdatingApplicationBeaconsWithCompletion_];
    _Block_release(v19);
  }

  v21 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession;
  [*&a1[OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession] stopRefreshing];
  [*&a1[v21] stopRefreshingSeparationMonitoringState];
  v22 = *&a1[v21];
  v29 = sub_24A802028;
  v30 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_24A7386AC;
  v28 = &unk_285DCE1F0;
  v23 = _Block_copy(&aBlock);
  v24 = v22;
  [v24 unsubscribeLocationUpdatesWithCompletion_];
  _Block_release(v23);
}

uint64_t sub_24A801B74(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_24A82CDF4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A82CE54();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(a3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a2;
  aBlock[4] = sub_24A8149B8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCE268;
  v13 = _Block_copy(aBlock);

  v14 = a2;
  sub_24A82CE24();
  v18 = MEMORY[0x277D84F90];
  sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40, MEMORY[0x277D83970]);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
}

void sub_24A801E58(uint64_t a1, void *a2)
{
  *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_appBeacons) = MEMORY[0x277D84F90];

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v3 = sub_24A82CDC4();
  sub_24A6797D0(v3, qword_281518F88);
  v4 = a2;
  oslog = sub_24A82CD94();
  v5 = sub_24A82D504();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    if (a2)
    {
      swift_getErrorValue();
      v8 = sub_24A82DC74();
      v10 = v9;
    }

    else
    {
      v10 = 0xE400000000000000;
      v8 = 1701736302;
    }

    v11 = sub_24A68761C(v8, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_24A675000, oslog, v5, "FMIPBeaconRefreshingController: stopUpdatingApplicationBeacons - Stopped updating application beacons, error: %s", v6, 0xCu);
    sub_24A6876E8(v7);
    MEMORY[0x24C21E1D0](v7, -1, -1);
    MEMORY[0x24C21E1D0](v6, -1, -1);
  }

  else
  {
  }
}

void sub_24A802028(void *a1)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);
  v3 = a1;
  oslog = sub_24A82CD94();
  v4 = sub_24A82D504();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    if (a1)
    {
      swift_getErrorValue();
      v7 = sub_24A82DC74();
      v9 = v8;
    }

    else
    {
      v9 = 0xE400000000000000;
      v7 = 1701736302;
    }

    v10 = sub_24A68761C(v7, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_24A675000, oslog, v4, "FMIPBeaconRefreshingController: Stopped Refreshing Locations, error: %s", v5, 0xCu);
    sub_24A6876E8(v6);
    MEMORY[0x24C21E1D0](v6, -1, -1);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_24A8021D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = a5;
  v55 = a6;
  v63 = a2;
  v64 = a4;
  v56 = a3;
  v7 = sub_24A82CDF4();
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x28223BE20](v7);
  v59 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_24A82CE54();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v57 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_24A82CA34();
  v50 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = v10;
  v52 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A82CAA4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v49 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - v15;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v17 = sub_24A82CDC4();
  sub_24A6797D0(v17, qword_281518F88);
  v46 = *(v12 + 16);
  v46(v16, a1, v11);
  v18 = sub_24A82CD94();
  v19 = sub_24A82D504();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v47 = a1;
    v21 = v20;
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136315138;
    v23 = sub_24A82CA54();
    v24 = v11;
    v26 = v25;
    (*(v12 + 8))(v16, v24);
    v27 = sub_24A68761C(v23, v26, aBlock);
    v11 = v24;

    *(v21 + 4) = v27;
    _os_log_impl(&dword_24A675000, v18, v19, "FMIPBeaconRefreshingController: Refreshing beacons %s", v21, 0xCu);
    sub_24A6876E8(v22);
    MEMORY[0x24C21E1D0](v22, -1, -1);
    v28 = v21;
    a1 = v47;
    MEMORY[0x24C21E1D0](v28, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v16, v11);
  }

  v45 = v11;
  v29 = v63;
  v47 = *(v63 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue);
  v30 = v49;
  v46(v49, a1, v11);
  v31 = v50;
  v33 = v52;
  v32 = v53;
  (*(v50 + 16))(v52, v54, v53);
  v34 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v35 = (v48 + *(v31 + 80) + v34) & ~*(v31 + 80);
  v36 = (v51 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 2) = v29;
  v38 = v56;
  v39 = v64;
  *(v37 + 3) = v56;
  *(v37 + 4) = v39;
  (*(v12 + 32))(&v37[v34], v30, v45);
  (*(v31 + 32))(&v37[v35], v33, v32);
  *&v37[v36] = v55;
  aBlock[4] = sub_24A814378;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCDF70;
  v40 = _Block_copy(aBlock);

  sub_24A6A7314(v38, v64);
  v41 = v57;
  sub_24A82CE24();
  v65 = MEMORY[0x277D84F90];
  sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40, MEMORY[0x277D83970]);
  v42 = v59;
  v43 = v62;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v41, v42, v40);
  _Block_release(v40);
  (*(v61 + 8))(v42, v43);
  (*(v58 + 8))(v41, v60);
}

void sub_24A802898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a5;
  v64 = a4;
  v68 = a3;
  v7 = sub_24A82CAA4();
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x28223BE20](v7);
  v63 = v8;
  v58 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A82CA34();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v53 - v14;
  sub_24A82CA24();
  v16 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_lastRefreshTime;
  swift_beginAccess();
  v17 = *(v10 + 16);
  v18 = a1;
  v60 = v10 + 16;
  v59 = v17;
  v17(v13, a1 + v16, v9);
  sub_24A82C974();
  v20 = v19;
  v69 = v10;
  v21 = *(v10 + 8);
  v21(v13, v9);
  v22 = v15;
  v70 = v9;
  v21(v15, v9);
  v23 = 0;
  v67 = a2;
  if (a2)
  {
    v24 = v18;
  }

  else
  {
    v24 = v18;
    if (v20 <= 30.0)
    {
      v23 = *(v18 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_currentlyRefreshing);
    }
  }

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v25 = sub_24A82CDC4();
  sub_24A6797D0(v25, qword_281518F88);

  v26 = sub_24A82CD94();
  v27 = sub_24A82D504();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 67109632;
    *(v28 + 4) = v23;
    *(v28 + 8) = 1024;
    *(v28 + 10) = v20 > 30.0;
    v24 = v18;
    *(v28 + 14) = 1024;
    *(v28 + 16) = *(v18 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_currentlyRefreshing);

    _os_log_impl(&dword_24A675000, v26, v27, "FMIPBeaconRefreshingController: Should rate limit? %{BOOL}d, possibly stuck? %{BOOL}d, currentlyRefreshing? %{BOOL}d", v28, 0x14u);
    MEMORY[0x24C21E1D0](v28, -1, -1);

    if (!v23)
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (!v23)
    {
LABEL_15:
      *(v24 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_currentlyRefreshing) = 1;
      sub_24A82CA24();
      swift_beginAccess();
      (*(v69 + 40))(v24 + v16, v22, v70);
      swift_endAccess();
      v33 = sub_24A82CD94();
      v34 = sub_24A82D504();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_24A675000, v33, v34, "FMIPBeaconRefreshingController: Refresh Beacon Groups", v35, 2u);
        MEMORY[0x24C21E1D0](v35, -1, -1);
      }

      v57 = *(v24 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession);
      v36 = v66;
      v56 = sub_24A82D224();
      v37 = v65;
      v38 = v58;
      (*(v65 + 16))(v58, v64, v36);
      v54 = v22;
      v39 = v70;
      v59(v22, v62, v70);
      v40 = *(v37 + 80);
      v55 = v24;
      v41 = (v40 + 24) & ~v40;
      v42 = v69;
      v43 = (v63 + *(v69 + 80) + v41) & ~*(v69 + 80);
      v44 = (v61 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
      v45 = swift_allocObject();
      *(v45 + 16) = v24;
      (*(v37 + 32))(v45 + v41, v38, v36);
      (*(v42 + 32))(v45 + v43, v54, v39);
      v46 = (v45 + v44);
      v48 = v67;
      v47 = v68;
      *v46 = v67;
      v46[1] = v47;
      aBlock[4] = sub_24A814478;
      aBlock[5] = v45;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A6AB7D0;
      aBlock[3] = &unk_285DCDFC0;
      v49 = _Block_copy(aBlock);

      sub_24A6A7314(v48, v47);

      v50 = v57;
      v51 = v56;
      [v57 beaconGroupsForUUIDs:v56 completion:v49];
      _Block_release(v49);

      return;
    }
  }

  v29 = sub_24A82CD94();
  v30 = sub_24A82D504();
  v31 = os_log_type_enabled(v29, v30);
  if (v20 > 30.0)
  {
    if (v31)
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = v20;
      _os_log_impl(&dword_24A675000, v29, v30, "FMIPBeaconRefreshingController: Refresh queue seemed stuck (for %f sec), allowing refresh.", v32, 0xCu);
      MEMORY[0x24C21E1D0](v32, -1, -1);
    }

    goto LABEL_15;
  }

  if (v31)
  {
    v52 = swift_slowAlloc();
    *v52 = 134217984;
    *(v52 + 4) = v20;
    _os_log_impl(&dword_24A675000, v29, v30, "FMIPBeaconRefreshingController: Ignoring refresh, the previous one didn't finish, %fs ago", v52, 0xCu);
    MEMORY[0x24C21E1D0](v52, -1, -1);
  }

  *(v24 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_nextRefreshQueued) = 1;
}

void sub_24A802F9C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a4;
  v11 = sub_24A82CA34();
  v48 = *(v11 - 8);
  v49 = v11;
  MEMORY[0x28223BE20](v11);
  v46 = v12;
  v54 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_24A82CAA4();
  v45 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v44 = v13;
  v52 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMIPItemGroup(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = (&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_24A6ABDFC(a1, sub_24A753FA0, sub_24A74E8A4);
  v19 = v18;
  if ((v18 & 0x8000000000000000) != 0 || (v18 & 0x4000000000000000) != 0)
  {
    v20 = sub_24A82D744();
    v50 = a5;
    v51 = a6;
    if (v20)
    {
      goto LABEL_4;
    }

LABEL_14:

    v22 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v20 = *(v18 + 16);
  v50 = a5;
  v51 = a6;
  if (!v20)
  {
    goto LABEL_14;
  }

LABEL_4:
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24A6FCB74(0, v20 & ~(v20 >> 63), 0);
  if (v20 < 0)
  {
    __break(1u);
    return;
  }

  v42 = a3;
  v43 = a2;
  v21 = 0;
  v22 = aBlock[0];
  do
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x24C21D180](v21, v19);
    }

    else
    {
      v23 = *(v19 + 8 * v21 + 32);
    }

    sub_24A707330(v23, v17);
    aBlock[0] = v22;
    v25 = *(v22 + 16);
    v24 = *(v22 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_24A6FCB74((v24 > 1), v25 + 1, 1);
      v22 = aBlock[0];
    }

    ++v21;
    *(v22 + 16) = v25 + 1;
    sub_24A8127B4(v17, v22 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v25, type metadata accessor for FMIPItemGroup);
  }

  while (v20 != v21);

  a3 = v42;
  a2 = v43;
LABEL_15:
  *&a2[OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_itemGroups] = v22;

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v26 = sub_24A82CDC4();
  sub_24A6797D0(v26, qword_281518F88);
  v27 = sub_24A82CD94();
  v28 = sub_24A82D504();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_24A675000, v27, v28, "FMIPBeaconRefreshingController: Calling SPOwnerSession - allBeacons", v29, 2u);
    MEMORY[0x24C21E1D0](v29, -1, -1);
  }

  v43 = *&a2[OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession];
  v30 = v45;
  (*(v45 + 16))(v52, a3, v53);
  v31 = v48;
  v32 = v49;
  (*(v48 + 16))(v54, v47, v49);
  v33 = (*(v30 + 80) + 24) & ~*(v30 + 80);
  v34 = (v44 + *(v31 + 80) + v33) & ~*(v31 + 80);
  v35 = (v46 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = a2;
  (*(v30 + 32))(v36 + v33, v52, v53);
  (*(v31 + 32))(v36 + v34, v54, v32);
  *(v36 + v35) = v22;
  v37 = (v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8));
  v39 = v50;
  v38 = v51;
  *v37 = v50;
  v37[1] = v38;
  aBlock[4] = sub_24A814580;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A8061C8;
  aBlock[3] = &unk_285DCE010;
  v40 = _Block_copy(aBlock);
  v41 = v43;

  sub_24A6A7314(v39, v38);

  [v41 allBeaconsWithCompletion_];
  _Block_release(v40);
}

uint64_t sub_24A803530(int64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, __objc2_class **a7)
{
  v244 = a5;
  v264 = a4;
  v275 = a3;
  v301 = *MEMORY[0x277D85DE8];
  v11 = sub_24A82CDF4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v254 = &v240 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = sub_24A82CE54();
  v253 = *(v255 - 8);
  MEMORY[0x28223BE20](v255);
  v252 = &v240 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
  MEMORY[0x28223BE20](v15 - 8);
  v269 = &v240 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = sub_24A82CA34();
  v266 = *(v274 - 1);
  v17 = MEMORY[0x28223BE20](v274);
  v267 = (&v240 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v261 = &v240 - v19;
  v20 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v265 = &v240 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v263 = &v240 - v23;
  updated = type metadata accessor for FMIPItemUpdateType(0);
  MEMORY[0x28223BE20](updated);
  v262 = &v240 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = 0;
  v280 = sub_24A82CAA4();
  v270 = *(v280 - 8);
  v25 = MEMORY[0x28223BE20](v280);
  v249 = &v240 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v248 = &v240 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v282 = &v240 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v268 = &v240 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v259 = &v240 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v258 = &v240 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v257 = &v240 - v38;
  MEMORY[0x28223BE20](v37);
  v276 = &v240 - v39;
  v40 = *(a2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue);
  v41 = swift_allocObject();
  *(v41 + 16) = a2;
  *(v41 + 24) = a1;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_24A814694;
  *(v42 + 24) = v41;
  v251 = v41;
  v289 = sub_24A680674;
  v290 = v42;
  aBlock = MEMORY[0x277D85DD0];
  v286 = 1107296256;
  v287 = sub_24A6805E4;
  v288 = &unk_285DCE088;
  v43 = _Block_copy(&aBlock);
  v273 = a2;

  v250 = v40;
  dispatch_sync(v40, v43);
  _Block_release(v43);
  LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

  if (v43)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (qword_281515DC8 != -1)
  {
LABEL_146:
    swift_once();
  }

  v245 = v12;
  v246 = v11;
  v243 = a7;
  v44 = sub_24A82CDC4();
  v45 = sub_24A6797D0(v44, qword_281518F88);

  v272 = v45;
  v46 = sub_24A82CD94();
  v47 = sub_24A82D504();

  v48 = os_log_type_enabled(v46, v47);
  v279 = a1;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 138412290;
    sub_24A679170(0, &qword_281512B60, 0x277D49610);
    a1 = v279;
    sub_24A6AB7EC(&qword_281512B58, &qword_281512B60, 0x277D49610);
    v51 = sub_24A82D394();
    *(v49 + 4) = v51;
    *v50 = v51;
    _os_log_impl(&dword_24A675000, v46, v47, "FMIPBeaconRefreshingController: beacons received %@", v49, 0xCu);
    sub_24A67F378(v50, &qword_27EF5D010, &qword_24A830E30);
    MEMORY[0x24C21E1D0](v50, -1, -1);
    MEMORY[0x24C21E1D0](v49, -1, -1);
  }

  v278 = (a1 & 0xC000000000000001);
  v247 = a6;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24A82D704();
    sub_24A679170(0, &qword_281512B60, 0x277D49610);
    sub_24A6AB7EC(&qword_281512B58, &qword_281512B60, 0x277D49610);
    sub_24A82D414();
    v52 = v291;
    a7 = v292;
    v53 = v293;
    v12 = v294;
    v11 = v295;
  }

  else
  {
    v54 = -1 << *(a1 + 32);
    a7 = (a1 + 56);
    v53 = ~v54;
    v55 = -v54;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    else
    {
      v56 = -1;
    }

    v11 = v56 & *(a1 + 56);

    v12 = 0;
    v52 = a1;
  }

  v281 = v53;
  a6 = (v53 + 64) >> 6;
  v271 = *MEMORY[0x277D497C8];
  v277 = (v270 + 16);
  v57 = MEMORY[0x277D84F98];
  v283 = (v270 + 8);
  while (1)
  {
    a1 = v11;
    if ((v52 & 0x8000000000000000) == 0)
    {
      v58 = v12;
      v59 = v11;
      if (!v11)
      {
        while (1)
        {
          v12 = v58 + 1;
          if (__OFADD__(v58, 1))
          {
            break;
          }

          if (v12 >= a6)
          {
            goto LABEL_38;
          }

          v59 = a7[v12];
          ++v58;
          if (v59)
          {
            goto LABEL_17;
          }
        }

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
        goto LABEL_145;
      }

LABEL_17:
      v11 = (v59 - 1) & v59;
      v60 = *(*(v52 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v59)))));
      if (!v60)
      {
        break;
      }

      goto LABEL_21;
    }

    v61 = sub_24A82D784();
    if (!v61)
    {
      break;
    }

    v296 = v61;
    sub_24A679170(0, &qword_281512B60, 0x277D49610);
    swift_dynamicCast();
    v60 = aBlock;
    if (!aBlock)
    {
      break;
    }

LABEL_21:
    v62 = [v60 role];
    if (v62)
    {
      v63 = v62;
    }

    else
    {
      v64 = [v60 identifier];
      sub_24A82CA84();

      v65 = [v60 taskInformation];
      type metadata accessor for SPBeaconTaskName(0);
      sub_24A679170(0, &qword_27EF5DD20, 0x277D49648);
      sub_24A697DF4(&qword_27EF5CEF8, type metadata accessor for SPBeaconTaskName, &unk_24A830D10);
      v66 = sub_24A82CEF4();

      if (!*(v66 + 16))
      {
        v67 = v57;
LABEL_27:

        v72 = 0;
        goto LABEL_28;
      }

      v67 = v57;
      v68 = sub_24A77EE90(v271);
      if ((v69 & 1) == 0)
      {
        goto LABEL_27;
      }

      v70 = *(*(v66 + 56) + 8 * v68);

      v71 = [v70 state];

      v72 = v71 == 0;
LABEL_28:
      v73 = v67;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v73;
      v75 = sub_24A77EDF8(v276);
      v77 = *(v73 + 16);
      v78 = (v76 & 1) == 0;
      v79 = __OFADD__(v77, v78);
      v80 = v77 + v78;
      if (v79)
      {
        __break(1u);
LABEL_150:
        __break(1u);
      }

      v81 = v76;
      v82 = *(v73 + 24);
      v242 = v72;
      if (v82 >= v80)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_33;
        }

        v84 = v75;
        sub_24A787ABC();
        v75 = v84;
        v57 = aBlock;
        if ((v81 & 1) == 0)
        {
          goto LABEL_36;
        }

LABEL_34:
        *(v57[7] + v75) = v242;

        (*v283)(v276, v280);
      }

      else
      {
        sub_24A783E7C(v80, isUniquelyReferenced_nonNull_native);
        v75 = sub_24A77EDF8(v276);
        if ((v81 & 1) != (v83 & 1))
        {
LABEL_151:
          result = sub_24A82DC44();
          __break(1u);
          return result;
        }

LABEL_33:
        v57 = aBlock;
        if (v81)
        {
          goto LABEL_34;
        }

LABEL_36:
        v57[(v75 >> 6) + 8] |= 1 << v75;
        v85 = v270;
        v86 = v57[6] + *(v270 + 72) * v75;
        v87 = *(v270 + 16);
        v241 = v75;
        v88 = v276;
        v89 = v280;
        v87(v86, v276, v280);
        *(v57[7] + v241) = v242;

        (*(v85 + 8))(v88, v89);
        v90 = v57[2];
        v79 = __OFADD__(v90, 1);
        v91 = v90 + 1;
        if (v79)
        {
          goto LABEL_150;
        }

        v57[2] = v91;
      }
    }
  }

LABEL_38:
  sub_24A6BAFBC(v52);
  v271 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_24A6BBA94(&qword_27EF5F8C0, &qword_24A8415E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A8327A0;
    *(inited + 32) = 0;
    v93 = inited + 32;
    *(inited + 40) = v57;
    v94 = sub_24A78B0B0(inited);
    swift_setDeallocating();

    sub_24A67F378(v93, &qword_27EF5F8C8, &unk_24A8415F0);
    sub_24A6AD900(v94);

    swift_unknownObjectRelease();
  }

  v281 = v57;
  v95 = *(sub_24A6BBA94(&qword_27EF5ECD8, &qword_24A83B8C0) + 48);
  v96 = v262;
  v276 = *v277;
  (v276)(v262, v275, v280);
  v97 = v266;
  v98 = v274;
  (*(v266 + 16))(v96 + v95, v264, v274);
  swift_storeEnumTagMultiPayload();
  a6 = v263;
  (*(v97 + 56))(v263, 1, 1, v98);
  type metadata accessor for FMIPItemUpdateContext(0);
  a7 = swift_allocObject();
  sub_24A8126CC(v96, a7 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_type, type metadata accessor for FMIPItemUpdateType);
  v99 = v261;
  sub_24A82CA24();
  v100 = *(v97 + 32);
  v100(a7 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp, v99, v98);
  v101 = v265;
  sub_24A67E964(a6, v265, &qword_27EF5E0E0, &qword_24A836D90);
  v102 = *(v97 + 48);
  v103 = v102(v101, 1, v98);
  v12 = v267;
  if (v103 == 1)
  {
    sub_24A82CA24();
    sub_24A67F378(a6, &qword_27EF5E0E0, &qword_24A836D90);
    sub_24A812734(v96, type metadata accessor for FMIPItemUpdateType);
    if (v102(v101, 1, v98) != 1)
    {
      sub_24A67F378(v101, &qword_27EF5E0E0, &qword_24A836D90);
    }
  }

  else
  {
    sub_24A67F378(a6, &qword_27EF5E0E0, &qword_24A836D90);
    sub_24A812734(v96, type metadata accessor for FMIPItemUpdateType);
    v100(v12, v101, v98);
  }

  v100(a7 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp, v12, v98);
  v267 = a7;
  if (v278)
  {
    v104 = MEMORY[0x277D84FA0];
    aBlock = MEMORY[0x277D84FA0];
    a1 = v279;

    sub_24A82D704();
    v105 = sub_24A82D784();
    if (v105)
    {
      v106 = v105;
      a7 = sub_24A679170(0, &qword_281512B60, 0x277D49610);
      v107 = v106;
      v104 = MEMORY[0x277D84FA0];
      a6 = -1;
      v11 = 63;
LABEL_49:
      v284 = v107;
      swift_dynamicCast();
      v108 = [v296 role];
      if (!v108)
      {

        goto LABEL_48;
      }

      v12 = v296;
      v109 = *(v104 + 16);
      if (*(v104 + 24) <= v109)
      {
        sub_24A70E8A4(v109 + 1);
      }

      v104 = aBlock;
      v110 = sub_24A82D5D4();
      v111 = v104 + 56;
      v112 = -1 << *(v104 + 32);
      v113 = v110 & ~v112;
      v114 = v113 >> 6;
      if (((-1 << v113) & ~*(v104 + 56 + 8 * (v113 >> 6))) != 0)
      {
        v115 = __clz(__rbit64((-1 << v113) & ~*(v104 + 56 + 8 * (v113 >> 6)))) | v113 & 0x7FFFFFFFFFFFFFC0;
        goto LABEL_62;
      }

      v116 = 0;
      v117 = (63 - v112) >> 6;
      while (++v114 != v117 || (v116 & 1) == 0)
      {
        v118 = v114 == v117;
        if (v114 == v117)
        {
          v114 = 0;
        }

        v116 |= v118;
        v119 = *(v111 + 8 * v114);
        if (v119 != -1)
        {
          v115 = __clz(__rbit64(~v119)) + (v114 << 6);
LABEL_62:
          *(v111 + ((v115 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v115;
          *(*(v104 + 48) + 8 * v115) = v12;
          ++*(v104 + 16);
LABEL_48:
          v107 = sub_24A82D784();
          if (!v107)
          {
            goto LABEL_63;
          }

          goto LABEL_49;
        }
      }

      __break(1u);
      goto LABEL_140;
    }

LABEL_63:

LABEL_80:
    v134 = v280;
    a7 = v267;
  }

  else
  {
    a1 = v279;
    v120 = *(v279 + 32);
    v121 = v120 & 0x3F;
    v122 = ((1 << v120) + 63) >> 6;
    v123 = 8 * v122;

    if (v121 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
    {
      v274 = &v240;
      MEMORY[0x28223BE20](isStackAllocationSafe);
      v125 = &v240 - ((v123 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v125, v123);
      v126 = 0;
      v127 = 0;
      v11 = a1 + 56;
      v128 = 1 << *(a1 + 32);
      v129 = -1;
      if (v128 < 64)
      {
        v129 = ~(-1 << v128);
      }

      v130 = v129 & *(a1 + 56);
      a1 = (v128 + 63) >> 6;
      while (1)
      {
        if (v130)
        {
          v131 = __clz(__rbit64(v130));
          v130 &= v130 - 1;
        }

        else
        {
          v132 = v127;
          do
          {
            v127 = v132 + 1;
            if (__OFADD__(v132, 1))
            {
              goto LABEL_142;
            }

            if (v127 >= a1)
            {
              goto LABEL_79;
            }

            v133 = *(v11 + 8 * v127);
            ++v132;
          }

          while (!v133);
          v131 = __clz(__rbit64(v133));
          v130 = (v133 - 1) & v133;
        }

        a6 = v131 | (v127 << 6);
        v12 = *(*(v279 + 48) + 8 * a6);
        a7 = [v12 role];

        if (a7)
        {

          *&v125[(a6 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << a6;
          v79 = __OFADD__(v126++, 1);
          if (v79)
          {
            break;
          }
        }
      }

      __break(1u);
LABEL_79:
      a1 = v279;
      v104 = sub_24A7F06EC(v125, v122, v126, v279);
      goto LABEL_80;
    }

    v239 = swift_slowAlloc();
    v104 = sub_24A810B24(v239, v122, a1, sub_24A805968);
    MEMORY[0x24C21E1D0](v239, -1, -1);
    v134 = v280;
  }

  v135 = v273;

  v136 = sub_24A812EC4(v104, v135);

  v137 = sub_24A8134C0(v136, v135);

  v138 = sub_24A812064(v137, a7);

  v139 = sub_24A6ABDFC(a1, sub_24A753FA0, sub_24A74E8C0);
  v140 = sub_24A8059B8(v139, &qword_281512B60, 0x277D49610, &protocol witness table for SPBeacon);

  sub_24A8136F8(v140);

  v141 = v257;
  (v276)(v257, v275, v134);
  v142 = sub_24A82CD94();
  v143 = sub_24A82D504();
  v144 = os_log_type_enabled(v142, v143);
  v145 = &off_24A82F000;
  v146 = v259;
  v147 = v134;
  if (v144)
  {
    v148 = swift_slowAlloc();
    v149 = v141;
    v150 = swift_slowAlloc();
    aBlock = v150;
    *v148 = 136315138;
    v151 = v146;
    v152 = sub_24A82CA54();
    v154 = v153;
    v281 = *v283;
    v281(v149, v147);
    v155 = v152;
    v146 = v151;
    v145 = &off_24A82F000;
    v156 = sub_24A68761C(v155, v154, &aBlock);
    a1 = v279;

    *(v148 + 4) = v156;
    _os_log_impl(&dword_24A675000, v142, v143, "FMIPBeaconRefreshingController: separation state %s", v148, 0xCu);
    sub_24A6876E8(v150);
    MEMORY[0x24C21E1D0](v150, -1, -1);
    MEMORY[0x24C21E1D0](v148, -1, -1);
  }

  else
  {

    v281 = *v283;
    v281(v141, v134);
  }

  v157 = v258;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_24A751A04(v138);
    swift_unknownObjectRelease();
  }

  (v276)(v157, v275, v147);
  v158 = sub_24A82CD94();
  v159 = sub_24A82D504();
  if (os_log_type_enabled(v158, v159))
  {
    v160 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    aBlock = v161;
    *v160 = *(v145 + 434);
    v162 = sub_24A82CA54();
    v163 = v157;
    v165 = v164;
    v281(v163, v147);
    v166 = sub_24A68761C(v162, v165, &aBlock);

    *(v160 + 4) = v166;
    _os_log_impl(&dword_24A675000, v158, v159, "FMIPBeaconRefreshingController: items updated %s", v160, 0xCu);
    sub_24A6876E8(v161);
    MEMORY[0x24C21E1D0](v161, -1, -1);
    MEMORY[0x24C21E1D0](v160, -1, -1);
  }

  else
  {

    v281(v157, v147);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_24A6ABEBC(v244);
    swift_unknownObjectRelease();
  }

  (v276)(v146, v275, v147);
  v167 = sub_24A82CD94();
  a7 = sub_24A82D504();
  if (os_log_type_enabled(v167, a7))
  {
    v168 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    aBlock = v169;
    *v168 = *(v145 + 434);
    v170 = sub_24A82CA54();
    v172 = v171;
    v281(v146, v147);
    v173 = sub_24A68761C(v170, v172, &aBlock);

    *(v168 + 4) = v173;
    _os_log_impl(&dword_24A675000, v167, a7, "FMIPBeaconRefreshingController: groups updated %s", v168, 0xCu);
    sub_24A6876E8(v169);
    MEMORY[0x24C21E1D0](v169, -1, -1);
    MEMORY[0x24C21E1D0](v168, -1, -1);
  }

  else
  {

    v281(v146, v147);
  }

  v174 = MEMORY[0x277D84F90];
  v11 = sub_24A78B1C0(MEMORY[0x277D84F90]);
  v12 = sub_24A78B3DC(v174);
  if (v278)
  {
    swift_unknownObjectRetain();
    sub_24A82D704();
    a7 = 0x277D49610;
    sub_24A679170(0, &qword_281512B60, 0x277D49610);
    sub_24A6AB7EC(&qword_281512B58, &qword_281512B60, 0x277D49610);
    sub_24A82D414();
    a1 = v296;
    v175 = v297;
    v176 = v298;
    v177 = v299;
    v178 = v300;
  }

  else
  {
    v179 = -1 << *(a1 + 32);
    v175 = (a1 + 56);
    v176 = ~v179;
    v180 = -v179;
    if (v180 < 64)
    {
      v181 = ~(-1 << v180);
    }

    else
    {
      v181 = -1;
    }

    v178 = (v181 & *(a1 + 56));

    v177 = 0;
  }

  v266 = v176;
  a6 = (v176 + 64) >> 6;
  v279 = a1;
  v274 = v175;
  while (2)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      v182 = v177;
      v183 = v178;
      v184 = v177;
      if (!v178)
      {
        do
        {
          v184 = v182 + 1;
          if (__OFADD__(v182, 1))
          {
            goto LABEL_141;
          }

          if (v184 >= a6)
          {
            goto LABEL_125;
          }

          v183 = v175[v184];
          ++v182;
        }

        while (!v183);
      }

      v185 = (v183 - 1) & v183;
      a1 = *(*(a1 + 48) + ((v184 << 9) | (8 * __clz(__rbit64(v183)))));
      if (!a1)
      {
        goto LABEL_125;
      }

LABEL_112:
      v278 = v185;
      v187 = [a1 lostModeInfo];
      if (v187)
      {
        v188 = v187;
        a7 = &off_278FE8000;
        v189 = [a1 identifier];
        v190 = v268;
        sub_24A82CA84();

        v191 = v188;
        v192 = v269;
        FMIPDeviceLostModeMetadata.init(lostModeInfo:)(v191, v269);
        v193 = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v11;
        sub_24A7856DC(v192, v190, v193);

        v281(v190, v280);
        v11 = aBlock;
      }

      else
      {
        a7 = &off_278FE8000;
      }

      v194 = [a1 identifier];
      v195 = v282;
      sub_24A82CA84();

      sub_24A8002F0([a1 type], &v284);
      v196 = v284;
      v197 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v12;
      v198 = sub_24A77EDF8(v195);
      v200 = *(v12 + 16);
      v201 = (v199 & 1) == 0;
      v79 = __OFADD__(v200, v201);
      v202 = v200 + v201;
      if (v79)
      {
        goto LABEL_143;
      }

      v203 = v199;
      if (*(v12 + 24) >= v202)
      {
        a7 = v278;
        if (v197)
        {
          goto LABEL_120;
        }

        v210 = v198;
        sub_24A787D2C();
        v198 = v210;
        v12 = aBlock;
        if (v203)
        {
          goto LABEL_101;
        }

LABEL_121:
        *(v12 + 8 * (v198 >> 6) + 64) |= 1 << v198;
        v205 = v198;
        v206 = v282;
        v207 = v280;
        (v276)(*(v12 + 48) + *(v270 + 72) * v198, v282, v280);
        *(*(v12 + 56) + v205) = v196;

        v281(v206, v207);
        v208 = *(v12 + 16);
        v79 = __OFADD__(v208, 1);
        v209 = v208 + 1;
        if (v79)
        {
          goto LABEL_144;
        }

        *(v12 + 16) = v209;
      }

      else
      {
        sub_24A78423C(v202, v197);
        v198 = sub_24A77EDF8(v282);
        a7 = v278;
        if ((v203 & 1) != (v204 & 1))
        {
          goto LABEL_151;
        }

LABEL_120:
        v12 = aBlock;
        if ((v203 & 1) == 0)
        {
          goto LABEL_121;
        }

LABEL_101:
        *(*(v12 + 56) + v198) = v196;

        v281(v282, v280);
      }

      v177 = v184;
      v178 = a7;
      a1 = v279;
      v175 = v274;
      continue;
    }

    break;
  }

  v186 = sub_24A82D784();
  if (v186)
  {
    v284 = v186;
    sub_24A679170(0, &qword_281512B60, 0x277D49610);
    swift_dynamicCast();
    a1 = aBlock;
    v184 = v177;
    v185 = v178;
    if (aBlock)
    {
      goto LABEL_112;
    }
  }

LABEL_125:
  sub_24A6BAFBC(v279);
  v211 = v273;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_24A7517CC(v11);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v212 = v280;
  v213 = v248;
  (v276)(v248, v275, v280);
  v214 = sub_24A82CD94();
  v215 = sub_24A82D504();
  if (os_log_type_enabled(v214, v215))
  {
    v216 = swift_slowAlloc();
    v217 = swift_slowAlloc();
    aBlock = v217;
    *v216 = 136315138;
    v218 = sub_24A82CA54();
    v220 = v219;
    v281(v213, v212);
    v221 = sub_24A68761C(v218, v220, &aBlock);

    *(v216 + 4) = v221;
    _os_log_impl(&dword_24A675000, v214, v215, "FMIPBeaconRefreshingController: lost mode info %s", v216, 0xCu);
    sub_24A6876E8(v217);
    MEMORY[0x24C21E1D0](v217, -1, -1);
    MEMORY[0x24C21E1D0](v216, -1, -1);
  }

  else
  {

    v281(v213, v212);
  }

  v222 = v249;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_24A7513DC(v12);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  (v276)(v222, v275, v212);
  v223 = sub_24A82CD94();
  v224 = sub_24A82D504();
  if (os_log_type_enabled(v223, v224))
  {
    v225 = swift_slowAlloc();
    v226 = swift_slowAlloc();
    aBlock = v226;
    *v225 = 136315138;
    v227 = sub_24A82CA54();
    v229 = v228;
    v281(v222, v212);
    v230 = sub_24A68761C(v227, v229, &aBlock);

    *(v225 + 4) = v230;
    _os_log_impl(&dword_24A675000, v223, v224, "FMIPBeaconRefreshingController: beacon types %s", v225, 0xCu);
    sub_24A6876E8(v226);
    MEMORY[0x24C21E1D0](v226, -1, -1);
    MEMORY[0x24C21E1D0](v225, -1, -1);
  }

  else
  {

    v281(v222, v212);
  }

  v231 = v246;
  v232 = v245;
  v233 = MEMORY[0x277D84F90];
  v289 = sub_24A81469C;
  v290 = v211;
  aBlock = MEMORY[0x277D85DD0];
  v286 = 1107296256;
  v287 = sub_24A699BA0;
  v288 = &unk_285DCE0B0;
  v234 = _Block_copy(&aBlock);

  v235 = v252;
  sub_24A82CE24();
  v284 = v233;
  sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40, MEMORY[0x277D83970]);
  v236 = v254;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v235, v236, v234);
  _Block_release(v234);
  (*(v232 + 8))(v236, v231);
  (*(v253 + 8))(v235, v255);

  if (v247)
  {
    v247(v237);
  }
}

uint64_t sub_24A805898(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v4 = sub_24A82D744();
  if (v4)
  {
    while (1)
    {
      v5 = sub_24A753FA0(v4, 0);

      v2 = sub_24A74E8C0(&v7, (v5 + 32), v4, v2);
      sub_24A6BAFBC(v7);
      if (v2 == v4)
      {
        break;
      }

      __break(1u);
LABEL_5:
      v4 = v2[2];
      if (!v4)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v5 = MEMORY[0x277D84F90];
  }

  *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_spBeacons) = v5;
}

BOOL sub_24A805968(id *a1)
{
  v1 = [*a1 role];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

void *sub_24A8059B8(unint64_t a1, unint64_t *a2, void *a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    v8 = sub_24A82D744();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v23 = MEMORY[0x277D84F90];
  result = sub_24A6FCC7C(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v23;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      do
      {
        v12 = MEMORY[0x24C21D180](v11, a1);
        v23 = v9;
        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_24A6FCC7C((v13 > 1), v14 + 1, 1);
          v9 = v23;
        }

        ++v11;
        v21 = sub_24A679170(0, a2, a3);
        v22 = a4;
        *&v20 = v12;
        *(v9 + 16) = v14 + 1;
        sub_24A696E80(&v20, v9 + 40 * v14 + 32);
      }

      while (v8 != v11);
    }

    else
    {
      v15 = (a1 + 32);
      do
      {
        v16 = *v15;
        v23 = v9;
        v18 = *(v9 + 16);
        v17 = *(v9 + 24);
        v19 = v16;
        if (v18 >= v17 >> 1)
        {
          sub_24A6FCC7C((v17 > 1), v18 + 1, 1);
          v9 = v23;
        }

        v21 = sub_24A679170(0, a2, a3);
        v22 = a4;
        *&v20 = v19;
        *(v9 + 16) = v18 + 1;
        sub_24A696E80(&v20, v9 + 40 * v18 + 32);
        ++v15;
        --v8;
      }

      while (v8);
    }

    return v9;
  }

  __break(1u);
  return result;
}

void sub_24A805B7C(void *a1)
{
  v2 = *a1;
  v3 = sub_24A82CAA4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - v7;
  v9 = sub_24A82CA34();
  v51 = *(v9 - 8);
  v10 = *(v51 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - v13;
  *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_currentlyRefreshing) = 0;
  if (*(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_nextRefreshQueued) == 1)
  {
    v50 = v12;
    v47 = a1;
    v48 = v2;
    *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_nextRefreshQueued) = 0;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v15 = sub_24A82CDC4();
    sub_24A6797D0(v15, qword_281518F88);
    v16 = sub_24A82CD94();
    v17 = sub_24A82D504();
    v18 = os_log_type_enabled(v16, v17);
    v49 = v14;
    if (v18)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_24A675000, v16, v17, "FMIPBeaconRefreshingController: Another refresh was queued, running.", v19, 2u);
      v20 = v19;
      v14 = v49;
      MEMORY[0x24C21E1D0](v20, -1, -1);
    }

    sub_24A82CA24();
    sub_24A82CA94();
    v21 = *(v4 + 16);
    v44 = v8;
    v21(&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v3);
    v46 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = v51;
    (*(v51 + 16))(v50, v14, v9);
    v23 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v24 = (v5 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = v9;
    v26 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    v27 = (*(v22 + 80) + v26 + 16) & ~*(v22 + 80);
    v28 = swift_allocObject();
    v45 = v4;
    v29 = *(v4 + 32);
    v30 = v46;
    v46 = v3;
    v29(v28 + v23, v30, v3);
    *(v28 + v24) = v47;
    v31 = (v28 + v26);
    *v31 = 0;
    v31[1] = 0;
    v32 = v25;
    (*(v22 + 32))(v28 + v27, v50, v25);
    *(v28 + ((v10 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v48;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_24A814B38;
    *(v33 + 24) = v28;
    aBlock[4] = sub_24A680674;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A6805E4;
    aBlock[3] = &unk_285DCE128;
    v34 = _Block_copy(aBlock);
    v35 = _Block_copy(v34);
    v36 = qword_281513E40;

    if (v36 != -1)
    {
      swift_once();
    }

    v37 = _os_activity_create(&dword_24A675000, "FMIPBeaconRefreshingController.refreshBeacons", qword_281513E48[0], OS_ACTIVITY_FLAG_DEFAULT);
    v38 = _Block_copy(v35);
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_24A6A9A80;
    *(v40 + 24) = v39;
    v52[4] = sub_24A680674;
    v52[5] = v40;
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 1107296256;
    v52[2] = sub_24A6805E4;
    v52[3] = &unk_285DCE1A0;
    v41 = _Block_copy(v52);

    os_activity_apply(v37, v41);
    _Block_release(v41);
    LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

    _Block_release(v35);
    _Block_release(v34);
    if (v41)
    {
      __break(1u);
    }

    else
    {
      (*(v45 + 8))(v44, v46);
      (*(v51 + 8))(v49, v32);
      swift_unknownObjectRelease();

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_24A8061E4(unint64_t a1)
{
  v307 = a1;
  v2 = type metadata accessor for FMIPItem(0);
  v297 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v298 = v275 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v301 = v275 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v305 = v275 - v7;
  updated = type metadata accessor for FMIPItemUpdateType(0);
  MEMORY[0x28223BE20](updated);
  v282 = v275 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
  v289 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v292 = v275 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v290 = v275 - v12;
  v13 = sub_24A6BBA94(&qword_27EF5F8B0, &qword_24A8415E0);
  v303 = *(v13 - 8);
  v14 = v303[8];
  v15 = MEMORY[0x28223BE20](v13);
  v302 = v275 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v275 - v16;
  v18 = sub_24A82CAA4();
  v306 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v278 = v275 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v283 = v275 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v299 = v275 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v308 = (v275 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v309 = v275 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v300 = (v275 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v304 = v275 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = v275 - v34;
  MEMORY[0x28223BE20](v33);
  v288 = v275 - v36;
  v37 = sub_24A82CA34();
  v284 = *(v37 - 8);
  v38 = MEMORY[0x28223BE20](v37);
  v279 = v275 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v281 = v275 - v41;
  MEMORY[0x28223BE20](v40);
  v285 = v275 - v42;
  v43 = sub_24A82C514();
  v313 = v43;
  v314 = sub_24A697DF4(&unk_281514680, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
  v44 = sub_24A697E3C(aBlock);
  (*(*(v43 - 8) + 104))(v44, *MEMORY[0x277D08A00], v43);
  v45 = sub_24A82C4D4();
  sub_24A6876E8(aBlock);
  if ((v45 & 1) == 0 || *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_shouldUseBeaconsOptimizationSPI) != 1)
  {
    if (qword_281515DC8 == -1)
    {
LABEL_8:
      v56 = sub_24A82CDC4();
      sub_24A6797D0(v56, qword_281518F88);
      v57 = sub_24A82CD94();
      v58 = sub_24A82D504();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_24A675000, v57, v58, "FMIPBeaconRefreshingController: app beacons FF disabled", v59, 2u);
        MEMORY[0x24C21E1D0](v59, -1, -1);
      }

      return;
    }

LABEL_60:
    swift_once();
    goto LABEL_8;
  }

  v276 = v37;
  v286 = v1;
  v310 = v18;
  sub_24A82CA24();
  sub_24A82CA94();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v46 = sub_24A82CDC4();
  v47 = sub_24A6797D0(v46, qword_281518F88);
  v48 = v303;
  v296 = v303[2];
  (v296)(v17, v307, v13);
  v277 = v47;
  v49 = sub_24A82CD94();
  v50 = sub_24A82D4D4();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v295 = v13;
    v52 = v51;
    v294 = swift_slowAlloc();
    *v52 = 138412290;
    v53 = sub_24A82D994();
    (v48[1])(v17, v295);
    *(v52 + 4) = v53;
    v54 = v294;
    *v294 = v53;
    _os_log_impl(&dword_24A675000, v49, v50, "FMIPBeaconRefreshingController: beacons diff received %@", v52, 0xCu);
    sub_24A67F378(v54, &qword_27EF5D010, &qword_24A830E30);
    MEMORY[0x24C21E1D0](v54, -1, -1);
    v55 = v52;
    v13 = v295;
    MEMORY[0x24C21E1D0](v55, -1, -1);
  }

  else
  {

    (v48[1])(v17, v13);
  }

  v60 = v48;
  v316 = MEMORY[0x277D84F90];
  v61 = v286;
  v62 = *(v286 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue);
  v63 = v302;
  (v296)(v302, v307, v13);
  v64 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v65 = swift_allocObject();
  *(v65 + 16) = &v316;
  *(v65 + 24) = v61;
  (v60[4])(v65 + v64, v63, v13);
  v66 = swift_allocObject();
  *(v66 + 16) = sub_24A81265C;
  *(v66 + 24) = v65;
  v275[1] = v65;
  v314 = sub_24A680674;
  v315 = v66;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6805E4;
  v313 = &unk_285DCDB60;
  v67 = _Block_copy(aBlock);
  v68 = v315;

  dispatch_sync(v62, v67);
  _Block_release(v67);
  LOBYTE(v62) = swift_isEscapingClosureAtFileLocation();

  v69 = v310;
  if (v62)
  {
    __break(1u);
    goto LABEL_62;
  }

  v70 = sub_24A82CD94();
  LODWORD(v71) = sub_24A82D504();
  if (!os_log_type_enabled(v70, v71))
  {

    v61 = v301;
    goto LABEL_28;
  }

  v72 = swift_slowAlloc();
  v303 = swift_slowAlloc();
  aBlock[0] = v303;
  v307 = v72;
  *v72 = 136315138;
  swift_beginAccess();
  v73 = v316;
  v61 = v301;
  if (v316 >> 62)
  {
    goto LABEL_234;
  }

  for (i = *((v316 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A82D744())
  {
    v75 = MEMORY[0x277D84F90];
    if (i)
    {
      LODWORD(v296) = v71;
      v302 = v70;
      *&v317[0] = MEMORY[0x277D84F90];

      sub_24A6FCAAC(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
LABEL_236:
        sub_24A82DC44();
        __break(1u);
LABEL_237:
        sub_24A82DC44();
        __break(1u);
        return;
      }

      v76 = 0;
      v75 = *&v317[0];
      do
      {
        if ((v73 & 0xC000000000000001) != 0)
        {
          v77 = MEMORY[0x24C21D180](v76, v73);
        }

        else
        {
          v77 = *(v73 + 8 * v76 + 32);
        }

        v78 = v77;
        v79 = [v77 identifier];
        sub_24A82CA84();

        *&v317[0] = v75;
        v81 = *(v75 + 16);
        v80 = *(v75 + 24);
        if (v81 >= v80 >> 1)
        {
          sub_24A6FCAAC((v80 > 1), v81 + 1, 1);
          v75 = *&v317[0];
        }

        ++v76;
        *(v75 + 16) = v81 + 1;
        v82 = v75 + ((*(v306 + 80) + 32) & ~*(v306 + 80)) + *(v306 + 72) * v81;
        v69 = v310;
        (*(v306 + 32))(v82, v35, v310);
      }

      while (i != v76);

      v61 = v301;
      v70 = v302;
      LOBYTE(v71) = v296;
    }

    v83 = MEMORY[0x24C21CB60](v75, v69);
    v85 = v84;

    v86 = sub_24A68761C(v83, v85, aBlock);

    v87 = v307;
    *(v307 + 4) = v86;
    _os_log_impl(&dword_24A675000, v70, v71, "FMIPBeaconRefreshingController: beacons received %s", v87, 0xCu);
    v88 = v303;
    sub_24A6876E8(v303);
    MEMORY[0x24C21E1D0](v88, -1, -1);
    MEMORY[0x24C21E1D0](v87, -1, -1);

LABEL_28:
    v67 = v304;
    v68 = v305;
    swift_beginAccess();
    v66 = v316;
    if (!(v316 >> 62))
    {
      v89 = *((v316 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v89)
      {
        goto LABEL_30;
      }

      goto LABEL_63;
    }

LABEL_62:
    v89 = sub_24A82D744();
    if (v89)
    {
LABEL_30:
      v307 = v66 & 0xC000000000000001;
      v302 = v66 & 0xFFFFFFFFFFFFFF8;
      v90 = *MEMORY[0x277D497C8];
      v293 = v306 + 16;
      v294 = v90;
      v296 = v306 + 8;

      v91 = 0;
      v291 = MEMORY[0x277D84F98];
      while (1)
      {
        if (v307)
        {
          v93 = MEMORY[0x24C21D180](v91, v66);
        }

        else
        {
          if (v91 >= *(v302 + 16))
          {
            goto LABEL_57;
          }

          v93 = *(v66 + 8 * v91 + 32);
        }

        v94 = v93;
        v95 = v91 + 1;
        if (__OFADD__(v91, 1))
        {
          break;
        }

        v96 = [v93 role];
        if (v96)
        {
          v92 = v96;
        }

        else
        {
          v97 = [v94 identifier];
          sub_24A82CA84();

          v98 = [v94 taskInformation];
          type metadata accessor for SPBeaconTaskName(0);
          sub_24A679170(0, &qword_27EF5DD20, 0x277D49648);
          sub_24A697DF4(&qword_27EF5CEF8, type metadata accessor for SPBeaconTaskName, &unk_24A830D10);
          v99 = sub_24A82CEF4();

          if (*(v99 + 16))
          {
            v100 = sub_24A77EE90(v294);
            v101 = v291;
            if (v102)
            {
              v103 = *(*(v99 + 56) + 8 * v100);

              v104 = [v103 state];

              LODWORD(v303) = v104 == 0;
            }

            else
            {

              LODWORD(v303) = 0;
            }
          }

          else
          {

            LODWORD(v303) = 0;
            v101 = v291;
          }

          v105 = v101;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock[0] = v105;
          v107 = sub_24A77EDF8(v67);
          v109 = *(v105 + 16);
          v110 = (v108 & 1) == 0;
          v111 = __OFADD__(v109, v110);
          v112 = v109 + v110;
          if (v111)
          {
            goto LABEL_58;
          }

          v113 = v108;
          if (*(v105 + 24) >= v112)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v124 = v107;
              sub_24A787ABC();
              v107 = v124;
            }
          }

          else
          {
            sub_24A783E7C(v112, isUniquelyReferenced_nonNull_native);
            v107 = sub_24A77EDF8(v67);
            if ((v113 & 1) != (v114 & 1))
            {
              goto LABEL_236;
            }
          }

          v69 = v310;
          v115 = aBlock[0];
          v291 = aBlock[0];
          if (v113)
          {
            *(*(aBlock[0] + 56) + v107) = v303;

            v67 = v304;
            (*v296)(v304, v69);
          }

          else
          {
            v116 = v89;
            v117 = v66;
            *(aBlock[0] + 8 * (v107 >> 6) + 64) |= 1 << v107;
            v118 = v306;
            v119 = v115[6] + *(v306 + 72) * v107;
            v120 = *(v306 + 16);
            v295 = v107;
            v121 = v304;
            v120(v119, v304, v69);
            *(v115[7] + v295) = v303;

            (*(v118 + 8))(v121, v69);
            v122 = v115[2];
            v111 = __OFADD__(v122, 1);
            v123 = v122 + 1;
            if (v111)
            {
              goto LABEL_59;
            }

            v115[2] = v123;
            v67 = v304;
            v66 = v117;
            v89 = v116;
          }

          v61 = v301;
        }

        ++v91;
        if (v95 == v89)
        {

          v68 = v305;
          goto LABEL_64;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

LABEL_63:
    v291 = MEMORY[0x277D84F98];
LABEL_64:
    v125 = v316;
    if (v316 >> 62)
    {
      goto LABEL_108;
    }

    v126 = *((v316 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v126)
    {
LABEL_66:
      v287 = v125 & 0xFFFFFFFFFFFFFF8;
      v307 = v306 + 8;
      v295 = v306 + 16;
      v296 = v125 & 0xC000000000000001;
      v127 = v125;

      v128 = v127;
      v129 = 0;
      v130 = MEMORY[0x277D84F98];
      v302 = MEMORY[0x277D84F98];
      v303 = MEMORY[0x277D84F98];
      v293 = v126;
      v294 = v127;
      while (1)
      {
        if (v296)
        {
          v132 = MEMORY[0x24C21D180](v129, v128);
          v61 = v300;
          v68 = v129 + 1;
          if (__OFADD__(v129, 1))
          {
            goto LABEL_102;
          }
        }

        else
        {
          v61 = v300;
          if (v129 >= *(v287 + 16))
          {
            goto LABEL_107;
          }

          v132 = v128[v129 + 4];
          v68 = v129 + 1;
          if (__OFADD__(v129, 1))
          {
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            v174 = v125;
            v175 = sub_24A82D744();
            v125 = v174;
            v126 = v175;
            if (!v175)
            {
              break;
            }

            goto LABEL_66;
          }
        }

        v133 = [v132 identifier];
        sub_24A82CA84();

        v134 = [v132 accessoryProductInfo];
        if (v134)
        {
          v135 = v134;
          v136 = [v134 capabilities];

          v137 = swift_isUniquelyReferenced_nonNull_native();
          aBlock[0] = v130;
          sub_24A785380((v136 & 0x400) != 0, v61, v137);
          v138 = *v307;
          (*v307)(v61, v69);
          v304 = aBlock[0];
        }

        else
        {
          v139 = sub_24A77EDF8(v61);
          if (v140)
          {
            v141 = v139;
            v142 = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v130;
            if ((v142 & 1) == 0)
            {
              sub_24A787ABC();
              v130 = aBlock[0];
            }

            v143 = *(v130 + 6) + *(v306 + 72) * v141;
            v144 = v130;
            v138 = *(v306 + 8);
            v138(v143, v69);
            v304 = v144;
            sub_24A7C5384(v141, v144);
            v138(v61, v69);
          }

          else
          {
            v304 = v130;
            v138 = *v307;
            (*v307)(v61, v69);
          }
        }

        v145 = [v132 identifier];
        v146 = v309;
        sub_24A82CA84();

        v147 = [v132 connected];
        v148 = v303;
        v149 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v148;
        v61 = sub_24A77EDF8(v146);
        v151 = v148[2];
        v125 = (v150 & 1) == 0;
        v152 = v151 + v125;
        if (__OFADD__(v151, v125))
        {
          goto LABEL_103;
        }

        v153 = v150;
        if (v148[3] >= v152)
        {
          if ((v149 & 1) == 0)
          {
            sub_24A787ABC();
          }
        }

        else
        {
          sub_24A783E7C(v152, v149);
          v154 = sub_24A77EDF8(v309);
          if ((v153 & 1) != (v155 & 1))
          {
            goto LABEL_236;
          }

          v61 = v154;
        }

        v156 = aBlock[0];
        v303 = aBlock[0];
        if (v153)
        {
          *(*(aBlock[0] + 56) + v61) = v147;
          v69 = v310;
        }

        else
        {
          *(aBlock[0] + 8 * (v61 >> 6) + 64) |= 1 << v61;
          v69 = v310;
          (*(v306 + 16))(v156[6] + *(v306 + 72) * v61, v309, v310);
          *(v156[7] + v61) = v147;
          v157 = v156[2];
          v111 = __OFADD__(v157, 1);
          v158 = v157 + 1;
          if (v111)
          {
            goto LABEL_105;
          }

          v156[2] = v158;
        }

        v138(v309, v69);
        v159 = [v132 identifier];
        v160 = v308;
        sub_24A82CA84();

        sub_24A8002F0([v132 type], v317);
        v61 = LOBYTE(v317[0]);
        v161 = v302;
        v162 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v161;
        v163 = sub_24A77EDF8(v160);
        v165 = *(v161 + 16);
        v125 = (v164 & 1) == 0;
        v111 = __OFADD__(v165, v125);
        v166 = v165 + v125;
        if (v111)
        {
          goto LABEL_104;
        }

        v167 = v164;
        if (*(v161 + 24) >= v166)
        {
          if ((v162 & 1) == 0)
          {
            v173 = v163;
            sub_24A787D2C();
            v163 = v173;
          }
        }

        else
        {
          sub_24A78423C(v166, v162);
          v163 = sub_24A77EDF8(v308);
          if ((v167 & 1) != (v168 & 1))
          {
            goto LABEL_237;
          }
        }

        v169 = aBlock[0];
        v302 = aBlock[0];
        if (v167)
        {
          *(*(aBlock[0] + 56) + v163) = v61;
        }

        else
        {
          *(aBlock[0] + 8 * (v163 >> 6) + 64) |= 1 << v163;
          v170 = v163;
          (*(v306 + 16))(v169[6] + *(v306 + 72) * v163, v308, v69);
          *(v169[7] + v170) = v61;
          v171 = v169[2];
          v111 = __OFADD__(v171, 1);
          v172 = v171 + 1;
          if (v111)
          {
            goto LABEL_106;
          }

          v169[2] = v172;
        }

        v138(v308, v69);
        ++v129;
        v128 = v294;
        v131 = v68 == v293;
        v61 = v301;
        v130 = v304;
        v68 = v305;
        if (v131)
        {

          goto LABEL_110;
        }
      }
    }

    v130 = MEMORY[0x277D84F98];
    v302 = MEMORY[0x277D84F98];
    v303 = MEMORY[0x277D84F98];
LABEL_110:
    v176 = v316;
    if (v316 >> 62)
    {
      goto LABEL_140;
    }

    v177 = *((v316 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v177)
    {
LABEL_112:
      v295 = v306 + 16;
      v296 = v176 & 0xFFFFFFFFFFFFFF8;
      v308 = (v306 + 8);
      v309 = v176 & 0xC000000000000001;

      v178 = 0;
      v179 = MEMORY[0x277D84F98];
      v180 = &off_278FE8000;
      v304 = v130;
      v307 = v176;
      v300 = v177;
      while (1)
      {
        if (v309)
        {
          v181 = MEMORY[0x24C21D180](v178, v176);
        }

        else
        {
          if (v178 >= *(v296 + 16))
          {
            goto LABEL_138;
          }

          v181 = *(v176 + 8 * v178 + 32);
        }

        v69 = v181;
        v68 = v178 + 1;
        if (__OFADD__(v178, 1))
        {
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          v177 = sub_24A82D744();
          if (!v177)
          {
            break;
          }

          goto LABEL_112;
        }

        v182 = [v181 v180[230]];
        if (!v182)
        {

          v69 = v310;
          goto LABEL_114;
        }

        v183 = [v69 v180[230]];
        if (!v183)
        {

          v69 = v310;
          v180 = &off_278FE8000;
          goto LABEL_114;
        }

        v184 = v183;
        v176 = [v69 identifier];
        v185 = v299;
        sub_24A82CA84();

        v61 = v184;
        v186 = v290;
        FMIPDeviceLostModeMetadata.init(lostModeInfo:)(v61, v290);
        sub_24A8127B4(v186, v292, type metadata accessor for FMIPDeviceLostModeMetadata);
        v187 = v179;
        v188 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v187;
        v190 = sub_24A77EDF8(v185);
        v191 = *(v187 + 16);
        v192 = (v189 & 1) == 0;
        v193 = v191 + v192;
        if (__OFADD__(v191, v192))
        {
          goto LABEL_137;
        }

        v194 = v189;
        if (*(v187 + 24) >= v193)
        {
          v180 = &off_278FE8000;
          if (v188)
          {
            goto LABEL_129;
          }

          sub_24A787FB0();
        }

        else
        {
          sub_24A784610(v193, v188);
          v195 = sub_24A77EDF8(v299);
          if ((v194 & 1) != (v196 & 1))
          {
            goto LABEL_236;
          }

          v190 = v195;
        }

        v180 = &off_278FE8000;
LABEL_129:
        v179 = aBlock[0];
        if (v194)
        {
          sub_24A8142DC(v292, *(aBlock[0] + 56) + *(v289 + 72) * v190, type metadata accessor for FMIPDeviceLostModeMetadata);

          v69 = v310;
          (*v308)(v299, v310);
        }

        else
        {
          *(aBlock[0] + 8 * (v190 >> 6) + 64) |= 1 << v190;
          v176 = v306;
          v197 = *(v179 + 48) + *(v306 + 72) * v190;
          v130 = v179;
          v198 = v299;
          v199 = v310;
          (*(v306 + 16))(v197, v299, v310);
          sub_24A8127B4(v292, *(v130 + 7) + *(v289 + 72) * v190, type metadata accessor for FMIPDeviceLostModeMetadata);

          v69 = v199;
          v200 = v198;
          v179 = v130;
          (*(v176 + 8))(v200, v199);
          v201 = *(v130 + 2);
          v111 = __OFADD__(v201, 1);
          v202 = v201 + 1;
          if (v111)
          {
            goto LABEL_139;
          }

          *(v130 + 2) = v202;
          v130 = v304;
          v180 = &off_278FE8000;
        }

        v177 = v300;
        v61 = v301;
        v176 = v307;
LABEL_114:
        ++v178;
        v131 = v68 == v177;
        v68 = v305;
        if (v131)
        {

          goto LABEL_142;
        }
      }
    }

    v179 = MEMORY[0x277D84F98];
LABEL_142:
    v203 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_delegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    v299 = v179;
    v296 = v203;
    if (Strong)
    {
      sub_24A6BBA94(&qword_27EF5F8C0, &qword_24A8415E8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24A838490;
      *(inited + 32) = 0;
      *(inited + 40) = v291;
      *(inited + 48) = 2;
      *(inited + 56) = v130;
      *(inited + 64) = 1;
      *(inited + 72) = v303;
      v206 = sub_24A78B0B0(inited);
      swift_setDeallocating();

      sub_24A6BBA94(&qword_27EF5F8C8, &unk_24A8415F0);
      swift_arrayDestroy();
      sub_24A6AD900(v206);
      v179 = v299;

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v207 = v288;
    v208 = v281;
    v73 = v282;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_24A7513DC(v302);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_24A7517CC(v179);
      swift_unknownObjectRelease();
    }

    v209 = *(sub_24A6BBA94(&qword_27EF5ECD8, &qword_24A83B8C0) + 48);
    v300 = *(v306 + 16);
    v301 = (v306 + 16);
    v300(v73, v207, v69);
    v210 = v284;
    v211 = v276;
    (*(v284 + 16))(v73 + v209, v285, v276);
    swift_storeEnumTagMultiPayload();
    (*(v210 + 56))(v68, 1, 1, v211);
    type metadata accessor for FMIPItemUpdateContext(0);
    v212 = swift_allocObject();
    sub_24A8126CC(v73, v212 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_type, type metadata accessor for FMIPItemUpdateType);
    sub_24A82CA24();
    v213 = *(v210 + 32);
    v308 = v212;
    v214 = v212 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp;
    v215 = v213;
    v213(v214, v208, v211);
    sub_24A67E964(v68, v61, &qword_27EF5E0E0, &qword_24A836D90);
    v216 = *(v210 + 48);
    if (v216(v61, 1, v211) == 1)
    {
      v309 = v215;
      v217 = v279;
      sub_24A82CA24();
      sub_24A67F378(v68, &qword_27EF5E0E0, &qword_24A836D90);
      sub_24A812734(v73, type metadata accessor for FMIPItemUpdateType);
      v218 = v216(v61, 1, v211);
      v219 = v217;
      v215 = v309;
      if (v218 != 1)
      {
        sub_24A67F378(v61, &qword_27EF5E0E0, &qword_24A836D90);
      }
    }

    else
    {
      sub_24A67F378(v68, &qword_27EF5E0E0, &qword_24A836D90);
      sub_24A812734(v73, type metadata accessor for FMIPItemUpdateType);
      v219 = v279;
      v215(v279, v61, v211);
    }

    v215(v308 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp, v219, v211);
    v70 = v316;
    aBlock[0] = MEMORY[0x277D84F90];
    if (!(v316 >> 62))
    {
      v220 = *((v316 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_155;
    }

    while (1)
    {
      v220 = sub_24A82D744();
LABEL_155:

      v221 = MEMORY[0x277D84F90];
      if (v220)
      {
        v222 = 0;
        v69 = (v70 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if ((v70 & 0xC000000000000001) != 0)
          {
            v223 = MEMORY[0x24C21D180](v222, v70);
          }

          else
          {
            if (v222 >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_214;
            }

            v223 = *(v70 + 8 * v222 + 32);
          }

          v73 = v223;
          v224 = v222 + 1;
          if (__OFADD__(v222, 1))
          {
            break;
          }

          v225 = [v223 role];
          if (v225)
          {

            sub_24A82D8D4();
            v61 = *(aBlock[0] + 16);
            sub_24A82D8F4();
            sub_24A82D904();
            sub_24A82D8E4();
          }

          else
          {
          }

          ++v222;
          if (v224 == v220)
          {
            v226 = aBlock[0];
            v69 = v310;
            v221 = MEMORY[0x277D84F90];
            goto LABEL_168;
          }
        }

        __break(1u);
LABEL_214:
        __break(1u);
        goto LABEL_215;
      }

      v226 = MEMORY[0x277D84F90];
LABEL_168:

      aBlock[0] = v221;
      if (v226 < 0 || (v226 & 0x4000000000000000) != 0)
      {
        v227 = sub_24A82D744();
      }

      else
      {
        v227 = *(v226 + 16);
      }

      v309 = v286 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy;
      v228 = MEMORY[0x277D84F90];
      if (!v227)
      {
        break;
      }

      v73 = 0;
      v70 = 0;
      v307 = v226 & 0xC000000000000001;
      v304 = v226;
      v305 = v227;
      while (1)
      {
        if (v307)
        {
          v229 = MEMORY[0x24C21D180](v73, v226);
        }

        else
        {
          if (v73 >= *(v226 + 16))
          {
            goto LABEL_216;
          }

          v229 = *(v226 + 8 * v73 + 32);
        }

        v61 = v229;
        v230 = (v73 + 1);
        if (__OFADD__(v73, 1))
        {
          break;
        }

        v231 = *(v309 + 16);
        v317[0] = *v309;
        v317[1] = v231;
        v318 = *(v309 + 32);
        v319 = *(&v231 + 1);
        v320[0] = v231;
        sub_24A67E964(v320, v311, &qword_27EF5DA28, &qword_24A8415A0);
        sub_24A67E964(&v319, v311, &qword_27EF5F878, &qword_24A8415A8);
        v232 = sub_24A7B56DC();
        sub_24A67F378(v320, &qword_27EF5DA28, &qword_24A8415A0);
        sub_24A67F378(&v319, &qword_27EF5F878, &qword_24A8415A8);
        v233 = [v232 searchTypes];

        type metadata accessor for SPBeaconType(0);
        v234 = sub_24A82D244();

        v235 = [v61 type];
        v311[0] = v235;
        MEMORY[0x28223BE20](v235);
        v275[-2] = v311;
        v236 = sub_24A7FD954(sub_24A812794, &v275[-4], v234);

        if (v236)
        {
          sub_24A82D8D4();
          sub_24A82D8F4();
          sub_24A82D904();
          sub_24A82D8E4();
        }

        else
        {
        }

        v226 = v304;
        ++v73;
        v69 = v310;
        if (v230 == v305)
        {
          v70 = aBlock[0];
          v228 = MEMORY[0x277D84F90];
          goto LABEL_184;
        }
      }

LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
    }

    v70 = MEMORY[0x277D84F90];
LABEL_184:

    aBlock[0] = v228;
    if (v70 < 0 || (v70 & 0x4000000000000000) != 0)
    {
      v237 = sub_24A82D744();
    }

    else
    {
      v237 = *(v70 + 16);
    }

    v238 = MEMORY[0x277D84F90];
    if (v237)
    {
      v239 = 0;
      v69 = (v70 & 0xC000000000000001);
      while (1)
      {
        if (v69)
        {
          v240 = MEMORY[0x24C21D180](v239, v70);
        }

        else
        {
          if (v239 >= *(v70 + 16))
          {
            goto LABEL_218;
          }

          v240 = *(v70 + 8 * v239 + 32);
        }

        v73 = v240;
        v241 = v239 + 1;
        if (__OFADD__(v239, 1))
        {
          goto LABEL_217;
        }

        if (*(v309 + 32) == 1 && ([v240 isAppleAudioAccessory] & 1) != 0)
        {
        }

        else
        {
          sub_24A82D8D4();
          v61 = *(aBlock[0] + 16);
          sub_24A82D8F4();
          sub_24A82D904();
          sub_24A82D8E4();
        }

        ++v239;
        if (v241 == v237)
        {
          v242 = v238;
          v243 = aBlock[0];
          v69 = v310;
          goto LABEL_201;
        }
      }
    }

    v242 = MEMORY[0x277D84F90];
    v243 = MEMORY[0x277D84F90];
LABEL_201:

    v71 = v283;

    v35 = sub_24A82D744();
    if (!v35)
    {
      goto LABEL_223;
    }

LABEL_204:
    v311[0] = v242;
    sub_24A6FCB30(0, v35 & ~(v35 >> 63), 0);
    if ((v35 & 0x8000000000000000) == 0)
    {
      v244 = 0;
      v245 = v311[0];
      do
      {
        if ((v243 & 0xC000000000000001) != 0)
        {
          v246 = MEMORY[0x24C21D180](v244, v243);
        }

        else
        {
          v246 = *(v243 + 8 * v244 + 32);
        }

        v247 = v246;
        v313 = sub_24A679170(0, &qword_27EF5F8B8, 0x277D49608);
        v314 = &protocol witness table for SPApplicationBeacon;
        aBlock[0] = v247;
        v248 = v308;

        v249 = v298;
        FMIPItem.init(with:from:)(aBlock, v248, v298);
        v311[0] = v245;
        v251 = *(v245 + 16);
        v250 = *(v245 + 24);
        if (v251 >= v250 >> 1)
        {
          sub_24A6FCB30((v250 > 1), v251 + 1, 1);
          v249 = v298;
          v245 = v311[0];
        }

        ++v244;
        *(v245 + 16) = v251 + 1;
        sub_24A8127B4(v249, v245 + ((*(v297 + 80) + 32) & ~*(v297 + 80)) + *(v297 + 72) * v251, type metadata accessor for FMIPItem);
      }

      while (v35 != v244);

      v69 = v310;
      v71 = v283;
      goto LABEL_224;
    }

    __break(1u);
LABEL_234:
    ;
  }

  v35 = *(v243 + 16);
  if (v35)
  {
    goto LABEL_204;
  }

LABEL_223:

  v245 = MEMORY[0x277D84F90];
LABEL_224:

  v253 = sub_24A8059B8(v252, &qword_27EF5F8B8, 0x277D49608, &protocol witness table for SPApplicationBeacon);

  sub_24A8136F8(v253);

  v300(v71, v288, v69);
  v254 = sub_24A82CD94();
  v255 = sub_24A82D504();
  if (os_log_type_enabled(v254, v255))
  {
    v256 = v71;
    v257 = swift_slowAlloc();
    v258 = swift_slowAlloc();
    aBlock[0] = v258;
    *v257 = 136315138;
    v310 = sub_24A82CA54();
    v260 = v259;
    v261 = *(v306 + 8);
    v261(v256, v69);
    v262 = sub_24A68761C(v310, v260, aBlock);

    *(v257 + 4) = v262;
    _os_log_impl(&dword_24A675000, v254, v255, "FMIPBeaconRefreshingController: separation state %s", v257, 0xCu);
    sub_24A6876E8(v258);
    MEMORY[0x24C21E1D0](v258, -1, -1);
    MEMORY[0x24C21E1D0](v257, -1, -1);
  }

  else
  {

    v261 = *(v306 + 8);
    v261(v71, v69);
  }

  v263 = v278;
  v264 = swift_unknownObjectWeakLoadStrong();
  v265 = v288;
  if (v264)
  {
    sub_24A751A04(v245);
    swift_unknownObjectRelease();
  }

  v300(v263, v265, v69);
  v266 = sub_24A82CD94();
  v267 = sub_24A82D504();
  if (os_log_type_enabled(v266, v267))
  {
    v268 = swift_slowAlloc();
    v269 = swift_slowAlloc();
    aBlock[0] = v269;
    *v268 = 136315138;
    v270 = sub_24A82CA54();
    v271 = v263;
    v273 = v272;
    v261(v271, v69);
    v274 = sub_24A68761C(v270, v273, aBlock);

    *(v268 + 4) = v274;
    _os_log_impl(&dword_24A675000, v266, v267, "FMIPBeaconRefreshingController: items updated %s", v268, 0xCu);
    sub_24A6876E8(v269);
    MEMORY[0x24C21E1D0](v269, -1, -1);
    MEMORY[0x24C21E1D0](v268, -1, -1);

    v261(v288, v69);
  }

  else
  {

    v261(v263, v69);
    v261(v265, v69);
  }

  (*(v284 + 8))(v285, v276);
}

uint64_t sub_24A808760(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_appBeacons;
  sub_24A6BBA94(&qword_27EF5F8D0, &unk_24A841608);
  sub_24A68795C(&qword_27EF5F8D8, &qword_27EF5F8D0, &unk_24A841608, MEMORY[0x277D83990]);
  sub_24A82D444();
  v6 = v8;
  if (!v8)
  {
    v6 = MEMORY[0x277D84F90];
  }

  *a1 = v6;

  *(a2 + v5) = *a1;
}

uint64_t sub_24A808850(uint64_t a1)
{
  v3 = sub_24A82CDF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24A82CE54();
  v7 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue);
  v10 = *(a1 + 16);
  v19 = *(a1 + 24);
  v20 = v10;
  v11 = swift_allocObject();
  v12 = *(a1 + 16);
  *(v11 + 16) = *a1;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a1 + 32);
  *(v11 + 56) = v1;
  aBlock[4] = sub_24A812648;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCD8E0;
  v13 = _Block_copy(aBlock);
  sub_24A67E964(&v20, &v17, &qword_27EF5DA28, &qword_24A8415A0);
  sub_24A67E964(&v19, &v17, &qword_27EF5F878, &qword_24A8415A8);

  sub_24A82CE24();
  v17 = MEMORY[0x277D84F90];
  sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40, MEMORY[0x277D83970]);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v9, v6, v13);
  _Block_release(v13);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v16);
}

void sub_24A808B78(uint64_t a1, uint64_t a2)
{
  v3 = sub_24A7B56DC();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);
  v5 = v3;

  v6 = sub_24A82CD94();
  v7 = sub_24A82D504();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v8 = 136315394;
    v9 = sub_24A82CA54();
    v11 = sub_24A695068(0xCuLL, v9, v10);
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = MEMORY[0x24C21C960](v11, v13, v15, v17);
    v20 = v19;

    v21 = sub_24A68761C(v18, v20, aBlock);

    *(v8 + 4) = v21;
    *(v8 + 12) = 2048;
    v22 = [v5 searchIdentifiers];
    sub_24A82CAA4();
    v23 = sub_24A82D244();

    v24 = *(v23 + 16);

    *(v8 + 14) = v24;

    _os_log_impl(&dword_24A675000, v6, v7, "🥑 FMIPBeaconRefreshingController<%s> asking %ld snapshot locations…", v8, 0x16u);
    sub_24A6876E8(v29);
    MEMORY[0x24C21E1D0](v29, -1, -1);
    MEMORY[0x24C21E1D0](v8, -1, -1);
  }

  else
  {
  }

  v25 = *(a2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession);
  v26 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_24A812654;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A79A890;
  aBlock[3] = &unk_285DCD908;
  v27 = _Block_copy(aBlock);
  v28 = v25;

  [v28 locationForContext:v5 completion:v27];
  _Block_release(v27);
}

void *sub_24A808E8C(void *a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (a2)
    {
      v7 = a2;
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v8 = sub_24A82CDC4();
      sub_24A6797D0(v8, qword_281518F88);
      v9 = a2;

      v10 = sub_24A82CD94();
      v11 = sub_24A82D504();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        aBlock = v73;
        *v12 = 136315394;
        v13 = sub_24A82CA54();
        v15 = sub_24A695068(0xCuLL, v13, v14);
        v17 = v16;
        v18 = v6;
        v20 = v19;
        v22 = v21;

        v23 = v20;
        v6 = v18;
        v24 = MEMORY[0x24C21C960](v15, v17, v23, v22);
        v26 = v25;

        v27 = sub_24A68761C(v24, v26, &aBlock);

        *(v12 + 4) = v27;
        *(v12 + 12) = 2080;
        swift_getErrorValue();
        v28 = sub_24A82DC74();
        v30 = sub_24A68761C(v28, v29, &aBlock);

        *(v12 + 14) = v30;
        _os_log_impl(&dword_24A675000, v10, v11, "🥑 FMIPBeaconRefreshingController<%s> failed obtaining snapshot locations %s", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C21E1D0](v73, -1, -1);
        MEMORY[0x24C21E1D0](v12, -1, -1);
      }

      v31 = sub_24A78B5E0(MEMORY[0x277D84F90]);
      v32 = swift_allocObject();
      *(v32 + 16) = v31;
      *(v32 + 24) = v6;
      a1 = swift_allocObject();
      a1[2] = sub_24A814B68;
      a1[3] = v32;
      v85 = sub_24A680674;
      v86 = a1;
      aBlock = MEMORY[0x277D85DD0];
      v82 = 1107296256;
      v83 = sub_24A6805E4;
      v84 = &unk_285DCDA70;
      v33 = _Block_copy(&aBlock);
      v34 = _Block_copy(v33);
      v35 = qword_281513E40;

      if (v35 != -1)
      {
        swift_once();
      }

      v36 = _os_activity_create(&dword_24A675000, "FMIPBeaconRefreshingController.refreshLocations", qword_281513E48[0], OS_ACTIVITY_FLAG_DEFAULT);
      v37 = _Block_copy(v34);
      v38 = swift_allocObject();
      *(v38 + 16) = v37;
      v39 = swift_allocObject();
      *(v39 + 16) = sub_24A6A9A80;
      *(v39 + 24) = v38;
      v79 = sub_24A680674;
      v80 = v39;
      v75 = MEMORY[0x277D85DD0];
      v76 = 1107296256;
      v77 = sub_24A6805E4;
      v78 = &unk_285DCDAE8;
      v6 = _Block_copy(&v75);

      os_activity_apply(v36, v6);
      _Block_release(v6);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      _Block_release(v33);
      _Block_release(v34);
      swift_unknownObjectRelease();
      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        goto LABEL_25;
      }

      v41 = swift_isEscapingClosureAtFileLocation();

      if ((v41 & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }

    if (a1)
    {
      v42 = [a1 locationsByBeaconIdentifier];
      sub_24A82CAA4();
      sub_24A679170(0, &qword_27EF5E568, 0x277D49620);
      sub_24A697DF4(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      a2 = sub_24A82CEF4();
    }

    else
    {
      a2 = sub_24A78B5E0(MEMORY[0x277D84F90]);
    }

    if (qword_281515DC8 == -1)
    {
LABEL_16:
      v43 = sub_24A82CDC4();
      sub_24A6797D0(v43, qword_281518F88);
      swift_bridgeObjectRetain_n();

      v44 = sub_24A82CD94();
      v45 = sub_24A82D504();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        aBlock = v74;
        *v46 = 136315394;
        v47 = sub_24A82CA54();
        v49 = sub_24A695068(0xCuLL, v47, v48);
        v51 = v50;
        v53 = v52;
        v54 = v6;
        v56 = v55;

        v57 = MEMORY[0x24C21C960](v49, v51, v53, v56);
        v59 = v58;
        v6 = v54;

        v60 = sub_24A68761C(v57, v59, &aBlock);

        *(v46 + 4) = v60;
        *(v46 + 12) = 2048;
        v61 = a2[2];

        *(v46 + 14) = v61;

        _os_log_impl(&dword_24A675000, v44, v45, "🥑 FMIPBeaconRefreshingController<%s> obtained %ld snapshot locations", v46, 0x16u);
        sub_24A6876E8(v74);
        MEMORY[0x24C21E1D0](v74, -1, -1);
        MEMORY[0x24C21E1D0](v46, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v62 = swift_allocObject();
      *(v62 + 16) = a2;
      *(v62 + 24) = v6;
      v63 = swift_allocObject();
      *(v63 + 16) = sub_24A814B68;
      *(v63 + 24) = v62;
      v85 = sub_24A680674;
      v86 = v63;
      aBlock = MEMORY[0x277D85DD0];
      v82 = 1107296256;
      v83 = sub_24A6805E4;
      v84 = &unk_285DCD980;
      v64 = _Block_copy(&aBlock);
      v65 = _Block_copy(v64);
      v66 = qword_281513E40;

      if (v66 != -1)
      {
        swift_once();
      }

      v67 = _os_activity_create(&dword_24A675000, "FMIPBeaconRefreshingController.refreshLocations", qword_281513E48[0], OS_ACTIVITY_FLAG_DEFAULT);
      v68 = _Block_copy(v65);
      v69 = swift_allocObject();
      *(v69 + 16) = v68;
      v70 = swift_allocObject();
      *(v70 + 16) = sub_24A6A9A80;
      *(v70 + 24) = v69;
      v79 = sub_24A680674;
      v80 = v70;
      v75 = MEMORY[0x277D85DD0];
      v76 = 1107296256;
      v77 = sub_24A6805E4;
      v78 = &unk_285DCD9F8;
      v71 = _Block_copy(&v75);

      os_activity_apply(v67, v71);
      _Block_release(v71);
      LOBYTE(v71) = swift_isEscapingClosureAtFileLocation();

      _Block_release(v64);
      _Block_release(v65);
      result = swift_unknownObjectRelease();
      if (v71)
      {
        __break(1u);
      }

      else
      {

        v72 = swift_isEscapingClosureAtFileLocation();

        if ((v72 & 1) == 0)
        {
          return result;
        }
      }

      __break(1u);
      return result;
    }

LABEL_25:
    swift_once();
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_24A8098B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A82CDF4();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24A82CE54();
  v9 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v12 = sub_24A82CDC4();
  sub_24A6797D0(v12, qword_281518F88);
  sub_24A6A7314(a1, a2);
  v13 = sub_24A82CD94();
  v14 = sub_24A82D504();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = a1 == 0;
    sub_24A753E6C(a1, a2);
    _os_log_impl(&dword_24A675000, v13, v14, "FMIPBeaconRefreshingController: Refreshing unknown beacons isCompletionNil? %{BOOL}d", v15, 8u);
    MEMORY[0x24C21E1D0](v15, -1, -1);
  }

  else
  {
    sub_24A753E6C(a1, a2);
  }

  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = sub_24A81435C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCDDE0;
  v17 = _Block_copy(aBlock);
  sub_24A6A7314(a1, a2);

  sub_24A82CE24();
  v22 = MEMORY[0x277D84F90];
  sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40, MEMORY[0x277D83970]);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v11, v8, v17);
  _Block_release(v17);
  (*(v21 + 8))(v8, v6);
  (*(v9 + 8))(v11, v20);
}

void sub_24A809C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A82CDC4();
  sub_24A6797D0(v6, qword_281518F88);
  v7 = sub_24A82CD94();
  v8 = sub_24A82D504();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24A675000, v7, v8, "FMIPBeaconRefreshingController: Calling SPOwnerSession - unknownBeacons", v9, 2u);
    MEMORY[0x24C21E1D0](v9, -1, -1);
  }

  v10 = *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession);
  sub_24A82CAA4();
  v11 = v10;
  v12 = sub_24A82D224();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v15[4] = sub_24A814368;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_24A73E030;
  v15[3] = &unk_285DCDE30;
  v14 = _Block_copy(v15);

  sub_24A6A7314(a2, a3);

  [v11 unknownBeaconsForUUIDs:v12 completion:v14];
  _Block_release(v14);
}

uint64_t sub_24A809E8C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v6 = type metadata accessor for FMIPUnknownItem(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v45 - v12;
  MEMORY[0x28223BE20](v11);
  v51 = &v45 - v14;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v15 = sub_24A82CDC4();
  v16 = sub_24A6797D0(v15, qword_281518F88);

  v55 = v16;
  v17 = sub_24A82CD94();
  v18 = sub_24A82D504();

  v19 = os_log_type_enabled(v17, v18);
  v48 = a2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    sub_24A679170(0, &qword_27EF5DF78, 0x277D496E0);
    v22 = sub_24A82D224();
    *(v20 + 4) = v22;
    *v21 = v22;
    _os_log_impl(&dword_24A675000, v17, v18, "FMIPBeaconRefreshingController: unknown beacon received %@", v20, 0xCu);
    sub_24A67F378(v21, &qword_27EF5D010, &qword_24A830E30);
    v23 = v21;
    a2 = v48;
    MEMORY[0x24C21E1D0](v23, -1, -1);
    MEMORY[0x24C21E1D0](v20, -1, -1);
  }

  *(a2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_unknownBeacons) = a1;

  if (a1 >> 62)
  {
    result = sub_24A82D744();
    v26 = v51;
    if (result)
    {
      goto LABEL_7;
    }

LABEL_21:
    v28 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v26 = v51;
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_7:
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v27 = 0;
  v52 = a1 & 0xC000000000000001;
  v28 = MEMORY[0x277D84F90];
  *&v24 = 136315138;
  v49 = v24;
  v50 = v7;
  v53 = result;
  v54 = v10;
  do
  {
    if (v52)
    {
      v30 = MEMORY[0x24C21D180](v27, a1);
    }

    else
    {
      v30 = *(a1 + 8 * v27 + 32);
    }

    v56 = v30;
    FMIPUnknownItem.init(with:)(v56, v26);
    sub_24A8126CC(v26, v13, type metadata accessor for FMIPUnknownItem);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_24A780670(0, v28[2] + 1, 1, v28);
    }

    v32 = v28[2];
    v31 = v28[3];
    if (v32 >= v31 >> 1)
    {
      v28 = sub_24A780670((v31 > 1), v32 + 1, 1, v28);
    }

    v28[2] = v32 + 1;
    v33 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v57 = v28;
    sub_24A8127B4(v13, v28 + v33 + *(v7 + 72) * v32, type metadata accessor for FMIPUnknownItem);
    sub_24A8126CC(v26, v10, type metadata accessor for FMIPUnknownItem);
    v34 = sub_24A82CD94();
    v35 = sub_24A82D504();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v58 = v37;
      *v36 = v49;
      v38 = FMIPUnknownItem.debugDescription.getter();
      v39 = v13;
      v40 = a1;
      v42 = v41;
      sub_24A812734(v54, type metadata accessor for FMIPUnknownItem);
      v43 = sub_24A68761C(v38, v42, &v58);
      a1 = v40;
      v13 = v39;
      v26 = v51;

      *(v36 + 4) = v43;
      _os_log_impl(&dword_24A675000, v34, v35, "FMIPBeaconRefreshingController: FMIPUnknown item created %s", v36, 0xCu);
      sub_24A6876E8(v37);
      v44 = v37;
      v7 = v50;
      MEMORY[0x24C21E1D0](v44, -1, -1);
      MEMORY[0x24C21E1D0](v36, -1, -1);

      v29 = v26;
      v10 = v54;
    }

    else
    {

      sub_24A812734(v10, type metadata accessor for FMIPUnknownItem);
      v29 = v26;
    }

    sub_24A812734(v29, type metadata accessor for FMIPUnknownItem);
    ++v27;
    v28 = v57;
  }

  while (v53 != v27);
LABEL_22:
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  sub_24A751D94(v28, v46, v47);

  return swift_unknownObjectRelease();
}

uint64_t sub_24A80A418(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A82CDF4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A82CE54();
  v7 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A82CDC4();
  sub_24A6797D0(v10, qword_281518F88);

  v11 = sub_24A82CD94();
  v12 = sub_24A82D504();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = *(a1 + 16);

    _os_log_impl(&dword_24A675000, v11, v12, "FMIPBeaconRefreshingController: locations %ld refreshed", v13, 0xCu);
    MEMORY[0x24C21E1D0](v13, -1, -1);
  }

  else
  {
  }

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  aBlock[4] = sub_24A812620;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCD7A0;
  v15 = _Block_copy(aBlock);

  sub_24A82CE24();
  v20 = MEMORY[0x277D84F90];
  sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40, MEMORY[0x277D83970]);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v9, v6, v15);
  _Block_release(v15);
  (*(v19 + 8))(v6, v4);
  (*(v7 + 8))(v9, v18);
}

uint64_t sub_24A80A7E0(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v74 = a1;
  v91 = sub_24A82CAA4();
  v73 = *(v91 - 8);
  v2 = MEMORY[0x28223BE20](v91);
  v90 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v84 = &v69 - v5;
  MEMORY[0x28223BE20](v4);
  v72 = &v69 - v6;
  v7 = sub_24A6BBA94(&qword_27EF5F898, &qword_24A8415C8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v69 - v11;
  if (qword_281515DC8 != -1)
  {
LABEL_34:
    swift_once();
  }

  v13 = sub_24A82CDC4();
  v78 = sub_24A6797D0(v13, qword_281518F88);
  v14 = sub_24A82CD94();
  v15 = sub_24A82D504();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_24A675000, v14, v15, "FMIPBeaconRefreshingController: refreshing location", v16, 2u);
    MEMORY[0x24C21E1D0](v16, -1, -1);
  }

  v17 = v74 + 64;
  v18 = 1 << *(v74 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v74 + 64);
  v70 = (v18 + 63) >> 6;
  v80 = (v73 + 32);
  v81 = (v73 + 16);
  v76 = (v73 + 8);

  v21 = 0;
  v85 = MEMORY[0x277D84F98];
  *&v22 = 136315395;
  v71 = v22;
  v79 = v10;
  v82 = v12;
  for (i = v17; ; v17 = i)
  {
    if (!v20)
    {
      if (v70 <= v21 + 1)
      {
        v34 = v21 + 1;
      }

      else
      {
        v34 = v70;
      }

      v35 = v34 - 1;
      while (1)
      {
        v33 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v33 >= v70)
        {
          v67 = sub_24A6BBA94(&qword_27EF5F8A0, &qword_24A8415D0);
          (*(*(v67 - 8) + 56))(v10, 1, 1, v67);
          v20 = 0;
          v21 = v35;
          goto LABEL_26;
        }

        v20 = *(v17 + 8 * v33);
        ++v21;
        if (v20)
        {
          v21 = v33;
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

    v33 = v21;
LABEL_25:
    v36 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v37 = v36 | (v33 << 6);
    v38 = v74;
    v39 = v73;
    v40 = v72;
    v41 = v91;
    (*(v73 + 16))(v72, *(v74 + 48) + *(v73 + 72) * v37, v91);
    v42 = *(*(v38 + 56) + 8 * v37);
    v43 = sub_24A6BBA94(&qword_27EF5F8A0, &qword_24A8415D0);
    v44 = *(v43 + 48);
    (*(v39 + 32))(v10, v40, v41);
    *&v10[v44] = v42;
    (*(*(v43 - 8) + 56))(v10, 0, 1, v43);
    v45 = v42;
    v12 = v82;
LABEL_26:
    sub_24A67E8FC(v10, v12, &qword_27EF5F898, &qword_24A8415C8);
    v46 = sub_24A6BBA94(&qword_27EF5F8A0, &qword_24A8415D0);
    if ((*(*(v46 - 8) + 48))(v12, 1, v46) == 1)
    {
      break;
    }

    v47 = *&v12[*(v46 + 48)];
    v48 = v84;
    v49 = v91;
    (*v80)(v84, v12, v91);
    v50 = v47;
    FMIPLocation.init(beaconLocation:)(v50, &v93);
    v86 = BYTE1(v93);
    v87 = BYTE2(v93);
    v88 = v93;
    v89 = BYTE3(v93);
    v51 = v94;
    v52 = v95;
    (*v81)(v90, v48, v49);
    v53 = v51;
    v54 = sub_24A82CD94();
    v55 = sub_24A82D504();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v75 = v50;
      v58 = v57;
      v92 = v57;
      *v56 = v71;
      v59 = sub_24A82CA54();
      v61 = v60;
      v83 = *v76;
      v83(v90, v91);
      v62 = sub_24A68761C(v59, v61, &v92);

      *(v56 + 4) = v62;
      *(v56 + 12) = 2081;
      LOBYTE(v93) = v88;
      BYTE1(v93) = v86;
      BYTE2(v93) = v87;
      BYTE3(v93) = v89;
      v94 = v53;
      v95 = v52;
      v63 = FMIPLocation.debugDescription.getter();
      v65 = sub_24A68761C(v63, v64, &v92);

      *(v56 + 14) = v65;
      _os_log_impl(&dword_24A675000, v54, v55, "FMIPBeaconRefreshingController: refreshLocations identifier: %s, location: %{private}s", v56, 0x16u);
      swift_arrayDestroy();
      v66 = v58;
      v50 = v75;
      MEMORY[0x24C21E1D0](v66, -1, -1);
      MEMORY[0x24C21E1D0](v56, -1, -1);
    }

    else
    {

      v83 = *v76;
      v83(v90, v91);
    }

    v23 = v84;
    v24 = sub_24A82CA54();
    v26 = v25;
    v27 = v53;
    v28 = v85;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v93 = v28;
    if (v86)
    {
      v30 = 256;
    }

    else
    {
      v30 = 0;
    }

    v31 = v30 | v88;
    if (v87)
    {
      v32 = 0x10000;
    }

    else
    {
      v32 = 0;
    }

    sub_24A784C04(v31 | v32 | (v89 << 24), v27, v24, v26, isUniquelyReferenced_nonNull_native, v52);

    v83(v23, v91);
    v85 = v93;
    v10 = v79;
    v12 = v82;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  sub_24A750CF8(v85);

  return swift_unknownObjectRelease();
}

uint64_t sub_24A80AFDC(uint64_t result)
{
  if (result <= 3)
  {
    if (result == 1)
    {
      v3 = (v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_separationMonitoringState);
      if (*(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_separationMonitoringState) == 6)
      {
        return result;
      }

      LOBYTE(v2) = 6;
      goto LABEL_24;
    }

    if (result != 2)
    {
      if (result == 3)
      {
        v2 = 5;
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    v2 = 4;
  }

  else
  {
    if (result <= 5)
    {
      if (result == 4)
      {
        v2 = 3;
      }

      else
      {
        v2 = 2;
      }

      goto LABEL_19;
    }

    if (result != 6)
    {
      if (result == 7)
      {
        v2 = 0;
        goto LABEL_19;
      }

LABEL_14:
      v3 = (v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_separationMonitoringState);
      if (*(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_separationMonitoringState) == 7)
      {
        return result;
      }

      LOBYTE(v2) = 7;
      goto LABEL_24;
    }

    v2 = 1;
  }

LABEL_19:
  v3 = (v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_separationMonitoringState);
  v4 = *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_separationMonitoringState);
  if (v2 != v4 || (v4 & 0xFE) == 6)
  {
LABEL_24:
    *v3 = v2;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = v2;
      sub_24A7521A8(&v6);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_24A80B104()
{
  v1 = v0;
  v2 = sub_24A82CDF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24A82CE54();
  v6 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v9 = sub_24A82CDC4();
  sub_24A6797D0(v9, qword_281518F88);
  v10 = sub_24A82CD94();
  v11 = sub_24A82D504();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_24A675000, v10, v11, "FMIPBeaconRefreshingController: refreshTimerFired", v12, 2u);
    MEMORY[0x24C21E1D0](v12, -1, -1);
  }

  v13 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_isThrottled;
  if (*(v0 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_isThrottled) == 1)
  {
    v19[1] = *(v0 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue);
    aBlock[4] = sub_24A812638;
    aBlock[5] = v0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DCD818;
    v14 = _Block_copy(aBlock);

    sub_24A82CE24();
    v21 = MEMORY[0x277D84F90];
    sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40, MEMORY[0x277D83970]);
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v8, v5, v14);
    _Block_release(v14);
    (*(v3 + 8))(v5, v2);
    (*(v6 + 8))(v8, v20);
  }

  else
  {
    v16 = sub_24A82CD94();
    v17 = sub_24A82D504();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_24A675000, v16, v17, "FMIPBeaconRefreshingController: throttling", v18, 2u);
      MEMORY[0x24C21E1D0](v18, -1, -1);
    }

    *(v1 + v13) = 1;

    return sub_24A8008F0();
  }
}

void sub_24A80B530(uint64_t a1)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);
  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPBeaconRefreshingController: starting to refresh again", v5, 2u);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_isThrottled) = 0;
  sub_24A8008F0();
  sub_24A80B63C();
}

void sub_24A80B63C()
{
  v1 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);
  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPBeaconRefreshingController: setupRefreshingTimer", v5, 2u);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  v6 = [objc_opt_self() timerWithTimeInterval:v1 target:sel_refreshTimerFired selector:0 userInfo:0 repeats:15.0];
  v7 = [objc_opt_self() mainRunLoop];
  [v7 addTimer:v6 forMode:*MEMORY[0x277CBE640]];

  v8 = *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshTimer);
  *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshTimer) = v6;
}

void sub_24A80B7BC()
{
  v1 = v0;
  v2 = sub_24A82CA34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_lastActiveTimestamp;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  LOBYTE(v6) = sub_24A800194();
  (*(v3 + 8))(v5, v2);
  v7 = dbl_24A841620[v6];
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A82CDC4();
  sub_24A6797D0(v8, qword_281518F88);
  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = v7;
    _os_log_impl(&dword_24A675000, v9, v10, "FMIPBeaconRefreshingController: setupThrottlingTimer interval: %f", v11, 0xCu);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  v12 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshTimer;
  [*(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshTimer) invalidate];
  v13 = [objc_opt_self() timerWithTimeInterval:v1 target:sel_refreshTimerFired selector:0 userInfo:0 repeats:v7];
  v14 = [objc_opt_self() mainRunLoop];
  [v14 addTimer:v13 forMode:*MEMORY[0x277CBE640]];

  v15 = *(v1 + v12);
  *(v1 + v12) = v13;
}

void sub_24A80BA48()
{
  v1 = v0;
  v2 = sub_24A82CAA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A82C514();
  *(&v36 + 1) = v6;
  v37 = sub_24A697DF4(&unk_281514680, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
  v7 = sub_24A697E3C(&aBlock);
  (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D08A00], v6);
  LOBYTE(v6) = sub_24A82C4D4();
  sub_24A6876E8(&aBlock);
  if ((v6 & 1) != 0 && *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_shouldUseBeaconsOptimizationSPI) == 1)
  {
    *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_appBeacons) = MEMORY[0x277D84F90];

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v8 = sub_24A82CDC4();
    sub_24A6797D0(v8, qword_281518F88);
    v9 = sub_24A82CD94();
    v10 = sub_24A82D4D4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24A675000, v9, v10, "FMIPBeaconRefreshingController: startUpdatingApplicationBeacons - Will call", v11, 2u);
      MEMORY[0x24C21E1D0](v11, -1, -1);
    }

    v12 = *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession);
    v13 = objc_opt_self();
    v14 = v12;
    v15 = [v13 fmipItemContext];
    v16 = swift_allocObject();
    swift_weakInit();
    v37 = sub_24A812628;
    v38 = v16;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v36 = sub_24A80C638;
    *(&v36 + 1) = &unk_285DCD7C8;
    v17 = _Block_copy(&aBlock);

    v37 = sub_24A812630;
    v38 = v1;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v36 = sub_24A7FD664;
    *(&v36 + 1) = &unk_285DCD7F0;
    v18 = _Block_copy(&aBlock);

    [v14 startUpdatingApplicationBeaconsWithContext:v15 collectionDifference:v17 completion:v18];
    _Block_release(v18);
    _Block_release(v17);
  }

  else
  {
    v19 = *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy + 16);
    aBlock = *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy);
    v36 = v19;
    LOBYTE(v37) = *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy + 32);
    v40 = *(&v19 + 1);
    v41 = v19;
    sub_24A67E964(&v41, &v39, &qword_27EF5DA28, &qword_24A8415A0);
    sub_24A67E964(&v40, &v39, &qword_27EF5F878, &qword_24A8415A8);
    v34 = sub_24A7B56DC();
    sub_24A67F378(&v41, &qword_27EF5DA28, &qword_24A8415A0);
    sub_24A67F378(&v40, &qword_27EF5F878, &qword_24A8415A8);
    v20 = *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_spBeacons);
    v39 = MEMORY[0x277D84F90];
    if (v20 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A82D744())
    {

      if (!i)
      {
        break;
      }

      v22 = 0;
      v33 = v20 & 0xC000000000000001;
      v31 = v1;
      v32 = v20 & 0xFFFFFFFFFFFFFF8;
      v23 = v3 + 1;
      while (1)
      {
        if (v33)
        {
          v24 = MEMORY[0x24C21D180](v22, v20);
        }

        else
        {
          if (v22 >= *(v32 + 16))
          {
            goto LABEL_25;
          }

          v24 = *(v20 + 8 * v22 + 32);
        }

        v3 = v24;
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        v1 = v20;
        v26 = i;
        v27 = [v34 searchIdentifiers];
        v28 = sub_24A82D244();

        v29 = [v3 identifier];
        sub_24A82CA84();

        LOBYTE(v29) = sub_24A705E3C(v5, v28);

        (*v23)(v5, v2);
        if (v29)
        {
          sub_24A82D8D4();
          sub_24A82D8F4();
          sub_24A82D904();
          sub_24A82D8E4();
        }

        else
        {
        }

        i = v26;
        v20 = v1;
        ++v22;
        if (v25 == i)
        {
          v1 = v31;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

LABEL_22:

    v30 = *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession);
    sub_24A679170(0, &qword_281512B60, 0x277D49610);
    v14 = v30;
    v15 = sub_24A82D224();

    [v14 startRefreshingBeacons_];
  }
}

void sub_24A80C0A4(uint64_t a1, void *a2, uint64_t a3)
{
  v50 = a1;
  v4 = sub_24A6BBA94(&qword_27EF5F8B0, &qword_24A8415E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - v6;
  v8 = sub_24A6BBA94(&qword_27EF5F8A8, &qword_24A8415D8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v45 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - v15;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v48 = v7;
    v49 = v5;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v17 = sub_24A82CDC4();
    v18 = sub_24A6797D0(v17, qword_281518F88);
    sub_24A67E964(v50, v16, &qword_27EF5F8A8, &qword_24A8415D8);
    v47 = v18;
    v19 = sub_24A82CD94();
    v20 = sub_24A82D4D4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v45 = v4;
      v22 = v21;
      v23 = swift_slowAlloc();
      v46 = a2;
      v24 = v23;
      v51 = v23;
      *v22 = 136315138;
      sub_24A67E964(v16, v14, &qword_27EF5F8A8, &qword_24A8415D8);
      v25 = sub_24A82D024();
      v27 = v26;
      sub_24A67F378(v16, &qword_27EF5F8A8, &qword_24A8415D8);
      v28 = sub_24A68761C(v25, v27, &v51);

      *(v22 + 4) = v28;
      _os_log_impl(&dword_24A675000, v19, v20, "FMIPBeaconRefreshingController: startUpdatingApplicationBeacons - Did receive callback %s", v22, 0xCu);
      sub_24A6876E8(v24);
      v29 = v24;
      a2 = v46;
      MEMORY[0x24C21E1D0](v29, -1, -1);
      v30 = v22;
      v4 = v45;
      MEMORY[0x24C21E1D0](v30, -1, -1);
    }

    else
    {

      sub_24A67F378(v16, &qword_27EF5F8A8, &qword_24A8415D8);
    }

    v35 = v48;
    sub_24A67E964(v50, v11, &qword_27EF5F8A8, &qword_24A8415D8);
    v36 = v49;
    if ((*(v49 + 48))(v11, 1, v4) == 1)
    {
      sub_24A67F378(v11, &qword_27EF5F8A8, &qword_24A8415D8);
      v37 = a2;
      v38 = sub_24A82CD94();
      v39 = sub_24A82D504();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        if (a2)
        {
          v42 = a2;
          v43 = _swift_stdlib_bridgeErrorToNSError();
          v44 = v43;
        }

        else
        {
          v43 = 0;
          v44 = 0;
        }

        *(v40 + 4) = v43;
        *v41 = v44;
        _os_log_impl(&dword_24A675000, v38, v39, "FMIPBeaconRefreshingController: startUpdatingApplicationBeacons - No collectionDifference - Error: %@", v40, 0xCu);
        sub_24A67F378(v41, &qword_27EF5D010, &qword_24A830E30);
        MEMORY[0x24C21E1D0](v41, -1, -1);
        MEMORY[0x24C21E1D0](v40, -1, -1);
      }
    }

    else
    {
      (*(v36 + 32))(v35, v11, v4);
      sub_24A8061E4(v35);

      (*(v36 + 8))(v35, v4);
    }
  }

  else
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v31 = sub_24A82CDC4();
    sub_24A6797D0(v31, qword_281518F88);
    v32 = sub_24A82CD94();
    v33 = sub_24A82D504();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_24A675000, v32, v33, "FMIPBeaconRefreshingController: startUpdatingApplicationBeacons - No self on startUpdatingApplicationBeacons callback", v34, 2u);
      MEMORY[0x24C21E1D0](v34, -1, -1);
    }
  }
}

uint64_t sub_24A80C638(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_24A6BBA94(&qword_27EF5F8A8, &qword_24A8415D8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_24A679170(0, &qword_27EF5F8B8, 0x277D49608);
    sub_24A82D9A4();
    v10 = sub_24A6BBA94(&qword_27EF5F8B0, &qword_24A8415E0);
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_24A6BBA94(&qword_27EF5F8B0, &qword_24A8415E0);
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_24A67F378(v8, &qword_27EF5F8A8, &qword_24A8415D8);
}

void sub_24A80C7C0(int a1, NSObject *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v5 = sub_24A82CDC4();
    sub_24A6797D0(v5, qword_281518F88);
    v6 = a2;
    v7 = sub_24A82CD94();
    v8 = sub_24A82D504();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v29[0] = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_24A82DC74();
      v13 = sub_24A68761C(v11, v12, v29);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_24A675000, v7, v8, "FMIPBeaconRefreshingController: startUpdatingApplicationBeacons - Start failed due to error: %s", v9, 0xCu);
      sub_24A6876E8(v10);
      MEMORY[0x24C21E1D0](v10, -1, -1);
      MEMORY[0x24C21E1D0](v9, -1, -1);

      return;
    }

    v27 = a2;
  }

  else
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v15 = sub_24A82CDC4();
    sub_24A6797D0(v15, qword_281518F88);

    oslog = sub_24A82CD94();
    v16 = sub_24A82D504();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v31 = v18;
      *v17 = 136315138;
      v19 = a3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy;
      v20 = *(a3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy);
      v22 = *(a3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy + 8);
      v21 = *(a3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy + 16);
      v23 = *(a3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy + 24);
      LOBYTE(v19) = *(v19 + 32);
      LOBYTE(v29[0]) = v20;
      v29[1] = v22;
      v29[2] = v21;
      v29[3] = v23;
      v30 = v19;

      v24 = sub_24A82D024();
      v26 = sub_24A68761C(v24, v25, &v31);

      *(v17 + 4) = v26;
      _os_log_impl(&dword_24A675000, oslog, v16, "FMIPBeaconRefreshingController: startUpdatingApplicationBeacons - Successfully started updating application beacons: %s", v17, 0xCu);
      sub_24A6876E8(v18);
      MEMORY[0x24C21E1D0](v18, -1, -1);
      MEMORY[0x24C21E1D0](v17, -1, -1);

      return;
    }

    v27 = oslog;
  }
}

void sub_24A80CB10()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy;
  v3 = *(v0 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy + 16);
  v39 = *(v0 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy);
  v40 = v3;
  v41 = *(v0 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy + 32);
  v42 = *(&v3 + 1);
  v43 = v3;
  sub_24A67E964(&v43, &v31, &qword_27EF5DA28, &qword_24A8415A0);
  sub_24A67E964(&v42, &v31, &qword_27EF5F878, &qword_24A8415A8);
  v4 = sub_24A7B56DC();
  sub_24A67F378(&v43, &qword_27EF5DA28, &qword_24A8415A0);
  sub_24A67F378(&v42, &qword_27EF5F878, &qword_24A8415A8);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v5 = sub_24A82CDC4();
  sub_24A6797D0(v5, qword_281518F88);

  v6 = sub_24A82CD94();
  v7 = sub_24A82D504();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v37[0] = v9;
    *v8 = 136315138;
    v11 = *(v2 + 8);
    v10 = *(v2 + 16);
    v12 = *(v2 + 24);
    v13 = *(v2 + 32);
    LOBYTE(v31) = *v2;
    v32 = v11;
    v33 = v10;
    v34 = v12;
    LOBYTE(v35) = v13;

    v14 = sub_24A82D024();
    v16 = sub_24A68761C(v14, v15, v37);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_24A675000, v6, v7, "FMIPBeaconRefreshingController: Updating refresh policy to: %s", v8, 0xCu);
    sub_24A6876E8(v9);
    MEMORY[0x24C21E1D0](v9, -1, -1);
    MEMORY[0x24C21E1D0](v8, -1, -1);
  }

  v17 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession;
  v18 = *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession);
  v19 = swift_allocObject();
  swift_weakInit();
  v35 = sub_24A812600;
  v36 = v19;
  v31 = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_24A814C14;
  v34 = &unk_285DCD610;
  v20 = _Block_copy(&v31);
  v21 = v18;

  [v21 setLocationUpdateBlock_];
  _Block_release(v20);

  v22 = *(v1 + v17);
  v23 = swift_allocObject();
  swift_weakInit();
  v35 = sub_24A812608;
  v36 = v23;
  v31 = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_24A814C14;
  v34 = &unk_285DCD638;
  v24 = _Block_copy(&v31);
  v25 = v22;

  [v25 setDeviceEventUpdateBlock_];
  _Block_release(v24);

  v26 = *(v1 + v17);
  v27 = *(v2 + 16);
  v37[0] = *v2;
  v37[1] = v27;
  v38 = *(v2 + 32);
  v44 = *(&v27 + 1);
  v45[0] = v27;
  v28 = v26;
  sub_24A67E964(v45, &v31, &qword_27EF5DA28, &qword_24A8415A0);
  sub_24A67E964(&v44, &v31, &qword_27EF5F878, &qword_24A8415A8);
  v29 = sub_24A7B56DC();
  sub_24A67F378(v45, &qword_27EF5DA28, &qword_24A8415A0);
  sub_24A67F378(&v44, &qword_27EF5F878, &qword_24A8415A8);
  v35 = sub_24A812610;
  v36 = v1;
  v31 = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_24A7386AC;
  v34 = &unk_285DCD660;
  v30 = _Block_copy(&v31);

  [v28 subscribeAndFetchLocationForContext:v29 completion:v30];
  _Block_release(v30);
}

uint64_t sub_24A80CFF8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v5 = sub_24A82CDC4();
    sub_24A6797D0(v5, qword_281518F88);

    v6 = sub_24A82CD94();
    v7 = sub_24A82D504();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      aBlock[0] = v37;
      *v8 = 136315138;
      v9 = sub_24A82CA54();
      v11 = sub_24A695068(0xCuLL, v9, v10);
      v13 = v12;
      v15 = v14;
      v16 = v4;
      v17 = a1;
      v19 = v18;

      v20 = MEMORY[0x24C21C960](v11, v13, v15, v19);
      v22 = v21;
      a1 = v17;
      v4 = v16;

      v23 = sub_24A68761C(v20, v22, aBlock);

      *(v8 + 4) = v23;
      _os_log_impl(&dword_24A675000, v6, v7, "FMIPBeaconRefreshingController<%s> latestLocationsUpdatedBlock fired", v8, 0xCu);
      sub_24A6876E8(v37);
      MEMORY[0x24C21E1D0](v37, -1, -1);
      MEMORY[0x24C21E1D0](v8, -1, -1);
    }

    if (*(v4 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy))
    {
    }

    v24 = [a1 locationsByBeaconIdentifier];
    sub_24A82CAA4();
    sub_24A679170(0, &qword_27EF5E568, 0x277D49620);
    sub_24A697DF4(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v25 = sub_24A82CEF4();

    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = v4;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_24A812618;
    *(v27 + 24) = v26;
    aBlock[4] = sub_24A680674;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A6805E4;
    aBlock[3] = &unk_285DCD6D8;
    v28 = _Block_copy(aBlock);
    v29 = _Block_copy(v28);
    v30 = qword_281513E40;

    if (v30 != -1)
    {
      swift_once();
    }

    v31 = _os_activity_create(&dword_24A675000, "FMIPBeaconRefreshingController.refreshLocations", qword_281513E48, OS_ACTIVITY_FLAG_DEFAULT);
    v32 = _Block_copy(v29);
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_24A6A9A80;
    *(v34 + 24) = v33;
    v38[4] = sub_24A680674;
    v38[5] = v34;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 1107296256;
    v38[2] = sub_24A6805E4;
    v38[3] = &unk_285DCD750;
    v35 = _Block_copy(v38);

    os_activity_apply(v31, v35);
    _Block_release(v35);
    LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

    _Block_release(v28);
    _Block_release(v29);
    result = swift_unknownObjectRelease();
    if (v35)
    {
      __break(1u);
    }

    else
    {

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24A80D544(void *a1, uint64_t a2)
{
  v257 = type metadata accessor for FMIPDeviceConnectedState(0);
  v256 = *(v257 - 8);
  v3 = MEMORY[0x28223BE20](v257);
  v248 = &v226 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v235 = &v226 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v243 = &v226 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v234 = &v226 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v242 = &v226 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v233 = &v226 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v241 = &v226 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v232 = &v226 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v240 = &v226 - v20;
  MEMORY[0x28223BE20](v19);
  v231 = &v226 - v21;
  v255 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v255);
  v254 = &v226 - v22;
  v23 = sub_24A82CAA4();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v250 = &v226 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v247 = &v226 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v230 = &v226 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v239 = &v226 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v246 = &v226 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v229 = &v226 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v238 = &v226 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v245 = &v226 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v228 = &v226 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v237 = &v226 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v244 = &v226 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v227 = &v226 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v236 = &v226 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v53 = (&v226 - v52);
  v54 = MEMORY[0x28223BE20](v51);
  v56 = &v226 - v55;
  MEMORY[0x28223BE20](v54);
  v258 = &v226 - v57;
  v58 = sub_24A6BBA94(&qword_27EF5F880, &qword_24A8415B0);
  v59 = MEMORY[0x28223BE20](v58 - 8);
  v61 = &v226 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  isUniquelyReferenced_nonNull_native = &v226 - v62;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v65 = result;
    v275 = a1;
    if (qword_281515DC8 == -1)
    {
      goto LABEL_3;
    }

    while (1)
    {
      swift_once();
LABEL_3:
      v66 = sub_24A82CDC4();
      v67 = sub_24A6797D0(v66, qword_281518F88);

      v262 = v67;
      v68 = sub_24A82CD94();
      v69 = sub_24A82D504();

      v70 = os_log_type_enabled(v68, v69);
      v267 = v24;
      v253 = v56;
      v226 = v65;
      v264 = isUniquelyReferenced_nonNull_native;
      v265 = v61;
      if (v70)
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v277 = v72;
        *v71 = 136315138;
        LODWORD(v274) = v69;
        v73 = sub_24A82CA54();
        v75 = sub_24A695068(0xCuLL, v73, v74);
        v77 = v76;
        v78 = v53;
        v80 = v79;
        v82 = v81;

        v83 = v75;
        v84 = v267;
        v85 = v80;
        v53 = v78;
        v86 = MEMORY[0x24C21C960](v83, v77, v85, v82);
        isUniquelyReferenced_nonNull_native = v87;

        v88 = sub_24A68761C(v86, isUniquelyReferenced_nonNull_native, &v277);

        *(v71 + 4) = v88;
        _os_log_impl(&dword_24A675000, v68, v274, "FMIPBeaconRefreshingController: deviceEventUpdateBlock fired <%s>", v71, 0xCu);
        sub_24A6876E8(v72);
        MEMORY[0x24C21E1D0](v72, -1, -1);
        v89 = v71;
        v56 = v253;
        MEMORY[0x24C21E1D0](v89, -1, -1);
      }

      else
      {

        v84 = v24;
      }

      v90 = [v275 beaconEventByBeaconIdentifier];
      sub_24A679170(0, &qword_27EF5F888, 0x277D49660);
      sub_24A697DF4(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v61 = sub_24A82CEF4();

      v65 = 0;
      v93 = v61 + 64;
      v92 = *(v61 + 8);
      v259 = v61;
      v94 = 1 << v61[32];
      v95 = -1;
      if (v94 < 64)
      {
        v95 = ~(-1 << v94);
      }

      v24 = v95 & v92;
      v249 = (v94 + 63) >> 6;
      v275 = (v84 + 16);
      v272 = (v84 + 8);
      v273 = (v84 + 32);
      v269 = MEMORY[0x277D84F98];
      v266 = (v84 + 56);
      *&v91 = 136315650;
      v252 = v91;
      v261 = v61 + 64;
      v263 = v53;
      v251 = v23;
      if ((v95 & v92) != 0)
      {
        break;
      }

LABEL_11:
      if (v249 <= v65 + 1)
      {
        v96 = v65 + 1;
      }

      else
      {
        v96 = v249;
      }

      v97 = v96 - 1;
      while (1)
      {
        v98 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          break;
        }

        if (v98 >= v249)
        {
          isUniquelyReferenced_nonNull_native = v23;
          v100 = v56;
          v101 = sub_24A6BBA94(&qword_27EF5F890, &unk_24A8415B8);
          v102 = v265;
          (*(*(v101 - 8) + 56))(v265, 1, 1, v101);
          v24 = 0;
          v65 = v97;
          goto LABEL_22;
        }

        v24 = *&v93[8 * v98];
        ++v65;
        if (v24)
        {
          v99 = v23;
          v100 = v56;
          v65 = v98;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
    }

    while (1)
    {
      v99 = v23;
      v100 = v56;
      v98 = v65;
LABEL_21:
      v103 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v104 = v103 | (v98 << 6);
      v105 = v259;
      v106 = v267;
      v107 = v258;
      (*(v267 + 16))(v258, *(v259 + 6) + *(v267 + 72) * v104, v99);
      v108 = *(*(v105 + 7) + 8 * v104);
      v109 = sub_24A6BBA94(&qword_27EF5F890, &unk_24A8415B8);
      v110 = *(v109 + 48);
      v111 = *(v106 + 32);
      v102 = v265;
      v112 = v107;
      isUniquelyReferenced_nonNull_native = v99;
      v111(v265, v112, v99);
      *(v102 + v110) = v108;
      (*(*(v109 - 8) + 56))(v102, 0, 1, v109);
      v113 = v108;
LABEL_22:
      v114 = v264;
      sub_24A67E8FC(v102, v264, &qword_27EF5F880, &qword_24A8415B0);
      v115 = sub_24A6BBA94(&qword_27EF5F890, &unk_24A8415B8);
      if ((*(*(v115 - 8) + 48))(v114, 1, v115) == 1)
      {

        if (*(v226 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy))
        {
        }

        else if (swift_unknownObjectWeakLoadStrong())
        {
          sub_24A750EB8(v269);

          return swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      v116 = *(v114 + *(v115 + 48));
      v268 = *v273;
      v268(v100, v114, isUniquelyReferenced_nonNull_native);
      v117 = v263;
      v271 = *v275;
      (v271)(v263, v100, isUniquelyReferenced_nonNull_native);
      v118 = v116;
      v53 = sub_24A82CD94();
      v119 = v117;
      v61 = sub_24A82D504();

      v120 = os_log_type_enabled(v53, v61);
      v274 = v118;
      if (v120)
      {
        v260 = v61;
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v277 = v122;
        *v121 = v252;
        sub_24A697DF4(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v123 = sub_24A82DB84();
        v125 = v124;
        v270 = *v272;
        v270(v119, isUniquelyReferenced_nonNull_native);
        v126 = sub_24A68761C(v123, v125, &v277);

        *(v121 + 4) = v126;
        *(v121 + 12) = 2080;
        v276 = [v118 source];
        type metadata accessor for SPDeviceEventSource(0);
        v127 = sub_24A82D024();
        v129 = sub_24A68761C(v127, v128, &v277);

        *(v121 + 14) = v129;
        *(v121 + 22) = 2080;
        v130 = [v118 attachmentInfo];
        if (v130)
        {
          v131 = v130;
          v132 = [v130 attachedToDevice];

          v133 = v254;
          sub_24A82CA84();

          v134 = 0;
        }

        else
        {
          v134 = 1;
          v133 = v254;
        }

        v23 = v251;
        (*v266)(v133, v134, 1, v251);
        v136 = sub_24A82D024();
        v61 = sub_24A68761C(v136, v137, &v277);

        *(v121 + 24) = v61;
        _os_log_impl(&dword_24A675000, v53, v260, "FMIPBeaconRefreshingController: deviceEventUpdate: beaconUUID: %s, deviceEvent: %s: %s)", v121, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C21E1D0](v122, -1, -1);
        MEMORY[0x24C21E1D0](v121, -1, -1);

        v56 = v253;
        v135 = v270;
      }

      else
      {

        v135 = *v272;
        (*v272)(v119, isUniquelyReferenced_nonNull_native);
        v56 = v100;
        v23 = isUniquelyReferenced_nonNull_native;
      }

      v138 = v274;
      v139 = [v274 source];
      if (v139 > 2)
      {
        break;
      }

      if (v139 == 1)
      {
        v192 = [v138 attachmentInfo];
        if (v192)
        {
          v270 = v135;
          v193 = v192;
          v194 = [v192 attachedToDevice];

          v195 = v229;
          sub_24A82CA84();

          v196 = v238;
          v268(v238, v195, v23);
          v61 = v246;
          v53 = v271;
          (v271)(v246, v56, v23);
          v197 = v233;
          (v53)(v233, v196, v23);
          (*v266)(v197, 0, 1, v23);
          *(v197 + *(v257 + 20)) = 1;
          sub_24A8127B4(v197, v242, type metadata accessor for FMIPDeviceConnectedState);
          v198 = v269;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v277 = v198;
          v199 = sub_24A77EDF8(v61);
          v201 = *(v198 + 16);
          v202 = (v200 & 1) == 0;
          v151 = __OFADD__(v201, v202);
          v203 = v201 + v202;
          if (v151)
          {
            goto LABEL_108;
          }

          v204 = v200;
          if (*(v198 + 24) >= v203)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v61 = v199;
              sub_24A786F2C();
              v199 = v61;
            }
          }

          else
          {
            sub_24A782AE0(v203, isUniquelyReferenced_nonNull_native);
            v199 = sub_24A77EDF8(v246);
            if ((v204 & 1) != (v205 & 1))
            {
LABEL_115:
              result = sub_24A82DC44();
              __break(1u);
              return result;
            }
          }

          isUniquelyReferenced_nonNull_native = v274;
          v220 = v277;
          v135 = v270;
          v269 = v277;
          if ((v204 & 1) == 0)
          {
            v277[(v199 >> 6) + 8] |= 1 << v199;
            v222 = v199;
            v61 = v246;
            (v271)(*(v220 + 48) + *(v267 + 72) * v199, v246, v23);
            sub_24A8127B4(v242, v269[7] + *(v256 + 72) * v222, type metadata accessor for FMIPDeviceConnectedState);

            v135(v61, v23);
            v135(v238, v23);
            v135(v56, v23);
            v210 = v269;
            v223 = v269[2];
            v151 = __OFADD__(v223, 1);
            v212 = v223 + 1;
            if (v151)
            {
              goto LABEL_111;
            }

            goto LABEL_94;
          }

          sub_24A8142DC(v242, v277[7] + *(v256 + 72) * v199, type metadata accessor for FMIPDeviceConnectedState);

          v135(v246, v23);
          v214 = &v268;
          goto LABEL_88;
        }

LABEL_10:
        v135(v56, v23);

        v93 = v261;
        if (!v24)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (v139 != 2)
        {
          goto LABEL_10;
        }

        v61 = v250;
        (v271)(v250, v56, v23);
        v155 = v235;
        (*v266)(v235, 1, 1, v23);
        *(v155 + *(v257 + 20)) = 0;
        sub_24A8127B4(v155, v248, type metadata accessor for FMIPDeviceConnectedState);
        v156 = v269;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v277 = v156;
        v157 = sub_24A77EDF8(v61);
        v159 = *(v156 + 16);
        v160 = (v158 & 1) == 0;
        v151 = __OFADD__(v159, v160);
        v161 = v159 + v160;
        if (v151)
        {
          goto LABEL_104;
        }

        v162 = v158;
        if (*(v156 + 24) >= v161)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v61 = v157;
            sub_24A786F2C();
            v157 = v61;
          }
        }

        else
        {
          sub_24A782AE0(v161, isUniquelyReferenced_nonNull_native);
          v157 = sub_24A77EDF8(v250);
          if ((v162 & 1) != (v163 & 1))
          {
            goto LABEL_115;
          }
        }

        isUniquelyReferenced_nonNull_native = v274;
        v206 = v277;
        v269 = v277;
        if ((v162 & 1) == 0)
        {
          v277[(v157 >> 6) + 8] |= 1 << v157;
          v209 = v157;
          v61 = v250;
          (v271)(*(v206 + 48) + *(v267 + 72) * v157, v250, v23);
          sub_24A8127B4(v248, v269[7] + *(v256 + 72) * v209, type metadata accessor for FMIPDeviceConnectedState);

          v135(v61, v23);
          v135(v56, v23);
          v210 = v269;
          v211 = v269[2];
          v151 = __OFADD__(v211, 1);
          v212 = v211 + 1;
          if (v151)
          {
            goto LABEL_109;
          }

LABEL_94:
          *(v210 + 16) = v212;
          goto LABEL_95;
        }

        sub_24A8142DC(v248, v277[7] + *(v256 + 72) * v157, type metadata accessor for FMIPDeviceConnectedState);

        v207 = v250;
        v208 = v23;
LABEL_89:
        v135(v207, v208);
        v135(v56, v23);
LABEL_95:
        v93 = v261;
        if (!v24)
        {
          goto LABEL_11;
        }
      }
    }

    switch(v139)
    {
      case 6:
        v164 = [v138 attachmentInfo];
        if (v164)
        {
          v270 = v135;
          v165 = v164;
          v166 = [v164 attachedToDevice];

          v167 = v230;
          sub_24A82CA84();

          v168 = v239;
          v268(v239, v167, v23);
          v61 = v247;
          v53 = v271;
          (v271)(v247, v56, v23);
          v169 = v234;
          (v53)(v234, v168, v23);
          (*v266)(v169, 0, 1, v23);
          *(v169 + *(v257 + 20)) = 4;
          sub_24A8127B4(v169, v243, type metadata accessor for FMIPDeviceConnectedState);
          v170 = v269;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v277 = v170;
          v171 = sub_24A77EDF8(v61);
          v173 = *(v170 + 16);
          v174 = (v172 & 1) == 0;
          v151 = __OFADD__(v173, v174);
          v175 = v173 + v174;
          if (v151)
          {
            goto LABEL_107;
          }

          v176 = v172;
          if (*(v170 + 24) >= v175)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v61 = v171;
              sub_24A786F2C();
              v171 = v61;
            }
          }

          else
          {
            sub_24A782AE0(v175, isUniquelyReferenced_nonNull_native);
            v171 = sub_24A77EDF8(v247);
            if ((v176 & 1) != (v177 & 1))
            {
              goto LABEL_115;
            }
          }

          isUniquelyReferenced_nonNull_native = v274;
          v213 = v277;
          v135 = v270;
          v269 = v277;
          if ((v176 & 1) == 0)
          {
            v277[(v171 >> 6) + 8] |= 1 << v171;
            v216 = v171;
            v61 = v247;
            (v271)(*(v213 + 48) + *(v267 + 72) * v171, v247, v23);
            sub_24A8127B4(v243, v269[7] + *(v256 + 72) * v216, type metadata accessor for FMIPDeviceConnectedState);

            v135(v61, v23);
            v135(v239, v23);
            v135(v56, v23);
            v210 = v269;
            v217 = v269[2];
            v151 = __OFADD__(v217, 1);
            v212 = v217 + 1;
            if (v151)
            {
              goto LABEL_112;
            }

            goto LABEL_94;
          }

          sub_24A8142DC(v243, v277[7] + *(v256 + 72) * v171, type metadata accessor for FMIPDeviceConnectedState);

          v135(v247, v23);
          v214 = &v269;
          goto LABEL_88;
        }

        break;
      case 4:
        v178 = [v138 attachmentInfo];
        if (v178)
        {
          v270 = v135;
          v179 = v178;
          v180 = [v178 attachedToDevice];

          v181 = v228;
          sub_24A82CA84();

          v182 = v237;
          v268(v237, v181, v23);
          v61 = v245;
          v53 = v271;
          (v271)(v245, v56, v23);
          v183 = v232;
          (v53)(v232, v182, v23);
          (*v266)(v183, 0, 1, v23);
          *(v183 + *(v257 + 20)) = 3;
          sub_24A8127B4(v183, v241, type metadata accessor for FMIPDeviceConnectedState);
          v184 = v269;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v277 = v184;
          v185 = sub_24A77EDF8(v61);
          v187 = *(v184 + 16);
          v188 = (v186 & 1) == 0;
          v151 = __OFADD__(v187, v188);
          v189 = v187 + v188;
          if (v151)
          {
            goto LABEL_106;
          }

          v190 = v186;
          if (*(v184 + 24) >= v189)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v61 = v185;
              sub_24A786F2C();
              v185 = v61;
            }
          }

          else
          {
            sub_24A782AE0(v189, isUniquelyReferenced_nonNull_native);
            v185 = sub_24A77EDF8(v245);
            if ((v190 & 1) != (v191 & 1))
            {
              goto LABEL_115;
            }
          }

          isUniquelyReferenced_nonNull_native = v274;
          v215 = v277;
          v135 = v270;
          v269 = v277;
          if ((v190 & 1) == 0)
          {
            v277[(v185 >> 6) + 8] |= 1 << v185;
            v218 = v185;
            v61 = v245;
            (v271)(*(v215 + 48) + *(v267 + 72) * v185, v245, v23);
            sub_24A8127B4(v241, v269[7] + *(v256 + 72) * v218, type metadata accessor for FMIPDeviceConnectedState);

            v135(v61, v23);
            v135(v237, v23);
            v135(v56, v23);
            v210 = v269;
            v219 = v269[2];
            v151 = __OFADD__(v219, 1);
            v212 = v219 + 1;
            if (v151)
            {
              goto LABEL_113;
            }

            goto LABEL_94;
          }

          sub_24A8142DC(v241, v277[7] + *(v256 + 72) * v185, type metadata accessor for FMIPDeviceConnectedState);

          v135(v245, v23);
          v214 = &v267;
          goto LABEL_88;
        }

        break;
      case 3:
        v140 = [v138 attachmentInfo];
        if (v140)
        {
          v270 = v135;
          v141 = v140;
          v142 = [v140 attachedToDevice];

          v143 = v227;
          sub_24A82CA84();

          v144 = v236;
          v268(v236, v143, v23);
          v61 = v244;
          v53 = v271;
          (v271)(v244, v56, v23);
          v145 = v231;
          (v53)(v231, v144, v23);
          (*v266)(v145, 0, 1, v23);
          *(v145 + *(v257 + 20)) = 2;
          sub_24A8127B4(v145, v240, type metadata accessor for FMIPDeviceConnectedState);
          v146 = v269;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v277 = v146;
          v147 = sub_24A77EDF8(v61);
          v149 = *(v146 + 16);
          v150 = (v148 & 1) == 0;
          v151 = __OFADD__(v149, v150);
          v152 = v149 + v150;
          if (v151)
          {
            goto LABEL_105;
          }

          v153 = v148;
          if (*(v146 + 24) >= v152)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v61 = v147;
              sub_24A786F2C();
              v147 = v61;
            }
          }

          else
          {
            sub_24A782AE0(v152, isUniquelyReferenced_nonNull_native);
            v147 = sub_24A77EDF8(v244);
            if ((v153 & 1) != (v154 & 1))
            {
              goto LABEL_115;
            }
          }

          isUniquelyReferenced_nonNull_native = v274;
          v135 = v270;
          v221 = v277;
          v269 = v277;
          if ((v153 & 1) == 0)
          {
            v277[(v147 >> 6) + 8] |= 1 << v147;
            v224 = v147;
            v61 = v244;
            (v271)(*(v221 + 48) + *(v267 + 72) * v147, v244, v23);
            sub_24A8127B4(v240, v269[7] + *(v256 + 72) * v224, type metadata accessor for FMIPDeviceConnectedState);

            v135(v61, v23);
            v135(v236, v23);
            v135(v56, v23);
            v210 = v269;
            v225 = v269[2];
            v151 = __OFADD__(v225, 1);
            v212 = v225 + 1;
            if (v151)
            {
              goto LABEL_110;
            }

            goto LABEL_94;
          }

          sub_24A8142DC(v240, v277[7] + *(v256 + 72) * v147, type metadata accessor for FMIPDeviceConnectedState);

          v135(v244, v23);
          v214 = &v266;
LABEL_88:
          v207 = *(v214 - 32);
          v208 = v23;
          goto LABEL_89;
        }

        break;
    }

    goto LABEL_10;
  }

  return result;
}