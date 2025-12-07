uint64_t type metadata accessor for SiriMailComposeViewRepresentable(uint64_t a1)
{
  v2 = qword_1006DC7F0;
  if (!qword_1006DC7F0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_100452A80()
{
  v2 = qword_1006DC730;
  if (!qword_1006DC730)
  {
    type metadata accessor for _SiriMailMessage();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC730);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100452B00()
{
  v2 = qword_1006DC738;
  if (!qword_1006DC738)
  {
    type metadata accessor for _SiriMailMessage();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC738);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100452B80()
{
  v2 = qword_1006DC740;
  if (!qword_1006DC740)
  {
    type metadata accessor for _SiriMailMessage();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC740);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100452C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a2;
  v3 = a1;
  v10 = type metadata accessor for _SiriMailMessage();
  v6 = *(v10 - 8);
  v7 = v10 - 8;
  v4 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v3 - v4;
  v5 = *__chkstk_darwin(v3);

  v12 = v5;
  v11 = v5;
  SnippetClientContext.viewModel.getter();
  (*(v6 + 32))(v8, v9, v10);
}

uint64_t sub_100452CF4(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = type metadata accessor for _SiriMailMessage();
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  SnippetClientContext.viewModel.setter();
}

unint64_t sub_100452DF0()
{
  v2 = qword_1006DC748;
  if (!qword_1006DC748)
  {
    type metadata accessor for _SiriMailMessage.State();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC748);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100452E70()
{
  v2 = qword_1006DC750;
  if (!qword_1006DC750)
  {
    type metadata accessor for SiriMailComposeViewRepresentable(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC750);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100452EF0()
{
  v2 = qword_1006DC758;
  if (!qword_1006DC758)
  {
    sub_10025CAA4(&qword_1006DC728, &qword_10050C100);
    sub_100452E70();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC758);
    return WitnessTable;
  }

  return v2;
}

char *sub_100452F94(char *a1, char *a2)
{
  v5 = *a1;

  *a2 = v5;
  v6 = *(a1 + 1);

  *(a2 + 1) = v6;
  v7 = *(sub_10025C9B0(&qword_1006DC638, &qword_10050BFF0) + 32);
  v2 = type metadata accessor for _SiriMailMessage();
  (*(*(v2 - 8) + 16))(&a2[v7], &a1[v7]);
  v3 = sub_10025C9B0(&qword_1006DC728, &qword_10050C100);
  result = a2;
  a2[*(v3 + 36)] = a1[*(v3 + 36)];
  return result;
}

uint64_t sub_100453098()
{
  v4 = 0;
  v5 = 0;
  sub_10025C9B0(&qword_1006DC718, &qword_10050C0F8);
  sub_100452380();
  v3 = EnvironmentObject.init()();
  v2 = v0;

  v4 = v3;
  v5 = v2;
  sub_100268928(&v4);
  return v3;
}

char *sub_100453138@<X0>(uint64_t a1@<X8>)
{
  v4 = a1;
  v7 = 0;
  v5 = sub_10025C9B0(&qword_1006DC638, &qword_10050BFF0);
  v3 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v2 - v3;
  v7 = __chkstk_darwin(v2);
  sub_10044A0F8(v7, &v2 - v3);
  Binding.wrappedValue.getter();
  return sub_10044A360(v6);
}

uint64_t sub_1004531F8(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v11 = type metadata accessor for _SiriMailMessage();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v4[0] = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v7 = v4 - v4[0];
  v6 = sub_10025C9B0(&qword_1006DC638, &qword_10050BFF0);
  v5 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v4[1]);
  v8 = v4 - v5;
  v14 = v2;
  v13 = v1;
  sub_10044A0F8(v1, v4 - v5);
  (*(v9 + 16))(v7, v12, v11);
  Binding.wrappedValue.setter();
  sub_10044A360(v8);
  return (*(v9 + 8))(v12, v11);
}

char *sub_1004533A8(char *a1)
{
  v5 = a1;
  v3[0] = (*(*(sub_10025C9B0(&qword_1006DC638, &qword_10050BFF0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v5);
  v4 = v3 - v3[0];
  sub_10044A0F8(v1, v3 - v3[0]);
  sub_10044A29C(v4, v3[1]);
  return sub_10044A360(v5);
}

char *sub_10045344C()
{
  v7 = 0;
  v3[1] = 0;
  v4 = (*(*(type metadata accessor for SiriMailComposeViewRepresentable(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(0);
  v6 = v3 - v4;
  v7 = v0;
  type metadata accessor for SiriMailComposeCoordinator(v1);
  sub_10044A0F8(v5, v6);
  return sub_10044AC0C(v6);
}

void *sub_1004534F8(uint64_t a1)
{
  v43 = a1;
  v51 = 0;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v60 = 0;
  v59 = 0;
  v42 = 0;
  v44 = type metadata accessor for Logger();
  v45 = *(v44 - 8);
  v46 = v45;
  v47 = *(v45 + 64);
  v48 = &v11 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __chkstk_darwin(v43);
  v69 = v1;
  static Logger.siriMail.getter();
  v53 = Logger.logObject.getter();
  v49 = v53;
  v52 = static os_log_type_t.debug.getter();
  v50 = v52;
  sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v54 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v53, v52))
  {
    v2 = v42;
    v33 = static UnsafeMutablePointer.allocate(capacity:)();
    v29 = v33;
    v30 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v31 = 0;
    v34 = sub_1002641E8(0, v30, v30);
    v32 = v34;
    v35 = sub_1002641E8(v31, &type metadata for Any + 8, &type metadata for Any + 8);
    v58[0] = v33;
    v57 = v34;
    v56 = v35;
    v36 = 0;
    v37 = v58;
    sub_10026423C(0, v58);
    sub_10026423C(v36, v37);
    v55 = v54;
    v38 = &v11;
    __chkstk_darwin(&v11);
    v39 = &v11 - 6;
    v40 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    v41 = v2;
    if (v2)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v49, v50, "#SiriMailComposeView makeUIViewController()", v29, 2u);
      v27 = 0;
      sub_10026429C(v32, 0);
      sub_10026429C(v35, v27);
      UnsafeMutablePointer.deallocate()();

      v28 = v41;
    }
  }

  else
  {

    v28 = v42;
  }

  (*(v46 + 8))(v48, v44);
  v24 = 0;
  sub_10028D4AC();
  v25 = sub_100453C64(v24);
  v23 = v25;
  v68 = v25;
  sub_100453CA4();
  v3 = v25;
  v26 = sub_100453D08(v25, v24);
  if (v26)
  {
    v22 = v26;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v19 = v22;
  v67 = v22;
  v17 = sub_10025C9B0(&qword_1006DC768, &qword_10050C150);
  UIViewControllerRepresentableContext.coordinator.getter();
  v16 = v66;
  [v19 setComposeCoordinator:?];
  swift_unknownObjectRelease();
  UIViewControllerRepresentableContext.coordinator.getter();
  v18 = v65;
  v4 = v19;
  sub_10044A9FC(v19);

  v5 = v19;
  v21 = [v19 view];
  v20 = v21;

  if (v21)
  {
    v15 = v20;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v12 = v15;
  height = UILayoutFittingCompressedSize.height;
  width = UILayoutFittingCompressedSize.width;
  v64 = height;
  [v15 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, height}];
  v62 = v7;
  v61 = v8;
  v14 = v7;
  v13 = v8;

  v59 = v13;
  v60 = v14;
  v9 = v19;
  v58[1] = v13;
  v58[2] = v14;
  [v19 setPreferredContentSize:{*&v13, *&v14}];

  return v19;
}

unint64_t sub_100453CA4()
{
  v2 = qword_1006DC760;
  if (!qword_1006DC760)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DC760);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_100453D50(void *a1, uint64_t a2)
{
  v555 = a2;
  v554 = a1;
  v541 = 0;
  v620 = 0;
  v619 = 0;
  v618 = 0;
  v617 = 0;
  v534 = 0;
  v613 = 0;
  v611 = 0;
  v609 = 0;
  v607 = 0;
  v605 = 0;
  v603 = 0;
  v587 = 0;
  v586 = 0;
  v581 = 0;
  v580 = 0;
  v535 = sub_10025C9B0(&qword_1006DC768, &qword_10050C150);
  v536 = *(v535 - 8);
  v537 = v536;
  v538 = *(v536 + 64);
  v539 = (v538 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v540 = &v146 - v539;
  v542 = type metadata accessor for _SiriMailMessage();
  v543 = *(v542 - 8);
  v544 = v543;
  v550 = *(v543 + 64);
  v3 = __chkstk_darwin(v541);
  v552 = (v550 + 15) & 0xFFFFFFFFFFFFFFF0;
  v545 = &v146 - v552;
  v4 = __chkstk_darwin(v3);
  v546 = &v146 - v552;
  v5 = __chkstk_darwin(v4);
  v547 = &v146 - v552;
  v6 = __chkstk_darwin(v5);
  v548 = &v146 - v552;
  v7 = __chkstk_darwin(v6);
  v549 = &v146 - v552;
  v8 = __chkstk_darwin(v7);
  v551 = &v146 - v552;
  __chkstk_darwin(v8);
  v553 = &v146 - v552;
  v556 = type metadata accessor for Logger();
  v557 = *(v556 - 8);
  v558 = v557;
  v562 = *(v557 + 64);
  v9 = __chkstk_darwin(v554);
  v564 = (v562 + 15) & 0xFFFFFFFFFFFFFFF0;
  v559 = &v146 - v564;
  v10 = __chkstk_darwin(v9);
  v560 = &v146 - v564;
  v11 = __chkstk_darwin(v10);
  v561 = &v146 - v564;
  v12 = __chkstk_darwin(v11);
  v563 = &v146 - v564;
  v13 = __chkstk_darwin(v12);
  v565 = &v146 - v564;
  v620 = v13;
  v619 = v14;
  v618 = v2;
  v566 = [v13 mailComposeView];
  if (!v566)
  {
    return v534;
  }

  v533 = v566;
  v526 = v566;
  v617 = v566;
  static Logger.siriMail.getter();
  v531 = Logger.logObject.getter();
  v527 = v531;
  v530 = static os_log_type_t.debug.getter();
  v528 = v530;
  v529 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v532 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v531, v530))
  {
    v15 = v534;
    v517 = static UnsafeMutablePointer.allocate(capacity:)();
    v513 = v517;
    v514 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v515 = 0;
    v518 = sub_1002641E8(0, v514, v514);
    v516 = v518;
    v519 = sub_1002641E8(v515, &type metadata for Any + 8, &type metadata for Any + 8);
    v570 = v517;
    v569 = v518;
    v568 = v519;
    v520 = 0;
    v521 = &v570;
    sub_10026423C(0, &v570);
    sub_10026423C(v520, v521);
    v567 = v532;
    v522 = &v146;
    __chkstk_darwin(&v146);
    v523 = &v146 - 6;
    v524 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    v525 = v15;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v527, v528, "#SiriMailComposeView updateUIViewController()", v513, 2u);
      v511 = 0;
      sub_10026429C(v516, 0);
      sub_10026429C(v519, v511);
      UnsafeMutablePointer.deallocate()();

      v512 = v525;
    }
  }

  else
  {

    v512 = v534;
  }

  v507 = v512;

  v508 = *(v558 + 8);
  v509 = (v558 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v508(v565, v556);
  v510 = [v526 subjectField];
  if (v510)
  {
    v506 = v510;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v504 = v506;
  v505 = [v506 text];
  if (v505)
  {
    v503 = v505;
    v498 = v505;
    v499 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v500 = v16;

    v501 = v499;
    v502 = v500;
  }

  else
  {
    v501 = 0;
    v502 = 0;
  }

  v494 = v502;
  v493 = v501;

  sub_100453138(v553);
  v492 = _SiriMailMessage.subject.getter();
  v495 = v17;
  v489 = v17;
  v490 = *(v544 + 8);
  v491 = (v544 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v490(v553, v542);

  v496 = v615;
  v497 = v616;
  v615[0] = v493;
  v615[1] = v494;
  v616[0] = v492;
  v616[1] = v495;
  if (v494)
  {
    sub_100268860(v496, v572);
    if (v497[1])
    {
      v571 = *v497;
      v487 = static String.== infix(_:_:)();
      sub_100268744(&v571);
      sub_100268744(v572);
      sub_100268744(v496);
      v488 = v487;
      goto LABEL_19;
    }

    sub_100268744(v572);
    goto LABEL_21;
  }

  if (v497[1])
  {
LABEL_21:
    sub_100268828(v615);
    v488 = 0;
    goto LABEL_19;
  }

  sub_100268744(v496);
  v488 = 1;
LABEL_19:
  v486 = v488;

  if ((v486 & 1) == 0)
  {
    sub_100453138(v551);
    v484 = _SiriMailMessage.subject.getter();
    v485 = v18;
    if (v18)
    {
      v482 = v484;
      v483 = v485;
      v479 = v485;
      v480 = String._bridgeToObjectiveC()();

      v481 = v480;
    }

    else
    {
      v481 = 0;
    }

    v478 = v481;
    v490(v551, v542);
    [v554 setSubject:v478];
  }

  sub_100453138(v549);
  v476 = _SiriMailMessage.body.getter();
  v477 = v19;
  if (!v19)
  {
    v490(v549, v542);
    v473 = v507;
    goto LABEL_58;
  }

  v474 = v476;
  v475 = v477;
  v472 = v477;
  v471 = v476;
  v586 = v476;
  v587 = v477;
  v490(v549, v542);
  v20 = String.isEmpty.getter();
  if (v20)
  {
    goto LABEL_57;
  }

  UIViewControllerRepresentableContext.coordinator.getter();
  v464 = v585[2];
  v467 = sub_10044A528();
  v468 = v21;
  v465 = v21;

  v466 = v472;

  v469 = v584;
  v470 = v585;
  v584[0] = v467;
  v584[1] = v468;
  v585[0] = v471;
  v585[1] = v472;
  if (v468)
  {
    sub_100268860(v469, v574);
    if (v470[1])
    {
      v573 = *v470;
      v462 = static String.== infix(_:_:)();
      sub_100268744(&v573);
      sub_100268744(v574);
      sub_100268744(v469);
      v463 = v462;
      goto LABEL_37;
    }

    sub_100268744(v574);
    goto LABEL_39;
  }

  if (v470[1])
  {
LABEL_39:
    sub_100268828(v584);
    v463 = 0;
    goto LABEL_37;
  }

  sub_100268744(v469);
  v463 = 1;
LABEL_37:
  v461 = v463;

  if (v461)
  {
LABEL_57:

    v473 = v507;
    goto LABEL_58;
  }

  static Logger.siriMail.getter();
  (*(v537 + 16))(v540, v555, v535);
  v433 = (*(v537 + 80) + 16) & ~*(v537 + 80);
  v438 = swift_allocObject();
  (*(v537 + 32))(v438 + v433, v540, v535);

  v441 = 32;
  v446 = 32;
  v447 = 7;
  v22 = swift_allocObject();
  v23 = v472;
  v448 = v22;
  *(v22 + 16) = v471;
  *(v22 + 24) = v23;
  v460 = Logger.logObject.getter();
  v434 = v460;
  v459 = static os_log_type_t.debug.getter();
  v435 = v459;
  v442 = 17;
  v451 = swift_allocObject();
  v436 = v451;
  *(v451 + 16) = v441;
  v452 = swift_allocObject();
  v437 = v452;
  v444 = 8;
  *(v452 + 16) = 8;
  v24 = swift_allocObject();
  v25 = v438;
  v439 = v24;
  *(v24 + 16) = sub_100458194;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v439;
  v453 = v26;
  v440 = v26;
  *(v26 + 16) = sub_10026EE84;
  *(v26 + 24) = v27;
  v454 = swift_allocObject();
  v443 = v454;
  *(v454 + 16) = v441;
  v455 = swift_allocObject();
  v445 = v455;
  *(v455 + 16) = v444;
  v28 = swift_allocObject();
  v29 = v448;
  v449 = v28;
  *(v28 + 16) = sub_1002B77BC;
  *(v28 + 24) = v29;
  v30 = swift_allocObject();
  v31 = v449;
  v458 = v30;
  v450 = v30;
  *(v30 + 16) = sub_10026EE84;
  *(v30 + 24) = v31;
  v456 = _allocateUninitializedArray<A>(_:)();
  v457 = v32;

  v33 = v451;
  v34 = v457;
  *v457 = sub_10026434C;
  v34[1] = v33;

  v35 = v452;
  v36 = v457;
  v457[2] = sub_10026434C;
  v36[3] = v35;

  v37 = v453;
  v38 = v457;
  v457[4] = sub_10026EF2C;
  v38[5] = v37;

  v39 = v454;
  v40 = v457;
  v457[6] = sub_10026434C;
  v40[7] = v39;

  v41 = v455;
  v42 = v457;
  v457[8] = sub_10026434C;
  v42[9] = v41;

  v43 = v457;
  v44 = v458;
  v457[10] = sub_10026EF2C;
  v43[11] = v44;
  sub_1002612B0();

  if (os_log_type_enabled(v460, v459))
  {
    v45 = v507;
    v426 = static UnsafeMutablePointer.allocate(capacity:)();
    v423 = v426;
    v424 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v427 = sub_1002641E8(0, v424, v424);
    v425 = v427;
    v429 = 2;
    v428 = sub_1002641E8(2, &type metadata for Any + 8, &type metadata for Any + 8);
    v579[0] = v426;
    v578 = v427;
    v577 = v428;
    v430 = v579;
    sub_10026423C(v429, v579);
    sub_10026423C(v429, v430);
    v575 = sub_10026434C;
    v576 = v436;
    sub_100264250(&v575, v430, &v578, &v577);
    v431 = v45;
    v432 = v45;
    if (v45)
    {
      v421 = 0;

      __break(1u);
    }

    else
    {
      v575 = sub_10026434C;
      v576 = v437;
      sub_100264250(&v575, v579, &v578, &v577);
      v419 = 0;
      v420 = 0;
      v575 = sub_10026EF2C;
      v576 = v440;
      sub_100264250(&v575, v579, &v578, &v577);
      v417 = 0;
      v418 = 0;
      v575 = sub_10026434C;
      v576 = v443;
      sub_100264250(&v575, v579, &v578, &v577);
      v415 = 0;
      v416 = 0;
      v575 = sub_10026434C;
      v576 = v445;
      sub_100264250(&v575, v579, &v578, &v577);
      v413 = 0;
      v414 = 0;
      v575 = sub_10026EF2C;
      v576 = v450;
      sub_100264250(&v575, v579, &v578, &v577);
      v411 = 0;
      v412 = 0;
      _os_log_impl(&_mh_execute_header, v434, v435, "#SiriMailComposeView our cached body %s vs %s", v423, 0x16u);
      sub_10026429C(v425, 0);
      sub_10026429C(v428, 2);
      UnsafeMutablePointer.deallocate()();

      v422 = v411;
    }
  }

  else
  {
    v46 = v507;

    v422 = v46;
  }

  v406 = v422;

  v508(v563, v556);
  UIViewControllerRepresentableContext.coordinator.getter();
  v407 = v583;

  sub_10044A670(v471, v472);

  UIViewControllerRepresentableContext.coordinator.getter();
  v408 = v582;
  v409 = sub_10044A778();
  v410 = v47;
  if (v47)
  {
    v404 = v409;
    v405 = v410;
    v401 = v410;
    v400 = v409;
    v580 = v409;
    v581 = v410;

    UIViewControllerRepresentableContext.coordinator.getter();
    v402 = v579[1];

    sub_10044A7EC(v400, v401);

    v48 = [v526 composeWebView];
    v403 = v48;
    if (v48)
    {
      v399 = v403;
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v398 = v399;

    v397 = String._bridgeToObjectiveC()();

    [v398 setMarkupString:v397];
  }

  else
  {
  }

  v396 = [v526 composeWebView];
  if (v396)
  {
    v395 = v396;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v394 = v395;

  v393 = String._bridgeToObjectiveC()();

  [v394 prependMarkupString:v393 quote:0];

  v473 = v406;
LABEL_58:
  v49 = v473;
  sub_100453138(v548);
  v387 = _SiriMailMessage.to.getter();
  v490(v548, v542);
  v614 = v387;
  v389 = sub_10025C9B0(&qword_1006DC770, &qword_10050C158);
  v388 = v389;
  v390 = sub_10045807C();
  v51 = sub_10025E9D8(sub_1004578A8, 0, v389, &type metadata for String, &type metadata for Never, v390, &protocol witness table for Never, v50);
  v391 = v49;
  v392 = v51;
  if (v49)
  {
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v385 = v392;
  sub_100264880(&v614);
  v613 = v385;
  v386 = [v554 csPeopleForField:1];
  if (v386)
  {
    v384 = v386;
    v381 = v386;
    v380 = sub_1002B9CB8();
    v382 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v383 = v382;
  }

  else
  {
    v383 = 0;
  }

  v379 = v383;
  if (v383)
  {
    v378 = v379;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v52 = v391;
  v612 = v378;
  v372 = sub_10025C9B0(&qword_1006D7B58, &unk_10050C160);
  v369 = v372;
  v373 = sub_10025C9B0(&unk_1006D69B0, &unk_100503A00);
  v370 = v373;
  v374 = sub_100458104();
  v371 = v374;
  v375 = sub_1002688A0();
  v53 = Sequence.flatMap<A>(_:)();
  v376 = v52;
  v377 = v53;
  if (v52)
  {
    goto LABEL_119;
  }

  v367 = v377;
  sub_100264880(&v612);
  v611 = v367;
  v610[2] = v367;
  v610[1] = v385;
  v368 = sub_1002B76F0();
  if (Collection<>.contains<A>(_:)())
  {
    v311 = v376;
  }

  else
  {
    static Logger.siriMail.getter();

    v338 = 24;
    v353 = 7;
    v337 = swift_allocObject();
    *(v337 + 16) = v367;

    v347 = 32;
    v352 = 32;
    v54 = swift_allocObject();
    v55 = v337;
    v344 = v54;
    *(v54 + 16) = sub_10045818C;
    *(v54 + 24) = v55;

    v339 = swift_allocObject();
    *(v339 + 16) = v385;

    v56 = swift_allocObject();
    v57 = v339;
    v354 = v56;
    *(v56 + 16) = sub_10045818C;
    *(v56 + 24) = v57;

    v366 = Logger.logObject.getter();
    v340 = v366;
    v365 = static os_log_type_t.debug.getter();
    v341 = v365;
    v348 = 17;
    v357 = swift_allocObject();
    v342 = v357;
    *(v357 + 16) = v347;
    v358 = swift_allocObject();
    v343 = v358;
    v350 = 8;
    *(v358 + 16) = 8;
    v58 = swift_allocObject();
    v59 = v344;
    v345 = v58;
    *(v58 + 16) = sub_1004282FC;
    *(v58 + 24) = v59;
    v60 = swift_allocObject();
    v61 = v345;
    v359 = v60;
    v346 = v60;
    *(v60 + 16) = sub_10026EE84;
    *(v60 + 24) = v61;
    v360 = swift_allocObject();
    v349 = v360;
    *(v360 + 16) = v347;
    v361 = swift_allocObject();
    v351 = v361;
    *(v361 + 16) = v350;
    v62 = swift_allocObject();
    v63 = v354;
    v355 = v62;
    *(v62 + 16) = sub_1004282FC;
    *(v62 + 24) = v63;
    v64 = swift_allocObject();
    v65 = v355;
    v364 = v64;
    v356 = v64;
    *(v64 + 16) = sub_10026EE84;
    *(v64 + 24) = v65;
    v362 = _allocateUninitializedArray<A>(_:)();
    v363 = v66;

    v67 = v357;
    v68 = v363;
    *v363 = sub_10026434C;
    v68[1] = v67;

    v69 = v358;
    v70 = v363;
    v363[2] = sub_10026434C;
    v70[3] = v69;

    v71 = v359;
    v72 = v363;
    v363[4] = sub_10026EF2C;
    v72[5] = v71;

    v73 = v360;
    v74 = v363;
    v363[6] = sub_10026434C;
    v74[7] = v73;

    v75 = v361;
    v76 = v363;
    v363[8] = sub_10026434C;
    v76[9] = v75;

    v77 = v363;
    v78 = v364;
    v363[10] = sub_10026EF2C;
    v77[11] = v78;
    sub_1002612B0();

    if (os_log_type_enabled(v366, v365))
    {
      v79 = v376;
      v330 = static UnsafeMutablePointer.allocate(capacity:)();
      v327 = v330;
      v328 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v331 = sub_1002641E8(0, v328, v328);
      v329 = v331;
      v333 = 2;
      v332 = sub_1002641E8(2, &type metadata for Any + 8, &type metadata for Any + 8);
      v592 = v330;
      v591 = v331;
      v590 = v332;
      v334 = &v592;
      sub_10026423C(v333, &v592);
      sub_10026423C(v333, v334);
      v588 = sub_10026434C;
      v589 = v342;
      sub_100264250(&v588, v334, &v591, &v590);
      v335 = v79;
      v336 = v79;
      if (v79)
      {
        v325 = 0;

        __break(1u);
      }

      else
      {
        v588 = sub_10026434C;
        v589 = v343;
        sub_100264250(&v588, &v592, &v591, &v590);
        v323 = 0;
        v324 = 0;
        v588 = sub_10026EF2C;
        v589 = v346;
        sub_100264250(&v588, &v592, &v591, &v590);
        v321 = 0;
        v322 = 0;
        v588 = sub_10026434C;
        v589 = v349;
        sub_100264250(&v588, &v592, &v591, &v590);
        v319 = 0;
        v320 = 0;
        v588 = sub_10026434C;
        v589 = v351;
        sub_100264250(&v588, &v592, &v591, &v590);
        v317 = 0;
        v318 = 0;
        v588 = sub_10026EF2C;
        v589 = v356;
        sub_100264250(&v588, &v592, &v591, &v590);
        v315 = 0;
        v316 = 0;
        _os_log_impl(&_mh_execute_header, v340, v341, "#SiriMailComposeView to existingTo: %s, newTo: %s", v327, 0x16u);
        sub_10026429C(v329, 0);
        sub_10026429C(v332, 2);
        UnsafeMutablePointer.deallocate()();

        v326 = v315;
      }
    }

    else
    {
      v80 = v376;

      v326 = v80;
    }

    v313 = v326;

    v508(v561, v556);
    v314 = [v526 toField];
    if (v314)
    {
      v312 = v314;
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v310 = v312;
    sub_100453138(v547);
    v304 = _SiriMailMessage.to.getter();
    v490(v547, v542);
    v308 = sub_100457A7C();

    v305 = sub_100451AA0();
    v306 = &type metadata for Any + 8;
    v307 = _arrayForceCast<A, B>(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v310 setRecipients:isa];

    v311 = v313;
  }

  v81 = v311;
  sub_100453138(v546);
  v301 = _SiriMailMessage.cc.getter();
  v490(v546, v542);
  v610[0] = v301;
  v83 = sub_10025E9D8(sub_1004578A8, 0, v388, &type metadata for String, &type metadata for Never, v390, &protocol witness table for Never, v82);
  v302 = v81;
  v303 = v83;
  if (v81)
  {
    goto LABEL_120;
  }

  v299 = v303;
  sub_100264880(v610);
  v609 = v299;
  v300 = [v554 csPeopleForField:2];
  if (v300)
  {
    v298 = v300;
    v295 = v300;
    v294 = sub_1002B9CB8();
    v296 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v297 = v296;
  }

  else
  {
    v297 = 0;
  }

  v293 = v297;
  if (v297)
  {
    v292 = v293;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v84 = v302;
  v608 = v292;
  v85 = Sequence.flatMap<A>(_:)();
  v290 = v84;
  v291 = v85;
  if (v84)
  {
    goto LABEL_121;
  }

  v289 = v291;
  sub_100264880(&v608);
  v607 = v289;
  v606[2] = v289;
  v606[1] = v299;
  if (Collection<>.contains<A>(_:)())
  {
    v233 = v290;
  }

  else
  {
    static Logger.siriMail.getter();

    v260 = 24;
    v275 = 7;
    v259 = swift_allocObject();
    *(v259 + 16) = v289;

    v269 = 32;
    v274 = 32;
    v86 = swift_allocObject();
    v87 = v259;
    v266 = v86;
    *(v86 + 16) = sub_10045818C;
    *(v86 + 24) = v87;

    v261 = swift_allocObject();
    *(v261 + 16) = v299;

    v88 = swift_allocObject();
    v89 = v261;
    v276 = v88;
    *(v88 + 16) = sub_10045818C;
    *(v88 + 24) = v89;

    v288 = Logger.logObject.getter();
    v262 = v288;
    v287 = static os_log_type_t.debug.getter();
    v263 = v287;
    v270 = 17;
    v279 = swift_allocObject();
    v264 = v279;
    *(v279 + 16) = v269;
    v280 = swift_allocObject();
    v265 = v280;
    v272 = 8;
    *(v280 + 16) = 8;
    v90 = swift_allocObject();
    v91 = v266;
    v267 = v90;
    *(v90 + 16) = sub_1004282FC;
    *(v90 + 24) = v91;
    v92 = swift_allocObject();
    v93 = v267;
    v281 = v92;
    v268 = v92;
    *(v92 + 16) = sub_10026EE84;
    *(v92 + 24) = v93;
    v282 = swift_allocObject();
    v271 = v282;
    *(v282 + 16) = v269;
    v283 = swift_allocObject();
    v273 = v283;
    *(v283 + 16) = v272;
    v94 = swift_allocObject();
    v95 = v276;
    v277 = v94;
    *(v94 + 16) = sub_1004282FC;
    *(v94 + 24) = v95;
    v96 = swift_allocObject();
    v97 = v277;
    v286 = v96;
    v278 = v96;
    *(v96 + 16) = sub_10026EE84;
    *(v96 + 24) = v97;
    v284 = _allocateUninitializedArray<A>(_:)();
    v285 = v98;

    v99 = v279;
    v100 = v285;
    *v285 = sub_10026434C;
    v100[1] = v99;

    v101 = v280;
    v102 = v285;
    v285[2] = sub_10026434C;
    v102[3] = v101;

    v103 = v281;
    v104 = v285;
    v285[4] = sub_10026EF2C;
    v104[5] = v103;

    v105 = v282;
    v106 = v285;
    v285[6] = sub_10026434C;
    v106[7] = v105;

    v107 = v283;
    v108 = v285;
    v285[8] = sub_10026434C;
    v108[9] = v107;

    v109 = v285;
    v110 = v286;
    v285[10] = sub_10026EF2C;
    v109[11] = v110;
    sub_1002612B0();

    if (os_log_type_enabled(v288, v287))
    {
      v111 = v290;
      v252 = static UnsafeMutablePointer.allocate(capacity:)();
      v249 = v252;
      v250 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v253 = sub_1002641E8(0, v250, v250);
      v251 = v253;
      v255 = 2;
      v254 = sub_1002641E8(2, &type metadata for Any + 8, &type metadata for Any + 8);
      v597 = v252;
      v596 = v253;
      v595 = v254;
      v256 = &v597;
      sub_10026423C(v255, &v597);
      sub_10026423C(v255, v256);
      v593 = sub_10026434C;
      v594 = v264;
      sub_100264250(&v593, v256, &v596, &v595);
      v257 = v111;
      v258 = v111;
      if (v111)
      {
        v247 = 0;

        __break(1u);
      }

      else
      {
        v593 = sub_10026434C;
        v594 = v265;
        sub_100264250(&v593, &v597, &v596, &v595);
        v245 = 0;
        v246 = 0;
        v593 = sub_10026EF2C;
        v594 = v268;
        sub_100264250(&v593, &v597, &v596, &v595);
        v243 = 0;
        v244 = 0;
        v593 = sub_10026434C;
        v594 = v271;
        sub_100264250(&v593, &v597, &v596, &v595);
        v241 = 0;
        v242 = 0;
        v593 = sub_10026434C;
        v594 = v273;
        sub_100264250(&v593, &v597, &v596, &v595);
        v239 = 0;
        v240 = 0;
        v593 = sub_10026EF2C;
        v594 = v278;
        sub_100264250(&v593, &v597, &v596, &v595);
        v237 = 0;
        v238 = 0;
        _os_log_impl(&_mh_execute_header, v262, v263, "#SiriMailComposeView cc existingCc: %s, newCc: %s", v249, 0x16u);
        sub_10026429C(v251, 0);
        sub_10026429C(v254, 2);
        UnsafeMutablePointer.deallocate()();

        v248 = v237;
      }
    }

    else
    {
      v112 = v290;

      v248 = v112;
    }

    v235 = v248;

    v508(v560, v556);
    v236 = [v526 ccField];
    if (v236)
    {
      v234 = v236;
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v232 = v234;
    sub_100453138(v547);
    v226 = _SiriMailMessage.cc.getter();
    v490(v547, v542);
    v230 = sub_100457A7C();

    v227 = sub_100451AA0();
    v228 = &type metadata for Any + 8;
    v229 = _arrayForceCast<A, B>(_:)();
    v231 = Array._bridgeToObjectiveC()().super.isa;

    [v232 setRecipients:v231];

    v233 = v235;
  }

  v113 = v233;
  sub_100453138(v545);
  v223 = _SiriMailMessage.bcc.getter();
  v490(v545, v542);
  v606[0] = v223;
  v115 = sub_10025E9D8(sub_1004578A8, 0, v388, &type metadata for String, &type metadata for Never, v390, &protocol witness table for Never, v114);
  v224 = v113;
  v225 = v115;
  if (v113)
  {
    goto LABEL_122;
  }

  v221 = v225;
  sub_100264880(v606);
  v605 = v221;
  v222 = [v554 csPeopleForField:3];
  if (v222)
  {
    v220 = v222;
    v217 = v222;
    v216 = sub_1002B9CB8();
    v218 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v219 = v218;
  }

  else
  {
    v219 = 0;
  }

  v215 = v219;
  if (v219)
  {
    v214 = v215;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v116 = v224;
  v604 = v214;
  v117 = Sequence.flatMap<A>(_:)();
  v212 = v116;
  v213 = v117;
  if (!v116)
  {
    v211 = v213;
    sub_100264880(&v604);
    v603 = v211;
    v602[2] = v211;
    v602[1] = v221;
    if (Collection<>.contains<A>(_:)())
    {
      v155 = v212;
    }

    else
    {
      static Logger.siriMail.getter();

      v182 = 24;
      v197 = 7;
      v181 = swift_allocObject();
      *(v181 + 16) = v211;

      v191 = 32;
      v196 = 32;
      v118 = swift_allocObject();
      v119 = v181;
      v188 = v118;
      *(v118 + 16) = sub_10045818C;
      *(v118 + 24) = v119;

      v183 = swift_allocObject();
      *(v183 + 16) = v221;

      v120 = swift_allocObject();
      v121 = v183;
      v198 = v120;
      *(v120 + 16) = sub_10045818C;
      *(v120 + 24) = v121;

      v210 = Logger.logObject.getter();
      v184 = v210;
      v209 = static os_log_type_t.debug.getter();
      v185 = v209;
      v192 = 17;
      v201 = swift_allocObject();
      v186 = v201;
      *(v201 + 16) = v191;
      v202 = swift_allocObject();
      v187 = v202;
      v194 = 8;
      *(v202 + 16) = 8;
      v122 = swift_allocObject();
      v123 = v188;
      v189 = v122;
      *(v122 + 16) = sub_1004282FC;
      *(v122 + 24) = v123;
      v124 = swift_allocObject();
      v125 = v189;
      v203 = v124;
      v190 = v124;
      *(v124 + 16) = sub_10026EE84;
      *(v124 + 24) = v125;
      v204 = swift_allocObject();
      v193 = v204;
      *(v204 + 16) = v191;
      v205 = swift_allocObject();
      v195 = v205;
      *(v205 + 16) = v194;
      v126 = swift_allocObject();
      v127 = v198;
      v199 = v126;
      *(v126 + 16) = sub_1004282FC;
      *(v126 + 24) = v127;
      v128 = swift_allocObject();
      v129 = v199;
      v208 = v128;
      v200 = v128;
      *(v128 + 16) = sub_10026EE84;
      *(v128 + 24) = v129;
      v206 = _allocateUninitializedArray<A>(_:)();
      v207 = v130;

      v131 = v201;
      v132 = v207;
      *v207 = sub_10026434C;
      v132[1] = v131;

      v133 = v202;
      v134 = v207;
      v207[2] = sub_10026434C;
      v134[3] = v133;

      v135 = v203;
      v136 = v207;
      v207[4] = sub_10026EF2C;
      v136[5] = v135;

      v137 = v204;
      v138 = v207;
      v207[6] = sub_10026434C;
      v138[7] = v137;

      v139 = v205;
      v140 = v207;
      v207[8] = sub_10026434C;
      v140[9] = v139;

      v141 = v207;
      v142 = v208;
      v207[10] = sub_10026EF2C;
      v141[11] = v142;
      sub_1002612B0();

      if (os_log_type_enabled(v210, v209))
      {
        v143 = v212;
        v174 = static UnsafeMutablePointer.allocate(capacity:)();
        v171 = v174;
        v172 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v175 = sub_1002641E8(0, v172, v172);
        v173 = v175;
        v177 = 2;
        v176 = sub_1002641E8(2, &type metadata for Any + 8, &type metadata for Any + 8);
        v602[0] = v174;
        v601 = v175;
        v600 = v176;
        v178 = v602;
        sub_10026423C(v177, v602);
        sub_10026423C(v177, v178);
        v598 = sub_10026434C;
        v599 = v186;
        sub_100264250(&v598, v178, &v601, &v600);
        v179 = v143;
        v180 = v143;
        if (v143)
        {
          v169 = 0;

          __break(1u);
        }

        else
        {
          v598 = sub_10026434C;
          v599 = v187;
          sub_100264250(&v598, v602, &v601, &v600);
          v167 = 0;
          v168 = 0;
          v598 = sub_10026EF2C;
          v599 = v190;
          sub_100264250(&v598, v602, &v601, &v600);
          v165 = 0;
          v166 = 0;
          v598 = sub_10026434C;
          v599 = v193;
          sub_100264250(&v598, v602, &v601, &v600);
          v163 = 0;
          v164 = 0;
          v598 = sub_10026434C;
          v599 = v195;
          sub_100264250(&v598, v602, &v601, &v600);
          v161 = 0;
          v162 = 0;
          v598 = sub_10026EF2C;
          v599 = v200;
          sub_100264250(&v598, v602, &v601, &v600);
          v159 = 0;
          v160 = 0;
          _os_log_impl(&_mh_execute_header, v184, v185, "#SiriMailComposeView bcc existingBcc: %s, newBcc: %s", v171, 0x16u);
          sub_10026429C(v173, 0);
          sub_10026429C(v176, 2);
          UnsafeMutablePointer.deallocate()();

          v170 = v159;
        }
      }

      else
      {
        v144 = v212;

        v170 = v144;
      }

      v157 = v170;

      v508(v559, v556);
      v158 = [v526 bccField];
      if (v158)
      {
        v156 = v158;
      }

      else
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v154 = v156;
      sub_100453138(v547);
      v148 = _SiriMailMessage.bcc.getter();
      v490(v547, v542);
      v152 = sub_100457A7C();

      v149 = sub_100451AA0();
      v150 = &type metadata for Any + 8;
      v151 = _arrayForceCast<A, B>(_:)();
      v153 = Array._bridgeToObjectiveC()().super.isa;

      [v154 setRecipients:v153];

      v155 = v157;
    }

    v146 = v155;

    return v146;
  }

LABEL_123:
  result = 0;
  __break(1u);
  return result;
}

uint64_t sub_100457778()
{
  sub_10025C9B0(&qword_1006DC768, &qword_10050C150);
  UIViewControllerRepresentableContext.coordinator.getter();
  v2 = v3[2];
  v3[0] = sub_10044A528();
  v3[1] = v0;
  if (v0)
  {

    sub_100268744(v3);
    _objc_release(v2);
    String.partiallyRedactedString.getter();
  }

  else
  {
    sub_100268744(v3);
    _objc_release(v2);
  }

  sub_10025C9B0(&unk_1006D7340, &unk_1005039F0);
  return String.init<A>(describing:)();
}

uint64_t sub_1004578A8@<X0>(uint64_t *a1@<X8>)
{
  result = _SiriMailMessage.Account.address.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

void sub_1004578F8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 handles];
  *a2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(v3);
}

uint64_t sub_10045796C@<X0>(uint64_t *a1@<X8>)
{
  v4 = sub_10025C9B0(&unk_1006D69B0, &unk_100503A00);
  v1 = sub_1002B76F0();
  result = sub_10025E9D8(sub_100457A28, 0, v4, &type metadata for String, &type metadata for Never, v1, &protocol witness table for Never, v5);
  *a1 = result;
  return result;
}

uint64_t sub_100457A28@<X0>(uint64_t *a2@<X8>)
{
  result = String.partiallyRedactedString.getter();
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_100457A7C()
{
  sub_10025C9B0(&qword_1006DC770, &qword_10050C158);
  sub_100451AA0();
  sub_100458204();
  return Sequence.compactMap<A>(_:)();
}

char *sub_100457BEC@<X0>(char **a1@<X8>)
{
  result = sub_10045344C();
  *a1 = result;
  return result;
}

void sub_100457D50(uint64_t a1)
{
  sub_10045828C();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

void sub_100457D78(uint64_t a1@<X0>, id *a2@<X8>)
{
  v14 = a1;
  sub_100458784();
  v8 = sub_10025C704();
  v13 = v8;
  v9 = _SiriMailMessage.Account.name.getter();
  v10 = v2;
  if (v2)
  {
    v11 = v9;
    v12 = v10;
  }

  else
  {
    v11 = _SiriMailMessage.Account.address.getter();
    v12 = v3;
  }

  v5 = String._bridgeToObjectiveC()();

  [v8 setGivenName:v5];
  _objc_release(v5);
  sub_100451AA0();
  _objc_retain(v8);
  v6 = _SiriMailMessage.Account.address.getter();
  *a2 = sub_100457ED8(v8, v6, v4, 0);
  _objc_release(v8);
}

id sub_100457F58(void *a1)
{
  v4 = [v1 initWithCompositionContext:? options:?];
  _objc_release(a1);
  return v4;
}

id sub_100457FAC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v7 = String._bridgeToObjectiveC()();

    v3 = [v9 initWithContact:a1 address:v7 kind:?];
  }

  else
  {
    v3 = [v9 initWithContact:a1 address:0 kind:?];
  }

  v6 = v3;
  _objc_release(v5);
  _objc_release(a1);
  return v6;
}

unint64_t sub_10045807C()
{
  v2 = qword_1006DC778;
  if (!qword_1006DC778)
  {
    sub_10025CAA4(&qword_1006DC770, &qword_10050C158);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC778);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100458104()
{
  v2 = qword_1006DC780;
  if (!qword_1006DC780)
  {
    sub_10025CAA4(&qword_1006D7B58, &unk_10050C160);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC780);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100458194()
{
  sub_10025C9B0(&qword_1006DC768, &qword_10050C150);

  return sub_100457778();
}

unint64_t sub_100458204()
{
  v2 = qword_1006DC788;
  if (!qword_1006DC788)
  {
    sub_10025CAA4(&qword_1006DC770, &qword_10050C158);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC788);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10045828C()
{
  v2 = qword_1006DC790;
  if (!qword_1006DC790)
  {
    type metadata accessor for SiriMailComposeViewRepresentable(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC790);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10045830C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFE && *(a1 + 16))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (*a1 < &_mh_execute_header)
      {
        v4 = *a1;
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10045845C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_100458694(uint64_t a1)
{
  v3 = sub_1004521B8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v3;
}

unint64_t sub_100458784()
{
  v2 = qword_1006DC828;
  if (!qword_1006DC828)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DC828);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_100458854()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail13SiriMailScene_window);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_10045892C(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail13SiriMailScene_window);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_100458A30()
{
  v3 = 0;
  *OBJC_IVAR____TtC10MobileMail13SiriMailScene_window = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for SiriMailScene();
  v1 = objc_msgSendSuper2(&v2, "init");
  _objc_retain(v1);
  v3 = v1;
  _objc_release(v1);
  return v1;
}

id sub_100458AE4()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriMailScene();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100458B64(void *a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v39 = a2;
  v38 = a1;
  v47 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v36 = 0;
  v40 = type metadata accessor for Logger();
  v41 = *(v40 - 8);
  v42 = v41;
  v43 = *(v41 + 64);
  v44 = v13 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __chkstk_darwin(v38);
  v59 = v3;
  v58 = v4;
  v57 = v5;
  static Logger.siriMail.getter();
  v49 = Logger.logObject.getter();
  v45 = v49;
  v48 = static os_log_type_t.debug.getter();
  v46 = v48;
  sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v50 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v49, v48))
  {
    v6 = v36;
    v27 = static UnsafeMutablePointer.allocate(capacity:)();
    v23 = v27;
    v24 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v25 = 0;
    v28 = sub_1002641E8(0, v24, v24);
    v26 = v28;
    v29 = sub_1002641E8(v25, &type metadata for Any + 8, &type metadata for Any + 8);
    v54[0] = v27;
    v53 = v28;
    v52 = v29;
    v30 = 0;
    v31 = v54;
    sub_10026423C(0, v54);
    sub_10026423C(v30, v31);
    v51 = v50;
    v32 = v13;
    __chkstk_darwin(v13);
    v33 = &v13[-6];
    v13[-4] = v7;
    v13[-3] = &v53;
    v13[-2] = &v52;
    v34 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    v35 = v6;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v45, v46, "#SiriMailScene scene:willConnectTo:connectionOptions", v23, 2u);
      v21 = 0;
      sub_10026429C(v26, 0);
      sub_10026429C(v29, v21);
      UnsafeMutablePointer.deallocate()();

      v22 = v35;
    }
  }

  else
  {

    v22 = v36;
  }

  (*(v42 + 8))(v44, v40);
  v8 = v38;
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v19 = v20;
  }

  else
  {

    v19 = 0;
  }

  v18 = v19;
  if (v19)
  {
    v17 = v18;
    v16 = v18;
    v56 = v18;
    v13[1] = 0;
    sub_1003C6E30();
    v9 = v16;
    v15 = sub_100459138(v16);
    v55 = v15;
    sub_10025C9B0(&qword_1006DC848, &unk_10050C328);
    v10 = v38;
    v54[1] = sub_100453098();
    v54[2] = v11;
    v13[2] = type metadata accessor for _SiriMailMessage();
    sub_100459178();
    v14 = _SnippetClientController.__allocating_init<A>(scene:rootView:modelType:)();
    [v15 setRootViewController:?];

    [v15 makeKeyAndVisible];
    v12 = v15;
    sub_10045892C(v15);
  }
}

unint64_t sub_100459178()
{
  v2 = qword_1006DC850;
  if (!qword_1006DC850)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC850);
    return WitnessTable;
  }

  return v2;
}

void sub_1004592B8(uint64_t a1)
{
  v22 = a1;
  v30 = 0;
  v40 = 0;
  v39 = 0;
  v21 = 0;
  v23 = type metadata accessor for Logger();
  v24 = *(v23 - 8);
  v25 = v24;
  v26 = *(v24 + 64);
  v27 = &v5 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v22);
  v39 = v1;
  static Logger.siriMail.getter();
  v32 = Logger.logObject.getter();
  v28 = v32;
  v31 = static os_log_type_t.debug.getter();
  v29 = v31;
  sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v33 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v32, v31))
  {
    v2 = v21;
    v12 = static UnsafeMutablePointer.allocate(capacity:)();
    v8 = v12;
    v9 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v10 = 0;
    v13 = sub_1002641E8(0, v9, v9);
    v11 = v13;
    v14 = sub_1002641E8(v10, &type metadata for Any + 8, &type metadata for Any + 8);
    v37 = v12;
    v36 = v13;
    v35 = v14;
    v15 = 0;
    v16 = &v37;
    sub_10026423C(0, &v37);
    sub_10026423C(v15, v16);
    v34 = v33;
    v17 = &v5;
    __chkstk_darwin(&v5);
    v18 = &v5 - 6;
    *(&v5 - 4) = v3;
    *(&v5 - 3) = &v36;
    *(&v5 - 2) = &v35;
    v19 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    v20 = v2;
    if (v2)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v28, v29, "#SiriMailScene sceneDidDisconnect", v8, 2u);
      v6 = 0;
      sub_10026429C(v11, 0);
      sub_10026429C(v14, v6);
      UnsafeMutablePointer.deallocate()();

      v7 = v20;
    }
  }

  else
  {

    v7 = v21;
  }

  (*(v25 + 8))(v27, v23);
  v38 = sub_100458854();
  if (v38)
  {
    v5 = v38;
    v4 = v38;
    sub_10026A58C(&v38);
    [v5 setRootViewController:0];
  }

  else
  {
    sub_10026A58C(&v38);
  }

  sub_10045892C(0);
}

id sub_10045974C(void *a1)
{
  v4 = [v1 initWithWindowScene:?];
  _objc_release(a1);
  return v4;
}

double sub_100459814(uint64_t a1)
{
  if (!a1)
  {
    return 8.0;
  }

  if (a1 == 1)
  {
    return 0.0;
  }

  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return v2;
}

unint64_t sub_1004598F4()
{
  v2 = qword_1006DC950;
  if (!qword_1006DC950)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC950);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100459A9C()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_appearance);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

void sub_100459B58(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_appearance);
  swift_beginAccess();
  v5 = *v2;
  swift_endAccess();
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_appearance);
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  sub_100459C10(v5);
}

void sub_100459C10(uint64_t a1)
{
  v18 = 0;
  v19 = a1;
  v6 = (v1 + OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_appearance);
  swift_beginAccess();
  v7 = *v6;
  swift_endAccess();
  v17 = v7;
  v16 = a1;
  sub_100459DD8();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v3 = objc_opt_self();
    _objc_retain(v5);
    v2 = swift_allocObject();
    *(v2 + 16) = v5;
    v14 = sub_100459F34;
    v15 = v2;
    aBlock = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = 0;
    v12 = sub_1002AEFF8;
    v13 = &unk_1006618C0;
    v4 = _Block_copy(&aBlock);

    [v3 animateWithDuration:4 delay:v4 options:0 animations:0.25 completion:0.0];
    _Block_release(v4);
  }
}

unint64_t sub_100459DD8()
{
  v2 = qword_1006DC958;
  if (!qword_1006DC958)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC958);
    return WitnessTable;
  }

  return v2;
}

void sub_100459E54(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView);
  _objc_retain(v1);
  v5 = [v1 layer];
  _objc_release(v1);
  v3 = (a1 + OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_appearance);
  swift_beginAccess();
  v4 = *v3;
  swift_endAccess();
  [v5 setCornerRadius:sub_100459814(v4)];
  _objc_release(v5);
}

uint64_t sub_100459F3C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void *sub_100459FA0()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_stackView);
  _objc_retain(v2);
  return v2;
}

void *sub_100459FE8()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView);
  _objc_retain(v2);
  return v2;
}

id sub_10045A09C()
{
  v2 = objc_opt_self();
  _objc_retain(UIFontTextStyleBody);
  v3 = [v2 _preferredFontForTextStyle:UIFontTextStyleBody weight:UIFontWeightBold];
  _objc_release(UIFontTextStyleBody);
  if (v3)
  {
    return v3;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return v1;
}

id sub_10045A224()
{
  v1 = objc_opt_self();
  _objc_retain(UIFontTextStyleFootnote);
  v2 = [v1 preferredFontForTextStyle:UIFontTextStyleFootnote];
  _objc_release(UIFontTextStyleFootnote);
  return v2;
}

void sub_10045A2AC()
{
  ObjectType = swift_getObjectType();
  v9 = v0;
  _objc_retain(v0);
  v8.receiver = v0;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "layoutSubviews");
  _objc_release(v0);
  v5 = objc_opt_self();
  _objc_retain(v0);
  v7 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v7);
  _objc_release(v0);
  _objc_retain(v0);
  v4 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v4);
  _objc_release(v3);
  [v4 bounds];
  v6 = v1;
  _objc_release(v4);
  [v5 roundAvatarView:v7 withBorder:0 size:v6];
  _objc_release(v7);
}

void sub_10045A46C(char *a1)
{
  v16 = a1;
  v15 = v1;
  _objc_retain(v1);
  sub_1002AA978(a1);
  _objc_release(v8);
  v9 = *&v8[OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView];
  _objc_retain(v9);
  v11 = OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_avatarResult;
  v12 = &a1[OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_avatarResult];
  swift_beginAccess();
  if (*v12)
  {
    v4 = *&a1[v11];
    _objc_retain(v4);
    swift_endAccess();
    v5 = [v4 headerColors];
    _objc_release(v4);
    v6 = [v5 contrastingBackgroundColor];
    _objc_release(v5);
    v7 = v6;
  }

  else
  {
    swift_endAccess();
    v7 = 0;
  }

  v13 = v7;
  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v3 = *sub_1002A9CA8();
    _objc_retain(v3);
    v14 = v3;
  }

  [v9 setBackgroundColor:v14];
  _objc_release(v2);
  _objc_release(v9);
}

void sub_10045A6E4()
{
  _objc_retain(v0);
  sub_1002AB258();
  _objc_release(v29);
  _objc_retain(v29);
  v4 = *&v29[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v4);
  _objc_release(v29);
  [v4 setAdjustsFontForContentSizeCategory:1];
  _objc_release(v4);
  _objc_retain(v29);
  v5 = *&v29[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v5);
  _objc_release(v29);
  [v5 setTextAlignment:?];
  _objc_release(v5);
  _objc_retain(v29);
  v6 = *&v29[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v6);
  _objc_release(v29);
  type metadata accessor for UILayoutPriority(0);
  sub_10045B0A8();
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v1) = v33;
  [v6 setContentCompressionResistancePriority:0 forAxis:v1];
  _objc_release(v6);
  _objc_retain(v29);
  v7 = *&v29[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v7);
  _objc_release(v29);
  [v7 setNumberOfLines:?];
  _objc_release(v7);
  _objc_retain(v29);
  v8 = *&v29[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView];
  _objc_retain(v8);
  _objc_release(v29);
  v9 = [v8 layer];
  _objc_release(v8);
  [v9 setMasksToBounds:1];
  _objc_release(v9);
  _objc_retain(v29);
  v10 = *&v29[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView];
  _objc_retain(v10);
  _objc_release(v29);
  v11 = [v10 layer];
  _objc_release(v10);
  [v11 setCornerRadius:?];
  _objc_release(v11);
  _objc_retain(v29);
  v12 = *&v29[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView];
  _objc_retain(v12);
  _objc_release(v29);
  v13 = [v12 layer];
  _objc_release(v12);
  _objc_retain(kCACornerCurveContinuous);
  [v13 setCornerCurve:kCACornerCurveContinuous];
  _objc_release(kCACornerCurveContinuous);
  _objc_release(v13);
  _objc_retain(v29);
  v14 = *&v29[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView];
  _objc_retain(v14);
  _objc_release(v29);
  v15 = [v14 layer];
  _objc_release(v14);
  type metadata accessor for CACornerMask(0);
  _allocateUninitializedArray<A>(_:)();
  *v2 = 1;
  v2[1] = 2;
  sub_1002612B0();
  sub_1002676CC();
  SetAlgebra<>.init(arrayLiteral:)();
  [v15 setMaskedCorners:v32];
  _objc_release(v15);
  v16 = *&v29[OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView];
  _objc_retain(v16);
  v17 = [v16 layer];
  _objc_release(v16);
  [v17 setMasksToBounds:1];
  _objc_release(v17);
  v18 = *&v29[OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView];
  _objc_retain(v18);
  v19 = [v18 layer];
  _objc_release(v18);
  [v19 setCornerRadius:8.0];
  _objc_release(v19);
  v20 = *&v29[OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView];
  _objc_retain(v20);
  v21 = [v20 layer];
  _objc_release(v20);
  _objc_retain(kCACornerCurveContinuous);
  [v21 setCornerCurve:kCACornerCurveContinuous];
  _objc_release(kCACornerCurveContinuous);
  _objc_release(v21);
  v22 = *&v29[OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView];
  _objc_retain(v22);
  v23 = [v22 layer];
  _objc_release(v22);
  _allocateUninitializedArray<A>(_:)();
  *v3 = 4;
  v3[1] = 8;
  sub_1002612B0();
  SetAlgebra<>.init(arrayLiteral:)();
  [v23 setMaskedCorners:v31];
  _objc_release(v23);
  _objc_retain(v29);
  v24 = *&v29[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView];
  _objc_retain(v24);
  _objc_release(v29);
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v24);
  v25 = *&v29[OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView];
  _objc_retain(v25);
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v25);
  _objc_retain(v29);
  v26 = *&v29[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v26);
  _objc_release(v29);
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v26);
  _objc_retain(v29);
  v27 = *&v29[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v27);
  _objc_release(v29);
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v27);
  _objc_retain(v29);
  v28 = *&v29[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v28);
  _objc_release(v29);
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v28);
  _objc_retain(v29);
  v30 = *&v29[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_subtitleButton];
  _objc_retain(v30);
  _objc_release(v29);
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v30);
}

unint64_t sub_10045B0A8()
{
  v2 = qword_1006DC970;
  if (!qword_1006DC970)
  {
    type metadata accessor for UILayoutPriority(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC970);
    return WitnessTable;
  }

  return v2;
}

void sub_10045B178()
{
  _objc_retain(v0);
  v3 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v3);
  _objc_release(v0);
  _objc_retain(v0);
  v2 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView];
  _objc_retain(v2);
  _objc_release(v0);
  [v3 addSubview:v2];
  _objc_release(v2);
  _objc_release(v3);
  _objc_retain(v0);
  v5 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v5);
  _objc_release(v0);
  v4 = *&v0[OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView];
  _objc_retain(v4);
  [v5 addSubview:v4];
  _objc_release(v4);
  _objc_release(v5);
  _objc_retain(v0);
  v7 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v7);
  _objc_release(v0);
  _objc_retain(v0);
  v6 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v6);
  _objc_release(v0);
  [v7 addSubview:v6];
  _objc_release(v6);
  _objc_release(v7);
  _objc_retain(v0);
  v9 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v9);
  _objc_release(v0);
  _objc_retain(v0);
  v8 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v8);
  _objc_release(v0);
  [v9 addSubview:v8];
  _objc_release(v8);
  _objc_release(v9);
  _objc_retain(v0);
  v11 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v11);
  _objc_release(v0);
  _objc_retain(v0);
  v10 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_subtitleButton];
  _objc_retain(v10);
  _objc_release(v0);
  [v11 addSubview:v10];
  _objc_release(v10);
  _objc_release(v11);
  _objc_retain(v0);
  v12 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v12);
  _objc_release(v0);
  [v0 addSubview:v12];
  _objc_release(v12);
  v117 = objc_opt_self();
  sub_100293824();
  _allocateUninitializedArray<A>(_:)();
  v116 = v1;
  _objc_retain(v0);
  v13 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView];
  _objc_retain(v13);
  _objc_release(v0);
  v16 = [v13 topAnchor];
  _objc_release(v13);
  _objc_retain(v0);
  v14 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v14);
  _objc_release(v0);
  v15 = [v14 topAnchor];
  _objc_release(v14);
  v17 = [v16 constraintEqualToAnchor:v15];
  _objc_release(v15);
  _objc_release(v16);
  *v116 = v17;
  _objc_retain(v0);
  v18 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView];
  _objc_retain(v18);
  _objc_release(v0);
  v21 = [v18 leadingAnchor];
  _objc_release(v18);
  _objc_retain(v0);
  v19 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v19);
  _objc_release(v0);
  v20 = [v19 leadingAnchor];
  _objc_release(v19);
  v22 = [v21 constraintEqualToAnchor:v20];
  _objc_release(v20);
  _objc_release(v21);
  v116[1] = v22;
  _objc_retain(v0);
  v23 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView];
  _objc_retain(v23);
  _objc_release(v0);
  v26 = [v23 trailingAnchor];
  _objc_release(v23);
  _objc_retain(v0);
  v24 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v24);
  _objc_release(v0);
  v25 = [v24 trailingAnchor];
  _objc_release(v24);
  v27 = [v26 constraintEqualToAnchor:v25];
  _objc_release(v25);
  _objc_release(v26);
  v116[2] = v27;
  _objc_retain(v0);
  v28 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView];
  _objc_retain(v28);
  _objc_release(v0);
  v30 = [v28 heightAnchor];
  _objc_release(v28);
  _objc_retain(v0);
  v29 = [v0 heightAnchor];
  _objc_release(v0);
  v31 = [v30 constraintEqualToAnchor:v29 multiplier:0.55];
  _objc_release(v29);
  _objc_release(v30);
  v116[3] = v31;
  v32 = *&v0[OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView];
  _objc_retain(v32);
  v35 = [v32 bottomAnchor];
  _objc_release(v32);
  _objc_retain(v0);
  v33 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v33);
  _objc_release(v0);
  v34 = [v33 bottomAnchor];
  _objc_release(v33);
  v36 = [v35 constraintEqualToAnchor:v34];
  _objc_release(v34);
  _objc_release(v35);
  v116[4] = v36;
  v37 = *&v0[OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView];
  _objc_retain(v37);
  v40 = [v37 leadingAnchor];
  _objc_release(v37);
  _objc_retain(v0);
  v38 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v38);
  _objc_release(v0);
  v39 = [v38 leadingAnchor];
  _objc_release(v38);
  v41 = [v40 constraintEqualToAnchor:v39];
  _objc_release(v39);
  _objc_release(v40);
  v116[5] = v41;
  v42 = *&v0[OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView];
  _objc_retain(v42);
  v45 = [v42 trailingAnchor];
  _objc_release(v42);
  _objc_retain(v0);
  v43 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v43);
  _objc_release(v0);
  v44 = [v43 trailingAnchor];
  _objc_release(v43);
  v46 = [v45 constraintEqualToAnchor:v44];
  _objc_release(v44);
  _objc_release(v45);
  v116[6] = v46;
  v47 = *&v0[OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView];
  _objc_retain(v47);
  v49 = [v47 heightAnchor];
  _objc_release(v47);
  _objc_retain(v0);
  v48 = [v0 heightAnchor];
  _objc_release(v0);
  v50 = [v49 constraintEqualToAnchor:v48 multiplier:0.55];
  _objc_release(v48);
  _objc_release(v49);
  v116[7] = v50;
  _objc_retain(v0);
  v51 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v51);
  _objc_release(v0);
  v52 = [v51 heightAnchor];
  _objc_release(v51);
  v53 = [v52 constraintEqualToConstant:38.0];
  _objc_release(v52);
  v116[8] = v53;
  _objc_retain(v0);
  v54 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v54);
  _objc_release(v0);
  v57 = [v54 widthAnchor];
  _objc_release(v54);
  _objc_retain(v0);
  v55 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v55);
  _objc_release(v0);
  v56 = [v55 heightAnchor];
  _objc_release(v55);
  v58 = [v57 constraintEqualToAnchor:v56];
  _objc_release(v56);
  _objc_release(v57);
  v116[9] = v58;
  _objc_retain(v0);
  v59 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v59);
  _objc_release(v0);
  v62 = [v59 leadingAnchor];
  _objc_release(v59);
  _objc_retain(v0);
  v60 = [v0 layoutMarginsGuide];
  _objc_release(v0);
  v61 = [v60 leadingAnchor];
  _objc_release(v60);
  v63 = [v62 constraintEqualToAnchor:v61];
  _objc_release(v61);
  _objc_release(v62);
  v116[10] = v63;
  _objc_retain(v0);
  v64 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v64);
  _objc_release(v0);
  v67 = [v64 topAnchor];
  _objc_release(v64);
  _objc_retain(v0);
  v65 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v65);
  _objc_release(v0);
  v66 = [v65 topAnchor];
  _objc_release(v65);
  v68 = [v67 constraintEqualToAnchor:v66 constant:16.0];
  _objc_release(v66);
  _objc_release(v67);
  v116[11] = v68;
  _objc_retain(v0);
  v69 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v69);
  _objc_release(v0);
  v72 = [v69 bottomAnchor];
  _objc_release(v69);
  _objc_retain(v0);
  v70 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v70);
  _objc_release(v0);
  v71 = [v70 bottomAnchor];
  _objc_release(v70);
  v73 = [v72 constraintEqualToAnchor:v71 constant:-16.0];
  _objc_release(v71);
  _objc_release(v72);
  v116[12] = v73;
  _objc_retain(v0);
  v74 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v74);
  _objc_release(v0);
  v77 = [v74 centerYAnchor];
  _objc_release(v74);
  _objc_retain(v0);
  v75 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v75);
  _objc_release(v0);
  v76 = [v75 centerYAnchor];
  _objc_release(v75);
  v78 = [v77 constraintEqualToAnchor:v76];
  _objc_release(v76);
  _objc_release(v77);
  v116[13] = v78;
  _objc_retain(v0);
  v79 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v79);
  _objc_release(v0);
  v82 = [v79 leadingAnchor];
  _objc_release(v79);
  _objc_retain(v0);
  v80 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v80);
  _objc_release(v0);
  v81 = [v80 trailingAnchor];
  _objc_release(v80);
  v83 = [v82 constraintEqualToAnchor:v81 constant:12.0];
  _objc_release(v81);
  _objc_release(v82);
  v116[14] = v83;
  _objc_retain(v0);
  v84 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_subtitleButton];
  _objc_retain(v84);
  _objc_release(v0);
  v87 = [v84 firstBaselineAnchor];
  _objc_release(v84);
  _objc_retain(v0);
  v85 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v85);
  _objc_release(v0);
  v86 = [v85 firstBaselineAnchor];
  _objc_release(v85);
  v88 = [v87 constraintEqualToAnchor:v86];
  _objc_release(v86);
  _objc_release(v87);
  v116[15] = v88;
  _objc_retain(v0);
  v89 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_subtitleButton];
  _objc_retain(v89);
  _objc_release(v0);
  v92 = [v89 leadingAnchor];
  _objc_release(v89);
  _objc_retain(v0);
  v90 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v90);
  _objc_release(v0);
  v91 = [v90 trailingAnchor];
  _objc_release(v90);
  v93 = [v92 constraintGreaterThanOrEqualToAnchor:v91 constant:8.0];
  _objc_release(v91);
  _objc_release(v92);
  v116[16] = v93;
  _objc_retain(v0);
  v94 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_subtitleButton];
  _objc_retain(v94);
  _objc_release(v0);
  v97 = [v94 trailingAnchor];
  _objc_release(v94);
  _objc_retain(v0);
  v95 = [v0 layoutMarginsGuide];
  _objc_release(v0);
  v96 = [v95 trailingAnchor];
  _objc_release(v95);
  v98 = [v97 constraintEqualToAnchor:v96];
  _objc_release(v96);
  _objc_release(v97);
  v116[17] = v98;
  _objc_retain(v0);
  v99 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v99);
  _objc_release(v0);
  v101 = [v99 topAnchor];
  _objc_release(v99);
  _objc_retain(v0);
  v100 = [v0 topAnchor];
  _objc_release(v0);
  v102 = [v101 constraintEqualToAnchor:v100];
  _objc_release(v100);
  _objc_release(v101);
  v116[18] = v102;
  _objc_retain(v0);
  v103 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v103);
  _objc_release(v0);
  v105 = [v103 leadingAnchor];
  _objc_release(v103);
  _objc_retain(v0);
  v104 = [v0 leadingAnchor];
  _objc_release(v0);
  v106 = [v105 constraintEqualToAnchor:v104];
  _objc_release(v104);
  _objc_release(v105);
  v116[19] = v106;
  _objc_retain(v0);
  v107 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v107);
  _objc_release(v0);
  v109 = [v107 bottomAnchor];
  _objc_release(v107);
  _objc_retain(v0);
  v108 = [v0 bottomAnchor];
  _objc_release(v0);
  v110 = [v109 constraintEqualToAnchor:v108];
  _objc_release(v108);
  _objc_release(v109);
  v116[20] = v110;
  _objc_retain(v0);
  v111 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v111);
  _objc_release(v112);
  v114 = [v111 trailingAnchor];
  _objc_release(v111);
  _objc_retain(v112);
  v113 = [v112 trailingAnchor];
  _objc_release(v112);
  v115 = [v114 constraintEqualToAnchor:v113];
  _objc_release(v113);
  _objc_release(v114);
  v116[21] = v115;
  sub_1002612B0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v117 activateConstraints:isa];
  _objc_release(isa);
}

char *sub_10045CDF4(double a1, double a2, double a3, double a4)
{
  *&v9 = a1;
  *(&v9 + 1) = a2;
  *&v10 = a3;
  *(&v10 + 1) = a4;
  ObjectType = swift_getObjectType();
  v13 = v9;
  v14 = v10;
  v15 = v4;
  *&v4[OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_appearance] = 0;
  v6 = OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_stackView;
  sub_100264A18();
  *&v15[v6] = sub_10025C704();
  v7 = OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView;
  sub_1002AA63C();
  *&v15[v7] = sub_10025C704();
  v12.receiver = v15;
  v12.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v12, "initWithFrame:", v9, v10);
  _objc_retain(v11);
  v15 = v11;
  _objc_release(v11);
  return v11;
}

char *sub_10045CFA8(void *a1)
{
  ObjectType = swift_getObjectType();
  v10 = a1;
  v11 = v1;
  *&v1[OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_appearance] = 0;
  v4 = OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_stackView;
  sub_100264A18();
  *&v11[v4] = sub_10025C704();
  v5 = OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView;
  sub_1002AA63C();
  *&v11[v5] = sub_10025C704();
  v9.receiver = v11;
  v9.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  if (v8)
  {
    _objc_retain(v8);
    v11 = v8;
    _objc_release(a1);
    _objc_release(v11);
    return v8;
  }

  else
  {
    _objc_release(0);
    _objc_release(a1);
    return 0;
  }
}

uint64_t type metadata accessor for StaticConversationSenderHeaderView(uint64_t a1)
{
  v2 = qword_1006DC9A0;
  if (!qword_1006DC9A0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_10045D2C4(uint64_t a1)
{
  updated = swift_updateClassMetadata2();
  if (!updated)
  {
    return 0;
  }

  return updated;
}

uint64_t sub_10045D374()
{
  v16 = "Email thread to summarize";
  v19 = "Email thread to summarize";
  v43 = &v53;
  v53 = 0;
  v54 = 0;
  v30 = 0;
  v0 = type metadata accessor for InputConnectionBehavior();
  v6 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v41 = &v5 - v6;
  v1 = sub_10025C9B0(&unk_1006D7080, &unk_1004FFEB0);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v40 = &v5 - v7;
  v8 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v5 - v7);
  v39 = &v5 - v8;
  v9 = (*(*(sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v37 = &v5 - v9;
  v10 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v25 = &v5 - v10;
  v11 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v24 = &v5 - v11;
  v12 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v22 = &v5 - v12;
  v29 = type metadata accessor for LocalizedStringResource();
  v26 = *(v29 - 8);
  v27 = v29 - 8;
  v13 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v36 = &v5 - v13;
  sub_10025C9B0(&unk_1006D7090, &unk_1004FEED0);
  v14 = v52;
  memset(v52, 0, sizeof(v52));
  sub_10000B074();
  sub_1003DC7F0();
  v45 = AppDependency.__allocating_init(key:manager:)();

  v53 = v45;
  sub_10025C9B0(&unk_1006DB320, &qword_1005095D0);
  v31 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Thread", 6uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v17 = "AppIntents";
  v18 = 10;
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v31 & 1);
  sub_100015CC0();
  sub_10025D410(v25);
  v49 = v19;
  v20 = 25;
  v50 = 25;
  v21 = 2;
  v51 = 2;
  v28 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v16, v20, v31 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v17, v18, v31 & 1);
  sub_100015CC0();
  sub_10025D410(v25);
  v46[2] = v19;
  v46[3] = v20;
  v47 = v21;
  v48 = v28 & 1 & v31;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v26 + 56))(v37, v28, v31, v29);
  v38 = v46;
  v46[0] = 0;
  v46[1] = 0;
  v32 = type metadata accessor for IntentDialog();
  v3 = *(v32 - 8);
  v34 = *(v3 + 56);
  v33 = v3 + 56;
  v34(v39, v31);
  (v34)(v40, v31, v31, v32);
  v35 = sub_100341EC8();
  v42 = sub_1003A148C();
  sub_1003BD8F8(v41);
  v44 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  v54 = v44;
  sub_10027EB24(v43);
  return v45;
}

uint64_t sub_10045DA80(uint64_t a1, uint64_t a2)
{

  IntentParameter.wrappedValue.getter();

  return v3;
}

uint64_t sub_10045DAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  IntentParameter.wrappedValue.setter();
}

uint64_t sub_10045DBA4()
{
  v1 = sub_10045DB98();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2 & 1;
}

double sub_10045DBFC(char a1)
{
  v2 = sub_10045DB98();
  swift_beginAccess();
  *v2 = a1;
  swift_endAccess();
  return result;
}

uint64_t sub_10045DC50@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v9 = "Summarizes an email thread.";
  v11 = "Summarizes an email thread.";
  v1 = sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0);
  v5 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v20 = &v5 - v5;
  v22 = 0;
  v6 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v16 = &v5 - v6;
  v7 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v15 = &v5 - v7;
  v8 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v13 = &v5 - v8;
  v19 = type metadata accessor for LocalizedStringResource();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v10 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v9);
  v21 = &v5 - v10;
  v12 = 27;
  v23 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v2, 0x1BuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v23 & 1);
  sub_100015CC0();
  sub_10025D410(v16);
  v26 = v11;
  v27 = v12;
  v28 = 2;
  v24 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, v23, v23, v19);
  sub_10027F040();
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v3 = type metadata accessor for IntentDescription();
  return (*(*(v3 - 8) + 56))(v25, v24, v23);
}

uint64_t sub_10045DF98@<X0>(uint64_t a1@<X8>)
{
  v12 = a1;
  v7 = "Summarize Thread";
  v10 = "Summarize Thread";
  v5 = 0;
  v4 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v16 = &v3 - v4;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v15 = &v3 - v6;
  v8 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v7);
  v13 = &v3 - v8;
  v11 = 16;
  v9 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v1, 0x10uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v9 & 1);
  sub_100015CC0();
  sub_10025D410(v16);
  v17 = v10;
  v18 = v11;
  v19 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_10045E184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a3;
  v3[12] = a2;
  v3[11] = a1;
  v3[10] = v3;
  v3[6] = 0;
  v3[7] = 0;
  v3[6] = a2;
  v3[7] = a3;
  return _swift_task_switch(sub_10045E1D4, 0);
}

uint64_t sub_10045E1D4()
{
  v1 = v0[13];
  v2 = v0[12];
  v0[10] = v0;
  v0[14] = sub_10027A534(v2, v1);
  type metadata accessor for MainActor();
  v0[15] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10045E284, v3);
}

uint64_t sub_10045E284()
{
  *(v0 + 80) = v0;
  sub_10035277C();
  *(v0 + 128) = 0;
  v2 = *(v3 + 112);

  _objc_release(v2);

  return _swift_task_switch(sub_10045E384, 0);
}

uint64_t sub_10045E384()
{
  v0[10] = v0;
  v18 = [objc_opt_self() defaultCenter];
  _objc_retain(@"AppIntentDidSummarize");
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  v0[5] = 0;
  if (v0[5])
  {
    object = v17[2]._object;
    v11 = sub_10027EC3C(&v17[1]._countAndFlagsBits, object);
    v12 = *(object - 8);
    v14 = swift_task_alloc();
    (*(v12 + 16))(v14, v11, object);
    v15 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v12 + 8))(v14, object);

    sub_1000160F4(&v17[1]._countAndFlagsBits);
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v6 = v17[6]._object;
  countAndFlagsBits = v17[6]._countAndFlagsBits;
  sub_10025C9B0(&unk_1006DB9F0, &qword_1005001E8);
  _allocateUninitializedArray<A>(_:)();
  v9 = v1;
  v17[4] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("conversationID", 0xEuLL, 1);
  _convertToAnyHashable<A>(_:)();
  v7 = sub_10045DA80(countAndFlagsBits, v6);
  v8 = v2;

  v9[8] = &type metadata for String;
  v9[5] = v7;
  v9[6] = v8;
  sub_1002612B0();
  sub_100268744(&v17[4]);
  Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v18 postNotificationName:@"AppIntentDidSummarize" object:v16 userInfo:isa];
  _objc_release(isa);
  swift_unknownObjectRelease();
  _objc_release(@"AppIntentDidSummarize");
  _objc_release(v18);
  static IntentResult.result<>()();
  v3 = *(v17[5]._countAndFlagsBits + 8);

  return v3();
}

uint64_t sub_10045E720()
{
  v3 = *(v0 + 112);
  *(v0 + 80) = v0;

  _objc_release(v3);
  v1 = *(*(v0 + 80) + 8);

  return v1();
}

uint64_t sub_10045E7D4(uint64_t a1, uint64_t a2)
{
  v6[2] = a1;
  v6[3] = a2;
  v4 = [objc_opt_self() sharedApplication];
  v3 = [v4 connectedScenes];
  sub_1002883E4();
  sub_100288448();
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(v4);
  v6[0] = v5;
  sub_10025C9B0(&unk_1006D72F0, &unk_1005001F0);
  sub_1002884C8();
  Sequence.first(where:)();
  sub_100264880(v6);
  _objc_release(v3);
  return v6[1];
}

uint64_t sub_10045E954(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v7 = v1[1];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return sub_10045E184(a1, v6, v7);
}

uint64_t sub_10045EA20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10045D374();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_10045EAA0()
{
  v3[1] = 0;
  v13 = type metadata accessor for AssistantSchema.IntentSchema();
  v8 = *(v13 - 8);
  v9 = v13 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(0);
  v12 = v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v10 = v3 - v5;
  v7 = type metadata accessor for AssistantSchema();
  v6 = qword_1006F0408;
  sub_10002094C(v7, qword_1006F0408);
  v11 = sub_1000208F4(v7, v6);
  sub_10027DF0C();
  sub_10045EBE0();
  (*(v8 + 8))(v10, v13);
  return AssistantSchema.init<A>(_:)();
}

uint64_t sub_10045EBE0()
{
  if (!sub_10047E218(26, 0, 0))
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Do not reference schema types directly", 0x26uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MailSummarizeThread", 0x13uLL, 1);
  return AssistantSchema.IntentSchema.init(_:)();
}

uint64_t sub_10045ECB8()
{
  if (qword_1006D6120 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AssistantSchema();
  return sub_1000208F4(v0, qword_1006F0408);
}

uint64_t sub_10045ED24@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10045ECB8();
  v1 = type metadata accessor for AssistantSchema();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

unint64_t sub_10045EDA0()
{
  v2 = qword_1006DC9C0;
  if (!qword_1006DC9C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC9C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10045EE34()
{
  v2 = qword_1006DC9C8;
  if (!qword_1006DC9C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC9C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10045EF40(uint64_t a1)
{
  result = sub_1003402F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10045EF84()
{
  v2 = qword_1006DC9D0;
  if (!qword_1006DC9D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC9D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t SearchItem.TopHit.init(suggestion:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v25 = a1;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v22 = 0;
  v23 = (*(*(type metadata accessor for UUID() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v24 = v7 - v23;
  v26 = type metadata accessor for SearchItem.TopHit();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v25);
  v30 = v7 - v29;
  v31 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v32 = v7 - v31;
  v39 = v7 - v31;
  v38 = v4;
  v34 = [v4 category];
  v33 = [objc_opt_self() topHitsCategory];
  v35 = [v34 isGroupedInCategory:?];
  _objc_release(v33);
  _objc_release(v34);
  if ((v35 & 1) != 0 && ((_objc_retain(v25), objc_opt_self(), (v20 = swift_dynamicCastObjCClass()) == 0) ? (_objc_release(v25), v19 = 0) : (v19 = v20), (v18 = v19) != 0))
  {
    v17 = v18;
    v15 = v18;
    v37 = v18;
    v13 = [v18 messageList];
    v12 = [v15 itemID];
    v14 = [v13 messageListItemForItemID:?];
    swift_unknownObjectRelease();
    _objc_release(v13);
    v36 = v14;
    UUID.init()();
    v5 = [v15 matchingHintsByGlobalMessageID];
    v16 = v5;
    if (v5)
    {
      v11 = v16;
      v8 = v16;
      v7[0] = sub_100278E2C();
      v7[1] = sub_10025C9B0(&qword_1006DBC40, &qword_10050AAA8);
      sub_100408AB4();
      v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      _objc_release(v8);
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    SearchItem.TopHit.init(id:message:matchingHintsByGlobalMessageID:)();
    (*(v27 + 32))(v32, v30, v26);
    _objc_release(v15);
    (*(v27 + 16))(v21, v32, v26);
    (*(v27 + 56))(v21, 0, 1, v26);
    _objc_release(v25);
    return (*(v27 + 8))(v32, v26);
  }

  else
  {
    _objc_release(v25);
    return (*(v27 + 56))(v21, 1, 1, v26);
  }
}

uint64_t sub_10045F520(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[10] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v3[7] = 0;
  v3[8] = 0;
  v4 = type metadata accessor for Logger();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = v2;

  return _swift_task_switch(sub_10045F65C, 0);
}

uint64_t sub_10045F65C()
{
  v1 = v0[10];
  v0[2] = v0;
  v0[6] = v1;
  sub_10025C9B0(&unk_1006D6FF0, &unk_1004FEA30);
  type metadata accessor for MailMessageEntityID();
  sub_10027D6A0();
  v5 = Sequence.compactMap<A>(_:)();
  v0[15] = v5;
  v0[16] = 0;
  v4[7] = v5;
  v4[17] = type metadata accessor for MainActor();
  v4[18] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10045F7DC, v2);
}

uint64_t sub_10045F7DC()
{
  v1 = v0[11];
  v0[2] = v0;
  v0[19] = [v1 daemonInterface];

  return _swift_task_switch(sub_10045F878, 0);
}

void sub_10045F878()
{
  v35 = v0;
  v1 = *(v0 + 152);
  *(v0 + 16) = v0;
  if (v1)
  {
    v26 = v29[19];
    v2 = v29[16];
    v27 = [v26 messageRepository];
    _objc_release(v26);
    v28 = EMMessageRepository.messageObjectIDs(forMailMessageEntityIDs:)();
    v29[20] = v28;
    if (v2)
    {
      _objc_release(v27);

      v7 = *(v29[2] + 8);

      v7();
    }

    else
    {
      v3 = v29[14];
      v16 = v29[12];
      v15 = v29[13];
      _objc_release(v27);
      v29[8] = v28;
      v4 = Logger.appIntentLogger.unsafeMutableAddressor();
      (*(v15 + 16))(v3, v4, v16);

      v17 = swift_allocObject();
      *(v17 + 16) = v28;

      v18 = swift_allocObject();
      *(v18 + 16) = sub_100278D34;
      *(v18 + 24) = v17;

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      v20 = swift_allocObject();
      *(v20 + 16) = 32;
      v21 = swift_allocObject();
      *(v21 + 16) = 8;
      v19 = swift_allocObject();
      *(v19 + 16) = sub_100461818;
      *(v19 + 24) = v18;
      v22 = swift_allocObject();
      *(v22 + 16) = sub_10026EE84;
      *(v22 + 24) = v19;
      sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
      _allocateUninitializedArray<A>(_:)();
      v23 = v5;

      *v23 = sub_10026434C;
      v23[1] = v20;

      v23[2] = sub_10026434C;
      v23[3] = v21;

      v23[4] = sub_10026EF2C;
      v23[5] = v22;
      sub_1002612B0();

      if (os_log_type_enabled(v24, v25))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        v11 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v13 = sub_1002641E8(0, v11, v11);
        v14 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
        v30 = buf;
        v31 = v13;
        v32 = v14;
        sub_10026423C(2, &v30);
        sub_10026423C(1, &v30);
        v33 = sub_10026434C;
        v34 = v20;
        sub_100264250(&v33, &v30, &v31, &v32);
        v33 = sub_10026434C;
        v34 = v21;
        sub_100264250(&v33, &v30, &v31, &v32);
        v33 = sub_10026EF2C;
        v34 = v22;
        sub_100264250(&v33, &v30, &v31, &v32);
        _os_log_impl(&_mh_execute_header, v24, v25, "#SiriMail messageListItems messageObjectIDs: %s", buf, 0xCu);
        sub_10026429C(v13, 0);
        sub_10026429C(v14, 1);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      v29[21] = 0;
      v9 = v29[14];
      v10 = v29[12];
      v8 = v29[13];
      _objc_release(v24);
      (*(v8 + 8))(v9, v10);
      v29[22] = static MainActor.shared.getter();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();

      _swift_task_switch(sub_100460130, v6);
    }
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_100460130()
{
  v1 = v0[11];
  v0[2] = v0;
  v0[23] = [v1 daemonInterface];

  return _swift_task_switch(sub_1004601CC, 0);
}

uint64_t sub_1004601CC()
{
  v1 = *(v0 + 184);
  *(v0 + 16) = v0;
  if (!v1)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v6 = v14[23];
  v2 = v14[21];
  v8 = [v6 messageRepository];
  _objc_release(v6);

  sub_10028F43C();
  sub_10028F4A0();
  _arrayForceCast<A, B>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v8 messageListItemsForObjectIDs:isa];
  _objc_release(isa);
  _objc_release(v8);
  sub_10025C9B0(&qword_1006D7500, &qword_10050C710);
  v14[9] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = sub_10025C9B0(&unk_1006DCA10, &unk_1004FF5F0);
  v11 = sub_10025C9B0(&unk_1006D7220, &qword_1004FF600);
  v3 = sub_10028F554();
  result = sub_10025E9D8(sub_10028F504, 0, v10, v11, &type metadata for Never, v3, &protocol witness table for Never, v12);
  v13 = result;
  if (!v2)
  {
    sub_100264880(v14 + 9);
    _objc_release(v9);

    v5 = *(v14[2] + 8);

    return v5(v13);
  }

  return result;
}

uint64_t sub_100460540(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_100260618;

  return sub_10045F520(a1, a2);
}

uint64_t sub_10046060C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_100287C54;

  return sub_1004606E0(a1, a2, a3);
}

uint64_t sub_1004606E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[33] = a3;
  v4[32] = a2;
  v4[31] = a1;
  v4[22] = v4;
  v4[18] = 0;
  v4[19] = 0;
  v4[23] = 0;
  v4[24] = 0;
  v4[25] = 0;
  v4[26] = 0;
  v4[27] = 0;
  v4[18] = a1;
  v4[19] = a2;
  v4[23] = a3;
  v4[24] = v3;
  return _swift_task_switch(sub_100460760, 0);
}

uint64_t sub_100460760()
{
  *(v0 + 176) = v0;

  sub_1003847C8();
  FixedWidthInteger.init(_:)();
  v9 = *(v0 + 160);
  if (*(v0 + 168))
  {
    v4 = *(v8[22] + 8);

    return v4(0);
  }

  else
  {
    v8[25] = v9;
    v7 = [objc_opt_self() predicateForMessagesInConversation:v9];
    v8[34] = v7;
    v8[26] = v7;
    sub_10025C9B0(&qword_1006DCA38, &qword_10050C730);
    v6 = sub_100461A18();
    _objc_retain(v7);
    sub_100461A7C();
    v1 = _allocateUninitializedArray<A>(_:)();
    v2 = sub_100461470(v6, v7, v1, v6);
    v8[35] = v2;
    v8[27] = v2;
    type metadata accessor for MainActor();
    v8[36] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10046099C, v3);
  }
}

uint64_t sub_10046099C()
{
  v1 = v0[33];
  v0[22] = v0;
  v0[37] = [v1 daemonInterface];

  return _swift_task_switch(sub_100460A38, 0);
}

uint64_t sub_100460A38()
{
  v1 = *(v0 + 296);
  *(v0 + 176) = v0;
  if (!v1)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v3 = *(v7 + 296);
  v5 = *(v7 + 280);
  v6 = [v3 messageRepository];
  *(v7 + 304) = v6;
  _objc_release(v3);
  *(v7 + 16) = *(v7 + 176);
  *(v7 + 56) = v7 + 224;
  *(v7 + 24) = sub_100460C94;
  v4 = swift_continuation_init();
  *(v7 + 136) = sub_10025C9B0(&qword_1006DCA50, &qword_10050C738);
  *(v7 + 112) = v4;
  *(v7 + 80) = _NSConcreteStackBlock;
  *(v7 + 88) = 1107296256;
  *(v7 + 92) = 0;
  *(v7 + 96) = sub_1004614CC;
  *(v7 + 104) = &unk_100661AD0;
  [v6 performQuery:v5 limit:1 completionHandler:?];

  return _swift_continuation_await(v7 + 16);
}

uint64_t sub_100460C94()
{
  v4 = *v0;
  v4[22] = *v0;
  v1 = v4[6];
  v4[39] = v1;
  if (v1)
  {
    v2 = sub_100460FE8;
  }

  else
  {
    v2 = sub_100460DEC;
  }

  return _swift_task_switch(v2, 0);
}

uint64_t sub_100460DEC()
{
  v0[22] = v0;
  v0[29] = v0[28];
  sub_10025C9B0(&qword_1006DCA58, &unk_10050C740);
  sub_100461B20();
  Collection.first.getter();
  v6 = v0[30];

  _objc_release(*(v5 + 304));
  if (v6)
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  v3 = *(v5 + 272);
  _objc_release(*(v5 + 280));
  _objc_release(v3);
  v1 = *(*(v5 + 176) + 8);

  return v1(v4);
}

uint64_t sub_100460FE8(uint64_t a1)
{
  v4 = *(v1 + 304);
  *(v1 + 176) = v1;
  swift_willThrow();
  _objc_release(v4);

  v5 = *(v1 + 272);
  _objc_release(*(v1 + 280));
  _objc_release(v5);
  v2 = *(*(v1 + 176) + 8);

  return v2(0);
}

uint64_t sub_100461134(void *a1, uint64_t a2)
{
  v12 = 0;
  v14 = a2;
  v13 = a1;
  _objc_retain(a1);
  v7 = [a1 connectedScenes];
  sub_1002883E4();
  sub_100288448();
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(a1);
  v10 = v9;
  sub_10025C9B0(&unk_1006D72F0, &unk_1005001F0);
  sub_1002884C8();
  Sequence.first(where:)();
  sub_100264880(&v10);
  _objc_release(v7);
  v6 = v11;
  if (!v11)
  {
    return 0;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    return v5;
  }

  _objc_release(v6);
  return 0;
}

id sub_100461304(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48))();
  if (!v9)
  {
    goto LABEL_7;
  }

  _objc_retain(v9);
  v3 = [v9 undoManager];
  v7 = v3;
  if (!v3)
  {
    _objc_release(v9);
    _objc_release(v9);
LABEL_7:
    _objc_retain(a1);
    v5 = [a1 undoManager];
    _objc_release(a1);
    return v5;
  }

  _objc_release(v9);
  _objc_release(v9);
  return v7;
}

void sub_1004614CC(uint64_t a1, void *a2, void *a3)
{
  sub_10025C9B0(&qword_1006DCA68, &qword_10050C7E8);
  _objc_retain(a2);
  _objc_retain(a3);
  v8 = *sub_10027EC3C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    swift_errorRetain();
    v4 = sub_10025C9B0(&qword_1006DCA58, &unk_10050C740);
    sub_100461614(v8, a3, v4);
  }

  else
  {
    _objc_retain(a2);
    sub_100461A18();
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = sub_10025C9B0(&qword_1006DCA58, &unk_10050C740);
    sub_100461678(v8, &v9, v3);
    _objc_release(a2);
  }

  _objc_release(a3);
  _objc_release(a2);
}

uint64_t sub_100461614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[1] = a3;
  v7[0] = a2;
  v3 = sub_10025C9B0(&unk_1006DCA70, &unk_10050C7F0);
  return sub_100461988(v7, a1, a3, v3, &protocol self-conformance witness table for Error);
}

uint64_t sub_1004616D4(id *a1)
{
  v3 = *a1;
  _objc_retain(*a1);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    _objc_release(v4);
    v2 = 1;
  }

  else
  {
    _objc_release(v3);
    v2 = 0;
  }

  return v2 & 1;
}

id sub_10046177C(uint64_t a1, void *a2, uint64_t a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_100461A7C();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v8 = [v5 initWithTargetClass:ObjCClassFromMetadata predicate:a2 sortDescriptors:?];
  _objc_release(isa);

  _objc_release(a2);
  return v8;
}

uint64_t sub_100461818()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_10025C9B0(&qword_1006DC9F0, &unk_10050C700);
  v1 = sub_100461880();

  return sub_10026E834(v5, v3, v4, v1);
}

unint64_t sub_100461880()
{
  v2 = qword_1006DC9F8;
  if (!qword_1006DC9F8)
  {
    sub_10025CAA4(&qword_1006DC9F0, &unk_10050C700);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC9F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100461988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v5, a1);
  return swift_continuation_throwingResumeWithError();
}

unint64_t sub_100461A18()
{
  v2 = qword_1006DCA40;
  if (!qword_1006DCA40)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DCA40);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100461A7C()
{
  v2 = qword_1006DCA48;
  if (!qword_1006DCA48)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DCA48);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100461B20()
{
  v2 = qword_1006DCA60;
  if (!qword_1006DCA60)
  {
    sub_10025CAA4(&qword_1006DCA58, &unk_10050C740);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCA60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100461BDC(uint64_t a1, char a2)
{
  v2 = *sub_10027EC3C((a1 + 32), *(a1 + 56));
  v5 = a2;
  return sub_100461BA8(v2, &v5, &type metadata for Bool);
}

uint64_t sub_100461C24@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v9 = "Undo an email message that has just been sent";
  v1 = sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v17 = &v4 - v4;
  v19 = 0;
  v5 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v13 = &v4 - v5;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v12 = &v4 - v6;
  v7 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v10 = &v4 - v7;
  v16 = type metadata accessor for LocalizedStringResource();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v18 = &v4 - v8;
  v20 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UNDO_SEND_DESCRIPTION", 0x15uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v20 & 1);
  sub_100015CC0();
  sub_10025D410(v13);
  v23 = v9;
  v24 = 45;
  v25 = 2;
  v21 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v14 + 56))(v17, v20, v20, v16);
  sub_10027F040();
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v2 = type metadata accessor for IntentDescription();
  return (*(*(v2 - 8) + 56))(v22, v21, v20);
}

uint64_t sub_100461F64@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v9 = "Undo an email message that has just been sent";
  v5 = 0;
  v4 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = &v3 - v4;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v13 = &v3 - v6;
  v1 = type metadata accessor for String.LocalizationValue();
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = &v3 - v7;
  v8 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Undo Send Message", 0x11uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 45;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100462148(uint64_t a1, uint64_t a2)
{
  v2[25] = a2;
  v2[18] = v2;
  v2[19] = 0;
  v3 = type metadata accessor for Logger();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  sub_10025C9B0(&unk_1006D7080, &unk_1004FFEB0);
  v2[29] = swift_task_alloc();
  v2[19] = a2;
  type metadata accessor for MainActor();
  v2[30] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[31] = v7;
  v2[32] = v4;

  return _swift_task_switch(sub_1004622BC, v7);
}

uint64_t sub_1004622BC()
{
  v1 = v0[25];
  v0[18] = v0;
  v9 = sub_1002813B0(v1);
  sub_10035277C();
  v0[33] = 0;
  v5 = *(v8 + 200);
  _objc_release(v9);
  v6 = sub_1002813B0(v5);
  v7 = [v6 daemonInterface];
  _objc_release(v6);
  if (!v7)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v4 = [v7 outgoingMessageRepository];
  *(v8 + 272) = v4;
  _objc_release(v7);
  *(v8 + 16) = *(v8 + 144);
  *(v8 + 56) = v8 + 280;
  *(v8 + 24) = sub_1004625F4;
  v3 = swift_continuation_init();
  *(v8 + 136) = sub_10025C9B0(&qword_1006DC2D0, &unk_10050C810);
  *(v8 + 112) = v3;
  *(v8 + 80) = _NSConcreteStackBlock;
  *(v8 + 88) = 1107296256;
  *(v8 + 92) = 0;
  *(v8 + 96) = sub_100461BDC;
  *(v8 + 104) = &unk_100661AF8;
  [v4 cancelLastDelayedMessage:?];

  return _swift_continuation_await(v8 + 16);
}

uint64_t sub_1004625F4()
{
  v3 = *v0;
  *(*v0 + 144) = *v0;
  v1 = *(v3 + 248);

  return _swift_task_switch(sub_10046270C, v1);
}

uint64_t sub_10046270C()
{
  v1 = *(v0 + 272);
  *(v0 + 144) = v0;
  v25 = *(v0 + 280);
  _objc_release(v1);
  if (v25)
  {
    v23 = *(v24 + 232);
    *(v24 + 192) = *(v24 + 200);
    v2 = type metadata accessor for IntentDialog();
    (*(*(v2 - 8) + 56))(v23, 1);
    type metadata accessor for AppIntentError();
    sub_1004631D0();
    swift_allocError();
    sub_100463250();
    ForegroundContinuableIntent.needsToContinueInForegroundError(_:requestConfirmation:continuation:)();
    sub_1004632CC(v23);
    swift_willThrow();
  }

  else
  {
    v3 = *(v24 + 224);
    v19 = *(v24 + 208);
    v18 = *(v24 + 216);
    v4 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v18 + 16))(v3, v4, v19);
    v21 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v22 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v21, v20))
    {
      v5 = *(v24 + 264);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v13 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v15 = sub_1002641E8(0, v13, v13);
      v16 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v24 + 160) = buf;
      *(v24 + 168) = v15;
      *(v24 + 176) = v16;
      sub_10026423C(0, (v24 + 160));
      sub_10026423C(0, (v24 + 160));
      *(v24 + 184) = v22;
      v17 = swift_task_alloc();
      v17[2] = v24 + 160;
      v17[3] = v24 + 168;
      v17[4] = v24 + 176;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      if (v5)
      {
      }

      _os_log_impl(&_mh_execute_header, v21, v20, "#SiriMail UndoSendMessageIntent - It's too late to undo the last email, throwing undoSendFailed", buf, 2u);
      sub_10026429C(v15, 0);
      sub_10026429C(v16, 0);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v10 = *(v24 + 224);
    v11 = *(v24 + 208);
    v9 = *(v24 + 216);
    _objc_release(v21);
    (*(v9 + 8))(v10, v11);
    v12 = type metadata accessor for ToolboxErrors();
    sub_100281ED4();
    swift_allocError();
    (*(*(v12 - 8) + 104))(v7, enum case for ToolboxErrors.undoSendFailed(_:));
    swift_willThrow();
  }

  v8 = *(*(v24 + 144) + 8);

  return v8();
}

uint64_t sub_100462C9C()
{
  *(v0 + 16) = v0;
  type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100462D3C, v1);
}

uint64_t sub_100462D3C()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_100462DF8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return sub_100462148(a1, v6);
}

uint64_t sub_100462EE8()
{
  v3[1] = 0;
  v13 = type metadata accessor for AssistantSchema.IntentSchema();
  v8 = *(v13 - 8);
  v9 = v13 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(0);
  v12 = v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v10 = v3 - v5;
  v7 = type metadata accessor for AssistantSchema();
  v6 = qword_1006F0420;
  sub_10002094C(v7, qword_1006F0420);
  v11 = sub_1000208F4(v7, v6);
  sub_10027DF0C();
  sub_100463028();
  (*(v8 + 8))(v10, v13);
  return AssistantSchema.init<A>(_:)();
}

uint64_t sub_100463028()
{
  if (!sub_10047E218(26, 0, 0))
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Do not reference schema types directly", 0x26uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MailUndoSend", 0xCuLL, 1);
  return AssistantSchema.IntentSchema.init(_:)();
}

uint64_t sub_100463100()
{
  if (qword_1006D6128 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AssistantSchema();
  return sub_1000208F4(v0, qword_1006F0420);
}

uint64_t sub_10046316C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100463100();
  v1 = type metadata accessor for AssistantSchema();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

unint64_t sub_1004631D0()
{
  v2 = qword_1006DCA80;
  if (!qword_1006DCA80)
  {
    type metadata accessor for AppIntentError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCA80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100463250()
{
  v2 = qword_1006DCA88;
  if (!qword_1006DCA88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCA88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1004632CC(uint64_t a1)
{
  v3 = type metadata accessor for IntentDialog();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_10046338C()
{
  v2 = qword_1006DCA98;
  if (!qword_1006DCA98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCA98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100463420()
{
  v2 = qword_1006DCAA0;
  if (!qword_1006DCAA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCAA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100463544(uint64_t a1)
{
  result = sub_10032CD54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100463588()
{
  v2 = qword_1006DCAA8;
  if (!qword_1006DCAA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCAA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100463694()
{
  v17 = "Email messages to unsubscribe from";
  v42 = &v52;
  v52 = 0;
  v53 = 0;
  v28 = 0;
  v0 = type metadata accessor for InputConnectionBehavior();
  v5 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v40 = &v5 - v5;
  v1 = sub_10025C9B0(&unk_1006D7080, &unk_1004FFEB0);
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v39 = &v5 - v6;
  v7 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v5 - v6);
  v38 = &v5 - v7;
  v8 = (*(*(sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v36 = &v5 - v8;
  v9 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v23 = &v5 - v9;
  v10 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v22 = &v5 - v10;
  v11 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v20 = &v5 - v11;
  v27 = type metadata accessor for LocalizedStringResource();
  v24 = *(v27 - 8);
  v25 = v27 - 8;
  v12 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v35 = &v5 - v12;
  sub_10025C9B0(&unk_1006D7090, &unk_1004FEED0);
  v13 = v51;
  memset(v51, 0, sizeof(v51));
  sub_10000B074();
  sub_1003DC7F0();
  v44 = AppDependency.__allocating_init(key:manager:)();

  v52 = v44;
  sub_10025C9B0(&unk_1006D70A0, &qword_1004FEC80);
  v29 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Message", 7uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v15 = "AppIntents";
  v16 = 10;
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v29 & 1);
  sub_100015CC0();
  sub_10025D410(v23);
  v48 = v17;
  v18 = 34;
  v49 = 34;
  v19 = 2;
  v50 = 2;
  v26 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UNSUBSCRIBE_MESSAGE_ENTITY_DESCRIPTION", 0x26uLL, v29 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v15, v16, v29 & 1);
  sub_100015CC0();
  sub_10025D410(v23);
  v45[1] = v17;
  v45[2] = v18;
  v46 = v19;
  v47 = v26 & 1 & v29;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v24 + 56))(v36, v26, v29, v27);
  v37 = v45;
  v45[0] = 0;
  v30 = type metadata accessor for IntentDialog();
  v3 = *(v30 - 8);
  v32 = *(v3 + 56);
  v31 = v3 + 56;
  v32(v38, v29);
  (v32)(v39, v29, v29, v30);
  v34 = sub_10025C9B0(&unk_1006D6FF0, &unk_1004FEA30);
  v33 = sub_10027D124();
  v41 = sub_10027EAAC();
  sub_1003BD8F8(v40);
  v43 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  v53 = v43;
  sub_10027EB24(v42);
  return v44;
}

uint64_t sub_100463DA8()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mail", 4uLL, 1);
  result = v1._countAndFlagsBits;
  xmmword_1006F0438 = v1;
  return result;
}

__int128 *sub_100463DEC()
{
  if (qword_1006D6130 != -1)
  {
    swift_once();
  }

  return &xmmword_1006F0438;
}

uint64_t sub_100463E4C()
{
  v1 = *sub_100463DEC();

  return v1;
}

uint64_t sub_100463E88()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MailUnsubscribe", 0xFuLL, 1);
  result = v1._countAndFlagsBits;
  xmmword_1006F0448 = v1;
  return result;
}

__int128 *sub_100463ECC()
{
  if (qword_1006D6138 != -1)
  {
    swift_once();
  }

  return &xmmword_1006F0448;
}

uint64_t sub_100463F2C()
{
  v1 = *sub_100463ECC();

  return v1;
}

uint64_t sub_100463F68@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v9 = "Unsubscribe from one or more email messages";
  v1 = sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v17 = &v4 - v4;
  v19 = 0;
  v5 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v13 = &v4 - v5;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v12 = &v4 - v6;
  v7 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v10 = &v4 - v7;
  v16 = type metadata accessor for LocalizedStringResource();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v18 = &v4 - v8;
  v20 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UNSUBSCRIBE_MESSAGE_DESCRIPTION", 0x1FuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v20 & 1);
  sub_100015CC0();
  sub_10025D410(v13);
  v23 = v9;
  v24 = 43;
  v25 = 2;
  v21 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v14 + 56))(v17, v20, v20, v16);
  sub_10027F040();
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v2 = type metadata accessor for IntentDescription();
  return (*(*(v2 - 8) + 56))(v22, v21, v20);
}

uint64_t sub_1004642A8@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v9 = "Unsubscribe from one or more email messages";
  v5 = 0;
  v4 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = &v3 - v4;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v13 = &v3 - v6;
  v1 = type metadata accessor for String.LocalizationValue();
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = &v3 - v7;
  v8 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unsubscribe Message", 0x13uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 43;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_10046448C@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_10025C9B0(&qword_1006DCAB8, &qword_10050CA48);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v26 = &v7 - v8;
  v19 = sub_10025C9B0(&unk_1006DCAC0, &qword_10050CA50);
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v9 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v21 = &v7 - v9;
  v10 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v9);
  v16 = &v7 - v10;
  v11 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v10);
  v20 = &v7 - v11;
  v25 = sub_100335D14();
  v12 = 12;
  v24 = &unk_100661CD8;
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unsubscribe ", v12, 1);
  object = v4._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);

  KeyPath = swift_getKeyPath();
  sub_10025C9B0(&unk_1006DCAD0, &qword_10050CA80);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v22 & 1);
  v15 = v5._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);

  (*(v17 + 16))(v16, v20, v19);
  (*(v17 + 32))(v21, v16, v19);
  (*(v17 + 8))(v20, v19);
  ParameterSummaryString.init(stringInterpolation:)();
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v22 & 1)._countAndFlagsBits;
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_1004647B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[190] = a3;
  v3[189] = a2;
  v3[188] = a1;
  v3[174] = v3;
  v3[150] = 0;
  v3[151] = 0;
  v3[175] = 0;
  v3[156] = 0;
  v3[157] = 0;
  v3[162] = 0;
  v3[163] = 0;
  v3[179] = 0;
  v4 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v3[191] = v4;
  v3[192] = *(v4 - 8);
  v3[193] = swift_task_alloc();
  v3[194] = swift_task_alloc();
  v3[195] = swift_task_alloc();
  v5 = type metadata accessor for IntentDialog();
  v3[196] = v5;
  v3[197] = *(v5 - 8);
  v3[198] = swift_task_alloc();
  v6 = sub_10025C9B0(&qword_1006D6FD8, &qword_1004FEA10);
  v3[199] = v6;
  v3[200] = *(v6 - 8);
  v3[201] = swift_task_alloc();
  type metadata accessor for LocalizedStringResource.BundleDescription();
  v3[202] = swift_task_alloc();
  type metadata accessor for Locale();
  v3[203] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v3[204] = swift_task_alloc();
  v7 = type metadata accessor for LocalizedStringResource();
  v3[205] = v7;
  v3[206] = *(v7 - 8);
  v3[207] = swift_task_alloc();
  v3[208] = swift_task_alloc();
  v8 = type metadata accessor for ConfirmationActionName();
  v3[209] = v8;
  v3[210] = *(v8 - 8);
  v3[211] = swift_task_alloc();
  sub_10025C9B0(&qword_1006DCAE0, &qword_1005063D0);
  v3[212] = swift_task_alloc();
  v3[213] = swift_task_alloc();
  v3[214] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v3[215] = v9;
  v3[216] = *(v9 - 8);
  v3[217] = swift_task_alloc();
  v3[218] = swift_task_alloc();
  v3[219] = swift_task_alloc();
  v3[150] = a2;
  v3[151] = a3;
  type metadata accessor for MainActor();
  v3[220] = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[221] = v14;
  v3[222] = v10;

  return _swift_task_switch(sub_100464CB8, v14);
}

uint64_t sub_100464CB8()
{
  v1 = v0[190];
  v2 = v0[189];
  v0[174] = v0;
  v10 = sub_10027A534(v2, v1);
  sub_10035277C();
  v5 = v9[190];
  v6 = v9[189];
  _objc_release(v10);
  v9[152] = v6;
  v9[153] = v5;
  v8 = sub_10027A6E8(v6, v5);
  v9[223] = v8;
  v7 = sub_10027A534(v6, v5);
  v9[224] = v7;
  v3 = swift_task_alloc();
  v9[225] = v3;
  v9[226] = sub_100467CB4();
  *v3 = v9[174];
  v3[1] = sub_100464FBC;

  return sub_10045F520(v8, v7);
}

uint64_t sub_100464FBC(uint64_t a1)
{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[174] = *v2;
  v7[227] = a1;
  v7[228] = v1;

  if (v1)
  {
    v3 = *(v6 + 1752);
    v4 = sub_100467890;
  }

  else
  {

    v3 = *(v6 + 1752);
    v4 = sub_100465160;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_100465160()
{
  v1 = v0[227];
  v0[174] = v0;
  v76 = sub_100467D30(v1);
  v0[229] = v76;

  v0[175] = v76;
  v0[176] = v76;
  sub_10025C9B0(&unk_1006DCAF0, &unk_100509160);
  sub_1002BC750();
  if (Collection.isEmpty.getter())
  {
    v2 = *(v75 + 1752);
    v71 = *(v75 + 1720);
    v70 = *(v75 + 1728);
    v3 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v70 + 16))(v2, v3, v71);
    oslog = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v74 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v72))
    {
      v4 = *(v75 + 1824);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v65 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v67 = sub_1002641E8(0, v65, v65);
      v68 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v75 + 1472) = buf;
      *(v75 + 1480) = v67;
      *(v75 + 1488) = v68;
      sub_10026423C(0, (v75 + 1472));
      sub_10026423C(0, (v75 + 1472));
      *(v75 + 1496) = v74;
      v69 = swift_task_alloc();
      v69[2] = v75 + 1472;
      v69[3] = v75 + 1480;
      v69[4] = v75 + 1488;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      if (v4)
      {
      }

      _os_log_impl(&_mh_execute_header, oslog, v72, "#SiriMail Emails are not unsubscribable, throwing cannotUnsubscribe", buf, 2u);
      sub_10026429C(v67, 0);
      sub_10026429C(v68, 0);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v62 = *(v75 + 1752);
    v63 = *(v75 + 1720);
    v61 = *(v75 + 1728);
    _objc_release(oslog);
    (*(v61 + 8))(v62, v63);
    v64 = type metadata accessor for ToolboxErrors();
    sub_100281ED4();
    swift_allocError();
    (*(*(v64 - 8) + 104))(v6, enum case for ToolboxErrors.cannotUnsubscribe(_:));
    swift_willThrow();

    v7 = *(*(v75 + 1392) + 8);

    return v7();
  }

  else
  {
    *(v75 + 1416) = sub_10027A6E8(*(v75 + 1512), *(v75 + 1520));
    sub_10025C9B0(&unk_1006D6FF0, &unk_1004FEA30);
    sub_10027D784();
    Collection.first.getter();
    memcpy((v75 + 336), (v75 + 464), 0x80uLL);

    memcpy((v75 + 208), (v75 + 336), 0x80uLL);
    if (sub_10027D80C(v75 + 208) == 1)
    {
      v24 = *(v75 + 1712);
      v23 = type metadata accessor for IntentPerson();
      (*(*(v23 - 8) + 56))(v24, 1);
    }

    else
    {
      v60 = *(v75 + 1712);
      memcpy((v75 + 80), (v75 + 208), 0x80uLL);
      sub_1003807AC();
      sub_10027D9CC((v75 + 208));
      v8 = type metadata accessor for IntentPerson();
      (*(*(v8 - 8) + 56))(v60, 0, 1);
    }

    v56 = *(v75 + 1704);
    sub_100467DDC(*(v75 + 1712), v56);
    v57 = type metadata accessor for IntentPerson();
    v58 = *(v57 - 8);
    v59 = *(v58 + 48);
    if (v59(v56, 1) == 1)
    {
      sub_100387BA8(*(v75 + 1704));
      v54 = 0;
      v55 = 0;
    }

    else
    {
      v51 = *(v75 + 1704);
      v52 = IntentPerson.displayString.getter();
      v53 = v9;
      (*(v58 + 8))(v51, v57);
      v54 = v52;
      v55 = v53;
    }

    *(v75 + 1232) = v54;
    *(v75 + 1240) = v55;
    if (*(v75 + 1240))
    {
      v77 = *(v75 + 1232);
    }

    else
    {
      v77 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      if (*(v75 + 1240))
      {
        sub_100268744(v75 + 1232);
      }
    }

    v10 = *(v75 + 1712);
    v11 = *(v75 + 1696);
    v50 = v11;
    *(v75 + 1840) = v77._object;
    *(v75 + 1248) = v77;
    sub_100467DDC(v10, v11);
    if ((v59)(v50, 1, v57) == 1)
    {
      sub_100387BA8(*(v75 + 1696));
      v48 = 0;
      v49 = 0;
    }

    else
    {
      v45 = *(v75 + 1696);
      v46 = sub_100286CA8();
      v47 = v12;
      (*(v58 + 8))(v45, v57);
      v48 = v46;
      v49 = v47;
    }

    *(v75 + 1280) = v48;
    *(v75 + 1288) = v49;
    if (*(v75 + 1288))
    {
      v13 = *(v75 + 1288);
      *(v75 + 1264) = *(v75 + 1280);
      *(v75 + 1272) = v13;
    }

    else
    {
      *(v75 + 1264) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      if (*(v75 + 1288))
      {
        sub_100268744(v75 + 1280);
      }
    }

    v40 = *(v75 + 1664);
    v39 = *(v75 + 1656);
    v41 = *(v75 + 1640);
    v37 = *(v75 + 1616);
    v44 = *(v75 + 1520);
    v43 = *(v75 + 1512);
    v38 = *(v75 + 1648);
    v14 = *(v75 + 1264);
    *(v75 + 1848) = v14;
    v15 = *(v75 + 1272);
    *(v75 + 1856) = v15;
    *(v75 + 1296) = v14;
    *(v75 + 1304) = v15;
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unsubscribe", 0xBuLL, 1);
    String.LocalizationValue.init(stringLiteral:)();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
    sub_100015CC0();
    sub_10025D410(v37);
    LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
    _allocateUninitializedArray<A>(_:)();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cancel", 6uLL, 1);
    String.LocalizationValue.init(stringLiteral:)();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
    sub_100015CC0();
    sub_10025D410(v37);
    LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
    _allocateUninitializedArray<A>(_:)();
    static ConfirmationActionName.custom(acceptLabel:acceptAlternatives:denyLabel:denyAlternatives:destructive:)();

    v42 = *(v38 + 8);
    v42(v39, v41);

    v42(v40, v41);
    *(v75 + 1312) = v43;
    *(v75 + 1320) = v44;
    *(v75 + 1424) = sub_10027A6E8(v43, v44);
    Collection.first.getter();
    memcpy((v75 + 720), (v75 + 848), 0x80uLL);

    memcpy((v75 + 592), (v75 + 720), 0x80uLL);
    if (sub_10027D80C(v75 + 592) == 1)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    else
    {
      v30 = *(v75 + 1616);
      v32 = *(v75 + 1584);
      v33 = *(v75 + 1568);
      v28 = *(v75 + 1560);
      v26 = *(v75 + 1552);
      v29 = *(v75 + 1544);
      v27 = *(v75 + 1528);
      v31 = *(v75 + 1576);
      v25 = *(v75 + 1536);
      memcpy((v75 + 976), (v75 + 592), 0x80uLL);
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Just to confirm, do you want to unsubscribe from further “", 0x3CuLL, 0);
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);

      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v77);
      v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("“ messages?", 0xDuLL, 0);
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);

      (*(v25 + 16))(v26, v28, v27);
      (*(v25 + 32))(v29, v26, v27);
      (*(v25 + 8))(v28, v27);
      String.LocalizationValue.init(stringInterpolation:)();
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
      sub_100015CC0();
      sub_10025D410(v30);
      LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
      IntentDialog.init(_:)();
      sub_10027D1BC();
      static IntentResult.result<A>(value:dialog:)();
      v18 = *(v31 + 8);
      *(v75 + 1864) = v18;
      *(v75 + 1872) = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v18(v32, v33);
      sub_10027D9CC((v75 + 976));
      v35 = sub_100335D14();
      v36 = sub_10027D944();
      v34 = sub_10027D2E4();
      v19 = swift_task_alloc();
      *(v75 + 1880) = v19;
      *v19 = *(v75 + 1392);
      v19[1] = sub_1004663E0;
      v20 = *(v75 + 1688);
      v21 = *(v75 + 1608);
      v22 = *(v75 + 1592);

      return AppIntent.requestConfirmation<A>(output:confirmationActionName:showPrompt:)(v21, v20, v34 & 1, &unk_100661CD8, v22, v35, v36);
    }
  }
}

uint64_t sub_1004663E0()
{
  v6 = *v1;
  v5 = (*v1 + 16);
  *(v6 + 1392) = *v1;
  *(v6 + 1888) = v0;

  if (v0)
  {
    v2 = v5[219];
    v3 = sub_100467A60;
  }

  else
  {
    (*(v5[198] + 8))(v5[199], v5[197]);
    v2 = v5[219];
    v3 = sub_100466580;
  }

  return _swift_task_switch(v3, v2);
}

void sub_100466580()
{
  v39 = v0;
  v25 = v0[229];
  v1 = v0[218];
  v23 = v0[216];
  v24 = v0[215];
  v0[174] = v0;
  v2 = Logger.appIntentLogger.unsafeMutableAddressor();
  v3 = *(v23 + 16);
  v0[237] = v3;
  v0[238] = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v1, v2, v24);

  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_100467F44;
  *(v27 + 24) = v26;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_10026E818;
  *(v30 + 24) = v27;
  v0[239] = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  _allocateUninitializedArray<A>(_:)();
  v31 = v4;

  *v31 = sub_10026434C;
  v31[1] = v28;

  v31[2] = sub_10026434C;
  v31[3] = v29;

  v31[4] = sub_10026EBF8;
  v31[5] = v30;
  sub_1002612B0();

  if (os_log_type_enabled(v32, v33))
  {
    v5 = *(v22 + 1888);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v18 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v20 = sub_1002641E8(0, v18, v18);
    v21 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v34 = buf;
    v35 = v20;
    v36 = v21;
    sub_10026423C(0, &v34);
    sub_10026423C(1, &v34);
    v37 = sub_10026434C;
    v38 = v28;
    sub_100264250(&v37, &v34, &v35, &v36);
    if (v5)
    {

      return;
    }

    v37 = sub_10026434C;
    v38 = v29;
    sub_100264250(&v37, &v34, &v35, &v36);
    v37 = sub_10026EBF8;
    v38 = v30;
    sub_100264250(&v37, &v34, &v35, &v36);
    _os_log_impl(&_mh_execute_header, v32, v33, "#SiriMail UnsubscribeMessageIntent Unsubscribing from %ld message(s)", buf, 0xCu);
    sub_10026429C(v20, 0);
    sub_10026429C(v21, 0);
    UnsafeMutablePointer.deallocate()();

    v17 = 0;
  }

  else
  {

    v17 = *(v22 + 1888);
  }

  *(v22 + 1920) = v17;
  v12 = *(v22 + 1832);
  v9 = *(v22 + 1744);
  v10 = *(v22 + 1720);
  v13 = *(v22 + 1520);
  v14 = *(v22 + 1512);
  v8 = *(v22 + 1728);
  _objc_release(v32);
  v6 = *(v8 + 8);
  *(v22 + 1928) = v6;
  *(v22 + 1936) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v9, v10);
  sub_100468530();

  *(v22 + 1328) = v14;
  *(v22 + 1336) = v13;
  v11 = sub_10028E57C();
  *(v22 + 1344) = v14;
  *(v22 + 1352) = v13;
  v7 = sub_10028E5B4();
  v16 = sub_100467F4C(v12, v11, v7, 0, 0);
  *(v22 + 1944) = v16;
  *(v22 + 1432) = v16;
  _objc_retain(v16);
  sub_10027A534(v14, v13);
  [v16 setDelegate:?];
  swift_unknownObjectRelease();
  _objc_release(v16);
  *(v22 + 16) = *(v22 + 1392);
  *(v22 + 56) = v22 + 1376;
  *(v22 + 24) = sub_100466DD0;
  v15 = swift_continuation_init();
  *(v22 + 1160) = sub_10025C9B0(&unk_1006D7CE0, &unk_1004FECE0);
  *(v22 + 1136) = v15;
  *(v22 + 1104) = _NSConcreteStackBlock;
  *(v22 + 1112) = 1107296256;
  *(v22 + 1116) = 0;
  *(v22 + 1120) = sub_10027D41C;
  *(v22 + 1128) = &unk_100661C48;
  [v16 performInteractionWithCompletion:?];

  _swift_continuation_await(v22 + 16);
}

uint64_t sub_100466DD0()
{
  v3 = *v0;
  *(*v0 + 1392) = *v0;
  v1 = *(v3 + 1768);

  return _swift_task_switch(sub_100466EE8, v1);
}

uint64_t sub_100466EE8()
{
  *(v0 + 1392) = v0;
  _objc_release(*(v0 + 1376));
  v40 = [objc_opt_self() defaultCenter];
  v41 = sub_100468010();
  *(v0 + 1168) = 0;
  *(v0 + 1176) = 0;
  *(v0 + 1184) = 0;
  *(v0 + 1192) = 0;
  if (*(v0 + 1192))
  {
    v35 = *(v39 + 1192);
    v33 = sub_10027EC3C((v39 + 1168), v35);
    v34 = *(v35 - 8);
    v36 = swift_task_alloc();
    (*(v34 + 16))(v36, v33, v35);
    v37 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v34 + 8))(v36, v35);

    sub_1000160F4((v39 + 1168));
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  v29 = *(v39 + 1896);
  v26 = *(v39 + 1856);
  v24 = *(v39 + 1848);
  v1 = *(v39 + 1736);
  v28 = *(v39 + 1720);
  sub_10025C9B0(&unk_1006DB9F0, &qword_1005001E8);
  _allocateUninitializedArray<A>(_:)();
  v25 = v2;
  *(v39 + 1360) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sender", 6uLL, 1);
  _convertToAnyHashable<A>(_:)();

  v25[8] = &type metadata for String;
  v25[5] = v24;
  v25[6] = v26;
  sub_1002612B0();
  sub_100268744(v39 + 1360);
  Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v40 postNotificationName:v41 object:v38 userInfo:isa];
  _objc_release(isa);
  swift_unknownObjectRelease();
  _objc_release(v41);
  _objc_release(v40);
  v3 = Logger.appIntentLogger.unsafeMutableAddressor();
  v29(v1, v3, v28);
  oslog = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  v32 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v30))
  {
    v4 = *(v39 + 1920);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v19 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v21 = sub_1002641E8(0, v19, v19);
    v22 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v39 + 1440) = buf;
    *(v39 + 1448) = v21;
    *(v39 + 1456) = v22;
    sub_10026423C(0, (v39 + 1440));
    sub_10026423C(0, (v39 + 1440));
    *(v39 + 1464) = v32;
    v23 = swift_task_alloc();
    v23[2] = v39 + 1440;
    v23[3] = v39 + 1448;
    v23[4] = v39 + 1456;
    sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    if (v4)
    {
    }

    _os_log_impl(&_mh_execute_header, oslog, v30, "#SiriMail UnsubscribeMessageIntent Unsubscribed successfully!", buf, 2u);
    sub_10026429C(v21, 0);
    sub_10026429C(v22, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v11 = *(v39 + 1944);
  v8 = *(v39 + 1928);
  v10 = *(v39 + 1864);
  v14 = *(v39 + 1736);
  v7 = *(v39 + 1720);
  v15 = *(v39 + 1712);
  v16 = *(v39 + 1688);
  v13 = *(v39 + 1672);
  v17 = *(v39 + 1616);
  v18 = *(v39 + 1584);
  v9 = *(v39 + 1568);
  v12 = *(v39 + 1680);
  _objc_release(oslog);
  v8(v14, v7);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, I've unsubscribed you.", 0x1AuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
  sub_100015CC0();
  sub_10025D410(v17);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  IntentDialog.init(_:)();
  static IntentResult.result<>(dialog:)();
  v10(v18, v9);
  _objc_release(v11);
  (*(v12 + 8))(v16, v13);

  sub_100387BA8(v15);

  v6 = *(*(v39 + 1392) + 8);

  return v6();
}

uint64_t sub_100467890()
{
  v1 = *(v0 + 1792);
  *(v0 + 1392) = v0;
  _objc_release(v1);

  v2 = *(*(v0 + 1392) + 8);

  return v2();
}

uint64_t sub_100467A60()
{
  v9 = v0[214];
  v7 = v0[211];
  v6 = v0[210];
  v8 = v0[209];
  v1 = v0[201];
  v2 = v0[200];
  v3 = v0[199];
  v0[174] = v0;
  (*(v2 + 8))(v1, v3);
  (*(v6 + 8))(v7, v8);

  sub_100387BA8(v9);

  v4 = *(v0[174] + 8);

  return v4();
}

unint64_t sub_100467CB4()
{
  v2 = qword_1006DCAE8;
  if (!qword_1006DCAE8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCAE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100467D30(uint64_t a1)
{

  sub_10025C9B0(&unk_1006DCAF0, &unk_100509160);
  sub_1004685D4();
  return _ArrayProtocol.filter(_:)();
}

void *sub_100467DDC(const void *a1, void *a2)
{
  v6 = type metadata accessor for IntentPerson();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&qword_1006DCAE0, &qword_1005063D0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

id sub_100467F4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_10025C9B0(&unk_1006D7220, &qword_1004FF600);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v11 = [swift_getObjCClassFromMetadata() interactionWithReferenceMessageListItemsAndConfirmation:isa origin:a2 actor:a3 shouldAskForConfirmation:a4 & 1 icloudMailCleanupService:a5];
  _objc_release(a5);
  _objc_release(isa);

  return v11;
}

NSString sub_100468010()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntentUnsubscribed", 0x15uLL, 1);

  v1 = String._bridgeToObjectiveC()();
  _objc_retain(v1);

  _objc_release(v1);
  return v1;
}

uint64_t sub_1004680E0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v7 = v1[1];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return sub_1004647B0(a1, v6, v7);
}

uint64_t sub_1004681AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100463694();
  *a1 = result;
  a1[1] = v2;
  return result;
}

UIViewController __swiftcall MailAppController.presentingViewController(for:)(MFTriageInteraction *a1)
{
  v9 = a1;
  v8 = v1;
  _objc_retain(v1);
  v5 = [v1 connectedScenes];
  sub_1002883E4();
  sub_100288448();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(v1);
  v7[0] = v6;
  sub_10025C9B0(&unk_1006D72F0, &unk_1005001F0);
  sub_1002884C8();
  Sequence.first(where:)();
  sub_100264880(v7);
  _objc_release(v5);
  if (!v7[1])
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  v4 = [v3 dockContainer];
  _objc_release(v3);
  return v4;
}

BOOL sub_1004684C0(id *a1)
{
  v2 = *a1;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v3 = [v2 unsubscribeType];
  swift_unknownObjectRelease();
  return (v3 & 5) == 0;
}

unint64_t sub_100468530()
{
  v2 = qword_1006DCB00;
  if (!qword_1006DCB00)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DCB00);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1004685D4()
{
  v2 = qword_1006DCB08;
  if (!qword_1006DCB08)
  {
    sub_10025CAA4(&unk_1006DCAF0, &unk_100509160);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCB08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100468670()
{
  v2 = qword_1006DCB70;
  if (!qword_1006DCB70)
  {
    sub_10025CAA4(&qword_1006DCB78, qword_10050CB38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCB70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1004686F8(uint64_t a1)
{
  result = sub_100335D14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10046873C()
{
  v2 = qword_1006DCB90;
  if (!qword_1006DCB90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCB90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1004687D0()
{
  v2 = qword_1006DCB98;
  if (!qword_1006DCB98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCB98);
    return WitnessTable;
  }

  return v2;
}

void *sub_1004688B8@<X0>(void *a1@<X8>)
{
  v66 = a1;
  v63 = __b;
  v65 = 72;
  memset(__b, 0, sizeof(__b));
  v40 = sub_10025C9B0(&unk_1006D7380, &qword_100500790);
  v13 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v41 = &v12 - v13;
  v1 = sub_10025C9B0(&unk_1006D8270, &unk_1004FF4D0);
  v14 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v39 = &v12 - v14;
  v50 = 0;
  v30 = type metadata accessor for IntentPerson.ParameterMode();
  v24 = *(v30 - 8);
  v25 = v30 - 8;
  v15 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v50);
  v36 = &v12 - v15;
  v2 = type metadata accessor for InputConnectionBehavior();
  v16 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v62 = &v12 - v16;
  v3 = sub_10025C9B0(&unk_1006D7080, &unk_1004FFEB0);
  v17 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v45 = &v12 - v17;
  v18 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v12 - v17);
  v61 = &v12 - v18;
  v5 = sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0);
  v19 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v58 = &v12 - v19;
  sub_10025C9B0(&unk_1006D7090, &unk_1004FEED0);
  v20 = v75;
  memset(v75, 0, sizeof(v75));
  sub_10000B074();
  sub_1003DC7F0();
  __b[0] = AppDependency.__allocating_init(key:manager:)();
  sub_10025C9B0(&unk_1006DCC10, &unk_1005098B0);
  v47 = type metadata accessor for LocalizedStringResource();
  v6 = *(v47 - 8);
  v49 = *(v6 + 56);
  v48 = v6 + 56;
  v53 = 1;
  v49(v58, 1);
  memset(__src, 0, sizeof(__src));
  v22 = v74;
  memcpy(v74, __src, v65);
  v54 = type metadata accessor for IntentDialog();
  v7 = *(v54 - 8);
  v56 = *(v7 + 56);
  v55 = v7 + 56;
  v56(v61, v53);
  (v56)(v45, v53, v53, v54);
  v21 = sub_10028D658();
  v23 = sub_1002B9D60();
  sub_1003BD8F8(v62);
  __b[1] = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v28 = sub_10025C9B0(&unk_1006DCC20, &qword_10050CF38);
  (v49)(v58, v53, v53, v47);
  v26 = &v73;
  v73 = 0;
  v29 = &enum case for IntentPerson.ParameterMode.email(_:);
  v32 = *(v24 + 104);
  v31 = v24 + 104;
  v32(v36, enum case for IntentPerson.ParameterMode.email(_:), v30);
  (v56)(v61, v53, v53, v54);
  v33 = sub_10025C9B0(&qword_1006D9640, &unk_10050CF40);
  v34 = sub_100342530();
  sub_1003BD8F8(v62);
  __b[2] = IntentParameter<>.init(description:default:mode:requestValueDialog:inputConnectionBehavior:)();
  (v49)(v58, v53, v53, v47);
  v27 = &v72;
  v72 = 0;
  v32(v36, *v29, v30);
  (v56)(v61, v53, v53, v54);
  sub_1003BD8F8(v62);
  __b[3] = IntentParameter<>.init(description:default:mode:requestValueDialog:inputConnectionBehavior:)();
  (v49)(v58, v53, v53, v47);
  v35 = &v71;
  v71 = 0;
  v32(v36, *v29, v30);
  (v56)(v61, v53, v53, v54);
  sub_1003BD8F8(v62);
  __b[4] = IntentParameter<>.init(description:default:mode:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D7430, &unk_1004FF4F0);
  (v49)(v58, v53, v53, v47);
  v38 = v70;
  v70[0] = 0;
  v70[1] = 0;
  v8 = type metadata accessor for String.IntentInputOptions();
  (*(*(v8 - 8) + 56))(v39, v53);
  (v56)(v61, v53, v53, v54);
  v37 = sub_10025C9B0(&unk_1006D7340, &unk_1005039F0);
  sub_10028DF54();
  sub_1003BD8F8(v62);
  __b[5] = IntentParameter<>.init(description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D7450, &unk_1004FF500);
  (v49)(v58, v53, v53, v47);
  v9 = type metadata accessor for AttributedString();
  (*(*(v9 - 8) + 56))(v41, v53);
  (v56)(v61, v53, v53, v54);
  sub_10028E064();
  sub_1003BD8F8(v62);
  __b[6] = IntentParameter<>.init(description:default:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D82A0, &unk_10050CF50);
  (v49)(v58, v53, v53, v47);
  v44 = v69;
  memset(v69, 0, sizeof(v69));
  (v56)(v61, v53, v53, v54);
  (v56)(v45, v53, v53, v54);
  v43 = sub_10025C9B0(&unk_1006D7470, &qword_1004FF510);
  v42 = sub_10028E17C();
  v46 = sub_100264788();
  sub_1003BD8F8(v62);
  __b[7] = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&qword_1006DCC38, &unk_10050CF60);
  (v49)(v58, v53, v53, v47);
  v59 = &v68;
  v68 = 0;
  v52 = type metadata accessor for UTType();
  v51 = _allocateUninitializedArray<A>(_:)();
  static UTType.item.getter();
  sub_1002612B0();
  v60 = v10;
  (v56)(v61, v53, v53, v54);
  v57 = sub_10025C9B0(&qword_1006DCC40, &qword_100503408);
  sub_1003425C8();
  sub_1003BD8F8(v62);
  __b[8] = IntentParameter<>.init(description:default:supportedContentTypes:requestValueDialog:inputConnectionBehavior:)();
  v64 = __dst;
  memcpy(__dst, v63, v65);
  sub_1002E1A40(v64, v67);
  sub_1002E4218(v63);
  return memcpy(v66, v64, v65);
}

uint64_t sub_100469360()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_1004693C8(uint64_t a1, uint64_t a2)
{

  IntentParameter.wrappedValue.setter();
}

void *sub_100469450@<X0>(void *a1@<X8>)
{
  v5 = v1;

  IntentParameter.wrappedValue.getter();
  memcpy(__dst, v4, sizeof(__dst));

  return memcpy(a1, __dst, 0x48uLL);
}

void *sub_1004694D4(void *a1)
{
  v7 = a1;
  v6 = v1;

  sub_1002CD078(a1, v5);
  memcpy(__dst, a1, sizeof(__dst));
  IntentParameter.wrappedValue.setter();

  result = a1;
  sub_10028D6D0(a1);
  return result;
}

double sub_10046955C()
{

  IntentParameter.wrappedValue.getter();

  return result;
}

uint64_t sub_1004695B0(const void *a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v3 = (*(*(sub_10025C9B0(&unk_1006D7380, &qword_100500790) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v8 = __chkstk_darwin(v6);
  v7 = v1;
  v5 = *(v1 + 48);

  sub_100289B6C(v6, v4);
  IntentParameter.wrappedValue.setter();

  return sub_100285F68(v6);
}

uint64_t sub_100469688()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_1004696E4(uint64_t a1)
{

  IntentParameter.wrappedValue.setter();
}

uint64_t sub_100469758()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_1004697B4(uint64_t a1)
{

  IntentParameter.wrappedValue.setter();
}

uint64_t sub_100469828()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

void *sub_10046989C(void *a1, uint64_t a2, uint64_t a3)
{

  sub_1002882C8(a1, a2, a3);
  IntentParameter.wrappedValue.setter();

  return sub_100289E1C(a1, a2, a3);
}

uint64_t sub_100469948()
{
  v4[2] = 0;
  v2 = [objc_opt_self() sharedApplication];
  v1 = [v2 connectedScenes];
  sub_1002883E4();
  sub_100288448();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(v2);
  v4[0] = v3;
  sub_10025C9B0(&unk_1006D72F0, &unk_1005001F0);
  sub_1002884C8();
  Sequence.first(where:)();
  sub_100264880(v4);
  _objc_release(v1);
  return v4[1];
}

void (*sub_100469A98(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 14494);
  *a1 = v3;
  v3[4] = *(v1 + 8);

  v3[5] = IntentParameter.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_100469B30(uint64_t a1)
{
  v2[94] = v1;
  v2[93] = a1;
  v2[81] = v2;
  v2[82] = 0;
  v2[83] = 0;
  v2[88] = 0;
  v3 = sub_10025C9B0(&qword_1006D7C40, qword_100508520);
  v2[95] = v3;
  v2[96] = *(v3 - 8);
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[99] = v4;
  v2[100] = *(v4 - 8);
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();
  v2[82] = v1;
  type metadata accessor for MainActor();
  v2[103] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[104] = v7;
  v2[105] = v5;

  return _swift_task_switch(sub_100469D14, v7);
}

uint64_t sub_100469D14()
{
  *(v0 + 648) = v0;
  v55 = sub_100289454();
  sub_10035277C();
  _objc_release(v55);
  v1 = swift_allocObject();
  *(v54 + 848) = v1;
  *(v54 + 664) = v1 + 2;
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = 0;
  v1[5] = 0;
  v52 = sub_100289454();
  v2 = sub_10035333C();
  v53 = v2;
  *(v54 + 856) = v2;
  if (!v2)
  {
    v13 = *(v54 + 808);
    v29 = *(v54 + 792);
    v28 = *(v54 + 800);
    _objc_release(v52);
    v14 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v28 + 16))(v13, v14, v29);
    oslog = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v32 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v30))
    {
      v24 = static UnsafeMutablePointer.allocate(capacity:)();
      v23 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v25 = sub_1002641E8(0, v23, v23);
      v26 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v54 + 672) = v24;
      *(v54 + 680) = v25;
      *(v54 + 688) = v26;
      sub_10026423C(0, (v54 + 672));
      sub_10026423C(0, (v54 + 672));
      *(v54 + 696) = v32;
      v27 = swift_task_alloc();
      v27[2] = v54 + 672;
      v27[3] = v54 + 680;
      v27[4] = v54 + 688;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, oslog, v30, "#SiriMail UpdateDraftIntent - no compose sheet onscreen, launching draft message", v24, 2u);
      sub_10026429C(v25, 0);
      sub_10026429C(v26, 0);
      UnsafeMutablePointer.deallocate()();
    }

    v19 = *(v54 + 808);
    v20 = *(v54 + 792);
    v18 = *(v54 + 800);
    _objc_release(oslog);
    (*(v18 + 8))(v19, v20);
    sub_100288E04();
    sub_1003DC448();
    nullsub_13();
    v21 = v15;
    v22 = v16;
    *(v54 + 896) = v15;
    *(v54 + 904) = v16;
    v17 = swift_task_alloc();
    v8 = v21;
    v9 = v22;
    *(v54 + 912) = v17;
    *v17 = *(v54 + 648);
    v17[1] = sub_10046AFE8;
    v10 = *(v54 + 776);

    return sub_1003DABB0(v10, v8, v9);
  }

  *(v54 + 704) = v2;
  _objc_release(v52);
  sub_100469450((v54 + 88));
  v49 = *(v54 + 88);
  v50 = *(v54 + 96);

  sub_10028D6D0((v54 + 88));
  v51 = sub_10047E92C(v49, v50);

  if ((v51 & 1) == 0)
  {
    v3 = *(v54 + 816);
    v45 = *(v54 + 792);
    v44 = *(v54 + 800);
    v4 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v44 + 16))(v3, v4, v45);
    v47 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v48 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v47, v46))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v39 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v41 = sub_1002641E8(0, v39, v39);
      v42 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v54 + 712) = buf;
      *(v54 + 720) = v41;
      *(v54 + 728) = v42;
      sub_10026423C(0, (v54 + 712));
      sub_10026423C(0, (v54 + 712));
      *(v54 + 736) = v48;
      v43 = swift_task_alloc();
      v43[2] = v54 + 712;
      v43[3] = v54 + 720;
      v43[4] = v54 + 728;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v47, v46, "#SiriMail UpdateDraftIntent - compose sheet onscreen but not the target one, launching draft message", buf, 2u);
      sub_10026429C(v41, 0);
      sub_10026429C(v42, 0);
      UnsafeMutablePointer.deallocate()();
    }

    v35 = *(v54 + 816);
    v36 = *(v54 + 792);
    v34 = *(v54 + 800);
    _objc_release(v47);
    (*(v34 + 8))(v35, v36);
    sub_100288E04();
    sub_1003DC448();
    nullsub_13();
    v37 = v5;
    v38 = v6;
    *(v54 + 864) = v5;
    *(v54 + 872) = v6;
    v7 = swift_task_alloc();
    v8 = v37;
    v9 = v38;
    *(v54 + 880) = v7;
    *v7 = *(v54 + 648);
    v7[1] = sub_10046A92C;
    v10 = *(v54 + 784);

    return sub_1003DABB0(v10, v8, v9);
  }

  v33 = [v53 composeWebView];
  if (!v33)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  [v33 becomeFirstResponder];
  _objc_release(v33);
  sub_10046BC14(v53);
  _objc_release(*(v54 + 856));
  sub_100469450((v54 + 16));
  memcpy((v54 + 232), (v54 + 16), 0x48uLL);
  sub_10028D658();
  static IntentResult.result<A>(value:)();
  sub_10028D6D0((v54 + 232));

  v12 = *(*(v54 + 648) + 8);

  return v12();
}

uint64_t sub_10046A92C()
{
  v6 = *v1;
  v5 = *v1 + 16;
  *(v6 + 648) = *v1;
  *(v6 + 888) = v0;

  if (v0)
  {
    v2 = *(v5 + 816);
    v3 = sub_10046B674;
  }

  else
  {

    v2 = *(v5 + 816);
    v3 = sub_10046AAC4;
  }

  return _swift_task_switch(v3, v2);
}

uint64_t sub_10046AAC4()
{
  v1 = v0[98];
  v2 = v0[96];
  v3 = v0[95];
  v0[81] = v0;
  (*(v2 + 8))(v1, v3);
  v19 = [objc_opt_self() defaultCenter];
  v20 = MFMailComposeControllerDidLoadNotification;
  _objc_retain(MFMailComposeControllerDidLoadNotification);
  v0[71] = 0;
  v0[72] = 0;
  v0[73] = 0;
  v0[74] = 0;
  if (v0[74])
  {
    v14 = *(v18 + 592);
    v12 = sub_10027EC3C((v18 + 568), v14);
    v13 = *(v14 - 8);
    v15 = swift_task_alloc();
    (*(v13 + 16))(v15, v12, v14);
    v16 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v13 + 8))(v15, v14);

    sub_1000160F4((v18 + 568));
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v8 = *(v18 + 848);
  __src = *(v18 + 752);
  v10 = [objc_opt_self() mainQueue];
  sub_1002E1A40(__src, (v18 + 304));

  v7 = swift_allocObject();
  memcpy((v7 + 16), __src, 0x48uLL);
  *(v7 + 88) = v8;
  *(v18 + 456) = sub_10046E178;
  *(v18 + 464) = v7;
  *(v18 + 424) = _NSConcreteStackBlock;
  *(v18 + 432) = 1107296256;
  *(v18 + 436) = 0;
  *(v18 + 440) = sub_10028C0DC;
  *(v18 + 448) = &unk_100661DD0;
  aBlock = _Block_copy((v18 + 424));

  v11 = [v19 addObserverForName:v20 object:v17 queue:v10 usingBlock:aBlock];
  _Block_release(aBlock);
  _objc_release(v10);
  swift_unknownObjectRelease();
  _objc_release(v20);
  _objc_release(v19);
  *(v18 + 560) = swift_getObjectType();
  *(v18 + 536) = v11;
  swift_beginAccess();
  sub_10028D584((v18 + 536), v8 + 16);
  swift_endAccess();
  _objc_release(*(v18 + 856));
  sub_100469450((v18 + 16));
  memcpy((v18 + 232), (v18 + 16), 0x48uLL);
  sub_10028D658();
  static IntentResult.result<A>(value:)();
  sub_10028D6D0((v18 + 232));

  v4 = *(*(v18 + 648) + 8);

  return v4();
}

uint64_t sub_10046AFE8()
{
  v6 = *v1;
  v5 = *v1 + 16;
  *(v6 + 648) = *v1;
  *(v6 + 920) = v0;

  if (v0)
  {
    v2 = *(v5 + 816);
    v3 = sub_10046B794;
  }

  else
  {

    v2 = *(v5 + 816);
    v3 = sub_10046B180;
  }

  return _swift_task_switch(v3, v2);
}

uint64_t sub_10046B180()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[95];
  v0[81] = v0;
  (*(v2 + 8))(v1, v3);
  v19 = [objc_opt_self() defaultCenter];
  v20 = MFMailComposeControllerDidLoadNotification;
  _objc_retain(MFMailComposeControllerDidLoadNotification);
  v0[63] = 0;
  v0[64] = 0;
  v0[65] = 0;
  v0[66] = 0;
  if (v0[66])
  {
    v14 = *(v18 + 528);
    v12 = sub_10027EC3C((v18 + 504), v14);
    v13 = *(v14 - 8);
    v15 = swift_task_alloc();
    (*(v13 + 16))(v15, v12, v14);
    v16 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v13 + 8))(v15, v14);

    sub_1000160F4((v18 + 504));
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v8 = *(v18 + 848);
  __src = *(v18 + 752);
  v10 = [objc_opt_self() mainQueue];
  sub_1002E1A40(__src, (v18 + 160));

  v7 = swift_allocObject();
  memcpy((v7 + 16), __src, 0x48uLL);
  *(v7 + 88) = v8;
  *(v18 + 408) = sub_10046D0F4;
  *(v18 + 416) = v7;
  *(v18 + 376) = _NSConcreteStackBlock;
  *(v18 + 384) = 1107296256;
  *(v18 + 388) = 0;
  *(v18 + 392) = sub_10028C0DC;
  *(v18 + 400) = &unk_100661D80;
  aBlock = _Block_copy((v18 + 376));

  v11 = [v19 addObserverForName:v20 object:v17 queue:v10 usingBlock:aBlock];
  _Block_release(aBlock);
  _objc_release(v10);
  swift_unknownObjectRelease();
  _objc_release(v20);
  _objc_release(v19);
  *(v18 + 496) = swift_getObjectType();
  *(v18 + 472) = v11;
  swift_beginAccess();
  sub_10028D584((v18 + 472), v8 + 16);
  swift_endAccess();
  sub_100469450((v18 + 16));
  memcpy((v18 + 232), (v18 + 16), 0x48uLL);
  sub_10028D658();
  static IntentResult.result<A>(value:)();
  sub_10028D6D0((v18 + 232));

  v4 = *(*(v18 + 648) + 8);

  return v4();
}

uint64_t sub_10046B674()
{
  v3 = *(v0 + 856);
  *(v0 + 648) = v0;

  _objc_release(v3);

  v1 = *(*(v0 + 648) + 8);

  return v1();
}

uint64_t sub_10046B794()
{
  *(v0 + 648) = v0;

  v1 = *(*(v0 + 648) + 8);

  return v1();
}

void sub_10046B898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v29 = 0;
  v32 = a1;
  v31 = a2;
  v21 = a3 + 16;
  v30 = a3 + 16;
  v22 = sub_100289454();
  v23 = sub_10035333C();
  if (v23)
  {
    v19 = v23;
    v17 = v23;
    v29 = v23;

    v3 = [v23 composeWebView];
    v18 = v3;
    if (v3)
    {
      v16 = v18;
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v14 = v16;
    [v16 becomeFirstResponder];

    sub_10046BC14(v17);
    v15 = &v27;
    swift_beginAccess();
    sub_100015DA0(v21, v26);
    swift_endAccess();
    if (v26[3])
    {
      v13 = v28;
      sub_100014898(v26, v28);
      v12 = [objc_opt_self() defaultCenter];
      v10 = v24;
      sub_10026F5D4(v28, v24);
      v7 = v25;
      sub_10027EC3C(v24, v25);
      v5 = *(v7 - 8);
      v6 = v5;
      v9 = &v5;
      __chkstk_darwin(&v5);
      v8 = &v5 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v6 + 16))(v8);
      v11 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v6 + 8))(v8, v7);
      sub_1000160F4(v10);
      [v12 removeObserver:{v11, v5}];
      swift_unknownObjectRelease();

      sub_1000160F4(v13);
    }

    else
    {
      sub_10000B0D8(v26);
    }
  }

  else
  {
  }
}

void sub_10046BC14(void *a1)
{
  v160 = a1;
  v141 = "Fatal error";
  v142 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v143 = "MobileMail/UpdateDraftIntent.swift";
  v190 = 0;
  v189 = 0;
  v188 = 0;
  v185 = 0;
  v186 = 0;
  v187 = 0;
  v183 = 0;
  v184 = 0;
  v182 = 0;
  v180 = 0;
  v178 = 0;
  v176 = 0;
  v175[0] = 0;
  v175[1] = 0;
  v172 = 0;
  v173 = 0;
  v170 = 0;
  v171 = 0;
  v2 = sub_10025C9B0(&qword_1006D7258, &unk_10050CC90);
  v144 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v145 = &v23 - v144;
  v146 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v23 - v144);
  v147 = &v23 - v146;
  v155 = 0;
  v148 = type metadata accessor for IntentFile();
  v149 = *(v148 - 8);
  v150 = v148 - 8;
  v151 = (*(v149 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v148);
  v152 = &v23 - v151;
  v190 = &v23 - v151;
  v4 = sub_10025C9B0(&unk_1006D7260, &unk_1004FF0D0);
  v153 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v154 = &v23 - v153;
  v156 = (*(*(sub_10025C9B0(&unk_1006D7380, &qword_100500790) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v155);
  v157 = &v23 - v156;
  v158 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v159 = &v23 - v158;
  v167 = type metadata accessor for Locale();
  v163 = *(v167 - 8);
  v164 = v167 - 8;
  v161 = (*(v163 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v160);
  v165 = &v23 - v161;
  v189 = v7;
  v188 = v1;
  v162 = sub_100469360();
  v168 = v8;
  sub_100015CC0();
  v166 = Optional<A>.capitalizedIfDesirable(locale:)();
  v169 = v9;
  (*(v163 + 8))(v165, v167);

  if (v169)
  {
    v139 = v166;
    v140 = v169;
    v137 = v169;
    v136 = v166;
    v170 = v166;
    v171 = v169;

    v135 = String._bridgeToObjectiveC()();

    [v160 setSubject:v135];
    _objc_release(v135);
    v138 = v191;
    sub_100469450(v191);
    sub_1002CCD44(v136, v137);
    sub_10028D6D0(v138);
  }

  sub_10046955C();
  v133 = Optional<A>.htmlString.getter();
  v134 = v10;
  if (v10)
  {
    v131 = v133;
    v132 = v134;
    v128 = v134;
    v129 = v133;
    v172 = v133;
    v173 = v134;
    sub_100285F68(v159);
    v11 = [v160 mailComposeView];
    v130 = v11;
    if (v11)
    {
      v127 = v130;
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v125 = v127;
    v126 = [v127 composeWebView];
    _objc_release(v125);
    if (v126)
    {
      v124 = v126;
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v122 = v124;

    v121 = String._bridgeToObjectiveC()();

    [v122 setMarkupString:v121];
    _objc_release(v121);
    _objc_release(v122);
    v123 = v192;
    sub_100469450(v192);
    sub_10046955C();
    sub_1002CCE78(v157);
    sub_10028D6D0(v123);
  }

  else
  {
    sub_100285F68(v159);
  }

  v120 = sub_100469758();
  if (v120)
  {
    v119 = v120;
    v116 = v120;
    v176 = v120;
    v175[2] = v120;
    v117 = sub_10025C9B0(&unk_1006D7270, &unk_1004FF0E0);
    v118 = sub_100286010();
    v12 = Collection.isEmpty.getter();
    if (v12)
    {
    }

    else
    {
      v115 = [v160 composeWebView];
      if (v115)
      {
        v114 = v115;
      }

      else
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v113 = v114;
      [v114 removeAllAttachments];
      _objc_release(v113);

      v174 = v116;
      Collection<>.makeIterator()();
      while (1)
      {
        sub_10025C9B0(&unk_1006D7280, &unk_10050CCA0);
        IndexingIterator.next()();
        if ((*(v149 + 48))(v154, 1, v148) == 1)
        {
          break;
        }

        (*(v149 + 32))(v152, v154, v148);
        v112 = [v160 composeWebView];
        if (v112)
        {
          v111 = v112;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v100 = v111;
        v102 = IntentFile.data.getter();
        v101 = v13;
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_100288010(v102, v101);
        IntentFile.filename.getter();
        v104 = v14;
        v105 = String._bridgeToObjectiveC()();

        IntentFile.type.getter();
        v106 = type metadata accessor for UTType();
        v107 = *(v106 - 8);
        v108 = v106 - 8;
        v109 = *(v107 + 48);
        v110 = v107 + 48;
        if (v109(v147, 1) == 1)
        {
          sub_100286098(v147);
          v98 = 0;
          v99 = 0;
        }

        else
        {
          v96 = UTType.preferredMIMEType.getter();
          v97 = v15;
          (*(v107 + 8))(v147, v106);
          v98 = v96;
          v99 = v97;
        }

        v94 = v99;
        v95 = v98;
        if (v99)
        {
          v92 = v95;
          v93 = v94;
          v89 = v94;
          v90 = String._bridgeToObjectiveC()();

          v91 = v90;
        }

        else
        {
          v91 = 0;
        }

        v88 = v91;
        IntentFile.type.getter();
        if ((v109)(v145, 1, v106) == 1)
        {
          sub_100286098(v145);
          v86 = 0;
          v87 = 0;
        }

        else
        {
          v84 = UTType.identifier.getter();
          v85 = v16;
          (*(v107 + 8))(v145, v106);
          v86 = v84;
          v87 = v85;
        }

        v82 = v87;
        v83 = v86;
        if (v87)
        {
          v80 = v83;
          v81 = v82;
          v77 = v82;
          v78 = String._bridgeToObjectiveC()();

          v79 = v78;
        }

        else
        {
          v79 = 0;
        }

        v76 = v79;
        [v100 insertDocumentWithData:isa fileName:v105 mimeType:v88 contentID:?];
        _objc_release(v76);
        _objc_release(v88);
        _objc_release(v105);
        _objc_release(isa);
        _objc_release(v100);
        (*(v149 + 8))(v152, v148);
      }

      sub_100264880(v175);
      v75 = v193;
      sub_100469450(v193);
      sub_1002CD004(v116);
      sub_10028D6D0(v75);
    }
  }

  v74 = sub_1002896B4();
  if (v74)
  {
    v73 = v74;
    v71 = v74;
    v178 = v74;
    v177 = v74;
    v72 = sub_10025C9B0(&unk_1006D7160, qword_100500870);
    sub_1002D3DF0();
    v17 = Collection.isEmpty.getter();
    if (v17)
    {
    }

    else
    {
      v68 = Array<A>.emailAddresses.getter();
      v66 = &type metadata for Any + 8;
      v67 = _arrayForceCast<A, B>(_:)();
      v69 = Array._bridgeToObjectiveC()().super.isa;

      [v160 setToRecipients:v69];
      _objc_release(v69);
      v70 = v194;
      sub_100469450(v194);
      sub_1002CCA28(v71);
      sub_10028D6D0(v70);
    }
  }

  v65 = sub_1002897B0();
  if (v65)
  {
    v64 = v65;
    v62 = v65;
    v180 = v65;
    v179 = v65;
    v63 = sub_10025C9B0(&unk_1006D7160, qword_100500870);
    sub_1002D3DF0();
    v18 = Collection.isEmpty.getter();
    if (v18)
    {
    }

    else
    {
      v59 = Array<A>.emailAddresses.getter();
      v57 = &type metadata for Any + 8;
      v58 = _arrayForceCast<A, B>(_:)();
      v60 = Array._bridgeToObjectiveC()().super.isa;

      [v160 setCcRecipients:v60];
      _objc_release(v60);
      v61 = v195;
      sub_100469450(v195);
      sub_1002CCB50(v62);
      sub_10028D6D0(v61);
    }
  }

  v56 = sub_100469688();
  if (v56)
  {
    v55 = v56;
    v53 = v56;
    v182 = v56;
    v181 = v56;
    v54 = sub_10025C9B0(&unk_1006D7160, qword_100500870);
    sub_1002D3DF0();
    v19 = Collection.isEmpty.getter();
    if (v19)
    {
    }

    else
    {
      v50 = Array<A>.emailAddresses.getter();
      v48 = &type metadata for Any + 8;
      v49 = _arrayForceCast<A, B>(_:)();
      v51 = Array._bridgeToObjectiveC()().super.isa;

      [v160 setBccRecipients:v51];
      _objc_release(v51);
      v52 = v196;
      sub_100469450(v196);
      sub_1002CCC78(v53);
      sub_10028D6D0(v52);
    }
  }

  v45 = sub_100469828();
  v46 = v20;
  v47 = v21;
  if (v45)
  {
    v42 = v45;
    v43 = v46;
    v44 = v47;
    v38 = v47;
    v39 = v46;
    v40 = v45;
    v185 = v45;
    v186 = v46;
    v187 = v47;
    _objc_retain(v45);
    v41 = [v40 identityEmailAddress];
    _objc_release(v40);
    if (v41)
    {
      v37 = v41;
      v31 = v41;
      v32 = [v41 stringValue];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v22;
      _objc_release(v31);
      _objc_release(v32);
      v35 = v33;
      v36 = v34;
    }

    else
    {
      v35 = 0;
      v36 = 0;
    }

    v29 = v36;
    v30 = v35;
    if (v36)
    {
      v27 = v30;
      v28 = v29;
      v26 = v29;
      v23 = v30;
      v183 = v30;
      v184 = v29;

      v24 = String._bridgeToObjectiveC()();

      [v160 setSendingEmailAddress:v24];
      _objc_release(v24);
      v25 = v197;
      sub_100469450(v197);
      sub_1002CD24C(v40, v39, v38);
      sub_10028D6D0(v25);
    }

    else
    {
      _objc_release(v40);
    }
  }
}

void sub_10046CD78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v29 = 0;
  v32 = a1;
  v31 = a2;
  v21 = a3 + 16;
  v30 = a3 + 16;
  v22 = sub_100289454();
  v23 = sub_10035333C();
  if (v23)
  {
    v19 = v23;
    v17 = v23;
    v29 = v23;

    v3 = [v23 composeWebView];
    v18 = v3;
    if (v3)
    {
      v16 = v18;
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v14 = v16;
    [v16 becomeFirstResponder];

    sub_10046BC14(v17);
    v15 = &v27;
    swift_beginAccess();
    sub_100015DA0(v21, v26);
    swift_endAccess();
    if (v26[3])
    {
      v13 = v28;
      sub_100014898(v26, v28);
      v12 = [objc_opt_self() defaultCenter];
      v10 = v24;
      sub_10026F5D4(v28, v24);
      v7 = v25;
      sub_10027EC3C(v24, v25);
      v5 = *(v7 - 8);
      v6 = v5;
      v9 = &v5;
      __chkstk_darwin(&v5);
      v8 = &v5 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v6 + 16))(v8);
      v11 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v6 + 8))(v8, v7);
      sub_1000160F4(v10);
      [v12 removeObserver:{v11, v5}];
      swift_unknownObjectRelease();

      sub_1000160F4(v13);
    }

    else
    {
      sub_10000B0D8(v26);
    }
  }

  else
  {
  }
}

uint64_t sub_10046D100(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void *sub_10046D164@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_100469450(v4);
  return memcpy(a1, v4, 0x48uLL);
}

void *sub_10046D1C4(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v4, __srca, sizeof(v4));
  return sub_1004694D4(__dst);
}

void (*sub_10046D224(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0x70uLL, 48102);
  *a1 = v3;
  memcpy(v3, __src, 0x48uLL);
  v3[13] = sub_100469A98(v3 + 9);
  return sub_10046D2BC;
}

void sub_10046D2BC(uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 104))();
  free(v1);
}

uint64_t sub_10046D3F4()
{
  v2 = sub_10025C9B0(&unk_1006D7160, qword_100500870);
  v0 = sub_1002D3DF0();
  return sub_10025E9D8(sub_10046D4B0, 0, v2, &unk_10065AB70, &type metadata for Never, v0, &protocol witness table for Never, v3);
}

void sub_10046D4B0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v34 = a2;
  v35 = a1;
  v60 = 0;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v61 = 0;
  v54 = 0;
  v3 = sub_10025C9B0(&unk_1006D7300, &qword_1004FF110);
  v36 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v37 = &v16 - v36;
  v4 = sub_10025C9B0(&unk_1006DCC00, &qword_1004FF118);
  v38 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v4);
  v39 = (&v16 - v38);
  v40 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v41 = &v16 - v40;
  v42 = 0;
  v43 = type metadata accessor for PersonNameComponents();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v42);
  v47 = &v16 - v46;
  v61 = &v16 - v46;
  v52 = type metadata accessor for IntentPerson.Name();
  v49 = *(v52 - 8);
  v50 = v52 - 8;
  v48 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v52);
  v51 = (&v16 - v48);
  v60 = a1;
  IntentPerson.name.getter();
  v53 = (*(v49 + 88))(v51, v52);
  if (v53 == enum case for IntentPerson.Name.displayName(_:))
  {
    (*(v49 + 96))(v51, v52);
    v32 = *v51;
    v54 = v32;

    v59 = v32;

    v33 = v32;
  }

  else if (v53 == enum case for IntentPerson.Name.components(_:))
  {
    v7 = v47;
    (*(v49 + 96))(v51, v52);
    (*(v44 + 32))(v7, v51, v43);
    v61 = v7;
    v31 = PersonNameComponents.formatted()();

    v59 = v31;
    (*(v44 + 8))(v47, v43);
    v33 = v31;
  }

  else
  {
    v30 = 0;
    v59 = 0;
    (*(v49 + 8))(v51, v52);
    v33._countAndFlagsBits = v30;
    v33._object = v30;
  }

  object = v33._object;
  countAndFlagsBits = v33._countAndFlagsBits;
  IntentPerson.handle.getter();
  v27 = type metadata accessor for IntentPerson.Handle();
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  if ((*(v28 + 48))(v37, 1) == 1)
  {
    sub_100288550(v37);
    v8 = type metadata accessor for IntentPerson.Handle.Value();
    (*(*(v8 - 8) + 56))(v41, 1);
  }

  else
  {
    IntentPerson.Handle.value.getter();
    (*(v28 + 8))(v37, v27);
    v9 = type metadata accessor for IntentPerson.Handle.Value();
    (*(*(v9 - 8) + 56))(v41, 0, 1);
  }

  v22 = type metadata accessor for IntentPerson.Handle.Value();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  if ((*(v23 + 48))(v41, 1))
  {
    goto LABEL_13;
  }

  sub_10046E53C(v41, v39);
  if ((*(v23 + 88))(v39, v22) != enum case for IntentPerson.Handle.Value.emailAddress(_:))
  {
    (*(v23 + 8))(v39, v22);
LABEL_13:
    v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    v17 = v10._countAndFlagsBits;
    v16 = v10._object;

    v57 = v17;
    v58 = v16;
    sub_1002885F8(v41);
    v20 = v17;
    v21 = v16;
    goto LABEL_14;
  }

  (*(v23 + 96))(v39, v22);
  v19 = *v39;
  v18 = v39[1];
  v55 = v19;
  v56 = v18;

  v57 = v19;
  v58 = v18;

  sub_1002885F8(v41);
  v20 = v19;
  v21 = v18;
LABEL_14:
  v11 = sub_10034E760(countAndFlagsBits, object, v20, v21);
  v12 = v34;
  *v34 = v11;
  v12[1] = v13;
  v12[2] = v14;
  v12[3] = v15;
  sub_100268744(&v57);
  sub_100268744(&v59);
}

uint64_t sub_10046DD20()
{
  v3[1] = 0;
  v13 = type metadata accessor for AssistantSchema.IntentSchema();
  v8 = *(v13 - 8);
  v9 = v13 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(0);
  v12 = v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v10 = v3 - v5;
  v7 = type metadata accessor for AssistantSchema();
  v6 = qword_1006F0458;
  sub_10002094C(v7, qword_1006F0458);
  v11 = sub_1000208F4(v7, v6);
  sub_10027DF0C();
  sub_10046DE60();
  (*(v8 + 8))(v10, v13);
  return AssistantSchema.init<A>(_:)();
}

uint64_t sub_10046DE60()
{
  if (!sub_10047E218(18, 0, 0))
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Do not reference schema types directly", 0x26uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UpdateDraftIntent", 0x11uLL, 1);
  return AssistantSchema.IntentSchema.init(_:)();
}

uint64_t sub_10046DF38()
{
  if (qword_1006D6140 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AssistantSchema();
  return sub_1000208F4(v0, qword_1006F0458);
}

uint64_t sub_10046DFA4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10046DF38();
  v1 = type metadata accessor for AssistantSchema();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10046E040(uint64_t a1)
{
  *(v2 + 88) = v2;
  memcpy((v2 + 16), v1, 0x48uLL);
  v3 = swift_task_alloc();
  *(v5 + 96) = v3;
  *v3 = *(v5 + 88);
  v3[1] = sub_1002E37D0;

  return sub_100469B30(a1);
}

uint64_t sub_10046E184(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_10046E1E8()
{
  v2 = qword_1006DCBC0;
  if (!qword_1006DCBC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCBC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10046E2AC(uint64_t a1)
{
  result = sub_100331E94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10046E2F0()
{
  v2 = qword_1006DCBE0;
  if (!qword_1006DCBE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCBE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10046E384()
{
  v2 = qword_1006DCBE8;
  if (!qword_1006DCBE8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCBE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10046E418()
{
  v2 = qword_1006DCBF0;
  if (!qword_1006DCBF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCBF0);
    return WitnessTable;
  }

  return v2;
}

void *sub_10046E53C(const void *a1, void *a2)
{
  v6 = type metadata accessor for IntentPerson.Handle.Value();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&unk_1006DCC00, &qword_1004FF118);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_10046E664@<X0>(uint64_t *a1@<X8>)
{
  v58 = a1;
  v52 = __b;
  memset(__b, 0, sizeof(__b));
  v1 = sub_10025C9B0(&unk_1006DB310, &unk_10050D1D0);
  v15 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v34 = &v15 - v15;
  v50 = 0;
  v2 = type metadata accessor for InputConnectionBehavior();
  v16 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v48 = &v15 - v16;
  v3 = sub_10025C9B0(&unk_1006D7080, &unk_1004FFEB0);
  v17 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v47 = &v15 - v17;
  v18 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v15 - v17);
  v46 = &v15 - v18;
  v5 = sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0);
  v19 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v44 = &v15 - v19;
  sub_10025C9B0(&unk_1006D70A0, &qword_1004FEC80);
  v35 = type metadata accessor for LocalizedStringResource();
  v6 = *(v35 - 8);
  v37 = *(v6 + 56);
  v36 = v6 + 56;
  v38 = 1;
  v37(v44, 1);
  v22 = &v65;
  v65 = 0;
  v39 = type metadata accessor for IntentDialog();
  v7 = *(v39 - 8);
  v41 = *(v7 + 56);
  v40 = v7 + 56;
  v41(v46, v38);
  (v41)(v47, v38, v38, v39);
  v21 = sub_10025C9B0(&unk_1006D6FF0, &unk_1004FEA30);
  v20 = sub_10027D124();
  v23 = sub_10027EAAC();
  sub_1003BD8F8(v48);
  v53 = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  __b[0] = v53;
  v26 = sub_10025C9B0(&qword_1006DCCB8, &unk_10050D1E0);
  (v37)(v44, v38, v38, v35);
  v24 = &v64;
  v27 = 2;
  v64 = 2;
  v28 = type metadata accessor for Bool.IntentDisplayName();
  v8 = *(v28 - 8);
  v30 = *(v8 + 56);
  v29 = v8 + 56;
  v30(v34, v38);
  (v41)(v46, v38, v38, v39);
  v31 = sub_10025C9B0(&unk_1006DCCC0, &qword_100503118);
  v32 = sub_100342420();
  sub_1003BD8F8(v48);
  v54 = IntentParameter<>.init(description:default:displayName:requestValueDialog:inputConnectionBehavior:)();

  __b[1] = v54;
  (v37)(v44, v38, v38, v35);
  v25 = &v63;
  v63 = v27;
  (v30)(v34, v38, v38, v28);
  (v41)(v46, v38, v38, v39);
  sub_1003BD8F8(v48);
  v55 = IntentParameter<>.init(description:default:displayName:requestValueDialog:inputConnectionBehavior:)();

  __b[2] = v55;
  (v37)(v44, v38, v38, v35);
  v33 = &v62;
  v62 = v27;
  (v30)(v34, v38, v38, v28);
  (v41)(v46, v38, v38, v39);
  sub_1003BD8F8(v48);
  v56 = IntentParameter<>.init(description:default:displayName:requestValueDialog:inputConnectionBehavior:)();

  __b[3] = v56;
  sub_10025C9B0(&qword_1006DCCD8, &qword_10050D1F0);
  (v37)(v44, v38, v38, v35);
  v45 = v61;
  memset(v61, 0, sizeof(v61));
  (v41)(v46, v38, v38, v39);
  (v41)(v47, v38, v38, v39);
  v43 = sub_10025C9B0(&qword_1006DCCE0, &qword_1005030D0);
  v42 = sub_1003420CC();
  v49 = sub_1002DA854();
  sub_1003BD8F8(v48);
  v57 = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  __b[4] = v57;
  sub_10025C9B0(&unk_1006D7090, &unk_1004FEED0);
  v51 = v60;
  memset(v60, 0, sizeof(v60));
  sub_10000B074();
  sub_1003DC7F0();
  v59 = AppDependency.__allocating_init(key:manager:)();

  __b[5] = v59;
  sub_1003423B8(v52);
  v9 = v54;
  v10 = v55;
  v11 = v56;
  v12 = v57;
  v13 = v58;
  result = v59;
  *v58 = v53;
  v13[1] = v9;
  v13[2] = v10;
  v13[3] = v11;
  v13[4] = v12;
  v13[5] = result;
  return result;
}

uint64_t sub_10046F058()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

double sub_10046F0B4()
{

  IntentParameter.wrappedValue.setter();

  return result;
}

uint64_t sub_10046F118()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

double sub_10046F174()
{

  IntentParameter.wrappedValue.setter();

  return result;
}

uint64_t sub_10046F1D8()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

double sub_10046F234()
{

  IntentParameter.wrappedValue.setter();

  return result;
}

void *sub_10046F298(void *a1)
{
  v6 = a1;
  v5 = v1;

  sub_1003421DC(a1, v4);
  IntentParameter.wrappedValue.setter();

  return sub_10027D594(a1);
}

uint64_t sub_10046F30C@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v9 = "Update one or more email messages";
  v5 = 0;
  v4 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = &v3 - v4;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v13 = &v3 - v6;
  v1 = type metadata accessor for String.LocalizationValue();
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = &v3 - v7;
  v8 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Update Message", 0xEuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 33;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_10046F4F0()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006F0470);
  sub_1000208F4(v1, qword_1006F0470);
  return static Logger.mailUILogger<A>(for:)();
}

uint64_t sub_10046F54C()
{
  if (qword_1006D6148 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006F0470);
}

uint64_t sub_10046F5B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10046F54C();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

void (*sub_10046F61C(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 59463);
  *a1 = v3;
  v3[4] = *v1;

  v3[5] = IntentParameter.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_10046F6B4()
{

  AppDependency.wrappedValue.getter();

  return v1;
}

void sub_10046F710(void *a1)
{

  _objc_retain(a1);
  AppDependency.wrappedValue.setter();

  _objc_release(a1);
}

uint64_t sub_10046F794()
{

  v1 = AppDependency.projectedValue.getter();

  return v1;
}

uint64_t sub_10046F7EC(uint64_t a1)
{
  *(v2 + 1768) = v1;
  *(v2 + 1760) = a1;
  *(v2 + 1488) = v2;
  *(v2 + 1496) = 0;
  *(v2 + 1504) = 0;
  memset((v2 + 272), 0, 0x50uLL);
  *(v2 + 1520) = 0;
  *(v2 + 1408) = 0;
  *(v2 + 1416) = 0;
  *(v2 + 1560) = 0;
  *(v2 + 1568) = 0;
  *(v2 + 2088) = 0;
  *(v2 + 1616) = 0;
  *(v2 + 2096) = 0;
  *(v2 + 1664) = 0;
  *(v2 + 2104) = 0;
  *(v2 + 1712) = 0;
  sub_10025C9B0(&qword_1006D7250, &unk_1004FF0C0);
  *(v2 + 1776) = swift_task_alloc();
  v3 = type metadata accessor for URL();
  *(v2 + 1784) = v3;
  *(v2 + 1792) = *(v3 - 8);
  *(v2 + 1800) = swift_task_alloc();
  *(v2 + 1808) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v2 + 1816) = v4;
  *(v2 + 1824) = *(v4 - 8);
  *(v2 + 1832) = swift_task_alloc();
  *(v2 + 1840) = swift_task_alloc();
  *(v2 + 1848) = swift_task_alloc();
  *(v2 + 1856) = swift_task_alloc();
  *(v2 + 1864) = swift_task_alloc();
  *(v2 + 1872) = swift_task_alloc();
  *(v2 + 1880) = swift_task_alloc();
  *(v2 + 1888) = swift_task_alloc();
  *(v2 + 1896) = swift_task_alloc();
  *(v2 + 1904) = swift_task_alloc();
  *(v2 + 1912) = swift_task_alloc();
  *(v2 + 1920) = swift_task_alloc();
  *(v2 + 1496) = v1;
  type metadata accessor for MainActor();
  *(v2 + 1928) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 1936) = v7;
  *(v2 + 1944) = v5;

  return _swift_task_switch(sub_10046FB10, v7);
}

uint64_t sub_10046FB10()
{
  *(v0 + 1488) = v0;
  v7 = sub_10046F6B4();
  sub_10035277C();
  v1 = v6[221];
  _objc_release(v7);
  memcpy(v6 + 86, v1, 0x30uLL);
  v5 = sub_10043CEA4();
  v6[244] = v5;
  v4 = sub_10046F6B4();
  v6[245] = v4;
  v2 = swift_task_alloc();
  v6[246] = v2;
  v6[247] = sub_10047D62C();
  *v2 = v6[186];
  v2[1] = sub_10046FDF4;

  return sub_10045F520(v5, v4);
}

uint64_t sub_10046FDF4(uint64_t a1)
{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[186] = *v2;
  v7[248] = a1;
  v7[249] = v1;

  if (v1)
  {
    v3 = *(v6 + 1920);
    v4 = sub_10047D47C;
  }

  else
  {

    v3 = *(v6 + 1920);
    v4 = sub_10046FFA4;
  }

  return _swift_task_switch(v4, v3);
}

void sub_10046FFA4(uint64_t a1)
{
  v325 = v1;
  __chkstk_darwin(a1);
  v2 = *(v1 + 1992);
  v288 = *(v1 + 1984);
  *(v1 + 1488) = v1;
  *(v1 + 1504) = v288;
  v289 = sub_10046F6B4();
  sub_100352C0C(v288);
  if (v2)
  {
    _objc_release(v289);

    v39 = *(*(v1 + 1488) + 8);

    v39();
  }

  else
  {
    _objc_release(v289);
    v287 = sub_10046F1D8();
    *(v1 + 1433) = v287;
    if (v287 != 2)
    {
      v3 = *(v1 + 1920);
      v276 = *(v1 + 1816);
      __src = *(v1 + 1768);
      v275 = *(v1 + 1824);
      *(v1 + 2104) = v287 & 1;
      v4 = sub_10046F54C();
      v277 = *(v275 + 16);
      v277(v3, v4, v276);
      sub_1003422F0(__src, (v1 + 1216));
      v279 = swift_allocObject();
      memcpy((v279 + 16), __src, 0x30uLL);
      oslog = Logger.logObject.getter();
      v286 = static os_log_type_t.info.getter();
      v281 = swift_allocObject();
      *(v281 + 16) = 0;
      v282 = swift_allocObject();
      *(v282 + 16) = 8;
      v280 = swift_allocObject();
      *(v280 + 16) = sub_10047D9B0;
      *(v280 + 24) = v279;
      v283 = swift_allocObject();
      *(v283 + 16) = sub_10026E818;
      *(v283 + 24) = v280;
      sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
      _allocateUninitializedArray<A>(_:)();
      v284 = v5;

      *v284 = sub_10026434C;
      v284[1] = v281;

      v284[2] = sub_10026434C;
      v284[3] = v282;

      v284[4] = sub_10026EBF8;
      v284[5] = v283;
      sub_1002612B0();

      if (os_log_type_enabled(oslog, v286))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        v271 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v273 = sub_1002641E8(0, v271, v271);
        v274 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
        v320 = buf;
        v321 = v273;
        v322 = v274;
        sub_10026423C(0, &v320);
        sub_10026423C(1, &v320);
        v323 = sub_10026434C;
        v324 = v281;
        sub_100264250(&v323, &v320, &v321, &v322);
        v323 = sub_10026434C;
        v324 = v282;
        sub_100264250(&v323, &v320, &v321, &v322);
        v323 = sub_10026EBF8;
        v324 = v283;
        sub_100264250(&v323, &v320, &v321, &v322);
        _os_log_impl(&_mh_execute_header, oslog, v286, "#SiriMail UpdateMessageIntent marking %ld messages as read", buf, 0xCu);
        sub_10026429C(v273, 0);
        sub_10026429C(v274, 0);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      v268 = *(v1 + 1984);
      v261 = *(v1 + 1920);
      v262 = *(v1 + 1816);
      v265 = *(v1 + 1768);
      v260 = *(v1 + 1824);
      _objc_release(oslog);
      v263 = *(v260 + 8);
      v263(v261, v262);
      sub_10047E448();

      v264 = sub_10046F6B4();
      v266 = sub_100353058();
      _objc_release(v264);
      memcpy((v1 + 1264), v265, 0x30uLL);
      v267 = sub_10028E57C();
      memcpy((v1 + 1312), v265, 0x30uLL);
      v6 = sub_10028E5B4();
      v269 = sub_10027D364(v268, v266, v267, v6);
      *(v1 + 2000) = v269;
      *(v1 + 1712) = v269;
      _objc_retain(v269);
      v270 = [v269 flagState];
      _objc_release(v269);
      if (v270 != (v287 & 1))
      {
        v7 = *(v1 + 1912);
        v245 = *(v1 + 1816);
        v246 = *(v1 + 1768);
        v8 = sub_10046F54C();
        v277(v7, v8, v245);
        sub_1003422F0(v246, (v1 + 1360));
        v247 = swift_allocObject();
        memcpy((v247 + 16), v246, 0x30uLL);
        v249 = swift_allocObject();
        *(v249 + 16) = v287 & 1;
        log = Logger.logObject.getter();
        v259 = static os_log_type_t.info.getter();
        v251 = swift_allocObject();
        *(v251 + 16) = 0;
        v252 = swift_allocObject();
        *(v252 + 16) = 8;
        v248 = swift_allocObject();
        *(v248 + 16) = sub_10047D9B0;
        *(v248 + 24) = v247;
        v253 = swift_allocObject();
        *(v253 + 16) = sub_10026E818;
        *(v253 + 24) = v248;
        v254 = swift_allocObject();
        *(v254 + 16) = 32;
        v255 = swift_allocObject();
        *(v255 + 16) = 8;
        v250 = swift_allocObject();
        *(v250 + 16) = sub_10047E4AC;
        *(v250 + 24) = v249;
        v256 = swift_allocObject();
        *(v256 + 16) = sub_10026EE84;
        *(v256 + 24) = v250;
        _allocateUninitializedArray<A>(_:)();
        v257 = v9;

        *v257 = sub_10026434C;
        v257[1] = v251;

        v257[2] = sub_10026434C;
        v257[3] = v252;

        v257[4] = sub_10026EBF8;
        v257[5] = v253;

        v257[6] = sub_10026434C;
        v257[7] = v254;

        v257[8] = sub_10026434C;
        v257[9] = v255;

        v257[10] = sub_10026EF2C;
        v257[11] = v256;
        sub_1002612B0();

        if (os_log_type_enabled(log, v259))
        {
          v242 = static UnsafeMutablePointer.allocate(capacity:)();
          v241 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
          v243 = sub_1002641E8(0, v241, v241);
          v244 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
          v315 = v242;
          v316 = v243;
          v317 = v244;
          sub_10026423C(2, &v315);
          sub_10026423C(2, &v315);
          v318 = sub_10026434C;
          v319 = v251;
          sub_100264250(&v318, &v315, &v316, &v317);
          v318 = sub_10026434C;
          v319 = v252;
          sub_100264250(&v318, &v315, &v316, &v317);
          v318 = sub_10026EBF8;
          v319 = v253;
          sub_100264250(&v318, &v315, &v316, &v317);
          v318 = sub_10026434C;
          v319 = v254;
          sub_100264250(&v318, &v315, &v316, &v317);
          v318 = sub_10026434C;
          v319 = v255;
          sub_100264250(&v318, &v315, &v316, &v317);
          v318 = sub_10026EF2C;
          v319 = v256;
          sub_100264250(&v318, &v315, &v316, &v317);
          _os_log_impl(&_mh_execute_header, log, v259, "#SiriMail UpdateMessageIntent marking %ld messages as %s", v242, 0x16u);
          sub_10026429C(v243, 0);
          sub_10026429C(v244, 1);
          UnsafeMutablePointer.deallocate()();
        }

        else
        {
        }

        *(v1 + 2008) = 0;
        v238 = *(v1 + 1912);
        v239 = *(v1 + 1816);
        _objc_release(log);
        v263(v238, v239);
        *(v1 + 208) = *(v1 + 1488);
        *(v1 + 248) = v1 + 1472;
        *(v1 + 216) = sub_1004751DC;
        v240 = swift_continuation_init();
        *(v1 + 680) = sub_10025C9B0(&unk_1006D7CE0, &unk_1004FECE0);
        *(v1 + 656) = v240;
        *(v1 + 624) = _NSConcreteStackBlock;
        *(v1 + 632) = 1107296256;
        *(v1 + 636) = 0;
        *(v1 + 640) = sub_10027D41C;
        *(v1 + 648) = &unk_100662718;
        [v269 performInteractionWithCompletion:?];
        v10 = v1 + 208;

_swift_continuation_await:
        _swift_continuation_await(v10);
        return;
      }

      v11 = *(v1 + 1904);
      v234 = *(v1 + 1816);
      v12 = sub_10046F54C();
      v277(v11, v12, v234);
      v236 = Logger.logObject.getter();
      v235 = static os_log_type_t.info.getter();
      v237 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v236, v235))
      {
        v230 = static UnsafeMutablePointer.allocate(capacity:)();
        v229 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v231 = sub_1002641E8(0, v229, v229);
        v232 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
        *(v1 + 1720) = v230;
        *(v1 + 1728) = v231;
        *(v1 + 1736) = v232;
        sub_10026423C(0, (v1 + 1720));
        sub_10026423C(0, (v1 + 1720));
        *(v1 + 1744) = v237;
        v233 = swift_task_alloc();
        v233[2] = v1 + 1720;
        v233[3] = v1 + 1728;
        v233[4] = v1 + 1736;
        sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
        sub_10026E6E0();
        Sequence.forEach(_:)();

        _os_log_impl(&_mh_execute_header, v236, v235, "#SiriMail UpdateMessageIntent no op", v230, 2u);
        sub_10026429C(v231, 0);
        sub_10026429C(v232, 0);
        UnsafeMutablePointer.deallocate()();
      }

      v227 = *(v1 + 1904);
      v228 = *(v1 + 1816);
      _objc_release(v236);
      v263(v227, v228);
      _objc_release(*(v1 + 2000));
    }

    v226 = sub_10046F058();
    *(v1 + 1434) = v226;
    if (v226 != 2)
    {
      v13 = *(v1 + 1896);
      v210 = *(v1 + 1816);
      v212 = *(v1 + 1768);
      v209 = *(v1 + 1824);
      *(v1 + 2096) = v226 & 1;
      v14 = sub_10046F54C();
      v211 = *(v209 + 16);
      v211(v13, v14, v210);
      v213 = swift_allocObject();
      *(v213 + 16) = v226 & 1;
      sub_1003422F0(v212, (v1 + 1072));
      v215 = swift_allocObject();
      memcpy((v215 + 16), v212, 0x30uLL);
      v224 = Logger.logObject.getter();
      v225 = static os_log_type_t.info.getter();
      v217 = swift_allocObject();
      *(v217 + 16) = 32;
      v218 = swift_allocObject();
      *(v218 + 16) = 8;
      v214 = swift_allocObject();
      *(v214 + 16) = sub_10047E36C;
      *(v214 + 24) = v213;
      v219 = swift_allocObject();
      *(v219 + 16) = sub_10026EE84;
      *(v219 + 24) = v214;
      v220 = swift_allocObject();
      *(v220 + 16) = 0;
      v221 = swift_allocObject();
      *(v221 + 16) = 8;
      v216 = swift_allocObject();
      *(v216 + 16) = sub_10047D9B0;
      *(v216 + 24) = v215;
      v222 = swift_allocObject();
      *(v222 + 16) = sub_10026E818;
      *(v222 + 24) = v216;
      sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
      _allocateUninitializedArray<A>(_:)();
      v223 = v15;

      *v223 = sub_10026434C;
      v223[1] = v217;

      v223[2] = sub_10026434C;
      v223[3] = v218;

      v223[4] = sub_10026EF2C;
      v223[5] = v219;

      v223[6] = sub_10026434C;
      v223[7] = v220;

      v223[8] = sub_10026434C;
      v223[9] = v221;

      v223[10] = sub_10026EBF8;
      v223[11] = v222;
      sub_1002612B0();

      if (os_log_type_enabled(v224, v225))
      {
        v206 = static UnsafeMutablePointer.allocate(capacity:)();
        v205 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v207 = sub_1002641E8(0, v205, v205);
        v208 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
        v310 = v206;
        v311 = v207;
        v312 = v208;
        sub_10026423C(2, &v310);
        sub_10026423C(2, &v310);
        v313 = sub_10026434C;
        v314 = v217;
        sub_100264250(&v313, &v310, &v311, &v312);
        v313 = sub_10026434C;
        v314 = v218;
        sub_100264250(&v313, &v310, &v311, &v312);
        v313 = sub_10026EF2C;
        v314 = v219;
        sub_100264250(&v313, &v310, &v311, &v312);
        v313 = sub_10026434C;
        v314 = v220;
        sub_100264250(&v313, &v310, &v311, &v312);
        v313 = sub_10026434C;
        v314 = v221;
        sub_100264250(&v313, &v310, &v311, &v312);
        v313 = sub_10026EBF8;
        v314 = v222;
        sub_100264250(&v313, &v310, &v311, &v312);
        _os_log_impl(&_mh_execute_header, v224, v225, "#SiriMail UpdateMessageIntent %s %ld messages", v206, 0x16u);
        sub_10026429C(v207, 0);
        sub_10026429C(v208, 1);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      v202 = *(v1 + 1984);
      v195 = *(v1 + 1896);
      v196 = *(v1 + 1816);
      v199 = *(v1 + 1768);
      v194 = *(v1 + 1824);
      _objc_release(v224);
      v197 = *(v194 + 8);
      v197(v195, v196);
      sub_10047E378();

      v198 = sub_10046F6B4();
      v200 = sub_100353058();
      _objc_release(v198);
      memcpy((v1 + 1120), v199, 0x30uLL);
      v201 = sub_10028E57C();
      memcpy((v1 + 1168), v199, 0x30uLL);
      v16 = sub_10028E5B4();
      v203 = sub_10027D364(v202, v200, v201, v16);
      *(v1 + 2016) = v203;
      *(v1 + 1664) = v203;
      _objc_retain(v203);
      v204 = [v203 flagState];
      _objc_release(v203);
      if (v204 != (v226 & 1))
      {
        v17 = *(v1 + 1888);
        v185 = *(v1 + 1816);
        v18 = sub_10046F54C();
        v211(v17, v18, v185);
        v186 = swift_allocObject();
        *(v186 + 16) = v226 & 1;
        v192 = Logger.logObject.getter();
        v193 = static os_log_type_t.info.getter();
        v188 = swift_allocObject();
        *(v188 + 16) = 32;
        v189 = swift_allocObject();
        *(v189 + 16) = 8;
        v187 = swift_allocObject();
        *(v187 + 16) = sub_10047E36C;
        *(v187 + 24) = v186;
        v190 = swift_allocObject();
        *(v190 + 16) = sub_10026EE84;
        *(v190 + 24) = v187;
        _allocateUninitializedArray<A>(_:)();
        v191 = v19;

        *v191 = sub_10026434C;
        v191[1] = v188;

        v191[2] = sub_10026434C;
        v191[3] = v189;

        v191[4] = sub_10026EF2C;
        v191[5] = v190;
        sub_1002612B0();

        if (os_log_type_enabled(v192, v193))
        {
          v182 = static UnsafeMutablePointer.allocate(capacity:)();
          v181 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
          v183 = sub_1002641E8(0, v181, v181);
          v184 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
          v305 = v182;
          v306 = v183;
          v307 = v184;
          sub_10026423C(2, &v305);
          sub_10026423C(1, &v305);
          v308 = sub_10026434C;
          v309 = v188;
          sub_100264250(&v308, &v305, &v306, &v307);
          v308 = sub_10026434C;
          v309 = v189;
          sub_100264250(&v308, &v305, &v306, &v307);
          v308 = sub_10026EF2C;
          v309 = v190;
          sub_100264250(&v308, &v305, &v306, &v307);
          _os_log_impl(&_mh_execute_header, v192, v193, "#SiriMail UpdateMessageIntent %s messages", v182, 0xCu);
          sub_10026429C(v183, 0);
          sub_10026429C(v184, 1);
          UnsafeMutablePointer.deallocate()();
        }

        else
        {
        }

        *(v1 + 2024) = 0;
        v178 = *(v1 + 1888);
        v179 = *(v1 + 1816);
        _objc_release(v192);
        v197(v178, v179);
        *(v1 + 144) = *(v1 + 1488);
        *(v1 + 184) = v1 + 1456;
        *(v1 + 152) = sub_100478FCC;
        v180 = swift_continuation_init();
        *(v1 + 616) = sub_10025C9B0(&unk_1006D7CE0, &unk_1004FECE0);
        *(v1 + 592) = v180;
        *(v1 + 560) = _NSConcreteStackBlock;
        *(v1 + 568) = 1107296256;
        *(v1 + 572) = 0;
        *(v1 + 576) = sub_10027D41C;
        *(v1 + 584) = &unk_100662498;
        [v203 performInteractionWithCompletion:?];
        v10 = v1 + 144;

        goto _swift_continuation_await;
      }

      v20 = *(v1 + 1880);
      v174 = *(v1 + 1816);
      v21 = sub_10046F54C();
      v211(v20, v21, v174);
      v176 = Logger.logObject.getter();
      v175 = static os_log_type_t.info.getter();
      v177 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v176, v175))
      {
        v170 = static UnsafeMutablePointer.allocate(capacity:)();
        v169 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v171 = sub_1002641E8(0, v169, v169);
        v172 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
        *(v1 + 1672) = v170;
        *(v1 + 1680) = v171;
        *(v1 + 1688) = v172;
        sub_10026423C(0, (v1 + 1672));
        sub_10026423C(0, (v1 + 1672));
        *(v1 + 1696) = v177;
        v173 = swift_task_alloc();
        v173[2] = v1 + 1672;
        v173[3] = v1 + 1680;
        v173[4] = v1 + 1688;
        sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
        sub_10026E6E0();
        Sequence.forEach(_:)();

        _os_log_impl(&_mh_execute_header, v176, v175, "#SiriMail UpdateMessageIntent no op", v170, 2u);
        sub_10026429C(v171, 0);
        sub_10026429C(v172, 0);
        UnsafeMutablePointer.deallocate()();
      }

      v167 = *(v1 + 1880);
      v168 = *(v1 + 1816);
      _objc_release(v176);
      v197(v167, v168);
      _objc_release(*(v1 + 2016));
    }

    v166 = sub_10046F118();
    *(v1 + 1435) = v166;
    if (v166 != 2)
    {
      v22 = *(v1 + 1872);
      v155 = *(v1 + 1816);
      v157 = *(v1 + 1768);
      v154 = *(v1 + 1824);
      *(v1 + 2088) = v166 & 1;
      v23 = sub_10046F54C();
      v156 = *(v154 + 16);
      v156(v22, v23, v155);
      sub_1003422F0(v157, (v1 + 880));
      v158 = swift_allocObject();
      memcpy((v158 + 16), v157, 0x30uLL);
      v164 = Logger.logObject.getter();
      v165 = static os_log_type_t.info.getter();
      v160 = swift_allocObject();
      *(v160 + 16) = 0;
      v161 = swift_allocObject();
      *(v161 + 16) = 8;
      v159 = swift_allocObject();
      *(v159 + 16) = sub_10047D9B0;
      *(v159 + 24) = v158;
      v162 = swift_allocObject();
      *(v162 + 16) = sub_10026E818;
      *(v162 + 24) = v159;
      sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
      _allocateUninitializedArray<A>(_:)();
      v163 = v24;

      *v163 = sub_10026434C;
      v163[1] = v160;

      v163[2] = sub_10026434C;
      v163[3] = v161;

      v163[4] = sub_10026EBF8;
      v163[5] = v162;
      sub_1002612B0();

      if (os_log_type_enabled(v164, v165))
      {
        v151 = static UnsafeMutablePointer.allocate(capacity:)();
        v150 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v152 = sub_1002641E8(0, v150, v150);
        v153 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
        v300 = v151;
        v301 = v152;
        v302 = v153;
        sub_10026423C(0, &v300);
        sub_10026423C(1, &v300);
        v303 = sub_10026434C;
        v304 = v160;
        sub_100264250(&v303, &v300, &v301, &v302);
        v303 = sub_10026434C;
        v304 = v161;
        sub_100264250(&v303, &v300, &v301, &v302);
        v303 = sub_10026EBF8;
        v304 = v162;
        sub_100264250(&v303, &v300, &v301, &v302);
        _os_log_impl(&_mh_execute_header, v164, v165, "#SiriMail UpdateMessageIntent junking %ld messages", v151, 0xCu);
        sub_10026429C(v152, 0);
        sub_10026429C(v153, 0);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      v147 = *(v1 + 1984);
      v140 = *(v1 + 1872);
      v141 = *(v1 + 1816);
      v144 = *(v1 + 1768);
      v139 = *(v1 + 1824);
      _objc_release(v164);
      v142 = *(v139 + 8);
      v142(v140, v141);
      sub_10047E290();

      v143 = sub_10046F6B4();
      v145 = sub_100353058();
      _objc_release(v143);
      memcpy((v1 + 928), v144, 0x30uLL);
      v146 = sub_10028E57C();
      memcpy((v1 + 976), v144, 0x30uLL);
      v25 = sub_10028E5B4();
      v148 = sub_10027D364(v147, v145, v146, v25);
      *(v1 + 2032) = v148;
      *(v1 + 1616) = v148;
      _objc_retain(v148);
      v149 = [v148 flagState];
      _objc_release(v148);
      if (v149 != (v166 & 1))
      {
        v26 = *(v1 + 1864);
        v124 = *(v1 + 1816);
        v125 = *(v1 + 1768);
        v27 = sub_10046F54C();
        v156(v26, v27, v124);
        v126 = swift_allocObject();
        *(v126 + 16) = v166 & 1;
        sub_1003422F0(v125, (v1 + 1024));
        v128 = swift_allocObject();
        memcpy((v128 + 16), v125, 0x30uLL);
        v137 = Logger.logObject.getter();
        v138 = static os_log_type_t.info.getter();
        v130 = swift_allocObject();
        *(v130 + 16) = 32;
        v131 = swift_allocObject();
        *(v131 + 16) = 8;
        v127 = swift_allocObject();
        *(v127 + 16) = sub_10047E2F4;
        *(v127 + 24) = v126;
        v132 = swift_allocObject();
        *(v132 + 16) = sub_10026EE84;
        *(v132 + 24) = v127;
        v133 = swift_allocObject();
        *(v133 + 16) = 0;
        v134 = swift_allocObject();
        *(v134 + 16) = 8;
        v129 = swift_allocObject();
        *(v129 + 16) = sub_10047D9B0;
        *(v129 + 24) = v128;
        v135 = swift_allocObject();
        *(v135 + 16) = sub_10026E818;
        *(v135 + 24) = v129;
        _allocateUninitializedArray<A>(_:)();
        v136 = v28;

        *v136 = sub_10026434C;
        v136[1] = v130;

        v136[2] = sub_10026434C;
        v136[3] = v131;

        v136[4] = sub_10026EF2C;
        v136[5] = v132;

        v136[6] = sub_10026434C;
        v136[7] = v133;

        v136[8] = sub_10026434C;
        v136[9] = v134;

        v136[10] = sub_10026EBF8;
        v136[11] = v135;
        sub_1002612B0();

        if (os_log_type_enabled(v137, v138))
        {
          v121 = static UnsafeMutablePointer.allocate(capacity:)();
          v120 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
          v122 = sub_1002641E8(0, v120, v120);
          v123 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
          v295 = v121;
          v296 = v122;
          v297 = v123;
          sub_10026423C(2, &v295);
          sub_10026423C(2, &v295);
          v298 = sub_10026434C;
          v299 = v130;
          sub_100264250(&v298, &v295, &v296, &v297);
          v298 = sub_10026434C;
          v299 = v131;
          sub_100264250(&v298, &v295, &v296, &v297);
          v298 = sub_10026EF2C;
          v299 = v132;
          sub_100264250(&v298, &v295, &v296, &v297);
          v298 = sub_10026434C;
          v299 = v133;
          sub_100264250(&v298, &v295, &v296, &v297);
          v298 = sub_10026434C;
          v299 = v134;
          sub_100264250(&v298, &v295, &v296, &v297);
          v298 = sub_10026EBF8;
          v299 = v135;
          sub_100264250(&v298, &v295, &v296, &v297);
          _os_log_impl(&_mh_execute_header, v137, v138, "#SiriMail UpdateMessageIntent %s %ld messages", v121, 0x16u);
          sub_10026429C(v122, 0);
          sub_10026429C(v123, 1);
          UnsafeMutablePointer.deallocate()();
        }

        else
        {
        }

        *(v1 + 2040) = 0;
        v117 = *(v1 + 1864);
        v118 = *(v1 + 1816);
        _objc_release(v137);
        v142(v117, v118);
        *(v1 + 80) = *(v1 + 1488);
        *(v1 + 120) = v1 + 1440;
        *(v1 + 88) = sub_10047B9C0;
        v119 = swift_continuation_init();
        *(v1 + 552) = sub_10025C9B0(&unk_1006D7CE0, &unk_1004FECE0);
        *(v1 + 528) = v119;
        *(v1 + 496) = _NSConcreteStackBlock;
        *(v1 + 504) = 1107296256;
        *(v1 + 508) = 0;
        *(v1 + 512) = sub_10027D41C;
        *(v1 + 520) = &unk_100662218;
        [v148 performInteractionWithCompletion:?];
        v10 = v1 + 80;

        goto _swift_continuation_await;
      }

      v29 = *(v1 + 1856);
      v113 = *(v1 + 1816);
      v30 = sub_10046F54C();
      v156(v29, v30, v113);
      v115 = Logger.logObject.getter();
      v114 = static os_log_type_t.info.getter();
      v116 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v115, v114))
      {
        v109 = static UnsafeMutablePointer.allocate(capacity:)();
        v108 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v110 = sub_1002641E8(0, v108, v108);
        v111 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
        *(v1 + 1624) = v109;
        *(v1 + 1632) = v110;
        *(v1 + 1640) = v111;
        sub_10026423C(0, (v1 + 1624));
        sub_10026423C(0, (v1 + 1624));
        *(v1 + 1648) = v116;
        v112 = swift_task_alloc();
        v112[2] = v1 + 1624;
        v112[3] = v1 + 1632;
        v112[4] = v1 + 1640;
        sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
        sub_10026E6E0();
        Sequence.forEach(_:)();

        _os_log_impl(&_mh_execute_header, v115, v114, "#SiriMail UpdateMessageIntent no op", v109, 2u);
        sub_10026429C(v110, 0);
        sub_10026429C(v111, 0);
        UnsafeMutablePointer.deallocate()();
      }

      v106 = *(v1 + 1856);
      v107 = *(v1 + 1816);
      _objc_release(v115);
      v142(v106, v107);
      _objc_release(*(v1 + 2032));
    }

    sub_10043CE50();
    if (*(v1 + 360))
    {
      v31 = *(v1 + 1848);
      v95 = *(v1 + 1816);
      v97 = *(v1 + 1768);
      v94 = *(v1 + 1824);
      memcpy((v1 + 272), (v1 + 352), 0x50uLL);
      v32 = sub_10046F54C();
      v96 = *(v94 + 16);
      v96(v31, v32, v95);
      sub_1003422F0(v97, (v1 + 736));
      v98 = swift_allocObject();
      memcpy((v98 + 16), v97, 0x30uLL);
      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.info.getter();
      v100 = swift_allocObject();
      *(v100 + 16) = 0;
      v101 = swift_allocObject();
      *(v101 + 16) = 8;
      v99 = swift_allocObject();
      *(v99 + 16) = sub_10047D9B0;
      *(v99 + 24) = v98;
      v102 = swift_allocObject();
      *(v102 + 16) = sub_10026E818;
      *(v102 + 24) = v99;
      sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
      _allocateUninitializedArray<A>(_:)();
      v103 = v33;

      *v103 = sub_10026434C;
      v103[1] = v100;

      v103[2] = sub_10026434C;
      v103[3] = v101;

      v103[4] = sub_10026EBF8;
      v103[5] = v102;
      sub_1002612B0();

      if (os_log_type_enabled(v104, v105))
      {
        v91 = static UnsafeMutablePointer.allocate(capacity:)();
        v90 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v92 = sub_1002641E8(0, v90, v90);
        v93 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
        v290 = v91;
        v291 = v92;
        v292 = v93;
        sub_10026423C(0, &v290);
        sub_10026423C(1, &v290);
        v293 = sub_10026434C;
        v294 = v100;
        sub_100264250(&v293, &v290, &v291, &v292);
        v293 = sub_10026434C;
        v294 = v101;
        sub_100264250(&v293, &v290, &v291, &v292);
        v293 = sub_10026EBF8;
        v294 = v102;
        sub_100264250(&v293, &v290, &v291, &v292);
        _os_log_impl(&_mh_execute_header, v104, v105, "#SiriMail UpdateMessageIntent moving %ld messages to mailbox", v91, 0xCu);
        sub_10026429C(v92, 0);
        sub_10026429C(v93, 0);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      v83 = *(v1 + 1984);
      v76 = *(v1 + 1848);
      v77 = *(v1 + 1816);
      v89 = *(v1 + 1784);
      v88 = *(v1 + 1776);
      v80 = *(v1 + 1768);
      v75 = *(v1 + 1824);
      v87 = *(v1 + 1792);
      _objc_release(v104);
      v78 = *(v75 + 8);
      v78(v76, v77);
      sub_1002BCF88();

      v79 = sub_10046F6B4();
      v81 = sub_100353058();
      _objc_release(v79);
      memcpy((v1 + 784), v80, 0x30uLL);
      v82 = sub_10028E57C();
      memcpy((v1 + 832), v80, 0x30uLL);
      v34 = sub_10028E5B4();
      v84 = sub_10027D364(v83, v81, v82, v34);
      *(v1 + 2048) = v84;
      *(v1 + 1520) = v84;
      v85 = *(v1 + 272);
      v86 = *(v1 + 280);
      *(v1 + 2056) = v86;

      *(v1 + 1408) = v85;
      *(v1 + 1416) = v86;
      URL.init(string:)();
      if ((*(v87 + 48))(v88, 1, v89) != 1)
      {
        v70 = *(v1 + 1808);
        v71 = *(v1 + 1800);
        v69 = *(v1 + 1784);
        v68 = *(v1 + 1792);
        (*(v68 + 32))();
        sub_100365480();
        (*(v68 + 16))(v71, v70, v69);
        v72 = sub_10047D9B8(v71);
        *(v1 + 2064) = v72;
        *(v1 + 1560) = v72;
        v73 = sub_10046F6B4();
        v74 = [v73 daemonInterface];
        _objc_release(v73);
        if (!v74)
        {
          _assertionFailure(_:_:file:line:flags:)();
          return;
        }

        v63 = *(v1 + 1840);
        v64 = *(v1 + 1816);
        v60 = [v74 mailboxRepository];
        _objc_release(v74);
        v61 = [v60 mailboxForObjectID:v72];
        *(v1 + 2072) = v61;
        _objc_release(v60);
        *(v1 + 1568) = v61;
        v62 = [v61 result];
        [v84 setTargetMailbox:?];
        _objc_release(v62);
        _objc_retain(v84);
        sub_10046F6B4();
        [v84 setDelegate:?];
        swift_unknownObjectRelease();
        _objc_release(v84);
        v35 = Logger.appIntentLogger.unsafeMutableAddressor();
        v96(v63, v35, v64);
        v66 = Logger.logObject.getter();
        v65 = static os_log_type_t.info.getter();
        v67 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v66, v65))
        {
          v56 = static UnsafeMutablePointer.allocate(capacity:)();
          v55 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
          v57 = sub_1002641E8(0, v55, v55);
          v58 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
          *(v1 + 1584) = v56;
          *(v1 + 1592) = v57;
          *(v1 + 1600) = v58;
          sub_10026423C(0, (v1 + 1584));
          sub_10026423C(0, (v1 + 1584));
          *(v1 + 1608) = v67;
          v59 = swift_task_alloc();
          v59[2] = v1 + 1584;
          v59[3] = v1 + 1592;
          v59[4] = v1 + 1600;
          sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
          sub_10026E6E0();
          Sequence.forEach(_:)();

          _os_log_impl(&_mh_execute_header, v66, v65, "#SiriMail UpdateMessageIntent moving message to mailbox", v56, 2u);
          sub_10026429C(v57, 0);
          sub_10026429C(v58, 0);
          UnsafeMutablePointer.deallocate()();
        }

        *(v1 + 2080) = 0;
        v52 = *(v1 + 1840);
        v53 = *(v1 + 1816);
        _objc_release(v66);
        v78(v52, v53);
        *(v1 + 16) = *(v1 + 1488);
        *(v1 + 56) = v1 + 1424;
        *(v1 + 24) = sub_10047CF88;
        v54 = swift_continuation_init();
        *(v1 + 488) = sub_10025C9B0(&unk_1006D7CE0, &unk_1004FECE0);
        *(v1 + 464) = v54;
        *(v1 + 432) = _NSConcreteStackBlock;
        *(v1 + 440) = 1107296256;
        *(v1 + 444) = 0;
        *(v1 + 448) = sub_10027D41C;
        *(v1 + 456) = &unk_100661F98;
        [v84 performInteractionWithCompletion:?];
        v10 = v1 + 16;

        goto _swift_continuation_await;
      }

      v36 = *(v1 + 1832);
      v48 = *(v1 + 1816);
      sub_100286140(*(v1 + 1776));
      v37 = Logger.appIntentLogger.unsafeMutableAddressor();
      v96(v36, v37, v48);
      v50 = Logger.logObject.getter();
      v49 = static os_log_type_t.info.getter();
      v51 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v50, v49))
      {
        v44 = static UnsafeMutablePointer.allocate(capacity:)();
        v43 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v45 = sub_1002641E8(0, v43, v43);
        v46 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
        *(v1 + 1528) = v44;
        *(v1 + 1536) = v45;
        *(v1 + 1544) = v46;
        sub_10026423C(0, (v1 + 1528));
        sub_10026423C(0, (v1 + 1528));
        *(v1 + 1552) = v51;
        v47 = swift_task_alloc();
        v47[2] = v1 + 1528;
        v47[3] = v1 + 1536;
        v47[4] = v1 + 1544;
        sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
        sub_10026E6E0();
        Sequence.forEach(_:)();

        _os_log_impl(&_mh_execute_header, v50, v49, "#SiriMail UpdateMessageIntent failed to build URL from raw ID String, doing nothing", v44, 2u);
        sub_10026429C(v45, 0);
        sub_10026429C(v46, 0);
        UnsafeMutablePointer.deallocate()();
      }

      v40 = *(v1 + 1832);
      v41 = *(v1 + 1816);
      _objc_release(v50);
      v78(v40, v41);
      v42 = *(v1 + 2048);

      _objc_release(v42);
      sub_10027D728((v1 + 272));
    }

    else
    {
      sub_10027D594((v1 + 352));
    }

    *(v1 + 1512) = sub_10043CEA4();
    sub_10025C9B0(&unk_1006D6FF0, &unk_1004FEA30);
    sub_10027D124();
    static IntentResult.result<A>(value:)();
    sub_100264880((v1 + 1512));

    v38 = *(*(v1 + 1488) + 8);

    v38();
  }
}

      _swift_continuation_await(v10);
      return;
    }

    v11 = *(v217 + 1880);
    v164 = *(v217 + 1816);
    v12 = sub_10046F54C();
    v201(v11, v12, v164);
    v166 = Logger.logObject.getter();
    v165 = static os_log_type_t.info.getter();
    v167 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v166, v165))
    {
      v160 = static UnsafeMutablePointer.allocate(capacity:)();
      v159 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v161 = sub_1002641E8(0, v159, v159);
      v162 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v217 + 1672) = v160;
      *(v217 + 1680) = v161;
      *(v217 + 1688) = v162;
      sub_10026423C(0, (v217 + 1672));
      sub_10026423C(0, (v217 + 1672));
      *(v217 + 1696) = v167;
      v163 = swift_task_alloc();
      v163[2] = v217 + 1672;
      v163[3] = v217 + 1680;
      v163[4] = v217 + 1688;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v166, v165, "#SiriMail UpdateMessageIntent no op", v160, 2u);
      sub_10026429C(v161, 0);
      sub_10026429C(v162, 0);
      UnsafeMutablePointer.deallocate()();
    }

    v157 = *(v217 + 1880);
    v158 = *(v217 + 1816);
    _objc_release(v166);
    v187(v157, v158);
    _objc_release(*(v217 + 2016));
  }

  v156 = sub_10046F118();
  *(v217 + 1435) = v156;
  if (v156 != 2)
  {
    v13 = *(v217 + 1872);
    v145 = *(v217 + 1816);
    v147 = *(v217 + 1768);
    v144 = *(v217 + 1824);
    *(v217 + 2088) = v156 & 1;
    v14 = sub_10046F54C();
    v146 = *(v144 + 16);
    v146(v13, v14, v145);
    sub_1003422F0(v147, (v217 + 880));
    v148 = swift_allocObject();
    memcpy((v148 + 16), v147, 0x30uLL);
    v154 = Logger.logObject.getter();
    v155 = static os_log_type_t.info.getter();
    v150 = swift_allocObject();
    *(v150 + 16) = 0;
    v151 = swift_allocObject();
    *(v151 + 16) = 8;
    v149 = swift_allocObject();
    *(v149 + 16) = sub_10047D9B0;
    *(v149 + 24) = v148;
    v152 = swift_allocObject();
    *(v152 + 16) = sub_10026E818;
    *(v152 + 24) = v149;
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    _allocateUninitializedArray<A>(_:)();
    v153 = v15;

    *v153 = sub_10026434C;
    v153[1] = v150;

    v153[2] = sub_10026434C;
    v153[3] = v151;

    v153[4] = sub_10026EBF8;
    v153[5] = v152;
    sub_1002612B0();

    if (os_log_type_enabled(v154, v155))
    {
      v141 = static UnsafeMutablePointer.allocate(capacity:)();
      v140 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v142 = sub_1002641E8(0, v140, v140);
      v143 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      v229 = v141;
      v230 = v142;
      v231 = v143;
      sub_10026423C(0, &v229);
      sub_10026423C(1, &v229);
      v232 = sub_10026434C;
      v233 = v150;
      sub_100264250(&v232, &v229, &v230, &v231);
      v232 = sub_10026434C;
      v233 = v151;
      sub_100264250(&v232, &v229, &v230, &v231);
      v232 = sub_10026EBF8;
      v233 = v152;
      sub_100264250(&v232, &v229, &v230, &v231);
      _os_log_impl(&_mh_execute_header, v154, v155, "#SiriMail UpdateMessageIntent junking %ld messages", v141, 0xCu);
      sub_10026429C(v142, 0);
      sub_10026429C(v143, 0);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v137 = *(v217 + 1984);
    v130 = *(v217 + 1872);
    v131 = *(v217 + 1816);
    v134 = *(v217 + 1768);
    v129 = *(v217 + 1824);
    _objc_release(v154);
    v132 = *(v129 + 8);
    v132(v130, v131);
    sub_10047E290();

    v133 = sub_10046F6B4();
    v135 = sub_100353058();
    _objc_release(v133);
    memcpy((v217 + 928), v134, 0x30uLL);
    v136 = sub_10028E57C();
    memcpy((v217 + 976), v134, 0x30uLL);
    v16 = sub_10028E5B4();
    v138 = sub_10027D364(v137, v135, v136, v16);
    *(v217 + 2032) = v138;
    *(v217 + 1616) = v138;
    _objc_retain(v138);
    v139 = [v138 flagState];
    _objc_release(v138);
    if (v139 != (v156 & 1))
    {
      v17 = *(v217 + 1864);
      v114 = *(v217 + 1816);
      v115 = *(v217 + 1768);
      v18 = sub_10046F54C();
      v146(v17, v18, v114);
      v116 = swift_allocObject();
      *(v116 + 16) = v156 & 1;
      sub_1003422F0(v115, (v217 + 1024));
      v118 = swift_allocObject();
      memcpy((v118 + 16), v115, 0x30uLL);
      v127 = Logger.logObject.getter();
      v128 = static os_log_type_t.info.getter();
      v120 = swift_allocObject();
      *(v120 + 16) = 32;
      v121 = swift_allocObject();
      *(v121 + 16) = 8;
      v117 = swift_allocObject();
      *(v117 + 16) = sub_10047E2F4;
      *(v117 + 24) = v116;
      v122 = swift_allocObject();
      *(v122 + 16) = sub_10026EE84;
      *(v122 + 24) = v117;
      v123 = swift_allocObject();
      *(v123 + 16) = 0;
      v124 = swift_allocObject();
      *(v124 + 16) = 8;
      v119 = swift_allocObject();
      *(v119 + 16) = sub_10047D9B0;
      *(v119 + 24) = v118;
      v125 = swift_allocObject();
      *(v125 + 16) = sub_10026E818;
      *(v125 + 24) = v119;
      _allocateUninitializedArray<A>(_:)();
      v126 = v19;

      *v126 = sub_10026434C;
      v126[1] = v120;

      v126[2] = sub_10026434C;
      v126[3] = v121;

      v126[4] = sub_10026EF2C;
      v126[5] = v122;

      v126[6] = sub_10026434C;
      v126[7] = v123;

      v126[8] = sub_10026434C;
      v126[9] = v124;

      v126[10] = sub_10026EBF8;
      v126[11] = v125;
      sub_1002612B0();

      if (os_log_type_enabled(v127, v128))
      {
        v111 = static UnsafeMutablePointer.allocate(capacity:)();
        v110 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v112 = sub_1002641E8(0, v110, v110);
        v113 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
        v224 = v111;
        v225 = v112;
        v226 = v113;
        sub_10026423C(2, &v224);
        sub_10026423C(2, &v224);
        v227 = sub_10026434C;
        v228 = v120;
        sub_100264250(&v227, &v224, &v225, &v226);
        v227 = sub_10026434C;
        v228 = v121;
        sub_100264250(&v227, &v224, &v225, &v226);
        v227 = sub_10026EF2C;
        v228 = v122;
        sub_100264250(&v227, &v224, &v225, &v226);
        v227 = sub_10026434C;
        v228 = v123;
        sub_100264250(&v227, &v224, &v225, &v226);
        v227 = sub_10026434C;
        v228 = v124;
        sub_100264250(&v227, &v224, &v225, &v226);
        v227 = sub_10026EBF8;
        v228 = v125;
        sub_100264250(&v227, &v224, &v225, &v226);
        _os_log_impl(&_mh_execute_header, v127, v128, "#SiriMail UpdateMessageIntent %s %ld messages", v111, 0x16u);
        sub_10026429C(v112, 0);
        sub_10026429C(v113, 1);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      *(v217 + 2040) = 0;
      v107 = *(v217 + 1864);
      v108 = *(v217 + 1816);
      _objc_release(v127);
      v132(v107, v108);
      *(v217 + 80) = *(v217 + 1488);
      *(v217 + 120) = v217 + 1440;
      *(v217 + 88) = sub_10047B9C0;
      v109 = swift_continuation_init();
      *(v217 + 552) = sub_10025C9B0(&unk_1006D7CE0, &unk_1004FECE0);
      *(v217 + 528) = v109;
      *(v217 + 496) = _NSConcreteStackBlock;
      *(v217 + 504) = 1107296256;
      *(v217 + 508) = 0;
      *(v217 + 512) = sub_10027D41C;
      *(v217 + 520) = &unk_100662218;
      [v138 performInteractionWithCompletion:?];
      v10 = v217 + 80;

      goto _swift_continuation_await;
    }

    v20 = *(v217 + 1856);
    v103 = *(v217 + 1816);
    v21 = sub_10046F54C();
    v146(v20, v21, v103);
    v105 = Logger.logObject.getter();
    v104 = static os_log_type_t.info.getter();
    v106 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v105, v104))
    {
      v99 = static UnsafeMutablePointer.allocate(capacity:)();
      v98 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v100 = sub_1002641E8(0, v98, v98);
      v101 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v217 + 1624) = v99;
      *(v217 + 1632) = v100;
      *(v217 + 1640) = v101;
      sub_10026423C(0, (v217 + 1624));
      sub_10026423C(0, (v217 + 1624));
      *(v217 + 1648) = v106;
      v102 = swift_task_alloc();
      v102[2] = v217 + 1624;
      v102[3] = v217 + 1632;
      v102[4] = v217 + 1640;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v105, v104, "#SiriMail UpdateMessageIntent no op", v99, 2u);
      sub_10026429C(v100, 0);
      sub_10026429C(v101, 0);
      UnsafeMutablePointer.deallocate()();
    }

    v96 = *(v217 + 1856);
    v97 = *(v217 + 1816);
    _objc_release(v105);
    v132(v96, v97);
    _objc_release(*(v217 + 2032));
  }

  sub_10043CE50();
  if (*(v217 + 360))
  {
    v22 = *(v217 + 1848);
    v85 = *(v217 + 1816);
    v87 = *(v217 + 1768);
    v84 = *(v217 + 1824);
    memcpy((v217 + 272), (v217 + 352), 0x50uLL);
    v23 = sub_10046F54C();
    v86 = *(v84 + 16);
    v86(v22, v23, v85);
    sub_1003422F0(v87, (v217 + 736));
    v88 = swift_allocObject();
    memcpy((v88 + 16), v87, 0x30uLL);
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.info.getter();
    v90 = swift_allocObject();
    *(v90 + 16) = 0;
    v91 = swift_allocObject();
    *(v91 + 16) = 8;
    v89 = swift_allocObject();
    *(v89 + 16) = sub_10047D9B0;
    *(v89 + 24) = v88;
    v92 = swift_allocObject();
    *(v92 + 16) = sub_10026E818;
    *(v92 + 24) = v89;
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    _allocateUninitializedArray<A>(_:)();
    v93 = v24;

    *v93 = sub_10026434C;
    v93[1] = v90;

    v93[2] = sub_10026434C;
    v93[3] = v91;

    v93[4] = sub_10026EBF8;
    v93[5] = v92;
    sub_1002612B0();

    if (os_log_type_enabled(v94, v95))
    {
      v81 = static UnsafeMutablePointer.allocate(capacity:)();
      v80 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v82 = sub_1002641E8(0, v80, v80);
      v83 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      v219 = v81;
      v220 = v82;
      v221 = v83;
      sub_10026423C(0, &v219);
      sub_10026423C(1, &v219);
      v222 = sub_10026434C;
      v223 = v90;
      sub_100264250(&v222, &v219, &v220, &v221);
      v222 = sub_10026434C;
      v223 = v91;
      sub_100264250(&v222, &v219, &v220, &v221);
      v222 = sub_10026EBF8;
      v223 = v92;
      sub_100264250(&v222, &v219, &v220, &v221);
      _os_log_impl(&_mh_execute_header, v94, v95, "#SiriMail UpdateMessageIntent moving %ld messages to mailbox", v81, 0xCu);
      sub_10026429C(v82, 0);
      sub_10026429C(v83, 0);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v73 = *(v217 + 1984);
    v66 = *(v217 + 1848);
    v67 = *(v217 + 1816);
    v79 = *(v217 + 1784);
    v78 = *(v217 + 1776);
    v70 = *(v217 + 1768);
    v65 = *(v217 + 1824);
    v77 = *(v217 + 1792);
    _objc_release(v94);
    v68 = *(v65 + 8);
    v68(v66, v67);
    sub_1002BCF88();

    v69 = sub_10046F6B4();
    v71 = sub_100353058();
    _objc_release(v69);
    memcpy((v217 + 784), v70, 0x30uLL);
    v72 = sub_10028E57C();
    memcpy((v217 + 832), v70, 0x30uLL);
    v25 = sub_10028E5B4();
    v74 = sub_10027D364(v73, v71, v72, v25);
    *(v217 + 2048) = v74;
    *(v217 + 1520) = v74;
    v75 = *(v217 + 272);
    v76 = *(v217 + 280);
    *(v217 + 2056) = v76;

    *(v217 + 1408) = v75;
    *(v217 + 1416) = v76;
    URL.init(string:)();
    if ((*(v77 + 48))(v78, 1, v79) != 1)
    {
      v60 = *(v217 + 1808);
      v61 = *(v217 + 1800);
      v59 = *(v217 + 1784);
      v58 = *(v217 + 1792);
      (*(v58 + 32))();
      sub_100365480();
      (*(v58 + 16))(v61, v60, v59);
      v62 = sub_10047D9B8(v61);
      *(v217 + 2064) = v62;
      *(v217 + 1560) = v62;
      v63 = sub_10046F6B4();
      v64 = [v63 daemonInterface];
      _objc_release(v63);
      if (!v64)
      {
        _assertionFailure(_:_:file:line:flags:)();
        return;
      }

      v53 = *(v217 + 1840);
      v54 = *(v217 + 1816);
      v50 = [v64 mailboxRepository];
      _objc_release(v64);
      v51 = [v50 mailboxForObjectID:v62];
      *(v217 + 2072) = v51;
      _objc_release(v50);
      *(v217 + 1568) = v51;
      v52 = [v51 result];
      [v74 setTargetMailbox:?];
      _objc_release(v52);
      _objc_retain(v74);
      sub_10046F6B4();
      [v74 setDelegate:?];
      swift_unknownObjectRelease();
      _objc_release(v74);
      v26 = Logger.appIntentLogger.unsafeMutableAddressor();
      v86(v53, v26, v54);
      v56 = Logger.logObject.getter();
      v55 = static os_log_type_t.info.getter();
      v57 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v56, v55))
      {
        v46 = static UnsafeMutablePointer.allocate(capacity:)();
        v45 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v47 = sub_1002641E8(0, v45, v45);
        v48 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
        *(v217 + 1584) = v46;
        *(v217 + 1592) = v47;
        *(v217 + 1600) = v48;
        sub_10026423C(0, (v217 + 1584));
        sub_10026423C(0, (v217 + 1584));
        *(v217 + 1608) = v57;
        v49 = swift_task_alloc();
        v49[2] = v217 + 1584;
        v49[3] = v217 + 1592;
        v49[4] = v217 + 1600;
        sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
        sub_10026E6E0();
        Sequence.forEach(_:)();

        _os_log_impl(&_mh_execute_header, v56, v55, "#SiriMail UpdateMessageIntent moving message to mailbox", v46, 2u);
        sub_10026429C(v47, 0);
        sub_10026429C(v48, 0);
        UnsafeMutablePointer.deallocate()();
      }

      *(v217 + 2080) = 0;
      v42 = *(v217 + 1840);
      v43 = *(v217 + 1816);
      _objc_release(v56);
      v68(v42, v43);
      *(v217 + 16) = *(v217 + 1488);
      *(v217 + 56) = v217 + 1424;
      *(v217 + 24) = sub_10047CF88;
      v44 = swift_continuation_init();
      *(v217 + 488) = sub_10025C9B0(&unk_1006D7CE0, &unk_1004FECE0);
      *(v217 + 464) = v44;
      *(v217 + 432) = _NSConcreteStackBlock;
      *(v217 + 440) = 1107296256;
      *(v217 + 444) = 0;
      *(v217 + 448) = sub_10027D41C;
      *(v217 + 456) = &unk_100661F98;
      [v74 performInteractionWithCompletion:?];
      v10 = v217 + 16;

      goto _swift_continuation_await;
    }

    v27 = *(v217 + 1832);
    v38 = *(v217 + 1816);
    sub_100286140(*(v217 + 1776));
    v28 = Logger.appIntentLogger.unsafeMutableAddressor();
    v86(v27, v28, v38);
    v40 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    v41 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v40, v39))
    {
      v34 = static UnsafeMutablePointer.allocate(capacity:)();
      v33 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v35 = sub_1002641E8(0, v33, v33);
      v36 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v217 + 1528) = v34;
      *(v217 + 1536) = v35;
      *(v217 + 1544) = v36;
      sub_10026423C(0, (v217 + 1528));
      sub_10026423C(0, (v217 + 1528));
      *(v217 + 1552) = v41;
      v37 = swift_task_alloc();
      v37[2] = v217 + 1528;
      v37[3] = v217 + 1536;
      v37[4] = v217 + 1544;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v40, v39, "#SiriMail UpdateMessageIntent failed to build URL from raw ID String, doing nothing", v34, 2u);
      sub_10026429C(v35, 0);
      sub_10026429C(v36, 0);
      UnsafeMutablePointer.deallocate()();
    }

    v30 = *(v217 + 1832);
    v31 = *(v217 + 1816);
    _objc_release(v40);
    v68(v30, v31);
    v32 = *(v217 + 2048);

    _objc_release(v32);
    sub_10027D728((v217 + 272));
  }

  else
  {
    sub_10027D594((v217 + 352));
  }

  *(v217 + 1512) = sub_10043CEA4();
  sub_10025C9B0(&unk_1006D6FF0, &unk_1004FEA30);
  sub_10027D124();
  static IntentResult.result<A>(value:)();
  sub_100264880((v217 + 1512));

  v29 = *(*(v217 + 1488) + 8);

  v29();
}

      _swift_continuation_await(v10);
      return;
    }

    v11 = *(v148 + 1856);
    v94 = *(v148 + 1816);
    v12 = sub_10046F54C();
    v137(v11, v12, v94);
    v96 = Logger.logObject.getter();
    v95 = static os_log_type_t.info.getter();
    v97 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v96, v95))
    {
      v90 = static UnsafeMutablePointer.allocate(capacity:)();
      v89 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v91 = sub_1002641E8(0, v89, v89);
      v92 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v148 + 1624) = v90;
      *(v148 + 1632) = v91;
      *(v148 + 1640) = v92;
      sub_10026423C(0, (v148 + 1624));
      sub_10026423C(0, (v148 + 1624));
      *(v148 + 1648) = v97;
      v93 = swift_task_alloc();
      v93[2] = v148 + 1624;
      v93[3] = v148 + 1632;
      v93[4] = v148 + 1640;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v96, v95, "#SiriMail UpdateMessageIntent no op", v90, 2u);
      sub_10026429C(v91, 0);
      sub_10026429C(v92, 0);
      UnsafeMutablePointer.deallocate()();
    }

    v87 = *(v148 + 1856);
    v88 = *(v148 + 1816);
    _objc_release(v96);
    v123(v87, v88);
    _objc_release(*(v148 + 2032));
  }

  sub_10043CE50();
  if (*(v148 + 360))
  {
    v13 = *(v148 + 1848);
    v76 = *(v148 + 1816);
    v78 = *(v148 + 1768);
    v75 = *(v148 + 1824);
    memcpy((v148 + 272), (v148 + 352), 0x50uLL);
    v14 = sub_10046F54C();
    v77 = *(v75 + 16);
    v77(v13, v14, v76);
    sub_1003422F0(v78, (v148 + 736));
    v79 = swift_allocObject();
    memcpy((v79 + 16), v78, 0x30uLL);
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.info.getter();
    v81 = swift_allocObject();
    *(v81 + 16) = 0;
    v82 = swift_allocObject();
    *(v82 + 16) = 8;
    v80 = swift_allocObject();
    *(v80 + 16) = sub_10047D9B0;
    *(v80 + 24) = v79;
    v83 = swift_allocObject();
    *(v83 + 16) = sub_10026E818;
    *(v83 + 24) = v80;
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    _allocateUninitializedArray<A>(_:)();
    v84 = v15;

    *v84 = sub_10026434C;
    v84[1] = v81;

    v84[2] = sub_10026434C;
    v84[3] = v82;

    v84[4] = sub_10026EBF8;
    v84[5] = v83;
    sub_1002612B0();

    if (os_log_type_enabled(v85, v86))
    {
      v72 = static UnsafeMutablePointer.allocate(capacity:)();
      v71 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v73 = sub_1002641E8(0, v71, v71);
      v74 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      v150 = v72;
      v151 = v73;
      v152 = v74;
      sub_10026423C(0, &v150);
      sub_10026423C(1, &v150);
      v153 = sub_10026434C;
      v154 = v81;
      sub_100264250(&v153, &v150, &v151, &v152);
      v153 = sub_10026434C;
      v154 = v82;
      sub_100264250(&v153, &v150, &v151, &v152);
      v153 = sub_10026EBF8;
      v154 = v83;
      sub_100264250(&v153, &v150, &v151, &v152);
      _os_log_impl(&_mh_execute_header, v85, v86, "#SiriMail UpdateMessageIntent moving %ld messages to mailbox", v72, 0xCu);
      sub_10026429C(v73, 0);
      sub_10026429C(v74, 0);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v64 = *(v148 + 1984);
    v57 = *(v148 + 1848);
    v58 = *(v148 + 1816);
    v70 = *(v148 + 1784);
    v69 = *(v148 + 1776);
    v61 = *(v148 + 1768);
    v56 = *(v148 + 1824);
    v68 = *(v148 + 1792);
    _objc_release(v85);
    v59 = *(v56 + 8);
    v59(v57, v58);
    sub_1002BCF88();

    v60 = sub_10046F6B4();
    v62 = sub_100353058();
    _objc_release(v60);
    memcpy((v148 + 784), v61, 0x30uLL);
    v63 = sub_10028E57C();
    memcpy((v148 + 832), v61, 0x30uLL);
    v16 = sub_10028E5B4();
    v65 = sub_10027D364(v64, v62, v63, v16);
    *(v148 + 2048) = v65;
    *(v148 + 1520) = v65;
    v66 = *(v148 + 272);
    v67 = *(v148 + 280);
    *(v148 + 2056) = v67;

    *(v148 + 1408) = v66;
    *(v148 + 1416) = v67;
    URL.init(string:)();
    if ((*(v68 + 48))(v69, 1, v70) != 1)
    {
      v51 = *(v148 + 1808);
      v52 = *(v148 + 1800);
      v50 = *(v148 + 1784);
      v49 = *(v148 + 1792);
      (*(v49 + 32))();
      sub_100365480();
      (*(v49 + 16))(v52, v51, v50);
      v53 = sub_10047D9B8(v52);
      *(v148 + 2064) = v53;
      *(v148 + 1560) = v53;
      v54 = sub_10046F6B4();
      v55 = [v54 daemonInterface];
      _objc_release(v54);
      if (!v55)
      {
        _assertionFailure(_:_:file:line:flags:)();
        return;
      }

      v44 = *(v148 + 1840);
      v45 = *(v148 + 1816);
      v41 = [v55 mailboxRepository];
      _objc_release(v55);
      v42 = [v41 mailboxForObjectID:v53];
      *(v148 + 2072) = v42;
      _objc_release(v41);
      *(v148 + 1568) = v42;
      v43 = [v42 result];
      [v65 setTargetMailbox:?];
      _objc_release(v43);
      _objc_retain(v65);
      sub_10046F6B4();
      [v65 setDelegate:?];
      swift_unknownObjectRelease();
      _objc_release(v65);
      v17 = Logger.appIntentLogger.unsafeMutableAddressor();
      v77(v44, v17, v45);
      v47 = Logger.logObject.getter();
      v46 = static os_log_type_t.info.getter();
      v48 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v47, v46))
      {
        v37 = static UnsafeMutablePointer.allocate(capacity:)();
        v36 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v38 = sub_1002641E8(0, v36, v36);
        v39 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
        *(v148 + 1584) = v37;
        *(v148 + 1592) = v38;
        *(v148 + 1600) = v39;
        sub_10026423C(0, (v148 + 1584));
        sub_10026423C(0, (v148 + 1584));
        *(v148 + 1608) = v48;
        v40 = swift_task_alloc();
        v40[2] = v148 + 1584;
        v40[3] = v148 + 1592;
        v40[4] = v148 + 1600;
        sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
        sub_10026E6E0();
        Sequence.forEach(_:)();

        _os_log_impl(&_mh_execute_header, v47, v46, "#SiriMail UpdateMessageIntent moving message to mailbox", v37, 2u);
        sub_10026429C(v38, 0);
        sub_10026429C(v39, 0);
        UnsafeMutablePointer.deallocate()();
      }

      *(v148 + 2080) = 0;
      v33 = *(v148 + 1840);
      v34 = *(v148 + 1816);
      _objc_release(v47);
      v59(v33, v34);
      *(v148 + 16) = *(v148 + 1488);
      *(v148 + 56) = v148 + 1424;
      *(v148 + 24) = sub_10047CF88;
      v35 = swift_continuation_init();
      *(v148 + 488) = sub_10025C9B0(&unk_1006D7CE0, &unk_1004FECE0);
      *(v148 + 464) = v35;
      *(v148 + 432) = _NSConcreteStackBlock;
      *(v148 + 440) = 1107296256;
      *(v148 + 444) = 0;
      *(v148 + 448) = sub_10027D41C;
      *(v148 + 456) = &unk_100661F98;
      [v65 performInteractionWithCompletion:?];
      v10 = v148 + 16;

      goto _swift_continuation_await;
    }

    v18 = *(v148 + 1832);
    v29 = *(v148 + 1816);
    sub_100286140(*(v148 + 1776));
    v19 = Logger.appIntentLogger.unsafeMutableAddressor();
    v77(v18, v19, v29);
    v31 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    v32 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v31, v30))
    {
      v25 = static UnsafeMutablePointer.allocate(capacity:)();
      v24 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v26 = sub_1002641E8(0, v24, v24);
      v27 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v148 + 1528) = v25;
      *(v148 + 1536) = v26;
      *(v148 + 1544) = v27;
      sub_10026423C(0, (v148 + 1528));
      sub_10026423C(0, (v148 + 1528));
      *(v148 + 1552) = v32;
      v28 = swift_task_alloc();
      v28[2] = v148 + 1528;
      v28[3] = v148 + 1536;
      v28[4] = v148 + 1544;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v31, v30, "#SiriMail UpdateMessageIntent failed to build URL from raw ID String, doing nothing", v25, 2u);
      sub_10026429C(v26, 0);
      sub_10026429C(v27, 0);
      UnsafeMutablePointer.deallocate()();
    }

    v21 = *(v148 + 1832);
    v22 = *(v148 + 1816);
    _objc_release(v31);
    v59(v21, v22);
    v23 = *(v148 + 2048);

    _objc_release(v23);
    sub_10027D728((v148 + 272));
  }

  else
  {
    sub_10027D594((v148 + 352));
  }

  *(v148 + 1512) = sub_10043CEA4();
  sub_10025C9B0(&unk_1006D6FF0, &unk_1004FEA30);
  sub_10027D124();
  static IntentResult.result<A>(value:)();
  sub_100264880((v148 + 1512));

  v20 = *(*(v148 + 1488) + 8);

  v20();
}

uint64_t sub_1004751DC()
{
  v3 = *v0;
  *(*v0 + 1488) = *v0;
  v1 = *(v3 + 1936);

  return _swift_task_switch(sub_1004752FC, v1);
}

void sub_1004752FC()
{
  v244 = v0;
  v1 = *(v0 + 2008);
  v218 = *(v0 + 1433);
  *(v0 + 1488) = v0;
  _objc_release(*(v0 + 1472));
  *(v0 + 1752) = sub_10043CEA4();
  *(swift_task_alloc() + 16) = v218 & 1;
  sub_10025C9B0(&unk_1006D6FF0, &unk_1004FEA30);
  sub_10027D6A0();
  Sequence.forEach(_:)();
  if (v1)
  {

    return;
  }

  sub_100264880((v217 + 1752));
  _objc_release(*(v217 + 2000));
  v2 = sub_10046F058();
  v216 = v2;
  *(v217 + 1434) = v2;
  if (v2 != 2)
  {
    v3 = *(v217 + 1896);
    v200 = *(v217 + 1816);
    __src = *(v217 + 1768);
    v199 = *(v217 + 1824);
    *(v217 + 2096) = v2 & 1;
    v4 = sub_10046F54C();
    v201 = *(v199 + 16);
    v201(v3, v4, v200);
    v203 = swift_allocObject();
    *(v203 + 16) = v216 & 1;
    sub_1003422F0(__src, (v217 + 1072));
    v205 = swift_allocObject();
    memcpy((v205 + 16), __src, 0x30uLL);
    oslog = Logger.logObject.getter();
    v215 = static os_log_type_t.info.getter();
    v207 = swift_allocObject();
    *(v207 + 16) = 32;
    v208 = swift_allocObject();
    *(v208 + 16) = 8;
    v204 = swift_allocObject();
    *(v204 + 16) = sub_10047E36C;
    *(v204 + 24) = v203;
    v209 = swift_allocObject();
    *(v209 + 16) = sub_10026EE84;
    *(v209 + 24) = v204;
    v210 = swift_allocObject();
    *(v210 + 16) = 0;
    v211 = swift_allocObject();
    *(v211 + 16) = 8;
    v206 = swift_allocObject();
    *(v206 + 16) = sub_10047D9B0;
    *(v206 + 24) = v205;
    v212 = swift_allocObject();
    *(v212 + 16) = sub_10026E818;
    *(v212 + 24) = v206;
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    _allocateUninitializedArray<A>(_:)();
    v213 = v5;

    *v213 = sub_10026434C;
    v213[1] = v207;

    v213[2] = sub_10026434C;
    v213[3] = v208;

    v213[4] = sub_10026EF2C;
    v213[5] = v209;

    v213[6] = sub_10026434C;
    v213[7] = v210;

    v213[8] = sub_10026434C;
    v213[9] = v211;

    v213[10] = sub_10026EBF8;
    v213[11] = v212;
    sub_1002612B0();

    if (os_log_type_enabled(oslog, v215))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v195 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v197 = sub_1002641E8(0, v195, v195);
      v198 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v239 = buf;
      v240 = v197;
      v241 = v198;
      sub_10026423C(2, &v239);
      sub_10026423C(2, &v239);
      v242 = sub_10026434C;
      v243 = v207;
      sub_100264250(&v242, &v239, &v240, &v241);
      v242 = sub_10026434C;
      v243 = v208;
      sub_100264250(&v242, &v239, &v240, &v241);
      v242 = sub_10026EF2C;
      v243 = v209;
      sub_100264250(&v242, &v239, &v240, &v241);
      v242 = sub_10026434C;
      v243 = v210;
      sub_100264250(&v242, &v239, &v240, &v241);
      v242 = sub_10026434C;
      v243 = v211;
      sub_100264250(&v242, &v239, &v240, &v241);
      v242 = sub_10026EBF8;
      v243 = v212;
      sub_100264250(&v242, &v239, &v240, &v241);
      _os_log_impl(&_mh_execute_header, oslog, v215, "#SiriMail UpdateMessageIntent %s %ld messages", buf, 0x16u);
      sub_10026429C(v197, 0);
      sub_10026429C(v198, 1);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v192 = *(v217 + 1984);
    v185 = *(v217 + 1896);
    v186 = *(v217 + 1816);
    v189 = *(v217 + 1768);
    v184 = *(v217 + 1824);
    _objc_release(oslog);
    v187 = *(v184 + 8);
    v187(v185, v186);
    sub_10047E378();

    v188 = sub_10046F6B4();
    v190 = sub_100353058();
    _objc_release(v188);
    memcpy((v217 + 1120), v189, 0x30uLL);
    v191 = sub_10028E57C();
    memcpy((v217 + 1168), v189, 0x30uLL);
    v6 = sub_10028E5B4();
    v193 = sub_10027D364(v192, v190, v191, v6);
    *(v217 + 2016) = v193;
    *(v217 + 1664) = v193;
    _objc_retain(v193);
    v194 = [v193 flagState];
    _objc_release(v193);
    if (v194 != (v216 & 1))
    {
      v7 = *(v217 + 1888);
      v175 = *(v217 + 1816);
      v8 = sub_10046F54C();
      v201(v7, v8, v175);
      v176 = swift_allocObject();
      *(v176 + 16) = v216 & 1;
      log = Logger.logObject.getter();
      v183 = static os_log_type_t.info.getter();
      v178 = swift_allocObject();
      *(v178 + 16) = 32;
      v179 = swift_allocObject();
      *(v179 + 16) = 8;
      v177 = swift_allocObject();
      *(v177 + 16) = sub_10047E36C;
      *(v177 + 24) = v176;
      v180 = swift_allocObject();
      *(v180 + 16) = sub_10026EE84;
      *(v180 + 24) = v177;
      _allocateUninitializedArray<A>(_:)();
      v181 = v9;

      *v181 = sub_10026434C;
      v181[1] = v178;

      v181[2] = sub_10026434C;
      v181[3] = v179;

      v181[4] = sub_10026EF2C;
      v181[5] = v180;
      sub_1002612B0();

      if (os_log_type_enabled(log, v183))
      {
        v172 = static UnsafeMutablePointer.allocate(capacity:)();
        v171 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v173 = sub_1002641E8(0, v171, v171);
        v174 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
        v234 = v172;
        v235 = v173;
        v236 = v174;
        sub_10026423C(2, &v234);
        sub_10026423C(1, &v234);
        v237 = sub_10026434C;
        v238 = v178;
        sub_100264250(&v237, &v234, &v235, &v236);
        v237 = sub_10026434C;
        v238 = v179;
        sub_100264250(&v237, &v234, &v235, &v236);
        v237 = sub_10026EF2C;
        v238 = v180;
        sub_100264250(&v237, &v234, &v235, &v236);
        _os_log_impl(&_mh_execute_header, log, v183, "#SiriMail UpdateMessageIntent %s messages", v172, 0xCu);
        sub_10026429C(v173, 0);
        sub_10026429C(v174, 1);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      *(v217 + 2024) = 0;
      v168 = *(v217 + 1888);
      v169 = *(v217 + 1816);
      _objc_release(log);
      v187(v168, v169);
      *(v217 + 144) = *(v217 + 1488);
      *(v217 + 184) = v217 + 1456;
      *(v217 + 152) = sub_100478FCC;
      v170 = swift_continuation_init();
      *(v217 + 616) = sub_10025C9B0(&unk_1006D7CE0, &unk_1004FECE0);
      *(v217 + 592) = v170;
      *(v217 + 560) = _NSConcreteStackBlock;
      *(v217 + 568) = 1107296256;
      *(v217 + 572) = 0;
      *(v217 + 576) = sub_10027D41C;
      *(v217 + 584) = &unk_100662498;
      [v193 performInteractionWithCompletion:?];
      v10 = v217 + 144;