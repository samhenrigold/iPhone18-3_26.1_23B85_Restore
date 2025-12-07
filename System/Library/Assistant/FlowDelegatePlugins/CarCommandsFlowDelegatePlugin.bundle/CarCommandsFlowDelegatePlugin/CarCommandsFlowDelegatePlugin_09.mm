uint64_t type metadata accessor for CarTire(uint64_t a1)
{
  result = qword_1EBD18;
  if (!qword_1EBD18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_EB0A0(uint64_t a1)
{
  sub_EB124(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_EB124(uint64_t a1)
{
  if (!qword_1EBD28)
  {
    sub_B9C38();
    v1 = sub_168354();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD28);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for TirePressureState(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0xEB248);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_EB280(uint64_t result)
{
  if (result >= 6u)
  {
    return 6;
  }

  else
  {
    return result;
  }
}

uint64_t sub_EB2AC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_EB280(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_EB2E8()
{
  result = qword_1EBD60;
  if (!qword_1EBD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD60);
  }

  return result;
}

uint64_t sub_EB33C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_EB35C);
}

uint64_t sub_EB35C()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  v2[3] = type metadata accessor for MockDigitalCarKeySession();
  v2[4] = &off_1DA428;
  *v2 = v3;

  swift_errorRetain();
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_EB40C@<X0>(void *a2@<X8>)
{
  if (*(v2 + 80))
  {
    swift_willThrow();
    return swift_errorRetain();
  }

  else
  {
    v5 = *(v2 + 88);
    a2[3] = type metadata accessor for MockDigitalCarKeyAssertion();
    a2[4] = &off_1DA6B8;
    *a2 = v5;
  }
}

void *sub_EB480()
{
  sub_EB6C8(v0 + 16);

  return v0;
}

uint64_t sub_EB4C8()
{
  sub_EB480();

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_EB520(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_EB658(a1, v3 + 16);
  return swift_endAccess();
}

uint64_t sub_EB574(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_4D714;

  return sub_EB33C(a1);
}

uint64_t sub_EB658(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EA1E0, &qword_173FE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_EB6C8(uint64_t a1)
{
  v2 = sub_5758(&qword_1EA1E0, &qword_173FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_EB730(uint64_t result)
{
  *(v1 + 16) = 1;
  *(v1 + 17) = result & 1;
  return result;
}

uint64_t sub_EB744(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_EB758()
{
  v1 = v0[2];
  v2 = v0[3];
  *(v2 + 73) = 1;
  v3 = v1[1];
  *(v2 + 80) = *v1;
  *(v2 + 88) = v3;

  if (*(v2 + 104))
  {
    swift_willThrow();
    swift_errorRetain();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_EB7F4(uint64_t a1, uint64_t a2, int a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 40) = a3;
  *(v4 + 16) = a1;
  return sub_D2B0();
}

uint64_t sub_EB810()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  *(v2 + 72) = 1;
  *(v2 + 80) = v4;
  *(v2 + 88) = v1;

  *(v2 + 96) = v3;
  *(v2 + 100) = 0;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_EB8B8()
{
  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_EB940()
{
  sub_EBC5C(v0 + 24);

  return v0;
}

uint64_t sub_EB978()
{
  sub_EB940();

  return _swift_deallocClassInstance(v0, 112, 7);
}

uint64_t sub_EB9D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_4D8D0;

  return sub_EB928();
}

uint64_t sub_EBA5C(uint64_t a1, uint64_t a2, int a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_EBCC4;

  return sub_EB7F4(a1, a2, a3);
}

uint64_t sub_EBB0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_EBCC4;

  return sub_EB744(a1);
}

uint64_t sub_EBBA4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_31D84;

  return sub_EB8A4();
}

uint64_t sub_EBC5C(uint64_t a1)
{
  v2 = sub_5758(&qword_1EC0B8, &unk_177290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_EBCC8()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 96);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      sub_48134(&qword_1E5908);
    }

    v4 = sub_ECCCC(v3);
    v5 = *(v0 + 96);
    *(v0 + 96) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_EBF18()
{
  sub_D2DC();
  v0[2] = v1;
  v2 = sub_1693E4();
  v0[3] = v2;
  v0[4] = *(v2 - 8);
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_EBFD4);
}

uint64_t sub_EBFD4()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_16A524();
  v5 = *(v2 + 16);
  v5(v1, v4, v3);
  v6 = sub_D55F8(v1);
  if (v6)
  {
    v7 = v6;

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    v11 = v0[2];
    v10 = v0[3];
    type metadata accessor for CarCommandsError(0);
    sub_ED0BC(&qword_1E92F0, 255, type metadata accessor for CarCommandsError, &unk_17A85C);
    swift_allocError();
    v5(v12, v11, v10);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_EC180()
{
  v0 = sub_16A164();
  __chkstk_darwin(v0 - 8);
  sub_A138();
  v1 = sub_5758(&qword_1EC1F0, &qword_177490);
  sub_37404();
  v3 = v2;
  v5 = __chkstk_darwin(v4);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20[-1] - v8;
  if (qword_1E5908 != -1)
  {
    sub_48134(&qword_1E5908);
  }

  v10 = qword_1F0C70;
  v20[3] = type metadata accessor for WalletService();
  v20[4] = &off_1D7C28;
  v20[0] = v10;
  type metadata accessor for CarCommandsCATs(0);

  sub_16A154();
  sub_16A094();
  sub_16383C();

  sub_D13C(v20);
  sub_1693F4();
  type metadata accessor for FeatureFlagHelper();
  v11 = swift_allocObject();
  v12 = sub_168E34();
  sub_483C8(v12);

  v13 = sub_168E24();
  type metadata accessor for SnippetManager();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = sub_ECE08(v20, v11, 0x8000, v13, v14);

  v20[0] = v15;
  type metadata accessor for GetSignalActivationStatusHandleIntentFlowStrategy(0);
  sub_ED0BC(&qword_1EC1F8, 255, type metadata accessor for GetSignalActivationStatusHandleIntentFlowStrategy, &unk_16EC00);
  sub_1687E4();

  sub_168884();
  (*(v3 + 16))(v7, v9, v1);
  v16 = sub_5758(&qword_1EC200, &qword_177498);
  sub_483C8(v16);
  v17 = sub_168914();
  (*(v3 + 8))(v9, v1);
  return v17;
}

uint64_t sub_EC4A4(uint64_t a1, uint64_t a2)
{
  result = sub_ED0BC(&qword_1EC1D8, a2, type metadata accessor for GetSignalActivationStatusRCHFlowStrategy, &unk_177320);
  *(a1 + 8) = result;
  return result;
}

void *sub_EC4FC()
{
  v1 = sub_16A164();
  __chkstk_darwin(v1 - 8);
  sub_A138();
  v2 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v3 = sub_16A094();
  v0[5] = v2;
  v0[6] = &off_1DA7E8;
  v0[2] = v3;
  v4 = sub_168E34();
  sub_483C8(v4);
  v5 = sub_168E24();
  v0[10] = v4;
  v0[11] = &protocol witness table for ResponseFactory;
  v0[7] = v5;
  v0[12] = 0;
  return v0;
}

uint64_t sub_EC5E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7971C;

  return sub_EBF18();
}

uint64_t sub_EC674()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_6F850;

  return sub_40600();
}

uint64_t sub_EC74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  SignalActivationStatusRCHFlowStrategy = type metadata accessor for GetSignalActivationStatusRCHFlowStrategy();
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, SignalActivationStatusRCHFlowStrategy, a5);
}

uint64_t sub_EC818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  SignalActivationStatusRCHFlowStrategy = type metadata accessor for GetSignalActivationStatusRCHFlowStrategy();
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, SignalActivationStatusRCHFlowStrategy, a5);
}

uint64_t sub_EC8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  SignalActivationStatusRCHFlowStrategy = type metadata accessor for GetSignalActivationStatusRCHFlowStrategy();
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, SignalActivationStatusRCHFlowStrategy, a5);
}

uint64_t sub_EC9B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_6F428;

  return sub_43114();
}

uint64_t sub_ECA88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_79DCC;

  return sub_45FF4();
}

uint64_t sub_ECC1C(uint64_t a1, uint64_t a2)
{
  result = sub_ED0BC(&qword_1EC1E0, a2, type metadata accessor for GetSignalActivationStatusRCHFlowStrategy, &unk_1773C8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_ECC74(uint64_t a1, uint64_t a2)
{
  result = sub_ED0BC(&qword_1EACA0, a2, type metadata accessor for GetSignalActivationStatusRCHFlowStrategy, &unk_177410);
  *(a1 + 8) = result;
  return result;
}

id sub_ECCCC(uint64_t a1)
{
  v2 = type metadata accessor for WalletService();
  v15[3] = v2;
  v15[4] = &off_1D7C28;
  v15[0] = a1;
  v3 = type metadata accessor for SEGetSignalActivationStatusIntentHandler();
  v4 = objc_allocWithZone(v3);
  sub_2F8D0(v15, v2);
  sub_37404();
  __chkstk_darwin(v5);
  sub_A138();
  v8 = (v7 - v6);
  (*(v9 + 16))(v7 - v6);
  v10 = *v8;
  v14[3] = v2;
  v14[4] = &off_1D7C28;
  v14[0] = v10;
  sub_10824(v14, v4 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40SEGetSignalActivationStatusIntentHandler_carKeyService);
  v13.receiver = v4;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, "init");
  sub_D13C(v14);
  sub_D13C(v15);
  return v11;
}

uint64_t sub_ECE08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_16A164();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for FeatureFlagHelper();
  v27[3] = v8;
  v27[4] = &off_1D9AF0;
  v27[0] = a2;
  type metadata accessor for GetSignalActivationStatusHandleIntentFlowStrategy(0);
  v9 = swift_allocObject();
  v10 = sub_2F8D0(v27, v8);
  __chkstk_darwin(v10);
  v12 = (v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v26[3] = v8;
  v26[4] = &off_1D9AF0;
  v26[0] = v14;
  v15 = (v9 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin49GetSignalActivationStatusHandleIntentFlowStrategy_commonPatterns);
  v16 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v17 = sub_16A094();
  v15[3] = v16;
  v15[4] = &off_1DA7E8;
  *v15 = v17;
  *(v9 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin49GetSignalActivationStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler) = 0;
  sub_10824(a1, v25);
  sub_10824(v26, v24);
  v18 = sub_2F8D0(v24, v24[3]);
  __chkstk_darwin(v18);
  (*(v20 + 16))(v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1668CC();
  v22 = v21;
  sub_D13C(a1);
  sub_D13C(v26);
  sub_D13C(v24);
  sub_D13C(v27);
  return v22;
}

uint64_t sub_ED0BC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_ED104(char *a1)
{
  type metadata accessor for CarCommandsError(0);
  sub_10AFC();
  __chkstk_darwin(v3);
  sub_A138();
  v6 = v5 - v4;
  sub_86E4(a1, &_swiftEmptySetSingleton, v31);
  if (v31[3])
  {
    sub_5758(&qword_1E5F90, &qword_170270);
    sub_5758(&qword_1EC210, &qword_1774B8);
    if (swift_dynamicCast())
    {
      if (*(&v33 + 1))
      {
        sub_D124(&v32, v35);
        v7 = [objc_allocWithZone(v1) init];
        v9 = v36;
        v8 = v37;
        sub_D084(v35, v36);
        v10 = *(v8 + 8);
        v11 = *(v10 + 8);
        v12 = v7;
        v13 = v11(v9, v10);
        if (v14)
        {
          v15 = v13;
          v16 = v14;
          sub_95578();
          v17 = sub_99BFC(v15, v16);
        }

        else
        {
          v17 = 0;
        }

        [v12 setCarName:v17];

        v26 = v36;
        v27 = v37;
        sub_D084(v35, v36);
        v28 = (*(v27 + 16))(v26, v27);
        if (v29)
        {
          v28 = [v12 trunkStatus];
        }

        [v12 setTrunkStatus:v28];

        sub_1693E4();
        sub_10AFC();
        (*(v30 + 8))(a1);
        sub_D13C(v35);
        return v12;
      }
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }
  }

  else
  {
    sub_109A0(v31, &qword_1E5F80, &unk_16E7E0);
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
  }

  sub_109A0(&v32, &qword_1EC208, &qword_1774B0);
  v18 = sub_1693E4();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v6, a1, v18);
  swift_storeEnumTagMultiPayload();
  sub_11D28();
  swift_allocError();
  sub_548D0(v6, v20);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v21 = sub_16A584();
  sub_9DA0(v21, qword_1E65C0);
  v22 = sub_16A9A4();
  swift_getErrorValue();
  v23 = sub_16AEB4();
  sub_386D8(v22, 0x1000uLL, 0xD0000000000000A1, 0x800000000018C740, 0x293A5F2874696E69, 0xE800000000000000, 69, v23, v24);

  (*(v19 + 8))(a1, v18);
  sub_5A09C(v6);
  return 0;
}

void *sub_ED4F4(char *a1, char a2)
{
  v3 = v2;
  type metadata accessor for CarCommandsError(0);
  sub_10AFC();
  __chkstk_darwin(v6);
  sub_A138();
  v9 = (v8 - v7);
  if ((a2 & 0xF0) != 0x60)
  {
    LOBYTE(v44[0]) = a2;
    *v9 = sub_16A694();
    v9[1] = v17;
    swift_storeEnumTagMultiPayload();
    v18 = sub_11D28();
    sub_5A144(v18);
    sub_548D0(v9, v19);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v20 = sub_16A584();
    sub_9DA0(v20, qword_1E65C0);
    sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    v21 = sub_EDC04();
    v28 = 18;
    goto LABEL_16;
  }

  sub_86E4(a1, &_swiftEmptySetSingleton, v40);
  if (!v40[3])
  {
    sub_109A0(v40, &qword_1E5F80, &unk_16E7E0);
    v41 = 0u;
    v42 = 0u;
    v43 = 0;
    goto LABEL_13;
  }

  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1EC210, &qword_1774B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    goto LABEL_13;
  }

  if (!*(&v42 + 1))
  {
LABEL_13:
    sub_109A0(&v41, &qword_1EC208, &qword_1774B0);
    sub_1693E4();
    sub_10AFC();
    (*(v29 + 16))(v9, a1);
    swift_storeEnumTagMultiPayload();
    v30 = sub_11D28();
    sub_5A144(v30);
    sub_548D0(v9, v31);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v32 = sub_16A584();
    sub_9DA0(v32, qword_1E65C0);
    sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    v21 = sub_EDC04();
    v28 = 24;
LABEL_16:
    sub_386D8(v21, v22, v23, v24, v25, v26, v28, v27, v39);

    sub_5A09C(v9);
    v33 = v2;
    return v3;
  }

  sub_D124(&v41, v44);
  v10 = v45;
  v11 = v46;
  sub_D084(v44, v45);
  if (a2)
  {
    v12 = (*(*(v11 + 8) + 8))(v10);
    if (v13)
    {
      v14 = v12;
      v15 = v13;
      sub_95578();
      v16 = sub_99BFC(v14, v15);
    }

    else
    {
      v16 = [v2 carName];
    }

    v37 = v16;
    [v3 setCarName:v16];
  }

  else
  {
    v35 = (*(v11 + 16))(v10, v11);
    if (v36)
    {
      v35 = [v2 trunkStatus];
    }

    [v2 setTrunkStatus:v35];
  }

  v38 = v3;
  sub_D13C(v44);
  return v3;
}

id sub_ED900(uint64_t a1, char a2)
{
  type metadata accessor for CarCommandsError(0);
  sub_10AFC();
  __chkstk_darwin(v4);
  sub_A138();
  v7 = (v6 - v5);
  if ((a2 & 0xF0) == 0x60)
  {
    if (a2)
    {
      sub_16138(a1, v22);
      sub_95578();
      if (sub_5B33C())
      {
        v8 = v20;
        v9 = v21;
      }

      else
      {
        v18 = [v20 carName];
        v8 = v20;
        v9 = v18;
      }

      [v8 setCarName:v9];
    }

    else
    {
      sub_16138(a1, v22);
      if (sub_5B33C())
      {
        v17 = v21;
      }

      else
      {
        v17 = [v20 trunkStatus];
      }

      [v20 setTrunkStatus:v17];
    }
  }

  else
  {
    v22[0] = a2;
    *v7 = sub_16A694();
    v7[1] = v10;
    swift_storeEnumTagMultiPayload();
    v11 = sub_11D28();
    sub_5A144(v11);
    sub_548D0(v7, v12);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v13 = sub_16A584();
    sub_9DA0(v13, qword_1E65C0);
    v14 = sub_16A9A4();
    swift_getErrorValue();
    v15 = sub_16AEB4();
    sub_386D8(v14, 0x1000uLL, 0xD0000000000000A1, 0x800000000018C740, 0xD000000000000018, 0x8000000000183260, 41, v15, v16);

    sub_5A09C(v7);
  }

  return v20;
}

unint64_t sub_EDB68@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0xF0) != 0x60)
  {
LABEL_5:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  if (result)
  {
    result = [v2 carName];
    if (result)
    {
      v4 = result;
      result = sub_95578();
      *(a2 + 24) = result;
      *a2 = v4;
      return result;
    }

    goto LABEL_5;
  }

  result = [v2 trunkStatus];
  *(a2 + 24) = &type metadata for IntentTrunkStatus;
  *a2 = result;
  return result;
}

uint64_t SetCarPlayClimateIntentHandler.handle(intent:)()
{
  sub_D2DC();
  v1[44] = v2;
  v1[45] = v0;
  v3 = sub_5758(&qword_1E76A0, &qword_172B00);
  v1[46] = v3;
  v1[47] = *(v3 - 8);
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = sub_5758(&qword_1EA178, &unk_1774D0);
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();

  return _swift_task_switch(sub_EDD6C);
}

uint64_t sub_EDD6C()
{
  v1 = *(v0 + 352);
  sub_37474();
  sub_16ACF4(19);

  v2 = [v1 description];
  v3 = sub_16A664();
  v5 = v4;

  v25._countAndFlagsBits = v3;
  v25._object = v5;
  sub_16A744(v25);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v6 = *(v0 + 352);
  v7 = sub_16A584();
  *(v0 + 440) = sub_9DA0(v7, qword_1E65C0);
  sub_16A9A4();
  sub_F0330();
  sub_386D8(v8, v9, v10, v11, 0x6928656C646E6168, 0xEF293A746E65746ELL, 26, 0xD000000000000011, 0x800000000018C890);

  v12 = [v6 enableClimateControl];
  if (v12)
  {
    v13 = v12;
    v14 = *(v0 + 360);
    *(v0 + 481) = [v12 BOOLValue];

    sub_D084((v14 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin30SetCarPlayClimateIntentHandler_service), *(v14 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin30SetCarPlayClimateIntentHandler_service + 24));
    v15 = swift_task_alloc();
    *(v0 + 448) = v15;
    *v15 = v0;
    v15[1] = sub_EE040;

    return sub_13AB58(v0 + 88, 1);
  }

  else
  {
    sub_16A9A4();
    sub_F0330();
    sub_386D8(v17, v18, v19, v20, 0x6928656C646E6168, 0xEF293A746E65746ELL, 29, v21, 0x800000000018CA40);
    sub_16A424();
    sub_F0370();
    sub_F033C();

    v22 = sub_120EC();

    return v23(v22);
  }
}

uint64_t sub_EE040()
{
  sub_D2DC();
  sub_D358();
  v2 = *v1;
  sub_D254();
  *v3 = v2;
  *(v4 + 456) = v0;

  if (v0)
  {
    v5 = sub_EE370;
  }

  else
  {
    v5 = sub_EE144;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_EE144()
{
  v1 = v0[14];
  v2 = v0[15];
  sub_30A9C(v0 + 11, v1);
  v5 = (*(v2 + 64) + **(v2 + 64));
  v3 = swift_task_alloc();
  v0[58] = v3;
  *v3 = v0;
  v3[1] = sub_EE26C;

  return v5(v0 + 21, v1, v2);
}

uint64_t sub_EE26C()
{
  sub_D2DC();
  sub_D358();
  v2 = *v1;
  sub_D254();
  *v3 = v2;
  *(v4 + 472) = v0;

  if (v0)
  {
    v5 = sub_EEEA0;
  }

  else
  {
    v5 = sub_EE488;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_EE370()
{
  swift_errorRetain();
  sub_16A9A4();
  sub_F03EC();
  sub_16AEB4();
  v11 = v0;
  sub_1207C();
  sub_F0330();
  sub_386D8(v1, v2, v3, v4, v5, v6, 92, v7, v11);

  sub_16A424();
  sub_F0370();
  sub_67C60();

  sub_F033C();

  v8 = sub_120EC();

  return v9(v8);
}

uint64_t sub_EE488()
{
  sub_F035C();
  if (!*(v0 + 192))
  {
    sub_D188(v0 + 168, &qword_1E83D0, &qword_174EE0);
    sub_16A9A4();
    sub_F0330();
    sub_386D8(v18, v19, v20, v21, 0x6928656C646E6168, v1, 36, v22, 0x800000000018C8B0);
    sub_16A424();
    sub_16A414();
LABEL_13:
    sub_D13C((v0 + 88));
    goto LABEL_33;
  }

  v2 = *(v0 + 360);
  sub_D124((v0 + 168), v0 + 128);
  sub_30A9C(&v2[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin30SetCarPlayClimateIntentHandler_serviceAvailabilityGate], *&v2[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin30SetCarPlayClimateIntentHandler_serviceAvailabilityGate + 24]);
  sub_5758(&qword_1E83E0, &unk_170410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_16D9A0;
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = sub_D084((v0 + 128), v5);
  *(inited + 56) = v5;
  *(inited + 64) = *(v4 + 8);
  v7 = sub_10888((inited + 32));
  v8.n128_f64[0] = (*(*(v5 - 8) + 16))(v7, v6, v5);
  v9 = sub_948E4(inited, *v2, v8);
  swift_setDeallocating();
  sub_EFFF4();
  v10 = v9[2];

  if (!v10)
  {
    sub_16A9A4();
    sub_F0330();
    sub_386D8(v23, v24, v25, v26, 0x6928656C646E6168, v1, 41, v27, 0x800000000018C9F0);
    sub_16A424();
    sub_16A414();
    sub_D13C((v0 + 128));
    goto LABEL_13;
  }

  v11 = *(v0 + 481);
  v12 = *(v0 + 352);
  sub_37474();
  sub_16ACF4(139);
  *(v0 + 312) = v95;
  *(v0 + 320) = v96;
  sub_F03E0();
  sub_16A744(v98);
  if (v11)
  {
    v13._countAndFlagsBits = 1702195828;
  }

  else
  {
    v13._countAndFlagsBits = 0x65736C6166;
  }

  if (v11)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  v13._object = v14;
  sub_16A744(v13);

  v99._countAndFlagsBits = 0x656C62616E65202CLL;
  v99._object = 0xEC000000203A4341;
  sub_16A744(v99);
  v15 = [v12 enableAirConditioner];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 BOOLValue];
  }

  else
  {
    v17 = 2;
  }

  v28 = *(v0 + 352);
  *(v0 + 480) = v17;
  sub_5758(&qword_1EC228, &unk_177DC0);
  v100._countAndFlagsBits = sub_16A694();
  sub_16A744(v100);

  sub_F03E0();
  v101._countAndFlagsBits = 0xD000000000000015;
  sub_16A744(v101);
  v29 = [v28 targetTemperature];
  if (v29)
  {
    v30 = v29;
    v31 = v1;
    sub_55158();
    sub_1682E4();

    v32 = 0;
  }

  else
  {
    v31 = v1;
    v32 = 1;
  }

  v33 = *(v0 + 352);
  v34 = "mandsIntent.swift";
  sub_5370(*(v0 + 432), v32, 1, *(v0 + 368));
  v102._countAndFlagsBits = sub_16A694();
  sub_16A744(v102);

  sub_F03E0();
  sub_16A744(v103);
  *(v0 + 336) = [v33 relativeTemperatureChange];
  sub_16AD84();
  sub_F03E0();
  v104._countAndFlagsBits = 0xD000000000000015;
  sub_16A744(v104);
  *(v0 + 344) = [v33 extremeTemperatureChange];
  sub_16AD84();
  v105._countAndFlagsBits = 0x74616D696C63202CLL;
  v105._object = 0xEF203A656E6F5A65;
  sub_16A744(v105);
  [v33 climateZone];
  v106._countAndFlagsBits = sub_AFE80();
  sub_16A744(v106);

  v35 = *(v0 + 312);
  v36 = *(v0 + 320);
  sub_16A9A4();
  sub_F0330();
  sub_386D8(v37, v38, v39, v40, 0x6928656C646E6168, v31, 44, v35, v36);

  if ((sub_EFB60((v0 + 128)) & 1) == 0 && ![*(v0 + 352) climateZone])
  {
    [*(v0 + 352) setClimateZone:2];
  }

  v41 = *(v0 + 352);
  v42 = sub_EFC28(v41, (v0 + 128));
  if ([v41 relativeTemperatureChange] || objc_msgSend(*(v0 + 352), "extremeTemperatureChange"))
  {
    v43 = *(v0 + 416);
    v44 = *(v0 + 424);
    v33 = *(v0 + 368);
    v34 = *(v0 + 352);
    sub_16A9A4();
    sub_F0318();
    sub_1207C();
    sub_386D8(v45, v46, v47, v48, v49, v50, 53, v51, 0x800000000018C980);
    v53 = *(v0 + 152);
    v52 = *(v0 + 160);
    sub_30A9C((v0 + 128), v53);
    (*(v52 + 96))(1, v53, v52);
    sub_5370(v44, 1, 1, v33);
    sub_EF334(v42, v44, v34);

    sub_F0054(v44, v43);
    if (sub_9E2C(v43, 1, v33) == 1)
    {
      sub_D188(*(v0 + 416), &qword_1EA178, &unk_1774D0);
    }

    else
    {
      v54 = *(v0 + 400);
      v55 = *(v0 + 368);
      v56 = *(v0 + 376);
      v57 = *(v0 + 352);
      (*(v56 + 32))(v54, *(v0 + 416), v55);
      v58 = sub_1682D4();
      v60 = v59;
      [v57 setTargetTemperature:{v59, v58}];

      v61 = *(v56 + 8);
      v34 = (v56 + 8);
      v61(v54, v55);
    }

    sub_D188(*(v0 + 424), &qword_1EA178, &unk_1774D0);
  }

  else
  {
    v78 = [*(v0 + 352) targetTemperature];
    if (!v78)
    {
      v86 = *(v0 + 481);

      sub_16A9A4();
      sub_F0318();
      sub_F03B8();
      sub_F035C();
      sub_386D8(v87, v88, v89, v90, v91, "mandsIntent.swift", 78, v92, 0x800000000018C9D0);
      v93 = *(v0 + 152);
      v94 = *(v0 + 160);
      sub_30A9C((v0 + 128), v93);
      (*(v94 + 96))(v86, v93, v94);
      goto LABEL_28;
    }

    v79 = v78;
    v80 = *(v0 + 384);
    v33 = *(v0 + 392);
    v81 = *(v0 + 368);
    v82 = *(v0 + 376);
    v34 = *(v0 + 352);
    sub_55158();
    sub_1682E4();

    (*(v82 + 32))(v33, v80, v81);
    v83 = *(v0 + 152);
    v84 = *(v0 + 160);
    sub_30A9C((v0 + 128), v83);
    (*(v84 + 96))(1, v83, v84);
    v85 = swift_task_alloc();
    *(v85 + 16) = v33;
    *(v85 + 24) = v34;
    sub_EF3A8(sub_F00C4, v85, v42);

    (*(v82 + 8))(v33, v81);
  }

  sub_F035C();
  sub_F03B8();
LABEL_28:
  v62 = [*(v0 + 352) enableAirConditioner];
  if (v62)
  {
    v63 = v62;
    v64 = [v62 BOOLValue];

    v65 = *(v0 + 160);
    sub_D084((v0 + 128), *(v0 + 152));
    v66 = sub_67C60();
    v67(v66, v65);
    if (*(v0 + 272))
    {
      sub_D124((v0 + 248), v0 + 208);
      sub_16A9A4();
      sub_F0318();
      sub_386D8(v68, v69, v70, v71, v33, v34, 86, v72, 0x800000000018C9B0);
      v73 = *(v0 + 232);
      v74 = *(v0 + 240);
      sub_30A9C((v0 + 208), v73);
      (*(v74 + 40))(v64, v73, v74);
      sub_D13C((v0 + 208));
    }

    else
    {
      sub_D188(v0 + 248, &qword_1EAC28, &qword_1774E0);
    }
  }

  sub_D13C((v0 + 128));
  sub_D13C((v0 + 88));
  sub_16A424();
  sub_16A414();
LABEL_33:
  sub_F033C();

  v75 = sub_120EC();

  return v76(v75);
}

uint64_t sub_EEEA0()
{
  sub_D13C((v0 + 88));
  swift_errorRetain();
  sub_16A9A4();
  sub_F03EC();
  sub_16AEB4();
  v12 = v1;
  sub_1207C();
  sub_F0330();
  sub_386D8(v2, v3, v4, v5, v6, v7, 92, v8, v12);

  sub_16A424();
  sub_F0370();
  sub_67C60();

  sub_F033C();

  v9 = sub_120EC();

  return v10(v9);
}

uint64_t sub_EEFC0(void *a1, uint64_t a2, void *a3)
{
  v31 = a2;
  v30 = sub_5758(&qword_1EA178, &unk_1774D0);
  v5 = __chkstk_darwin(v30);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v29 - v9;
  __chkstk_darwin(v8);
  v12 = v29 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v29[1] = sub_D084(a1, v14);
  v15 = [a3 relativeTemperatureChange];
  v16 = [a3 targetTemperature];
  if (v16)
  {
    v17 = v16;
    sub_55158();
    sub_1682E4();

    v18 = sub_5758(&qword_1E76A0, &qword_172B00);
    v19 = v10;
    v20 = 0;
  }

  else
  {
    v18 = sub_5758(&qword_1E76A0, &qword_172B00);
    v19 = v10;
    v20 = 1;
  }

  sub_5370(v19, v20, 1, v18);
  (*(v13 + 32))(v15, v10, [a3 extremeTemperatureChange], v14, v13);
  sub_D188(v10, &qword_1EA178, &unk_1774D0);
  v21 = v31;
  sub_F02A4(v12, v31);
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_16ACF4(28);

  v32 = 0x2064657461647055;
  v33 = 0xE800000000000000;
  v22 = a1[3];
  v23 = a1[4];
  sub_D084(a1, v22);
  v34._countAndFlagsBits = (*(v23 + 16))(v22, v23);
  sub_16A744(v34);

  v35._object = 0x800000000018CBD0;
  v35._countAndFlagsBits = 0xD000000000000010;
  sub_16A744(v35);
  sub_F0054(v21, v7);
  v36._countAndFlagsBits = sub_16A694();
  sub_16A744(v36);

  v25 = v32;
  v24 = v33;
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v26 = sub_16A584();
  sub_9DA0(v26, qword_1E65C0);
  v27 = sub_16A9A4();
  sub_386D8(v27, 0x4000uLL, 0xD00000000000009ELL, 0x800000000018C7F0, 0x6928656C646E6168, 0xEF293A746E65746ELL, 62, v25, v24);
}

void sub_EF334(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 16);
  v7 = (a1 + 32);
  v8 = v6 + 1;
  do
  {
    if (!--v8)
    {
      break;
    }

    v9 = v7 + 5;
    sub_EEFC0(v7, a2, a3);
    v7 = v9;
  }

  while (!v3);
}

uint64_t sub_EF3A8(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  result = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = result + 40;
    a1();
    result = v7;
  }

  while (!v3);
  return result;
}

uint64_t sub_EF3FC(void *a1, uint64_t a2, void *a3)
{
  v22 = a3;
  v5 = sub_5758(&qword_1E76A0, &qword_172B00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_16ACF4(29);

  v23 = 0x676E697461647055;
  v24 = 0xE900000000000020;
  v9 = a1[3];
  v10 = a1[4];
  sub_D084(a1, v9);
  v25._countAndFlagsBits = (*(v10 + 16))(v9, v10);
  sub_16A744(v25);

  v26._object = 0x800000000018CBD0;
  v26._countAndFlagsBits = 0xD000000000000010;
  sub_16A744(v26);
  sub_F0240();
  v27._countAndFlagsBits = sub_16AE24();
  sub_16A744(v27);

  v11 = v23;
  v12 = v24;
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v13 = sub_16A584();
  sub_9DA0(v13, qword_1E65C0);
  v14 = sub_16A9A4();
  sub_386D8(v14, 0x4000uLL, 0xD00000000000009ELL, 0x800000000018C7F0, 0x6928656C646E6168, 0xEF293A746E65746ELL, 73, v11, v12);

  v15 = a1[3];
  v16 = a1[4];
  sub_D084(a1, v15);
  (*(v16 + 24))(a2, v15, v16);
  v17 = sub_1682D4();
  v19 = v18;
  [v22 setTargetTemperature:{v18, v17}];

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_EF6DC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_11884;

  return SetCarPlayClimateIntentHandler.handle(intent:)();
}

uint64_t sub_EF7C0()
{
  v1 = [*(v0 + 16) enableClimateControl];
  if (v1)
  {
    v2 = v1;
    sub_16ACF4(42);

    v3 = [v2 BOOLValue];
    v4 = v3 == 0;
    if (v3)
    {
      v5._countAndFlagsBits = 1702195828;
    }

    else
    {
      v5._countAndFlagsBits = 0x65736C6166;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }

    v5._object = v6;
    sub_16A744(v5);

    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v7 = sub_16A584();
    sub_9DA0(v7, qword_1E65C0);
    sub_16A9A4();
    sub_F038C();
    sub_386D8(v8, v9, v10, v11, v12, v13, 105, 0xD000000000000028, 0x800000000018CAB0);

    sub_16A424();
    sub_16A414();
  }

  else
  {
    v14 = *(v0 + 16);
    sub_16ACF4(56);
    v31._countAndFlagsBits = 0xD000000000000036;
    v31._object = 0x800000000018CA70;
    sub_16A744(v31);
    v15 = v14;
    v16 = [v15 description];
    v17 = sub_16A664();
    v19 = v18;

    v32._countAndFlagsBits = v17;
    v32._object = v19;
    sub_16A744(v32);

    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v20 = sub_16A584();
    sub_9DA0(v20, qword_1E65C0);
    sub_16A9A4();
    sub_F038C();
    sub_386D8(v21, v22, v23, v24, v25, v26, 101, 0, 0xE000000000000000);

    sub_16A424();
    sub_F0370();
  }

  v27 = sub_120EC();

  return v28(v27);
}

uint64_t sub_EFAA0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_12070;

  return SetCarPlayClimateIntentHandler.confirm(intent:)(v6);
}

uint64_t sub_EFB60(void *a1)
{
  v1 = a1[4];
  sub_D084(a1, a1[3]);
  v2 = sub_67C60();
  v4 = v3(v2, v1);
  sub_93A6C(v4, v10);

  v5 = v11;
  if (v11)
  {
    v6 = v12;
    sub_D084(v10, v11);
    v7 = sub_67C60();
    v5 = v8(v7, v6);
    sub_D13C(v10);
  }

  else
  {
    sub_D188(v10, qword_1EC260, &unk_177530);
  }

  return v5 & 1;
}

uint64_t sub_EFC28(void *a1, void *a2)
{
  v4 = [a1 climateZone];
  switch(v4)
  {
    case 0uLL:
      if (qword_1E58E8 != -1)
      {
        sub_9ED4(&qword_1E58E8);
      }

      v5 = sub_16A584();
      sub_9DA0(v5, qword_1E65C0);
      sub_16A9A4();
      sub_F03CC();
      sub_F03A8();
      sub_386D8(v6, v7, v8, v9, v10, v11, 120, v12, v31);
      v4 = &dword_0 + 2;
      goto LABEL_17;
    case 1uLL:
      if (qword_1E58E8 != -1)
      {
        sub_9ED4(&qword_1E58E8);
      }

      v20 = sub_16A584();
      sub_9DA0(v20, qword_1E65C0);
      sub_16A9A4();
      sub_F03CC();
      sub_F03A8();
      sub_386D8(v21, v22, v23, v24, v25, v26, 123, v27, v31);
      v4 = &dword_0 + 1;
      goto LABEL_17;
    case 2uLL:
      if (*(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin30SetCarPlayClimateIntentHandler_isRHD))
      {
        v4 = &dword_0 + 3;
      }

      else
      {
        v4 = &dword_0 + 2;
      }

      goto LABEL_11;
    case 3uLL:
      if (*(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin30SetCarPlayClimateIntentHandler_isRHD))
      {
        v4 = &dword_0 + 2;
      }

      else
      {
        v4 = &dword_0 + 3;
      }

      goto LABEL_11;
    default:
LABEL_11:
      sub_37474();
      sub_16ACF4(40);

      v32._countAndFlagsBits = sub_AFE80();
      sub_16A744(v32);

      v33._countAndFlagsBits = 46;
      v33._object = 0xE100000000000000;
      sub_16A744(v33);
      if (qword_1E58E8 != -1)
      {
        sub_9ED4(&qword_1E58E8);
      }

      v13 = sub_16A584();
      sub_9DA0(v13, qword_1E65C0);
      sub_16A9A4();
      sub_F03A8();
      sub_386D8(v14, v15, v16, v17, v18, v19, 126, 0xD000000000000025, 0x800000000018CC20);

LABEL_17:
      v28 = a2[3];
      v29 = a2[4];
      sub_30A9C(a2, v28);
      return (*(v29 + 120))(v4, v28, v29);
  }
}

id SetCarPlayClimateIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetCarPlayClimateIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_EFFB0()
{
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_EFFF4()
{
  sub_5758(&qword_1E91C0, &qword_172C40);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_F0054(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EA178, &unk_1774D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F0108()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_120FC(v1);

  return v3(v2);
}

uint64_t sub_F01A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_120FC(v1);

  return v3(v2);
}

unint64_t sub_F0240()
{
  result = qword_1EA180;
  if (!qword_1EA180)
  {
    sub_37130(&qword_1E76A0, &qword_172B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA180);
  }

  return result;
}

uint64_t sub_F02A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EA178, &unk_1774D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_F033C()
{
}

uint64_t sub_F0370()
{

  return sub_16A414();
}

uint64_t sub_F03EC()
{

  return swift_getErrorValue();
}

uint64_t sub_F0478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v11 = type metadata accessor for DefaultContinueInAppDialogFlowStrategy(0, *(a3 + 80), *(a3 + 88), v10);
  *v9 = v4;
  v9[1] = sub_10A9C;

  return ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:)(a1, a2, v11, a4);
}

uint64_t sub_F0548(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v3[25] = *v2;
  return sub_16620(sub_F058C);
}

uint64_t sub_F058C()
{
  v1 = *(v0 + 200);
  sub_16ACF4(39);

  v49 = *(v1 + 80);
  v50 = *(v1 + 88);
  sub_1690B4();
  sub_169094();
  v2 = sub_16A1B4();
  v4 = v3;

  *(v0 + 88) = v2;
  *(v0 + 96) = v4;
  sub_5758(&qword_1E5FA0, &qword_172DD0);
  v51._countAndFlagsBits = sub_16A694();
  sub_16A744(v51);

  v52._countAndFlagsBits = 46;
  v52._object = 0xE100000000000000;
  sub_16A744(v52);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v6 = sub_16A9A4();
  sub_386D8(v6, 2uLL, 0xD00000000000008BLL, 0x800000000018CD60, 0xD000000000000032, 0x800000000018CE20, 38, 0xD000000000000024, 0x800000000018CE60);

  v7 = sub_169094();
  v8 = sub_11F404(v7);

  if ((v8 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_16ACF4(44);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  v53._countAndFlagsBits = 0xD00000000000002ALL;
  v53._object = 0x800000000018CE90;
  sub_16A744(v53);
  v10 = sub_169084();
  v11 = [v10 userActivity];

  if (v11)
  {
    v12 = [v11 userInfo];

    if (v12)
    {
      v11 = sub_16A5B4();
    }

    else
    {
      v11 = 0;
    }
  }

  *(v0 + 160) = v11;
  sub_5758(&qword_1EC378, &unk_177720);
  sub_16AD84();

  v13 = *(v0 + 104);
  v14 = *(v0 + 112);
  v15 = sub_16A9A4();
  sub_386D8(v15, 2uLL, 0xD00000000000008BLL, 0x800000000018CD60, 0xD000000000000032, 0x800000000018CE20, 41, v13, v14);

  v16 = sub_169084();
  v17 = [v16 userActivity];

  if (!v17 || (v18 = [v17 userInfo], v17, !v18))
  {
LABEL_18:
    type metadata accessor for DefaultContinueInAppDialogFlowStrategy(0, v49, v50, v9);
    v23 = sub_BDE3C();
    *(v0 + 280) = v23;
    *(v0 + 152) = v23;
    v24 = swift_task_alloc();
    *(v0 + 288) = v24;
    sub_F2D90();
    *v24 = v0;
    v25 = sub_F1194;
LABEL_19:
    v24[1] = v25;
    sub_D2C0();

    return ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:)(v26, v27, v28, v29);
  }

  v19 = sub_16A5B4();
  *(v0 + 208) = v19;

  *(v0 + 120) = 0x707954726F727265;
  *(v0 + 128) = 0xE900000000000065;
  sub_16AC84();
  sub_13F658(v19, (v0 + 56), v0 + 16);
  sub_472B0(v0 + 16);
  if (!*(v0 + 80))
  {
    sub_D188(v0 + 56, &qword_1E6A10, &unk_1744D0);
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    v21 = 0;
    v20 = 0xE000000000000000;
    goto LABEL_24;
  }

  v21 = *(v0 + 136);
  v20 = *(v0 + 144);
  if (v21 == 0x6C6E4F43464E7369 && v20 == 0xE900000000000079)
  {
    goto LABEL_25;
  }

LABEL_24:
  if (sub_F2DCC(0x6C6E4F43464E7369, 0xE900000000000079))
  {
LABEL_25:

    *(v0 + 216) = sub_1690A4();
    swift_task_alloc();
    sub_D3E0();
    *(v0 + 224) = v31;
    *v31 = v32;
    sub_F2DB8(v31);
    sub_D2C0();

    return sub_F12D8(v33, v34);
  }

  v36 = v21 == 0xD000000000000023 && 0x80000000001806E0 == v20;
  if (v36 || (sub_F2DCC(0xD000000000000023, 0x80000000001806E0) & 1) != 0)
  {

    swift_task_alloc();
    sub_D3E0();
    *(v0 + 232) = v37;
    *v37 = v38;
    sub_F2DB8(v37);
    sub_D2C0();

    return sub_F1768(v39);
  }

  if (v21 == 0x74754F656D6974 && v20 == 0xE700000000000000)
  {
  }

  else
  {
    v42 = sub_F2DCC(0x74754F656D6974, 0xE700000000000000);

    if ((v42 & 1) == 0)
    {

      type metadata accessor for DefaultContinueInAppDialogFlowStrategy(0, v49, v50, v43);
      v44 = sub_BDE3C();
      *(v0 + 256) = v44;
      *(v0 + 168) = v44;
      v24 = swift_task_alloc();
      *(v0 + 264) = v24;
      sub_F2D90();
      *v24 = v0;
      v25 = sub_F1060;
      goto LABEL_19;
    }
  }

  *(v0 + 240) = sub_1690A4();
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 248) = v45;
  *v45 = v46;
  sub_F2DB8(v45);
  sub_D2C0();

  return sub_F1B2C();
}

uint64_t sub_F0CF0()
{
  sub_D3A4();
  v2 = *v1;
  v3 = *v1;
  sub_D254();
  *v4 = v3;

  v5 = *(v2 + 216);
  if (v0)
  {
  }

  else
  {
  }

  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_F0E38()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  sub_D37C();

  return v3();
}

uint64_t sub_F0F18()
{
  sub_D3A4();
  v2 = *v1;
  v3 = *v1;
  sub_D254();
  *v4 = v3;

  v5 = *(v2 + 240);
  if (v0)
  {
  }

  else
  {
  }

  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_F1060()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 272) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v7);
  }

  else
  {
    sub_D37C();

    return v8();
  }
}

uint64_t sub_F1194()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 296) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v7);
  }

  else
  {
    sub_D37C();

    return v8();
  }
}

uint64_t sub_F12D8(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  return sub_16620(sub_F12F4);
}

uint64_t sub_F12F4()
{
  sub_1696C();
  *(v0 + 88) = 0xD000000000000012;
  v1 = *(v0 + 112);
  *(v0 + 96) = 0x80000000001807C0;
  sub_16AC84();
  sub_13F658(v1, (v0 + 56), v0 + 16);
  sub_472B0(v0 + 16);
  if (*(v0 + 80))
  {
    if (swift_dynamicCast())
    {
      v2 = *(v0 + 160);
      goto LABEL_6;
    }
  }

  else
  {
    sub_D188(v0 + 56, &qword_1E6A10, &unk_1744D0);
  }

  v2 = 0;
LABEL_6:
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_F1448;

  return sub_DF380(v2);
}

uint64_t sub_F1448()
{
  sub_1696C();
  v3 = v2;
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v5 + 136) = v3;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    *(v5 + 144) = v11;
    *v11 = v7;
    v11[1] = sub_F15B4;

    return sub_F24D0();
  }
}

uint64_t sub_F15B4()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 152) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_F16B0()
{
  sub_D2DC();

  sub_D37C();

  return v1();
}

uint64_t sub_F170C()
{
  sub_D2DC();

  sub_D37C();

  return v1();
}

uint64_t sub_F1768(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_16620(sub_F1780);
}

uint64_t sub_F1780()
{
  sub_D2DC();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_F1810;

  return sub_E09EC();
}

uint64_t sub_F1810()
{
  sub_1696C();
  v3 = v2;
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v5 + 40) = v3;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    *(v5 + 48) = v11;
    *v11 = v7;
    v11[1] = sub_F1978;

    return sub_F24D0();
  }
}

uint64_t sub_F1978()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 56) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_F1A74()
{
  sub_D2DC();

  sub_D37C();

  return v1();
}

uint64_t sub_F1AD0()
{
  sub_D2DC();

  sub_D37C();

  return v1();
}

uint64_t sub_F1B2C()
{
  sub_D2DC();
  v1[22] = v2;
  v1[23] = v0;
  v1[20] = v3;
  v1[21] = v4;
  sub_5758(&qword_1E6300, &qword_16ECE0);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v5);
}

uint64_t sub_F1BD0()
{
  v1 = [*(v0 + 176) parametersByName];
  if (!v1)
  {
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_6;
  }

  v2 = v1;
  v3 = sub_16A5B4();

  sub_13F530(0x656D614E726163, 0xE700000000000000, v3, (v0 + 56));

  if (!*(v0 + 80))
  {
LABEL_6:
    sub_D188(v0 + 56, &qword_1E6A10, &unk_1744D0);
    goto LABEL_7;
  }

  sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 152);
    goto LABEL_8;
  }

LABEL_7:
  v4 = 0;
LABEL_8:
  *(v0 + 208) = v4;
  sub_16ACF4(17);

  *(v0 + 136) = v4;
  v5 = v4;
  sub_5758(&qword_1EC370, &unk_177710);
  v28._countAndFlagsBits = sub_16A694();
  sub_16A744(v28);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v6 = *(v0 + 168);
  v7 = sub_16A584();
  sub_9DA0(v7, qword_1E65C0);
  v8 = sub_16A9A4();
  sub_386D8(v8, 0x20000uLL, 0xD00000000000008BLL, 0x800000000018CD60, 0xD000000000000028, 0x800000000018CDF0, 81, 0x4364656972657571, 0xEF20656D614E7261);

  sub_F30B0();
  v10 = v9;
  *(v0 + 120) = 0x664F7265626D756ELL;
  *(v0 + 128) = 0xEF7379654B726143;
  sub_16AC84();
  sub_13F658(v6, (v0 + 88), v0 + 16);
  sub_472B0(v0 + 16);
  if (!*(v0 + 112))
  {
    sub_D188(v0 + 88, &qword_1E6A10, &unk_1744D0);
LABEL_15:
    if (!v4)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (!v4)
  {
    goto LABEL_25;
  }

LABEL_16:
  v11 = [v5 spokenPhrase];
  v12 = sub_16A664();
  v14 = v13;

  sub_15B48(v12, v14);
  v16 = v15;

  if (v16)
  {
    v17 = sub_16A5D4();
    v19 = v18;

    if (v17 != 115 || v19 != 0xE100000000000000)
    {
      sub_16AE54();
    }
  }

LABEL_25:
  if (v10)
  {
    sub_16A6E4();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = *(v0 + 200);
  v23 = sub_16A0C4();
  v24 = 1;
  sub_5370(v22, v21, 1, v23);
  if (v4)
  {
    sub_99C94();
    v24 = 0;
  }

  sub_5370(*(v0 + 192), v24, 1, v23);
  v25 = swift_task_alloc();
  *(v0 + 216) = v25;
  *v25 = v0;
  v25[1] = sub_F207C;

  return sub_DEEF0();
}

uint64_t sub_F207C()
{
  sub_D3A4();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  v7 = *v1;
  *v6 = *v1;
  v5[28] = v3;
  v5[29] = v0;

  v8 = v4[25];
  v9 = v4[24];
  if (v0)
  {
    sub_F2DE8(v9);
    sub_F2DE8(v8);
    sub_10B4C();

    return _swift_task_switch(v10);
  }

  else
  {
    sub_F2DE8(v9);
    sub_F2DE8(v8);
    v11 = swift_task_alloc();
    v5[30] = v11;
    *v11 = v7;
    v11[1] = sub_F225C;

    return sub_F24D0();
  }
}

uint64_t sub_F225C()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 248) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_F2358()
{
  sub_1696C();
  v1 = *(v0 + 208);

  sub_D37C();

  return v2();
}

uint64_t sub_F23D8()
{
  sub_1696C();

  sub_D37C();

  return v1();
}

uint64_t sub_F2450()
{
  sub_1696C();

  sub_D37C();

  return v1();
}

uint64_t sub_F24D0()
{
  sub_D2DC();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  sub_5758(&qword_1E6300, &qword_16ECE0);
  v1[10] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v4);
}

uint64_t sub_F2568()
{
  sub_1696C();
  sub_F30B0();
  if (v1)
  {
    sub_16A6E4();

    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *(v0 + 80);
  v4 = sub_16A0C4();
  sub_5370(v3, v2, 1, v4);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_F2650;

  return sub_DED20();
}

uint64_t sub_F2650()
{
  sub_D3A4();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 96) = v0;

  v7 = *(v4 + 80);
  if (!v0)
  {
    *(v5 + 104) = v3;
  }

  sub_D188(v7, &qword_1E6300, &qword_16ECE0);
  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_F27A8()
{
  sub_D3A4();
  v1 = v0[13];
  v2 = [v1 dialog];

  sub_16484(0, &qword_1EC368, DialogElement_ptr);
  v3 = sub_16A7D4();

  if (sub_11B48C())
  {
    sub_1487EC();
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = sub_16AD04();
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v5 = v4;
    v6 = v0[9];

    v7 = [v5 fullPrint];

    v8 = sub_16A664();
    v10 = v9;

    v0[14] = v10;
    type metadata accessor for AppPunchoutSnippetFactory();
    sub_10824(v6 + 56, (v0 + 2));
    swift_task_alloc();
    sub_D3E0();
    v0[15] = v11;
    *v11 = v12;
    v11[1] = sub_F29FC;
    v13 = v0[7];
    v14 = v0[8];

    return sub_4EB90(v13, v8, v10, 0xD000000000000012, 0x800000000017F6B0, v14, (v0 + 2));
  }

  else
  {

    type metadata accessor for CarCommandsError(0);
    sub_11D28();
    swift_allocError();
    *v16 = 0xD000000000000027;
    v16[1] = 0x800000000018CD30;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_D37C();

    return v17();
  }
}

uint64_t sub_F29FC()
{
  sub_1696C();
  v2 = *v1;
  sub_D254();
  *v3 = v2;
  v4 = *v1;
  *v3 = *v1;
  *(v2 + 128) = v0;

  if (v0)
  {
    sub_D13C((v2 + 16));

    sub_10B4C();

    return _swift_task_switch(v5);
  }

  else
  {
    sub_D13C((v2 + 16));

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_F2B74()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_F2BD0()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

void *sub_F2C2C()
{
  sub_D13C((v0 + 16));
  sub_D13C((v0 + 56));

  return v0;
}

uint64_t sub_F2C5C()
{
  sub_F2C2C();

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t sub_F2CC4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1039C;

  return sub_F0548(a1, a2);
}

uint64_t sub_F2D90()
{

  return swift_getWitnessTable();
}

uint64_t sub_F2DCC(uint64_t a1, uint64_t a2)
{

  return sub_16AE54();
}

uint64_t sub_F2DE8(uint64_t a1)
{

  return sub_D188(a1, v1, v2);
}

uint64_t sub_F2E00()
{
  sub_5758(&qword_1E5F70, &unk_16F3F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_177730;
  sub_16484(0, &qword_1E6A18, INGetCarLockStatusIntent_ptr);
  v3 = [swift_getObjCClassFromMetadata() description];
  sub_16A664();
  sub_F31FC();
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  sub_16484(0, &qword_1E6A50, INSetCarLockStatusIntent_ptr);
  v4 = [swift_getObjCClassFromMetadata() description];
  sub_16A664();
  sub_F31FC();
  *(v2 + 48) = v0;
  *(v2 + 56) = v1;
  sub_16484(0, &qword_1E62F8, INActivateCarSignalIntent_ptr);
  v5 = [swift_getObjCClassFromMetadata() description];
  sub_16A664();
  sub_F31FC();
  *(v2 + 64) = v0;
  *(v2 + 72) = v1;
  sub_16A4A4();
  v6 = [swift_getObjCClassFromMetadata() description];
  sub_16A664();
  sub_F31FC();
  *(v2 + 80) = v0;
  *(v2 + 88) = v1;
  sub_16A494();
  v7 = [swift_getObjCClassFromMetadata() description];
  sub_16A664();
  sub_F31FC();
  *(v2 + 96) = v0;
  *(v2 + 104) = v1;
  sub_16A524();
  v8 = [swift_getObjCClassFromMetadata() description];
  sub_16A664();
  sub_F31FC();
  *(v2 + 112) = v0;
  *(v2 + 120) = v1;
  sub_16A3B4();
  v9 = [swift_getObjCClassFromMetadata() description];
  sub_16A664();
  sub_F31FC();
  *(v2 + 128) = v0;
  *(v2 + 136) = v1;
  sub_16A384();
  v10 = [swift_getObjCClassFromMetadata() description];
  sub_16A664();
  sub_F31FC();
  *(v2 + 144) = v0;
  *(v2 + 152) = v1;
  sub_16A484();
  v11 = [swift_getObjCClassFromMetadata() description];
  sub_16A664();
  sub_F31FC();
  *(v2 + 160) = v0;
  *(v2 + 168) = v1;
  return v2;
}

uint64_t sub_F3020()
{
  sub_16A1C4();
  swift_allocObject();
  return sub_16A194();
}

uint64_t sub_F30B0()
{
  v0 = sub_168454();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_16A1C4();
  sub_16A1A4();
  sub_169074();
  swift_allocObject();

  sub_169064();
  sub_168444();
  v4 = sub_169054();

  (*(v1 + 8))(v3, v0);
  return v4;
}

void sub_F31FC()
{
}

void sub_F3214()
{
  sub_CA350();
  v1 = v0;
  v2 = sub_1695B4();
  sub_9F48();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_A128();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  v11 = v67 - v10;
  v12 = sub_169454();
  __chkstk_darwin(v12 - 8);
  sub_A138();
  v80 = v14 - v13;
  sub_F573C();
  v79 = sub_169564();
  sub_9F48();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_A128();
  v78 = v18 - v19;
  sub_6CF04();
  __chkstk_darwin(v20);
  sub_F5784();
  v77 = v21;
  sub_F573C();
  v22 = sub_169504();
  sub_9F48();
  v24 = v23;
  __chkstk_darwin(v25);
  sub_A128();
  v76 = v26 - v27;
  sub_6CF04();
  __chkstk_darwin(v28);
  sub_F5784();
  v82 = v29;
  v30 = sub_11B48C();
  if (v30)
  {
    v31 = v30;
    v71 = v22;
    v72 = v8;
    v73 = v11;
    v74 = v4;
    v75 = v2;
    v32 = 0;
    v68 = (v16 + 8);
    v69 = (v16 + 16);
    v70 = v24;
    v81 = (v24 + 32);
    v83 = _swiftEmptyArrayStorage;
    while (v31 != v32)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        sub_16AD04();
      }

      else
      {
        if (v32 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_23;
        }
      }

      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      sub_16A1B4();
      if (v34)
      {
        v35 = sub_169B04();
        sub_483C8(v35);
        v36 = sub_169AF4();
        sub_169AE4();

        v37 = sub_169694();
        sub_483C8(v37);
        v38 = sub_169684();
        v67[2] = v36;

        sub_169A84();

        v39 = sub_169CB4();
        sub_483C8(v39);
        v40 = sub_169CA4();
        v67[1] = v38;

        sub_169C34();

        v67[0] = v40;

        v41 = v77;
        sub_169554();
        sub_BE5EC();
        sub_169544();
        v42 = v76;
        sub_1694F4();
        v43 = v79;
        (*v69)(v78, v41, v79);
        sub_1694E4();
        (*v68)(v41, v43);

        v44 = *v81;
        v45 = v71;
        (*v81)(v82, v42, v71);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_108684();
          v83 = v49;
        }

        v46 = v83[2];
        if (v46 >= v83[3] >> 1)
        {
          sub_108684();
          v83 = v50;
        }

        v47 = v82;
        v48 = v83;
        v83[2] = v46 + 1;
        v44(v48 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v46, v47, v45);
        v32 = v33;
      }

      else
      {

        ++v32;
      }
    }

    v51 = v73;
    sub_F471C(v83);

    v84 = 0;
    v85 = 0xE000000000000000;
    sub_16ACF4(35);

    sub_D434();
    v84 = 0xD000000000000021;
    v85 = v52;
    v53 = v72;
    (*(v74 + 16))(v72, v51, v75);
    v86._countAndFlagsBits = sub_14C6B0(v53);
    sub_16A744(v86);

    v31 = v85;
    if (qword_1E58E8 == -1)
    {
      goto LABEL_17;
    }

LABEL_24:
    sub_9ED4(&qword_1E58E8);
LABEL_17:
    v54 = sub_16A584();
    sub_9F450(v54, qword_1E65C0);
    sub_F5678();
    sub_F5760(v55, v56, v57, v58, 0xD00000000000001ELL, v59, 42, v60, v31);
    sub_F5748();
    v61 = sub_5758(&qword_1EC380, &unk_177740);
    v62 = sub_F56FC(v61);
    v63 = sub_F5724(v62, xmmword_16D9A0);
    v64(v63);
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v65 = sub_16A584();
    sub_9DA0(v65, qword_1E65C0);
    v66 = sub_16A9A4();
    sub_386D8(v66, 8uLL, 0xD000000000000078, 0x800000000018CF20, 0xD00000000000001ELL, 0x800000000018CFA0, 35, 0xD000000000000024, 0x800000000018CFF0);
  }

  sub_CA368();
}

void sub_F38BC()
{
  sub_CA350();
  v2 = v1;
  sub_1695B4();
  sub_9F48();
  __chkstk_darwin(v3);
  sub_A128();
  sub_F56DC();
  __chkstk_darwin(v4);
  sub_F5688();
  v5 = sub_F54E4;
  switch(v2)
  {
    case 2:
    case 5:
      goto LABEL_7;
    case 18:
LABEL_8:
      (v5)(v33);
      sub_F57B8();
      v7 = sub_169BC4();
      sub_483C8(v7);
      sub_169BB4();
      sub_F564C();
      v8 = sub_F5790();
      v9(v8);
      sub_F5620();
      sub_F5778();
      sub_F50FC();
      sub_F5638();
      sub_16ACF4(32);

      sub_D434();
      v11 = sub_F55C4(v10);
      v12(v11);
      v36._countAndFlagsBits = sub_14C6B0(v0);
      sub_16A744(v36);

      v13 = v33[0];
      v14 = v33[1];
      if (qword_1E58E8 != -1)
      {
        sub_9ED4(&qword_1E58E8);
      }

      v15 = sub_16A584();
      sub_9DA0(v15, qword_1E65C0);
      sub_16A9A4();
      sub_F56EC();
      sub_386D8(v16, v17, v18, v19, 0xD00000000000001FLL, v20, 69, v13, v14);

      v21 = sub_5758(&qword_1EC380, &unk_177740);
      v22 = sub_F55F8(v21);
      v23 = sub_F55E0(v22, xmmword_16D9A0);
      v24(v23);

      sub_D13C(&v34);
      goto LABEL_11;
    case 9:
LABEL_7:
      v5 = sub_F55C0;
      goto LABEL_8;
  }

  sub_F5698();

  sub_D434();
  v34 = 0xD000000000000024;
  v35 = v25;
  LOBYTE(v33[0]) = v2;
  v37._countAndFlagsBits = sub_16A694();
  sub_16A744(v37);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v26 = sub_16A584();
  sub_9F450(v26, qword_1E65C0);
  sub_F5678();
  sub_F5760(v27, v28, v29, v30, 0xD00000000000001FLL, v31, 60, v32, v35);
  sub_F5748();
LABEL_11:
  sub_CA23C();
  sub_CA368();
}

void sub_F3C00()
{
  sub_CA350();
  v2 = v1;
  sub_1695B4();
  sub_9F48();
  __chkstk_darwin(v3);
  sub_A128();
  sub_F56DC();
  __chkstk_darwin(v4);
  sub_F5688();
  v5 = sub_F3F2C(v2);
  if (v5)
  {
    v7 = v5;
    v8 = v6;
    (v5)(v35);
    sub_F55B0(v7, v8);
    sub_F57B8();
    v9 = sub_169BC4();
    sub_483C8(v9);
    sub_169BB4();
    sub_F564C();
    v10 = sub_F5790();
    v11(v10);
    sub_F5620();
    sub_F5778();
    sub_F50FC();
    sub_F5638();
    sub_16ACF4(32);

    sub_D434();
    v13 = sub_F55C4(v12);
    v14(v13);
    v38._countAndFlagsBits = sub_14C6B0(v0);
    sub_16A744(v38);

    v15 = v35[0];
    v16 = v35[1];
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v17 = sub_16A584();
    sub_9DA0(v17, qword_1E65C0);
    sub_16A9A4();
    sub_F56EC();
    sub_386D8(v18, v19, v20, v21, 0xD000000000000022, v22, 95, v15, v16);

    v23 = sub_5758(&qword_1EC380, &unk_177740);
    v24 = sub_F55F8(v23);
    v25 = sub_F55E0(v24, xmmword_16D9A0);
    v26(v25);

    sub_D13C(&v36);
  }

  else
  {
    sub_F5698();

    sub_D434();
    v36 = 0xD000000000000024;
    v37 = v27;
    LOBYTE(v35[0]) = v2;
    sub_5758(&qword_1EA2A8, &unk_174150);
    v39._countAndFlagsBits = sub_16A694();
    sub_16A744(v39);

    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v28 = sub_16A584();
    sub_9F450(v28, qword_1E65C0);
    sub_F5678();
    sub_F5760(v29, v30, v31, v32, 0xD000000000000022, v33, 86, v34, v37);
    sub_F5748();
  }

  sub_CA23C();
  sub_CA368();
}

uint64_t (*sub_F3F2C(unsigned __int8 a1))()
{
  if (a1 > 0xF7u)
  {
    return 0;
  }

  v3 = a1 >> 4;
  result = sub_F55C0;
  switch(v3)
  {
    case 0:
    case 3:
      return result;
    case 1:
    case 4:
      v4 = sub_F54B0;
      if (a1)
      {
        return 0;
      }

      goto LABEL_14;
    case 2:
      v4 = sub_F547C;
      if (a1)
      {
        return 0;
      }

      goto LABEL_14;
    case 5:
      v4 = sub_F55C0;
      if ((a1 & 0xE) != 0)
      {
        return 0;
      }

      goto LABEL_14;
    case 6:
      v4 = sub_F55C0;
      if ((a1 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_14;
    case 10:
      v4 = sub_F54B0;
      if ((a1 + 96) >= 3u)
      {
        return 0;
      }

LABEL_14:
      result = v4;
      break;
    default:
      return 0;
  }

  return result;
}

void sub_F4044()
{
  sub_CA350();
  v1 = v0;
  v3 = v2;
  v4 = sub_169454();
  __chkstk_darwin(v4 - 8);
  sub_A138();
  v88 = v6 - v5;
  sub_F573C();
  v87 = sub_169564();
  sub_9F48();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_A128();
  v86 = v10 - v11;
  sub_6CF04();
  __chkstk_darwin(v12);
  sub_F5784();
  v85 = v13;
  sub_F573C();
  v84 = sub_169504();
  sub_9F48();
  v89 = v14;
  __chkstk_darwin(v15);
  sub_A138();
  v18 = v17 - v16;
  v19 = sub_1695B4();
  sub_9F48();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_A128();
  v25 = v23 - v24;
  __chkstk_darwin(v26);
  v28 = &v75 - v27;
  v29 = sub_F3F2C(v3);
  v90 = v30;
  v91 = v29;
  if (v29)
  {
    v78 = v25;
    v79 = v28;
    v31 = *(v1 + 16);
    if (v31)
    {
      v83 = v8;
      v32 = v21;
      v92 = _swiftEmptyArrayStorage;
      sub_16AD54();
      sub_169694();
      v33 = v1 + 40;
      do
      {
        swift_allocObject();

        sub_169684();
        sub_169674();

        sub_16AD34();
        sub_16AD64();
        sub_16AD74();
        sub_16AD44();
        v33 += 16;
        --v31;
      }

      while (v31);
      v34 = v92;
      v21 = v32;
      v8 = v83;
    }

    else
    {
      v34 = _swiftEmptyArrayStorage;
    }

    v44 = v34[2];
    if (v44)
    {
      v83 = v34;
      v76 = v21;
      v77 = v19;
      v96 = _swiftEmptyArrayStorage;
      sub_146A68(0, v44, 0);
      v45 = v96;
      v81 = (v8 + 1);
      v82 = (v8 + 2);
      v80 = v89 + 32;
      v46 = 4;
      do
      {
        v47 = v18;
        v48 = v83[v46];

        (v91)(&v92, v49);
        if (v48)
        {
          v50 = v94;
          v51 = v95;
          sub_D084(&v92, v94);
          v52 = *(v51 + 8);

          v52(v53, &protocol witness table for UsoEntityBuilder_common_UserEntity, v50, v51);
        }

        v54 = v85;
        sub_169554();
        v55 = v94;
        v56 = v95;
        sub_D084(&v92, v94);
        (*(v56 + 24))(v55, v56);
        sub_169544();
        v18 = v47;
        sub_1694F4();
        v57 = v87;
        (*v82)(v86, v54, v87);
        sub_1694E4();

        (*v81)(v54, v57);
        sub_D13C(&v92);
        v96 = v45;
        v59 = v45[2];
        v58 = v45[3];
        if (v59 >= v58 >> 1)
        {
          sub_146A68(v58 > 1, v59 + 1, 1);
          v45 = v96;
        }

        v45[2] = v59 + 1;
        (*(v89 + 32))(v45 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v59, v47, v84);
        ++v46;
        --v44;
      }

      while (v44);

      v19 = v77;
      v21 = v76;
    }

    else
    {

      v45 = _swiftEmptyArrayStorage;
    }

    v60 = v79;
    sub_F471C(v45);

    sub_F57A4();
    sub_16ACF4(39);

    sub_D434();
    v92 = 0xD000000000000025;
    v93 = v61;
    v62 = v78;
    (*(v21 + 16))(v78, v60, v19);
    v98._countAndFlagsBits = sub_14C6B0(v62);
    sub_16A744(v98);

    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v63 = sub_16A584();
    sub_9F450(v63, qword_1E65C0);
    sub_F56BC();
    sub_F5760(v64, v65, v66, v67, v68, v69, 133, v70, v75);
    sub_F5748();
    v71 = sub_5758(&qword_1EC380, &unk_177740);
    v72 = sub_F56FC(v71);
    v73 = sub_F5724(v72, xmmword_16D9A0);
    v74(v73);
    sub_F55B0(v91, v90);
  }

  else
  {
    sub_F57A4();
    sub_16ACF4(38);

    sub_D434();
    v92 = 0xD000000000000024;
    v93 = v35;
    LOBYTE(v96) = v3;
    sub_5758(&qword_1EA2A8, &unk_174150);
    v97._countAndFlagsBits = sub_16A694();
    sub_16A744(v97);

    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v36 = sub_16A584();
    sub_9F450(v36, qword_1E65C0);
    sub_F56BC();
    sub_F5760(v37, v38, v39, v40, v41, v42, 118, v43, v75);
    sub_F5748();
  }

  sub_CA368();
}

uint64_t sub_F471C(uint64_t a1)
{
  v1 = sub_1695E4();
  sub_9F48();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_A128();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  v10 = &v12 - v9;
  sub_1695A4();
  sub_1695D4();

  sub_1695C4();
  (*(v3 + 16))(v7, v10, v1);
  sub_169574();
  return (*(v3 + 8))(v10, v1);
}

void sub_F483C()
{
  sub_CA350();
  v3 = v2;
  sub_1695B4();
  sub_9F48();
  __chkstk_darwin(v4);
  sub_A128();
  sub_F56DC();
  __chkstk_darwin(v5);
  sub_F5688();
  v6 = sub_F3F2C(v3);
  if (v6)
  {
    v8 = v6;
    v9 = v7;
    (v6)(v36);
    sub_F55B0(v8, v9);
    sub_F57B8();
    v10 = sub_169694();
    sub_483C8(v10);
    sub_169684();
    sub_F564C();
    (*(v11 + 8))(v3, &protocol witness table for UsoEntityBuilder_common_UserEntity, v8, v1);
    v12 = sub_F5778();
    sub_F4B3C(v12);
    sub_F5638();
    sub_16ACF4(31);

    sub_D434();
    v14 = sub_F55C4(v13);
    v15(v14);
    v39._countAndFlagsBits = sub_14C6B0(v0);
    sub_16A744(v39);

    v16 = v36[0];
    v17 = v36[1];
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v18 = sub_16A584();
    sub_9DA0(v18, qword_1E65C0);
    sub_16A9A4();
    sub_F56EC();
    sub_386D8(v19, v20, v21, v22, 0xD000000000000020, v23, 160, v16, v17);

    v24 = sub_5758(&qword_1EC380, &unk_177740);
    v25 = sub_F55F8(v24);
    v26 = sub_F55E0(v25, xmmword_16D9A0);
    v27(v26);

    sub_D13C(&v37);
  }

  else
  {
    sub_F5698();

    sub_D434();
    v37 = 0xD000000000000024;
    v38 = v28;
    LOBYTE(v36[0]) = v3;
    sub_5758(&qword_1EA2A8, &unk_174150);
    v40._countAndFlagsBits = sub_16A694();
    sub_16A744(v40);

    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v29 = sub_16A584();
    sub_9F450(v29, qword_1E65C0);
    sub_F5678();
    sub_F5760(v30, v31, v32, v33, 0xD000000000000020, v34, 151, v35, v38);
    sub_F5748();
  }

  sub_CA23C();
  sub_CA368();
}

uint64_t sub_F4B3C(void *a1)
{
  v2 = sub_169454();
  __chkstk_darwin(v2 - 8);
  v3 = sub_169534();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  sub_169524();
  v10 = a1[3];
  v11 = a1[4];
  sub_D084(a1, v10);
  (*(v11 + 24))(v10, v11);
  sub_169514();
  sub_1695A4();
  (*(v4 + 16))(v7, v9, v3);
  sub_169594();
  return (*(v4 + 8))(v9, v3);
}

void sub_F4CF4()
{
  sub_CA350();
  v1 = sub_1695B4();
  sub_9F48();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_A128();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  sub_F5688();
  sub_16A1B4();
  if (v9)
  {
    v10 = sub_169C54();
    sub_483C8(v10);
    v11 = sub_169C44();
    v12 = sub_169B04();
    sub_483C8(v12);
    sub_169AF4();
    sub_169AE4();

    v13 = sub_169694();
    sub_483C8(v13);
    sub_169684();

    sub_169A84();

    sub_169C94();

    v26 = v10;
    v27 = &off_1D76A0;
    v24 = v11;

    sub_F5778();
    sub_F50FC();
    sub_D13C(&v24);
    v24 = 0;
    v14 = v1;
    v25 = 0xE000000000000000;
    sub_16ACF4(37);

    sub_D434();
    v24 = 0xD000000000000023;
    v25 = v15;
    (*(v3 + 16))(v7, v0, v1);
    v28._countAndFlagsBits = sub_14C6B0(v7);
    sub_16A744(v28);

    v16 = v24;
    v17 = v25;
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v18 = sub_16A584();
    sub_9DA0(v18, qword_1E65C0);
    v19 = sub_16A9A4();
    sub_386D8(v19, 8uLL, 0xD000000000000078, 0x800000000018CF20, 0xD00000000000001CLL, 0x800000000018D170, 191, v16, v17);

    sub_5758(&qword_1EC380, &unk_177740);
    v20 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_16D9A0;
    (*(v3 + 32))(v21 + v20, v0, v14);
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v22 = sub_16A584();
    sub_9DA0(v22, qword_1E65C0);
    v23 = sub_16A9A4();
    sub_386D8(v23, 8uLL, 0xD000000000000078, 0x800000000018CF20, 0xD00000000000001CLL, 0x800000000018D170, 178, 0xD000000000000021, 0x800000000018D190);
  }

  sub_CA23C();
  sub_CA368();
}

void sub_F50FC()
{
  sub_CA350();
  v48 = v0;
  v46 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v50 = v8;
  v51 = sub_1694A4();
  sub_9F48();
  v49 = v9;
  __chkstk_darwin(v10);
  sub_A128();
  v47 = v11 - v12;
  sub_6CF04();
  __chkstk_darwin(v13);
  sub_F5784();
  v44 = v14;
  sub_F573C();
  v45 = sub_169504();
  sub_9F48();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_A128();
  v43 = v18 - v19;
  sub_6CF04();
  __chkstk_darwin(v20);
  v22 = &v42 - v21;
  v23 = sub_169454();
  __chkstk_darwin(v23 - 8);
  sub_A138();
  v26 = v25 - v24;
  v27 = v5(0);
  v42 = v27;
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  sub_A128();
  v31 = v29 - v30;
  v33 = __chkstk_darwin(v32);
  v35 = &v42 - v34;
  v3(v33);
  v36 = v7[3];
  v37 = v7[4];
  sub_D084(v7, v36);
  (*(v37 + 24))(v36, v37);
  v46(v26);
  sub_1694F4();
  (*(v28 + 16))(v31, v35, v27);
  v48(v31);
  v38 = v44;
  sub_169494();
  v39 = v45;
  (*(v16 + 16))(v43, v22, v45);
  sub_169484();
  sub_1695A4();
  v40 = v49;
  v41 = v51;
  (*(v49 + 16))(v47, v38, v51);
  sub_169584();
  (*(v40 + 8))(v38, v41);
  (*(v16 + 8))(v22, v39);
  (*(v28 + 8))(v35, v42);
  sub_CA368();
}

uint64_t sub_F554C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  sub_483C8(v7);
  result = a2();
  a4[3] = v7;
  a4[4] = a3;
  *a4 = result;
  return result;
}

uint64_t sub_F55B0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_F55C4@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 160) = v1;
  *(v3 - 152) = a1;
  return v2;
}

uint64_t sub_F55F8(uint64_t a1)
{

  return swift_allocObject();
}

void sub_F5698()
{
  *(v0 - 120) = 0;
  *(v0 - 112) = 0xE000000000000000;

  sub_16ACF4(38);
}

uint64_t sub_F56FC(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_F5748()
{
}

void sub_F5760(os_log_type_t a1, Swift::UInt64 a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unint64_t a9)
{

  sub_386D8(a1, a2, a3, a4, a5, a6, a7, v9, a9);
}

void sub_F57D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = [objc_opt_self() sharedInstance];
  if (!v7)
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  v9 = sub_F7094(a1, a2, v7);

  if (!v9)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v12 = [v9 secureElementPass];

  if (v12)
  {
    if ([v12 isCarKeyPass])
    {
      swift_beginAccess();
      sub_D8400(v3 + 16, v14);
      sub_F5958(v13);
      v10 = type metadata accessor for WalletCarKey();
      swift_allocObject();
      v11 = sub_10F754(v14, v13);
      *(a3 + 24) = v10;
      *(a3 + 32) = &off_1D9928;

      *a3 = v11;
    }

    else
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

uint64_t sub_F5958@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1;
  result = [v1 devicePrimaryPaymentApplication];
  if (!result)
  {
    goto LABEL_78;
  }

  v6 = sub_F6CE8(result);
  v71 = a1;
  if (v6)
  {
    v61 = v1;
    if ((v6 & 0xC000000000000001) != 0)
    {

      sub_16ABC4();
      v3 = PKAppletSubcredential_ptr;
      sub_16484(0, &qword_1EC468, PKAppletSubcredential_ptr);
      sub_F6FE8(&qword_1EC470, &qword_1EC468, PKAppletSubcredential_ptr);
      sub_16A944();
      v8 = v76;
      v7 = v77;
      v10 = v78;
      v9 = v79;
      v11 = v80;
    }

    else
    {
      v12 = -1 << *(v6 + 32);
      v7 = v6 + 56;
      v10 = ~v12;
      v13 = -v12;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      else
      {
        v14 = -1;
      }

      v11 = v14 & *(v6 + 56);
      v9 = 0;
    }

    v72 = v10;
    v15 = (v10 + 64) >> 6;
    v74 = _swiftEmptyArrayStorage;
    if (v8 < 0)
    {
      goto LABEL_17;
    }

LABEL_11:
    v16 = v9;
    v17 = v11;
    for (i = v9; !v17; ++v16)
    {
      i = v16 + 1;
      if (__OFADD__(v16, 1))
      {
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        v58 = sub_16AD04();
        goto LABEL_69;
      }

      if (i >= v15)
      {
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * i);
    }

    v2 = (v17 - 1) & v17;
    v10 = *(*(v8 + 48) + ((i << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v10)
    {
LABEL_26:
      sub_4A004(v8);

      v3 = v61;
      goto LABEL_27;
    }

    while (1)
    {
      result = sub_5BAFC(v10, &selRef_identifier);
      if (!v20)
      {
        break;
      }

      v21 = result;
      v22 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1084D8();
        v74 = v24;
      }

      v3 = v74[2];
      if (v3 >= v74[3] >> 1)
      {
        sub_1084D8();
        v74 = v25;
      }

      v74[2] = v3 + 1;
      v23 = &v74[2 * v3];
      v23[4] = v21;
      v23[5] = v22;
      v9 = i;
      v11 = v2;
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_17:
      v19 = sub_16AC34();
      if (v19)
      {
        v75 = v19;
        sub_16484(0, &qword_1EC468, PKAppletSubcredential_ptr);
        swift_dynamicCast();
        v10 = v81;
        i = v9;
        v2 = v11;
        if (v81)
        {
          continue;
        }
      }

      goto LABEL_26;
    }

    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v74 = _swiftEmptyArrayStorage;
LABEL_27:
  v26 = sub_F6D8C(v3);
  v27 = &_swiftEmptySetSingleton;
  if (v26)
  {
    v28 = sub_F6A04(v26);

    if (v28)
    {
      v27 = v28;
    }
  }

  v29 = sub_F6F7C(v3, &selRef_storeIdentifiers);
  v30 = _swiftEmptyArrayStorage;
  if (v29)
  {
    sub_F6724(v29);
    v32 = v31;

    if (v32)
    {
      v30 = v32;
    }
  }

  v33 = [v3 supportedSiriIntents];
  if (v33)
  {
    v34 = v33;
    v35 = sub_F6F7C(v33, &selRef_supportedCarKeyIntents);
    if (v35)
    {
      sub_138ED4(v35);
      v10 = v36;
    }

    else
    {
      v10 = &_swiftEmptySetSingleton;
    }
  }

  else
  {
    v10 = &_swiftEmptySetSingleton;
  }

  v37 = [v3 passActivationState];
  result = sub_F6DEC(v3);
  if (!result)
  {
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v11 = result;
  v69 = v10;
  v70 = v30;
  v67 = v37;
  v68 = v27;
  if ((result & 0xC000000000000001) != 0)
  {
    sub_16ABC4();
    v10 = &qword_1EC458;
    sub_16484(0, &qword_1EC458, PKPaymentApplication_ptr);
    sub_F6FE8(&qword_1EC460, &qword_1EC458, PKPaymentApplication_ptr);
    sub_16A944();
    v11 = v81;
    v2 = v82;
    v38 = v83;
    v15 = v84;
    v7 = v85;
  }

  else
  {
    v15 = 0;
    v39 = -1 << *(result + 32);
    v2 = result + 56;
    v38 = ~v39;
    v40 = -v39;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v7 = v41 & *(result + 56);
  }

  v72 = 0;
  v73 = 0;
  v42 = (v38 + 64) >> 6;
  while (1)
  {
    i = v7;
    if ((v11 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!sub_16AC34())
    {
      goto LABEL_61;
    }

    sub_16484(0, &qword_1EC458, PKPaymentApplication_ptr);
    swift_dynamicCast();
    v10 = v75;
    if (!v75)
    {
      goto LABEL_61;
    }

LABEL_56:
    if (![v10 supportsUWB])
    {
      goto LABEL_57;
    }

    v45 = [v10 applicationIdentifier];
    if (v45)
    {
      v46 = v45;
      v72 = sub_16A664();
      v73 = v47;

LABEL_57:
    }

    else
    {

      v72 = 0;
      v73 = 0;
    }
  }

  v43 = v15;
  v44 = v7;
  if (!v7)
  {
    while (1)
    {
      v15 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v15 >= v42)
      {
        goto LABEL_61;
      }

      v44 = *(v2 + 8 * v15);
      ++v43;
      if (v44)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
    goto LABEL_74;
  }

LABEL_52:
  v7 = (v44 - 1) & v44;
  v10 = *(*(v11 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v44)))));
  if (v10)
  {
    goto LABEL_56;
  }

LABEL_61:
  sub_4A004(v11);
  LOBYTE(v2) = [v3 isCarKeyPass];
  result = sub_5BAFC(v3, &selRef_speakableMake);
  if (!v48)
  {
    goto LABEL_80;
  }

  v11 = result;
  i = v48;
  result = sub_5BAFC(v3, &selRef_speakableModel);
  if (!v49)
  {
    goto LABEL_81;
  }

  v7 = v49;
  v66 = result;

  v50 = [v3 localizedDescription];
  v51 = sub_16A664();
  v65 = v52;
  result = sub_5BAFC(v3, &selRef_uniqueID);
  v64 = result;
  if (!v53)
  {
    goto LABEL_82;
  }

  v10 = v53;
  v54 = [v3 organizationName];
  v55 = sub_16A664();
  v62 = v56;
  v63 = v55;
  result = sub_F6E88(v3);
  if (!result)
  {
LABEL_83:
    __break(1u);
    return result;
  }

  v15 = result;

  if (!*(v15 + 16))
  {
    goto LABEL_75;
  }

  v61 = v51;
  v57 = *(v15 + 32);

  if (!sub_11B48C())
  {

    v60 = 0;
    v3 = v67;
    v15 = v73;
    goto LABEL_72;
  }

  sub_1487EC();
  v3 = v67;
  v15 = v73;
  if ((v57 & 0xC000000000000001) != 0)
  {
    goto LABEL_76;
  }

  v58 = *(v57 + 32);
LABEL_69:
  v59 = v58;

  v60 = [v59 value];

  if (v60)
  {
    sub_16A654();

    v60 = 0;
  }

LABEL_72:
  v71[3] = &type metadata for CarKeyPass;
  v71[4] = &off_1D3ED8;
  result = swift_allocObject();
  *v71 = result;
  *(result + 16) = v2;
  *(result + 17) = v3 != 0;
  *(result + 24) = v11;
  *(result + 32) = i;
  *(result + 40) = v66;
  *(result + 48) = v7;
  *(result + 56) = v74;
  *(result + 64) = v68;
  *(result + 72) = v61;
  *(result + 80) = v65;
  *(result + 88) = v64;
  *(result + 96) = v10;
  *(result + 104) = v63;
  *(result + 112) = v62;
  *(result + 120) = v60;
  *(result + 128) = 0xE000000000000000;
  *(result + 136) = v70;
  *(result + 144) = v69;
  *(result + 152) = v72;
  *(result + 160) = v15;
  return result;
}

void *sub_F6174()
{
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    goto LABEL_31;
  }

  v1 = result;
  v2 = [result passesOfType:1];

  sub_16484(0, &qword_1EC450, PKPass_ptr);
  v3 = sub_16A7D4();

  v4 = sub_F6874(v3);

  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v6 = 0xD000000000000011;
  v7 = "gin17WalletPassLibrary";
  v8 = "et/WalletPassLibrary.swift";
  sub_16ACF4(28);

  v41 = 0x20646E756F46;
  v42 = 0xE600000000000000;
  *&v38 = sub_11B48C();
  v46._countAndFlagsBits = sub_16AE24();
  sub_16A744(v46);

  v47._countAndFlagsBits = 0xD000000000000014;
  v47._object = 0x800000000018D2E0;
  sub_16A744(v47);
  v9 = 0x20646E756F46;
  v10 = 0xE600000000000000;
  if (qword_1E58E8 != -1)
  {
LABEL_29:
    swift_once();
  }

  v11 = sub_16A584();
  v12 = sub_9DA0(v11, qword_1E65C0);
  v13 = sub_16A9A4();
  v35 = v8;
  v36 = v7;
  v14 = v9;
  v34 = v12;
  v9 = v12;
  sub_386D8(v13, 0x20000uLL, v6 + 121, v7 | 0x8000000000000000, 0xD000000000000011, (v8 | 0x8000000000000000), 36, v14, v10);

  v41 = _swiftEmptyArrayStorage;
  v10 = sub_11B48C();
  v8 = 0;
  v6 = v4 & 0xC000000000000001;
  v7 = &off_1E2000;
  while (v10 != v8)
  {
    if (v6)
    {
      v15 = sub_16AD04();
    }

    else
    {
      if (v8 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_28;
      }

      v15 = *(v4 + 8 * v8 + 32);
    }

    v16 = v15;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if ([v15 isCarKeyPass])
    {
      v9 = &v41;
      sub_16AD34();
      sub_16AD64();
      sub_16AD74();
      sub_16AD44();
    }

    else
    {
    }

    ++v8;
  }

  v17 = v41;
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_16ACF4(21);

  v41 = 0x20646E756F46;
  v42 = 0xE600000000000000;
  v18 = sub_11B48C();
  *&v38 = v18;
  v48._countAndFlagsBits = sub_16AE24();
  sub_16A744(v48);

  v49._countAndFlagsBits = 0x5079654B72616320;
  v49._object = 0xED00007365737361;
  sub_16A744(v49);
  v19 = v41;
  v20 = v42;
  v21 = sub_16A9A4();
  sub_386D8(v21, 0x20000uLL, 0xD00000000000008ALL, v36 | 0x8000000000000000, 0xD000000000000011, (v35 | 0x8000000000000000), 40, v19, v20);

  if (!v18)
  {

    return _swiftEmptyArrayStorage;
  }

  v45 = _swiftEmptyArrayStorage;
  result = sub_1468D8(0, v18 & ~(v18 >> 63), 0);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v5 = v45;
    v36 = v17 & 0xC000000000000001;
    swift_beginAccess();
    v22 = 0;
    v35 = v17;
    do
    {
      if (v36)
      {
        v23 = sub_16AD04();
      }

      else
      {
        v23 = *(v17 + 8 * v22 + 32);
      }

      v24 = v23;
      sub_D8400(v37 + 16, &v41);
      sub_F5958(&v38);
      v25 = type metadata accessor for WalletCarKey();
      swift_allocObject();
      v26 = sub_10F754(&v41, &v38);
      v43 = v25;
      v44 = &off_1D9928;

      v41 = v26;
      v45 = v5;
      v28 = v5[2];
      v27 = v5[3];
      if (v28 >= v27 >> 1)
      {
        sub_1468D8((v27 > 1), v28 + 1, 1);
        v5 = v45;
      }

      ++v22;
      v29 = sub_2F8D0(&v41, v43);
      __chkstk_darwin(v29);
      v31 = (&v34 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v32 + 16))(v31);
      v33 = *v31;
      v39 = v25;
      v40 = &off_1D9928;
      *&v38 = v33;
      v5[2] = v28 + 1;
      sub_D250(&v38, &v5[5 * v28 + 4]);
      sub_D13C(&v41);
      v17 = v35;
    }

    while (v18 != v22);

    return v5;
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_F6724(uint64_t a1)
{
  v2 = sub_11B48C();
  sub_1468B8(0, v2 & ~(v2 >> 63), 0);
  if (sub_11B48C())
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v3 = sub_16AD04();
      goto LABEL_5;
    }

    if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      v3 = *(a1 + 32);
LABEL_5:
      v4 = v3;
      sub_16A954();

      return;
    }

    __break(1u);
  }
}

void *sub_F6874(uint64_t a1)
{
  sub_11B48C();
  sub_16AD54();
  result = sub_11B48C();
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return _swiftEmptyArrayStorage;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = sub_16AD04();
    }

    else
    {
      if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_14;
      }

      result = *(a1 + 8 * i + 32);
    }

    v5 = result;
    if (__OFADD__(i, 1))
    {
      break;
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      return 0;
    }

    sub_16AD34();
    sub_16AD64();
    sub_16AD74();
    result = sub_16AD44();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_F69A8()
{
  sub_D8470(v0 + 16);

  return _swift_deallocClassInstance(v0, 56, 7);
}

void *sub_F6A04(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_5758(&qword_1E91B8, &qword_1777C0);
    v2 = sub_16ACC4();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v13 = v2;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_11:
      sub_F7038(*(a1 + 48) + 40 * (__clz(__rbit64(v5)) | (v9 << 6)), &v12);
      if ((swift_dynamicCast() & 1) == 0 || !v11)
      {
        break;
      }

      v5 &= v5 - 1;
      result = sub_F6BA8(v10, v11);
      v8 = v9;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  else
  {
LABEL_8:
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

      v5 = *(a1 + 56 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_F6BA8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_16AF14();
  sub_16A6F4();
  result = sub_16AF54();
  v7 = v5 + 56;
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = result & v8;
    v10 = (result & v8) >> 6;
    v11 = *(v7 + 8 * v10);
    v12 = 1 << (result & v8);
    if ((v12 & v11) == 0)
    {
      break;
    }

    v13 = (*(v5 + 48) + 16 * v9);
    v14 = *v13 == a1 && v13[1] == a2;
    if (v14 || (sub_16AE54() & 1) != 0)
    {
      *v13 = a1;
      v13[1] = a2;
    }

    result = v9 + 1;
  }

  if (*(v5 + 16) >= *(v5 + 24))
  {
    __break(1u);
  }

  else
  {
    *(v7 + 8 * v10) = v12 | v11;
    v15 = (*(v5 + 48) + 16 * v9);
    *v15 = a1;
    v15[1] = a2;
    v16 = *(v5 + 16);
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (!v17)
    {
      *(v5 + 16) = v18;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_F6CE8(void *a1)
{
  v2 = [a1 subcredentials];

  if (!v2)
  {
    return 0;
  }

  sub_16484(0, &qword_1EC468, PKAppletSubcredential_ptr);
  sub_F6FE8(&qword_1EC470, &qword_1EC468, PKAppletSubcredential_ptr);
  v3 = sub_16A914();

  return v3;
}

uint64_t sub_F6D8C(void *a1)
{
  v1 = [a1 associatedApplicationIdentifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_16A914();

  return v3;
}

uint64_t sub_F6DEC(void *a1)
{
  v1 = [a1 devicePaymentApplications];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_16484(0, &qword_1EC458, PKPaymentApplication_ptr);
  sub_F6FE8(&qword_1EC460, &qword_1EC458, PKPaymentApplication_ptr);
  v3 = sub_16A914();

  return v3;
}

uint64_t sub_F6E88(void *a1)
{
  v1 = [a1 frontFieldBuckets];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_5758(&qword_1EC478, &qword_1777C8);
  v3 = sub_16A7D4();

  return v3;
}

uint64_t sub_F6EF4()
{

  return _swift_deallocObject(v0, 168, 7);
}

uint64_t sub_F6F7C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_16484(0, &qword_1E6310, NSNumber_ptr);
  v4 = sub_16A7D4();

  return v4;
}

uint64_t sub_F6FE8(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_16484(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_F7094(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_16A644();
  v5 = [a3 passWithUniqueID:v4];

  return v5;
}

uint64_t sub_F70E4(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_168994();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_F71A4);
}

uint64_t sub_F71A4()
{
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_16A584();
  sub_9DA0(v4, qword_1E65C0);
  v5 = sub_16A9A4();
  sub_386D8(v5, 2uLL, 0xD00000000000007ELL, 0x800000000018D340, 0x2865747563657865, 0xE900000000000029, 20, 0xD00000000000001CLL, 0x800000000018D3C0);
  (*(v2 + 104))(v1, enum case for FlowUnhandledReason.needsServerExecution(_:), v3);
  sub_168D64();
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_F7320(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CommonServerFallbackFlow();
  sub_F7494();
  return sub_168934();
}

uint64_t sub_F73C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_4D8D0;

  return sub_F70E4(a1);
}

uint64_t sub_F745C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CommonServerFallbackFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

unint64_t sub_F7494()
{
  result = qword_1EC530;
  if (!qword_1EC530)
  {
    type metadata accessor for CommonServerFallbackFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC530);
  }

  return result;
}

id sub_F74E8()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin32SetCarPlayClimateRCHFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin32SetCarPlayClimateRCHFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin32SetCarPlayClimateRCHFlowStrategy____lazy_storage___inProcessIntentHandler);
  }

  else
  {
    v4 = v0;
    if (qword_1E5968 != -1)
    {
      swift_once();
    }

    v5 = qword_1F0E10;
    sub_D084((v0 + 56), *(v0 + 80));
    v6 = v5;
    v7 = sub_DB860();
    v8 = sub_1329C4(v6, 9, v7 & 1);

    v9 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_F75B8()
{
  v0 = sub_1693E4();
  sub_37404();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_169384();
  v6 = sub_10A898(&off_1D3640);
  sub_86E4(v5, v6, v10);

  (*(v2 + 8))(v5, v0);
  v7 = v10[3];
  sub_57A80(v10);
  if (v7)
  {
    return sub_168C64();
  }

  else
  {
    return sub_168C74();
  }
}

uint64_t sub_F76CC()
{
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_16E450;
  v1 = sub_168A44();
  sub_483C8(v1);
  *(v0 + 32) = sub_168A34();
  swift_allocObject();
  *(v0 + 40) = sub_168A34();
  return v0;
}

uint64_t sub_F77B0()
{
  sub_D2DC();
  v0[2] = v1;
  v2 = sub_1693E4();
  v0[3] = v2;
  v0[4] = *(v2 - 8);
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_F786C);
}

uint64_t sub_F786C()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_16A3C4();
  v5 = *(v2 + 16);
  v5(v1, v4, v3);
  v6 = sub_115100(v1);
  if (v6)
  {
    v7 = v6;

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    v11 = v0[2];
    v10 = v0[3];
    type metadata accessor for CarCommandsError(0);
    sub_F864C(&qword_1E92F0, type metadata accessor for CarCommandsError, &unk_17A85C);
    swift_allocError();
    v5(v12, v11, v10);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_F7A14()
{
  v1 = sub_5758(&qword_1EC788, &qword_177A08);
  sub_37404();
  v29 = v2;
  v4 = __chkstk_darwin(v3);
  v28 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v28 - v6;
  sub_16A3C4();
  sub_16A424();
  sub_168904();
  sub_16A1C4();
  sub_16A1A4();
  sub_1687F4();

  sub_168894();
  sub_1693F4();
  v8 = type metadata accessor for FeatureFlagHelper();
  v9 = swift_allocObject();
  v10 = sub_168E34();
  sub_483C8(v10);

  sub_168E24();
  type metadata accessor for SnippetManager();
  *(swift_allocObject() + 16) = 0;
  v33[3] = v8;
  v33[4] = &off_1D9AF0;
  v33[0] = v9;
  v11 = type metadata accessor for SetCarPlayClimateHandleIntentFlowStrategy(0);
  v12 = sub_483C8(v11);
  sub_2F8D0(v33, v8);
  sub_37404();
  __chkstk_darwin(v13);
  v15 = sub_F8694(v14, v28);
  v16(v15);
  v17 = *v0;
  v32[3] = v8;
  v32[4] = &off_1D9AF0;
  v32[0] = v17;
  *(v12 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin41SetCarPlayClimateHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler) = 0;
  sub_10824(v34, v31);
  sub_10824(v32, v30);
  sub_2F8D0(v30, v30[3]);
  sub_37404();
  __chkstk_darwin(v18);
  v20 = sub_F8694(v19, v28);
  v21(v20);

  sub_1668CC();
  v23 = v22;
  sub_D13C(v34);
  sub_D13C(v32);
  sub_D13C(v30);
  sub_D13C(v33);

  v34[0] = v23;
  sub_F864C(&qword_1EC790, type metadata accessor for SetCarPlayClimateHandleIntentFlowStrategy, &unk_179B50);
  sub_1687E4();

  sub_168884();
  v24 = v29;
  (*(v29 + 16))(v28, v7, v1);
  v25 = sub_5758(&qword_1EC798, &unk_177A10);
  sub_483C8(v25);
  v26 = sub_168914();
  (*(v24 + 8))(v7, v1);
  return v26;
}

uint64_t sub_F7E60()
{
  v0 = sub_3D044();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SetCarPlayClimateRCHFlowStrategy(uint64_t a1)
{
  result = qword_1EC568;
  if (!qword_1EC568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_F7F6C(uint64_t a1)
{
  result = sub_F864C(&qword_1EC770, type metadata accessor for SetCarPlayClimateRCHFlowStrategy, &unk_1778D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_F7FDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7971C;

  return sub_F77B0();
}

uint64_t sub_F8088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SetCarPlayClimateRCHFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t sub_F8158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SetCarPlayClimateRCHFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t sub_F8228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SetCarPlayClimateRCHFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t sub_F82F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for SetCarPlayClimateRCHFlowStrategy(0);
  *v12 = v6;
  v12[1] = sub_6F428;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, v13, a6);
}

uint64_t sub_F83D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = swift_task_alloc();
  *(v12 + 16) = v18;
  v19 = type metadata accessor for SetCarPlayClimateRCHFlowStrategy(0);
  *v18 = v12;
  v18[1] = sub_6F850;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, v19, a6, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_F84B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_79DCC;

  return sub_461EC();
}

uint64_t sub_F864C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for NLFanVentMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0xF87A0);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_F87DC()
{
  result = qword_1EC7A0;
  if (!qword_1EC7A0)
  {
    sub_37130(&qword_1EC7A8, qword_177A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7A0);
  }

  return result;
}

unint64_t sub_F8840(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1D3668;
  v6._object = a2;
  v4 = sub_16ADE4(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_F888C(char a1)
{
  result = 0x7265707075;
  switch(a1)
  {
    case 1:
      result = 0x656C6464696DLL;
      break;
    case 2:
      result = 0x7265776F6CLL;
      break;
    case 3:
      result = 0x646E417265707075;
      break;
    case 4:
      result = 0x6E41656C6464696DLL;
      break;
    case 5:
      result = 0x726F707075736E75;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_F898C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_F8840(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_F89BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_F888C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_F89FC()
{
  result = qword_1EC7B0;
  if (!qword_1EC7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7B0);
  }

  return result;
}

uint64_t sub_F8A60(uint64_t a1)
{
  *(v2 + 336) = a1;
  *(v2 + 344) = v1;
  return sub_D2B0();
}

uint64_t sub_F8EB8()
{
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 360) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v7);
  }

  else
  {
    switch(*(v3 + 457))
    {
      case 1:
        swift_task_alloc();
        sub_D3E0();
        *(v3 + 400) = v12;
        *v12 = v13;
        v14 = sub_FC800(v12);

        result = sub_FAAC4(v14, v15);
        break;
      case 2:
        swift_task_alloc();
        sub_D3E0();
        *(v3 + 368) = v16;
        *v16 = v17;
        v18 = sub_FC800(v16);

        result = sub_F9CE0(v18, v19);
        break;
      default:
        swift_task_alloc();
        sub_D3E0();
        *(v3 + 384) = v8;
        *v8 = v9;
        v10 = sub_FC800(v8);

        result = sub_FB778(v10, v11);
        break;
    }
  }

  return result;
}

uint64_t sub_F9234()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[22] = v1;
  v2[23] = v4;
  v2[24] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 376) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_F9330()
{
  sub_D2DC();
  sub_D13C((v0 + 136));
  v1 = sub_FC740();

  return v2(v1);
}

uint64_t sub_F938C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[25] = v1;
  v2[26] = v4;
  v2[27] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 392) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_F9488()
{
  sub_D2DC();
  sub_D13C((v0 + 136));
  v1 = sub_FC740();

  return v2(v1);
}

uint64_t sub_F94E4()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[28] = v1;
  v2[29] = v4;
  v2[30] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 408) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_F95E0()
{
  sub_D2DC();
  sub_D13C((v0 + 136));
  v1 = sub_FC740();

  return v2(v1);
}

uint64_t sub_F963C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[31] = v1;
  v2[32] = v4;
  v2[33] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 424) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_F9738()
{
  sub_D2DC();
  v0 = sub_FC740();

  return v1(v0);
}

uint64_t sub_F978C()
{
  sub_D2DC();
  sub_D13C((v0 + 16));
  sub_D37C();

  return v1();
}

uint64_t sub_F97E8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[34] = v1;
  v2[35] = v4;
  v2[36] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 448) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_F98E4()
{
  sub_D2DC();

  v0 = sub_FC740();

  return v1(v0);
}

uint64_t sub_F9C7C()
{
  sub_D2DC();

  sub_D13C((v0 + 16));
  sub_D37C();

  return v1();
}

uint64_t sub_F9CE0(char a1, uint64_t a2)
{
  *(v3 + 56) = a2;
  *(v3 + 64) = v2;
  *(v3 + 152) = a1;
  return sub_D2B0();
}

uint64_t sub_F9CF8()
{
  sub_D3A4();
  sub_FC788(*(v0 + 56));
  sub_61494();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v3 = sub_2FCBC(v2);

  return v5(v3);
}

uint64_t sub_F9DFC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 80) = v4;

  if (v0)
  {
    sub_D37C();

    return v5();
  }

  else
  {
    sub_10B4C();

    return _swift_task_switch(v7);
  }
}

uint64_t sub_F9F18()
{
  sub_30984();
  v1 = *(v0 + 80);
  if (!v1)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    sub_7194C();
    v22 = sub_16A584();
    sub_48154(v22, qword_1E65C0);
    sub_FC888();
    sub_FC930();
    sub_386D8(v23, v24, v25, v26, v27, v28, 54, v29, v49);
    v30 = sub_3024C(&unk_179C38);
    v31 = sub_FC9A4(v30);
    *(v0 + 144) = v31;
    *v31 = v0;
    v32 = sub_FA9D4;
LABEL_20:
    v31[1] = v32;
    sub_FC864();
    sub_FC870();

    __asm { BR              X1 }
  }

  v2 = *(v1 + 16);
  *(v0 + 88) = v2;
  if (!v2)
  {

    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    sub_7194C();
    v33 = sub_16A584();
    sub_48154(v33, qword_1E65C0);
    sub_FC888();
    sub_FC930();
    sub_386D8(v34, v35, v36, v37, v38, v39, 59, v40, v49);
    v41 = sub_3024C(&unk_179C38);
    v31 = sub_FC9A4(v41);
    *(v0 + 136) = v31;
    *v31 = v0;
    v32 = sub_FA8EC;
    goto LABEL_20;
  }

  v3 = *(v0 + 64);
  v4 = sub_D084((v3 + 48), *(v3 + 72));
  v5 = sub_133644(v1);
  v7 = sub_948E4(v5, *v4, v6);

  v8 = v7[2];

  if (!v8)
  {

    sub_D084((v3 + 48), *(v3 + 72));
    sub_FC768();
    v44 = swift_task_alloc();
    *(v0 + 128) = v44;
    *v44 = v0;
    sub_2FCBC(v44);
    sub_FC870();

    __asm { BRAA            X2, X16 }
  }

  v9 = 0x6E696C6261736944;
  if (*(v0 + 152))
  {
    v9 = 0x676E696C62616E45;
    v10 = 0xE800000000000000;
  }

  else
  {
    v10 = 0xE900000000000067;
  }

  v50 = v9;

  v51._countAndFlagsBits = 0xD000000000000010;
  v51._object = 0x800000000018D5A0;
  sub_16A744(v51);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v11 = sub_16A584();
  sub_9F450(v11, qword_1E65C0);
  sub_FC930();
  sub_386D8(v12, v13, v14, v15, v16, v17, 67, v50, v10);

  *(v0 + 96) = 0;
  result = *(v0 + 80);
  if (*(v0 + 88))
  {
    if (*(result + 16))
    {
      sub_6765C(result + 32, v0 + 16);
      sub_FC788((v0 + 16));
      sub_FC7A8();
      v19 = swift_task_alloc();
      *(v0 + 104) = v19;
      *v19 = v0;
      v19[1] = sub_FA46C;
      sub_FC7C8(*(v0 + 152));
      sub_FC870();

      __asm { BRAA            X3, X16 }
    }

    __break(1u);
  }

  else
  {

    v47 = swift_task_alloc();
    *(v0 + 120) = v47;
    *v47 = v0;
    sub_FC818(v47);
    sub_FC870();

    return sub_FC168();
  }

  return result;
}

uint64_t sub_FA46C()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 112) = v0;

  sub_D13C((v3 + 16));
  if (v0)
  {
  }

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_FA584()
{
  sub_D3A4();
  v1 = *(v0 + 88);
  v2 = *(v0 + 96) + 1;
  *(v0 + 96) = v2;
  result = *(v0 + 80);
  if (v2 == v1)
  {

    v4 = swift_task_alloc();
    *(v0 + 120) = v4;
    *v4 = v0;
    sub_FC818(v4);

    return sub_FC168();
  }

  else if (v2 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    sub_6765C(result + 40 * v2 + 32, v0 + 16);
    sub_FC788((v0 + 16));
    sub_61494();
    v8 = (v5 + *v5);
    v6 = swift_task_alloc();
    *(v0 + 104) = v6;
    *v6 = v0;
    v6[1] = sub_FA46C;
    v7 = sub_FC7C8(*(v0 + 152));

    return v8(v7);
  }

  return result;
}

uint64_t sub_FA71C()
{
  sub_D2DC();
  sub_FC7B8();
  v3 = *v2;
  sub_D254();
  *v4 = v3;

  sub_30AEC();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_FA804()
{
  sub_D2DC();
  sub_FC7B8();
  v3 = *v2;
  sub_D254();
  *v4 = v3;

  sub_30AEC();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_FA8EC()
{
  sub_D2DC();
  sub_FC7B8();
  v3 = *v2;
  sub_D254();
  *v4 = v3;

  sub_30AEC();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_FA9D4()
{
  sub_D2DC();
  sub_FC7B8();
  v3 = *v2;
  sub_D254();
  *v4 = v3;

  sub_30AEC();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_FAAC4(char a1, uint64_t a2)
{
  *(v3 + 216) = a2;
  *(v3 + 224) = v2;
  *(v3 + 304) = a1;
  return sub_D2B0();
}

uint64_t sub_FAADC()
{
  sub_D3A4();
  sub_FC788(*(v0 + 216));
  sub_61494();
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 232) = v1;
  *v1 = v2;
  v3 = sub_FC8C0(v1);

  return v4(v3);
}

uint64_t sub_FABDC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 240) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

void sub_FACD4()
{
  sub_30984();
  if (*(v2 + 152))
  {
    sub_FC95C();
    sub_5758(&qword_1E83E0, &unk_170410);
    inited = swift_initStackObject();
    sub_FC8E8(inited, xmmword_16D9A0);
    sub_4EB50();
    v6.n128_f64[0] = (*(v5 + 16))();
    v7 = sub_948E4(inited, *v0, v6);
    swift_setDeallocating();
    sub_EFFF4();
    v8 = v7[2];

    if (v8)
    {
      v9 = 0x6E696C6261736944;
      if (*(v2 + 304))
      {
        v9 = 0x676E696C62616E45;
      }

      v27 = v9;

      v28._countAndFlagsBits = 0x6564207261657220;
      v28._object = 0xEF726574736F7266;
      sub_16A744(v28);

      if (qword_1E58E8 != -1)
      {
        sub_9ED4(&qword_1E58E8);
      }

      v10 = sub_16A584();
      sub_9F450(v10, qword_1E65C0);
      sub_FC8DC();
      sub_386D8(v12, 0x400uLL, v11 + 99, 0x800000000018D450, 0xD00000000000001FLL, 0x800000000018D670, 105, v27, v26);

      sub_FC788((v2 + 88));
      sub_FC7A8();
      v13 = swift_task_alloc();
      *(v2 + 248) = v13;
      *v13 = v2;
      v13[1] = sub_FB16C;
      sub_FC7C8(*(v2 + 304));
      sub_FC870();

      __asm { BRAA            X3, X16 }
    }

    sub_D084((v3 + 48), *(v3 + 72));
    sub_FC768();
    v23 = swift_task_alloc();
    *(v2 + 280) = v23;
    *v23 = v2;
    sub_2FCBC(v23);
    sub_FC870();

    __asm { BRAA            X2, X16 }
  }

  sub_4EAF4(v2 + 128, &qword_1E6368, &qword_16DAA0);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  sub_7194C();
  v16 = sub_16A584();
  sub_48154(v16, qword_1E65C0);
  sub_FC8DC();
  sub_386D8(v18, 0x400uLL, v17 + 99, 0x800000000018D450, 0xD00000000000001FLL, (v1 | 0x8000000000000000), 97, v17 + 8, v26);
  v19 = sub_3024C(&unk_179C38);
  v20 = sub_FC9A4(v19);
  *(v2 + 296) = v20;
  *v20 = v2;
  v20[1] = sub_FB57C;
  sub_FC864();
  sub_FC870();

  __asm { BR              X1 }
}

uint64_t sub_FB16C()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v7);
  }

  else
  {
    v8 = swift_task_alloc();
    *(v3 + 264) = v8;
    *v8 = v5;
    v8[1] = sub_FB2C4;

    return sub_FC168();
  }
}

uint64_t sub_FB2C4()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[21] = v1;
  v2[22] = v4;
  v2[23] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 272) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_FB3C0()
{
  sub_D2DC();
  sub_D13C((v0 + 88));
  sub_30AEC();

  return v1();
}

uint64_t sub_FB420()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[24] = v1;
  v2[25] = v4;
  v2[26] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 288) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_FB51C()
{
  sub_D2DC();
  sub_D13C((v0 + 88));
  sub_30AEC();

  return v1();
}

uint64_t sub_FB57C()
{
  sub_D2DC();
  sub_FC7B8();
  v3 = *v2;
  sub_D254();
  *v4 = v3;

  sub_30AEC();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_FB664()
{
  sub_D2DC();
  sub_D13C((v0 + 88));
  sub_D37C();

  return v1();
}

uint64_t sub_FB6C0()
{
  sub_D2DC();
  sub_D13C((v0 + 88));
  sub_D37C();

  return v1();
}

uint64_t sub_FB71C()
{
  sub_D2DC();
  sub_D13C((v0 + 88));
  sub_D37C();

  return v1();
}

uint64_t sub_FB778(char a1, uint64_t a2)
{
  *(v3 + 216) = a2;
  *(v3 + 224) = v2;
  *(v3 + 304) = a1;
  return sub_D2B0();
}

uint64_t sub_FB790()
{
  sub_D3A4();
  sub_FC788(*(v0 + 216));
  sub_61494();
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 232) = v1;
  *v1 = v2;
  v3 = sub_FC8C0(v1);

  return v4(v3);
}

uint64_t sub_FB890()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 240) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

void sub_FB988()
{
  sub_30984();
  if (*(v2 + 152))
  {
    sub_FC95C();
    sub_5758(&qword_1E83E0, &unk_170410);
    inited = swift_initStackObject();
    sub_FC8E8(inited, xmmword_16D9A0);
    sub_4EB50();
    v6.n128_f64[0] = (*(v5 + 16))();
    v7 = sub_948E4(inited, *v0, v6);
    swift_setDeallocating();
    sub_EFFF4();
    v8 = v7[2];

    if (v8)
    {
      v9 = 0x6E696C6261736944;
      if (*(v2 + 304))
      {
        v9 = 0x676E696C62616E45;
        v10 = 0xE800000000000000;
      }

      else
      {
        v10 = 0xE900000000000067;
      }

      v27 = v9;

      v28._countAndFlagsBits = 0xD000000000000010;
      v28._object = 0x800000000018D650;
      sub_16A744(v28);

      if (qword_1E58E8 != -1)
      {
        sub_9ED4(&qword_1E58E8);
      }

      v11 = sub_16A584();
      v12 = sub_9F450(v11, qword_1E65C0);
      sub_386D8(v12, 0x400uLL, 0xD000000000000082, 0x800000000018D450, 0xD000000000000020, 0x800000000018D5F0, 87, v27, v10);

      sub_FC788((v2 + 88));
      sub_FC7A8();
      v13 = swift_task_alloc();
      *(v2 + 248) = v13;
      *v13 = v2;
      v13[1] = sub_FBE18;
      sub_FC7C8(*(v2 + 304));
      sub_FC870();

      __asm { BRAA            X3, X16 }
    }

    sub_D084((v3 + 48), *(v3 + 72));
    sub_FC768();
    v23 = swift_task_alloc();
    *(v2 + 280) = v23;
    *v23 = v2;
    sub_2FCBC(v23);
    sub_FC870();

    __asm { BRAA            X2, X16 }
  }

  sub_4EAF4(v2 + 128, &qword_1E6368, &qword_16DAA0);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  sub_7194C();
  v16 = sub_16A584();
  sub_48154(v16, qword_1E65C0);
  sub_FC8DC();
  sub_386D8(v18, 0x400uLL, v17 + 98, 0x800000000018D450, 0xD000000000000020, (v1 | 0x8000000000000000), 79, v17 | 8, v26);
  v19 = sub_3024C(&unk_179C38);
  v20 = sub_FC9A4(v19);
  *(v2 + 296) = v20;
  *v20 = v2;
  v20[1] = sub_FC6D0;
  sub_FC864();
  sub_FC870();

  __asm { BR              X1 }
}

uint64_t sub_FBE18()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v7);
  }

  else
  {
    v8 = swift_task_alloc();
    *(v3 + 264) = v8;
    *v8 = v5;
    v8[1] = sub_FBF70;

    return sub_FC168();
  }
}

uint64_t sub_FBF70()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[21] = v1;
  v2[22] = v4;
  v2[23] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 272) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_FC06C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[24] = v1;
  v2[25] = v4;
  v2[26] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 288) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_FC168()
{
  sub_D2DC();
  *(v0 + 57) = v1;
  *(v0 + 56) = v2;
  sub_5758(&qword_1E6300, &qword_16ECE0);
  *(v0 + 16) = swift_task_alloc();
  sub_16A164();
  *(v0 + 24) = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_FC22C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 56);
  type metadata accessor for CarCommandsSetDefrosterCATsSimple(0);
  sub_16A154();
  *(v0 + 32) = sub_16A0F4();
  sub_151FFC(v2);
  v3 = sub_16A0C4();
  sub_5370(v1, 0, 1, v3);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_FC328;
  v5 = *(v0 + 16);
  v6 = *(v0 + 57);

  return sub_A09B0(v6, v5);
}

uint64_t sub_FC328()
{
  sub_D3A4();
  v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  v6 = *v1;
  *v5 = *v1;
  *(v4 + 48) = v0;

  if (v0)
  {
    sub_4EAF4(*(v4 + 16), &qword_1E6300, &qword_16ECE0);

    sub_10B4C();

    return _swift_task_switch(v7);
  }

  else
  {
    sub_4EAF4(*(v4 + 16), &qword_1E6300, &qword_16ECE0);

    v8 = *(v6 + 8);

    return v8(v3);
  }
}

uint64_t sub_FC4DC()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_FC540(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_FC5D4;

  return sub_F8A60(a1);
}

uint64_t sub_FC5D4()
{
  sub_D2DC();
  sub_FC7B8();
  v3 = *v2;
  sub_D254();
  *v4 = v3;

  sub_30AEC();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

void sub_FC708(os_log_type_t a1)
{

  sub_386D8(a1, 0x400uLL, v3 + 112, v5 | 0x8000000000000000, 0xD000000000000012, (v4 | 0x8000000000000000), 44, v2, v1);
}

void sub_FC7DC()
{
  *(v1 + 432) = v0;

  sub_16ACF4(27);
}

void sub_FC844(uint64_t a1@<X8>)
{

  v3._countAndFlagsBits = v1 + 7;
  v3._object = ((a1 - 32) | 0x8000000000000000);
  sub_16A744(v3);
}

uint64_t sub_FC8A4()
{

  return sub_16A584();
}

uint64_t *sub_FC8E8(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = v3[14];
  v5 = v3[15];
  sub_D084(v3 + 11, v4);
  v2[7] = v4;
  v2[8] = *(v5 + 8);

  return sub_10888(v2 + 4);
}

uint64_t sub_FC940()
{

  return sub_D13C((v0 + 136));
}

void *sub_FC95C()
{
  v1 = *(v0 + 224);
  sub_D124((v0 + 128), v0 + 88);
  return sub_D084((v1 + 48), *(v1 + 72));
}

uint64_t sub_FC9A4(uint64_t a1)
{

  return swift_task_alloc();
}

uint64_t sub_FC9BC(uint64_t a1)
{

  return swift_task_alloc();
}

uint64_t sub_FC9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_16AD84();
}

uint64_t getEnumTagSinglePayload for CarCommandsDirectInvocations(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CarCommandsDirectInvocations(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0xFCB40);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

Swift::Int sub_FCDBC(uint64_t a1)
{
  v1 = a1;
  sub_FD6AC(a1);
  sub_16AF24(v1);
  return sub_16AF54();
}

Swift::Int sub_FCF7C(uint64_t a1, uint64_t a2)
{
  sub_FD6AC(a1);
  sub_16A6F4();
  return sub_16AF54();
}

Swift::Int sub_FCFE8(uint64_t a1)
{
  v1 = a1;
  sub_FD6AC(a1);
  sub_16AF34(v1);
  return sub_16AF54();
}

Swift::Int sub_FD07C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_FD6AC(a1);
  a2(a1);
  sub_16A6F4();

  return sub_16AF54();
}

Swift::Int sub_FD0F8(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  sub_FD6AC(a1);
  a2(v5, a1);
  return sub_16AF54();
}

Swift::Int sub_FD158(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_FD6AC(a1);
  a2(a1);
  return sub_16AF54();
}

unint64_t sub_FD1A8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1D1618;
  v6._object = a2;
  v4 = sub_16ADE4(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

id sub_FD1F4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_FD5D4();
  v4 = sub_FD2E0(v2);
  v6 = sub_FD3A8(v4, v5);
  sub_5758(&qword_1E6350, &unk_177CB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_16D9A0;
  sub_16AC84();
  sub_16138(a1, inited + 72);
  v8 = sub_16A5C4();
  sub_FD618(v8, v6);
  return v6;
}

unint64_t sub_FD2E0(char a1)
{
  result = 0xD00000000000003FLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000042;
      break;
    case 2:
      result = 0xD00000000000003CLL;
      break;
    case 3:
    case 4:
      result = 0xD000000000000045;
      break;
    case 5:
      result = 0xD00000000000003DLL;
      break;
    default:
      return result;
  }

  return result;
}

id sub_FD3A8(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_16A644();

  v4 = [v2 initWithIdentifier:v3];

  return v4;
}

id sub_FD41C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_opt_self() runSiriKitExecutorCommandWithContext:a2 payload:a1];
  sub_D084(a3, a3[3]);
  sub_168B04();
  if (v5)
  {
    v6 = sub_16A644();
  }

  else
  {
    v6 = 0;
  }

  [v4 setSessionHandOffContinuityID:v6];

  return v4;
}

unint64_t sub_FD520@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_FD1A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_FD550@<X0>(unint64_t *a1@<X8>)
{
  result = sub_FD2E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_FD580()
{
  result = qword_1EC7C8;
  if (!qword_1EC7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C8);
  }

  return result;
}

unint64_t sub_FD5D4()
{
  result = qword_1EC7D0;
  if (!qword_1EC7D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7D0);
  }

  return result;
}

void sub_FD618(uint64_t a1, void *a2)
{
  isa = sub_16A5A4().super.isa;

  [a2 setUserData:isa];
}

void *sub_FD6AC(uint64_t a1, ...)
{

  return sub_16AF14();
}

uint64_t type metadata accessor for CarCommandsSetLockStatusCATsSimple(uint64_t a1)
{
  result = qword_1EC7D8;
  if (!qword_1EC7D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_FD750(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  sub_5758(&qword_1E6300, &qword_16ECE0);
  *(v3 + 32) = swift_task_alloc();

  return _swift_task_switch(sub_FD7F0);
}

uint64_t sub_FD7F0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = swift_allocObject();
  *(v0 + 40) = v3;
  *(v3 + 16) = xmmword_16D3A0;
  *(v3 + 32) = 0x656D614E726163;
  *(v3 + 40) = 0xE700000000000000;
  sub_2F868(v2, v1, &qword_1E6300, &qword_16ECE0);
  v4 = sub_16A0C4();
  v5 = sub_9E2C(v1, 1, v4);
  v6 = *(v0 + 32);
  if (v5 == 1)
  {
    sub_D188(*(v0 + 32), &qword_1E6300, &qword_16ECE0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    v7 = sub_10888((v3 + 48));
    (*(*(v4 - 8) + 32))(v7, v6, v4);
  }

  v8 = *(v0 + 64);
  *(v3 + 80) = 0x64656B636F6CLL;
  *(v3 + 88) = 0xE600000000000000;
  *(v3 + 120) = &type metadata for Bool;
  *(v3 + 96) = v8;
  v11 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  *v9 = v0;
  v9[1] = sub_31B04;

  return v11(0xD00000000000002ELL, 0x8000000000185DF0, v3);
}

uint64_t sub_FDA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_16A164();
  sub_5B1C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  __chkstk_darwin(v11 - 8);
  sub_2F868(a1, &v15 - v12, &qword_1E5B48, &unk_16DDB0);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_16A0D4();
  (*(v7 + 8))(a2, v3);
  sub_D188(a1, &qword_1E5B48, &unk_16DDB0);
  return v13;
}

uint64_t sub_FDBAC(uint64_t a1, uint64_t a2)
{
  sub_16A164();
  sub_5B1C();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_16A0E4();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t type metadata accessor for CarCommandsSetRadioStationCATsSimple(uint64_t a1)
{
  result = qword_1EC828;
  if (!qword_1EC828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_FDD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_16A164();
  sub_5B1C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  __chkstk_darwin(v11 - 8);
  sub_57A0(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_16A0D4();
  (*(v7 + 8))(a2, v3);
  sub_5810(a1);
  return v13;
}

uint64_t sub_FDEF0(uint64_t a1, uint64_t a2)
{
  sub_16A164();
  sub_5B1C();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_16A0E4();
  (*(v5 + 8))(a2, v2);
  return v9;
}

Class sub_FDFF8(char *a1)
{
  sub_86E4(a1, &_swiftEmptySetSingleton, v20);
  if (v20[3])
  {
    sub_5758(&qword_1E5F90, &qword_170270);
    sub_5758(&qword_1EC880, &qword_177DB8);
    if (swift_dynamicCast())
    {
      if (*(&v22 + 1))
      {
        sub_D124(&v21, v24);
        v4 = v25;
        v5 = v26;
        sub_D084(v24, v25);
        v6 = (*(v5 + 16))(v4, v5);
        v7 = v25;
        sub_D084(v24, v25);
        sub_FE958();
        v9 = v8(v7);
        if (v10.value.super.isa)
        {
          v11 = v9;
          isa = v10.value.super.isa;
          sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
          v10.value.super.isa = sub_99BFC(v11, isa);
        }

        v13.value = v6;
        v14.super.super.isa = sub_16AA04(v13, v10).super.super.isa;
        sub_1693E4();
        sub_955E4();
        (*(v15 + 8))(a1);
        sub_D13C(v24);
        return v14.super.super.isa;
      }
    }

    else
    {
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
    }
  }

  else
  {
    sub_99140(v20, &qword_1E5F80, &unk_16E7E0);
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
  }

  sub_99140(&v21, &qword_1EC878, &unk_177DA8);
  sub_93C20();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v16 = sub_16A584();
  sub_9DA0(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_386D8(v17, 0x40uLL, 0xD0000000000000A5, v1 | 0x8000000000000000, 0x293A5F2874696E69, 0xE800000000000000, 67, 0xD000000000000016, v2);
  sub_1693E4();
  sub_955E4();
  (*(v18 + 8))(a1);
  return 0;
}

id sub_FE290(char *a1, char a2)
{
  v3 = v2;
  v34 = v3;
  swift_getObjectType();
  if ((a2 & 0xF0) == 0x30)
  {
    sub_86E4(a1, &_swiftEmptySetSingleton, v35);
    if (v35[3])
    {
      sub_5758(&qword_1E5F90, &qword_170270);
      sub_5758(&qword_1EC880, &qword_177DB8);
      if (swift_dynamicCast())
      {
        if (*(&v37 + 1))
        {
          sub_D124(&v36, v39);
          if (a2)
          {
          }

          else
          {
            v17 = sub_16AE54();

            if ((v17 & 1) == 0)
            {
              v20 = sub_16AA14();
              goto LABEL_23;
            }
          }

          v18 = v40;
          v19 = v41;
          sub_D084(v39, v40);
          v20 = (*(v19 + 16))(v18, v19);
          if (a2)
          {
            v21 = sub_16AE54();

            if ((v21 & 1) == 0)
            {
              v22 = [v34 carName];
              goto LABEL_26;
            }

LABEL_24:
            v23 = v40;
            sub_D084(v39, v40);
            sub_FE958();
            v25 = v24(v23);
            if (!v26)
            {
              v29 = 0;
              goto LABEL_28;
            }

            v27 = v25;
            v28 = v26;
            sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
            v22 = sub_99BFC(v27, v28);
LABEL_26:
            v29 = v22;
LABEL_28:
            v43.is_nil = sub_16484(0, &qword_1E6A50, INSetCarLockStatusIntent_ptr);
            v30.value = v20;
            v43.value.super.isa = v29;
            v31.super.super.isa = sub_16AA04(v30, v43).super.super.isa;
            v32 = swift_dynamicCastUnknownClass();
            if (!v32)
            {

              v32 = v34;
            }

            sub_D13C(v39);
            return v32;
          }

LABEL_23:

          goto LABEL_24;
        }
      }

      else
      {
        v38 = 0;
        v36 = 0u;
        v37 = 0u;
      }
    }

    else
    {
      sub_99140(v35, &qword_1E5F80, &unk_16E7E0);
      v36 = 0u;
      v37 = 0u;
      v38 = 0;
    }

    sub_99140(&v36, &qword_1EC878, &unk_177DA8);
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v15 = sub_16A584();
    sub_9DA0(v15, qword_1E65C0);
    sub_16A9A4();
    sub_FE944();
    sub_FE934();
    v14 = 23;
  }

  else
  {
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v6 = sub_16A584();
    sub_9DA0(v6, qword_1E65C0);
    sub_16A9A4();
    sub_FE944();
    sub_FE934();
    v14 = 18;
  }

  sub_386D8(v7, v8, v9, v10, v11, v12, v14, v13, v33);

  return v34;
}

id sub_FE680(uint64_t a1, char a2)
{
  swift_getObjectType();
  v4 = [v23 carName];
  v5 = sub_16AA14();
  if ((a2 & 0xF0) == 0x30)
  {
    if (a2)
    {
      sub_16138(a1, v25);
      v6 = sub_5758(&qword_1EC228, &unk_177DC0);
      if (sub_991D0(v6, v7, v8, v6))
      {
        v5 = v24;
      }
    }

    else
    {
      sub_16138(a1, v25);
      v20 = sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
      if (sub_991D0(v20, v21, v22, v20))
      {

        v4 = v24;
      }
    }
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v9 = sub_16A584();
    sub_9DA0(v9, qword_1E65C0);
    sub_16A9A4();
    sub_FE934();
    sub_386D8(v10, v11, v12, v13, v14, v15, 43, v16, 0x8000000000186FF0);
  }

  sub_16484(0, &qword_1E6A50, INSetCarLockStatusIntent_ptr);
  v17.value = v5;
  v27.value.super.isa = v4;
  v18.super.super.isa = sub_16AA04(v17, v27).super.super.isa;
  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    return v23;
  }

  return result;
}

double sub_FE884@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1 & 0xF0) == 0x30)
  {
    if (a1)
    {
      v4 = sub_16AA14();
      if (v4 != 2)
      {
        *(a2 + 24) = &type metadata for Bool;
        *a2 = v4 & 1;
        return result;
      }
    }

    else
    {
      v6 = [v2 carName];
      if (v6)
      {
        v7 = v6;
        *(a2 + 24) = sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
        *a2 = v7;
        return result;
      }
    }
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t type metadata accessor for CarCommandsAppResolutionCATsSimple(uint64_t a1)
{
  result = qword_1EC888;
  if (!qword_1EC888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_FE9F8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_FEA18);
}

uint64_t sub_FEA18()
{
  v1 = v0[2];
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_16D9A0;
  *(v2 + 32) = 0x736D657469;
  *(v2 + 40) = 0xE500000000000000;
  *(v2 + 72) = sub_5758(&qword_1EB948, &qword_176490);
  *(v2 + 48) = v1;
  v5 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_6D128;

  return v5(0xD000000000000032, 0x800000000018AA20, v2);
}

uint64_t sub_FEBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_16A164();
  sub_5B1C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  __chkstk_darwin(v11 - 8);
  sub_57A0(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_16A0D4();
  (*(v7 + 8))(a2, v3);
  sub_5810(a1);
  return v13;
}

uint64_t sub_FED08(uint64_t a1, uint64_t a2)
{
  sub_16A164();
  sub_5B1C();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_16A0E4();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_FEE20()
{
  sub_D2DC();
  v1[61] = v2;
  v1[62] = v0;
  sub_16A164();
  v1[63] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_FEEA8()
{
  sub_D2DC();
  sub_D084((*(v0 + 496) + 8), *(*(v0 + 496) + 32));
  v1 = swift_task_alloc();
  *(v0 + 512) = v1;
  *v1 = v0;
  v1[1] = sub_FEF50;

  return sub_13AB58(v0 + 96, 1);
}

uint64_t sub_FEF50()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 520) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_FF048()
{
  sub_10824(*(v0 + 488), v0 + 176);
  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1EC8D8, &qword_177EA8);
  if (swift_dynamicCast())
  {
    sub_D124((v0 + 216), v0 + 136);
    v1 = *(v0 + 120);
    v2 = *(v0 + 128);
    sub_D084((v0 + 96), v1);
    v9 = (*(v2 + 64) + **(v2 + 64));
    v3 = swift_task_alloc();
    *(v0 + 528) = v3;
    *v3 = v0;
    v3[1] = sub_FF384;

    return v9(v0 + 296, v1, v2);
  }

  else
  {
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0;
    sub_D188(v0 + 216, &qword_1EC8E0, &unk_177EB0);
    type metadata accessor for CarCommandsError(0);
    sub_11D28();
    swift_allocError();
    v6 = v5;
    sub_16ACF4(65);
    *(v0 + 456) = 0;
    *(v0 + 464) = 0xE000000000000000;
    v11._object = 0x8000000000184C00;
    v11._countAndFlagsBits = 0xD000000000000016;
    sub_16A744(v11);
    sub_16AD84();
    v12._countAndFlagsBits = 0xD000000000000029;
    v12._object = 0x800000000018D860;
    sub_16A744(v12);
    v7 = *(v0 + 464);
    *v6 = *(v0 + 456);
    v6[1] = v7;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_D13C((v0 + 96));

    sub_D37C();

    return v8();
  }
}

uint64_t sub_FF328()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_FF384()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 536) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_FF47C()
{
  if (!*(v0 + 320))
  {
    sub_D188(v0 + 296, &qword_1E83D0, &qword_174EE0);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v27 = sub_16A584();
    sub_9DA0(v27, qword_1E65C0);
    sub_16A9A4();
    sub_1005B8();
    sub_1005D4();
    sub_386D8(v28, v29, v30, v31, v32, v33, 27, v34, v59);
    sub_89054(&unk_179C68);
    v35 = swift_task_alloc();
    *(v0 + 616) = v35;
    *v35 = v0;
    v36 = sub_1000B8;
LABEL_18:
    v35[1] = v36;
    sub_D2C0();

    __asm { BR              X1 }
  }

  sub_D124((v0 + 296), v0 + 256);
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  sub_D084((v0 + 256), v1);
  v3 = (*(v2 + 88))(v1, v2);
  if (!v3)
  {
LABEL_15:
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v37 = sub_16A584();
    sub_9DA0(v37, qword_1E65C0);
    sub_16A9A4();
    sub_1005B8();
    sub_1005D4();
    sub_386D8(v38, v39, v40, v41, v42, v43, 33, v44, v59);
    sub_89054(&unk_179C68);
    v35 = swift_task_alloc();
    *(v0 + 600) = v35;
    *v35 = v0;
    v36 = sub_FFF5C;
    goto LABEL_18;
  }

  v4 = v3;
  v5 = *(v3 + 16);
  if (!v5)
  {

    goto LABEL_15;
  }

  v6 = sub_D084((v0 + 136), *(v0 + 160));
  v7 = sub_8F248(v6);
  if (v8 == 0xFF)
  {

    sub_16ACF4(43);

    v47 = sub_D084((v0 + 136), *(v0 + 160));
    *(v0 + 472) = sub_8F248(v47);
    *(v0 + 480) = v48;
    sub_5758(&qword_1EC8E8, &qword_177EC0);
    v60._countAndFlagsBits = sub_16A694();
    sub_16A744(v60);

    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v49 = sub_16A584();
    sub_9DA0(v49, qword_1E65C0);
    sub_16A9A4();
    sub_1005D4();
    sub_386D8(v50, v51, v52, v53, v54, v55, 38, 0xD000000000000029, 0x800000000018D950);

    sub_89054(&unk_179C68);
    v35 = swift_task_alloc();
    *(v0 + 584) = v35;
    *v35 = v0;
    v36 = sub_FFE00;
    goto LABEL_18;
  }

  v9 = v7;
  v10 = v8;
  v11 = *(v0 + 496);
  v12 = sub_D084((v11 + 48), *(v11 + 72));
  v13 = sub_1334E0(v4);
  v15 = sub_948E4(v13, *v12, v14);

  v16 = v15[2];

  if (!v16)
  {

    sub_D084((v11 + 48), *(v11 + 72));
    v56 = swift_task_alloc();
    *(v0 + 568) = v56;
    *v56 = v0;
    v56[1] = sub_FFCA4;
    sub_D2C0();

    __asm { BRAA            X2, X16 }
  }

  v17 = (v4 + 32);
  do
  {
    v19 = v17[3];
    v18 = v17[4];
    v20 = sub_D084(v17, v19);
    *(v0 + 40) = v19;
    *(v0 + 48) = *(v18 + 8);
    v21 = sub_10888((v0 + 16));
    (*(*(v19 - 8) + 16))(v21, v20, v19);
    *(v0 + 80) = &type metadata for DefaultChangeNormalizer;
    *(v0 + 88) = &off_1D4868;
    sub_4BF0C(v9, v10);
    sub_100500(v0 + 16);
    v17 += 5;
    --v5;
  }

  while (v5);

  type metadata accessor for CarCommandsSetCarPlayFanIntensityCATsSimple(0);
  sub_16A154();
  *(v0 + 544) = sub_16A0F4();
  v22 = swift_task_alloc();
  *(v0 + 552) = v22;
  *v22 = v0;
  v22[1] = sub_FFB0C;
  sub_D2C0();

  return sub_6CFBC(v23, v24);
}

uint64_t sub_FFB0C(uint64_t a1)
{
  v3 = *v2;
  v3[42] = v2;
  v3[43] = a1;
  v3[44] = v1;
  v3[70] = v1;

  sub_10B4C();

  return _swift_task_switch(v4);
}

uint64_t sub_FFC44()
{
  sub_D2DC();
  sub_D13C((v0 + 256));
  sub_100554();
  v1 = sub_302B8();

  return v2(v1);
}

uint64_t sub_FFCA4()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[45] = v1;
  v2[46] = v4;
  v2[47] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 576) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_FFDA0()
{
  sub_D2DC();
  sub_D13C((v0 + 256));
  sub_100554();
  v1 = sub_302B8();

  return v2(v1);
}

uint64_t sub_FFE00()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[48] = v1;
  v2[49] = v4;
  v2[50] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 592) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_FFEFC()
{
  sub_D2DC();
  sub_D13C((v0 + 256));
  sub_100554();
  v1 = sub_302B8();

  return v2(v1);
}

uint64_t sub_FFF5C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[51] = v1;
  v2[52] = v4;
  v2[53] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 608) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_100058()
{
  sub_D2DC();
  sub_D13C((v0 + 256));
  sub_100554();
  v1 = sub_302B8();

  return v2(v1);
}

uint64_t sub_1000B8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[54] = v1;
  v2[55] = v4;
  v2[56] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 624) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_1001B4()
{
  sub_D2DC();
  sub_100554();
  v0 = sub_302B8();

  return v1(v0);
}

uint64_t sub_10020C()
{
  sub_D2DC();
  sub_10058C();

  sub_D37C();

  return v0();
}

uint64_t sub_10026C()
{
  sub_D2DC();
  sub_10058C();

  sub_D37C();

  return v0();
}

uint64_t sub_1002CC()
{
  sub_D2DC();
  sub_D13C((v0 + 256));
  sub_10058C();

  sub_D37C();

  return v1();
}

uint64_t sub_100334()
{
  sub_D2DC();
  sub_D13C((v0 + 256));
  sub_10058C();

  sub_D37C();

  return v1();
}

uint64_t sub_10039C()
{
  sub_D2DC();
  sub_D13C((v0 + 256));
  sub_10058C();

  sub_D37C();

  return v1();
}

uint64_t sub_100404()
{
  sub_D2DC();
  sub_D13C((v0 + 256));
  sub_10058C();

  sub_D37C();

  return v1();
}

uint64_t sub_10046C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_3E08C;

  return sub_FEE20();
}

uint64_t sub_100554()
{
  sub_D13C((v0 + 136));
  sub_D13C((v0 + 96));
}

uint64_t sub_10058C()
{
  sub_D13C((v0 + 136));

  return sub_D13C((v0 + 96));
}

uint64_t sub_100678(uint64_t a1)
{
  v1 = sub_103A44();
  sub_82168(v1, v2, v3);
  if (v5 == 0x6574736F72666564 && v4 == 0xE900000000000072)
  {

    v7 = 1;
  }

  else
  {
    sub_16AE54();
    sub_48350();
    switch(sub_10226C())
    {
      case 1u:
        sub_93F0C();
        goto LABEL_9;
      case 3u:

        v7 = 0;
        break;
      default:
LABEL_9:
        sub_EAAF0();
        v9 = sub_16AE54();

        v7 = v9 ^ 1;
        break;
    }
  }

  return v7 & 1;
}

uint64_t sub_100914()
{
  v2 = v0;
  sub_107BD8();
  if ((v3 & 1) == 0)
  {
    return 6;
  }

  sub_143CC0(v3);
  if (v4)
  {
    v5 = v4;
    sub_16A954();
  }

  sub_1438A4(v4);
  if (v7)
  {
    v8 = v7;
    [v7 integerValue];
  }

  sub_144BE0();
  if ((v9 & 1) == 0)
  {
    v10 = sub_103570();
    sub_82B98(v10, v11, v12);
    sub_10C060();
    if (v15 == 0xD000000000000011 && v14 == v13)
    {
      goto LABEL_18;
    }

    sub_16AE54();
    sub_93EF4();
    if ((v1 & 1) == 0)
    {
      if (sub_82B98(*(v2 + 121), v17, v18) != 0x697461676976616ELL || v19 != 0xEE006574754D6E6FLL)
      {
        sub_16AE54();
        sub_93EF4();
        return sub_1080E4();
      }

LABEL_18:
    }
  }

  return sub_1080E4();
}

BOOL sub_100CA8(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = sub_1697C4();
    sub_10AEC(v9);
    v12 = a1(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v11 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v12 & 1) == 0);
  return v7 != v8;
}

BOOL sub_100D74(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void sub_100E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_10C3C4();
  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = *(v34 + 16);
    if (v37)
    {
      if (v36 >= v37)
      {
        v38 = v34;
      }

      else
      {
        v38 = v35;
      }

      if (v36 >= v37)
      {
        v39 = v35;
      }

      else
      {
        v39 = v34;
      }

      v40 = 1 << *(v38 + 32);
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      else
      {
        v41 = -1;
      }

      v42 = v41 & *(v38 + 56);
      v43 = (v40 + 63) >> 6;
      sub_D434();
      v79 = v44;

      v45 = 0;
      while (v42)
      {
        v46 = v42;
LABEL_19:
        v42 = (v46 - 1) & v46;
        if (*(v39 + 16))
        {
          v48 = *(*(v38 + 48) + (__clz(__rbit64(v46)) | (v45 << 6)));
          sub_16AF14();
          sub_81C68(v48, v49, v50);
          sub_10BF98(v51, v52, v53, v54, v55, v56, v57);

          v59 = sub_16AF54() & ~(-1 << *(v39 + 32));
          if ((*(v39 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59))
          {
            v60 = 0xEE0072656E6F6974;
            v61 = 0xEE0072656E6F6974;
            v62 = 0x69646E6F43726961;
            v63 = 0x69646E6F43726961;
            switch(*(*(v39 + 48) + v59))
            {
              case 1:
                v63 = sub_10BC8C();
                goto LABEL_46;
              case 2:
                v65 = 1768191329;
                goto LABEL_40;
              case 3:
                v63 = sub_10BC6C();
                break;
              case 4:
                v63 = sub_10C1A4();
                break;
              case 5:
                v63 = sub_10BC4C();
LABEL_46:
                v61 = 0xEE0072656E6F6974;
                break;
              case 6:
                v63 = sub_10BF20();
                break;
              case 7:
                v63 = sub_10C194();
                break;
              case 8:
                v61 = 0xE500000000000000;
                v63 = sub_93F0C();
                break;
              case 9:
                v63 = sub_10BCD8();
                goto LABEL_43;
              case 0xA:
                v67 = 1684104552;
                goto LABEL_61;
              case 0xB:
                v63 = sub_10C104() | 0x646F0000u;
                break;
              case 0xC:
                v63 = sub_10C104() | 0x6E720000u;
                break;
              case 0xD:
                v63 = sub_10BC2C();
                goto LABEL_49;
              case 0xE:
                v63 = sub_10BF34();
                break;
              case 0xF:
                v63 = sub_10BD80();
                break;
              case 0x10:
                v64 = sub_10BCF4();
                v63 = sub_10C1D4(v64);
                goto LABEL_43;
              case 0x11:
                v66 = sub_10BCF4();
                v63 = sub_10C164(v66);
LABEL_43:
                v61 = 0xEC0072656E6F6974;
                break;
              case 0x12:
                v63 = sub_10BE70();
                goto LABEL_62;
              case 0x13:
                v63 = sub_10BD98();
                break;
              case 0x14:
                v63 = sub_10C1B4();
                break;
              case 0x15:
                v63 = sub_10C1C4();
                break;
              case 0x16:
                v63 = sub_10BE20();
                goto LABEL_59;
              case 0x17:
                v63 = sub_10BE0C();
LABEL_59:
                v61 = 0xEA00000000007265;
                break;
              case 0x18:
                v63 = sub_10BF48();
                break;
              case 0x19:
                v63 = sub_10BCBC();
                goto LABEL_41;
              case 0x1A:
                v63 = 0xD000000000000013;
                v61 = v79;
                break;
              case 0x1B:
                v63 = sub_10BD68();
                break;
              case 0x1C:
                v67 = 1818845556;
LABEL_61:
                v63 = v67 | 0x6867694C00000000;
LABEL_62:
                v61 = 0xE900000000000074;
                break;
              case 0x1D:
                v63 = sub_10BE48();
                break;
              case 0x1E:
                v63 = sub_10BE5C();
                break;
              case 0x1F:
                v65 = 1769171318;
LABEL_40:
                v63 = sub_10BE94(v65);
LABEL_41:
                v61 = 0xEE00006C6E6F6974;
LABEL_49:
                v61 = v61 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                break;
              case 0x20:
                sub_10BE34();
                sub_10C0DC();
                v61 = v68 - 1540;
                break;
              case 0x21:
                v63 = sub_10BBC0();
                break;
              case 0x22:
                v63 = sub_10BEF8();
                break;
              case 0x23:
                v63 = sub_10BF0C();
                break;
              default:
                break;
            }

            switch(v48)
            {
              case 1:
                sub_10BDF8();
                v69 = 0x746867694C73;
                goto LABEL_88;
              case 2:
              case 31:
                sub_10C388();
                goto LABEL_83;
              case 3:
                sub_10BFD0();
                v60 = 0xEB00000000656372;
                break;
              case 4:
                v60 = 0xE300000000000000;
                v62 = 7496035;
                break;
              case 5:
                sub_10BF84();
                v69 = 0x6C6F72746E6FLL;
LABEL_88:
                v60 = v69 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
                break;
              case 6:
                v60 = 0xE600000000000000;
                sub_10C1F4();
                break;
              case 7:
                v60 = 0xE300000000000000;
                v62 = 7233894;
                break;
              case 8:
                v60 = 0xE500000000000000;
                sub_EACE8();
                break;
              case 9:
                sub_10C020();
                v71 = 1937008743;
                goto LABEL_85;
              case 10:
                v76 = 1684104552;
                goto LABEL_103;
              case 11:
                sub_10C39C();
                v62 = v72 | 0x646F0000u;
                break;
              case 12:
                sub_10C39C();
                v62 = v73 | 0x6E720000u;
                break;
              case 13:
                sub_10BF70();
                v74 = 0x746867694CLL;
                goto LABEL_91;
              case 14:
                v60 = 0xE600000000000000;
                sub_10C224();
                break;
              case 15:
                v60 = 0xE700000000000000;
                sub_10BFBC();
                break;
              case 16:
                sub_10BD24();
                v62 = v70 & 0xFFFFFFFFFFFFLL | 0x4267000000000000;
                v71 = 1701536114;
                goto LABEL_85;
              case 17:
                sub_10BD24();
                v62 = v75 & 0xFFFFFFFFFFFFLL | 0x4C67000000000000;
                v71 = 1952999273;
LABEL_85:
                v60 = v71 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                break;
              case 18:
                sub_10BF5C();
                goto LABEL_104;
              case 19:
                v60 = 0xE700000000000000;
                sub_10BEA8();
                break;
              case 20:
                v60 = 0xE400000000000000;
                v62 = 1918985586;
                break;
              case 21:
                v60 = 0xE400000000000000;
                v62 = 1952540019;
                break;
              case 22:
                sub_10BED0();
                goto LABEL_101;
              case 23:
                sub_10BEBC();
LABEL_101:
                v60 = 0xEA00000000007265;
                break;
              case 24:
                v60 = 0xE600000000000000;
                sub_10C214();
                break;
              case 25:
                sub_10C00C();
                v60 = 1701144663;
LABEL_83:
                v74 = v60 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
LABEL_91:
                v60 = v74 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                break;
              case 26:
                v62 = 0xD000000000000013;
                v60 = v79;
                break;
              case 27:
                v60 = 0xE700000000000000;
                sub_10C034();
                break;
              case 28:
                v76 = 1818845556;
LABEL_103:
                v62 = v76 | 0x6867694C00000000;
LABEL_104:
                v60 = 0xE900000000000074;
                break;
              case 29:
                v60 = 0xE500000000000000;
                sub_10C184();
                break;
              case 30:
                v60 = 0xE500000000000000;
                sub_10C1E4();
                break;
              case 32:
                sub_10BEE4();
                sub_10C0DC();
                v60 = v77 - 1540;
                break;
              case 33:
                v60 = 0xE700000000000000;
                sub_EAAF0();
                break;
              case 34:
                v60 = 0xE600000000000000;
                sub_10C154();
                break;
              case 35:
                v60 = 0xE600000000000000;
                sub_10C144();
                break;
              default:
                break;
            }

            if (v63 == v62 && v61 == v60)
            {
            }

            else
            {
              sub_10C0E8(v63, v58, v62);
              sub_10C428();
            }

            goto LABEL_115;
          }
        }
      }

      while (1)
      {
        v47 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          __break(1u);
          JUMPOUT(0x10140CLL);
        }

        if (v47 >= v43)
        {
          break;
        }

        v46 = *(v38 + 56 + 8 * v47);
        ++v45;
        if (v46)
        {
          v45 = v47;
          goto LABEL_19;
        }
      }
    }
  }

LABEL_115:
  sub_10C3A8();
}

uint64_t sub_10152C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_169724();
  sub_9F48();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + 16);
  if (v14)
  {
    v15 = sub_1697C4();
    sub_10AEC(v15);
    v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v32 = v10 + 16;
    v20 = *(v19 + 72);
    v31 = a4;
    v28[2] = v18;
    v29 = v14;
    v28[1] = v20;
    while (2)
    {
      v30 = v16 + 1;
      result = sub_169764();
      v22 = result;
      v23 = 0;
      v33 = *(result + 16);
      while (v33 != v23)
      {
        if (v23 >= *(v22 + 16))
        {
          __break(1u);
          return result;
        }

        sub_10BDEC();
        (*(v10 + 16))(v13, v22 + v24 + *(v10 + 72) * v23, v8);
        if (sub_169714() == a1 && v25 == a2)
        {

LABEL_16:

          a4 = v31;
          (*(v10 + 32))(v31, v13, v8);
          v27 = 0;
          return sub_5370(a4, v27, 1, v8);
        }

        sub_16AE54();
        sub_93EF4();
        if (a2)
        {
          goto LABEL_16;
        }

        result = (*(v10 + 8))(v13, v8);
        ++v23;
      }

      v27 = 1;
      v16 = v30;
      a4 = v31;
      if (v30 != v29)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v27 = 1;
  }

  return sub_5370(a4, v27, 1, v8);
}

void *sub_1017A4(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v3 = sub_169724();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v39 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = v30 - v8;
  v31 = *(a2 + 16);
  if (!v31)
  {
    return _swiftEmptyArrayStorage;
  }

  v36 = v7;
  v10 = 0;
  v11 = 0;
  v12 = *(sub_1697C4() - 8);
  v30[2] = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v37 = v4 + 16;
  v38 = (v4 + 8);
  v34 = (v4 + 32);
  v30[1] = *(v12 + 72);
  v41 = _swiftEmptyArrayStorage;
  v30[0] = v4;
  do
  {
    v13 = sub_169764();
    v14 = *(v13 + 16);
    if (v14)
    {
      v32 = v13;
      v33 = v10;
      v35 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v15 = v13 + v35;
      v16 = *(v4 + 72);
      v17 = *(v4 + 16);
      v18 = v36;
      do
      {
        v42 = v14;
        v17(v9, v15, v18);
        v43[0] = sub_169714();
        v43[1] = v19;
        __chkstk_darwin(v43[0]);
        v30[-2] = v43;
        v20 = v11;
        v21 = v17;
        v22 = v18;
        v23 = sub_100D74(sub_D010, &v30[-4], v40);

        if (v23)
        {
          v21(v39, v9, v22);
          v17 = v21;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_1082E0(0, v41[2] + 1, 1, v41);
          }

          v11 = v20;
          v25 = v41[2];
          v24 = v41[3];
          if (v25 >= v24 >> 1)
          {
            v41 = sub_1082E0((v24 > 1), v25 + 1, 1, v41);
          }

          v26 = v36;
          (*v38)(v9, v36);
          v27 = v41;
          v41[2] = v25 + 1;
          v28 = v27 + v35 + v25 * v16;
          v18 = v26;
          (*v34)(v28, v39, v26);
        }

        else
        {
          (*v38)(v9, v22);
          v18 = v22;
          v17 = v21;
          v11 = v20;
        }

        v15 += v16;
        v14 = v42 - 1;
      }

      while (v42 != 1);

      v4 = v30[0];
      v10 = v33;
    }

    else
    {
    }

    ++v10;
  }

  while (v10 != v31);
  return v41;
}

void *sub_101B48(uint64_t a1)
{
  v2 = sub_169724();
  v48 = *(v2 - 8);
  __chkstk_darwin(v2);
  v44 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1697C4();
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v10 = *(v5 + 16);
    v9 = v5 + 16;
    v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v46 = *(v9 + 56);
    v47 = v10;
    v45 = (v9 - 8);
    v49 = _swiftEmptyArrayStorage;
    while (1)
    {
      v12 = v2;
      v13 = v4;
      v14 = v9;
      (v47)(v7, v11, v4);
      v15 = sub_169764();
      v16 = *(v15 + 16);
      result = v49;
      v18 = v49[2];
      v19 = v18 + v16;
      if (__OFADD__(v18, v16))
      {
        break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v20 = v49;
      if (!result || v19 > v49[3] >> 1)
      {
        if (v18 <= v19)
        {
          v21 = v18 + v16;
        }

        else
        {
          v21 = v18;
        }

        result = sub_1082E0(result, v21, 1, v49);
        v20 = result;
      }

      v2 = v12;
      v22 = *(v15 + 16);
      v49 = v20;
      if (v22)
      {
        if ((v20[3] >> 1) - v20[2] < v16)
        {
          goto LABEL_29;
        }

        swift_arrayInitWithCopy();

        if (v16)
        {
          v23 = v49[2];
          v24 = __OFADD__(v23, v16);
          v25 = v23 + v16;
          if (v24)
          {
            goto LABEL_30;
          }

          v49[2] = v25;
        }
      }

      else
      {

        if (v16)
        {
          goto LABEL_28;
        }
      }

      v4 = v13;
      (*v45)(v7, v13);
      v11 += v46;
      --v8;
      v9 = v14;
      if (!v8)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v49 = _swiftEmptyArrayStorage;
LABEL_19:
    v26 = v49[2];
    if (v26)
    {
      v27 = v49 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
      v28 = *(v48 + 72);
      v46 = *(v48 + 16);
      v47 = v28;
      v48 += 16;
      v29 = (v48 - 8);
      v30 = 0xE100000000000000;
      v31 = 91;
      v32 = v44;
      do
      {
        v46(v32, v27, v2);
        v33 = sub_169704();
        if (v34)
        {
          v35 = v33;
          v36 = v34;
          v50 = sub_169714();
          v51 = v37;
          v52._countAndFlagsBits = 8250;
          v52._object = 0xE200000000000000;
          sub_16A744(v52);
          v53._countAndFlagsBits = v35;
          v53._object = v36;
          sub_16A744(v53);

          v54._countAndFlagsBits = 8236;
          v54._object = 0xE200000000000000;
          sub_16A744(v54);
          v38 = v50;
          v39 = v51;
          v50 = v31;
          v51 = v30;

          v55._countAndFlagsBits = v38;
          v55._object = v39;
          sub_16A744(v55);

          v31 = v50;
          v30 = v51;
        }

        (*v29)(v32, v2);
        v27 = &v47[v27];
        --v26;
      }

      while (v26);

      v40 = v31;
    }

    else
    {

      v30 = 0xE100000000000000;
      v40 = 91;
    }

    sub_12B3C4(2, v40, v30);
    v41 = sub_16A6D4();
    v43 = v42;

    v50 = v41;
    v51 = v43;

    v56._countAndFlagsBits = 93;
    v56._object = 0xE100000000000000;
    sub_16A744(v56);

    return v50;
  }

  return result;
}

uint64_t sub_101F70(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  while (v2 != v1)
  {
    sub_1697C4();
    v3 = sub_169764();
    sub_102040(v3);

    ++v1;
  }

  return result;
}

uint64_t sub_102188()
{
  result = *(v1 + 56);
  if (result == 6)
  {
    sub_10C110();
    sub_169CF4();
    LODWORD(result) = sub_81248();
    if (result == 6)
    {
      result = 5;
    }

    else
    {
      result = result;
    }

    *(v0 + 56) = result;
  }

  return result;
}

uint64_t sub_10226C()
{
  result = *(v0 + 80);
  if (result == 4)
  {
    result = sub_102298();
    *(v0 + 80) = result;
  }

  return result;
}

uint64_t sub_102298()
{
  v0 = sub_5758(&qword_1ED140, &qword_178228);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  sub_1416D0();
  if (!v3)
  {
    return 3;
  }

  sub_10152C(0xD000000000000010, 0x800000000017EE80, v3, v2);

  v4 = sub_169724();
  if (sub_9E2C(v2, 1, v4) == 1)
  {
    sub_109A0(v2, &qword_1ED140, &qword_178228);
    return 3;
  }

  sub_169704();
  v7 = v6;
  (*(*(v4 - 8) + 8))(v2, v4);
  v5 = 3;
  if (v7)
  {
    v8 = sub_824A4();
    if (v8 == 4)
    {
      return 3;
    }

    else
    {
      return v8;
    }
  }

  return v5;
}

uint64_t sub_1023F8()
{
  result = *(v1 + 81);
  if (result == 21)
  {
    sub_10C110();
    sub_169CE4();
    LODWORD(result) = sub_81354();
    if (result == 21)
    {
      result = 20;
    }

    else
    {
      result = result;
    }

    *(v0 + 81) = result;
  }

  return result;
}

uint64_t sub_102440()
{
  v1 = *(v0 + 82);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_102474(v0);
    *(v0 + 82) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_102474(uint64_t a1)
{
  v1 = *(sub_104B2C() + 2);

  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v3 = sub_103A44();
    sub_82168(v3, v4, v5);
    if (v7 == 0x6E776F6E6B6E75 && v6 == 0xE700000000000000)
    {

      v2 = 0;
    }

    else
    {
      v9 = sub_16AE54();

      v2 = v9 ^ 1;
    }
  }

  return v2 & 1;
}

uint64_t sub_102510()
{
  v1 = *(v0 + 83);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_102544(v0);
    *(v0 + 83) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_102544(uint64_t a1)
{
  v2 = sub_103D74();
  if (sub_83C1C(v2) == 0x656D756C6F76 && v3 == 0xE600000000000000)
  {

    v5 = 1;
  }

  else
  {
    v5 = sub_16AE54();
  }

  if (!sub_104098())
  {

LABEL_14:
    if (v5)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  v6 = sub_16AE54();

  if (v6)
  {
    goto LABEL_14;
  }

  if (*(a1 + 129) && *(a1 + 129) == 1)
  {

    if ((v5 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_15:
    v7 = 1;
    return v7 & 1;
  }

  v8 = sub_16AE54();

  if (v5 & v8)
  {
    goto LABEL_15;
  }

LABEL_17:
  if (sub_104224())
  {
    v7 = sub_16AE54();
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t sub_102714()
{
  v1 = *(v0 + 84);
  if (v1 == 2)
  {
    v2 = sub_10A224(&off_1D0C18);
    v3 = sub_103570();
    sub_96FC(v3, v2);
    sub_48350();
    *(v0 + 84) = 0;
  }

  return v1 & 1;
}

uint64_t sub_102770()
{
  v1 = *(v0 + 85);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_1027A4();
    *(v0 + 85) = v1 & 1;
  }

  return v1 & 1;
}

BOOL sub_1027A4()
{
  v0 = sub_1697F4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_5758(&qword_1ED158, &qword_178248);
  __chkstk_darwin(v4 - 8);
  v6 = &v13[-v5];
  sub_1416D0();
  if (v7)
  {
    v8 = v7;
    sub_5758(&qword_1E5F70, &unk_16F3F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_16D9A0;
    *(inited + 32) = 0x74694B656D6F48;
    *(inited + 40) = 0xE700000000000000;
    (*(v1 + 104))(v3, enum case for UsoIdentifier.NluComponent.spanMatchSiriVocab(_:), v0);
    sub_1697E4();
    (*(v1 + 8))(v3, v0);
    v10 = sub_1697D4();
    __chkstk_darwin(v10);
    *&v13[-16] = v6;
    *&v13[-8] = inited;
    v11 = sub_100CA8(sub_10BB24, &v13[-32], v8);
    swift_setDeallocating();
    sub_EFFB0();

    sub_109A0(v6, &qword_1ED158, &qword_178248);
  }

  else
  {
    return 0;
  }

  return v11;
}

BOOL sub_1029E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v65 = a2;
  v64 = sub_5758(&qword_1ED160, &unk_178250);
  __chkstk_darwin(v64);
  v66 = v58 - v4;
  v5 = sub_169DB4();
  v67 = *(v5 - 8);
  v68 = v5;
  __chkstk_darwin(v5);
  v7 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_5758(&qword_1E9B28, &unk_173710);
  __chkstk_darwin(v8 - 8);
  v10 = v58 - v9;
  v72 = sub_169DD4();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_5758(&qword_1ED158, &qword_178248);
  v13 = __chkstk_darwin(v12 - 8);
  v62 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v63 = v58 - v16;
  __chkstk_darwin(v15);
  v18 = v58 - v17;
  v19 = sub_1697F4();
  v74 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v60 = v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v73 = v58 - v22;
  v23 = sub_5758(&qword_1ED168, &qword_178260);
  __chkstk_darwin(v23 - 8);
  v25 = v58 - v24;
  v26 = sub_169754();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a1;
  sub_169784();
  if (sub_9E2C(v25, 1, v26) != 1)
  {
    (*(v27 + 32))(v29, v25, v26);
    sub_169744();
    sub_1697D4();
    if (sub_9E2C(v18, 1, v19) == 1)
    {
      (*(v27 + 8))(v29, v26);
      v30 = &qword_1ED158;
      v31 = &qword_178248;
      v32 = v18;
      goto LABEL_7;
    }

    v59 = v27;
    v34 = v73;
    v33 = v74;
    v58[0] = *(v74 + 32);
    v58[1] = v74 + 32;
    (v58[0])(v73, v18, v19);
    sub_1697B4();
    v35 = v72;
    if (sub_9E2C(v10, 1, v72) == 1)
    {
      (*(v33 + 8))(v34, v19);
      (*(v59 + 8))(v29, v26);
      v30 = &qword_1E9B28;
      v31 = &unk_173710;
      v32 = v10;
      goto LABEL_7;
    }

    v38 = v69;
    (*(v70 + 32))(v69, v10, v35);
    sub_169D84();
    v39 = sub_169D64();
    v40 = v68;
    v41 = *(v67 + 8);
    v41(v7, v68);
    if ((v39 & 1) == 0)
    {
      sub_169D74();
      v51 = sub_169D64();
      v41(v7, v40);
      if (v51 & 1) == 0 || (sub_169D94(), v52 = sub_169D64(), v41(v7, v40), (v52))
      {
        (*(v70 + 8))(v38, v72);
        (*(v74 + 8))(v73, v19);
        (*(v59 + 8))(v29, v26);
        return 0;
      }
    }

    v42 = v63;
    (*(v74 + 16))(v63, v73, v19);
    sub_5370(v42, 0, 1, v19);
    v43 = *(v64 + 48);
    v44 = v66;
    sub_D4DC4(v42, v66, &qword_1ED158, &qword_178248);
    sub_D4DC4(v65, v44 + v43, &qword_1ED158, &qword_178248);
    v45 = sub_9E2C(v44, 1, v19);
    v46 = v59;
    if (v45 == 1)
    {
      sub_109A0(v42, &qword_1ED158, &qword_178248);
      v47 = sub_9E2C(v44 + v43, 1, v19);
      v48 = v69;
      v49 = v74;
      if (v47 == 1)
      {
        v50 = sub_109A0(v44, &qword_1ED158, &qword_178248);
LABEL_21:
        __chkstk_darwin(v50);
        v58[-2] = v71;
        v36 = sub_100D74(sub_10BB44, &v58[-4], v61);
        goto LABEL_23;
      }
    }

    else
    {
      v53 = v62;
      sub_D4DC4(v44, v62, &qword_1ED158, &qword_178248);
      if (sub_9E2C(v44 + v43, 1, v19) != 1)
      {
        v54 = v44 + v43;
        v55 = v60;
        (v58[0])(v60, v54, v19);
        sub_10BB64();
        LODWORD(v68) = sub_16A634();
        v56 = v74;
        v57 = *(v74 + 8);
        v57(v55, v19);
        sub_109A0(v42, &qword_1ED158, &qword_178248);
        v57(v62, v19);
        v49 = v56;
        v50 = sub_109A0(v66, &qword_1ED158, &qword_178248);
        v48 = v69;
        if ((v68 & 1) == 0)
        {
          v36 = 0;
          goto LABEL_23;
        }

        goto LABEL_21;
      }

      sub_109A0(v42, &qword_1ED158, &qword_178248);
      v49 = v74;
      (*(v74 + 8))(v53, v19);
      v48 = v69;
    }

    sub_109A0(v44, &qword_1ED160, &unk_178250);
    v36 = 0;
LABEL_23:
    (*(v70 + 8))(v48, v72);
    (*(v49 + 8))(v73, v19);
    (*(v46 + 8))(v29, v26);
    return v36;
  }

  v30 = &qword_1ED168;
  v31 = &qword_178260;
  v32 = v25;
LABEL_7:
  sub_109A0(v32, v30, v31);
  return 0;
}

uint64_t sub_10331C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = sub_169774();
  if (v4)
  {
    if (v1 == v3 && v4 == v2)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_16AE54();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1033A0()
{
  v2 = *(v1 + 86);
  if (v2 == 2)
  {
    sub_10C110();
    sub_13FBBC();
    v4 = v3;
    LOBYTE(v2) = v3 != 0;
    if (v3)
    {
    }

    *(v0 + 86) = v4 != 0;
  }

  return v2 & 1;
}

void sub_10340C()
{
  sub_10C274();
  v1 = v0;
  if (*(v0 + 96) == 1)
  {
    sub_13FBBC();
    if (v4)
    {
      v5 = v2;
      v6 = v3;
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    *(v1 + 88) = v5;
    *(v1 + 96) = v6;

    sub_10C234();
  }

  v7 = sub_37740();
  sub_10BB10(v7, v8);
  sub_10C288();
}

void sub_10349C()
{
  sub_10C274();
  if (*(v0 + 112) == 1)
  {
    sub_141EAC();
    *(v0 + 104) = v1;
    *(v0 + 112) = v2;

    sub_10C234();
  }

  v3 = sub_37740();
  sub_10BB10(v3, v4);
  sub_10C288();
}

uint64_t sub_103514()
{
  v2 = *(v1 + 120);
  if (v2 == 2)
  {
    sub_10C110();
    sub_1422D8();
    v3 = sub_11B48C();

    LOBYTE(v2) = v3 != 0;
    *(v0 + 120) = v3 != 0;
  }

  return v2 & 1;
}

uint64_t sub_103570()
{
  v1 = v0;
  v2 = *(v0 + 121);
  if (v2 == 14)
  {
    sub_142688();
    v2 = sub_1035E4(v3, 0xD000000000000018, 0x800000000017EE00);

    *(v1 + 121) = v2;
  }

  return v2;
}

uint64_t sub_1035E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = sub_169724();
  sub_9F48();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_A128();
  v11 = v9 - v10;
  v13 = __chkstk_darwin(v12);
  v42 = &v38[-v14];
  __chkstk_darwin(v13);
  v16 = &v38[-v15];
  if (!a1)
  {
    return 6;
  }

  v45 = *(a1 + 16);
  if (!v45)
  {
    return 6;
  }

  v17 = sub_1697C4();
  sub_10AEC(v17);
  v44 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v47 = v7 + 16;
  v20 = (v7 + 8);
  v40 = (v7 + 32);
  v43 = *(v21 + 72);
  v39 = 14;
  v41 = v16;
  while (2)
  {
    v46 = v18 + 1;
    result = sub_169764();
    v23 = result;
    v24 = 0;
    v25 = *(result + 16);
    v26 = v48;
    while (1)
    {
      if (v25 == v24)
      {

        goto LABEL_19;
      }

      if (v24 >= *(v23 + 16))
      {
        __break(1u);
        return result;
      }

      sub_10BDEC();
      (*(v7 + 16))(v11, v23 + v27 + *(v7 + 72) * v24, v26);
      if (sub_169714() == a2 && v28 == a3)
      {

        goto LABEL_16;
      }

      v30 = a2;
      v31 = a3;
      v32 = sub_16AE54();

      if (v32)
      {
        break;
      }

      v26 = v48;
      result = (*v20)(v11, v48);
      ++v24;
      a3 = v31;
      a2 = v30;
    }

    a3 = v31;
    a2 = v30;
LABEL_16:
    v33 = v48;
    v34 = *v40;
    v35 = v42;
    (*v40)(v42, v11, v48);
    v36 = v41;
    v34(v41, v35, v33);
    sub_169704();
    if (v37)
    {
      v39 = sub_82B58();
    }

    (*v20)(v36, v33);
LABEL_19:
    v18 = v46;
    if (v46 != v45)
    {
      continue;
    }

    break;
  }

  result = v39;
  if (v39 == 14)
  {
    return 6;
  }

  return result;
}

uint64_t sub_103904()
{
  v2 = *(v1 + 122);
  if (v2 == 2)
  {
    sub_10C110();
    sub_142E48();
    *(v0 + 122) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_103940(uint64_t a1)
{
  v2 = *(v1 + 123);
  if (v2 == 2)
  {
    v3 = sub_104B2C();
    sub_96E4(4, v3);
    sub_48350();
    *(v1 + 123) = 0;
  }

  return v2 & 1;
}

uint64_t sub_103994(uint64_t a1)
{
  v2 = *(v1 + 124);
  if (v2 == 2)
  {
    if (sub_103940(a1))
    {
      v3 = *(sub_104B2C() + 2);

      LOBYTE(v2) = v3 == 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }

    *(v1 + 124) = v2;
  }

  return v2 & 1;
}

uint64_t sub_1039E8()
{
  v1 = *(v0 + 125);
  if (v1 == 2)
  {
    v2 = sub_10934C(&off_1D1590);
    v3 = sub_103A44();
    sub_96CC(v3, v2);
    sub_48350();
    *(v0 + 125) = 0;
  }

  return v1 & 1;
}

uint64_t sub_103A44()
{
  result = *(v0 + 126);
  if (result == 29)
  {
    result = sub_103A70();
    *(v0 + 126) = result;
  }

  return result;
}

uint64_t sub_103A70()
{
  v0 = sub_5758(&qword_1ED140, &qword_178228);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  sub_142688();
  if (v3)
  {
    sub_10152C(0xD000000000000017, 0x800000000017EDE0, v3, v2);

    v4 = sub_169724();
    if (sub_9E2C(v2, 1, v4) == 1)
    {
      sub_109A0(v2, &qword_1ED140, &qword_178228);
    }

    else
    {
      sub_169704();
      v6 = v5;
      (*(*(v4 - 8) + 8))(v2, v4);
      if (v6)
      {
        goto LABEL_6;
      }
    }
  }

  sub_103BEC();
  if (!v7)
  {
    return 17;
  }

LABEL_6:
  LODWORD(result) = sub_82120();
  if (result == 29)
  {
    return 17;
  }

  else
  {
    return result;
  }
}

uint64_t sub_103BEC()
{
  v0 = sub_5758(&qword_1ED140, &qword_178228);
  v1 = sub_D414(v0);
  __chkstk_darwin(v1);
  v3 = &v12 - v2;
  sub_142688();
  if (!v4)
  {
    return 0;
  }

  sub_10152C(0xD000000000000010, 0x800000000018E430, v4, v3);

  v5 = sub_169724();
  if (sub_9E2C(v3, 1, v5) == 1)
  {
    sub_109A0(v3, &qword_1ED140, &qword_178228);
    return 0;
  }

  v6 = sub_169704();
  v8 = v7;
  (*(*(v5 - 8) + 8))(v3, v5);
  if (!v8)
  {
    return 0;
  }

  v9 = 0x656D756C6F76;
  if (v6 != 0x656D756C6F76 || v8 != 0xE600000000000000)
  {
    if ((sub_16AE54() & 1) == 0)
    {

      return 0;
    }

    return v6;
  }

  return v9;
}