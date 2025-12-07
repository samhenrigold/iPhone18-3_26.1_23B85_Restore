id static PaymentRequestViewInterfaceFactory.interface(forConfiguration:withDelegate:)(void *a1, uint64_t a2)
{
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D3E0, &unk_1BE0C1168);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v86 - v10;
  sub_1BD038CD0(a2, v93);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D3E8, &qword_1BE0C1178);
  if (swift_dynamicCast())
  {
    v90 = v9;
    v91 = v8;
    v12 = v99[0];
    sub_1BE04CDA4();
    swift_allocObject();
    v13 = sub_1BE04CD94();
    v14 = [a1 request];
    v15 = [v14 _shouldSupportLandscapeOrientation];

    if (v15)
    {
      sub_1BE051C54();
    }

    sub_1BE04CD64();
    v99[5] = sub_1BD1F792C(v99, a1, v13, v12);
    sub_1BD0DE19C(v99, v95, &qword_1EBD3D3F0, &unk_1BE0C1180);
    v98, v20, v21, v22, v23, v24, v25, v26;
    sub_1BD0DE19C(v99, v94, &qword_1EBD3D3F0, &unk_1BE0C1180);
    v86 = v94[5];
    v88 = type metadata accessor for PaymentRequestViewInterface();
    v27 = v12;
    v28 = objc_allocWithZone(v88);
    swift_unknownObjectWeakInit();
    v89 = v27;
    *&v28[OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_hostDelegate] = v27;
    swift_unknownObjectRetain();
    v29 = [a1 presenter];
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    *&v28[OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_context] = v13;
    sub_1BD0EE8CC(v95, &v28[OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_stateMachine]);
    v30 = v96;
    v31 = v97;
    __swift_project_boxed_opaque_existential_1(v95, v96);
    v32 = *(v31 + 24);
    sub_1BE048964();
    *&v28[OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_serviceDelegate] = v32(v30, v31);
    v87 = [a1 paymentSheetExperiment];
    sub_1BD0E5E8C(0, &qword_1EBD35E30, 0x1E69B8E80);
    sub_1BD0EE33C();
    v33 = sub_1BE04D804();
    type metadata accessor for PresentationContext(0);
    v34 = v86;
    sub_1BE048964();
    v35 = [a1 presenter];
    v36 = swift_allocObject();
    v37 = OBJC_IVAR____TtC9PassKitUI19PresentationContext__presenter;
    v93[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D3F8, &qword_1BE10BB10);
    sub_1BE04D874();
    (*(v90 + 32))(&v36[v37], v11, v91);
    swift_getKeyPath();
    swift_getKeyPath();
    v93[0] = v35;
    sub_1BE048964();
    sub_1BE04D8C4();
    sub_1BD2000E0(&unk_1EBD361B0, type metadata accessor for PresentationContext, &unk_1BE10BB18);
    v38 = sub_1BE04D804();
    sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
    v39 = sub_1BE04D804();
    v93[0] = v34;
    v93[1] = v33;
    v40 = v87;
    v93[2] = v87;
    v93[3] = v38;
    v93[4] = v36;
    v93[5] = v39;
    v93[6] = v13;
    v41 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D400, qword_1BE0C11D8));
    swift_retain_n();
    sub_1BE048964();
    sub_1BE048964();
    v42 = v40;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    *&v28[OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_viewController] = sub_1BE04CCC4();
    v92.receiver = v28;
    v92.super_class = v88;
    v19 = objc_msgSendSuper2(&v92, sel_init);
    sub_1BD0FF718();
    swift_unknownObjectRelease();

    v39, v43, v44, v45, v46, v47, v48, v49;
    v36, v50, v51, v52, v53, v54, v55, v56;
    v38, v57, v58, v59, v60, v61, v62, v63;

    v33, v64, v65, v66, v67, v68, v69, v70;

    sub_1BD0DE53C(v99, &qword_1EBD3D3F0, &unk_1BE0C1180);
    __swift_destroy_boxed_opaque_existential_0(v95, v71, v72, v73, v74, v75, v76, v77);
    __swift_destroy_boxed_opaque_existential_0(v94, v78, v79, v80, v81, v82, v83, v84);
  }

  else
  {
    sub_1BE04D084();
    v16 = sub_1BE04D204();
    v17 = sub_1BE052C34();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1BD026000, v16, v17, "Delegate did not conform to PKPaymentAuthorizationHostProtocol", v18, 2u);
      MEMORY[0x1BFB45F20](v18, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }

  return v19;
}

uint64_t sub_1BD1F792C(void *a1, void *a2, void *a3, uint64_t a4)
{
  v1496 = a3;
  v1497 = a4;
  v1482 = type metadata accessor for PaymentSheet(0);
  MEMORY[0x1EEE9AC00](v1482);
  v1481 = (&v1471 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for VirtualCardSheet(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v1471 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1484 = type metadata accessor for AccountServiceSheet(0);
  MEMORY[0x1EEE9AC00](v1484);
  v1483 = (&v1471 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1BE052CF4();
  MEMORY[0x1EEE9AC00](v11);
  v1491 = (&v1471 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1BE052D44();
  v1486 = *(v13 - 8);
  v1487 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v1471 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1BE051FA4();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v1471 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D410, &qword_1BE0C1278);
  v1494 = *(v19 - 1);
  v1495 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v1471 - v21;
  v23 = [a2 request];
  v24 = [v23 requestType];
  v1492 = a1;
  v1493 = v23;
  v1489 = v11;
  v1490 = v15;
  v1488 = v18;
  if (v24 > 7)
  {
    v1483 = v9;
    v1484 = v7;
    if (v24 <= 11)
    {
      if ((v24 - 8) >= 3)
      {
        goto LABEL_318;
      }

LABEL_30:
      if (([v23 _isPSD2StyleRequest] & 1) == 0 && (objc_msgSend(v23, sel__isAMPApplePayClassicRequest) & 1) == 0 && !objc_msgSend(v23, sel__isPVKRequest))
      {
        v498 = [a2 request];
        v499 = [v498 requestType];

        v500 = [objc_allocWithZone(MEMORY[0x1E69BC740]) init];
        if (v499)
        {
          v501 = v499 == 10;
        }

        else
        {
          v501 = 1;
        }

        v502 = v501;
        LODWORD(v1477) = v502;
        v1478 = [objc_allocWithZone(MEMORY[0x1E69B8B88]) init];
        v1484 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
        v1476 = [objc_allocWithZone(MEMORY[0x1E69B9000]) init];
        v1479 = objc_opt_self();
        v1483 = [v1479 sharedService];
        if (!v1483)
        {
          goto LABEL_315;
        }

        v1480 = [objc_allocWithZone(MEMORY[0x1E69B8400]) init];
        v1475 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D4D0, &qword_1BE0C12C0);
        v148 = objc_allocWithZone(v1475);
        v503 = MEMORY[0x1E69E7D40];
        v1485 = *((*MEMORY[0x1E69E7D40] & *v148) + 0x90);
        v504 = v1485;
        type metadata accessor for PaymentAuthorizationServiceContext();
        v505 = swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakInit();
        *(v505 + 32) = 0;
        *&v504[v148] = v505;
        v506 = *((*v503 & *v148) + 0xA0);
        sub_1BE04BE74();
        swift_unknownObjectRetain();
        v507 = a2;
        sub_1BE048964();
        v1474 = v500;
        *(v148 + v506) = MEMORY[0x1BFB38EF0]();
        v508 = *((*v503 & *v148) + 0xA8);
        LOBYTE(v1511) = 0;
        sub_1BE04D874();
        (v1494)[4](v148 + v508, v22, v1495);
        *(v148 + *((*v503 & *v148) + 0xB0)) = 0;
        *(v148 + *((*v503 & *v148) + 0xB8)) = 0;
        *(v148 + *((*v503 & *v148) + 0xC0)) = 0;
        *(v148 + *((*v503 & *v148) + 0xC8)) = 0;
        v1495 = [(objc_class *)v507 request];
        v509 = (v148 + *((*v503 & *v148) + 0x78));
        swift_beginAccess();
        sub_1BE04CDA4();
        sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
        sub_1BE048964();
        *v509 = sub_1BE04E954();
        v509[1] = v510;
        swift_endAccess();
        v53 = *((*v503 & *v148) + 0xD8);
        v511 = v1478;
        *(v53 + v148) = v1478;
        v512 = *&v1485[v148];
        v1473 = v511;
        sub_1BE048964();
        v513 = [(objc_class *)v507 presenter];
        swift_unknownObjectWeakAssign();
        v512, v514, v515, v516, v517, v518, v519, v520;
        swift_unknownObjectRelease();
        swift_unknownObjectWeakAssign();
        v521 = [v1479 sharedService];
        if (!v521)
        {
LABEL_316:
          __break(1u);
LABEL_317:
          __break(1u);
          goto LABEL_318;
        }

        v522 = v521;
        v523 = [v521 context];

        v524 = [v523 configuration];
        v525 = [v524 contactFormatConfiguration];
        if (v525)
        {
          v1494 = [objc_allocWithZone(MEMORY[0x1E69B8730]) initWithConfiguration_];
        }

        else
        {
          v1494 = 0;
        }

        v676 = [objc_allocWithZone(MEMORY[0x1E69B8B68]) initWithMode_];
        if (!v676)
        {
          goto LABEL_317;
        }

        v677 = *((*MEMORY[0x1E69E7D40] & *v148) + 0xD0);
        *(v677 + v148) = v676;
        v678 = v676;
        v1479 = v1476;
        [v678 setPeerPaymentService_];
        v679 = *(v677 + v148);
        v680 = [(objc_class *)v507 applicationIdentifier];
        v93 = v507;
        if (!v680)
        {
          sub_1BE052434();
          v682 = v681;
          v680 = sub_1BE052404();
          v683 = v682;
          v507 = v93;
          v683, v684, v685, v686, v687, v688, v689, v690;
        }

        [v679 setHostApplicationIdentifier_];

        v691 = *(v677 + v148);
        v692 = [(objc_class *)v507 localizedApplicationName];
        if (!v692)
        {
          sub_1BE052434();
          v694 = v693;
          v692 = sub_1BE052404();
          v695 = v694;
          v507 = v93;
          v695, v696, v697, v698, v699, v700, v701, v702;
        }

        [v691 setHostAppLocalizedName_];

        v703 = *(v677 + v148);
        v704 = [(objc_class *)v507 bundleIdentifier];
        if (!v704)
        {
          sub_1BE052434();
          v706 = v705;
          v704 = sub_1BE052404();
          v707 = v706;
          v507 = v93;
          v707, v708, v709, v710, v711, v712, v713, v714;
        }

        v1476 = v524;
        [v703 setBundleIdentifier_];

        v715 = *(v677 + v148);
        v716 = [(objc_class *)v507 relevantPassUniqueID];
        if (!v716)
        {
          sub_1BE052434();
          v718 = v717;
          v716 = sub_1BE052404();
          v719 = v718;
          v507 = v93;
          v719, v720, v721, v722, v723, v724, v725, v726;
        }

        [v715 setRelevantPassUniqueID_];

        [*(v677 + v148) setContactFormatValidator_];
        [*(v677 + v148) setSupportsEmptyPass_];
        v479 = v677;
        v727 = *(v677 + v148);
        v728 = [(objc_class *)v507 presenter];
        if (v728)
        {
          v729 = [v728 isIssuerInstallmentsRepayment];
          v507 = v93;
          swift_unknownObjectRelease();
        }

        else
        {
          v729 = 0;
        }

        v730 = v1495;
        v1477 = v525;
        [v727 setPresenterIsIssuerInstallmentsRepayment_];

        v1478 = v479;
        [*(v479 + v148) setPaymentRequest_];
        if ([v730 requestType] != 5)
        {
          goto LABEL_286;
        }

        v731 = [v730 paymentSummaryItems];
        sub_1BD0E5E8C(0, &qword_1EBD3D4A0, 0x1E69B8E90);
        v222 = sub_1BE052744();

        v224 = *(v1478 + v148);
        v732 = [v730 paymentSummaryItems];
        v233 = sub_1BE052744();

        if (!(v233 >> 62))
        {
          v740 = *((v233 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v740)
          {
LABEL_284:
            v751 = v479;
            v233, v733, v734, v735, v736, v737, v738, v739;
            v750 = 0;
            goto LABEL_285;
          }

LABEL_213:
          v234 = __OFSUB__(v740, 1);
          v664 = v740 - 1;
          if (!v234)
          {
            if ((v233 & 0xC000000000000001) == 0)
            {
              if ((v664 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v664 < *((v233 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v741 = *(v233 + 8 * v664 + 32);
LABEL_218:
                v749 = v741;
                v233, v742, v743, v744, v745, v746, v747, v748;
                v750 = [v749 amount];

                v751 = v479;
LABEL_285:
                [v224 setInstallmentAuthorizationAmount_];

                v1351 = *(v751 + v148);
                v1358 = sub_1BD1FFD7C(1, v222, v1352, v1353, v1354, v1355, v1356, v1357);
                v1366 = sub_1BD3F0360(v1358, v1359, v1360, v1361, v1362, v1363, v1364, v1365);
                v1358, v1367, v1368, v1369, v1370, v1371, v1372, v1373;
                v1374 = sub_1BE052724();
                v1366, v1375, v1376, v1377, v1378, v1379, v1380, v1381;
                [v1351 setPaymentSummaryItems_];

                v507 = v93;
LABEL_286:
                v1472 = v507;
                [*(v53 + v148) setPaymentService_];
                [*(v53 + v148) setPaymentWebService_];
                [*(v53 + v148) setAccountService_];
                v1382 = *(v53 + v148);
                v1383 = v1479;
                [v1382 setPeerPaymentService_];

                v1384 = *(v53 + v148);
                v1385 = objc_allocWithZone(MEMORY[0x1E69B8538]);
                v1386 = v1384;
                v1387 = [v1385 init];
                [v1386 setAggregateDictionary_];

                sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
                sub_1BE051F94();
                (*(v1486 + 104))(v1490, *MEMORY[0x1E69E8098], v1487);
                *&v1511 = MEMORY[0x1E69E7CC0];
                sub_1BD2000E0(&unk_1EBD35EB0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D420, &qword_1BE0B9530);
                sub_1BD0DE4F4(&unk_1EBD35F10, &unk_1EBD3D420, &qword_1BE0B9530, MEMORY[0x1E69E6328]);
                sub_1BE053664();
                v1388 = sub_1BE052D74();
                v1389 = MEMORY[0x1E69E7D40];
                *(v148 + *((*MEMORY[0x1E69E7D40] & *v148) + 0x88)) = v1388;
                v1390 = v1478;
                v1391 = *(v1478 + v148);
                type metadata accessor for AddressManager();
                swift_allocObject();
                v1392 = sub_1BD0E6090(v1391, v1388);
                *(v148 + *((*v1389 & *v148) + 0x80)) = v1392;
                v1393 = *(v1390 + v148);
                v1394 = v148 + *((*v1389 & *v148) + 0x60);
                v1396 = v1473;
                v1395 = v1474;
                *v1394 = v1473;
                *(v1394 + 1) = v1395;
                *(v1394 + 1) = xmmword_1BE0B8E10;
                *(v1394 + 4) = v1393;
                *(v1394 + 5) = v1392;
                v1397 = v1395;
                v1398 = v1396;
                sub_1BE048964();
                v1399 = v1393;
                v1400 = [v1495 clientAnalyticsParameters];
                v1491 = v1398;
                if (v1400)
                {
                  type metadata accessor for PKPaymentRequestClientAnalyticsParameters(0);
                  sub_1BD2000E0(&qword_1EBD38220, type metadata accessor for PKPaymentRequestClientAnalyticsParameters, &unk_1BE0B61A0);
                  v1401 = sub_1BE052244();

                  v1400 = sub_1BE052224();
                  v1401, v1402, v1403, v1404, v1405, v1406, v1407, v1408;
                }

                [(objc_class *)v1397 setClientAnalyticsParameters:v1400];

                v1511 = *v1394;
                v1512 = *(v1394 + 1);
                v1513 = *(v1394 + 2);
                v1409 = v1511;
                v1410 = v1513;
                v1525 = *(&v1511 + 1);
                v1526[0] = *(&v1512 + 1);
                type metadata accessor for AuthenticatorModel(0);
                swift_allocObject();
                v1411 = v1409;
                sub_1BD0DE19C(&v1525, &v1520, &qword_1EBD3D490, &unk_1BE0D42B0);
                sub_1BD0DE19C(v1526, &v1520, &qword_1EBD40150, &qword_1BE0C12A0);
                v1412 = v1410;
                sub_1BE048964();
                v1413 = sub_1BD83D0D4(&v1511, 2u, 0, 1);
                v1414 = v1397;
                v1415 = MEMORY[0x1E69E7D40];
                swift_beginAccess();
                *&v1517 = v1413;
                sub_1BE048964();
                sub_1BE04D874();
                swift_endAccess();
                v1416 = objc_allocWithZone(type metadata accessor for AuthenticatorWrapper(0));
                v1417 = v1414;
                v1489 = v1413;
                v1490 = v1417;
                v1418 = sub_1BE048964();
                *(v148 + *((*v1415 & *v148) + 0x70)) = sub_1BD7F33EC(v1418, v1417);
                v1520 = *v1394;
                v1521 = *(v1394 + 1);
                v1522 = *(v1394 + 2);
                v1510[0] = *(&v1520 + 1);
                v1419 = v1520;
                v1420 = v1522;
                v1516[0] = *(&v1521 + 1);
                v1421 = *(&v1522 + 1);
                type metadata accessor for PaymentAuthorizationModel(0);
                swift_allocObject();
                v1422 = v1419;
                sub_1BD0DE19C(v1510, &v1517, &qword_1EBD3D490, &unk_1BE0D42B0);
                sub_1BD0DE19C(v1516, &v1517, &qword_1EBD40150, &qword_1BE0C12A0);
                v1423 = v1420;
                sub_1BE048964();
                v1424 = sub_1BD5D6AE4(&v1520);

                sub_1BD0DE53C(v1510, &qword_1EBD3D490, &unk_1BE0D42B0);
                sub_1BD0DE53C(v1516, &qword_1EBD40150, &qword_1BE0C12A0);
                v1421, v1425, v1426, v1427, v1428, v1429, v1430, v1431;

                v1432 = MEMORY[0x1E69E7D40];
                swift_beginAccess();
                v1524 = v1424;
                sub_1BE04D874();
                swift_endAccess();
                v1433 = *&v1485[v148];
                v1434 = type metadata accessor for PaymentAuthorizationServiceDelegate();
                v1435 = objc_allocWithZone(v1434);
                v1436 = v1491;
                *&v1435[OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_stateMachine] = v1491;
                *&v1435[OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_context] = v1433;
                v1505.receiver = v1435;
                v1505.super_class = v1434;
                v1437 = v1436;
                sub_1BE048964();
                *(v148 + *((*v1432 & *v148) + 0x98)) = objc_msgSendSuper2(&v1505, sel_init);
                v1438 = v1475;
                v1504.receiver = v148;
                v1504.super_class = v1475;
                v1439 = objc_msgSendSuper2(&v1504, sel_init);
                sub_1BE04BE34();
                v1440 = swift_allocObject();
                swift_unknownObjectWeakInit();
                sub_1BD42B68C(v1439, v1440);

                v1441 = v1472;
                v1442 = v1490;

                v1496, v1443, v1444, v1445, v1446, v1447, v1448, v1449;
                swift_unknownObjectRelease();

                v1489, v1450, v1451, v1452, v1453, v1454, v1455, v1456;
                v1440, v1457, v1458, v1459, v1460, v1461, v1462, v1463;
                v1464 = v1492;
                v1492[3] = v1438;
                v1464[4] = sub_1BD0DE4F4(&qword_1EBD3D4D8, &qword_1EBD3D4D0, &qword_1BE0C12C0, &unk_1BE0D5A38);
                *v1464 = v1439;
                v1465 = v1439;
                v1466 = [(objc_class *)v1441 request];
                v1467 = [v1466 supportedNetworks];

                type metadata accessor for PKPaymentNetwork(0);
                v1468 = sub_1BE052744();

                v1469 = [(objc_class *)v1441 request];
                v1470 = [v1469 merchantCapabilities];

                sub_1BD251AE8(v1465, v1468, v1470, 0, v1481);
                sub_1BD2000E0(&qword_1EBD3D4E0, type metadata accessor for PaymentSheet, &unk_1BE0C5B18);
                v938 = sub_1BE0518D4();

                goto LABEL_277;
              }

              __break(1u);
              goto LABEL_297;
            }

LABEL_294:
            v741 = MEMORY[0x1BFB40900](v664, v233);
            goto LABEL_218;
          }

LABEL_293:
          __break(1u);
          goto LABEL_294;
        }

LABEL_283:
        v740 = sub_1BE053704();
        if (!v740)
        {
          goto LABEL_284;
        }

        goto LABEL_213;
      }

      sub_1BD1FF9E0(a2, v1516);
      v110 = [a2 request];
      if (([v110 _isPSD2StyleRequest] & 1) == 0 && !objc_msgSend(v110, sel__isAMPApplePayClassicRequest))
      {
        v111 = [v110 merchantSession];
        if (!v111)
        {
          v597 = [v110 requestType];
          v112 = 3;
          if (v597 == 3)
          {
            v112 = 1;
          }

LABEL_38:
          v1480 = v112;
          v1478 = v110;
          v1481 = [objc_allocWithZone(MEMORY[0x1E69B8B88]) init];
          v1484 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
          v1479 = [objc_allocWithZone(MEMORY[0x1E69B9000]) init];
          v1485 = objc_opt_self();
          v1483 = [v1485 sharedService];
          if (!v1483)
          {
LABEL_297:
            __break(1u);
            goto LABEL_298;
          }

          v1482 = [objc_allocWithZone(MEMORY[0x1E69B8400]) init];
          v1475 = [objc_allocWithZone(MEMORY[0x1E69BC740]) init];
          v1477 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51FD0, qword_1BE0C1280);
          v53 = objc_allocWithZone(v1477);
          v113 = MEMORY[0x1E69E7D40];
          v114 = *((*MEMORY[0x1E69E7D40] & *v53) + 0x90);
          type metadata accessor for PaymentAuthorizationServiceContext();
          v115 = swift_allocObject();
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakInit();
          *(v115 + 32) = 0;
          *&v114[v53] = v115;
          v116 = *((*v113 & *v53) + 0xA0);
          sub_1BE04BE74();
          swift_unknownObjectRetain();
          v117 = a2;
          v118 = sub_1BE048964();
          *(v53 + v116) = MEMORY[0x1BFB38EF0](v118);
          v119 = *((*v113 & *v53) + 0xA8);
          LOBYTE(v1511) = 0;
          sub_1BE04D874();
          (v1494)[4](v53 + v119, v22, v1495);
          *(v53 + *((*v113 & *v53) + 0xB0)) = 0;
          *(v53 + *((*v113 & *v53) + 0xB8)) = 0;
          *(v53 + *((*v113 & *v53) + 0xC0)) = 0;
          *(v53 + *((*v113 & *v53) + 0xC8)) = 0;
          v1495 = [v117 request];
          v120 = (v53 + *((*v113 & *v53) + 0x78));
          swift_beginAccess();
          sub_1BE04CDA4();
          sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
          sub_1BE048964();
          *v120 = sub_1BE04E954();
          v120[1] = v121;
          swift_endAccess();
          v122 = *v113;
          v32 = v117;
          v93 = *((v122 & *v53) + 0xD8);
          v123 = v1481;
          *(v93 + v53) = v1481;
          v124 = *&v114[v53];
          v125 = v123;
          sub_1BE048964();
          v126 = [v117 presenter];
          swift_unknownObjectWeakAssign();
          v124, v127, v128, v129, v130, v131, v132, v133;
          swift_unknownObjectRelease();
          v1476 = v114;
          swift_unknownObjectWeakAssign();
          v134 = [v1485 sharedService];
          if (!v134)
          {
LABEL_298:
            __break(1u);
LABEL_299:
            __break(1u);
            goto LABEL_300;
          }

          v135 = v134;
          v1472 = v125;
          v136 = [v134 context];

          v137 = [v136 configuration];
          v1474 = v137;
          v138 = [(objc_class *)v137 contactFormatConfiguration];
          if (v138)
          {
            v1485 = [objc_allocWithZone(MEMORY[0x1E69B8730]) initWithConfiguration_];
          }

          else
          {
            v1485 = 0;
          }

          v164 = v1495;
          v1473 = v138;
          v165 = objc_allocWithZone(MEMORY[0x1E69B8B68]);
          v166 = [v165 initWithMode_];
          if (!v166)
          {
            goto LABEL_299;
          }

          v167 = *((*MEMORY[0x1E69E7D40] & *v53) + 0xD0);
          *&v167[v53] = v166;
          v168 = v166;
          v1481 = v1479;
          [v168 setPeerPaymentService_];
          v169 = *&v167[v53];
          v170 = [v117 applicationIdentifier];
          v1494 = v167;
          if (!v170)
          {
            sub_1BE052434();
            v172 = v171;
            v170 = sub_1BE052404();
            v173 = v172;
            v167 = v1494;
            v173, v174, v175, v176, v177, v178, v179, v180;
          }

          [v169 setHostApplicationIdentifier_];

          v181 = *&v167[v53];
          v182 = [v117 localizedApplicationName];
          if (!v182)
          {
            sub_1BE052434();
            v184 = v183;
            v182 = sub_1BE052404();
            v185 = v184;
            v167 = v1494;
            v185, v186, v187, v188, v189, v190, v191, v192;
          }

          [v181 setHostAppLocalizedName_];

          v193 = *&v167[v53];
          v194 = [v117 bundleIdentifier];
          if (!v194)
          {
            sub_1BE052434();
            v196 = v195;
            v194 = sub_1BE052404();
            v197 = v196;
            v167 = v1494;
            v197, v198, v199, v200, v201, v202, v203, v204;
          }

          [v193 setBundleIdentifier_];

          v205 = *&v167[v53];
          v206 = [v117 relevantPassUniqueID];
          if (!v206)
          {
            sub_1BE052434();
            v208 = v207;
            v206 = sub_1BE052404();
            v209 = v208;
            v167 = v1494;
            v209, v210, v211, v212, v213, v214, v215, v216;
          }

          [v205 setRelevantPassUniqueID_];

          [*&v167[v53] setContactFormatValidator_];
          [*&v167[v53] setSupportsEmptyPass_];
          v217 = *&v167[v53];
          v218 = [v117 presenter];
          if (v218)
          {
            v219 = [v218 isIssuerInstallmentsRepayment];
            v167 = v1494;
            swift_unknownObjectRelease();
          }

          else
          {
            v219 = 0;
          }

          [v217 setPresenterIsIssuerInstallmentsRepayment_];

          [*&v167[v53] setPaymentRequest_];
          v220 = v167;
          if ([v164 requestType] != 5)
          {
            goto LABEL_225;
          }

          v148 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
          v221 = [v164 paymentSummaryItems];
          sub_1BD0E5E8C(0, &qword_1EBD3D4A0, 0x1E69B8E90);
          v222 = sub_1BE052744();

          v223 = *&v167[v53];
          v25 = [v164 paymentSummaryItems];
          v224 = sub_1BE052744();

          if (v224 >> 62)
          {
            v232 = sub_1BE053704();
            v233 = v1494;
            if (v232)
            {
LABEL_63:
              v234 = __OFSUB__(v232, 1);
              v235 = v232 - 1;
              if (v234)
              {
                __break(1u);
              }

              else if ((v224 & 0xC000000000000001) == 0)
              {
                if ((v235 & 0x8000000000000000) != 0)
                {
                  __break(1u);
                }

                else if (v235 < *((v224 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v236 = *(v224 + 8 * v235 + 32);
LABEL_68:
                  v244 = v236;
                  v224, v237, v238, v239, v240, v241, v242, v243;
                  v245 = [v244 amount];

                  v233 = v1494;
LABEL_224:
                  [v223 setInstallmentAuthorizationAmount_];

                  v753 = *(v53 + v233);
                  v760 = sub_1BD1FFD7C(1, v222, v754, v755, v756, v757, v758, v759);
                  v220 = v233;
                  v768 = sub_1BD3F0360(v760, v761, v762, v763, v764, v765, v766, v767);
                  v760, v769, v770, v771, v772, v773, v774, v775;
                  v776 = sub_1BE052724();
                  v768, v777, v778, v779, v780, v781, v782, v783;
                  [v753 setPaymentSummaryItems_];

LABEL_225:
                  v1494 = v32;
                  [*(v93 + v53) setPaymentService_];
                  [*(v93 + v53) setPaymentWebService_];
                  [*(v93 + v53) setAccountService_];
                  v784 = *(v93 + v53);
                  v785 = v1481;
                  [v784 setPeerPaymentService_];

                  v786 = *(v93 + v53);
                  v787 = objc_allocWithZone(MEMORY[0x1E69B8538]);
                  v788 = v786;
                  v789 = [v787 init];
                  [v788 setAggregateDictionary_];

                  v1480 = sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
                  sub_1BE051F94();
                  (*(v1486 + 104))(v1490, *MEMORY[0x1E69E8098], v1487);
                  *&v1511 = MEMORY[0x1E69E7CC0];
                  sub_1BD2000E0(&unk_1EBD35EB0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
                  v790 = v220;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D420, &qword_1BE0B9530);
                  sub_1BD0DE4F4(&unk_1EBD35F10, &unk_1EBD3D420, &qword_1BE0B9530, MEMORY[0x1E69E6328]);
                  sub_1BE053664();
                  v791 = sub_1BE052D74();
                  v792 = MEMORY[0x1E69E7D40];
                  *(v53 + *((*MEMORY[0x1E69E7D40] & *v53) + 0x88)) = v791;
                  v793 = *&v790[v53];
                  type metadata accessor for AddressManager();
                  swift_allocObject();
                  v794 = sub_1BD0E6090(v793, v791);
                  *(v53 + *((*v792 & *v53) + 0x80)) = v794;
                  v795 = *&v790[v53];
                  v796 = v53 + *((*v792 & *v53) + 0x60);
                  v797 = v1472;
                  v798 = v1475;
                  *v796 = v1472;
                  *(v796 + 1) = v798;
                  *(v796 + 1) = xmmword_1BE0B8E10;
                  *(v796 + 4) = v795;
                  *(v796 + 5) = v794;
                  v799 = v797;
                  sub_1BE048964();
                  v800 = v798;
                  v801 = v795;
                  v802 = [v1495 clientAnalyticsParameters];
                  v1491 = v799;
                  if (v802)
                  {
                    type metadata accessor for PKPaymentRequestClientAnalyticsParameters(0);
                    sub_1BD2000E0(&qword_1EBD38220, type metadata accessor for PKPaymentRequestClientAnalyticsParameters, &unk_1BE0B61A0);
                    v803 = sub_1BE052244();

                    v802 = sub_1BE052224();
                    v803, v804, v805, v806, v807, v808, v809, v810;
                  }

                  [(objc_class *)v800 setClientAnalyticsParameters:v802];

                  v1520 = *v796;
                  v1521 = *(v796 + 1);
                  v1522 = *(v796 + 2);
                  v811 = v1520;
                  v812 = v1522;
                  v1523 = *(&v1520 + 1);
                  v1524 = *(&v1521 + 1);
                  type metadata accessor for AuthenticatorModel(0);
                  swift_allocObject();
                  v813 = v811;
                  sub_1BD0DE19C(&v1523, &v1511, &qword_1EBD3D490, &unk_1BE0D42B0);
                  sub_1BD0DE19C(&v1524, &v1511, &qword_1EBD40150, &qword_1BE0C12A0);
                  v814 = v812;
                  sub_1BE048964();
                  v815 = sub_1BD83D0D4(&v1520, 2u, 0, 1);
                  v816 = v800;
                  v817 = MEMORY[0x1E69E7D40];
                  swift_beginAccess();
                  *&v1517 = v815;
                  sub_1BE048964();
                  sub_1BE04D874();
                  swift_endAccess();
                  v818 = objc_allocWithZone(type metadata accessor for AuthenticatorWrapper(0));
                  v819 = v816;
                  v1490 = v819;
                  v820 = sub_1BE048964();
                  *(v53 + *((*v817 & *v53) + 0x70)) = sub_1BD7F33EC(v820, v819);
                  v1517 = *v796;
                  v1518 = *(v796 + 1);
                  v1519 = *(v796 + 2);
                  v821 = v1517;
                  v822 = v1519;
                  v1525 = *(&v1517 + 1);
                  v1526[0] = *(&v1518 + 1);
                  type metadata accessor for AMPAuthorizationModel(0);
                  swift_allocObject();
                  v823 = v821;
                  sub_1BD0DE19C(&v1525, &v1511, &qword_1EBD3D490, &unk_1BE0D42B0);
                  sub_1BD0DE19C(v1526, &v1511, &qword_1EBD40150, &qword_1BE0C12A0);
                  v824 = v822;
                  sub_1BE048964();
                  v825 = sub_1BD28BE10(&v1517);
                  swift_beginAccess();
                  v1510[0] = v825;
                  sub_1BE04D874();
                  swift_endAccess();
                  v826 = *&v1476[v53];
                  v827 = type metadata accessor for PaymentAuthorizationServiceDelegate();
                  v828 = objc_allocWithZone(v827);
                  v829 = v1491;
                  *&v828[OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_stateMachine] = v1491;
                  *&v828[OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_context] = v826;
                  v1503.receiver = v828;
                  v1503.super_class = v827;
                  v830 = v829;
                  sub_1BE048964();
                  *(v53 + *((*v817 & *v53) + 0x98)) = objc_msgSendSuper2(&v1503, sel_init);
                  v831 = v1477;
                  v1502.receiver = v53;
                  v1502.super_class = v1477;
                  v832 = objc_msgSendSuper2(&v1502, sel_init);
                  goto LABEL_244;
                }

                __break(1u);
                goto LABEL_232;
              }

              v236 = MEMORY[0x1BFB40900](v235, v224);
              goto LABEL_68;
            }
          }

          else
          {
            v232 = *((v224 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v233 = v1494;
            if (v232)
            {
              goto LABEL_63;
            }
          }

          v224, v225, v226, v227, v228, v229, v230, v231;
          v245 = 0;
          goto LABEL_224;
        }
      }

      v112 = 1;
      goto LABEL_38;
    }

    if (v24 > 13)
    {
      if (v24 != 14)
      {
        if (v24 != 15)
        {
          goto LABEL_318;
        }

        goto LABEL_70;
      }
    }

    else if (v24 != 12)
    {
      v1481 = [objc_allocWithZone(MEMORY[0x1E69B8B88]) init];
      v1485 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
      v1480 = [objc_allocWithZone(MEMORY[0x1E69B9000]) init];
      v1482 = objc_opt_self();
      v1484 = [(objc_class *)v1482 sharedService];
      if (!v1484)
      {
LABEL_312:
        __break(1u);
        goto LABEL_313;
      }

      v1483 = [objc_allocWithZone(MEMORY[0x1E69B8400]) init];
      v1478 = [objc_allocWithZone(MEMORY[0x1E69BC740]) init];
      v1479 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D4B8, &qword_1BE0C12B8);
      v53 = objc_allocWithZone(v1479);
      v54 = MEMORY[0x1E69E7D40];
      v55 = *((*MEMORY[0x1E69E7D40] & *v53) + 0x90);
      type metadata accessor for PaymentAuthorizationServiceContext();
      v56 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      *(v56 + 32) = 0;
      *(v55 + v53) = v56;
      v57 = *((*v54 & *v53) + 0xA0);
      sub_1BE04BE74();
      swift_unknownObjectRetain();
      v58 = a2;
      v59 = sub_1BE048964();
      *(v53 + v57) = MEMORY[0x1BFB38EF0](v59);
      v60 = v58;
      v61 = *((*v54 & *v53) + 0xA8);
      LOBYTE(v1511) = 0;
      sub_1BE04D874();
      (v1494)[4](v53 + v61, v22, v1495);
      *(v53 + *((*v54 & *v53) + 0xB0)) = 0;
      *(v53 + *((*v54 & *v53) + 0xB8)) = 0;
      *(v53 + *((*v54 & *v53) + 0xC0)) = 0;
      *(v53 + *((*v54 & *v53) + 0xC8)) = 0;
      v1495 = [v58 request];
      v62 = (v53 + *((*v54 & *v53) + 0x78));
      swift_beginAccess();
      sub_1BE04CDA4();
      sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
      sub_1BE048964();
      *v62 = sub_1BE04E954();
      v62[1] = v63;
      swift_endAccess();
      v64 = *((*v54 & *v53) + 0xD8);
      v65 = v1481;
      *(v64 + v53) = v1481;
      v66 = *(v55 + v53);
      v1477 = v65;
      sub_1BE048964();
      v67 = [v60 presenter];
      swift_unknownObjectWeakAssign();
      v66, v68, v69, v70, v71, v72, v73, v74;
      swift_unknownObjectRelease();
      v1481 = v55;
      swift_unknownObjectWeakAssign();
      v75 = [(objc_class *)v1482 sharedService];
      if (!v75)
      {
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
        goto LABEL_316;
      }

      v76 = v75;
      v77 = [v75 context];

      v78 = [v77 configuration];
      v79 = [v78 contactFormatConfiguration];
      v1476 = v79;
      if (v79)
      {
        v1494 = [objc_allocWithZone(MEMORY[0x1E69B8730]) initWithConfiguration_];
      }

      else
      {
        v1494 = 0;
      }

      v598 = v1495;
      v1475 = v64;
      v599 = [objc_allocWithZone(MEMORY[0x1E69B8B68]) initWithMode_];
      if (!v599)
      {
        goto LABEL_314;
      }

      v600 = *((*MEMORY[0x1E69E7D40] & *v53) + 0xD0);
      *(v600 + v53) = v599;
      v601 = v599;
      v1482 = v1480;
      [v601 setPeerPaymentService_];
      v602 = *(v600 + v53);
      v603 = [v60 applicationIdentifier];
      v93 = v600;
      if (!v603)
      {
        sub_1BE052434();
        v605 = v604;
        v603 = sub_1BE052404();
        v606 = v605;
        v600 = v93;
        v606, v607, v608, v609, v610, v611, v612, v613;
      }

      [v602 setHostApplicationIdentifier_];

      v614 = *(v600 + v53);
      v615 = [v60 localizedApplicationName];
      if (!v615)
      {
        sub_1BE052434();
        v617 = v616;
        v615 = sub_1BE052404();
        v618 = v617;
        v600 = v93;
        v618, v619, v620, v621, v622, v623, v624, v625;
      }

      [v614 setHostAppLocalizedName_];

      v626 = *(v600 + v53);
      v627 = [v60 bundleIdentifier];
      if (!v627)
      {
        sub_1BE052434();
        v629 = v628;
        v627 = sub_1BE052404();
        v630 = v629;
        v600 = v93;
        v630, v631, v632, v633, v634, v635, v636, v637;
      }

      [v626 setBundleIdentifier_];

      v638 = *(v600 + v53);
      v639 = [v60 relevantPassUniqueID];
      if (!v639)
      {
        sub_1BE052434();
        v641 = v640;
        v639 = sub_1BE052404();
        v642 = v641;
        v600 = v93;
        v642, v643, v644, v645, v646, v647, v648, v649;
      }

      [v638 setRelevantPassUniqueID_];

      [*(v600 + v53) setContactFormatValidator_];
      [*(v600 + v53) setSupportsEmptyPass_];
      v650 = *(v600 + v53);
      v651 = [v60 presenter];
      v1474 = v60;
      if (v651)
      {
        v652 = [v651 isIssuerInstallmentsRepayment];
        swift_unknownObjectRelease();
      }

      else
      {
        v652 = 0;
      }

      v1480 = v78;
      [v650 setPresenterIsIssuerInstallmentsRepayment_];

      v653 = v93;
      [*(v93 + v53) setPaymentRequest_];
      if ([v598 requestType] != 5)
      {
LABEL_273:
        v1278 = v1475;
        [*(v1475 + v53) setPaymentService_];
        [*(v1278 + v53) setPaymentWebService_];
        [*(v1278 + v53) setAccountService_];
        v1279 = *(v1278 + v53);
        v1280 = v1482;
        [v1279 setPeerPaymentService_];

        v1281 = *(v1278 + v53);
        v1282 = objc_allocWithZone(MEMORY[0x1E69B8538]);
        v1283 = v1281;
        v1284 = [v1282 init];
        [v1283 setAggregateDictionary_];

        v1475 = sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
        sub_1BE051F94();
        (*(v1486 + 104))(v1490, *MEMORY[0x1E69E8098], v1487);
        *&v1511 = MEMORY[0x1E69E7CC0];
        sub_1BD2000E0(&unk_1EBD35EB0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D420, &qword_1BE0B9530);
        sub_1BD0DE4F4(&unk_1EBD35F10, &unk_1EBD3D420, &qword_1BE0B9530, MEMORY[0x1E69E6328]);
        sub_1BE053664();
        v1285 = sub_1BE052D74();
        v1286 = MEMORY[0x1E69E7D40];
        *(v53 + *((*MEMORY[0x1E69E7D40] & *v53) + 0x88)) = v1285;
        v1287 = *(v653 + v53);
        type metadata accessor for AddressManager();
        swift_allocObject();
        v1288 = sub_1BD0E6090(v1287, v1285);
        *(v53 + *((*v1286 & *v53) + 0x80)) = v1288;
        v1289 = *(v653 + v53);
        v1290 = v53 + *((*v1286 & *v53) + 0x60);
        v1291 = v1477;
        v1292 = v1478;
        *v1290 = v1477;
        *(v1290 + 1) = v1292;
        *(v1290 + 1) = xmmword_1BE0B8E10;
        *(v1290 + 4) = v1289;
        *(v1290 + 5) = v1288;
        v1293 = v1291;
        sub_1BE048964();
        v1294 = v1292;
        v1295 = v1289;
        v1296 = [v1495 clientAnalyticsParameters];
        v1491 = v1293;
        if (v1296)
        {
          type metadata accessor for PKPaymentRequestClientAnalyticsParameters(0);
          sub_1BD2000E0(&qword_1EBD38220, type metadata accessor for PKPaymentRequestClientAnalyticsParameters, &unk_1BE0B61A0);
          v1297 = sub_1BE052244();

          v1296 = sub_1BE052224();
          v1297, v1298, v1299, v1300, v1301, v1302, v1303, v1304;
        }

        [(objc_class *)v1294 setClientAnalyticsParameters:v1296];

        v1520 = *v1290;
        v1521 = *(v1290 + 1);
        v1522 = *(v1290 + 2);
        v1305 = v1520;
        v1306 = v1522;
        v1525 = *(&v1520 + 1);
        v1526[0] = *(&v1521 + 1);
        type metadata accessor for AuthenticatorModel(0);
        swift_allocObject();
        v1307 = v1305;
        sub_1BD0DE19C(&v1525, &v1511, &qword_1EBD3D490, &unk_1BE0D42B0);
        sub_1BD0DE19C(v1526, &v1511, &qword_1EBD40150, &qword_1BE0C12A0);
        v1308 = v1306;
        sub_1BE048964();
        v1309 = sub_1BD83D0D4(&v1520, 2u, 0, 1);
        v1310 = v1294;
        v1311 = MEMORY[0x1E69E7D40];
        swift_beginAccess();
        *&v1517 = v1309;
        sub_1BE048964();
        sub_1BE04D874();
        swift_endAccess();
        v1312 = objc_allocWithZone(type metadata accessor for AuthenticatorWrapper(0));
        v1313 = v1310;
        v1490 = v1313;
        v1314 = sub_1BE048964();
        *(v53 + *((*v1311 & *v53) + 0x70)) = sub_1BD7F33EC(v1314, v1313);
        v1517 = *v1290;
        v1518 = *(v1290 + 1);
        v1519 = *(v1290 + 2);
        v1510[0] = *(&v1517 + 1);
        v1315 = v1517;
        v1316 = v1519;
        v1516[0] = *(&v1518 + 1);
        type metadata accessor for IdentityAuthorizationModel(0);
        swift_allocObject();
        v1317 = v1315;
        sub_1BD0DE19C(v1510, &v1511, &qword_1EBD3D490, &unk_1BE0D42B0);
        sub_1BD0DE19C(v1516, &v1511, &qword_1EBD40150, &qword_1BE0C12A0);
        v1318 = v1316;
        sub_1BE048964();
        v1319 = sub_1BD695CF0(&v1517);
        swift_beginAccess();
        v1524 = v1319;
        sub_1BE04D874();
        swift_endAccess();
        v1320 = *(v1481 + v53);
        v1321 = type metadata accessor for PaymentAuthorizationServiceDelegate();
        v1322 = objc_allocWithZone(v1321);
        v1323 = v1491;
        *&v1322[OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_stateMachine] = v1491;
        *&v1322[OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_context] = v1320;
        v1507.receiver = v1322;
        v1507.super_class = v1321;
        v1324 = v1323;
        sub_1BE048964();
        *(v53 + *((*v1311 & *v53) + 0x98)) = objc_msgSendSuper2(&v1507, sel_init);
        v1325 = v1479;
        v1506.receiver = v53;
        v1506.super_class = v1479;
        v1326 = objc_msgSendSuper2(&v1506, sel_init);
        sub_1BE04BE34();
        v1327 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1BD42B6D4(v1326, v1327);

        v1496, v1328, v1329, v1330, v1331, v1332, v1333, v1334;
        swift_unknownObjectRelease();

        v1309, v1335, v1336, v1337, v1338, v1339, v1340, v1341;
        v1327, v1342, v1343, v1344, v1345, v1346, v1347, v1348;
        v1349 = v1492;
        v1492[3] = v1325;
        v1349[4] = sub_1BD0DE4F4(&qword_1EBD3D4C0, &qword_1EBD3D4B8, &qword_1BE0C12B8, &unk_1BE0D5A38);
        *v1349 = v1326;
        v1141 = v1326;
        sub_1BD24AEE4(v1141, &v1511);
        sub_1BD2001A0();
        goto LABEL_276;
      }

      v479 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
      v654 = [v598 paymentSummaryItems];
      v233 = sub_1BD0E5E8C(0, &qword_1EBD3D4A0, 0x1E69B8E90);
      v222 = sub_1BE052744();

      v148 = *(v93 + v53);
      v655 = [v598 paymentSummaryItems];
      v224 = sub_1BE052744();

      if (!(v224 >> 62))
      {
        v663 = *((v224 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v663)
        {
          goto LABEL_191;
        }

        goto LABEL_271;
      }

LABEL_270:
      v663 = sub_1BE053704();
      if (v663)
      {
LABEL_191:
        v234 = __OFSUB__(v663, 1);
        v664 = v663 - 1;
        if (v234)
        {
          __break(1u);
        }

        else if ((v224 & 0xC000000000000001) == 0)
        {
          if ((v664 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v664 < *((v224 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v665 = *(v224 + 8 * v664 + 32);
LABEL_196:
            v673 = v665;
            v224, v666, v667, v668, v669, v670, v671, v672;
            v674 = [v673 amount];

            v675 = v93;
LABEL_272:
            [v148 setInstallmentAuthorizationAmount_];

            v1247 = *(v675 + v53);
            v1254 = sub_1BD1FFD7C(1, v222, v1248, v1249, v1250, v1251, v1252, v1253);
            v653 = v675;
            v1262 = sub_1BD3F0360(v1254, v1255, v1256, v1257, v1258, v1259, v1260, v1261);
            v1254, v1263, v1264, v1265, v1266, v1267, v1268, v1269;
            v1270 = sub_1BE052724();
            v1262, v1271, v1272, v1273, v1274, v1275, v1276, v1277;
            [v1247 setPaymentSummaryItems_];

            goto LABEL_273;
          }

          __break(1u);
          goto LABEL_293;
        }

        v665 = MEMORY[0x1BFB40900](v664, v224);
        goto LABEL_196;
      }

LABEL_271:
      v675 = v93;
      v224, v656, v657, v658, v659, v660, v661, v662;
      v674 = 0;
      goto LABEL_272;
    }

    v1479 = [objc_allocWithZone(MEMORY[0x1E69B8B88]) init];
    v1485 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
    v1478 = [objc_allocWithZone(MEMORY[0x1E69B9000]) init];
    v1480 = objc_opt_self();
    v1482 = [(objc_class *)v1480 sharedService];
    if (!v1482)
    {
LABEL_306:
      __break(1u);
      goto LABEL_307;
    }

    v1481 = [objc_allocWithZone(MEMORY[0x1E69B8400]) init];
    v1475 = [objc_allocWithZone(MEMORY[0x1E69BC740]) init];
    v1477 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D4E8, &qword_1BE0C12C8);
    v53 = objc_allocWithZone(v1477);
    v139 = MEMORY[0x1E69E7D40];
    v140 = *((*MEMORY[0x1E69E7D40] & *v53) + 0x90);
    type metadata accessor for PaymentAuthorizationServiceContext();
    v141 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    *(v141 + 32) = 0;
    *&v140[v53] = v141;
    v142 = *((*v139 & *v53) + 0xA0);
    sub_1BE04BE74();
    swift_unknownObjectRetain();
    v143 = a2;
    v144 = sub_1BE048964();
    *(v53 + v142) = MEMORY[0x1BFB38EF0](v144);
    v145 = *((*v139 & *v53) + 0xA8);
    LOBYTE(v1511) = 0;
    sub_1BE04D874();
    (v1494)[4](v53 + v145, v22, v1495);
    *(v53 + *((*v139 & *v53) + 0xB0)) = 0;
    *(v53 + *((*v139 & *v53) + 0xB8)) = 0;
    *(v53 + *((*v139 & *v53) + 0xC0)) = 0;
    *(v53 + *((*v139 & *v53) + 0xC8)) = 0;
    v1495 = [v143 request];
    v146 = (v53 + *((*v139 & *v53) + 0x78));
    swift_beginAccess();
    sub_1BE04CDA4();
    sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
    sub_1BE048964();
    v32 = v143;
    *v146 = sub_1BE04E954();
    v146[1] = v147;
    swift_endAccess();
    v148 = *((*v139 & *v53) + 0xD8);
    v149 = v1479;
    *(v148 + v53) = v1479;
    v150 = *&v140[v53];
    v1474 = v149;
    sub_1BE048964();
    v151 = [v143 presenter];
    swift_unknownObjectWeakAssign();
    v150, v152, v153, v154, v155, v156, v157, v158;
    swift_unknownObjectRelease();
    v1476 = v140;
    swift_unknownObjectWeakAssign();
    v159 = [(objc_class *)v1480 sharedService];
    if (!v159)
    {
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
      goto LABEL_309;
    }

    v160 = v159;
    v161 = [v159 context];

    v162 = [v161 configuration];
    v1473 = v162;
    v163 = [(objc_class *)v162 contactFormatConfiguration];
    v1472 = v163;
    if (v163)
    {
      v1494 = [objc_allocWithZone(MEMORY[0x1E69B8730]) initWithConfiguration_];
    }

    else
    {
      v1494 = 0;
    }

    v423 = v1495;
    v424 = [objc_allocWithZone(MEMORY[0x1E69B8B68]) initWithMode_];
    if (!v424)
    {
      goto LABEL_308;
    }

    v425 = *((*MEMORY[0x1E69E7D40] & *v53) + 0xD0);
    *(v425 + v53) = v424;
    v426 = v424;
    v1480 = v1478;
    [v426 setPeerPaymentService_];
    v427 = *(v425 + v53);
    v428 = [v143 applicationIdentifier];
    v93 = v425;
    if (!v428)
    {
      sub_1BE052434();
      v430 = v429;
      v428 = sub_1BE052404();
      v431 = v430;
      v425 = v93;
      v431, v432, v433, v434, v435, v436, v437, v438;
    }

    [v427 setHostApplicationIdentifier_];

    v439 = *(v425 + v53);
    v440 = [v32 localizedApplicationName];
    if (!v440)
    {
      sub_1BE052434();
      v442 = v441;
      v440 = sub_1BE052404();
      v443 = v442;
      v425 = v93;
      v443, v444, v445, v446, v447, v448, v449, v450;
    }

    [v439 setHostAppLocalizedName_];

    v451 = *(v425 + v53);
    v452 = [v32 bundleIdentifier];
    if (!v452)
    {
      sub_1BE052434();
      v454 = v453;
      v452 = sub_1BE052404();
      v455 = v454;
      v425 = v93;
      v455, v456, v457, v458, v459, v460, v461, v462;
    }

    [v451 setBundleIdentifier_];

    v463 = *(v425 + v53);
    v464 = [v32 relevantPassUniqueID];
    if (!v464)
    {
      sub_1BE052434();
      v466 = v465;
      v464 = sub_1BE052404();
      v467 = v466;
      v425 = v93;
      v467, v468, v469, v470, v471, v472, v473, v474;
    }

    [v463 setRelevantPassUniqueID_];

    [*(v425 + v53) setContactFormatValidator_];
    [*(v425 + v53) setSupportsEmptyPass_];
    v475 = *(v425 + v53);
    v476 = [v32 presenter];
    if (v476)
    {
      v477 = [v476 isIssuerInstallmentsRepayment];
      swift_unknownObjectRelease();
    }

    else
    {
      v477 = 0;
    }

    [v475 setPresenterIsIssuerInstallmentsRepayment_];

    v1479 = v93;
    [*(v93 + v53) setPaymentRequest_];
    if ([v423 requestType] != 5)
    {
LABEL_248:
      v1478 = v32;
      [*(v148 + v53) setPaymentService_];
      [*(v148 + v53) setPaymentWebService_];
      [*(v148 + v53) setAccountService_];
      v1070 = *(v148 + v53);
      v1071 = v1480;
      [v1070 setPeerPaymentService_];

      v1072 = *(v148 + v53);
      v1073 = objc_allocWithZone(MEMORY[0x1E69B8538]);
      v1074 = v1072;
      v1075 = [v1073 init];
      [v1074 setAggregateDictionary_];

      sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
      sub_1BE051F94();
      (*(v1486 + 104))(v1490, *MEMORY[0x1E69E8098], v1487);
      *&v1511 = MEMORY[0x1E69E7CC0];
      sub_1BD2000E0(&unk_1EBD35EB0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D420, &qword_1BE0B9530);
      sub_1BD0DE4F4(&unk_1EBD35F10, &unk_1EBD3D420, &qword_1BE0B9530, MEMORY[0x1E69E6328]);
      sub_1BE053664();
      v1076 = sub_1BE052D74();
      v1077 = MEMORY[0x1E69E7D40];
      *(v53 + *((*MEMORY[0x1E69E7D40] & *v53) + 0x88)) = v1076;
      v1078 = v1479;
      v1079 = *&v1479[v53];
      type metadata accessor for AddressManager();
      swift_allocObject();
      v1080 = sub_1BD0E6090(v1079, v1076);
      *(v53 + *((*v1077 & *v53) + 0x80)) = v1080;
      v1081 = *(v1078 + v53);
      v1082 = v53 + *((*v1077 & *v53) + 0x60);
      v1083 = v1474;
      v1084 = v1475;
      *v1082 = v1474;
      *(v1082 + 1) = v1084;
      *(v1082 + 1) = xmmword_1BE0B8E10;
      *(v1082 + 4) = v1081;
      *(v1082 + 5) = v1080;
      v1085 = v1083;
      sub_1BE048964();
      v1086 = v1084;
      v1087 = v1081;
      v1088 = [v1495 clientAnalyticsParameters];
      v1491 = v1085;
      if (v1088)
      {
        type metadata accessor for PKPaymentRequestClientAnalyticsParameters(0);
        sub_1BD2000E0(&qword_1EBD38220, type metadata accessor for PKPaymentRequestClientAnalyticsParameters, &unk_1BE0B61A0);
        v1089 = sub_1BE052244();

        v1088 = sub_1BE052224();
        v1089, v1090, v1091, v1092, v1093, v1094, v1095, v1096;
      }

      [(objc_class *)v1086 setClientAnalyticsParameters:v1088];

      v1511 = *v1082;
      v1512 = *(v1082 + 1);
      v1513 = *(v1082 + 2);
      v1097 = v1511;
      v1098 = v1513;
      v1525 = *(&v1511 + 1);
      v1526[0] = *(&v1512 + 1);
      type metadata accessor for AuthenticatorModel(0);
      v1490 = v1086;
      swift_allocObject();
      v1099 = v1097;
      sub_1BD0DE19C(&v1525, &v1520, &qword_1EBD3D490, &unk_1BE0D42B0);
      sub_1BD0DE19C(v1526, &v1520, &qword_1EBD40150, &qword_1BE0C12A0);
      v1100 = v1098;
      sub_1BE048964();
      v1101 = sub_1BD83D0D4(&v1511, 2u, 0, 1);
      v1102 = MEMORY[0x1E69E7D40];
      swift_beginAccess();
      *&v1517 = v1101;
      sub_1BE048964();
      sub_1BE04D874();
      swift_endAccess();
      v1103 = objc_allocWithZone(type metadata accessor for AuthenticatorWrapper(0));
      v1104 = v1490;
      v1490 = v1104;
      v1105 = sub_1BE048964();
      *(v53 + *((*v1102 & *v53) + 0x70)) = sub_1BD7F33EC(v1105, v1104);
      v1520 = *v1082;
      v1521 = *(v1082 + 1);
      v1522 = *(v1082 + 2);
      v1510[0] = *(&v1520 + 1);
      v1106 = v1520;
      v1107 = v1522;
      v1516[0] = *(&v1521 + 1);
      type metadata accessor for VirtualCardAuthorizationModel(0);
      swift_allocObject();
      v1108 = v1106;
      sub_1BD0DE19C(v1510, &v1517, &qword_1EBD3D490, &unk_1BE0D42B0);
      sub_1BD0DE19C(v1516, &v1517, &qword_1EBD40150, &qword_1BE0C12A0);
      v1109 = v1107;
      sub_1BE048964();
      v1110 = sub_1BD416524(&v1520);
      swift_beginAccess();
      v1524 = v1110;
      sub_1BE04D874();
      swift_endAccess();
      v1111 = *&v1476[v53];
      v1112 = type metadata accessor for PaymentAuthorizationServiceDelegate();
      v1113 = objc_allocWithZone(v1112);
      v1114 = v1491;
      *&v1113[OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_stateMachine] = v1491;
      *&v1113[OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_context] = v1111;
      v1501.receiver = v1113;
      v1501.super_class = v1112;
      v1115 = v1114;
      sub_1BE048964();
      *(v53 + *((*v1102 & *v53) + 0x98)) = objc_msgSendSuper2(&v1501, sel_init);
      v1116 = v1477;
      v1500.receiver = v53;
      v1500.super_class = v1477;
      v1117 = objc_msgSendSuper2(&v1500, sel_init);
      sub_1BE04BE34();
      v1118 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1BD42B5FC(v1117, v1118);

      v1496, v1119, v1120, v1121, v1122, v1123, v1124, v1125;
      swift_unknownObjectRelease();

      v1101, v1126, v1127, v1128, v1129, v1130, v1131, v1132;
      v1118, v1133, v1134, v1135, v1136, v1137, v1138, v1139;
      v1140 = v1492;
      v1492[3] = v1116;
      v1140[4] = sub_1BD0DE4F4(&qword_1EBD3D4F0, &qword_1EBD3D4E8, &qword_1BE0C12C8, &unk_1BE0D5A38);
      *v1140 = v1117;
      v1141 = v1117;
      sub_1BD7A7624(v1141, v1483);
      v1142 = &unk_1EBD3D4F8;
      v1143 = type metadata accessor for VirtualCardSheet;
      v1144 = &unk_1BE0F7C60;
      goto LABEL_262;
    }

    v478 = [v423 paymentSummaryItems];
    sub_1BD0E5E8C(0, &qword_1EBD3D4A0, 0x1E69B8E90);
    v222 = sub_1BE052744();

    v224 = *&v1479[v53];
    v479 = [v423 paymentSummaryItems];
    v233 = sub_1BE052744();

    if (v233 >> 62)
    {
      v487 = sub_1BE053704();
      if (v487)
      {
        goto LABEL_134;
      }
    }

    else
    {
      v487 = *((v233 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v487)
      {
LABEL_134:
        v234 = __OFSUB__(v487, 1);
        v412 = v487 - 1;
        if (v234)
        {
LABEL_266:
          __break(1u);
          goto LABEL_267;
        }

        if ((v233 & 0xC000000000000001) != 0)
        {
LABEL_267:
          v488 = MEMORY[0x1BFB40900](v412, v233);
          goto LABEL_139;
        }

        if ((v412 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v412 < *((v233 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v488 = *(v233 + 8 * v412 + 32);
LABEL_139:
          v496 = v488;
          v233, v489, v490, v491, v492, v493, v494, v495;
          v497 = [v496 amount];

LABEL_247:
          [v224 setInstallmentAuthorizationAmount_];

          v1039 = *(v93 + v53);
          v1046 = sub_1BD1FFD7C(1, v222, v1040, v1041, v1042, v1043, v1044, v1045);
          v1054 = sub_1BD3F0360(v1046, v1047, v1048, v1049, v1050, v1051, v1052, v1053);
          v1046, v1055, v1056, v1057, v1058, v1059, v1060, v1061;
          v1062 = sub_1BE052724();
          v1054, v1063, v1064, v1065, v1066, v1067, v1068, v1069;
          [v1039 setPaymentSummaryItems_];

          goto LABEL_248;
        }

        __break(1u);
        goto LABEL_270;
      }
    }

    v233, v480, v481, v482, v483, v484, v485, v486;
    v497 = 0;
    goto LABEL_247;
  }

  if (v24 > 2)
  {
    if ((v24 - 4) < 2)
    {
      goto LABEL_30;
    }

    if ((v24 - 6) >= 2)
    {
      if (v24 != 3)
      {
        goto LABEL_318;
      }

LABEL_20:
      sub_1BD1FF9E0(a2, v1516);
      v80 = [a2 request];
      if (([v80 _isPSD2StyleRequest] & 1) == 0 && !objc_msgSend(v80, sel__isAMPApplePayClassicRequest))
      {
        v81 = [v80 merchantSession];
        if (!v81)
        {
          v752 = [v80 requestType];
          v82 = 3;
          if (v752 == 3)
          {
            v82 = 1;
          }

LABEL_25:
          v1480 = v82;
          v1478 = v80;
          v1481 = [objc_allocWithZone(MEMORY[0x1E69B8B88]) init];
          v1484 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
          v1479 = [objc_allocWithZone(MEMORY[0x1E69B9000]) init];
          v1485 = objc_opt_self();
          v1483 = [v1485 sharedService];
          if (!v1483)
          {
LABEL_303:
            __break(1u);
            goto LABEL_304;
          }

          v1482 = [objc_allocWithZone(MEMORY[0x1E69B8400]) init];
          v1475 = [objc_allocWithZone(MEMORY[0x1E69BC740]) init];
          v1477 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51FD0, qword_1BE0C1280);
          v53 = objc_allocWithZone(v1477);
          v83 = MEMORY[0x1E69E7D40];
          v84 = *((*MEMORY[0x1E69E7D40] & *v53) + 0x90);
          type metadata accessor for PaymentAuthorizationServiceContext();
          v85 = swift_allocObject();
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakInit();
          *(v85 + 32) = 0;
          *&v84[v53] = v85;
          v86 = *((*v83 & *v53) + 0xA0);
          sub_1BE04BE74();
          swift_unknownObjectRetain();
          v87 = a2;
          v88 = sub_1BE048964();
          *(v53 + v86) = MEMORY[0x1BFB38EF0](v88);
          v89 = *((*v83 & *v53) + 0xA8);
          LOBYTE(v1511) = 0;
          sub_1BE04D874();
          (v1494)[4](v53 + v89, v22, v1495);
          *(v53 + *((*v83 & *v53) + 0xB0)) = 0;
          *(v53 + *((*v83 & *v53) + 0xB8)) = 0;
          *(v53 + *((*v83 & *v53) + 0xC0)) = 0;
          *(v53 + *((*v83 & *v53) + 0xC8)) = 0;
          v1495 = [v87 request];
          v90 = (v53 + *((*v83 & *v53) + 0x78));
          swift_beginAccess();
          sub_1BE04CDA4();
          sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
          sub_1BE048964();
          *v90 = sub_1BE04E954();
          v90[1] = v91;
          swift_endAccess();
          v92 = *v83;
          v32 = v87;
          v93 = *((v92 & *v53) + 0xD8);
          v94 = v1481;
          *(v93 + v53) = v1481;
          v95 = *&v84[v53];
          v96 = v94;
          sub_1BE048964();
          v97 = [v87 presenter];
          swift_unknownObjectWeakAssign();
          v95, v98, v99, v100, v101, v102, v103, v104;
          swift_unknownObjectRelease();
          v1476 = v84;
          swift_unknownObjectWeakAssign();
          v105 = [v1485 sharedService];
          if (!v105)
          {
LABEL_304:
            __break(1u);
LABEL_305:
            __break(1u);
            goto LABEL_306;
          }

          v106 = v105;
          v1472 = v96;
          v107 = [v105 context];

          v108 = [v107 configuration];
          v1474 = v108;
          v109 = [(objc_class *)v108 contactFormatConfiguration];
          v1473 = v109;
          if (v109)
          {
            v1485 = [objc_allocWithZone(MEMORY[0x1E69B8730]) initWithConfiguration_];
          }

          else
          {
            v1485 = 0;
          }

          v346 = v1495;
          v347 = [objc_allocWithZone(MEMORY[0x1E69B8B68]) initWithMode_];
          if (!v347)
          {
            goto LABEL_305;
          }

          v348 = *((*MEMORY[0x1E69E7D40] & *v53) + 0xD0);
          *&v348[v53] = v347;
          v349 = v347;
          v1481 = v1479;
          [v349 setPeerPaymentService_];
          v350 = *&v348[v53];
          v351 = [v87 applicationIdentifier];
          v1494 = v348;
          if (!v351)
          {
            sub_1BE052434();
            v353 = v352;
            v351 = sub_1BE052404();
            v354 = v353;
            v348 = v1494;
            v354, v355, v356, v357, v358, v359, v360, v361;
          }

          [v350 setHostApplicationIdentifier_];

          v362 = *&v348[v53];
          v363 = [v87 localizedApplicationName];
          if (!v363)
          {
            sub_1BE052434();
            v365 = v364;
            v363 = sub_1BE052404();
            v366 = v365;
            v348 = v1494;
            v366, v367, v368, v369, v370, v371, v372, v373;
          }

          [v362 setHostAppLocalizedName_];

          v374 = *&v348[v53];
          v375 = [v87 bundleIdentifier];
          if (!v375)
          {
            sub_1BE052434();
            v377 = v376;
            v375 = sub_1BE052404();
            v378 = v377;
            v348 = v1494;
            v378, v379, v380, v381, v382, v383, v384, v385;
          }

          [v374 setBundleIdentifier_];

          v386 = *&v348[v53];
          v387 = [v87 relevantPassUniqueID];
          if (!v387)
          {
            sub_1BE052434();
            v389 = v388;
            v387 = sub_1BE052404();
            v390 = v389;
            v348 = v1494;
            v390, v391, v392, v393, v394, v395, v396, v397;
          }

          [v386 setRelevantPassUniqueID_];

          [*&v348[v53] setContactFormatValidator_];
          [*&v348[v53] setSupportsEmptyPass_];
          v398 = *&v348[v53];
          v399 = [v87 presenter];
          if (v399)
          {
            v400 = [v399 isIssuerInstallmentsRepayment];
            v348 = v1494;
            swift_unknownObjectRelease();
          }

          else
          {
            v400 = 0;
          }

          [v398 setPresenterIsIssuerInstallmentsRepayment_];

          [*&v348[v53] setPaymentRequest_];
          v401 = v348;
          if ([v346 requestType] != 5)
          {
            goto LABEL_241;
          }

          v148 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
          v402 = [v346 paymentSummaryItems];
          sub_1BD0E5E8C(0, &qword_1EBD3D4A0, 0x1E69B8E90);
          v222 = sub_1BE052744();

          v403 = *&v348[v53];
          v25 = [v346 paymentSummaryItems];
          v224 = sub_1BE052744();

          if (v224 >> 62)
          {
            v411 = sub_1BE053704();
            v233 = v1494;
            if (v411)
            {
LABEL_112:
              v234 = __OFSUB__(v411, 1);
              v412 = v411 - 1;
              if (!v234)
              {
                if ((v224 & 0xC000000000000001) != 0)
                {
                  v413 = MEMORY[0x1BFB40900](v412, v224);
                  goto LABEL_117;
                }

                if ((v412 & 0x8000000000000000) != 0)
                {
                  __break(1u);
                }

                else if (v412 < *((v224 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v413 = *(v224 + 8 * v412 + 32);
LABEL_117:
                  v421 = v413;
                  v224, v414, v415, v416, v417, v418, v419, v420;
                  v422 = [v421 amount];

                  v233 = v1494;
LABEL_240:
                  [v403 setInstallmentAuthorizationAmount_];

                  v939 = *(v53 + v233);
                  v946 = sub_1BD1FFD7C(1, v222, v940, v941, v942, v943, v944, v945);
                  v401 = v233;
                  v954 = sub_1BD3F0360(v946, v947, v948, v949, v950, v951, v952, v953);
                  v946, v955, v956, v957, v958, v959, v960, v961;
                  v962 = sub_1BE052724();
                  v954, v963, v964, v965, v966, v967, v968, v969;
                  [v939 setPaymentSummaryItems_];

LABEL_241:
                  v1494 = v32;
                  [*(v93 + v53) setPaymentService_];
                  [*(v93 + v53) setPaymentWebService_];
                  [*(v93 + v53) setAccountService_];
                  v970 = *(v93 + v53);
                  v971 = v1481;
                  [v970 setPeerPaymentService_];

                  v972 = *(v93 + v53);
                  v973 = objc_allocWithZone(MEMORY[0x1E69B8538]);
                  v974 = v972;
                  v975 = [v973 init];
                  [v974 setAggregateDictionary_];

                  v1480 = sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
                  sub_1BE051F94();
                  (*(v1486 + 104))(v1490, *MEMORY[0x1E69E8098], v1487);
                  *&v1511 = MEMORY[0x1E69E7CC0];
                  sub_1BD2000E0(&unk_1EBD35EB0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
                  v976 = v401;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D420, &qword_1BE0B9530);
                  sub_1BD0DE4F4(&unk_1EBD35F10, &unk_1EBD3D420, &qword_1BE0B9530, MEMORY[0x1E69E6328]);
                  sub_1BE053664();
                  v977 = sub_1BE052D74();
                  v978 = MEMORY[0x1E69E7D40];
                  *(v53 + *((*MEMORY[0x1E69E7D40] & *v53) + 0x88)) = v977;
                  v979 = *&v976[v53];
                  type metadata accessor for AddressManager();
                  swift_allocObject();
                  v980 = sub_1BD0E6090(v979, v977);
                  *(v53 + *((*v978 & *v53) + 0x80)) = v980;
                  v981 = *&v976[v53];
                  v982 = v53 + *((*v978 & *v53) + 0x60);
                  v983 = v1472;
                  v984 = v1475;
                  *v982 = v1472;
                  *(v982 + 1) = v984;
                  *(v982 + 1) = xmmword_1BE0B8E10;
                  *(v982 + 4) = v981;
                  *(v982 + 5) = v980;
                  v1491 = v983;
                  sub_1BE048964();
                  v985 = v984;
                  v986 = v981;
                  v987 = [v1495 clientAnalyticsParameters];
                  if (v987)
                  {
                    type metadata accessor for PKPaymentRequestClientAnalyticsParameters(0);
                    sub_1BD2000E0(&qword_1EBD38220, type metadata accessor for PKPaymentRequestClientAnalyticsParameters, &unk_1BE0B61A0);
                    v988 = sub_1BE052244();

                    v987 = sub_1BE052224();
                    v988, v989, v990, v991, v992, v993, v994, v995;
                  }

                  [(objc_class *)v985 setClientAnalyticsParameters:v987];

                  v1520 = *v982;
                  v1521 = *(v982 + 1);
                  v1522 = *(v982 + 2);
                  v996 = v1520;
                  v997 = v1522;
                  v1523 = *(&v1520 + 1);
                  v1524 = *(&v1521 + 1);
                  type metadata accessor for AuthenticatorModel(0);
                  swift_allocObject();
                  v998 = v996;
                  sub_1BD0DE19C(&v1523, &v1511, &qword_1EBD3D490, &unk_1BE0D42B0);
                  sub_1BD0DE19C(&v1524, &v1511, &qword_1EBD40150, &qword_1BE0C12A0);
                  v999 = v997;
                  sub_1BE048964();
                  v815 = sub_1BD83D0D4(&v1520, 2u, 0, 1);
                  v1000 = v985;
                  v1001 = MEMORY[0x1E69E7D40];
                  swift_beginAccess();
                  *&v1517 = v815;
                  sub_1BE048964();
                  sub_1BE04D874();
                  swift_endAccess();
                  v1002 = objc_allocWithZone(type metadata accessor for AuthenticatorWrapper(0));
                  v1003 = v1000;
                  v1490 = v1003;
                  v1004 = sub_1BE048964();
                  *(v53 + *((*v1001 & *v53) + 0x70)) = sub_1BD7F33EC(v1004, v1003);
                  v1517 = *v982;
                  v1518 = *(v982 + 1);
                  v1519 = *(v982 + 2);
                  v1005 = v1517;
                  v1006 = v1519;
                  v1525 = *(&v1517 + 1);
                  v1526[0] = *(&v1518 + 1);
                  type metadata accessor for AMPAuthorizationModel(0);
                  swift_allocObject();
                  v1007 = v1005;
                  sub_1BD0DE19C(&v1525, &v1511, &qword_1EBD3D490, &unk_1BE0D42B0);
                  sub_1BD0DE19C(v1526, &v1511, &qword_1EBD40150, &qword_1BE0C12A0);
                  v1008 = v1006;
                  sub_1BE048964();
                  v1009 = sub_1BD28BE10(&v1517);
                  swift_beginAccess();
                  v1510[0] = v1009;
                  sub_1BE04D874();
                  swift_endAccess();
                  v1010 = *&v1476[v53];
                  v1011 = type metadata accessor for PaymentAuthorizationServiceDelegate();
                  v1012 = objc_allocWithZone(v1011);
                  v1013 = v1491;
                  *&v1012[OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_stateMachine] = v1491;
                  *&v1012[OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_context] = v1010;
                  v1515.receiver = v1012;
                  v1515.super_class = v1011;
                  v830 = v1013;
                  sub_1BE048964();
                  *(v53 + *((*v1001 & *v53) + 0x98)) = objc_msgSendSuper2(&v1515, sel_init);
                  v1514.receiver = v53;
                  v831 = v1477;
                  v1514.super_class = v1477;
                  v832 = objc_msgSendSuper2(&v1514, sel_init);
LABEL_244:
                  v1014 = v832;
                  sub_1BE04BE34();
                  v1015 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  sub_1BD42B644(v1014, v1015);

                  v1496, v1016, v1017, v1018, v1019, v1020, v1021, v1022;
                  swift_unknownObjectRelease();

                  v815, v1023, v1024, v1025, v1026, v1027, v1028, v1029;
                  v1015, v1030, v1031, v1032, v1033, v1034, v1035, v1036;
                  v1037 = v1492;
                  v1492[3] = v831;
                  v1037[4] = sub_1BD0DE4F4(&qword_1EBD35F70, &unk_1EBD51FD0, qword_1BE0C1280, &unk_1BE0D5A38);
                  *v1037 = v1014;
                  sub_1BD0DE19C(v1516, v1510, &qword_1EBD3D498, &qword_1BE0C12A8);
                  v1038 = v1014;
                  sub_1BD7417CC(v1038, v1510, &v1511);
                  sub_1BD20014C();
                  v938 = sub_1BE0518D4();

                  sub_1BD0DE53C(v1516, &qword_1EBD3D498, &qword_1BE0C12A8);
                  return v938;
                }

                __break(1u);
                goto LABEL_266;
              }

LABEL_255:
              __break(1u);
              goto LABEL_256;
            }
          }

          else
          {
            v411 = *((v224 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v233 = v1494;
            if (v411)
            {
              goto LABEL_112;
            }
          }

          v224, v404, v405, v406, v407, v408, v409, v410;
          v422 = 0;
          goto LABEL_240;
        }
      }

      v82 = 1;
      goto LABEL_25;
    }

LABEL_70:
    v1480 = [objc_allocWithZone(MEMORY[0x1E69B8B88]) init];
    v1483 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
    v1479 = [objc_allocWithZone(MEMORY[0x1E69B9000]) init];
    v1484 = objc_opt_self();
    v1482 = [v1484 sharedService];
    if (!v1482)
    {
LABEL_300:
      __break(1u);
      goto LABEL_301;
    }

    v1481 = [objc_allocWithZone(MEMORY[0x1E69B8400]) init];
    v1476 = [objc_allocWithZone(MEMORY[0x1E69BC740]) init];
    v1478 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D4A8, &qword_1BE0C12B0);
    v53 = objc_allocWithZone(v1478);
    v246 = MEMORY[0x1E69E7D40];
    v247 = *((*MEMORY[0x1E69E7D40] & *v53) + 0x90);
    type metadata accessor for PaymentAuthorizationServiceContext();
    v248 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    *(v248 + 32) = 0;
    *(v247 + v53) = v248;
    v249 = *((*v246 & *v53) + 0xA0);
    sub_1BE04BE74();
    swift_unknownObjectRetain();
    v250 = a2;
    v251 = sub_1BE048964();
    *(v53 + v249) = MEMORY[0x1BFB38EF0](v251);
    v252 = *((*v246 & *v53) + 0xA8);
    LOBYTE(v1511) = 0;
    sub_1BE04D874();
    (v1494)[4](v53 + v252, v22, v1495);
    *(v53 + *((*v246 & *v53) + 0xB0)) = 0;
    *(v53 + *((*v246 & *v53) + 0xB8)) = 0;
    *(v53 + *((*v246 & *v53) + 0xC0)) = 0;
    *(v53 + *((*v246 & *v53) + 0xC8)) = 0;
    v1494 = [v250 request];
    v253 = (v53 + *((*v246 & *v53) + 0x78));
    swift_beginAccess();
    sub_1BE04CDA4();
    sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
    sub_1BE048964();
    v93 = v250;
    *v253 = sub_1BE04E954();
    v253[1] = v254;
    swift_endAccess();
    v32 = *((*v246 & *v53) + 0xD8);
    v255 = v1480;
    *&v32[v53] = v1480;
    v256 = *(v247 + v53);
    v257 = v255;
    sub_1BE048964();
    v258 = [v250 presenter];
    swift_unknownObjectWeakAssign();
    v256, v259, v260, v261, v262, v263, v264, v265;
    swift_unknownObjectRelease();
    v1477 = v247;
    swift_unknownObjectWeakAssign();
    v266 = [v1484 sharedService];
    if (!v266)
    {
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
      goto LABEL_303;
    }

    v267 = v266;
    v1474 = v257;
    v268 = [v266 context];

    v269 = [v268 configuration];
    v270 = [v269 contactFormatConfiguration];
    if (v270)
    {
      v1484 = [objc_allocWithZone(MEMORY[0x1E69B8730]) initWithConfiguration_];
    }

    else
    {
      v1484 = 0;
    }

    v271 = v1494;
    v1475 = v270;
    v272 = [objc_allocWithZone(MEMORY[0x1E69B8B68]) initWithMode_];
    if (!v272)
    {
      goto LABEL_302;
    }

    v273 = *((*MEMORY[0x1E69E7D40] & *v53) + 0xD0);
    *&v273[v53] = v272;
    v274 = v272;
    v1480 = v1479;
    [v274 setPeerPaymentService_];
    v275 = *&v273[v53];
    v276 = [(objc_class *)v93 applicationIdentifier];
    v1495 = v273;
    if (!v276)
    {
      sub_1BE052434();
      v278 = v277;
      v276 = sub_1BE052404();
      v279 = v278;
      v273 = v1495;
      v279, v280, v281, v282, v283, v284, v285, v286;
    }

    [v275 setHostApplicationIdentifier_];

    v287 = *&v273[v53];
    v288 = [(objc_class *)v93 localizedApplicationName];
    if (!v288)
    {
      sub_1BE052434();
      v290 = v289;
      v288 = sub_1BE052404();
      v291 = v290;
      v273 = v1495;
      v291, v292, v293, v294, v295, v296, v297, v298;
    }

    [v287 setHostAppLocalizedName_];

    v299 = *&v273[v53];
    v300 = [(objc_class *)v93 bundleIdentifier];
    if (!v300)
    {
      sub_1BE052434();
      v302 = v301;
      v300 = sub_1BE052404();
      v303 = v302;
      v273 = v1495;
      v303, v304, v305, v306, v307, v308, v309, v310;
    }

    [v299 setBundleIdentifier_];

    v311 = *&v273[v53];
    v312 = [(objc_class *)v93 relevantPassUniqueID];
    if (!v312)
    {
      sub_1BE052434();
      v314 = v313;
      v312 = sub_1BE052404();
      v315 = v314;
      v273 = v1495;
      v315, v316, v317, v318, v319, v320, v321, v322;
    }

    [v311 setRelevantPassUniqueID_];

    [*&v273[v53] setContactFormatValidator_];
    [*&v273[v53] setSupportsEmptyPass_];
    v323 = *&v273[v53];
    v324 = [(objc_class *)v93 presenter];
    if (v324)
    {
      v325 = [v324 isIssuerInstallmentsRepayment];
      swift_unknownObjectRelease();
    }

    else
    {
      v325 = 0;
    }

    v1479 = v269;
    [v323 setPresenterIsIssuerInstallmentsRepayment_];

    [*&v1495[v53] setPaymentRequest_];
    if ([v271 requestType] != 5)
    {
LABEL_235:
      v1473 = v93;
      [*&v32[v53] setPaymentService_];
      [*&v32[v53] setPaymentWebService_];
      [*&v32[v53] setAccountService_];
      v864 = *&v32[v53];
      v865 = v1480;
      [v864 setPeerPaymentService_];

      v866 = *&v32[v53];
      v867 = objc_allocWithZone(MEMORY[0x1E69B8538]);
      v868 = v866;
      v869 = [v867 init];
      [v868 setAggregateDictionary_];

      sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
      sub_1BE051F94();
      (*(v1486 + 104))(v1490, *MEMORY[0x1E69E8098], v1487);
      *&v1511 = MEMORY[0x1E69E7CC0];
      sub_1BD2000E0(&unk_1EBD35EB0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D420, &qword_1BE0B9530);
      sub_1BD0DE4F4(&unk_1EBD35F10, &unk_1EBD3D420, &qword_1BE0B9530, MEMORY[0x1E69E6328]);
      sub_1BE053664();
      v870 = sub_1BE052D74();
      v871 = MEMORY[0x1E69E7D40];
      *(v53 + *((*MEMORY[0x1E69E7D40] & *v53) + 0x88)) = v870;
      v872 = v1495;
      v873 = *&v1495[v53];
      type metadata accessor for AddressManager();
      swift_allocObject();
      v874 = sub_1BD0E6090(v873, v870);
      *(v53 + *((*v871 & *v53) + 0x80)) = v874;
      v875 = *&v872[v53];
      v876 = v53 + *((*v871 & *v53) + 0x60);
      v877 = v1474;
      v878 = v1476;
      *v876 = v1474;
      *(v876 + 1) = v878;
      *(v876 + 1) = xmmword_1BE0B8E10;
      *(v876 + 4) = v875;
      *(v876 + 5) = v874;
      v879 = v877;
      sub_1BE048964();
      v880 = v878;
      v881 = v875;
      v882 = [v1494 clientAnalyticsParameters];
      v1495 = v879;
      if (v882)
      {
        type metadata accessor for PKPaymentRequestClientAnalyticsParameters(0);
        sub_1BD2000E0(&qword_1EBD38220, type metadata accessor for PKPaymentRequestClientAnalyticsParameters, &unk_1BE0B61A0);
        v883 = sub_1BE052244();

        v882 = sub_1BE052224();
        v883, v884, v885, v886, v887, v888, v889, v890;
      }

      [v880 setClientAnalyticsParameters_];

      v1511 = *v876;
      v1512 = *(v876 + 1);
      v1513 = *(v876 + 2);
      v891 = v1511;
      v892 = v1513;
      v1525 = *(&v1511 + 1);
      v1526[0] = *(&v1512 + 1);
      type metadata accessor for AuthenticatorModel(0);
      swift_allocObject();
      v893 = v891;
      sub_1BD0DE19C(&v1525, &v1520, &qword_1EBD3D490, &unk_1BE0D42B0);
      sub_1BD0DE19C(v1526, &v1520, &qword_1EBD40150, &qword_1BE0C12A0);
      v894 = v892;
      sub_1BE048964();
      v895 = sub_1BD83D0D4(&v1511, 2u, 0, 1);
      v896 = v880;
      v897 = MEMORY[0x1E69E7D40];
      swift_beginAccess();
      *&v1517 = v895;
      sub_1BE048964();
      sub_1BE04D874();
      swift_endAccess();
      v898 = objc_allocWithZone(type metadata accessor for AuthenticatorWrapper(0));
      v899 = v896;
      v1491 = v899;
      v900 = sub_1BE048964();
      *(v53 + *((*v897 & *v53) + 0x70)) = sub_1BD7F33EC(v900, v899);
      v1520 = *v876;
      v1521 = *(v876 + 1);
      v1522 = *(v876 + 2);
      v1510[0] = *(&v1520 + 1);
      v901 = v1520;
      v902 = v1522;
      v1516[0] = *(&v1521 + 1);
      type metadata accessor for ExternalAuthorizationModel(0);
      swift_allocObject();
      v903 = v901;
      sub_1BD0DE19C(v1510, &v1517, &qword_1EBD3D490, &unk_1BE0D42B0);
      sub_1BD0DE19C(v1516, &v1517, &qword_1EBD40150, &qword_1BE0C12A0);
      v904 = v902;
      sub_1BE048964();
      v905 = sub_1BD80A550(&v1520);
      swift_beginAccess();
      v1524 = v905;
      sub_1BE04D874();
      swift_endAccess();
      v906 = *(v1477 + v53);
      v907 = type metadata accessor for PaymentAuthorizationServiceDelegate();
      v908 = objc_allocWithZone(v907);
      v909 = v1495;
      *&v908[OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_stateMachine] = v1495;
      *&v908[OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_context] = v906;
      v1509.receiver = v908;
      v1509.super_class = v907;
      v910 = v909;
      sub_1BE048964();
      *(v53 + *((*v897 & *v53) + 0x98)) = objc_msgSendSuper2(&v1509, sel_init);
      v911 = v1478;
      v1508.receiver = v53;
      v1508.super_class = v1478;
      v912 = objc_msgSendSuper2(&v1508, sel_init);
      sub_1BE04BE34();
      v913 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1BD42B71C(v912, v913);

      v914 = v1473;
      v1496, v915, v916, v917, v918, v919, v920, v921;
      swift_unknownObjectRelease();

      v895, v922, v923, v924, v925, v926, v927, v928;
      v913, v929, v930, v931, v932, v933, v934, v935;
      v936 = v1492;
      v1492[3] = v911;
      v936[4] = sub_1BD0DE4F4(&qword_1EBD3D4B0, &qword_1EBD3D4A8, &qword_1BE0C12B0, &unk_1BE0D5A38);
      *v936 = v912;
      v937 = v912;
      v938 = sub_1BD1FF240(v1485, v914, v937);

      return v938;
    }

    v326 = [v271 paymentSummaryItems];
    v148 = sub_1BD0E5E8C(0, &qword_1EBD3D4A0, 0x1E69B8E90);
    v222 = sub_1BE052744();

    v233 = *&v1495[v53];
    v25 = [v271 paymentSummaryItems];
    v224 = sub_1BE052744();

    if (!(v224 >> 62))
    {
      v334 = *((v224 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v334)
      {
LABEL_233:
        v224, v327, v328, v329, v330, v331, v332, v333;
        v345 = 0;
        goto LABEL_234;
      }

LABEL_90:
      v234 = __OFSUB__(v334, 1);
      v335 = v334 - 1;
      if (v234)
      {
        __break(1u);
      }

      else if ((v224 & 0xC000000000000001) == 0)
      {
        if ((v335 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v335 < *((v224 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v336 = *(v224 + 8 * v335 + 32);
LABEL_95:
          v344 = v336;
          v224, v337, v338, v339, v340, v341, v342, v343;
          v345 = [v344 amount];

LABEL_234:
          [v233 setInstallmentAuthorizationAmount_];

          v833 = *&v1495[v53];
          v840 = sub_1BD1FFD7C(1, v222, v834, v835, v836, v837, v838, v839);
          v848 = sub_1BD3F0360(v840, v841, v842, v843, v844, v845, v846, v847);
          v840, v849, v850, v851, v852, v853, v854, v855;
          v856 = sub_1BE052724();
          v848, v857, v858, v859, v860, v861, v862, v863;
          [v833 setPaymentSummaryItems_];

          goto LABEL_235;
        }

        __break(1u);
        goto LABEL_255;
      }

      v336 = MEMORY[0x1BFB40900](v335, v224);
      goto LABEL_95;
    }

LABEL_232:
    v334 = sub_1BE053704();
    if (!v334)
    {
      goto LABEL_233;
    }

    goto LABEL_90;
  }

  switch(v24)
  {
    case 0:
      goto LABEL_30;
    case 1:
      goto LABEL_20;
    case 2:
      v1479 = [objc_allocWithZone(MEMORY[0x1E69B8B88]) init];
      v1485 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
      v1478 = [objc_allocWithZone(MEMORY[0x1E69B9000]) init];
      v1480 = objc_opt_self();
      v1482 = [(objc_class *)v1480 sharedService];
      if (!v1482)
      {
LABEL_309:
        __break(1u);
        goto LABEL_310;
      }

      v1481 = [objc_allocWithZone(MEMORY[0x1E69B8400]) init];
      v1475 = [objc_allocWithZone(MEMORY[0x1E69BC740]) init];
      v1477 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D500, &qword_1BE0C12D0);
      v25 = objc_allocWithZone(v1477);
      v26 = MEMORY[0x1E69E7D40];
      v27 = *((*MEMORY[0x1E69E7D40] & *v25) + 0x90);
      type metadata accessor for PaymentAuthorizationServiceContext();
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      *(v28 + 32) = 0;
      *&v27[v25] = v28;
      v29 = *((*v26 & *v25) + 0xA0);
      sub_1BE04BE74();
      swift_unknownObjectRetain();
      v30 = a2;
      v31 = sub_1BE048964();
      *(v25 + v29) = MEMORY[0x1BFB38EF0](v31);
      v32 = v30;
      v33 = *((*v26 & *v25) + 0xA8);
      LOBYTE(v1511) = 0;
      sub_1BE04D874();
      (v1494)[4](v25 + v33, v22, v1495);
      *(v25 + *((*v26 & *v25) + 0xB0)) = 0;
      *(v25 + *((*v26 & *v25) + 0xB8)) = 0;
      *(v25 + *((*v26 & *v25) + 0xC0)) = 0;
      *(v25 + *((*v26 & *v25) + 0xC8)) = 0;
      v1495 = [v30 request];
      v34 = (v25 + *((*v26 & *v25) + 0x78));
      swift_beginAccess();
      sub_1BE04CDA4();
      sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
      sub_1BE048964();
      *v34 = sub_1BE04E954();
      v34[1] = v35;
      swift_endAccess();
      v36 = *((*v26 & *v25) + 0xD8);
      v37 = v1479;
      *(v36 + v25) = v1479;
      v38 = *&v27[v25];
      v39 = v37;
      sub_1BE048964();
      v40 = [v32 presenter];
      swift_unknownObjectWeakAssign();
      v38, v41, v42, v43, v44, v45, v46, v47;
      swift_unknownObjectRelease();
      v1476 = v27;
      swift_unknownObjectWeakAssign();
      v48 = [(objc_class *)v1480 sharedService];
      if (!v48)
      {
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
        goto LABEL_312;
      }

      v49 = v48;
      v50 = [v48 context];

      v51 = [v50 configuration];
      v1474 = v51;
      v52 = [(objc_class *)v51 contactFormatConfiguration];
      if (v52)
      {
        v1494 = [objc_allocWithZone(MEMORY[0x1E69B8730]) initWithConfiguration_];
      }

      else
      {
        v1494 = 0;
      }

      v1472 = v39;
      v1473 = v52;
      v526 = [objc_allocWithZone(MEMORY[0x1E69B8B68]) initWithMode_];
      if (!v526)
      {
        goto LABEL_311;
      }

      v527 = *((*MEMORY[0x1E69E7D40] & *v25) + 0xD0);
      *(v527 + v25) = v526;
      v528 = v526;
      v1480 = v1478;
      [v528 setPeerPaymentService_];
      v529 = *(v527 + v25);
      v530 = [v32 applicationIdentifier];
      if (!v530)
      {
        sub_1BE052434();
        v532 = v531;
        v530 = sub_1BE052404();
        v532, v533, v534, v535, v536, v537, v538, v539;
      }

      [v529 setHostApplicationIdentifier_];

      v540 = *(v527 + v25);
      v541 = [v32 localizedApplicationName];
      if (!v541)
      {
        sub_1BE052434();
        v543 = v542;
        v541 = sub_1BE052404();
        v543, v544, v545, v546, v547, v548, v549, v550;
      }

      [v540 setHostAppLocalizedName_];

      v551 = *(v527 + v25);
      v552 = [v32 bundleIdentifier];
      if (!v552)
      {
        sub_1BE052434();
        v554 = v553;
        v552 = sub_1BE052404();
        v554, v555, v556, v557, v558, v559, v560, v561;
      }

      [v551 setBundleIdentifier_];

      v562 = *(v527 + v25);
      v563 = [v32 relevantPassUniqueID];
      if (!v563)
      {
        sub_1BE052434();
        v565 = v564;
        v563 = sub_1BE052404();
        v565, v566, v567, v568, v569, v570, v571, v572;
      }

      [v562 setRelevantPassUniqueID_];

      [*(v527 + v25) setContactFormatValidator_];
      [*(v527 + v25) setSupportsEmptyPass_];
      v148 = v527;
      v573 = *(v527 + v25);
      v574 = [v32 presenter];
      v93 = v36;
      if (v574)
      {
        v575 = [v574 isIssuerInstallmentsRepayment];
        swift_unknownObjectRelease();
      }

      else
      {
        v575 = 0;
      }

      v479 = v1485;
      [v573 setPresenterIsIssuerInstallmentsRepayment_];

      v1479 = v148;
      v53 = v1495;
      [*(v148 + v25) setPaymentRequest_];
      if ([v53 requestType] != 5)
      {
        goto LABEL_259;
      }

      v576 = [v53 paymentSummaryItems];
      sub_1BD0E5E8C(0, &qword_1EBD3D4A0, 0x1E69B8E90);
      v222 = sub_1BE052744();

      v224 = *&v1479[v25];
      v577 = [v53 paymentSummaryItems];
      v233 = sub_1BE052744();

      if (!(v233 >> 62))
      {
        v585 = *((v233 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v479 = v1485;
        if (v585)
        {
          goto LABEL_166;
        }

        goto LABEL_257;
      }

LABEL_256:
      v585 = sub_1BE053704();
      v479 = v1485;
      if (v585)
      {
LABEL_166:
        v234 = __OFSUB__(v585, 1);
        v586 = v585 - 1;
        if (v234)
        {
          __break(1u);
        }

        else if ((v233 & 0xC000000000000001) == 0)
        {
          if ((v586 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v586 < *((v233 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v587 = *(v233 + 8 * v586 + 32);
LABEL_171:
            v595 = v587;
            v233, v588, v589, v590, v591, v592, v593, v594;
            v596 = [v595 amount];

            v479 = v1485;
LABEL_258:
            [v224 setInstallmentAuthorizationAmount_];

            v1145 = *(v148 + v25);
            v1152 = sub_1BD1FFD7C(1, v222, v1146, v1147, v1148, v1149, v1150, v1151);
            v1160 = sub_1BD3F0360(v1152, v1153, v1154, v1155, v1156, v1157, v1158, v1159);
            v1152, v1161, v1162, v1163, v1164, v1165, v1166, v1167;
            v1168 = sub_1BE052724();
            v1160, v1169, v1170, v1171, v1172, v1173, v1174, v1175;
            [v1145 setPaymentSummaryItems_];

            v53 = v1495;
LABEL_259:
            v1478 = v32;
            [*(v93 + v25) setPaymentService_];
            [*(v93 + v25) setPaymentWebService_];
            [*(v93 + v25) setAccountService_];
            v1176 = *(v93 + v25);
            v1177 = v1480;
            [v1176 setPeerPaymentService_];

            v1178 = *(v93 + v25);
            v1179 = objc_allocWithZone(MEMORY[0x1E69B8538]);
            v1180 = v1178;
            v1181 = [v1179 init];
            [v1180 setAggregateDictionary_];

            v1471 = sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
            sub_1BE051F94();
            (*(v1486 + 104))(v1490, *MEMORY[0x1E69E8098], v1487);
            *&v1511 = MEMORY[0x1E69E7CC0];
            sub_1BD2000E0(&unk_1EBD35EB0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D420, &qword_1BE0B9530);
            sub_1BD0DE4F4(&unk_1EBD35F10, &unk_1EBD3D420, &qword_1BE0B9530, MEMORY[0x1E69E6328]);
            sub_1BE053664();
            v1182 = sub_1BE052D74();
            v1183 = MEMORY[0x1E69E7D40];
            *(v25 + *((*MEMORY[0x1E69E7D40] & *v25) + 0x88)) = v1182;
            v1184 = v1479;
            v1185 = *&v1479[v25];
            type metadata accessor for AddressManager();
            swift_allocObject();
            v1186 = sub_1BD0E6090(v1185, v1182);
            *(v25 + *((*v1183 & *v25) + 0x80)) = v1186;
            v1187 = *(v1184 + v25);
            v1188 = v25 + *((*v1183 & *v25) + 0x60);
            v1189 = v1472;
            v1190 = v1475;
            *v1188 = v1472;
            *(v1188 + 1) = v1190;
            *(v1188 + 1) = xmmword_1BE0B8E10;
            *(v1188 + 4) = v1187;
            *(v1188 + 5) = v1186;
            v1491 = v1189;
            sub_1BE048964();
            v1191 = v1190;
            v1192 = v1187;
            v1193 = [v53 clientAnalyticsParameters];
            if (v1193)
            {
              type metadata accessor for PKPaymentRequestClientAnalyticsParameters(0);
              sub_1BD2000E0(&qword_1EBD38220, type metadata accessor for PKPaymentRequestClientAnalyticsParameters, &unk_1BE0B61A0);
              v1194 = sub_1BE052244();

              v1193 = sub_1BE052224();
              v1194, v1195, v1196, v1197, v1198, v1199, v1200, v1201;
            }

            [(objc_class *)v1191 setClientAnalyticsParameters:v1193];

            v1511 = *v1188;
            v1512 = *(v1188 + 1);
            v1513 = *(v1188 + 2);
            v1202 = v1511;
            v1203 = v1513;
            v1525 = *(&v1511 + 1);
            v1526[0] = *(&v1512 + 1);
            type metadata accessor for AuthenticatorModel(0);
            swift_allocObject();
            v1204 = v1202;
            sub_1BD0DE19C(&v1525, &v1520, &qword_1EBD3D490, &unk_1BE0D42B0);
            sub_1BD0DE19C(v1526, &v1520, &qword_1EBD40150, &qword_1BE0C12A0);
            v1205 = v1203;
            sub_1BE048964();
            v1206 = sub_1BD83D0D4(&v1511, 2u, 0, 1);
            v1207 = v1191;
            v1208 = MEMORY[0x1E69E7D40];
            swift_beginAccess();
            *&v1517 = v1206;
            sub_1BE048964();
            sub_1BE04D874();
            swift_endAccess();
            v1209 = objc_allocWithZone(type metadata accessor for AuthenticatorWrapper(0));
            v1210 = v1207;
            v1490 = v1210;
            v1211 = sub_1BE048964();
            *(v25 + *((*v1208 & *v25) + 0x70)) = sub_1BD7F33EC(v1211, v1210);
            v1520 = *v1188;
            v1521 = *(v1188 + 1);
            v1522 = *(v1188 + 2);
            v1510[0] = *(&v1520 + 1);
            v1212 = v1520;
            v1213 = v1522;
            v1516[0] = *(&v1521 + 1);
            type metadata accessor for AccountServiceAuthorizationModel(0);
            swift_allocObject();
            v1214 = v1212;
            sub_1BD0DE19C(v1510, &v1517, &qword_1EBD3D490, &unk_1BE0D42B0);
            sub_1BD0DE19C(v1516, &v1517, &qword_1EBD40150, &qword_1BE0C12A0);
            v1215 = v1213;
            sub_1BE048964();
            v1216 = sub_1BD3ED280(&v1520);
            swift_beginAccess();
            v1524 = v1216;
            sub_1BE04D874();
            swift_endAccess();
            v1217 = *&v1476[v25];
            v1218 = type metadata accessor for PaymentAuthorizationServiceDelegate();
            v1219 = objc_allocWithZone(v1218);
            v1220 = v1491;
            *&v1219[OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_stateMachine] = v1491;
            *&v1219[OBJC_IVAR____TtC9PassKitUI35PaymentAuthorizationServiceDelegate_context] = v1217;
            v1499.receiver = v1219;
            v1499.super_class = v1218;
            v1221 = v1220;
            sub_1BE048964();
            *(v25 + *((*v1208 & *v25) + 0x98)) = objc_msgSendSuper2(&v1499, sel_init);
            v1222 = v1477;
            v1498.receiver = v25;
            v1498.super_class = v1477;
            v1223 = objc_msgSendSuper2(&v1498, sel_init);
            sub_1BE04BE34();
            v1224 = swift_allocObject();
            swift_unknownObjectWeakInit();
            sub_1BD42B5B4(v1223, v1224);

            v1496, v1225, v1226, v1227, v1228, v1229, v1230, v1231;
            swift_unknownObjectRelease();

            v1206, v1232, v1233, v1234, v1235, v1236, v1237, v1238;
            v1224, v1239, v1240, v1241, v1242, v1243, v1244, v1245;
            v1246 = v1492;
            v1492[3] = v1222;
            v1246[4] = sub_1BD0DE4F4(&qword_1EBD3D508, &qword_1EBD3D500, &qword_1BE0C12D0, &unk_1BE0D5A38);
            *v1246 = v1223;
            v1141 = v1223;
            sub_1BD0E959C(v1141, v1483);
            v1142 = &unk_1EBD3D510;
            v1143 = type metadata accessor for AccountServiceSheet;
            v1144 = &unk_1BE0B73C4;
LABEL_262:
            sub_1BD2000E0(v1142, v1143, v1144);
LABEL_276:
            v938 = sub_1BE0518D4();

LABEL_277:
            return v938;
          }

          __break(1u);
          goto LABEL_283;
        }

        v587 = MEMORY[0x1BFB40900](v586, v233);
        goto LABEL_171;
      }

LABEL_257:
      v233, v578, v579, v580, v581, v582, v583, v584;
      v596 = 0;
      goto LABEL_258;
  }

LABEL_318:
  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD1FF240(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D518, &qword_1BE0C12D8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v118 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D520, &qword_1BE0C12E0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v118 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D528, &qword_1BE0C12E8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v118 - v15);
  sub_1BD1FF9E0(a2, &v122);
  if (*(&v123 + 1))
  {
    sub_1BD043990(&v122, v125);
    *(&v123 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D4A8, &qword_1BE0C12B0);
    v124 = sub_1BD0DE4F4(&unk_1EBD3D530, &qword_1EBD3D4A8, &qword_1BE0C12B0, &unk_1BE0D59B8);
    *&v122 = a3;
    MEMORY[0x1EEE9AC00](v124);
    v17 = type metadata accessor for ExternalAuthorizationModel(0);
    *(&v118 - 2) = v17;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v118 - 2) = v17;
    v19 = swift_getKeyPath();
    v20 = a3;
    sub_1BE04D8B4(v121);
    KeyPath, v21, v22, v23, v24, v25, v26, v27;
    v19, v28, v29, v30, v31, v32, v33, v34;
    v35 = v121[0];
    sub_1BD1F4FD4(&v122, v121[0], v125, v7);
    v35, v36, v37, v38, v39, v40, v41, v42;
    __swift_destroy_boxed_opaque_existential_0(&v122, v43, v44, v45, v46, v47, v48, v49);
    sub_1BD200254();
    v50 = sub_1BE0518D4();
    __swift_destroy_boxed_opaque_existential_0(v125, v51, v52, v53, v54, v55, v56, v57);
    return v50;
  }

  else
  {
    sub_1BD0DE53C(&v122, &qword_1EBD3D498, &qword_1BE0C12A8);
    v125[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D4A8, &qword_1BE0C12B0);
    v126 = sub_1BD0DE4F4(&unk_1EBD3D530, &qword_1EBD3D4A8, &qword_1BE0C12B0, &unk_1BE0D59B8);
    v125[0] = a3;
    MEMORY[0x1EEE9AC00](v126);
    v59 = type metadata accessor for ExternalAuthorizationModel(0);
    *(&v118 - 2) = v59;
    v60 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v60);
    *(&v118 - 2) = v59;
    v61 = swift_getKeyPath();
    v62 = a3;
    sub_1BE04D8B4(&v122);
    v60, v63, v64, v65, v66, v67, v68, v69;
    v61, v70, v71, v72, v73, v74, v75, v76;
    v77 = v122;
    v120 = swift_allocObject();
    *(v120 + 16) = v62;
    v119 = swift_allocObject();
    *(v119 + 16) = v62;
    sub_1BE04CDA4();
    sub_1BD2000E0(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
    v118 = v62;
    v16[4] = sub_1BE04EEC4();
    v16[5] = v78;
    v124 = 0;
    v122 = 0u;
    v123 = 0u;
    sub_1BD0DE19C(&v122, v121, &qword_1EBD51EC0, &qword_1BE0B7120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0, &qword_1BE0B7120);
    sub_1BE051694();
    sub_1BD0DE53C(&v122, &qword_1EBD51EC0, &qword_1BE0B7120);
    v79 = sub_1BE04C614();
    (*(*(v79 - 8) + 56))(v13, 1, 1, v79);
    sub_1BD0DE19C(v13, v10, &qword_1EBD3D520, &qword_1BE0C12E0);
    sub_1BE051694();
    sub_1BD0DE53C(v13, &qword_1EBD3D520, &qword_1BE0C12E0);
    v80 = *(v14 + 108);
    *(v16 + v80) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
    swift_storeEnumTagMultiPayload();
    v81 = v16 + *(v14 + 112);
    *v81 = swift_getKeyPath();
    v81[8] = 0;
    sub_1BD2000E0(&qword_1EBD3A280, type metadata accessor for ExternalAuthorizationModel, MEMORY[0x1E69BCA10]);
    sub_1BE048964();
    *v16 = sub_1BE04E954();
    v16[1] = v82;
    v83 = sub_1BD0EE8CC(v125, (v16 + 6));
    MEMORY[0x1EEE9AC00](v83);
    *(&v118 - 2) = v59;
    v84 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v84);
    *(&v118 - 2) = v59;
    v85 = swift_getKeyPath();
    sub_1BE04D8B4(&v122);
    v84, v86, v87, v88, v89, v90, v91, v92;
    v85, v93, v94, v95, v96, v97, v98, v99;
    type metadata accessor for AuthenticatorModel(0);
    sub_1BD2000E0(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
    v100 = sub_1BE04E954();
    v102 = v101;
    v77, v101, v103, v104, v105, v106, v107, v108;
    v16[2] = v100;
    v16[3] = v102;
    v16[11] = 0;
    v16[12] = 0;
    v109 = v119;
    v110 = v120;
    v16[13] = sub_1BD2001F4;
    v16[14] = v110;
    v16[15] = sub_1BD200224;
    v16[16] = v109;
    __swift_destroy_boxed_opaque_existential_0(v125, v111, v112, v113, v114, v115, v116, v117);
    sub_1BD0DE4F4(&qword_1EBD3D548, &qword_1EBD3D528, &qword_1BE0C12E8, &unk_1BE0BA140);
    return sub_1BE0518D4();
  }
}

void sub_1BD1FF9E0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = [a1 request];
  v3 = [v22 clientViewSourceIdentifier];
  if (!v3)
  {

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v4 = v3;
  v5 = sub_1BE052434();
  v7 = v6;

  v8 = v5 == 0xD00000000000001DLL && 0x80000001BE11DBC0 == v7;
  if (!v8 && (sub_1BE053B84() & 1) == 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  [objc_opt_self() softLink];
  v9 = sub_1BE052404();
  v10 = NSClassFromString(v9);

  if (!v10)
  {
    goto LABEL_15;
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  v12 = swift_conformsToProtocol2();
  if (!v12 || !ObjCClassMetadata)
  {
    goto LABEL_15;
  }

  v20 = v12;
  v7, v13, v14, v15, v16, v17, v18, v19;
  v21 = [v22 clientViewSourceParameter];
  *(a2 + 24) = ObjCClassMetadata;
  *(a2 + 32) = v20;
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_1BE04C844();
}

uint64_t sub_1BD1FFBA0@<X0>(uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ExternalAuthorizationModel(0);
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  sub_1BE04D8B4(&v22);
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v6, v14, v15, v16, v17, v18, v19, v20;
  result = a2(v22);
  *a3 = result;
  return result;
}

id PaymentRequestViewInterfaceFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PaymentRequestViewInterfaceFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaymentRequestViewInterfaceFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PaymentRequestViewInterfaceFactory.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PaymentRequestViewInterfaceFactory();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BD1FFD2C@<X0>(uint64_t *a2@<X8>)
{
  sub_1BD0E5E8C(0, &qword_1EBD35E30, 0x1E69B8E80);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

unint64_t sub_1BD1FFD7C(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if (a1 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v8 = a2;
  v9 = a1;
  if (a1)
  {
    v48 = MEMORY[0x1E69E7CC0];
    v49 = MEMORY[0x1E69E7CC0];
    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    if (!(a2 >> 62))
    {
      v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_5;
      }

      goto LABEL_29;
    }

LABEL_28:
    v11 = sub_1BE053704();
    if (v11)
    {
LABEL_5:
      v12 = 0;
      v47 = 0;
      while (1)
      {
        while (1)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x1BFB40900](v12, v8);
          }

          else
          {
            if (v12 >= *(v10 + 16))
            {
              goto LABEL_26;
            }

            v13 = *(v8 + 8 * v12 + 32);
          }

          v14 = v13;
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v16 = v48;
          v17 = v48[2];
          if (v17 >= v9)
          {
            break;
          }

          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
          ++v12;
          if (v15 == v11)
          {
            goto LABEL_29;
          }
        }

        if (v47 >= v17)
        {
          break;
        }

        v48[v47 + 4];
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1BD5F0648(v48);
          v48 = v16;
        }

        if (v47 >= *(v16 + 16))
        {
          goto LABEL_32;
        }

        v18 = v16 + 8 * v47;
        v19 = *(v18 + 32);
        *(v18 + 32) = v14;

        sub_1BE0538D4();
        if ((v47 + 1) < v9)
        {
          v20 = v47 + 1;
        }

        else
        {
          v20 = 0;
        }

        v47 = v20;
        v12 = v15;
        if (v15 == v11)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_29:
    v8, a2, a3, a4, a5, a6, a7, a8;
    v21 = v49;
    v48, v22, v23, v24, v25, v26, v27, v28;
    return v21;
  }

  if (!(a2 >> 62))
  {
    return a2 & 0xFFFFFFFFFFFFFF8;
  }

LABEL_33:
  v30 = sub_1BE053704();
  if (!v30)
  {
LABEL_36:
    v8, v31, v32, v33, v34, v35, v36, v37;
    return MEMORY[0x1E69E7CC0];
  }

  v38 = v30;
  v21 = sub_1BD1DED88();
  v39 = sub_1BDA7D768(v21 + 32, v38, v8);
  v8 = v40;
  v39, v41, v40, v42, v43, v44, v45, v46;
  if (v8 != v38)
  {
    __break(1u);
    goto LABEL_36;
  }

  return v21;
}

void sub_1BD1FFFE4(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD200064(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD2000E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD20014C()
{
  result = qword_1EBD35F50;
  if (!qword_1EBD35F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD35F50);
  }

  return result;
}

unint64_t sub_1BD2001A0()
{
  result = qword_1EBD3D4C8;
  if (!qword_1EBD3D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D4C8);
  }

  return result;
}

unint64_t sub_1BD200254()
{
  result = qword_1EBD3D550;
  if (!qword_1EBD3D550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D518, &qword_1BE0C12D8);
    sub_1BD2002E0();
    sub_1BD20052C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D550);
  }

  return result;
}

unint64_t sub_1BD2002E0()
{
  result = qword_1EBD3D558;
  if (!qword_1EBD3D558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D560, &qword_1BE0C1410);
    sub_1BD20036C();
    sub_1BD20044C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D558);
  }

  return result;
}

unint64_t sub_1BD20036C()
{
  result = qword_1EBD3D568;
  if (!qword_1EBD3D568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D570, &qword_1BE0C1418);
    sub_1BD0DE4F4(&qword_1EBD3D578, &qword_1EBD3D580, &qword_1BE0C1420, &unk_1BE0BA140);
    sub_1BD0DE4F4(&qword_1EBD3D588, &qword_1EBD3D590, &qword_1BE0C1428, &unk_1BE0BA140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D568);
  }

  return result;
}

unint64_t sub_1BD20044C()
{
  result = qword_1EBD3D598;
  if (!qword_1EBD3D598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D5A0, &qword_1BE0C1430);
    sub_1BD0DE4F4(&qword_1EBD3D5A8, &qword_1EBD3D5B0, &qword_1BE0C1438, &unk_1BE0BA140);
    sub_1BD0DE4F4(&qword_1EBD3D5B8, &qword_1EBD3D5C0, &qword_1BE0C1440, &unk_1BE0BA140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D598);
  }

  return result;
}

unint64_t sub_1BD20052C()
{
  result = qword_1EBD3D5C8;
  if (!qword_1EBD3D5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D5D0, &qword_1BE0C1448);
    sub_1BD2005B8();
    sub_1BD200698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D5C8);
  }

  return result;
}

unint64_t sub_1BD2005B8()
{
  result = qword_1EBD3D5D8;
  if (!qword_1EBD3D5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D5E0, &qword_1BE0C1450);
    sub_1BD0DE4F4(&qword_1EBD3D5E8, &qword_1EBD3D5F0, &qword_1BE0C1458, &unk_1BE0BA140);
    sub_1BD0DE4F4(&qword_1EBD3D5F8, &qword_1EBD3D600, &qword_1BE0C1460, &unk_1BE0BA140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D5D8);
  }

  return result;
}

unint64_t sub_1BD200698()
{
  result = qword_1EBD3D608;
  if (!qword_1EBD3D608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D610, &qword_1BE0C1468);
    sub_1BD0DE4F4(&qword_1EBD3D618, &qword_1EBD3D620, &unk_1BE0C1470, &unk_1BE0BA140);
    sub_1BD0DE4F4(&qword_1EBD3D628, &qword_1EBD3D630, &qword_1BE0BA348, &unk_1BE0BA140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D608);
  }

  return result;
}

uint64_t sub_1BD200778@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

unint64_t sub_1BD2007C0()
{
  result = qword_1EBD3D670;
  if (!qword_1EBD3D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D670);
  }

  return result;
}

void sub_1BD200908(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_method) strategy];
  if (v5 == 3)
  {
    *(v2 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_destination) = 1;
    goto LABEL_5;
  }

  if (v5 == 2)
  {
    *(v2 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_destination) = 0;
LABEL_5:
    a1(1);
    return;
  }

  v6 = *(v2 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_verificationController);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  v18[4] = sub_1BD201960;
  v19 = v8;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1BD126964;
  v18[3] = &block_descriptor_26;
  v9 = _Block_copy(v18);
  v10 = v19;
  sub_1BE048964();
  v10, v11, v12, v13, v14, v15, v16, v17;
  [v6 performStoreLookupForBankAppWithCompletion_];
  _Block_release(v9);
}

void sub_1BD200A80(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v5 = sub_1BE04AA64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if ([*(Strong + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_verificationController) isBankAppInstalled])
    {
      v10[OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_destination] = 2;
      a2(1);
    }

    else
    {
      v11 = [*&v10[OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_method] url];
      sub_1BE04A9F4();

      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      v13[2] = v12;
      v13[3] = a2;
      v13[4] = a3;
      v14 = objc_allocWithZone(MEMORY[0x1E6994678]);
      sub_1BE048964();
      sub_1BE048964();
      v15 = sub_1BE04A9C4();
      v16 = [v14 initWithURL_];

      v17 = swift_allocObject();
      *(v17 + 16) = sub_1BD20196C;
      *(v17 + 24) = v13;
      aBlock[4] = sub_1BD201978;
      v43 = v17;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD14E1D8;
      aBlock[3] = &block_descriptor_28;
      v18 = _Block_copy(aBlock);
      v19 = v43;
      sub_1BE048964();
      v19, v20, v21, v22, v23, v24, v25, v26;
      [v16 requestMetadataWithCompletion_];
      _Block_release(v18);

      v13, v27, v28, v29, v30, v31, v32, v33;
      (*(v6 + 8))(v8, v5);
      v12, v34, v35, v36, v37, v38, v39, v40;
    }
  }
}

void sub_1BD200D54(char a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a1)
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }

    *(Strong + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_destination) = v6;
    v7 = Strong;
    a3(1);
  }
}

void *sub_1BD200DDC(uint64_t a1)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04AA64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    return 0;
  }

  v13 = v9;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = *(v1 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_destination);
    switch(v15)
    {
      case 2:
        [*(v1 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_verificationController) launchBankApp];
        type metadata accessor for ProvisioningVerificationUniversalURLFlowSection.SystemViewFlowItem();
        v41 = swift_allocObject();
        v41[3] = 0;
        swift_unknownObjectWeakInit();

        result = v41;
        v41[4] = 0xD000000000000012;
        break;
      case 3:
        v19 = *(v1 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_context);
        v54 = *(v1 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_methodGroup);
        v20 = v54;
        v21 = *(v1 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_method);
        v22 = [v21 url];
        sub_1BE04A9F4();

        v23 = *(v1 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_verificationController);
        v56 = type metadata accessor for ProvisioningVerificationAppClipFlowItem(0);
        v24 = objc_allocWithZone(v56);
        swift_unknownObjectWeakInit();
        *&v24[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v25 = &v24[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_identifier];
        *v25 = 0xD00000000000001BLL;
        *(v25 + 1) = 0x80000001BE11DD40;
        *&v24[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_context] = v19;
        *&v24[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_methodGroup] = v20;
        *&v24[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_method] = v21;
        v26 = *(v8 + 16);
        v55 = v13;
        v26(&v24[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_url], v11, v13);
        *&v24[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_verificationController] = v23;
        swift_unknownObjectWeakAssign();
        sub_1BE052434();
        v28 = v27;
        v29 = v21;
        sub_1BE048964();
        v30 = v54;
        v31 = v23;
        v32 = sub_1BE04BB74();
        v28, v33, v34, v35, v36, v37, v38, v39;
        *&v24[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationAppClipFlowItem_reporter] = v32;
        v57.receiver = v24;
        v57.super_class = v56;
        v40 = objc_msgSendSuper2(&v57, sel_init);

        (*(v8 + 8))(v11, v55);
        return v40;
      case 4:
        sub_1BE04D0C4();
        v16 = sub_1BE04D204();
        v17 = sub_1BE052C34();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_1BD026000, v16, v17, "Attempted to handle universal link, but destination not set", v18, 2u);
          MEMORY[0x1BFB45F20](v18, -1, -1);
        }

        else
        {
        }

        (*(v4 + 8))(v6, v3);
        return 0;
      default:
        if (v15)
        {
          v42 = *(v1 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_context);
          v43 = *(v1 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_methodGroup);
          v44 = *(v1 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_method);
          v45 = *(v1 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_verificationController);
          v46 = type metadata accessor for ProvisioningVerificationURLFlowItem();
          v47 = objc_allocWithZone(v46);
          swift_unknownObjectWeakInit();
          *&v47[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_delegate + 8] = 0;
          swift_unknownObjectWeakInit();
          v48 = &v47[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_identifier];
          *v48 = 0xD000000000000017;
          *(v48 + 1) = 0x80000001BE11DD20;
          *&v47[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem__hasSeenMethodsScreen] = &type metadata for ProvisioningVerificationHasSeenMethodsScreenKey;
          *&v47[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_context] = v42;
          *&v47[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_methodGroup] = v43;
          *&v47[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_method] = v44;
          *&v47[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationURLFlowItem_verificationController] = v45;
          swift_unknownObjectWeakAssign();
          v58.receiver = v47;
          v58.super_class = v46;
          sub_1BE048964();
          v49 = v43;
          v50 = v44;
          v51 = v45;
          v52 = objc_msgSendSuper2(&v58, sel_init);

          return v52;
        }

        sub_1BD2013E8();
        type metadata accessor for ProvisioningVerificationUniversalURLFlowSection.SystemViewFlowItem();
        v41 = swift_allocObject();
        v41[3] = 0;
        swift_unknownObjectWeakInit();

        result = v41;
        v41[4] = 0xD000000000000012;
        break;
    }

    v41[5] = 0x80000001BE0C1560;
  }

  return result;
}

void sub_1BD2013E8()
{
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_context];
  v2 = *&v0[OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_verificationController];
  v3 = [v2 pass];
  if (v3)
  {
    v4 = v3;
    v5 = *&v0[OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_methodGroup];
    v6 = *&v0[OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_method];
    v7 = type metadata accessor for ProvisioningVerificationURLPerformController();
    v8 = objc_allocWithZone(v7);
    v9 = OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_authSession;
    *&v8[v9] = [objc_allocWithZone(PKWebAuthenticationSession) init];
    *&v8[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_window] = 0;
    *&v8[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_provisioningContext] = v1;
    *&v8[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_pass] = v4;
    *&v8[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_methodGroup] = v5;
    *&v8[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_method] = v6;
    *&v8[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationURLPerformController_verificationController] = v2;
    v15.receiver = v8;
    v15.super_class = v7;
    sub_1BE048964();
    v10 = v5;
    v11 = v6;
    v12 = v2;
    v13 = objc_msgSendSuper2(&v15, sel_init);
    v14 = v0;
    sub_1BD431770(v13, v14, v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD201558()
{
  sub_1BD0D4534(v0 + 16);
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ProvisioningVerificationUniversalURLFlowSection.URLDestination(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
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
    }

    else
    {
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

LABEL_19:
  v7 = *a1;
  if (*a1 >= 2u)
  {
    v8 = (v7 & 0xFE) + 2147483646;
    if ((v8 & 0x7FFFFFFE) != 0)
    {
      return (v8 & 0x7FFFFFFE | v7 & 1u) - 1;
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for ProvisioningVerificationUniversalURLFlowSection.URLDestination(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
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

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1BD201728(unsigned __int8 *a1)
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

_BYTE *sub_1BD201744(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_1BD20176C()
{
  v1 = *(v0 + 32);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD20179C(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD2017E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD201820(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD201870(uint64_t a1, char a2, uint64_t a3)
{
  v5 = a3 + OBJC_IVAR____TtC9PassKitUI47ProvisioningVerificationUniversalURLFlowSection_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (a2)
  {
    if (result)
    {
      v7 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      memset(v11, 0, sizeof(v11));
      v12 = 2;
      sub_1BD865A00(a3, &off_1F3B97738, v11, ObjectType, v7);
      swift_unknownObjectRelease();
      return sub_1BD12FF7C(v11);
    }
  }

  else if (result)
  {
    v9 = *(v5 + 8);
    v10 = swift_getObjectType();
    sub_1BD8659A4(a3, &off_1F3B97738, v10, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD201988@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = sub_1BE04F434();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D6B8, &qword_1BE0C1708);
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D6C0, &qword_1BE0C1710);
  v10 = *(v9 - 8);
  v28 = v9;
  v29 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  v31 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D6C8, &qword_1BE0C1718);
  sub_1BD0DE4F4(&qword_1EBD3D6D0, &qword_1EBD3D6C8, &qword_1BE0C1718, MEMORY[0x1E697CD20]);
  sub_1BE04E934();
  v35 = *v1;
  v32 = *v1;
  (*(v3 + 104))(v5, *MEMORY[0x1E697C438], v2);
  v13 = sub_1BD0DE4F4(&qword_1EBD3D6D8, &qword_1EBD3D6B8, &qword_1BE0C1708, MEMORY[0x1E697C0C0]);
  v14 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v15 = MEMORY[0x1E69E6158];
  sub_1BE050C94();
  (*(v3 + 8))(v5, v2);
  sub_1BD1BCDE4(&v35);
  (*(v27 + 8))(v8, v6);
  sub_1BE052434();
  v17 = v16;
  *&v32 = v6;
  *(&v32 + 1) = v15;
  v33 = v13;
  v34 = v14;
  swift_getOpaqueTypeConformance2();
  v18 = v28;
  sub_1BE050DE4();
  v17, v19, v20, v21, v22, v23, v24, v25;
  return (*(v29 + 8))(v12, v18);
}

uint64_t sub_1BD201D24(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D6E0, &qword_1BE0C1720);
  sub_1BD0DE4F4(&qword_1EBD3D6E8, &qword_1EBD3D6E0, &qword_1BE0C1720, MEMORY[0x1E6981F48]);
  return sub_1BE0504E4();
}

uint64_t sub_1BD201DC8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D6F0, &qword_1BE0C1728);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v16 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D6F8, &qword_1BE0C1730);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  sub_1BD201FB8((&v16 - v12));
  sub_1BD2022BC(v7);
  sub_1BD0DE19C(v13, v10, &qword_1EBD3D6F8, &qword_1BE0C1730);
  sub_1BD0DE19C(v7, v4, &qword_1EBD3D6F0, &qword_1BE0C1728);
  sub_1BD0DE19C(v10, a1, &qword_1EBD3D6F8, &qword_1BE0C1730);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D700, &qword_1BE0C1738);
  sub_1BD0DE19C(v4, a1 + *(v14 + 48), &qword_1EBD3D6F0, &qword_1BE0C1728);
  sub_1BD0DE53C(v7, &qword_1EBD3D6F0, &qword_1BE0C1728);
  sub_1BD0DE53C(v13, &qword_1EBD3D6F8, &qword_1BE0C1730);
  sub_1BD0DE53C(v4, &qword_1EBD3D6F0, &qword_1BE0C1728);
  return sub_1BD0DE53C(v10, &qword_1EBD3D6F8, &qword_1BE0C1730);
}

void sub_1BD201FB8(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D810, &qword_1BE0C1880);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D818, &qword_1BE0C1888);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - v9;
  if (*(*(v1 + 16) + 16))
  {
    v19[1] = a1;
    MEMORY[0x1EEE9AC00](v8);
    v19[-2] = v1;
    v11 = sub_1BE052404();
    v12 = PKLocalizedBankConnectString(v11);

    if (v12)
    {
      v13 = sub_1BE052434();
      v15 = v14;

      v20 = v13;
      v21 = v15;
      sub_1BD0DDEBC();
      v20 = sub_1BE0506C4();
      v21 = v16;
      v22 = v17 & 1;
      v23 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D820, &qword_1BE0C1890);
      sub_1BD2066F0(&qword_1EBD3D828, &qword_1EBD3D820, &qword_1BE0C1890, sub_1BD20676C);
      sub_1BE051A24();
      (*(v4 + 16))(v10, v6, v3);
      swift_storeEnumTagMultiPayload();
      sub_1BD2068A8();
      sub_1BE04F9A4();
      (*(v4 + 8))(v6, v3);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1BD2068A8();
    sub_1BE04F9A4();
  }
}

void sub_1BD2022BC(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D708, &qword_1BE0C1740);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D710, &qword_1BE0C1748);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - v9;
  if (*(*(v1 + 24) + 16))
  {
    v19[1] = v19;
    v19[2] = a1;
    MEMORY[0x1EEE9AC00](v8);
    v19[0] = &v19[-4];
    sub_1BD204240(v1, v24);
    v11 = sub_1BE052404();
    v12 = PKLocalizedBankConnectString(v11);

    if (v12)
    {
      v13 = sub_1BE052434();
      v15 = v14;

      v20 = v13;
      v21 = v15;
      sub_1BD0DDEBC();
      v20 = sub_1BE0506C4();
      v21 = v16;
      v22 = v17 & 1;
      v23 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D718, &qword_1BE0C1750);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D720, &qword_1BE0C1758);
      sub_1BD205EBC();
      sub_1BD2066F0(&qword_1EBD3D730, &qword_1EBD3D720, &qword_1BE0C1758, sub_1BD205F40);
      sub_1BE051A34();
      (*(v4 + 16))(v10, v6, v3);
      swift_storeEnumTagMultiPayload();
      sub_1BD206194();
      sub_1BE04F9A4();
      (*(v4 + 8))(v6, v3);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1BD206194();
    sub_1BE04F9A4();
  }
}

uint64_t sub_1BD202604(__int128 *a1)
{
  v2 = *(a1 + 3);
  v13 = *(a1 + 2);
  v12 = *a1;
  v11 = v2;
  v3 = *(a1 + 4);
  v8 = v13;
  v9 = v3;
  v10 = *(a1 + 40);
  v4 = swift_allocObject();
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  *(v4 + 41) = *(a1 + 25);
  sub_1BE048C84();
  sub_1BD0DE19C(&v13, v7, &qword_1EBD3D780, &qword_1BE0C1780);
  sub_1BD206260(&v12, v7);
  sub_1BD0DE19C(&v11, v7, &qword_1EBD3D780, &qword_1BE0C1780);
  sub_1BD0DE19C(&v9, v7, &qword_1EBD3D788, &qword_1BE0C1788);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D780, &qword_1BE0C1780);
  sub_1BE049D04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D838, &qword_1BE0C1898);
  sub_1BD0DE4F4(&qword_1EBD3D790, &qword_1EBD3D780, &qword_1BE0C1780, MEMORY[0x1E69E6338]);
  sub_1BD20676C();
  sub_1BD2062BC(&qword_1EBD3D798, MEMORY[0x1E6967BE8], &protocol conformance descriptor for AccountPaymentInformation);
  return sub_1BE0519D4();
}

uint64_t sub_1BD2027D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v160 = a2;
  v154 = a3;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D868, &qword_1BE0C18B0);
  MEMORY[0x1EEE9AC00](v152);
  v153 = &v128 - v4;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D870, &qword_1BE0C18B8);
  MEMORY[0x1EEE9AC00](v147);
  v148 = &v128 - v5;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D848, &qword_1BE0C18A0);
  MEMORY[0x1EEE9AC00](v151);
  v150 = &v128 - v6;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D858, &qword_1BE0C18A8);
  MEMORY[0x1EEE9AC00](v146);
  v149 = &v128 - v7;
  v157 = sub_1BE04FF64();
  v162 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v9 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D760, &qword_1BE0C1778);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v128 - v11;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7A8, &qword_1BE0C1798);
  v158 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v14 = &v128 - v13;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D748, &qword_1BE0C1768);
  MEMORY[0x1EEE9AC00](v159);
  v161 = &v128 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7B0, &qword_1BE0C17A0);
  v145 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v144 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v143 = &v128 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v142 = &v128 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v156 = &v128 - v23;
  v24 = sub_1BE049D04();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = (&v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v28, a1, v24, v26);
  v29 = (*(v25 + 88))(v28, v24);
  v30 = v29 == *MEMORY[0x1E6967BD0];
  v139 = v10;
  if (v30)
  {
    (*(v25 + 96))(v28, v24);
    v32 = v28[1];
    v134 = *v28;
    v31 = v134;
    v130 = v32;
    v33 = v28[3];
    v141 = v28[2];
    v140 = v33;
    *v12 = sub_1BE04F504();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7B8, &qword_1BE0C17A8);
    sub_1BD20470C(v31, v32, &v12[*(v138 + 44)]);
    sub_1BE04FF44();
    v34 = sub_1BD0DE4F4(&qword_1EBD3D768, &qword_1EBD3D760, &qword_1BE0C1778, MEMORY[0x1E69817F8]);
    v135 = v34;
    sub_1BE050D14();
    v132 = v9;
    v137 = *(v162 + 8);
    v162 += 8;
    v137(v9, v157);
    sub_1BD0DE53C(v12, &qword_1EBD3D760, &qword_1BE0C1778);
    sub_1BE052434();
    v36 = v35;
    v163 = v10;
    v164 = v34;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v37 = v155;
    v129 = v14;
    sub_1BE050DE4();
    v36, v38, v39, v40, v41, v42, v43, v44;
    v158 = *(v158 + 8);
    v45 = (v158)(v14, v37);
    v128 = &v128;
    MEMORY[0x1EEE9AC00](v45);
    v46 = v134;
    *(&v128 - 4) = v160;
    *(&v128 - 3) = v46;
    v47 = v130;
    v127 = v130;
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D750, &qword_1BE0C1770);
    v131 = sub_1BD206068();
    v134 = sub_1BD0DE4F4(&qword_1EBD3D770, &qword_1EBD3D750, &qword_1BE0C1770, MEMORY[0x1E697D680]);
    v48 = v161;
    sub_1BE0508B4();
    v47, v49, v50, v51, v52, v53, v54, v55;
    sub_1BD0DE53C(v48, &qword_1EBD3D748, &qword_1BE0C1768);
    *v12 = sub_1BE04F504();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v56 = v141;
    v57 = v140;
    sub_1BD204D34(v141, v140, &v12[*(v138 + 44)]);
    v58 = v132;
    sub_1BE04FF44();
    v59 = v129;
    sub_1BE050D14();
    v137(v58, v157);
    sub_1BD0DE53C(v12, &qword_1EBD3D760, &qword_1BE0C1778);
    sub_1BE052434();
    v61 = v60;
    sub_1BE050DE4();
    v61, v62, v63, v64, v65, v66, v67, v68;
    v69 = (v158)(v59, v37);
    MEMORY[0x1EEE9AC00](v69);
    *(&v128 - 4) = v160;
    *(&v128 - 3) = v56;
    v127 = v57;
    v70 = v142;
    sub_1BE0508B4();
    v141 = 0;
    v78 = v156;
LABEL_6:
    v57, v71, v72, v73, v74, v75, v76, v77;
    sub_1BD0DE53C(v161, &qword_1EBD3D748, &qword_1BE0C1768);
    v118 = v145;
    v119 = *(v145 + 16);
    v120 = v143;
    v119(v143, v78, v16);
    v121 = v144;
    v119(v144, v70, v16);
    v122 = v149;
    v119(v149, v120, v16);
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D878, &qword_1BE0C18C0);
    v119((v122 + *(v123 + 48)), v121, v16);
    v124 = *(v118 + 8);
    v124(v121, v16);
    v124(v120, v16);
    sub_1BD0DE19C(v122, v148, &qword_1EBD3D858, &qword_1BE0C18A8);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD3D850, &qword_1EBD3D858, &qword_1BE0C18A8, MEMORY[0x1E6981F48]);
    v125 = v150;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v125, v153, &qword_1EBD3D848, &qword_1BE0C18A0);
    swift_storeEnumTagMultiPayload();
    sub_1BD2067F8();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v125, &qword_1EBD3D848, &qword_1BE0C18A0);
    sub_1BD0DE53C(v122, &qword_1EBD3D858, &qword_1BE0C18A8);
    v124(v70, v16);
    return (v124)(v78, v16);
  }

  v138 = v16;
  if (v29 == *MEMORY[0x1E6967BE0])
  {
    (*(v25 + 96))(v28, v24);
    v80 = *v28;
    v141 = v28[1];
    v79 = v141;
    v81 = v28[3];
    v137 = v28[2];
    v140 = v81;
    *v12 = sub_1BE04F504();
    *(v12 + 1) = 0;
    v12[16] = 1;
    OpaqueTypeConformance2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7B8, &qword_1BE0C17A8);
    sub_1BD20470C(v80, v79, &v12[*(OpaqueTypeConformance2 + 44)]);
    sub_1BE04FF44();
    v82 = v14;
    v83 = sub_1BD0DE4F4(&qword_1EBD3D768, &qword_1EBD3D760, &qword_1BE0C1778, MEMORY[0x1E69817F8]);
    v131 = v83;
    sub_1BE050D14();
    v84 = *(v162 + 8);
    v162 += 8;
    v135 = v84;
    v84(v9, v157);
    sub_1BD0DE53C(v12, &qword_1EBD3D760, &qword_1BE0C1778);
    sub_1BE052434();
    v86 = v85;
    v163 = v10;
    v164 = v83;
    v134 = swift_getOpaqueTypeConformance2();
    v87 = v161;
    v88 = v155;
    sub_1BE050DE4();
    v86, v89, v90, v91, v92, v93, v94, v95;
    v96 = *(v158 + 8);
    v158 += 8;
    v133 = v96;
    v97 = v96(v82, v88);
    v128 = &v128;
    MEMORY[0x1EEE9AC00](v97);
    *(&v128 - 4) = v160;
    *(&v128 - 3) = v80;
    v98 = v141;
    v127 = v141;
    v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D750, &qword_1BE0C1770);
    sub_1BD206068();
    sub_1BD0DE4F4(&qword_1EBD3D770, &qword_1EBD3D750, &qword_1BE0C1770, MEMORY[0x1E697D680]);
    v78 = v156;
    sub_1BE0508B4();
    v98, v99, v100, v101, v102, v103, v104, v105;
    sub_1BD0DE53C(v87, &qword_1EBD3D748, &qword_1BE0C1768);
    *v12 = sub_1BE04F504();
    *(v12 + 1) = 0;
    v141 = 1;
    v12[16] = 1;
    v106 = v137;
    v57 = v140;
    sub_1BD2050EC(v137, v140, &v12[*(OpaqueTypeConformance2 + 44)]);
    sub_1BE04FF44();
    sub_1BE050D14();
    v135(v9, v157);
    sub_1BD0DE53C(v12, &qword_1EBD3D760, &qword_1BE0C1778);
    sub_1BE052434();
    v108 = v107;
    v109 = v155;
    sub_1BE050DE4();
    v108, v110, v111, v112, v113, v114, v115, v116;
    v117 = v133(v82, v109);
    MEMORY[0x1EEE9AC00](v117);
    *(&v128 - 4) = v160;
    *(&v128 - 3) = v106;
    v127 = v57;
    v70 = v142;
    sub_1BE0508B4();
    v16 = v138;
    goto LABEL_6;
  }

  v163 = 0;
  v164 = 0xE000000000000000;
  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000050, 0x80000001BE11DE50);
  sub_1BE053974();
  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD20382C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 2);
  v15 = *(a1 + 3);
  v16 = v8;
  v17 = *a1;
  v13 = *(a1 + 4);
  v14 = *(a1 + 40);
  v9 = swift_allocObject();
  v10 = a1[1];
  *(v9 + 16) = *a1;
  *(v9 + 32) = v10;
  *(v9 + 41) = *(a1 + 25);
  *(v9 + 64) = a2;
  *(v9 + 72) = a3;
  sub_1BD206260(&v17, v12);
  sub_1BD0DE19C(&v16, v12, &qword_1EBD3D780, &qword_1BE0C1780);
  sub_1BD0DE19C(&v15, v12, &qword_1EBD3D780, &qword_1BE0C1780);
  sub_1BD0DE19C(&v13, v12, &qword_1EBD3D788, &qword_1BE0C1788);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7C0, &unk_1BE0C17B0);
  sub_1BD20634C();
  return sub_1BE051704();
}

uint64_t sub_1BD203970(__int128 *a1)
{
  v2 = *(a1 + 2);
  v13 = *(a1 + 3);
  v12 = *a1;
  v11 = v2;
  v3 = *(a1 + 4);
  v8 = v13;
  v9 = v3;
  v10 = *(a1 + 40);
  v4 = swift_allocObject();
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  *(v4 + 41) = *(a1 + 25);
  sub_1BE048C84();
  sub_1BD0DE19C(&v13, v7, &qword_1EBD3D780, &qword_1BE0C1780);
  sub_1BD206260(&v12, v7);
  sub_1BD0DE19C(&v11, v7, &qword_1EBD3D780, &qword_1BE0C1780);
  sub_1BD0DE19C(&v9, v7, &qword_1EBD3D788, &qword_1BE0C1788);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D780, &qword_1BE0C1780);
  sub_1BE049D04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D740, &qword_1BE0C1760);
  sub_1BD0DE4F4(&qword_1EBD3D790, &qword_1EBD3D780, &qword_1BE0C1780, MEMORY[0x1E69E6338]);
  sub_1BD205F40();
  sub_1BD2062BC(&qword_1EBD3D798, MEMORY[0x1E6967BE8], &protocol conformance descriptor for AccountPaymentInformation);
  return sub_1BE0519D4();
}

uint64_t sub_1BD203B40@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v60 = a2;
  v63 = a3;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7A0, &qword_1BE0C1790);
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v52 - v4;
  v55 = sub_1BE04FF64();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D760, &qword_1BE0C1778);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v52 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7A8, &qword_1BE0C1798);
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v11 = &v52 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D748, &qword_1BE0C1768);
  MEMORY[0x1EEE9AC00](v57);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7B0, &qword_1BE0C17A0);
  v58 = *(v14 - 8);
  v59 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v52 = &v52 - v15;
  v16 = sub_1BE049D04();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v20, a1, v16, v18);
  if ((*(v17 + 88))(v20, v16) == *MEMORY[0x1E6967BD8])
  {
    (*(v17 + 96))(v20, v16);
    v22 = *v20;
    v21 = v20[1];
    *v9 = sub_1BE04F504();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7B8, &qword_1BE0C17A8);
    sub_1BD2054A4(v22, v21, &v9[*(v23 + 44)]);
    sub_1BE04FF44();
    v24 = sub_1BD0DE4F4(&qword_1EBD3D768, &qword_1EBD3D760, &qword_1BE0C1778, MEMORY[0x1E69817F8]);
    sub_1BE050D14();
    (*(v53 + 8))(v6, v55);
    sub_1BD0DE53C(v9, &qword_1EBD3D760, &qword_1BE0C1778);
    sub_1BE052434();
    v26 = v25;
    v64 = v7;
    v65 = v24;
    swift_getOpaqueTypeConformance2();
    v27 = v56;
    sub_1BE050DE4();
    v26, v28, v29, v30, v31, v32, v33, v34;
    v35 = (*(v54 + 8))(v11, v27);
    MEMORY[0x1EEE9AC00](v35);
    *(&v52 - 4) = v60;
    *(&v52 - 3) = v22;
    v51 = v21;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D750, &qword_1BE0C1770);
    v37 = sub_1BD206068();
    v38 = sub_1BD0DE4F4(&qword_1EBD3D770, &qword_1EBD3D750, &qword_1BE0C1770, MEMORY[0x1E697D680]);
    v39 = v52;
    v40 = v57;
    sub_1BE0508B4();
    v21, v41, v42, v43, v44, v45, v46, v47;
    sub_1BD0DE53C(v13, &qword_1EBD3D748, &qword_1BE0C1768);
    v49 = v58;
    v48 = v59;
    (*(v58 + 16))(v62, v39, v59);
    swift_storeEnumTagMultiPayload();
    v64 = v40;
    v65 = v36;
    v66 = v37;
    v67 = v38;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v49 + 8))(v39, v48);
  }

  else
  {
    v64 = 0;
    v65 = 0xE000000000000000;
    sub_1BE053834();
    MEMORY[0x1BFB3F610](0xD000000000000050, 0x80000001BE11DE50);
    sub_1BE053974();
    result = sub_1BE053994();
    __break(1u);
  }

  return result;
}

void sub_1BD204240(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(*(a1 + 16) + 16))
  {
    goto LABEL_4;
  }

  v3 = sub_1BE052404();
  v4 = PKLocalizedBankConnectString(v3);

  if (v4)
  {
    v5 = sub_1BE052434();
    v7 = v6;

    *&v8 = v5;
    *(&v8 + 1) = v7;
    sub_1BD0DDEBC();
    sub_1BE0506C4();
LABEL_4:
    sub_1BE04F9A4();
    *a2 = v8;
    *(a2 + 16) = v9;
    *(a2 + 32) = v10;
    return;
  }

  __break(1u);
}

void sub_1BD204384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BE04F3D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 40);
  v11 = *(a1 + 32);
  if ((v12 & 1) == 0)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v8 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0DE53C(&v11, &qword_1EBD3D788, &qword_1BE0C1788);
    (*(v5 + 8))(v7, v4);
  }

  v9 = [objc_opt_self() generalPasteboard];
  v10 = sub_1BE052404();
  [v9 setString_];
}

void sub_1BD20453C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358, &qword_1BE0D73D0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v18 - v2;
  v4 = sub_1BE052404();
  v5 = PKLocalizedBankConnectString(v4);

  if (v5)
  {
    v6 = sub_1BE052434();
    v8 = v7;

    v18[0] = v6;
    v18[1] = v8;
    sub_1BD0DDEBC();
    sub_1BE051624();
    sub_1BE052434();
    v10 = v9;
    sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358, &qword_1BE0D73D0, MEMORY[0x1E697D658]);
    sub_1BE050DE4();
    v10, v11, v12, v13, v14, v15, v16, v17;
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD20470C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a3;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7D0, &qword_1BE0C17C0);
  MEMORY[0x1EEE9AC00](v81);
  v84 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v80 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7D8, &qword_1BE0C17C8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v82 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v80 - v12;
  v14 = sub_1BE052404();
  v15 = PKLocalizedBankConnectString(v14);

  if (v15)
  {
    v16 = sub_1BE052434();
    v18 = v17;

    v85 = v16;
    v86 = v18;
    sub_1BD0DDEBC();
    v19 = sub_1BE0506C4();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    sub_1BD204AC4(v19, v20, v22 & 1, v24, MEMORY[0x1E6981528], MEMORY[0x1E69B9D20]);
    sub_1BD0DDF10(v19, v21, (v23 & 1), v26, v27, v28, v29, v30);
    v25, v31, v32, v33, v34, v35, v36, v37;
    v85 = a1;
    v86 = a2;
    sub_1BE048C84();
    v38 = sub_1BE0506C4();
    v40 = v39;
    LOBYTE(v25) = v41;
    v43 = v42;
    v44 = sub_1BE0505B4();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    sub_1BD0DDF10(v38, v40, (v25 & 1), v49, v51, v52, v53, v54);
    v43, v55, v56, v57, v58, v59, v60, v61;
    sub_1BD204AC4(v44, v46, v48 & 1, v50, MEMORY[0x1E6981560], MEMORY[0x1E69B96F8]);
    sub_1BD0DDF10(v44, v46, (v48 & 1), v62, v63, v64, v65, v66);
    v50, v67, v68, v69, v70, v71, v72, v73;
    v74 = v81;
    v75 = v82;
    v8[*(v81 + 36)] = 1;
    v8[*(v74 + 40)] = 1;
    sub_1BD0DE19C(v13, v75, &qword_1EBD3D7D8, &qword_1BE0C17C8);
    v76 = v84;
    sub_1BD0DE19C(v8, v84, &qword_1EBD3D7D0, &qword_1BE0C17C0);
    v77 = v83;
    sub_1BD0DE19C(v75, v83, &qword_1EBD3D7D8, &qword_1BE0C17C8);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7E0, &qword_1BE0C17D0);
    v79 = v77 + *(v78 + 48);
    *v79 = 0;
    *(v79 + 8) = 1;
    sub_1BD0DE19C(v76, v77 + *(v78 + 64), &qword_1EBD3D7D0, &qword_1BE0C17C0);
    sub_1BD0DE53C(v8, &qword_1EBD3D7D0, &qword_1BE0C17C0);
    sub_1BD0DE53C(v13, &qword_1EBD3D7D8, &qword_1BE0C17C8);
    sub_1BD0DE53C(v76, &qword_1EBD3D7D0, &qword_1BE0C17C0);
    sub_1BD0DE53C(v75, &qword_1EBD3D7D8, &qword_1BE0C17C8);
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD204AC4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t), void *a6)
{
  result = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC40]);
  if (result)
  {
    v12 = sub_1BE050484();
    LOBYTE(v45[0]) = a3 & 1;
    *&v26 = a1;
    *(&v26 + 1) = a2;
    LOBYTE(v27) = a3 & 1;
    *(&v27 + 1) = a4;
    *&v28 = swift_getKeyPath();
    *(&v28 + 1) = v12;
    *&v29 = swift_getKeyPath();
    *(&v29 + 1) = 0x3FC999999999999ALL;
    v30[0] = a1;
    v47 = v26;
    v48 = v27;
    v49 = v28;
    v50 = v29;
    v46 = 1;
    v30[1] = a2;
    v31 = a3 & 1;
    v32 = a4;
    v33 = v28;
    v34 = v12;
    v35 = v29;
    v36 = 0x3FC999999999999ALL;
    sub_1BD0D7F18(a1, a2, a3 & 1);
    sub_1BE048C84();
    sub_1BD0DE19C(&v26, &v51, &qword_1EBD3A9A8, &qword_1BE0BB1B8);
    v13 = sub_1BD0DE53C(v30, &qword_1EBD3A9A8, &qword_1BE0BB1B8);
    v14 = a5(v13);
    v37 = v47;
    v38 = v48;
    v39 = v49;
    *v40 = v50;
    *&v40[16] = 0;
    v15 = v46;
    v40[24] = v46;
    v40[25] = 0;
    KeyPath = swift_getKeyPath();
    v53 = v39;
    *v54 = *v40;
    *&v54[10] = *&v40[10];
    v51 = v37;
    v52 = v38;
    *&v55 = KeyPath;
    *(&v55 + 1) = v14;
    v41[0] = v47;
    v41[1] = v48;
    v41[2] = v49;
    v41[3] = v50;
    v42 = 0;
    v43 = v15;
    v44 = 0;
    sub_1BD0DE19C(&v37, v45, &qword_1EBD3A9B0, &qword_1BE0BB1F0);
    sub_1BD0DE53C(v41, &qword_1EBD3A9B0, &qword_1BE0BB1F0);
    sub_1BE052434();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A9A0, &qword_1BE0BB150);
    sub_1BD206434();
    sub_1BE050DE4();
    v18, v19, v20, v21, v22, v23, v24, v25;
    v45[2] = v53;
    v45[3] = *v54;
    v45[4] = *&v54[16];
    v45[5] = v55;
    v45[0] = v51;
    v45[1] = v52;
    return sub_1BD0DE53C(v45, &qword_1EBD3A9A0, &qword_1BE0BB150);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD204D34(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a3;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7D0, &qword_1BE0C17C0);
  MEMORY[0x1EEE9AC00](v81);
  v84 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v80 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7D8, &qword_1BE0C17C8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v82 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v80 - v12;
  v14 = sub_1BE052404();
  v15 = PKLocalizedBankConnectString(v14);

  if (v15)
  {
    v16 = sub_1BE052434();
    v18 = v17;

    v85 = v16;
    v86 = v18;
    sub_1BD0DDEBC();
    v19 = sub_1BE0506C4();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    sub_1BD204AC4(v19, v20, v22 & 1, v24, MEMORY[0x1E6981528], MEMORY[0x1E69B9D20]);
    sub_1BD0DDF10(v19, v21, (v23 & 1), v26, v27, v28, v29, v30);
    v25, v31, v32, v33, v34, v35, v36, v37;
    v85 = a1;
    v86 = a2;
    sub_1BE048C84();
    v38 = sub_1BE0506C4();
    v40 = v39;
    LOBYTE(v25) = v41;
    v43 = v42;
    v44 = sub_1BE0505B4();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    sub_1BD0DDF10(v38, v40, (v25 & 1), v49, v51, v52, v53, v54);
    v43, v55, v56, v57, v58, v59, v60, v61;
    sub_1BD204AC4(v44, v46, v48 & 1, v50, MEMORY[0x1E6981560], MEMORY[0x1E69B96F8]);
    sub_1BD0DDF10(v44, v46, (v48 & 1), v62, v63, v64, v65, v66);
    v50, v67, v68, v69, v70, v71, v72, v73;
    v74 = v81;
    v75 = v82;
    v8[*(v81 + 36)] = 1;
    v8[*(v74 + 40)] = 1;
    sub_1BD0DE19C(v13, v75, &qword_1EBD3D7D8, &qword_1BE0C17C8);
    v76 = v84;
    sub_1BD0DE19C(v8, v84, &qword_1EBD3D7D0, &qword_1BE0C17C0);
    v77 = v83;
    sub_1BD0DE19C(v75, v83, &qword_1EBD3D7D8, &qword_1BE0C17C8);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7E0, &qword_1BE0C17D0);
    v79 = v77 + *(v78 + 48);
    *v79 = 0;
    *(v79 + 8) = 1;
    sub_1BD0DE19C(v76, v77 + *(v78 + 64), &qword_1EBD3D7D0, &qword_1BE0C17C0);
    sub_1BD0DE53C(v8, &qword_1EBD3D7D0, &qword_1BE0C17C0);
    sub_1BD0DE53C(v13, &qword_1EBD3D7D8, &qword_1BE0C17C8);
    sub_1BD0DE53C(v76, &qword_1EBD3D7D0, &qword_1BE0C17C0);
    sub_1BD0DE53C(v75, &qword_1EBD3D7D8, &qword_1BE0C17C8);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD2050EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a3;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7D0, &qword_1BE0C17C0);
  MEMORY[0x1EEE9AC00](v81);
  v84 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v80 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7D8, &qword_1BE0C17C8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v82 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v80 - v12;
  v14 = sub_1BE052404();
  v15 = PKLocalizedBankConnectString(v14);

  if (v15)
  {
    v16 = sub_1BE052434();
    v18 = v17;

    v85 = v16;
    v86 = v18;
    sub_1BD0DDEBC();
    v19 = sub_1BE0506C4();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    sub_1BD204AC4(v19, v20, v22 & 1, v24, MEMORY[0x1E6981528], MEMORY[0x1E69B9D20]);
    sub_1BD0DDF10(v19, v21, (v23 & 1), v26, v27, v28, v29, v30);
    v25, v31, v32, v33, v34, v35, v36, v37;
    v85 = a1;
    v86 = a2;
    sub_1BE048C84();
    v38 = sub_1BE0506C4();
    v40 = v39;
    LOBYTE(v25) = v41;
    v43 = v42;
    v44 = sub_1BE0505B4();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    sub_1BD0DDF10(v38, v40, (v25 & 1), v49, v51, v52, v53, v54);
    v43, v55, v56, v57, v58, v59, v60, v61;
    sub_1BD204AC4(v44, v46, v48 & 1, v50, MEMORY[0x1E6981560], MEMORY[0x1E69B96F8]);
    sub_1BD0DDF10(v44, v46, (v48 & 1), v62, v63, v64, v65, v66);
    v50, v67, v68, v69, v70, v71, v72, v73;
    v74 = v81;
    v75 = v82;
    v8[*(v81 + 36)] = 1;
    v8[*(v74 + 40)] = 1;
    sub_1BD0DE19C(v13, v75, &qword_1EBD3D7D8, &qword_1BE0C17C8);
    v76 = v84;
    sub_1BD0DE19C(v8, v84, &qword_1EBD3D7D0, &qword_1BE0C17C0);
    v77 = v83;
    sub_1BD0DE19C(v75, v83, &qword_1EBD3D7D8, &qword_1BE0C17C8);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7E0, &qword_1BE0C17D0);
    v79 = v77 + *(v78 + 48);
    *v79 = 0;
    *(v79 + 8) = 1;
    sub_1BD0DE19C(v76, v77 + *(v78 + 64), &qword_1EBD3D7D0, &qword_1BE0C17C0);
    sub_1BD0DE53C(v8, &qword_1EBD3D7D0, &qword_1BE0C17C0);
    sub_1BD0DE53C(v13, &qword_1EBD3D7D8, &qword_1BE0C17C8);
    sub_1BD0DE53C(v76, &qword_1EBD3D7D0, &qword_1BE0C17C0);
    sub_1BD0DE53C(v75, &qword_1EBD3D7D8, &qword_1BE0C17C8);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD2054A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a3;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7D0, &qword_1BE0C17C0);
  MEMORY[0x1EEE9AC00](v81);
  v84 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v80 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7D8, &qword_1BE0C17C8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v82 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v80 - v12;
  v14 = sub_1BE052404();
  v15 = PKLocalizedBankConnectString(v14);

  if (v15)
  {
    v16 = sub_1BE052434();
    v18 = v17;

    v85 = v16;
    v86 = v18;
    sub_1BD0DDEBC();
    v19 = sub_1BE0506C4();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    sub_1BD204AC4(v19, v20, v22 & 1, v24, MEMORY[0x1E6981528], MEMORY[0x1E69B9D20]);
    sub_1BD0DDF10(v19, v21, (v23 & 1), v26, v27, v28, v29, v30);
    v25, v31, v32, v33, v34, v35, v36, v37;
    v85 = a1;
    v86 = a2;
    sub_1BE048C84();
    v38 = sub_1BE0506C4();
    v40 = v39;
    LOBYTE(v25) = v41;
    v43 = v42;
    v44 = sub_1BE0505B4();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    sub_1BD0DDF10(v38, v40, (v25 & 1), v49, v51, v52, v53, v54);
    v43, v55, v56, v57, v58, v59, v60, v61;
    sub_1BD204AC4(v44, v46, v48 & 1, v50, MEMORY[0x1E6981560], MEMORY[0x1E69B96F8]);
    sub_1BD0DDF10(v44, v46, (v48 & 1), v62, v63, v64, v65, v66);
    v50, v67, v68, v69, v70, v71, v72, v73;
    v74 = v81;
    v75 = v82;
    v8[*(v81 + 36)] = 1;
    v8[*(v74 + 40)] = 1;
    sub_1BD0DE19C(v13, v75, &qword_1EBD3D7D8, &qword_1BE0C17C8);
    v76 = v84;
    sub_1BD0DE19C(v8, v84, &qword_1EBD3D7D0, &qword_1BE0C17C0);
    v77 = v83;
    sub_1BD0DE19C(v75, v83, &qword_1EBD3D7D8, &qword_1BE0C17C8);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D7E0, &qword_1BE0C17D0);
    v79 = v77 + *(v78 + 48);
    *v79 = 0;
    *(v79 + 8) = 1;
    sub_1BD0DE19C(v76, v77 + *(v78 + 64), &qword_1EBD3D7D0, &qword_1BE0C17C0);
    sub_1BD0DE53C(v8, &qword_1EBD3D7D0, &qword_1BE0C17C0);
    sub_1BD0DE53C(v13, &qword_1EBD3D7D8, &qword_1BE0C17C8);
    sub_1BD0DE53C(v76, &qword_1EBD3D7D0, &qword_1BE0C17C0);
    sub_1BD0DE53C(v75, &qword_1EBD3D7D8, &qword_1BE0C17C8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD20585C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1BE049D04();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v60 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v60 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v68 = &v60 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v67 = &v60 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v60 - v21;
  result = swift_getKeyPath();
  v24 = *(a1 + 16);
  if (v24)
  {
    v60 = result;
    v64 = v15;
    v61 = a2;
    v62 = a3;
    v63 = a4;
    v26 = *(v9 + 16);
    v25 = v9 + 16;
    v66 = (*(v25 + 64) + 32) & ~*(v25 + 64);
    v27 = (a1 + v66);
    v28 = *(v25 + 56);
    v80 = (v25 + 72);
    v81 = v26;
    v79 = *MEMORY[0x1E6967BD0];
    v74 = *MEMORY[0x1E6967BE0];
    v29 = (v25 - 8);
    v77 = (v25 + 16);
    v71 = MEMORY[0x1E69E7CC0];
    v72 = v28;
    v30 = v27;
    v31 = v24;
    v73 = v25;
    v78 = (v25 - 8);
    v65 = v24;
    do
    {
      v33 = v28;
      v34 = v81;
      v81(v22, v30, v8);
      v35 = v67;
      v34(v67, v22, v8);
      v76 = *v80;
      v36 = v76(v35, v8);
      v37 = v22;
      v38 = *v29;
      (*v29)(v35, v8);
      v39 = v36 == v79 || v36 == v74;
      v75 = v38;
      if (v39)
      {
        v40 = *v77;
        (*v77)(v68, v37, v8);
        v41 = v71;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82 = v41;
        v22 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BD531CFC(0, *(v41 + 16) + 1, 1);
          v41 = v82;
        }

        v32 = v65;
        v44 = *(v41 + 16);
        v43 = *(v41 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_1BD531CFC((v43 > 1), v44 + 1, 1);
          v41 = v82;
        }

        *(v41 + 16) = v44 + 1;
        v71 = v41;
        v45 = v41 + v66;
        v28 = v72;
        v40((v45 + v44 * v72), v68, v8);
        v29 = v78;
      }

      else
      {
        v38(v37, v8);
        v32 = v65;
        v22 = v37;
        v28 = v33;
      }

      v30 += v28;
      --v31;
    }

    while (v31);
    v46 = *MEMORY[0x1E6967BD8];
    v47 = MEMORY[0x1E69E7CC0];
    a2 = v61;
    v48 = v64;
    do
    {
      v50 = v81;
      v81(v48, v27, v8);
      v51 = v69;
      v50(v69, v48, v8);
      v52 = v76(v51, v8);
      v53 = v51;
      v54 = v75;
      v75(v53, v8);
      if (v52 == v79 || v52 == v74 || v52 != v46)
      {
        v54(v48, v8);
        v49 = v72;
      }

      else
      {
        v55 = *v77;
        (*v77)(v70, v48, v8);
        v56 = swift_isUniquelyReferenced_nonNull_native();
        v82 = v47;
        if ((v56 & 1) == 0)
        {
          sub_1BD531CFC(0, *(v47 + 16) + 1, 1);
          v47 = v82;
        }

        v58 = *(v47 + 16);
        v57 = *(v47 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_1BD531CFC((v57 > 1), v58 + 1, 1);
          v47 = v82;
        }

        *(v47 + 16) = v58 + 1;
        v49 = v72;
        v55((v47 + v66 + v58 * v72), v70, v8);
        v48 = v64;
      }

      v27 += v49;
      --v32;
    }

    while (v32);
    a3 = v62;
    a4 = v63;
    result = v60;
    v59 = v71;
  }

  else
  {
    v59 = MEMORY[0x1E69E7CC0];
    v47 = MEMORY[0x1E69E7CC0];
  }

  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = v59;
  *(a4 + 24) = v47;
  *(a4 + 32) = result;
  *(a4 + 40) = 0;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BD205DE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1BD205E2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD205EBC()
{
  result = qword_1EBD3D728;
  if (!qword_1EBD3D728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D718, &qword_1BE0C1750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D728);
  }

  return result;
}

unint64_t sub_1BD205F40()
{
  result = qword_1EBD3D738;
  if (!qword_1EBD3D738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D740, &qword_1BE0C1760);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D748, &qword_1BE0C1768);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D750, &qword_1BE0C1770);
    sub_1BD206068();
    sub_1BD0DE4F4(&qword_1EBD3D770, &qword_1EBD3D750, &qword_1BE0C1770, MEMORY[0x1E697D680]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D738);
  }

  return result;
}

unint64_t sub_1BD206068()
{
  result = qword_1EBD3D758;
  if (!qword_1EBD3D758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D748, &qword_1BE0C1768);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D760, &qword_1BE0C1778);
    sub_1BD0DE4F4(&qword_1EBD3D768, &qword_1EBD3D760, &qword_1BE0C1778, MEMORY[0x1E69817F8]);
    swift_getOpaqueTypeConformance2();
    sub_1BD2062BC(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D758);
  }

  return result;
}

unint64_t sub_1BD206194()
{
  result = qword_1EBD3D778;
  if (!qword_1EBD3D778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D708, &qword_1BE0C1740);
    sub_1BD205EBC();
    sub_1BD2066F0(&qword_1EBD3D730, &qword_1EBD3D720, &qword_1BE0C1758, sub_1BD205F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D778);
  }

  return result;
}

uint64_t sub_1BD2062BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD20634C()
{
  result = qword_1EBD3D7C8;
  if (!qword_1EBD3D7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D7C0, &unk_1BE0C17B0);
    sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358, &qword_1BE0D73D0, MEMORY[0x1E697D658]);
    sub_1BD2062BC(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D7C8);
  }

  return result;
}

unint64_t sub_1BD206434()
{
  result = qword_1EBD3D7E8;
  if (!qword_1EBD3D7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A9A0, &qword_1BE0BB150);
    sub_1BD2064EC();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D7E8);
  }

  return result;
}

unint64_t sub_1BD2064EC()
{
  result = qword_1EBD3D7F0;
  if (!qword_1EBD3D7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A9B0, &qword_1BE0BB1F0);
    sub_1BD206578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D7F0);
  }

  return result;
}

unint64_t sub_1BD206578()
{
  result = qword_1EBD3D7F8;
  if (!qword_1EBD3D7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3A9A8, &qword_1BE0BB1B8);
    sub_1BD206630();
    sub_1BD0DE4F4(&qword_1EBD3A8B0, &qword_1EBD3A8B8, &qword_1BE0BB050, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D7F8);
  }

  return result;
}

unint64_t sub_1BD206630()
{
  result = qword_1EBD3D800;
  if (!qword_1EBD3D800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D808, &unk_1BE0C1870);
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D800);
  }

  return result;
}

uint64_t sub_1BD2066F0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD20676C()
{
  result = qword_1EBD3D830;
  if (!qword_1EBD3D830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D838, &qword_1BE0C1898);
    sub_1BD2067F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D830);
  }

  return result;
}

unint64_t sub_1BD2067F8()
{
  result = qword_1EBD3D840;
  if (!qword_1EBD3D840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D848, &qword_1BE0C18A0);
    sub_1BD0DE4F4(&qword_1EBD3D850, &qword_1EBD3D858, &qword_1BE0C18A8, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D840);
  }

  return result;
}

unint64_t sub_1BD2068A8()
{
  result = qword_1EBD3D860;
  if (!qword_1EBD3D860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D810, &qword_1BE0C1880);
    sub_1BD2066F0(&qword_1EBD3D828, &qword_1EBD3D820, &qword_1BE0C1890, sub_1BD20676C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D860);
  }

  return result;
}

uint64_t objectdestroyTm_11(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;
  *(v8 + 40), v16, v17, v18, v19, v20, v21, v22;
  sub_1BD0D4604(*(v8 + 48), *(v8 + 56), v23, v24, v25, v26, v27, v28);

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;
  *(v8 + 40), v16, v17, v18, v19, v20, v21, v22;
  sub_1BD0D4604(*(v8 + 48), *(v8 + 56), v23, v24, v25, v26, v27, v28);
  *(v8 + 72), v29, v30, v31, v32, v33, v34, v35;

  return swift_deallocObject();
}

unint64_t sub_1BD206B14()
{
  result = qword_1EBD3D880;
  if (!qword_1EBD3D880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D888, &qword_1BE0C18C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D6B8, &qword_1BE0C1708);
    sub_1BD0DE4F4(&qword_1EBD3D6D8, &qword_1EBD3D6B8, &qword_1BE0C1708, MEMORY[0x1E697C0C0]);
    sub_1BD0DDEBC();
    swift_getOpaqueTypeConformance2();
    sub_1BD2062BC(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D880);
  }

  return result;
}

void sub_1BD206C58(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 64), a2, a3, a4, a5, a6, a7, a8;

  v9 = *(v8 + 80);
}

uint64_t sub_1BD206C90()
{
  sub_1BD0D4534(v0 + 16);
  *(v0 + 48), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 56), v8, v9, v10, v11, v12, v13, v14;
  v15 = *(v0 + 64);
  sub_1BE048964();
  v15, v16, v17, v18, v19, v20, v21, v22;

  v23 = *(v0 + 80);
  v0, v24, v25, v26, v27, v28, v29, v30;

  return swift_deallocClassInstance();
}

id sub_1BD206E14(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_680B770ECF12D71B4B0E6A5986E453A630PrecursorPassActionFlowSection_action);
  if ([v2 type] != 1)
  {
    return 0;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v4 = result;
    v5 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_680B770ECF12D71B4B0E6A5986E453A630PrecursorPassActionFlowSection_context);
    v6 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_680B770ECF12D71B4B0E6A5986E453A630PrecursorPassActionFlowSection_provisionedPasses);
    v7 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_680B770ECF12D71B4B0E6A5986E453A630PrecursorPassActionFlowSection_upgradeRequest);
    v8 = type metadata accessor for PrecursorPassActionIdentityProofingFlowItem();
    v9 = objc_allocWithZone(v8);
    *&v9[OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_product] = 0;
    *&v9[OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v10 = &v9[OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_identifier];
    *v10 = 0xD00000000000002BLL;
    *(v10 + 1) = 0x80000001BE11E070;
    *&v9[OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_context] = v5;
    *&v9[OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_provisionedPasses] = v6;
    *&v9[OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_upgradeRequest] = v7;
    *&v9[OBJC_IVAR____TtC9PassKitUI43PrecursorPassActionIdentityProofingFlowItem_action] = v4;
    v14.receiver = v9;
    v14.super_class = v8;
    v11 = v2;
    sub_1BE048964();
    v12 = v6;
    v13 = v7;
    return objc_msgSendSuper2(&v14, sel_init);
  }

  return result;
}

uint64_t sub_1BD206F98()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUIP33_680B770ECF12D71B4B0E6A5986E453A630PrecursorPassActionFlowSection_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD206FD4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUIP33_680B770ECF12D71B4B0E6A5986E453A630PrecursorPassActionFlowSection_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD207020(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  sub_1BE048964();
  v8 = a2;
  v9 = a3;
  v10 = [v9 actions];
  sub_1BD2072B8();
  v11 = sub_1BE052744();

  if (!(v11 >> 62))
  {
    v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_11:
    v11, v12, v13, v14, v15, v16, v17, v18;
    v44 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v45 = sub_1BD3EFD6C(v44, v37, v38, v39, v40, v41, v42, v43);
    v44, v46, v47, v48, v49, v50, v51, v52;
    *(v4 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v4 + 40) = 0xD00000000000001FLL;
    *(v4 + 48) = 0x80000001BE0C18D0;
    *(v4 + 56) = v45;
    *(v4 + 32) = 514;
    return v4;
  }

  v19 = sub_1BE053704();
  if (!v19)
  {
    goto LABEL_11;
  }

LABEL_3:
  v55 = MEMORY[0x1E69E7CC0];
  result = sub_1BE0538E4();
  if ((v19 & 0x8000000000000000) == 0)
  {
    v21 = 0;
    v53 = v11 & 0xC000000000000001;
    v22 = v11;
    do
    {
      if (v53)
      {
        v23 = MEMORY[0x1BFB40900](v21, v11);
      }

      else
      {
        v23 = *(v11 + 8 * v21 + 32);
      }

      v24 = v23;
      ++v21;
      v25 = type metadata accessor for PrecursorPassActionFlowSection();
      v26 = objc_allocWithZone(v25);
      *&v26[OBJC_IVAR____TtC9PassKitUIP33_680B770ECF12D71B4B0E6A5986E453A630PrecursorPassActionFlowSection_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v27 = &v26[OBJC_IVAR____TtC9PassKitUIP33_680B770ECF12D71B4B0E6A5986E453A630PrecursorPassActionFlowSection_identifier];
      *v27 = 0xD00000000000001ELL;
      *(v27 + 1) = 0x80000001BE0C18F0;
      *&v26[OBJC_IVAR____TtC9PassKitUIP33_680B770ECF12D71B4B0E6A5986E453A630PrecursorPassActionFlowSection_context] = a1;
      *&v26[OBJC_IVAR____TtC9PassKitUIP33_680B770ECF12D71B4B0E6A5986E453A630PrecursorPassActionFlowSection_provisionedPasses] = v8;
      *&v26[OBJC_IVAR____TtC9PassKitUIP33_680B770ECF12D71B4B0E6A5986E453A630PrecursorPassActionFlowSection_upgradeRequest] = v9;
      *&v26[OBJC_IVAR____TtC9PassKitUIP33_680B770ECF12D71B4B0E6A5986E453A630PrecursorPassActionFlowSection_action] = v24;
      v54.receiver = v26;
      v54.super_class = v25;
      sub_1BE048964();
      v28 = v8;
      v29 = v9;
      objc_msgSendSuper2(&v54, sel_init);
      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
      v11 = v22;
    }

    while (v19 != v21);
    v22, v30, v31, v32, v33, v34, v35, v36;
    v44 = v55;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD2072B8()
{
  result = qword_1EBD3D8C0;
  if (!qword_1EBD3D8C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3D8C0);
  }

  return result;
}

uint64_t sub_1BD207304(uint64_t (*a1)(unint64_t, unint64_t, void, uint64_t), uint64_t a2)
{
  v60 = a2;
  v61 = a1;
  v3 = sub_1BE04BAC4();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v59 = v2;
  v7 = sub_1BD187F94(v2, KeyPath);
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v22 = v7 + 4;
  v23 = v7[2];
  v65 = 0x80000001BE1182F0;
  v66 = 0x80000001BE118310;
  v63 = 0x80000001BE118280;
  v64 = 0x80000001BE1182A0;
  v62 = 0x80000001BE118260;
  while (2)
  {
    if (v23)
    {
      v24 = 0xEF65636976654420;
      switch(*v22)
      {
        case 1:
          v24 = 0x80000001BE118230;
          goto LABEL_3;
        case 2:
          v7, v15, v16, v17, v18, v19, v20, v21;
          v7 = 0xE90000000000006FLL;
          goto LABEL_24;
        case 3:
          v24 = 0xEC0000006E6F6974;
          goto LABEL_3;
        case 4:
          v24 = v62;
          goto LABEL_3;
        case 5:
          v24 = v63;
          goto LABEL_3;
        case 6:
          v24 = v64;
          goto LABEL_3;
        case 7:
          v24 = 0xEC000000746C7561;
          goto LABEL_3;
        case 8:
          v24 = 0xEE00746E656D6C6CLL;
          goto LABEL_3;
        case 9:
          v24 = 0xE90000000000006ELL;
          goto LABEL_3;
        case 0xA:
          v24 = 0xED00006E6F697461;
          goto LABEL_3;
        case 0xB:
          v24 = v65;
          goto LABEL_3;
        case 0xC:
          v24 = 0xEC00000068637461;
          goto LABEL_3;
        case 0xD:
          v24 = v66;
          goto LABEL_3;
        default:
LABEL_3:
          v25 = sub_1BE053B84();
          v24, v26, v27, v28, v29, v30, v31, v32;
          ++v22;
          --v23;
          if ((v25 & 1) == 0)
          {
            continue;
          }

LABEL_24:
          v7, v15, v16, v17, v18, v19, v20, v21;
          v35 = 0x6E65206775626564;
          v45 = 0xED000064656C6261;
          break;
      }

      goto LABEL_25;
    }

    break;
  }

  v7, v15, v16, v17, v18, v19, v20, v21;
  sub_1BE04BC34();
  v33 = sub_1BE04B994();
  (*(v57 + 8))(v5, v58);
  if (v33)
  {
    v34 = "is card on file provisioning";
    v35 = 0xD000000000000044;
LABEL_28:
    v45 = v34 | 0x8000000000000000;
    v46 = 1;
    return v61(v35, v45, 0, v46);
  }

  v36 = sub_1BE04BCA4();
  if (v36 >> 62)
  {
    v47 = v36;
    v48 = sub_1BE053704();
    v47, v49, v50, v51, v52, v53, v54, v55;
    if (v48)
    {
      goto LABEL_22;
    }

LABEL_27:
    v34 = "UIStaticFlowSection";
    v35 = 0xD00000000000001ALL;
    goto LABEL_28;
  }

  v44 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v36, v37, v38, v39, v40, v41, v42, v43;
  if (!v44)
  {
    goto LABEL_27;
  }

LABEL_22:
  v35 = 0;
  v45 = 0;
LABEL_25:
  v46 = 0;
  return v61(v35, v45, 0, v46);
}

uint64_t sub_1BD207744(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  v4 = v2;
  v5 = sub_1BE04BCA4();
  if (v5 >> 62)
  {
    goto LABEL_22;
  }

  v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v5, v6, v7, v8, v9, v10, v11, v12;
  v40 = v13 - 1;
  if (__OFSUB__(v13, 1))
  {
    __break(1u);
LABEL_24:
    v5 = sub_1BE053704();
    v21 = v5;
    if (v5)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

  v5 = sub_1BE04BCA4();
  v1 = v5;
  if (v5 >> 62)
  {
    goto LABEL_24;
  }

  v21 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v21)
  {
LABEL_8:
    v22 = 0;
    v38 = v1 & 0xFFFFFFFFFFFFFF8;
    v39 = v1 & 0xC000000000000001;
    v23 = MEMORY[0x1E69E7CC0];
    v36 = v1;
    v37 = v4;
    while (1)
    {
      if (v39)
      {
        v5 = MEMORY[0x1BFB40900](v22, v1);
        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v22 >= *(v38 + 16))
        {
          goto LABEL_21;
        }

        v5 = *(v1 + 8 * v22 + 32);
        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          v1 = v5;
          v13 = sub_1BE053704();
          v5 = v1;
          goto LABEL_5;
        }
      }

      v25 = *(v4 + 16);
      v26 = v5;
      v27 = sub_1BE04BC84();
      v28 = type metadata accessor for ProvisioningMoreInfoFlowItem();
      v29 = objc_allocWithZone(v28);
      *&v29[OBJC_IVAR____TtC9PassKitUIP33_9A7422C994D4C309DBA995A5EC3118DA28ProvisioningMoreInfoFlowItem_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v30 = &v29[OBJC_IVAR____TtC9PassKitUIP33_9A7422C994D4C309DBA995A5EC3118DA28ProvisioningMoreInfoFlowItem_identifier];
      *v30 = 0xD000000000000010;
      v30[1] = 0x80000001BE11E170;
      *&v29[OBJC_IVAR____TtC9PassKitUIP33_9A7422C994D4C309DBA995A5EC3118DA28ProvisioningMoreInfoFlowItem_context] = v25;
      *&v29[OBJC_IVAR____TtC9PassKitUIP33_9A7422C994D4C309DBA995A5EC3118DA28ProvisioningMoreInfoFlowItem_moreInfoItem] = v26;
      *&v29[OBJC_IVAR____TtC9PassKitUIP33_9A7422C994D4C309DBA995A5EC3118DA28ProvisioningMoreInfoFlowItem_pass] = v27;
      v29[OBJC_IVAR____TtC9PassKitUIP33_9A7422C994D4C309DBA995A5EC3118DA28ProvisioningMoreInfoFlowItem_isLastItem] = v40 == v22;
      v41.receiver = v29;
      v41.super_class = v28;
      sub_1BE048964();
      v31 = objc_msgSendSuper2(&v41, sel_init);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1BD1D7488(0, (v23[2] + 1), 1, v23);
      }

      v33 = v23[2];
      v32 = v23[3];
      if (v33 >= v32 >> 1)
      {
        v23 = sub_1BD1D7488((v32 > 1), (v33 + 1), 1, v23);
      }

      v23[2] = v33 + 1;
      v34 = &v23[2 * v33];
      v34[4] = v31;
      v34[5] = &off_1F3B97B10;
      ++v22;
      v1 = v36;
      v4 = v37;
      if (v24 == v21)
      {
        goto LABEL_26;
      }
    }
  }

LABEL_25:
  v23 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v1, v14, v15, v16, v17, v18, v19, v20;
  type metadata accessor for UIStaticFlowSection();
  v35 = swift_allocObject();
  *(v35 + 24) = 0;
  swift_unknownObjectWeakInit();
  result = v35;
  *(v35 + 40) = 0xD000000000000013;
  *(v35 + 48) = 0x80000001BE11E190;
  *(v35 + 56) = v23;
  *(v35 + 32) = 514;
  return result;
}

uint64_t sub_1BD207A5C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  sub_1BD0D4534((v8 + 4));
  v8[7], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocClassInstance();
}

uint64_t sub_1BD207AD4()
{
  v1 = *(v0 + 48);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD207B04(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD207C20()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v58 = *(v2 - 8);
  v59 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1BE04B944();
  v5 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v10 = v1 + OBJC_IVAR____TtC9PassKitUIP33_9A7422C994D4C309DBA995A5EC3118DA28ProvisioningMoreInfoFlowItem_delegate;
  swift_unknownObjectWeakLoadStrong();
  *(v9 + 24) = *(v10 + 8);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BE0B7020;
  v13 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_9A7422C994D4C309DBA995A5EC3118DA28ProvisioningMoreInfoFlowItem_moreInfoItem);
  *(v12 + 32) = v13;
  v14 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_9A7422C994D4C309DBA995A5EC3118DA28ProvisioningMoreInfoFlowItem_pass);
  v15 = v13;
  v16 = v14;
  sub_1BE04BB94();
  v17 = sub_1BE04B934();
  (*(v5 + 8))(v7, v57);
  sub_1BE04BC34();
  v18 = sub_1BE04B9A4();
  (*(v58 + 8))(v4, v59);
  v19 = objc_allocWithZone(PKPaymentSetupMoreInfoViewController);
  sub_1BD2081D0();
  sub_1BE048964();
  v20 = sub_1BE052724();
  v12, v21, v22, v23, v24, v25, v26, v27;
  aBlock[4] = sub_1BD2081C8;
  v61 = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD20815C;
  aBlock[3] = &block_descriptor_27;
  v28 = _Block_copy(aBlock);
  v61, v29, v30, v31, v32, v33, v34, v35;
  v36 = [v19 initWithMoreInfoItems:v20 paymentPass:v16 targetDevice:v17 context:v18 dismissalHandler:v28];
  _Block_release(v28);

  swift_unknownObjectRelease();
  if (v36)
  {
    [v36 setIsFinalViewController_];
    sub_1BE052434();
    v45 = v44;
    v46 = v36;
    v47 = sub_1BE04BB74();
    v45, v48, v49, v50, v51, v52, v53, v54;
    [v46 setReporter_];
  }

  v11, v37, v38, v39, v40, v41, v42, v43;
  return v36;
}

void sub_1BD208010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(a3 + 24);
      ObjectType = swift_getObjectType();
      v8 = v5;
      sub_1BD8659A4(v8, &off_1F3B97B10, ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1BD2080D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUIP33_9A7422C994D4C309DBA995A5EC3118DA28ProvisioningMoreInfoFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD20810C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUIP33_9A7422C994D4C309DBA995A5EC3118DA28ProvisioningMoreInfoFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD20815C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_1BE048964();
  v12 = a2;
  v4(a2);
  v3, v5, v6, v7, v8, v9, v10, v11;
}

unint64_t sub_1BD2081D0()
{
  result = qword_1EBD3D8F8[0];
  if (!qword_1EBD3D8F8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EBD3D8F8);
  }

  return result;
}

uint64_t sub_1BD20821C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for FlightWidgetPassSnapshotView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for FlightWidgetPassSnapshotView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD208348()
{
  result = qword_1EBD3D990;
  if (!qword_1EBD3D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D990);
  }

  return result;
}

id sub_1BD20839C()
{
  result = [objc_allocWithZone(MEMORY[0x1E69BC768]) initWithRemotePaymentInstrument:*v0 thumbnailSize:{*(v0 + 8), *(v0 + 16)}];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD2083F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD2084E4();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD208458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD2084E4();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD2084BC(uint64_t a1)
{
  sub_1BD2084E4();
  sub_1BE04F964();
  __break(1u);
}

unint64_t sub_1BD2084E4()
{
  result = qword_1EBD3D998;
  if (!qword_1EBD3D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D998);
  }

  return result;
}

void sub_1BD208538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a1;
    v68 = MEMORY[0x1E69E7CC0];
    sub_1BD531DC0(0, v8, 0, a4, a5, a6, a7, a8);
    v10 = v9 + 56;
    v11 = sub_1BE053674();
    v12 = 0;
    v63 = v9 + 64;
    v64 = v8;
    v65 = v9 + 56;
    v66 = v9;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v9 + 32))
    {
      v14 = v11 >> 6;
      if ((*(v10 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_26;
      }

      v15 = *(*(v9 + 48) + v11);
      v67 = *(v9 + 36);
      v16 = sub_1BE052434();
      v18 = v17;
      v20 = sub_1BE052434();
      v26 = v19;
      if (v16 == v20 && v18 == v19)
      {
        v18, v19, v20, v21, v22, v23, v24, v25;
        v26, v27, v28, v29, v30, v31, v32, v33;
        v15 = 7;
      }

      else
      {
        v39 = sub_1BE053B84();
        v18, v40, v41, v42, v43, v44, v45, v46;
        v26, v47, v48, v49, v50, v51, v52, v53;
        if (v39)
        {
          v15 = 7;
        }
      }

      v55 = *(v68 + 16);
      v54 = *(v68 + 24);
      v10 = v65;
      if (v55 >= v54 >> 1)
      {
        sub_1BD531DC0((v54 > 1), v55 + 1, 1, v34, v35, v36, v37, v38);
      }

      *(v68 + 16) = v55 + 1;
      *(v68 + v55 + 32) = v15;
      v9 = v66;
      v13 = 1 << *(v66 + 32);
      if (v11 >= v13)
      {
        goto LABEL_27;
      }

      v56 = *(v65 + 8 * v14);
      if ((v56 & (1 << v11)) == 0)
      {
        goto LABEL_28;
      }

      if (v67 != *(v66 + 36))
      {
        goto LABEL_29;
      }

      v57 = v56 & (-2 << (v11 & 0x3F));
      if (v57)
      {
        v13 = __clz(__rbit64(v57)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v58 = v14 << 6;
        v59 = v14 + 1;
        v60 = (v63 + 8 * v14);
        while (v59 < (v13 + 63) >> 6)
        {
          v62 = *v60++;
          v61 = v62;
          v58 += 64;
          ++v59;
          if (v62)
          {
            sub_1BD20DE9C(v11, v67, 0, v34, v35, v36, v37, v38);
            v13 = __clz(__rbit64(v61)) + v58;
            goto LABEL_4;
          }
        }

        sub_1BD20DE9C(v11, v67, 0, v34, v35, v36, v37, v38);
      }

LABEL_4:
      ++v12;
      v11 = v13;
      if (v12 == v64)
      {
        return;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_1BD2088AC(void *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(a1);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;

  v3, v11, v12, v13, v14, v15, v16, v17;
}

void sub_1BD20899C()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v104);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  v16 = v104;
  v17 = MEMORY[0x1E69E7CC0];
  if (v104)
  {
    v18 = [v104 editingFieldArrangement];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0, &qword_1BE0C1E30);
    v19 = sub_1BE052744();

    v27 = v19[2];
    if (v27)
    {
      v98 = v16;
      v104 = v17;
      sub_1BD531D80(0, v27, 0);
      v35 = 0;
      v36 = v104;
      v100 = v19;
      v101 = v19 + 4;
      v99 = v27;
      do
      {
        if (v35 >= v19[2])
        {
          goto LABEL_42;
        }

        v37 = v101[v35];
        v38 = v37[2];
        if (v38)
        {
          v102 = v36;
          sub_1BE048C84();
          sub_1BD531DC0(0, v38, 0, v39, v40, v41, v42, v43);
          v44 = 0;
          v45 = v17;
          v46 = v37 + 5;
          while (v44 < v37[2])
          {
            v47 = *(v46 - 1);
            v48 = *v46;
            sub_1BE048C84();
            v49 = sub_1BD251780(v47, v48);
            if (v49 == 8)
            {
              goto LABEL_45;
            }

            v103 = v45;
            v58 = v45[2];
            v57 = v45[3];
            if (v58 >= v57 >> 1)
            {
              v59 = v49;
              sub_1BD531DC0((v57 > 1), v58 + 1, 1, v52, v53, v54, v55, v56);
              v49 = v59;
              v45 = v103;
            }

            ++v44;
            v45[2] = v58 + 1;
            *(v45 + v58 + 32) = v49;
            v46 += 2;
            if (v38 == v44)
            {
              v37, v50, v51, v52, v53, v54, v55, v56;
              v36 = v102;
              v27 = v99;
              v19 = v100;
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          return;
        }

        v45 = v17;
LABEL_14:
        v104 = v36;
        v61 = v36[2];
        v60 = v36[3];
        if (v61 >= v60 >> 1)
        {
          sub_1BD531D80((v60 > 1), (v61 + 1), 1);
          v36 = v104;
        }

        ++v35;
        v36[2] = v61 + 1;
        v36[v61 + 4] = v45;
      }

      while (v35 != v27);
      v19, v28, v29, v30, v31, v32, v33, v34;
      v16 = v98;
      v69 = v36[2];
      if (v69)
      {
        goto LABEL_18;
      }

      goto LABEL_36;
    }

    v19, v20, v21, v22, v23, v24, v25, v26;
    v36 = MEMORY[0x1E69E7CC0];
    v69 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v69)
    {
LABEL_36:
      v36, v62, v63, v64, v65, v66, v67, v68;

      return;
    }

LABEL_18:
    v70 = 0;
    v71 = v36 + 4;
    v72 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v70 >= v36[2])
      {
        goto LABEL_39;
      }

      v73 = v36;
      v74 = v71[v70];
      v75 = v74[2];
      v76 = *(v72 + 2);
      v77 = v76 + v75;
      if (__OFADD__(v76, v75))
      {
        goto LABEL_40;
      }

      sub_1BE048C84();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v77 <= *(v72 + 3) >> 1)
      {
        if (!v74[2])
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v76 <= v77)
        {
          v86 = v76 + v75;
        }

        else
        {
          v86 = v76;
        }

        v72 = sub_1BD1D7CC4(isUniquelyReferenced_nonNull_native, v86, 1, v72, v82, v83, v84, v85);
        if (!v74[2])
        {
LABEL_19:
          v74, v79, v80, v81, v82, v83, v84, v85;
          if (v75)
          {
            goto LABEL_41;
          }

          goto LABEL_20;
        }
      }

      v87 = *(v72 + 2);
      if ((*(v72 + 3) >> 1) - v87 < v75)
      {
        goto LABEL_43;
      }

      memcpy(&v72[v87 + 32], v74 + 4, v75);
      v74, v88, v89, v90, v91, v92, v93, v94;
      if (v75)
      {
        v95 = *(v72 + 2);
        v96 = __OFADD__(v95, v75);
        v97 = v95 + v75;
        if (v96)
        {
          goto LABEL_44;
        }

        *(v72 + 2) = v97;
      }

LABEL_20:
      ++v70;
      v36 = v73;
      if (v69 == v70)
      {
        goto LABEL_36;
      }
    }
  }
}

uint64_t sub_1BD208D3C()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

void sub_1BD208DB0(void *a1, int a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1BE04B0D4();
  v177 = *(v8 - 8);
  v178 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v176 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04B0F4();
  v173 = *(v10 - 8);
  v174 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v172 = (&v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA80, &unk_1BE0DCDD0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v175 = &v169 - v14;
  [a1 mutableCopy];
  sub_1BE053624();
  swift_unknownObjectRelease();
  sub_1BD0E5E8C(0, &qword_1EBD3DA60, 0x1E695CF30);
  swift_dynamicCast();
  v15 = v181;
  v16 = [v181 street];
  v17 = sub_1BE052434();
  v19 = v18;

  v182 = v17;
  v183 = v19;
  sub_1BD0DDEBC();
  v20 = sub_1BE053604();
  v19, v21, v22, v23, v24, v25, v26, v27;
  v35 = v20[2];
  v180 = v15;
  if (v35 < 3)
  {
    v20, v28, v29, v30, v31, v32, v33, v34;
  }

  else
  {
    v182 = v20;
    v183 = v20 + 4;
    v184 = xmmword_1BE0C1C30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DAD0, &qword_1BE0C2178);
    sub_1BD0DE4F4(&qword_1EBD3DAD8, &qword_1EBD3DAD0, &qword_1BE0C2178, MEMORY[0x1E69E6968]);
    sub_1BD20DFE4();
    v15 = v180;
    sub_1BE0526D4();
    v37 = v36;
    v20, v36, v38, v39, v40, v41, v42, v43;
    v44 = sub_1BE052404();
    v37, v45, v46, v47, v48, v49, v50, v51;
    [v15 setStreet_];
  }

  v52 = [v15 ISOCountryCode];
  sub_1BE052434();
  v54 = v53;

  sub_1BE0524C4();
  v56 = v55;
  v54, v55, v57, v58, v59, v60, v61, v62;
  v63 = sub_1BE052404();
  v56, v64, v65, v66, v67, v68, v69, v70;
  [v15 setISOCountryCode_];

  v71 = [objc_opt_self() supportedCountries];
  sub_1BD0E5E8C(0, &qword_1EBD3DA70, 0x1E695CE68);
  v72 = sub_1BE052744();

  if (v72 >> 62)
  {
    v80 = sub_1BE053704();
    v179 = a2;
    if (v80)
    {
      goto LABEL_6;
    }

LABEL_16:
    v72, v73, v74, v75, v76, v77, v78, v79;
    v82 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v80 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v179 = a2;
  if (!v80)
  {
    goto LABEL_16;
  }

LABEL_6:
  v182 = MEMORY[0x1E69E7CC0];
  sub_1BD03B254(0, v80 & ~(v80 >> 63), 0, v75, v76, v77, v78, v79);
  if (v80 < 0)
  {
    __break(1u);
    return;
  }

  v169 = a1;
  v170 = a3;
  v171 = v4;
  v81 = 0;
  v82 = v182;
  do
  {
    if ((v72 & 0xC000000000000001) != 0)
    {
      v83 = MEMORY[0x1BFB40900](v81, v72);
    }

    else
    {
      v83 = *(v72 + 8 * v81 + 32);
    }

    v84 = v83;
    v85 = [v83 isoCountryCode];
    sub_1BE052434();
    v87 = v86;

    v88 = sub_1BE0524C4();
    v90 = v89;

    v87, v91, v92, v93, v94, v95, v96, v97;
    v182 = v82;
    v106 = v82[2];
    v105 = v82[3];
    if (v106 >= v105 >> 1)
    {
      sub_1BD03B254((v105 > 1), v106 + 1, 1, v100, v101, v102, v103, v104);
      v82 = v182;
    }

    ++v81;
    v82[2] = v106 + 1;
    v107 = &v82[2 * v106];
    v107[4] = v88;
    v107[5] = v90;
  }

  while (v80 != v81);
  v72, v98, v99, v100, v101, v102, v103, v104;
  a3 = v170;
  v4 = v171;
  a1 = v169;
LABEL_17:
  v108 = v180;
  v109 = [v180 ISOCountryCode];
  v110 = sub_1BE052434();
  v112 = v111;

  v182 = v110;
  v183 = v112;
  MEMORY[0x1EEE9AC00](v113);
  *(&v169 - 2) = &v182;
  LOBYTE(v109) = sub_1BD2FF084(sub_1BD20DFC4, (&v169 - 4), v82);
  v112, v114, v115, v116, v117, v118, v119, v120;
  v82, v121, v122, v123, v124, v125, v126, v127;
  if ((v109 & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    v129 = swift_getKeyPath();
    v130 = v172;
    sub_1BE04D8B4(v172);
    KeyPath, v131, v132, v133, v134, v135, v136, v137;
    v129, v138, v139, v140, v141, v142, v143, v144;
    v145 = v176;
    sub_1BE04B0E4();
    (*(v173 + 8))(v130, v174);
    v146 = v175;
    sub_1BE04B0C4();
    (*(v177 + 8))(v145, v178);
    v147 = sub_1BE04B084();
    v148 = *(v147 - 8);
    if ((*(v148 + 48))(v146, 1, v147) == 1)
    {
      sub_1BD20DE2C(v146);
      v149 = 0xE200000000000000;
    }

    else
    {
      sub_1BE04B004();
      v150 = v146;
      v152 = v151;
      (*(v148 + 8))(v150, v147);
      sub_1BE0524C4();
      v149 = v153;
      v152, v153, v154, v155, v156, v157, v158, v159;
    }

    v160 = sub_1BE052404();
    v149, v161, v162, v163, v164, v165, v166, v167;
    [v108 setISOCountryCode_];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v182 = v108;
  v168 = v108;
  sub_1BE048964();
  sub_1BE04D8C4();
  *(v4 + OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__draftAddressSource) = v179;

  *(v4 + OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__draftAddressFormattingConstrained) = a3;
  sub_1BD20A594();
}

id sub_1BD20958C()
{
  v117 = [objc_allocWithZone(MEMORY[0x1E695CF30]) init];
  sub_1BD20899C();
  v8 = v0[2];
  if (v8)
  {
    v9 = 32;
    v10 = *MEMORY[0x1E695CC30];
    v116 = v0;
    while (1)
    {
      v118 = v9;
      v119 = v8;
      v11 = *(v0 + v9);
      KeyPath = swift_getKeyPath();
      v13 = swift_getKeyPath();
      sub_1BE04D8B4(&v120);
      KeyPath, v14, v15, v16, v17, v18, v19, v20;
      v13, v21, v22, v23, v24, v25, v26, v27;
      v28 = &selRef_country;
      if (v11 != 6)
      {
        v28 = &selRef_ISOCountryCode;
      }

      v29 = v120;
      v30 = &selRef_state;
      if (v11 != 4)
      {
        v30 = &selRef_postalCode;
      }

      if (v11 <= 5)
      {
        v28 = v30;
      }

      v31 = &selRef_city;
      if (v11 != 2)
      {
        v31 = &selRef_subAdministrativeArea;
      }

      v32 = &selRef_street;
      if (v11)
      {
        v32 = &selRef_subLocality;
      }

      if (v11 <= 1)
      {
        v31 = v32;
      }

      if (v11 <= 3)
      {
        v28 = v31;
      }

      v33 = v10;
      v34 = [v120 *v28];
      sub_1BE052434();
      v36 = v35;

      v37 = sub_1BE052404();
      v36, v38, v39, v40, v41, v42, v43, v44;
      sub_1BE052434();
      v46 = v45;
      v47 = sub_1BE052404();
      v46, v48, v49, v50, v51, v52, v53, v54;
      [v117 setValue:v37 forKey:v47];

      v10 = v33;
      v55 = sub_1BE052434();
      v57 = v56;
      v59 = sub_1BE052434();
      v65 = v58;
      if (v55 == v59 && v57 == v58)
      {
        break;
      }

      v73 = sub_1BE053B84();
      v57, v74, v75, v76, v77, v78, v79, v80;
      v65, v81, v82, v83, v84, v85, v86, v87;
      if (v73)
      {
        goto LABEL_23;
      }

LABEL_4:
      v9 = v118 + 1;
      v8 = v119 - 1;
      v0 = v116;
      if (v119 == 1)
      {
        goto LABEL_25;
      }
    }

    v57, v58, v59, v60, v61, v62, v63, v64;
    v65, v66, v67, v68, v69, v70, v71, v72;
LABEL_23:
    v88 = swift_getKeyPath();
    v89 = swift_getKeyPath();
    sub_1BE04D8B4(&v120);
    v88, v90, v91, v92, v93, v94, v95, v96;
    v89, v97, v98, v99, v100, v101, v102, v103;
    v104 = v120;
    v105 = [v120 ISOCountryCode];

    if (!v105)
    {
      sub_1BE052434();
      v107 = v106;
      v105 = sub_1BE052404();
      v107, v108, v109, v110, v111, v112, v113, v114;
    }

    [v117 setISOCountryCode_];

    goto LABEL_4;
  }

LABEL_25:
  v0, v1, v2, v3, v4, v5, v6, v7;
  return v117;
}

void sub_1BD209980(void *a1, char a2, uint64_t a3)
{
  [a1 copy];
  sub_1BE053624();
  swift_unknownObjectRelease();
  sub_1BD0E5E8C(0, &qword_1EBD3DAC8, 0x1E695CF60);
  swift_dynamicCast();
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v9;
  sub_1BE048964();
  sub_1BE04D8C4();
  v8 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__draftAddressSource;
  *(v3 + OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__draftAddressSource) = a2;

  *(v3 + OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__draftAddressFormattingConstrained) = a3;
  sub_1BD208DB0(v7, *(v3 + v8), a3);
}

uint64_t sub_1BD209A98(uint64_t a1)
{
  v2 = v1;
  v103 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA78, &unk_1BE0C1E80);
  v111 = *(v3 - 8);
  v112 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v110 = &v99 - v4;
  v5 = sub_1BE04B0D4();
  v108 = *(v5 - 8);
  v109 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v107 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA80, &unk_1BE0DCDD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v102 = &v99 - v8;
  v9 = sub_1BE04B0F4();
  v10 = *(v9 - 8);
  v114 = v9;
  v115 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v105 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v99 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA88, &qword_1BE0C1E90);
  v100 = *(v14 - 8);
  v101 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v99 = &v99 - v15;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA90, &qword_1BE0C1E98);
  v16 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v18 = &v99 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA98, &qword_1BE0C1EA0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v99 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DAA0, &qword_1BE0C1EA8);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v99 - v25;
  v27 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__originalAddress;
  v117 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA20, &qword_1BE0C1C60);
  sub_1BE04D874();
  (*(v24 + 32))(v2 + v27, v26, v23);
  v28 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__invalidKeys;
  v29 = MEMORY[0x1E69E7CD0];
  v117 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA30, &qword_1BE0C1C68);
  sub_1BE04D874();
  v30 = *(v20 + 32);
  v30(v2 + v28, v22, v19);
  v31 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__requiredKeys;
  v117 = v29;
  sub_1BE04D874();
  v30(v2 + v31, v22, v19);
  v32 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__excludedKeys;
  v117 = v29;
  v33 = v103;
  sub_1BE04D874();
  v34 = v2 + v32;
  v35 = v114;
  v30(v34, v22, v19);
  v36 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__contactFormatValidator;
  v117 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA40, &qword_1BE0C1C70);
  sub_1BE04D874();
  v37 = *(v16 + 32);
  v104 = v36;
  v38 = v18;
  v39 = v102;
  v37(v2 + v36, v38, v113);
  v40 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__formattingSpecification;
  v117 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA50, &qword_1BE0C1C78);
  v41 = v99;
  sub_1BE04D874();
  (*(v100 + 32))(v2 + v40, v41, v101);
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BE053704())
  {
    sub_1BD1120F4(MEMORY[0x1E69E7CC0]);
    v29 = v98;
  }

  v103 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel_subscribers;
  *(v2 + OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel_subscribers) = v29;
  v42 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__countryCodeDidChangePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DAA8, &qword_1BE0C1EB0);
  swift_allocObject();
  *(v2 + v42) = sub_1BE04D834();
  v43 = v115;
  v44 = *(v115 + 16);
  v45 = v106;
  v44(v106, v33, v35);
  swift_beginAccess();
  v44(v105, v45, v35);
  sub_1BE04D874();
  v46 = *(v43 + 8);
  v115 = v43 + 8;
  v46(v45, v35);
  swift_endAccess();
  v47 = [objc_allocWithZone(MEMORY[0x1E695CF30]) init];
  v48 = v107;
  sub_1BE04B0E4();
  sub_1BE04B0C4();
  (*(v108 + 8))(v48, v109);
  v49 = sub_1BE04B084();
  v50 = *(v49 - 8);
  if ((*(v50 + 48))(v39, 1, v49) == 1)
  {
    sub_1BD20DE2C(v39);
    v51 = 0xE200000000000000;
  }

  else
  {
    sub_1BE04B004();
    v52 = v39;
    v54 = v53;
    (*(v50 + 8))(v52, v49);
    sub_1BE0524C4();
    v51 = v55;
    v54, v55, v56, v57, v58, v59, v60, v61;
  }

  v62 = sub_1BE052404();
  v51, v63, v64, v65, v66, v67, v68, v69;
  [v47 setISOCountryCode_];

  swift_beginAccess();
  v116 = v47;
  sub_1BD0E5E8C(0, &qword_1EBD3DA60, 0x1E695CF30);
  v70 = v47;
  sub_1BE04D874();
  swift_endAccess();
  *(v2 + OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__draftAddressSource) = 6;
  *(v2 + OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__draftAddressFormattingConstrained) = 2;
  swift_beginAccess();
  v71 = v110;
  sub_1BE04D884();
  swift_endAccess();
  swift_unownedRetainStrong();
  v72 = swift_unownedRetain();
  v72, v73, v74, v75, v76, v77, v78, v79;
  v80 = swift_allocObject();
  v80[2] = v2;
  sub_1BD0DE4F4(&qword_1EBD3DAB0, &qword_1EBD3DA78, &unk_1BE0C1E80, MEMORY[0x1E695C068]);
  v81 = v112;
  v82 = sub_1BE04D954();
  v80, v83, v84, v85, v86, v87, v88, v89;
  (*(v111 + 8))(v71, v81);
  swift_beginAccess();
  sub_1BE04D7D4();
  swift_endAccess();
  v82, v90, v91, v92, v93, v94, v95, v96;
  sub_1BD20A594();

  v46(v33, v114);
  return v2;
}

void sub_1BD20A474(void **a1, char *a2)
{
  v3 = *a1;
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  sub_1BE04D8B4(&v47);
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  v5, v13, v14, v15, v16, v17, v18, v19;
  a2, v20, v21, v22, v23, v24, v25, v26;
  v27 = v47;
  v28 = [v47 ISOCountryCode];

  if (v28)
  {
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:

    goto LABEL_7;
  }

  sub_1BE052434();
  v39 = v38;
  v28 = sub_1BE052404();
  v39, v40, v41, v42, v43, v44, v45, v46;
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v29 = [v3 hasFormatValidationConfigurationForCountryCode_];

  if ((v29 & 1) == 0)
  {
LABEL_7:
    v37 = 2;
    goto LABEL_8;
  }

  v37 = 1;
LABEL_8:
  *&a2[OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__draftAddressFormattingConstrained] = v37;
  a2, v30, v31, v32, v33, v34, v35, v36;
}

void sub_1BD20A594()
{
  v1 = v0;
  type metadata accessor for PostalAddressEditingModel(0);
  sub_1BD20DEB4();
  v2 = sub_1BE04D814();
  sub_1BE04D854();
  v2, v3, v4, v5, v6, v7, v8, v9;
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  sub_1BE04D8B4(v193);
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  v11, v19, v20, v21, v22, v23, v24, v25;
  v26 = v193[0];
  v27 = objc_opt_self();
  v28 = swift_getKeyPath();
  v29 = swift_getKeyPath();
  sub_1BE04D8B4(v193);
  v28, v30, v31, v32, v33, v34, v35, v36;
  v29, v37, v38, v39, v40, v41, v42, v43;
  v44 = v193[0];
  v45 = [v193[0] ISOCountryCode];

  sub_1BE052434();
  v47 = v46;

  sub_1BE0524B4();
  v49 = v48;
  v47, v48, v50, v51, v52, v53, v54, v55;
  v56 = sub_1BE052404();
  v49, v57, v58, v59, v60, v61, v62, v63;
  v64 = [v27 localizedCountryNameForISOCountryCode_];

  if (!v64)
  {
    sub_1BE052434();
    v66 = v65;
    v64 = sub_1BE052404();
    v66, v67, v68, v69, v70, v71, v72, v73;
  }

  [v26 setCountry_];

  v74 = swift_getKeyPath();
  v75 = swift_getKeyPath();
  sub_1BE04D8B4(v193);
  v74, v76, v77, v78, v79, v80, v81, v82;
  v75, v83, v84, v85, v86, v87, v88, v89;
  v90 = v193[0];
  v91 = [v193[0] ISOCountryCode];

  sub_1BE052434();
  v93 = v92;

  sub_1BE0524B4();
  v95 = v94;
  v93, v94, v96, v97, v98, v99, v100, v101;
  v102 = sub_1BE052404();
  v95, v103, v104, v105, v106, v107, v108, v109;
  v110 = [v27 specificationForCountry_];

  swift_getKeyPath();
  swift_getKeyPath();
  v193[0] = v110;
  sub_1BE048964();
  sub_1BE04D8C4();
  v111 = swift_getKeyPath();
  v112 = swift_getKeyPath();
  sub_1BE04D8B4(v193);
  v111, v113, v114, v115, v116, v117, v118, v119;
  v112, v120, v121, v122, v123, v124, v125, v126;
  v127 = v193[0];
  v128 = [v193[0] ISOCountryCode];

  if (!v128)
  {
    sub_1BE052434();
    v130 = v129;
    v128 = sub_1BE052404();
    v130, v131, v132, v133, v134, v135, v136, v137;
  }

  v138 = swift_getKeyPath();
  v139 = swift_getKeyPath();
  sub_1BE04D8B4(v193);
  v138, v140, v141, v142, v143, v144, v145, v146;
  v139, v147, v148, v149, v150, v151, v152, v153;
  v154 = v193[0];
  if (!v193[0])
  {

    goto LABEL_9;
  }

  v155 = [v193[0] hasFormatValidationConfigurationForCountryCode_];

  if ((v155 & 1) == 0)
  {
LABEL_9:
    v156 = 2;
    goto LABEL_10;
  }

  v156 = 1;
LABEL_10:
  *(v1 + OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__draftAddressFormattingConstrained) = v156;
  v157 = *(v1 + OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__countryCodeDidChangePublisher);
  v158 = swift_getKeyPath();
  v159 = swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8B4(v193);
  v158, v160, v161, v162, v163, v164, v165, v166;
  v159, v167, v168, v169, v170, v171, v172, v173;
  v174 = v193[0];
  v175 = [v193[0] ISOCountryCode];

  v176 = sub_1BE052434();
  v178 = v177;

  v193[0] = v176;
  v193[1] = v178;
  sub_1BE04D824();
  v178, v179, v180, v181, v182, v183, v184, v185;
  v157, v186, v187, v188, v189, v190, v191, v192;
  sub_1BD20AA3C();
}

void sub_1BD20AA3C()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v246);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  v16 = v246;
  v17 = [v246 state];
  if (!v17)
  {
    sub_1BE052434();
    v19 = v18;
    v17 = sub_1BE052404();
    v19, v20, v21, v22, v23, v24, v25, v26;
  }

  v27 = sub_1BE052434();
  v29 = v28;

  v30 = swift_getKeyPath();
  v31 = swift_getKeyPath();
  sub_1BE04D8B4(&v246);
  v30, v32, v33, v34, v35, v36, v37, v38;
  v31, v39, v40, v41, v42, v43, v44, v45;
  v53 = v246;
  if (!v246)
  {
    goto LABEL_36;
  }

  v54 = *MEMORY[0x1E695CC28];
  v55 = swift_getKeyPath();
  v56 = swift_getKeyPath();
  v57 = v54;
  sub_1BE04D8B4(&v246);
  v55, v58, v59, v60, v61, v62, v63, v64;
  v56, v65, v66, v67, v68, v69, v70, v71;
  v72 = v246;
  v73 = [v246 ISOCountryCode];

  if (!v73)
  {
    sub_1BE052434();
    v75 = v74;
    v73 = sub_1BE052404();
    v75, v76, v77, v78, v79, v80, v81, v82;
  }

  v83 = [v53 contactFieldConfigurationForPostalField:v57 forCountryCode:v73];

  if (!v83)
  {
LABEL_36:
    v29, v46, v47, v48, v49, v50, v51, v52;

    return;
  }

  objc_opt_self();
  v84 = swift_dynamicCastObjCClass();
  if (!v84)
  {
    v29, v85, v86, v87, v88, v89, v90, v91;

    return;
  }

  v92 = v84;
  v93 = [v84 pickerItems];
  if (!v93)
  {
LABEL_64:

    __break(1u);
    goto LABEL_65;
  }

  v94 = v93;
  v244 = v83;
  v245 = v29;
  v243 = v27;
  sub_1BD0E5E8C(0, &qword_1EBD3DA68, 0x1E69B8738);
  v29 = sub_1BE052744();

  v102 = v29 & 0xFFFFFFFFFFFFFF8;
  if (v29 >> 62)
  {
LABEL_51:
    v27 = sub_1BE053704();
  }

  else
  {
    v27 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v103 = 0;
  while (v27 != v103)
  {
    if ((v29 & 0xC000000000000001) != 0)
    {
      v104 = MEMORY[0x1BFB40900](v103, v29);
    }

    else
    {
      if (v103 >= *(v102 + 16))
      {
        goto LABEL_48;
      }

      v104 = *(v29 + 8 * v103 + 32);
    }

    v105 = v104;
    if (__OFADD__(v103, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v106 = [v104 isValueAccepted_];

    ++v103;
    if (v106)
    {
      v245, v95, v96, v97, v98, v99, v100, v101;

      goto LABEL_36;
    }
  }

  v29, v95, v96, v97, v98, v99, v100, v101;

  v107 = swift_getKeyPath();
  v108 = swift_getKeyPath();
  sub_1BE04D8B4(&v246);
  v107, v109, v110, v111, v112, v113, v114, v115;
  v108, v116, v117, v118, v119, v120, v121, v122;
  v123 = v246;
  if (v246)
  {
    v27 = [v246 state];
    if (!v27)
    {
      sub_1BE052434();
      v125 = v124;
      v27 = sub_1BE052404();
      v125, v126, v127, v128, v129, v130, v131, v132;
    }

    v17 = sub_1BE052434();
    v134 = v133;

    v135 = [v92 pickerItems];
    if (!v135)
    {
      goto LABEL_66;
    }

    v136 = v135;
    v241 = v17;
    v242 = v134;
    v137 = sub_1BE052744();

    v102 = v137 & 0xFFFFFFFFFFFFFF8;
    if (v137 >> 62)
    {
      v29 = sub_1BE053704();
    }

    else
    {
      v29 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v145 = 0;
    while (v29 != v145)
    {
      if ((v137 & 0xC000000000000001) != 0)
      {
        v146 = MEMORY[0x1BFB40900](v145, v137);
      }

      else
      {
        if (v145 >= *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v146 = *(v137 + 8 * v145 + 32);
      }

      v147 = v146;
      if (__OFADD__(v145, 1))
      {
        goto LABEL_49;
      }

      v17 = [v146 isValueAccepted_];

      ++v145;
      if (v17)
      {
        v137, v138, v139, v140, v141, v142, v143, v144;

        v175 = v245;
        v177 = v242;
        v176 = v243;
        v178 = v241;
        goto LABEL_55;
      }
    }

    v242, v138, v139, v140, v141, v142, v143, v144;
    v137, v148, v149, v150, v151, v152, v153, v154;
  }

  v155 = [v92 pickerItems];
  if (!v155)
  {
LABEL_65:
    __break(1u);
LABEL_66:

    __break(1u);
    return;
  }

  v17 = v155;
  v156 = sub_1BE052744();

  v175 = v245;
  v176 = v243;
  if (!(v156 >> 62))
  {
    if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

LABEL_53:
    v156, v157, v158, v159, v160, v161, v162, v163;
    goto LABEL_54;
  }

  if (!sub_1BE053704())
  {
    goto LABEL_53;
  }

LABEL_42:
  if ((v156 & 0xC000000000000001) == 0)
  {
    if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v164 = *(v156 + 32);
      goto LABEL_45;
    }

    __break(1u);
    goto LABEL_64;
  }

  v164 = MEMORY[0x1BFB40900](0, v156);
LABEL_45:
  v172 = v164;
  v156, v165, v166, v167, v168, v169, v170, v171;
  v173 = [v172 submissionValue];

  if (!v173)
  {
LABEL_54:
    v178 = 0;
    v177 = 0xE000000000000000;
    goto LABEL_55;
  }

  v178 = sub_1BE052434();
  v177 = v174;

LABEL_55:
  if (v178 == v176 && v177 == v175)
  {

    v177, v179, v180, v181, v182, v183, v184, v185;
    v175, v186, v187, v188, v189, v190, v191, v192;
  }

  else
  {
    v193 = sub_1BE053B84();
    v175, v194, v195, v196, v197, v198, v199, v200;
    if (v193)
    {

      v177, v201, v202, v203, v204, v205, v206, v207;
    }

    else
    {
      type metadata accessor for PostalAddressEditingModel(0);
      sub_1BD20DEB4();
      v208 = sub_1BE04D814();
      sub_1BE04D854();
      v208, v209, v210, v211, v212, v213, v214, v215;
      v216 = swift_getKeyPath();
      v217 = swift_getKeyPath();
      sub_1BE04D8B4(&v246);
      v216, v218, v219, v220, v221, v222, v223, v224;
      v217, v225, v226, v227, v228, v229, v230, v231;
      v232 = v246;
      v233 = sub_1BE052404();
      v177, v234, v235, v236, v237, v238, v239, v240;
      [v232 setState_];
    }
  }
}

uint64_t sub_1BD20B140(unsigned __int8 a1)
{
  v1 = 0x31746565727473;
  v2 = 0x6F436C6174736F70;
  if (a1 != 6)
  {
    v2 = 0x7972746E756F63;
  }

  v3 = 0xD000000000000015;
  if (a1 != 4)
  {
    v3 = 0x6574617473;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x6C61636F4C627573;
  if (a1 != 2)
  {
    v4 = 2037672291;
  }

  if (a1)
  {
    v1 = 0x32746565727473;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1BD20B268@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BD20DBA0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1BD20B298(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = sub_1BE052434();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
}

void *sub_1BD20B2EC(char a1)
{
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  sub_1BE04D8B4(v27);
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v2, v10, v11, v12, v13, v14, v15, v16;
  v17 = v27[0];
  v18 = swift_getKeyPath();
  v27[2] = v17;
  swift_getAtKeyPath();

  v18, v19, v20, v21, v22, v23, v24, v25;
  return v27[0];
}

void sub_1BD20B3A0(uint64_t a1, uint64_t a2, char a3)
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for PostalAddressEditingModel(0);
  sub_1BD20DEB4();
  v6 = sub_1BE04D814();
  sub_1BE04D854();
  v6, v7, v8, v9, v10, v11, v12, v13;
  v14 = swift_getKeyPath();
  v15 = swift_getKeyPath();
  sub_1BE04D8B4(v46);
  v14, v16, v17, v18, v19, v20, v21, v22;
  v15, v23, v24, v25, v26, v27, v28, v29;
  v30 = v46[0];
  v46[1] = a2;
  v47 = v46[0];
  v46[0] = a1;
  swift_setAtReferenceWritableKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DAC0, qword_1BE0C1FD0);
  v46[0] = KeyPath;
  v31 = swift_getKeyPath();
  v47 = v31;
  LOBYTE(v30) = sub_1BE052334();
  v31, v32, v33, v34, v35, v36, v37, v38;
  if (v30)
  {
    sub_1BD20A594();
  }

  KeyPath, v39, v40, v41, v42, v43, v44, v45;
}

uint64_t sub_1BD20B4F4(uint64_t a1)
{
  v1 = a1;
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(&v207);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  v18 = v207;
  v19 = sub_1BD2514B0(v1);
  v21 = v20;

  v22 = swift_getKeyPath();
  v23 = swift_getKeyPath();
  sub_1BE04D8B4(&v207);
  v22, v24, v25, v26, v27, v28, v29, v30;
  v23, v31, v32, v33, v34, v35, v36, v37;
  v38 = v207;
  if (!v207)
  {
    goto LABEL_9;
  }

  v39 = sub_1BD2514B0(v1);
  v41 = v40;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CB18, &unk_1BE0BFD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B69E0;
  *(inited + 32) = v1;
  sub_1BD111A78(inited);
  v44 = v43;
  swift_setDeallocating();
  v207 = v44;
  v45 = sub_1BD251514(v1);
  v47 = v46;
  v49 = sub_1BE052434();
  v55 = v45;
  v56 = v48;
  if (v55 == v49 && v47 == v48)
  {
    v47, v48, v49, v50, v51, v52, v53, v54;
    v56, v57, v58, v59, v60, v61, v62, v63;
  }

  else
  {
    v64 = sub_1BE053B84();
    v47, v65, v66, v67, v68, v69, v70, v71;
    v56, v72, v73, v74, v75, v76, v77, v78;
    if ((v64 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  sub_1BD2A5394(&v206, 6);
LABEL_7:
  v79 = swift_getKeyPath();
  v80 = swift_getKeyPath();
  sub_1BE04D8B4(&v206);
  v79, v81, v82, v83, v84, v85, v86, v87;
  v80, v88, v89, v90, v91, v92, v93, v94;
  v95 = v206;
  v96 = v207;
  sub_1BD6A0F4C(v207, v206);
  v98 = v97;
  v95, v99, v100, v101, v102, v103, v104, v105;
  v96, v106, v107, v108, v109, v110, v111, v112;
  if (v98)
  {
    v41, v113, v114, v115, v116, v117, v118, v119;
    goto LABEL_9;
  }

  if (v19 != v39 || v21 != v41)
  {
    v198 = sub_1BE053B84();
    v41, v199, v200, v201, v202, v203, v204, v205;
    if (v198)
    {
      v41 = v21;
      goto LABEL_21;
    }

LABEL_9:
    v120 = swift_getKeyPath();
    v121 = swift_getKeyPath();
    sub_1BE04D8B4(&v207);
    v120, v122, v123, v124, v125, v126, v127, v128;
    v121, v129, v130, v131, v132, v133, v134, v135;
    v143 = v207;
    if (v207)
    {
      sub_1BD251514(v1);
      v145 = v144;
      v146 = swift_getKeyPath();
      v147 = swift_getKeyPath();
      sub_1BE04D8B4(&v207);
      v146, v148, v149, v150, v151, v152, v153, v154;
      v147, v155, v156, v157, v158, v159, v160, v161;
      v162 = v207;
      v163 = [v207 ISOCountryCode];

      if (!v163)
      {
        sub_1BE052434();
        v165 = v164;
        v163 = sub_1BE052404();
        v165, v166, v167, v168, v169, v170, v171, v172;
      }

      v173 = sub_1BE052404();
      v21, v174, v175, v176, v177, v178, v179, v180;
      v181 = sub_1BE052404();
      v145, v182, v183, v184, v185, v186, v187, v188;
      v189 = [v143 isPostalAddressFieldEntry:v173 validForPostalFieldKey:v181 forCountryCode:v163];

      if (!v189)
      {
        return 0;
      }
    }

    else
    {
      v21, v136, v137, v138, v139, v140, v141, v142;
    }

    return 1;
  }

  v21, v113, v114, v115, v116, v117, v118, v119;
LABEL_21:
  v41, v190, v191, v192, v193, v194, v195, v196;
  return 0;
}

BOOL sub_1BD20B8F0(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  sub_1BE04D8B4(&v92);
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v2, v10, v11, v12, v13, v14, v15, v16;
  v17 = v92;
  sub_1BD208538(v92, v18, v19, v20, v21, v22, v23, v24);
  v26 = v25;
  v17, v27, v28, v29, v30, v31, v32, v33;
  v41 = v26[2];
  if (v41)
  {
    v92 = MEMORY[0x1E69E7CC0];
    sub_1BD03B254(0, v41, 0, v36, v37, v38, v39, v40);
    v42 = 32;
    v43 = v92;
    do
    {
      v44 = *(v26 + v42);
      v45 = swift_getKeyPath();
      v46 = swift_getKeyPath();
      sub_1BE04D8B4(v91);
      v45, v47, v48, v49, v50, v51, v52, v53;
      v46, v54, v55, v56, v57, v58, v59, v60;
      v61 = v91[0];
      v62 = [v91[0] *off_1E800F838[v44]];
      v63 = sub_1BE052434();
      v65 = v64;

      v92 = v43;
      v74 = v43[2];
      v73 = v43[3];
      if (v74 >= v73 >> 1)
      {
        sub_1BD03B254((v73 > 1), v74 + 1, 1, v68, v69, v70, v71, v72);
        v43 = v92;
      }

      v43[2] = v74 + 1;
      v75 = &v43[2 * v74];
      v75[4] = v63;
      v75[5] = v65;
      ++v42;
      --v41;
    }

    while (v41);
    v26, v66, v67, v68, v69, v70, v71, v72;
  }

  else
  {
    v26, v34, v35, v36, v37, v38, v39, v40;
    v43 = MEMORY[0x1E69E7CC0];
  }

  v83 = v43 + 5;
  v84 = v43[2] + 1;
  do
  {
    if (!--v84)
    {
      break;
    }

    v86 = *(v83 - 1);
    v85 = *v83;
    v83 += 2;
    v87 = v86 & 0xFFFFFFFFFFFFLL;
  }

  while ((v85 & 0x2000000000000000) != 0 ? HIBYTE(v85) & 0xF : v87);
  v89 = v84 == 0;
  v43, v76, v77, v78, v79, v80, v81, v82;
  return v89;
}

void sub_1BD20BAFC()
{
  sub_1BD20899C();
  v8 = v0;
  v9 = v0[2];
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v88 = MEMORY[0x1E69E7CC0];
    sub_1BD531DC0(0, v9, 0, v3, v4, v5, v6, v7);
    v11 = 0;
    v12 = v88;
    do
    {
      if (v11 >= v8[2])
      {
        __break(1u);
        return;
      }

      v13 = *(v8 + v11 + 32);
      v14 = sub_1BE052434();
      v16 = v15;
      v18 = sub_1BE052434();
      v24 = v14;
      v25 = v17;
      if (v24 == v18 && v16 == v17)
      {
        v16, v17, v18, v19, v20, v21, v22, v23;
        v25, v26, v27, v28, v29, v30, v31, v32;
        v13 = 7;
      }

      else
      {
        v40 = sub_1BE053B84();
        v16, v41, v42, v43, v44, v45, v46, v47;
        v25, v48, v49, v50, v51, v52, v53, v54;
        if (v40)
        {
          v13 = 7;
        }
      }

      v56 = *(v88 + 2);
      v55 = *(v88 + 3);
      if (v56 >= v55 >> 1)
      {
        sub_1BD531DC0((v55 > 1), v56 + 1, 1, v35, v36, v37, v38, v39);
      }

      ++v11;
      *(v88 + 2) = v56 + 1;
      v88[v56 + 32] = v13;
    }

    while (v9 != v11);
    v8, v33, v34, v35, v36, v37, v38, v39;
    v10 = MEMORY[0x1E69E7CC0];
    v64 = *(v88 + 2);
    if (!v64)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v0, v1, v2, v3, v4, v5, v6, v7;
  v12 = MEMORY[0x1E69E7CC0];
  v64 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v64)
  {
LABEL_13:
    v89 = v10;
    sub_1BD531DF0(0, v64, 0, v59, v60, v61, v62, v63);
    v65 = 32;
    v66 = v89;
    do
    {
      v67 = sub_1BD20B4F4(v12[v65]);
      v90 = v66;
      v76 = v66[2];
      v75 = v66[3];
      if (v76 >= v75 >> 1)
      {
        v77 = v67;
        sub_1BD531DF0((v75 > 1), v76 + 1, 1, v70, v71, v72, v73, v74);
        v67 = v77;
        v66 = v90;
      }

      v66[2] = v76 + 1;
      *(v66 + v76 + 32) = v67 & 1;
      ++v65;
      --v64;
    }

    while (v64);
    v12, v68, v69, v70, v71, v72, v73, v74;
    goto LABEL_20;
  }

LABEL_19:
  v12, v57, v58, v59, v60, v61, v62, v63;
  v66 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v85 = v66[2];
  v86 = (v66 + 4);
  do
  {
    if (!v85)
    {
      break;
    }

    v87 = *v86++;
    --v85;
  }

  while ((v87 & 1) != 0);
  v66, v78, v79, v80, v81, v82, v83, v84;
}

uint64_t sub_1BD20BE24()
{
  v1 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__locale;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DAE8, &qword_1BE0C2180);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__originalAddress;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DAA0, &qword_1BE0C1EA8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__invalidKeys;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA98, &qword_1BE0C1EA0);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__requiredKeys, v6);
  v7(v0 + OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__excludedKeys, v6);
  v8 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__contactFormatValidator;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA90, &qword_1BE0C1E98);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__formattingSpecification;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA88, &qword_1BE0C1E90);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel___draftAddress;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DAF0, &qword_1BE0C2188);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  *(v0 + OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel_subscribers), v14, v15, v16, v17, v18, v19, v20;
  *(v0 + OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__countryCodeDidChangePublisher), v21, v22, v23, v24, v25, v26, v27;
  return v0;
}

uint64_t sub_1BD20C078()
{
  sub_1BD20BE24();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PostalAddressEditingModel(uint64_t a1)
{
  result = qword_1EBD3DA00;
  if (!qword_1EBD3DA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD20C124(uint64_t a1)
{
  sub_1BD20C374(319);
  if (v1 <= 0x3F)
  {
    sub_1BD0E4578(319, &qword_1EBD3DA18, &qword_1EBD3DA20, &qword_1BE0C1C60);
    if (v2 <= 0x3F)
    {
      sub_1BD0E4578(319, &qword_1EBD3DA28, &qword_1EBD3DA30, &qword_1BE0C1C68);
      if (v3 <= 0x3F)
      {
        sub_1BD0E4578(319, &qword_1EBD3DA38, &qword_1EBD3DA40, &qword_1BE0C1C70);
        if (v4 <= 0x3F)
        {
          sub_1BD0E4578(319, &qword_1EBD3DA48, &qword_1EBD3DA50, &qword_1BE0C1C78);
          if (v5 <= 0x3F)
          {
            sub_1BD20C3CC(319);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1BD20C374(uint64_t a1)
{
  if (!qword_1EBD3DA10)
  {
    sub_1BE04B0F4();
    v1 = sub_1BE04D8D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD3DA10);
    }
  }
}

void sub_1BD20C3CC(uint64_t a1)
{
  if (!qword_1EBD3DA58)
  {
    sub_1BD0E5E8C(255, &qword_1EBD3DA60, 0x1E695CF30);
    v1 = sub_1BE04D8D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD3DA58);
    }
  }
}

uint64_t sub_1BD20C434@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PostalAddressEditingModel(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

void sub_1BD20C474(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x31746565727473;
  v5 = 0xEA00000000006564;
  v6 = 0x6F436C6174736F70;
  if (v2 != 6)
  {
    v6 = 0x7972746E756F63;
    v5 = 0xE700000000000000;
  }

  v7 = 0x80000001BE0C1D20;
  v8 = 0xD000000000000015;
  if (v2 != 4)
  {
    v8 = 0x6574617473;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000797469;
  v10 = 0x6C61636F4C627573;
  if (v2 != 2)
  {
    v10 = 2037672291;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 0x32746565727473;
    v3 = 0xE700000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

void *sub_1BD20C578()
{
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  sub_1BE04D8B4(v244);
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v2, v10, v11, v12, v13, v14, v15, v16;
  v17 = MEMORY[0x1E69E7CC0];
  if (!v244[0])
  {
    return v17;
  }

  v230 = v244[0];
  v18 = [v244[0] editingFieldArrangement];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0, &qword_1BE0C1E30);
  v19 = sub_1BE052744();

  v27 = v19[2];
  if (!v27)
  {
    v19, v20, v21, v22, v23, v24, v25, v26;
    v29 = MEMORY[0x1E69E7CC0];
LABEL_39:
    v174 = v29[2];
    v17 = MEMORY[0x1E69E7CC0];
    if (v174)
    {
      v175 = 0;
      v0 = &unk_1F3B8CF08;
      v176 = v29 + 4;
      v236 = v29;
      v241 = v29 + 4;
      v242 = v29[2];
      do
      {
        if (v175 >= v29[2])
        {
          goto LABEL_85;
        }

        v177 = v176[v175];
        v178 = sub_1BE048C84();
        sub_1BD400A30(v178, &unk_1F3B8CF08);
        if (v186)
        {
          v177, v179, v180, v181, v182, v183, v184, v185;
          v187 = &unk_1F3B8CF80;
        }

        else
        {
          v188 = v177[2];
          if (v188)
          {
            v243 = v17;
            v246 = MEMORY[0x1E69E7CC0];
            sub_1BD531E10(0, v188, 0, v181, v182, v183, v184, v185);
            v194 = 0;
            v195 = v246;
            v196 = v177 + 4;
            while (v194 < v177[2])
            {
              LODWORD(v0) = *(v196 + v194);
              if (v0 > 3)
              {
                if (*(v196 + v194) > 5u)
                {
                  if (v0 != 6)
                  {
                    goto LABEL_90;
                  }

                  v197 = 7;
                }

                else if (v0 == 4)
                {
                  v197 = 5;
                }

                else
                {
                  v197 = 6;
                }
              }

              else if (*(v196 + v194) > 2u)
              {
                v197 = 4;
              }

              else if (v0 == 1)
              {
                v197 = 2;
              }

              else
              {
                if (v0 != 2)
                {
                  goto LABEL_90;
                }

                v197 = 3;
              }

              v246 = v195;
              v199 = v195[2];
              v198 = v195[3];
              v0 = (v199 + 1);
              if (v199 >= v198 >> 1)
              {
                sub_1BD531E10((v198 > 1), v199 + 1, 1, v189, v190, v191, v192, v193);
                v195 = v246;
              }

              ++v194;
              v195[2] = v0;
              *(v195 + v199 + 32) = v197;
              if (v188 == v194)
              {
                v17 = v243;
                v29 = v236;
                goto LABEL_67;
              }
            }

            goto LABEL_83;
          }

          v195 = MEMORY[0x1E69E7CC0];
LABEL_67:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CA28, &unk_1BE0BFC60);
          v187 = swift_allocObject();
          v187[1] = xmmword_1BE0B69E0;
          *(v187 + 4) = v195;
          v177, v200, v201, v202, v203, v204, v205, v206;
          v176 = v241;
          v174 = v242;
          v0 = &unk_1F3B8CF08;
        }

        v207 = *(v187 + 2);
        v208 = v17[2];
        v209 = &v208[v207];
        if (__OFADD__(v208, v207))
        {
          goto LABEL_86;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v209 <= v17[3] >> 1)
        {
          if (!v207)
          {
            goto LABEL_41;
          }
        }

        else
        {
          if (v208 <= v209)
          {
            v218 = &v208[v207];
          }

          else
          {
            v218 = v208;
          }

          v17 = sub_1BD1D7CD8(isUniquelyReferenced_nonNull_native, v218, 1, v17);
          if (!v207)
          {
LABEL_41:
            v187, v211, v212, v213, v214, v215, v216, v217;
            goto LABEL_42;
          }
        }

        if ((v17[3] >> 1) - v17[2] < v207)
        {
          goto LABEL_87;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CA30, &qword_1BE0DCA50);
        swift_arrayInitWithCopy();
        v187, v219, v220, v221, v222, v223, v224, v225;
        v226 = v17[2];
        v227 = __OFADD__(v226, v207);
        v228 = v226 + v207;
        if (v227)
        {
          goto LABEL_88;
        }

        v17[2] = v228;
LABEL_42:
        ++v175;
      }

      while (v175 != v174);
    }

    v29, v167, v168, v169, v170, v171, v172, v173;

    return v17;
  }

  v246 = v17;
  sub_1BD531D80(0, v27, 0);
  v28 = 0;
  v29 = v246;
  v233 = v19 + 4;
  v231 = v19;
  v232 = v27;
  while (1)
  {
    if (v28 >= v19[2])
    {
      goto LABEL_84;
    }

    v234 = v28;
    v30 = v233[v28];
    v31 = v30[2];
    v237 = v30;
    if (v31)
    {
      break;
    }

    sub_1BE048C84();
    v49 = v17[2];
    if (v49)
    {
      v235 = v29;
      v0 = v17;
      goto LABEL_15;
    }

    v17, v51, v52, v53, v54, v55, v56, v57;
    v30, v160, v161, v162, v163, v164, v165, v166;
    v59 = v17;
LABEL_33:
    v246 = v29;
    v158 = v29[2];
    v157 = v29[3];
    v159 = v234;
    if (v158 >= v157 >> 1)
    {
      sub_1BD531D80((v157 > 1), (v158 + 1), 1);
      v159 = v234;
      v29 = v246;
    }

    v28 = v159 + 1;
    v29[2] = v158 + 1;
    v29[v158 + 4] = v59;
    if (v28 == v232)
    {
      v19, v150, v151, v152, v153, v154, v155, v156;
      goto LABEL_39;
    }
  }

  v244[0] = v17;
  sub_1BE048C84();
  sub_1BD531DC0(0, v31, 0, v32, v33, v34, v35, v36);
  v37 = 0;
  v0 = v244[0];
  v38 = v30 + 5;
  while (v37 < v30[2])
  {
    v39 = *(v38 - 1);
    v40 = *v38;
    sub_1BE048C84();
    v41 = sub_1BD251780(v39, v40);
    if (v41 == 8)
    {
      goto LABEL_89;
    }

    v244[0] = v0;
    v48 = v0[2];
    v47 = v0[3];
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      v50 = v41;
      sub_1BD531DC0((v47 > 1), v48 + 1, 1, v42, v43, v44, v45, v46);
      v41 = v50;
      v0 = v244[0];
    }

    ++v37;
    v0[2] = v49;
    *(v0 + v48 + 32) = v41;
    v38 += 2;
    v30 = v237;
    if (v31 == v37)
    {
      v235 = v29;
LABEL_15:
      v58 = 0;
      v238 = v0 + 4;
      v239 = v49;
      v59 = v17;
      v240 = v0;
      do
      {
        v83 = *(v238 + v58);
        v84 = swift_getKeyPath();
        v85 = swift_getKeyPath();
        sub_1BE04D8B4(v244);
        v84, v86, v87, v88, v89, v90, v91, v92;
        v85, v93, v94, v95, v96, v97, v98, v99;
        v100 = v244[0];
        if (*(v244[0] + 2) && (sub_1BE053D04(), sub_1BE052434(), v102 = v101, sub_1BE052524(), v102, v103, v104, v105, v106, v107, v108, v109, v110 = sub_1BE053D64(), v111 = -1 << v100[32], v112 = v110 & ~v111, ((*&v100[((v112 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v112) & 1) != 0))
        {
          v113 = ~v111;
          while (1)
          {
            v114 = sub_1BE052434();
            v116 = v115;
            v118 = sub_1BE052434();
            v124 = v117;
            if (v114 == v118 && v116 == v117)
            {
              v100, v117, v118, v119, v120, v121, v122, v123;
              v116, v60, v61, v62, v63, v64, v65, v66;
              v74 = v124;
              goto LABEL_17;
            }

            v125 = sub_1BE053B84();
            v116, v126, v127, v128, v129, v130, v131, v132;
            v124, v133, v134, v135, v136, v137, v138, v139;
            if (v125)
            {
              break;
            }

            v112 = (v112 + 1) & v113;
            if (((*&v100[((v112 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v112) & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          v74 = v100;
LABEL_17:
          v74, v67, v68, v69, v70, v71, v72, v73;
          v82 = v239;
          v0 = v240;
        }

        else
        {
LABEL_26:
          v100, v67, v68, v69, v70, v71, v72, v73;
          v140 = swift_isUniquelyReferenced_nonNull_native();
          v245 = v59;
          if ((v140 & 1) == 0)
          {
            sub_1BD531DC0(0, v59[2] + 1, 1, v77, v78, v79, v80, v81);
            v59 = v245;
          }

          v142 = v59[2];
          v141 = v59[3];
          v82 = v239;
          v0 = v240;
          if (v142 >= v141 >> 1)
          {
            sub_1BD531DC0((v141 > 1), v142 + 1, 1, v77, v78, v79, v80, v81);
            v59 = v245;
          }

          v59[2] = v142 + 1;
          *(v59 + v142 + 32) = v83;
        }

        ++v58;
      }

      while (v58 != v82);
      v0, v75, v76, v77, v78, v79, v80, v81;
      v237, v143, v144, v145, v146, v147, v148, v149;
      v17 = MEMORY[0x1E69E7CC0];
      v29 = v235;
      v19 = v231;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  v244[0] = 0;
  v244[1] = 0xE000000000000000;
  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000019, 0x80000001BE11E3A0);
  LOBYTE(v245) = v0;
  sub_1BE053974();
  result = sub_1BE053994();
  __break(1u);
  return result;
}

uint64_t sub_1BD20CF14(uint64_t a1)
{
  v1 = sub_1BD251514(a1);
  v3 = v2;
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  sub_1BE04D8B4(&v31);
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  v5, v13, v14, v15, v16, v17, v18, v19;
  v20 = v31;
  if (v31)
  {
    v21 = sub_1BE052404();
    v22 = [v20 localizedPlaceholderForKey_];

    if (v22)
    {
      v1 = sub_1BE052434();
      v3, v23, v24, v25, v26, v27, v28, v29;
    }
  }

  return v1;
}

id sub_1BD20D008(unsigned __int8 a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v8 = 5;
      }

      else
      {
        v8 = 6;
      }
    }

    else if (a1 == 4)
    {
      v8 = 3;
    }

    else
    {
      v8 = 4;
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    if (a1)
    {
      v9 = v4;
      (*(v3 + 104))(v7, *MEMORY[0x1E69B8068], v5);
      result = PKPassKitBundle();
      if (result)
      {
        v11 = result;
        v12 = sub_1BE04B6F4();

        (*(v3 + 8))(v7, v9);
        return v12;
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    v8 = 0;
  }

  return sub_1BD20CF14(v8);
}

uint64_t sub_1BD20D1DC(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1BE053B84(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1BE053B84();
    }
  }

  return result;
}

char *sub_1BD20D280(uint64_t a1)
{
  v1 = a1;
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(&v96);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  v18 = v96;
  if (!v96)
  {
    return v18;
  }

  sub_1BD251514(v1);
  v20 = v19;
  v21 = sub_1BE052404();
  v20, v22, v23, v24, v25, v26, v27, v28;
  v29 = swift_getKeyPath();
  v30 = swift_getKeyPath();
  sub_1BE04D8B4(&v96);
  v29, v31, v32, v33, v34, v35, v36, v37;
  v30, v38, v39, v40, v41, v42, v43, v44;
  v45 = v96;
  v46 = [v96 ISOCountryCode];

  if (!v46)
  {
    sub_1BE052434();
    v48 = v47;
    v46 = sub_1BE052404();
    v48, v49, v50, v51, v52, v53, v54, v55;
  }

  v56 = [v18 contactFieldConfigurationForPostalField:v21 forCountryCode:v46];

  if (!v56)
  {
    return 0;
  }

  objc_opt_self();
  v57 = swift_dynamicCastObjCClass();
  if (!v57)
  {

    return 0;
  }

  result = [v57 pickerItems];
  if (result)
  {
    v59 = result;
    sub_1BD0E5E8C(0, &qword_1EBD3DA68, 0x1E69B8738);
    v60 = sub_1BE052744();

    if (v60 >> 62)
    {
      goto LABEL_26;
    }

    v66 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v66)
    {
      while (1)
      {
        v94 = v56;
        v96 = MEMORY[0x1E69E7CC0];
        result = sub_1BD531E40(0, v66 & ~(v66 >> 63), 0, v61, v62, v63, v64, v65);
        if (v66 < 0)
        {
          break;
        }

        v67 = 0;
        v18 = v96;
        while (1)
        {
          v68 = v67 + 1;
          if (__OFADD__(v67, 1))
          {
            break;
          }

          if ((v60 & 0xC000000000000001) != 0)
          {
            v69 = MEMORY[0x1BFB40900](v67, v60);
          }

          else
          {
            if (v67 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v69 = *(v60 + 8 * v67 + 32);
          }

          v70 = v69;
          result = [v69 submissionValue];
          if (!result)
          {
            goto LABEL_30;
          }

          v71 = result;
          v72 = sub_1BE052434();
          v74 = v73;

          result = [v70 displayName];
          if (!result)
          {
            goto LABEL_31;
          }

          v75 = result;
          v76 = sub_1BE052434();
          v95 = v77;

          v96 = v18;
          v56 = v18[2];
          v85 = v18[3];
          if (v56 >= v85 >> 1)
          {
            sub_1BD531E40((v85 > 1), v56 + 1, 1, v80, v81, v82, v83, v84);
            v18 = v96;
          }

          v18[2] = v56 + 1;
          v86 = &v18[4 * v56];
          v86[4] = v72;
          v86[5] = v74;
          v86[6] = v76;
          v86[7] = v95;
          ++v67;
          if (v68 == v66)
          {
            v60, v78, v79, v80, v81, v82, v83, v84;

            return v18;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        v66 = sub_1BE053704();
        if (!v66)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_27:

    v60, v87, v88, v89, v90, v91, v92, v93;
    return MEMORY[0x1E69E7CC0];
  }

LABEL_32:
  __break(1u);
  return result;
}

char *sub_1BD20D60C(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 != 6)
      {
        return sub_1BD20DBEC();
      }

      v2 = 5;
    }

    else if (a1 == 4)
    {
      v2 = 3;
    }

    else
    {
      v2 = 4;
    }
  }

  else
  {
    if (a1 < 2u)
    {
      return 0;
    }

    if (a1 == 2)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }
  }

  return sub_1BD20D280(v2);
}

uint64_t sub_1BD20D69C(uint64_t a1)
{
  if (a1 > 3u)
  {
    if (a1 == 6)
    {
      v11 = 5;
    }

    else
    {
      v11 = a1;
    }

    if (a1 == 4)
    {
      v12 = 3;
    }

    else
    {
      v12 = 4;
    }

    if (a1 <= 5u)
    {
      a1 = v12;
    }

    else
    {
      a1 = v11;
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      a1 = 1;
    }

    else
    {
      a1 = 2;
    }
  }

  else if (a1)
  {
    v1 = sub_1BD20B2EC(1);
    v3 = v2;
    v2, v2, v4, v5, v6, v7, v8, v9;
    v10 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v10 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v10)
    {
      return 1;
    }

    a1 = 0;
  }

  return sub_1BD20B4F4(a1);
}

void sub_1BD20D768(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(a2);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;

  v4, v12, v13, v14, v15, v16, v17, v18;
}

uint64_t sub_1BD20D7E4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1BE04B0F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  (v11)(v6, v10, v3);
  sub_1BE048964();
  sub_1BE04D8C4();
  return (*(v4 + 8))(v10, v3);
}

void sub_1BD20D954(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD20D9D4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  v3 = v2;
  return sub_1BE04D8C4();
}

void sub_1BD20DAB0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BD20AA3C();
}

uint64_t sub_1BD20DB2C(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  sub_1BE048964();
  return sub_1BE04D8C4();
}

unint64_t sub_1BD20DBA0(uint64_t a1, void *a2)
{
  v3 = sub_1BE053A44();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

char *sub_1BD20DBEC()
{
  v53 = objc_opt_self();
  v0 = [v53 supportedCountries];
  sub_1BD0E5E8C(0, &qword_1EBD3DA70, 0x1E695CE68);
  v1 = sub_1BE052744();

  if (!(v1 >> 62))
  {
    v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_13:
    v1, v2, v3, v4, v5, v6, v7, v8;
    return MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1BE053704();
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_3:
  v54 = MEMORY[0x1E69E7CC0];
  result = sub_1BD531E40(0, v9 & ~(v9 >> 63), 0, v4, v5, v6, v7, v8);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v12 = v54;
    v13 = v1;
    v52 = v1 & 0xC000000000000001;
    v14 = v1;
    do
    {
      if (v52)
      {
        v15 = MEMORY[0x1BFB40900](v11, v13);
      }

      else
      {
        v15 = v13[v11 + 4];
      }

      v16 = v15;
      v17 = [v15 isoCountryCode];
      sub_1BE052434();
      v19 = v18;

      sub_1BE0524B4();
      v21 = v20;
      v22 = sub_1BE052404();
      v21, v23, v24, v25, v26, v27, v28, v29;
      v30 = [v53 localizedCountryNameForISOCountryCode_];

      v31 = sub_1BE052434();
      v33 = v32;

      v34 = sub_1BE0524C4();
      v36 = v35;
      v19, v35, v37, v38, v39, v40, v41, v42;

      v50 = *(v54 + 16);
      v49 = *(v54 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1BD531E40((v49 > 1), v50 + 1, 1, v44, v45, v46, v47, v48);
      }

      ++v11;
      *(v54 + 16) = v50 + 1;
      v51 = (v54 + 32 * v50);
      v51[4] = v34;
      v51[5] = v36;
      v51[6] = v31;
      v51[7] = v33;
      v13 = v14;
    }

    while (v9 != v11);
    v14, v14, v43, v44, v45, v46, v47, v48;
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD20DE2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DA80, &unk_1BE0DCDD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BD20DE9C(id result, SEL a2, id a3, id x3_0, id x4_0, id x5_0, unint64_t x6_0, uint64_t w7_0)
{
  if (a3)
  {
    result, a2, a3, x3_0, x4_0, x5_0, x6_0, w7_0;
  }
}

unint64_t sub_1BD20DEB4()
{
  result = qword_1EBD3DAB8;
  if (!qword_1EBD3DAB8)
  {
    type metadata accessor for PostalAddressEditingModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DAB8);
  }

  return result;
}

void keypath_set_106Tm(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  v7 = sub_1BE052404();
  [v6 *a5];
}

unint64_t sub_1BD20DFE4()
{
  result = qword_1EBD3DAE0;
  if (!qword_1EBD3DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DAE0);
  }

  return result;
}

uint64_t sub_1BD20E048(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1BD20E090(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1BD20E0E4()
{
  result = qword_1EBD3DAF8;
  if (!qword_1EBD3DAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3DAF8);
  }

  return result;
}

uint64_t type metadata accessor for AppleCardDetailsSheet(uint64_t a1)
{
  result = qword_1EBD3DB00;
  if (!qword_1EBD3DB00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD20E1B0(uint64_t a1)
{
  sub_1BD170C00(319);
  if (v1 <= 0x3F)
  {
    sub_1BD0E5E8C(319, &qword_1EBD456C0, 0x1E69B91E8);
    if (v2 <= 0x3F)
    {
      sub_1BD1030A8();
      if (v3 <= 0x3F)
      {
        sub_1BD20E2A4(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for TransactionsModel(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for WalletSettingsModel(319);
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

void sub_1BD20E2A4(uint64_t a1)
{
  if (!qword_1EBD3DB10)
  {
    sub_1BD0E5E8C(255, &qword_1EBD3CCE0, 0x1E69B8330);
    v1 = sub_1BE0516D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD3DB10);
    }
  }
}

id sub_1BD20E328@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v167 = a1;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB18, &qword_1BE0C2308);
  MEMORY[0x1EEE9AC00](v166);
  v151 = &v138 - v3;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB20, &qword_1BE0C2310);
  v146 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v142 = (&v138 - v4);
  v139 = type metadata accessor for SettingsTransactionSection(0);
  MEMORY[0x1EEE9AC00](v139);
  v141 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v140 = (&v138 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB28, &qword_1BE0C2318);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v147 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v162 = &v138 - v11;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB30, &unk_1BE0C2320);
  v149 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v145 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v172 = &v138 - v14;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v155);
  v154 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v138 - v17;
  v152 = type metadata accessor for AppleCardBillingAddressSection(0);
  MEMORY[0x1EEE9AC00](v152);
  v144 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v138 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v171 = &v138 - v24;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB38, &qword_1BE0C2330);
  MEMORY[0x1EEE9AC00](v163);
  v165 = &v138 - v25;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB40, &qword_1BE0C2338);
  MEMORY[0x1EEE9AC00](v164);
  v161 = &v138 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB48, &unk_1BE0C2340);
  v158 = *(v27 - 8);
  v159 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v143 = &v138 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v138 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v138 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB50, &qword_1BE0C2350);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v157 = &v138 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v168 = &v138 - v38;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB58, &qword_1BE0C2358);
  v153 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v156 = &v138 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v138 - v41;
  v43 = type metadata accessor for AppleCardDetailsSheet(0);
  v44 = &v1[v43[7]];
  v46 = *v44;
  v45 = *(v44 + 1);
  *&v174 = v46;
  *(&v174 + 1) = v45;
  v169 = v45;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB60, &qword_1BE0C2360);
  sub_1BE0516A4();
  v47 = v173;
  v48 = [v173 state];

  if (v48 != 1)
  {
    MEMORY[0x1EEE9AC00](v49);
    *(&v138 - 2) = v2;
    sub_1BD20FAB8();
    sub_1BE051A44();
    type metadata accessor for WalletSettingsModel(0);
    v82 = v43[5];
    v83 = v2;
    v84 = *&v2[v82];
    v85 = [v84 paymentPass];
    if (v85)
    {
      v86 = v85;
      v87 = sub_1BE052434();
      v89 = v88;
      sub_1BD4089F0(v86, v87, v88, v34);

      v89, v90, v91, v92, v93, v94, v95, v96;
      v97 = sub_1BE04AA64();
      v98 = (*(*(v97 - 8) + 48))(v34, 1, v97);
      v99 = v168;
      if (v98 != 1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v109 = sub_1BE04AA64();
      (*(*(v109 - 8) + 56))(v34, 1, 1, v109);
      v99 = v168;
    }

    sub_1BD0DE53C(v34, &unk_1EBD3CF70, &qword_1BE0BA000);
    v110 = [v84 paymentPass];
    if (v110)
    {
      v111 = v110;
      v112 = sub_1BE052434();
      v114 = v113;
      sub_1BD4089F0(v111, v112, v113, v31);

      v114, v115, v116, v117, v118, v119, v120, v121;
      v122 = sub_1BE04AA64();
      if ((*(*(v122 - 8) + 48))(v31, 1, v122) != 1)
      {
        v34 = v31;
LABEL_14:
        v123 = sub_1BD0DE53C(v34, &unk_1EBD3CF70, &qword_1BE0BA000);
        MEMORY[0x1EEE9AC00](v123);
        *(&v138 - 2) = v83;
        sub_1BD20FB14();
        v124 = v143;
        sub_1BE051A44();
        v126 = v158;
        v125 = v159;
        (*(v158 + 32))(v99, v124, v159);
        v127 = 0;
LABEL_17:
        (*(v126 + 56))(v99, v127, 1, v125);
        v129 = v153;
        v130 = *(v153 + 16);
        v131 = v156;
        v132 = v160;
        v130(v156, v42, v160);
        v133 = v99;
        v134 = v157;
        sub_1BD0DE19C(v133, v157, &qword_1EBD3DB50, &qword_1BE0C2350);
        v172 = v42;
        v135 = v161;
        v130(v161, v131, v132);
        v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB70, &qword_1BE0C2368);
        sub_1BD0DE19C(v134, v135 + *(v136 + 48), &qword_1EBD3DB50, &qword_1BE0C2350);
        sub_1BD0DE53C(v134, &qword_1EBD3DB50, &qword_1BE0C2350);
        v137 = *(v129 + 8);
        v137(v131, v132);
        sub_1BD0DE19C(v135, v165, &qword_1EBD3DB40, &qword_1BE0C2338);
        swift_storeEnumTagMultiPayload();
        sub_1BD20FBD4(&qword_1EBD3DB78, &qword_1EBD3DB40, &qword_1BE0C2338);
        sub_1BD20FBD4(&qword_1EBD3DB80, &qword_1EBD3DB18, &qword_1BE0C2308);
        sub_1BE04F9A4();
        sub_1BD0DE53C(v135, &qword_1EBD3DB40, &qword_1BE0C2338);
        sub_1BD0DE53C(v168, &qword_1EBD3DB50, &qword_1BE0C2350);
        return (v137)(v172, v132);
      }
    }

    else
    {
      v128 = sub_1BE04AA64();
      (*(*(v128 - 8) + 56))(v31, 1, 1, v128);
    }

    sub_1BD0DE53C(v31, &unk_1EBD3CF70, &qword_1BE0BA000);
    v127 = 1;
    v126 = v158;
    v125 = v159;
    goto LABEL_17;
  }

  v50 = *&v2[v43[5]];
  v51 = *&v2[v43[9]];
  *&v174 = v46;
  *(&v174 + 1) = v169;
  v168 = v50;
  sub_1BE048964();
  sub_1BE0516A4();
  v52 = v173;
  LOBYTE(v173) = 0;
  sub_1BE051694();
  v53 = *(&v174 + 1);
  v22[64] = v174;
  *(v22 + 9) = v53;
  LOBYTE(v173) = 1;
  sub_1BE051694();
  v54 = *(&v174 + 1);
  v22[80] = v174;
  *(v22 + 11) = v54;
  v173 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393C8, "\b6\r");
  sub_1BE051694();
  *(v22 + 6) = v174;
  v161 = v2;
  v55 = type metadata accessor for FeatureError(0);
  (*(*(v55 - 8) + 56))(v18, 1, 1, v55);
  sub_1BD0DE19C(v18, v154, &qword_1EBD416C0, &unk_1BE0BC2A0);
  v56 = v168;
  sub_1BE051694();
  sub_1BD0DE53C(v18, &qword_1EBD416C0, &unk_1BE0BC2A0);
  *v22 = v56;
  *(v22 + 1) = 0;
  *(v22 + 2) = v51;
  v173 = v52;
  sub_1BD0E5E8C(0, &qword_1EBD3CCE0, 0x1E69B8330);
  v57 = v52;
  sub_1BE051694();
  v58 = *(&v174 + 1);
  *(v22 + 3) = v174;
  *(v22 + 4) = v58;
  result = [v57 accountIdentifier];
  if (result)
  {
    v60 = result;
    v61 = sub_1BE052434();
    v63 = v62;

    *(v22 + 5) = v61;
    *(v22 + 6) = v63;
    v64 = [v57 feature];

    *(v22 + 7) = v64;
    v65 = sub_1BD20FB68(v22, v171);
    MEMORY[0x1EEE9AC00](v65);
    v66 = v161;
    *(&v138 - 2) = v161;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DB90, &qword_1BE0D8280);
    sub_1BD20FBD4(&qword_1EBD3DB98, &qword_1EBD3DB90, &qword_1BE0D8280);
    sub_1BE051A44();
    *&v174 = v46;
    *(&v174 + 1) = v169;
    sub_1BE0516A4();
    v67 = v173;
    v68 = [v173 accessLevel];

    if (v68 == 1)
    {
      v69 = *&v66[v43[8]];
      *&v174 = v46;
      *(&v174 + 1) = v169;
      v70 = v69;
      v71 = v56;
      v72 = v70;
      sub_1BE0516A4();
      v73 = v173;
      v74 = v140;
      *v140 = v71;
      v75 = v139;
      type metadata accessor for TransactionsModel(0);
      sub_1BD20FC28();
      sub_1BE051A94();
      *(v74 + *(v75 + 24)) = v73;
      v76 = v141;
      sub_1BD20FC80(v74, v141, type metadata accessor for SettingsTransactionSection);
      v77 = v142;
      *v142 = v72;
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DBB0, &qword_1BE0C2378);
      sub_1BD20FC80(v76, v77 + *(v78 + 48), type metadata accessor for SettingsTransactionSection);
      v79 = v72;
      sub_1BD20FCE8(v74, type metadata accessor for SettingsTransactionSection);
      sub_1BD20FCE8(v76, type metadata accessor for SettingsTransactionSection);

      v80 = v162;
      sub_1BD20FD48(v77, v162);
      v81 = 0;
    }

    else
    {
      v81 = 1;
      v80 = v162;
    }

    (*(v146 + 56))(v80, v81, 1, v148);
    v100 = v144;
    sub_1BD20FC80(v171, v144, type metadata accessor for AppleCardBillingAddressSection);
    v101 = v149;
    v102 = *(v149 + 16);
    v103 = v145;
    v104 = v150;
    v102(v145, v172, v150);
    v105 = v147;
    sub_1BD0DE19C(v80, v147, &qword_1EBD3DB28, &qword_1BE0C2318);
    v106 = v151;
    sub_1BD20FC80(v100, v151, type metadata accessor for AppleCardBillingAddressSection);
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DBA0, &qword_1BE0C2370);
    v102((v106 + *(v107 + 48)), v103, v104);
    sub_1BD0DE19C(v105, v106 + *(v107 + 64), &qword_1EBD3DB28, &qword_1BE0C2318);
    sub_1BD0DE53C(v105, &qword_1EBD3DB28, &qword_1BE0C2318);
    v108 = *(v101 + 8);
    v108(v103, v104);
    sub_1BD20FCE8(v100, type metadata accessor for AppleCardBillingAddressSection);
    sub_1BD0DE19C(v106, v165, &qword_1EBD3DB18, &qword_1BE0C2308);
    swift_storeEnumTagMultiPayload();
    sub_1BD20FBD4(&qword_1EBD3DB78, &qword_1EBD3DB40, &qword_1BE0C2338);
    sub_1BD20FBD4(&qword_1EBD3DB80, &qword_1EBD3DB18, &qword_1BE0C2308);
    sub_1BE04F9A4();
    sub_1BD0DE53C(v106, &qword_1EBD3DB18, &qword_1BE0C2308);
    sub_1BD0DE53C(v162, &qword_1EBD3DB28, &qword_1BE0C2318);
    v108(v172, v104);
    return sub_1BD20FCE8(v171, type metadata accessor for AppleCardBillingAddressSection);
  }

  else
  {
    __break(1u);
  }

  return result;
}