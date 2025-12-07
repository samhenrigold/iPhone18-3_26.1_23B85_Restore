uint64_t sub_1E5F8E228()
{
  v2 = *v1;
  v2[45] = v0;

  if (v0)
  {
    v3 = v2[7];

    return MEMORY[0x1EEE6DFA0](sub_1E5F8E714, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1E5F8E3F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_1E5F90E10(v2, v1, type metadata accessor for RouteDestination);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E5F8E4F4()
{
  v1 = v0[39];
  v3 = v0[2];
  v2 = v0[3];

  sub_1E5F90E10(v2, v3, type metadata accessor for RouteDestination);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5F8E604()
{
  v1 = v0[42];
  v3 = v0[2];
  v2 = v0[3];

  sub_1E5F90E10(v2, v3, type metadata accessor for RouteDestination);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5F8E714()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5F8E800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5F8E824, a2, 0);
}

uint64_t sub_1E5F8E824()
{
  v1 = *(v0 + 56);
  v2 = sub_1E5F90D14(&qword_1ED071E20, type metadata accessor for PersonalizationPrivacyConsentDetour, &unk_1E65E9FB8);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v9 = *(v0 + 24);
  v4 = *(v0 + 40);
  *(v3 + 16) = v9;
  *(v3 + 32) = v4;
  *(v3 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = type metadata accessor for RouteDestination(0);
  *v5 = v0;
  v5[1] = sub_1E5F8E974;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, v9, v2, 0xD000000000000024, 0x80000001E66103D0, sub_1E5F90F3C, v3, v6);
}

uint64_t sub_1E5F8E974()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x1EEE6DFA0](sub_1E5F8EAB0, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1E5F8EAB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5F8EB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v37 = a5;
  v38 = a4;
  v39 = a1;
  v8 = type metadata accessor for AppComposer(0);
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v36 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for PersonalizationPrivacyConsentDetour.State(0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - v17;
  v19 = OBJC_IVAR____TtC10Blackbeard35PersonalizationPrivacyConsentDetour_state;
  swift_beginAccess();
  sub_1E5F90E10(a2 + v19, v18, type metadata accessor for PersonalizationPrivacyConsentDetour.State);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  v21 = *(v20 - 8);
  v22 = (*(v21 + 48))(v18, 1, v20);
  sub_1E5F90EDC(v18, type metadata accessor for PersonalizationPrivacyConsentDetour.State);
  if (v22 == 1)
  {
    v23 = &v16[*(v20 + 48)];
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    (*(*(v24 - 8) + 16))(v16, v39, v24);
    sub_1E5F90E10(a3, v23, type metadata accessor for RouteResource);
    v25 = type metadata accessor for RouteDestination(0);
    sub_1E5F90E10(a3 + *(v25 + 20), v23 + *(v25 + 20), type metadata accessor for RouteSource);
    v26 = *(a3 + *(v25 + 24));

    *(v23 + *(v25 + 24)) = sub_1E602A670(&unk_1F5FA7EB8, v26);
    (*(v21 + 56))(v16, 0, 1, v20);
    swift_beginAccess();
    sub_1E5F90E78(v16, a2 + v19);
    swift_endAccess();
    v27 = sub_1E65E60A8();
    (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
    v28 = v36;
    sub_1E5F90E10(v34, v36, type metadata accessor for AppComposer);
    v29 = sub_1E5F90D14(&qword_1ED071E20, type metadata accessor for PersonalizationPrivacyConsentDetour, &unk_1E65E9FB8);
    v30 = (*(v35 + 80) + 56) & ~*(v35 + 80);
    v31 = swift_allocObject();
    v31[2] = a2;
    v31[3] = v29;
    v32 = v37;
    v31[4] = v38;
    v31[5] = v32;
    v31[6] = a2;
    sub_1E5F90FA0(v28, v31 + v30, type metadata accessor for AppComposer);
    swift_retain_n();
    swift_unknownObjectRetain();
    sub_1E64B80F8(0, 0, v12, &unk_1E65EA020, v31);
  }

  else
  {
    sub_1E5F90F4C();
    v40 = swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    return sub_1E65E5FE8();
  }
}

uint64_t sub_1E5F8EFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v9 = *(type metadata accessor for AppComposer(0) - 8);
  v7[6] = v9;
  v7[7] = *(v9 + 64);
  v7[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5F8F0AC, a6, 0);
}

uint64_t sub_1E5F8F0AC()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  v13 = v0[3];
  ObjectType = swift_getObjectType();
  sub_1E5F90E10(v2, v1, type metadata accessor for AppComposer);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v0[9] = v7;
  *(v7 + 16) = v4;
  sub_1E5F90FA0(v1, v7 + v6, type metadata accessor for AppComposer);
  v8 = *(v13 + 24);

  v12 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_1E5F8F278;
  v10 = v0[3];

  return v12(sub_1E5F91114, v7, ObjectType, v10);
}

uint64_t sub_1E5F8F278()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1E5F8F3A4(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v5 = type metadata accessor for AppComposer(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = *(a2 + OBJC_IVAR____TtC10Blackbeard35PersonalizationPrivacyConsentDetour_dependencies);

  sub_1E65DA978();
  v10 = objc_allocWithZone(type metadata accessor for PersonalizationPrivacyConsentViewController());
  v11 = sub_1E645FCA4(v9);
  v12 = &v11[OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_onDismiss];
  swift_beginAccess();
  v14 = *v12;
  v13 = v12[1];
  *v12 = sub_1E5F91188;
  v12[1] = a2;

  sub_1E5E29474(v14, v13);
  sub_1E5F90E10(a3, &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_1E5F90FA0(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for AppComposer);
  *(v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v17 = &v11[OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_onConsent];
  v18 = *&v11[OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_onConsent];
  v19 = *&v11[OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_onConsent + 8];
  *v17 = sub_1E5F91190;
  v17[1] = v16;

  sub_1E5E29474(v18, v19);
  v20 = *(a3 + *(v6 + 28) + 8);
  if (v20 < 2)
  {
    [v21 presentViewController:v11 animated:1 completion:0];
LABEL_5:

    return;
  }

  if (v20 == 3)
  {
    [v21 pushViewController:v11 animated:0];
    goto LABEL_5;
  }

  sub_1E65E69D8();
  __break(1u);
}

uint64_t sub_1E5F8F64C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1E65E60A8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1E65E6058();

  v6 = sub_1E65E6048();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_1E64B80F8(0, 0, v4, &unk_1E65EA058, v7);
}

uint64_t sub_1E5F8F770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1E65E6058();
  v4[4] = sub_1E65E6048();

  return MEMORY[0x1EEE6DFA0](sub_1E5F8F7F0, a4, 0);
}

uint64_t sub_1E5F8F7F0()
{
  sub_1E5F8C818(0);
  v1 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5F916A0, v1, v0);
}

uint64_t sub_1E5F8F884(int a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v22 = a1;
  v4 = type metadata accessor for AppComposer(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21[-v9];
  v11 = sub_1E65E60A8();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 1, 1, v11);
  sub_1E5F90E10(a2, v7, type metadata accessor for AppComposer);
  sub_1E65E6058();
  v13 = sub_1E65E6048();
  v14 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  *(v15 + 32) = v22;
  sub_1E5F90FA0(v7, v15 + v14, type metadata accessor for AppComposer);
  sub_1E64B80F8(0, 0, v10, &unk_1E65EA030, v15);

  v12(v10, 1, 1, v11);
  v17 = v23;

  v18 = sub_1E65E6048();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v16;
  v19[4] = v17;
  sub_1E64B80F8(0, 0, v10, &unk_1E65EA040, v19);
}

uint64_t sub_1E5F8FB04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 48) = a5;
  *(v5 + 25) = a4;
  v6 = sub_1E65E3B68();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();
  v7 = sub_1E65DA988();
  *(v5 + 88) = v7;
  *(v5 + 96) = *(v7 - 8);
  *(v5 + 104) = swift_task_alloc();
  sub_1E65E6058();
  *(v5 + 112) = sub_1E65E6048();
  v9 = sub_1E65E5FC8();
  *(v5 + 120) = v9;
  *(v5 + 128) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1E5F8FC64, v9, v8);
}

uint64_t sub_1E5F8FC64(uint64_t a1)
{
  sub_1E65DA978();
  sub_1E65DA958();
  *(v1 + 28) = *(type metadata accessor for AppComposer(0) + 20);
  *(v1 + 136) = type metadata accessor for AppEnvironment(0);
  v2 = PrivacyPreferenceService.updatePersonalizationPrivacyPreference.getter();
  *(v1 + 144) = v3;
  v7 = (v2 + *v2);
  v4 = swift_task_alloc();
  *(v1 + 152) = v4;
  *v4 = v1;
  v4[1] = sub_1E5F8FDC4;
  v5 = *(v1 + 104);

  return v7(v5);
}

uint64_t sub_1E5F8FDC4()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_1E5F902C8;
  }

  else
  {
    v5 = sub_1E5F8FF00;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E5F8FF00()
{

  *(v0 + 16) = sub_1E65DA968();
  *(v0 + 24) = v1 & 1;
  *(v0 + 32) = 1;
  *(v0 + 40) = 1;
  sub_1E5F913D8();
  sub_1E5F9142C();
  if ((sub_1E65D7FD8() & 1) != 0 && (v2 = sub_1E65DAE38(), v2 == sub_1E65DAE38()))
  {
    v3 = RemoteBrowsingService.requestEnvironmentUpdate.getter();
    *(v0 + 168) = v4;
    v8 = (v3 + *v3);
    v5 = swift_task_alloc();
    *(v0 + 176) = v5;
    *v5 = v0;
    v5[1] = sub_1E5F9010C;

    return v8();
  }

  else
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1E5F9010C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_1E5F905E0;
  }

  else
  {

    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_1E5F90228;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1E5F90228()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5F902C8()
{
  v1 = *(v0 + 160);

  sub_1E65DE348();
  v2 = v1;
  v3 = sub_1E65E3B48();
  v4 = sub_1E65E6338();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 160);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1E5DE9000, v3, v4, "[PersonalizationPrivacyConsentDetour] Failed updating personalization privacy preference: %{public}@", v7, 0xCu);
    sub_1E5F91480(v8);
    MEMORY[0x1E694F1C0](v8, -1, -1);
    MEMORY[0x1E694F1C0](v7, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
  *(v0 + 16) = sub_1E65DA968();
  *(v0 + 24) = v11 & 1;
  *(v0 + 32) = 1;
  *(v0 + 40) = 1;
  sub_1E5F913D8();
  sub_1E5F9142C();
  if ((sub_1E65D7FD8() & 1) != 0 && (v12 = sub_1E65DAE38(), v12 == sub_1E65DAE38()))
  {
    v13 = RemoteBrowsingService.requestEnvironmentUpdate.getter();
    *(v0 + 168) = v14;
    v18 = (v13 + *v13);
    v15 = swift_task_alloc();
    *(v0 + 176) = v15;
    *v15 = v0;
    v15[1] = sub_1E5F9010C;

    return v18();
  }

  else
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1E5F905E0()
{
  v1 = v0[23];

  sub_1E65DE348();
  v2 = v1;
  v3 = sub_1E65E3B48();
  v4 = sub_1E65E6338();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[23];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1E5DE9000, v3, v4, "[PersonalizationPrivacyConsentDetour] Failed requesting new browsing environment: %{public}@", v6, 0xCu);
    sub_1E5F91480(v7);
    MEMORY[0x1E694F1C0](v7, -1, -1);
    MEMORY[0x1E694F1C0](v6, -1, -1);
  }

  v10 = v0[23];
  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[11];
  v15 = v0[8];
  v14 = v0[9];
  v16 = v0[7];

  (*(v15 + 8))(v14, v16);
  (*(v12 + 8))(v11, v13);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1E5F907A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1E65E6058();
  v4[4] = sub_1E65E6048();

  return MEMORY[0x1EEE6DFA0](sub_1E5F90828, a4, 0);
}

uint64_t sub_1E5F90828()
{
  sub_1E5F8C818(0);
  v1 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5F908BC, v1, v0);
}

uint64_t sub_1E5F908BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5F9091C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_1E65E60A8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_1E64B80F8(0, 0, v4, &unk_1E65EA010, v6);
}

uint64_t sub_1E5F90A48()
{
  v1 = *(v0 + 16);
  sub_1E65E6018();
  sub_1E5F90D14(&qword_1ED071E30, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
  *(v0 + 24) = swift_allocError();
  sub_1E65E5AE8();

  return MEMORY[0x1EEE6DFA0](sub_1E5F90B0C, v1, 0);
}

uint64_t sub_1E5F90B0C()
{
  v1 = *(v0 + 24);
  sub_1E5F8C818(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5F90B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1E5DFA78C;

  return sub_1E5F8CF64(a1, a2, a3, a4, a5);
}

uint64_t sub_1E5F90C44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E5F8E800(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E5F90D14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5F90D5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E5F90A28(a1, v4, v5, v6);
}

uint64_t sub_1E5F90E10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5F90E78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalizationPrivacyConsentDetour.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5F90EDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E5F90F4C()
{
  result = qword_1ED071E38;
  if (!qword_1ED071E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071E38);
  }

  return result;
}

uint64_t sub_1E5F90FA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5F91008(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E5DFA78C;

  return sub_1E5F8EFE0(a1, v6, v7, v8, v9, v10, v1 + v5);
}

void sub_1E5F91114(void *a1)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1E5F8F3A4(a1, v4, v5);
}

uint64_t sub_1E5F91190(int a1)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E5F8F884(a1, v1 + v4, v5);
}

uint64_t sub_1E5F9122C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E5F8FB04(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1E5F91324(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E5F907A8(a1, v4, v5, v6);
}

unint64_t sub_1E5F913D8()
{
  result = qword_1ED071E40;
  if (!qword_1ED071E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071E40);
  }

  return result;
}

unint64_t sub_1E5F9142C()
{
  result = qword_1ED071E48;
  if (!qword_1ED071E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071E48);
  }

  return result;
}

uint64_t sub_1E5F91480(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072130, &qword_1E65EA840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5F914E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E5F8F770(a1, v4, v5, v6);
}

uint64_t sub_1E5F9159C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E5F8C5CC(a1, v1);
}

unint64_t sub_1E5F91648()
{
  result = qword_1ED071E50;
  if (!qword_1ED071E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071E50);
  }

  return result;
}

uint64_t sub_1E5F916A4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E58, &qword_1E65EA150);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E60, &qword_1E65EA158);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E68, &qword_1E65EA160);
  sub_1E65E4C98();
  sub_1E60EE7BC(v7);
  sub_1E5DFE50C(v4, &qword_1ED071E58, &qword_1E65EA150);
  v8 = type metadata accessor for BrowsingIdentity(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v7, 1, v8) != 1)
  {
    return sub_1E5F918A4(v7, a1);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  result = (v9)(v7, 1, v8);
  if (result != 1)
  {
    return sub_1E5DFE50C(v7, &qword_1ED071E60, &qword_1E65EA158);
  }

  return result;
}

uint64_t sub_1E5F918A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowsingIdentity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static TVAwardHeaderLayout.default(awardName:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DBB28();
  MEMORY[0x1EEE9AC00](v4 - 8);
  if (sub_1E65DB988() == a1 && v5 == a2)
  {
  }

  else
  {
    sub_1E65E6C18();
  }

  sub_1E65DAE38();
  sub_1E65DAE38();
  sub_1E65DBB08();
  return sub_1E65DBD58();
}

uint64_t sub_1E5F91AC0(uint64_t a1, uint64_t *a2, unsigned int *a3, char a4)
{
  v7 = sub_1E65DDE68();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  __swift_allocate_value_buffer(v11, a2);
  __swift_project_value_buffer(v11, a2);
  (*(v8 + 104))(v10, *a3, v7);
  v13[15] = a4;
  return sub_1E65DDC88();
}

uint64_t sub_1E5F91BF8()
{
  sub_1E5F94C90(v0 + OBJC_IVAR____TtC10Blackbeard34AudioLanguageEngagementSheetDetour_state, type metadata accessor for AudioLanguageEngagementSheetDetour.State);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E5F91C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5F91CA0, a2, 0);
}

uint64_t sub_1E5F91CA0()
{
  v1 = *(v0 + 56);
  v2 = sub_1E5F94D54(&qword_1EE2D7BC0, type metadata accessor for AudioLanguageEngagementSheetDetour, &unk_1E65EA218);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v9 = *(v0 + 24);
  v4 = *(v0 + 40);
  *(v3 + 16) = v9;
  *(v3 + 32) = v4;
  *(v3 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = type metadata accessor for RouteDestination(0);
  *v5 = v0;
  v5[1] = sub_1E5F8E974;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, v9, v2, 0xD000000000000024, 0x80000001E66103D0, sub_1E5F94D9C, v3, v6);
}

uint64_t sub_1E5F91DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a6;
  v48 = a5;
  v52 = a1;
  v53 = a4;
  v8 = type metadata accessor for RouteDestination(0);
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v51 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppComposer(0);
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v47 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v50 = &v44 - v13;
  v14 = type metadata accessor for AudioLanguageEngagementSheetDetour.State(0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v44 - v18;
  v20 = OBJC_IVAR____TtC10Blackbeard34AudioLanguageEngagementSheetDetour_state;
  swift_beginAccess();
  sub_1E5E1D27C(a2 + v20, v19, type metadata accessor for AudioLanguageEngagementSheetDetour.State);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EE0, &qword_1E65EA1E0);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v19, 1, v21);
  sub_1E5F94C90(v19, type metadata accessor for AudioLanguageEngagementSheetDetour.State);
  if (v23 == 1)
  {
    v24 = &v17[*(v21 + 48)];
    v25 = a3;
    v26 = *(v21 + 64);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    (*(*(v27 - 8) + 16))(v17, v52, v27);
    v44 = v25;
    v28 = v53;
    *v24 = v25;
    v24[1] = v28;
    v52 = v9;
    v29 = v48;
    sub_1E5E1D27C(v48, &v17[v26], type metadata accessor for RouteDestination);
    (*(v22 + 56))(v17, 0, 1, v21);
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_1E5F94CF0(v17, a2 + v20);
    swift_endAccess();
    v30 = sub_1E65E60A8();
    v31 = v50;
    (*(*(v30 - 8) + 56))(v50, 1, 1, v30);
    v32 = v47;
    sub_1E5E1D27C(v46, v47, type metadata accessor for AppComposer);
    v33 = v51;
    sub_1E5E1D27C(v29, v51, type metadata accessor for RouteDestination);
    v34 = sub_1E5F94D54(&qword_1EE2D7BC0, type metadata accessor for AudioLanguageEngagementSheetDetour, &unk_1E65EA218);
    v35 = (*(v45 + 80) + 40) & ~*(v45 + 80);
    v36 = (v11 + *(v49 + 80) + v35) & ~*(v49 + 80);
    v37 = (v52 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    v38[2] = a2;
    v38[3] = v34;
    v38[4] = a2;
    sub_1E5E1DF10(v32, v38 + v35, type metadata accessor for AppComposer);
    sub_1E5E1DF10(v33, v38 + v36, type metadata accessor for RouteDestination);
    v39 = (v38 + v37);
    v40 = v53;
    *v39 = v44;
    v39[1] = v40;
    swift_retain_n();
    swift_unknownObjectRetain();
    sub_1E64B80F8(0, 0, v31, &unk_1E65EA2E8, v38);
  }

  else
  {
    sub_1E5F94DAC();
    v42 = swift_allocError();
    *v43 = 3;
    v54 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    return sub_1E65E5FE8();
  }
}

uint64_t sub_1E5F92370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v10 = *(type metadata accessor for RouteDestination(0) - 8);
  v8[7] = v10;
  v8[8] = *(v10 + 64);
  v8[9] = swift_task_alloc();
  v11 = *(type metadata accessor for AppComposer(0) - 8);
  v8[10] = v11;
  v8[11] = *(v11 + 64);
  v8[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5F924A0, a4, 0);
}

uint64_t sub_1E5F924A0()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = *(v0 + 16);
  sub_1E65E16D8();
  v10 = v9;
  sub_1E5E1D27C(v7, v1, type metadata accessor for AppComposer);
  sub_1E5E1D27C(v6, v3, type metadata accessor for RouteDestination);
  v11 = *(v4 + 80);
  *(v0 + 152) = v11;
  v12 = (v11 + 24) & ~v11;
  v13 = (v12 + v2 + *(v5 + 80)) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v0 + 104) = v14;
  *(v14 + 16) = v8;
  sub_1E5E1DF10(v1, v14 + v12, type metadata accessor for AppComposer);
  sub_1E5E1DF10(v3, v14 + v13, type metadata accessor for RouteDestination);

  v15 = swift_task_alloc();
  *(v0 + 112) = v15;
  *v15 = v0;
  v15[1] = sub_1E5F92668;
  v16.n128_u64[0] = v10;

  return MEMORY[0x1EEE343F0](v16);
}

uint64_t sub_1E5F92668()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_1E5F92AA8;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_1E5F92790;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E5F92790()
{
  v1 = *(v0 + 96);
  v12 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = (*(v0 + 152) + 24) & ~*(v0 + 152);
  ObjectType = swift_getObjectType();
  sub_1E5E1D27C(v2, v1, type metadata accessor for AppComposer);
  v6 = swift_allocObject();
  *(v0 + 128) = v6;
  *(v6 + 16) = v3;
  sub_1E5E1DF10(v1, v6 + v4, type metadata accessor for AppComposer);
  v7 = *(v12 + 24);

  v11 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  *v8 = v0;
  v8[1] = sub_1E5F92958;
  v9 = *(v0 + 48);

  return v11(sub_1E5F9663C, v6, ObjectType, v9);
}

uint64_t sub_1E5F92958()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E5F92AA8()
{

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6338();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "[Audio Language Engagement Sheet] Skipping audio language engagement sheet detour activation: %{public}@", v7, 0xCu);
    sub_1E5DFE50C(v8, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v8, -1, -1);
    MEMORY[0x1E694F1C0](v7, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = sub_1E5F92C78;
  v12 = v0[3];

  return sub_1E5F939F0(0, v12);
}

uint64_t sub_1E5F92C78()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E5F92D88, v1, 0);
}

uint64_t sub_1E5F92D88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5F92DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1E5DFA78C;

  return sub_1E5F92EA8(a3, a4);
}

uint64_t sub_1E5F92EA8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1E65D76A8();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1E65D92D8();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5F93030, v2, 0);
}

uint64_t sub_1E5F93030()
{
  if (qword_1EE2D7CA0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = __swift_project_value_buffer(v3, qword_1EE2D7CA8);
  v5 = *(v2 + 16);
  v5(v1, v4, v3);
  sub_1E65DDC48();
  v6 = *(v2 + 8);
  v6(v1, v3);
  if (*(v0 + 156) != 1)
  {
    sub_1E5F94DAC();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();

    v14 = *(v0 + 8);
LABEL_13:

    return v14();
  }

  sub_1E5F988FC(*(v0 + 24));
  if (qword_1EE2D7C78 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 104);
  v8 = *(v0 + 88);
  v9 = __swift_project_value_buffer(v8, qword_1EE2D7C80);
  v5(v7, v9, v8);
  sub_1E65DDC48();
  v6(v7, v8);
  if (*(v0 + 157))
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v10 = sub_1E65E3B68();
    __swift_project_value_buffer(v10, qword_1EE2EA2A0);
    v11 = sub_1E65E3B48();
    v12 = sub_1E65E6338();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1E5DE9000, v11, v12, "[Audio Language Engagement Sheet] forceAudioLanguageEngagementSheetPresentation enabled", v13, 2u);
      MEMORY[0x1E694F1C0](v13, -1, -1);
    }

    v14 = *(v0 + 8);
    goto LABEL_13;
  }

  *(v0 + 152) = *(type metadata accessor for AppComposer(0) + 20);
  type metadata accessor for AppEnvironment(0);
  v17 = ServiceSubscriptionService.fetchServiceSubscription.getter();
  *(v0 + 112) = v18;
  v21 = (v17 + *v17);
  v19 = swift_task_alloc();
  *(v0 + 120) = v19;
  *v19 = v0;
  v19[1] = sub_1E5F93410;
  v20 = *(v0 + 80);

  return (v21)(v20, 0);
}

uint64_t sub_1E5F93410()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1E5F938C8;
  }

  else
  {
    v4 = sub_1E5F9353C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E5F9353C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);

  sub_1E65D7698();
  v4 = sub_1E65D92A8();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 16);
    v7 = swift_task_alloc();
    *(v0 + 136) = v7;
    *v7 = v0;
    v7[1] = sub_1E5F936DC;

    return sub_1E5F953C8(v6 + v5);
  }

  else
  {
    v10 = *(v0 + 72);
    v9 = *(v0 + 80);
    v11 = *(v0 + 64);
    sub_1E5F94DAC();
    swift_allocError();
    *v12 = 6;
    swift_willThrow();
    (*(v10 + 8))(v9, v11);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1E5F936DC()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1E5F93954;
  }

  else
  {
    v4 = sub_1E5F93808;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E5F93808()
{
  sub_1E5F98ADC(*(v0 + 16) + *(v0 + 152), **(v0 + 16));
  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5F938C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5F93954()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E5F939F0(char a1, uint64_t a2)
{
  *(v3 + 64) = a2;
  *(v3 + 72) = v2;
  *(v3 + 184) = a1;
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  *(v3 + 80) = v4;
  *(v3 + 88) = *(v4 + 64);
  *(v3 + 96) = swift_task_alloc();
  type metadata accessor for AudioLanguageEngagementSheetDetour.State(0);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  type metadata accessor for RouteDestination(0);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  *(v3 + 136) = v5;
  *(v3 + 144) = *(v5 - 8);
  *(v3 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5F93B90, v2, 0);
}

uint64_t sub_1E5F93B90()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  v3 = OBJC_IVAR____TtC10Blackbeard34AudioLanguageEngagementSheetDetour_state;
  swift_beginAccess();
  sub_1E5E1D27C(v2 + v3, v1, type metadata accessor for AudioLanguageEngagementSheetDetour.State);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EE0, &qword_1E65EA1E0);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    sub_1E5F94C90(*(v0 + 112), type metadata accessor for AudioLanguageEngagementSheetDetour.State);
LABEL_8:

    v29 = *(v0 + 8);

    return v29();
  }

  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);
  v11 = *(v0 + 104);
  v10 = *(v0 + 112);
  v12 = *(v0 + 184);
  v13 = (v10 + *(v4 + 48));
  *(v0 + 160) = *v13;
  v31 = v13[1];
  v14 = *(v4 + 64);
  (*(v7 + 32))(v6, v10, v8);
  sub_1E5E1DF10(v10 + v14, v9, type metadata accessor for RouteDestination);
  (*(v5 + 56))(v11, 1, 1, v4);
  swift_beginAccess();
  sub_1E5F94CF0(v11, v2 + v3);
  swift_endAccess();
  if (v12 != 1)
  {
    v25 = *(v0 + 144);
    v26 = *(v0 + 152);
    v28 = *(v0 + 128);
    v27 = *(v0 + 136);
    sub_1E5E1D27C(v28, *(v0 + 120), type metadata accessor for RouteDestination);
    sub_1E65E5FF8();
    swift_unknownObjectRelease();
    sub_1E5F94C90(v28, type metadata accessor for RouteDestination);
    (*(v25 + 8))(v26, v27);
    goto LABEL_8;
  }

  v15 = *(v0 + 96);
  v17 = *(v0 + 72);
  v16 = *(v0 + 80);
  v18 = *(v0 + 64);
  ObjectType = swift_getObjectType();
  sub_1E5E1D27C(v18, v15, type metadata accessor for AppComposer);
  v20 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v21 = swift_allocObject();
  *(v0 + 168) = v21;
  *(v21 + 16) = v17;
  sub_1E5E1DF10(v15, v21 + v20, type metadata accessor for AppComposer);
  v22 = *(v31 + 24);

  v30 = (v22 + *v22);
  v23 = swift_task_alloc();
  *(v0 + 176) = v23;
  *v23 = v0;
  v23[1] = sub_1E5F93FD8;

  return v30(sub_1E5F9AD98, v21, ObjectType, v31);
}

uint64_t sub_1E5F93FD8()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1E5F94104, v1, 0);
}

uint64_t sub_1E5F94104()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[16];
  sub_1E5E1D27C(v4, v0[15], type metadata accessor for RouteDestination);
  sub_1E65E5FF8();
  swift_unknownObjectRelease();
  sub_1E5F94C90(v4, type metadata accessor for RouteDestination);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E5F9421C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppComposer(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_1E65E60A8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1E5E1D27C(a2, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v11 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  sub_1E5E1DF10(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for AppComposer);

  sub_1E64B80F8(0, 0, v9, &unk_1E65EA260, v12);
}

uint64_t sub_1E5F943F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  type metadata accessor for AudioLanguageEngagementSheetDetour.State(0);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5F944F8, a4, 0);
}

uint64_t sub_1E5F944F8()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = OBJC_IVAR____TtC10Blackbeard34AudioLanguageEngagementSheetDetour_state;
  swift_beginAccess();
  sub_1E5E1D27C(v2 + v3, v1, type metadata accessor for AudioLanguageEngagementSheetDetour.State);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EE0, &qword_1E65EA1E0);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    sub_1E5F94C90(v0[11], type metadata accessor for AudioLanguageEngagementSheetDetour.State);
  }

  else
  {
    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[11];
    v9 = v0[12];
    v14 = v0[10];
    swift_unknownObjectRelease();
    v10 = *(v4 + 64);
    (*(v7 + 32))(v6, v8, v9);
    sub_1E5F94C90(v8 + v10, type metadata accessor for RouteDestination);
    (*(v5 + 56))(v14, 1, 1, v4);
    swift_beginAccess();
    sub_1E5F94CF0(v14, v2 + v3);
    swift_endAccess();
    sub_1E65E6018();
    sub_1E5F94D54(&qword_1ED071E30, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    v11 = swift_allocError();
    sub_1E65E5AE8();
    v0[8] = v11;
    sub_1E65E5FE8();
    (*(v7 + 8))(v6, v9);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E5F9478C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *v5;
  v6[6] = a5;
  v6[7] = v7;
  return MEMORY[0x1EEE6DFA0](sub_1E5F947B4, v7, 0);
}

uint64_t sub_1E5F947B4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v2;
  *(v4 + 48) = v3;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  v7 = sub_1E5F94D54(&qword_1EE2D7BC0, type metadata accessor for AudioLanguageEngagementSheetDetour, &unk_1E65EA218);
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  v9 = type metadata accessor for RouteDestination(0);
  *v8 = v0;
  v8[1] = sub_1E5F94914;
  v10 = *(v0 + 16);

  return MEMORY[0x1EEE6DE18](v10, &unk_1E65EA248, v4, sub_1E5F94B90, v6, v1, v7, v9);
}

uint64_t sub_1E5F94914()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    v3 = v2[7];

    return MEMORY[0x1EEE6DFA0](sub_1E5F94A5C, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1E5F94A5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5F94AC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E5F91C7C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E5F94B98(uint64_t a1)
{
  type metadata accessor for AppComposer(0);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E5F943F0(a1, v4, v5, v6);
}

uint64_t sub_1E5F94C90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5F94CF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioLanguageEngagementSheetDetour.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5F94D54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E5F94DAC()
{
  result = qword_1ED071EF0;
  if (!qword_1ED071EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071EF0);
  }

  return result;
}

void sub_1E5F94E00(id a1, char a2)
{
  if ((a2 & 0xC0) == 0x80)
  {
  }
}

uint64_t sub_1E5F94E20(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for RouteDestination(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1E5DFE6BC;

  return sub_1E5F92370(a1, v10, v11, v12, v1 + v6, v1 + v9, v14, v15);
}

uint64_t sub_1E5F94FC0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for RouteDestination(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1E5DFE6BC;

  return sub_1E5F92DFC(a1, v10, v1 + v6, v1 + v9);
}

void sub_1E5F9510C(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v5 = sub_1E65E3B68();
  __swift_project_value_buffer(v5, qword_1EE2EA2A0);
  v6 = sub_1E65E3B48();
  v7 = sub_1E65E6338();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1E5DE9000, v6, v7, "[Audio Language Engagement Sheet] Presenting audio language engagement sheet", v8, 2u);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  v10 = sub_1E5F99494(a3);
  v9 = *(a3 + *(type metadata accessor for AppComposer(0) + 20) + 8);
  if (v9 >= 2)
  {
    if (v9 != 3)
    {
      sub_1E65E69D8();
      __break(1u);
      return;
    }

    [a1 pushViewController:v10 animated:0];
  }

  else
  {
    [a1 presentViewController:v10 animated:1 completion:0];
  }
}

void sub_1E5F952CC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + *(type metadata accessor for AppComposer(0) + 20) + 8);
  if (v4 >= 2)
  {
    if (v4 == 3)
    {
      v5 = [a1 popViewControllerAnimated_];
    }

    else
    {
      sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {

    [a1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_1E5F953C8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1E65DABE8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5F95488, v1, 0);
}

uint64_t sub_1E5F95488()
{
  type metadata accessor for AppEnvironment(0);
  v1 = EngagementService.queryAudioLanguageEngagementSheetAcknowledgment.getter();
  v0[7] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1E5F95594;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E5F95594()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1E5F957C8;
  }

  else
  {
    v4 = sub_1E5F956DC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E5F956DC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_1E65DABB8();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  if ((v6 & 1) != 0 && (v4 & 1) == 0)
  {

    v8 = v0[1];
  }

  else
  {
    sub_1E5F94DAC();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();

    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_1E5F957C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5F9582C(uint64_t a1, uint64_t a2)
{
  v4 = 0x746C7561666564;
  v5 = type metadata accessor for RouteSource(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v27 - v9;
  sub_1E5E1D27C(a1, v27 - v9, type metadata accessor for RouteSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v12 = 0x55676E6972616873;
        sub_1E5F94C90(v10, type metadata accessor for RouteSource);
        v13 = 0xEA00000000004C52;
      }

      else if (EnumCaseMultiPayload == 3)
      {
        v12 = 0x4C52556E65706FLL;
        sub_1E5F94C90(v10, type metadata accessor for RouteSource);
        v13 = 0xE700000000000000;
      }

      else
      {
        v12 = 0x616C506572616873;
        v15 = sub_1E65D8D48();
        (*(*(v15 - 8) + 8))(v10, v15);
        v13 = 0xE900000000000079;
      }

      goto LABEL_25;
    }

    if (!EnumCaseMultiPayload)
    {
      v12 = 0x636E75614C707061;
      sub_1E5F94C90(v10, type metadata accessor for RouteSource);
      goto LABEL_12;
    }

    v12 = 0x6974634172657375;
    sub_1E5F94C90(v10, type metadata accessor for RouteSource);
    v14 = 2037672310;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload != 7)
    {
      if (EnumCaseMultiPayload != 8)
      {
        v12 = 0x746977536B736174;
        v13 = 0xEA00000000006863;
        goto LABEL_25;
      }

      v12 = 0x6374697753626174;
LABEL_12:
      v13 = 0xE900000000000068;
      goto LABEL_25;
    }

    v12 = 0x7069726373627573;
    v14 = 1852795252;
LABEL_24:
    v13 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v12 = 0x746C7561666564;
  }

  else
  {
    v12 = 1769105779;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v13 = 0xE700000000000000;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

LABEL_25:
  v16 = type metadata accessor for RouteDestination(0);
  sub_1E5E1D27C(a2 + *(v16 + 20), v8, type metadata accessor for RouteSource);
  v17 = swift_getEnumCaseMultiPayload();
  if (v17 <= 4)
  {
    if (v17 > 1)
    {
      if (v17 != 2)
      {
        if (v17 != 3)
        {
          v24 = sub_1E65D8D48();
          (*(*(v24 - 8) + 8))(v8, v24);
          v19 = 0xE900000000000079;
          if (v12 != 0x616C506572616873)
          {
            goto LABEL_54;
          }

          goto LABEL_52;
        }

        v4 = 0x4C52556E65706FLL;
        sub_1E5F94C90(v8, type metadata accessor for RouteSource);
        goto LABEL_39;
      }

      v20 = 0x55676E6972616873;
      sub_1E5F94C90(v8, type metadata accessor for RouteSource);
      v21 = 19538;
LABEL_46:
      v19 = v21 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      if (v12 != v20)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    if (!v17)
    {
      v18 = 0x636E75614C707061;
      sub_1E5F94C90(v8, type metadata accessor for RouteSource);
LABEL_36:
      v19 = 0xE900000000000068;
      if (v12 != v18)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    v22 = 0x6974634172657375;
    sub_1E5F94C90(v8, type metadata accessor for RouteSource);
    v23 = 2037672310;
    goto LABEL_49;
  }

  if (v17 > 6)
  {
    if (v17 != 7)
    {
      if (v17 != 8)
      {
        v20 = 0x746977536B736174;
        v21 = 26723;
        goto LABEL_46;
      }

      v18 = 0x6374697753626174;
      goto LABEL_36;
    }

    v22 = 0x7069726373627573;
    v23 = 1852795252;
LABEL_49:
    v19 = v23 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v12 != v22)
    {
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  if (v17 == 5)
  {
LABEL_39:
    v19 = 0xE700000000000000;
    if (v12 != v4)
    {
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  v19 = 0xE400000000000000;
  if (v12 != 1769105779)
  {
LABEL_54:
    v25 = sub_1E65E6C18();
    goto LABEL_55;
  }

LABEL_52:
  if (v13 != v19)
  {
    goto LABEL_54;
  }

  v25 = 1;
LABEL_55:

  return v25 & 1;
}

uint64_t sub_1E5F95D7C(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v19 = a1;
  v6 = type metadata accessor for RouteSource(0);
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  while (v11)
  {
LABEL_9:
    sub_1E5E1D27C(*(a3 + 48) + *(v18 + 72) * (__clz(__rbit64(v11)) | (v14 << 6)), v8, type metadata accessor for RouteSource);
    v16 = v19(v8);
    result = sub_1E5F94C90(v8, type metadata accessor for RouteSource);
    if (v3)
    {
      goto LABEL_13;
    }

    v11 &= v11 - 1;
    if (v16)
    {
      a2 = 1;
LABEL_13:

      return a2 & 1;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      a2 = 0;
      goto LABEL_13;
    }

    v11 = *(a3 + 56 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5F95F4C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

      v9 = a1(v12);

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

uint64_t sub_1E5F95FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_1E65E6058();
  v5[3] = sub_1E65E6048();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1E5F960B8;

  return sub_1E5F939F0(1, a5);
}

uint64_t sub_1E5F960B8()
{

  v1 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5F961F4, v1, v0);
}

uint64_t sub_1E5F961F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5F96254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AppComposer(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_1E65E60A8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_1E5E1D27C(a2, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  sub_1E65E6058();

  v14 = sub_1E65E6048();
  v15 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v14;
  v16[3] = v17;
  v16[4] = a1;
  sub_1E5E1DF10(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for AppComposer);
  sub_1E64B80F8(0, 0, v12, a4, v16);
}

uint64_t sub_1E5F96440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_1E65E6058();
  v5[3] = sub_1E65E6048();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1E5F96500;

  return sub_1E5F939F0(1, a5);
}

uint64_t sub_1E5F96500()
{

  v1 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5F9C430, v1, v0);
}

uint64_t sub_1E5F96654(uint64_t a1)
{
  v211 = sub_1E65D8D48();
  v221 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v198 = &v180[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_1E65D74E8();
  v219 = *(v3 - 8);
  v220 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v197 = &v180[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v190 = &v180[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v188 = &v180[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v180[-v11];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v180[-v14];
  MEMORY[0x1EEE9AC00](v13);
  v183 = &v180[-v16];
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F98, &qword_1E65EA418);
  v17 = MEMORY[0x1EEE9AC00](v200);
  v193 = &v180[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v17);
  v192 = &v180[-v20];
  v21 = MEMORY[0x1EEE9AC00](v19);
  v185 = &v180[-v22];
  MEMORY[0x1EEE9AC00](v21);
  v184 = &v180[-v23];
  v205 = type metadata accessor for URLContext(0);
  v24 = MEMORY[0x1EEE9AC00](v205);
  v213 = &v180[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v180[-v27];
  v29 = MEMORY[0x1EEE9AC00](v26);
  v189 = &v180[-v30];
  MEMORY[0x1EEE9AC00](v29);
  v186 = &v180[-v31];
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071FA0, &qword_1E65EA420);
  MEMORY[0x1EEE9AC00](v195);
  v33 = &v180[-v32];
  v204 = type metadata accessor for AppLaunchScope(0);
  v34 = MEMORY[0x1EEE9AC00](v204);
  v194 = &v180[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = MEMORY[0x1EEE9AC00](v34);
  v191 = &v180[-v37];
  MEMORY[0x1EEE9AC00](v36);
  v203 = &v180[-v38];
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071FA8, &qword_1E65EA428);
  MEMORY[0x1EEE9AC00](v218);
  v40 = &v180[-v39];
  v226 = type metadata accessor for RouteSource(0);
  v41 = *(v226 - 8);
  v42 = MEMORY[0x1EEE9AC00](v226);
  v43 = MEMORY[0x1EEE9AC00](v42);
  v44 = MEMORY[0x1EEE9AC00](v43);
  v217 = &v180[-v45];
  v46 = MEMORY[0x1EEE9AC00](v44);
  v47 = MEMORY[0x1EEE9AC00](v46);
  v49 = &v180[-v48];
  v50 = MEMORY[0x1EEE9AC00](v47);
  v52 = &v180[-v51];
  MEMORY[0x1EEE9AC00](v50);
  v224 = &v180[-v56];
  v57 = *(a1 + 16);
  if (v57)
  {
    v216 = v54;
    v210 = v53;
    v182 = v15;
    v187 = v12;
    v209 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071FB0, &unk_1E65EA430);
    v58 = sub_1E65E6888();
    v59 = 0;
    v225 = v58;
    v222 = v58 + 56;
    v207 = a1 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v223 = *(v41 + 72);
    v208 = (v221 + 8);
    v196 = (v221 + 32);
    v214 = (v219 + 8);
    v201 = (v219 + 32);
    v199 = (v219 + 48);
    v212 = v28;
    v202 = v33;
    v60 = v218;
    v219 = v49;
    v206 = v57;
LABEL_6:
    v215 = v59;
    sub_1E5E1D27C(v207 + v223 * v59, v224, type metadata accessor for RouteSource);
    v62 = v225;
    sub_1E65E6D28();
    RouteSource.hash(into:)(&v227);
    v63 = sub_1E65E6D78();
    v221 = ~(-1 << *(v62 + 32));
    v64 = v63 & v221;
    v65 = (v63 & v221) >> 6;
    v66 = *(v222 + 8 * v65);
    v67 = 1 << (v63 & v221);
    if ((v67 & v66) == 0)
    {
LABEL_7:
      *(v222 + 8 * v65) = v66 | v67;
      v68 = v225;
      result = sub_1E5E1DF10(v224, *(v225 + 48) + v64 * v223, type metadata accessor for RouteSource);
      v70 = *(v68 + 16);
      v71 = __OFADD__(v70, 1);
      v72 = v70 + 1;
      if (!v71)
      {
        *(v225 + 16) = v72;
        goto LABEL_5;
      }

      __break(1u);
      return result;
    }

    while (1)
    {
      sub_1E5E1D27C(*(v225 + 48) + v64 * v223, v52, type metadata accessor for RouteSource);
      v73 = *(v60 + 48);
      sub_1E5E1D27C(v52, v40, type metadata accessor for RouteSource);
      sub_1E5E1D27C(v224, &v40[v73], type metadata accessor for RouteSource);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload <= 6)
        {
          if (EnumCaseMultiPayload == 5)
          {
            sub_1E5F94C90(v52, type metadata accessor for RouteSource);
            if (swift_getEnumCaseMultiPayload() == 5)
            {
              goto LABEL_151;
            }
          }

          else
          {
            sub_1E5F94C90(v52, type metadata accessor for RouteSource);
            if (swift_getEnumCaseMultiPayload() == 6)
            {
LABEL_3:
              sub_1E5F94C90(v224, type metadata accessor for RouteSource);
              v61 = v40;
              goto LABEL_4;
            }
          }
        }

        else if (EnumCaseMultiPayload == 7)
        {
          sub_1E5F94C90(v52, type metadata accessor for RouteSource);
          if (swift_getEnumCaseMultiPayload() == 7)
          {
            goto LABEL_3;
          }
        }

        else if (EnumCaseMultiPayload == 8)
        {
          sub_1E5F94C90(v52, type metadata accessor for RouteSource);
          if (swift_getEnumCaseMultiPayload() == 8)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_1E5F94C90(v52, type metadata accessor for RouteSource);
          if (swift_getEnumCaseMultiPayload() == 9)
          {
            goto LABEL_3;
          }
        }
      }

      else if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v97 = v216;
          sub_1E5E1D27C(v40, v216, type metadata accessor for RouteSource);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v98 = v212;
            sub_1E5E1DF10(&v40[v73], v212, type metadata accessor for URLContext);
            if ((sub_1E65D7468() & 1) == 0)
            {
              sub_1E5F94C90(v52, type metadata accessor for RouteSource);
              v49 = v219;
              v33 = v202;
              goto LABEL_101;
            }

            v99 = *(v205 + 20);
            v100 = *(v200 + 48);
            v101 = v192;
            sub_1E5F9AF1C(v97 + v99, v192);
            sub_1E5F9AF1C(v98 + v99, &v101[v100]);
            v102 = *v199;
            if ((*v199)(v101, 1, v220) == 1)
            {
              if (v102(&v101[v100], 1, v220) == 1)
              {
                sub_1E5DFE50C(v101, &qword_1ED072340, &qword_1E65EA410);
                v49 = v219;
                v33 = v202;
LABEL_80:
                v133 = *(v205 + 24);
                v134 = &v216[v133];
                v135 = *&v216[v133 + 8];
                v136 = &v212[v133];
                v137 = v136[1];
                v60 = v218;
                if (v135)
                {
                  if (v137)
                  {
                    if (*v134 == *v136 && v135 == v137)
                    {
                      sub_1E5F94C90(v52, type metadata accessor for RouteSource);
LABEL_142:
                      v174 = type metadata accessor for URLContext;
                      sub_1E5F94C90(v212, type metadata accessor for URLContext);
                      v175 = v216;
                      goto LABEL_150;
                    }

                    v138 = sub_1E65E6C18();
                    sub_1E5F94C90(v52, type metadata accessor for RouteSource);
                    if (v138)
                    {
                      goto LABEL_142;
                    }
                  }

                  else
                  {
                    sub_1E5F94C90(v52, type metadata accessor for RouteSource);
                  }
                }

                else
                {
                  sub_1E5F94C90(v52, type metadata accessor for RouteSource);
                  if (!v137)
                  {
                    goto LABEL_142;
                  }
                }

                goto LABEL_101;
              }

              sub_1E5F94C90(v52, type metadata accessor for RouteSource);
              v49 = v219;
              v33 = v202;
LABEL_78:
              sub_1E5DFE50C(v101, &qword_1ED071F98, &qword_1E65EA418);
              v60 = v218;
              goto LABEL_101;
            }

            v116 = v187;
            sub_1E5F9AF1C(v101, v187);
            if (v102(&v101[v100], 1, v220) == 1)
            {
              sub_1E5F94C90(v52, type metadata accessor for RouteSource);
              (*v214)(v116, v220);
              v33 = v202;
              v49 = v219;
              goto LABEL_78;
            }

            v129 = v190;
            v130 = v220;
            (*v201)(v190, &v101[v100], v220);
            sub_1E5F94D54(&qword_1ED071FB8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
            v131 = sub_1E65E5B98();
            v132 = *v214;
            (*v214)(v129, v130);
            v132(v116, v130);
            sub_1E5DFE50C(v101, &qword_1ED072340, &qword_1E65EA410);
            v33 = v202;
            v49 = v219;
            if (v131)
            {
              goto LABEL_80;
            }

            sub_1E5F94C90(v52, type metadata accessor for RouteSource);
            v60 = v218;
LABEL_101:
            sub_1E5F94C90(v212, type metadata accessor for URLContext);
            v147 = v216;
LABEL_102:
            v148 = type metadata accessor for URLContext;
LABEL_137:
            sub_1E5F94C90(v147, v148);
LABEL_138:
            sub_1E5F94C90(v40, type metadata accessor for RouteSource);
            goto LABEL_11;
          }

          sub_1E5F94C90(v52, type metadata accessor for RouteSource);
          sub_1E5F94C90(v97, type metadata accessor for URLContext);
          v49 = v219;
        }

        else
        {
          sub_1E5E1D27C(v40, v49, type metadata accessor for RouteSource);
          if (!swift_getEnumCaseMultiPayload())
          {
            v103 = v203;
            sub_1E5E1DF10(&v40[v73], v203, type metadata accessor for AppLaunchScope);
            v104 = *(v195 + 48);
            sub_1E5E1D27C(v49, v33, type metadata accessor for AppLaunchScope);
            sub_1E5E1D27C(v103, &v33[v104], type metadata accessor for AppLaunchScope);
            v105 = swift_getEnumCaseMultiPayload();
            if (v105)
            {
              if (v105 == 1)
              {
                v106 = v194;
                sub_1E5E1D27C(v33, v194, type metadata accessor for AppLaunchScope);
                if (swift_getEnumCaseMultiPayload() == 1)
                {
                  v107 = v189;
                  sub_1E5E1DF10(&v33[v104], v189, type metadata accessor for URLContext);
                  v108 = v194;
                  if ((sub_1E65D7468() & 1) == 0)
                  {
                    sub_1E5F94C90(v203, type metadata accessor for AppLaunchScope);
                    sub_1E5F94C90(v52, type metadata accessor for RouteSource);
                    v33 = v202;
                    v60 = v218;
                    goto LABEL_132;
                  }

                  v109 = *(v205 + 20);
                  v110 = *(v200 + 48);
                  v111 = &v108[v109];
                  v112 = v185;
                  sub_1E5F9AF1C(v111, v185);
                  sub_1E5F9AF1C(&v107[v109], &v112[v110]);
                  v113 = *v199;
                  if ((*v199)(v112, 1, v220) == 1)
                  {
                    v114 = v113(&v112[v110], 1, v220);
                    v33 = v202;
                    if (v114 == 1)
                    {
                      sub_1E5DFE50C(v112, &qword_1ED072340, &qword_1E65EA410);
LABEL_110:
                      v157 = *(v205 + 24);
                      v158 = &v194[v157];
                      v159 = *&v194[v157 + 8];
                      v160 = &v189[v157];
                      v161 = v160[1];
                      v60 = v218;
                      if (v159)
                      {
                        if (v161)
                        {
                          if (*v158 == *v160 && v159 == v161)
                          {
                            v178 = v189;
                            v179 = &v226;
                            goto LABEL_147;
                          }

                          v162 = sub_1E65E6C18();
                          sub_1E5F94C90(v203, type metadata accessor for AppLaunchScope);
                          sub_1E5F94C90(v52, type metadata accessor for RouteSource);
                          if (v162)
                          {
                            goto LABEL_143;
                          }
                        }

                        else
                        {
                          sub_1E5F94C90(v203, type metadata accessor for AppLaunchScope);
                          sub_1E5F94C90(v52, type metadata accessor for RouteSource);
                        }
                      }

                      else
                      {
                        sub_1E5F94C90(v203, type metadata accessor for AppLaunchScope);
                        sub_1E5F94C90(v52, type metadata accessor for RouteSource);
                        if (!v161)
                        {
LABEL_143:
                          v176 = v189;
                          v177 = v194;
                          goto LABEL_148;
                        }
                      }

                      goto LABEL_132;
                    }

                    sub_1E5F94C90(v203, type metadata accessor for AppLaunchScope);
                    sub_1E5F94C90(v52, type metadata accessor for RouteSource);
LABEL_108:
                    sub_1E5DFE50C(v112, &qword_1ED071F98, &qword_1E65EA418);
                    v60 = v218;
                    goto LABEL_132;
                  }

                  v149 = v182;
                  sub_1E5F9AF1C(v112, v182);
                  if (v113(&v112[v110], 1, v220) == 1)
                  {
                    sub_1E5F94C90(v203, type metadata accessor for AppLaunchScope);
                    sub_1E5F94C90(v52, type metadata accessor for RouteSource);
                    (*v214)(v149, v220);
                    v33 = v202;
                    goto LABEL_108;
                  }

                  v152 = v190;
                  v153 = v220;
                  (*v201)(v190, &v112[v110], v220);
                  sub_1E5F94D54(&qword_1ED071FB8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
                  v154 = sub_1E65E5B98();
                  v155 = *v214;
                  (*v214)(v152, v153);
                  v156 = v153;
                  v49 = v219;
                  v155(v149, v156);
                  sub_1E5DFE50C(v112, &qword_1ED072340, &qword_1E65EA410);
                  v33 = v202;
                  if (v154)
                  {
                    goto LABEL_110;
                  }

                  sub_1E5F94C90(v203, type metadata accessor for AppLaunchScope);
                  sub_1E5F94C90(v52, type metadata accessor for RouteSource);
                  v60 = v218;
LABEL_132:
                  sub_1E5F94C90(v189, type metadata accessor for URLContext);
                  v173 = &v226;
LABEL_135:
                  sub_1E5F94C90(*(v173 - 32), type metadata accessor for URLContext);
                  sub_1E5F94C90(v33, type metadata accessor for AppLaunchScope);
LABEL_136:
                  v148 = type metadata accessor for AppLaunchScope;
                  v147 = v49;
                  goto LABEL_137;
                }

LABEL_63:
                sub_1E5F94C90(v203, type metadata accessor for AppLaunchScope);
                sub_1E5F94C90(v52, type metadata accessor for RouteSource);
                sub_1E5F94C90(v106, type metadata accessor for URLContext);
                v60 = v218;
              }

              else
              {
                sub_1E5F94C90(v203, type metadata accessor for AppLaunchScope);
                sub_1E5F94C90(v52, type metadata accessor for RouteSource);
                v117 = swift_getEnumCaseMultiPayload();
                v60 = v218;
                if (v117 == 2)
                {
                  goto LABEL_149;
                }
              }

              sub_1E5DFE50C(v33, &qword_1ED071FA0, &qword_1E65EA420);
              goto LABEL_136;
            }

            v106 = v191;
            sub_1E5E1D27C(v33, v191, type metadata accessor for AppLaunchScope);
            if (swift_getEnumCaseMultiPayload())
            {
              goto LABEL_63;
            }

            v139 = v186;
            sub_1E5E1DF10(&v33[v104], v186, type metadata accessor for URLContext);
            v140 = v191;
            if ((sub_1E65D7468() & 1) == 0)
            {
              sub_1E5F94C90(v203, type metadata accessor for AppLaunchScope);
              sub_1E5F94C90(v52, type metadata accessor for RouteSource);
              v33 = v202;
              v60 = v218;
              goto LABEL_134;
            }

            v141 = *(v205 + 20);
            v142 = *(v200 + 48);
            v143 = &v140[v141];
            v144 = v184;
            sub_1E5F9AF1C(v143, v184);
            sub_1E5F9AF1C(&v139[v141], &v144[v142]);
            v145 = *v199;
            if ((*v199)(v144, 1, v220) == 1)
            {
              v146 = v145(&v144[v142], 1, v220);
              v33 = v202;
              if (v146 == 1)
              {
                sub_1E5DFE50C(v144, &qword_1ED072340, &qword_1E65EA410);
LABEL_119:
                v167 = *(v205 + 24);
                v168 = &v191[v167];
                v169 = *&v191[v167 + 8];
                v170 = &v186[v167];
                v171 = v170[1];
                v60 = v218;
                if (v169)
                {
                  if (v171)
                  {
                    if (*v168 == *v170 && v169 == v171)
                    {
                      v178 = v186;
                      v179 = &v223;
LABEL_147:
                      v177 = *(v179 - 32);
                      sub_1E5F94C90(v203, type metadata accessor for AppLaunchScope);
                      sub_1E5F94C90(v52, type metadata accessor for RouteSource);
                      v176 = v178;
LABEL_148:
                      sub_1E5F94C90(v176, type metadata accessor for URLContext);
                      sub_1E5F94C90(v177, type metadata accessor for URLContext);
LABEL_149:
                      v174 = type metadata accessor for AppLaunchScope;
                      sub_1E5F94C90(v33, type metadata accessor for AppLaunchScope);
                      v175 = v49;
LABEL_150:
                      sub_1E5F94C90(v175, v174);
LABEL_151:
                      sub_1E5F94C90(v40, type metadata accessor for RouteSource);
                      v61 = v224;
LABEL_4:
                      sub_1E5F94C90(v61, type metadata accessor for RouteSource);
LABEL_5:
                      v59 = v215 + 1;
                      if (v215 + 1 == v206)
                      {
                        return v225;
                      }

                      goto LABEL_6;
                    }

                    v172 = sub_1E65E6C18();
                    sub_1E5F94C90(v203, type metadata accessor for AppLaunchScope);
                    sub_1E5F94C90(v52, type metadata accessor for RouteSource);
                    if (v172)
                    {
                      goto LABEL_144;
                    }
                  }

                  else
                  {
                    sub_1E5F94C90(v203, type metadata accessor for AppLaunchScope);
                    sub_1E5F94C90(v52, type metadata accessor for RouteSource);
                  }
                }

                else
                {
                  sub_1E5F94C90(v203, type metadata accessor for AppLaunchScope);
                  sub_1E5F94C90(v52, type metadata accessor for RouteSource);
                  if (!v171)
                  {
LABEL_144:
                    v176 = v186;
                    v177 = v191;
                    goto LABEL_148;
                  }
                }

                goto LABEL_134;
              }

              sub_1E5F94C90(v203, type metadata accessor for AppLaunchScope);
              sub_1E5F94C90(v52, type metadata accessor for RouteSource);
            }

            else
            {
              v150 = v183;
              sub_1E5F9AF1C(v144, v183);
              v151 = v145(&v144[v142], 1, v220);
              v33 = v202;
              if (v151 != 1)
              {
                v163 = v190;
                v164 = v220;
                (*v201)(v190, &v144[v142], v220);
                sub_1E5F94D54(&qword_1ED071FB8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
                v181 = sub_1E65E5B98();
                v165 = *v214;
                (*v214)(v163, v164);
                v166 = v164;
                v49 = v219;
                v165(v150, v166);
                sub_1E5DFE50C(v144, &qword_1ED072340, &qword_1E65EA410);
                if (v181)
                {
                  goto LABEL_119;
                }

                sub_1E5F94C90(v203, type metadata accessor for AppLaunchScope);
                sub_1E5F94C90(v52, type metadata accessor for RouteSource);
                v60 = v218;
LABEL_134:
                sub_1E5F94C90(v186, type metadata accessor for URLContext);
                v173 = &v223;
                goto LABEL_135;
              }

              sub_1E5F94C90(v203, type metadata accessor for AppLaunchScope);
              sub_1E5F94C90(v52, type metadata accessor for RouteSource);
              (*v214)(v150, v220);
            }

            sub_1E5DFE50C(v144, &qword_1ED071F98, &qword_1E65EA418);
            v60 = v218;
            goto LABEL_134;
          }

          sub_1E5F94C90(v52, type metadata accessor for RouteSource);
          sub_1E5F94C90(v49, type metadata accessor for AppLaunchScope);
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v83 = v217;
        sub_1E5E1D27C(v40, v217, type metadata accessor for RouteSource);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v84 = v213;
          sub_1E5E1DF10(&v40[v73], v213, type metadata accessor for URLContext);
          if ((sub_1E65D7468() & 1) == 0)
          {
            sub_1E5F94C90(v52, type metadata accessor for RouteSource);
            v60 = v218;
            goto LABEL_99;
          }

          v85 = v83;
          v86 = *(v205 + 20);
          v87 = *(v200 + 48);
          v88 = v193;
          sub_1E5F9AF1C(&v85[v86], v193);
          sub_1E5F9AF1C(&v84[v86], &v88[v87]);
          v89 = *v199;
          if ((*v199)(v88, 1, v220) == 1)
          {
            if (v89(&v88[v87], 1, v220) == 1)
            {
              sub_1E5DFE50C(v88, &qword_1ED072340, &qword_1E65EA410);
              v60 = v218;
LABEL_71:
              v123 = *(v205 + 24);
              v124 = &v217[v123];
              v125 = *&v217[v123 + 8];
              v126 = &v213[v123];
              v127 = v126[1];
              v49 = v219;
              if (v125)
              {
                if (v127)
                {
                  if (*v124 == *v126 && v125 == v127)
                  {
                    sub_1E5F94C90(v52, type metadata accessor for RouteSource);
LABEL_140:
                    v174 = type metadata accessor for URLContext;
                    sub_1E5F94C90(v213, type metadata accessor for URLContext);
                    v175 = v217;
                    goto LABEL_150;
                  }

                  v128 = sub_1E65E6C18();
                  sub_1E5F94C90(v52, type metadata accessor for RouteSource);
                  if (v128)
                  {
                    goto LABEL_140;
                  }
                }

                else
                {
                  sub_1E5F94C90(v52, type metadata accessor for RouteSource);
                }
              }

              else
              {
                sub_1E5F94C90(v52, type metadata accessor for RouteSource);
                if (!v127)
                {
                  goto LABEL_140;
                }
              }

              goto LABEL_99;
            }

            sub_1E5F94C90(v52, type metadata accessor for RouteSource);
            v60 = v218;
          }

          else
          {
            v115 = v188;
            sub_1E5F9AF1C(v88, v188);
            if (v89(&v88[v87], 1, v220) != 1)
            {
              v118 = &v88[v87];
              v119 = v190;
              v120 = v220;
              (*v201)(v190, v118, v220);
              sub_1E5F94D54(&qword_1ED071FB8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
              v121 = sub_1E65E5B98();
              v122 = *v214;
              (*v214)(v119, v120);
              v122(v115, v120);
              sub_1E5DFE50C(v88, &qword_1ED072340, &qword_1E65EA410);
              v33 = v202;
              v60 = v218;
              if (v121)
              {
                goto LABEL_71;
              }

              sub_1E5F94C90(v52, type metadata accessor for RouteSource);
              v49 = v219;
LABEL_99:
              sub_1E5F94C90(v213, type metadata accessor for URLContext);
              v147 = v217;
              goto LABEL_102;
            }

            sub_1E5F94C90(v52, type metadata accessor for RouteSource);
            (*v214)(v115, v220);
            v33 = v202;
            v60 = v218;
          }

          sub_1E5DFE50C(v88, &qword_1ED071F98, &qword_1E65EA418);
          v49 = v219;
          goto LABEL_99;
        }

        sub_1E5F94C90(v52, type metadata accessor for RouteSource);
        sub_1E5F94C90(v83, type metadata accessor for URLContext);
      }

      else if (EnumCaseMultiPayload == 3)
      {
        v75 = v33;
        v76 = v209;
        sub_1E5E1D27C(v40, v209, type metadata accessor for RouteSource);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v77 = v197;
          v78 = v220;
          (*v201)(v197, &v40[v73], v220);
          v79 = sub_1E65D7468();
          v80 = *v214;
          v81 = v77;
          v60 = v218;
          (*v214)(v81, v78);
          sub_1E5F94C90(v52, type metadata accessor for RouteSource);
          v82 = v78;
          v49 = v219;
          v80(v76, v82);
          v33 = v75;
          if (v79)
          {
            goto LABEL_151;
          }

          goto LABEL_138;
        }

        sub_1E5F94C90(v52, type metadata accessor for RouteSource);
        (*v214)(v76, v220);
        v33 = v75;
      }

      else
      {
        v90 = v210;
        sub_1E5E1D27C(v40, v210, type metadata accessor for RouteSource);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v91 = v198;
          v92 = v211;
          (*v196)(v198, &v40[v73], v211);
          v93 = MEMORY[0x1E6940730](v90, v91);
          v94 = *v208;
          v95 = v91;
          v49 = v219;
          (*v208)(v95, v92);
          sub_1E5F94C90(v52, type metadata accessor for RouteSource);
          v96 = v92;
          v60 = v218;
          v94(v90, v96);
          if (v93)
          {
            goto LABEL_151;
          }

          goto LABEL_138;
        }

        sub_1E5F94C90(v52, type metadata accessor for RouteSource);
        (*v208)(v90, v211);
      }

      sub_1E5DFE50C(v40, &qword_1ED071FA8, &qword_1E65EA428);
LABEL_11:
      v64 = (v64 + 1) & v221;
      v65 = v64 >> 6;
      v66 = *(v222 + 8 * (v64 >> 6));
      v67 = 1 << v64;
      if ((v66 & (1 << v64)) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E5F988FC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F90, &qword_1E65FD870);
  type metadata accessor for RouteSource(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E65EA190;
  type metadata accessor for AppLaunchScope(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v3 = sub_1E5F96654(v2);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v6[2] = a1;
  LOBYTE(a1) = sub_1E5F95D7C(sub_1E5F9AEFC, v6, v3);

  if ((a1 & 1) == 0)
  {
    sub_1E5F94DAC();
    swift_allocError();
    *v5 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1E5F98ADC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F58, &qword_1E65EA388);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v77 = &v69 - v4;
  v76 = sub_1E65D7828();
  v74 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v73 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65D7848();
  v71 = *(v6 - 8);
  v72 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1E65D7768();
  v79 = *(v81 - 8);
  v9 = MEMORY[0x1EEE9AC00](v81);
  v70 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v69 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F60, &qword_1E65EA390);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (&v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v69 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F68, &qword_1E65EA398);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v69 - v20;
  swift_getKeyPath();
  v75 = a2;
  sub_1E65E4EC8();

  sub_1E65E4C98();
  (*(v19 + 8))(v21, v18);
  sub_1E5F9AE38(v17, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload)
  {
    v23 = v81;
    v24 = v79;
    if (EnumCaseMultiPayload == 1)
    {
      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F70, &qword_1E65EA3E8) + 48);
      v26 = *v15;
      v27 = sub_1E65D76A8();
      (*(*(v27 - 8) + 8))(v15 + v25, v27);
      goto LABEL_6;
    }

    sub_1E5DFE50C(v15, &qword_1ED071F60, &qword_1E65EA390);
LABEL_12:
    sub_1E5F94DAC();
    swift_allocError();
    v40 = 4;
LABEL_15:
    *v39 = v40;
    return swift_willThrow();
  }

  v26 = *v15;
  v23 = v81;
  v24 = v79;
LABEL_6:
  swift_getKeyPath();
  sub_1E65E4EC8();

  v28 = v73;
  sub_1E65D7838();
  (*(v71 + 8))(v8, v72);
  v29 = v77;
  sub_1E65D77F8();
  (*(v74 + 8))(v28, v76);
  if ((*(v24 + 48))(v29, 1, v23) == 1)
  {

    sub_1E5DFE50C(v29, &qword_1ED071F58, &qword_1E65EA388);
LABEL_14:
    sub_1E5F94DAC();
    swift_allocError();
    v40 = 7;
    goto LABEL_15;
  }

  v30 = v78;
  (*(v24 + 32))(v78, v29, v23);
  v31 = sub_1E65D7788();
  if (!v31[2])
  {
    (*(v24 + 8))(v30, v23);

    goto LABEL_14;
  }

  v33 = v31[4];
  v32 = v31[5];

  v80[0] = v33;
  v80[1] = v32;
  sub_1E5F9AEA8();
  v34 = sub_1E65E66E8();

  if (v34[2])
  {
    v35 = v34[4];
    v36 = v34[5];
    v38 = v34[6];
    v37 = v34[7];
  }

  else
  {

    v35 = sub_1E65E6688();
    v36 = v42;
    v38 = v43;
    v37 = v44;
  }

  v45 = MEMORY[0x1E694D730](v35, v36, v38, v37);
  v47 = v46;

  v48 = v78;
  if (sub_1E65D7748() == 28261 && v49 == 0xE200000000000000)
  {

    goto LABEL_21;
  }

  v50 = sub_1E65E6C18();

  if (v50)
  {
LABEL_21:
    v51 = 0;
    if (v45 == 28261)
    {
      v52 = v70;
      if (v47 == 0xE200000000000000)
      {

        v51 = 0;
        goto LABEL_31;
      }

      goto LABEL_28;
    }

LABEL_27:
    v52 = v70;
    goto LABEL_28;
  }

  v53 = sub_1E65D7748();
  v51 = sub_1E637CA94(v53, v54, v26);

  if (v45 != 28261)
  {
    goto LABEL_27;
  }

  v52 = v70;
  if (v47 == 0xE200000000000000)
  {
LABEL_29:

    goto LABEL_31;
  }

LABEL_28:
  if (sub_1E65E6C18())
  {
    goto LABEL_29;
  }

  v55 = sub_1E637CA94(v45, v47, v26);

  v51 |= v55;
LABEL_31:
  LODWORD(v77) = v51;
  v76 = v45;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v56 = sub_1E65E3B68();
  __swift_project_value_buffer(v56, qword_1EE2EA2A0);
  (*(v24 + 16))(v52, v48, v23);

  v57 = sub_1E65E3B48();
  v58 = sub_1E65E6338();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = v52;
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v80[0] = v61;
    *v60 = 136315394;
    v62 = sub_1E65D7748();
    v64 = v63;
    v65 = *(v24 + 8);
    v65(v59, v81);
    v66 = sub_1E5DFD4B0(v62, v64, v80);
    v23 = v81;

    *(v60 + 4) = v66;
    *(v60 + 12) = 2080;
    v67 = sub_1E5DFD4B0(v76, v47, v80);

    *(v60 + 14) = v67;
    _os_log_impl(&dword_1E5DE9000, v57, v58, "[Audio Language Engagement Sheet] storeFrontLanguage: %s deviceLanguage: %s", v60, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v61, -1, -1);
    MEMORY[0x1E694F1C0](v60, -1, -1);

    if ((v77 & 1) == 0)
    {
LABEL_35:
      sub_1E5F94DAC();
      swift_allocError();
      *v68 = 5;
      swift_willThrow();
      return (v65)(v78, v23);
    }
  }

  else
  {

    v65 = *(v24 + 8);
    v65(v52, v23);
    if ((v77 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  return (v65)(v78, v23);
}

void *sub_1E5F99494(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077730, &unk_1E65EA310);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v46 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EF8, &unk_1E65FA470);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v46 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F00, &qword_1E65EA320);
  MEMORY[0x1EEE9AC00](v47);
  v11 = &v46 - v10;
  v12 = type metadata accessor for AppComposer(0);
  v13 = v12 - 8;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F08, &qword_1E65EA328);
  v17 = MEMORY[0x1EEE9AC00](v48);
  v49 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v46 - v19;
  v21 = *(a1 + *(v13 + 28) + 8);
  if (v21 < 2)
  {
    sub_1E5E1D27C(a1, &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
    v22 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v2;
    sub_1E5E1DF10(v16, v23 + v22, type metadata accessor for AppComposer);

    sub_1E6318EA0(&v50);
    sub_1E61BAD70(a1, sub_1E5F99E40, v23, v11);
    v24 = sub_1E65E4FD8();
    (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
    if (qword_1EE2D49E0 != -1)
    {
      swift_once();
    }

    v25 = sub_1E65E5018();
    __swift_project_value_buffer(v25, qword_1EE2D49E8);
    v26 = sub_1E65E2E78();
    (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
    sub_1E5F99C3C();
    sub_1E65E4728();

    sub_1E5DFE50C(v6, &unk_1ED077730, &unk_1E65EA310);
    sub_1E5DFE50C(v9, &qword_1ED071EF8, &unk_1E65FA470);
    sub_1E5DFE50C(v11, &qword_1ED071F00, &qword_1E65EA320);
    v27 = swift_allocObject();
    v28 = v53;
    v27[3] = v52;
    v27[4] = v28;
    v27[5] = v54;
    v29 = v51;
    v27[1] = v50;
    v27[2] = v29;
    v30 = v49;
    v31 = &v20[*(v48 + 36)];
    *v31 = 0;
    *(v31 + 1) = 0;
    *(v31 + 2) = sub_1E5F9C42C;
    *(v31 + 3) = v27;
    sub_1E5E2F270(v20, v30);
    v32 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F50, &qword_1E65EA348));
    v33 = sub_1E65E1738();
    [v33 setModalInPresentation_];
LABEL_9:
    sub_1E5E2F2E0(v20);
    return v33;
  }

  if (v21 == 3)
  {
    sub_1E5E1D27C(a1, &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
    v34 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = v2;
    sub_1E5E1DF10(v16, v35 + v34, type metadata accessor for AppComposer);

    sub_1E6318EA0(&v50);
    sub_1E61BAD70(a1, sub_1E5F99C1C, v35, v11);
    v36 = sub_1E65E4FD8();
    (*(*(v36 - 8) + 56))(v9, 1, 1, v36);
    if (qword_1EE2D49E0 != -1)
    {
      swift_once();
    }

    v37 = sub_1E65E5018();
    __swift_project_value_buffer(v37, qword_1EE2D49E8);
    v38 = sub_1E65E2E78();
    (*(*(v38 - 8) + 56))(v6, 1, 1, v38);
    sub_1E5F99C3C();
    sub_1E65E4728();

    sub_1E5DFE50C(v6, &unk_1ED077730, &unk_1E65EA310);
    sub_1E5DFE50C(v9, &qword_1ED071EF8, &unk_1E65FA470);
    sub_1E5DFE50C(v11, &qword_1ED071F00, &qword_1E65EA320);
    v39 = swift_allocObject();
    v40 = v53;
    v39[3] = v52;
    v39[4] = v40;
    v39[5] = v54;
    v41 = v51;
    v39[1] = v50;
    v39[2] = v41;
    v42 = v49;
    v43 = &v20[*(v48 + 36)];
    *v43 = 0;
    *(v43 + 1) = 0;
    *(v43 + 2) = sub_1E5F99E38;
    *(v43 + 3) = v39;
    sub_1E5E2F270(v20, v42);
    v44 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F48, &qword_1E65EA340));
    v33 = sub_1E65E4058();
    goto LABEL_9;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

unint64_t sub_1E5F99C3C()
{
  result = qword_1ED071F10;
  if (!qword_1ED071F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED071F00, &qword_1E65EA320);
    sub_1E5F99CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071F10);
  }

  return result;
}

unint64_t sub_1E5F99CC0()
{
  result = qword_1ED071F18;
  if (!qword_1ED071F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED071F20, &qword_1E65EA330);
    sub_1E5F99D4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071F18);
  }

  return result;
}

unint64_t sub_1E5F99D4C()
{
  result = qword_1ED071F28;
  if (!qword_1ED071F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED071F30, &qword_1E65EA338);
    sub_1E5F94D54(&qword_1ED071F38, MEMORY[0x1E699E900], MEMORY[0x1E699E8F8]);
    sub_1E5F94D54(&qword_1ED071F40, MEMORY[0x1E699E940], MEMORY[0x1E699E938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071F28);
  }

  return result;
}

uint64_t sub_1E5F99ED8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E5F96440(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1E5F99FD0(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E5F95FF8(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_21Tm_0()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);

  v89 = v0 + ((v92 + 24) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5F9ADB0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_1E5F9AE38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F60, &qword_1E65EA390);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5F9AEA8()
{
  result = qword_1EE2D4970;
  if (!qword_1EE2D4970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4970);
  }

  return result;
}

uint64_t sub_1E5F9AF1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1E5F9AF8C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1E65E67C8())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072010, &qword_1E65EA478);
      v3 = sub_1E65E6888();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1E65E67C8();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x1E694E2D0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1E65E6598();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1E5E0DFF4();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1E65E65A8();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_1E65E6598();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_1E5E0DFF4();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1E65E65A8();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1E5F9B258(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071FD0, &qword_1E65EA450);
    v3 = sub_1E65E6888();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v10 = *(v6 + v4);
      sub_1E65E6D28();
      sub_1E65DE5F8();
      result = sub_1E65E6D78();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        result = sub_1E65DE5E8();
        if (result)
        {
          goto LABEL_5;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      *(*(v3 + 48) + i) = v10;
      v7 = *(v3 + 16);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (!v8)
      {
        *(v3 + 16) = v9;
LABEL_5:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1E5F9B3B0(uint64_t a1)
{
  v2 = sub_1E65DADD8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071FD8, &qword_1E65EA458);
    v9 = sub_1E65E6888();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1E5F94D54(&qword_1ED071FE0, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2E8]);
      v16 = sub_1E65E5B38();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1E5F94D54(&qword_1EE2D6FB0, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2F0]);
          v23 = sub_1E65E5B98();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E5F9B6E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B760, &qword_1E65EA440);
    v3 = sub_1E65E6888();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1E65E6D28();

      sub_1E65E5D78();
      result = sub_1E65E6D78();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1E65E6C18();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1E5F9B874(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_1E65E6888();
    v8 = 0;
    v9 = v7 + 56;
    v24 = v4;
    v25 = a1 + 32;
    while (2)
    {
      v10 = *(v25 + v8);
      sub_1E65E6D28();
      a4(v10);
      sub_1E65E5D78();

      result = sub_1E65E6D78();
      v12 = ~(-1 << *(v7 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v9 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = a4(*(*(v7 + 48) + i));
        v17 = v16;
        if (v15 == a4(v10) && v17 == v18)
        {

          goto LABEL_4;
        }

        v20 = sub_1E65E6C18();

        if (v20)
        {
          goto LABEL_4;
        }
      }

      *(v9 + 8 * (i >> 6)) = (1 << i) | v14;
      *(*(v7 + 48) + i) = v10;
      v21 = *(v7 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (!v22)
      {
        *(v7 + 16) = v23;
LABEL_4:
        if (++v8 == v24)
        {
          return v7;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1E5F9BA30(uint64_t a1)
{
  v2 = sub_1E65E0B48();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071FE8, &qword_1E65EA460);
    v10 = sub_1E65E6888();
    v11 = 0;
    v12 = v10 + 56;
    v13 = *(v3 + 80);
    v25 = v9;
    v26 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v3 + 72);
    while (2)
    {
      sub_1E5E1D27C(v26 + v14 * v11, v8, MEMORY[0x1E699DD40]);
      sub_1E65E6D28();
      sub_1E65E0B38();
      v15 = sub_1E65E6D78();
      v16 = ~(-1 << *(v10 + 32));
      for (i = v15 & v16; ; i = (i + 1) & v16)
      {
        v18 = *(v12 + 8 * (i >> 6));
        if (((1 << i) & v18) == 0)
        {
          break;
        }

        sub_1E5E1D27C(*(v10 + 48) + i * v14, v6, MEMORY[0x1E699DD40]);
        v19 = MEMORY[0x1E6948530](v6, v8);
        sub_1E5F94C90(v6, MEMORY[0x1E699DD40]);
        if (v19)
        {
          sub_1E5F94C90(v8, MEMORY[0x1E699DD40]);
          goto LABEL_4;
        }
      }

      *(v12 + 8 * (i >> 6)) = (1 << i) | v18;
      result = sub_1E5E1DF10(v8, *(v10 + 48) + i * v14, MEMORY[0x1E699DD40]);
      v21 = *(v10 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (!v22)
      {
        *(v10 + 16) = v23;
LABEL_4:
        if (++v11 == v25)
        {
          return v10;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1E5F9BCB8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1E65E6888();
    v6 = 0;
    v7 = v5 + 56;
    v8 = a1 + 32;
    while (1)
    {
      v12 = *(v8 + v6);
      sub_1E65E6D28();
      MEMORY[0x1E694E740](v12);
      result = sub_1E65E6D78();
      v14 = ~(-1 << *(v5 + 32));
      v15 = result & v14;
      v16 = (result & v14) >> 6;
      v17 = *(v7 + 8 * v16);
      v18 = 1 << (result & v14);
      v19 = *(v5 + 48);
      if ((v18 & v17) != 0)
      {
        while (*(v19 + v15) != v12)
        {
          v15 = (v15 + 1) & v14;
          v16 = v15 >> 6;
          v17 = *(v7 + 8 * (v15 >> 6));
          v18 = 1 << v15;
          if (((1 << v15) & v17) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v7 + 8 * v16) = v18 | v17;
        *(v19 + v15) = v12;
        v9 = *(v5 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v5 + 16) = v11;
      }

      if (++v6 == v3)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E5F9BDEC(uint64_t a1)
{
  v2 = sub_1E65DAEC8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072018, &qword_1E65EA480);
    v9 = sub_1E65E6888();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1E5F94D54(&qword_1EE2D6FA0, MEMORY[0x1E69CD3C0], MEMORY[0x1E69CD3C8]);
      v16 = sub_1E65E5B38();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1E5F94D54(&qword_1EE2D6F98, MEMORY[0x1E69CD3C0], MEMORY[0x1E69CD3D0]);
          v23 = sub_1E65E5B98();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E5F9C10C(uint64_t a1)
{
  v2 = sub_1E65D78F8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071FF8, &qword_1E65EA470);
    v9 = sub_1E65E6888();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1E5F94D54(&qword_1ED072000, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      v16 = sub_1E65E5B38();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1E5F94D54(&qword_1ED072008, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
          v23 = sub_1E65E5B98();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t RoutingContext.resolveDetours(_:priority:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  v8 = *(type metadata accessor for RouteDestination(0) - 8);
  *(v5 + 48) = v8;
  *(v5 + 56) = *(v8 + 64);
  *(v5 + 64) = swift_task_alloc();
  v9 = *(a3 - 8);
  *(v5 + 72) = v9;
  *(v5 + 80) = *(v9 + 64);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 129) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1E5F9C56C, 0, 0);
}

uint64_t sub_1E5F9C56C()
{
  v15 = *(v0 + 129);
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v18 = *(v0 + 80);
  v16 = v1;
  v17 = *(v0 + 48);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = (*(v5 + 16))(v7, v5);
  v20 = v9;
  *(v0 + 96) = v8;
  ObjectType = swift_getObjectType();
  *(v0 + 128) = v15;
  (*(v2 + 16))(v1, v4, v7);
  sub_1E5F9CE1C(v6, v3);
  v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v11 = (v18 + *(v17 + 80) + v10) & ~*(v17 + 80);
  v12 = swift_allocObject();
  *(v0 + 104) = v12;
  *(v12 + 16) = v7;
  *(v12 + 24) = v5;
  (*(v2 + 32))(v12 + v10, v16, v7);
  sub_1E5F9CE80(v3, v12 + v11);
  v13 = swift_task_alloc();
  *(v0 + 112) = v13;
  *v13 = v0;
  v13[1] = sub_1E5F9C738;

  return sub_1E61261B8((v0 + 128), &unk_1E65EA4A8, v12, ObjectType, v20);
}

uint64_t sub_1E5F9C738()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    swift_unknownObjectRelease();

    return MEMORY[0x1EEE6DFA0](sub_1E5F9C8B4, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E5F9C8B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5F9C924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860);
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5F9C9C4, 0, 0);
}

uint64_t sub_1E5F9C9C4()
{
  (*(v0[10] + 24))(v0[9]);
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v10 = (*(v2 + 16) + **(v2 + 16));
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_1E5F9CBD0;
    v4 = v0[11];
    v5 = v0[8];

    return v10(v4, v5, v1, v2);
  }

  else
  {
    v7 = v0[11];
    sub_1E5DFE50C((v0 + 2), &unk_1ED072050, &unk_1E65EEAB0);
    v8 = type metadata accessor for RouteDestination(0);
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    sub_1E5DFE50C(v7, &unk_1ED072040, &qword_1E65F0860);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1E5F9CBD0()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1E5F9CDAC;
  }

  else
  {
    v2 = sub_1E5F9CCE4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5F9CCE4()
{
  v1 = v0[11];
  v2 = type metadata accessor for RouteDestination(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_1E5DFE50C(v1, &unk_1ED072040, &qword_1E65F0860);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E5F9CDAC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5F9CE1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RouteDestination(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5F9CE80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RouteDestination(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5F9CEE4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v5 = *(*(v2 - 8) + 64);
  v6 = *(type metadata accessor for RouteDestination(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E5F9C924(v0 + v4, v0 + v7, v2, v3);
}

uint64_t RoutingContext.appendDestination(_:priority:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  *(v4 + 16) = sub_1E65E6058();
  *(v4 + 24) = sub_1E65E6048();
  *(v4 + 48) = v8;
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 32) = v9;
  *v9 = v4;
  v9[1] = sub_1E5F9D184;

  return v11(a1, 1, v4 + 48, a3, a4);
}

uint64_t sub_1E5F9D184()
{
  *(*v1 + 40) = v0;

  v3 = sub_1E65E5FC8();
  if (v0)
  {
    v4 = sub_1E5F9D2C8;
  }

  else
  {
    v4 = sub_1E5F9F080;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1E5F9D2C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t RoutingContext.removeLast()(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_1E65E6058();
  v2[3] = sub_1E65E6048();
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1E5F9D470;

  return v7(1, a1, a2);
}

uint64_t sub_1E5F9D470()
{
  *(*v1 + 40) = v0;

  v3 = sub_1E65E5FC8();
  if (v0)
  {
    v4 = sub_1E5F9D2C8;
  }

  else
  {
    v4 = sub_1E5F9D5CC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1E5F9D5CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t RoutingContext.reset(animated:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 89) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860);
  *(v4 + 40) = swift_task_alloc();
  sub_1E65E6058();
  *(v4 + 48) = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  *(v4 + 56) = v6;
  *(v4 + 64) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E5F9D708, v6, v5);
}

uint64_t sub_1E5F9D708()
{
  v1 = *(v0 + 40);
  v10 = *(v0 + 24);
  v2 = type metadata accessor for RouteDestination(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  *(v0 + 88) = 0;
  v9 = (*(v10 + 48) + **(v10 + 48));
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_1E5F9D878;
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 89);

  return v9(v4, v7, v0 + 88, v5, v6);
}

uint64_t sub_1E5F9D878()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  *(*v1 + 80) = v0;

  sub_1E5DFE50C(v3, &unk_1ED072040, &qword_1E65F0860);
  v4 = *(v2 + 56);
  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_1E5F9DA2C;
  }

  else
  {
    v6 = sub_1E5F9D9C0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1E5F9D9C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5F9DA2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t RoutingContext.reset(with:priority:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  *(v4 + 16) = sub_1E65E6058();
  *(v4 + 24) = sub_1E65E6048();
  *(v4 + 48) = v8;
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 32) = v9;
  *v9 = v4;
  v9[1] = sub_1E5F9DBFC;

  return v11(a1, 1, v4 + 48, a3, a4);
}

{
  v8 = *a2;
  *(v4 + 16) = sub_1E65E6058();
  *(v4 + 24) = sub_1E65E6048();
  *(v4 + 48) = v8;
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 32) = v9;
  *v9 = v4;
  v9[1] = sub_1E5F9DBFC;

  return v11(a1, 1, v4 + 48, a3, a4);
}

uint64_t sub_1E5F9DBFC()
{
  *(*v1 + 40) = v0;

  v3 = sub_1E65E5FC8();
  if (v0)
  {
    v4 = sub_1E5F9F07C;
  }

  else
  {
    v4 = sub_1E5F9F080;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t RoutingContext.dismiss()(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_1E65E6058();
  v2[3] = sub_1E65E6048();
  v7 = (*(a2 + 64) + **(a2 + 64));
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1E5F9DFE8;

  return v7(1, a1, a2);
}

uint64_t sub_1E5F9DFE8()
{
  *(*v1 + 40) = v0;

  v3 = sub_1E65E5FC8();
  if (v0)
  {
    v4 = sub_1E5F9F07C;
  }

  else
  {
    v4 = sub_1E5F9F080;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t RoutingContext.presentDestination(_:style:priority:)(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *a3;
  *(v5 + 32) = sub_1E65E6058();
  *(v5 + 40) = sub_1E65E6048();
  *(v5 + 16) = v9;
  *(v5 + 24) = v10;
  *(v5 + 25) = v11;
  v14 = (*(a5 + 72) + **(a5 + 72));
  v12 = swift_task_alloc();
  *(v5 + 48) = v12;
  *v12 = v5;
  v12[1] = sub_1E5F9E2C8;

  return v14(a1, v5 + 16, 1, v5 + 25, a4, a5);
}

uint64_t sub_1E5F9E2C8()
{
  *(*v1 + 56) = v0;

  v3 = sub_1E65E5FC8();
  if (v0)
  {
    v4 = sub_1E5F9E470;
  }

  else
  {
    v4 = sub_1E5F9E40C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1E5F9E40C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5F9E470()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t RoutingContext.presentDestinations(_:style:priority:)(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *a3;
  *(v5 + 32) = sub_1E65E6058();
  *(v5 + 40) = sub_1E65E6048();
  *(v5 + 16) = v9;
  *(v5 + 24) = v10;
  *(v5 + 25) = v11;
  v14 = (*(a5 + 80) + **(a5 + 80));
  v12 = swift_task_alloc();
  *(v5 + 48) = v12;
  *v12 = v5;
  v12[1] = sub_1E5F9E658;

  return v14(a1, v5 + 16, 1, v5 + 25, a4, a5);
}

uint64_t sub_1E5F9E658()
{
  *(*v1 + 56) = v0;

  v3 = sub_1E65E5FC8();
  if (v0)
  {
    v4 = sub_1E5F9F078;
  }

  else
  {
    v4 = sub_1E5F9F084;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t dispatch thunk of RoutingContext.appendDestination(_:animated:priority:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1E5DFE6BC;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of RoutingContext.removeLast(animated:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFA78C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of RoutingContext.reset(with:animated:priority:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 48) + **(a5 + 48));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1E5DFE6BC;

  return v13(a1, a2, a3, a4, a5);
}

{
  v13 = (*(a5 + 56) + **(a5 + 56));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1E5DFE6BC;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of RoutingContext.dismiss(animated:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 64) + **(a3 + 64));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of RoutingContext.presentDestination(_:style:animated:priority:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 72) + **(a6 + 72));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1E5DFE6BC;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of RoutingContext.presentDestinations(_:style:animated:priority:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 80) + **(a6 + 80));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1E5DFE6BC;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1E5F9F088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5F9F0D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1E5F9F118(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E5F9F1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB778](a1, a2, a3, WitnessTable);
}

uint64_t sub_1E5F9F24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB740](a1, a2, a3, WitnessTable);
}

void sub_1E5F9F2C8(uint64_t a1)
{
  swift_getWitnessTable();
  sub_1E65E4358();
  __break(1u);
}

uint64_t sub_1E5F9F34C(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1E65E6958();
    v9 = *(type metadata accessor for RouteDestination(0) - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v12, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_1E65E6928();
      sub_1E65E6968();
      sub_1E65E6978();
      sub_1E65E6938();
      v10 += v11;
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E5F9F530(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(BOOL, unint64_t, uint64_t), uint64_t (*a7)(void))
{
  v10 = v7;
  v27 = a1;
  v28 = a2;
  v25 = a4;
  v26 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v23 - v14;
  v16 = *(a3 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (!v16)
  {
    return v17;
  }

  v29 = MEMORY[0x1E69E7CC0];
  v23 = a6;
  a6(0, v16, 0);
  v17 = v29;
  v18 = *(a7(0) - 8);
  v19 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v24 = *(v18 + 72);
  while (1)
  {
    v27(v19);
    if (v10)
    {
      break;
    }

    v10 = 0;
    v29 = v17;
    v21 = *(v17 + 16);
    v20 = *(v17 + 24);
    if (v21 >= v20 >> 1)
    {
      v23(v20 > 1, v21 + 1, 1);
      v17 = v29;
    }

    *(v17 + 16) = v21 + 1;
    sub_1E5FAB460(v15, v17 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v21, v25, v26);
    v19 += v24;
    if (!--v16)
    {
      return v17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5F9F890(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = v4;
  v22 = a1;
  v23 = a2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A0, &qword_1E65EA788);
  v8 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v10 = &v18 - v9;
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_1E601C670(0, v11, 0);
  v12 = v24;
  v13 = *(a4(0) - 8);
  v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v20 = v8 + 32;
  v19 = *(v13 + 72);
  while (1)
  {
    v22(v14);
    if (v6)
    {
      break;
    }

    v6 = 0;
    v24 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1E601C670((v15 > 1), v16 + 1, 1);
      v12 = v24;
    }

    *(v12 + 16) = v16 + 1;
    (*(v8 + 32))(v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v16, v10, v21);
    v14 += v19;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5F9FAF8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v9 = v6;
  v25 = a1;
  v26 = a2;
  v24 = a4(0);
  v11 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v13 = &v21 - v12;
  v14 = *(a3 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (!v14)
  {
    return v15;
  }

  v27 = MEMORY[0x1E69E7CC0];
  v21 = a5;
  a5(0, v14, 0);
  v15 = v27;
  v16 = *(a6(0) - 8);
  v17 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v23 = v11 + 32;
  v22 = *(v16 + 72);
  while (1)
  {
    v25(v17);
    if (v9)
    {
      break;
    }

    v9 = 0;
    v27 = v15;
    v19 = *(v15 + 16);
    v18 = *(v15 + 24);
    if (v19 >= v18 >> 1)
    {
      v21(v18 > 1, v19 + 1, 1);
      v15 = v27;
    }

    *(v15 + 16) = v19 + 1;
    (*(v11 + 32))(v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v19, v13, v24);
    v17 += v22;
    if (!--v14)
    {
      return v15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5F9FD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17[0] = a1;
  v17[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A8, &qword_1E65EA790);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v17 - v8;
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_1E601BE24(0, v10, 0);
  v11 = v19;
  for (i = (a3 + 40); ; i += 2)
  {
    v13 = *i;
    v18[0] = *(i - 1);
    v18[1] = v13;

    (v17[0])(v18);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v19 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1E601BE24((v14 > 1), v15 + 1, 1);
      v11 = v19;
    }

    *(v11 + 16) = v15 + 1;
    sub_1E5FAB460(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, &qword_1ED0720A8, &qword_1E65EA790);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5F9FF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860);
  v4[16] = swift_task_alloc();
  v5 = type metadata accessor for RouteDestination(0);
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  sub_1E65E6058();
  v4[21] = sub_1E65E6048();
  v7 = sub_1E65E5FC8();
  v4[22] = v7;
  v4[23] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA0068, v7, v6);
}

uint64_t sub_1E5FA0068()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  *(v0 + 192) = v2;
  if (v2)
  {
    v3 = *(v0 + 120);
    sub_1E5E24688(v1 + ((*(*(v0 + 144) + 80) + 32) & ~*(*(v0 + 144) + 80)) + *(*(v0 + 144) + 72) * (v2 - 1), *(v0 + 160), type metadata accessor for RouteDestination);
    v4 = type metadata accessor for NavigationControllerRoutingContext(0);
    sub_1E5DFD1CC(v3 + *(v4 + 28), v0 + 16, &unk_1ED072050, &unk_1E65EEAB0);
    v5 = *(v0 + 40);
    if (v5)
    {
      v6 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      v44 = (*(v6 + 16) + **(v6 + 16));
      v7 = swift_task_alloc();
      *(v0 + 200) = v7;
      *v7 = v0;
      v7[1] = sub_1E5FA0564;
      v8 = *(v0 + 160);
      v9 = *(v0 + 128);

      return v44(v9, v8, v5, v6);
    }

    else
    {
      v13 = *(v0 + 136);
      v14 = *(v0 + 144);
      v15 = *(v0 + 128);

      sub_1E5DFE50C(v0 + 16, &unk_1ED072050, &unk_1E65EEAB0);
      (*(v14 + 56))(v15, 1, 1, v13);
      v16 = *(v0 + 136);
      v17 = *(v0 + 144);
      v18 = *(v0 + 128);
      sub_1E5E24688(*(v0 + 160), *(v0 + 152), type metadata accessor for RouteDestination);
      if ((*(v17 + 48))(v18, 1, v16) != 1)
      {
        sub_1E5DFE50C(*(v0 + 128), &unk_1ED072040, &qword_1E65F0860);
      }

      v19 = *(v0 + 192);
      if (v19 == 1)
      {
        v20 = [**(v0 + 120) topViewController];
        v19 = *(v0 + 192);
      }

      else
      {
        v20 = 0;
      }

      v21 = *(v0 + 152);
      v41 = v20;
      v42 = v21;
      v43 = *(v0 + 160);
      v23 = *(v0 + 104);
      v22 = *(v0 + 112);
      v24 = *(v0 + 96);
      v25 = v19 - 1;
      v27 = v22[3];
      v26 = v22[4];
      v28 = __swift_project_boxed_opaque_existential_1(v22, v27);
      v29 = sub_1E625E57C(v23, v20, v28, v21, v27, v26);
      sub_1E5FA0A68(v25, v24);
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v36 = swift_task_alloc();
      *(v36 + 16) = v23;
      *(v36 + 24) = v22;

      v37 = sub_1E5FAAAF4(sub_1E5FAAA88, v36, v31, v33, v35);
      swift_unknownObjectRelease();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E65EA660;
      *(inited + 32) = v29;
      v45 = v37;
      v39 = v29;
      sub_1E5FAA134(inited, sub_1E5FAA640);

      sub_1E5E262E0(v42, type metadata accessor for RouteDestination);
      sub_1E5E262E0(v43, type metadata accessor for RouteDestination);

      v40 = *(v0 + 8);

      return v40(v45);
    }
  }

  else
  {

    sub_1E5FAA54C();
    swift_allocError();
    *v11 = 3;
    swift_willThrow();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1E5FA0564()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_1E5FA09BC;
  }

  else
  {
    v5 = sub_1E5FA06A0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E5FA06A0()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);

  (*(v2 + 56))(v3, 0, 1, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 136);
    v5 = *(v0 + 144);
    v6 = *(v0 + 128);
    sub_1E5E24688(*(v0 + 160), *(v0 + 152), type metadata accessor for RouteDestination);
    if ((*(v5 + 48))(v6, 1, v4) != 1)
    {
      sub_1E5DFE50C(*(v0 + 128), &unk_1ED072040, &qword_1E65F0860);
    }
  }

  else
  {
    sub_1E5E247DC(*(v0 + 128), *(v0 + 152), type metadata accessor for RouteDestination);
  }

  v7 = *(v0 + 192);
  if (v7 == 1)
  {
    v8 = [**(v0 + 120) topViewController];
    v7 = *(v0 + 192);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v0 + 152);
  v30 = v8;
  v31 = v9;
  v32 = *(v0 + 160);
  v11 = *(v0 + 104);
  v10 = *(v0 + 112);
  v12 = *(v0 + 96);
  v13 = v7 - 1;
  v14 = v10[3];
  v15 = v10[4];
  v16 = __swift_project_boxed_opaque_existential_1(v10, v14);
  v29 = sub_1E625E57C(v11, v8, v16, v9, v14, v15);
  sub_1E5FA0A68(v13, v12);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = swift_task_alloc();
  *(v23 + 16) = v11;
  *(v23 + 24) = v10;

  v24 = sub_1E5FAAAF4(sub_1E5FAAA88, v23, v18, v20, v22);
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA660;
  *(inited + 32) = v29;
  v33 = v24;
  v26 = v29;
  sub_1E5FAA134(inited, sub_1E5FAA640);

  sub_1E5E262E0(v31, type metadata accessor for RouteDestination);
  sub_1E5E262E0(v32, type metadata accessor for RouteDestination);

  v27 = *(v0 + 8);

  return v27(v33);
}

uint64_t sub_1E5FA09BC()
{
  v1 = v0[20];

  sub_1E5E262E0(v1, type metadata accessor for RouteDestination);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E5FA0A68(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for RouteDestination(0);
    return a2;
  }

  return result;
}

uint64_t sub_1E5FA0AFC(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5FA0B34(uint64_t a1, char a2, _BYTE *a3)
{
  *(v4 + 137) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v6 = *(type metadata accessor for RouteDestination(0) - 8);
  *(v4 + 32) = v6;
  *(v4 + 40) = *(v6 + 64);
  *(v4 + 48) = swift_task_alloc();
  v7 = type metadata accessor for NavigationControllerRoutingContext(0);
  *(v4 + 56) = v7;
  v8 = *(v7 - 8);
  *(v4 + 64) = v8;
  *(v4 + 72) = *(v8 + 64);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 138) = *a3;
  sub_1E65E6058();
  *(v4 + 88) = sub_1E65E6048();
  v10 = sub_1E65E5FC8();
  *(v4 + 96) = v10;
  *(v4 + 104) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA0CA0, v10, v9);
}

uint64_t sub_1E5FA0CA0()
{
  v1 = *(v0 + 138);
  v2 = *(v0 + 80);
  v14 = *(v0 + 72);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v15 = *(v0 + 137);
  v8 = *(v0 + 16);
  v17 = *(v7 + *(*(v0 + 56) + 24) + 8);
  ObjectType = swift_getObjectType();
  *(v0 + 136) = v1;
  sub_1E5E24688(v7, v2, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5E24688(v8, v5, type metadata accessor for RouteDestination);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = (v14 + *(v6 + 80) + v9) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v0 + 112) = v11;
  sub_1E5E247DC(v2, v11 + v9, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5E247DC(v5, v11 + v10, type metadata accessor for RouteDestination);
  *(v11 + v10 + v4) = v15;
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  *v12 = v0;
  v12[1] = sub_1E5FA0E80;

  return sub_1E61261B8((v0 + 136), &unk_1E65EA8B8, v11, ObjectType, v17);
}

uint64_t sub_1E5FA0E80()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_1E5FA1030;
  }

  else
  {
    v5 = sub_1E5FA0FB8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1E5FA0FB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FA1030()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FA10A8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 192) = a3;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  *(v3 + 72) = sub_1E65E6058();
  *(v3 + 80) = sub_1E65E6048();
  v5 = sub_1E65E5FC8();
  *(v3 + 88) = v5;
  *(v3 + 96) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA1148, v5, v4);
}

uint64_t sub_1E5FA1148()
{
  v2 = v0[7];
  v1 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v3 = *(type metadata accessor for RouteDestination(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[13] = v5;
  *(v5 + 16) = xmmword_1E65EA670;
  sub_1E5E24688(v1, v5 + v4, type metadata accessor for RouteDestination);
  v6 = type metadata accessor for NavigationControllerRoutingContext(0);
  v7 = *(v6 + 20);
  v0[5] = v6;
  v0[6] = &off_1F5FA9B10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1E5E24688(v2, boxed_opaque_existential_1, type metadata accessor for NavigationControllerRoutingContext);
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_1E5FA12E0;

  return sub_1E5F9FF2C(v5, v2 + v7, (v0 + 2));
}

uint64_t sub_1E5FA12E0(uint64_t a1)
{
  v3 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
    v4 = v3[11];
    v5 = v3[12];
    v6 = sub_1E5FA1900;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 2);
    v4 = v3[11];
    v5 = v3[12];
    v6 = sub_1E5FA1424;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1E5FA1424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[15];
  if (v4 >> 62)
  {
    v5 = sub_1E65E67C8();
    if (v5)
    {
LABEL_3:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E694E2D0](0, v3[15], a3);
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x1EEE6DFA0](v5, a2, a3);
        }

        v6 = *(v3[15] + 32);
      }

      v3[17] = v6;

      v7 = qword_1EE2D7790;
      v8 = v6;
      if (v7 != -1)
      {
        swift_once();
      }

      v9 = v3[7];
      v10 = sub_1E65E3B68();
      v3[18] = __swift_project_value_buffer(v10, qword_1EE2EA2A0);
      sub_1E65E3B38();
      v3[19] = *v9;
      v3[20] = sub_1E65E6048();
      v11 = sub_1E65E5FC8();
      a3 = v12;
      v3[21] = v11;
      v3[22] = v12;
      v5 = sub_1E5FA1610;
      a2 = v11;

      return MEMORY[0x1EEE6DFA0](v5, a2, a3);
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v13 = v3[1];

  return v13();
}

uint64_t sub_1E5FA1610()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 192);
  sub_1E65E3B38();
  [v1 pushViewController:v2 animated:v3];
  v4 = swift_task_alloc();
  *(v0 + 184) = v4;
  *v4 = v0;
  v4[1] = sub_1E5FA170C;
  v5 = *(v0 + 192);

  return sub_1E6395954(v5);
}

uint64_t sub_1E5FA170C()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA182C, v3, v2);
}

uint64_t sub_1E5FA182C()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA1890, v1, v2);
}

uint64_t sub_1E5FA1890()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5FA1900()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FA196C(uint64_t a1, char a2)
{
  *(v2 + 104) = a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = sub_1E65E6058();
  *(v2 + 32) = sub_1E65E6048();
  v4 = sub_1E65E5FC8();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA1A0C, v4, v3);
}

uint64_t sub_1E5FA1A0C()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_1E65E3B68();
  v0[7] = __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v0[8] = *v1;
  v0[9] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();
  v0[10] = v4;
  v0[11] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA1B2C, v4, v3);
}

uint64_t sub_1E5FA1B2C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 104);
  sub_1E65E3B38();

  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_1E5FA1C30;
  v4 = *(v0 + 104);

  return sub_1E6395954(v4);
}

uint64_t sub_1E5FA1C30()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA1D50, v3, v2);
}

uint64_t sub_1E5FA1D50()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA1DB4, v1, v2);
}

uint64_t sub_1E5FA1DB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FA1E18(uint64_t a1, char a2, _BYTE *a3)
{
  *(v4 + 137) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v6 = type metadata accessor for NavigationControllerRoutingContext(0);
  *(v4 + 32) = v6;
  v7 = *(v6 - 8);
  *(v4 + 40) = v7;
  *(v4 + 48) = *(v7 + 64);
  *(v4 + 56) = swift_task_alloc();
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860) - 8);
  *(v4 + 64) = v8;
  *(v4 + 72) = *(v8 + 64);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 138) = *a3;
  sub_1E65E6058();
  *(v4 + 88) = sub_1E65E6048();
  v10 = sub_1E65E5FC8();
  *(v4 + 96) = v10;
  *(v4 + 104) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA1F90, v10, v9);
}

uint64_t sub_1E5FA1F90()
{
  v1 = *(v0 + 138);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 40);
  v14 = *(v0 + 48);
  v7 = *(v0 + 24);
  v15 = *(v0 + 137);
  v8 = *(v0 + 16);
  v17 = *(v7 + *(*(v0 + 32) + 24) + 8);
  ObjectType = swift_getObjectType();
  *(v0 + 136) = v1;
  sub_1E5DFD1CC(v8, v3, &unk_1ED072040, &qword_1E65F0860);
  sub_1E5E24688(v7, v4, type metadata accessor for NavigationControllerRoutingContext);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = (v2 + *(v6 + 80) + v9) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v0 + 112) = v11;
  sub_1E5FAB460(v3, v11 + v9, &unk_1ED072040, &qword_1E65F0860);
  sub_1E5E247DC(v4, v11 + v10, type metadata accessor for NavigationControllerRoutingContext);
  *(v11 + v10 + v14) = v15;
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  *v12 = v0;
  v12[1] = sub_1E5FA2168;

  return sub_1E61261B8((v0 + 136), &unk_1E65EA888, v11, ObjectType, v17);
}

uint64_t sub_1E5FA2168()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_1E5FA2318;
  }

  else
  {
    v5 = sub_1E5FA22A0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1E5FA22A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FA2318()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FA2390(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 288) = a3;
  *(v3 + 104) = a1;
  *(v3 + 112) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860);
  *(v3 + 120) = swift_task_alloc();
  v4 = type metadata accessor for RouteDestination(0);
  *(v3 + 128) = v4;
  *(v3 + 136) = *(v4 - 8);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = sub_1E65E6058();
  *(v3 + 160) = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  *(v3 + 168) = v6;
  *(v3 + 176) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA24C4, v6, v5);
}

uint64_t sub_1E5FA24C4()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = sub_1E65E3B68();
  *(v0 + 184) = __swift_project_value_buffer(v5, qword_1EE2EA2A0);
  sub_1E65E3B38();
  sub_1E5DFD1CC(v4, v3, &unk_1ED072040, &qword_1E65F0860);
  v6 = (*(v2 + 48))(v3, 1, v1);
  v7 = *(v0 + 112);
  if (v6 == 1)
  {
    v8 = *(v0 + 120);
    v9 = *(v0 + 288);

    sub_1E5DFE50C(v8, &unk_1ED072040, &qword_1E65F0860);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 136);
    v13 = *(v0 + 144);
    sub_1E5E247DC(*(v0 + 120), v13, type metadata accessor for RouteDestination);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v15 = swift_allocObject();
    *(v0 + 192) = v15;
    *(v15 + 16) = xmmword_1E65EA670;
    sub_1E5E24688(v13, v15 + v14, type metadata accessor for RouteDestination);
    v16 = type metadata accessor for NavigationControllerRoutingContext(0);
    v17 = *(v16 + 20);
    *(v0 + 88) = v16;
    *(v0 + 96) = &off_1F5FA9B10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
    sub_1E5E24688(v7, boxed_opaque_existential_1, type metadata accessor for NavigationControllerRoutingContext);
    v19 = swift_task_alloc();
    *(v0 + 200) = v19;
    *v19 = v0;
    v19[1] = sub_1E5FA27A4;

    return sub_1E5F9FF2C(v15, v7 + v17, v0 + 64);
  }
}

uint64_t sub_1E5FA27A4(uint64_t a1)
{
  v3 = *v2;
  v3[26] = a1;
  v3[27] = v1;

  if (v1)
  {
    v4 = v3[21];
    v5 = v3[22];
    v6 = sub_1E5FA2ED4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 8);
    v4 = v3[21];
    v5 = v3[22];
    v6 = sub_1E5FA28E8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1E5FA28E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 208);
  if (v4 >> 62)
  {
    v5 = sub_1E65E67C8();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_8:

    v6 = 0;
    goto LABEL_9;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1E694E2D0](0, *(v3 + 208), a3);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_30;
    }

    v6 = *(*(v3 + 208) + 32);
  }

LABEL_9:
  *(v3 + 224) = v6;
  v7 = **(v3 + 112);
  *(v3 + 232) = v7;
  v8 = [v7 viewControllers];
  *(v3 + 240) = sub_1E5DEF738(0, &qword_1EE2D4630, 0x1E69DD258);
  v9 = sub_1E65E5F18();

  if (v9 >> 62)
  {
    v5 = sub_1E65E67C8();
    if (v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_11:
      if ((v9 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E694E2D0](0, v9);
        goto LABEL_14;
      }

      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v10 = *(v9 + 32);
LABEL_14:
        v11 = v10;

        goto LABEL_17;
      }

LABEL_30:
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v5, a2, a3);
    }
  }

  v11 = 0;
LABEL_17:
  *(v3 + 48) = v11;
  *(v3 + 56) = v6;
  v12 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0];
  v13 = v6;
  v14 = 0;
LABEL_18:
  *(v3 + 248) = v12;
  while (v14 != 2)
  {
    v15 = *(v3 + 8 * v14++ + 48);
    if (v15)
    {
      v16 = v15;
      MEMORY[0x1E694D8F0]();
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E65E5F68();
      }

      sub_1E65E5FA8();
      v12 = v20;
      goto LABEL_18;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072140, &qword_1E65EA890);
  swift_arrayDestroy();
  *(v3 + 256) = sub_1E65E6048();
  v17 = sub_1E65E5FC8();
  a3 = v18;
  *(v3 + 264) = v17;
  *(v3 + 272) = v18;
  v5 = sub_1E5FA2B8C;
  a2 = v17;

  return MEMORY[0x1EEE6DFA0](v5, a2, a3);
}

uint64_t sub_1E5FA2B8C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 288);
  sub_1E65E3B38();
  v3 = sub_1E65E5EF8();

  [v1 setViewControllers:v3 animated:v2];

  v4 = swift_task_alloc();
  *(v0 + 280) = v4;
  *v4 = v0;
  v4[1] = sub_1E5FA2CB0;
  v5 = *(v0 + 288);

  return sub_1E6395954(v5);
}

uint64_t sub_1E5FA2CB0()
{
  v1 = *v0;

  v2 = *(v1 + 272);
  v3 = *(v1 + 264);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA2DD0, v3, v2);
}

uint64_t sub_1E5FA2DD0()
{

  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA2E34, v1, v2);
}

uint64_t sub_1E5FA2E34()
{
  v1 = v0[28];
  v2 = v0[18];

  sub_1E5E262E0(v2, type metadata accessor for RouteDestination);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E5FA2ED4()
{
  v1 = v0[18];

  sub_1E5E262E0(v1, type metadata accessor for RouteDestination);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E5FA2F74(uint64_t a1, char a2, _BYTE *a3)
{
  *(v4 + 113) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v6 = type metadata accessor for NavigationControllerRoutingContext(0);
  *(v4 + 32) = v6;
  v7 = *(v6 - 8);
  *(v4 + 40) = v7;
  *(v4 + 48) = *(v7 + 64);
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 114) = *a3;
  sub_1E65E6058();
  *(v4 + 64) = sub_1E65E6048();
  v9 = sub_1E65E5FC8();
  *(v4 + 72) = v9;
  *(v4 + 80) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA3080, v9, v8);
}

uint64_t sub_1E5FA3080()
{
  v1 = *(v0 + 114);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = *(v0 + 113);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  v14 = *(v6 + *(*(v0 + 32) + 24) + 8);
  ObjectType = swift_getObjectType();
  *(v0 + 112) = v1;
  sub_1E5E24688(v6, v2, type metadata accessor for NavigationControllerRoutingContext);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v0 + 88) = v9;
  sub_1E5E247DC(v2, v9 + v8, type metadata accessor for NavigationControllerRoutingContext);
  v10 = v9 + ((v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v10 = v7;
  *(v10 + 8) = v5;

  v11 = swift_task_alloc();
  *(v0 + 96) = v11;
  *v11 = v0;
  v11[1] = sub_1E5FA3210;

  return sub_1E61261B8((v0 + 112), &unk_1E65EA870, v9, ObjectType, v14);
}

uint64_t sub_1E5FA3210()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_1E5FA33B4;
  }

  else
  {
    v5 = sub_1E5FA3348;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1E5FA3348()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FA33B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FA3420(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 176) = a3;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  *(v3 + 72) = sub_1E65E6058();
  *(v3 + 80) = sub_1E65E6048();
  v5 = sub_1E65E5FC8();
  *(v3 + 88) = v5;
  *(v3 + 96) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA34C0, v5, v4);
}

uint64_t sub_1E5FA34C0()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_1E65E3B68();
  v0[13] = __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v3 = type metadata accessor for NavigationControllerRoutingContext(0);
  v4 = *(v3 + 20);
  v0[5] = v3;
  v0[6] = &off_1F5FA9B10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1E5E24688(v1, boxed_opaque_existential_1, type metadata accessor for NavigationControllerRoutingContext);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1E5FA362C;
  v7 = v0[8];

  return sub_1E5F9FF2C(v7, v1 + v4, (v0 + 2));
}

uint64_t sub_1E5FA362C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = v4[11];
    v6 = v4[12];
    v7 = sub_1E5FA3B08;
  }

  else
  {
    v4[16] = a1;
    __swift_destroy_boxed_opaque_existential_1(v4 + 2);
    v5 = v4[11];
    v6 = v4[12];
    v7 = sub_1E5FA3758;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E5FA3758(uint64_t a1)
{
  *(v1 + 136) = **(v1 + 56);
  *(v1 + 144) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();
  *(v1 + 152) = v3;
  *(v1 + 160) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA37F0, v3, v2);
}

uint64_t sub_1E5FA37F0()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 176);
  sub_1E65E3B38();
  sub_1E5DEF738(0, &qword_1EE2D4630, 0x1E69DD258);
  v3 = sub_1E65E5EF8();

  [v1 setViewControllers:v3 animated:v2];

  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  *v4 = v0;
  v4[1] = sub_1E5FA3920;
  v5 = *(v0 + 176);

  return sub_1E6395954(v5);
}

uint64_t sub_1E5FA3920()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA3A40, v3, v2);
}

uint64_t sub_1E5FA3A40()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA3AA4, v1, v2);
}

uint64_t sub_1E5FA3AA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FA3B08()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FA3B74(uint64_t a1, char a2)
{
  *(v2 + 112) = a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = sub_1E65E6058();
  *(v2 + 32) = sub_1E65E6048();
  v4 = sub_1E65E5FC8();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA3C14, v4, v3);
}

uint64_t sub_1E5FA3C14()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v0[7] = *v1;
  v0[8] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();
  v0[9] = v4;
  v0[10] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA3D30, v4, v3);
}

uint64_t sub_1E5FA3D30(uint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 112);
  *(v1 + 88) = sub_1E65E6048();
  v4 = swift_task_alloc();
  *(v1 + 96) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  *(v1 + 104) = v5;
  *v5 = v1;
  v5[1] = sub_1E5FA3E48;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E5FA3E48()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA3FA8, v3, v2);
}

uint64_t sub_1E5FA3FA8()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1E5FAC604, v1, v2);
}

uint64_t sub_1E5FA400C(uint64_t a1, uint64_t *a2, char a3, _BYTE *a4)
{
  *(v5 + 145) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  v8 = *(type metadata accessor for RouteDestination(0) - 8);
  *(v5 + 32) = v8;
  *(v5 + 40) = *(v8 + 64);
  *(v5 + 48) = swift_task_alloc();
  v9 = type metadata accessor for NavigationControllerRoutingContext(0);
  *(v5 + 56) = v9;
  v10 = *(v9 - 8);
  *(v5 + 64) = v10;
  *(v5 + 72) = *(v10 + 64);
  v11 = swift_task_alloc();
  v12 = *a2;
  *(v5 + 80) = v11;
  *(v5 + 88) = v12;
  *(v5 + 146) = *(a2 + 8);
  *(v5 + 147) = *a4;
  sub_1E65E6058();
  *(v5 + 96) = sub_1E65E6048();
  v14 = sub_1E65E5FC8();
  *(v5 + 104) = v14;
  *(v5 + 112) = v13;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA4190, v14, v13);
}

uint64_t sub_1E5FA4190()
{
  v1 = *(v0 + 147);
  v2 = *(v0 + 80);
  v18 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  v15 = *(v0 + 40);
  v16 = *(v0 + 72);
  v17 = *(v0 + 145);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v20 = *(v7 + *(*(v0 + 56) + 24) + 8);
  v8 = *(v0 + 146);
  ObjectType = swift_getObjectType();
  *(v0 + 144) = v1;
  sub_1E5E24688(v7, v2, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5E24688(v6, v4, type metadata accessor for RouteDestination);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = (v16 + *(v5 + 80) + v9) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v0 + 120) = v11;
  sub_1E5E247DC(v2, v11 + v9, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5E247DC(v4, v11 + v10, type metadata accessor for RouteDestination);
  *(v11 + v10 + v15) = v17;
  v12 = v11 + ((v10 + v15) & 0xFFFFFFFFFFFFFFF8);
  *(v12 + 8) = v18;
  *(v12 + 16) = v8;
  sub_1E5FA9D20(v18, v8);
  v13 = swift_task_alloc();
  *(v0 + 128) = v13;
  *v13 = v0;
  v13[1] = sub_1E5FA4398;

  return sub_1E61261B8((v0 + 144), &unk_1E65EA820, v11, ObjectType, v20);
}

uint64_t sub_1E5FA4398()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_1E5FA454C;
  }

  else
  {
    v5 = sub_1E5FA44D0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1E5FA44D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FA454C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FA45C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v5 + 333) = a5;
  *(v5 + 144) = a2;
  *(v5 + 152) = a4;
  *(v5 + 332) = a3;
  *(v5 + 136) = a1;
  v6 = *(type metadata accessor for RouteDestination(0) - 8);
  *(v5 + 160) = v6;
  *(v5 + 168) = *(v6 + 64);
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = type metadata accessor for UIViewControllerRoutingContext(0);
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = type metadata accessor for AppComposer(0);
  *(v5 + 216) = swift_task_alloc();
  sub_1E65E6058();
  *(v5 + 224) = sub_1E65E6048();
  v8 = sub_1E65E5FC8();
  *(v5 + 232) = v8;
  *(v5 + 240) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA4738, v8, v7);
}

uint64_t sub_1E5FA4738()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 136);
  v3 = type metadata accessor for NavigationControllerRoutingContext(0);
  v4 = (v2 + *(v3 + 20));
  v33 = v1;
  sub_1E5DFD1CC(v4 + *(v1 + 40), v0 + 56, &unk_1ED074320, &unk_1E65EA730);
  v31 = v3;
  if (*(v0 + 80))
  {
    sub_1E5DF599C((v0 + 56), v0 + 16);
  }

  else
  {
    v5 = *(v0 + 136);
    *(v0 + 40) = v3;
    *(v0 + 48) = &off_1F5FA9B10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    sub_1E5E24688(v5, boxed_opaque_existential_1, type metadata accessor for NavigationControllerRoutingContext);
    if (*(v0 + 80))
    {
      sub_1E5DFE50C(v0 + 56, &unk_1ED074320, &unk_1E65EA730);
    }
  }

  v7 = *(v0 + 208);
  v8 = *(v0 + 216);
  v9 = *(v0 + 200);
  v28 = *(v0 + 192);
  v29 = *(v0 + 160);
  v10 = *(v0 + 136);
  v30 = *(v0 + 144);
  v11 = *v4;
  sub_1E5E24688(v4 + v7[5], v8 + v7[5], type metadata accessor for AppEnvironment);
  v12 = *(v4 + v7[6]);
  sub_1E5E24688(v4 + v7[7], v8 + v7[7], type metadata accessor for AppDataItemResolver);
  v13 = (v4 + v7[9]);
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v33 + 40);
  v34 = *(v4 + v7[8]);
  sub_1E5DF650C(v0 + 16, v8 + v16);
  *v8 = v11;
  *(v8 + v7[6]) = v12;
  *(v8 + v7[8]) = v34;
  v17 = (v8 + v7[9]);
  *v17 = v14;
  v17[1] = v15;
  v18 = *v10;
  *(v0 + 248) = *v10;
  sub_1E5E24688(v8, v9 + v28[5], type metadata accessor for AppComposer);
  v32 = *(v10 + v31[6]);
  sub_1E5DFD1CC(v10 + v31[7], v9 + v28[7], &unk_1ED072050, &unk_1E65EEAB0);
  v19 = *(v10 + v31[8]);
  *(v0 + 256) = v19;
  *v9 = v18;
  *(v9 + v28[6]) = v32;
  *(v9 + v28[8]) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v20 = *(v29 + 80);
  *(v0 + 328) = v20;
  v21 = (v20 + 32) & ~v20;
  v22 = swift_allocObject();
  *(v0 + 264) = v22;
  *(v22 + 16) = xmmword_1E65EA670;
  sub_1E5E24688(v30, v22 + v21, type metadata accessor for RouteDestination);
  *(v0 + 120) = v28;
  *(v0 + 128) = &off_1F5FAE3A0;
  v23 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  sub_1E5E24688(v9, v23, type metadata accessor for UIViewControllerRoutingContext);

  swift_unknownObjectRetain();
  sub_1E5FA9D34(v14, v15);
  v24 = v18;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v25 = swift_task_alloc();
  *(v0 + 272) = v25;
  *v25 = v0;
  v25[1] = sub_1E5FA4AD4;
  v26 = *(v0 + 216);

  return sub_1E5F9FF2C(v22, v26, v0 + 96);
}

uint64_t sub_1E5FA4AD4(uint64_t a1)
{
  v3 = *v2;
  v3[35] = a1;
  v3[36] = v1;

  if (v1)
  {
    v4 = v3[29];
    v5 = v3[30];
    v6 = sub_1E5FA53C0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 12);
    v4 = v3[29];
    v5 = v3[30];
    v6 = sub_1E5FA4C00;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

id sub_1E5FA4C00()
{
  v1 = *(v0 + 280);
  if (v1 >> 62)
  {
    result = sub_1E65E67C8();
    if (result)
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x1E694E2D0](0, *(v0 + 280));
      }

      else
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_23;
        }

        v3 = *(*(v0 + 280) + 32);
      }

      *(v0 + 296) = v3;

      v4 = [v3 presentationController];
      if (v4)
      {
        v5 = v4;
        [v4 setDelegate_];
      }

      v6 = *(v0 + 328);
      v31 = *(v0 + 248);
      v7 = *(v0 + 176);
      v8 = *(v0 + 184);
      v9 = *(v0 + 168);
      v30 = *(v0 + 332);
      v10 = *(v0 + 152);
      v11 = *(v0 + 333);
      sub_1E5E24688(*(v0 + 144), v8, type metadata accessor for RouteDestination);
      sub_1E5E24688(v8, v7, type metadata accessor for RouteDestination);
      v12 = (v6 + 16) & ~v6;
      v13 = swift_allocObject();
      *(v0 + 304) = v13;
      sub_1E5E247DC(v8, v13 + v12, type metadata accessor for RouteDestination);
      v14 = v13 + ((v12 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v14 = v3;
      *(v14 + 8) = v30;
      v15 = v13 + ((v12 + v9 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v15 = v10;
      *(v15 + 8) = v11;
      v16 = v3;
      sub_1E5FA9D20(v10, v11);
      if (![v31 isViewLoaded])
      {
LABEL_14:
        sub_1E5E262E0(*(v0 + 176), type metadata accessor for RouteDestination);
        v25 = swift_task_alloc();
        *(v0 + 320) = v25;
        *v25 = v0;
        v25[1] = sub_1E5FA52A0;

        return sub_1E64C0AFC(&unk_1E65EA838, v13);
      }

      result = [*(v0 + 248) view];
      if (result)
      {
        v17 = result;
        v18 = [result window];

        if (v18)
        {
          v19 = *(v0 + 248);

          v20 = swift_task_alloc();
          *(v0 + 312) = v20;
          *v20 = v0;
          v20[1] = sub_1E5FA504C;
          v21 = *(v0 + 176);
          v22 = *(v0 + 152);
          v23 = *(v0 + 332);
          v24 = *(v0 + 333);

          return sub_1E5FA54A0(v19, v21, v16, v23, v22, v24);
        }

        goto LABEL_14;
      }

LABEL_23:
      __break(1u);
      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }
  }

  v26 = *(v0 + 216);
  v27 = *(v0 + 200);

  sub_1E5FAA54C();
  swift_allocError();
  *v28 = 3;
  swift_willThrow();
  sub_1E5E262E0(v27, type metadata accessor for UIViewControllerRoutingContext);
  sub_1E5E262E0(v26, type metadata accessor for AppComposer);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1E5FA504C()
{
  v1 = *v0;
  v2 = *(*v0 + 176);

  sub_1E5E262E0(v2, type metadata accessor for RouteDestination);
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA51A4, v4, v3);
}

uint64_t sub_1E5FA51A4()
{
  v1 = v0[37];
  v2 = v0[27];
  v3 = v0[25];

  sub_1E5E262E0(v3, type metadata accessor for UIViewControllerRoutingContext);
  sub_1E5E262E0(v2, type metadata accessor for AppComposer);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5FA52A0()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1E5FAC600, v3, v2);
}

uint64_t sub_1E5FA53C0()
{
  v1 = v0[27];
  v2 = v0[25];

  sub_1E5E262E0(v2, type metadata accessor for UIViewControllerRoutingContext);
  sub_1E5E262E0(v1, type metadata accessor for AppComposer);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E5FA54A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v6 + 289) = a6;
  *(v6 + 288) = a4;
  *(v6 + 32) = a3;
  *(v6 + 40) = a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 48) = type metadata accessor for RouteDestination(0);
  *(v6 + 56) = swift_task_alloc();
  *(v6 + 64) = swift_task_alloc();
  *(v6 + 72) = sub_1E65E6058();
  *(v6 + 80) = sub_1E65E6048();
  v8 = sub_1E65E5FC8();
  *(v6 + 88) = v8;
  *(v6 + 96) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA5584, v8, v7);
}

uint64_t sub_1E5FA5584()
{
  v49 = v0;
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = qword_1EE2D7790;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 32);
    v5 = sub_1E65E3B68();
    __swift_project_value_buffer(v5, qword_1EE2EA2A0);
    sub_1E65E3B38();
    swift_getObjectType();
    v6 = swift_conformsToProtocol2();
    *(v0 + 104) = v6;
    if (v6 && v4)
    {
      v7 = *(v0 + 32);
      v8 = &v3[OBJC_IVAR____TtC10Blackbeard20NavigationController_pictureInPictureSurrogate];
      Strong = swift_unknownObjectWeakLoadStrong();
      *(v0 + 184) = Strong;
      *(v0 + 192) = *(v8 + 1);
      v10 = v3;
      v11 = v7;
      v12 = sub_1E65E3B48();
      if (Strong)
      {
        v13 = sub_1E65E6338();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = *(v0 + 32);
          v15 = *(v0 + 16);
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          *v16 = 138412546;
          *(v16 + 4) = v14;
          *(v16 + 12) = 2112;
          *(v16 + 14) = v10;
          *v17 = v14;
          v17[1] = v15;
          v18 = v10;
          v19 = v14;
          _os_log_impl(&dword_1E5DE9000, v12, v13, "Presenting session %@ on %@", v16, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072130, &qword_1E65EA840);
          swift_arrayDestroy();
          MEMORY[0x1E694F1C0](v17, -1, -1);
          MEMORY[0x1E694F1C0](v16, -1, -1);
        }

        v20 = swift_task_alloc();
        *(v0 + 200) = v20;
        *v20 = v0;
        v21 = sub_1E5FA6228;
      }

      else
      {
        v38 = sub_1E65E6328();

        if (os_log_type_enabled(v12, v38))
        {
          v39 = *(v0 + 32);
          v40 = *(v0 + 16);
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *v41 = 138412546;
          *(v41 + 4) = v10;
          *(v41 + 12) = 2112;
          *(v41 + 14) = v39;
          *v42 = v40;
          v42[1] = v39;
          v43 = v10;
          v44 = v39;
          _os_log_impl(&dword_1E5DE9000, v12, v38, "%@ did not provide a PiP Surrogate, presenting %@ normally", v41, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072130, &qword_1E65EA840);
          swift_arrayDestroy();
          MEMORY[0x1E694F1C0](v42, -1, -1);
          MEMORY[0x1E694F1C0](v41, -1, -1);
        }

        v45 = *(v0 + 32);

        v46 = v45;
        *(v0 + 232) = sub_1E65E6048();
        v20 = swift_task_alloc();
        *(v0 + 240) = v20;
        *v20 = v0;
        v21 = sub_1E5FA666C;
      }
    }

    else
    {
      v20 = swift_task_alloc();
      *(v0 + 112) = v20;
      *v20 = v0;
      v21 = sub_1E5FA5B94;
    }

    v20[1] = v21;
    v47 = *(v0 + 288);

    return sub_1E6394EA4(v47);
  }

  else
  {

    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 64);
    v23 = *(v0 + 24);
    v24 = sub_1E65E3B68();
    __swift_project_value_buffer(v24, qword_1EE2EA2A0);
    sub_1E5E24688(v23, v22, type metadata accessor for RouteDestination);
    v25 = sub_1E65E3B48();
    v26 = sub_1E65E6328();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 64);
    if (v27)
    {
      v29 = *(v0 + 56);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v48 = v31;
      *v30 = 141558274;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2080;
      sub_1E5E24688(v28, v29, type metadata accessor for RouteDestination);
      v32 = sub_1E65E5CE8();
      v34 = v33;
      sub_1E5E262E0(v28, type metadata accessor for RouteDestination);
      v35 = sub_1E5DFD4B0(v32, v34, &v48);

      *(v30 + 14) = v35;
      _os_log_impl(&dword_1E5DE9000, v25, v26, "No presentation context for %{mask.hash}s", v30, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1E694F1C0](v31, -1, -1);
      MEMORY[0x1E694F1C0](v30, -1, -1);
    }

    else
    {

      sub_1E5E262E0(v28, type metadata accessor for RouteDestination);
    }

    v36 = *(v0 + 8);

    return v36();
  }
}

uint64_t sub_1E5FA5B94()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA5CB4, v3, v2);
}

uint64_t sub_1E5FA5CB4()
{
  *(v0 + 120) = sub_1E61AAA48(*(v0 + 32));
  *(v0 + 128) = sub_1E65E6048();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FA5D84;
  v2 = *(v0 + 288);

  return sub_1E6394EA4(v2);
}

uint64_t sub_1E5FA5D84()
{
  v1 = *v0;

  v3 = sub_1E65E5FC8();
  *(v1 + 144) = v3;
  *(v1 + 152) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA5EC8, v3, v2);
}

uint64_t sub_1E5FA5EC8(uint64_t a1)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 288);
  v4 = *(v1 + 16);
  *(v1 + 160) = sub_1E65E6048();
  v5 = swift_task_alloc();
  *(v1 + 168) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  *(v5 + 32) = v3;
  v6 = swift_task_alloc();
  *(v1 + 176) = v6;
  *v6 = v1;
  v6[1] = sub_1E5FA5FE4;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E5FA5FE4()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA6144, v3, v2);
}

uint64_t sub_1E5FA6144()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA61B0, v1, v2);
}

uint64_t sub_1E5FA61B0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5FA6228()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA6348, v3, v2);
}

uint64_t sub_1E5FA6348(uint64_t a1)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 288);
  v4 = *(v1 + 32);
  v8 = *(v1 + 184);
  *(v1 + 208) = sub_1E65E6048();
  v5 = swift_task_alloc();
  *(v1 + 216) = v5;
  *(v5 + 16) = v8;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2;
  *(v5 + 48) = v3;
  v6 = swift_task_alloc();
  *(v1 + 224) = v6;
  *v6 = v1;
  v6[1] = sub_1E5FA6474;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E5FA6474()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA65D4, v3, v2);
}

uint64_t sub_1E5FA65D4()
{
  v1 = *(v0 + 16);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5FA666C()
{
  v1 = *v0;

  v3 = sub_1E65E5FC8();
  *(v1 + 248) = v3;
  *(v1 + 256) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA67B0, v3, v2);
}

uint64_t sub_1E5FA67B0(uint64_t a1)
{
  v2 = *(v1 + 288);
  v3 = *(v1 + 32);
  v4 = *(v1 + 16);
  *(v1 + 264) = sub_1E65E6048();
  v5 = swift_task_alloc();
  *(v1 + 272) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v2;
  v6 = swift_task_alloc();
  *(v1 + 280) = v6;
  *v6 = v1;
  v6[1] = sub_1E5FA68CC;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E5FA68CC()
{
  v1 = *v0;

  v2 = *(v1 + 256);
  v3 = *(v1 + 248);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA6A2C, v3, v2);
}

uint64_t sub_1E5FA6A2C()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA6A9C, v1, v2);
}

uint64_t sub_1E5FA6A9C()
{
  v1 = v0[4];
  v2 = v0[2];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E5FA6B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v14[1] = a6;
  v15 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - v9;
  swift_getObjectType();
  (*(v8 + 16))(v10, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  sub_1E65E5198();
}

uint64_t sub_1E5FA6CA4(uint64_t a1, uint64_t *a2, char a3, _BYTE *a4)
{
  *(v5 + 121) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  v8 = type metadata accessor for NavigationControllerRoutingContext(0);
  *(v5 + 32) = v8;
  v9 = *(v8 - 8);
  *(v5 + 40) = v9;
  *(v5 + 48) = *(v9 + 64);
  v10 = swift_task_alloc();
  v11 = *a2;
  *(v5 + 56) = v10;
  *(v5 + 64) = v11;
  *(v5 + 122) = *(a2 + 8);
  *(v5 + 123) = *a4;
  sub_1E65E6058();
  *(v5 + 72) = sub_1E65E6048();
  v13 = sub_1E65E5FC8();
  *(v5 + 80) = v13;
  *(v5 + 88) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA6DC8, v13, v12);
}

uint64_t sub_1E5FA6DC8()
{
  v1 = *(v0 + 123);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  v14 = *(v0 + 121);
  v7 = *(v0 + 16);
  v16 = *(v6 + *(*(v0 + 32) + 24) + 8);
  v8 = *(v0 + 122);
  ObjectType = swift_getObjectType();
  *(v0 + 120) = v1;
  sub_1E5E24688(v6, v3, type metadata accessor for NavigationControllerRoutingContext);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v0 + 96) = v10;
  *(v10 + 16) = v7;
  sub_1E5E247DC(v3, v10 + v9, type metadata accessor for NavigationControllerRoutingContext);
  *(v10 + v9 + v5) = v14;
  v11 = v10 + ((v9 + v5) & 0xFFFFFFFFFFFFFFF8);
  *(v11 + 8) = v2;
  *(v11 + 16) = v8;

  sub_1E5FA9D20(v2, v8);
  v12 = swift_task_alloc();
  *(v0 + 104) = v12;
  *v12 = v0;
  v12[1] = sub_1E5FA6F74;

  return sub_1E61261B8((v0 + 120), &unk_1E65EA720, v10, ObjectType, v16);
}

uint64_t sub_1E5FA6F74()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_1E5FA711C;
  }

  else
  {
    v5 = sub_1E5FA70AC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1E5FA70AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FA711C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FA718C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v5 + 393) = a5;
  *(v5 + 144) = a2;
  *(v5 + 152) = a4;
  *(v5 + 392) = a3;
  *(v5 + 136) = a1;
  *(v5 + 160) = type metadata accessor for NavigationControllerRoutingContext(0);
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = type metadata accessor for AppComposer(0);
  *(v5 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860);
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = sub_1E65E6058();
  *(v5 + 208) = sub_1E65E6048();
  v7 = sub_1E65E5FC8();
  *(v5 + 216) = v7;
  *(v5 + 224) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA72CC, v7, v6);
}

uint64_t sub_1E5FA72CC()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 192);
    v4 = v2 - 1;
    v5 = type metadata accessor for RouteDestination(0);
    v6 = *(v5 - 8);
    sub_1E5E24688(v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4, v3, type metadata accessor for RouteDestination);
    (*(v6 + 56))(v3, 0, 1, v5);
    sub_1E5DFE50C(v3, &unk_1ED072040, &qword_1E65F0860);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 176);
    v8 = *(v0 + 160);
    v9 = *(v0 + 144);
    v10 = sub_1E65E3B68();
    __swift_project_value_buffer(v10, qword_1EE2EA2A0);
    sub_1E65E3B38();
    v39 = v8;
    v40 = v7;
    v11 = (v9 + *(v8 + 20));
    sub_1E5DFD1CC(v11 + *(v7 + 40), v0 + 56, &unk_1ED074320, &unk_1E65EA730);
    if (*(v0 + 80))
    {
      sub_1E5DF599C((v0 + 56), v0 + 16);
    }

    else
    {
      v17 = *(v0 + 144);
      *(v0 + 40) = *(v0 + 160);
      *(v0 + 48) = &off_1F5FA9B10;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      sub_1E5E24688(v17, boxed_opaque_existential_1, type metadata accessor for NavigationControllerRoutingContext);
      if (*(v0 + 80))
      {
        sub_1E5DFE50C(v0 + 56, &unk_1ED074320, &unk_1E65EA730);
      }
    }

    v20 = *(v0 + 176);
    v19 = *(v0 + 184);
    v22 = *(v0 + 160);
    v21 = *(v0 + 168);
    v38 = *(v0 + 144);
    v23 = *v11;
    sub_1E5E24688(v11 + v20[5], v19 + v20[5], type metadata accessor for AppEnvironment);
    v24 = *(v11 + v20[6]);
    sub_1E5E24688(v11 + v20[7], v19 + v20[7], type metadata accessor for AppDataItemResolver);
    v25 = (v11 + v20[9]);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(v40 + 40);
    v41 = *(v11 + v20[8]);
    sub_1E5DF650C(v0 + 16, v19 + v28);
    *v19 = v23;
    *(v19 + v20[6]) = v24;
    *(v19 + v20[8]) = v41;
    v29 = (v19 + v20[9]);
    *v29 = v26;
    v29[1] = v27;
    v30 = objc_allocWithZone(type metadata accessor for NavigationController());

    swift_unknownObjectRetain();
    sub_1E5FA9D34(v26, v27);
    v31 = [v30 init];
    *(v0 + 232) = v31;
    sub_1E5E24688(v19, v21 + *(v39 + 20), type metadata accessor for AppComposer);
    v42 = *(v38 + v22[6]);
    sub_1E5DFD1CC(v38 + v22[7], v21 + v22[7], &unk_1ED072050, &unk_1E65EEAB0);
    v32 = *(v38 + v22[8]);
    *(v0 + 240) = v32;
    *v21 = v31;
    *(v21 + v22[6]) = v42;
    *(v21 + v22[8]) = v32;
    *(v0 + 120) = v22;
    *(v0 + 128) = &off_1F5FA9B10;
    v33 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    sub_1E5E24688(v21, v33, type metadata accessor for NavigationControllerRoutingContext);
    v34 = v31;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v35 = swift_task_alloc();
    *(v0 + 248) = v35;
    *v35 = v0;
    v35[1] = sub_1E5FA783C;
    v36 = *(v0 + 184);
    v37 = *(v0 + 136);

    return sub_1E5F9FF2C(v37, v36, v0 + 96);
  }

  else
  {
    v12 = *(v0 + 192);
    v13 = type metadata accessor for RouteDestination(0);
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);

    sub_1E5DFE50C(v12, &unk_1ED072040, &qword_1E65F0860);
    sub_1E5FAA54C();
    swift_allocError();
    *v14 = 3;
    swift_willThrow();

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1E5FA783C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {

    v5 = *(v4 + 216);
    v6 = *(v4 + 224);
    v7 = sub_1E5FA8518;
  }

  else
  {
    *(v4 + 264) = a1;
    __swift_destroy_boxed_opaque_existential_1((v4 + 96));
    v5 = *(v4 + 216);
    v6 = *(v4 + 224);
    v7 = sub_1E5FA7970;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E5FA7970()
{
  v1 = *(v0 + 232);
  sub_1E5DEF738(0, &qword_1EE2D4630, 0x1E69DD258);
  v2 = sub_1E65E5EF8();

  [v1 setViewControllers:v2 animated:0];

  v3 = [v1 presentationController];
  if (v3)
  {
    v4 = v3;
    [v3 setDelegate_];
  }

  v5 = *(v0 + 232);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v8 = *(v0 + 392);
  v9 = *(v0 + 136);
  v10 = *(v0 + 393);
  v11 = swift_allocObject();
  *(v0 + 272) = v11;
  *(v11 + 16) = v9;
  *(v11 + 24) = v8;
  *(v11 + 32) = v6;
  *(v11 + 40) = v10;
  *(v11 + 48) = v5;
  v12 = *v7;
  *(v0 + 280) = *v7;
  v13 = v5;
  sub_1E5FA9D20(v6, v10);

  if ([v12 isViewLoaded])
  {
    v14 = [v12 view];
    if (!v14)
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v14, v15, v16);
    }

    v17 = v14;
    v18 = [v14 window];

    if (v18)
    {

      *(v0 + 288) = sub_1E65E6048();
      v19 = sub_1E65E5FC8();
      v16 = v20;
      *(v0 + 296) = v19;
      *(v0 + 304) = v20;
      v14 = sub_1E5FA7BF0;
      v15 = v19;

      return MEMORY[0x1EEE6DFA0](v14, v15, v16);
    }
  }

  v21 = swift_task_alloc();
  *(v0 + 384) = v21;
  *v21 = v0;
  v21[1] = sub_1E5FA83F8;

  return sub_1E64C0AFC(&unk_1E65EA750, v11);
}

uint64_t sub_1E5FA7BF0()
{
  v1 = *(v0 + 280);
  v2 = swift_task_alloc();
  *(v0 + 312) = v2;
  *v2 = v0;
  v2[1] = sub_1E5FA7C94;
  v3 = *(v0 + 392);

  return sub_1E6394EA4(v3);
}

uint64_t sub_1E5FA7C94()
{
  v1 = *v0;

  v2 = *(v1 + 304);
  v3 = *(v1 + 296);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA7DB4, v3, v2);
}

uint64_t sub_1E5FA7DB4()
{
  *(v0 + 320) = sub_1E61AAA48(*(v0 + 232));
  *(v0 + 328) = sub_1E65E6048();
  v1 = swift_task_alloc();
  *(v0 + 336) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FA7E84;
  v2 = *(v0 + 392);

  return sub_1E6394EA4(v2);
}

uint64_t sub_1E5FA7E84()
{
  v1 = *v0;

  v3 = sub_1E65E5FC8();
  *(v1 + 344) = v3;
  *(v1 + 352) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA7FC8, v3, v2);
}

uint64_t sub_1E5FA7FC8(uint64_t a1)
{
  v2 = *(v1 + 320);
  v3 = *(v1 + 280);
  v4 = *(v1 + 392);
  *(v1 + 360) = sub_1E65E6048();
  v5 = swift_task_alloc();
  *(v1 + 368) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v4;
  v6 = swift_task_alloc();
  *(v1 + 376) = v6;
  *v6 = v1;
  v6[1] = sub_1E5FA80E4;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E5FA80E4()
{
  v1 = *v0;

  v2 = *(v1 + 352);
  v3 = *(v1 + 344);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA8244, v3, v2);
}

uint64_t sub_1E5FA8244()
{

  v1 = *(v0 + 296);
  v2 = *(v0 + 304);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA82B0, v1, v2);
}

uint64_t sub_1E5FA82B0()
{
  v1 = v0[35];
  v2 = v0[29];

  v3 = v0[27];
  v4 = v0[28];

  return MEMORY[0x1EEE6DFA0](sub_1E5FA8320, v3, v4);
}

uint64_t sub_1E5FA8320()
{
  v1 = v0[23];
  v2 = v0[21];

  sub_1E5E262E0(v2, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5E262E0(v1, type metadata accessor for AppComposer);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E5FA83F8()
{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1E5FAC5F4, v3, v2);
}

uint64_t sub_1E5FA8518()
{
  v1 = v0[23];
  v2 = v0[21];

  sub_1E5E262E0(v2, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5E262E0(v1, type metadata accessor for AppComposer);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E5FA85F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 153) = a5;
  *(v6 + 32) = a4;
  *(v6 + 40) = a6;
  *(v6 + 152) = a3;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 48) = sub_1E65E6058();
  *(v6 + 56) = sub_1E65E6048();
  v8 = sub_1E65E5FC8();
  *(v6 + 64) = v8;
  *(v6 + 72) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA8698, v8, v7);
}

uint64_t sub_1E5FA8698()
{
  v17 = v0;
  v1 = *(v0 + 16);
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = sub_1E5FA88E4;
    v3 = *(v0 + 152);

    return sub_1E6394EA4(v3);
  }

  else
  {

    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v5 = sub_1E65E3B68();
    __swift_project_value_buffer(v5, qword_1EE2EA2A0);

    v6 = sub_1E65E3B48();
    v7 = sub_1E65E6328();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 24);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 141558274;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2080;
      v11 = type metadata accessor for RouteDestination(0);
      v12 = MEMORY[0x1E694D940](v8, v11);
      v14 = sub_1E5DFD4B0(v12, v13, &v16);

      *(v9 + 14) = v14;
      _os_log_impl(&dword_1E5DE9000, v6, v7, "No presentation context for %{mask.hash}s", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1E694F1C0](v10, -1, -1);
      MEMORY[0x1E694F1C0](v9, -1, -1);
    }

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1E5FA88E4()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA8A04, v3, v2);
}

uint64_t sub_1E5FA8A04()
{
  *(v0 + 88) = sub_1E61AAA48(*(v0 + 40));
  *(v0 + 96) = sub_1E65E6048();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FA8AD4;
  v2 = *(v0 + 152);

  return sub_1E6394EA4(v2);
}

uint64_t sub_1E5FA8AD4()
{
  v1 = *v0;

  v3 = sub_1E65E5FC8();
  *(v1 + 112) = v3;
  *(v1 + 120) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA8C18, v3, v2);
}

uint64_t sub_1E5FA8C18(uint64_t a1)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 152);
  v4 = *(v1 + 16);
  *(v1 + 128) = sub_1E65E6048();
  v5 = swift_task_alloc();
  *(v1 + 136) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  *(v5 + 32) = v3;
  v6 = swift_task_alloc();
  *(v1 + 144) = v6;
  *v6 = v1;
  v6[1] = sub_1E5FA8D34;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E5FA8D34()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA8E94, v3, v2);
}

uint64_t sub_1E5FA8E94()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1E5FA8F00, v1, v2);
}

uint64_t sub_1E5FA8F00()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5FA8F68()
{
  v1 = [*v0 viewControllers];
  sub_1E5DEF738(0, &qword_1EE2D4630, 0x1E69DD258);
  v2 = sub_1E65E5F18();

  if (v2 >> 62)
  {
    v3 = sub_1E65E67C8();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3;
}

uint64_t sub_1E5FA9064(uint64_t a1, char a2, _BYTE *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFA78C;

  return sub_1E5FA0B34(a1, a2, a3);
}

uint64_t sub_1E5FA9110(char a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = a2;
  *(v3 + 104) = a1;
  v4 = *(a2 - 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 + 64);
  *(v3 + 48) = swift_task_alloc();
  sub_1E65E6058();
  *(v3 + 56) = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  *(v3 + 64) = v6;
  *(v3 + 72) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA9200, v6, v5);
}

uint64_t sub_1E5FA9200()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *(v0 + 104);
  v6 = *(v4 + *(*(v0 + 24) + 24) + 8);
  ObjectType = swift_getObjectType();
  sub_1E5E24688(v4, v1, type metadata accessor for NavigationControllerRoutingContext);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v0 + 80) = v9;
  sub_1E5E247DC(v1, v9 + v8, type metadata accessor for NavigationControllerRoutingContext);
  *(v9 + v8 + v2) = v5;
  v10 = swift_task_alloc();
  *(v0 + 88) = v10;
  *v10 = v0;
  v10[1] = sub_1E5FA935C;

  return sub_1E63387E0(&unk_1E65EA8A0, v9, ObjectType, v6);
}

uint64_t sub_1E5FA935C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1E5FA9520;
  }

  else
  {
    v5 = sub_1E5FA94B4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E5FA94B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FA9520()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FA958C(uint64_t a1, char a2, _BYTE *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E5FA1E18(a1, a2, a3);
}

uint64_t sub_1E5FA9638(uint64_t a1, char a2, _BYTE *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E5FA2F74(a1, a2, a3);
}

uint64_t sub_1E5FA96E4(char a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = a2;
  *(v3 + 104) = a1;
  v4 = *(a2 - 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 + 64);
  *(v3 + 48) = swift_task_alloc();
  sub_1E65E6058();
  *(v3 + 56) = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  *(v3 + 64) = v6;
  *(v3 + 72) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E5FA97D4, v6, v5);
}

uint64_t sub_1E5FA97D4()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *(v0 + 104);
  v6 = *(v4 + *(*(v0 + 24) + 24) + 8);
  ObjectType = swift_getObjectType();
  sub_1E5E24688(v4, v1, type metadata accessor for NavigationControllerRoutingContext);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v0 + 80) = v9;
  sub_1E5E247DC(v1, v9 + v8, type metadata accessor for NavigationControllerRoutingContext);
  *(v9 + v8 + v2) = v5;
  v10 = swift_task_alloc();
  *(v0 + 88) = v10;
  *v10 = v0;
  v10[1] = sub_1E5FA9930;

  return sub_1E63387E0(&unk_1E65EA858, v9, ObjectType, v6);
}

uint64_t sub_1E5FA9930()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1E5FAC5F0;
  }

  else
  {
    v5 = sub_1E5FAC5EC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E5FA9A88(uint64_t a1, uint64_t *a2, char a3, _BYTE *a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E5FA400C(a1, a2, a3, a4);
}

uint64_t sub_1E5FA9B44(uint64_t a1, uint64_t *a2, char a3, _BYTE *a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E5FA6CA4(a1, a2, a3, a4);
}

uint64_t sub_1E5FA9C00()
{
  v2 = *(type metadata accessor for NavigationControllerRoutingContext(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(v0 + v4);
  v6 = *(v0 + 16);
  v7 = v0 + (v4 & 0xFFFFFFFFFFFFFFF8);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E5FA718C(v6, v0 + v3, v5, v8, v9);
}

id sub_1E5FA9D20(id result, char a2)
{
  if ((a2 & 0xC0) == 0x80)
  {
    return result;
  }

  return result;
}

uint64_t sub_1E5FA9D34(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xC)
  {
  }

  return result;
}

uint64_t sub_1E5FA9D48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E5FA85F0(a1, v4, v5, v6, v8, v7);
}

void *sub_1E5FA9E80(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1E64F6510(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072080, &qword_1E65EA768);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1E5FA9FE8(uint64_t result, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v8 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v8 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v9 = *(v5 + 16);
  v10 = __OFADD__(v9, v4);
  v11 = v9 + v4;
  if (!v10)
  {
    *(v5 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1E5FAA134(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1E65E67C8();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1E65E67C8();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1E5FAA5A0(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1E5FAA284(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1E5FAA3F0(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v6 = a2();
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v12 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v13 = *(v6 + 16);
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    *(v6 + 16) = v15;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_1E5FAA54C()
{
  result = qword_1ED072060;
  if (!qword_1ED072060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072060);
  }

  return result;
}

uint64_t sub_1E5FAA5A0(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1E65E67C8();
LABEL_9:
  result = sub_1E65E68D8();
  *v2 = result;
  return result;
}

uint64_t sub_1E5FAA640(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1E65E67C8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1E65E67C8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1E5FAC598(&qword_1ED072078, &qword_1ED072070, &qword_1E65EA760);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072070, &qword_1E65EA760);
            v9 = sub_1E5FAA980(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1E5DEF738(0, &qword_1EE2D4630, 0x1E69DD258);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5FAA7E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1E65E67C8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1E65E67C8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1E5FAC598(&qword_1ED072158, &qword_1ED072150, &qword_1E65EA8C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072150, &qword_1E65EA8C0);
            v9 = sub_1E5FAAA08(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1E5DEF738(0, &qword_1EE2D45D0, 0x1E696ACD8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1E5FAA980(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E694E2D0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1E5FAAA00;
  }

  __break(1u);
  return result;
}

void (*sub_1E5FAAA08(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E694E2D0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1E5FAC5F8;
  }

  __break(1u);
  return result;
}

char *sub_1E5FAAA88@<X0>(uint64_t (*a1)(void)@<X0>, char **a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = v5[3];
  v8 = v5[4];
  v9 = __swift_project_boxed_opaque_existential_1(v5, v7);
  result = sub_1E625E57C(v6, 0, v9, a1, v7, v8);
  *a2 = result;
  return result;
}

uint64_t sub_1E5FAAAF4(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v18 = a2;
  v19 = a3;
  v17 = a1;
  v9 = type metadata accessor for RouteDestination(0);
  v16 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a4;
  v12 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = MEMORY[0x1E69E7CC0];
  if (!v12)
  {
    return result;
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_1E65E6958();
  if ((v12 & 0x8000000000000000) == 0)
  {
    for (i = 0; ; ++i)
    {
      v15 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((v20 + i) >= (a5 >> 1) || i >= v12)
      {
        goto LABEL_13;
      }

      sub_1E5E24688(v19 + *(v16 + 72) * (v20 + i), v11, type metadata accessor for RouteDestination);
      v17(&v21, v11);
      if (v6)
      {
        goto LABEL_16;
      }

      v6 = 0;
      sub_1E5E262E0(v11, type metadata accessor for RouteDestination);
      sub_1E65E6928();
      sub_1E65E6968();
      sub_1E65E6978();
      sub_1E65E6938();
      if (v15 == v12)
      {
        return v22;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  sub_1E5E262E0(v11, type metadata accessor for RouteDestination);

  __break(1u);
  return result;
}

uint64_t sub_1E5FAACF0(void (*a1)(void *), uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v25 = a1;
  v26 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072090, &qword_1E65EA778);
  v24 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - v10;
  v27 = a5 >> 1;
  v28 = a4;
  v12 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = MEMORY[0x1E69E7CC0];
  if (!v12)
  {
    return v13;
  }

  v31 = MEMORY[0x1E69E7CC0];
  sub_1E601CB98(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v29 = v5;
    v14 = 0;
    v13 = v31;
    for (i = (a3 + 16 * v28 + 8); ; i += 2)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if ((v28 + v14) >= v27 || v14 >= v12)
      {
        goto LABEL_14;
      }

      v17 = *i;
      v30[0] = *(i - 1);
      v30[1] = v17;

      v18 = v11;
      v19 = v29;
      v25(v30);
      v29 = v19;
      if (v19)
      {
        goto LABEL_17;
      }

      v31 = v13;
      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1E601CB98((v20 > 1), v21 + 1, 1);
        v13 = v31;
      }

      *(v13 + 16) = v21 + 1;
      v22 = v13 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21;
      v11 = v18;
      sub_1E5FAB460(v18, v22, &qword_1ED072090, &qword_1E65EA778);
      ++v14;
      if (v16 == v12)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
LABEL_17:

  __break(1u);
  return result;
}

uint64_t sub_1E5FAAF20()
{
  v2 = *(type metadata accessor for NavigationControllerRoutingContext(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for RouteDestination(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v0 + v7);
  v9 = v0 + (v7 & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E5FA45C8(v0 + v3, v0 + v6, v8, v10, v11);
}

uint64_t sub_1E5FAB098(uint64_t a1)
{
  v4 = *(type metadata accessor for RouteDestination(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = v1 + ((v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1E5DFA78C;

  return sub_1E5FA54A0(a1, v1 + v5, v8, v9, v11, v12);
}

uint64_t sub_1E5FAB254()
{
  v2 = *(type metadata accessor for NavigationControllerRoutingContext(0) - 8);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = *(v3 + *(v2 + 64));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E5FA3B74(v3, v4);
}

uint64_t sub_1E5FAB350()
{
  v2 = *(type metadata accessor for NavigationControllerRoutingContext(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E5FA3420(v0 + v3, v5, v6);
}

uint64_t sub_1E5FAB460(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E5FAB4C8()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for NavigationControllerRoutingContext(0) - 8);
  v6 = v0 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E5FA2390(v0 + v3, v6, v7);
}

uint64_t objectdestroy_52Tm()
{
  v1 = type metadata accessor for NavigationControllerRoutingContext(0);
  v96 = *(*(v1 - 8) + 80);
  v2 = (v0 + ((v96 + 16) & ~v96));

  v97 = v1;
  v95 = v2;
  v92 = v2 + *(v1 + 20);

  v98 = type metadata accessor for AppComposer(0);
  v3 = &v92[v98[5]];
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment(0);
  v5 = v4[6];
  v94 = type metadata accessor for AccountService();
  v93 = *(v94[-1].Description + 1);
  v93(&v3[v5], v94);
  v6 = v4[7];
  v91 = type metadata accessor for AppStateService();
  v90 = *(v91[-1].Description + 1);
  v90(&v3[v6], v91);
  v7 = v4[8];
  v89 = type metadata accessor for ArchivedSessionService();
  v88 = *(v89[-1].Description + 1);
  v88(&v3[v7], v89);
  v8 = v4[9];
  v87 = type metadata accessor for AssetService();
  v86 = *(v87[-1].Description + 1);
  v86(&v3[v8], v87);
  v9 = v4[10];
  v85 = type metadata accessor for AwardsService();
  v84 = *(v85[-1].Description + 1);
  v84(&v3[v9], v85);
  v10 = v4[11];
  v83 = type metadata accessor for BookmarkService();
  v82 = *(v83[-1].Description + 1);
  v82(&v3[v10], v83);
  v11 = v4[12];
  v81 = type metadata accessor for CatalogService();
  v80 = *(v81[-1].Description + 1);
  v80(&v3[v11], v81);
  v12 = v4[13];
  v79 = type metadata accessor for ConfigurationService();
  v78 = *(v79[-1].Description + 1);
  v78(&v3[v12], v79);
  v13 = v4[14];
  v77 = type metadata accessor for ContentAvailabilityService();
  v76 = *(v77[-1].Description + 1);
  v76(&v3[v13], v77);
  v14 = v4[15];
  v75 = type metadata accessor for EngagementService();
  v74 = *(v75[-1].Description + 1);
  v74(&v3[v14], v75);
  v15 = v4[16];
  v73 = type metadata accessor for HealthDataService();
  v72 = *(v73[-1].Description + 1);
  v72(&v3[v15], v73);
  v16 = v4[17];
  v71 = type metadata accessor for InteropService();
  v70 = *(v71[-1].Description + 1);
  v70(&v3[v16], v71);
  v17 = v4[18];
  v69 = type metadata accessor for LocalizationService();
  v68 = *(v69[-1].Description + 1);
  v68(&v3[v17], v69);
  v18 = v4[19];
  v67 = type metadata accessor for MarketingService();
  v66 = *(v67[-1].Description + 1);
  v66(&v3[v18], v67);
  v19 = v4[20];
  v65 = type metadata accessor for MetricService();
  v64 = *(v65[-1].Description + 1);
  v64(&v3[v19], v65);
  v20 = v4[21];
  v63 = type metadata accessor for PersonalizationService();
  v62 = *(v63[-1].Description + 1);
  v62(&v3[v20], v63);
  v21 = v4[22];
  v61 = type metadata accessor for PlayerService();
  v60 = *(v61[-1].Description + 1);
  v60(&v3[v21], v61);
  v22 = v4[23];
  v59 = type metadata accessor for PrivacyPreferenceService();
  v58 = *(v59[-1].Description + 1);
  v58(&v3[v22], v59);
  v23 = v4[24];
  v57 = type metadata accessor for RecommendationService();
  v56 = *(v57[-1].Description + 1);
  v56(&v3[v23], v57);
  v24 = v4[25];
  v55 = type metadata accessor for RemoteBrowsingService();
  v54 = *(v55[-1].Description + 1);
  v54(&v3[v24], v55);
  v25 = v4[26];
  v53 = type metadata accessor for SearchService();
  v52 = *(v53[-1].Description + 1);
  v52(&v3[v25], v53);
  v26 = v4[27];
  v46 = type metadata accessor for ServiceSubscriptionService();
  v51 = *(v46[-1].Description + 1);
  v51(&v3[v26], v46);
  v27 = v4[28];
  v44 = type metadata accessor for SessionService();
  v50 = *(v44[-1].Description + 1);
  v50(&v3[v27], v44);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v49 = *(v29[-1].Description + 1);
  v49(&v3[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v48 = *(v31[-1].Description + 1);
  v48(&v3[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v47 = *(v33[-1].Description + 1);
  v47(&v3[v32], v33);

  v34 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v45 = *(QueueService[-1].Description + 1);
  v45(&v3[v34], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v3[v4[34]]);

  v36 = v4[36];
  v37 = type metadata accessor for WorkoutPlanService();
  v38 = *(v37[-1].Description + 1);
  v38(&v3[v36], v37);

  v39 = &v92[v98[7]];

  v40 = &v39[*(type metadata accessor for AppDataItemResolver(0) + 24)];
  swift_unknownObjectRelease();
  v93(&v40[v4[6]], v94);
  v90(&v40[v4[7]], v91);
  v88(&v40[v4[8]], v89);
  v86(&v40[v4[9]], v87);
  v84(&v40[v4[10]], v85);
  v82(&v40[v4[11]], v83);
  v80(&v40[v4[12]], v81);
  v78(&v40[v4[13]], v79);
  v76(&v40[v4[14]], v77);
  v74(&v40[v4[15]], v75);
  v72(&v40[v4[16]], v73);
  v70(&v40[v4[17]], v71);
  v68(&v40[v4[18]], v69);
  v66(&v40[v4[19]], v67);
  v64(&v40[v4[20]], v65);
  v62(&v40[v4[21]], v63);
  v60(&v40[v4[22]], v61);
  v58(&v40[v4[23]], v59);
  v56(&v40[v4[24]], v57);
  v54(&v40[v4[25]], v55);
  v52(&v40[v4[26]], v53);
  v51(&v40[v4[27]], v46);
  v50(&v40[v4[28]], v44);
  v49(&v40[v4[29]], v29);
  v48(&v40[v4[30]], v31);
  v47(&v40[v4[31]], v33);

  v45(&v40[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v40[v4[34]]);

  v38(&v40[v4[36]], v37);
  swift_unknownObjectRelease();
  if (*&v92[v98[9] + 8] >= 0xCuLL)
  {
  }

  v41 = &v92[v98[10]];
  if (*(v41 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  swift_unknownObjectRelease();
  v42 = (v95 + *(v97 + 28));
  if (v42[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5FAC350()
{
  v2 = *(type metadata accessor for NavigationControllerRoutingContext(0) - 8);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = *(v3 + *(v2 + 64));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E5DFA78C;

  return sub_1E5FA196C(v3, v4);
}

uint64_t sub_1E5FAC440()
{
  v2 = *(type metadata accessor for NavigationControllerRoutingContext(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for RouteDestination(0) - 8);
  v6 = v0 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E5FA10A8(v0 + v3, v6, v7);
}

uint64_t sub_1E5FAC598(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5FAC608@<X0>(uint64_t *a1@<X8>)
{
  v83 = a1;
  v68 = type metadata accessor for RemoteBrowsingService();
  Description = v68[-1].Description;
  MEMORY[0x1EEE9AC00](v68);
  v63 = v2;
  v64 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v81 = &v58 - v4;
  v5 = type metadata accessor for SessionService();
  v6 = v5[-1].Description;
  MEMORY[0x1EEE9AC00](v5);
  v82 = v7;
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072170, &qword_1E65EA8F0);
  v86 = *(v62 - 8);
  v9 = MEMORY[0x1EEE9AC00](v62);
  v84 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v58 - v11;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v13 = sub_1E65E3B68();
  __swift_project_value_buffer(v13, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v14 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v15 = type metadata accessor for AppEnvironment(0);
  v59 = *(v15 + 100);
  v16 = *(v15 + 112);
  v79 = v16;
  swift_getKeyPath();
  v77 = v6[2];
  v78 = (v6 + 2);
  v17 = v14;
  v71 = v14;
  v77(v8, v14 + v16, v5);
  v60 = v8;
  v61 = *(v6 + 80);
  v18 = v6;
  v19 = (v61 + 16) & ~v61;
  v76 = v61 | 7;
  v20 = swift_allocObject();
  v74 = v5;
  v21 = v18[4];
  v75 = v18 + 4;
  v80 = v21;
  v21(v20 + v19, v8, v5);

  sub_1E65E4E08();
  v22 = v83;
  v23 = v62;
  v83[3] = v62;
  v22[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  v25 = v86 + 16;
  v26 = *(v86 + 16);
  v27 = v12;
  v58 = v12;
  v26(boxed_opaque_existential_1, v12, v23);
  v69 = v26;
  v70 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1E65EA8E0;
  v73 = sub_1E65E60A8();
  v28 = *(v73 - 8);
  v72 = *(v28 + 56);
  v67 = v28 + 56;
  v29 = v81;
  v72(v81, 1, 1, v73);
  v30 = Description;
  v31 = v64;
  v32 = v68;
  Description[2](v64, v17 + v59, v68);
  v26(v84, v27, v23);
  v33 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v34 = v86;
  v35 = *(v86 + 80);
  v36 = v29;
  v37 = (v63 + v35 + v33) & ~v35;
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  (v30)[4]((v38 + v33), v31, v32);
  v39 = *(v34 + 32);
  Description = (v34 + 32);
  v68 = v39;
  v40 = v84;
  v41 = v23;
  (v39)(v38 + v37, v84, v23);
  v42 = sub_1E6059EAC(0, 0, v36, &unk_1E65EA938, v38);
  v43 = v66;
  *(v66 + 32) = v42;
  v72(v36, 1, 1, v73);
  v44 = v60;
  v45 = v74;
  v77(v60, v71 + v79, v74);
  v46 = v40;
  v47 = v40;
  v48 = v58;
  v69(v46, v58, v41);
  v49 = (v61 + 32) & ~v61;
  v50 = (v49 + v82 + v35) & ~v35;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  v80(v51 + v49, v44, v45);
  (v68)(v51 + v50, v47, v41);
  v52 = v81;
  *(v43 + 40) = sub_1E6059EAC(0, 0, v81, &unk_1E65EA948, v51);
  v72(v52, 1, 1, v73);
  v53 = v74;
  v77(v44, v71 + v79, v74);
  v69(v47, v48, v41);
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  *(v54 + 24) = 0;
  v80(v54 + v49, v44, v53);
  (v68)(v54 + v50, v47, v41);
  v55 = sub_1E6059EAC(0, 0, v52, &unk_1E65EA958, v54);
  v56 = v66;
  *(v66 + 48) = v55;
  result = (*(v86 + 8))(v48, v41);
  v83[5] = v56;
  return result;
}

uint64_t sub_1E5FACE20(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FACE40, 0, 0);
}

uint64_t sub_1E5FACE40()
{
  v1 = SessionService.queryAudioLanguagePreference.getter();
  v0[4] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1E5FACF3C;
  v4 = v0[2];

  return v6(v4);
}