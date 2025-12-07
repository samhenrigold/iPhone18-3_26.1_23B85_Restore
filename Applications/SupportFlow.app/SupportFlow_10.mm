uint64_t sub_1000F5764(uint64_t a1)
{
  v1[9] = a1;
  sub_100003768(&qword_10018E490, &qword_100129F70);
  v1[10] = swift_task_alloc();
  v2 = type metadata accessor for ClientFlowPresentationState();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v3 = type metadata accessor for EnvironmentValues();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[17] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000F58EC, v5, v4);
}

uint64_t sub_1000F58EC()
{
  v1 = v0[9];

  v2 = *v1;
  LOBYTE(v1) = *(v1 + 8);

  if ((v1 & 1) == 0)
  {
    v4 = v0[15];
    v3 = v0[16];
    v5 = v0[14];
    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release(v2);
    (*(v4 + 8))(v3, v5);
    v2 = v0[6];
  }

  if (v2)
  {
    v7 = v0[10];
    v8 = v0[9];
    (*(v0[12] + 104))(v0[13], enum case for ClientFlowPresentationState.loaded(_:), v0[11]);
    SupportFlowSceneHostingClientManager.flowState.setter();
    v9 = (v8 + *(type metadata accessor for RootView(0) + 24));
    v11 = *v9;
    v10 = v9[1];
    v0[4] = v11;
    v0[5] = v10;
    sub_100003768(&qword_100192330, &qword_100130EB0);
    State.wrappedValue.getter();
    SupportFlowSceneHostingClientManager.clientBundleIdentifier.getter();
    EntryPoint.init(bundleIdentifier:)();
    v12 = type metadata accessor for EntryPoint();
    sub_100003CE8(v7, 0, 1, v12);
    sub_10008A95C(v7);
  }

  v13 = type metadata accessor for RootView(0);
  sub_1000FA024(v13);
  sub_100003768(&qword_100192330, &qword_100130EB0);
  State.wrappedValue.getter();
  sub_10008CD18();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000F5B18(uint64_t a1)
{
  v1[5] = a1;
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_1000F5BB0, v3, v2);
}

uint64_t sub_1000F5BB0()
{
  sub_100025A94();
  v1 = type metadata accessor for RootView(0);
  sub_1000FA024(v1);
  sub_100003768(&qword_100192330, &qword_100130EB0);
  State.wrappedValue.getter();
  v0[9] = v0[4];
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1000F5C6C;

  return sub_10008D8BC();
}

uint64_t sub_1000F5C6C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_1000F5DB0, v3, v2);
}

uint64_t sub_1000F5DB0()
{
  sub_100025A94();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000F5E0C(uint64_t a1)
{
  v1 = type metadata accessor for NavigationPath();
  __chkstk_darwin(v1 - 8);
  type metadata accessor for RootView(0);
  sub_100003768(&qword_100192330, &qword_100130EB0);
  State.wrappedValue.getter();
  NavigationPath.init()();
  sub_100089B88();
}

uint64_t sub_1000F5ED4(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = sub_100003768(&qword_10018E490, &qword_100129F70);
  __chkstk_darwin(v3 - 8);
  v33 = &v31 - v4;
  v5 = type metadata accessor for SupportFlowURLParameter();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  v10 = __chkstk_darwin(v9 - 8);
  v32 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v31 - v13;
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  v17 = type metadata accessor for SupportFlowIdentifier();
  v31 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v6 + 104);
  v36(v8, enum case for SupportFlowURLParameter.type(_:), v5);
  v37 = a1;
  sub_10000DF4C(v8);
  v21 = v20;
  v35 = *(v6 + 8);
  v35(v8, v5);
  if (v21)
  {
    SupportFlowIdentifier.init(rawValue:)();
    if (sub_10000E5F0(v16, 1, v17) != 1)
    {
      v22 = v31;
      (*(v31 + 32))(v19, v16, v17);
      (*(v22 + 16))(v14, v19, v17);
      sub_100003CE8(v14, 0, 1, v17);
      type metadata accessor for RootView(0);
      sub_10000EC9C(v14, v32, &unk_10018A300, &unk_1001241E0);
      sub_100003768(&qword_100192250, &qword_100130E20);
      State.wrappedValue.setter();
      sub_10000ABCC(v14, &unk_10018A300, &unk_1001241E0);
      (*(v22 + 8))(v19, v17);
      goto LABEL_6;
    }
  }

  else
  {
    sub_100003CE8(v16, 1, 1, v17);
  }

  sub_10000ABCC(v16, &unk_10018A300, &unk_1001241E0);
LABEL_6:
  v36(v8, enum case for SupportFlowURLParameter.referrer(_:), v5);
  sub_10000DF4C(v8);
  v24 = v23;
  result = (v35)(v8, v5);
  if (v24)
  {
    v26 = (v34 + *(type metadata accessor for RootView(0) + 24));
    v28 = *v26;
    v27 = v26[1];
    v38 = v28;
    v39 = v27;
    sub_100003768(&qword_100192330, &qword_100130EB0);
    State.wrappedValue.getter();
    v29 = v33;
    EntryPoint.init(bundleIdentifier:)();
    v30 = type metadata accessor for EntryPoint();
    sub_100003CE8(v29, 0, 1, v30);
    sub_10008A95C(v29);
  }

  return result;
}

void sub_1000F635C(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for SupportFlowIdentifier();
  sub_100008780();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100096D94();
  v11(v10);
  v12 = (*(v6 + 88))(v9, v4);
  if (v12 == enum case for SupportFlowIdentifier.airPods(_:))
  {
    v13 = type metadata accessor for RootView(0);
    sub_1000F9E60(v13);
    v14 = sub_100003768(&qword_100192330, &qword_100130EB0);
    sub_1000FA00C(v14);
    v15 = sub_1000F9F5C();
    v16 = type metadata accessor for AirPodsFlowViewModel(v15);
    sub_1000F9F40(v16);
    sub_1000F9E84();
    sub_10010CE88();
    sub_1000F9EBC(v17);
    sub_1000F9F1C();
LABEL_5:

    v23 = sub_100096D94();
    sub_100003768(v23, v24);
    sub_1000FA050();
    sub_1000F9E48();
    sub_10000AAEC(v25, &qword_1001923B0, &qword_100130F28, v26);
    sub_1000FA000();
    sub_10000AAEC(v27, v28, v29, v2);
    v30 = sub_1000F9E74();
    sub_1000F9FC8(v30);
    sub_1000F9E94();
    HIBYTE(v150) = 0;
LABEL_6:
    sub_100003768(&qword_1001923A0, &qword_100130F20);
    sub_100003768(&qword_1001923D0, &qword_100130F38);
    sub_1000F8A50();
    sub_1000F8B30();
    v31 = sub_1000F9E74();
    sub_10001D8F4(v31);
    sub_1000F9EDC();
    sub_1000F9EF0(v32);
    v151 = 0;
LABEL_7:
    sub_100003768(&qword_100192390, &qword_100130F18);
    sub_100003768(&qword_100192400, &qword_100130F50);
    sub_1000F89C4();
    sub_1000F8C10();
    v33 = sub_1000F9E74();
    sub_10001D8F4(v33);
    sub_1000F9F2C();
    sub_1000F9F04(v34);
    v152 = 0;
    goto LABEL_8;
  }

  if (v12 == enum case for SupportFlowIdentifier.accountPhoneNumber(_:))
  {
    v18 = type metadata accessor for RootView(0);
    sub_1000F9E60(v18);
    v19 = sub_100003768(&qword_100192330, &qword_100130EB0);
    sub_1000FA00C(v19);
    v20 = sub_1000F9F5C();
    v21 = type metadata accessor for TrustedPhoneNumberFlowViewModel(v20);
    sub_1000F9F40(v21);
    sub_1000F9E84();
    sub_100105248();
    sub_1000F9EBC(v22);
    sub_1000F9EA8();
    goto LABEL_5;
  }

  if (v12 == enum case for SupportFlowIdentifier.battery(_:))
  {
    v38 = type metadata accessor for RootView(0);
    sub_1000F9E60(v38);
    v39 = sub_100003768(&qword_100192330, &qword_100130EB0);
    sub_1000FA00C(v39);
    v40 = sub_1000F9F5C();
    v41 = type metadata accessor for BatteryFlowViewModel(v40);
    sub_1000F9F40(v41);
    v42 = sub_1000F9E84();
    v43 = sub_10006C7FC(v42);
    sub_1000F9EBC(v43);
    sub_1000F9F1C();
LABEL_14:

    v50 = sub_100096D94();
    sub_100003768(v50, v51);
    sub_1000FA050();
    sub_1000F9E48();
    sub_10000AAEC(v52, &qword_1001923E0, &qword_100130F40, v53);
    sub_1000FA000();
    sub_10000AAEC(v54, v55, v56, v2);
    v57 = sub_1000F9E74();
    sub_1000F9FC8(v57);
    sub_1000F9E94();
    HIBYTE(v150) = 1;
    goto LABEL_6;
  }

  if (v12 == enum case for SupportFlowIdentifier.compromisedAccount(_:))
  {
    v44 = type metadata accessor for RootView(0);
    sub_1000F9E60(v44);
    v45 = sub_100003768(&qword_100192330, &qword_100130EB0);
    sub_1000FA00C(v45);
    v46 = sub_1000F9F5C();
    v47 = type metadata accessor for CompromisedAccountFlowViewModel(v46);
    sub_1000F9F40(v47);
    v48 = sub_1000F9E84();
    v49 = sub_1000402F4(v48);
    sub_1000F9EBC(v49);
    sub_1000F9EA8();
    goto LABEL_14;
  }

  if (v12 == enum case for SupportFlowIdentifier.disabledAccount(_:))
  {
    v58 = type metadata accessor for RootView(0);
    sub_1000F9E60(v58);
    v59 = sub_100003768(&qword_100192330, &qword_100130EB0);
    sub_1000FA00C(v59);
    v60 = sub_1000F9F5C();
    v61 = type metadata accessor for DisabledAccountFlowViewModel(v60);
    sub_1000F9F40(v61);
    v62 = sub_1000F9E84();
    v63 = sub_1000AFEE4(v62);
    sub_1000F9EBC(v63);
    sub_1000F9F1C();
LABEL_19:

    v70 = sub_100096D94();
    sub_100003768(v70, v71);
    sub_1000FA050();
    sub_1000F9E48();
    sub_10000AAEC(v72, &qword_100192420, &qword_100130F60, v73);
    sub_1000FA000();
    sub_10000AAEC(v74, v75, v76, v2);
    v77 = sub_1000F9E74();
    sub_1000F9FC8(v77);
    sub_1000F9E94();
    HIBYTE(v150) = 0;
    sub_100003768(&qword_100192410, &qword_100130F58);
    sub_100003768(&qword_100192440, &qword_100130F70);
    sub_1000F8C9C();
    sub_1000F8D7C();
    v78 = sub_1000F9E74();
    sub_10001D8F4(v78);
    sub_1000F9EDC();
    sub_1000F9EF0(v79);
    v151 = 1;
    goto LABEL_7;
  }

  if (v12 == enum case for SupportFlowIdentifier.forgotPassword(_:))
  {
    v64 = type metadata accessor for RootView(0);
    sub_1000F9E60(v64);
    v65 = sub_100003768(&qword_100192330, &qword_100130EB0);
    sub_1000FA00C(v65);
    v66 = sub_1000F9F5C();
    v67 = type metadata accessor for ForgotPasswordFlowViewModel(v66);
    sub_1000F9F40(v67);
    v68 = sub_1000F9E84();
    v69 = sub_10000BBA0(v68);
    sub_1000F9EBC(v69);
    sub_1000F9EA8();
    goto LABEL_19;
  }

  if (v12 == enum case for SupportFlowIdentifier.mail(_:))
  {
    v80 = type metadata accessor for RootView(0);
    sub_1000F9E60(v80);
    v81 = sub_100003768(&qword_100192330, &qword_100130EB0);
    sub_1000FA00C(v81);
    v82 = sub_1000F9F5C();
    v83 = type metadata accessor for MailFlowViewModel(v82);
    sub_1000F9F40(v83);
    v84 = sub_1000F9E84();
    v85 = sub_100024440(v84);
    sub_1000F9EBC(v85);
    sub_1000F9F1C();
LABEL_24:

    v92 = sub_100096D94();
    sub_100003768(v92, v93);
    sub_1000FA050();
    sub_1000F9E48();
    sub_10000AAEC(v94, &qword_100192450, &qword_100130F78, v95);
    sub_1000FA000();
    sub_10000AAEC(v96, v97, v98, v2);
    v99 = sub_1000F9E74();
    sub_1000F9FC8(v99);
    sub_1000F9E94();
    HIBYTE(v150) = 1;
    sub_100003768(&qword_100192410, &qword_100130F58);
    sub_100003768(&qword_100192440, &qword_100130F70);
    sub_1000F8C9C();
    sub_1000F8D7C();
    v100 = sub_1000F9E74();
    sub_10001D8F4(v100);
    sub_1000F9EDC();
    sub_1000F9EF0(v101);
    v151 = 1;
    goto LABEL_7;
  }

  if (v12 == enum case for SupportFlowIdentifier.messages(_:))
  {
    v86 = type metadata accessor for RootView(0);
    sub_1000F9E60(v86);
    v87 = sub_100003768(&qword_100192330, &qword_100130EB0);
    sub_1000FA00C(v87);
    v88 = sub_1000F9F5C();
    v89 = type metadata accessor for MessagesFlowViewModel(v88);
    sub_1000F9F40(v89);
    v90 = sub_1000F9E84();
    v91 = sub_1000DD6B8(v90);
    sub_1000F9EBC(v91);
    sub_1000F9EA8();
    goto LABEL_24;
  }

  if (v12 == enum case for SupportFlowIdentifier.purchases(_:))
  {
    v102 = type metadata accessor for RootView(0);
    sub_1000F9E60(v102);
    v103 = sub_100003768(&qword_100192330, &qword_100130EB0);
    sub_1000FA00C(v103);
    v104 = sub_1000F9F5C();
    v105 = type metadata accessor for PurchasesFlowViewModel(v104);
    sub_1000F9F40(v105);
    v106 = sub_1000F9E84();
    v107 = sub_1000C9B38(v106);
    sub_1000F9EBC(v107);
    sub_1000F9F1C();
LABEL_29:

    v114 = sub_100096D94();
    sub_100003768(v114, v115);
    sub_1000FA050();
    sub_1000F9E48();
    sub_10000AAEC(v116, &qword_1001924A0, &qword_100130FA0, v117);
    sub_1000FA000();
    sub_10000AAEC(v118, v119, v120, v2);
    v121 = sub_1000F9E74();
    sub_1000F9FC8(v121);
    sub_1000F9E94();
    HIBYTE(v150) = 0;
    sub_100003768(&qword_100192490, &qword_100130F98);
    sub_100003768(&qword_1001924C0, &qword_100130FB0);
    sub_1000F8F74();
    sub_1000F9054();
    v122 = sub_1000F9E74();
    sub_10001D8F4(v122);
    sub_1000F9EDC();
    sub_1000F9EF0(v123);
    v151 = 0;
    sub_100003768(&qword_100192480, &qword_100130F90);
    sub_1000F8EE8();
    sub_1000F9134();
    sub_1000FA09C();
    sub_1000F9F2C();
    sub_1000F9F04(v124);
    v152 = 1;
    goto LABEL_8;
  }

  if (v12 == enum case for SupportFlowIdentifier.screenRepair(_:))
  {
    v108 = type metadata accessor for RootView(0);
    sub_1000F9E60(v108);
    v109 = sub_100003768(&qword_100192330, &qword_100130EB0);
    sub_1000FA00C(v109);
    v110 = sub_1000F9F5C();
    v111 = type metadata accessor for ScreenRepairFlowViewModel(v110);
    sub_1000F9F40(v111);
    v112 = sub_1000F9E84();
    v113 = sub_10007CF50(v112);
    sub_1000F9EBC(v113);
    sub_1000F9EA8();
    goto LABEL_29;
  }

  if (v12 == enum case for SupportFlowIdentifier.softwareUpdate(_:))
  {
    v125 = type metadata accessor for RootView(0);
    sub_1000F9E60(v125);
    v126 = sub_100003768(&qword_100192330, &qword_100130EB0);
    sub_1000FA00C(v126);
    v127 = sub_1000F9F5C();
    updated = type metadata accessor for SoftwareUpdateFlowViewModel(v127);
    sub_1000F9F40(updated);
    v129 = sub_1000F9E84();
    v130 = sub_100056AC8(v129);
    sub_1000F9EBC(v130);
    sub_1000F9F1C();
  }

  else
  {
    if (v12 != enum case for SupportFlowIdentifier.wifi(_:))
    {
      v149[1] = xmmword_100130DE0;
      v150 = 0;
      v151 = 1;
      sub_100003768(&qword_100192480, &qword_100130F90);
      sub_1000F8EE8();
      sub_1000F9134();
      _ConditionalContent<>.init(storage:)();
      sub_1000F9F2C();
      sub_1000F9F04(v148);
      v152 = 1;
      v1 = sub_100003768(&qword_100192380, &qword_100130F10);
      v35 = sub_100003768(&qword_100192470, &qword_100130F88);
      sub_1000F8938();
      sub_1000F8E5C();
      sub_1000F9E74();
      _ConditionalContent<>.init(storage:)();
      v149[0] = v153;
      sub_1000FA068();
      (*(v6 + 8))(v9, v4);
      v37 = v149[0];
      goto LABEL_9;
    }

    v131 = type metadata accessor for RootView(0);
    sub_1000F9E60(v131);
    v132 = sub_100003768(&qword_100192330, &qword_100130EB0);
    sub_1000FA00C(v132);
    v133 = sub_1000F9F5C();
    v134 = type metadata accessor for WiFiFlowViewModel(v133);
    sub_1000F9F40(v134);
    v135 = sub_1000F9E84();
    v136 = sub_10005F718(v135);
    sub_1000F9EBC(v136);
    sub_1000F9EA8();
  }

  v137 = sub_100096D94();
  sub_100003768(v137, v138);
  sub_1000FA050();
  sub_1000F9E48();
  sub_10000AAEC(v139, &qword_1001924D0, &qword_100130FB8, v140);
  sub_1000FA000();
  sub_10000AAEC(v141, v142, v143, v2);
  v144 = sub_1000F9E74();
  sub_1000F9FC8(v144);
  sub_1000F9E94();
  HIBYTE(v150) = 1;
  sub_100003768(&qword_100192490, &qword_100130F98);
  sub_100003768(&qword_1001924C0, &qword_100130FB0);
  sub_1000F8F74();
  sub_1000F9054();
  v145 = sub_1000F9E74();
  sub_10001D8F4(v145);
  sub_1000F9EDC();
  sub_1000F9EF0(v146);
  v151 = 0;
  sub_100003768(&qword_100192480, &qword_100130F90);
  sub_1000F8EE8();
  sub_1000F9134();
  sub_1000FA09C();
  sub_1000F9F2C();
  sub_1000F9F04(v147);
  v152 = 1;
LABEL_8:
  sub_100003768(&qword_100192380, &qword_100130F10);
  v35 = sub_100003768(&qword_100192470, &qword_100130F88);
  sub_1000F8938();
  sub_1000F8E5C();
  v36 = sub_1000F9E74();
  sub_10001D8F4(v36);

  sub_1000FA068();
LABEL_9:
  *a1 = v37;
  *(a1 + 16) = v1;
  *(a1 + 18) = BYTE2(v1);
  *(a1 + 19) = v35;
}

uint64_t sub_1000F6F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TipSearchView();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for RootView(0) + 24));
  v9 = *v8;
  v10 = v8[1];
  v15 = *v8;
  v16 = v10;
  sub_100003768(&qword_100192330, &qword_100130EB0);
  State.wrappedValue.getter();
  v11 = sub_10008B570();

  if (v11)
  {
    v15 = v9;
    v16 = v10;
    State.wrappedValue.getter();
    sub_10008A9A0();

    TipSearchView.init(viewModel:displaySectionHeader:maxResultsCount:)();
    (*(v5 + 32))(a2, v7, v4);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  return sub_100003CE8(a2, v12, 1, v4);
}

uint64_t sub_1000F7110@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100003768(&qword_100192508, &qword_100130FE0);
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v22[-v7];
  v9 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v22[-v10];
  v12 = type metadata accessor for SupportFlowIdentifier();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *a1;
  v27 = type metadata accessor for FlowViewDataProvider(0);
  sub_1000910DC(v16, v11);
  if (sub_10000E5F0(v11, 1, v12) == 1)
  {
    sub_10000ABCC(v11, &unk_10018A300, &unk_1001241E0);
    v17 = 1;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_1000F635C(&v36);
    v24 = v37;
    v25 = v36;
    v26 = v38 | (v39 << 16);
    v23 = v40;
    v31 = v36;
    v32 = v37;
    v34 = v39;
    v33 = v38;
    v35 = v40;
    v18 = (a2 + *(type metadata accessor for RootView(0) + 24));
    v20 = *v18;
    v19 = v18[1];
    v29 = v20;
    v30 = v19;
    sub_100003768(&qword_100192330, &qword_100130EB0);
    State.wrappedValue.getter();
    sub_100003768(&qword_100192370, &qword_100130F08);
    sub_1000F88AC();
    sub_1000F9718(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
    View.environment<A>(_:)();

    sub_1000F9BD4(v25, v24, v26, v23);
    (*(v13 + 8))(v15, v12);
    (*(v28 + 32))(a3, v8, v6);
    v17 = 0;
  }

  return sub_100003CE8(a3, v17, 1, v6);
}

uint64_t sub_1000F7484(uint64_t a1, uint64_t a2)
{
  sub_1000F635C(v7);
  v2 = v7[0];
  v3 = v7[1];
  v4 = v8 | (v9 << 16);
  v5 = v10;
  type metadata accessor for RootView(0);
  sub_100003768(&qword_100192330, &qword_100130EB0);
  State.wrappedValue.getter();
  sub_100003768(&qword_100192370, &qword_100130F08);
  type metadata accessor for FlowViewDataProvider(0);
  sub_1000F88AC();
  sub_1000F9718(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
  View.environment<A>(_:)();

  return sub_1000F9BD4(v2, v3, v4, v5);
}

uint64_t sub_1000F75D4()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *(v1 + 8);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release(v6);
    (*(v3 + 8))(v5, v2);
    v6 = v17;
  }

  if (v6 && (v9 = SupportFlowSceneHostingClientManager.showsSearchBar.getter(), , (v9 & 1) == 0))
  {
    v14 = 0;
  }

  else
  {
    v10 = (v1 + *(type metadata accessor for RootView(0) + 24));
    v12 = *v10;
    v11 = v10[1];
    v17 = v12;
    v18 = v11;
    sub_100003768(&qword_100192330, &qword_100130EB0);
    v13 = State.wrappedValue.getter();
    v14 = sub_10008B648(v13);
  }

  return v14 & 1;
}

uint64_t sub_1000F7794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a2;
  v66 = a1;
  v72 = a3;
  v4 = type metadata accessor for RootView(0);
  v5 = v4 - 8;
  v71 = *(v4 - 8);
  v70 = *(v71 + 64);
  __chkstk_darwin(v4);
  v69 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v54[0] = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v65 = type metadata accessor for SearchFieldPlacement();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v74 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_100003768(&qword_100192550, &qword_100131000);
  v68 = *(v67 - 8);
  __chkstk_darwin(v67);
  v73 = v54 - v11;
  v12 = (a2 + *(v5 + 32));
  v14 = *v12;
  v13 = v12[1];
  v89 = v14;
  v90 = v13;
  v15 = v14;
  v62 = v14;
  v16 = v13;
  v61 = v13;
  v60 = sub_100003768(&qword_100192330, &qword_100130EB0);
  State.projectedValue.getter();
  v17 = v75;
  v18 = v76;
  v19 = v77;
  swift_getKeyPath();
  v93 = v17;
  v94 = v18;
  v95 = v19;
  sub_100003768(&qword_100192338, &qword_100130EE0);
  Binding.subscript.getter();

  v58 = v89;
  v57 = v90;
  v59 = v91;
  v56 = v92;

  v86 = v15;
  v87 = v16;
  State.projectedValue.getter();
  v20 = v75;
  v21 = v76;
  v22 = v77;
  swift_getKeyPath();
  v86 = v20;
  v87 = v21;
  v88 = v22;
  Binding.subscript.getter();

  v54[2] = v83;
  v54[1] = v84;
  v55 = v85;

  static SearchFieldPlacement.toolbar.getter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v23 = String.init(localized:table:bundle:locale:comment:)();
  v54[0] = v24;
  v81 = v23;
  v82 = v24;
  v25 = sub_100003768(&qword_1001924F0, &qword_100130FC8);
  v26 = sub_100004D48(&qword_100192500, &qword_100130FD8);
  v27 = type metadata accessor for SupportFlowIdentifier();
  v28 = sub_100004D48(&qword_100192508, &qword_100130FE0);
  v29 = sub_100004D48(&qword_100192510, &qword_100130FE8);
  v30 = sub_1000AAFE0();
  v31 = sub_100004D48(&qword_100192518, &qword_100130FF0);
  v32 = sub_1000F9188();
  v33 = sub_1000F9718(&qword_100192540, sub_1000AAFE0, &protocol conformance descriptor for NSObject);
  v34 = sub_1000F9294();
  v75 = v29;
  v76 = v30;
  v77 = v31;
  v78 = v32;
  v79 = v33;
  v80 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = sub_1000F9718(&qword_10018E498, &type metadata accessor for SupportFlowIdentifier, &protocol conformance descriptor for SupportFlowIdentifier);
  v37 = sub_100004D48(&qword_100192370, &qword_100130F08);
  v38 = type metadata accessor for FlowViewDataProvider(255);
  v39 = sub_1000F88AC();
  v40 = sub_1000F9718(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
  v75 = v37;
  v76 = v38;
  v77 = v39;
  v78 = v40;
  v41 = swift_getOpaqueTypeConformance2();
  v75 = v26;
  v76 = v27;
  v77 = v28;
  v78 = OpaqueTypeConformance2;
  v79 = v36;
  v80 = v41;
  v42 = swift_getOpaqueTypeConformance2();
  v53 = sub_10000AC24();
  v43 = v74;
  View.searchable<A>(text:isPresented:placement:prompt:)();

  (*(v64 + 8))(v43, v65);
  v75 = v62;
  v76 = v61;
  State.wrappedValue.getter();
  v44 = sub_10008B67C();
  v46 = v45;

  v89 = v44;
  v90 = v46;
  v47 = v69;
  sub_1000F93F8(v63, v69);
  v48 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v49 = swift_allocObject();
  sub_1000F9460(v47, v49 + v48);
  v75 = v25;
  v76 = &type metadata for String;
  v77 = v42;
  v78 = v53;
  swift_getOpaqueTypeConformance2();
  v50 = v67;
  v51 = v73;
  View.onChange<A>(of:initial:_:)();

  return (*(v68 + 8))(v51, v50);
}

void sub_1000F8058(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  type metadata accessor for RootView(0);
  sub_100003768(&qword_100192330, &qword_100130EB0);
  State.wrappedValue.getter();
  v3 = sub_10008A9A0();

  v4 = objc_allocWithZone(type metadata accessor for TPSAppSearchQuery());

  TPSAppSearchQuery.init(searchTerm:origin:identifier:)();
  dispatch thunk of SearchResultsViewModel.searchQuery.setter();
}

uint64_t sub_1000F8118@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.sceneHostingClientManager.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000F8144@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.sceneHostingClientManager.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for RootView(uint64_t a1)
{
  result = qword_1001922B0;
  if (!qword_1001922B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F8200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003768(&qword_100192250, &qword_100130E20);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return sub_10000E5F0(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000F82D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003768(&qword_100192250, &qword_100130E20);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_100003CE8(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_1000F8388(uint64_t a1)
{
  sub_1000F847C(319, &qword_1001922C0, &qword_1001922C8, &qword_100130E38, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_1000F847C(319, &qword_1001922D0, &unk_10018A300, &unk_1001241E0, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_1000F84E0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000F847C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100004D48(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1000F84E0(uint64_t a1)
{
  if (!qword_1001922D8)
  {
    type metadata accessor for FlowViewDataProvider(255);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_1001922D8);
    }
  }
}

unint64_t sub_1000F8564()
{
  result = qword_100192360;
  if (!qword_100192360)
  {
    sub_100004D48(&qword_100192358, &qword_100130F00);
    sub_1000F88AC();
    sub_100004D48(&qword_1001924F0, &qword_100130FC8);
    sub_100004D48(&qword_1001924F8, &qword_100130FD0);
    sub_100004D48(&qword_100192500, &qword_100130FD8);
    type metadata accessor for SupportFlowIdentifier();
    sub_100004D48(&qword_100192508, &qword_100130FE0);
    sub_100004D48(&qword_100192510, &qword_100130FE8);
    sub_1000AAFE0();
    sub_100004D48(&qword_100192518, &qword_100130FF0);
    sub_1000F9188();
    sub_1000F9718(&qword_100192540, sub_1000AAFE0, &protocol conformance descriptor for NSObject);
    sub_1000F9294();
    swift_getOpaqueTypeConformance2();
    sub_1000F9718(&qword_10018E498, &type metadata accessor for SupportFlowIdentifier, &protocol conformance descriptor for SupportFlowIdentifier);
    sub_100004D48(&qword_100192370, &qword_100130F08);
    type metadata accessor for FlowViewDataProvider(255);
    sub_1000F9718(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100004D48(&qword_100192550, &qword_100131000);
    sub_10000AC24();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192360);
  }

  return result;
}

unint64_t sub_1000F88AC()
{
  result = qword_100192368;
  if (!qword_100192368)
  {
    sub_100004D48(&qword_100192370, &qword_100130F08);
    sub_1000F8938();
    sub_1000F8E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192368);
  }

  return result;
}

unint64_t sub_1000F8938()
{
  result = qword_100192378;
  if (!qword_100192378)
  {
    sub_100004D48(&qword_100192380, &qword_100130F10);
    sub_1000F89C4();
    sub_1000F8C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192378);
  }

  return result;
}

unint64_t sub_1000F89C4()
{
  result = qword_100192388;
  if (!qword_100192388)
  {
    sub_100004D48(&qword_100192390, &qword_100130F18);
    sub_1000F8A50();
    sub_1000F8B30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192388);
  }

  return result;
}

unint64_t sub_1000F8A50()
{
  result = qword_100192398;
  if (!qword_100192398)
  {
    sub_100004D48(&qword_1001923A0, &qword_100130F20);
    sub_10000AAEC(&qword_1001923A8, &qword_1001923B0, &qword_100130F28, &unk_1001237B0);
    sub_10000AAEC(&qword_1001923B8, &qword_1001923C0, &qword_100130F30, &unk_1001237B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192398);
  }

  return result;
}

unint64_t sub_1000F8B30()
{
  result = qword_1001923C8;
  if (!qword_1001923C8)
  {
    sub_100004D48(&qword_1001923D0, &qword_100130F38);
    sub_10000AAEC(&qword_1001923D8, &qword_1001923E0, &qword_100130F40, &unk_1001237B0);
    sub_10000AAEC(&qword_1001923E8, &qword_1001923F0, &qword_100130F48, &unk_1001237B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001923C8);
  }

  return result;
}

unint64_t sub_1000F8C10()
{
  result = qword_1001923F8;
  if (!qword_1001923F8)
  {
    sub_100004D48(&qword_100192400, &qword_100130F50);
    sub_1000F8C9C();
    sub_1000F8D7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001923F8);
  }

  return result;
}

unint64_t sub_1000F8C9C()
{
  result = qword_100192408;
  if (!qword_100192408)
  {
    sub_100004D48(&qword_100192410, &qword_100130F58);
    sub_10000AAEC(&qword_100192418, &qword_100192420, &qword_100130F60, &unk_1001237B0);
    sub_10000AAEC(&qword_100192428, &qword_100192430, &qword_100130F68, &unk_1001237B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192408);
  }

  return result;
}

unint64_t sub_1000F8D7C()
{
  result = qword_100192438;
  if (!qword_100192438)
  {
    sub_100004D48(&qword_100192440, &qword_100130F70);
    sub_10000AAEC(&qword_100192448, &qword_100192450, &qword_100130F78, &unk_1001237B0);
    sub_10000AAEC(&qword_100192458, &qword_100192460, &qword_100130F80, &unk_1001237B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192438);
  }

  return result;
}

unint64_t sub_1000F8E5C()
{
  result = qword_100192468;
  if (!qword_100192468)
  {
    sub_100004D48(&qword_100192470, &qword_100130F88);
    sub_1000F8EE8();
    sub_1000F9134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192468);
  }

  return result;
}

unint64_t sub_1000F8EE8()
{
  result = qword_100192478;
  if (!qword_100192478)
  {
    sub_100004D48(&qword_100192480, &qword_100130F90);
    sub_1000F8F74();
    sub_1000F9054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192478);
  }

  return result;
}

unint64_t sub_1000F8F74()
{
  result = qword_100192488;
  if (!qword_100192488)
  {
    sub_100004D48(&qword_100192490, &qword_100130F98);
    sub_10000AAEC(&qword_100192498, &qword_1001924A0, &qword_100130FA0, &unk_1001237B0);
    sub_10000AAEC(&qword_1001924A8, &qword_1001924B0, &qword_100130FA8, &unk_1001237B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192488);
  }

  return result;
}

unint64_t sub_1000F9054()
{
  result = qword_1001924B8;
  if (!qword_1001924B8)
  {
    sub_100004D48(&qword_1001924C0, &qword_100130FB0);
    sub_10000AAEC(&qword_1001924C8, &qword_1001924D0, &qword_100130FB8, &unk_1001237B0);
    sub_10000AAEC(&qword_1001924D8, &qword_1001924E0, &qword_100130FC0, &unk_1001237B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001924B8);
  }

  return result;
}

unint64_t sub_1000F9134()
{
  result = qword_1001924E8;
  if (!qword_1001924E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001924E8);
  }

  return result;
}

unint64_t sub_1000F9188()
{
  result = qword_100192520;
  if (!qword_100192520)
  {
    sub_100004D48(&qword_100192510, &qword_100130FE8);
    sub_1000F9240();
    sub_10000AAEC(&qword_100192530, &qword_100192538, &qword_100130FF8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192520);
  }

  return result;
}

unint64_t sub_1000F9240()
{
  result = qword_100192528;
  if (!qword_100192528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192528);
  }

  return result;
}

unint64_t sub_1000F9294()
{
  result = qword_100192548;
  if (!qword_100192548)
  {
    sub_100004D48(&qword_100192518, &qword_100130FF0);
    sub_100004D48(&qword_100192370, &qword_100130F08);
    type metadata accessor for FlowViewDataProvider(255);
    sub_1000F88AC();
    sub_1000F9718(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192548);
  }

  return result;
}

unint64_t sub_1000F93A4()
{
  result = qword_100192560;
  if (!qword_100192560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192560);
  }

  return result;
}

uint64_t sub_1000F93F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F9460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F94C4()
{
  sub_100025A94();
  v2 = type metadata accessor for RootView(0);
  sub_10000ED84(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000659C0;

  return sub_1000F5764(v0 + v4);
}

uint64_t sub_1000F9588()
{
  sub_100025A94();
  v2 = type metadata accessor for RootView(0);
  sub_10000ED84(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10006B9C4;

  return sub_1000F5B18(v0 + v4);
}

unint64_t sub_1000F9664()
{
  result = qword_100192570;
  if (!qword_100192570)
  {
    sub_100004D48(&unk_10018A300, &unk_1001241E0);
    sub_1000F9718(&qword_100188FA8, &type metadata accessor for SupportFlowIdentifier, &protocol conformance descriptor for SupportFlowIdentifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192570);
  }

  return result;
}

uint64_t sub_1000F9718(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F9760(uint64_t a1)
{
  v2 = type metadata accessor for RootView(0);
  sub_10000ED84(v2);
  sub_1000FA040();

  return sub_1000F5ED4(a1, v3);
}

uint64_t sub_1000F97CC(uint64_t a1)
{
  sub_100003768(&qword_100192358, &qword_100130F00);
  sub_10000AF7C();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1000F982C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10008A5C4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000F989C(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for RootView(0);
  sub_10000ED84(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t sub_1000F990C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RootView(0);
  sub_10000ED84(v4);
  sub_1000FA040();

  return sub_1000F7110(a1, v5, a2);
}

uint64_t sub_1000F9980(uint64_t a1)
{
  v2 = type metadata accessor for RootView(0);
  sub_10000ED84(v2);
  sub_1000FA040();

  return sub_1000F7484(a1, v3);
}

uint64_t sub_1000F9A0C()
{
  v1 = type metadata accessor for RootView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  j__swift_release(*(v0 + v4));
  v5 = v0 + v4 + *(v1 + 20);
  v6 = type metadata accessor for SupportFlowIdentifier();
  if (!sub_10000E5F0(v5, 1, v6))
  {
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  sub_100003768(&qword_100192250, &qword_100130E20);

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

void sub_1000F9B58(uint64_t a1, uint64_t *a2)
{
  v5 = type metadata accessor for RootView(0);
  sub_10000ED84(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  sub_1000F8058(a1, a2, v7);
}

uint64_t sub_1000F9BD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_1000F9C94(a1, a2, a3, BYTE2(a3) & 1);
  }

  else
  {
    return sub_1000F9BE8(a1, a2, a3);
  }
}

uint64_t sub_1000F9C5C(uint64_t a1, uint64_t a2)
{
}

uint64_t sub_1000F9C94(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return sub_1000F9CF0(a1, a2, a3, BYTE1(a3) & 1, sub_1000F9E28, sub_1000F9E28);
  }
}

uint64_t sub_1000F9CF0(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v6 = a3 & 1;
  if (a4)
  {
    return a6(a1, a2, v6);
  }

  else
  {
    return a5(a1, a2, v6);
  }
}

uint64_t sub_1000F9D08()
{
  v0 = sub_100004D48(&qword_100192328, &qword_100130EA8);
  v1 = sub_100004D48(&qword_100192320, &qword_100130EA0);
  sub_100004D48(&unk_10018A300, &unk_1001241E0);
  v2 = sub_100004D48(&qword_100192318, &qword_100130E98);
  v3 = sub_100004D48(&qword_100192310, &qword_100130E90);
  sub_1000F9F80();
  sub_10000AAEC(v4, &qword_100192310, &qword_100130E90, v5);
  sub_1000F9FB0();
  sub_1000FA0BC(v6, v7, v8, v9, v10, v11, v12, v13, v3);
  sub_1000F9F98();
  sub_1000FA0BC(v14, v15, v16, v17, v18, v19, v20, v21, v2);
  sub_1000F9664();
  sub_1000F9F68();
  v37 = sub_1000FA0BC(v22, v23, v24, v25, v26, v27, v28, v29, v1);
  return sub_1000FA0BC(v37, &opaque type descriptor for <<opaque return type of View.onOpenSupportFlowURL(perform:)>>, v30, v31, v32, v33, v34, v35, v0);
}

uint64_t sub_1000F9E60(uint64_t result)
{
  v3 = (v1 + *(result + 24));
  v5 = *v3;
  v4 = v3[1];
  *(v2 - 112) = v5;
  *(v2 - 104) = v4;
  return result;
}

__n128 sub_1000F9E94()
{
  v1 = *(v0 - 96);
  result = *(v0 - 112);
  *(v0 - 144) = result;
  *(v0 - 128) = v1;
  return result;
}

void sub_1000F9EA8()
{
  v1 = *(v0 - 104);
  *(v0 - 144) = *(v0 - 112);
  *(v0 - 136) = v1;
  *(v0 - 128) = 1;
}

void *sub_1000F9EBC(uint64_t a1)
{
  *(v1 - 144) = a1;

  return State.init(wrappedValue:)();
}

__n128 sub_1000F9EF0@<Q0>(__int16 a1@<W8>)
{
  result = *(v2 - 112);
  *(v2 - 144) = result;
  *(v2 - 128) = v1 | a1;
  return result;
}

__n128 sub_1000F9F04@<Q0>(__int16 a1@<W8>)
{
  result = *(v2 - 112);
  *(v2 - 144) = result;
  *(v2 - 126) = BYTE2(v1);
  *(v2 - 128) = a1;
  return result;
}

void sub_1000F9F1C()
{
  v1 = *(v0 - 104);
  *(v0 - 144) = *(v0 - 112);
  *(v0 - 136) = v1;
  *(v0 - 128) = 0;
}

uint64_t sub_1000F9F40(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1000F9FC8(uint64_t a1)
{

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000F9FE4()
{

  return swift_getOpaqueTypeConformance2();
}

void *sub_1000FA00C(uint64_t a1)
{

  return State.wrappedValue.getter();
}

uint64_t sub_1000FA024(uint64_t result)
{
  v3 = (v1 + *(result + 24));
  v5 = *v3;
  v4 = v3[1];
  *(v2 + 16) = v5;
  *(v2 + 24) = v4;
  return result;
}

uint64_t sub_1000FA050()
{

  return sub_100003768(v0, v1);
}

uint64_t sub_1000FA07C()
{

  return sub_10000EC9C(v1, v0, v2, v3);
}

uint64_t sub_1000FA09C()
{

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000FA0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000FA100(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

uint64_t sub_1000FA240@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a2;
  v28 = a1;
  v29 = a5;
  v7 = type metadata accessor for ActionInfoType(0);
  sub_10000AF7C();
  v9 = __chkstk_darwin(v8);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v26[-v12];
  v14 = sub_100003768(&qword_10018ADD0, &unk_1001256A0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v26[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v15);
  v20 = &v26[-v19];
  __chkstk_darwin(v18);
  v22 = &v26[-v21];
  v26[-v21] = 0;
  swift_storeEnumTagMultiPayload();
  sub_100003CE8(v22, 0, 1, v7);
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  sub_10000EC9C(v22, v20, &qword_10018ADD0, &unk_1001256A0);
  sub_10000EC9C(v32, v30, &qword_100189310, &qword_1001221A0);
  sub_10000EC9C(v20, v17, &qword_10018ADD0, &unk_1001256A0);
  if (sub_10000E5F0(v17, 1, v7) == 1)
  {

    sub_10000ABCC(v20, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v32, &qword_100189310, &qword_1001221A0);
    sub_10000ABCC(v22, &qword_10018ADD0, &unk_1001256A0);
    v23 = 0;
  }

  else
  {
    sub_10003F558(v17, v13);
    type metadata accessor for ActionInfo(0);
    sub_10003F5BC(v13, v11);

    v23 = sub_1000ED69C(v11, 1, 0, 0);
    sub_10003F620(v13);
    sub_10000ABCC(v20, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v32, &qword_100189310, &qword_1001221A0);
    sub_10000ABCC(v22, &qword_10018ADD0, &unk_1001256A0);
  }

  v34[0] = a3;
  v34[1] = a4;
  v39 = 0;
  v40 = v23;
  v35 = v30[0];
  v36 = v30[1];
  v37 = v31;
  v38 = 0;
  v41 = 0;
  v42 = 0;
  v24 = swift_allocObject();
  *(v24 + 16) = v28;
  *(v24 + 24) = v27 & 1;
  *(v24 + 32) = a3;
  *(v24 + 40) = a4;

  sub_100003768(&unk_1001893B0, &unk_100121480);
  sub_100004CE4();
  View.onForeground(perform:)();

  return sub_10000ABCC(v34, &unk_1001893B0, &unk_100121480);
}

uint64_t sub_1000FA5F0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  type metadata accessor for MainActor();
  *(v4 + 40) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 48) = v6;
  *(v4 + 56) = v5;

  return _swift_task_switch(sub_1000FA690, v6, v5);
}

uint64_t sub_1000FA690()
{
  *(v0 + 64) = sub_1000FA100(*(v0 + 16), *(v0 + 80) & 1);
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1000FA734;

  return sub_10010F044();
}

uint64_t sub_1000FA734()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_1000FA878, v3, v2);
}

uint64_t sub_1000FA878()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000FA8F0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000FA930()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000D870;

  return sub_1000FA5F0(v2, v3, v5, v4);
}

uint64_t sub_1000FA9E8()
{
  sub_100004D48(&unk_1001893B0, &unk_100121480);
  sub_100004CE4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000FAA4C()
{
  sub_10006F388();
  v0 = sub_1000FAE34();
  return sub_100096CE8(v0);
}

uint64_t sub_1000FAA98()
{
  sub_10006F388();
  v0 = sub_1000FAEF0();
  return sub_100096CE8(v0);
}

uint64_t sub_1000FAAE4()
{
  sub_10006F388();
  v0 = sub_1000FAFAC();
  return sub_100096CE8(v0);
}

uint64_t sub_1000FAB54(uint64_t a1)
{
  v2 = type metadata accessor for DefaultFlowOverride(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002CE08(a1, v4);
  return sub_1000FB1A4(v4);
}

uint64_t sub_1000FABE0()
{
  sub_10006F388();
  v0 = sub_1000FB228();
  return sub_100096CE8(v0);
}

uint64_t sub_1000FAC2C()
{
  sub_10006F388();
  result = sub_1000FB2E4();
  *v0 = result;
  return result;
}

uint64_t sub_1000FAC78()
{
  sub_10006F388();
  result = sub_1000FB3CC();
  *v0 = result;
  return result;
}

uint64_t sub_1000FACC4()
{
  sub_10006F388();
  v0 = sub_1000FB4B4();
  return sub_100096CE8(v0);
}

uint64_t sub_1000FAD10()
{
  sub_10006F388();
  v0 = sub_1000FB570();
  return sub_100096CE8(v0);
}

uint64_t sub_1000FAD5C()
{
  sub_10006F388();
  v0 = sub_1000FB62C();
  return sub_100096CE8(v0);
}

uint64_t sub_1000FADA8()
{
  sub_10006F388();
  result = sub_1000FB6E8();
  *v0 = result;
  return result;
}

uint64_t sub_1000FADF4()
{
  type metadata accessor for FlowDebugCoordinator(0);
  v0 = swift_allocObject();
  result = sub_1000FB7B8(v0);
  qword_1001A5950 = result;
  return result;
}

uint64_t sub_1000FAE34()
{
  swift_getKeyPath();
  sub_1000FC8BC();
  sub_1000FBFA4(v1);
  sub_1000FC8E0();
  return v0 & 1;
}

uint64_t sub_1000FAE80()
{
  swift_getKeyPath();
  sub_1000FC87C();
  sub_1000FC8C8();
  sub_1000FC88C(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t sub_1000FAEF0()
{
  swift_getKeyPath();
  sub_1000FC8BC();
  sub_1000FBFA4(v1);
  sub_1000FC8E0();
  return v0 & 1;
}

uint64_t sub_1000FAF3C()
{
  swift_getKeyPath();
  sub_1000FC87C();
  sub_1000FC8C8();
  sub_1000FC88C(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t sub_1000FAFAC()
{
  KeyPath = swift_getKeyPath();
  sub_1000FBFA4(KeyPath);
  sub_1000FC8E0();
  return v0 & 1;
}

uint64_t sub_1000FB004()
{
  KeyPath = swift_getKeyPath();
  sub_1000FC88C(KeyPath, v1, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t sub_1000FB088@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003768(&qword_1001927A8, &qword_100131370);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  swift_getKeyPath();
  sub_1000FC8BC();
  sub_1000FB940(v4);

  v5 = type metadata accessor for DefaultFlowOverride(0);
  if (sub_10000E5F0(v4, 1, v5) != 1)
  {
    return sub_100067C54(v4, a1);
  }

  v6 = type metadata accessor for SupportFlowIdentifier();
  sub_100003CE8(a1, 1, 1, v6);
  result = sub_10000E5F0(v4, 1, v5);
  if (result != 1)
  {
    return sub_1000FC718(v4);
  }

  return result;
}

uint64_t sub_1000FB1A4(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  sub_1000FC88C(KeyPath, v3, v4, v5, v6, v7, v8, v9, v11);

  return sub_1000FC6BC(a1);
}

uint64_t sub_1000FB228()
{
  swift_getKeyPath();
  sub_1000FC8BC();
  sub_1000FBFA4(v1);
  sub_1000FC8E0();
  return v0 & 1;
}

uint64_t sub_1000FB274()
{
  swift_getKeyPath();
  sub_1000FC87C();
  sub_1000FC8C8();
  sub_1000FC88C(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t sub_1000FB2E4()
{
  KeyPath = swift_getKeyPath();
  sub_1000FBB38(KeyPath, 0xD000000000000019, 0x800000010013A310, sub_100063E64);
  sub_1000FC8F8();
  if (v1 == 5)
  {
    return 1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1000FB354()
{
  swift_getKeyPath();
  v0 = sub_1000FC8A8();
  sub_1000FBC84(v0, v1, 0xD000000000000019, v2, v3);
}

uint64_t sub_1000FB3CC()
{
  KeyPath = swift_getKeyPath();
  sub_1000FBB38(KeyPath, 0xD00000000000001DLL, 0x800000010013A2F0, sub_10006F5C8);
  sub_1000FC8F8();
  if (v1 == 5)
  {
    return 0;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1000FB43C()
{
  swift_getKeyPath();
  v0 = sub_1000FC8A8();
  sub_1000FBC84(v0, v1, 0xD00000000000001DLL, v2, v3);
}

uint64_t sub_1000FB4B4()
{
  swift_getKeyPath();
  sub_1000FC8BC();
  sub_1000FBFA4(v1);
  sub_1000FC8E0();
  return v0 & 1;
}

uint64_t sub_1000FB500()
{
  swift_getKeyPath();
  sub_1000FC87C();
  sub_1000FC8C8();
  sub_1000FC88C(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t sub_1000FB570()
{
  swift_getKeyPath();
  sub_1000FC8BC();
  sub_1000FBFA4(v1);
  sub_1000FC8E0();
  return v0 & 1;
}

uint64_t sub_1000FB5BC()
{
  swift_getKeyPath();
  sub_1000FC87C();
  sub_1000FC8C8();
  sub_1000FC88C(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t sub_1000FB62C()
{
  swift_getKeyPath();
  sub_1000FC8BC();
  sub_1000FBFA4(v1);
  sub_1000FC8E0();
  return v0 & 1;
}

uint64_t sub_1000FB678()
{
  swift_getKeyPath();
  sub_1000FC87C();
  sub_1000FC8C8();
  sub_1000FC88C(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t sub_1000FB6E8()
{
  swift_getKeyPath();
  sub_1000FC8BC();
  sub_1000FB7FC(v2);
  sub_1000FC8F8();
  if (v1 == 4)
  {
    return 1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1000FB740()
{
  swift_getKeyPath();
  v0 = sub_1000FC8A8();
  sub_1000FBC84(v0, v1, 0xD000000000000020, v2, v3);
}

uint64_t sub_1000FB7B8(uint64_t a1)
{
  ObservationRegistrar.init()();
  if ((static Bool.isInternal.getter() & 1) == 0)
  {

    return 0;
  }

  return v1;
}

unint64_t sub_1000FB7FC(uint64_t a1)
{
  sub_1000FC31C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
  if ((static Bool.allowOverrides.getter() & 1) == 0)
  {
    return 4;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000BBF20(&v5, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  sub_100003768(&unk_10018A520, &unk_100124310);
  if (!swift_dynamicCast())
  {
    return 4;
  }

  result = sub_10009DA0C(v5);
  if (result == 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_1000FB940@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_100003768(&qword_1001927A8, &qword_100131370);
  __chkstk_darwin(v4 - 8);
  v6 = v15 - v5;
  *&v16[0] = v2;
  sub_1000FC31C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
  if (static Bool.allowOverrides.getter())
  {
    v7 = [objc_opt_self() standardUserDefaults];
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000BBF20(v15, v16);
    }

    else
    {
      memset(v16, 0, sizeof(v16));
    }

    sub_100003768(&unk_10018A520, &unk_100124310);
    if (swift_dynamicCast())
    {
      sub_100067714(*&v15[0], *(&v15[0] + 1), v6);
      v10 = type metadata accessor for DefaultFlowOverride(0);
      if (sub_10000E5F0(v6, 1, v10) != 1)
      {
        sub_100067C54(v6, a2);
        v12 = a2;
        v13 = 0;
        v11 = v10;
        return sub_100003CE8(v12, v13, 1, v11);
      }

      sub_1000FC718(v6);
    }
  }

  v11 = type metadata accessor for DefaultFlowOverride(0);
  v12 = a2;
  v13 = 1;
  return sub_100003CE8(v12, v13, 1, v11);
}

uint64_t sub_1000FBB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  sub_1000FC31C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
  if ((static Bool.allowOverrides.getter() & 1) == 0)
  {
    return 5;
  }

  v5 = [objc_opt_self() standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000BBF20(&v9, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  sub_100003768(&unk_10018A520, &unk_100124310);
  if (!swift_dynamicCast())
  {
    return 5;
  }

  result = a4(v9, *(&v9 + 1));
  if (result == 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_1000FBC84(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v6[2] = &v7;
  v6[3] = a3;
  v6[4] = a4;
  return sub_1000FC114(a2, a5, v6);
}

void sub_1000FBCCC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v4 = sub_1000680C0();
  v5 = v1;
  v2 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v3 = String._bridgeToObjectiveC()();
  [v0 setValue:v2 forKey:{v3, v4, v5}];

  swift_unknownObjectRelease();
}

void sub_1000FBD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = [objc_opt_self() standardUserDefaults];
  v10 = a4(a1);
  v11 = v7;
  v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v9 = String._bridgeToObjectiveC()();
  [v6 setValue:v8 forKey:{v9, v10, v11}];

  swift_unknownObjectRelease();
}

void sub_1000FBE58(char a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = 0xE800000000000000;
  v4 = 0x7265735561746562;
  v5 = v2;
  switch(a1)
  {
    case 1:
      v3 = 0xE400000000000000;
      v4 = 1701736302;
      break;
    case 2:
      v4 = 0xD000000000000010;
      v3 = 0x8000000100132FD0;
      break;
    case 3:
      v3 = 0x8000000100132FF0;
      v4 = 0xD000000000000012;
      break;
    default:
      break;
  }

  v8 = v4;
  v9 = v3;
  v6 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v7 = String._bridgeToObjectiveC()();
  [v5 setValue:v6 forKey:{v7, v8, v9}];

  swift_unknownObjectRelease();
}

id sub_1000FBFA4(uint64_t a1)
{
  if ((static Bool.allowOverrides.getter() & 1) == 0)
  {
    return 0;
  }

  sub_1000FC31C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  return v3;
}

void sub_1000FC070()
{
  v0 = [objc_opt_self() standardUserDefaults];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v0 setValue:isa forKey:v2];
}

uint64_t sub_1000FC19C()
{
  v1 = OBJC_IVAR____TtC11SupportFlow20FlowDebugCoordinator___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for FlowDebugCoordinator(uint64_t a1)
{
  result = qword_1001925C8;
  if (!qword_1001925C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FC28C(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000FC31C()
{
  result = qword_10018EC30;
  if (!qword_10018EC30)
  {
    type metadata accessor for FlowDebugCoordinator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EC30);
  }

  return result;
}

uint64_t sub_1000FC374()
{
  sub_10006F388();
  result = sub_1000FB6E8();
  *v0 = result;
  return result;
}

uint64_t sub_1000FC458()
{
  sub_10006F388();
  v0 = sub_1000FB62C();
  return sub_100096CE8(v0);
}

uint64_t sub_1000FC4C4()
{
  sub_10006F388();
  v0 = sub_1000FB570();
  return sub_100096CE8(v0);
}

uint64_t sub_1000FC510()
{
  sub_10006F388();
  v0 = sub_1000FB4B4();
  return sub_100096CE8(v0);
}

uint64_t sub_1000FC55C()
{
  sub_10006F388();
  result = sub_1000FB3CC();
  *v0 = result;
  return result;
}

uint64_t sub_1000FC5C4()
{
  sub_10006F388();
  result = sub_1000FB2E4();
  *v0 = result;
  return result;
}

uint64_t sub_1000FC62C()
{
  sub_10006F388();
  v0 = sub_1000FB228();
  return sub_100096CE8(v0);
}

uint64_t sub_1000FC6BC(uint64_t a1)
{
  v2 = type metadata accessor for DefaultFlowOverride(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000FC718(uint64_t a1)
{
  v2 = sub_100003768(&qword_1001927A8, &qword_100131370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000FC780()
{
  sub_10006F388();
  v0 = sub_1000FAFAC();
  return sub_100096CE8(v0);
}

uint64_t sub_1000FC7CC()
{
  sub_10006F388();
  v0 = sub_1000FAEF0();
  return sub_100096CE8(v0);
}

uint64_t sub_1000FC818()
{
  sub_10006F388();
  v0 = sub_1000FAE34();
  return sub_100096CE8(v0);
}

uint64_t sub_1000FC88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1000FC114(a1, v9, &a9);
}

uint64_t sub_1000FC8E0()
{
}

uint64_t sub_1000FC8F8()
{
}

uint64_t *defaults.unsafeMutableAddressor()
{
  if (qword_100188368 != -1)
  {
    swift_once();
  }

  return &defaults;
}

uint64_t sub_1000FC990()
{
  type metadata accessor for Defaults(0);
  v0 = swift_allocObject();
  v1 = (v0 + OBJC_IVAR____TtC11SupportFlow8Defaults__lastNotifiedAboutVPN);
  v2 = *(sub_100003768(&qword_100188460, &qword_100120AB0) + 28);
  v3 = type metadata accessor for Date();
  result = sub_100003CE8(v1 + v2, 1, 1, v3);
  *v1 = 0xD000000000000019;
  v1[1] = 0x80000001001337F0;
  defaults = v0;
  return result;
}

uint64_t Defaults.lastNotifiedAboutVPN.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_100003768(&qword_100188460, &qword_100120AB0);
  sub_10000ED84(v4);
  sub_10000ED78();
  __chkstk_darwin(v5);
  sub_1000FE5D8();
  v6 = OBJC_IVAR____TtC11SupportFlow8Defaults__lastNotifiedAboutVPN;
  swift_beginAccess();
  sub_100006578(v1 + v6, v2, &qword_100188460, &qword_100120AB0);
  sub_1000FCAF8(a1);
  return sub_10001D724(v2, &qword_100188460, &qword_100120AB0);
}

uint64_t sub_1000FCAF8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003768(&qword_100192918, &unk_1001314C0);
  __chkstk_darwin(v3 - 8);
  v5 = v12 - v4;
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000BBF20(v12, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_100003768(&unk_10018A520, &unk_100124310);
  v9 = sub_100003768(&qword_10018C850, &qword_1001277D0);
  if (swift_dynamicCast())
  {
    sub_100003CE8(v5, 0, 1, v9);
    return sub_1000FE568(v5, a1);
  }

  else
  {
    sub_100003CE8(v5, 1, 1, v9);
    v11 = sub_100003768(&qword_100188460, &qword_100120AB0);
    return sub_100006578(v1 + *(v11 + 28), a1, &qword_10018C850, &qword_1001277D0);
  }
}

uint64_t UserDefault.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 + 16);
  v7 = type metadata accessor for Optional();
  sub_10000ED84(v7);
  sub_10000ED78();
  __chkstk_darwin(v8);
  sub_1000FE5D8();
  v9 = [objc_opt_self() standardUserDefaults];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 objectForKey:v10];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000BBF20(&v13, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  sub_100003768(&unk_10018A520, &unk_100124310);
  if (swift_dynamicCast())
  {
    sub_100003CE8(v3, 0, 1, v6);
    return (*(*(v6 - 8) + 32))(a2, v3, v6);
  }

  else
  {
    sub_100003CE8(v3, 1, 1, v6);
    return (*(*(v6 - 8) + 16))(a2, v2 + *(a1 + 28), v6);
  }
}

uint64_t Defaults.lastNotifiedAboutVPN.setter(uint64_t a1)
{
  v3 = sub_100003768(&qword_10018C850, &qword_1001277D0);
  sub_10000ED84(v3);
  sub_10000ED78();
  __chkstk_darwin(v4);
  sub_1000FE5D8();
  sub_100006578(a1, v1, &qword_10018C850, &qword_1001277D0);
  swift_beginAccess();
  sub_1000FCF58(v1);
  swift_endAccess();
  return sub_10001D724(a1, &qword_10018C850, &qword_1001277D0);
}

uint64_t sub_1000FCF58(uint64_t a1)
{
  v2 = sub_100003768(&qword_10018C850, &qword_1001277D0);
  __chkstk_darwin(v2);
  v38 = &v35[-v3];
  v4 = type metadata accessor for Mirror.DisplayStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v37 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100003768(&qword_1001927B8, &qword_100131480);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v35[-v9];
  v11 = sub_100003768(&qword_1001927C0, &qword_100131488);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v12);
  v17 = &v35[-v16];
  __chkstk_darwin(v15);
  v19 = &v35[-v18];
  v20 = type metadata accessor for Mirror();
  v40 = *(v20 - 8);
  v41 = v20;
  __chkstk_darwin(v20);
  v39 = v2;
  v43[3] = v2;
  v22 = &v35[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_10003EE2C(v43);
  v42 = a1;
  sub_100006578(a1, v23, &qword_10018C850, &qword_1001277D0);
  Mirror.init(reflecting:)();
  Mirror.displayStyle.getter();
  (*(v5 + 104))(v17, enum case for Mirror.DisplayStyle.optional(_:), v4);
  sub_100003CE8(v17, 0, 1, v4);
  v24 = *(v8 + 56);
  sub_100006578(v19, v10, &qword_1001927C0, &qword_100131488);
  sub_100006578(v17, &v10[v24], &qword_1001927C0, &qword_100131488);
  if (sub_10000E5F0(v10, 1, v4) == 1)
  {
    sub_10001D724(v17, &qword_1001927C0, &qword_100131488);
    sub_10001D724(v19, &qword_1001927C0, &qword_100131488);
    if (sub_10000E5F0(&v10[v24], 1, v4) == 1)
    {
      sub_10001D724(v10, &qword_1001927C0, &qword_100131488);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_100006578(v10, v14, &qword_1001927C0, &qword_100131488);
  if (sub_10000E5F0(&v10[v24], 1, v4) == 1)
  {
    sub_10001D724(v17, &qword_1001927C0, &qword_100131488);
    sub_10001D724(v19, &qword_1001927C0, &qword_100131488);
    (*(v5 + 8))(v14, v4);
LABEL_6:
    sub_10001D724(v10, &qword_1001927B8, &qword_100131480);
LABEL_10:
    v32 = [objc_opt_self() standardUserDefaults];
    v31 = v42;
    sub_100006578(v42, v38, &qword_10018C850, &qword_1001277D0);
    v33 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v30 = String._bridgeToObjectiveC()();
    [v32 setObject:v33 forKey:v30];

    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v25 = &v10[v24];
  v26 = v37;
  (*(v5 + 32))(v37, v25, v4);
  v36 = dispatch thunk of static Equatable.== infix(_:_:)();
  v27 = *(v5 + 8);
  v27(v26, v4);
  sub_10001D724(v17, &qword_1001927C0, &qword_100131488);
  sub_10001D724(v19, &qword_1001927C0, &qword_100131488);
  v27(v14, v4);
  sub_10001D724(v10, &qword_1001927C0, &qword_100131488);
  if ((v36 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  Mirror.children.getter();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v28 = static AnyIndex.== infix(_:_:)();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v28 & 1) == 0)
  {
    goto LABEL_10;
  }

  v29 = [objc_opt_self() standardUserDefaults];
  v30 = String._bridgeToObjectiveC()();
  [v29 removeObjectForKey:v30];

  v31 = v42;
LABEL_11:

  sub_10001D724(v31, &qword_10018C850, &qword_1001277D0);
  return (*(v40 + 8))(v22, v41);
}

uint64_t UserDefault.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Mirror.DisplayStyle();
  sub_10003DBE4();
  v6 = v5;
  __chkstk_darwin(v7);
  v44 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100003768(&qword_1001927B8, &qword_100131480) - 8;
  sub_10000ED78();
  __chkstk_darwin(v10);
  v12 = &v42[-v11];
  v13 = sub_100003768(&qword_1001927C0, &qword_100131488);
  v14 = sub_10000ED84(v13);
  v15 = __chkstk_darwin(v14);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v15);
  v20 = &v42[-v19];
  __chkstk_darwin(v18);
  v22 = &v42[-v21];
  type metadata accessor for Mirror();
  sub_10003DBE4();
  v47 = v24;
  v48 = v23;
  __chkstk_darwin(v23);
  v26 = &v42[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = *(a2 + 16);
  v50[3] = v27;
  v28 = sub_10003EE2C(v50);
  v45 = *(v27 - 8);
  v29 = *(v45 + 16);
  v49 = a1;
  v29(v28, a1, v27);
  Mirror.init(reflecting:)();
  v46 = v26;
  Mirror.displayStyle.getter();
  (*(v6 + 104))(v20, enum case for Mirror.DisplayStyle.optional(_:), v4);
  sub_100003CE8(v20, 0, 1, v4);
  v30 = *(v9 + 56);
  sub_100006578(v22, v12, &qword_1001927C0, &qword_100131488);
  sub_100006578(v20, &v12[v30], &qword_1001927C0, &qword_100131488);
  sub_1000FE600(v12);
  if (v32)
  {
    sub_1000FE5E8(v20);
    sub_1000FE5E8(v22);
    sub_1000FE600(&v12[v30]);
    if (v32)
    {
      sub_10001D724(v12, &qword_1001927C0, &qword_100131488);
      v31 = v46;
      goto LABEL_11;
    }

LABEL_9:
    sub_10001D724(v12, &qword_1001927B8, &qword_100131480);
    v31 = v46;
LABEL_13:
    v39 = [objc_opt_self() standardUserDefaults];
    v38 = v49;
    v40 = _bridgeAnythingToObjectiveC<A>(_:)();
    v37 = String._bridgeToObjectiveC()();
    [v39 setObject:v40 forKey:v37];

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  sub_100006578(v12, v17, &qword_1001927C0, &qword_100131488);
  sub_1000FE600(&v12[v30]);
  if (v32)
  {
    sub_1000FE5E8(v20);
    sub_1000FE5E8(v22);
    (*(v6 + 8))(v17, v4);
    goto LABEL_9;
  }

  v33 = v44;
  (*(v6 + 32))(v44, &v12[v30], v4);
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  v34 = *(v6 + 8);
  v34(v33, v4);
  sub_10001D724(v20, &qword_1001927C0, &qword_100131488);
  sub_10001D724(v22, &qword_1001927C0, &qword_100131488);
  v34(v17, v4);
  sub_10001D724(v12, &qword_1001927C0, &qword_100131488);
  v31 = v46;
  if ((v43 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  Mirror.children.getter();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v35 = static AnyIndex.== infix(_:_:)();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v35 & 1) == 0)
  {
    goto LABEL_13;
  }

  v36 = [objc_opt_self() standardUserDefaults];
  v37 = String._bridgeToObjectiveC()();
  [v36 removeObjectForKey:v37];

  v38 = v49;
LABEL_14:

  (*(v45 + 8))(v38, v27);
  return (*(v47 + 8))(v31, v48);
}

void (*Defaults.lastNotifiedAboutVPN.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_1000FDF48(0x38uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = sub_100003768(&qword_10018C850, &qword_1001277D0);
  sub_10000ED84(v4);
  v6 = *(v5 + 64);
  v3[4] = sub_1000FDF48(v6);
  v7 = sub_1000FDF48(v6);
  v8 = OBJC_IVAR____TtC11SupportFlow8Defaults__lastNotifiedAboutVPN;
  v3[5] = v7;
  v3[6] = v8;
  swift_beginAccess();
  sub_1000FCAF8(v7);
  return sub_1000FDC44;
}

void sub_1000FDC44(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 32);
  if (a2)
  {
    sub_100006578(*(*a1 + 40), v4, &qword_10018C850, &qword_1001277D0);
    sub_1000FCF58(v4);
    sub_10001D724(v3, &qword_10018C850, &qword_1001277D0);
  }

  else
  {
    sub_1000FCF58(*(*a1 + 40));
  }

  swift_endAccess();
  free(v3);
  free(v4);

  free(v2);
}

uint64_t Defaults.__deallocating_deinit()
{
  sub_10001D724(v0 + OBJC_IVAR____TtC11SupportFlow8Defaults__lastNotifiedAboutVPN, &qword_100188460, &qword_100120AB0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void (*UserDefault.wrappedValue.modify(uint64_t **a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = sub_1000FDF48(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v5[2] = *(a2 + 16);
  sub_10003DBE4();
  *(v6 + 24) = v7;
  v9 = *(v8 + 64);
  v5[4] = sub_1000FDF48(v9);
  v10 = sub_1000FDF48(v9);
  v5[5] = v10;
  UserDefault.wrappedValue.getter(a2, v10);
  return sub_1000FDE88;
}

void sub_1000FDE88(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    UserDefault.wrappedValue.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    UserDefault.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

void *sub_1000FDF48(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t type metadata accessor for Defaults(uint64_t a1)
{
  result = qword_1001927F0;
  if (!qword_1001927F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000FDFD0(uint64_t a1)
{
  sub_1000FE060(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000FE060(uint64_t a1)
{
  if (!qword_100192800)
  {
    v2 = sub_100004D48(&qword_10018C850, &qword_1001277D0);
    v5 = type metadata accessor for UserDefault(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_100192800);
    }
  }
}

uint64_t sub_1000FE0E4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000FE164(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 16) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return sub_10000E5F0((a1 + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1000FE2F4(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 < a2)
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        return;
      case 2:
        *&a1[v11] = v17;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x1000FE540);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if ((v8 & 0x80000000) != 0)
        {
          v21 = &a1[v10 + 16] & ~v10;

          sub_100003CE8(v21, a2, v8, v6);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          *(a1 + 1) = 0;
        }

        else
        {
          *(a1 + 1) = (a2 - 1);
        }
      }

      return;
  }
}

uint64_t sub_1000FE568(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018C850, &qword_1001277D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FE5E8(uint64_t a1)
{

  return sub_10001D724(a1, v1, v2);
}

uint64_t sub_1000FE640(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FlowStepContentOption(0);
  sub_100008780();
  __chkstk_darwin(v5);
  sub_10000C30C();
  v8 = v7 - v6;
  sub_10010072C();
  result = sub_100100830();
  v10 = 0;
  if (v3)
  {
    while (1)
    {
      v11 = v10;
LABEL_6:
      sub_1001007A0(__clz(__rbit64(v3)) | (v11 << 6));
      if (!swift_getEnumCaseMultiPayload())
      {
        break;
      }

      v3 &= v3 - 1;
      result = sub_1000E2928(v8);
      v10 = v11;
      if (!v3)
      {
        goto LABEL_3;
      }
    }

    return *v8;
  }

  else
  {
LABEL_3:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v2)
      {

        return 0;
      }

      v3 = *(a2 + 56 + 8 * v11);
      ++v10;
      if (v3)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1000FE780()
{
  sub_100017C00();
  v3 = v2;
  v5 = v4;
  type metadata accessor for FlowStepContentOption(0);
  sub_100008780();
  __chkstk_darwin(v6);
  sub_10000C30C();
  v9 = v8 - v7;
  sub_10010072C();
  sub_100100850();
  v10 = 0;
  if (v1)
  {
    while (1)
    {
      v11 = v10;
LABEL_6:
      sub_1001007C0();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      v1 &= v1 - 1;
      sub_1000E2928(v9);
      v10 = v11;
      if (!v1)
      {
        goto LABEL_3;
      }
    }

    sub_10002CE6C(v9, v5, &qword_10018AB50, &qword_100125290);
LABEL_10:
    sub_100017C18();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v0)
      {

        v12 = type metadata accessor for ImageResource();
        sub_100100870(v12);
        goto LABEL_10;
      }

      v1 = *(v3 + 56 + 8 * v11);
      ++v10;
      if (v1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1000FE8D0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FlowStepContentOption(0);
  sub_100008780();
  __chkstk_darwin(v5);
  sub_10000C30C();
  v8 = v7 - v6;
  sub_10010072C();
  result = sub_100100830();
  v10 = 0;
  if (v3)
  {
    while (1)
    {
      v11 = v10;
LABEL_6:
      sub_1001007A0(__clz(__rbit64(v3)) | (v11 << 6));
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        break;
      }

      v3 &= v3 - 1;
      result = sub_1000E2928(v8);
      v10 = v11;
      if (!v3)
      {
        goto LABEL_3;
      }
    }

    return *v8;
  }

  else
  {
LABEL_3:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v2)
      {

        return 0;
      }

      v3 = *(a2 + 56 + 8 * v11);
      ++v10;
      if (v3)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1000FEA14()
{
  sub_100017C00();
  v3 = v2;
  v5 = v4;
  type metadata accessor for FlowStepContentOption(0);
  sub_100008780();
  __chkstk_darwin(v6);
  sub_10000C30C();
  v9 = v8 - v7;
  sub_10010072C();
  sub_100100850();
  v10 = 0;
  if (v1)
  {
    while (1)
    {
      v11 = v10;
LABEL_6:
      sub_1001007C0();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        break;
      }

      v1 &= v1 - 1;
      sub_1000E2928(v9);
      v10 = v11;
      if (!v1)
      {
        goto LABEL_3;
      }
    }

    sub_10002CE6C(v9, v5, &qword_10018B400, &unk_100125CC0);
LABEL_10:
    sub_100017C18();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v0)
      {

        v12 = type metadata accessor for ConstellationContentParagraphStyle();
        sub_100100870(v12);
        goto LABEL_10;
      }

      v1 = *(v3 + 56 + 8 * v11);
      ++v10;
      if (v1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

void sub_1000FEB64()
{
  sub_100017C00();
  v76 = v0;
  v77 = v1;
  v75 = type metadata accessor for ConstellationContentParagraphStyle();
  sub_100008780();
  v72 = v2;
  __chkstk_darwin(v3);
  sub_10000C30C();
  v68 = v5 - v4;
  v6 = sub_100003768(&qword_10018B400, &unk_100125CC0);
  sub_10000ED84(v6);
  sub_10000ED78();
  __chkstk_darwin(v7);
  v70 = &v66 - v8;
  v9 = sub_100003768(&qword_100192928, &unk_1001314D0);
  sub_10000AF7C();
  sub_10000ED78();
  __chkstk_darwin(v10);
  v74 = &v66 - v11;
  v73 = type metadata accessor for ImageResource();
  sub_100008780();
  v71 = v12;
  __chkstk_darwin(v13);
  sub_10000C30C();
  v67 = v15 - v14;
  v16 = sub_100003768(&qword_10018AB50, &qword_100125290);
  sub_10000ED84(v16);
  sub_10000ED78();
  __chkstk_darwin(v17);
  v69 = &v66 - v18;
  v19 = sub_100003768(&qword_100192930, &qword_1001314E0);
  sub_10000AF7C();
  sub_10000ED78();
  __chkstk_darwin(v20);
  v22 = &v66 - v21;
  type metadata accessor for FlowStepContentOption(0);
  sub_10000AF7C();
  __chkstk_darwin(v23);
  sub_100012454();
  v26 = v24 - v25;
  v28 = __chkstk_darwin(v27);
  v30 = (&v66 - v29);
  v31 = __chkstk_darwin(v28);
  v33 = &v66 - v32;
  __chkstk_darwin(v31);
  v35 = (&v66 - v34);
  v36 = sub_100003768(&qword_100192938, &qword_1001314E8);
  sub_10000ED84(v36);
  sub_10000ED78();
  v38 = __chkstk_darwin(v37);
  v40 = &v66 - v39;
  v41 = (&v66 + *(v38 + 56) - v39);
  sub_1000E28C4(v76, &v66 - v39);
  sub_1000E28C4(v77, v41);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1000E28C4(v40, v33);
      if (sub_100100804() != 1)
      {
        v55 = &qword_10018AB50;
        v56 = &qword_100125290;
        v57 = v33;
        goto LABEL_31;
      }

      v53 = *(v19 + 48);
      sub_100100890(v33, v22);
      sub_100100890(v41, &v22[v53]);
      v54 = v73;
      if (sub_10000E5F0(v22, 1, v73) == 1)
      {
        sub_100100778(&v22[v53]);
        if (v45)
        {
          v50 = &qword_10018AB50;
          v51 = &qword_100125290;
          v52 = v22;
          goto LABEL_44;
        }
      }

      else
      {
        v59 = v69;
        sub_10002BE60(v22, v69, &qword_10018AB50, &qword_100125290);
        sub_100100778(&v22[v53]);
        if (!v45)
        {
          (*(v71 + 32))(v67, &v22[v53], v54);
          sub_100100760();
          sub_100100570(v63, v64, &protocol conformance descriptor for ImageResource);
          dispatch thunk of static Equatable.== infix(_:_:)();
          v65 = sub_10010081C();
          (qword_100125290)(v65);
          (qword_100125290)(v59, v54);
          v50 = &qword_10018AB50;
          v51 = &qword_100125290;
          v52 = v22;
          goto LABEL_44;
        }

        (*(v71 + 8))(v59, v54);
      }

      v50 = &qword_100192930;
      v51 = &qword_1001314E0;
      v52 = v22;
      goto LABEL_44;
    case 2u:
      sub_1000E28C4(v40, v30);
      v43 = *v30;
      v42 = v30[1];
      if (sub_100100804() == 2)
      {
        goto LABEL_7;
      }

      goto LABEL_3;
    case 3u:
      sub_1000E28C4(v40, v26);
      if (sub_100100804() == 3)
      {
        v46 = *(v9 + 48);
        v47 = v26;
        v48 = v74;
        sub_100100890(v47, v74);
        sub_100100890(v41, v48 + v46);
        v49 = v75;
        if (sub_10000E5F0(v48, 1, v75) == 1)
        {
          sub_100100778(v48 + v46);
          if (!v45)
          {
            goto LABEL_38;
          }

          v50 = &qword_10018B400;
          v51 = &unk_100125CC0;
          v52 = v48;
        }

        else
        {
          v58 = v70;
          sub_10002BE60(v48, v70, &qword_10018B400, &unk_100125CC0);
          sub_100100778(v48 + v46);
          if (v45)
          {
            (*(v72 + 8))(v58, v49);
LABEL_38:
            v50 = &qword_100192928;
            v51 = &unk_1001314D0;
            v52 = v48;
            goto LABEL_44;
          }

          (*(v72 + 32))(v68, v48 + v46, v49);
          sub_100100748();
          sub_100100570(v60, v61, &protocol conformance descriptor for ConstellationContentParagraphStyle);
          dispatch thunk of static Equatable.== infix(_:_:)();
          v62 = sub_10010081C();
          (unk_100125CC0)(v62);
          (unk_100125CC0)(v58, v49);
          v50 = &qword_10018B400;
          v51 = &unk_100125CC0;
          v52 = v48;
        }

LABEL_44:
        sub_10000ABCC(v52, v50, v51);
        goto LABEL_45;
      }

      v55 = &qword_10018B400;
      v56 = &unk_100125CC0;
      v57 = v26;
LABEL_31:
      sub_10000ABCC(v57, v55, v56);
LABEL_32:
      sub_10000ABCC(v40, &qword_100192938, &qword_1001314E8);
      goto LABEL_46;
    case 4u:
      if (sub_100100804() == 4)
      {
        goto LABEL_45;
      }

      goto LABEL_32;
    case 5u:
      if (sub_100100804() == 5)
      {
        goto LABEL_45;
      }

      goto LABEL_32;
    case 6u:
      if (sub_100100804() == 6)
      {
        goto LABEL_45;
      }

      goto LABEL_32;
    default:
      sub_1000E28C4(v40, v35);
      v43 = *v35;
      v42 = v35[1];
      if (sub_100100804())
      {
LABEL_3:

        goto LABEL_32;
      }

LABEL_7:
      v44 = v41[1];
      if (!v42)
      {
        if (!v44)
        {
          goto LABEL_45;
        }

        goto LABEL_34;
      }

      if (!v44)
      {
LABEL_34:

        goto LABEL_45;
      }

      v45 = v43 == *v41 && v42 == v44;
      if (!v45)
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
      }

LABEL_45:
      sub_1000E2928(v40);
LABEL_46:
      sub_100017C18();
      return;
  }
}

void sub_1000FF33C()
{
  sub_100017C00();
  type metadata accessor for ConstellationContentParagraphStyle();
  sub_100008780();
  v48 = v2;
  v49 = v1;
  __chkstk_darwin(v1);
  sub_10000C30C();
  v47 = v4 - v3;
  v5 = sub_100003768(&qword_10018B400, &unk_100125CC0);
  v6 = sub_10000ED84(v5);
  __chkstk_darwin(v6);
  sub_100012454();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  v13 = type metadata accessor for ImageResource();
  sub_100008780();
  v46 = v14;
  __chkstk_darwin(v15);
  sub_10000C30C();
  v18 = v17 - v16;
  v19 = sub_100003768(&qword_10018AB50, &qword_100125290);
  v20 = sub_10000ED84(v19);
  __chkstk_darwin(v20);
  sub_100012454();
  v23 = v21 - v22;
  __chkstk_darwin(v24);
  v26 = &v46 - v25;
  type metadata accessor for FlowStepContentOption(0);
  sub_10000AF7C();
  __chkstk_darwin(v27);
  sub_10000C30C();
  v30 = v29 - v28;
  sub_1000E28C4(v0, v29 - v28);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_10002CE6C(v30, v26, &qword_10018AB50, &qword_100125290);
      Hasher._combine(_:)(3uLL);
      sub_10002BE60(v26, v23, &qword_10018AB50, &qword_100125290);
      sub_100100778(v23);
      if (v35)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v43 = v46;
        (*(v46 + 32))(v18, v23, v13);
        Hasher._combine(_:)(1u);
        sub_100100760();
        sub_100100570(v44, v45, &protocol conformance descriptor for ImageResource);
        dispatch thunk of Hashable.hash(into:)();
        (*(v43 + 8))(v18, v13);
      }

      v40 = &qword_10018AB50;
      v41 = &qword_100125290;
      v42 = v26;
      goto LABEL_19;
    case 2u:
      v31 = *(v30 + 8);
      v32 = 4;
      goto LABEL_5;
    case 3u:
      sub_10002CE6C(v30, v12, &qword_10018B400, &unk_100125CC0);
      Hasher._combine(_:)(5uLL);
      sub_10002BE60(v12, v9, &qword_10018B400, &unk_100125CC0);
      v34 = v49;
      if (sub_10000E5F0(v9, 1, v49) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v37 = v47;
        v36 = v48;
        (*(v48 + 32))(v47, v9, v34);
        Hasher._combine(_:)(1u);
        sub_100100748();
        sub_100100570(v38, v39, &protocol conformance descriptor for ConstellationContentParagraphStyle);
        dispatch thunk of Hashable.hash(into:)();
        (*(v36 + 8))(v37, v34);
      }

      v40 = &qword_10018B400;
      v41 = &unk_100125CC0;
      v42 = v12;
LABEL_19:
      sub_10000ABCC(v42, v40, v41);
      break;
    case 4u:
      v33 = 0;
      goto LABEL_14;
    case 5u:
      v33 = 2;
      goto LABEL_14;
    case 6u:
      v33 = 6;
LABEL_14:
      Hasher._combine(_:)(v33);
      break;
    default:
      v31 = *(v30 + 8);
      v32 = 1;
LABEL_5:
      Hasher._combine(_:)(v32);
      if (v31)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      break;
  }

  sub_100017C18();
}

Swift::Int sub_1000FF7EC()
{
  Hasher.init(_seed:)();
  sub_1000FF33C();
  return Hasher._finalize()();
}

Swift::Int sub_1000FF834(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1000FF33C();
  return Hasher._finalize()();
}

uint64_t sub_1000FF880(uint64_t a1)
{
  type metadata accessor for FlowStepContentOption(0);
  sub_100008780();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100012454();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  sub_100100570(&qword_100192920, type metadata accessor for FlowStepContentOption, &unk_100131530);
  v11 = Set.init(minimumCapacity:)();
  v18 = v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_1000E28C4(v13, v7);
      sub_1000E082C(v10, v7);
      sub_1000E2928(v10);
      v13 += v14;
      --v12;
    }

    while (v12);

    return v18;
  }

  else
  {
    v15 = v11;
  }

  return v15;
}

void sub_1000FF9FC()
{
  sub_100017C00();
  v1 = v0;
  v2 = type metadata accessor for FlowStepContentOption(0);
  __chkstk_darwin(v2 - 8);
  sub_10000C30C();
  v5 = v4 - v3;
  sub_10010072C();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
    v12 = v11;
LABEL_8:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_1001007A0(v13 | (v12 << 6));
    sub_1000FEB64();
    v15 = v14;
    sub_1000E2928(v5);
    if (v15)
    {
LABEL_9:

      sub_100017C18();
      return;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      goto LABEL_9;
    }

    v8 = *(v1 + 56 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_1000FFB40(void *a1@<X8>)
{
  sub_1000FF874();
  *a1 = v2;
  a1[1] = &_swiftEmptySetSingleton;
}

uint64_t sub_1000FFB74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1000FE620(a1);
  *a2 = 0;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000FFB9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007B42C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000FFC2C@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a2(*a1, a1[1], *v3, v3[1]);
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
  return result;
}

BOOL sub_1000FFCA8(void *a1, uint64_t *a2)
{
  v2 = sub_1000FFCE4(a1, *a2, a2[1]);

  return v2;
}

BOOL sub_1000FFCE4(void *a1, uint64_t a2, void *a3)
{
  v6 = *v3;
  v7 = *v3 & a2;
  v8 = &_swiftEmptySetSingleton;
  if (v7 != a2)
  {

    *v3 = v6 | a2;
    v3[1] = &_swiftEmptySetSingleton;
    v8 = a3;
  }

  result = v7 != a2;
  *a1 = a2;
  a1[1] = v8;
  return result;
}

uint64_t sub_1000FFD68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000FFD98(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000FFD98(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1 & a1;
  if (v3)
  {

    *v1 = v2 & ~a1;
    v1[1] = &_swiftEmptySetSingleton;
  }

  return v3;
}

uint64_t sub_1000FFDF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1000FFE3C(*a1);
  v5 = v4;

  *a2 = v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_1000FFE3C(uint64_t a1)
{
  v3 = *v1;

  *v1 = v3 | a1;
  v1[1] = &_swiftEmptySetSingleton;
  return v3 & a1;
}

uint64_t sub_1000FFE84(uint64_t *a1)
{
  sub_1000FFEC4(*a1);
}

uint64_t sub_1000FFEC4(uint64_t a1)
{
  v3 = *v1;

  *v1 = v3 | a1;
  v1[1] = &_swiftEmptySetSingleton;
  return result;
}

uint64_t sub_1000FFF10(uint64_t a1)
{
  v3 = *v1;

  *v1 = v3 & a1;
  v1[1] = &_swiftEmptySetSingleton;
  return result;
}

uint64_t sub_1000FFF50(uint64_t *a1)
{
  sub_1000FFF90(*a1);
}

uint64_t sub_1000FFF90(uint64_t a1)
{
  v3 = *v1;

  *v1 = v3 ^ a1;
  v1[1] = &_swiftEmptySetSingleton;
  return result;
}

uint64_t sub_1000FFFE8@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a2(*a1, a1[1], *v3, v3[1]);
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
  return result;
}

uint64_t sub_1001000DC(uint64_t a1)
{
  v3 = *v1;

  *v1 = v3 & ~a1;
  v1[1] = &_swiftEmptySetSingleton;
  return result;
}

uint64_t sub_10010018C(uint64_t a1, unsigned int *a2, void *a3, uint64_t *a4)
{
  sub_100003768(&qword_1001888B8, &unk_100121B70);
  type metadata accessor for FlowStepContentOption(0);
  sub_1001007EC();
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100121620;
  v10 = *a2;
  v11 = type metadata accessor for ConstellationContentParagraphStyle();
  sub_10000AF7C();
  (*(v12 + 104))(v9 + v8, v10, v11);
  sub_100003CE8(v9 + v8, 0, 1, v11);
  swift_storeEnumTagMultiPayload();
  result = sub_1000FF880(v9);
  *a3 = 0;
  *a4 = result;
  return result;
}

uint64_t type metadata accessor for FlowStepContentOption(uint64_t a1)
{
  result = qword_1001929D0;
  if (!qword_1001929D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100100320(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  sub_100003768(&qword_1001888B8, &unk_100121B70);
  type metadata accessor for FlowStepContentOption(0);
  sub_1001007EC();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100121620;
  swift_storeEnumTagMultiPayload();
  result = sub_1000FF880(v6);
  *a3 = 0;
  *a4 = result;
  return result;
}

uint64_t sub_1001003FC(uint64_t a1)
{
  sub_10000E928();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1001004D4(319, &unk_1001929E0, &type metadata accessor for ImageResource);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_1001004D4(319, &unk_10018B498, &type metadata accessor for ConstellationContentParagraphStyle);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_1001004D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100100570(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001005CC()
{
  result = qword_100192A18;
  if (!qword_100192A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192A18);
  }

  return result;
}

unint64_t sub_100100624()
{
  result = qword_100192A20;
  if (!qword_100192A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192A20);
  }

  return result;
}

unint64_t sub_10010067C()
{
  result = qword_100192A28;
  if (!qword_100192A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192A28);
  }

  return result;
}

unint64_t sub_1001006D4()
{
  result = qword_100192A30;
  if (!qword_100192A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192A30);
  }

  return result;
}

uint64_t sub_1001007A0@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + 48) + *(v2 + 72) * a1;

  return sub_1000E28C4(v5, v3);
}

uint64_t sub_1001007C0()
{
  v6 = *(v0 + 48) + *(v1 + 72) * (__clz(__rbit64(v3)) | (v4 << 6));

  return sub_1000E28C4(v6, v2);
}

uint64_t sub_100100804()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_100100830()
{
}

uint64_t sub_100100850()
{
}

uint64_t sub_100100870(uint64_t a1)
{

  return sub_100003CE8(v1, 1, 1, a1);
}

uint64_t sub_100100890(uint64_t a1, uint64_t a2)
{

  return sub_10002CE6C(a1, a2, v2, v3);
}

uint64_t sub_1001008D4()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 8);
  v5 = *v0;
  v10 = *v0;
  v6 = v11;

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100100BF0(&v10);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_100100A20()
{
  v1 = v0;
  sub_1001008D4();
  v2 = sub_1000C9A20();

  if (v2)
  {
    goto LABEL_6;
  }

  if (qword_100188360 != -1)
  {
    swift_once();
  }

  if (qword_1001A5950 && (KeyPath = swift_getKeyPath(), v4 = sub_1000FBFA4(KeyPath), , (v4 & 1) != 0))
  {
LABEL_6:
    v6 = *(v1 + 16);
    v5 = *(v1 + 24);
    v7 = *(v1 + 32);
    v16 = &type metadata for PurchasesStepProvider;
    v17 = sub_1000258DC();
    v15 = v7;
    type metadata accessor for FlowViewDataProvider(0);
    sub_10000B550();

    v10 = Environment.init<A>(_:)();
    v11 = v8 & 1;
    v12 = v6;
    v13 = v5;
    v18 = 0;
    v19 = 0;
    v14 = 0;
    sub_10002BE1C(&v10, v20);
    v20[96] = 0;
    sub_1000103C8();
    sub_10001BB68();
    _ConditionalContent<>.init(storage:)();
    return sub_1000688DC(&v10);
  }

  else
  {
    sub_1000103C8();
    sub_10001BB68();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100100BF0(uint64_t a1)
{
  v2 = sub_100003768(&qword_100190F40, &unk_10012F2A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100100C5C()
{
  result = qword_100192A38;
  if (!qword_100192A38)
  {
    sub_100004D48(&qword_100192A40, &unk_100131860);
    sub_1000103C8();
    sub_10001BB68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192A38);
  }

  return result;
}

uint64_t sub_100100D20@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PhoneNumberOption(0);
  sub_100008780();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = (v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for EnvironmentValues();
  sub_100008780();
  v14 = v13;
  __chkstk_darwin(v15);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  v34 = a1;
  v33 = a2;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v14 + 8))(v17, v12);
  }

  v19 = sub_1000810F8();

  *&v35[0] = _swiftEmptyArrayStorage;
  v20 = *(v19 + 16);
  if (v20)
  {
    type metadata accessor for ActionInfo(0);
    v21 = *(v6 + 20);
    v22 = *(v8 + 80);
    v32[1] = v19;
    v23 = v19 + ((v22 + 32) & ~v22);
    v24 = *(v8 + 72);
    v25 = _swiftEmptyArrayStorage;
    do
    {
      sub_1000D1DF0(v23, v11);
      v26 = sub_1000EDC40(*v11, v11[1], v11 + v21);
      sub_1001016B0(v11);
      if (v26)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*&v35[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v35[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v25 = *&v35[0];
      }

      v23 += v24;
      --v20;
    }

    while (v20);
  }

  else
  {

    v25 = _swiftEmptyArrayStorage;
  }

  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v27 = swift_allocObject();
  *(v27 + 16) = v34;
  *(v27 + 24) = v33 & 1;
  sub_10000B4E0(v35, a3 + 56);
  type metadata accessor for FlowViewDataProvider(0);
  sub_100101898(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);

  v28 = Environment.init<A>(_:)();
  v30 = v29;
  result = sub_10001D724(v35, &qword_100189310, &qword_1001221A0);
  *a3 = v28;
  *(a3 + 8) = v30 & 1;
  *(a3 + 16) = 0xD00000000000001BLL;
  *(a3 + 24) = 0x8000000100132CB0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 32) = v25;
  *(a3 + 96) = sub_100101744;
  *(a3 + 104) = v27;
  return result;
}

uint64_t sub_1001010D4@<X0>(char a2@<W1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v4 = type metadata accessor for FlowStepTextView(0);
  __chkstk_darwin(v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100003768(&qword_100192A48, &qword_100131958);
  __chkstk_darwin(v41);
  v8 = &v39 - v7;
  v42 = sub_100003768(&qword_100192A50, &qword_100131960);
  __chkstk_darwin(v42);
  v43 = &v39 - v9;
  v44 = sub_100003768(&qword_100192A58, &unk_100131968);
  __chkstk_darwin(v44);
  v40 = &v39 - v10;
  v11 = type metadata accessor for EnvironmentValues();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v12 + 8))(v14, v11);
  }

  v16 = sub_100081608();

  if (!v16)
  {
    goto LABEL_12;
  }

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v12 + 8))(v14, v11);
  }

  v18 = sub_100081268();
  v20 = v19;

  if (v20)
  {
    v21 = static Color.secondary.getter();
    type metadata accessor for FlowViewDataProvider(0);
    sub_100101898(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
    v22 = Environment.init<A>(_:)();
    v24 = v23;
    v25 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    v26 = *(v4 + 40);
    v27 = type metadata accessor for ConstellationContentParagraphStyle();
    sub_100003CE8(&v6[v26], 1, 1, v27);
    *v6 = v22;
    v6[8] = v24 & 1;
    type metadata accessor for CGSize(0);
    v46 = 0;
    v47 = 0;
    State.init(wrappedValue:)();
    v28 = v49;
    *(v6 + 1) = v48;
    *(v6 + 4) = v28;
    *(v6 + 5) = v18;
    *(v6 + 6) = v20;
    *(v6 + 7) = 0;
    *(v6 + 8) = v25;
    *(v6 + 9) = v21;
    sub_100003768(&qword_10018AAF0, &qword_100125240);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100122C90;
    v30 = static Edge.Set.horizontal.getter();
    *(inited + 32) = v30;
    v31 = static Edge.Set.bottom.getter();
    *(inited + 33) = v31;
    v32 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v30)
    {
      v32 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v31)
    {
      v32 = Edge.Set.init(rawValue:)();
    }

    sub_100049BF8(v6, v8);
    v33 = &v8[*(v41 + 36)];
    *v33 = v32;
    *(v33 + 8) = 0u;
    *(v33 + 24) = 0u;
    v33[40] = 1;
    v34 = v43;
    sub_1001018E0(v8, v43, &qword_100192A48, &qword_100131958);
    static String.stepPhoneNumberDescription.getter();
    sub_100101750();
    v35 = v40;
    View.accessibilityIdentifier(_:)();

    sub_10001D724(v34, &qword_100192A50, &qword_100131960);
    v36 = v45;
    sub_1001018E0(v35, v45, &qword_100192A58, &unk_100131968);
    v37 = 0;
  }

  else
  {
LABEL_12:
    v37 = 1;
    v36 = v45;
  }

  return sub_100003CE8(v36, v37, 1, v44);
}

uint64_t sub_1001016B0(uint64_t a1)
{
  v2 = type metadata accessor for PhoneNumberOption(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10010170C()
{

  return _swift_deallocObject(v0, 25, 7);
}

unint64_t sub_100101750()
{
  result = qword_100192A60;
  if (!qword_100192A60)
  {
    sub_100004D48(&qword_100192A50, &qword_100131960);
    sub_1001017DC();
    sub_10005D6CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192A60);
  }

  return result;
}

unint64_t sub_1001017DC()
{
  result = qword_100192A68;
  if (!qword_100192A68)
  {
    sub_100004D48(&qword_100192A48, &qword_100131958);
    sub_100101898(&qword_10018C388, type metadata accessor for FlowStepTextView, &unk_100125CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192A68);
  }

  return result;
}

uint64_t sub_100101898(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001018E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003768(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_10010194C()
{
  result = qword_100192A70;
  if (!qword_100192A70)
  {
    sub_100004D48(&qword_100192A78, &qword_100131978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192A70);
  }

  return result;
}

uint64_t sub_1001019B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = type metadata accessor for Locale();
  v6 = sub_10000ED84(v5);
  __chkstk_darwin(v6);
  sub_10000C30C();
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = sub_10000ED84(v7);
  __chkstk_darwin(v8);
  sub_10000C30C();
  type metadata accessor for TimezoneViewModel(0);
  swift_allocObject();
  sub_1000B7D6C();
  State.init(wrappedValue:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_100103A30();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  v11 = v10;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_100103A30();
  v12 = String.init(localized:table:bundle:locale:comment:)();
  v14 = v13;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_100103A30();
  result = String.init(localized:table:bundle:locale:comment:)();
  *a3 = v18;
  a3[1] = v19;
  a3[2] = v9;
  a3[3] = v11;
  a3[4] = v12;
  a3[5] = v14;
  a3[6] = result;
  a3[7] = v16;
  a3[8] = a1;
  a3[9] = a2;
  return result;
}

uint64_t sub_100101B9C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100101BDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100101C5C@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v39[1] = sub_100003768(&qword_100192A80, &qword_100131A58);
  sub_10000AF7C();
  __chkstk_darwin(v2);
  v4 = v39 - v3;
  v5 = type metadata accessor for Locale();
  v6 = sub_10000ED84(v5);
  __chkstk_darwin(v6);
  sub_10000C30C();
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = sub_10000ED84(v7);
  __chkstk_darwin(v8);
  sub_10000C30C();
  v9 = type metadata accessor for FlowStepSectionHeaderView(0);
  sub_10000AF7C();
  __chkstk_darwin(v10);
  sub_10000C30C();
  v13 = v12 - v11;
  v14 = sub_100003768(&qword_100192A88, &qword_100131A60);
  v15 = sub_1000DCE20(v14, &v51);
  v40 = v16;
  __chkstk_darwin(v15);
  v18 = v39 - v17;
  v19 = sub_100003768(&qword_100192A90, &qword_100131A68);
  v20 = sub_1000DCE20(v19, &v52);
  v42 = v21;
  __chkstk_darwin(v20);
  v23 = v39 - v22;
  v44 = v1;
  v50 = 0;
  v49 = 1;
  *v13 = 0xD000000000000024;
  *(v13 + 8) = 0x800000010013A500;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *(v13 + 40) = 1;
  __asm { FMOV            V0.2D, #20.0 }

  *(v13 + 48) = _Q0;
  v29 = type metadata accessor for FlowImage(0);
  swift_storeEnumTagMultiPayload();
  sub_100003CE8(v13, 0, 1, v29);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v30 = String.init(localized:table:bundle:locale:comment:)();
  v31 = (v13 + *(v9 + 20));
  *v31 = v30;
  v31[1] = v32;
  sub_10010283C(v4);
  sub_100003768(&qword_100192A98, &qword_100131A70);
  sub_10010385C(&qword_10018A8D0, type metadata accessor for FlowStepSectionHeaderView, &unk_10012421C);
  sub_10000AAEC(&qword_100192AA0, &qword_100192A98, &qword_100131A70, &protocol conformance descriptor for TupleView<A>);
  sub_100103544();
  Section<>.init(header:footer:content:)();
  v45 = *v1;
  sub_100003768(&qword_100192AB0, &qword_100131A78);
  State.wrappedValue.getter();
  LOBYTE(v13) = sub_1000B9F0C();

  LOBYTE(v48) = v13 & 1;
  v33 = swift_allocObject();
  sub_100103A48(v33);
  sub_10010362C(v1, &v45);
  v34 = sub_100103664();
  v35 = v39[0];
  View.onChange<A>(of:initial:_:)();

  (*(v40 + 8))(v18, v35);
  v36 = swift_allocObject();
  sub_100103A48(v36);
  sub_10010362C(v1, &v45);
  *&v45 = v35;
  *(&v45 + 1) = &type metadata for Bool;
  v46 = v34;
  v47 = &protocol witness table for Bool;
  sub_1000F9F68();
  swift_getOpaqueTypeConformance2();
  v37 = v41;
  View.onForeground(perform:)();

  return (*(v42 + 8))(v23, v37);
}

uint64_t sub_1001021B8@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = sub_100003768(&qword_100192AF8, &qword_100131AB0);
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v46 = &v43 - v3;
  v47 = sub_100003768(&qword_100192B00, &qword_100131AB8) - 8;
  v4 = __chkstk_darwin(v47);
  v51 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v45 = &v43 - v7;
  __chkstk_darwin(v6);
  v9 = &v43 - v8;
  v10 = sub_100003768(&qword_100192B08, &qword_100131AC0);
  v11 = v10 - 8;
  v12 = __chkstk_darwin(v10);
  v50 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v43 - v14;
  v57[0] = *v1;
  v43 = sub_100003768(&qword_100192AB0, &qword_100131A78);
  State.projectedValue.getter();
  v16 = v58[0];
  v17 = *&v58[1];
  swift_getKeyPath();
  v58[0] = v16;
  *&v58[1] = v17;
  sub_100003768(&qword_100192B10, &qword_100131AF0);
  Binding.subscript.getter();

  Toggle.init(isOn:label:)();
  v18 = v44;
  v58[0] = *v44;
  State.wrappedValue.getter();
  v19 = sub_1000B77F4();

  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v19 & 1;
  v22 = v15;
  v23 = &v15[*(v11 + 44)];
  *v23 = KeyPath;
  v23[1] = sub_100103968;
  v23[2] = v21;
  v24 = *(v18 + 3);
  v59 = *(v18 + 2);
  v60 = v24;
  v58[0] = *v18;

  State.wrappedValue.getter();
  v25 = sub_1000B7630();
  v27 = v26;

  if (v27)
  {
    v28 = v25;
  }

  else
  {
    v28 = 0;
  }

  v29 = 0xE000000000000000;
  if (v27)
  {
    v29 = v27;
  }

  *&v58[0] = v28;
  *(&v58[0] + 1) = v29;
  sub_10000AC24();
  v30 = v46;
  LabeledContent<>.init<A, B>(_:value:)();
  v31 = static HierarchicalShapeStyle.tertiary.getter();
  v32 = v45;
  (*(v48 + 32))(v45, v30, v49);
  *(v32 + *(v47 + 44)) = v31;
  v49 = v9;
  sub_10002CE6C(v32, v9, &qword_100192B00, &qword_100131AB8);
  v58[0] = *v18;
  State.wrappedValue.getter();
  LOBYTE(v30) = sub_1000B9F0C();

  if (v30)
  {
    sub_100103980(v58);
  }

  else
  {
    v33 = static VerticalAlignment.center.getter();
    v56 = 1;
    sub_1001030F4(v58);
    memcpy(v53, v58, 0x1A0uLL);
    memcpy(v54, v58, 0x1A0uLL);
    sub_10002BE60(v53, v57, &qword_100192B18, &qword_100131B28);
    sub_10000ABCC(v54, &qword_100192B18, &qword_100131B28);
    memcpy(&v55[7], v53, 0x1A0uLL);
    v34 = v56;
    v35 = static HierarchicalShapeStyle.tertiary.getter();
    v57[0] = v33;
    LOBYTE(v57[1]) = v34;
    memcpy(&v57[1] + 1, v55, 0x1A7uLL);
    DWORD2(v57[27]) = v35;
    nullsub_1();
    memcpy(v58, v57, 0x1BCuLL);
  }

  v36 = v50;
  sub_10002BE60(v22, v50, &qword_100192B08, &qword_100131AC0);
  v37 = v49;
  v38 = v51;
  sub_10002BE60(v49, v51, &qword_100192B00, &qword_100131AB8);
  memcpy(v53, v58, 0x1BCuLL);
  v39 = v52;
  sub_10002BE60(v36, v52, &qword_100192B08, &qword_100131AC0);
  v40 = sub_100003768(&qword_100192B20, &qword_100131B30);
  sub_10002BE60(v38, v39 + *(v40 + 48), &qword_100192B00, &qword_100131AB8);
  v41 = *(v40 + 64);
  memcpy(v54, v53, 0x1BCuLL);
  memcpy((v39 + v41), v53, 0x1BCuLL);
  sub_10002BE60(v54, v57, &qword_100192B28, &qword_100131B38);
  sub_10000ABCC(v37, &qword_100192B00, &qword_100131AB8);
  sub_10000ABCC(v22, &qword_100192B08, &qword_100131AC0);
  memcpy(v57, v53, 0x1BCuLL);
  sub_10000ABCC(v57, &qword_100192B28, &qword_100131B38);
  sub_10000ABCC(v38, &qword_100192B00, &qword_100131AB8);
  return sub_10000ABCC(v36, &qword_100192B08, &qword_100131AC0);
}

uint64_t sub_10010283C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003768(&qword_100192AC0, &qword_100131A90);
  __chkstk_darwin(v3 - 8);
  v5 = &v55 - v4;
  v6 = sub_100003768(&qword_100192AC8, &qword_100131A98);
  __chkstk_darwin(v6 - 8);
  v8 = &v55 - v7;
  v57 = sub_100003768(&qword_100192AD0, &qword_100131AA0);
  __chkstk_darwin(v57);
  v56 = &v55 - v9;
  v10 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for AttributedString();
  v58 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v55 - v15;
  v17 = sub_100003768(&qword_100192AD8, &qword_100131AA8);
  v60 = *(v17 - 8);
  v61 = v17;
  __chkstk_darwin(v17);
  v59 = &v55 - v18;
  v63 = *v1;
  sub_100003768(&qword_100192AB0, &qword_100131A78);
  State.wrappedValue.getter();
  v19 = sub_1000B9F0C();

  if (v19)
  {
    v20 = 1;
    v21 = v61;
  }

  else
  {
    v55 = a1;
    sub_100003768(&qword_100188810, &unk_100121780);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100121620;
    v66 = v1[3];
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_100017A18();
    *(v22 + 32) = v1[3];
    swift_bridgeObjectRetain_n();
    String.init(format:_:)();
    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    v63 = v66;
    v23 = type metadata accessor for Locale();
    sub_100003CE8(v5, 1, 1, v23);
    sub_10010385C(&qword_100192AE0, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
    sub_10000AC24();
    AttributedStringProtocol.range<A>(of:options:locale:)();
    sub_10000ABCC(v5, &qword_100192AC0, &qword_100131A90);
    sub_1000401D0(&v66);
    if (sub_10000E5F0(v8, 1, v57) == 1)
    {
      v24 = &qword_100192AC8;
      v25 = &qword_100131A98;
      v26 = v8;
    }

    else
    {
      v27 = v8;
      v28 = v56;
      sub_10002CE6C(v27, v56, &qword_100192AD0, &qword_100131AA0);
      v29 = [objc_opt_self() linkColor];
      sub_10000AAEC(&qword_100192AE8, &qword_100192AD0, &qword_100131AA0, &protocol conformance descriptor for Range<A>);
      v30 = AttributedString.subscript.modify();
      v62 = v29;
      sub_1001038A4();
      AttributedSubstring.subscript.setter();
      v30(&v63, 0);
      v26 = v28;
      v24 = &qword_100192AD0;
      v25 = &qword_100131AA0;
    }

    sub_10000ABCC(v26, v24, v25);
    (*(v58 + 32))(v16, v14, v11);
    v31 = Text.init(_:)();
    v33 = v32;
    v35 = v34;
    static Font.caption.getter();
    v36 = Text.font(_:)();
    v38 = v37;
    v40 = v39;

    sub_10000AC78(v31, v33, v35 & 1);

    static Font.Weight.semibold.getter();
    v41 = Text.fontWeight(_:)();
    v43 = v42;
    v45 = v44;
    sub_10000AC78(v36, v38, v40 & 1);

    *&v63 = static Color.gray.getter();
    v46 = Text.foregroundStyle<A>(_:)();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    sub_10000AC78(v41, v43, v45 & 1);

    *&v63 = v46;
    *(&v63 + 1) = v48;
    v64 = v50 & 1;
    v65 = v52;
    v53 = v59;
    View.onTapGesture(count:perform:)();
    sub_10000AC78(v46, v48, v50 & 1);

    v21 = v61;
    a1 = v55;
    (*(v60 + 32))(v55, v53, v61);
    v20 = 0;
  }

  return sub_100003CE8(a1, v20, 1, v21);
}

uint64_t sub_100102F44(uint64_t a1)
{
  *(v1 + 40) = a1;
  type metadata accessor for MainActor();
  *(v1 + 48) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100102FDC, v3, v2);
}

uint64_t sub_100102FDC()
{
  v1 = *(v0 + 40);

  *(v0 + 16) = *v1;
  sub_100003768(&qword_100192AB0, &qword_100131A78);
  State.wrappedValue.getter();
  sub_1000B9F7C();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100103074@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1001030F4@<X0>(uint64_t a2@<X8>)
{
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v35[120] = 1;
  memcpy(&v35[7], __src, 0x70uLL);
  sub_100003768(&qword_100192AB0, &qword_100131A78);
  State.wrappedValue.getter();
  sub_1000B7424();

  sub_10000AC24();
  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  v21 = v8;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v9 = v7 & 1;
  v34[128] = v7 & 1;
  State.wrappedValue.getter();
  v10 = sub_1000B7438();
  v12 = v11;

  v30 = v10;
  v31 = v12;
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  static Alignment.trailing.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v17 &= 1u;
  v34[120] = v17;
  v24[0] = v3;
  v24[1] = v5;
  LOBYTE(v24[2]) = v9;
  v24[3] = v21;
  memcpy(&v24[4], v23, 0x70uLL);
  v25[0] = v13;
  v25[1] = v15;
  LOBYTE(v25[2]) = v17;
  v25[3] = v19;
  memcpy(&v25[4], v22, 0x70uLL);
  *a2 = 0;
  *(a2 + 8) = 1;
  memcpy((a2 + 9), v35, 0x77uLL);
  memcpy((a2 + 128), v24, 0x90uLL);
  memcpy((a2 + 272), v25, 0x90uLL);
  v26[0] = v13;
  v26[1] = v15;
  v27 = v17;
  v28 = v19;
  memcpy(v29, v22, sizeof(v29));
  sub_10002BE60(v24, &v30, &qword_10018B540, &qword_100125D90);
  sub_10002BE60(v25, &v30, &qword_10018B540, &qword_100125D90);
  sub_10000ABCC(v26, &qword_10018B540, &qword_100125D90);
  v30 = v3;
  v31 = v5;
  v32 = v9;
  v33 = v21;
  memcpy(v34, v23, 0x70uLL);
  return sub_10000ABCC(&v30, &qword_10018B540, &qword_100125D90);
}

uint64_t sub_100103428()
{
  v0 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - v1;
  URL.init(string:)();
  sub_10001BBBC(v2);
  return sub_10000ABCC(v2, &qword_100188EE0, &unk_100122AE0);
}

unint64_t sub_100103544()
{
  result = qword_100192AA8;
  if (!qword_100192AA8)
  {
    sub_100004D48(&qword_100192A80, &qword_100131A58);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192AA8);
  }

  return result;
}

uint64_t sub_1001035FC()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_100103664()
{
  result = qword_100192AB8;
  if (!qword_100192AB8)
  {
    sub_100004D48(&qword_100192A88, &qword_100131A60);
    sub_10010385C(&qword_10018A8D0, type metadata accessor for FlowStepSectionHeaderView, &unk_10012421C);
    sub_10000AAEC(&qword_100192AA0, &qword_100192A98, &qword_100131A70, &protocol conformance descriptor for TupleView<A>);
    sub_100103544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192AB8);
  }

  return result;
}

uint64_t sub_100103760()
{

  if (*(v0 + 80))
  {
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1001037C8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000D870;

  return sub_100102F44(v0 + 16);
}

uint64_t sub_10010385C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001038A4()
{
  result = qword_100192AF0;
  if (!qword_100192AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100192AF0);
  }

  return result;
}

uint64_t sub_100103900@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100103988()
{
  sub_100004D48(&qword_100192A90, &qword_100131A68);
  sub_100004D48(&qword_100192A88, &qword_100131A60);
  sub_100103664();
  sub_1000F9F68();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void *sub_100103A48(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, v1, 0x50uLL);
}

uint64_t sub_100103A94(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

double sub_100103BD4@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{

  v10 = sub_100103C4C(a1, a2 & 1);
  *a5 = a3;
  *(a5 + 8) = a4;
  *(a5 + 16) = v10;
  result = 0.0;
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  return result;
}

id *sub_100103C4C(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v6 = String.init(localized:table:bundle:locale:comment:)();
  sub_1001040F0(v6, v7, 4);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  sub_1001040F0(v8, v9, 5);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  sub_1001040F0(v10, v11, 6);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_100103A94(a1, a2 & 1);
  v12 = sub_10010C5D0();

  if (v12)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v13 = String.init(localized:table:bundle:locale:comment:)();
    sub_1001040F0(v13, v14, 7);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v15 = String.init(localized:table:bundle:locale:comment:)();
  sub_1001040F0(v15, v16, 8);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return _swiftEmptyArrayStorage;
}

uint64_t sub_1001040F0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for FlowImage(0);
  sub_100003CE8(v12, 1, 1, v13);
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  (*(v7 + 8))(v9, v6);
  type metadata accessor for OptionInfoItem(0);
  v17 = swift_allocObject();
  v18 = v17 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_nextStep;
  *(v17 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_nextStep + 24) = &type metadata for AirPodsStepProvider;
  *(v18 + 32) = sub_100004C8C();
  *v18 = a3;
  v19 = (v17 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_onSelected);
  *v19 = 0;
  v19[1] = 0;
  v20 = sub_1000EBC54(v14, v16, v12, a1, a2, 0, 0);

  return v20;
}

uint64_t sub_1001042F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ImageResource();
    v9 = a1 + *(a3 + 40);

    return sub_10000E5F0(v9, a2, v8);
  }
}

uint64_t sub_100104394(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ImageResource();
    v8 = v5 + *(a4 + 40);

    return sub_100003CE8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AirPodsDeviceInfo(uint64_t a1)
{
  result = qword_100192B88;
  if (!qword_100192B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100104460(uint64_t a1)
{
  sub_10000E928();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ImageResource();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10010450C()
{
  sub_100096D74();
  sub_100025A50();
  v2 = sub_100025A24(*(v1 + 168));
  if (sub_100114848(v2, v3, v4, v5))
  {
    sub_100105684();
    __chkstk_darwin(v6);
    sub_100025A64();
    *(v0 - 32) = &type metadata for ForgotPasswordStepProvider;
    *(v0 - 24) = sub_1001056C0();
    *(v0 - 16) = sub_10000B138();
    *(v0 - 8) = sub_1001056A8(&qword_100192F38);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v7);
    sub_100025A0C();
    sub_100105690();
    sub_100109038(v8, v9);

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_100104628()
{
  sub_100096D74();
  sub_100025A50();
  v2 = sub_100025A24(*(v1 + 168));
  if (sub_100114848(v2, v3, v4, v5))
  {
    sub_100105684();
    __chkstk_darwin(v6);
    sub_100025A64();
    *(v0 - 32) = &type metadata for MailStepProvider;
    *(v0 - 24) = sub_1001056C0();
    *(v0 - 16) = sub_1000257D8();
    *(v0 - 8) = sub_1001056A8(&qword_10018A110);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v7);
    sub_100025A0C();
    sub_100105690();
    sub_100109120();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_100104744()
{
  sub_100096D74();
  sub_100025A50();
  v2 = sub_100025A24(*(v1 + 168));
  if (sub_100114848(v2, v3, v4, v5))
  {
    sub_100105684();
    __chkstk_darwin(v6);
    sub_100025A64();
    *(v0 - 32) = &type metadata for CompromisedAccountStepProvider;
    *(v0 - 24) = sub_1001056C0();
    *(v0 - 16) = sub_100010248();
    *(v0 - 8) = sub_1001056A8(&qword_100192F18);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v7);
    sub_100025A0C();
    sub_100105690();
    sub_100109150();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_100104860()
{
  sub_100096D74();
  sub_100025A50();
  v2 = sub_100025A24(*(v1 + 168));
  if (sub_100114848(v2, v3, v4, v5))
  {
    sub_100105684();
    __chkstk_darwin(v6);
    sub_100025A64();
    *(v0 - 32) = &type metadata for WiFiStepProvider;
    *(v0 - 24) = sub_1001056C0();
    *(v0 - 16) = sub_10000737C();
    *(v0 - 8) = sub_1001056A8(&qword_10018A178);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v7);
    sub_100025A0C();
    sub_100105690();
    sub_100114874();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_10010497C()
{
  sub_100096D74();
  sub_100025A50();
  v2 = sub_100025A24(*(v1 + 168));
  if (sub_100114848(v2, v3, v4, v5))
  {
    sub_100105684();
    __chkstk_darwin(v6);
    sub_100025A64();
    *(v0 - 32) = &type metadata for BatteryStepProvider;
    *(v0 - 24) = sub_1001056C0();
    *(v0 - 16) = sub_10006EFF8();
    *(v0 - 8) = sub_1001056A8(&qword_10018A158);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v7);
    sub_100025A0C();
    sub_100105690();
    sub_1001091B0();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_100104A98()
{
  sub_100096D74();
  sub_100025A50();
  v2 = sub_100025A24(*(v1 + 168));
  if (sub_100114848(v2, v3, v4, v5))
  {
    sub_100105684();
    __chkstk_darwin(v6);
    sub_100025A64();
    *(v0 - 32) = &type metadata for DisabledAccountStepProvider;
    *(v0 - 24) = sub_1001056C0();
    *(v0 - 16) = sub_1000219CC();
    *(v0 - 8) = sub_1001056A8(&qword_100192F28);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v7);
    sub_100025A0C();
    sub_100105690();
    sub_1001091E0();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_100104BB4()
{
  sub_100096D74();
  sub_100025A50();
  v2 = sub_100025A24(*(v1 + 168));
  if (sub_100114848(v2, v3, v4, v5))
  {
    sub_100105684();
    __chkstk_darwin(v6);
    sub_100025A64();
    *(v0 - 32) = &type metadata for PurchasesStepProvider;
    *(v0 - 24) = sub_1001056C0();
    *(v0 - 16) = sub_1000258DC();
    *(v0 - 8) = sub_1001056A8(&qword_10018A158);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v7);
    sub_100025A0C();
    sub_100105690();
    sub_100109210();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_100104CD0()
{
  sub_100096D74();
  sub_100025A50();
  v2 = sub_100025A24(*(v1 + 168));
  if (sub_100114848(v2, v3, v4, v5))
  {
    sub_100105684();
    __chkstk_darwin(v6);
    sub_100025A64();
    *(v0 - 32) = &type metadata for MessagesStepProvider;
    *(v0 - 24) = sub_1001056C0();
    *(v0 - 16) = sub_10001362C();
    *(v0 - 8) = sub_1001056A8(&qword_10018A130);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v7);
    sub_100025A0C();
    sub_100105690();
    sub_100109240();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

uint64_t sub_100104DEC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 168));
  v6 = sub_100114848(*v5, v5[1], a1, a2);
  if (v6)
  {
    __chkstk_darwin(v6);
    sub_100003768(&qword_10018A148, &qword_100131EE0);
    sub_1000BC544();
    sub_1001055F4(&qword_10018A158, &qword_10018A148, &qword_100131EE0);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100109270();
  }

  else
  {
    *v5 = a1;
    v5[1] = a2;
  }
}

uint64_t sub_100104F78()
{
  sub_100025A50();
  *(v1 + *(v3 + 144)) = 0;
  sub_1000A3190();
  sub_100105660(*(v4 + 152));
  sub_100105660(*(v5 + 160));
  sub_100105660(*(v6 + 168));
  *(v1 + *(v7 + 176)) = 0;
  sub_1000A3190();
  *(v1 + *(v8 + 184)) = 1;
  sub_1000A3190();
  *(v1 + *(v9 + 192)) = 0;
  sub_1000A3190();
  ObservationRegistrar.init()();
  v10 = qword_1001A57E0;
  type metadata accessor for SupportFlowIdentifier();
  sub_10000AF7C();
  (*(v11 + 32))(v1 + v10, v2);
  *(v1 + qword_1001A57E8) = &type metadata for ScreenRepairStepProvider;
  sub_1000A3190();
  *(v1 + *(v12 + 136)) = v0;
  sub_1000A3190();
  v14 = (v1 + *(v13 + 128));
  *v14 = &type metadata for DefaultStepOverrideProvider;
  v14[1] = v0;
  v14[2] = 0;
  v14[3] = 0;

  return v1;
}

uint64_t sub_1001050E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000A3190();
  *(v4 + *(v8 + 144)) = 0;
  sub_1000A3190();
  sub_100105660(*(v9 + 152));
  sub_100105660(*(v10 + 160));
  sub_100105660(*(v11 + 168));
  *(v4 + *(v12 + 176)) = 0;
  sub_1000A3190();
  *(v4 + *(v13 + 184)) = v14;
  sub_1000A3190();
  *(v4 + *(v15 + 192)) = 0;
  sub_1000A3190();
  ObservationRegistrar.init()();
  v16 = qword_1001A57E0;
  type metadata accessor for SupportFlowIdentifier();
  sub_10000AF7C();
  (*(v17 + 32))(v4 + v16, a1);
  *(v4 + qword_1001A57E8) = a4;
  sub_1000A3190();
  *(v4 + *(v18 + 136)) = a2;
  sub_1000A3190();
  v20 = (v4 + *(v19 + 128));
  *v20 = &type metadata for DefaultStepOverrideProvider;
  v20[1] = a2;
  v20[2] = 0;
  v20[3] = 0;

  return v4;
}

void sub_100105248()
{
  sub_100096D74();
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  sub_10000C30C();
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  sub_10000C30C();
  v4 = type metadata accessor for SupportFlowIdentifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  sub_10000C30C();
  v8 = v7 - v6;
  ObservationRegistrar.init()();
  (*(v5 + 104))(v8, enum case for SupportFlowIdentifier.accountPhoneNumber(_:), v4);

  sub_1001050E4(v8, v1, 3, &type metadata for TrustedPhoneNumberStepProvider);
  swift_retain_n();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100106978();
  if (qword_100188238 != -1)
  {
    swift_once();
  }

  v9 = qword_1001A57D0;
  v10 = *algn_1001A57D8;

  sub_100104DEC(v9, v10);
  sub_100108404(0);

  sub_100053050();
}

uint64_t sub_10010548C()
{
  v1 = qword_100192BD8;
  type metadata accessor for ObservationRegistrar();
  sub_10000AF7C();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_1001054EC()
{
  v0 = sub_10011484C();
  v1 = qword_100192BD8;
  type metadata accessor for ObservationRegistrar();
  sub_10000AF7C();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for TrustedPhoneNumberFlowViewModel(uint64_t a1)
{
  result = qword_100192C08;
  if (!qword_100192C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_1001055E8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1001055F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100105660(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_100105674()
{
  *v3 = v1;
  v3[1] = v0;
  return v2;
}

uint64_t sub_1001056A8(unint64_t *a1)
{

  return sub_1001055F4(a1, v1, v2);
}

uint64_t sub_1001056C0()
{

  return sub_100003768(v0, v1);
}

void sub_100105734()
{
  sub_100096D74();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1000A3190();
  *(v0 + *(v11 + 144)) = 0;
  sub_1000A3190();
  sub_100105660(*(v12 + 152));
  sub_100105660(*(v13 + 160));
  sub_100105660(*(v14 + 168));
  *(v0 + *(v15 + 176)) = 0;
  sub_1000A3190();
  *(v0 + *(v16 + 184)) = 10;
  sub_1000A3190();
  *(v0 + *(v17 + 192)) = 0;
  sub_1000A3190();
  ObservationRegistrar.init()();
  v18 = qword_1001A57E0;
  type metadata accessor for SupportFlowIdentifier();
  sub_10000AF7C();
  (*(v19 + 32))(v0 + v18, v10);
  *(v0 + qword_1001A57E8) = &type metadata for MessagesStepProvider;
  sub_1000A3190();
  v21 = (v0 + *(v20 + 128));
  *v21 = v8;
  v21[1] = v6;
  v21[2] = v4;
  v21[3] = v2;
  sub_1000A3190();
  *(v0 + *(v22 + 136)) = v6;

  sub_100053050();
}

void sub_1001058A4()
{
  sub_100096D74();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1000A3190();
  *(v0 + *(v13 + 144)) = 0;
  sub_1000A3190();
  sub_100105660(*(v14 + 152));
  sub_100105660(*(v15 + 160));
  sub_100105660(*(v16 + 168));
  *(v0 + *(v17 + 176)) = 0;
  sub_1000A3190();
  *(v0 + *(v18 + 184)) = v19;
  sub_1000A3190();
  *(v0 + *(v20 + 192)) = 0;
  sub_1000A3190();
  ObservationRegistrar.init()();
  v21 = qword_1001A57E0;
  type metadata accessor for SupportFlowIdentifier();
  sub_10000AF7C();
  (*(v22 + 32))(v0 + v21, v12);
  *(v0 + qword_1001A57E8) = v2;
  sub_1000A3190();
  v24 = (v0 + *(v23 + 128));
  *v24 = v10;
  v24[1] = v8;
  v24[2] = v6;
  v24[3] = v4;
  sub_1000A3190();
  *(v0 + *(v25 + 136)) = v8;

  sub_100053050();
}

uint64_t sub_100105A10()
{
  v1 = qword_1001A57E0;
  type metadata accessor for SupportFlowIdentifier();
  sub_10000AF7C();
  (*(v2 + 8))(v0 + v1);
  sub_1000A3190();

  v3 = sub_100077FE8();
  sub_1000C6A08(v3, v4);
  sub_1000A3190();

  sub_1000A3190();
  sub_100114C08();
  sub_1000A3190();
  sub_100114C08();
  sub_1000A3190();
  sub_100114C08();
  sub_1000A3190();

  sub_1000A3190();
  sub_10003F68C(*(v0 + *(v5 + 184)));
  sub_1000A3190();

  sub_1000A3190();
  v7 = *(v6 + 200);
  type metadata accessor for ObservationRegistrar();
  sub_10000AF7C();
  (*(v8 + 8))(v0 + v7);
  return v0;
}

uint64_t sub_100105B78()
{
  v1 = qword_1001A57E0;
  type metadata accessor for SupportFlowIdentifier();
  sub_10000AF7C();
  (*(v2 + 8))(v0 + v1);
  sub_1000A3190();

  v3 = sub_100077FE8();
  sub_1000C6A08(v3, v4);
  sub_1000A3190();

  sub_1000A3190();
  sub_100114C08();
  sub_1000A3190();
  sub_100114C08();
  sub_1000A3190();
  sub_100114C08();
  sub_1000A3190();

  sub_1000A3190();

  sub_1000A3190();
  v6 = *(v5 + 200);
  type metadata accessor for ObservationRegistrar();
  sub_10000AF7C();
  (*(v7 + 8))(v0 + v6);
  return v0;
}

void sub_100105CC8()
{
  sub_100096D74();
  sub_100025A50();
  if (sub_100114958(*(v1 + 160)))
  {
    sub_100105684();
    __chkstk_darwin(v2);
    sub_100025A64();
    *(v0 - 32) = &type metadata for ForgotPasswordStepProvider;
    v3 = sub_100025A88();
    *(v0 - 24) = sub_100003768(v3, v4);
    *(v0 - 16) = sub_10000B138();
    sub_100114898();
    *(v0 - 8) = sub_100114B2C(v5, v6, v7, v8);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v9);
    sub_100025A0C();
    sub_100105690();
    sub_100109068();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_100105E00()
{
  sub_100096D74();
  sub_100025A50();
  if (sub_100114958(*(v1 + 160)))
  {
    sub_100105684();
    __chkstk_darwin(v2);
    sub_100025A64();
    *(v0 - 32) = &type metadata for MailStepProvider;
    v3 = sub_100025A88();
    *(v0 - 24) = sub_100003768(v3, v4);
    *(v0 - 16) = sub_1000257D8();
    sub_100114898();
    *(v0 - 8) = sub_100114B2C(v5, v6, v7, v8);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v9);
    sub_100025A0C();
    sub_100105690();
    sub_100109068();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_100105F38()
{
  sub_100096D74();
  sub_100025A50();
  if (sub_100114958(*(v1 + 160)))
  {
    sub_100105684();
    __chkstk_darwin(v2);
    sub_100025A64();
    *(v0 - 32) = &type metadata for CompromisedAccountStepProvider;
    v3 = sub_100025A88();
    *(v0 - 24) = sub_100003768(v3, v4);
    *(v0 - 16) = sub_100010248();
    sub_100114898();
    *(v0 - 8) = sub_100114B2C(v5, v6, v7, v8);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v9);
    sub_100025A0C();
    sub_100105690();
    sub_100109068();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_100106070()
{
  sub_100096D74();
  sub_100025A50();
  if (sub_100114958(*(v1 + 160)))
  {
    sub_100105684();
    __chkstk_darwin(v2);
    sub_100025A64();
    *(v0 - 32) = &type metadata for WiFiStepProvider;
    v3 = sub_100025A88();
    *(v0 - 24) = sub_100003768(v3, v4);
    *(v0 - 16) = sub_10000737C();
    sub_100114898();
    *(v0 - 8) = sub_100114B2C(v5, v6, v7, v8);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v9);
    sub_100025A0C();
    sub_100105690();
    sub_100109068();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_1001061A8()
{
  sub_100096D74();
  sub_100025A50();
  if (sub_100114958(*(v1 + 160)))
  {
    sub_100105684();
    __chkstk_darwin(v2);
    sub_100025A64();
    *(v0 - 32) = &type metadata for BatteryStepProvider;
    v3 = sub_100025A88();
    *(v0 - 24) = sub_100003768(v3, v4);
    *(v0 - 16) = sub_10006EFF8();
    sub_100114898();
    *(v0 - 8) = sub_100114B2C(v5, v6, v7, v8);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v9);
    sub_100025A0C();
    sub_100105690();
    sub_100109068();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_1001062E0()
{
  sub_100096D74();
  sub_100025A50();
  if (sub_100114958(*(v1 + 160)))
  {
    sub_100105684();
    __chkstk_darwin(v2);
    sub_100025A64();
    *(v0 - 32) = &type metadata for ScreenRepairStepProvider;
    v3 = sub_100025A88();
    *(v0 - 24) = sub_100003768(v3, v4);
    *(v0 - 16) = sub_1001145B4();
    sub_100114898();
    *(v0 - 8) = sub_100114B2C(v5, v6, v7, v8);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v9);
    sub_100025A0C();
    sub_100105690();
    sub_100109068();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_100106418()
{
  sub_100096D74();
  sub_100025A50();
  if (sub_100114958(*(v1 + 160)))
  {
    sub_100105684();
    __chkstk_darwin(v2);
    sub_100025A64();
    *(v0 - 32) = &type metadata for DisabledAccountStepProvider;
    v3 = sub_100025A88();
    *(v0 - 24) = sub_100003768(v3, v4);
    *(v0 - 16) = sub_1000219CC();
    sub_100114898();
    *(v0 - 8) = sub_100114B2C(v5, v6, v7, v8);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v9);
    sub_100025A0C();
    sub_100105690();
    sub_100109068();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_100106550()
{
  sub_100096D74();
  sub_100025A50();
  if (sub_100114958(*(v1 + 160)))
  {
    sub_100105684();
    __chkstk_darwin(v2);
    sub_100025A64();
    *(v0 - 32) = &type metadata for PurchasesStepProvider;
    v3 = sub_100025A88();
    *(v0 - 24) = sub_100003768(v3, v4);
    *(v0 - 16) = sub_1000258DC();
    sub_100114898();
    *(v0 - 8) = sub_100114B2C(v5, v6, v7, v8);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v9);
    sub_100025A0C();
    sub_100105690();
    sub_100109068();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

void sub_100106688()
{
  sub_100096D74();
  sub_100025A50();
  if (sub_100114958(*(v1 + 160)))
  {
    sub_100105684();
    __chkstk_darwin(v2);
    sub_100025A64();
    *(v0 - 32) = &type metadata for MessagesStepProvider;
    v3 = sub_100025A88();
    *(v0 - 24) = sub_100003768(v3, v4);
    *(v0 - 16) = sub_10001362C();
    sub_100114898();
    *(v0 - 8) = sub_100114B2C(v5, v6, v7, v8);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v9);
    sub_100025A0C();
    sub_100105690();
    sub_100109068();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

uint64_t sub_1001067C0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 160));
  v6 = sub_100109764(*v5, v5[1], a1, a2);
  if (v6)
  {
    __chkstk_darwin(v6);
    sub_100003768(&qword_1001933D8, &qword_100131D90);
    sub_100004C8C();
    sub_10000AAEC(&qword_1001933E0, &qword_1001933D8, &qword_100131D90, &unk_10012D890);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100109068();
  }

  else
  {
    *v5 = a1;
    v5[1] = a2;
  }
}

void sub_100106978()
{
  sub_100096D74();
  sub_100025A50();
  if (sub_100114958(*(v1 + 160)))
  {
    sub_100105684();
    __chkstk_darwin(v2);
    sub_100025A64();
    *(v0 - 32) = &type metadata for TrustedPhoneNumberStepProvider;
    v3 = sub_100025A88();
    *(v0 - 24) = sub_100003768(v3, v4);
    *(v0 - 16) = sub_1000BC544();
    sub_100114898();
    *(v0 - 8) = sub_100114B2C(v5, v6, v7, v8);
    swift_getKeyPath();
    sub_100025A3C();
    __chkstk_darwin(v9);
    sub_100025A0C();
    sub_100105690();
    sub_100109068();

    sub_10010569C();
    sub_100053050();
  }

  else
  {
    sub_100105674();
    sub_100053050();
  }
}

uint64_t sub_100106AB0()
{
  sub_100003768(&qword_100192F30, &unk_100131CC0);
  sub_10000B138();
  sub_10000AAEC(&qword_100192F38, &qword_100192F30, &unk_100131CC0, &unk_10012D890);
  swift_getKeyPath();
  v3 = v0;
  sub_10000AAEC(&qword_100193438, &qword_100193440, &qword_100131EF8, &unk_10012B6F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(*v0 + 184);
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_100106BE4()
{
  sub_100003768(&qword_10018A100, &unk_100123FA0);
  sub_1000257D8();
  sub_10000AAEC(&qword_10018A110, &qword_10018A100, &unk_100123FA0, &unk_10012D890);
  swift_getKeyPath();
  v3 = v0;
  sub_10000AAEC(&qword_10018A118, &qword_10018A120, &unk_100123FB0, &unk_10012B6F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(*v0 + 184);
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_100106D18()
{
  sub_100003768(&qword_1001933D8, &qword_100131D90);
  sub_100004C8C();
  sub_10000AAEC(&qword_1001933E0, &qword_1001933D8, &qword_100131D90, &unk_10012D890);
  swift_getKeyPath();
  v3 = v0;
  sub_10000AAEC(&qword_1001933E8, &qword_1001933F0, &qword_100131D98, &unk_10012B6F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(*v0 + 184);
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_100106E4C()
{
  sub_100003768(&qword_10018A148, &qword_100131EE0);
  sub_10006EFF8();
  sub_10000AAEC(&qword_10018A158, &qword_10018A148, &qword_100131EE0, &unk_10012D890);
  swift_getKeyPath();
  v3 = v0;
  sub_10000AAEC(&qword_10018D1E0, &qword_10018D1E8, &qword_1001287E0, &unk_10012B6F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(*v0 + 184);
  swift_beginAccess();
  return *(v3 + v1);
}

unint64_t sub_100106F80()
{
  sub_100003768(&qword_10018A128, &unk_100131CD0);
  sub_10001362C();
  sub_10000AAEC(&qword_10018A130, &qword_10018A128, &unk_100131CD0, &unk_10012D890);
  swift_getKeyPath();
  v4 = v0;
  sub_10000AAEC(&qword_10018A138, &qword_10018A140, &unk_100123FC0, &unk_10012B6F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(*v0 + 184);
  swift_beginAccess();
  v2 = *(v4 + v1);
  sub_10003F548(v2);
  return v2;
}

uint64_t sub_1001070C0()
{
  sub_100003768(&qword_10018A170, &unk_100127780);
  sub_10000737C();
  sub_10000AAEC(&qword_10018A178, &qword_10018A170, &unk_100127780, &unk_10012D890);
  swift_getKeyPath();
  v3 = v0;
  sub_10000AAEC(&qword_10018A180, &qword_10018A188, &unk_100123FE0, &unk_10012B6F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(*v0 + 184);
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_1001071F4()
{
  sub_100003768(&qword_100192F10, &unk_100131CB0);
  sub_100010248();
  sub_10000AAEC(&qword_100192F18, &qword_100192F10, &unk_100131CB0, &unk_10012D890);
  swift_getKeyPath();
  v3 = v0;
  sub_10000AAEC(&qword_1001934A0, &qword_1001934A8, &unk_100131FC8, &unk_10012B6F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(*v0 + 184);
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_100107328()
{
  sub_100003768(&qword_10018A148, &qword_100131EE0);
  sub_1001145B4();
  sub_10000AAEC(&qword_10018A158, &qword_10018A148, &qword_100131EE0, &unk_10012D890);
  swift_getKeyPath();
  v3 = v0;
  sub_10000AAEC(&qword_1001934C8, &qword_1001934D0, &unk_100131FF0, &unk_10012B6F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(*v0 + 184);
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_10010745C()
{
  sub_100003768(&qword_100192F20, &unk_100131FE0);
  sub_1000219CC();
  sub_10000AAEC(&qword_100192F28, &qword_100192F20, &unk_100131FE0, &unk_10012D890);
  swift_getKeyPath();
  v3 = v0;
  sub_10000AAEC(&qword_1001934B0, &qword_1001934B8, &qword_100131FD8, &unk_10012B6F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(*v0 + 184);
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_100107590()
{
  sub_100003768(&qword_10018A148, &qword_100131EE0);
  sub_1000258DC();
  sub_10000AAEC(&qword_10018A158, &qword_10018A148, &qword_100131EE0, &unk_10012D890);
  swift_getKeyPath();
  v3 = v0;
  sub_10000AAEC(&qword_10018A160, &qword_10018A168, &unk_100123FD0, &unk_10012B6F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(*v0 + 184);
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_1001076C4()
{
  sub_100003768(&qword_10018A148, &qword_100131EE0);
  sub_1000BC544();
  sub_10000AAEC(&qword_10018A158, &qword_10018A148, &qword_100131EE0, &unk_10012D890);
  swift_getKeyPath();
  v3 = v0;
  sub_10000AAEC(&qword_100193490, &qword_100193498, &qword_100131FC0, &unk_10012B6F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(*v0 + 184);
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_1001077F8(uint64_t a1)
{
  sub_100114944(a1);
  v5 = *(v4 + 184);
  sub_1001149A4();
  v6 = sub_100114A98();
  if (sub_1001092A0(v6, v7))
  {
    sub_1001149F0();
    __chkstk_darwin(v8);
    sub_100114994();
    *(v3 - 32) = &type metadata for ForgotPasswordStepProvider;
    *(v3 - 24) = sub_100114B14();
    *(v3 - 16) = sub_10000B138();
    sub_100114898();
    *(v3 - 8) = sub_100114B44(v9, v10, v11, v12);
    swift_getKeyPath();
    sub_100114930();
    __chkstk_darwin(v13);
    sub_100114900();
    sub_100105690();
    sub_100109068();
  }

  else
  {
    *(v2 + v5) = v1;
    return sub_10010AABC();
  }
}

uint64_t sub_100107914(uint64_t a1)
{
  sub_100114944(a1);
  v5 = *(v4 + 184);
  sub_1001149A4();
  v6 = sub_100114A98();
  if (sub_1001092E8(v6, v7))
  {
    sub_1001149F0();
    __chkstk_darwin(v8);
    sub_100114994();
    *(v3 - 32) = &type metadata for MailStepProvider;
    *(v3 - 24) = sub_100114B14();
    *(v3 - 16) = sub_1000257D8();
    sub_100114898();
    *(v3 - 8) = sub_100114B44(v9, v10, v11, v12);
    swift_getKeyPath();
    sub_100114930();
    __chkstk_darwin(v13);
    sub_100114900();
    sub_100105690();
    sub_100109068();
  }

  else
  {
    *(v2 + v5) = v1;
    return sub_10010AC5C();
  }
}

uint64_t sub_100107A30(uint64_t a1)
{
  v2 = a1;
  v3 = *(*v1 + 184);
  swift_beginAccess();
  v4 = sub_100109394(*(v1 + v3), v2);
  if (v4)
  {
    __chkstk_darwin(v4);
    sub_100003768(&qword_1001933D8, &qword_100131D90);
    sub_100004C8C();
    sub_10000AAEC(&qword_1001933E0, &qword_1001933D8, &qword_100131D90, &unk_10012D890);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100109068();
  }

  else
  {
    *(v1 + v3) = v2;
    return sub_10010AD3C();
  }
}

uint64_t sub_100107BB8(uint64_t a1)
{
  sub_100114944(a1);
  v5 = *(v4 + 184);
  sub_1001149A4();
  v6 = sub_100114A98();
  if (sub_100109440(v6, v7))
  {
    sub_1001149F0();
    __chkstk_darwin(v8);
    sub_100114994();
    *(v3 - 32) = &type metadata for BatteryStepProvider;
    *(v3 - 24) = sub_100114B14();
    *(v3 - 16) = sub_10006EFF8();
    sub_100114898();
    *(v3 - 8) = sub_100114B44(v9, v10, v11, v12);
    swift_getKeyPath();
    sub_100114930();
    __chkstk_darwin(v13);
    sub_100114900();
    sub_100105690();
    sub_100109068();
  }

  else
  {
    *(v2 + v5) = v1;
    return sub_10010AE1C();
  }
}

void sub_100107CD4()
{
  sub_100096D74();
  v2 = v1;
  v15 = v1;
  sub_1000A3190();
  v4 = *(v3 + 184);
  swift_beginAccess();
  v5 = *(v0 + v4);
  sub_10003F548(v5);
  v6 = sub_100096908();
  v8 = sub_100109488(v6, v7);
  v9 = sub_10003F68C(v5);
  if (v8)
  {
    __chkstk_darwin(v9);
    sub_100003768(&qword_10018A128, &unk_100131CD0);
    sub_10001362C();
    sub_100114898();
    sub_10000AAEC(v10, &qword_10018A128, &unk_100131CD0, v11);
    swift_getKeyPath();
    sub_1001149F0();
    __chkstk_darwin(v12);
    sub_100096768();
    *(v13 - 16) = v0;
    *(v13 - 8) = &v15;
    sub_100105690();
    sub_100109068();

    sub_10003F68C(v2);
  }

  else
  {
    v14 = *(v0 + v4);
    *(v0 + v4) = v2;
    sub_10003F548(v2);
    sub_10003F68C(v14);
    sub_10010AF94();
    sub_10003F68C(v2);
  }

  sub_100053050();
}

uint64_t sub_100107E70(uint64_t a1)
{
  sub_100114944(a1);
  v5 = *(v4 + 184);
  sub_1001149A4();
  v6 = sub_100114A98();
  if (sub_1001094CC(v6, v7))
  {
    sub_1001149F0();
    __chkstk_darwin(v8);
    sub_100114994();
    *(v3 - 32) = &type metadata for WiFiStepProvider;
    *(v3 - 24) = sub_100114B14();
    *(v3 - 16) = sub_10000737C();
    sub_100114898();
    *(v3 - 8) = sub_100114B44(v9, v10, v11, v12);
    swift_getKeyPath();
    sub_100114930();
    __chkstk_darwin(v13);
    sub_100114900();
    sub_100105690();
    sub_100109068();
  }

  else
  {
    *(v2 + v5) = v1;
    return sub_10010B074();
  }
}

uint64_t sub_100107F8C(uint64_t a1)
{
  sub_100114944(a1);
  v5 = *(v4 + 184);
  sub_1001149A4();
  v6 = sub_100114A98();
  if (sub_10010957C(v6, v7))
  {
    sub_1001149F0();
    __chkstk_darwin(v8);
    sub_100114994();
    *(v3 - 32) = &type metadata for CompromisedAccountStepProvider;
    *(v3 - 24) = sub_100114B14();
    *(v3 - 16) = sub_100010248();
    sub_100114898();
    *(v3 - 8) = sub_100114B44(v9, v10, v11, v12);
    swift_getKeyPath();
    sub_100114930();
    __chkstk_darwin(v13);
    sub_100114900();
    sub_100105690();
    sub_100109068();
  }

  else
  {
    *(v2 + v5) = v1;
    return sub_10010B154();
  }
}

uint64_t sub_1001080A8(char a1)
{
  v3 = a1 & 1;
  sub_1000A3190();
  v5 = *(v4 + 184);
  sub_1001149A4();
  if (*(v1 + v5) == v3)
  {
    *(v1 + v5) = v3;
    return sub_10010B2C8();
  }

  else
  {
    sub_1001149F0();
    __chkstk_darwin(v6);
    sub_100114994();
    *(v2 - 32) = &type metadata for ScreenRepairStepProvider;
    *(v2 - 24) = sub_100114B14();
    *(v2 - 16) = sub_1001145B4();
    sub_100114898();
    *(v2 - 8) = sub_100114B44(v7, v8, v9, v10);
    swift_getKeyPath();
    sub_100114930();
    __chkstk_darwin(v11);
    sub_100114900();
    sub_100105690();
    sub_100109068();
  }
}

uint64_t sub_1001081CC(uint64_t a1)
{
  sub_100114944(a1);
  v5 = *(v4 + 184);
  sub_1001149A4();
  v6 = sub_100114A98();
  if (sub_1001095C4(v6, v7))
  {
    sub_1001149F0();
    __chkstk_darwin(v8);
    sub_100114994();
    *(v3 - 32) = &type metadata for DisabledAccountStepProvider;
    *(v3 - 24) = sub_100114B14();
    *(v3 - 16) = sub_1000219CC();
    sub_100114898();
    *(v3 - 8) = sub_100114B44(v9, v10, v11, v12);
    swift_getKeyPath();
    sub_100114930();
    __chkstk_darwin(v13);
    sub_100114900();
    sub_100105690();
    sub_100109068();
  }

  else
  {
    *(v2 + v5) = v1;
    return sub_10010B39C();
  }
}

uint64_t sub_1001082E8(uint64_t a1)
{
  sub_100114944(a1);
  v5 = *(v4 + 184);
  sub_1001149A4();
  v6 = sub_100114A98();
  if (sub_100109670(v6, v7))
  {
    sub_1001149F0();
    __chkstk_darwin(v8);
    sub_100114994();
    *(v3 - 32) = &type metadata for PurchasesStepProvider;
    *(v3 - 24) = sub_100114B14();
    *(v3 - 16) = sub_1000258DC();
    sub_100114898();
    *(v3 - 8) = sub_100114B44(v9, v10, v11, v12);
    swift_getKeyPath();
    sub_100114930();
    __chkstk_darwin(v13);
    sub_100114900();
    sub_100105690();
    sub_100109068();
  }

  else
  {
    *(v2 + v5) = v1;
    return sub_10010B47C();
  }
}

uint64_t sub_100108404(uint64_t a1)
{
  sub_100114944(a1);
  v5 = *(v4 + 184);
  sub_1001149A4();
  v6 = sub_100114A98();
  if (sub_10010971C(v6, v7))
  {
    sub_1001149F0();
    __chkstk_darwin(v8);
    sub_100114994();
    *(v3 - 32) = &type metadata for TrustedPhoneNumberStepProvider;
    *(v3 - 24) = sub_100114B14();
    *(v3 - 16) = sub_1000BC544();
    sub_100114898();
    *(v3 - 8) = sub_100114B44(v9, v10, v11, v12);
    swift_getKeyPath();
    sub_100114930();
    __chkstk_darwin(v13);
    sub_100114900();
    sub_100105690();
    sub_100109068();
  }

  else
  {
    *(v2 + v5) = v1;
    return sub_10010B55C();
  }
}

uint64_t sub_100108520(uint64_t a1)
{
  sub_100003768(&qword_100192F30, &unk_100131CC0);
  sub_10000B138();
  sub_10000AAEC(&qword_100192F38, &qword_100192F30, &unk_100131CC0, &unk_10012D890);
  swift_getKeyPath();
  sub_100109068();
}

uint64_t sub_100108610(uint64_t a1)
{
  sub_100114B14();
  sub_100057DB0();
  sub_100114898();
  sub_100114B44(v1, v2, v3, v4);
  swift_getKeyPath();
  sub_100114B7C();
  sub_100109068();
}

uint64_t sub_1001086D8(uint64_t a1)
{
  sub_100003768(&qword_10018A100, &unk_100123FA0);
  sub_1000257D8();
  sub_10000AAEC(&qword_10018A110, &qword_10018A100, &unk_100123FA0, &unk_10012D890);
  swift_getKeyPath();
  sub_100109068();
}

uint64_t sub_1001087C8(uint64_t a1)
{
  sub_100003768(&qword_1001933D8, &qword_100131D90);
  sub_100004C8C();
  sub_10000AAEC(&qword_1001933E0, &qword_1001933D8, &qword_100131D90, &unk_10012D890);
  swift_getKeyPath();
  sub_100109068();
}

uint64_t sub_1001088B8(uint64_t a1)
{
  sub_100003768(&qword_10018A148, &qword_100131EE0);
  sub_10006EFF8();
  sub_10000AAEC(&qword_10018A158, &qword_10018A148, &qword_100131EE0, &unk_10012D890);
  swift_getKeyPath();
  sub_100109068();
}

uint64_t sub_1001089A8(uint64_t a1)
{
  sub_100003768(&qword_10018A128, &unk_100131CD0);
  sub_10001362C();
  sub_10000AAEC(&qword_10018A130, &qword_10018A128, &unk_100131CD0, &unk_10012D890);
  swift_getKeyPath();
  sub_100109068();
}

uint64_t sub_100108A98(uint64_t a1)
{
  sub_100003768(&qword_10018A170, &unk_100127780);
  sub_10000737C();
  sub_10000AAEC(&qword_10018A178, &qword_10018A170, &unk_100127780, &unk_10012D890);
  swift_getKeyPath();
  sub_100109068();
}

uint64_t sub_100108B88(uint64_t a1)
{
  sub_100003768(&qword_100192F10, &unk_100131CB0);
  sub_100010248();
  sub_10000AAEC(&qword_100192F18, &qword_100192F10, &unk_100131CB0, &unk_10012D890);
  swift_getKeyPath();
  sub_100109068();
}

uint64_t sub_100108C78(uint64_t a1)
{
  sub_100003768(&qword_10018A148, &qword_100131EE0);
  sub_1001145B4();
  sub_10000AAEC(&qword_10018A158, &qword_10018A148, &qword_100131EE0, &unk_10012D890);
  swift_getKeyPath();
  sub_100109068();
}

uint64_t sub_100108D68(uint64_t a1)
{
  sub_100003768(&qword_100192F20, &unk_100131FE0);
  sub_1000219CC();
  sub_10000AAEC(&qword_100192F28, &qword_100192F20, &unk_100131FE0, &unk_10012D890);
  swift_getKeyPath();
  sub_100109068();
}

uint64_t sub_100108E58(uint64_t a1)
{
  sub_100003768(&qword_10018A148, &qword_100131EE0);
  sub_1000258DC();
  sub_10000AAEC(&qword_10018A158, &qword_10018A148, &qword_100131EE0, &unk_10012D890);
  swift_getKeyPath();
  sub_100109068();
}

uint64_t sub_100108F48(uint64_t a1)
{
  sub_100003768(&qword_10018A148, &qword_100131EE0);
  sub_1000BC544();
  sub_10000AAEC(&qword_10018A158, &qword_10018A148, &qword_100131EE0, &unk_10012D890);
  swift_getKeyPath();
  sub_100109068();
}

void *sub_100109068()
{
  sub_100114BAC();
  sub_1000A3190();
  v3 = sub_10000AAEC(v0, v1, v2, &unk_10012B6F0);
  return sub_100114AC8(v3);
}

BOOL sub_1001092A0(char a1, char a2)
{
  v2 = a1 == 4;
  if (a2 != 4)
  {
    v2 = 0;
  }

  if (a1 != 4 && a2 != 4)
  {
    v2 = sub_1000E39D8();
  }

  return (v2 & 1) == 0;
}

BOOL sub_1001092E8(char a1, char a2)
{
  v2 = a2 == 5 && a1 == 5;
  if (a1 != 5 && a2 != 5)
  {
    v5 = sub_1000260C8(a1);
    v7 = v6;
    if (v5 == sub_1000260C8(a2) && v7 == v8)
    {
      v2 = 1;
    }

    else
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return (v2 & 1) == 0;
}

BOOL sub_100109394(char a1, char a2)
{
  v2 = a2 == 15 && a1 == 15;
  if (a1 != 15 && a2 != 15)
  {
    v5 = sub_10009F288(a1);
    v7 = v6;
    if (v5 == sub_10009F288(a2) && v7 == v8)
    {
      v2 = 1;
    }

    else
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return (v2 & 1) == 0;
}

BOOL sub_100109440(char a1, uint64_t a2)
{
  v2 = a1 == 4;
  if (a2 != 4)
  {
    v2 = 0;
  }

  if (a1 != 4 && a2 != 4)
  {
    v2 = sub_1000E4628(a1, a2);
  }

  return (v2 & 1) == 0;
}

BOOL sub_100109488(uint64_t a1, unint64_t a2)
{
  v3 = a2 == 10 && a1 == 10;
  if (a1 != 10 && a2 != 10)
  {
    v3 = sub_100058B18(a1, a2);
  }

  return (v3 & 1) == 0;
}

BOOL sub_1001094CC(char a1, char a2)
{
  v2 = a2 == 9 && a1 == 9;
  if (a1 != 9 && a2 != 9)
  {
    v5 = sub_10001A768(a1);
    v7 = v6;
    if (v5 == sub_10001A768(a2) && v7 == v8)
    {
      v2 = 1;
    }

    else
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return (v2 & 1) == 0;
}

BOOL sub_10010957C(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1 == 4;
  if (a2 != 4)
  {
    v2 = 0;
  }

  if (a1 != 4 && a2 != 4)
  {
    v2 = sub_1000E34FC(a1, a2);
  }

  return (v2 & 1) == 0;
}

BOOL sub_1001095C4(char a1, char a2)
{
  v2 = a2 == 7 && a1 == 7;
  if (a1 != 7 && a2 != 7)
  {
    v5 = sub_10001CEE4(a1);
    v7 = v6;
    if (v5 == sub_10001CEE4(a2) && v7 == v8)
    {
      v2 = 1;
    }

    else
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return (v2 & 1) == 0;
}

BOOL sub_100109670(char a1, char a2)
{
  v2 = a2 == 11 && a1 == 11;
  if (a1 != 11 && a2 != 11)
  {
    sub_1000D3CC0(a1);
    v6 = v5;
    v8 = v7;
    sub_1000D3CC0(a2);
    if (v6 == v10 && v8 == v9)
    {
      v2 = 1;
    }

    else
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return (v2 & 1) == 0;
}

BOOL sub_10010971C(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1 == 3;
  if (a2 != 3)
  {
    v2 = 0;
  }

  if (a1 != 3 && a2 != 3)
  {
    v2 = sub_1000E3424(a1, a2);
  }

  return (v2 & 1) == 0;
}

BOOL sub_100109764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a2 | a4) == 0;
  if (a2 && a4)
  {
    if (a1 == a3 && a2 == a4)
    {
      v5 = 1;
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return (v5 & 1) == 0;
}

uint64_t sub_1001097E4()
{
  sub_100114BAC();
  v4 = sub_10011351C(v3);
  v6 = v5;
  v8 = v7;
  v9 = sub_10011357C(v2);
  v11 = v10;
  v13 = v12;
  v14 = sub_1001137C8(v4, v6, v8 & 1, v9, v10, v12 & 1);
  sub_1001140AC(v9, v11, v13 & 1);
  v15 = sub_100114B9C();
  if (v14)
  {
    sub_1001140AC(v15, v16, v17);
    return 0;
  }

  else
  {
    sub_1001135D0(v15, v16, v17, v2, v1, v0);
    v18 = v19;
    v20 = sub_100114B9C();
    sub_1001140AC(v20, v21, v22);
  }

  return v18;
}

uint64_t sub_1001098CC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  v9 = v8;
  if (v7)
  {
    sub_1001147C4(a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), a4, a3);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return sub_100003CE8(a4, v10, 1, v9);
}

id *sub_100109984(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000D127C(0, v2, 0);
  v3 = a1 + 32;
  v4 = _swiftEmptyArrayStorage;
  if (v2)
  {
    while (1)
    {

      sub_100114B14();
      v5 = sub_100025A88();
      sub_100003768(v5, v6);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_1000D127C((v7 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = (v8 + 1);
      _swiftEmptyArrayStorage[v8 + 4] = v10;
      v3 += 8;
      if (!--v2)
      {
        return v4;
      }
    }

    return 0;
  }

  return v4;
}

id *sub_100109ACC(uint64_t a1, unint64_t *a2, void *a3)
{
  v10 = _swiftEmptyArrayStorage;
  v6 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  v7 = a1 + 32;
  if (!v6)
  {
    return v10;
  }

  while (1)
  {
    sub_10001E894(v7, v9);
    sub_100025778(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v7 += 32;
    if (!--v6)
    {
      return v10;
    }
  }

  return 0;
}

uint64_t sub_100109BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  sub_100113334(&qword_100193420, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_100109CC4;

  return dispatch thunk of AsyncIteratorProtocol.next()(a1);
}

uint64_t sub_100109CC4()
{
  sub_10003DCD8();
  sub_10004622C();
  v3 = v2;
  sub_100052FD4();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  sub_10000870C();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    if (v6)
    {
      swift_getObjectType();
      v9 = dispatch thunk of Actor.unownedExecutor.getter();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v13 = sub_100109E54;
  }

  else
  {
    if (v6)
    {
      swift_getObjectType();
      v9 = dispatch thunk of Actor.unownedExecutor.getter();
      v11 = v12;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v13 = sub_100109E30;
  }

  return _swift_task_switch(v13, v9, v11);
}

uint64_t sub_100109E54()
{
  sub_100025A94();
  *(v0 + 16) = *(v0 + 48);
  sub_100003768(&qword_100189398, &unk_100122910);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  sub_10000875C();

  return v1();
}

uint64_t sub_100109F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23[0] = a6;
  v7 = v6;
  v11 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  sub_10000ED84(v11);
  sub_10000ED78();
  __chkstk_darwin(v12);
  v14 = v23 - v13;
  sub_10000EC9C(a1, v23 - v13, &qword_1001888B0, &qword_1001228F0);
  v15 = type metadata accessor for TaskPriority();
  if (sub_10000E5F0(v14, 1, v15) == 1)
  {
    sub_10000ABCC(v14, &qword_1001888B0, &qword_1001228F0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v15 - 8) + 8))(v14, v15);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = *v7;
  sub_100096BD0();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = (v18 | v16);
  if (v18 | v16)
  {
    v24[0] = 0;
    v24[1] = 0;
    v21 = v24;
    v24[2] = v16;
    v24[3] = v18;
  }

  v23[1] = 1;
  v23[2] = v21;
  v23[3] = v19;
  swift_task_create();
}

BOOL sub_10010A0FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_10010A128(int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_10010A154()
{
  sub_100025A94();
  v1[8] = v0;
  v2 = sub_100003768(&qword_100191860, &qword_100131D50);
  sub_10000ED84(v2);
  v1[9] = sub_100052FA4();
  v3 = type metadata accessor for AirPodsDeviceInfo(0);
  v1[10] = v3;
  sub_10000ED84(v3);
  v1[11] = sub_100052FA4();
  v4 = type metadata accessor for ContinuousClock();
  v1[12] = v4;
  sub_100052F6C(v4);
  v1[13] = v5;
  v1[14] = sub_100052FA4();
  v6 = type metadata accessor for MainActor();
  v1[15] = sub_10006F3C8(v6);
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100096AF8();
  v1[16] = v7;
  v1[17] = v8;
  v9 = sub_100096AEC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10010A270()
{
  sub_10003DCD8();
  if (qword_100188360 != -1)
  {
    sub_100114A1C(&qword_100188360);
  }

  if (qword_1001A5950)
  {
    KeyPath = swift_getKeyPath();
    v2 = sub_1000FBFA4(KeyPath);

    if (v2)
    {
      static Bool.disableMinimumLoadTime.getter();
      static Duration.seconds(_:)();
      static Clock<>.continuous.getter();
      v3 = sub_10004F530();
      *(v0 + 144) = v3;
      *v3 = v0;
      v3[1] = sub_10010A544;
      v4 = sub_100077FE8();

      return v17(v4);
    }
  }

  v6 = *(v0 + 80);
  sub_10010CBFC(*(v0 + 72));
  v7 = sub_100082B98();
  v9 = sub_10000E5F0(v7, v8, v6);
  v10 = *(v0 + 72);
  if (v9 == 1)
  {

    sub_10000ABCC(v10, &qword_100191860, &qword_100131D50);
LABEL_12:
    v13 = 0;
LABEL_13:

    sub_1000E2A30();

    return v14(v13 & 1);
  }

  v11 = *(v0 + 88);
  sub_1000EAABC(*(v0 + 72), v11);
  v12 = *v11;
  *(v0 + 160) = v12;
  if (sub_10010A128(v12, &off_100176478))
  {
    sub_1000EAB94(*(v0 + 88));

    goto LABEL_12;
  }

  v15 = sub_10010B94C();
  v13 = sub_100082E24(v12, v15);

  if (v13 != 2)
  {
    sub_1000EAB94(*(v0 + 88));

    goto LABEL_13;
  }

  v16 = swift_task_alloc();
  *(v0 + 152) = v16;
  *v16 = v0;
  v16[1] = sub_10010A748;

  return sub_10010FBD4();
}

uint64_t sub_10010A544()
{
  sub_10004F4F8();
  v2 = *v1;
  v3 = *v1;
  sub_10000870C();
  *v4 = v3;
  *v4 = *v1;

  v5 = v2[14];
  v6 = v2[13];
  v7 = v2[12];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = v3[16];
    v9 = v3[17];
    v10 = sub_100114854;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = v3[16];
    v9 = v3[17];
    v10 = sub_10010A6CC;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_10010A6CC()
{
  sub_100025A94();

  sub_1000E2A30();

  return v0(1);
}

uint64_t sub_10010A748()
{
  sub_100025A94();
  sub_100096CD0();
  sub_100052FD4();
  *v3 = v2;
  v4 = *v1;
  sub_100114B6C();
  *v5 = v4;
  *(v7 + 164) = v6;

  sub_100096D54();
  v9 = *(v8 + 136);
  v10 = *(v0 + 128);

  return _swift_task_switch(sub_10010A854, v10, v9);
}

uint64_t sub_10010A854()
{
  v1 = *(v0 + 164);
  v2 = *(v0 + 160);
  v3 = *(v0 + 64);

  swift_getKeyPath();
  *(v0 + 40) = v3;
  sub_1001148C8();
  sub_100113334(v4, v5, &unk_10012B6F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 48) = v3;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v6 = qword_100192F40;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v3 + v6);
  sub_100052BC4(v1, v2);
  *(v3 + v6) = v21;
  swift_endAccess();
  *(v0 + 56) = v3;
  swift_getKeyPath();
  sub_100096908();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  if (qword_100188398 != -1)
  {
    sub_1001148E0(&qword_100188398);
  }

  v7 = type metadata accessor for Logger();
  sub_10000C2D4(v7, qword_1001A59B0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (sub_100114BC8(v9))
  {
    v10 = *(v0 + 164);
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    v11[1] = v10;
    sub_100114B5C();
    _os_log_impl(v12, v13, v14, v15, v16, 8u);
    sub_100008744(v11);
  }

  v17 = *(v0 + 88);

  sub_1000EAB94(v17);
  v18 = *(v0 + 164);

  sub_1000E2A30();

  return v19(v18);
}

uint64_t sub_10010AABC()
{
  v0 = sub_100106AB0();
  if (v0 == 4)
  {
    v1 = 0;
  }

  else
  {
    v7[0] = v0;
    sub_100084C74();
    v1 = AnyView.init<A>(_:)();
  }

  sub_100108520(v1);
  result = sub_100106AB0();
  if (result != 4)
  {
    v3 = sub_10008A620(v7);
    v5 = v4;
    v6 = type metadata accessor for SupportFlowSession();
    if (!sub_10000E5F0(v5, 1, v6))
    {
      SupportFlowSession.currentStepId.setter();
    }

    return (v3)(v7, 0);
  }

  return result;
}

uint64_t sub_10010AC5C()
{
  v0 = sub_100106BE4();
  if (v0 == 5)
  {
    v1 = 0;
  }

  else
  {
    v8[0] = v0;
    sub_10002629C();
    v1 = AnyView.init<A>(_:)();
  }

  sub_1001086D8(v1);
  result = sub_100106BE4();
  if (result != 5)
  {
    v3 = result;
    v4 = sub_10008A620(v8);
    v6 = v5;
    v7 = type metadata accessor for SupportFlowSession();
    if (!sub_10000E5F0(v6, 1, v7))
    {
      sub_1000E71A4(v3);
      SupportFlowSession.currentStepId.setter();
    }

    return (v4)(v8, 0);
  }

  return result;
}

uint64_t sub_10010AD3C()
{
  v0 = sub_100106D18();
  if (v0 == 15)
  {
    v1 = 0;
  }

  else
  {
    v8[0] = v0;
    sub_100004984();
    v1 = AnyView.init<A>(_:)();
  }

  sub_1001087C8(v1);
  result = sub_100106D18();
  if (result != 15)
  {
    v3 = result;
    v4 = sub_10008A620(v8);
    v6 = v5;
    v7 = type metadata accessor for SupportFlowSession();
    if (!sub_10000E5F0(v6, 1, v7))
    {
      sub_10009F288(v3);
      SupportFlowSession.currentStepId.setter();
    }

    return (v4)(v8, 0);
  }

  return result;
}

uint64_t sub_10010AE1C()
{
  v0 = sub_100106E4C();
  if (v0 == 4)
  {
    v1 = 0;
  }

  else
  {
    v7[0] = v0;
    sub_100005444();
    v1 = AnyView.init<A>(_:)();
  }

  sub_1001088B8(v1);
  result = sub_100106E4C();
  if (result != 4)
  {
    v3 = sub_10008A620(v7);
    v5 = v4;
    v6 = type metadata accessor for SupportFlowSession();
    if (!sub_10000E5F0(v5, 1, v6))
    {
      SupportFlowSession.currentStepId.setter();
    }

    return (v3)(v7, 0);
  }

  return result;
}

unint64_t sub_10010AF94()
{
  v0 = sub_100106F80();
  if (v0 == 10)
  {
    v1 = 0;
  }

  else
  {
    v8[0] = v0;
    sub_100058F18();
    v1 = AnyView.init<A>(_:)();
  }

  sub_1001089A8(v1);
  result = sub_100106F80();
  if (result != 10)
  {
    v3 = result;
    v4 = sub_10008A620(v8);
    v6 = v5;
    v7 = type metadata accessor for SupportFlowSession();
    if (!sub_10000E5F0(v6, 1, v7))
    {
      sub_100058208(v3);
      SupportFlowSession.currentStepId.setter();
    }

    (v4)(v8, 0);
    return sub_10003F68C(v3);
  }

  return result;
}

uint64_t sub_10010B074()
{
  v0 = sub_1001070C0();
  if (v0 == 9)
  {
    v1 = 0;
  }

  else
  {
    v8[0] = v0;
    sub_10001A9E8();
    v1 = AnyView.init<A>(_:)();
  }

  sub_100108A98(v1);
  result = sub_1001070C0();
  if (result != 9)
  {
    v3 = result;
    v4 = sub_10008A620(v8);
    v6 = v5;
    v7 = type metadata accessor for SupportFlowSession();
    if (!sub_10000E5F0(v6, 1, v7))
    {
      sub_1000E7240(v3);
      SupportFlowSession.currentStepId.setter();
    }

    return (v4)(v8, 0);
  }

  return result;
}

uint64_t sub_10010B154()
{
  v0 = sub_1001071F4();
  if (v0 == 4)
  {
    v1 = 0;
  }

  else
  {
    v7[0] = v0;
    sub_10001F364();
    v1 = AnyView.init<A>(_:)();
  }

  sub_100108B88(v1);
  result = sub_1001071F4();
  if (result != 4)
  {
    v3 = sub_10008A620(v7);
    v5 = v4;
    v6 = type metadata accessor for SupportFlowSession();
    if (!sub_10000E5F0(v5, 1, v6))
    {
      SupportFlowSession.currentStepId.setter();
    }

    return (v3)(v7, 0);
  }

  return result;
}

uint64_t sub_10010B2C8()
{
  if (sub_100107328())
  {
    v0 = 0;
  }

  else
  {
    sub_100021F94();
    v0 = AnyView.init<A>(_:)();
  }

  sub_100108C78(v0);
  result = sub_100107328();
  if ((result & 1) == 0)
  {
    v2 = sub_10008A620(v6);
    v4 = v3;
    v5 = type metadata accessor for SupportFlowSession();
    if (!sub_10000E5F0(v4, 1, v5))
    {
      SupportFlowSession.currentStepId.setter();
    }

    return (v2)(v6, 0);
  }

  return result;
}

uint64_t sub_10010B39C()
{
  v0 = sub_10010745C();
  if (v0 == 7)
  {
    v1 = 0;
  }

  else
  {
    v8[0] = v0;
    sub_10001D138();
    v1 = AnyView.init<A>(_:)();
  }

  sub_100108D68(v1);
  result = sub_10010745C();
  if (result != 7)
  {
    v3 = result;
    v4 = sub_10008A620(v8);
    v6 = v5;
    v7 = type metadata accessor for SupportFlowSession();
    if (!sub_10000E5F0(v6, 1, v7))
    {
      sub_1000E7888(v3);
      SupportFlowSession.currentStepId.setter();
    }

    return (v4)(v8, 0);
  }

  return result;
}

uint64_t sub_10010B47C()
{
  v0 = sub_100107590();
  if (v0 == 11)
  {
    v1 = 0;
  }

  else
  {
    v8[0] = v0;
    sub_10001BB68();
    v1 = AnyView.init<A>(_:)();
  }

  sub_100108E58(v1);
  result = sub_100107590();
  if (result != 11)
  {
    v3 = result;
    v4 = sub_10008A620(v8);
    v6 = v5;
    v7 = type metadata accessor for SupportFlowSession();
    if (!sub_10000E5F0(v6, 1, v7))
    {
      sub_1000E7488(v3);
      SupportFlowSession.currentStepId.setter();
    }

    return (v4)(v8, 0);
  }

  return result;
}

uint64_t sub_10010B55C()
{
  v0 = sub_1001076C4();
  if (v0 == 3)
  {
    v1 = 0;
  }

  else
  {
    v7[0] = v0;
    sub_1000D5B08();
    v1 = AnyView.init<A>(_:)();
  }

  sub_100108F48(v1);
  result = sub_1001076C4();
  if (result != 3)
  {
    v3 = sub_10008A620(v7);
    v5 = v4;
    v6 = type metadata accessor for SupportFlowSession();
    if (!sub_10000E5F0(v5, 1, v6))
    {
      SupportFlowSession.currentStepId.setter();
    }

    return (v3)(v7, 0);
  }

  return result;
}

uint64_t sub_10010B6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Optional();
  sub_100008780();
  sub_10000ED78();
  __chkstk_darwin(v5);
  sub_100017BAC();
  v6 = sub_100096BC4();
  v7(v6);
  return sub_1000A135C(v4);
}

unint64_t sub_10010B778(uint64_t a1, unint64_t a2)
{
  v4 = *(*a1 + 184);
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  sub_10003F548(a2);
  sub_10003F68C(v5);
  return sub_10010AF94();
}

uint64_t sub_10010B804(uint64_t a1, char a2)
{
  v4 = *(*a1 + 184);
  swift_beginAccess();
  *(a1 + v4) = a2 & 1;
  return sub_10010B2C8();
}

uint64_t sub_10010B878(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  v6 = *(*a1 + 184);
  v7 = swift_beginAccess();
  *(a1 + v6) = a2;
  return a3(v7);
}

uint64_t sub_10010B8F8()
{
  sub_10006F388();
  result = sub_1000A15B0();
  *v0 = result;
  return result;
}

uint64_t sub_10010B94C()
{
  swift_getKeyPath();
  sub_1001148C8();
  v3 = sub_100113334(v1, v2, &unk_10012B6F0);
  sub_100114A50(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100114C74(v11);
}

uint64_t sub_10010BA10(uint64_t a1)
{
  v3 = qword_100192F40;
  swift_beginAccess();
  if (sub_100113F08(*(v1 + v3), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    swift_getKeyPath();
    sub_1001149F0();
    __chkstk_darwin(v5);
    sub_100096768();
    *(v6 - 16) = v1;
    *(v6 - 8) = a1;
    sub_100105690();
    sub_10010F474();
  }
}

uint64_t sub_10010BADC(uint64_t a1, uint64_t a2)
{
  v4 = qword_100192F40;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_10010BB4C()
{
  swift_getKeyPath();
  sub_1001148C8();
  v3 = sub_100113334(v1, v2, &unk_10012B6F0);
  sub_100114A50(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10010BC0C()
{
  swift_getKeyPath();
  sub_100114B7C();
  sub_10010F474();
}

uint64_t sub_10010BC78(uint64_t a1, uint64_t a2)
{
  *(a1 + qword_100192F48) = a2;
}

uint64_t sub_10010BCBC()
{
  swift_getKeyPath();
  sub_1001148C8();
  v3 = sub_100113334(v1, v2, &unk_10012B6F0);
  sub_100114A50(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + qword_100192F50);
}

uint64_t sub_10010BD4C(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + qword_100192F50) == (result & 1))
  {
    *(v1 + qword_100192F50) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100096768();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    sub_100105690();
    sub_10010F474();
  }

  return result;
}

uint64_t sub_10010BDF0()
{
  v2 = type metadata accessor for AirPodsDeviceInfo(0);
  sub_10000AF7C();
  __chkstk_darwin(v3);
  sub_100114918();
  v4 = sub_100003768(&qword_100191860, &qword_100131D50);
  sub_10000ED84(v4);
  sub_10000ED78();
  __chkstk_darwin(v5);
  sub_100017BAC();
  sub_10010CBFC(v1);
  v6 = sub_100082B98();
  if (!sub_10000E5F0(v6, v7, v2))
  {
    sub_1001148B0();
    v10 = sub_100096908();
    sub_1001147C4(v10, v11, v12);
    sub_10000ABCC(v1, &qword_100191860, &qword_100131D50);
    sub_100114A3C();
    if (!(!v15 & v14))
    {
      v16 = 1 << v13;
      if ((v16 & 0xA5) != 0)
      {
        v9 = 0xE900000000000034;
LABEL_9:
        sub_1000EAB94(v0);
        v8 = 0x5F53444F50524941;
        goto LABEL_10;
      }

      if ((v16 & 0xC000) != 0)
      {
        v9 = 0xED0000335F4F5250;
        goto LABEL_9;
      }
    }

    v9 = 0xEB000000004F5250;
    goto LABEL_9;
  }

  sub_10000ABCC(v1, &qword_100191860, &qword_100131D50);
  v8 = 0;
  v9 = 0;
LABEL_10:
  type metadata accessor for FlowViewDataProvider(0);
  sub_10009E06C();
  sub_1000877E8(0xD000000000000011, v17, v8, v9);
  sub_100114AA4();
  return sub_1001149E0();
}

uint64_t sub_10010BF80@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AirPodsDeviceInfo(0);
  sub_10000AF7C();
  __chkstk_darwin(v3);
  sub_10000C30C();
  v6 = (v5 - v4);
  v7 = sub_100003768(&qword_100191860, &qword_100131D50);
  sub_10000ED84(v7);
  sub_10000ED78();
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  sub_10010CBFC(&v17 - v9);
  if (sub_10000E5F0(v10, 1, v2))
  {
    sub_10000ABCC(v10, &qword_100191860, &qword_100131D50);
    type metadata accessor for ImageResource();
    sub_100053004();
    return sub_100003CE8(v11, v12, v13, v14);
  }

  else
  {
    sub_1001148B0();
    sub_1001147C4(v10, v6, v16);
    sub_10000ABCC(v10, &qword_100191860, &qword_100131D50);
    sub_100082EB8(*v6, a1);
    return sub_1000EAB94(v6);
  }
}

uint64_t sub_10010C0C0()
{
  v2 = type metadata accessor for AirPodsDeviceInfo(0);
  sub_10000AF7C();
  __chkstk_darwin(v3);
  sub_100114918();
  v4 = sub_100003768(&qword_100191860, &qword_100131D50);
  sub_10000ED84(v4);
  sub_10000ED78();
  __chkstk_darwin(v5);
  sub_100017BAC();
  sub_10010CBFC(v1);
  v6 = sub_100082B98();
  if (sub_10000E5F0(v6, v7, v2))
  {
    sub_10000ABCC(v1, &qword_100191860, &qword_100131D50);
    sub_100114BBC();
  }

  else
  {
    sub_1001148B0();
    v8 = sub_100096908();
    sub_1001147C4(v8, v9, v10);
    sub_10000ABCC(v1, &qword_100191860, &qword_100131D50);
    sub_1000830E4(*v0);
    sub_1000EAB94(v0);
  }

  type metadata accessor for FlowViewDataProvider(0);
  sub_10009E06C();
  sub_1001149FC(28, v11);
  sub_100114AA4();
  return sub_1001149E0();
}

uint64_t sub_10010C1F0()
{
  v2 = type metadata accessor for AirPodsDeviceInfo(0);
  sub_10000AF7C();
  __chkstk_darwin(v3);
  sub_100114918();
  v4 = sub_100003768(&qword_100191860, &qword_100131D50);
  sub_10000ED84(v4);
  sub_10000ED78();
  __chkstk_darwin(v5);
  sub_100017BAC();
  sub_10010CBFC(v1);
  v6 = sub_100082B98();
  if (sub_10000E5F0(v6, v7, v2))
  {
    sub_10000ABCC(v1, &qword_100191860, &qword_100131D50);
    sub_100114BBC();
  }

  else
  {
    sub_1001148B0();
    v8 = sub_100096908();
    sub_1001147C4(v8, v9, v10);
    sub_10000ABCC(v1, &qword_100191860, &qword_100131D50);
    sub_1000830E4(*v0);
    sub_1000EAB94(v0);
  }

  type metadata accessor for FlowViewDataProvider(0);
  sub_10009E06C();
  sub_1001149FC(22, v11);
  sub_100114AA4();
  return sub_1001149E0();
}

uint64_t sub_10010C320()
{
  v2 = type metadata accessor for AirPodsDeviceInfo(0);
  sub_10000AF7C();
  __chkstk_darwin(v3);
  sub_100114918();
  v4 = sub_100003768(&qword_100191860, &qword_100131D50);
  sub_10000ED84(v4);
  sub_10000ED78();
  __chkstk_darwin(v5);
  sub_100017BAC();
  sub_10010CBFC(v1);
  v6 = sub_100082B98();
  if (sub_10000E5F0(v6, v7, v2))
  {
    sub_10000ABCC(v1, &qword_100191860, &qword_100131D50);
    sub_100114BBC();
  }

  else
  {
    sub_1001148B0();
    v8 = sub_100096908();
    sub_1001147C4(v8, v9, v10);
    sub_10000ABCC(v1, &qword_100191860, &qword_100131D50);
    sub_100114A3C();
    sub_1000EAB94(v0);
  }

  type metadata accessor for FlowViewDataProvider(0);
  sub_10009E06C();
  sub_1001149FC(20, v11);
  sub_100114AA4();
  return sub_1001149E0();
}

uint64_t sub_10010C478()
{
  v2 = type metadata accessor for AirPodsDeviceInfo(0);
  sub_10000AF7C();
  __chkstk_darwin(v3);
  sub_100114918();
  v4 = sub_100003768(&qword_100191860, &qword_100131D50);
  sub_10000ED84(v4);
  sub_10000ED78();
  __chkstk_darwin(v5);
  sub_100017BAC();
  sub_10010CBFC(v1);
  v6 = sub_100082B98();
  if (sub_10000E5F0(v6, v7, v2))
  {
    sub_10000ABCC(v1, &qword_100191860, &qword_100131D50);
    sub_100114BBC();
  }

  else
  {
    sub_1001148B0();
    v8 = sub_100096908();
    sub_1001147C4(v8, v9, v10);
    sub_10000ABCC(v1, &qword_100191860, &qword_100131D50);
    sub_100114A3C();
    sub_1000EAB94(v0);
  }

  type metadata accessor for FlowViewDataProvider(0);
  sub_10009E06C();
  sub_1001149FC(24, v11);
  sub_100114AA4();
  return sub_1001149E0();
}

BOOL sub_10010C5D0()
{
  v2 = type metadata accessor for AirPodsDeviceInfo(0);
  sub_10000AF7C();
  __chkstk_darwin(v3);
  sub_100114918();
  v4 = sub_100003768(&qword_100191860, &qword_100131D50);
  sub_10000ED84(v4);
  sub_10000ED78();
  __chkstk_darwin(v5);
  sub_100017BAC();
  sub_10010CBFC(v1);
  v6 = sub_100082B98();
  if (sub_10000E5F0(v6, v7, v2))
  {
    sub_10000ABCC(v1, &qword_100191860, &qword_100131D50);
    return 0;
  }

  else
  {
    sub_1001148B0();
    v9 = sub_100096908();
    sub_1001147C4(v9, v10, v11);
    sub_10000ABCC(v1, &qword_100191860, &qword_100131D50);
    v8 = sub_10010A128(*v0, &off_1001766C8);
    sub_1000EAB94(v0);
  }

  return v8;
}

void sub_10010C6E4()
{
  v0 = type metadata accessor for AirPodsDeviceInfo(0);
  __chkstk_darwin(v0);
  v2 = (&v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_100003768(&qword_100191860, &qword_100131D50);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v25 - v8;
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  if (qword_100188398 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000C2D4(v12, qword_1001A59B0);

  v25 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v13))
  {
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v14 = 136315650;
    sub_10010CBFC(v11);
    if (sub_10000E5F0(v11, 1, v0))
    {
      sub_10000ABCC(v11, &qword_100191860, &qword_100131D50);
      v15 = 0;
      v16 = 0xE000000000000000;
    }

    else
    {
      sub_1001147C4(v11, v2, type metadata accessor for AirPodsDeviceInfo);
      sub_10000ABCC(v11, &qword_100191860, &qword_100131D50);
      v15 = v2[3];
      v16 = v2[4];

      sub_1000EAB94(v2);
    }

    v18 = sub_10009CACC(v15, v16, &v26);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    sub_10010CBFC(v9);
    if (sub_10000E5F0(v9, 1, v0))
    {
      sub_10000ABCC(v9, &qword_100191860, &qword_100131D50);
    }

    else
    {
      sub_1001147C4(v9, v2, type metadata accessor for AirPodsDeviceInfo);
      sub_10000ABCC(v9, &qword_100191860, &qword_100131D50);
      v19 = v2[5];
      v20 = v2[6];

      sub_1000EAB94(v2);
      if (v20)
      {
LABEL_14:
        v21 = sub_10009CACC(v19, v20, &v26);

        *(v14 + 14) = v21;
        *(v14 + 22) = 2080;
        sub_10010CBFC(v6);
        if (sub_10000E5F0(v6, 1, v0))
        {
          sub_10000ABCC(v6, &qword_100191860, &qword_100131D50);
        }

        else
        {
          sub_1001147C4(v6, v2, type metadata accessor for AirPodsDeviceInfo);
          sub_10000ABCC(v6, &qword_100191860, &qword_100131D50);
          v22 = v2[9];
          v23 = v2[10];

          sub_1000EAB94(v2);
          if (v23)
          {
            goto LABEL_18;
          }
        }

        v22 = 0;
        v23 = 0xE000000000000000;
LABEL_18:
        v24 = sub_10009CACC(v22, v23, &v26);

        *(v14 + 24) = v24;
        _os_log_impl(&_mh_execute_header, v25, v13, "Current Device: current device set to %s, model %s, serial number %s", v14, 0x20u);
        swift_arrayDestroy();

        return;
      }
    }

    v19 = 0;
    v20 = 0xE000000000000000;
    goto LABEL_14;
  }

  v17 = v25;
}

uint64_t sub_10010CB80(uint64_t a1)
{
  v3 = qword_100192F58;
  swift_beginAccess();
  sub_10011337C(a1, v1 + v3);
  swift_endAccess();
  sub_10010C6E4();
  return sub_10000ABCC(a1, &qword_100191860, &qword_100131D50);
}

uint64_t sub_10010CBFC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1001148C8();
  v6 = sub_100113334(v4, v5, &unk_10012B6F0);
  sub_100114A50(v6, v7, v8, v9, v10, v11, v12, v13, v17, v1);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = qword_100192F58;
  sub_100114C74(v14);
  return sub_10000EC9C(v2 + v15, a1, &qword_100191860, &qword_100131D50);
}

uint64_t sub_10010CCAC(uint64_t a1)
{
  v2 = sub_100003768(&qword_100191860, &qword_100131D50);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_10000EC9C(a1, &v6 - v3, &qword_100191860, &qword_100131D50);
  return sub_10010CD58(v4);
}

uint64_t sub_10010CD58(uint64_t a1)
{
  swift_getKeyPath();
  sub_100114B7C();
  sub_10010F474();

  return sub_10000ABCC(a1, &qword_100191860, &qword_100131D50);
}

uint64_t sub_10010CDD4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003768(&qword_100191860, &qword_100131D50);
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - v4;
  sub_10000EC9C(a2, &v7 - v4, &qword_100191860, &qword_100131D50);
  return sub_10010CB80(v5);
}

void sub_10010CE88()
{
  sub_100096D74();
  v1 = type metadata accessor for Locale();
  v2 = sub_10000ED84(v1);
  __chkstk_darwin(v2);
  sub_10000C30C();
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = sub_10000ED84(v3);
  __chkstk_darwin(v4);
  sub_10000C30C();
  v5 = type metadata accessor for SupportFlowIdentifier();
  sub_100008780();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10000C30C();
  v11 = v10 - v9;
  *(v0 + qword_100192F40) = Dictionary.init(dictionaryLiteral:)();
  *(v0 + qword_100192F48) = 0;
  *(v0 + qword_100192F50) = 0;
  type metadata accessor for AirPodsDeviceInfo(0);
  sub_100053004();
  sub_100003CE8(v12, v13, v14, v15);
  ObservationRegistrar.init()();
  (*(v7 + 104))(v11, enum case for SupportFlowIdentifier.airPods(_:), v5);

  sub_1001058A4();

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_10004F504();
  v16 = String.init(localized:table:bundle:locale:comment:)();
  sub_1001067C0(v16, v17);

  sub_100053050();
}

uint64_t sub_10010D0CC()
{
  sub_100025A94();
  v1[2] = v0;
  v2 = sub_100003768(&qword_100191860, &qword_100131D50);
  sub_10000ED84(v2);
  v1[3] = sub_100052FA4();
  v3 = type metadata accessor for MainActor();
  v1[4] = sub_10006F3C8(v3);
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100096AF8();
  v1[5] = v4;
  v1[6] = v5;
  v6 = sub_100096AEC();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10010D178()
{
  sub_100025A94();
  if (qword_100188360 != -1)
  {
    sub_100114A1C(&qword_100188360);
  }

  if (qword_1001A5950 && sub_1000EC900())
  {

    sub_10010BC0C();
    v1 = sub_10010BB4C();
    if (v1)
    {
      v2 = *(v1 + 16);

      if (v2 == 1)
      {
        v3 = sub_10010BB4C();
        v4 = *(v0 + 24);
        if (v3)
        {
          sub_10011497C();
          sub_1001098CC(v5, v6, v7, v4);
        }

        else
        {
          type metadata accessor for AirPodsDeviceInfo(0);
          sub_100053004();
          sub_100003CE8(v10, v11, v12, v13);
        }

        sub_10010CD58(*(v0 + 24));
      }
    }

    sub_10000875C();

    return v14();
  }

  else
  {
    v8 = swift_task_alloc();
    *(v0 + 56) = v8;
    *v8 = v0;
    sub_10006F33C(v8);

    return sub_10010E698();
  }
}

uint64_t sub_10010D2E4()
{
  sub_100025A94();
  sub_100096CD0();
  v2 = *v1;
  sub_10000870C();
  *v3 = v2;

  sub_100096D54();
  v5 = *(v4 + 48);
  v6 = *(v0 + 40);

  return _swift_task_switch(sub_10010D3F0, v6, v5);
}

uint64_t sub_10010D3F0()
{
  sub_100025A94();

  v1 = sub_10010BB4C();
  if (v1)
  {
    v2 = *(v1 + 16);

    if (v2 == 1)
    {
      v3 = sub_10010BB4C();
      v4 = *(v0 + 24);
      if (v3)
      {
        sub_10011497C();
        sub_1001098CC(v5, v6, v7, v4);
      }

      else
      {
        type metadata accessor for AirPodsDeviceInfo(0);
        sub_100053004();
        sub_100003CE8(v8, v9, v10, v11);
      }

      sub_10010CD58(*(v0 + 24));
    }
  }

  sub_10000875C();

  return v12();
}

uint64_t sub_10010D4B8()
{
  v2 = type metadata accessor for AirPodsDeviceInfo(0);
  sub_10000AF7C();
  __chkstk_darwin(v3);
  sub_100114918();
  v4 = sub_100003768(&qword_100191860, &qword_100131D50);
  v5 = sub_10000ED84(v4);
  v6 = __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = sub_10010BB4C();
  if (v11 && (v12 = *(v11 + 16), , v12))
  {
    if (v12 == 1)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }
  }

  else
  {
    v13 = sub_10010BCBC() & 1;
  }

  sub_100107A30(v13);
  result = sub_10010BB4C();
  if (result)
  {
    v15 = result;
    if (*(result + 16) == 1)
    {
      sub_10011497C();
      sub_1001098CC(v15, v16, v17, v10);

      sub_10010CD58(v10);
      sub_1000A3190();
      sub_10010CBFC(v8);
      if (sub_10000E5F0(v8, 1, v2))
      {
        sub_10000ABCC(v8, &qword_100191860, &qword_100131D50);
        sub_100114BBC();
      }

      else
      {
        sub_1001148B0();
        sub_1001147C4(v8, v0, v18);
        sub_10000ABCC(v8, &qword_100191860, &qword_100131D50);
        v1 = *(v0 + 72);
        v2 = *(v0 + 80);

        sub_1000EAB94(v0);
      }

      return sub_10008ADD4(v1, v2);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10010D6BC()
{
  sub_100025A94();
  *(v1 + 16) = v0;
  v2 = type metadata accessor for MainActor();
  *(v1 + 24) = sub_10006F3C8(v2);
  sub_10006F37C();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10010D744, v4, v3);
}

uint64_t sub_10010D744()
{
  sub_10003DCD8();

  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 enabled];

    sub_10010BD4C(v2);
  }

  sub_1000A3190();
  sub_10010BCBC();
  sub_100085FE4();
  sub_10000875C();

  return v3();
}

uint64_t sub_10010D818()
{
  sub_100025A94();
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100096AF8();
  v0[4] = v1;
  v0[5] = v2;
  v3 = sub_100096AEC();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10010D8A0()
{
  sub_100025A94();
  v1 = static MainActor.shared.getter();
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_10010D97C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v2, &type metadata for ()[1], &type metadata for ()[1], v1, &protocol witness table for MainActor, &unk_100131DD8, 0, &type metadata for ()[1]);
}

uint64_t sub_10010D97C()
{
  sub_10003DCD8();
  sub_100096CD0();
  v2 = *v1;
  sub_10000870C();
  *v3 = v2;

  sub_100096D54();
  v5 = *(v4 + 40);
  v6 = *(v0 + 32);

  return _swift_task_switch(sub_10006D0B4, v6, v5);
}

uint64_t sub_10010DAAC(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  sub_100003768(&qword_1001888B0, &qword_1001228F0);
  v2[3] = swift_task_alloc();
  v2[4] = type metadata accessor for MainActor();
  v2[5] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[6] = v4;
  v2[7] = v3;

  return _swift_task_switch(sub_10010DB80, v4, v3);
}

uint64_t sub_10010DB80()
{
  v1 = v0[3];
  v2 = type metadata accessor for TaskPriority();
  v3 = sub_100082B98();
  sub_100003CE8(v3, v4, 1, v2);
  sub_100096BD0();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_100109F1C(v1, &unk_100131DF0, v5, &unk_10017FBF8, &type metadata for ()[1], &unk_100131E20);
  sub_10000ABCC(v1, &qword_1001888B0, &qword_1001228F0);
  v6 = sub_100082B98();
  sub_100003CE8(v6, v7, 1, v2);
  sub_100096BD0();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_100109F1C(v1, &unk_100131E00, v8, &unk_10017FBF8, &type metadata for ()[1], &unk_100131E20);
  sub_10000ABCC(v1, &qword_1001888B0, &qword_1001228F0);
  v0[8] = static MainActor.shared.getter();
  v9 = swift_task_alloc();
  v0[9] = v9;
  sub_100003768(&qword_100193400, &qword_100131E08);
  *v9 = v0;
  v9[1] = sub_10010DD78;

  return TaskGroup.next(isolation:)(v0 + 10);
}

uint64_t sub_10010DD78()
{
  sub_10003DCD8();
  sub_100096CD0();
  v2 = *v1;
  sub_10000870C();
  *v3 = v2;

  sub_100096D54();
  v5 = *(v4 + 56);
  v6 = *(v0 + 48);

  return _swift_task_switch(sub_10010DEA8, v6, v5);
}

uint64_t sub_10010DEA8()
{
  sub_100025A94();

  TaskGroup.cancelAll()();

  sub_10000875C();

  return v0();
}

uint64_t sub_10010DF20()
{
  sub_100003768(&qword_100193418, &qword_100131E28);
  v0[3] = swift_task_alloc();
  v1 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v0[6] = swift_task_alloc();

  return _swift_task_switch(sub_10010E014, 0, 0);
}

uint64_t sub_10010E014()
{
  sub_10003DCD8();
  v1 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  v2 = sub_10004F530();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_10010E10C;
  sub_10004F504();

  return v4();
}

uint64_t sub_10010E10C()
{
  sub_100025A94();
  sub_10004622C();
  v2 = *v1;
  sub_10000870C();
  *v3 = v2;

  if (!v0)
  {
    sub_10004F504();

    return _swift_task_switch(v5, v6, v7);
  }

  return result;
}

uint64_t sub_10010E208()
{
  sub_100025A94();
  v1 = v0[3];
  (*(v0[5] + 8))(v0[6], v0[4]);
  v2 = type metadata accessor for Notification();
  if (sub_10000E5F0(v1, 1, v2) != 1)
  {
    sub_10000ABCC(v0[3], &qword_100193418, &qword_100131E28);
  }

  sub_10000875C();

  return v3();
}

uint64_t sub_10010E2BC()
{
  v1 = type metadata accessor for ContinuousClock();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_10010E378, 0, 0);
}

uint64_t sub_10010E378()
{
  sub_100025A94();
  static Clock<>.continuous.getter();
  v1 = sub_10004F530();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_10010E42C;
  sub_10004F504();

  return v3();
}

uint64_t sub_10010E42C()
{
  sub_10004F4F8();
  v2 = *v1;
  sub_10000870C();
  *v3 = v2;

  if (v0)
  {
  }

  v4 = sub_100077FE8();
  v5(v4);
  sub_10004F504();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10010E5AC()
{
  sub_10003DCD8();
  if (qword_100188398 != -1)
  {
    sub_1001148E0(&qword_100188398);
  }

  v0 = type metadata accessor for Logger();
  sub_10000C2D4(v0, qword_1001A59B0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (sub_100114BC8(v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    sub_100114B5C();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_100008744(v3);
  }

  sub_10000875C();

  return v9();
}

uint64_t sub_10010E698()
{
  sub_100025A94();
  v1[2] = v0;
  v2 = sub_100003768(&qword_100191860, &qword_100131D50);
  sub_10000ED84(v2);
  v1[3] = sub_100052FA4();
  v3 = type metadata accessor for AirPodsDeviceInfo(0);
  v1[4] = v3;
  sub_100052F6C(v3);
  v1[5] = v4;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for MainActor();
  v1[8] = sub_10006F3C8(v5);
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100096AF8();
  v1[9] = v6;
  v1[10] = v7;
  v8 = sub_100096AEC();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10010E7A4()
{
  v2 = [objc_opt_self() sharedInstance];
  *(v0 + 88) = v2;
  if (!v2)
  {

    goto LABEL_33;
  }

  if ([v2 available])
  {

    sub_10010BD4C([*(v0 + 88) enabled]);
    if (qword_100188398 != -1)
    {
      goto LABEL_37;
    }

    while (1)
    {
      v3 = type metadata accessor for Logger();
      sub_10000C2D4(v3, qword_1001A59B0);

      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 67109120;
        v6[1] = sub_10010BCBC() & 1;

        sub_100114C54(&_mh_execute_header, v7, v8, "Bluetooth enabled: %{BOOL}d");
        sub_100008744(v6);
      }

      else
      {
      }

      v21 = *(v0 + 16);
      v22 = sub_10010BCBC();
      v23 = *(v0 + 88);
      if ((v22 & 1) == 0)
      {
        break;
      }

      v24 = sub_100112EB4(v23);
      if (!v24)
      {
        goto LABEL_30;
      }

      sub_100109ACC(v24, &qword_1001933F8, BluetoothDevice_ptr);
      sub_10006F37C();

      if (!v21)
      {
        goto LABEL_30;
      }

      v51 = *(v0 + 40);
      sub_1000C9794(v21);
      sub_100114C20();
      v52 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v5 == v1)
        {

LABEL_30:
          sub_10010BC0C();
          v46 = sub_10010BB4C();
          v47 = *(v0 + 88);
          if (v46)
          {
            sub_100114B8C();

            sub_100085FE4();
          }

LABEL_33:

          sub_10000875C();
          sub_100046280();

          __asm { BRAA            X1, X16 }
        }

        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v25 = v44;
        v26 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        v28 = *(v0 + 24);
        v27 = *(v0 + 32);
        sub_10010F320(v44, v28);
        if (sub_10000E5F0(v28, 1, v27) == 1)
        {
          v29 = *(v0 + 24);

          sub_10000ABCC(v29, &qword_100191860, &qword_100131D50);
          ++v1;
        }

        else
        {
          v31 = *(v0 + 48);
          v30 = *(v0 + 56);
          sub_1000EAABC(*(v0 + 24), v30);
          sub_1001148B0();
          sub_1001147C4(v30, v31, v32);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100114BE4();
          }

          sub_100114AF8();
          v50 = v33;
          if (v34)
          {
            sub_100114C34();
            v52 = v45;
          }

          v35 = *(v0 + 56);

          v36 = sub_1000EAB94(v35);
          sub_100114A60(v36, v37, v38, v39, v40, v41, v42, v43, v50, v51, v52);
          v1 = v26;
        }
      }

      __break(1u);
      __break(1u);
LABEL_37:
      sub_1001148E0(&qword_100188398);
    }

    goto LABEL_33;
  }

  if (qword_100188398 != -1)
  {
    sub_1001148E0(&qword_100188398);
  }

  v9 = type metadata accessor for Logger();
  sub_10000C2D4(v9, qword_1001A59B0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (sub_100114BC8(v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    sub_100114B5C();
    _os_log_impl(v13, v14, v15, v16, v17, 2u);
    sub_100008744(v12);
  }

  v18 = swift_task_alloc();
  *(v0 + 96) = v18;
  *v18 = v0;
  v18[1] = sub_10010EC0C;
  sub_100046280();

  return sub_10010D818();
}

uint64_t sub_10010EC0C()
{
  sub_100025A94();
  sub_100096CD0();
  v2 = *v1;
  sub_10000870C();
  *v3 = v2;

  sub_100096D54();
  v5 = *(v4 + 80);
  v6 = *(v0 + 72);

  return _swift_task_switch(sub_10010ED18, v6, v5);
}

void sub_10010ED18()
{

  sub_10010BD4C([*(v0 + 88) enabled]);
  if (qword_100188398 != -1)
  {
LABEL_25:
    sub_1001148E0(&qword_100188398);
  }

  v2 = type metadata accessor for Logger();
  sub_10000C2D4(v2, qword_1001A59B0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    v5[1] = sub_10010BCBC() & 1;

    sub_100114C54(&_mh_execute_header, v6, v7, "Bluetooth enabled: %{BOOL}d");
    sub_100008744(v5);
  }

  else
  {
  }

  v8 = *(v0 + 16);
  v9 = sub_10010BCBC();
  v10 = *(v0 + 88);
  if (v9)
  {
    v11 = sub_100112EB4(*(v0 + 88));
    if (v11)
    {
      sub_100109ACC(v11, &qword_1001933F8, BluetoothDevice_ptr);
      sub_10006F37C();

      if (v8)
      {
        v37 = *(v0 + 40);
        sub_1000C9794(v8);
        sub_100114C20();
        v38 = _swiftEmptyArrayStorage;
        while (v4 != v1)
        {
          v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v12 = v31;
          v13 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
            __break(1u);
            __break(1u);
            goto LABEL_25;
          }

          v15 = *(v0 + 24);
          v14 = *(v0 + 32);
          sub_10010F320(v31, v15);
          if (sub_10000E5F0(v15, 1, v14) == 1)
          {
            v16 = *(v0 + 24);

            sub_10000ABCC(v16, &qword_100191860, &qword_100131D50);
            ++v1;
          }

          else
          {
            v18 = *(v0 + 48);
            v17 = *(v0 + 56);
            sub_1000EAABC(*(v0 + 24), v17);
            sub_1001148B0();
            sub_1001147C4(v17, v18, v19);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100114BE4();
            }

            sub_100114AF8();
            v36 = v20;
            if (v21)
            {
              sub_100114C34();
              v38 = v32;
            }

            v22 = *(v0 + 56);

            v23 = sub_1000EAB94(v22);
            sub_100114A60(v23, v24, v25, v26, v27, v28, v29, v30, v36, v37, v38);
            v1 = v13;
          }
        }
      }
    }

    sub_10010BC0C();
    v33 = sub_10010BB4C();
    v10 = *(v0 + 88);
    if (v33)
    {
      sub_100114B8C();

      sub_100085FE4();
    }
  }

  sub_10000875C();
  sub_100046280();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_10010F044()
{
  sub_100025A94();
  v1[2] = v0;
  v2 = type metadata accessor for MainActor();
  v1[3] = sub_10006F3C8(v2);
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100096AF8();
  v1[4] = v3;
  v1[5] = v4;
  v5 = sub_100096AEC();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10010F1AC()
{
  sub_100025A94();
  sub_100096CD0();
  v2 = *v1;
  sub_10000870C();
  *v3 = v2;

  sub_100096D54();
  v5 = *(v4 + 40);
  v6 = *(v0 + 32);

  return _swift_task_switch(sub_10010F2B8, v6, v5);
}

uint64_t sub_10010F2B8()
{
  sub_100025A94();

  if (sub_10010BCBC())
  {
    sub_10010D4B8();
  }

  sub_10000875C();

  return v0();
}

uint64_t sub_10010F320@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 productId];
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = sub_100083500(result);
  if (v5 != 9)
  {
    v10 = v5;
    result = [a1 productId];
    if ((result & 0x80000000) == 0)
    {
      v11 = result;
      result = sub_10004F314(a1);
      v28 = result;
      if (v12)
      {
        v13 = v12;
        v14 = sub_1000831E0();
        v26 = v15;
        v27 = v14;
        v25 = sub_1000835F4(1u);
        v17 = v16;
        v18 = sub_1000835F4(0xAu);
        v20 = v19;
        v21 = sub_1000835F4(3u);
        v23 = v22;
        v24 = type metadata accessor for AirPodsDeviceInfo(0);
        sub_1000832D8(v10, a2 + *(v24 + 40));
        *a2 = v11;
        *(a2 + 8) = v28;
        *(a2 + 16) = v13;
        *(a2 + 24) = v27;
        *(a2 + 32) = v26;
        *(a2 + 40) = v25;
        *(a2 + 48) = v17;
        *(a2 + 56) = v18;
        *(a2 + 64) = v20;
        *(a2 + 72) = v21;
        *(a2 + 80) = v23;
        v6 = a2;
        v7 = 0;
        v8 = 1;
        v9 = v24;
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
      return result;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  type metadata accessor for AirPodsDeviceInfo(0);
  sub_100053004();
LABEL_7:

  return sub_100003CE8(v6, v7, v8, v9);
}

void *sub_10010F474()
{
  sub_100114BAC();
  sub_1001148C8();
  v2 = sub_100113334(v0, v1, &unk_10012B6F0);
  return sub_100114AC8(v2);
}

uint64_t sub_10010F4F4()
{

  sub_10000ABCC(v0 + qword_100192F58, &qword_100191860, &qword_100131D50);
  v1 = qword_100192F60;
  type metadata accessor for ObservationRegistrar();
  sub_10000AF7C();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_10010F594()
{
  v0 = sub_100105B78();

  sub_10000ABCC(v0 + qword_100192F58, &qword_100191860, &qword_100131D50);
  v1 = qword_100192F60;
  type metadata accessor for ObservationRegistrar();
  sub_10000AF7C();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_10010F634()
{
  v0 = sub_10010F594();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for AirPodsFlowViewModel(uint64_t a1)
{
  result = qword_100192F90;
  if (!qword_100192F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10010F6D4(uint64_t a1)
{
  sub_10010F7C4(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_10010F7C4(uint64_t a1)
{
  if (!qword_100192FA0)
  {
    type metadata accessor for AirPodsDeviceInfo(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100192FA0);
    }
  }
}

__n128 sub_10010F848(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

unint64_t sub_10010F854()
{
  v0 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  __chkstk_darwin(v0 - 8);
  v2 = &v27 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003768(&qword_100191860, &qword_100131D50);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - v8;
  v10 = type metadata accessor for AirPodsDeviceInfo(0);
  __chkstk_darwin(v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010CBFC(v9);
  if (sub_10000E5F0(v9, 1, v10) == 1)
  {
    v13 = &qword_100191860;
    v14 = &qword_100131D50;
    v15 = v9;
LABEL_6:
    sub_10000ABCC(v15, v13, v14);
    return 0;
  }

  sub_1000EAABC(v9, v12);
  v16 = *(v12 + 6);
  if (!v16)
  {
    sub_1000EAB94(v12);
    return 0;
  }

  v17 = *(v12 + 5);
  URL.init(string:)();
  if (sub_10000E5F0(v2, 1, v3) == 1)
  {
    sub_1000EAB94(v12);
    v13 = &qword_100188EE0;
    v14 = &unk_100122AE0;
    v15 = v2;
    goto LABEL_6;
  }

  (*(v4 + 32))(v6, v2, v3);
  if (sub_10010A128(*v12, &off_1001764A0))
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v27 = 0xD00000000000001BLL;
    v28 = 0x800000010013A910;
    v19 = v17;
    v20 = v16;
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v27 = 0xD00000000000002CLL;
    v28 = 0x800000010013A8E0;
    v21._countAndFlagsBits = v17;
    v21._object = v16;
    String.append(_:)(v21);
    v19 = 4277550;
    v20 = 0xE300000000000000;
  }

  String.append(_:)(*&v19);
  v18 = v27;
  URL._bridgeToObjectiveC()(v22);
  v24 = v23;
  v25 = String._bridgeToObjectiveC()();
  ASSetAssetServerURLForAssetType();

  (*(v4 + 8))(v6, v3);
  sub_1000EAB94(v12);
  return v18;
}

uint64_t sub_10010FBD4()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_10010FC6C, v3, v2);
}

uint64_t sub_10010FC6C()
{
  v19 = v0;
  v1 = sub_10011035C();
  if (v2)
  {
    v3 = v1;
    v4 = v2;

    v5 = sub_1001104C8(v3, v4);
    v0[6] = v5;

    if (v5)
    {
      v0[7] = sub_10010F854();
      v0[8] = v6;
      if (v6)
      {
        if (qword_100188398 != -1)
        {
          sub_1001148E0(&qword_100188398);
        }

        v7 = type metadata accessor for Logger();
        sub_10000C2D4(v7, qword_1001A59B0);

        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          v18 = v11;
          *v10 = 136315138;
          v12 = sub_10009CACC(v3, v4, &v18);

          *(v10 + 4) = v12;
          _os_log_impl(&_mh_execute_header, v8, v9, "Current device version: %s", v10, 0xCu);
          sub_1000086BC(v11);
          sub_100008744(v11);
          sub_100008744(v10);
        }

        else
        {
        }

        v15 = swift_task_alloc();
        v0[9] = v15;
        *v15 = v0;
        sub_10006F33C(v15);
        v16 = sub_100077FE8();

        return sub_100110ABC(v16, v17);
      }
    }

    else
    {
    }
  }

  else
  {
  }

  sub_1000E2A30();

  return v13(0);
}

uint64_t sub_10010FEE8()
{
  sub_100025A94();
  sub_100096CD0();
  sub_100052FD4();
  *v3 = v2;
  v4 = *v1;
  sub_100114B6C();
  *v5 = v4;
  *(v7 + 96) = v6;

  sub_100096D54();
  v9 = *(v8 + 40);
  v10 = *(v0 + 32);

  return _swift_task_switch(sub_10010FFF4, v10, v9);
}

uint64_t sub_10010FFF4()
{
  sub_100025A94();
  if (*(v0 + 96) == 1)
  {
    v1 = *(v0 + 64);
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = sub_1001100EC;
    v3 = *(v0 + 56);

    return sub_100110E10(v3, v1);
  }

  else
  {

    sub_1000E2A30();

    return v5(0);
  }
}

uint64_t sub_1001100EC()
{
  sub_10003DCD8();
  sub_100096CD0();
  sub_100052FD4();
  *v3 = v2;
  v4 = *v1;
  sub_100114B6C();
  *v5 = v4;
  *(v7 + 88) = v6;

  sub_100096D54();
  v9 = *(v8 + 40);
  v10 = *(v0 + 32);

  return _swift_task_switch(sub_10011021C, v10, v9);
}

void sub_10011021C()
{
  v1 = *(v0 + 88);

  if (v1)
  {
    v2 = *(v0 + 88);
    v3 = sub_1000C9794(v2);
    v4 = 0;
    while (1)
    {
      if (v3 == v4)
      {

        v8 = 0;
        goto LABEL_13;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v7 = sub_100111174(v5, *(v0 + 48));

      ++v4;
      if (v7)
      {

        v8 = 1;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
    v8 = 0;
LABEL_13:

    sub_1000E2A30();

    v9(v8);
  }
}

uint64_t sub_10011035C()
{
  v0 = sub_100003768(&qword_100191860, &qword_100131D50);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = type metadata accessor for AirPodsDeviceInfo(0);
  __chkstk_darwin(v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010CBFC(v2);
  if (sub_10000E5F0(v2, 1, v3) == 1)
  {
    sub_10000ABCC(v2, &qword_100191860, &qword_100131D50);
    return 0;
  }

  else
  {
    sub_1000EAABC(v2, v5);
    if (*(v5 + 8))
    {
      v6 = *(v5 + 7);

      v7 = static String.airPodsVersionOverride.getter();
      v9 = v8;
      sub_1000EAB94(v5);
      if (v9)
      {

        return v7;
      }
    }

    else
    {
      sub_1000EAB94(v5);
      return 0;
    }
  }

  return v6;
}

unint64_t sub_1001104C8(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = sub_100112AA4(sub_100111718, 0, a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_100114400();
  v9 = Dictionary.init(dictionaryLiteral:)();
  v10 = v4 >> 14;

  for (i = v2; i >> 14 != v10; i = Substring.index(after:)())
  {
    Substring.subscript.getter();
    v12 = Character.isNumber.getter();

    if ((v12 & 1) == 0)
    {
      v10 = i >> 14;
      break;
    }
  }

  if (v10 < v2 >> 14)
  {
    __break(1u);
    goto LABEL_43;
  }

  v66 = v9;
  v14 = Substring.subscript.getter();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  if ((v14 ^ v16) < 0x4000)
  {
LABEL_43:

    goto LABEL_16;
  }

  v21 = sub_10011382C(v14, v16, v18, v20, 10);
  if ((v22 & 0x100) != 0)
  {

    v23 = sub_10011242C(v14, v16, v18, v20, 10);
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

  if (v22)
  {
    goto LABEL_43;
  }

  v23 = v21;
LABEL_15:
  swift_isUniquelyReferenced_nonNull_native();
  sub_100052AD4(v23, 0);
  v26 = Substring.distance(from:to:)();

  v2 = sub_100016B0C(v26, v2, v4, v6, v8);
  v4 = v27;
  v6 = v28;
  v8 = v29;
LABEL_16:
  if ((v4 ^ v2) >= 0x4000)
  {
    v30 = Substring.subscript.getter();
    v32 = v31;
    if (Character.isUppercase.getter())
    {
      v33 = sub_10011171C(v30, v32);
      v35 = v34;

      if ((v35 & 1) == 0)
      {
        swift_isUniquelyReferenced_nonNull_native();
        sub_100052AD4(v33, 1);
        v2 = sub_100016B0C(1uLL, v2, v4, v6, v8);
        v4 = v36;
        v6 = v37;
        v8 = v38;
      }
    }

    else
    {
    }
  }

  v39 = v4 >> 14;

  for (j = v2; j >> 14 != v39; j = result)
  {
    Substring.subscript.getter();
    v42 = Character.isNumber.getter();

    if ((v42 & 1) == 0)
    {
      v39 = j >> 14;
      break;
    }

    result = Substring.index(after:)();
  }

  if (v39 >= v2 >> 14)
  {
    v43 = Substring.subscript.getter();
    v45 = v44;
    v47 = v46;
    v49 = v48;

    if ((v43 ^ v45) >= 0x4000)
    {
      v50 = sub_10011382C(v43, v45, v47, v49, 10);
      if ((v51 & 0x100) != 0)
      {

        v52 = sub_10011242C(v43, v45, v47, v49, 10);
        v54 = v53;

        if ((v54 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      else if ((v51 & 1) == 0)
      {
        v52 = v50;
LABEL_33:
        swift_isUniquelyReferenced_nonNull_native();
        sub_100052AD4(v52, 2);
        v55 = Substring.distance(from:to:)();

        v2 = sub_100016B0C(v55, v2, v4, v6, v8);
        v4 = v56;
        goto LABEL_34;
      }
    }

LABEL_34:
    v13 = v66;
    if (v4 ^ v2) >> 14 && (v57 = Substring.subscript.getter(), v59 = v58, , (Character.isLowercase.getter()))
    {
      v60 = sub_10011171C(v57, v59);
      v62 = v61;

      if (v62)
      {
        sub_100083810(3);
        if (v63)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v65 = *(v66 + 24);
          sub_100003768(&qword_10018BA40, &unk_1001269F0);
          _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v65);
          v13 = v66;
          _NativeDictionary._delete(at:)();
        }
      }

      else
      {
        swift_isUniquelyReferenced_nonNull_native();
        sub_100052AD4(v60, 3);
      }
    }

    else
    {
    }

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_100110ABC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for MainActor();
  v2[5] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[6] = v4;
  v2[7] = v3;

  return _swift_task_switch(sub_100110B58, v4, v3);
}

uint64_t sub_100110B58()
{
  sub_10004F4F8();
  v1 = v0[3];
  v2 = v0[2];
  v3 = static MainActor.shared.getter();
  v0[8] = v3;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_100110C68;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 11, v3, &protocol witness table for MainActor, 0xD000000000000019, 0x800000010013A8A0, sub_1001142F4, v4, &type metadata for Bool);
}

uint64_t sub_100110C68()
{
  sub_10003DCD8();
  sub_100096CD0();
  v2 = *v1;
  sub_10000870C();
  *v3 = v2;

  sub_100096D54();
  v5 = *(v4 + 56);
  v6 = *(v0 + 48);

  return _swift_task_switch(sub_100110DB4, v6, v5);
}

uint64_t sub_100110DB4()
{
  sub_100025A94();

  sub_1000E2A30();

  return v0();
}

uint64_t sub_100110E10(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v2[5] = type metadata accessor for MainActor();
  v2[6] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[7] = v4;
  v2[8] = v3;

  return _swift_task_switch(sub_100110EAC, v4, v3);
}

uint64_t sub_100110EAC()
{
  sub_10004F4F8();
  v1 = v0[4];
  v2 = v0[3];
  v3 = static MainActor.shared.getter();
  v0[9] = v3;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[11] = v5;
  v6 = sub_100003768(&qword_100193460, &qword_100131F70);
  *v5 = v0;
  v5[1] = sub_100110FCC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, v3, &protocol witness table for MainActor, 0xD000000000000011, 0x800000010013A880, sub_100114194, v4, v6);
}

uint64_t sub_100110FCC()
{
  sub_10003DCD8();
  sub_100096CD0();
  v2 = *v1;
  sub_10000870C();
  *v3 = v2;

  sub_100096D54();
  v5 = *(v4 + 64);
  v6 = *(v0 + 56);

  return _swift_task_switch(sub_100111118, v6, v5);
}

uint64_t sub_100111118()
{
  sub_100025A94();

  sub_1000E2A30();

  return v0();
}

uint64_t sub_100111174(void *a1, uint64_t a2)
{
  if ([a1 state] == 3)
  {
    return 0;
  }

  result = sub_100112E48(a1);
  if (result)
  {
    v5 = sub_100111454(result);

    if (v5)
    {
      sub_100082C6C(0x646C697542, 0xE500000000000000, v5, v23);

      if (v24)
      {
        if (swift_dynamicCast())
        {

          v6 = sub_1001104C8(v21, v22);

          if (v6)
          {
            if (qword_100188398 != -1)
            {
              swift_once();
            }

            v7 = type metadata accessor for Logger();
            sub_10000C2D4(v7, qword_1001A59B0);

            v8 = Logger.logObject.getter();
            v9 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v8, v9))
            {
              v10 = swift_slowAlloc();
              v11 = swift_slowAlloc();
              v23[0] = v11;
              *v10 = 136315138;
              v12 = sub_10009CACC(v21, v22, v23);

              *(v10 + 4) = v12;
              _os_log_impl(&_mh_execute_header, v8, v9, "Build found on server: %s", v10, 0xCu);
              sub_1000086BC(v11);
            }

            else
            {
            }

            for (i = 0; i != 4; ++i)
            {
              v14 = *(&off_1001764E0 + i + 32);
              if (*(v6 + 16) && (v15 = sub_100083810(*(&off_1001764E0 + i + 32)), (v16 & 1) != 0))
              {
                v17 = *(*(v6 + 56) + 8 * v15);
              }

              else
              {
                v17 = 0;
              }

              if (*(a2 + 16) && (v18 = sub_100083810(v14), (v19 & 1) != 0))
              {
                v20 = *(*(a2 + 56) + 8 * v18);
                if (v20 < v17)
                {
                  goto LABEL_29;
                }

                if (v17 < v20)
                {
                  break;
                }
              }

              else if (v17)
              {
LABEL_29:

                return 1;
              }
            }
          }
        }
      }

      else
      {
        sub_10000ABCC(v23, &unk_10018A520, &unk_100124310);
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_100111454(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003768(&qword_100193450, &qword_100131F60);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_100083B68(*(a1 + 48) + 40 * v10, __src);
    sub_10001E894(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_100083B68(__dst, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_10001E894(&__dst[40], v20);
    sub_10000ABCC(__dst, &qword_100193458, &qword_100131F68);
    v21 = v18;
    sub_1000BBF20(v20, v22);
    v11 = v21;
    sub_1000BBF20(v22, v23);
    sub_1000BBF20(v23, &v21);
    result = sub_100083754(v11, *(&v11 + 1));
    v12 = result;
    if (v13)
    {
      *(v2[6] + 16 * result) = v11;

      v14 = (v2[7] + 32 * v12);
      sub_1000086BC(v14);
      result = sub_1000BBF20(&v21, v14);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_1000BBF20(&v21, (v2[7] + 32 * result));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v8 = v9;
    }
  }

  sub_10000ABCC(__dst, &qword_100193458, &qword_100131F68);

  return 0;
}

uint64_t sub_10011171C(uint64_t a1, uint64_t a2)
{
  v2 = Character.isUppercase.getter();
  v3 = Character.asciiValue.getter();
  if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  v4 = v3;
  v5 = Character.asciiValue.getter();

  if ((v5 & 0x100) != 0)
  {
    return 0;
  }

  if (((v4 - v5) & 0xFFFFFF00) != 0)
  {
    __break(1u);
  }

  else if ((((((v2 & 1) == 0) + (v4 - v5)) >> 8) & 1) == 0)
  {
    return (((v2 & 1) == 0) + v4 - v5);
  }

  __break(1u);
  return result;
}

void sub_1001117CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003768(&qword_100193478, &qword_100131F80);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - v8;
  v10 = [objc_allocWithZone(MADownloadOptions) init];
  [v10 setDiscretionary:0];
  [v10 setAllowsCellularAccess:1];
  v11 = objc_opt_self();
  (*(v7 + 16))(v9, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v9, v6);
  aBlock[4] = sub_100114388;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100111A44;
  aBlock[3] = &unk_10017FCB0;
  v14 = _Block_copy(aBlock);
  v15 = v10;

  sub_100112F10(a2, a3, v10, v14, v11);
  _Block_release(v14);
}

void sub_100111A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003768(&qword_100193468, &qword_100131F78);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - v8;
  objc_allocWithZone(MAAssetQuery);

  v10 = sub_100111E58(a2, a3);
  if (v10)
  {
    v11 = v10;
    [v10 returnTypes:2];
    (*(v7 + 16))(v9, a1, v6);
    v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    (*(v7 + 32))(v13 + v12, v9, v6);
    aBlock[4] = sub_100114260;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100111CCC;
    aBlock[3] = &unk_10017FC60;
    v14 = _Block_copy(aBlock);
    v15 = v11;

    [v15 queryMetaData:v14];
    _Block_release(v14);
  }

  else
  {
    aBlock[0] = 0;
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100111C6C(uint64_t a1, void *a2)
{
  if (!a1)
  {
    sub_100112F80(a2);
  }

  sub_100003768(&qword_100193468, &qword_100131F78);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100111CD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

_UNKNOWN **sub_100111D2C@<X0>(void *a1@<X8>)
{
  result = sub_10011170C();
  *a1 = result;
  return result;
}

uint64_t sub_100111D54()
{
  v0 = type metadata accessor for SupportFlowIdentifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  sub_10000C270(v4, qword_1001A59B0);
  sub_10000C2D4(v4, qword_1001A59B0);
  (*(v1 + 104))(v3, enum case for SupportFlowIdentifier.airPods(_:), v0);
  return Logger.init(flowId:)();
}

id sub_100111E58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithType:v3];

  return v4;
}

uint64_t sub_100111EBC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100094CC8;

  return v6(a1);
}

uint64_t sub_100111FB4()
{
  sub_10004F4F8();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v1 + 64) = v12;
  sub_100052F6C(v12);
  *(v1 + 72) = v13;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;
  sub_10004F504();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_1001120A4()
{
  v1 = v0[9];
  v2 = type metadata accessor for ContinuousClock();
  v3 = sub_100113334(&qword_100193408, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_100077FE8();
  dispatch thunk of Clock.now.getter();
  sub_100113334(&qword_100193410, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v0[12] = *(v1 + 8);
  v0[13] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4 = sub_100025A88();
  v5(v4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_10011222C;
  v7 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v7, v0 + 2, v2, v3);
}

uint64_t sub_10011222C()
{
  sub_10004F4F8();
  sub_10004622C();
  v3 = v2;
  sub_100052FD4();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[8];
  v9 = *v1;
  sub_10000870C();
  *v10 = v9;
  *(v3 + 120) = v0;

  v6(v7, v8);
  if (v0)
  {
    sub_10004F504();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {

    sub_10000875C();

    return v14();
  }
}

uint64_t sub_1001123C8()
{
  sub_100025A94();

  sub_10000875C();

  return v0();
}

unsigned __int8 *sub_10011242C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v71 = a1;
  v72 = a2;
  v73 = a3;
  v74 = a4;
  sub_100114454();

  result = String.init<A>(_:)();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_100112A3C(result, v7);
    v42 = v41;

    v9 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v24 = v10 - 1;
        if (v10 != 1)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v16 = 0;
            v28 = result + 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              if (!is_mul_ok(v16, a5))
              {
                goto LABEL_128;
              }

              v31 = v16 * a5;
              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v16 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v20 = v16;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            if (!is_mul_ok(v36, a5))
            {
              goto LABEL_128;
            }

            v39 = v36 * a5;
            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_129;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            if (!is_mul_ok(v16, a5))
            {
              goto LABEL_128;
            }

            v21 = v16 * a5;
            v22 = v18 + v19;
            v23 = v21 >= v22;
            v16 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
LABEL_129:

        return v20;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v43 = HIBYTE(v9) & 0xF;
  v71 = v8;
  v72 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v71;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          if (!is_mul_ok(v45, a5))
          {
            goto LABEL_128;
          }

          v69 = v45 * a5;
          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v71 + 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          if (!is_mul_ok(v45, a5))
          {
            goto LABEL_128;
          }

          v52 = v45 * a5;
          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v71 + 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        if (!is_mul_ok(v45, a5))
        {
          goto LABEL_128;
        }

        v61 = v45 * a5;
        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unint64_t sub_1001129C0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
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
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
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

uint64_t sub_100112A3C(uint64_t a1, unint64_t a2)
{
  v2 = sub_100112AA4(sub_100111718, 0, a1, a2);
  v6 = sub_100112AD8(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100112AD8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10009CED8(v9, 0), v12 = sub_100112C38(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_100112C38(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1001129C0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1001129C0(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_100112E48(void *a1)
{
  v1 = [a1 attributes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100112EB4(void *a1)
{
  v1 = [a1 pairedDevices];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_100112F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = String._bridgeToObjectiveC()();
  [a5 startCatalogDownload:v8 options:a3 then:a4];
}

uint64_t sub_100112F80(void *a1)
{
  v1 = [a1 results];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100025778(0, &qword_100193470, MAAsset_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10011309C()
{
  sub_10006F388();
  result = sub_1000A15B0();
  *v0 = result;
  return result;
}

uint64_t sub_1001130CC()
{
  swift_unknownObjectRelease();
  sub_100096BD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100113100()
{
  sub_10003DCD8();
  sub_100096D0C();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  v1[1] = sub_100046160;
  sub_1001149CC();

  return sub_10010DF20();
}

uint64_t sub_100113190()
{
  sub_10003DCD8();
  sub_100096D0C();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  v1[1] = sub_100045AB0;
  sub_1001149CC();

  return sub_10010E2BC();
}

uint64_t sub_100113220()
{

  sub_100096BD0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100113254()
{
  sub_10003DCD8();
  sub_100096D0C();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  v1[1] = sub_100046160;
  v3 = sub_1001149CC();

  return v4(v3);
}

uint64_t sub_100113334(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10011337C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100191860, &qword_100131D50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001133EC()
{
  sub_10006F388();
  result = sub_10010BCBC();
  *v0 = result & 1;
  return result;
}

uint64_t sub_100113458()
{
  sub_10006F388();
  result = sub_10010BB4C();
  *v0 = result;
  return result;
}

uint64_t sub_10011351C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.startIndex.getter();
  }

  else
  {
    return _HashTable.startBucket.getter();
  }
}

uint64_t sub_10011357C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.endIndex.getter();
  }

  else
  {
    return 1 << *(a1 + 32);
  }
}

void sub_1001135D0(uint64_t a1, int a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v7 = a5;
  v9 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_100096BC4();
      __CocoaSet.element(at:)();
      sub_100025778(0, v7, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100025778(0, a5, a6);
    sub_100096BC4();
    if (__CocoaSet.Index.age.getter() == *(a4 + 36))
    {
      sub_100096BC4();
      __CocoaSet.Index.element.getter();
      swift_dynamicCast();
      v7 = v16;
      v10 = NSObject._rawHashValue(seed:)(*(a4 + 40));
      v11 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v9 = v10 & v11;
        if (((*(a4 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          goto LABEL_22;
        }

        v12 = *(*(a4 + 48) + 8 * v9);
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          goto LABEL_15;
        }

        v10 = v9 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_15:
  }

  v14 = *(*(a4 + 48) + 8 * v9);

  v15 = v14;
}

uint64_t sub_1001137C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      if (a2 == a5)
      {
        return a1 == a4;
      }

      __break(1u);
    }

    goto LABEL_8;
  }

  if ((a6 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    return static __CocoaSet.Index.== infix(_:_:)(a1, a2, a3, a4);
  }

  a3 = a4;
  a4 = a5;
  return static __CocoaSet.Index.== infix(_:_:)(a1, a2, a3, a4);
}

uint64_t sub_10011382C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_100113908(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_100113908(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, int64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_1001129C0(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_97;
    }

    result = String.UTF8View._foreignDistance(from:to:)();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_1001129C0(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_1001129C0(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_93;
  }

  if (v23 < a4 >> 16)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_92;
  }

  if (v24 < v18)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a7 + 48;
        v40 = a7 + 55;
        v41 = a7 + 87;
        if (a7 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v42 = v25 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v35 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v35;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            if (!is_mul_ok(v30, a7))
            {
              return 0;
            }

            v46 = v30 * a7;
            v47 = v44 + v45;
            v38 = __CFADD__(v46, v47);
            v30 = v46 + v47;
            if (v38)
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_96;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v48 = a7 + 48;
      v49 = a7 + 55;
      v50 = a7 + 87;
      if (a7 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v51 = *v25;
          if (v51 < 0x30 || v51 >= v48)
          {
            if (v51 < 0x41 || v51 >= v49)
            {
              v35 = 0;
              if (v51 < 0x61 || v51 >= v50)
              {
                return v35;
              }

              v52 = -87;
            }

            else
            {
              v52 = -55;
            }
          }

          else
          {
            v52 = -48;
          }

          if (!is_mul_ok(v30, a7))
          {
            return 0;
          }

          v53 = v30 * a7;
          v54 = v51 + v52;
          v38 = __CFADD__(v53, v54);
          v30 = v53 + v54;
          if (v38)
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          if (!is_mul_ok(v30, a7))
          {
            return 0;
          }

          v36 = v30 * a7;
          v37 = v33 + v34;
          v38 = v36 >= v37;
          v30 = v36 - v37;
          if (!v38)
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
  return result;
}

void sub_100113D88(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v6 = 0;
    v7 = 1 << *(a1 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(a1 + 64);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v14 = v11 | (v6 << 6);
      v15 = (*(a1 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(*(a1 + 56) + 8 * v14);

      v19 = v18;
      v20 = sub_100083754(v16, v17);
      v22 = v21;

      if ((v22 & 1) == 0)
      {

        return;
      }

      sub_100025778(0, a3, a4);
      v23 = *(*(a2 + 56) + 8 * v20);
      v24 = static NSObject.== infix(_:_:)();

      if ((v24 & 1) == 0)
      {
        return;
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        return;
      }

      v13 = *(a1 + 64 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

unint64_t sub_100113F08(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + v12);
    result = sub_10008387C(*(*(v3 + 48) + 4 * v12));
    if ((v14 & 1) == 0 || v13 != *(*(a2 + 56) + result))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100114010()
{
  sub_10006F388();
  result = sub_10010B94C();
  *v0 = result;
  return result;
}

uint64_t sub_1001140AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1001140F0()
{
  sub_10003DCD8();
  sub_100096D0C();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  v1[1] = sub_100045AB0;
  v3 = sub_1001149CC();

  return v4(v3);
}

uint64_t sub_10011419C()
{
  v1 = sub_100003768(&qword_100193468, &qword_100131F78);
  sub_100008780();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_100114260(uint64_t a1)
{
  v3 = sub_100003768(&qword_100193468, &qword_100131F78);
  sub_10000ED84(v3);
  v4 = *(v1 + 16);

  return sub_100111C6C(a1, v4);
}

uint64_t sub_1001142DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001142FC()
{
  sub_100003768(&qword_100193478, &qword_100131F80);
  sub_10000AF7C();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100114388(uint64_t a1)
{
  v2 = sub_100003768(&qword_100193478, &qword_100131F80);
  sub_10000ED84(v2);

  return sub_1001119F0(a1);
}

unint64_t sub_100114400()
{
  result = qword_100193480;
  if (!qword_100193480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193480);
  }

  return result;
}

unint64_t sub_100114454()
{
  result = qword_100193488;
  if (!qword_100193488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193488);
  }

  return result;
}

unint64_t sub_1001145B4()
{
  result = qword_1001934C0;
  if (!qword_1001934C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001934C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FirmwareVersionKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1001146F0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100114770()
{
  result = qword_1001934E8;
  if (!qword_1001934E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001934E8);
  }

  return result;
}

uint64_t sub_1001147C4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_10000AF7C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001148E0(uint64_t a1)
{

  return swift_once();
}

BOOL sub_100114958@<W0>(uint64_t a1@<X8>)
{
  v5 = *(v2 + a1);
  v6 = *(v2 + a1 + 8);

  return sub_100109764(v5, v6, v3, v1);
}

uint64_t sub_1001149A4()
{

  return swift_beginAccess();
}

uint64_t sub_1001149FC(uint64_t a1, uint64_t a2)
{
  v5 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_1000877E8(v5, a2, v2, v3);
}

uint64_t sub_100114A1C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100114A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a11 + 16) = a9;
  v14 = a11 + ((*(a10 + 80) + 32) & ~*(a10 + 80)) + *(a10 + 72) * v11;

  return sub_1000EAABC(v12, v14);
}

uint64_t sub_100114AA4()
{
}

uint64_t sub_100114AC8(uint64_t a3, ...)
{

  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100114B14()
{

  return sub_100003768(v0, v1);
}

uint64_t sub_100114B2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_10000AAEC(a1, v4, v5, a4);
}

uint64_t sub_100114B44(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_10000AAEC(a1, v4, v5, a4);
}

BOOL sub_100114BC8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_100114BE4()
{

  sub_1000D0BBC();
}

uint64_t sub_100114C08()
{
}

void sub_100114C34()
{

  sub_1000D0BBC();
}

void sub_100114C54(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 8u);
}

uint64_t sub_100114C74(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_100114CC0(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  sub_100008780();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v9, v4);
    return v12[1];
  }

  return a1;
}

id sub_100114DF4@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a2 & 1;
  sub_100114F14(a1, a2 & 1, a3, a4, a5);
  KeyPath = swift_getKeyPath();
  v10 = a5 + *(sub_100003768(&qword_1001934F0, &qword_1001321D8) + 36);
  *v10 = KeyPath;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  v11 = sub_100114CC0(a1, v8);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v8;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  v13 = (a5 + *(sub_100003768(&qword_1001934F8, &qword_1001321E0) + 36));
  *v13 = &type metadata for FlowListOverrideProvider;
  v13[1] = v11;
  v13[2] = sub_10011694C;
  v13[3] = v12;

  return a3;
}

uint64_t sub_100114F14@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a3;
  v42 = a4;
  v53 = a5;
  v7 = type metadata accessor for ContentMessageView();
  v48 = *(v7 - 8);
  v49 = v7;
  __chkstk_darwin(v7);
  v47 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003768(&qword_100193508, &qword_1001321F0);
  v45 = *(v9 - 8);
  v46 = v9;
  __chkstk_darwin(v9);
  v43 = &v39 - v10;
  v52 = sub_100003768(&qword_100193510, &qword_1001321F8);
  __chkstk_darwin(v52);
  v44 = &v39 - v11;
  v51 = sub_100003768(&qword_100193518, &qword_100132200);
  __chkstk_darwin(v51);
  v13 = &v39 - v12;
  v14 = sub_100003768(&qword_100193520, &qword_100132208);
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v50 = sub_100003768(&qword_100193528, &qword_100132210);
  __chkstk_darwin(v50);
  v18 = &v39 - v17;
  v19 = type metadata accessor for FlowProgressView(0);
  __chkstk_darwin(v19);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a2;
  v23 = a2 & 1;
  v24 = a1;
  sub_100114CC0(a1, v23);
  v25 = sub_10008AB14();

  if (v25)
  {
    v54 = 0;
    State.init(wrappedValue:)();
    v26 = v56;
    *(v21 + 4) = v55;
    *(v21 + 5) = v26;
    AccessibilityFocusState.init<>()();
    *v21 = 0u;
    *(v21 + 1) = 0u;
    sub_10002F15C(v21, v16);
    swift_storeEnumTagMultiPayload();
    sub_100116AD0(&qword_100189260);
    sub_100116AD0(&qword_10018FE00);
    _ConditionalContent<>.init(storage:)();
    sub_10000EC9C(v18, v13, &qword_100193528, &qword_100132210);
    swift_storeEnumTagMultiPayload();
    sub_1001169E4();
    sub_100116B14();
    _ConditionalContent<>.init(storage:)();
    sub_10000ABCC(v18, &qword_100193528, &qword_100132210);
    return sub_10002F1C0(v21);
  }

  else
  {
    v28 = v49;
    v40 = v13;
    sub_100114CC0(a1, v22 & 1);
    v29 = sub_10008A430();

    if (v29)
    {
      v31 = v29;
      v32 = v47;
      ContentMessageView.init(with:maxWidth:)();
      v33 = v48;
      (*(v48 + 16))(v16, v32, v28);
      swift_storeEnumTagMultiPayload();
      sub_100116AD0(&qword_100189260);
      sub_100116AD0(&qword_10018FE00);
      _ConditionalContent<>.init(storage:)();
      sub_10000EC9C(v18, v40, &qword_100193528, &qword_100132210);
      swift_storeEnumTagMultiPayload();
      sub_1001169E4();
      sub_100116B14();
      _ConditionalContent<>.init(storage:)();

      sub_10000ABCC(v18, &qword_100193528, &qword_100132210);
      return (*(v33 + 8))(v32, v28);
    }

    else
    {
      __chkstk_darwin(v30);
      *(&v39 - 4) = v24;
      v34 = v22 & 1;
      *(&v39 - 24) = v22 & 1;
      v35 = v42;
      *(&v39 - 2) = v41;
      *(&v39 - 1) = v35;
      sub_100003768(&qword_100193530, &qword_100132218);
      sub_100117724(&unk_100193538);
      v36 = v43;
      List<>.init(content:)();
      sub_100114CC0(v24, v34);
      type metadata accessor for FlowViewDataProvider(0);
      sub_100117724(&unk_100193540);
      sub_100116AD0(&qword_1001886D0);
      v37 = v44;
      v38 = v46;
      View.environment<A>(_:)();

      (*(v45 + 8))(v36, v38);
      sub_10011697C(v37, v40);
      swift_storeEnumTagMultiPayload();
      sub_1001169E4();
      sub_100116B14();
      _ConditionalContent<>.init(storage:)();
      return sub_100116C60(v37);
    }
  }
}

uint64_t sub_1001156E8@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v47 = a5;
  v46 = sub_100003768(&qword_100193558, &qword_100132220);
  v44 = *(v46 - 8);
  v9 = __chkstk_darwin(v46);
  v45 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v39 - v11;
  v13 = sub_100003768(&qword_100193560, &qword_100132228);
  v14 = __chkstk_darwin(v13 - 8);
  v43 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v39 - v16;
  v18 = sub_100003768(&qword_100193568, &qword_100132230);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v39 - v22;
  sub_100003768(&qword_100193570, &qword_100132238);
  sub_100116CC0();
  v41 = v23;
  Section<>.init(content:)();
  v24 = a2 & 1;
  v39 = v17;
  sub_100115C24(a1, a2 & 1, v17);
  sub_100114CC0(a1, a2 & 1);
  v25 = sub_10008C6FC();

  sub_10002CBE8(v25);
  v48 = v26;
  KeyPath = swift_getKeyPath();
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  *(v27 + 24) = v24;
  *(v27 + 32) = a3;
  *(v27 + 40) = a4;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_100116E88;
  *(v28 + 24) = v27;

  v29 = a3;
  sub_100003768(&qword_100193588, &qword_100132260);
  sub_100003768(&qword_100193590, &qword_100132268);
  sub_100117724(&unk_100193598);
  sub_100116ED8(&unk_1001935A0);
  sub_100116F18();
  ForEach<>.init(_:id:content:)();

  v40 = v21;
  sub_10000EC9C(v23, v21, &qword_100193568, &qword_100132230);
  v30 = v43;
  sub_10000EC9C(v17, v43, &qword_100193560, &qword_100132228);
  v31 = v44;
  v32 = v45;
  v33 = *(v44 + 16);
  v34 = v46;
  v33(v45, v12, v46);
  v35 = v47;
  sub_10000EC9C(v21, v47, &qword_100193568, &qword_100132230);
  v36 = sub_100003768(&qword_100193600, &qword_100132298);
  sub_10000EC9C(v30, v35 + *(v36 + 48), &qword_100193560, &qword_100132228);
  v33((v35 + *(v36 + 64)), v32, v34);
  v37 = *(v31 + 8);
  v37(v12, v34);
  sub_10000ABCC(v39, &qword_100193560, &qword_100132228);
  sub_10000ABCC(v41, &qword_100193568, &qword_100132230);
  v37(v32, v34);
  sub_10000ABCC(v30, &qword_100193560, &qword_100132228);
  return sub_10000ABCC(v40, &qword_100193568, &qword_100132230);
}

uint64_t sub_100115C24@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_100003768(&qword_100193590, &qword_100132268);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - v8;
  sub_100114CC0(a1, a2 & 1);
  v10 = sub_10008C4CC();

  if (v10)
  {
    type metadata accessor for FlowViewDataProvider(0);
    v11 = sub_100090E74(v10);
    v13 = v12;
    v14 = a3;
    v15 = [v10 collections];
    sub_100025778(0, &qword_10018E470, TPSCollection_ptr);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = v16;
    v17 = swift_allocObject();
    v17[2] = v10;
    v17[3] = v11;
    v17[4] = v13;
    sub_100003768(&qword_100193608, &qword_1001322A0);
    sub_100003768(&qword_1001935B8, &qword_100132270);
    sub_100117724(&unk_100193610);
    sub_100116F9C();
    sub_100116ED8(&unk_100193618);
    ForEach<>.init(_:content:)();
    (*(v7 + 32))(v14, v9, v6);
    return sub_100003CE8(v14, 0, 1, v6);
  }

  else
  {

    return sub_100003CE8(a3, 1, 1, v6);
  }
}

uint64_t sub_100115EF4(uint64_t a1)
{
  sub_10004FC38(a1, v2);
  sub_100003768(&qword_100193500, &qword_1001321E8);
  return swift_dynamicCast();
}

uint64_t sub_100115F48@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100003768(&qword_100193648, &qword_100132318);
  swift_storeEnumTagMultiPayload();
  v2 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = sub_100003768(&qword_100193570, &qword_100132238);
  v12 = a1 + *(result + 36);
  *v12 = v2;
  *(v12 + 1) = v4;
  *(v12 + 2) = v6;
  *(v12 + 3) = v8;
  *(v12 + 4) = v10;
  v12[40] = 0;
  return result;
}

uint64_t sub_100115FF8(uint64_t a1, void *a2)
{
  type metadata accessor for FlowViewDataProvider(0);
  v3 = sub_100090E74(a2);
  v5 = v4;
  v6 = [a2 collections];
  sub_100025778(0, &qword_10018E470, TPSCollection_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = v3;
  v7[4] = v5;
  v8 = a2;
  sub_100003768(&qword_100193608, &qword_1001322A0);
  sub_100003768(&qword_1001935B8, &qword_100132270);
  sub_100117724(&unk_100193610);
  sub_100116F9C();
  sub_100116ED8(&unk_100193618);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1001161A4(void **a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100003768(&qword_1001935C8, &qword_100132278);
  __chkstk_darwin(v8);
  v12 = *a1;
  sub_1001165D8(v12, a2, a3, a4, &v11[-v9]);
  sub_100003768(&qword_1001935F8, &qword_100132290);
  sub_100117060();
  sub_100117724(&unk_1001935F0);
  return Section<>.init(header:content:)();
}

uint64_t sub_1001162E8(void *a1)
{
  v1 = a1;
  sub_100003768(&qword_100193620, &qword_1001322A8);
  sub_100025778(0, &qword_10018E470, TPSCollection_ptr);
  sub_10011722C(&unk_100193628);
  sub_100116ED8(&qword_100192540);
  return NavigationLink<>.init<A>(value:label:)();
}

uint64_t sub_1001163FC(void *a1)
{
  v2 = sub_100003768(&qword_100193638, &qword_1001322B0);
  __chkstk_darwin(v2);
  v4 = (&v13 - v3);
  *v4 = swift_getKeyPath();
  sub_100003768(&qword_10018C120, &qword_100127308);
  swift_storeEnumTagMultiPayload();
  *(v4 + *(type metadata accessor for FlowListItemView(0) + 20)) = a1;
  v5 = v4 + *(v2 + 36);
  v5[32] = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = a1;
  static String.landingListTopicFormat.getter();
  sub_100003768(&qword_100188810, &unk_100121780);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100121620;
  v8 = [v6 identifier];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100017A18();
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  String.init(format:_:)();

  sub_1001172DC();
  View.accessibilityIdentifier(_:)();

  return sub_10000ABCC(v4, &qword_100193638, &qword_1001322B0);
}

uint64_t sub_1001165D8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_100003768(&qword_1001935D8, &qword_100132280);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v13 = [a2 collections];
  sub_100025778(0, &qword_10018E470, TPSCollection_ptr);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (sub_100114850(v14))
  {
    sub_100096700();
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v15 = *(v14 + 32);
    }

    v16 = v15;

    v17 = a1;
    v18 = static NSObject.== infix(_:_:)();

    if (v18)
    {
      v34 = a3;
      v35 = a4;
      sub_10000AC24();

      v19 = Text.init<A>(_:)();
      v31 = v20;
      v32 = v19;
      v33 = v21;
      v34 = v19;
      v35 = v20;
      v23 = v22 & 1;
      v36 = v22 & 1;
      v37 = v21;
      static String.landingListCategoryFormat.getter();
      sub_100003768(&qword_100188810, &unk_100121780);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_100121620;
      v25 = [v17 identifier];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      *(v24 + 56) = &type metadata for String;
      *(v24 + 64) = sub_100017A18();
      *(v24 + 32) = v26;
      *(v24 + 40) = v28;
      String.init(format:_:)();

      sub_100003768(&qword_1001935E8, &qword_100132288);
      sub_100117110();
      View.accessibilityIdentifier(_:)();

      sub_10000AC78(v32, v31, v23);

      sub_1001171B4(v12, a5);
      return sub_100003CE8(a5, 0, 1, v10);
    }
  }

  else
  {
  }

  return sub_100003CE8(a5, 1, 1, v10);
}

uint64_t sub_10011697C(uint64_t a1, uint64_t a2)
{
  sub_100003768(&qword_100193510, &qword_1001321F8);
  sub_10000AF7C();
  (*(v4 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1001169E4()
{
  result = qword_100193548;
  if (!qword_100193548)
  {
    sub_100004D48(&qword_100193528, &qword_100132210);
    sub_100116AD0(&qword_100189260);
    sub_100116AD0(&qword_10018FE00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193548);
  }

  return result;
}

unint64_t sub_100116AD0(uint64_t a1)
{
  result = sub_100117774(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_100116B14()
{
  result = qword_100193550;
  if (!qword_100193550)
  {
    sub_100004D48(&qword_100193510, &qword_1001321F8);
    sub_100004D48(&qword_100193508, &qword_1001321F0);
    type metadata accessor for FlowViewDataProvider(255);
    sub_100117724(&unk_100193540);
    sub_100116AD0(&qword_1001886D0);
    swift_getOpaqueTypeConformance2();
    sub_10000F4E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193550);
  }

  return result;
}

uint64_t sub_100116C60(uint64_t a1)
{
  sub_100003768(&qword_100193510, &qword_1001321F8);
  sub_10000AF7C();
  (*(v2 + 8))(a1);
  return a1;
}

unint64_t sub_100116CC0()
{
  result = qword_100193578;
  if (!qword_100193578)
  {
    sub_100004D48(&qword_100193570, &qword_100132238);
    sub_100116AD0(&unk_100193580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193578);
  }

  return result;
}

uint64_t sub_100116D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  sub_100008780();
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_100116E40()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100116EA0()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100116ED8(uint64_t a1)
{
  result = sub_100117774(a1);
  if (!result)
  {
    sub_100025778(255, v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_100116F18()
{
  result = qword_1001935A8;
  if (!qword_1001935A8)
  {
    sub_100004D48(&qword_100193590, &qword_100132268);
    sub_100116F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001935A8);
  }

  return result;
}

unint64_t sub_100116F9C()
{
  result = qword_1001935B0;
  if (!qword_1001935B0)
  {
    sub_100004D48(&qword_1001935B8, &qword_100132270);
    sub_100117060();
    sub_100117724(&unk_1001935F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001935B0);
  }

  return result;
}

unint64_t sub_100117060()
{
  result = qword_1001935C0;
  if (!qword_1001935C0)
  {
    sub_100004D48(&qword_1001935C8, &qword_100132278);
    sub_10011722C(&unk_1001935D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001935C0);
  }

  return result;
}

unint64_t sub_100117110()
{
  result = qword_1001935E0;
  if (!qword_1001935E0)
  {
    sub_100004D48(&qword_1001935E8, &qword_100132288);
    sub_10000F5CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001935E0);
  }

  return result;
}

uint64_t sub_1001171B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_1001935D8, &qword_100132280);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10011722C(uint64_t a1)
{
  result = sub_100117774(a1);
  if (!result)
  {
    v6 = v5;
    sub_100004D48(v3, v4);
    v6();
    sub_100116AD0(&qword_1001887F8);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1001172DC()
{
  result = qword_100193630;
  if (!qword_100193630)
  {
    sub_100004D48(&qword_100193638, &qword_1001322B0);
    sub_100116AD0(&unk_100193640);
    sub_100117724(&qword_100188910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193630);
  }

  return result;
}

uint64_t sub_100117428()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1001174D0()
{
  result = qword_100193650;
  if (!qword_100193650)
  {
    sub_100004D48(&qword_1001934F8, &qword_1001321E0);
    sub_100117588();
    sub_100117724(&unk_100193680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193650);
  }

  return result;
}

unint64_t sub_100117588()
{
  result = qword_100193658;
  if (!qword_100193658)
  {
    sub_100004D48(&qword_1001934F0, &qword_1001321D8);
    sub_100117614();
    sub_1000BFF34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193658);
  }

  return result;
}

unint64_t sub_100117614()
{
  result = qword_100193660;
  if (!qword_100193660)
  {
    sub_100004D48(&qword_100193668, &qword_100132320);
    sub_100117698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193660);
  }

  return result;
}

unint64_t sub_100117698()
{
  result = qword_100193670;
  if (!qword_100193670)
  {
    sub_100004D48(&qword_100193678, &qword_100132328);
    sub_1001169E4();
    sub_100116B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193670);
  }

  return result;
}

unint64_t sub_100117724(uint64_t a1)
{
  result = sub_100117774(a1);
  if (!result)
  {
    sub_100004D48(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_100117788(char a1)
{
  v2 = type metadata accessor for SupportFlowIdentifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for SupportFlowIdentifier.messages(_:), v2);
  v6 = SupportFlowIdentifier.rawValue.getter();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v15[0] = v6;
  v15[1] = v8;

  v9._countAndFlagsBits = 95;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);

  v10 = (a1 & 1) == 0;
  if (a1)
  {
    v11 = 0x73676E6974746573;
  }

  else
  {
    v11 = 0x7070416E65706FLL;
  }

  if (v10)
  {
    v12 = 0xE700000000000000;
  }

  else
  {
    v12 = 0xE800000000000000;
  }

  v13._countAndFlagsBits = v11;
  v13._object = v12;
  String.append(_:)(v13);

  return v15[0];
}

uint64_t sub_10011790C()
{
  v1 = type metadata accessor for SupportActionInfoType(0);
  __chkstk_darwin(v1);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003EBB8(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0x736E6F6974706FLL;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v6 = 0x8000000100135E50;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  sub_10003EE8C(v3);
  v9[0] = 0x5F74726F70707573;
  v9[1] = 0xE800000000000000;
  v7._countAndFlagsBits = v5;
  v7._object = v6;
  String.append(_:)(v7);

  return v9[0];
}

uint64_t sub_100117A2C(char a1)
{
  v2 = type metadata accessor for SupportFlowIdentifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for SupportFlowIdentifier.mail(_:), v2);
  v6 = SupportFlowIdentifier.rawValue.getter();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v15[0] = v6;
  v15[1] = v8;

  v9._countAndFlagsBits = 95;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);

  v10 = (a1 & 1) == 0;
  if (a1)
  {
    v11 = 0x73746E756F636361;
  }

  else
  {
    v11 = 0x53746E756F636361;
  }

  if (v10)
  {
    v12 = 0xEF73676E69747465;
  }

  else
  {
    v12 = 0xE800000000000000;
  }

  v13._countAndFlagsBits = v11;
  v13._object = v12;
  String.append(_:)(v13);

  return v15[0];
}

uint64_t sub_100117BBC(unsigned __int8 a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0x65526E496E676973;
    }

    else
    {
      v2 = 0x7361507465736572;
    }

    if (v1 == 1)
    {
      v3 = 0xEE00797265766F63;
    }

    else
    {
      v3 = 0xED000064726F7773;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v2 = 0x6E496E676973;
  }

  strcpy(v6, "appleAccount_");
  v4 = v3;
  String.append(_:)(*&v2);

  return v6[0];
}

uint64_t sub_100117C84()
{
  v0 = type metadata accessor for SupportFlowIdentifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for SupportFlowIdentifier.battery(_:), v0);
  v4 = SupportFlowIdentifier.rawValue.getter();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v10[0] = v4;
  v10[1] = v6;

  v7._countAndFlagsBits = 95;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x73676E6974746573;
  v8._object = 0xE800000000000000;
  String.append(_:)(v8);

  return v10[0];
}

uint64_t sub_100117DD4(unsigned __int8 a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0xD000000000000014;
    }

    else
    {
      v2 = 0x53656761726F7473;
    }

    if (v1 == 1)
    {
      v3 = 0x8000000100132970;
    }

    else
    {
      v3 = 0xEF73676E69747465;
    }
  }

  else
  {
    v2 = 0xD000000000000011;
    v3 = 0x8000000100133430;
  }

  v4 = v3;
  String.append(_:)(*&v2);

  return 0x5F6C6172656E6567;
}

uint64_t sub_100117E94(char a1)
{
  v2 = type metadata accessor for SupportFlowIdentifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for SupportFlowIdentifier.purchases(_:), v2);
  v6 = SupportFlowIdentifier.rawValue.getter();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v14[0] = v6;
  v14[1] = v8;

  v9._countAndFlagsBits = 95;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);

  if (a1)
  {
    if (a1 == 1)
    {
      v10 = 0xD000000000000013;
    }

    else
    {
      v10 = 0x6573616863727570;
    }

    if (a1 == 1)
    {
      v11 = 0x80000001001329E0;
    }

    else
    {
      v11 = 0xEF79726F74736948;
    }
  }

  else
  {
    v11 = 0xED0000746E656D79;
    v10 = 0x615065676E616863;
  }

  v12._countAndFlagsBits = v10;
  v12._object = v11;
  String.append(_:)(v12);

  return v14[0];
}

uint64_t sub_1001180A8(unsigned __int8 a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0x73656369766564;
    }

    else
    {
      v2 = 0x63416B636F6C6E75;
    }

    if (v1 == 1)
    {
      v3 = 0xE700000000000000;
    }

    else
    {
      v3 = 0xED0000746E756F63;
    }
  }

  else
  {
    v3 = 0xEB000000006F666ELL;
    v2 = 0x49746E756F636361;
  }

  strcpy(v6, "appleAccount_");
  v4 = v3;
  String.append(_:)(*&v2);

  return v6[0];
}

uint64_t sub_100118170(char a1)
{
  v2 = type metadata accessor for SupportFlowIdentifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for SupportFlowIdentifier.softwareUpdate(_:), v2);
  v6 = SupportFlowIdentifier.rawValue.getter();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v15[0] = v6;
  v15[1] = v8;

  v9._countAndFlagsBits = 95;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);

  v10 = (a1 & 1) == 0;
  if (a1)
  {
    v11 = 0xD000000000000010;
  }

  else
  {
    v11 = 0x616470556F747561;
  }

  if (v10)
  {
    v12 = 0xEB00000000736574;
  }

  else
  {
    v12 = 0x8000000100132FD0;
  }

  v13._countAndFlagsBits = v11;
  v13._object = v12;
  String.append(_:)(v13);

  return v15[0];
}

uint64_t sub_1001183B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_1001889F0, &qword_100121D20);

  return sub_10000E5F0(a1, a2, v4);
}

uint64_t sub_100118420(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_1001889F0, &qword_100121D20);

  return sub_100003CE8(a1, a2, a2, v4);
}

uint64_t type metadata accessor for FlowImageView(uint64_t a1)
{
  result = qword_1001936E8;
  if (!qword_1001936E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001184C4(uint64_t a1)
{
  sub_100029144(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10011854C@<X0>(uint64_t a1@<X8>)
{
  v19[3] = a1;
  v19[2] = sub_100003768(&qword_100193720, &qword_100132408);
  sub_10000AF7C();
  sub_10000ED78();
  __chkstk_darwin(v1);
  v3 = v19 - v2;
  sub_100003768(&qword_100193728, &qword_100132410);
  sub_10000AF7C();
  sub_10000ED78();
  __chkstk_darwin(v4);
  v6 = v19 - v5;
  v7 = sub_100003768(&qword_100193730, &qword_100132418);
  sub_10000AF7C();
  sub_10000ED78();
  __chkstk_darwin(v8);
  v10 = v19 - v9;
  sub_100003768(&qword_1001889F0, &qword_100121D20);
  sub_10000ED78();
  __chkstk_darwin(v11);
  v13 = v19 - v12;
  v14 = type metadata accessor for FlowImage(0);
  sub_10000AF7C();
  __chkstk_darwin(v15);
  v17 = v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000EC9C(v19[1], v13, &qword_1001889F0, &qword_100121D20);
  if (sub_10000E5F0(v13, 1, v14) == 1)
  {
    sub_10000ABCC(v13, &qword_1001889F0, &qword_100121D20);
    swift_storeEnumTagMultiPayload();
    sub_100119018();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    sub_1001194FC(v13, v17, type metadata accessor for FlowImage);
    sub_100118878(v17, v6);
    sub_100119160();
    View.accessibilityHidden(_:)();
    sub_10000ABCC(v6, &qword_100193728, &qword_100132410);
    v10[*(v7 + 36)] = 1;
    sub_10000EC9C(v10, v3, &qword_100193730, &qword_100132418);
    swift_storeEnumTagMultiPayload();
    sub_100119018();
    _ConditionalContent<>.init(storage:)();
    sub_10000ABCC(v10, &qword_100193730, &qword_100132418);
    return sub_1001195BC(v17, type metadata accessor for FlowImage);
  }
}

uint64_t sub_100118878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v36 = a2;
  v37 = type metadata accessor for FlowSymbolView(0);
  __chkstk_darwin(v37);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FlowSymbol(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100003768(&qword_100193798, &qword_100132438);
  __chkstk_darwin(v34);
  v8 = &v32 - v7;
  v9 = sub_100003768(&qword_1001937A0, &qword_100132440);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v35 = sub_100003768(&qword_100193770, &qword_100132430);
  __chkstk_darwin(v35);
  v13 = &v32 - v12;
  v32 = type metadata accessor for FlowAssetView(0);
  __chkstk_darwin(v32);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FlowAsset(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FlowImage(0);
  __chkstk_darwin(v19);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10011955C(v33, v21, type metadata accessor for FlowImage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v23 = *v21;
      v24 = *(v21 + 1);
      v41[0] = *(v21 + 17);
      *(v41 + 3) = *(v21 + 5);
      v25 = *(v21 + 3);
      v26 = *(v21 + 3);
      v39 = *(v21 + 2);
      v40 = v26;
      v27 = v21[16];
      *&__src[0] = swift_getKeyPath();
      BYTE8(__src[0]) = 0;
      *&__src[1] = v23;
      *(&__src[1] + 1) = v24;
      LOBYTE(__src[2]) = v27;
      *(&__src[2] + 1) = v41[0];
      DWORD1(__src[2]) = *(v41 + 3);
      *(&__src[2] + 1) = v25;
      __src[3] = v39;
      __src[4] = v40;
      memcpy(v11, __src, 0x50uLL);
      swift_storeEnumTagMultiPayload();
      sub_1001194A0(v23, v24);
      v28 = v25;
      sub_100010CE4(__src, v38);
      sub_1001193B0(&qword_100193778, type metadata accessor for FlowAssetView, &unk_10012C4E4);
      sub_10011935C();
      _ConditionalContent<>.init(storage:)();
      sub_10000EC9C(v13, v8, &qword_100193770, &qword_100132430);
      swift_storeEnumTagMultiPayload();
      sub_1001192A0();
      sub_1001193B0(&qword_100193788, type metadata accessor for FlowSymbolView, &unk_100125354);
      _ConditionalContent<>.init(storage:)();
      sub_1001194A8(__src);
      sub_100010CD4(v23, v24);

      return sub_10000ABCC(v13, &qword_100193770, &qword_100132430);
    }

    sub_1001194FC(v21, v6, type metadata accessor for FlowSymbol);
    sub_10011955C(v6, v3, type metadata accessor for FlowSymbol);
    sub_10011955C(v3, v8, type metadata accessor for FlowSymbolView);
    swift_storeEnumTagMultiPayload();
    sub_1001192A0();
    sub_1001193B0(&qword_100193788, type metadata accessor for FlowSymbolView, &unk_100125354);
    _ConditionalContent<>.init(storage:)();
    sub_1001195BC(v3, type metadata accessor for FlowSymbolView);
    v30 = type metadata accessor for FlowSymbol;
    v31 = v6;
  }

  else
  {
    sub_1001194FC(v21, v18, type metadata accessor for FlowAsset);
    sub_10011955C(v18, v15, type metadata accessor for FlowAsset);
    sub_10011955C(v15, v11, type metadata accessor for FlowAssetView);
    swift_storeEnumTagMultiPayload();
    sub_1001193B0(&qword_100193778, type metadata accessor for FlowAssetView, &unk_10012C4E4);
    sub_10011935C();
    _ConditionalContent<>.init(storage:)();
    sub_10000EC9C(v13, v8, &qword_100193770, &qword_100132430);
    swift_storeEnumTagMultiPayload();
    sub_1001192A0();
    sub_1001193B0(&qword_100193788, type metadata accessor for FlowSymbolView, &unk_100125354);
    _ConditionalContent<>.init(storage:)();
    sub_10000ABCC(v13, &qword_100193770, &qword_100132430);
    sub_1001195BC(v15, type metadata accessor for FlowAssetView);
    v30 = type metadata accessor for FlowAsset;
    v31 = v18;
  }

  return sub_1001195BC(v31, v30);
}

unint64_t sub_100119018()
{
  result = qword_100193738;
  if (!qword_100193738)
  {
    sub_100004D48(&qword_100193730, &qword_100132418);
    sub_1001190A4();
    sub_1001193F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193738);
  }

  return result;
}

unint64_t sub_1001190A4()
{
  result = qword_100193740;
  if (!qword_100193740)
  {
    sub_100004D48(&qword_100193748, &qword_100132420);
    sub_100119160();
    sub_1001193B0(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193740);
  }

  return result;
}

unint64_t sub_100119160()
{
  result = qword_100193750;
  if (!qword_100193750)
  {
    sub_100004D48(&qword_100193728, &qword_100132410);
    sub_1001191E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193750);
  }

  return result;
}

unint64_t sub_1001191E4()
{
  result = qword_100193758;
  if (!qword_100193758)
  {
    sub_100004D48(&qword_100193760, &qword_100132428);
    sub_1001192A0();
    sub_1001193B0(&qword_100193788, type metadata accessor for FlowSymbolView, &unk_100125354);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193758);
  }

  return result;
}

unint64_t sub_1001192A0()
{
  result = qword_100193768;
  if (!qword_100193768)
  {
    sub_100004D48(&qword_100193770, &qword_100132430);
    sub_1001193B0(&qword_100193778, type metadata accessor for FlowAssetView, &unk_10012C4E4);
    sub_10011935C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193768);
  }

  return result;
}

unint64_t sub_10011935C()
{
  result = qword_100193780;
  if (!qword_100193780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193780);
  }

  return result;
}

uint64_t sub_1001193B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001193F8()
{
  result = qword_100193790;
  if (!qword_100193790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193790);
  }

  return result;
}

uint64_t sub_1001194FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_10000AF7C();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10011955C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_10000AF7C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001195BC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10000AF7C();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_100119618()
{
  result = qword_1001937A8;
  if (!qword_1001937A8)
  {
    sub_100004D48(&qword_1001937B0, &qword_100132478);
    sub_100119018();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001937A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GeneralPlacardInfoItemType(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x100119750);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100119788()
{
  v0 = type metadata accessor for UUID();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003768(&qword_1001889F0, &qword_100121D20);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = type metadata accessor for FlowImage(0);
  sub_100003CE8(v8, 1, 1, v9);
  if (qword_1001883C0 != -1)
  {
    swift_once();
  }

  v10 = sub_10000C2D4(v9, qword_1001937F0);
  sub_100053ED8(v10, v6);
  sub_1000B2330(v8);
  sub_100003CE8(v6, 0, 1, v9);
  sub_1000B2398(v6, v8);
  if (qword_1001883A0 != -1)
  {
    swift_once();
  }

  v11 = qword_1001937B8;
  v12 = unk_1001937C0;
  v13 = qword_1001883A8;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_1001937C8;
  v15 = unk_1001937D0;
  v16 = qword_1001883B8;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_1001937E8;
  sub_1000295B0(v8, v6);
  v27 = &type metadata for GeneralPlacardInfoItemType;
  v28 = sub_10011A0C8();
  swift_retain_n();
  UUID.init()();
  v18 = UUID.uuidString.getter();
  v20 = v19;
  (*(v24 + 8))(v2, v25);
  type metadata accessor for PlacardInfoItem(0);
  swift_allocObject();
  v21 = sub_1000F04E8(0, v18, v20, v6, v11, v12, v14, v15, v17, v26);

  sub_1000B2330(v8);
  return v21;
}

BOOL sub_100119AB8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100177478, v2);

  return v3 != 0;
}

BOOL sub_100119B0C@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100119AB8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100119B64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000E7750();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100119B8C(uint64_t a1)
{
  result = sub_100119BB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100119BB4()
{
  result = qword_100193808;
  if (!qword_100193808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193808);
  }

  return result;
}

unint64_t sub_100119C0C()
{
  result = qword_100193810;
  if (!qword_100193810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193810);
  }

  return result;
}

uint64_t sub_100119C60()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001937B8 = result;
  unk_1001937C0 = v3;
  return result;
}

uint64_t sub_100119D68()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001937C8 = result;
  unk_1001937D0 = v3;
  return result;
}

uint64_t sub_100119E70()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001937D8 = result;
  unk_1001937E0 = v3;
  return result;
}

uint64_t sub_100119F78()
{
  type metadata accessor for ActionInfo(0);
  if (qword_1001883B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1001937D8;
  v1 = unk_1001937E0;

  v2 = sub_1000EDA28(v0, v1, 0xD00000000000004DLL, 0x800000010013AA00);

  qword_1001937E8 = v2;
  return result;
}

uint64_t sub_10011A024()
{
  v0 = type metadata accessor for FlowImage(0);
  sub_10000C270(v0, qword_1001937F0);
  v1 = sub_10000C2D4(v0, qword_1001937F0);
  v1->i64[0] = 0xD00000000000001ALL;
  v1->i64[1] = 0x800000010013AB40;
  v1[1].i8[0] = 0;
  v1[1].i64[1] = 0;
  v1[2].i64[0] = 0;
  v1[2].i8[8] = 1;
  v1[3] = vdupq_n_s64(0x4046000000000000uLL);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_10011A0C8()
{
  result = qword_100193818;
  if (!qword_100193818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100193818);
  }

  return result;
}

uint64_t sub_10011A148(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

void *sub_10011A288@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100058208(a3);
  v10 = v9;
  v11 = a2 & 1;
  sub_10011A148(a1, a2 & 1);
  v12 = sub_1000DEC54(a3, 0);

  *(a4 + 72) = &type metadata for MessagesStepProvider;
  *(a4 + 80) = sub_10001362C();
  *(a4 + 48) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v11;
  *(v13 + 32) = a3;
  type metadata accessor for FlowViewDataProvider(0);

  sub_1000136E0(a3);
  sub_10000B550();
  *a4 = Environment.init<A>(_:)();
  *(a4 + 8) = v14 & 1;
  if (qword_1001881C8 != -1)
  {
    swift_once();
  }

  *(a4 + 16) = qword_1001A5738;

  sub_100003768(&qword_10018A630, &qword_100128450);
  result = State.init(wrappedValue:)();
  *(a4 + 96) = v13;
  *(a4 + 104) = v16;
  *(a4 + 112) = v17;
  *(a4 + 120) = v18;
  *(a4 + 32) = v8;
  *(a4 + 40) = v10;
  *(a4 + 24) = 0;
  *(a4 + 88) = sub_10011A4DC;
  return result;
}

uint64_t sub_10011A42C(uint64_t a1, char a2, unint64_t a3)
{
  sub_10011A148(a1, a2 & 1);
  sub_1000DF334(a3);
}

uint64_t sub_10011A494()
{

  if (*(v0 + 32) >= 0xAuLL)
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10011A4F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10011A534(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10011A5B8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

void *sub_10011A6F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ActionInfoType(0);
  v31 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v30 - v8;
  __chkstk_darwin(v7);
  v11 = &v30 - v10;
  v12 = v1[5];
  v35 = v1[4];
  v34 = v12;
  *(&v30 - v10) = 1;
  swift_storeEnumTagMultiPayload();
  sub_100003768(&qword_1001888B8, &unk_100121B70);
  v13 = *(type metadata accessor for FlowStepContentOption(0) - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v30 = xmmword_100121620;
  *(v15 + 16) = xmmword_100121620;
  v16 = (v15 + v14);
  v17 = v1[3];
  *v16 = v1[2];
  v16[1] = v17;
  swift_storeEnumTagMultiPayload();

  v33 = sub_1000FF880(v15);
  sub_10000B4E0((v1 + 6), v40);
  sub_10011AE1C(v1, v39);
  sub_10011B058();
  v18 = swift_allocObject();
  sub_10011B03C(v18);
  sub_100003768(&qword_10018C108, &unk_10012AB40);
  v19 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v30;
  sub_10003F5BC(v11, v20 + v19);
  sub_10000B4E0(v40, v38);
  sub_10000B4E0(v38, v37);
  v36 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for ActionInfo(0);
  sub_10003F5BC(v20 + v19, v9);
  swift_setDeallocating();
  sub_10006EB94();
  v21 = v32;
  sub_10003F5BC(v9, v32);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_10011AE58;
  *(v22 + 24) = v18;

  sub_1000ED69C(v21, 1, sub_10005A438, v22);
  sub_10003F620(v9);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v23 = v36;
  sub_10000B4E0(v37, a1 + 56);
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();
  v24 = Environment.init<A>(_:)();
  LOBYTE(v21) = v25;

  sub_10001D724(v37, &qword_100189310, &qword_1001221A0);
  sub_10001D724(v38, &qword_100189310, &qword_1001221A0);
  sub_10001D724(v40, &qword_100189310, &qword_1001221A0);
  sub_10003F620(v11);
  *a1 = v24;
  *(a1 + 8) = v21 & 1;
  v26 = v34;
  *(a1 + 16) = v35;
  *(a1 + 24) = v26;
  *(a1 + 32) = v23;
  *(a1 + 40) = 0;
  *(a1 + 48) = v33;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_10011AE1C(v2, v39);
  sub_10011B058();
  v27 = swift_allocObject();
  sub_10011B03C(v27);
  *(a1 + 112) = sub_10011AEC8;
  *(a1 + 120) = v27;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  sub_10011AE1C(v2, v39);
  sub_10011B058();
  v28 = swift_allocObject();
  result = sub_10011B03C(v28);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = sub_10011AF34;
  *(a1 + 168) = v28;
  return result;
}

uint64_t sub_10011ABD4(uint64_t a1)
{
  v2 = sub_100003768(&qword_100189750, &qword_10012CC00);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  sub_10011A5B8();
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  static ReentrySignal.resetNetworkSettings.getter();
  v7 = type metadata accessor for ReentrySignal();
  sub_100003CE8(v4, 0, 1, v7);
  sub_100085E7C(v6, v5, v4);

  return sub_10001D724(v4, &qword_100189750, &qword_10012CC00);
}

uint64_t sub_10011ACB8(uint64_t *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) == 1)
  {
    v8[1] = *a1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  return static DeviceEventCoordinator.clearReentryNotification()();
}

uint64_t sub_10011AE58()
{
  v1 = *(v0 + 104);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_10011AE88()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10011AED0()
{

  if (v0[11])
  {
    sub_1000086BC(v0 + 8);
  }

  if (v0[13])
  {
  }

  sub_10011B058();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10011AFB0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10011B03C(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, (v1 - 232), 0x68uLL);
}

id sub_10011B098()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100193840 = result;
  return result;
}

uint64_t sub_10011B128()
{
  v0 = type metadata accessor for ImageResource();
  sub_10000C270(v0, qword_1001A59F8);
  sub_10011B6B0();
  if (qword_1001883C8 != -1)
  {
    sub_10011B690(&qword_1001883C8);
  }

  v1 = qword_100193840;
  sub_10011B6D0();
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10011B1C8()
{
  v0 = type metadata accessor for ImageResource();
  sub_10000C270(v0, qword_1001A5A28);
  sub_10011B6B0();
  if (qword_1001883C8 != -1)
  {
    sub_10011B690(&qword_1001883C8);
  }

  v1 = qword_100193840;
  sub_10011B6D0();
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10011B24C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10000C270(v0, qword_1001A5A40);
  sub_10011B6B0();
  if (qword_1001883C8 != -1)
  {
    sub_10011B690(&qword_1001883C8);
  }

  v1 = qword_100193840;
  sub_10011B6D0();
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10011B33C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10000C270(v0, qword_1001A5AA0);
  sub_10011B6B0();
  if (qword_1001883C8 != -1)
  {
    sub_10011B690(&qword_1001883C8);
  }

  v1 = qword_100193840;
  sub_10011B6D0();
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10011B3EC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = type metadata accessor for ImageResource();
  sub_10000C270(v4, a2);
  sub_10000C2D4(v4, a2);
  if (qword_1001883C8 != -1)
  {
    sub_10011B690(&qword_1001883C8);
  }

  v5 = qword_100193840;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10011B480()
{
  v0 = type metadata accessor for ImageResource();
  sub_10000C270(v0, qword_1001A5AD0);
  sub_10011B6B0();
  if (qword_1001883C8 != -1)
  {
    sub_10011B690(&qword_1001883C8);
  }

  v1 = qword_100193840;
  sub_10011B6D0();
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10011B504()
{
  v0 = type metadata accessor for ImageResource();
  sub_10000C270(v0, qword_1001A5AE8);
  sub_10011B6B0();
  if (qword_1001883C8 != -1)
  {
    sub_10011B690(&qword_1001883C8);
  }

  v1 = qword_100193840;
  sub_10011B6D0();
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10011B588()
{
  v0 = type metadata accessor for ImageResource();
  sub_10000C270(v0, qword_1001A5B00);
  sub_10011B6B0();
  if (qword_1001883C8 != -1)
  {
    sub_10011B690(&qword_1001883C8);
  }

  v1 = qword_100193840;
  sub_10011B6D0();
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10011B60C()
{
  v0 = type metadata accessor for ImageResource();
  sub_10000C270(v0, qword_1001A5B18);
  sub_10011B6B0();
  if (qword_1001883C8 != -1)
  {
    sub_10011B690(&qword_1001883C8);
  }

  v1 = qword_100193840;
  sub_10011B6D0();
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_10011B690(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10011B6F8(int a1, int a2, int a3, int a4)
{
  if (qword_1001A5658 == -1)
  {
    if (qword_1001A5660)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10011BBC0();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1001A5660)
    {
      return _availability_version_check();
    }
  }

  if (qword_1001A5650 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10011BBD8();
    a3 = v10;
    a4 = v9;
    v8 = dword_1001A5640 < v11;
    if (dword_1001A5640 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1001A5644 > a3)
      {
        return 1;
      }

      if (dword_1001A5644 >= a3)
      {
        return dword_1001A5648 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1001A5640 < a2;
  if (dword_1001A5640 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_10011B88C(uint64_t result)
{
  v1 = qword_1001A5660;
  if (qword_1001A5660)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_1001A5660 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_1001A5640, &dword_1001A5644, &dword_1001A5648);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

Swift::Int_optional __swiftcall DeviceEventCoordinator.recentSoftwareUpdateErrorCode()()
{
  updated = DeviceEventCoordinator.recentSoftwareUpdateErrorCode()();
  result.value = updated;
  result.is_nil = v1;
  return result;
}

uint64_t GeneratedContent.value<A>(_:forProperty:)()
{
  return GeneratedContent.value<A>(_:forProperty:)();
}

{
  return GeneratedContent.value<A>(_:forProperty:)();
}

uint64_t ModifiedContent<>.accessibilityLabel(_:)()
{
  return ModifiedContent<>.accessibilityLabel(_:)();
}

{
  return ModifiedContent<>.accessibilityLabel(_:)();
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return View.onChange<A>(of:initial:_:)();
}

{
  return View.onChange<A>(of:initial:_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t Substring.subscript.getter()
{
  return Substring.subscript.getter();
}

{
  return Substring.subscript.getter();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}