uint64_t JSApplication.SharedWithYouMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_AB3430();
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  result = type metadata accessor for JSApplication.SharedWithYouMetadata(0);
  v4 = a1 + *(result + 20);
  *v4 = 0;
  *(v4 + 4) = 1;
  return result;
}

MusicJSCore::JSApplication::ActivationMethod_optional __swiftcall JSApplication.ActivationMethod.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_D4F810;
  v6._object = object;
  v3 = sub_ABB140(v2, v6);

  if (v3 == 1)
  {
    v4.value = MusicJSCore_JSApplication_ActivationMethod_openURL;
  }

  else
  {
    v4.value = MusicJSCore_JSApplication_ActivationMethod_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t JSApplication.ActivationMethod.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x4C52556E65706FLL;
  }

  else
  {
    return 0x72616C75676572;
  }
}

uint64_t sub_A127B4(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x4C52556E65706FLL;
  }

  else
  {
    v2 = 0x72616C75676572;
  }

  if (*a2)
  {
    v3 = 0x4C52556E65706FLL;
  }

  else
  {
    v3 = 0x72616C75676572;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_ABB3C0();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_A1283C()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

double sub_A128B4(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

Swift::Int sub_A12910(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

void sub_A12984(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_D4F810;
  v7._object = v3;
  v5 = sub_ABB140(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_A129E4(uint64_t *a1@<X8>)
{
  v2 = 0x72616C75676572;
  if (*v1)
  {
    v2 = 0x4C52556E65706FLL;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t *JSApplication.init(isDeployedScript:selectedTabIdentifier:)(int a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v66 = a2;
  v67 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v7 = &v62[-v6];
  v8 = sub_AB7CC0();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v62[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v3 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_scriptingMessageDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_globalMessagePresentationDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_isPrivacyDisclaimerPresented) = 0;
  *(v3 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyDisclaimerDismissalCompletionHandlers) = _swiftEmptyArrayStorage;
  v12 = (v3 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_selectedTabIdentifier);
  *v12 = 0;
  v12[1] = 0;
  *(v3 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_applicationMessageWillPresent) = 2;
  v13 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_sharedWithYouMetadata;
  v14 = type metadata accessor for JSApplication.SharedWithYouMetadata(0);
  (*(*(v14 - 8) + 56))(v3 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_asyncInitializer;
  type metadata accessor for JSBridge.AsynchronousInitializer();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = _swiftEmptyArrayStorage;
  *(v3 + v15) = v16;
  v17 = v3 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  v18 = v3 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingInitiateSubscriptionContext;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  v19 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingOpenURLContexts;
  *(v3 + v19) = sub_99E3E0(_swiftEmptyArrayStorage);
  v20 = v3 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext;
  *(v20 + 32) = 0;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  v21 = v3 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0;
  v22 = v3 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingApplicationMessageSegueContext;
  v23 = sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0;
  *v11 = sub_ABA150();
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  LOBYTE(v22) = sub_AB7CF0();
  v25 = *(v9 + 8);
  v24 = v9 + 8;
  v25(v11, v8);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_28;
  }

  v63 = a1;
  v64 = v23;
  v26 = [objc_opt_self() mainBundle];
  v27 = [v26 infoDictionary];

  v65 = v7;
  if (!v27 || (v28 = sub_AB8FF0(), v27, !v28))
  {
    v33 = v12;
    v31 = 0;
    v32 = 0xE000000000000000;
    goto LABEL_16;
  }

  if (!*(v28 + 16))
  {
    goto LABEL_10;
  }

  v29 = sub_2EBF88(0xD000000000000012, 0x8000000000B6C180);
  if ((v30 & 1) == 0)
  {

    goto LABEL_10;
  }

  sub_808B0(*(v28 + 56) + 32 * v29, &v70);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v31 = 0;
    v32 = 0xE000000000000000;
    goto LABEL_11;
  }

  v31 = v68;
  v32 = v69;
LABEL_11:
  v33 = v12;
  if (*(v28 + 16) && (v34 = sub_2EBF88(0xD00000000000001ALL, 0x8000000000B6C160), (v35 & 1) != 0))
  {
    sub_808B0(*(v28 + 56) + 32 * v34, &v70);

    if (swift_dynamicCast())
    {
      v36 = v68;
      v37 = v69;
      goto LABEL_17;
    }
  }

  else
  {
  }

LABEL_16:
  v36 = 0;
  v37 = 0xE000000000000000;
LABEL_17:
  v38 = (v4 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_identifier);
  *v38 = v31;
  v38[1] = v32;
  v39 = (v4 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_version);
  *v39 = v36;
  v39[1] = v37;
  v40 = v31;
  if (v67)
  {
    v41 = v66;
  }

  else
  {
    v41 = 0x7972617262696CLL;
  }

  if (v67)
  {
    v42 = v67;
  }

  else
  {
    v42 = 0xE700000000000000;
  }

  swift_beginAccess();
  *v33 = v41;
  v33[1] = v42;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580, &qword_AFBB60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85D0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = v40;
  v44 = v33;
  *(inited + 56) = v32;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x6E6F6973726576;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = v36;
  *(inited + 104) = v37;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD000000000000010;
  *(inited + 136) = 0x8000000000B81530;
  v45 = objc_allocWithZone(NSNumber);
  v46 = [v45 initWithBool:v63 & 1];
  v47 = sub_13C80(0, &qword_DF1300, NSNumber_ptr);
  *(inited + 144) = v46;
  *(inited + 168) = v47;
  *(inited + 176) = 0xD000000000000015;
  *(inited + 184) = 0x8000000000B81550;
  v48 = v33[1];
  if (v48)
  {
    v49 = *v44;
    *(&v71 + 1) = &type metadata for String;
    *&v70 = v49;
    *(&v70 + 1) = v48;
    sub_9ACFC(&v70, (inited + 192));
  }

  else
  {
    v70 = 0u;
    v71 = 0u;
    v50 = [objc_allocWithZone(NSNull) init];
    *(inited + 216) = sub_13C80(0, &qword_E27CD0, NSNull_ptr);
    *(inited + 192) = v50;
    if (*(&v71 + 1))
    {
      sub_12E1C(&v70, &unk_DE8E40, &unk_AF8050);
    }
  }

  v51 = sub_97420(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0, &qword_AFA4B0);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840, &qword_AF9020);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_AF4EC0;
  *(v52 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680, &qword_AF7B70);
  *(v52 + 32) = v51;
  v24 = 1;
  *&v70 = v52;
  *(&v70 + 1) = 1;
  v72 = 0;
  v71 = 0uLL;
  v73 = 0;
  v53 = JSObject.init(type:)(&v70);
  v54 = sub_AB9990();
  v55 = v65;
  (*(*(v54 - 8) + 56))(v65, 1, 1, v54);
  v56 = swift_allocObject();
  v56[2] = 0;
  v56[3] = 0;
  v56[4] = v53;
  v12 = v53;
  sub_DBDC8(0, 0, v55, &unk_B40B08, v56);

  if (qword_E23F48 != -1)
  {
    goto LABEL_30;
  }

LABEL_28:
  v57 = static JSBridge.shared;
  v58 = swift_allocObject();
  *(v58 + 16) = 0x746163696C707041;
  *(v58 + 24) = 0xEB000000006E6F69;
  *(v58 + 32) = v12;
  *(v58 + 40) = v57;
  *(v58 + 48) = v24;
  v59 = v12;
  v60 = v57;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9B3204, v58);

  return v59;
}

uint64_t sub_A132A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a4;
  v5 = sub_AB7C10();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v6 = sub_AB7C50();
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v7 = *(type metadata accessor for JSApplication.SharedWithYouMetadata(0) - 8);
  v4[23] = v7;
  v4[24] = *(v7 + 64);
  v4[25] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[26] = v8;
  v9 = swift_task_alloc();
  v4[27] = v9;
  *v9 = v4;
  v9[1] = sub_A13468;

  return sub_9B82E4(v8);
}

uint64_t sub_A13468()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_A13804;
  }

  else
  {
    v2 = sub_A1357C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_A1357C()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[23];
  v16 = v0[22];
  v4 = v0[19];
  v19 = v0[21];
  v20 = v0[20];
  v5 = v0[17];
  v18 = v0[18];
  v6 = v0[16];
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v17 = sub_ABA150();
  sub_9B8CCC(v1, v2, v7);
  v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  sub_9B8D30(v2, v9 + v8, v10);
  v0[12] = sub_A19B88;
  v0[13] = v9;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_1B5EB4;
  v0[11] = &block_descriptor_114_5;
  v11 = _Block_copy(v0 + 8);
  v12 = v6;
  sub_AB7C30();
  v0[15] = _swiftEmptyArrayStorage;
  sub_A19A2C(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
  sub_D1010();
  sub_ABABB0();
  sub_ABA160();
  _Block_release(v11);

  (*(v18 + 8))(v4, v5);
  v13.n128_f64[0] = (*(v19 + 8))(v16, v20);
  sub_9B8D94(v1, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_A13804()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v13 = v0[20];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[16];
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v12 = sub_ABA150();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v0[6] = sub_A19A24;
  v0[7] = v7;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1B5EB4;
  v0[5] = &block_descriptor_107;
  v8 = _Block_copy(v0 + 2);
  v9 = v6;
  sub_AB7C30();
  v0[14] = _swiftEmptyArrayStorage;
  sub_A19A2C(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
  sub_D1010();
  sub_ABABB0();
  sub_ABA160();
  _Block_release(v8);

  (*(v5 + 8))(v3, v4);
  (*(v2 + 8))(v1, v13);

  v10 = v0[1];

  return v10();
}

uint64_t sub_A13A50(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26A00, &unk_B40B10);
  __chkstk_darwin();
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin();
  v8 = &v13[-v7];
  sub_9B8CCC(a2, &v13[-v7], v6);
  v9 = type metadata accessor for JSApplication.SharedWithYouMetadata(0);
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_sharedWithYouMetadata;
  swift_beginAccess();
  sub_15F84(a1 + v10, v5, &qword_E26A00, &unk_B40B10);
  swift_beginAccess();
  sub_A19254(v8, a1 + v10);
  swift_endAccess();
  sub_A184FC(v5, v11);
  sub_12E1C(v5, &qword_E26A00, &unk_B40B10);
  return sub_12E1C(v8, &qword_E26A00, &unk_B40B10);
}

uint64_t JSApplication.sharedWithYouMetadata.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26A00, &unk_B40B10);
  __chkstk_darwin();
  v4 = &v8[-v3];
  v5 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_sharedWithYouMetadata;
  swift_beginAccess();
  sub_15F84(v1 + v5, v4, &qword_E26A00, &unk_B40B10);
  swift_beginAccess();
  sub_A19254(a1, v1 + v5);
  swift_endAccess();
  sub_A184FC(v4, v6);
  sub_12E1C(a1, &qword_E26A00, &unk_B40B10);
  return sub_12E1C(v4, &qword_E26A00, &unk_B40B10);
}

uint64_t sub_A13CDC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26A00, &unk_B40B10);
  __chkstk_darwin();
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v12[-v4];
  v6 = sub_AB3430();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = type metadata accessor for JSApplication.SharedWithYouMetadata(0);
  v8 = &v5[*(v7 + 20)];
  *v8 = 0;
  v8[4] = 1;
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  v9 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_sharedWithYouMetadata;
  swift_beginAccess();
  sub_15F84(a1 + v9, v3, &qword_E26A00, &unk_B40B10);
  swift_beginAccess();
  sub_A19254(v5, a1 + v9);
  swift_endAccess();
  sub_A184FC(v3, v10);
  sub_12E1C(v3, &qword_E26A00, &unk_B40B10);
  return sub_12E1C(v5, &qword_E26A00, &unk_B40B10);
}

void sub_A13EA0()
{
  sub_176DC(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_scriptingMessageDelegate);
  sub_176DC(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_globalMessagePresentationDelegate);

  sub_12E1C(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_sharedWithYouMetadata, &qword_E26A00, &unk_B40B10);

  sub_9EB4FC(*(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext + 8), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext + 16), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext + 24), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext + 32));
  sub_9EB4FC(*(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingInitiateSubscriptionContext), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingInitiateSubscriptionContext + 8), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingInitiateSubscriptionContext + 16), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingInitiateSubscriptionContext + 24), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingInitiateSubscriptionContext + 32));

  sub_9EB4FC(*(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext + 8), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext + 16), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext + 24), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext + 32));
  sub_9EB4FC(*(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext + 8), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext + 16), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext + 24), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext + 32));
  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingApplicationMessageSegueContext);
  v2 = *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingApplicationMessageSegueContext + 8);
  v3 = *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingApplicationMessageSegueContext + 16);
  v4 = *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingApplicationMessageSegueContext + 24);
  v5 = *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingApplicationMessageSegueContext + 32);

  sub_9EB4FC(v1, v2, v3, v4, v5);
}

id JSApplication.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext];
  if (*&v0[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext])
  {
    [*(v2 + 4) invalidate];
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 1);
  v5 = *(v2 + 2);
  v6 = *(v2 + 3);
  v7 = *(v2 + 4);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  sub_9EB4FC(v3, v4, v5, v6, v7);
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "dealloc");
}

void (*JSApplication.scriptingMessageDelegate.modify(uint64_t *a1))(uint64_t, char, __n128)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_scriptingMessageDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_A142D0;
}

double sub_A14338(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*JSApplication.globalMessagePresentationDelegate.modify(uint64_t *a1))(uint64_t, char, __n128)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_globalMessagePresentationDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_A19C3C;
}

double JSApplication.initiateOpenURL(_:sourceApplicationBundleIdentifier:referrerURL:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v41 = a2;
  v42 = a4;
  v45 = a1;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v12 = &v41 - v11;
  v13 = sub_AB3470();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v17 = sub_AB3440();
  v19 = v18;
  (*(v14 + 8))(v16, v13);
  v50[0] = a5;
  v50[1] = a6;
  v50[2] = 0;
  v50[3] = 0xE000000000000000;
  v50[4] = 0;
  v20 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingOpenURLContexts;
  swift_beginAccess();
  swift_retain_n();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v47[0] = *&v7[v20];
  *&v7[v20] = 0x8000000000000000;
  v43 = v17;
  sub_9A2FB0(v50, v17, v19, isUniquelyReferenced_nonNull_native);

  *&v7[v20] = *&v47[0];
  swift_endAccess();
  v22 = sub_97420(_swiftEmptyArrayStorage);
  if (a3)
  {
    v49 = &type metadata for String;
    *&v48 = v41;
    *(&v48 + 1) = a3;
    sub_9ACFC(&v48, v47);

    v23 = swift_isUniquelyReferenced_nonNull_native();
    v46 = v22;
    sub_9330C(v47, 0xD000000000000021, 0x8000000000B81570, v23);
    v22 = v46;
  }

  sub_15F84(v42, v12, &unk_DF2AE0, &qword_AFC930);
  v24 = sub_AB31C0();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v12, 1, v24) == 1)
  {
    sub_12E1C(v12, &unk_DF2AE0, &qword_AFC930);
  }

  else
  {
    v26 = _s10Foundation3URLV11MusicJSCoreE12JSSerializedSSvg_0();
    v28 = v27;
    (*(v25 + 8))(v12, v24);
    v49 = &type metadata for String;
    *&v48 = v26;
    *(&v48 + 1) = v28;
    sub_9ACFC(&v48, v47);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v46 = v22;
    sub_9330C(v47, 0x7265727265666572, 0xEB000000004C5255, v29);
    v22 = v46;
  }

  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v30 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840, &qword_AF9020);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_AF85D0;
  *(v31 + 56) = ObjectType;
  *(v31 + 32) = v7;
  v32 = v7;
  v33 = _s10Foundation3URLV11MusicJSCoreE12JSSerializedSSvg_0();
  *(v31 + 88) = &type metadata for String;
  *(v31 + 64) = v33;
  *(v31 + 72) = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680, &qword_AF7B70);
  *(v31 + 96) = v22;
  *(v31 + 152) = &type metadata for String;
  v36 = v43;
  *(v31 + 120) = v35;
  *(v31 + 128) = v36;
  *(v31 + 136) = v19;
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v37 = swift_allocObject();
  *(v37 + 16) = v31;
  *(v37 + 24) = _swiftEmptyArrayStorage;
  *(v37 + 32) = 0x6574616974696E69;
  *(v37 + 40) = 0xEF4C52556E65704FLL;
  *(v37 + 48) = v32;
  *(v37 + 56) = v30;
  *(v37 + 64) = 0;
  v38 = v32;
  v39 = v30;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v37);

  return result;
}

Swift::Void __swiftcall JSApplication.willEnterForeground(with:isBadged:)(MusicJSCore::JSApplication::ActivationMethod with, Swift::Bool isBadged)
{
  v3 = v2;
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v6 = sub_9A7534();
  v7 = [objc_opt_self() sharedApplication];
  v8 = swift_allocObject();
  *(v8 + 16) = with & 1;
  *(v8 + 17) = isBadged;
  *(v8 + 24) = v3;
  *(v8 + 32) = v6 & 1;
  v11[4] = sub_A192FC;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1B5EB4;
  v11[3] = &block_descriptor_265;
  v9 = _Block_copy(v11);
  v10 = v3;

  [v7 _performBlockAfterCATransactionCommits:v9];
  _Block_release(v9);
}

void sub_A14A7C(char a1, char a2, void *a3, char a4)
{
  v8 = sub_AB7CC0();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v12 = static JSBridge.shared;
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  *v11 = sub_ABA150();
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = sub_AB7CF0();
  (*(v9 + 8))(v11, v8);
  if (v13)
  {
    v14 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_shouldPrependRecordsBeforeCurrentSuspensionPoint;
    v15 = *(v12 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_shouldPrependRecordsBeforeCurrentSuspensionPoint);
    *(v12 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_shouldPrependRecordsBeforeCurrentSuspensionPoint) = 1;
    sub_A14C2C(a1 & 1, a2 & 1, a3);
    *(v12 + v14) = v15;
    if (a4)
    {
      sub_9A78D8();
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_A14C2C(char a1, char a2, void *a3)
{
  v6 = sub_97420(_swiftEmptyArrayStorage);
  v7 = 0x72616C75676572;
  if (a1)
  {
    v7 = 0x4C52556E65706FLL;
  }

  v18 = &type metadata for String;
  *&v17 = v7;
  *(&v17 + 1) = 0xE700000000000000;
  sub_9ACFC(&v17, v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_9330C(v16, 0xD000000000000010, 0x8000000000B814F0, isUniquelyReferenced_nonNull_native);
  v18 = &type metadata for Bool;
  LOBYTE(v17) = a2;
  sub_9ACFC(&v17, v16);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_9330C(v16, 0x6465676461427369, 0xE800000000000000, v9);
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v10 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840, &qword_AF9020);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_AF4EC0;
  *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680, &qword_AF7B70);
  *(v11 + 32) = v6;
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = _swiftEmptyArrayStorage;
  *(v12 + 32) = 0xD000000000000014;
  *(v12 + 40) = 0x8000000000B81B30;
  *(v12 + 48) = a3;
  *(v12 + 56) = v10;
  *(v12 + 64) = 0;
  v13 = a3;
  v14 = v10;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v12);

  return result;
}

double JSApplication.didBecomeActive(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v4 = &v2[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext];
  if (*&v2[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext])
  {
    [*(v4 + 4) invalidate];
    v5 = *v4;
    if (*v4)
    {

      v5(0);
    }
  }

  v6 = [objc_allocWithZone(NSUUID) init];
  v7 = [v6 UUIDString];

  v8 = sub_AB92A0();
  v10 = v9;

  v11 = objc_opt_self();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = v8;
  v13[4] = v10;
  aBlock[4] = sub_A193A0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1546C;
  aBlock[3] = &block_descriptor_23_6;
  v14 = _Block_copy(aBlock);

  v15 = [v11 scheduledTimerWithTimeInterval:0 repeats:v14 block:5.0];
  _Block_release(v14);
  v16 = *v4;
  v17 = *(v4 + 1);
  v19 = *(v4 + 2);
  v18 = *(v4 + 3);
  v30 = v3;
  v20 = *(v4 + 4);
  *v4 = a1;
  *(v4 + 1) = a2;
  v32 = v8;
  *(v4 + 2) = v8;
  *(v4 + 3) = v10;
  *(v4 + 4) = v15;

  v21 = v15;

  sub_9EB4FC(v16, v17, v19, v18, v20);
  v22 = sub_97420(_swiftEmptyArrayStorage);
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v23 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840, &qword_AF9020);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_AF8820;
  *(v24 + 56) = ObjectType;
  *(v24 + 32) = v30;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680, &qword_AF7B70);
  *(v24 + 64) = v22;
  *(v24 + 120) = &type metadata for String;
  *(v24 + 88) = v25;
  *(v24 + 96) = v32;
  *(v24 + 104) = v10;
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v26 + 24) = _swiftEmptyArrayStorage;
  *(v26 + 32) = 0xD000000000000016;
  *(v26 + 40) = 0x8000000000B815A0;
  *(v26 + 48) = v30;
  *(v26 + 56) = v23;
  *(v26 + 64) = 0;
  v27 = v30;
  v28 = v23;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v26);

  return result;
}

void sub_A151FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [a1 invalidate];
    v9 = &v8[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext];
    v10 = *&v8[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext];
    if (v10)
    {
      v11 = *(v9 + 1);
      v12 = *(v9 + 2);
      v14 = *(v9 + 3);
      v13 = *(v9 + 4);
      v15 = v12 == a3 && v14 == a4;
      if (v15 || (sub_ABB3C0() & 1) != 0)
      {
        *(v9 + 4) = 0;
        *v9 = 0u;
        *(v9 + 1) = 0u;
        v10(0);
      }

      else
      {
        sub_A199A0(v10, v11, v12, v14, v13);
      }

      v8 = v13;
    }
  }
}

Swift::Void __swiftcall JSApplication.willResignActive()()
{
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v1 = static JSBridge.shared;
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v2 = swift_allocObject();
  *(v2 + 16) = _swiftEmptyArrayStorage;
  *(v2 + 24) = _swiftEmptyArrayStorage;
  *(v2 + 32) = 0xD000000000000011;
  *(v2 + 40) = 0x8000000000B815C0;
  *(v2 + 48) = v0;
  *(v2 + 56) = v1;
  *(v2 + 64) = 0;
  v3 = v0;
  v4 = v1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v2);
}

Swift::Void __swiftcall JSApplication.didEnterBackground()()
{
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v1 = static JSBridge.shared;
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v2 = swift_allocObject();
  *(v2 + 16) = _swiftEmptyArrayStorage;
  *(v2 + 24) = _swiftEmptyArrayStorage;
  *(v2 + 32) = 0xD000000000000014;
  *(v2 + 40) = 0x8000000000B815E0;
  *(v2 + 48) = v0;
  *(v2 + 56) = v1;
  *(v2 + 64) = 0;
  v3 = v0;
  v4 = v1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v2);
}

unint64_t JSApplication.SubscriptionFlowConfiguration.Placement.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v3 = 0xD000000000000018;
    if (a1 != 8)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 == 7)
    {
      v3 = 0xD000000000000012;
    }

    v4 = 0xD000000000000017;
    if (a1 == 5)
    {
      v4 = 0xD000000000000013;
    }

    if (a1 <= 6u)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    v1 = 0xD000000000000015;
    if (a1 != 3)
    {
      v1 = 0xD000000000000019;
    }

    if (a1 == 2)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return 0xD000000000000011;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_A15640(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = JSApplication.SubscriptionFlowConfiguration.Placement.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == JSApplication.SubscriptionFlowConfiguration.Placement.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_A156C8()
{
  v1 = *v0;
  sub_ABB5C0();
  JSApplication.SubscriptionFlowConfiguration.Placement.rawValue.getter(v1);
  sub_AB93F0();

  return sub_ABB610();
}

double sub_A1572C(uint64_t a1)
{
  JSApplication.SubscriptionFlowConfiguration.Placement.rawValue.getter(*v1);
  sub_AB93F0();

  return result;
}

Swift::Int sub_A15780(uint64_t a1)
{
  v2 = *v1;
  sub_ABB5C0();
  JSApplication.SubscriptionFlowConfiguration.Placement.rawValue.getter(v2);
  sub_AB93F0();

  return sub_ABB610();
}

unint64_t sub_A157E0@<X0>(Swift::String *a1@<X0>, MusicJSCore::JSApplication::SubscriptionFlowConfiguration::Placement_optional *a2@<X8>)
{
  result = _s11MusicJSCore13JSApplicationC29SubscriptionFlowConfigurationV9PlacementO8rawValueAGSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_A15810@<X0>(unint64_t *a1@<X8>)
{
  result = JSApplication.SubscriptionFlowConfiguration.Placement.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

__n128 JSApplication.SubscriptionFlowConfiguration.init(placement:source:options:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 32);
  *a4 = a1;
  result = *a2;
  v6 = *(a2 + 16);
  *(a4 + 8) = *a2;
  *(a4 + 24) = v6;
  *(a4 + 40) = v4;
  *(a4 + 48) = a3;
  return result;
}

uint64_t JSApplication.SubscriptionFlowConfiguration.init(placement:model:options:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  *(a4 + 48) = a3;
  return result;
}

double JSApplication.initiateSubscribeFlow(configuration:completion:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = &v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingInitiateSubscriptionContext];
  if (*&v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingInitiateSubscriptionContext])
  {
    a2(0);
    return result;
  }

  v11 = ObjectType;
  v44 = a2;
  v12 = sub_97420(_swiftEmptyArrayStorage);
  v13 = JSApplication.SubscriptionFlowConfiguration.Placement.rawValue.getter(*a1);
  v47 = &type metadata for String;
  *&v46 = v13;
  *(&v46 + 1) = v14;
  sub_9ACFC(&v46, v45);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_9330C(v45, 0x6E656D6563616C70, 0xE900000000000074, isUniquelyReferenced_nonNull_native);
  v16 = v12;
  v17 = *(a1 + 40);
  if (v17 == 255)
  {
    goto LABEL_17;
  }

  v18 = *(a1 + 8);
  v19 = *(a1 + 32);
  if (v17)
  {
    if (!v18)
    {
      goto LABEL_17;
    }

    v43 = *(a1 + 24);
    v20 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
    v21 = MPModelObject.bestIdentifier(for:)(*v20, 1u);
    v23 = v22;
    if (!v22)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v43 = *(a1 + 24);

  v21 = v18;
  if (v23)
  {
LABEL_9:
    v47 = &type metadata for String;
    *&v46 = v21;
    *(&v46 + 1) = v23;
    sub_9ACFC(&v46, v45);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_9330C(v45, 25705, 0xE200000000000000, v24);
  }

LABEL_10:
  if (v17)
  {
    if (!v18)
    {
      goto LABEL_17;
    }

    v25 = MPModelObject.mediaKitPlayableKind.getter();
    if (v25 == 10)
    {
      goto LABEL_17;
    }

    v26 = MPModelObject.MediaKitPlayableKind.rawValue.getter(v25);
    v19 = v27;
    goto LABEL_16;
  }

  if (v19)
  {

    v26 = v43;
LABEL_16:
    v47 = &type metadata for String;
    *&v46 = v26;
    *(&v46 + 1) = v19;
    sub_9ACFC(&v46, v45);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_9330C(v45, 0x74694B616964656DLL, 0xEC000000646E694BLL, v28);
  }

LABEL_17:
  v29 = *(a1 + 48);
  if (v29)
  {
    v30 = sub_A972C8(v29);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830, &unk_AFD670);
    *&v46 = v30;
    sub_9ACFC(&v46, v45);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_9330C(v45, 0xD000000000000014, 0x8000000000B81620, v31);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840, &qword_AF9020);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_AF85F0;
  *(v32 + 56) = v11;
  *(v32 + 32) = v4;
  *(v32 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680, &qword_AF7B70);
  *(v32 + 64) = v16;
  v33 = *v9;
  v34 = v9[1];
  v35 = v9[2];
  v36 = v9[3];
  v37 = v9[4];
  *v9 = v44;
  v9[1] = a3;
  *(v9 + 1) = xmmword_AFAA90;
  v9[4] = 0;
  v38 = v4;

  sub_9EB4FC(v33, v34, v35, v36, v37);
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v39 = static JSBridge.shared;
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v40 = swift_allocObject();
  *(v40 + 16) = v32;
  *(v40 + 24) = _swiftEmptyArrayStorage;
  *(v40 + 32) = 0xD00000000000001CLL;
  *(v40 + 40) = 0x8000000000B81600;
  *(v40 + 48) = v38;
  *(v40 + 56) = v39;
  *(v40 + 64) = 0;
  v41 = v38;
  v42 = v39;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v40);

  return result;
}

double JSApplication.updatePrivacyOnboardingPresentationStatus(isPresented:completionHandler:)(char a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_isPrivacyDisclaimerPresented;
  swift_beginAccess();
  v3[v7] = a1;
  v8 = &v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext];
  v9 = *&v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext];
  v10 = *&v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext + 8];
  v11 = *&v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext + 16];
  v12 = *&v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext + 24];
  v13 = *&v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext + 32];
  *v8 = a2;
  *(v8 + 1) = a3;
  *(v8 + 1) = xmmword_AFAA90;
  *(v8 + 4) = 0;
  swift_retain_n();
  sub_9EB4FC(v9, v10, v11, v12, v13);
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v14 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840, &qword_AF9020);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_AF85F0;
  *(v15 + 56) = ObjectType;
  *(v15 + 32) = v3;
  *(v15 + 88) = &type metadata for Bool;
  *(v15 + 64) = a1 & 1;
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = _swiftEmptyArrayStorage;
  *(v16 + 32) = 0xD000000000000034;
  *(v16 + 40) = 0x8000000000B81640;
  *(v16 + 48) = v3;
  *(v16 + 56) = v14;
  *(v16 + 64) = 0;
  v3;
  v17 = v14;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v16);

  if ((a1 & 1) == 0)
  {
    sub_A15EBC();
  }

  return result;
}

double sub_A15EBC()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_isPrivacyDisclaimerPresented;
  swift_beginAccess();
  if ((*(v0 + v1) & 1) == 0)
  {
    v3 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyDisclaimerDismissalCompletionHandlers;
    swift_beginAccess();
    v4 = *(v0 + v3);
    *(v0 + v3) = _swiftEmptyArrayStorage;
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 40;
      do
      {
        v7 = *(v6 - 8);

        v7(v8);

        v6 += 16;
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

double JSApplication.updatePrivacyTermsAccepted(completionHandler:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext];
  v7 = *&v2[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext];
  v8 = *&v2[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext + 8];
  v9 = *&v2[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext + 16];
  v10 = *&v2[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext + 24];
  v11 = *&v2[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext + 32];
  *v6 = a1;
  *(v6 + 1) = a2;
  *(v6 + 1) = xmmword_AFAA90;
  *(v6 + 4) = 0;
  swift_retain_n();
  sub_9EB4FC(v7, v8, v9, v10, v11);
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v12 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840, &qword_AF9020);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_AF4EC0;
  *(v13 + 56) = ObjectType;
  *(v13 + 32) = v2;
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = _swiftEmptyArrayStorage;
  *(v14 + 32) = 0xD00000000000001CLL;
  *(v14 + 40) = 0x8000000000B81680;
  *(v14 + 48) = v2;
  *(v14 + 56) = v12;
  *(v14 + 64) = 0;
  v15 = v2;
  v16 = v12;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v14);

  return result;
}

double JSApplication.performModalMessagePresentation(message:completionHandler:)(void *a1, void (*a2)(void), uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingApplicationMessageSegueContext];
  if (*&v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingApplicationMessageSegueContext])
  {
    a2(0);
  }

  else
  {
    v10 = ObjectType;
    *v8 = a2;
    *(v8 + 1) = a3;
    *(v8 + 1) = xmmword_AFAA90;
    *(v8 + 4) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580, &qword_AFBB60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = 0x6567617373656DLL;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 72) = type metadata accessor for JSApplicationMessage();
    *(inited + 48) = a1;

    v12 = a1;
    v13 = sub_97420(inited);
    swift_setDeallocating();
    sub_12E1C(inited + 32, &qword_DF06F0, &qword_AFA4B0);
    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v14 = static JSBridge.shared;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840, &qword_AF9020);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_AF85F0;
    *(v15 + 56) = v10;
    *(v15 + 32) = v3;
    *(v15 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680, &qword_AF7B70);
    *(v15 + 64) = v13;
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = _swiftEmptyArrayStorage;
    *(v16 + 32) = 0xD00000000000002BLL;
    *(v16 + 40) = 0x8000000000B816A0;
    *(v16 + 48) = v3;
    *(v16 + 56) = v14;
    *(v16 + 64) = 0;
    v17 = v3;
    v18 = v14;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v16);
  }

  return result;
}

Swift::Void __swiftcall JSApplication.willContinueUserActivity(with:)(Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580, &qword_AFBB60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  strcpy((inited + 32), "activityType");
  *(inited + 72) = &type metadata for String;
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = countAndFlagsBits;
  *(inited + 56) = object;

  v5 = sub_97420(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &qword_DF06F0, &qword_AFA4B0);
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v6 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840, &qword_AF9020);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_AF4EC0;
  *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680, &qword_AF7B70);
  *(v7 + 32) = v5;
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = _swiftEmptyArrayStorage;
  *(v8 + 32) = 0xD00000000000001ALL;
  *(v8 + 40) = 0x8000000000B816D0;
  *(v8 + 48) = v1;
  *(v8 + 56) = v6;
  *(v8 + 64) = 0;
  v9 = v1;
  v10 = v6;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v8);
}

uint64_t JSApplication.isPrivacyDisclaimerPresented.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_isPrivacyDisclaimerPresented;
  swift_beginAccess();
  return *(v0 + v1);
}

void JSApplication.isPrivacyDisclaimerPresented.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_isPrivacyDisclaimerPresented;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double JSApplication.pendingPrivacyDisclaimerDismissalCompletionHandlers.getter()
{
  swift_beginAccess();

  return result;
}

double JSApplication.pendingPrivacyDisclaimerDismissalCompletionHandlers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyDisclaimerDismissalCompletionHandlers;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t JSApplication.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_identifier);

  return v1;
}

uint64_t JSApplication.version.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_version);

  return v1;
}

double sub_A167DC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC11MusicJSCore13JSApplication_selectedTabIdentifier];
  swift_beginAccess();
  v8 = *(v6 + 1);
  if (v8)
  {
    if (a2)
    {
      v9 = *v6 == a1 && v8 == a2;
      if (v9 || (sub_ABB3C0() & 1) != 0)
      {
        return result;
      }
    }
  }

  else if (!a2)
  {
    return result;
  }

  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v10 = static JSBridge.shared;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840, &qword_AF9020);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_AF85F0;
  *(v11 + 56) = ObjectType;
  *(v11 + 32) = v2;
  v12 = *(v6 + 1);
  if (v12)
  {
    v13 = *v6;
    *(&v22 + 1) = &type metadata for String;
    *&v21 = v13;
    *(&v21 + 1) = v12;
    sub_9ACFC(&v21, (v11 + 64));
    v14 = v2;
  }

  else
  {
    v22 = 0u;
    v15 = objc_allocWithZone(NSNull);
    v16 = v2;
    v17 = [v15 init];
    *(v11 + 88) = sub_13C80(0, &qword_E27CD0, NSNull_ptr);
    *(v11 + 64) = v17;
    if (*(&v22 + 1))
    {
      sub_12E1C(&v21, &unk_DE8E40, &unk_AF8050);
    }
  }

  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  *(v18 + 24) = _swiftEmptyArrayStorage;
  *(v18 + 32) = 0xD000000000000011;
  *(v18 + 40) = 0x8000000000B81B10;
  *(v18 + 48) = v2;
  *(v18 + 56) = v10;
  *(v18 + 64) = 0;

  v19 = v10;
  v20 = v2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9BF07C, v18);

  return result;
}

uint64_t JSApplication.selectedTabIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_selectedTabIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double JSApplication.selectedTabIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_selectedTabIdentifier);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_A167DC(v6, v7);

  return result;
}

void (*JSApplication.selectedTabIdentifier.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_selectedTabIdentifier;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_A16BA0;
}

void sub_A16BA0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = (v5 + v4);
  v9 = *v7;
  v8 = v7[1];
  *v7 = v3;
  v7[1] = v6;
  if (a2)
  {

    sub_A167DC(v9, v8);
  }

  else
  {
    sub_A167DC(v9, v8);
  }

  free(v2);
}

void sub_A16C34(char *a1, char a2)
{
  v4 = sub_AB7CC0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v8 = static JSBridge.shared;
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  *v7 = sub_ABA150();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = sub_AB7CF0();
  (*(v5 + 8))(v7, v4);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_shouldPrependRecordsBeforeCurrentSuspensionPoint;
    v11 = *(v8 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_shouldPrependRecordsBeforeCurrentSuspensionPoint);
    *(v8 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_shouldPrependRecordsBeforeCurrentSuspensionPoint) = 1;
    sub_A16DCC(a1);
    *(v8 + v10) = v11;
    if (a2)
    {
      sub_9A78D8();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_A16DCC(char *a1)
{
  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v2 = static JSBridge.shared;
  v3 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_applicationMessageWillPresent;
  swift_beginAccess();
  v4 = a1[v3];
  if (v4 == 2)
  {
    v11 = 0u;
    v12 = 0u;
    v5 = [objc_allocWithZone(NSNull) init];
    v14 = sub_13C80(0, &qword_E27CD0, NSNull_ptr);
    *&v13 = v5;
  }

  else
  {
    *(&v12 + 1) = &type metadata for Bool;
    LOBYTE(v11) = v4 & 1;
    sub_9ACFC(&v11, &v13);
  }

  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  sub_15F84(&v13, &v11, &unk_DE8E40, &unk_AF8050);
  v6 = swift_allocObject();
  *(v6 + 16) = 1;
  v7 = v12;
  *(v6 + 24) = v11;
  *(v6 + 40) = v7;
  *(v6 + 56) = 0xD00000000000001DLL;
  *(v6 + 64) = 0x8000000000B819A0;
  *(v6 + 72) = a1;
  *(v6 + 80) = v2;
  *(v6 + 88) = 0;
  v8 = a1;
  v9 = v2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9F12C0, v6);

  return sub_12E1C(&v13, &unk_DE8E40, &unk_AF8050);
}

uint64_t JSApplication.applicationMessageWillPresent.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_applicationMessageWillPresent;
  swift_beginAccess();
  return *(v0 + v1);
}

void JSApplication.applicationMessageWillPresent.setter(int a1)
{
  v2 = v1;
  v4 = a1;
  v5 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_applicationMessageWillPresent;
  swift_beginAccess();
  v6 = v2[v5];
  v2[v5] = a1;
  if (v4 == 2)
  {
    if (v6 == 2)
    {
      return;
    }
  }

  else if (v6 != 2 && ((v6 ^ a1) & 1) == 0)
  {
    return;
  }

  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v7 = sub_9A7534();
  v8 = [objc_opt_self() sharedApplication];
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = v7 & 1;
  aBlock[4] = sub_A19430;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_61_3;
  v10 = _Block_copy(aBlock);
  v11 = v2;

  [v8 _performBlockAfterCATransactionCommits:v10];
  _Block_release(v10);
}

void (*JSApplication.applicationMessageWillPresent.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_applicationMessageWillPresent;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_A17238;
}

void sub_A17238(uint64_t a1)
{
  v1 = *a1;
  JSApplication.applicationMessageWillPresent.setter(*(*a1 + 32));

  free(v1);
}

Swift::Void __swiftcall JSApplication.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v6 = _._countAndFlagsBits == 0xD00000000000001ELL && 0x8000000000B816F0 == _._object;
  if (v6 || (sub_ABB3C0() & 1) != 0)
  {
    if (*(arguments._rawValue + 2) == 2)
    {
      sub_808B0(arguments._rawValue + 64, &v57);
      type metadata accessor for JSSegue();
      if (swift_dynamicCast())
      {
        v7 = v55;
      }

      else
      {
        v7 = 0;
      }

      sub_808B0(arguments._rawValue + 32, &v57);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_41;
      }

      v8 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext;
      v9 = *(v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext);
      if (v9)
      {
        v10 = *(v8 + 24);
        v11 = *(v8 + 32);
        v12 = *(v8 + 16);
        *v8 = 0u;
        *(v8 + 16) = 0u;
        *(v8 + 32) = 0;
        [v11 invalidate];
        if (v55 == v12 && v10 == v56)
        {
        }

        else
        {
          v14 = sub_ABB3C0();

          if ((v14 & 1) == 0)
          {
            v15 = 0;
LABEL_39:
            v9(v15);

            goto LABEL_40;
          }
        }

        v15 = v7;
        goto LABEL_39;
      }

      goto LABEL_43;
    }

    return;
  }

  if ((countAndFlagsBits != 0xD000000000000017 || 0x8000000000B81710 != object) && (sub_ABB3C0() & 1) == 0)
  {
    if (countAndFlagsBits == 0xD000000000000024 && 0x8000000000B81730 == object || (sub_ABB3C0() & 1) != 0)
    {
      if (*(arguments._rawValue + 2))
      {
        sub_808B0(arguments._rawValue + 32, &v57);
        type metadata accessor for JSSegue();
        if (swift_dynamicCast())
        {
          v24 = v55;
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        v24 = 0;
      }

      v25 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingInitiateSubscriptionContext;
      v26 = *(v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingInitiateSubscriptionContext);
      if (v26)
      {
        v27 = *(v25 + 32);
        *v25 = 0u;
        *(v25 + 16) = 0u;
        *(v25 + 32) = 0;
        v26(v24);

        return;
      }

      goto LABEL_91;
    }

    if (countAndFlagsBits == 0xD000000000000024 && 0x8000000000B81760 == object || (sub_ABB3C0() & 1) != 0)
    {
      if (!*(arguments._rawValue + 2))
      {
        return;
      }

      sub_808B0(arguments._rawValue + 32, &v57);
      type metadata accessor for JSSegue();
      if ((swift_dynamicCast() & 1) == 0)
      {
        return;
      }

      v24 = v55;
      v28 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext;
LABEL_53:
      v29 = v2 + v28;
      v30 = *v29;
      if (*v29)
      {
        v31 = *(v29 + 32);
        *v29 = 0u;
        *(v29 + 16) = 0u;
        *(v29 + 32) = 0;
        v32 = v24;
        v30(v24);

        return;
      }

      goto LABEL_91;
    }

    if (countAndFlagsBits == 0xD00000000000003CLL && 0x8000000000B81790 == object || (sub_ABB3C0() & 1) != 0)
    {
      if (!*(arguments._rawValue + 2))
      {
        return;
      }

      sub_808B0(arguments._rawValue + 32, &v57);
      type metadata accessor for JSSegue();
      if ((swift_dynamicCast() & 1) == 0)
      {
        return;
      }

      v24 = v55;
      v28 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext;
      goto LABEL_53;
    }

    if (countAndFlagsBits == 0xD000000000000033 && 0x8000000000B817D0 == object || (sub_ABB3C0() & 1) != 0)
    {
      if (!*(arguments._rawValue + 2))
      {
        return;
      }

      sub_808B0(arguments._rawValue + 32, &v57);
      if ((swift_dynamicCast() & 1) == 0)
      {
        return;
      }

      Array.subscript.getter(&type metadata for Any + 8, &v57);
      if (*(&v58 + 1))
      {
        type metadata accessor for JSSegue();
        if (swift_dynamicCast())
        {
          v24 = v55;
          v33 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingApplicationMessageSegueContext;
          v34 = *(v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingApplicationMessageSegueContext);
          if (v34)
          {
            v35 = *(v33 + 32);
            *(v33 + 32) = 0;
            *v33 = 0u;
            *(v33 + 16) = 0u;
            v36 = v55;
            v34();

            v37 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_scriptingMessageDelegate;
            swift_beginAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v38 = *(v37 + 8);
              ObjectType = swift_getObjectType();
              (*(v38 + 8))(v55, v56, ObjectType, v38);

              swift_unknownObjectRelease();
            }

            else
            {
            }

            return;
          }

LABEL_91:

          return;
        }

LABEL_117:

        return;
      }

LABEL_88:

      sub_12E1C(&v57, &unk_DE8E40, &unk_AF8050);
      return;
    }

    if (countAndFlagsBits == 0xD000000000000027 && 0x8000000000B7D4F0 == object || (sub_ABB3C0() & 1) != 0)
    {
      if (!*(arguments._rawValue + 2))
      {
        return;
      }

      sub_808B0(arguments._rawValue + 32, &v57);
      if ((swift_dynamicCast() & 1) == 0)
      {
        return;
      }

      v40 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_scriptingMessageDelegate;
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_117;
      }

      v41 = *(v40 + 8);
      v42 = swift_getObjectType();
      (*(v41 + 16))(v55, v56, v42, v41);
    }

    else
    {
      if (countAndFlagsBits == 0xD00000000000002ALL && 0x8000000000B7D520 == object || (sub_ABB3C0() & 1) != 0)
      {
        if (!*(arguments._rawValue + 2))
        {
          return;
        }

        sub_808B0(arguments._rawValue + 32, &v57);
        if ((swift_dynamicCast() & 1) == 0)
        {
          return;
        }

        Array.subscript.getter(&type metadata for Any + 8, &v57);
        if (*(&v58 + 1))
        {
          if (swift_dynamicCast())
          {
            v43 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_scriptingMessageDelegate;
            swift_beginAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v44 = *(v43 + 8);
              v45 = swift_getObjectType();
              (*(v44 + 24))(v55, v56, v55, v56, v45, v44);

              swift_unknownObjectRelease();
              return;
            }
          }

          goto LABEL_117;
        }

        goto LABEL_88;
      }

      if (countAndFlagsBits == 0xD00000000000002ELL && 0x8000000000B81810 == object || (sub_ABB3C0() & 1) != 0)
      {
        if (!*(arguments._rawValue + 2))
        {
          return;
        }

        sub_808B0(arguments._rawValue + 32, &v57);
        if ((swift_dynamicCast() & 1) == 0)
        {
          return;
        }

        v46 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_scriptingMessageDelegate;
        swift_beginAccess();
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_117;
        }

        v47 = *(v46 + 8);
        v48 = swift_getObjectType();
        (*(v47 + 32))(v55, v56, v48, v47);
      }

      else if (countAndFlagsBits == 0xD000000000000020 && 0x8000000000B81840 == object || (sub_ABB3C0() & 1) != 0)
      {
        if (!*(arguments._rawValue + 2))
        {
          return;
        }

        sub_808B0(arguments._rawValue + 32, &v57);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680, &qword_AF7B70);
        if ((swift_dynamicCast() & 1) == 0)
        {
          return;
        }

        v49 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_scriptingMessageDelegate;
        swift_beginAccess();
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_117;
        }

        v50 = *(v49 + 8);
        v51 = swift_getObjectType();
        (*(v50 + 40))(v55, v51, v50);
      }

      else
      {
        if ((countAndFlagsBits != 0xD000000000000028 || 0x8000000000B81870 != object) && (sub_ABB3C0() & 1) == 0)
        {
          return;
        }

        if (!*(arguments._rawValue + 2))
        {
          return;
        }

        sub_808B0(arguments._rawValue + 32, &v57);
        if ((swift_dynamicCast() & 1) == 0)
        {
          return;
        }

        v52 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_globalMessagePresentationDelegate;
        swift_beginAccess();
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_117;
        }

        v53 = *(v52 + 8);
        v54 = swift_getObjectType();
        (*(v53 + 8))(v55, v56, v54, v53);
      }
    }

    swift_unknownObjectRelease();
    return;
  }

  if (*(arguments._rawValue + 2) == 2)
  {
    sub_808B0(arguments._rawValue + 64, &v57);
    type metadata accessor for JSSegue();
    if (swift_dynamicCast())
    {
      v7 = v55;
    }

    else
    {
      v7 = 0;
    }

    sub_808B0(arguments._rawValue + 32, &v57);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_41;
    }

    v16 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingOpenURLContexts;
    swift_beginAccess();
    v17 = *(v2 + v16);
    if (*(v17 + 16))
    {
      v18 = sub_2EBF88(v55, v56);
      if (v19)
      {
        v20 = *(v17 + 56) + 40 * v18;
        v21 = *v20;
        v22 = *(v20 + 32);
        swift_endAccess();
        v57 = 0u;
        v58 = 0u;
        v59 = 0;
        swift_beginAccess();
        v23 = v22;

        sub_9A0854(&v57, v55, v56);
        swift_endAccess();
        v21(v7);

LABEL_40:

LABEL_41:

        return;
      }
    }

    swift_endAccess();
LABEL_43:
  }
}

uint64_t JSApplication.SharedWithYouMetadata.score.setter(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for JSApplication.SharedWithYouMetadata(0);
  v5 = v2 + *(result + 20);
  *v5 = a1;
  *(v5 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t sub_A17FE4()
{
  v1 = v0;
  v2 = sub_AB35C0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230, "|,\r");
  __chkstk_darwin();
  v7 = &v19 - v6;
  v8 = sub_AB3430();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(v1, v7, &unk_E01230, "|,\r");
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_12E1C(v7, &unk_E01230, "|,\r");
    return 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v13 = [objc_allocWithZone(NSDateFormatter) init];
    sub_AB3480();
    isa = sub_AB34E0().super.isa;
    (*(v3 + 8))(v5, v2);
    [v13 setLocale:isa];

    v15 = sub_AB9260();
    [v13 setDateFormat:v15];

    v16 = sub_AB3370().super.isa;
    v17 = [v13 stringFromDate:v16];

    v18 = sub_AB92A0();
    (*(v9 + 8))(v11, v8);
    return v18;
  }
}

unint64_t sub_A18304()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580, &qword_AFBB60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = 1702125924;
  *(inited + 40) = 0xE400000000000000;
  v2 = sub_A17FE4();
  if (v3)
  {
    *(&v11 + 1) = &type metadata for String;
    *&v10 = v2;
    *(&v10 + 1) = v3;
    sub_9ACFC(&v10, (inited + 48));
  }

  else
  {
    v11 = 0u;
    v4 = [objc_allocWithZone(NSNull) init];
    *(inited + 72) = sub_13C80(0, &qword_E27CD0, NSNull_ptr);
    *(inited + 48) = v4;
    if (*(&v11 + 1))
    {
      sub_12E1C(&v10, &unk_DE8E40, &unk_AF8050);
    }
  }

  *(inited + 80) = 0x65726F6373;
  *(inited + 88) = 0xE500000000000000;
  v5 = (v0 + *(type metadata accessor for JSApplication.SharedWithYouMetadata(0) + 20));
  if (v5[1])
  {
    v10 = 0u;
    v11 = 0u;
    v6 = [objc_allocWithZone(NSNull) init];
    *(inited + 120) = sub_13C80(0, &qword_E27CD0, NSNull_ptr);
    *(inited + 96) = v6;
    if (*(&v11 + 1))
    {
      sub_12E1C(&v10, &unk_DE8E40, &unk_AF8050);
    }
  }

  else
  {
    v7 = *v5;
    *(&v11 + 1) = &type metadata for Float;
    LODWORD(v10) = v7;
    sub_9ACFC(&v10, (inited + 96));
  }

  v8 = sub_97420(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0, &qword_AFA4B0);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_A184FC(uint64_t a1, __n128 a2)
{
  v4 = type metadata accessor for JSApplication.SharedWithYouMetadata(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v39 = &v38 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26A00, &unk_B40B10);
  __chkstk_darwin();
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26AF0, &qword_B40F40) - 8;
  __chkstk_darwin();
  v13 = &v38 - v12;
  v14 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_sharedWithYouMetadata;
  swift_beginAccess();
  v15 = *(v11 + 56);
  v41 = v2;
  sub_15F84(v2 + v14, v13, &qword_E26A00, &unk_B40B10);
  sub_15F84(a1, &v13[v15], &qword_E26A00, &unk_B40B10);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      return sub_12E1C(v13, &qword_E26A00, &unk_B40B10);
    }
  }

  else
  {
    sub_15F84(v13, v10, &qword_E26A00, &unk_B40B10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v34 = v39;
      sub_9B8D30(&v13[v15], v39, v18);
      v35 = _s11MusicJSCore13JSApplicationC21SharedWithYouMetadataV23__derived_struct_equalsySbAE_AEtFZ_0(v10, v34);
      sub_9B8D94(v34, v36);
      sub_9B8D94(v10, v37);
      result = sub_12E1C(v13, &qword_E26A00, &unk_B40B10);
      v20 = v41;
      v19 = v42;
      if (v35)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_9B8D94(v10, v18);
  }

  sub_12E1C(v13, &qword_E26AF0, &qword_B40F40);
  v20 = v41;
  v19 = v42;
LABEL_7:
  v21 = v40;
  sub_15F84(v20 + v14, v40, &qword_E26A00, &unk_B40B10);
  if (v16(v21, 1, v4) == 1)
  {
    v23 = sub_AB3430();
    (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
    v24 = v19 + *(v4 + 20);
    *v24 = 0;
    *(v24 + 4) = 1;
    if (v16(v21, 1, v4) != 1)
    {
      sub_12E1C(v21, &qword_E26A00, &unk_B40B10);
    }
  }

  else
  {
    sub_9B8D30(v21, v19, v22);
  }

  if (qword_E23F48 != -1)
  {
    swift_once();
  }

  v25 = static JSBridge.shared;
  v26 = sub_A18304();
  v44[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680, &qword_AF7B70);
  v44[0] = v26;
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  sub_15F84(v44, v43, &unk_DE8E40, &unk_AF8050);
  v27 = swift_allocObject();
  *(v27 + 16) = 1;
  v28 = v43[1];
  *(v27 + 24) = v43[0];
  *(v27 + 40) = v28;
  *(v27 + 56) = 0xD000000000000015;
  *(v27 + 64) = 0x8000000000B819C0;
  *(v27 + 72) = v20;
  *(v27 + 80) = v25;
  *(v27 + 88) = 0;
  v29 = v20;
  v30 = v25;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9F1374, v27);

  sub_12E1C(v44, &unk_DE8E40, &unk_AF8050);
  v31 = *&v29[OBJC_IVAR____TtC11MusicJSCore13JSApplication_asyncInitializer];
  v32 = *(v31 + 16);
  *(v31 + 16) = 1;
  sub_9B0CF0(v32);
  return sub_9B8D94(v19, v33);
}

uint64_t JSApplication.sharedWithYouMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_sharedWithYouMetadata;
  swift_beginAccess();
  return sub_15F84(v1 + v3, a1, &qword_E26A00, &unk_B40B10);
}

void (*JSApplication.sharedWithYouMetadata.modify(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26A00, &unk_B40B10) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_sharedWithYouMetadata;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_15F84(v1 + v8, v7, &qword_E26A00, &unk_B40B10);
  return sub_A18BDC;
}

void sub_A18BDC(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    sub_15F84(*(*a1 + 12), v6, &qword_E26A00, &unk_B40B10);
    sub_15F84(v7 + v4, v5, &qword_E26A00, &unk_B40B10);
    swift_beginAccess();
    sub_A19254(v6, v7 + v4);
    swift_endAccess();
    sub_A184FC(v5, v8);
    sub_12E1C(v5, &qword_E26A00, &unk_B40B10);
  }

  else
  {
    sub_15F84(v7 + v4, v6, &qword_E26A00, &unk_B40B10);
    swift_beginAccess();
    sub_A19254(v3, v7 + v4);
    swift_endAccess();
    sub_A184FC(v6, v9);
  }

  sub_12E1C(v6, &qword_E26A00, &unk_B40B10);
  sub_12E1C(v3, &qword_E26A00, &unk_B40B10);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

BOOL _s11MusicJSCore13JSApplicationC21SharedWithYouMetadataV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB3430();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230, "|,\r");
  __chkstk_darwin();
  v9 = &v23 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE81D8, &qword_AFAE20);
  __chkstk_darwin();
  v11 = &v23 - v10;
  v13 = *(v12 + 56);
  sub_15F84(a1, &v23 - v10, &unk_E01230, "|,\r");
  sub_15F84(a2, &v11[v13], &unk_E01230, "|,\r");
  v14 = *(v5 + 48);
  if (v14(v11, 1, v4) == 1)
  {
    if (v14(&v11[v13], 1, v4) == 1)
    {
      sub_12E1C(v11, &unk_E01230, "|,\r");
      goto LABEL_9;
    }

LABEL_6:
    sub_12E1C(v11, &qword_DE81D8, &qword_AFAE20);
    return 0;
  }

  sub_15F84(v11, v9, &unk_E01230, "|,\r");
  if (v14(&v11[v13], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
    goto LABEL_6;
  }

  (*(v5 + 32))(v7, &v11[v13], v4);
  sub_A19A2C(&qword_DE81E0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v16 = sub_AB91C0();
  v17 = *(v5 + 8);
  v17(v7, v4);
  v17(v9, v4);
  sub_12E1C(v11, &unk_E01230, "|,\r");
  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v18 = *(type metadata accessor for JSApplication.SharedWithYouMetadata(0) + 20);
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if ((v20 & 1) == 0)
  {
    if (*v19 != *v21)
    {
      v22 = 1;
    }

    return (v22 & 1) == 0;
  }

  return (v22 & 1) != 0;
}

uint64_t sub_A19118()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_A19158(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17BD0;

  return sub_A132A8(a1, v4, v5, v6);
}

uint64_t sub_A1920C()
{

  return swift_deallocObject();
}

uint64_t sub_A19254(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26A00, &unk_B40B10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_A192C4()
{

  return swift_deallocObject();
}

double block_copy_helper_265(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_A19328()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_A19360()
{

  return swift_deallocObject();
}

unint64_t _s11MusicJSCore13JSApplicationC29SubscriptionFlowConfigurationV9PlacementO8rawValueAGSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D4F860;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_A193F8()
{

  return swift_deallocObject();
}

unint64_t sub_A19440()
{
  result = qword_E26A08;
  if (!qword_E26A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E26A08);
  }

  return result;
}

unint64_t sub_A19498()
{
  result = qword_E26A10;
  if (!qword_E26A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E26A10);
  }

  return result;
}

void sub_A19514(uint64_t a1)
{
  sub_A198F8(319, &qword_E26A50, type metadata accessor for JSApplication.SharedWithYouMetadata);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_11MusicJSCore13JSApplicationC29SubscriptionFlowConfigurationV6SourceOSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_A19650(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_A196AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_A19750(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230, "|,\r");
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_A197DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230, "|,\r");
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_A19858(uint64_t a1)
{
  sub_A198F8(319, &qword_E247E0, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    sub_A1994C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_A198F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_ABA9C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_A1994C()
{
  if (!qword_E26AC0)
  {
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_E26AC0);
    }
  }
}

double sub_A199A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    v5 = a5;
  }

  return result;
}

uint64_t sub_A199EC()
{

  return swift_deallocObject();
}

uint64_t sub_A19A2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_A19A74()
{
  v1 = *(type metadata accessor for JSApplication.SharedWithYouMetadata(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_AB3430();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_A19B88()
{
  v1 = *(type metadata accessor for JSApplication.SharedWithYouMetadata(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_A13A50(v2, v3);
}

uint64_t sub_A19C50(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E6F74747562;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 0x6E6F74747562;
    }

    if (v3)
    {
      v5 = 0x8000000000B6B920;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0xE500000000000000;
    v4 = 0x6B63617274;
  }

  else if (a1 == 3)
  {
    v4 = 0x7475426B63617274;
    v5 = 0xEB000000006E6F74;
  }

  else
  {
    v5 = 0x8000000000B6B900;
    v4 = 0xD000000000000015;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE600000000000000;
    v8 = 0xD000000000000010;
    v7 = 0x8000000000B6B920;
    v9 = a2 == 0;
LABEL_17:
    if (v9)
    {
      v10 = v2;
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      v11 = v6;
    }

    else
    {
      v11 = v7;
    }

    if (v4 != v10)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (a2 != 2)
  {
    v2 = 0x7475426B63617274;
    v6 = 0xEB000000006E6F74;
    v7 = 0x8000000000B6B900;
    v8 = 0xD000000000000015;
    v9 = a2 == 3;
    goto LABEL_17;
  }

  v11 = 0xE500000000000000;
  if (v4 != 0x6B63617274)
  {
    goto LABEL_27;
  }

LABEL_24:
  if (v5 != v11)
  {
LABEL_27:
    v12 = sub_ABB3C0();
    goto LABEL_28;
  }

  v12 = 1;
LABEL_28:

  return v12 & 1;
}

uint64_t sub_A19DF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 2036427888;
    }

    else
    {
      v4 = 0x7463656C6573;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE800000000000000;
    v4 = 0x657461676976616ELL;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x7373696D736964;
  }

  else
  {
    v4 = 0x726F62616C6C6F63;
    v3 = 0xEB00000000657461;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 2036427888;
    }

    else
    {
      v9 = 0x7463656C6573;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x7373696D736964;
    if (a2 != 3)
    {
      v6 = 0x726F62616C6C6F63;
      v5 = 0xEB00000000657461;
    }

    if (a2 == 2)
    {
      v7 = 0x657461676976616ELL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_ABB3C0();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_A19F7C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "eAll";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "uniqueIdentifierChanged";
      v4 = 0xD000000000000018;
    }

    else
    {
      v5 = "userSocialProfileChanged";
      v4 = 0xD00000000000001DLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000017;
    }

    else
    {
      v4 = 0xD000000000000011;
    }

    if (v3)
    {
      v5 = "applicationLaunch";
    }

    else
    {
      v5 = "eAll";
    }
  }

  if (a2 > 1u)
  {
    v2 = "uniqueIdentifierChanged";
    v6 = "userSocialProfileChanged";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000018;
    }

    else
    {
      v8 = 0xD00000000000001DLL;
    }
  }

  else
  {
    v6 = "applicationLaunch";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000017;
    }

    else
    {
      v8 = 0xD000000000000011;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_ABB3C0();
  }

  return v10 & 1;
}

uint64_t sub_A1A0A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x7265746E6563;
  v6 = 0xE400000000000000;
  v7 = 1952867692;
  if (a1 != 4)
  {
    v7 = 0x7468676972;
    v6 = 0xE500000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x676E696C69617274;
  if (a1 != 1)
  {
    v9 = 0x656966697473756ALL;
    v8 = 0xE900000000000064;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x676E696461656CLL;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x7265746E6563)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1952867692)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7468676972)
      {
LABEL_34:
        v13 = sub_ABB3C0();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x676E696C69617274)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE900000000000064;
      if (v10 != 0x656966697473756ALL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x676E696461656CLL)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_A1A270(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000014;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD00000000000001DLL;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v3)
    {
      v6 = "fullCatalogPlayback";
    }

    else
    {
      v6 = "needsManualVerification";
    }
  }

  else if (a1 == 2)
  {
    v6 = "voiceActivatedCatalogPlayback";
    v5 = 0xD000000000000012;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = "cloudLibraryEligible";
    }

    else
    {
      v4 = "catalogLyricsViewing";
    }

    v6 = v4 - 32;
    v5 = 0xD000000000000014;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xD00000000000001DLL;
    }

    else
    {
      v2 = 0xD000000000000013;
    }

    if (a2)
    {
      v7 = "fullCatalogPlayback";
    }

    else
    {
      v7 = "needsManualVerification";
    }
  }

  else if (a2 == 2)
  {
    v7 = "voiceActivatedCatalogPlayback";
    v2 = 0xD000000000000012;
  }

  else
  {
    v7 = "anyCatalogPlayback";
    if (a2 != 3)
    {
      v7 = "cloudLibraryEligible";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v7 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

uint64_t sub_A1A3CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6373627553746F6ELL;
    }

    else
    {
      v3 = 0xD000000000000013;
    }

    if (v2)
    {
      v4 = 0xED00006465626972;
    }

    else
    {
      v4 = 0x8000000000B6C1F0;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6269726373627573;
    v4 = 0xEA00000000006465;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6564696C67;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2 == 3)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6373627553746F6ELL;
    }

    else
    {
      v6 = 0xD000000000000013;
    }

    if (a2)
    {
      v5 = 0xED00006465626972;
    }

    else
    {
      v5 = 0x8000000000B6C1F0;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEA00000000006465;
    if (v3 != 0x6269726373627573)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE500000000000000;
    if (v3 != 0x6564696C67)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    if (v3 != 0x6E776F6E6B6E75)
    {
LABEL_34:
      v7 = sub_ABB3C0();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_A1A578(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000017;
    }

    else
    {
      v3 = 0x64656B6E696C6E75;
    }

    if (v2)
    {
      v4 = 0x8000000000B7CAE0;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x656C626967696C65;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6967696C45746F6ELL;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2 == 3)
    {
      v4 = 0xEB00000000656C62;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v6 = 0x64656B6E696C6E75;
    }

    if (a2)
    {
      v5 = 0x8000000000B7CAE0;
    }

    else
    {
      v5 = 0xE800000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x656C626967696C65)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEB00000000656C62;
    if (v3 != 0x6967696C45746F6ELL)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    if (v3 != 0x6E776F6E6B6E75)
    {
LABEL_34:
      v7 = sub_ABB3C0();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_A1A72C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x74726F6873;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6D756964656DLL;
  }

  else
  {
    v3 = 0xE400000000000000;
    if (a1 == 3)
    {
      v4 = 1735290732;
    }

    else
    {
      v4 = 1819047270;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x74726F6873;
    }

    else
    {
      v8 = 1701736302;
    }

    if (a2)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 1735290732;
    if (a2 != 3)
    {
      v5 = 1819047270;
    }

    if (a2 == 2)
    {
      v6 = 0x6D756964656DLL;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (v4 != v6)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v7)
  {
LABEL_33:
    v9 = sub_ABB3C0();
    goto LABEL_34;
  }

  v9 = 1;
LABEL_34:

  return v9 & 1;
}

uint64_t sub_A1A87C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x6574736575716572;
  v5 = 0xE900000000000064;
  v6 = 0x6E69776F6C6C6F66;
  v7 = 0xE900000000000067;
  if (a1 != 4)
  {
    v6 = 0x64656B636F6C62;
    v7 = 0xE700000000000000;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x6F6C6C6F46746F6ELL;
  v9 = 0xED0000656C626177;
  if (a1 != 1)
  {
    v8 = 0x6F6C6C6F46746F6ELL;
    v9 = 0xEC000000676E6977;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 1718379891;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE900000000000064;
      if (v10 != 0x6574736575716572)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE900000000000067;
      if (v10 != 0x6E69776F6C6C6F66)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x64656B636F6C62)
      {
LABEL_34:
        v13 = sub_ABB3C0();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xED0000656C626177;
      if (v10 != 0x6F6C6C6F46746F6ELL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEC000000676E6977;
      if (v10 != 0x6F6C6C6F46746F6ELL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1718379891)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_A1AA84(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006261;
  v3 = 0x547972617262696CLL;
  v4 = a1;
  v5 = 0x6154686372616573;
  v6 = 0xE900000000000062;
  if (a1 != 5)
  {
    v5 = 0x6979616C50776F6ELL;
    v6 = 0xEA0000000000676ELL;
  }

  v7 = 0x61546573776F7262;
  v8 = 0xE900000000000062;
  if (a1 != 3)
  {
    v7 = 0x6261546F69646172;
    v8 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6154756F59726F66;
  v10 = 0xE900000000000062;
  if (a1 != 1)
  {
    v9 = 0x6F4E6E657473696CLL;
    v10 = 0xEC00000062615477;
  }

  if (!a1)
  {
    v9 = 0x547972617262696CLL;
    v10 = 0xEA00000000006261;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        v2 = 0xEC00000062615477;
        if (v11 != 0x6F4E6E657473696CLL)
        {
          goto LABEL_35;
        }

        goto LABEL_32;
      }

      v13 = 0x756F59726F66;
      goto LABEL_26;
    }

LABEL_31:
    if (v11 != v3)
    {
LABEL_35:
      v14 = sub_ABB3C0();
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v13 = 0x6573776F7262;
      goto LABEL_26;
    }

    v2 = 0xE800000000000000;
    v3 = 0x6261546F69646172;
    goto LABEL_31;
  }

  if (a2 == 5)
  {
    v13 = 0x686372616573;
LABEL_26:
    v2 = 0xE900000000000062;
    if (v11 != (v13 & 0xFFFFFFFFFFFFLL | 0x6154000000000000))
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  v2 = 0xEA0000000000676ELL;
  if (v11 != 0x6979616C50776F6ELL)
  {
    goto LABEL_35;
  }

LABEL_32:
  if (v12 != v2)
  {
    goto LABEL_35;
  }

  v14 = 1;
LABEL_36:

  return v14 & 1;
}

uint64_t sub_A1ACA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746C7561666564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6174654472657375;
    }

    else
    {
      v4 = 0x6552776F6C6C6F66;
    }

    if (v3 == 2)
    {
      v5 = 0xEB00000000736C69;
    }

    else
    {
      v5 = 0xEE00737473657571;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x74754F6E676973;
    }

    else
    {
      v4 = 0x746C7561666564;
    }

    v5 = 0xE700000000000000;
  }

  v6 = 0x6174654472657375;
  v7 = 0xEB00000000736C69;
  if (a2 != 2)
  {
    v6 = 0x6552776F6C6C6F66;
    v7 = 0xEE00737473657571;
  }

  if (a2)
  {
    v2 = 0x74754F6E676973;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_ABB3C0();
  }

  return v10 & 1;
}

uint64_t sub_A1AE10(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x676E696461656CLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1952867692;
    }

    else
    {
      v4 = 0x7468676972;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x676E696C69617274;
    }

    else
    {
      v4 = 0x676E696461656CLL;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE400000000000000;
  v8 = 1952867692;
  if (a2 != 2)
  {
    v8 = 0x7468676972;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x676E696C69617274;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_ABB3C0();
  }

  return v11 & 1;
}

uint64_t sub_A1AF3C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xD000000000000011;
  v5 = 0x8000000000B4E1D0;
  if (a1 != 5)
  {
    v4 = 1869768040;
    v5 = 0xE400000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x776F68537674;
  if (a1 != 3)
  {
    v7 = 0x65736163776F6873;
    v6 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x747369747261;
  if (a1 != 1)
  {
    v9 = 0x6F526D6F74737563;
    v8 = 0xEF6D75626C416D6FLL;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6D75626C61;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x747369747261)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xEF6D75626C416D6FLL;
        if (v10 != 0x6F526D6F74737563)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6D75626C61)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0x8000000000B4E1D0;
      if (v10 != 0xD000000000000011)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1869768040)
      {
LABEL_39:
        v13 = sub_ABB3C0();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x776F68537674)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x65736163776F6873)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_A1B15C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006B636142;
  v3 = 0x657461676976616ELL;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x6146747369747261;
    v12 = 0xEF64657469726F76;
    if (a1 != 6)
    {
      v11 = 0xD000000000000011;
      v12 = 0x8000000000B7CDE0;
    }

    v13 = 0x8000000000B7CD90;
    v14 = 0xD00000000000001CLL;
    if (a1 != 4)
    {
      v14 = 0xD00000000000001ELL;
      v13 = 0x8000000000B7CDB0;
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v11;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v5 = 0x8000000000B7CD70;
    v6 = 0xD000000000000014;
    if (a1 == 2)
    {
      v6 = 0x657461676976616ELL;
      v5 = 0xEC0000006B636142;
    }

    v7 = 0x8000000000B7CD40;
    v8 = 0xD000000000000015;
    if (a1)
    {
      v7 = 0x8000000000B48D50;
    }

    else
    {
      v8 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEF64657469726F76;
        if (v9 != 0x6146747369747261)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0x8000000000B7CDE0;
        if (v9 != 0xD000000000000011)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_42;
    }

    if (a2 == 4)
    {
      v2 = 0x8000000000B7CD90;
      if (v9 != 0xD00000000000001CLL)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v2 = 0x8000000000B7CDB0;
    v3 = 0xD00000000000001ELL;
  }

  else
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0x8000000000B48D50;
        if (v9 != 0xD000000000000015)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0x8000000000B7CD40;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_42;
    }

    if (a2 != 2)
    {
      v2 = 0x8000000000B7CD70;
      if (v9 != 0xD000000000000014)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }
  }

  if (v9 != v3)
  {
LABEL_45:
    v15 = sub_ABB3C0();
    goto LABEL_46;
  }

LABEL_42:
  if (v10 != v2)
  {
    goto LABEL_45;
  }

  v15 = 1;
LABEL_46:

  return v15 & 1;
}

uint64_t sub_A1B3E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x4843544150;
  v6 = 0xE300000000000000;
  v7 = 5526864;
  if (a1 != 4)
  {
    v7 = 0x4554454C4544;
    v6 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 1145128264;
  if (a1 != 1)
  {
    v8 = 1414745936;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v8 = 5522759;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE500000000000000;
      if (v9 != 0x4843544150)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE300000000000000;
      if (v9 != 5526864)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x4554454C4544)
      {
LABEL_34:
        v12 = sub_ABB3C0();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE400000000000000;
    if (a2 == 1)
    {
      if (v9 != 1145128264)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != 1414745936)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v11 = 0xE300000000000000;
    if (v9 != 5522759)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

uint64_t JSSettingsItem.Kind.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x746C7561666564;
  v2 = 0x6174654472657375;
  if (a1 != 2)
  {
    v2 = 0x6552776F6C6C6F66;
  }

  if (a1)
  {
    v1 = 0x74754F6E676973;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_A1B620()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

double sub_A1B6F8(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

Swift::Int sub_A1B7BC(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

unint64_t sub_A1B890@<X0>(Swift::String *a1@<X0>, MusicJSCore::JSSettingsItem::Kind_optional *a2@<X8>)
{
  result = _s11MusicJSCore14JSSettingsItemC4KindO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_A1B8C0(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x746C7561666564;
  v4 = 0xEB00000000736C69;
  v5 = 0x6174654472657375;
  if (*v1 != 2)
  {
    v5 = 0x6552776F6C6C6F66;
    v4 = 0xEE00737473657571;
  }

  if (*v1)
  {
    v3 = 0x74754F6E676973;
    v2 = 0xE700000000000000;
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

Swift::Void __swiftcall JSSettingsItem.AccessoryItem.updateToggle(isToggled:)(Swift::Bool isToggled)
{
  if ((v1 & 0x8000000000000000) == 0)
  {
    v2 = v1;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(&v5);

    v3 = v5;
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v2;
    sub_AB5520();
    sub_9E2C20(v3);
  }
}

uint64_t static JSSettingsItem.AccessoryItem.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      return 0;
    }
  }

  else if (a2 < 0)
  {
    return 0;
  }

  sub_13C80(0, &qword_DFA720, NSObject_ptr);
  return sub_ABA790() & 1;
}

uint64_t sub_A1BAA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1 < 0)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      return 0;
    }
  }

  else if (v2 < 0)
  {
    return 0;
  }

  sub_13C80(0, &qword_DFA720, NSObject_ptr);
  return sub_ABA790() & 1;
}

uint64_t sub_A1BB54(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26000, &qword_B41FF0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FF8, &unk_B3F200);
  sub_AB54F0();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_A1BD30(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26000, &qword_B41FF0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FF8, &unk_B3F200);
  sub_AB54F0();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

void sub_A1BF00(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v3);

  *a2 = v3;
}

uint64_t sub_A1BF80(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_AB5520();
}

uint64_t JSSettingsItem.kind.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v1);

  return v1;
}

uint64_t sub_A1C064(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26BD8, &unk_B41450);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26B10, &qword_B41068);
  sub_AB54F0();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_A1C218(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_AB5520();
}

uint64_t sub_A1C2A0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25968, &qword_B3E290);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25960, &unk_B3FEA0);
  sub_AB54F0();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_A1C47C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC650, &qword_B3E4A0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40, &qword_B05A30);
  sub_AB54F0();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_A1C658(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC650, &qword_B3E4A0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40, &qword_B05A30);
  sub_AB54F0();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_A1C834(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC650, &qword_B3E4A0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40, &qword_B05A30);
  sub_AB54F0();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_A1CA10(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC650, &qword_B3E4A0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40, &qword_B05A30);
  sub_AB54F0();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

void sub_A1CC08(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v4);

  v3 = v5;
  *a2 = v4;
  *(a2 + 8) = v3;
}

uint64_t sub_A1CC90(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_AB5520();
}

uint64_t JSSettingsItem.followRequestsCount.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v1);

  return v1;
}

uint64_t sub_A1CD88(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26BD0, &qword_B41448);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26B48, &unk_B46D20);
  sub_AB54F0();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

void sub_A1CF3C(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v20);

  v4 = v20[0] & 0xF000000000000007;
  if ((~a1 & 0xF000000000000007) == 0)
  {
    if (v4 == 0xF000000000000007)
    {
      return;
    }

    goto LABEL_3;
  }

  if (v4 != 0xF000000000000007)
  {
    if (a1 < 0)
    {
      if (v20[0] < 0)
      {
        goto LABEL_9;
      }
    }

    else if ((v20[0] & 0x8000000000000000) == 0)
    {
LABEL_9:
      v5 = v20[0];
      sub_13C80(0, &qword_DFA720, NSObject_ptr);
      v6 = sub_ABA790();
      sub_404114(v5);
      if (v6)
      {
        return;
      }

      goto LABEL_10;
    }

LABEL_3:
    sub_404114(v20[0]);
  }

LABEL_10:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v20);

  v7 = v20[0];
  if ((~v20[0] & 0xF000000000000007) != 0)
  {
    if (*(v2 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem_isUpdatingFromJS))
    {
      sub_404114(v20[0]);
    }

    else
    {
      if (v20[0] < 0)
      {
        if (qword_E23F48 != -1)
        {
          swift_once();
        }

        v14 = static JSBridge.shared;
        v21 = type metadata accessor for JSSettingsItemText();
        v20[0] = v7 & 0x7FFFFFFFFFFFFFFFLL;
        sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
        sub_F46A0(v20, &v18);
        v9 = swift_allocObject();
        *(v9 + 16) = 1;
        v15 = v19;
        *(v9 + 24) = v18;
        *(v9 + 40) = v15;
        strcpy((v9 + 56), "accessoryItem");
        *(v9 + 70) = -4864;
        *(v9 + 72) = v2;
        *(v9 + 80) = v14;
        *(v9 + 88) = 0;
        sub_A1F1E8(v7);
        v16 = v2;
        v17 = v14;
        v13 = sub_9F1374;
      }

      else
      {
        if (qword_E23F48 != -1)
        {
          swift_once();
        }

        v8 = static JSBridge.shared;
        v21 = type metadata accessor for JSSettingsItemToggle(0);
        v20[0] = v7;
        sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
        sub_F46A0(v20, &v18);
        v9 = swift_allocObject();
        *(v9 + 16) = 1;
        v10 = v19;
        *(v9 + 24) = v18;
        *(v9 + 40) = v10;
        strcpy((v9 + 56), "accessoryItem");
        *(v9 + 70) = -4864;
        *(v9 + 72) = v2;
        *(v9 + 80) = v8;
        *(v9 + 88) = 0;
        sub_A1F1E8(v7);
        v11 = v2;
        v12 = v8;
        v13 = sub_9F12C0;
      }

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(v13, v9);
      sub_404114(v7);

      sub_12E1C(v20, &unk_DE8E40, &unk_AF8050);
    }
  }
}

void sub_A1D2E4(unint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_A1F1E8(v2);
  sub_AB5510(&v6);

  v4 = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v2;
  sub_A1F1E8(v2);
  v5 = v3;
  sub_AB5520();
  sub_A1CF3C(v4);
  sub_404114(v4);
  sub_404114(v2);
}

void JSSettingsItem.accessoryItem.setter(unint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v5);

  v3 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  v4 = v1;
  sub_A1F1E8(a1);
  sub_AB5520();
  sub_A1CF3C(v3);
  sub_404114(v3);
  sub_404114(a1);
}

void (*JSSettingsItem.accessoryItem.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(a1 + 1);

  *a1 = a1[1];
  return sub_A1D544;
}

void sub_A1D544(uint64_t *a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1[2];
  if (a2)
  {
    sub_A1F1E8(v4);
    sub_AB5510(a1 + 1);

    v6 = a1[1];
    swift_getKeyPath();
    swift_getKeyPath();
    a1[1] = v4;
    v7 = v5;
    sub_A1F1E8(v4);
    sub_AB5520();
    sub_A1CF3C(v6);
    sub_404114(v6);
    sub_404114(v4);
    v4 = *a1;
  }

  else
  {
    sub_AB5510(a1 + 1);

    v8 = a1[1];
    swift_getKeyPath();
    swift_getKeyPath();
    a1[1] = v4;
    v9 = v5;
    sub_A1F1E8(v4);
    sub_AB5520();
    sub_A1CF3C(v8);
    sub_404114(v8);
  }

  sub_404114(v4);
}

uint64_t JSSettingsItem.$accessoryItem.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26B68, &qword_B41278);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26B60, &qword_B41270);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*JSSettingsItem.$accessoryItem.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26B68, &qword_B41278);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__accessoryItem;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26B60, &qword_B41270);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BD158;
}

uint64_t JSSettingsItem.description.getter()
{
  v1 = v0;
  v16 = 0;
  v17 = 0xE000000000000000;
  v18._countAndFlagsBits = 60;
  v18._object = 0xE100000000000000;
  sub_AB94A0(v18);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  v4 = sub_AB92A0();
  v6 = v5;

  v19._countAndFlagsBits = v4;
  v19._object = v6;
  sub_AB94A0(v19);

  v20._countAndFlagsBits = 8250;
  v20._object = 0xE200000000000000;
  sub_AB94A0(v20);
  v15._countAndFlagsBits = v1;
  sub_ABAF70();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v15);

  object = v15._object;
  if (v15._object)
  {
    v8._countAndFlagsBits = v15._countAndFlagsBits;
    v9 = (v15._object >> 56) & 0xF;
    if ((v15._object & 0x2000000000000000) == 0)
    {
      v9 = v15._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v15._countAndFlagsBits = 0x20656C746974203BLL;
      v15._object = 0xEB0000000022203DLL;
      v8._object = object;
      sub_AB94A0(v8);

      v21._countAndFlagsBits = 34;
      v21._object = 0xE100000000000000;
      sub_AB94A0(v21);
      sub_AB94A0(v15);
    }
  }

  v10 = 0x74754F6E676973;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v15);

  if (LOBYTE(v15._countAndFlagsBits) <= 1u && !LOBYTE(v15._countAndFlagsBits))
  {
    goto LABEL_17;
  }

  v11 = sub_ABB3C0();

  if ((v11 & 1) == 0)
  {
    v15._countAndFlagsBits = 0x3D20646E696B203BLL;
    v15._object = 0xEA00000000002220;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(&v14);

    if (v14 > 1u)
    {
      if (v14 == 2)
      {
        v10 = 0x6174654472657375;
        v12 = 0xEB00000000736C69;
      }

      else
      {
        v10 = 0x6552776F6C6C6F66;
        v12 = 0xEE00737473657571;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (!v14)
      {
        v10 = 0x746C7561666564;
      }
    }

    v22._countAndFlagsBits = v10;
    v22._object = v12;
    sub_AB94A0(v22);

    v23._countAndFlagsBits = 34;
    v23._object = 0xE100000000000000;
    sub_AB94A0(v23);
    sub_AB94A0(v15);
LABEL_17:
  }

  v24._countAndFlagsBits = 62;
  v24._object = 0xE100000000000000;
  sub_AB94A0(v24);
  return v16;
}

void JSSettingsItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem_isUpdatingFromJS;
  v7 = v3[OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem_isUpdatingFromJS];
  v25[0] = a1;
  v25[1] = a2;
  sub_F46A0(a3, v26);
  if (v26[3])
  {
    sub_F46A0(v26, v24);

    if (swift_dynamicCast())
    {
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0 || a1 == 0x65546C6961746564 && a2 == 0xEA00000000007478 || (sub_ABB3C0() & 1) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v21[0] = v22;
        v21[1] = v23;
        v8 = v3;
LABEL_44:
        sub_AB5520();
        goto LABEL_45;
      }

      if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v9 = _s11MusicJSCore14JSSettingsItemC4KindO8rawValueAESgSS_tcfC_0(v22, v23);
        if (v9 == 4)
        {
          v10 = 0;
        }

        else
        {
          v10 = v9;
        }

        goto LABEL_42;
      }
    }

    type metadata accessor for JSArtwork(0);
    if (swift_dynamicCast())
    {
      if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v21[0] = v22;
LABEL_43:
        v18 = v3;
        goto LABEL_44;
      }
    }

    type metadata accessor for JSSettingsItemText();
    if (swift_dynamicCast())
    {
      if (a1 == 0x726F737365636361 && a2 == 0xED00006D65744979 || (sub_ABB3C0() & 1) != 0)
      {
        v11 = v22 | 0x8000000000000000;
        swift_getKeyPath();
        swift_getKeyPath();
        v12 = v22;
        sub_AB5510(v21);

        v13 = v21[0];
        swift_getKeyPath();
        swift_getKeyPath();
        v21[0] = v11;
        v3;
        v14 = v12;
        sub_AB5520();
        sub_A1CF3C(v13);
        sub_404114(v13);

        __swift_destroy_boxed_opaque_existential_0(v24);
LABEL_46:
        sub_12E1C(v26, &unk_DE8E40, &unk_AF8050);

        goto LABEL_47;
      }
    }

    type metadata accessor for JSSettingsItemToggle(0);
    if (swift_dynamicCast())
    {
      v15 = v22;
      if (a1 == 0x726F737365636361 && a2 == 0xED00006D65744979 || (sub_ABB3C0() & 1) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v20 = v22;
        sub_AB5510(v21);

        v16 = v21[0];
        swift_getKeyPath();
        swift_getKeyPath();
        v21[0] = v15;
        v3;
        v17 = v20;
        sub_AB5520();
        sub_A1CF3C(v16);
        sub_404114(v16);

LABEL_45:
        __swift_destroy_boxed_opaque_existential_0(v24);
        goto LABEL_46;
      }
    }

    if (swift_dynamicCast())
    {
      if (v10 = v22, a1 == 0xD000000000000018) && 0x8000000000B81B70 == a2 || (sub_ABB3C0() & 1) != 0 || a1 == 0x7276656843736168 && a2 == 0xEA00000000006E6FLL || (sub_ABB3C0() & 1) != 0 || a1 == 0x4274696445736168 && a2 == 0xED00006E6F747475 || (sub_ABB3C0() & 1) != 0 || a1 == 0x6174656C65447369 && a2 == 0xEB00000000656C62 || (sub_ABB3C0())
      {
LABEL_42:
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v21[0]) = v10;
        goto LABEL_43;
      }
    }

    if (swift_dynamicCast() && (a1 == 0xD000000000000013 && 0x8000000000B81B50 == a2 || (sub_ABB3C0() & 1) != 0))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v22 = v21[0];
      LOBYTE(v23) = 0;
      v19 = v3;
      goto LABEL_44;
    }

    __swift_destroy_boxed_opaque_existential_0(v24);
  }

  else
  {
  }

  sub_12E1C(v25, &unk_E27200, &unk_B3BB90);
LABEL_47:
  v3[v6] = v7;
}

uint64_t *JSSettingsItem.init(type:)(uint64_t *a1)
{
  v48 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26B60, &qword_B41270);
  v46 = *(v2 - 8);
  v47 = v2;
  __chkstk_darwin();
  v45 = &v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26B48, &unk_B46D20);
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin();
  v42 = &v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40, &qword_B05A30);
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin();
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25960, &unk_B3FEA0);
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin();
  v37 = &v35 - v10;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26B10, &qword_B41068);
  v11 = *(v36 - 8);
  __chkstk_darwin();
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FF8, &unk_B3F200);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v35 - v16;
  v18 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__title;
  v49 = 0;
  v50 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0, &unk_AF8970);
  sub_AB54D0();
  v19 = *(v15 + 32);
  v19(v1 + v18, v17, v14);
  v20 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__detailText;
  v49 = 0;
  v50 = 0;
  sub_AB54D0();
  v19(v1 + v20, v17, v14);
  v21 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__kind;
  LOBYTE(v49) = 0;
  sub_AB54D0();
  (*(v11 + 32))(v1 + v21, v13, v36);
  v22 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__artwork;
  v49 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25950, &qword_B3FE50);
  v23 = v37;
  sub_AB54D0();
  (*(v38 + 32))(v1 + v22, v23, v39);
  v24 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__usesApplicationTintColor;
  LOBYTE(v49) = 1;
  sub_AB54D0();
  v25 = v41;
  v26 = *(v40 + 32);
  v26(v1 + v24, v8, v41);
  v27 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__hasChevron;
  LOBYTE(v49) = 0;
  sub_AB54D0();
  v26(v1 + v27, v8, v25);
  v28 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__hasEditButton;
  LOBYTE(v49) = 0;
  sub_AB54D0();
  v26(v1 + v28, v8, v25);
  v29 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__isDeletable;
  LOBYTE(v49) = 0;
  sub_AB54D0();
  v26(v1 + v29, v8, v25);
  v30 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__followRequestsCount;
  v49 = 0;
  LOBYTE(v50) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1320, &unk_AFF5E0);
  v31 = v42;
  sub_AB54D0();
  (*(v43 + 32))(v1 + v30, v31, v44);
  v32 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__accessoryItem;
  v49 = 0xF000000000000007;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26B50, &qword_B41220);
  v33 = v45;
  sub_AB54D0();
  (*(v46 + 32))(v1 + v32, v33, v47);
  *(v1 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem_isUpdatingFromJS) = 0;
  return JSObject.init(type:)(v48);
}

uint64_t sub_A1EB90()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__title;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25FF8, &unk_B3F200);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__detailText, v2);
  v4 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__kind;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26B10, &qword_B41068);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__artwork;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E25960, &unk_B3FEA0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__usesApplicationTintColor;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40, &qword_B05A30);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__hasChevron, v9);
  v10(v0 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__hasEditButton, v9);
  v10(v0 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__isDeletable, v9);
  v11 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__followRequestsCount;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26B48, &unk_B46D20);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC11MusicJSCore14JSSettingsItem__accessoryItem;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26B60, &qword_B41270);
  v15 = *(*(v14 - 8) + 8);

  return v15(v0 + v13, v14);
}

id JSSettingsItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSSettingsItem(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_A1F0E0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JSSettingsItem(0);
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

unint64_t _s11MusicJSCore14JSSettingsItemC4KindO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D4E690;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_A1F1E8(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return (result & 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t type metadata accessor for JSSettingsItem(uint64_t a1)
{
  result = qword_E26BA8;
  if (!qword_E26BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_A1F250()
{
  result = qword_E26B78;
  if (!qword_E26B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E26B78);
  }

  return result;
}

void sub_A1F480(uint64_t a1)
{
  sub_3641C(319, &qword_E26098, &unk_DEE6F0, &unk_AF8970);
  if (v1 <= 0x3F)
  {
    sub_299798(319, &qword_E26BB8, &type metadata for JSSettingsItem.Kind);
    if (v2 <= 0x3F)
    {
      sub_3641C(319, &qword_E259D8, &qword_E25950, &qword_B3FE50);
      if (v3 <= 0x3F)
      {
        sub_299798(319, &qword_DFC638, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          sub_3641C(319, &qword_E26BC0, &unk_DF1320, &unk_AFF5E0);
          if (v5 <= 0x3F)
          {
            sub_3641C(319, &qword_E26BC8, &qword_E26B50, &qword_B41220);
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

uint64_t sub_A1F6E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_A1F73C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t JSBiographyViewModel.items.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v1);

  return v1;
}

void sub_A1F868(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v3);

  *a2 = v3;
}

uint64_t sub_A1F8EC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_AB5520();
}

uint64_t JSBiographyViewModel.items.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_AB5520();
}

void (*JSBiographyViewModel.items.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6A82CC;
}

double JSBiographyViewModel.$items.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26BF0, &qword_B414B0);
  sub_AB54E0();
  swift_endAccess();
  return result;
}

uint64_t JSBiographyViewModel.$items.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26BF8, &qword_B414B8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26BF0, &qword_B414B0);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*JSBiographyViewModel.$items.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26BF8, &qword_B414B8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore20JSBiographyViewModel__items;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26BF0, &qword_B414B0);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BD158;
}

void JSBiographyViewModel.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = a1;
  v9[1] = a2;
  sub_F46A0(a3, v10);
  if (v10[3])
  {
    sub_F46A0(v10, v8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26BE0, &qword_B41460);
    if (swift_dynamicCast())
    {
      if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v7 = v3;
        sub_AB5520();
        __swift_destroy_boxed_opaque_existential_0(v8);
        sub_12E1C(v10, &unk_DE8E40, &unk_AF8050);

        return;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
  }

  JSViewModel.updateProperty(_:value:)(a1, a2, a3);
  sub_12E1C(v9, &unk_E27200, &unk_B3BB90);
}

uint64_t *JSBiographyViewModel.__allocating_init(type:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26BF0, &qword_B414B0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v12 - v5;
  v7 = objc_allocWithZone(v1);
  v8 = OBJC_IVAR____TtC11MusicJSCore20JSBiographyViewModel__items;
  v12[1] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26BE0, &qword_B41460);
  sub_AB54D0();
  (*(v4 + 32))(&v7[v8], v6, v3);
  v9 = &v7[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName];
  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  *&v7[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData] = xmmword_B10830;
  v10 = &v7[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID];
  *v10 = 0;
  *(v10 + 1) = 0;
  return JSObject.init(type:)(a1);
}

uint64_t *JSBiographyViewModel.init(type:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26BF0, &qword_B414B0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC11MusicJSCore20JSBiographyViewModel__items;
  v11[1] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26BE0, &qword_B41460);
  sub_AB54D0();
  (*(v4 + 32))(v1 + v7, v6, v3);
  v8 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_B10830;
  v9 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v9 = 0;
  v9[1] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_A201E0()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore20JSBiographyViewModel__items;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26BF0, &qword_B414B0);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id JSBiographyViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSBiographyViewModel(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSBiographyViewModel(uint64_t a1)
{
  result = qword_E26C28;
  if (!qword_E26C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A20350@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JSBiographyViewModel(0);
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

void sub_A20398(uint64_t a1)
{
  sub_A20428(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_A20428(uint64_t a1)
{
  if (!qword_E26C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E26BE0, &qword_B41460);
    v1 = sub_AB5540();
    if (!v2)
    {
      atomic_store(v1, &qword_E26C38);
    }
  }
}

unint64_t JSViewModelKind.innerViewModel.getter(unint64_t a1)
{
  v1 = a1;
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:
    case 0x2CuLL:
      v1 = a1 & 0xFFFFFFFFFFFFFF9;
      break;
    default:
      break;
  }

  v2 = (a1 & 0xFFFFFFFFFFFFFF9);
  return v1;
}

uint64_t JSViewModelKind.hash(into:)(uint64_t a1, unint64_t a2)
{
  v2 = (a2 >> 58) & 0x3C | (a2 >> 1) & 3;
  switch((a2 >> 58) & 0x3C | (a2 >> 1) & 3)
  {
    case 1uLL:
      v2 = 1;
      break;
    case 2uLL:
      v2 = 2;
      break;
    case 3uLL:
      v2 = 3;
      break;
    case 4uLL:
      v2 = 4;
      break;
    case 5uLL:
      v2 = 5;
      break;
    case 6uLL:
      v2 = 6;
      break;
    case 7uLL:
      v2 = 7;
      break;
    case 8uLL:
      v2 = 8;
      break;
    case 9uLL:
      v2 = 9;
      break;
    case 0xAuLL:
      v2 = 10;
      break;
    case 0xBuLL:
      v2 = 11;
      break;
    case 0xCuLL:
      v2 = 12;
      break;
    case 0xDuLL:
      v2 = 13;
      break;
    case 0xEuLL:
      v2 = 14;
      break;
    case 0xFuLL:
      v2 = 15;
      break;
    case 0x10uLL:
      v2 = 16;
      break;
    case 0x11uLL:
      v2 = 17;
      break;
    case 0x12uLL:
      v2 = 18;
      break;
    case 0x13uLL:
      v2 = 19;
      break;
    case 0x14uLL:
      v2 = 20;
      break;
    case 0x15uLL:
      v2 = 21;
      break;
    case 0x16uLL:
      v2 = 22;
      break;
    case 0x17uLL:
      v2 = 23;
      break;
    case 0x18uLL:
      v2 = 24;
      break;
    case 0x19uLL:
      v2 = 25;
      break;
    case 0x1AuLL:
      v2 = 26;
      break;
    case 0x1BuLL:
      v2 = 27;
      break;
    case 0x1CuLL:
      v2 = 28;
      break;
    case 0x1DuLL:
      v2 = 29;
      break;
    case 0x1EuLL:
      v2 = 30;
      break;
    case 0x1FuLL:
      v2 = 31;
      break;
    case 0x20uLL:
      v2 = 32;
      break;
    case 0x21uLL:
      v2 = 33;
      break;
    case 0x22uLL:
      v2 = 34;
      break;
    case 0x23uLL:
      v2 = 35;
      break;
    case 0x24uLL:
      v2 = 36;
      break;
    case 0x25uLL:
      v2 = 37;
      break;
    case 0x26uLL:
      v2 = 38;
      break;
    case 0x27uLL:
      v2 = 39;
      break;
    case 0x28uLL:
      v2 = 40;
      break;
    case 0x29uLL:
      v2 = 41;
      break;
    case 0x2AuLL:
      v2 = 42;
      break;
    case 0x2BuLL:
      v2 = 43;
      break;
    case 0x2CuLL:
      v2 = 44;
      break;
    default:
      break;
  }

  sub_ABB5D0(v2);
  return sub_ABA7A0();
}

Swift::Int JSViewModelKind.hashValue.getter(unint64_t a1)
{
  sub_ABB5C0();
  JSViewModelKind.hash(into:)(v3, a1);
  return sub_ABB610();
}

Swift::Int sub_A209C4()
{
  v1 = *v0;
  sub_ABB5C0();
  JSViewModelKind.hash(into:)(v3, v1);
  return sub_ABB610();
}

Swift::Int sub_A20A14(uint64_t a1)
{
  v2 = *v1;
  sub_ABB5C0();
  JSViewModelKind.hash(into:)(v4, v2);
  return sub_ABB610();
}

uint64_t _s11MusicJSCore15JSViewModelKindO21__derived_enum_equalsySbAC_ACtFZ_0(unint64_t a1, unint64_t a2, __n128 a3)
{
  v3 = (a2 >> 58) & 0x3C | (a2 >> 1) & 3;
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 1uLL:
      if (v3 != 1)
      {
        return 0;
      }

      type metadata accessor for JSShelf(0);
      return sub_ABA790() & 1;
    case 2uLL:
      if (v3 != 2)
      {
        return 0;
      }

      type metadata accessor for JSBrick(0);
      return sub_ABA790() & 1;
    case 3uLL:
      if (v3 != 3)
      {
        return 0;
      }

      type metadata accessor for JSFlowcase(0);
      return sub_ABA790() & 1;
    case 4uLL:
      if (v3 != 4)
      {
        return 0;
      }

      type metadata accessor for JSGrid(0);
      return sub_ABA790() & 1;
    case 5uLL:
      if (v3 != 5)
      {
        return 0;
      }

      type metadata accessor for JSLiveRadioCase(0);
      return sub_ABA790() & 1;
    case 6uLL:
      if (v3 != 6)
      {
        return 0;
      }

      type metadata accessor for JSVerticalStack(0);
      return sub_ABA790() & 1;
    case 7uLL:
      if (v3 != 7)
      {
        return 0;
      }

      type metadata accessor for JSMenu(0);
      return sub_ABA790() & 1;
    case 8uLL:
      if (v3 != 8)
      {
        return 0;
      }

      type metadata accessor for JSSettingsViewModel(0);
      return sub_ABA790() & 1;
    case 9uLL:
      if (v3 != 9)
      {
        return 0;
      }

      type metadata accessor for JSMessageViewModel();
      return sub_ABA790() & 1;
    case 0xAuLL:
      if (v3 != 10)
      {
        return 0;
      }

      type metadata accessor for JSOnboardingViewModel();
      return sub_ABA790() & 1;
    case 0xBuLL:
      if (v3 != 11)
      {
        return 0;
      }

      type metadata accessor for JSStaticImageViewModel();
      return sub_ABA790() & 1;
    case 0xCuLL:
      if (v3 != 12)
      {
        return 0;
      }

      type metadata accessor for JSParagraphViewModel(0);
      return sub_ABA790() & 1;
    case 0xDuLL:
      if (v3 != 13)
      {
        return 0;
      }

      type metadata accessor for JSMultiChoiceViewModel();
      return sub_ABA790() & 1;
    case 0xEuLL:
      if (v3 != 14)
      {
        return 0;
      }

      type metadata accessor for JSToggleSelectorViewModel();
      return sub_ABA790() & 1;
    case 0xFuLL:
      if (v3 != 15)
      {
        return 0;
      }

      type metadata accessor for JSItemizedTextListViewModel(0);
      return sub_ABA790() & 1;
    case 0x10uLL:
      if (v3 != 16)
      {
        return 0;
      }

      type metadata accessor for JSGroupedTextListViewModel(0);
      return sub_ABA790() & 1;
    case 0x11uLL:
      if (v3 != 17)
      {
        return 0;
      }

      type metadata accessor for JSGroupedItemizedTextListViewModel(0);
      return sub_ABA790() & 1;
    case 0x12uLL:
      if (v3 != 18)
      {
        return 0;
      }

      type metadata accessor for JSBadgingViewModel();
      return sub_ABA790() & 1;
    case 0x13uLL:
      if (v3 != 19)
      {
        return 0;
      }

      type metadata accessor for JSMusicVideoViewModel(0);
      return sub_ABA790() & 1;
    case 0x14uLL:
      if (v3 != 20)
      {
        return 0;
      }

      type metadata accessor for JSTVShowEpisodeDetail(0);
      return sub_ABA790() & 1;
    case 0x15uLL:
      if (v3 != 21)
      {
        return 0;
      }

      type metadata accessor for JSTVShowPlayBarViewModel();
      return sub_ABA790() & 1;
    case 0x16uLL:
      if (v3 != 22)
      {
        return 0;
      }

      type metadata accessor for JSSearchLandingUpsell(0);
      return sub_ABA790() & 1;
    case 0x17uLL:
      if (v3 != 23)
      {
        return 0;
      }

      type metadata accessor for JSSocialLightIdentityCreator(0);
      return sub_ABA790() & 1;
    case 0x18uLL:
      if (v3 != 24)
      {
        return 0;
      }

      type metadata accessor for JSSocialOnboardingFriendsFinder();
      return sub_ABA790() & 1;
    case 0x19uLL:
      if (v3 != 25)
      {
        return 0;
      }

      type metadata accessor for JSSocialProfileVerticalStack(0);
      return sub_ABA790() & 1;
    case 0x1AuLL:
      if (v3 != 26)
      {
        return 0;
      }

      type metadata accessor for JSSocialOnboardingVerticalStack();
      return sub_ABA790() & 1;
    case 0x1BuLL:
      if (v3 != 27)
      {
        return 0;
      }

      type metadata accessor for JSSocialOnboardingWelcomeViewModel();
      return sub_ABA790() & 1;
    case 0x1CuLL:
      if (v3 != 28)
      {
        return 0;
      }

      type metadata accessor for JSSocialProfileCollection();
      return sub_ABA790() & 1;
    case 0x1DuLL:
      if (v3 != 29)
      {
        return 0;
      }

      type metadata accessor for JSSocialProfileEditor();
      return sub_ABA790() & 1;
    case 0x1EuLL:
      if (v3 != 30)
      {
        return 0;
      }

      type metadata accessor for JSSongDetail(0);
      return sub_ABA790() & 1;
    case 0x1FuLL:
      if (v3 != 31)
      {
        return 0;
      }

      type metadata accessor for JSSplitWidgetViewModel(0);
      return sub_ABA790() & 1;
    case 0x20uLL:
      if (v3 != 32)
      {
        return 0;
      }

      type metadata accessor for JSInlineSocialUpsell();
      return sub_ABA790() & 1;
    case 0x21uLL:
      if (v3 != 33)
      {
        return 0;
      }

      type metadata accessor for JSCircleImage();
      return sub_ABA790() & 1;
    case 0x22uLL:
      if (v3 != 34)
      {
        return 0;
      }

      type metadata accessor for JSInlinePopup();
      return sub_ABA790() & 1;
    case 0x23uLL:
      if (v3 != 35)
      {
        return 0;
      }

      type metadata accessor for JSAlertViewModel();
      return sub_ABA790() & 1;
    case 0x24uLL:
      if (v3 != 36)
      {
        return 0;
      }

      type metadata accessor for JSOrderedPlaylistSelector(0);
      return sub_ABA790() & 1;
    case 0x25uLL:
      if (v3 != 37)
      {
        return 0;
      }

      type metadata accessor for JSPrivacyLinkViewModel();
      return sub_ABA790() & 1;
    case 0x26uLL:
      if (v3 != 38)
      {
        return 0;
      }

      type metadata accessor for JSBiographyViewModel(0);
      return sub_ABA790() & 1;
    case 0x27uLL:
      if (v3 != 39)
      {
        return 0;
      }

      type metadata accessor for JSSearchLandingViewModel(0);
      return sub_ABA790() & 1;
    case 0x28uLL:
      if (v3 != 40)
      {
        return 0;
      }

      type metadata accessor for JSInterstellarViewModel();
      return sub_ABA790() & 1;
    case 0x29uLL:
      if (v3 != 41)
      {
        return 0;
      }

      type metadata accessor for JSListenNowMusicSiriUpsell(0);
      return sub_ABA790() & 1;
    case 0x2AuLL:
      if (v3 != 42)
      {
        return 0;
      }

      type metadata accessor for JSUserNotificationAuthorizationViewModel();
      return sub_ABA790() & 1;
    case 0x2BuLL:
      if (v3 != 43)
      {
        return 0;
      }

      type metadata accessor for JSWhatsNewFeaturedItemViewModel(0);
      return sub_ABA790() & 1;
    case 0x2CuLL:
      if (v3 != 44)
      {
        return 0;
      }

      type metadata accessor for JSWhatsNewViewModel(0);
      return sub_ABA790() & 1;
    default:
      if (v3)
      {
        return 0;
      }

      type metadata accessor for JSContainerDetail();
      return sub_ABA790() & 1;
  }
}

unint64_t _s11MusicJSCore15JSViewModelKindO5valueACSgyp_tcfC_0(void *a1, __n128 a2)
{
  type metadata accessor for JSContainerDetail();
  if (!swift_dynamicCast())
  {
    type metadata accessor for JSShelf(0);
    if (swift_dynamicCast())
    {
      v3 = v10 | 2;
      goto LABEL_19;
    }

    type metadata accessor for JSBrick(0);
    if (swift_dynamicCast())
    {
      v3 = v10 | 4;
      goto LABEL_19;
    }

    type metadata accessor for JSFlowcase(0);
    if (swift_dynamicCast())
    {
      v3 = v10 | 6;
      goto LABEL_19;
    }

    type metadata accessor for JSGrid(0);
    if (swift_dynamicCast())
    {
      v3 = v10 | 0x1000000000000000;
      goto LABEL_19;
    }

    type metadata accessor for JSLiveRadioCase(0);
    if (swift_dynamicCast())
    {
      v4 = v10;
      v5 = 0x1000000000000002;
LABEL_13:
      v3 = v4 | v5;
      goto LABEL_19;
    }

    type metadata accessor for JSSocialLightIdentityCreator(0);
    if (swift_dynamicCast())
    {
      v6 = v10;
      v7 = 0x5000000000000002;
      goto LABEL_16;
    }

    type metadata accessor for JSSocialOnboardingFriendsFinder();
    if (swift_dynamicCast())
    {
      v3 = v10 | 0x6000000000000000;
      goto LABEL_19;
    }

    type metadata accessor for JSSocialProfileVerticalStack(0);
    if (swift_dynamicCast())
    {
      v4 = v10;
      v5 = 0x6000000000000002;
      goto LABEL_13;
    }

    type metadata accessor for JSSocialOnboardingVerticalStack();
    if (swift_dynamicCast())
    {
      v4 = v10;
      v9 = 0x6000000000000002;
    }

    else
    {
      type metadata accessor for JSSocialProfileCollection();
      if (swift_dynamicCast())
      {
        v3 = v10 | 0x7000000000000000;
        goto LABEL_19;
      }

      type metadata accessor for JSSocialProfileEditor();
      if (swift_dynamicCast())
      {
        v4 = v10;
        v5 = 0x7000000000000002;
        goto LABEL_13;
      }

      type metadata accessor for JSInlineSocialUpsell();
      if (swift_dynamicCast())
      {
        v3 = v10 | 0x8000000000000000;
        goto LABEL_19;
      }

      type metadata accessor for JSCircleImage();
      if (swift_dynamicCast())
      {
        v4 = v10;
        v5 = 0x8000000000000002;
        goto LABEL_13;
      }

      type metadata accessor for JSVerticalStack(0);
      if (swift_dynamicCast())
      {
        v4 = v10;
        v9 = 0x1000000000000002;
      }

      else
      {
        type metadata accessor for JSMenu(0);
        if (swift_dynamicCast())
        {
          v6 = v10;
          v7 = 0x1000000000000002;
          goto LABEL_16;
        }

        type metadata accessor for JSSettingsViewModel(0);
        if (swift_dynamicCast())
        {
          v3 = v10 | 0x2000000000000000;
          goto LABEL_19;
        }

        type metadata accessor for JSMessageViewModel();
        if (swift_dynamicCast())
        {
          v4 = v10;
          v5 = 0x2000000000000002;
          goto LABEL_13;
        }

        type metadata accessor for JSOnboardingViewModel();
        if (swift_dynamicCast())
        {
          v4 = v10;
          v9 = 0x2000000000000002;
        }

        else
        {
          type metadata accessor for JSStaticImageViewModel();
          if (swift_dynamicCast())
          {
            v6 = v10;
            v7 = 0x2000000000000002;
            goto LABEL_16;
          }

          type metadata accessor for JSParagraphViewModel(0);
          if (swift_dynamicCast())
          {
            v3 = v10 | 0x3000000000000000;
            goto LABEL_19;
          }

          type metadata accessor for JSMultiChoiceViewModel();
          if (swift_dynamicCast())
          {
            v4 = v10;
            v5 = 0x3000000000000002;
            goto LABEL_13;
          }

          type metadata accessor for JSToggleSelectorViewModel();
          if (swift_dynamicCast())
          {
            v4 = v10;
            v9 = 0x3000000000000002;
          }

          else
          {
            type metadata accessor for JSItemizedTextListViewModel(0);
            if (swift_dynamicCast())
            {
              v6 = v10;
              v7 = 0x3000000000000002;
              goto LABEL_16;
            }

            type metadata accessor for JSGroupedTextListViewModel(0);
            if (swift_dynamicCast())
            {
              v3 = v10 | 0x4000000000000000;
              goto LABEL_19;
            }

            type metadata accessor for JSGroupedItemizedTextListViewModel(0);
            if (swift_dynamicCast())
            {
              v4 = v10;
              v5 = 0x4000000000000002;
              goto LABEL_13;
            }

            type metadata accessor for JSBadgingViewModel();
            if (swift_dynamicCast())
            {
              v4 = v10;
              v9 = 0x4000000000000002;
            }

            else
            {
              type metadata accessor for JSMusicVideoViewModel(0);
              if (swift_dynamicCast())
              {
                v6 = v10;
                v7 = 0x4000000000000002;
                goto LABEL_16;
              }

              type metadata accessor for JSTVShowEpisodeDetail(0);
              if (swift_dynamicCast())
              {
                v4 = v10;
                v5 = 0x5000000000000000;
                goto LABEL_13;
              }

              type metadata accessor for JSTVShowPlayBarViewModel();
              if (swift_dynamicCast())
              {
                v4 = v10;
                v5 = 0x5000000000000002;
                goto LABEL_13;
              }

              type metadata accessor for JSInlinePopup();
              if (swift_dynamicCast())
              {
                v4 = v10;
                v9 = 0x8000000000000002;
              }

              else
              {
                type metadata accessor for JSAlertViewModel();
                if (swift_dynamicCast())
                {
                  v6 = v10;
                  v7 = 0x8000000000000002;
                  goto LABEL_16;
                }

                type metadata accessor for JSOrderedPlaylistSelector(0);
                if (swift_dynamicCast())
                {
                  v4 = v10;
                  v5 = 0x9000000000000000;
                  goto LABEL_13;
                }

                type metadata accessor for JSPrivacyLinkViewModel();
                if (swift_dynamicCast())
                {
                  v4 = v10;
                  v5 = 0x9000000000000002;
                  goto LABEL_13;
                }

                type metadata accessor for JSSocialOnboardingWelcomeViewModel();
                if (swift_dynamicCast())
                {
                  v6 = v10;
                  v7 = 0x6000000000000002;
                  goto LABEL_16;
                }

                type metadata accessor for JSBiographyViewModel(0);
                if (swift_dynamicCast())
                {
                  v4 = v10;
                  v9 = 0x9000000000000002;
                }

                else
                {
                  type metadata accessor for JSSplitWidgetViewModel(0);
                  if (swift_dynamicCast())
                  {
                    v6 = v10;
                    v7 = 0x7000000000000002;
                    goto LABEL_16;
                  }

                  type metadata accessor for JSSongDetail(0);
                  if (swift_dynamicCast())
                  {
                    v4 = v10;
                    v9 = 0x7000000000000002;
                  }

                  else
                  {
                    type metadata accessor for JSSearchLandingViewModel(0);
                    if (swift_dynamicCast())
                    {
                      v6 = v10;
                      v7 = 0x9000000000000002;
                      goto LABEL_16;
                    }

                    type metadata accessor for JSSearchLandingUpsell(0);
                    if (swift_dynamicCast())
                    {
                      v4 = v10;
                      v9 = 0x5000000000000002;
                    }

                    else
                    {
                      type metadata accessor for JSListenNowMusicSiriUpsell(0);
                      if (swift_dynamicCast())
                      {
                        v4 = v10;
                        v5 = 0xA000000000000002;
                        goto LABEL_13;
                      }

                      type metadata accessor for JSInterstellarViewModel();
                      if (swift_dynamicCast())
                      {
                        v4 = v10;
                        v5 = 0xA000000000000000;
                        goto LABEL_13;
                      }

                      type metadata accessor for JSUserNotificationAuthorizationViewModel();
                      if (!swift_dynamicCast())
                      {
                        type metadata accessor for JSWhatsNewFeaturedItemViewModel(0);
                        if (!swift_dynamicCast())
                        {
                          type metadata accessor for JSWhatsNewViewModel(0);
                          if (!swift_dynamicCast())
                          {
                            v3 = 0xF000000000000007;
                            goto LABEL_19;
                          }

                          v4 = v10;
                          v5 = 0xB000000000000000;
                          goto LABEL_13;
                        }

                        v6 = v10;
                        v7 = 0xA000000000000002;
LABEL_16:
                        v3 = v6 | v7 | 4;
                        goto LABEL_19;
                      }

                      v4 = v10;
                      v9 = 0xA000000000000002;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v5 = v9 + 2;
    goto LABEL_13;
  }

  v3 = v10;
LABEL_19:
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

unint64_t sub_A219BC()
{
  result = qword_E26C40;
  if (!qword_E26C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E26C40);
  }

  return result;
}

uint64_t sub_A21A24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x54 && *(a1 + 8))
  {
    return (*a1 + 84);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 1) & 0xFFFFFFBF | ((*a1 & 1) << 6)) ^ 0x7F;
  if (v3 >= 0x53)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_A21A80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x53)
  {
    *result = a2 - 84;
    if (a3 >= 0x54)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x54)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 6) & 1 | (2 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *JSDateFormatter.dateFormattingOptions.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore15JSDateFormatter_dateFormattingOptions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

Swift::Void __swiftcall JSDateFormatter.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  if (*(arguments._rawValue + 2))
  {
    sub_808B0(arguments._rawValue + 32, &v28);
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v26[0] = countAndFlagsBits;
  v26[1] = object;
  v27[0] = v28;
  v27[1] = v29;
  if (*(&v29 + 1))
  {
    sub_F46A0(v27, v25);

    if (swift_dynamicCast())
    {
      v5 = v23;
      v4 = v24;
      if (countAndFlagsBits == 0x6D726F4665746164 && object == 0xEA00000000007461 || (sub_ABB3C0() & 1) != 0)
      {
        Array.subscript.getter(&type metadata for Any + 8, v21);
        if (v22)
        {
          v6 = swift_dynamicCast();
          if (v6)
          {
            v7 = v19;
          }

          else
          {
            v7 = 0;
          }

          if (v6)
          {
            v8 = v20;
          }

          else
          {
            v8 = 0;
          }
        }

        else
        {
          sub_12E1C(v21, &unk_DE8E40, &unk_AF8050);
          v7 = 0;
          v8 = 0;
        }

        Array.subscript.getter(&type metadata for Any + 8, v21);
        if (v22)
        {
          v9 = swift_dynamicCast();
          if (v9)
          {
            v10 = v19;
          }

          else
          {
            v10 = 0;
          }

          if (v9)
          {
            v11 = v20;
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          sub_12E1C(v21, &unk_DE8E40, &unk_AF8050);
          v10 = 0;
          v11 = 0;
        }

        sub_A21F54(v5, v4, v7, v8, v10, v11);

        __swift_destroy_boxed_opaque_existential_0(v25);
        sub_12E1C(v27, &unk_DE8E40, &unk_AF8050);

        return;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
  }

  if (qword_E23FF8 != -1)
  {
    swift_once();
  }

  v12 = sub_AB4BC0();
  __swift_project_value_buffer(v12, qword_E26C58);

  v13 = sub_AB4BA0();
  v14 = sub_AB9F40();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v15 = 136315650;
    *(v15 + 4) = sub_425E68(0xD00000000000001ALL, 0x8000000000B81CA0, v25);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_425E68(countAndFlagsBits, object, v25);
    *(v15 + 22) = 2080;
    v16 = sub_AB9770();
    v18 = sub_425E68(v16, v17, v25);

    *(v15 + 24) = v18;
    _os_log_impl(&dword_0, v13, v14, "%s Unexpected method: '%s' '%s'", v15, 0x20u);
    swift_arrayDestroy();
  }

  sub_12E1C(v26, &unk_E27200, &unk_B3BB90);
}

void sub_A21F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v12 = *(sub_AB35C0() - 8);
  __chkstk_darwin();
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a6)
  {
    v38 = v13;

    if (a4)
    {

      sub_AB3480();
    }

    else
    {
      sub_AB3550();
    }

    v20 = objc_opt_self();
    v21 = sub_AB9260();
    isa = sub_AB34E0().super.isa;
    v23 = [v20 dateFormatFromTemplate:v21 options:0 locale:isa];

    if (v23)
    {
      v24 = sub_AB92A0();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v37 = a5;
    if (qword_E23F48 != -1)
    {
      swift_once();
    }

    v27 = static JSBridge.shared;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840, &qword_AF9020);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_AF8820;
    *(v28 + 56) = ObjectType;
    *(v28 + 32) = v7;
    if (v26)
    {
      *(&v40 + 1) = &type metadata for String;
      *&v39 = v24;
      *(&v39 + 1) = v26;
      sub_9ACFC(&v39, (v28 + 64));
      v29 = v7;
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
      v30 = objc_allocWithZone(NSNull);
      v31 = v7;
      v32 = [v30 init];
      *(v28 + 88) = sub_13C80(0, &qword_E27CD0, NSNull_ptr);
      *(v28 + 64) = v32;
      if (*(&v40 + 1))
      {
        sub_12E1C(&v39, &unk_DE8E40, &unk_AF8050);
      }
    }

    *(v28 + 120) = &type metadata for String;
    *(v28 + 96) = v37;
    *(v28 + 104) = a6;
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v33 = swift_allocObject();
    *(v33 + 16) = v28;
    *(v33 + 24) = _swiftEmptyArrayStorage;
    *(v33 + 32) = 0xD00000000000001ELL;
    *(v33 + 40) = 0x8000000000B81EF0;
    *(v33 + 48) = v7;
    *(v33 + 56) = v27;
    *(v33 + 64) = 0;
    v34 = v7;
    v35 = v27;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_99F5C4, v33);

    (*(v12 + 8))(v15, v38);
  }

  else
  {
    if (qword_E23FF8 != -1)
    {
      swift_once();
    }

    v16 = sub_AB4BC0();
    __swift_project_value_buffer(v16, qword_E26C58);
    v38 = sub_AB4BA0();
    v17 = sub_AB9F40();
    if (os_log_type_enabled(v38, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v39 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_425E68(0xD00000000000002FLL, 0x8000000000B81EC0, &v39);
      _os_log_impl(&dword_0, v38, v17, "Completion handler required for '%s''", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
    }

    else
    {
      v36 = v38;
    }
  }
}

void JSDateFormatter.updateProperty(_:value:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v20[0] = a1;
  v20[1] = a2;
  sub_F46A0(a3, v21);
  if (v21[3])
  {
    sub_F46A0(v21, v19);
    type metadata accessor for JSDateFormattingOptions();

    if (swift_dynamicCast())
    {
      if (a1 == 0xD000000000000015 && 0x8000000000B81CE0 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore15JSDateFormatter_dateFormattingOptions;
        swift_beginAccess();
        v8 = *(v3 + v7);
        *(v3 + v7) = v18;

        __swift_destroy_boxed_opaque_existential_0(v19);
        sub_12E1C(v21, &unk_DE8E40, &unk_AF8050);

        return;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
  }

  if (qword_E23FF8 != -1)
  {
    swift_once();
  }

  v9 = sub_AB4BC0();
  __swift_project_value_buffer(v9, qword_E26C58);
  sub_F46A0(a3, v19);

  v10 = sub_AB4BA0();
  v11 = sub_AB9F40();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v12 = 136315650;
    *(v12 + 4) = sub_425E68(0xD000000000000018, 0x8000000000B81CC0, &v18);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_425E68(a1, a2, &v18);
    *(v12 + 22) = 2080;
    sub_F46A0(v19, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E40, &unk_AF8050);
    v13 = sub_AB9350();
    v15 = v14;
    sub_12E1C(v19, &unk_DE8E40, &unk_AF8050);
    v16 = sub_425E68(v13, v15, &v18);

    *(v12 + 24) = v16;
    _os_log_impl(&dword_0, v10, v11, "%s Unexpected property name or value: '%s' '%s'", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_12E1C(v19, &unk_DE8E40, &unk_AF8050);
  }

  sub_12E1C(v20, &unk_E27200, &unk_B3BB90);
}

void JSDateFormatter.transformedValue(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OBJC_IVAR____TtC11MusicJSCore15JSDateFormatter_dateFormattingOptions;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!v6)
  {
    if (qword_E23FF8 != -1)
    {
      swift_once();
    }

    v15 = sub_AB4BC0();
    __swift_project_value_buffer(v15, qword_E26C58);
    v16 = sub_AB4BA0();
    v17 = sub_AB9F40();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_425E68(0xD000000000000017, 0x8000000000B81D00, v30);
      _os_log_impl(&dword_0, v16, v17, "%s Date formatting options should be assigned upon initialization", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
    }

    goto LABEL_15;
  }

  sub_808B0(a1, v30);
  type metadata accessor for JSDateDescriptor();
  v7 = v6;
  if (!swift_dynamicCast())
  {
    type metadata accessor for JSDateRangeDescriptor();
    if (!swift_dynamicCast())
    {
      if (qword_E23FF8 != -1)
      {
        swift_once();
      }

      v20 = sub_AB4BC0();
      __swift_project_value_buffer(v20, qword_E26C58);
      sub_808B0(a1, v29);
      v21 = sub_AB4BA0();
      v22 = sub_AB9F40();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v23 = 136315394;
        *(v23 + 4) = sub_425E68(0xD000000000000017, 0x8000000000B81D00, &v28);
        *(v23 + 12) = 2080;
        __swift_project_boxed_opaque_existential_1(v29, v29[3]);
        swift_getDynamicType();
        v24 = sub_ABB6D0();
        v26 = v25;
        __swift_destroy_boxed_opaque_existential_0(v29);
        v27 = sub_425E68(v24, v26, &v28);

        *(v23 + 14) = v27;
        _os_log_impl(&dword_0, v21, v22, "%s Unhandled raw value type method/arguments: '%s'", v23, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v29);
      }

      *a2 = 0u;
      *(a2 + 16) = 0u;
      goto LABEL_22;
    }

    v8 = v29[0];
    if ((*(v29[0] + OBJC_IVAR____TtC11MusicJSCore21JSDateRangeDescriptor_startTimestamp + 8) & 1) == 0 && (*(v29[0] + OBJC_IVAR____TtC11MusicJSCore21JSDateRangeDescriptor_endTimestamp + 8) & 1) == 0)
    {
      v10 = *(v29[0] + OBJC_IVAR____TtC11MusicJSCore21JSDateRangeDescriptor_endTimestamp);
      v9 = *(v29[0] + OBJC_IVAR____TtC11MusicJSCore21JSDateRangeDescriptor_startTimestamp);
      v11 = 0;
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  v8 = v29[0];
  if (*(v29[0] + OBJC_IVAR____TtC11MusicJSCore16JSDateDescriptor_timestamp + 8))
  {
LABEL_14:

    __swift_destroy_boxed_opaque_existential_0(v30);
LABEL_15:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v9 = *(v29[0] + OBJC_IVAR____TtC11MusicJSCore16JSDateDescriptor_timestamp);
  v10 = 0;
  v11 = 1;
LABEL_5:
  v12 = sub_A23D98(v10, v11, v7, v9);
  v14 = v13;
  *(a2 + 24) = &type metadata for String;

  *a2 = v12;
  *(a2 + 8) = v14;
LABEL_22:
  __swift_destroy_boxed_opaque_existential_0(v30);
}

void sub_A22BA0(uint64_t a1, char a2, double a3)
{
  v5 = (v3 + OBJC_IVAR____TtC11MusicJSCore23JSDateFormattingOptions_template);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = (v3 + OBJC_IVAR____TtC11MusicJSCore23JSDateFormattingOptions_languageTag);
    swift_beginAccess();
    v10 = *v8;
    v9 = v8[1];
    v11 = OBJC_IVAR____TtC11MusicJSCore23JSDateFormattingOptions_dateStyle;
    swift_beginAccess();
    v12 = *(v3 + v11);
    v13 = v12 == 5;
    if (v12 == 5)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(v3 + v11);
    }

    v15 = OBJC_IVAR____TtC11MusicJSCore23JSDateFormattingOptions_timeStyle;
    swift_beginAccess();
    v16 = *(v3 + v15);
    v17 = v16 == 5;
    if (v16 == 5)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v3 + v15);
    }

    v19 = OBJC_IVAR____TtC11MusicJSCore23JSDateFormattingOptions_uppercasedDateComponentSymbols;
    swift_beginAccess();
    v20 = *(v3 + v19);
    type metadata accessor for JSDateFormatter.CacheCoordinator.Key();
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    *(v21 + 56) = v10;
    *(v21 + 64) = v9;
    *(v21 + 40) = v7;
    *(v21 + 48) = v6;
    *(v21 + 72) = v14;
    *(v21 + 80) = v13;
    *(v21 + 88) = v18;
    *(v21 + 96) = v17;
    *(v21 + 24) = a1;
    *(v21 + 32) = a2 & 1;
    *(v21 + 104) = v20;
  }

  else
  {
    __break(1u);
  }
}

id sub_A22D40()
{
  result = [objc_allocWithZone(NSCache) init];
  qword_E26C48 = result;
  return result;
}

void sub_A22D74(uint64_t a1)
{
  v2 = v1;
  sub_AB93F0();
  sub_ABB5E0((*(v2 + 32) & 1) == 0);
  if (*(v2 + 64))
  {
    sub_ABB5E0(1u);
    sub_AB93F0();
  }

  else
  {
    sub_ABB5E0(0);
  }

  if (*(v2 + 80) == 1)
  {
    sub_ABB5E0(0);
  }

  else
  {
    v4 = *(v2 + 72);
    sub_ABB5E0(1u);
    sub_ABB5D0(v4);
  }

  if (*(v2 + 96) != 1)
  {
    v6 = *(v2 + 88);
    sub_ABB5E0(1u);
    sub_ABB5D0(v6);
    v5 = *(v2 + 104);
    if (v5)
    {
      goto LABEL_9;
    }

LABEL_13:
    sub_ABB5E0(0);
    return;
  }

  sub_ABB5E0(0);
  v5 = *(v2 + 104);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_9:
  sub_ABB5E0(1u);

  sub_A23658(a1, v5);
}

id sub_A22F88()
{
  v1 = v0;
  v2 = sub_AB35C0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(NSDateIntervalFormatter) init];
  if (*(v1 + 64))
  {

    sub_AB3480();
    isa = sub_AB34E0().super.isa;
    (*(v3 + 8))(v5, v2);
    [v6 setLocale:isa];
  }

  if ((*(v1 + 80) & 1) == 0)
  {
    [v6 setDateStyle:*(v1 + 72)];
  }

  if ((*(v1 + 96) & 1) == 0)
  {
    [v6 setTimeStyle:*(v1 + 88)];
  }

  [v6 setBoundaryStyle:2];
  v8 = sub_AB9260();
  [v6 setDateTemplate:v8];

  return v6;
}

id sub_A23128()
{
  v1 = v0;
  v2 = sub_AB35C0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(NSDateFormatter) init];
  if (*(v1 + 64))
  {

    sub_AB3480();
    isa = sub_AB34E0().super.isa;
    (*(v3 + 8))(v5, v2);
    [v6 setLocale:isa];
  }

  if ((*(v1 + 80) & 1) == 0)
  {
    [v6 setDateStyle:*(v1 + 72)];
  }

  if ((*(v1 + 96) & 1) == 0)
  {
    [v6 setTimeStyle:*(v1 + 88)];
  }

  v8 = sub_AB9260();
  [v6 setLocalizedDateFormatFromTemplate:v8];

  return v6;
}

uint64_t sub_A232B4()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_A232FC()
{
  sub_ABB5C0();
  sub_A22D74(v1);
  return sub_ABB610();
}

Swift::Int sub_A23364(uint64_t a1)
{
  sub_ABB5C0();
  sub_A22D74(v2);
  return sub_ABB610();
}

uint64_t sub_A233A4(uint64_t a1)
{
  v3 = sub_ABB640();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v10[3] = a1;
  v10[0] = v7;

  sub_ABB620();
  v8 = sub_ABB630();
  (*(v4 + 8))(v6, v3);
  return v8;
}

uint64_t *JSDateFormatter.__allocating_init(type:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MusicJSCore15JSDateFormatter_dateFormattingOptions] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_A23568()
{
  sub_13C80(0, &qword_DED8C0, OS_os_log_ptr);
  result = OS_os_log.init(musicCategory:)(0x6F4665746144534ALL, 0xEF72657474616D72);
  qword_E26C50 = result;
  return result;
}

uint64_t sub_A235CC()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E26C58);
  __swift_project_value_buffer(v0, qword_E26C58);
  if (qword_E23FF0 != -1)
  {
    swift_once();
  }

  v1 = qword_E26C50;
  return sub_AB4BD0();
}

void sub_A23658(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_ABB5D0(v3);
  if (v3)
  {
    v4 = a2 + 32;
    do
    {
      ++v4;
      sub_AB93F0();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_A2372C(char **a1)
{
  v3 = sub_AB3430();
  v57 = *(v3 - 1);
  __chkstk_darwin();
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v56 - v6;
  if (qword_E23FE8 != -1)
  {
LABEL_39:
    swift_once();
  }

  v8 = [qword_E26C48 objectForKey:{a1, v56}];
  if (!v8)
  {
    if (a1[4])
    {
      v9 = sub_A23128();
    }

    else
    {
      v9 = sub_A22F88();
    }

    v8 = v9;
    [qword_E26C48 setObject:v9 forKey:a1];
  }

  v58 = v7;
  v59 = v3;
  sub_AB33C0();
  objc_opt_self();
  v61 = swift_dynamicCastObjCClass();
  if (!v61)
  {
    objc_opt_self();
    v1 = v8;
    v42 = swift_dynamicCastObjCClass();
    if (!v42 || (a1[4] & 1) != 0)
    {
      goto LABEL_42;
    }

    v43 = v42;
    v44 = v58;
    isa = sub_AB3370().super.isa;
    sub_AB33C0();
    v46 = sub_AB3370().super.isa;
    v47 = *(v57 + 8);
    v48 = v5;
    v49 = v59;
    v47(v48, v59);
    v50 = [v43 stringFromDate:isa toDate:v46];

    v41 = sub_AB92A0();
    v47(v44, v49);
    return v41;
  }

  v56 = v8;
  v3 = a1[13];
  v5 = v61;
  if (!v3 || (v7 = *(v3 + 2)) == 0)
  {
LABEL_33:
    v38 = v58;
    v39 = sub_AB3370().super.isa;
    v40 = [v5 stringFromDate:v39];

    v41 = sub_AB92A0();
    (*(v57 + 8))(v38, v59);
    return v41;
  }

  v10 = 0;
  v11 = v3 + 32;
  v63 = *(v3 + 2);
  v64 = v3;
  v62 = v3 + 32;
  while (1)
  {
    if (v10 >= *(v3 + 2))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (!v11[v10])
    {
      break;
    }

    if (v11[v10] != 1)
    {
      goto LABEL_13;
    }

    v13 = [v5 shortMonthSymbols];
    if (!v13)
    {
      goto LABEL_41;
    }

    v14 = v13;
    v15 = sub_AB9760();

    v1 = *(v15 + 16);
    if (!v1)
    {

      a1 = &selRef_setShortMonthSymbols_;
      goto LABEL_12;
    }

    v65 = _swiftEmptyArrayStorage;
    sub_6D5A0(0, v1, 0);
    v16 = v65;
    sub_36A48();
    v17 = (v15 + 40);
    do
    {
      v18 = *v17;
      v66 = *(v17 - 1);
      v67 = v18;
      v19 = sub_ABAA90();
      v65 = v16;
      v22 = v16[2];
      v21 = v16[3];
      if (v22 >= v21 >> 1)
      {
        v24 = v19;
        v25 = v20;
        sub_6D5A0((v21 > 1), v22 + 1, 1);
        v20 = v25;
        v19 = v24;
        v5 = v61;
        v16 = v65;
      }

      v16[2] = v22 + 1;
      v23 = &v16[2 * v22];
      v23[4] = v19;
      v23[5] = v20;
      v17 += 2;
      --v1;
    }

    while (v1);

    a1 = &selRef_setShortMonthSymbols_;
LABEL_11:
    v7 = v63;
    v3 = v64;
    v11 = v62;
LABEL_12:
    v12 = sub_AB9740().super.isa;

    [v5 *a1];

LABEL_13:
    if (++v10 == v7)
    {
      goto LABEL_33;
    }
  }

  v26 = [v5 shortWeekdaySymbols];
  if (v26)
  {
    v27 = v26;
    v28 = sub_AB9760();

    v1 = *(v28 + 16);
    if (!v1)
    {

      a1 = &selRef_setShortWeekdaySymbols_;
      goto LABEL_12;
    }

    v65 = _swiftEmptyArrayStorage;
    sub_6D5A0(0, v1, 0);
    v29 = v65;
    sub_36A48();
    v60 = v28;
    v30 = (v28 + 40);
    do
    {
      v31 = *v30;
      v66 = *(v30 - 1);
      v67 = v31;
      v32 = sub_ABAA90();
      v34 = v33;
      v65 = v29;
      v36 = v29[2];
      v35 = v29[3];
      if (v36 >= v35 >> 1)
      {
        sub_6D5A0((v35 > 1), v36 + 1, 1);
        v29 = v65;
      }

      v29[2] = v36 + 1;
      v37 = &v29[2 * v36];
      v37[4] = v32;
      v37[5] = v34;
      v30 += 2;
      --v1;
    }

    while (v1);

    a1 = &selRef_setShortWeekdaySymbols_;
    v5 = v61;
    goto LABEL_11;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_ABAD90(25);

  v66 = 0xD000000000000016;
  v67 = 0x8000000000B81EA0;
  v52 = [v1 description];
  v53 = sub_AB92A0();
  v55 = v54;

  v68._countAndFlagsBits = v53;
  v68._object = v55;
  sub_AB94A0(v68);

  v69._countAndFlagsBits = 39;
  v69._object = 0xE100000000000000;
  sub_AB94A0(v69);
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

uint64_t sub_A23D98(uint64_t a1, char a2, uint64_t a3, double a4)
{
  v8 = sub_ABB640();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A22BA0(a1, a2 & 1, a4);
  v13 = v12;
  v14 = sub_A2372C(v12);
  v15 = v14;
  v17 = v16;
  v18 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v18 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    if (qword_E23FF8 != -1)
    {
      swift_once();
    }

    v19 = sub_AB4BC0();
    __swift_project_value_buffer(v19, qword_E26C58);

    v20 = sub_AB4BA0();
    v21 = sub_AB9F30();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v49[0] = v42;
      *v22 = 136315394;
      *(v22 + 4) = sub_425E68(0xD000000000000040, 0x8000000000B81E20, v49);
      *(v22 + 12) = 2080;
      v44 = type metadata accessor for JSDateFormatter.CacheCoordinator.Key();
      v43 = v13;

      sub_ABB620();
      LODWORD(v41) = v21;
      v23 = sub_ABB630();
      v40 = v20;
      v24 = v13;
      v26 = v25;
      (*(v9 + 8))(v11, v8);
      v27 = sub_425E68(v23, v26, v49);
      v13 = v24;

      *(v22 + 14) = v27;
      v28 = v40;
      _os_log_impl(&dword_0, v40, v41, "%s Empty formatted value for key: '%s'", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  v29 = OBJC_IVAR____TtC11MusicJSCore23JSDateFormattingOptions_excludedPatterns;
  swift_beginAccess();
  v30 = *(a3 + v29);
  if (v30)
  {
    v41 = a3;
    v42 = v13;
    v31 = *(v30 + 16);

    if (v31)
    {
      sub_36A48();
      v32 = (v30 + 40);
      do
      {
        v33 = *(v32 - 1);
        v34 = *v32;
        v49[0] = v15;
        v49[1] = v17;
        v47 = v33;
        v48 = v34;
        v45 = 0;
        v46 = 0xE000000000000000;

        v15 = sub_ABAAB0();
        v36 = v35;

        v32 += 2;
        v17 = v36;
        --v31;
      }

      while (v31);
    }

    else
    {
      v36 = v17;
    }

    v17 = v36;
    a3 = v41;
  }

  v37 = a3 + OBJC_IVAR____TtC11MusicJSCore23JSDateFormattingOptions_stringFormat;
  swift_beginAccess();
  if (*(v37 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1E10, &unk_B071A0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_AF4EC0;
    *(v38 + 56) = &type metadata for String;
    *(v38 + 64) = sub_2792B0();
    *(v38 + 32) = v15;
    *(v38 + 40) = v17;

    v15 = sub_AB92E0();
  }

  return v15;
}

unint64_t sub_A24260()
{
  result = qword_E26D70;
  if (!qword_E26D70)
  {
    type metadata accessor for JSDateFormatter.CacheCoordinator.Key();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E26D70);
  }

  return result;
}

uint64_t sub_A242B8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  if (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48))
  {
    v4 = a1;
    v5 = a2;
    v6 = sub_ABB3C0();
    a2 = v5;
    v7 = v6;
    a1 = v4;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(a1 + 64);
  v9 = *(a2 + 64);
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    if (*(a1 + 56) != *(a2 + 56) || v8 != v9)
    {
      v10 = a1;
      v11 = a2;
      v12 = sub_ABB3C0();
      a2 = v11;
      v13 = v12;
      a1 = v10;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v14 = *(a2 + 80);
  if ((*(a1 + 80) & 1) == 0)
  {
    if (*(a1 + 72) != *(a2 + 72))
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }

LABEL_23:
    v14 = *(a2 + 96);
    if ((*(a1 + 96) & 1) == 0)
    {
      return (*(a1 + 88) == *(a2 + 88)) & ~v14;
    }

    return v14;
  }

  if (*(a2 + 80))
  {
    goto LABEL_23;
  }

  return v14;
}

uint64_t sub_A243D8()
{

  return swift_deallocObject();
}

uint64_t JSItemizedTextListItem.wantsTitleAsBadge.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsTitleAsBadge;
  swift_beginAccess();
  return *(v0 + v1);
}

void JSItemizedTextListItem.wantsTitleAsBadge.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsTitleAsBadge;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t JSItemizedTextListItem.wantsLeadingLineBreak.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsLeadingLineBreak;
  swift_beginAccess();
  return *(v0 + v1);
}

void JSItemizedTextListItem.wantsLeadingLineBreak.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsLeadingLineBreak;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void JSItemizedTextListItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a1;
  v12[1] = a2;
  sub_F46A0(a3, v13);
  if (v13[3])
  {
    sub_F46A0(v13, v11);

    if (swift_dynamicCast())
    {
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_title;
LABEL_7:
        v7 = (v3 + v6);
        swift_beginAccess();
        *v7 = v9;
        v7[1] = v10;

LABEL_20:
        __swift_destroy_boxed_opaque_existential_0(v11);
        sub_12E1C(v13, &unk_DE8E40, &unk_AF8050);

        return;
      }

      if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_text;
        goto LABEL_7;
      }
    }

    if (swift_dynamicCast())
    {
      if (a1 == 0xD000000000000011 && 0x8000000000B81F10 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v8 = OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsTitleAsBadge;
LABEL_19:
        swift_beginAccess();
        *(v3 + v8) = v9;
        goto LABEL_20;
      }

      if (a1 == 0xD000000000000015 && 0x8000000000B81F30 == a2 || (sub_ABB3C0() & 1) != 0)
      {
        v8 = OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsLeadingLineBreak;
        goto LABEL_19;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
  }

  sub_12E1C(v12, &unk_E27200, &unk_B3BB90);
}

uint64_t *JSItemizedTextListItem.__allocating_init(type:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_title];
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v3[OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsTitleAsBadge] = 0;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_text];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v3[OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsLeadingLineBreak] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t *JSItemizedTextListItem.init(type:)(uint64_t *a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsTitleAsBadge) = 0;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_text);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore22JSItemizedTextListItem_wantsLeadingLineBreak) = 0;
  return JSObject.init(type:)(a1);
}

double sub_A24A34()
{

  return result;
}

id JSItemizedTextListItem.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSItemizedTextListItem();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_A24B4C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JSItemizedTextListItem();
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

double JSItemizedTextListViewModel.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*JSItemizedTextListViewModel.delegate.modify(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_425B94;
}

uint64_t JSItemizedTextListViewModel.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double JSItemizedTextListViewModel.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t JSItemizedTextListViewModel.items.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v1);

  return v1;
}

void sub_A24EC0(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v3);

  *a2 = v3;
}

uint64_t sub_A24F44(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_AB5520();
}

uint64_t JSItemizedTextListViewModel.items.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_AB5520();
}

void (*JSItemizedTextListViewModel.items.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_AB5500();
  return sub_6A82CC;
}

double JSItemizedTextListViewModel.$items.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26DE0, &qword_B41C10);
  sub_AB54E0();
  swift_endAccess();
  return result;
}

uint64_t JSItemizedTextListViewModel.$items.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26DE8, &qword_B41C18);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26DE0, &qword_B41C10);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*JSItemizedTextListViewModel.$items.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26DE8, &qword_B41C18);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel__items;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26DE0, &qword_B41C10);
  sub_AB54E0();
  swift_endAccess();
  return sub_6BD158;
}

void JSItemizedTextListViewModel.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[0] = a1;
  v18[1] = a2;
  sub_F46A0(a3, v19);
  if (v19[3])
  {
    sub_F46A0(v19, v17);

    if (swift_dynamicCast())
    {
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        v7 = &v3[OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_title];
        swift_beginAccess();
        *v7 = v15;
        *(v7 + 1) = v16;

        v8 = &v3[OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_delegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v9 = *(v8 + 1);
          ObjectType = swift_getObjectType();
          (*(v9 + 8))(v3, ObjectType, v9);
LABEL_16:
          swift_unknownObjectRelease();
          goto LABEL_17;
        }

        goto LABEL_17;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26DD0, &qword_B41BC0);
    if (swift_dynamicCast())
    {
      if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_ABB3C0() & 1) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v11 = v3;
        sub_AB5520();
        v12 = &v11[OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_delegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v13 = *(v12 + 1);
          v14 = swift_getObjectType();
          (*(v13 + 16))(v11, v14, v13);
          goto LABEL_16;
        }

LABEL_17:
        __swift_destroy_boxed_opaque_existential_0(v17);
        sub_12E1C(v19, &unk_DE8E40, &unk_AF8050);

        return;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
  }

  JSViewModel.updateProperty(_:value:)(a1, a2, a3);
  sub_12E1C(v18, &unk_E27200, &unk_B3BB90);
}

uint64_t *JSItemizedTextListViewModel.init(type:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26DE0, &qword_B41C10);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v12 - v5;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v7 = (v1 + OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_title);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel__items;
  v12[1] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26DD0, &qword_B41BC0);
  sub_AB54D0();
  (*(v4 + 32))(v1 + v8, v6, v3);
  v9 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_B10830;
  v10 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v10 = 0;
  v10[1] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_A25898()
{
  sub_176DC(v0 + OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel_delegate);

  v1 = OBJC_IVAR____TtC11MusicJSCore27JSItemizedTextListViewModel__items;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26DE0, &qword_B41C10);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id JSItemizedTextListViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSItemizedTextListViewModel(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSItemizedTextListViewModel(uint64_t a1)
{
  result = qword_E26E18;
  if (!qword_E26E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A25A50@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JSItemizedTextListViewModel(0);
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

void sub_A25A98(uint64_t a1)
{
  sub_A25B3C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_A25B3C(uint64_t a1)
{
  if (!qword_E26E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E26DD0, &qword_B41BC0);
    v1 = sub_AB5540();
    if (!v2)
    {
      atomic_store(v1, &qword_E26E28);
    }
  }
}

MusicJSCore::JSArtwork::Treatment_optional __swiftcall JSArtwork.Treatment.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_D4EF70;
  v6._object = object;
  v3 = sub_ABB140(v2, v6);

  if (v3 == 1)
  {
    v4.value = MusicJSCore_JSArtwork_Treatment_circle;
  }

  else
  {
    v4.value = MusicJSCore_JSArtwork_Treatment_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t JSArtwork.Treatment.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x656C63726963;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_A25C28(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656C63726963;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x656C63726963;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
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
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_A25CCC()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

double sub_A25D4C(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

Swift::Int sub_A25DB8(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

void sub_A25E34(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_D4EF70;
  v7._object = v3;
  v5 = sub_ABB140(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_A25E94(uint64_t *a1@<X8>)
{
  v2 = 0x746C7561666564;
  if (*v1)
  {
    v2 = 0x656C63726963;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

double JSArtwork.artworkDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*JSArtwork.artworkDelegate.modify(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_425B94;
}

double JSArtwork.storeLookupDictionary.getter()
{
  swift_beginAccess();

  return result;
}

double sub_A26074(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_storeLookupDictionary;
  swift_beginAccess();
  *(v3 + v4) = v2;

  v5 = v3 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v3, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  return result;
}

void *JSArtwork.cropStyle.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

double sub_A26188(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle;
  swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v5)
  {
    if (a1)
    {
      v6 = sub_AB92A0();
      v8 = v7;
      if (v6 == sub_AB92A0() && v8 == v9)
      {

        return result;
      }

      v11 = sub_ABB3C0();
      v12 = a1;

      if (v11)
      {

        return result;
      }
    }
  }

  else
  {
    if (!a1)
    {
      return result;
    }

    v13 = a1;
  }

  v14 = v1 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    (*(v15 + 8))(v1, ObjectType, v15);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t JSArtwork.treatment.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_treatment;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_A26330(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_treatment;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (a1)
  {
    v5 = 0x656C63726963;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (a1)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4)
  {
    v7 = 0x656C63726963;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (v4)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = sub_ABB3C0();

    if ((v10 & 1) == 0)
    {
      v12 = v1 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v13 = *(v12 + 8);
        ObjectType = swift_getObjectType();
        (*(v13 + 8))(v1, ObjectType, v13);
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

id JSArtwork.artworkCatalog(defaultCropStyle:)(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_storeLookupDictionary;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4 || !*(v4 + 16))
  {
    return 0;
  }

  sub_3E8814(v5);
  v6 = objc_allocWithZone(ICStoreArtworkInfo);
  isa = sub_AB8FD0().super.isa;

  v8 = [v6 initWithArtworkResponseDictionary:isa];

  if (!v8)
  {

    return 0;
  }

  v9 = [objc_opt_self() tokenWithImageArtworkInfo:v8];
  v10 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (v11)
  {
    v12 = *(v1 + v10);
  }

  else
  {
    v12 = a1;
    v11 = 0;
  }

  v14 = v11;
  [v9 setCropStyle:v12];

  v15 = objc_opt_self();
  v16 = v9;
  result = [v15 sharedStoreArtworkDataSource];
  if (result)
  {
    v17 = result;

    v18 = objc_allocWithZone(MPArtworkCatalog);
    v19 = v16;
    v20 = [v18 initWithToken:v19 dataSource:v17];

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double JSArtwork.artwork.getter@<D0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26E50, &qword_B41CE0);
  __chkstk_darwin();
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v22 - v5;
  v7 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork____lazy_storage___artwork;
  swift_beginAccess();
  sub_15F84(v1 + v7, v6, &qword_E26E50, &qword_B41CE0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C50, &unk_AF8930);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    sub_A27464(v6, a1);
    return result;
  }

  sub_12E1C(v6, &qword_E26E50, &qword_B41CE0);
  v10 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_storeLookupDictionary;
  swift_beginAccess();
  if (!*(v1 + v10))
  {
    goto LABEL_7;
  }

  v11 = objc_opt_self();

  isa = sub_AB8FD0().super.isa;

  v23[0] = 0;
  v13 = [v11 dataWithJSONObject:isa options:0 error:v23];

  v14 = v23[0];
  if (!v13)
  {
    v20 = v14;
    sub_AB3050();

    swift_willThrow();

LABEL_7:
    v21 = sub_AB8A60();
    (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
    goto LABEL_8;
  }

  v22[0] = v1;
  v15 = sub_AB3260();
  v17 = v16;

  sub_AB2AD0();
  swift_allocObject();
  sub_AB2AC0();
  v18 = sub_AB8A60();
  sub_A2740C();
  sub_AB2AB0();
  sub_466B8(v15, v17);

  (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
  v1 = v22[0];
LABEL_8:
  sub_15F84(a1, v4, &unk_DE9C50, &unk_AF8930);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_A26A50(v4, v1 + v7);
  swift_endAccess();
  return result;
}

uint64_t sub_A26A50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26E50, &qword_B41CE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double JSArtwork.artwork.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26E50, &qword_B41CE0);
  __chkstk_darwin();
  v4 = &v8 - v3;
  sub_A27464(a1, &v8 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C50, &unk_AF8930);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork____lazy_storage___artwork;
  swift_beginAccess();
  sub_A26A50(v4, v1 + v6);
  swift_endAccess();
  return result;
}

void (*JSArtwork.artwork.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E26E50, &qword_B41CE0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v4[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C50, &unk_AF8930);
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  v4[10] = v9;
  JSArtwork.artwork.getter(v9);
  return sub_A26CF0;
}

void sub_A26CF0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*(*a1 + 72) + 56);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  if (a2)
  {
    v7 = v2[6];
    sub_15F84(v2[10], v2[7], &unk_DE9C50, &unk_AF8930);
    (*v3)(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork____lazy_storage___artwork;
    swift_beginAccess();
    sub_A26A50(v5, v7 + v8);
    swift_endAccess();
    sub_12E1C(v4, &unk_DE9C50, &unk_AF8930);
  }

  else
  {
    v9 = v2[6];
    sub_A27464(v2[10], v2[7]);
    (*v3)(v5, 0, 1, v6);
    v10 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork____lazy_storage___artwork;
    swift_beginAccess();
    sub_A26A50(v5, v9 + v10);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

void JSArtwork.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[0] = a1;
  v18[1] = a2;
  sub_15F84(a3, v19, &unk_DE8E40, &unk_AF8050);
  if (v19[3])
  {
    sub_15F84(v19, v17, &unk_DE8E40, &unk_AF8050);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680, &qword_AF7B70);
    if (swift_dynamicCast())
    {
      if (a1 == 0x616E6F6974636964 && a2 == 0xEA00000000007972 || (sub_ABB3C0() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_storeLookupDictionary;
        swift_beginAccess();
        *(v3 + v6) = v16;

        v7 = v3 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v8 = *(v7 + 8);
          ObjectType = swift_getObjectType();
          (*(v8 + 8))(v3, ObjectType, v8);
          swift_unknownObjectRelease();
        }

        goto LABEL_15;
      }
    }

    if (swift_dynamicCast())
    {
      if (a1 == 0x6C797453706F7263 && a2 == 0xE900000000000065 || (sub_ABB3C0() & 1) != 0)
      {
        v10 = sub_AB9260();

        sub_A26188(v10);
LABEL_15:
        __swift_destroy_boxed_opaque_existential_0(v17);
        sub_12E1C(v19, &unk_DE8E40, &unk_AF8050);

        return;
      }

      if (a1 == 0x6E656D7461657274 && a2 == 0xE900000000000074 || (sub_ABB3C0() & 1) != 0)
      {
        v11._rawValue = &off_D4EF70;
        v12 = sub_ABB140(v11, v15);

        if (v12 <= 1)
        {
          v13 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_treatment;
          swift_beginAccess();
          v14 = *(v3 + v13);
          *(v3 + v13) = v12;
          sub_A26330(v14);
        }

        goto LABEL_15;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
  }

  sub_12E1C(v18, &unk_E27200, &unk_B3BB90);
}

uint64_t *JSArtwork.__allocating_init(type:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC11MusicJSCore9JSArtwork_storeLookupDictionary] = 0;
  *&v3[OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore9JSArtwork_treatment] = 0;
  v4 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork____lazy_storage___artwork;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C50, &unk_AF8930);
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  return JSObject.init(type:)(a1);
}

uint64_t *JSArtwork.init(type:)(uint64_t *a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_storeLookupDictionary) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_treatment) = 0;
  v3 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork____lazy_storage___artwork;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C50, &unk_AF8930);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);

  return JSObject.init(type:)(a1);
}

uint64_t sub_A27314()
{
  sub_176DC(v0 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate);

  return sub_12E1C(v0 + OBJC_IVAR____TtC11MusicJSCore9JSArtwork____lazy_storage___artwork, &qword_E26E50, &qword_B41CE0);
}

unint64_t sub_A2740C()
{
  result = qword_E26E60;
  if (!qword_E26E60)
  {
    sub_AB8A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E26E60);
  }

  return result;
}

uint64_t sub_A27464(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C50, &unk_AF8930);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_A274D8()
{
  result = qword_E26E68;
  if (!qword_E26E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E26E68);
  }

  return result;
}