unint64_t FBKSEvaluation.Subject.Failure.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B014D01C();

  MEMORY[0x1B271E7F0](v1, v2);
  return 0xD00000000000001ELL;
}

unint64_t sub_1B00FB2C4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B014D01C();

  MEMORY[0x1B271E7F0](v1, v2);
  return 0xD00000000000001ELL;
}

uint64_t FBKSEvaluation.Subject.RemoteEvaluation.init(action:subject:showFeedbackForm:associateWithAppleAccount:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, _BYTE *a5@<X8>)
{
  *a5 = *a1;
  v9 = type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation(0);
  result = sub_1B00DC300(a2, &a5[v9[5]]);
  a5[v9[6]] = a3;
  a5[v9[7]] = a4;
  return result;
}

unint64_t sub_1B00FB450()
{
  v1 = 0x6E6F69746361;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0)
  {
    v1 = 0x7463656A627573;
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

uint64_t sub_1B00FB4D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B00FE0B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B00FB4F8(uint64_t a1)
{
  v2 = sub_1B00FDEFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B00FB534(uint64_t a1)
{
  v2 = sub_1B00FDEFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKSEvaluation.Subject.RemoteEvaluation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4128, &qword_1B0151310);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B00FDEFC();
  sub_1B014D35C();
  v10[15] = *v3;
  v10[14] = 0;
  sub_1B00DCAC0();
  sub_1B014D21C();
  if (!v2)
  {
    type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation(0);
    v10[13] = 1;
    type metadata accessor for FBKSEvaluation.Subject(0);
    sub_1B00FE954(&qword_1EB6C3C50, type metadata accessor for FBKSEvaluation.Subject, &protocol conformance descriptor for FBKSEvaluation.Subject);
    sub_1B014D21C();
    v10[12] = 2;
    sub_1B014D1EC();
    v10[11] = 3;
    sub_1B014D1BC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t FBKSEvaluation.Subject.RemoteEvaluation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for FBKSEvaluation.Subject(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4138, &qword_1B0151318);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1B00FDEFC();
  sub_1B014D34C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v25);
  }

  v21 = v10;
  v14 = v12;
  v15 = v23;
  v29 = 0;
  sub_1B00DCBAC();
  v16 = v24;
  sub_1B014D17C();
  *v14 = v30;
  v28 = 1;
  sub_1B00FE954(&qword_1EB6C3C70, type metadata accessor for FBKSEvaluation.Subject, &protocol conformance descriptor for FBKSEvaluation.Subject);
  sub_1B014D17C();
  v17 = v21;
  sub_1B00DC300(v6, &v14[*(v21 + 20)]);
  v27 = 2;
  v14[*(v17 + 24)] = sub_1B014D14C() & 1;
  v26 = 3;
  v19 = sub_1B014D11C();
  (*(v15 + 8))(v9, v16);
  v14[*(v17 + 28)] = v19;
  sub_1B00FDF50(v14, v22, type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation);
  __swift_destroy_boxed_opaque_existential_0(v25);
  return sub_1B00FDFB8(v14, type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation);
}

uint64_t sub_1B00FBB5C(_BYTE *a1, char a2, char a3)
{
  *(v4 + 72) = v3;
  *(v4 + 137) = a3;
  *(v4 + 136) = a2;
  *(v4 + 80) = type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation(0);
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 138) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1B00FBC04, 0, 0);
}

uint64_t sub_1B00FBC04()
{
  v32 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF6C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v31[0] = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0xD000000000000043, 0x80000001B015D080, v31);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  *(v0 + 40) = &type metadata for FeedbackFeatureFlags;
  *(v0 + 48) = sub_1B00DC988();
  *(v0 + 16) = 0;
  v6 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if ((v6 & 1) == 0)
  {
    sub_1B00DC9DC();
    swift_allocError();
    *v15 = 0;
LABEL_11:
    swift_willThrow();

    v16 = *(v0 + 8);

    return v16();
  }

  if (byte_1EB6C4120)
  {
    v7 = sub_1B014CB3C();
    v8 = sub_1B014CF6C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v31[0] = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_1B00E6C2C(0xD000000000000070, 0x80000001B015D0D0, v31);
      _os_log_impl(&dword_1B00C4000, v7, v8, "%{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1B271F750](v10, -1, -1);
      MEMORY[0x1B271F750](v9, -1, -1);
    }

    *(v0 + 56) = 0xD000000000000070;
    *(v0 + 64) = 0x80000001B015D0D0;
    v11 = sub_1B014CD9C();
    v13 = v12;
    sub_1B00FE99C();
    swift_allocError();
    *v14 = v11;
    v14[1] = v13;
    goto LABEL_11;
  }

  v18 = *(v0 + 138);
  v20 = *(v0 + 80);
  v19 = *(v0 + 88);
  v21 = *(v0 + 72);
  v22 = *(v0 + 137);
  v23 = *(v0 + 136);
  byte_1EB6C4120 = 1;
  sub_1B00FDF50(v21, &v19[v20[5]], type metadata accessor for FBKSEvaluation.Subject);
  *v19 = v18;
  v19[v20[6]] = v23;
  v19[v20[7]] = v22;
  sub_1B014C88C();
  swift_allocObject();
  sub_1B014C87C();
  sub_1B00FE954(&qword_1EB6C3E40, type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation, &protocol conformance descriptor for FBKSEvaluation.Subject.RemoteEvaluation);
  v24 = sub_1B014C86C();
  *(v0 + 96) = v24;
  *(v0 + 104) = v25;
  v26 = v24;
  v27 = v25;

  v28 = swift_task_alloc();
  *(v0 + 112) = v28;
  *(v28 + 16) = v26;
  *(v28 + 24) = v27;
  v29 = swift_task_alloc();
  *(v0 + 120) = v29;
  *v29 = v0;
  v29[1] = sub_1B00FC0E0;
  v30 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v29, 0, 0, 0xD000000000000043, 0x80000001B015D080, sub_1B00FEA58, v28, v30);
}

uint64_t sub_1B00FC0E0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1B00FC2A0;
  }

  else
  {
    v2 = sub_1B00FC214;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B00FC214()
{
  v1 = v0[11];
  sub_1B00D2024(v0[12], v0[13]);
  sub_1B00FDFB8(v1, type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1B00FC2A0()
{
  v1 = v0[11];
  sub_1B00D2024(v0[12], v0[13]);
  sub_1B00FDFB8(v1, type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation);

  v2 = v0[1];

  return v2();
}

uint64_t FBKSEvaluation.Subject.remoteEvaluate(action:showFeedbackForm:)(_BYTE *a1, uint64_t a2)
{
  v3 = a2;
  *(v2 + 32) = *a1;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B00FC3EC;

  return sub_1B00FE220((v2 + 32), v3);
}

uint64_t sub_1B00FC3EC(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 24) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B00FC528, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t FBKSEvaluation.Subject.remoteEvaluate(action:showFeedbackForm:associateWithAppleAccount:)(_BYTE *a1, uint64_t a2)
{
  v3 = a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B00DF2E8;

  return sub_1B00FE220(a1, v3);
}

uint64_t FBKSEvaluation.Subject._remoteEvaluate(action:showFeedbackForm:)(_BYTE *a1, char a2)
{
  *(v2 + 32) = *a1;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B00FC6A8;

  return sub_1B00FBB5C((v2 + 32), a2, 2);
}

uint64_t sub_1B00FC6A8()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B00FC528, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_1B00FC7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a2;
  v18 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  if (qword_1EDAE7100 != -1)
  {
    swift_once();
  }

  v16 = *(v5 + 16);
  v16(v7, a1, v4);
  v15 = a1;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  v10 = *(v5 + 32);
  v10(v9 + v8, v7, v4);
  v11 = sub_1B00FA9AC(sub_1B00FEA60, v9);

  if (v11)
  {
    v12 = sub_1B014CA7C();
    v16(v7, v15, v4);
    v13 = swift_allocObject();
    v10(v13 + v8, v7, v4);
    aBlock[4] = sub_1B00FEB68;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B0145D1C;
    aBlock[3] = &block_descriptor_36;
    v14 = _Block_copy(aBlock);

    [v11 remoteEvaluateWithRequest:v12 sceneID:0 bundleID:0 completion:v14];
    swift_unknownObjectRelease();
    _Block_release(v14);
  }
}

void sub_1B00FCA6C(uint64_t a1, unint64_t a2, void *a3)
{
  byte_1EB6C4120 = 0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v6 = sub_1B014CB5C();
  __swift_project_value_buffer(v6, qword_1EDAE7828);
  v7 = sub_1B014CB3C();
  v8 = sub_1B014CF3C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1B00C4000, v7, v8, "Returned from remote evaluation", v9, 2u);
    MEMORY[0x1B271F750](v9, -1, -1);
  }

  if (a3)
  {
    v10 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
    sub_1B014CE7C();
  }

  else if (a2 >> 60 == 15)
  {
    v11 = sub_1B014CB3C();
    v12 = sub_1B014CF6C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B00C4000, v11, v12, "Remote evaluation finished. No FBKSInteraction", v13, 2u);
      MEMORY[0x1B271F750](v13, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
    sub_1B014CE8C();
  }

  else
  {
    sub_1B014C82C();
    swift_allocObject();
    sub_1B00DE8A4(a1, a2);
    sub_1B014C81C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C20, &unk_1B014F3E0);
    sub_1B00DE8F8();
    sub_1B014C80C();

    if (v24)
    {
      v14 = v24;
      v15 = sub_1B014CB3C();
      v16 = sub_1B014CF6C();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138543362;
        *(v17 + 4) = v14;
        *v18 = v24;
        v19 = v14;
        _os_log_impl(&dword_1B00C4000, v15, v16, "Remote evaluation finished with evaluation %{public}@", v17, 0xCu);
        sub_1B00FE9F0(v18);
        MEMORY[0x1B271F750](v18, -1, -1);
        MEMORY[0x1B271F750](v17, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
      sub_1B014CE8C();
      sub_1B00DE9AC(a1, a2);
    }

    else
    {
      v20 = sub_1B014CB3C();
      v21 = sub_1B014CF4C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1B00C4000, v20, v21, "Remote evaluation finished bad JSON FBKEvaluation", v22, 2u);
        MEMORY[0x1B271F750](v22, -1, -1);
      }

      sub_1B00FE99C();
      swift_allocError();
      *v23 = 0xD000000000000020;
      v23[1] = 0x80000001B015CFB0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
      sub_1B014CE7C();
      sub_1B00DE9AC(a1, a2);
    }
  }
}

uint64_t FBKSEvaluation.Subject._remoteEvaluate(action:sceneID:bundleID:showFeedbackForm:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 80) = a5;
  *(v7 + 88) = v6;
  *(v7 + 152) = a6;
  *(v7 + 64) = a3;
  *(v7 + 72) = a4;
  *(v7 + 56) = a2;
  *(v7 + 96) = type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation(0);
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 153) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1B00FCF8C, 0, 0);
}

uint64_t sub_1B00FCF8C()
{
  v25 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF6C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v24 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0xD000000000000054, 0x80000001B015CF50, &v24);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  *(v0 + 40) = &type metadata for FeedbackFeatureFlags;
  *(v0 + 48) = sub_1B00DC988();
  *(v0 + 16) = 0;
  v6 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v6)
  {
    v7 = *(v0 + 153);
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    v10 = *(v0 + 152);
    sub_1B00FDF50(*(v0 + 88), &v8[v9[5]], type metadata accessor for FBKSEvaluation.Subject);
    *v8 = v7;
    v8[v9[6]] = v10;
    v8[v9[7]] = 2;
    sub_1B014C88C();
    swift_allocObject();
    sub_1B014C87C();
    sub_1B00FE954(&qword_1EB6C3E40, type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation, &protocol conformance descriptor for FBKSEvaluation.Subject.RemoteEvaluation);
    v11 = sub_1B014C86C();
    *(v0 + 112) = v11;
    *(v0 + 120) = v12;
    v16 = v11;
    v17 = v12;
    v19 = *(v0 + 72);
    v18 = *(v0 + 80);
    v23 = *(v0 + 56);

    v20 = swift_task_alloc();
    *(v0 + 128) = v20;
    *(v20 + 16) = v16;
    *(v20 + 24) = v17;
    *(v20 + 32) = v23;
    *(v20 + 48) = v19;
    *(v20 + 56) = v18;
    v21 = swift_task_alloc();
    *(v0 + 136) = v21;
    *v21 = v0;
    v21[1] = sub_1B00FD348;
    v22 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v21, 0, 0, 0xD000000000000054, 0x80000001B015CF50, sub_1B00FE654, v20, v22);
  }

  else
  {
    sub_1B00DC9DC();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1B00FD348()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1B00FD508;
  }

  else
  {
    v2 = sub_1B00FD47C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B00FD47C()
{
  v1 = v0[13];
  sub_1B00D2024(v0[14], v0[15]);
  sub_1B00FDFB8(v1, type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1B00FD508()
{
  v1 = v0[13];
  sub_1B00D2024(v0[14], v0[15]);
  sub_1B00FDFB8(v1, type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation);

  v2 = v0[1];

  return v2();
}

void sub_1B00FD594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a6;
  v28 = a7;
  v25 = a4;
  v26 = a5;
  v23 = a2;
  v24 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  if (qword_1EDAE7100 != -1)
  {
    swift_once();
  }

  v22 = *(v9 + 16);
  v22(v11, a1, v8);
  v21 = a1;
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  v14 = *(v9 + 32);
  v14(v13 + v12, v11, v8);
  v15 = sub_1B00FA9AC(sub_1B00FEC30, v13);

  if (v15)
  {
    v24 = sub_1B014CA7C();
    v26 = sub_1B014CC0C();
    v16 = sub_1B014CC0C();
    v22(v11, v21, v8);
    v17 = swift_allocObject();
    v14(v17 + v12, v11, v8);
    aBlock[4] = sub_1B00FE924;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B0145D1C;
    aBlock[3] = &block_descriptor_6;
    v18 = _Block_copy(aBlock);

    v19 = v24;
    v20 = v26;
    [v15 remoteEvaluateWithRequest:v24 sceneID:v26 bundleID:v16 completion:v18];
    swift_unknownObjectRelease();
    _Block_release(v18);
  }
}

uint64_t sub_1B00FD854(void *a1)
{
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v2 = sub_1B014CB5C();
  __swift_project_value_buffer(v2, qword_1EDAE7828);
  v3 = a1;
  v4 = sub_1B014CB3C();
  v5 = sub_1B014CF4C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v8 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D38, &unk_1B01515A0);
    v9 = sub_1B014CC6C();
    v11 = sub_1B00E6C2C(v9, v10, &v16);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1B00C4000, v4, v5, "Failed to connect to daemon: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B271F750](v7, -1, -1);
    MEMORY[0x1B271F750](v6, -1, -1);
  }

  if (a1)
  {
    v16 = v3;
    v12 = v3;
  }

  else
  {
    sub_1B00FE99C();
    v13 = swift_allocError();
    *v14 = 0xD000000000000044;
    v14[1] = 0x80000001B015CFE0;
    v16 = v13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
  return sub_1B014CE7C();
}

void sub_1B00FDA44(uint64_t a1, unint64_t a2, void *a3)
{
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v6 = sub_1B014CB5C();
  __swift_project_value_buffer(v6, qword_1EDAE7828);
  v7 = sub_1B014CB3C();
  v8 = sub_1B014CF3C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1B00C4000, v7, v8, "Returned from remote evaluation", v9, 2u);
    MEMORY[0x1B271F750](v9, -1, -1);
  }

  if (a3)
  {
    v10 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
    sub_1B014CE7C();
  }

  else if (a2 >> 60 == 15)
  {
    v11 = sub_1B014CB3C();
    v12 = sub_1B014CF6C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B00C4000, v11, v12, "Remote evaluation finished. No FBKSInteraction", v13, 2u);
      MEMORY[0x1B271F750](v13, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
    sub_1B014CE8C();
  }

  else
  {
    sub_1B014C82C();
    swift_allocObject();
    sub_1B00DE8A4(a1, a2);
    sub_1B014C81C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C20, &unk_1B014F3E0);
    sub_1B00DE8F8();
    sub_1B014C80C();

    if (v24)
    {
      v14 = v24;
      v15 = sub_1B014CB3C();
      v16 = sub_1B014CF6C();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138543362;
        *(v17 + 4) = v14;
        *v18 = v24;
        v19 = v14;
        _os_log_impl(&dword_1B00C4000, v15, v16, "Remote evaluation finished with evaluation %{public}@", v17, 0xCu);
        sub_1B00FE9F0(v18);
        MEMORY[0x1B271F750](v18, -1, -1);
        MEMORY[0x1B271F750](v17, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
      sub_1B014CE8C();
      sub_1B00DE9AC(a1, a2);
    }

    else
    {
      v20 = sub_1B014CB3C();
      v21 = sub_1B014CF4C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1B00C4000, v20, v21, "Remote evaluation finished bad JSON FBKEvaluation", v22, 2u);
        MEMORY[0x1B271F750](v22, -1, -1);
      }

      sub_1B00FE99C();
      swift_allocError();
      *v23 = 0xD000000000000020;
      v23[1] = 0x80000001B015CFB0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
      sub_1B014CE7C();
      sub_1B00DE9AC(a1, a2);
    }
  }
}

uint64_t type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation(uint64_t a1)
{
  result = qword_1EB6C4140;
  if (!qword_1EB6C4140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B00FDEFC()
{
  result = qword_1EB6C4130;
  if (!qword_1EB6C4130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4130);
  }

  return result;
}

uint64_t sub_1B00FDF50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B00FDFB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B00FE040(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1B00FE0B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B014D25C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463656A627573 && a2 == 0xE700000000000000 || (sub_1B014D25C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B015CCD0 == a2 || (sub_1B014D25C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B015CCF0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B014D25C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1B00FE220(_BYTE *a1, char a2)
{
  *(v3 + 80) = v2;
  *(v3 + 105) = a2;
  *(v3 + 106) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1B00FE24C, 0, 0);
}

uint64_t sub_1B00FE24C()
{
  v13 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF6C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0xD000000000000042, 0x80000001B015D030, &v12);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  *(v0 + 40) = &type metadata for FeedbackFeatureFlags;
  *(v0 + 48) = sub_1B00DC988();
  *(v0 + 16) = 0;
  v6 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if ((v6 & 1) == 0)
  {
    sub_1B00DC9DC();
    swift_allocError();
    *v8 = 0;
    goto LABEL_9;
  }

  if (*(v0 + 105))
  {
    sub_1B00FE99C();
    swift_allocError();
    strcpy(v7, "Unimplemented");
    *(v7 + 7) = -4864;
LABEL_9:
    swift_willThrow();
    v9 = *(v0 + 8);

    return v9();
  }

  *(v0 + 104) = *(v0 + 106);
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 56) = 0;
  v11 = swift_task_alloc();
  *(v0 + 88) = v11;
  *v11 = v0;
  v11[1] = sub_1B00FE500;

  return FBKSEvaluation.Subject.evaluate(action:formResponse:)((v0 + 104), v0 + 56);
}

uint64_t sub_1B00FE500(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B00FE63C, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1B00FE664(uint64_t a1)
{
  *(a1 + 8) = sub_1B00FE954(&qword_1EB6C3E38, type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation, &protocol conformance descriptor for FBKSEvaluation.Subject.RemoteEvaluation);
  result = sub_1B00FE954(&qword_1EB6C3E40, type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation, &protocol conformance descriptor for FBKSEvaluation.Subject.RemoteEvaluation);
  *(a1 + 16) = result;
  return result;
}

void sub_1B00FE720(uint64_t a1)
{
  type metadata accessor for FBKSEvaluation.Subject(319);
  if (v1 <= 0x3F)
  {
    sub_1B00FE7BC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B00FE7BC()
{
  if (!qword_1EB6C4150)
  {
    v0 = sub_1B014CFBC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6C4150);
    }
  }
}

unint64_t sub_1B00FE820()
{
  result = qword_1EB6C4158;
  if (!qword_1EB6C4158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4158);
  }

  return result;
}

unint64_t sub_1B00FE878()
{
  result = qword_1EB6C4160;
  if (!qword_1EB6C4160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4160);
  }

  return result;
}

unint64_t sub_1B00FE8D0()
{
  result = qword_1EB6C4168;
  if (!qword_1EB6C4168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4168);
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B00FE954(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B00FE99C()
{
  result = qword_1EB6C4170;
  if (!qword_1EB6C4170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6C4170);
  }

  return result;
}

uint64_t sub_1B00FE9F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3F28, &qword_1B0150488);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_1()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B00FEB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3DB8, &unk_1B015A810) - 8);
  v9 = v4 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a4(a1, a2, a3, v9);
}

char *FBKSInteraction.init(featureDomain:bundleID:prefillQuestions:originalContent:generatedContent:modelVersion:diagnostics:auxiliaryMetrics:isHighPriority:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v16 = *a1;
  v15 = a1[1];
  v17 = &v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v17 = 0;
  v17[1] = 0;
  *&v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v18 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  v19 = type metadata accessor for FBKSInteraction.AnnotatedContent(0);
  v20 = *(*(v19 - 8) + 56);
  v20(&v12[v18], 1, 1, v19);
  v20(&v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v19);
  *&v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v21 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  v22 = type metadata accessor for FBKSInteraction.Content(0);
  v23 = *(*(v22 - 8) + 56);
  v23(&v12[v21], 1, 1, v22);
  v23(&v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v22);
  v24 = &v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v25 = 0;
  v25[1] = 0;
  *&v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v26 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v27 = sub_1B014CB1C();
  (*(*(v27 - 8) + 56))(&v12[v26], 1, 1, v27);
  v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  *&v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  v28 = &v12[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain];
  *v28 = v16;
  v28[1] = v15;
  v54.receiver = v12;
  v54.super_class = type metadata accessor for FBKSInteraction(0);
  v29 = objc_msgSendSuper2(&v54, sel_init);
  v30 = v29;
  if (a3)
  {
    v31 = (v29 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
    *v31 = a2;
    v31[1] = a3;
    v32 = v29;
  }

  else
  {
    v33 = objc_opt_self();
    v34 = v30;
    v35 = [v33 mainBundle];
    v36 = [v35 bundleIdentifier];

    if (v36)
    {
      v37 = sub_1B014CC1C();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    v40 = (v34 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
    *v40 = v37;
    v40[1] = v39;
  }

  v41 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  *(v30 + v41) = a4;

  v42 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  swift_beginAccess();
  sub_1B00DE71C(a5, v30 + v42, &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v43 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent;
  swift_beginAccess();
  sub_1B00DE71C(a6, v30 + v43, &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v44 = (v30 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion);
  swift_beginAccess();
  *v44 = a7;
  v44[1] = a8;

  v45 = (v30 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics);
  swift_beginAccess();
  *v45 = a9;
  v45[1] = a10;

  v46 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  swift_beginAccess();
  *(v30 + v46) = a11;

  v47 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  *(v30 + v47) = a12 & 1;

  return v30;
}

char *FBKSInteraction.init(featureDomain:bundleID:prefillQuestions:originalContent:generatedContent:modelVersion:diagnostics:auxiliaryMetrics:isHighPriority:evaluationID:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  v16 = *a1;
  v17 = a1[1];
  v18 = &v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v18 = 0;
  v18[1] = 0;
  *&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v19 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  v20 = type metadata accessor for FBKSInteraction.AnnotatedContent(0);
  v21 = *(*(v20 - 8) + 56);
  v21(&v13[v19], 1, 1, v20);
  v21(&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v20);
  *&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v22 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  v23 = type metadata accessor for FBKSInteraction.Content(0);
  v24 = *(*(v23 - 8) + 56);
  v24(&v13[v22], 1, 1, v23);
  v24(&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v23);
  v25 = &v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v26 = 0;
  v26[1] = 0;
  *&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v27 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v28 = sub_1B014CB1C();
  (*(*(v28 - 8) + 56))(&v13[v27], 1, 1, v28);
  v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  *&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  v29 = &v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain];
  *v29 = v16;
  v29[1] = v17;
  v56.receiver = v13;
  v56.super_class = type metadata accessor for FBKSInteraction(0);
  v30 = objc_msgSendSuper2(&v56, sel_init);
  v31 = v30;
  if (a3)
  {
    v32 = (v30 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
    *v32 = a2;
    v32[1] = a3;
    v33 = v30;
  }

  else
  {
    v34 = objc_opt_self();
    v35 = v31;
    v36 = [v34 mainBundle];
    v37 = [v36 bundleIdentifier];

    if (v37)
    {
      v38 = sub_1B014CC1C();
      v40 = v39;
    }

    else
    {
      v38 = 0;
      v40 = 0;
    }

    v41 = (v35 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
    *v41 = v38;
    v41[1] = v40;
  }

  v42 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  *(v31 + v42) = a4;

  v43 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  swift_beginAccess();
  sub_1B00DE71C(a5, v31 + v43, &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v44 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent;
  swift_beginAccess();
  sub_1B00DE71C(a6, v31 + v44, &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v45 = (v31 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion);
  swift_beginAccess();
  *v45 = a7;
  v45[1] = a8;

  v46 = (v31 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics);
  swift_beginAccess();
  *v46 = a9;
  v46[1] = a10;

  v47 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  swift_beginAccess();
  *(v31 + v47) = a11;

  v48 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  *(v31 + v48) = a12 & 1;
  v49 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  swift_beginAccess();
  sub_1B00DE71C(a13, v31 + v49, &qword_1EB6C3B98, &qword_1B014F360);
  swift_endAccess();

  return v31;
}

char *FBKSInteraction.init(featureDomain:bundleID:prefillQuestions:originalAnnotatedContent:generatedAnnotatedContent:extraContent:modelVersion:diagnostics:auxiliaryMetrics:isHighPriority:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v17 = *a1;
  v16 = a1[1];
  v18 = &v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v18 = 0;
  v18[1] = 0;
  *&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v19 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  v20 = type metadata accessor for FBKSInteraction.AnnotatedContent(0);
  v21 = *(*(v20 - 8) + 56);
  v21(&v13[v19], 1, 1, v20);
  v21(&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v20);
  *&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v22 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  v23 = type metadata accessor for FBKSInteraction.Content(0);
  v24 = *(*(v23 - 8) + 56);
  v24(&v13[v22], 1, 1, v23);
  v24(&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v23);
  v25 = &v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v26 = 0;
  v26[1] = 0;
  *&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v27 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v28 = sub_1B014CB1C();
  (*(*(v28 - 8) + 56))(&v13[v27], 1, 1, v28);
  v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  *&v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  v29 = &v13[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain];
  *v29 = v17;
  v29[1] = v16;
  v56.receiver = v13;
  v56.super_class = type metadata accessor for FBKSInteraction(0);
  v30 = objc_msgSendSuper2(&v56, sel_init);
  v31 = v30;
  if (a3)
  {
    v32 = (v30 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
    *v32 = a2;
    v32[1] = a3;
    v33 = v30;
  }

  else
  {
    v34 = objc_opt_self();
    v35 = v31;
    v36 = [v34 mainBundle];
    v37 = [v36 bundleIdentifier];

    if (v37)
    {
      v38 = sub_1B014CC1C();
      v40 = v39;
    }

    else
    {
      v38 = 0;
      v40 = 0;
    }

    v41 = (v35 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
    *v41 = v38;
    v41[1] = v40;
  }

  v42 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  *(v31 + v42) = a4;

  v43 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  swift_beginAccess();
  sub_1B00DE71C(a5, v31 + v43, &qword_1EB6C3D68, &unk_1B0151240);
  swift_endAccess();
  v44 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent;
  swift_beginAccess();
  sub_1B00DE71C(a6, v31 + v44, &qword_1EB6C3D68, &unk_1B0151240);
  swift_endAccess();
  v45 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  swift_beginAccess();
  *(v31 + v45) = a7;

  v46 = (v31 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion);
  swift_beginAccess();
  *v46 = a8;
  v46[1] = a9;

  v47 = (v31 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics);
  swift_beginAccess();
  *v47 = a10;
  v47[1] = a11;

  v48 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  swift_beginAccess();
  *(v31 + v48) = a12;

  v49 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  *(v31 + v49) = a13 & 1;

  return v31;
}

void *FBKSInteraction.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B98, &qword_1B014F360);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v83 = &v79 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C28, &qword_1B01515D0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v84 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v79 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D68, &unk_1B0151240);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v86 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v79 - v12;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C41A0, &qword_1B01515D8);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v115 = &v79 - v13;
  v14 = &v1[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v14 = 0;
  v14[1] = 0;
  v103 = v14;
  v104 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  *&v1[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v15 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  v16 = type metadata accessor for FBKSInteraction.AnnotatedContent(0);
  v17 = *(*(v16 - 8) + 56);
  v101 = v15;
  v17(&v1[v15], 1, 1, v16);
  v100 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent;
  v87 = v16;
  v17(&v1[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v16);
  v102 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  *&v1[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v18 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  v19 = type metadata accessor for FBKSInteraction.Content(0);
  v20 = *(*(v19 - 8) + 56);
  v99 = v18;
  v20(&v1[v18], 1, 1, v19);
  v98 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent;
  v20(&v1[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v19);
  v21 = &v1[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v21 = 0;
  v21[1] = 0;
  v97 = v21;
  v22 = &v1[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v22 = 0;
  v22[1] = 0;
  v96 = v22;
  v95 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  *&v1[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v23 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  v1[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v24 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v25 = sub_1B014CB1C();
  v26 = *(*(v25 - 8) + 56);
  v94 = v24;
  v26(&v1[v24], 1, 1, v25);
  v27 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented;
  v1[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v28 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation;
  v1[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  v91 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter;
  v105 = v1;
  *&v1[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  v29 = a1[3];
  v93 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1B01009E8();
  v30 = v92;
  sub_1B014D34C();
  if (v30)
  {
    v31 = v101;
    __swift_destroy_boxed_opaque_existential_0(v93);
    v33 = v100;
    v34 = v99;
    v35 = v98;
    v36 = v105;

    sub_1B00DE9C0(v36 + v31, &qword_1EB6C3D68, &unk_1B0151240);
    sub_1B00DE9C0(v36 + v33, &qword_1EB6C3D68, &unk_1B0151240);

    sub_1B00DE9C0(v36 + v34, &qword_1EB6C3C28, &qword_1B01515D0);
    sub_1B00DE9C0(v36 + v35, &qword_1EB6C3C28, &qword_1B01515D0);

    sub_1B00DE9C0(v36 + v94, &qword_1EB6C3B98, &qword_1B014F360);

    type metadata accessor for FBKSInteraction(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v82 = v23;
    v92 = v25;
    v81 = v27;
    LOBYTE(v113) = 0;
    sub_1B0100A50();
    sub_1B014D17C();
    v32 = v101;
    v80 = v28;
    *(v105 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain) = v114;
    LOBYTE(v114) = 1;
    v38 = sub_1B014D10C();
    v39 = v103;
    *v103 = v38;
    v39[1] = v40;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C08, &unk_1B014F3C0);
    LOBYTE(v114) = 2;
    sub_1B00DC504();
    sub_1B014D12C();
    v41 = v113;
    v42 = v104;
    v43 = v105;
    swift_beginAccess();
    *(v43 + v42) = v41;

    LOBYTE(v113) = 3;
    sub_1B0100AA4(&qword_1EDAE6B38, type metadata accessor for FBKSInteraction.AnnotatedContent, &protocol conformance descriptor for FBKSInteraction.AnnotatedContent);
    v44 = v88;
    sub_1B014D12C();
    v45 = v105;
    swift_beginAccess();
    sub_1B00DE71C(v44, v45 + v32, &qword_1EB6C3D68, &unk_1B0151240);
    swift_endAccess();
    LOBYTE(v113) = 4;
    v46 = v86;
    sub_1B014D12C();
    v47 = v100;
    v48 = v105;
    swift_beginAccess();
    sub_1B00DE71C(v46, v48 + v47, &qword_1EB6C3D68, &unk_1B0151240);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C41A8, &qword_1B01515E0);
    LOBYTE(v113) = 5;
    sub_1B011A9E0(&qword_1EDAE6AF8, &qword_1EDAE6B38, &protocol conformance descriptor for FBKSInteraction.AnnotatedContent, MEMORY[0x1E69E6330]);
    sub_1B014D17C();
    v49 = v99;
    v50 = v112;
    v51 = v102;
    v52 = v105;
    swift_beginAccess();
    *(v52 + v51) = v50;

    LOBYTE(v112) = 6;
    sub_1B0100AA4(&qword_1EDAE6B28, type metadata accessor for FBKSInteraction.Content, &protocol conformance descriptor for FBKSInteraction.Content);
    v53 = v85;
    sub_1B014D12C();
    v54 = v105;
    swift_beginAccess();
    sub_1B00DE71C(v53, v54 + v49, &qword_1EB6C3C28, &qword_1B01515D0);
    swift_endAccess();
    LOBYTE(v112) = 7;
    v55 = v84;
    sub_1B014D12C();
    v56 = v55;
    v57 = v98;
    v58 = v105;
    swift_beginAccess();
    sub_1B00DE71C(v56, v58 + v57, &qword_1EB6C3C28, &qword_1B01515D0);
    swift_endAccess();
    LOBYTE(v112) = 8;
    v59 = sub_1B014D10C();
    v61 = v60;
    v62 = v97;
    swift_beginAccess();
    *v62 = v59;
    v62[1] = v61;

    v111[0] = 9;
    v63 = sub_1B014D10C();
    v65 = v64;
    v66 = v96;
    swift_beginAccess();
    *v66 = v63;
    v66[1] = v65;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C41B0, &qword_1B01515E8);
    v110[0] = 10;
    sub_1B011AA7C(&qword_1EDAE6B00, MEMORY[0x1E69E6190], MEMORY[0x1E69E6560], MEMORY[0x1E69E5E58]);
    sub_1B014D12C();
    v67 = v109;
    v68 = v95;
    v69 = v105;
    swift_beginAccess();
    *(v69 + v68) = v67;

    LOBYTE(v109) = 11;
    LOBYTE(v67) = sub_1B014D14C();
    v70 = v82;
    v71 = v105;
    swift_beginAccess();
    *(v71 + v70) = v67 & 1;
    v108[0] = 12;
    sub_1B0100AA4(&qword_1EDAE6EA8, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1B014D12C();
    v72 = v94;
    v73 = v105;
    swift_beginAccess();
    sub_1B00DE71C(v83, v73 + v72, &qword_1EB6C3B98, &qword_1B014F360);
    swift_endAccess();
    v108[0] = 13;
    LOBYTE(v72) = sub_1B014D14C();
    v74 = v81;
    v75 = v105;
    swift_beginAccess();
    *(v75 + v74) = v72 & 1;
    v107 = 14;
    LOBYTE(v72) = sub_1B014D14C();
    v76 = v80;
    v77 = v105;
    swift_beginAccess();
    v77[v76] = v72 & 1;
    v78 = type metadata accessor for FBKSInteraction(0);
    v106.receiver = v77;
    v106.super_class = v78;
    v36 = objc_msgSendSuper2(&v106, sel_init);
    (*(v89 + 8))(v115, v90);
    __swift_destroy_boxed_opaque_existential_0(v93);
  }

  return v36;
}

unint64_t sub_1B01009E8()
{
  result = qword_1EDAE7618;
  if (!qword_1EDAE7618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE7618);
  }

  return result;
}

uint64_t sub_1B0100A3C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x24)
  {
  }

  return result;
}

unint64_t sub_1B0100A50()
{
  result = qword_1EDAE6DD8;
  if (!qword_1EDAE6DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE6DD8);
  }

  return result;
}

uint64_t sub_1B0100AA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B0100AEC@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;
  return sub_1B0100B40(v4, v5);
}

uint64_t sub_1B0100B40(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x24)
  {
  }

  return result;
}

uint64_t sub_1B0100B54(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  return sub_1B0100A3C(v5, v6);
}

uint64_t sub_1B0100C10()
{
  v1 = *(v0 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
  v2 = *(v0 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID + 8);
  if (v2)
  {

    if ((sub_1B01154BC(0x6C7070612E6D6F63, 0xEA00000000002E65, v1, v2) & 1) == 0)
    {

      return 0x6170206472696854;
    }
  }

  return v1;
}

uint64_t sub_1B0100C9C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t (*sub_1B0100CB8(uint64_t *a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID;
  a1[2] = v1;
  a1[3] = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6)
  {

    if ((sub_1B01154BC(0x6C7070612E6D6F63, 0xEA00000000002E65, v5, v6) & 1) == 0)
    {

      v6 = 0xEB00000000797472;
      v5 = 0x6170206472696854;
    }
  }

  *a1 = v5;
  a1[1] = v6;
  return sub_1B0100D6C;
}

uint64_t sub_1B0100EB4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_1B00DE660(v4 + v8, a4, a2, a3);
}

uint64_t sub_1B0100F3C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_1B00DE71C(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1B0101058(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1B010138C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t sub_1B0101440()
{
  v1 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B0101484(char a1)
{
  v3 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B0101534(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B98, &qword_1B014F360);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_1B014CB1C();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  swift_beginAccess();
  sub_1B00DE71C(v5, v1 + v8, &qword_1EB6C3B98, &qword_1B014F360);
  return swift_endAccess();
}

uint64_t sub_1B0101690()
{
  v1 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B01016D4(char a1)
{
  v3 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B0101784()
{
  v1 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B01017C8(char a1)
{
  v3 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_1B0101878(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v6 = sub_1B014CB5C();
  __swift_project_value_buffer(v6, qword_1EDAE7828);
  v7 = sub_1B014CB3C();
  v8 = sub_1B014CF6C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1B00E6C2C(0x65746E6573657270, 0xED0000293A5F2864, aBlock);
    _os_log_impl(&dword_1B00C4000, v7, v8, "%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B271F750](v10, -1, -1);
    MEMORY[0x1B271F750](v9, -1, -1);
  }

  v37 = &type metadata for FeedbackFeatureFlags;
  v38 = sub_1B00DC988();
  LOBYTE(aBlock[0]) = 0;
  v11 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if ((v11 & 1) == 0)
  {
    sub_1B00DC9DC();
    v16 = swift_allocError();
    *v17 = 0;
    a1();

    return;
  }

  v12 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented;
  swift_beginAccess();
  if (*(v2 + v12))
  {
    v13 = sub_1B014CB3C();
    v14 = sub_1B014CF6C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1B00C4000, v13, v14, "Ignoring .presented(), sentPresented already set", v15, 2u);
      MEMORY[0x1B271F750](v15, -1, -1);
    }

    (a1)(0);
    return;
  }

  v18 = [objc_opt_self() mainBundle];
  v19 = [v18 bundleIdentifier];

  if (!v19)
  {
    v20 = 0x3E6C696E3CLL;
    v22 = 0xE500000000000000;
    goto LABEL_16;
  }

  v20 = sub_1B014CC1C();
  v22 = v21;

  if (v20 != 0xD00000000000001ALL || 0x80000001B015C960 != v22)
  {
LABEL_16:
    if (sub_1B014D25C())
    {
      v23 = 0;
    }

    else if (v20 == 0xD000000000000025 && 0x80000001B015C910 == v22)
    {
      v23 = 0;
      v20 = 0xD000000000000025;
    }

    else
    {
      v23 = sub_1B014D25C() ^ 1;
    }

    goto LABEL_22;
  }

  v23 = 0;
  v20 = 0xD00000000000001ALL;
LABEL_22:

  v24 = sub_1B014CB3C();
  v25 = sub_1B014CF3C();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136315394;
    v28 = sub_1B00E6C2C(v20, v22, aBlock);

    *(v26 + 4) = v28;
    *(v26 + 12) = 1024;
    *(v26 + 14) = v23 & 1;
    _os_log_impl(&dword_1B00C4000, v24, v25, "Presented interaction from %s. Is presented inline: %{BOOL}d", v26, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1B271F750](v27, -1, -1);
    MEMORY[0x1B271F750](v26, -1, -1);
  }

  else
  {
  }

  FBKSInteraction.CAPayload(_:)(v23 & 1);
  if (qword_1EDAE7100 != -1)
  {
    swift_once();
  }

  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;

  v30 = sub_1B00FA9AC(sub_1B011835C, v29);

  if (v30)
  {
    sub_1B00DC12C();
    v31 = sub_1B014CB9C();

    _s15FeedbackService12RACAnalyticsV32featureDomainEvaluationEventNameySSAA15FBKSInteractionCFZ_0(v3);
    v32 = sub_1B014CC0C();

    v33 = swift_allocObject();
    v33[2] = v3;
    v33[3] = a1;
    v33[4] = a2;
    v38 = sub_1B011A88C;
    v39 = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B00DFB7C;
    v37 = &block_descriptor_7;
    v34 = _Block_copy(aBlock);

    v35 = v3;

    [v30 presentedInteractionWithAnalyticsPayload:v31 featureDomainEventName:v32 completion:v34];
    swift_unknownObjectRelease();
    _Block_release(v34);
  }

  else
  {
  }
}

uint64_t sub_1B0101ED0()
{
  v15 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF6C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0x65746E6573657270, 0xEB00000000292864, &v14);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  v0[5] = &type metadata for FeedbackFeatureFlags;
  v0[6] = sub_1B00DC988();
  *(v0 + 16) = 0;
  v6 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v6)
  {
    v7 = v0[7];
    v8 = swift_task_alloc();
    v0[8] = v8;
    *(v8 + 16) = v7;
    v9 = swift_task_alloc();
    v0[9] = v9;
    *v9 = v0;
    v9[1] = sub_1B00E4A7C;
    v10 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v9, 0, 0, 0x65746E6573657270, 0xEB00000000292864, sub_1B011A8A8, v8, v10);
  }

  else
  {
    sub_1B00DC9DC();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    v12 = v0[1];

    return v12();
  }
}

void sub_1B0102174(unsigned __int8 *a1, uint64_t *a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v31 = a3;
  v7 = type metadata accessor for FBKSEvaluation.Subject(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  HIDWORD(v29) = *a1;
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v13 = sub_1B014CB5C();
  __swift_project_value_buffer(v13, qword_1EDAE7828);
  v14 = sub_1B014CB3C();
  v15 = sub_1B014CF6C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v33[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_1B00E6C2C(0xD000000000000029, 0x80000001B015D150, v33);
    _os_log_impl(&dword_1B00C4000, v14, v15, "%{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1B271F750](v17, -1, -1);
    MEMORY[0x1B271F750](v16, -1, -1);
  }

  v33[3] = &type metadata for FeedbackFeatureFlags;
  v33[4] = sub_1B00DC988();
  LOBYTE(v33[0]) = 0;
  v18 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0(v33);
  if (v18)
  {
    v19 = v30;
    *v9 = v30;
    swift_storeEnumTagMultiPayload();
    v20 = type metadata accessor for FBKSEvaluation(0);
    v21 = objc_allocWithZone(v20);
    sub_1B011A8C4(v9, &v21[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_subject], type metadata accessor for FBKSEvaluation.Subject);
    v21[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_action] = BYTE4(v29);
    v22 = &v21[OBJC_IVAR____TtC15FeedbackService14FBKSEvaluation_formResponse];
    *v22 = v10;
    v22[1] = v11;
    v22[2] = v12;
    v23 = v19;
    sub_1B00DB7AC(v10, v11, v12);
    v32.receiver = v21;
    v32.super_class = v20;
    v24 = objc_msgSendSuper2(&v32, sel_init);
    sub_1B011A92C(v9, type metadata accessor for FBKSEvaluation.Subject);
    v25 = v23;

    v26 = v24;
    sub_1B00DDCC0(v26, v25, v31, a4, v26);
  }

  else
  {
    sub_1B00DC9DC();
    v27 = swift_allocError();
    *v28 = 0;
    v31(v27, 1);
  }
}

uint64_t sub_1B01024A8(_BYTE *a1, uint64_t a2)
{
  *(v3 + 64) = v2;
  *(v3 + 120) = *a1;
  *(v3 + 72) = *a2;
  *(v3 + 88) = *(a2 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1B01024E0, 0, 0);
}

uint64_t sub_1B01024E0()
{
  v18 = v0;
  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v1 = sub_1B014CB5C();
  __swift_project_value_buffer(v1, qword_1EDAE7828);
  v2 = sub_1B014CB3C();
  v3 = sub_1B014CF6C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B00E6C2C(0xD00000000000001ELL, 0x80000001B015D180, &v17);
    _os_log_impl(&dword_1B00C4000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B271F750](v5, -1, -1);
    MEMORY[0x1B271F750](v4, -1, -1);
  }

  *(v0 + 40) = &type metadata for FeedbackFeatureFlags;
  *(v0 + 48) = sub_1B00DC988();
  *(v0 + 16) = 0;
  v6 = sub_1B014CB2C();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v6)
  {
    v7 = *(v0 + 88);
    v16 = *(v0 + 72);
    v8 = *(v0 + 120);
    v9 = *(v0 + 64);
    v10 = swift_task_alloc();
    *(v0 + 96) = v10;
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    *(v10 + 32) = v16;
    *(v10 + 48) = v7;
    v11 = swift_task_alloc();
    *(v0 + 104) = v11;
    v12 = type metadata accessor for FBKSEvaluation(0);
    *v11 = v0;
    v11[1] = sub_1B010279C;

    return MEMORY[0x1EEE6DE38](v0 + 56, 0, 0, 0xD00000000000001ELL, 0x80000001B015D180, sub_1B011A8B0, v10, v12);
  }

  else
  {
    sub_1B00DC9DC();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1B010279C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1B01028B8;
  }

  else
  {

    v2 = sub_1B00D90D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B01028B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B010291C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D68, &unk_1B0151240);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v151 = (&v144 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v144 - v4;
  v6 = type metadata accessor for FBKSInteraction.AnnotatedContent(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v154 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v156 = &v144 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v152 = &v144 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v147 = &v144 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v155 = &v144 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  *&v149 = &v144 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v144 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v144 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v144 - v26;
  v28 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  swift_beginAccess();
  v150 = v0;
  sub_1B00DE660(&v0[v28], v5, &qword_1EB6C3D68, &unk_1B0151240);
  *&v148 = v7;
  v29 = *(v7 + 48);
  v153 = v6;
  if (v29(v5, 1, v6) == 1)
  {
    sub_1B00DE9C0(v5, &qword_1EB6C3D68, &unk_1B0151240);
    goto LABEL_16;
  }

  sub_1B00FA138(v5, v27, type metadata accessor for FBKSInteraction.AnnotatedContent);
  v30 = sub_1B010F40C();
  if ((v31 & 1) == 0)
  {
    v43 = v30;
    if (qword_1EDAE7070 != -1)
    {
      swift_once();
    }

    v44 = sub_1B014CB5C();
    __swift_project_value_buffer(v44, qword_1EDAE7828);
    sub_1B011A8C4(v27, v25, type metadata accessor for FBKSInteraction.AnnotatedContent);
    v45 = v150;
    v46 = sub_1B014CB3C();
    v47 = sub_1B014CF2C();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v144 = v43;
      v49 = v48;
      v50 = swift_slowAlloc();
      v145 = v47;
      v51 = v50;
      v159[0] = v50;
      *v49 = 136446466;
      v52 = &v25[*(v153 + 28)];
      v53 = *v52;
      v54 = v52[1];

      v146 = v29;
      sub_1B011A92C(v25, type metadata accessor for FBKSInteraction.AnnotatedContent);
      v55 = sub_1B00E6C2C(v53, v54, v159);

      *(v49 + 4) = v55;
      *(v49 + 12) = 2082;
      v56 = sub_1B010392C();
      v57 = [v56 stringFromByteCount_];

      v58 = sub_1B014CC1C();
      v60 = v59;

      v61 = sub_1B00E6C2C(v58, v60, v159);

      *(v49 + 14) = v61;
      _os_log_impl(&dword_1B00C4000, v46, v145, "Original Content: %{public}s size: %{public}s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B271F750](v51, -1, -1);
      MEMORY[0x1B271F750](v49, -1, -1);

      v42 = v27;
      v29 = v146;
      goto LABEL_15;
    }

    v62 = v25;
LABEL_14:
    sub_1B011A92C(v62, type metadata accessor for FBKSInteraction.AnnotatedContent);
    v42 = v27;
    goto LABEL_15;
  }

  if (qword_1EDAE7070 != -1)
  {
    swift_once();
  }

  v32 = sub_1B014CB5C();
  __swift_project_value_buffer(v32, qword_1EDAE7828);
  sub_1B011A8C4(v27, v22, type metadata accessor for FBKSInteraction.AnnotatedContent);
  v33 = sub_1B014CB3C();
  v34 = sub_1B014CF2C();
  if (!os_log_type_enabled(v33, v34))
  {

    v62 = v22;
    goto LABEL_14;
  }

  v35 = swift_slowAlloc();
  v36 = swift_slowAlloc();
  v159[0] = v36;
  *v35 = 136446210;
  v37 = &v22[*(v153 + 28)];
  v38 = v29;
  v39 = *v37;
  v40 = v37[1];

  sub_1B011A92C(v22, type metadata accessor for FBKSInteraction.AnnotatedContent);
  v41 = sub_1B00E6C2C(v39, v40, v159);
  v29 = v38;

  *(v35 + 4) = v41;
  _os_log_impl(&dword_1B00C4000, v33, v34, "Original Content: %{public}s", v35, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v36);
  MEMORY[0x1B271F750](v36, -1, -1);
  MEMORY[0x1B271F750](v35, -1, -1);

  v42 = v27;
LABEL_15:
  sub_1B011A92C(v42, type metadata accessor for FBKSInteraction.AnnotatedContent);
LABEL_16:
  v64 = v150;
  v63 = v151;
  v65 = v155;
  v66 = v156;
  v67 = v152;
  v68 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent;
  swift_beginAccess();
  sub_1B00DE660(&v64[v68], v63, &qword_1EB6C3D68, &unk_1B0151240);
  v69 = &qword_1EDAE7000;
  if (v29(v63, 1, v153) == 1)
  {
    sub_1B00DE9C0(v63, &qword_1EB6C3D68, &unk_1B0151240);
    v70 = v154;
  }

  else
  {
    v71 = v149;
    sub_1B00FA138(v63, v149, type metadata accessor for FBKSInteraction.AnnotatedContent);
    v72 = sub_1B010F40C();
    v70 = v154;
    if (v73)
    {
      if (qword_1EDAE7070 != -1)
      {
        swift_once();
      }

      v74 = sub_1B014CB5C();
      __swift_project_value_buffer(v74, qword_1EDAE7828);
      v75 = v147;
      sub_1B011A8C4(v71, v147, type metadata accessor for FBKSInteraction.AnnotatedContent);
      v76 = v71;
      v77 = sub_1B014CB3C();
      v78 = sub_1B014CF2C();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v158[0] = v80;
        *v79 = 136446210;
        v81 = (v75 + *(v153 + 28));
        v82 = *v81;
        v83 = v81[1];

        sub_1B011A92C(v75, type metadata accessor for FBKSInteraction.AnnotatedContent);
        v84 = sub_1B00E6C2C(v82, v83, v158);

        *(v79 + 4) = v84;
        v66 = v156;
        _os_log_impl(&dword_1B00C4000, v77, v78, "Generated Content: %{public}s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v80);
        v85 = v80;
        v67 = v152;
        MEMORY[0x1B271F750](v85, -1, -1);
        MEMORY[0x1B271F750](v79, -1, -1);

        v86 = v149;
      }

      else
      {

        sub_1B011A92C(v75, type metadata accessor for FBKSInteraction.AnnotatedContent);
        v86 = v76;
      }

      sub_1B011A92C(v86, type metadata accessor for FBKSInteraction.AnnotatedContent);
    }

    else
    {
      v87 = v72;
      if (qword_1EDAE7070 != -1)
      {
        swift_once();
      }

      v88 = sub_1B014CB5C();
      __swift_project_value_buffer(v88, qword_1EDAE7828);
      sub_1B011A8C4(v71, v65, type metadata accessor for FBKSInteraction.AnnotatedContent);
      v89 = v64;
      v90 = sub_1B014CB3C();
      v91 = sub_1B014CF2C();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v158[0] = v93;
        *v92 = 136446466;
        v94 = (v65 + *(v153 + 28));
        v95 = *v94;
        v96 = v94[1];

        sub_1B011A92C(v65, type metadata accessor for FBKSInteraction.AnnotatedContent);
        v97 = sub_1B00E6C2C(v95, v96, v158);

        *(v92 + 4) = v97;
        *(v92 + 12) = 2082;
        v98 = sub_1B010392C();
        v99 = [v98 stringFromByteCount_];

        v100 = sub_1B014CC1C();
        v102 = v101;

        v103 = sub_1B00E6C2C(v100, v102, v158);
        v66 = v156;

        *(v92 + 14) = v103;
        _os_log_impl(&dword_1B00C4000, v90, v91, "Generated Content: %{public}s size: %{public}s", v92, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B271F750](v93, -1, -1);
        MEMORY[0x1B271F750](v92, -1, -1);

        v104 = v149;
        v64 = v150;
      }

      else
      {

        sub_1B011A92C(v65, type metadata accessor for FBKSInteraction.AnnotatedContent);
        v104 = v71;
      }

      sub_1B011A92C(v104, type metadata accessor for FBKSInteraction.AnnotatedContent);
      v67 = v152;
      v69 = &qword_1EDAE7000;
    }
  }

  v105 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  swift_beginAccess();
  result = *&v64[v105];
  v107 = *(result + 16);
  if (v107)
  {
    v108 = result + ((*(v148 + 80) + 32) & ~*(v148 + 80));
    v155 = *(v148 + 72);
    v147 = result;

    *&v109 = 136446210;
    v149 = v109;
    *&v109 = 136446466;
    v148 = v109;
    do
    {
      sub_1B011A8C4(v108, v67, type metadata accessor for FBKSInteraction.AnnotatedContent);
      v111 = sub_1B010F40C();
      v112 = v69[14];
      if (v113)
      {
        if (v112 != -1)
        {
          swift_once();
        }

        v114 = sub_1B014CB5C();
        __swift_project_value_buffer(v114, qword_1EDAE7828);
        sub_1B011A8C4(v67, v70, type metadata accessor for FBKSInteraction.AnnotatedContent);
        v115 = sub_1B014CB3C();
        v116 = sub_1B014CF2C();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          v157 = v118;
          *v117 = v149;
          v119 = (v70 + *(v153 + 28));
          v120 = *v119;
          v121 = v119[1];

          sub_1B011A92C(v154, type metadata accessor for FBKSInteraction.AnnotatedContent);
          v122 = sub_1B00E6C2C(v120, v121, &v157);
          v70 = v154;

          *(v117 + 4) = v122;
          v66 = v156;
          _os_log_impl(&dword_1B00C4000, v115, v116, "Extra Content: %{public}s", v117, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v118);
          v123 = v118;
          v67 = v152;
          MEMORY[0x1B271F750](v123, -1, -1);
          MEMORY[0x1B271F750](v117, -1, -1);

          v110 = v67;
          v69 = &qword_1EDAE7000;
        }

        else
        {

          sub_1B011A92C(v70, type metadata accessor for FBKSInteraction.AnnotatedContent);
          v110 = v67;
        }

        sub_1B011A92C(v110, type metadata accessor for FBKSInteraction.AnnotatedContent);
      }

      else
      {
        v124 = v111;
        if (v112 != -1)
        {
          swift_once();
        }

        v125 = sub_1B014CB5C();
        __swift_project_value_buffer(v125, qword_1EDAE7828);
        sub_1B011A8C4(v67, v66, type metadata accessor for FBKSInteraction.AnnotatedContent);
        v126 = v64;
        v127 = v67;
        v128 = sub_1B014CB3C();
        v129 = sub_1B014CF2C();

        if (os_log_type_enabled(v128, v129))
        {
          v130 = swift_slowAlloc();
          v131 = swift_slowAlloc();
          v157 = v131;
          *v130 = v148;
          v132 = (v156 + *(v153 + 28));
          v133 = *v132;
          v134 = v132[1];

          v151 = type metadata accessor for FBKSInteraction.AnnotatedContent;
          sub_1B011A92C(v156, type metadata accessor for FBKSInteraction.AnnotatedContent);
          v135 = sub_1B00E6C2C(v133, v134, &v157);

          *(v130 + 4) = v135;
          *(v130 + 12) = 2082;
          v136 = sub_1B010392C();
          v137 = [v136 stringFromByteCount_];

          v138 = sub_1B014CC1C();
          v140 = v139;

          v141 = sub_1B00E6C2C(v138, v140, &v157);
          v70 = v154;

          *(v130 + 14) = v141;
          _os_log_impl(&dword_1B00C4000, v128, v129, "Extra Content: %{public}s size: %{public}s", v130, 0x16u);
          swift_arrayDestroy();
          v142 = v131;
          v66 = v156;
          MEMORY[0x1B271F750](v142, -1, -1);
          v143 = v130;
          v64 = v150;
          MEMORY[0x1B271F750](v143, -1, -1);

          v67 = v152;
          sub_1B011A92C(v152, v151);
        }

        else
        {

          sub_1B011A92C(v66, type metadata accessor for FBKSInteraction.AnnotatedContent);
          sub_1B011A92C(v127, type metadata accessor for FBKSInteraction.AnnotatedContent);
          v67 = v127;
        }

        v69 = &qword_1EDAE7000;
      }

      v108 += v155;
      --v107;
    }

    while (v107);
  }

  return result;
}

id sub_1B010392C()
{
  v1 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
    [v4 setAllowedUnits_];
    [v4 setCountStyle_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1B01039C8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B98, &qword_1B014F360);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v46 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C28, &qword_1B01515D0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v47 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3D68, &unk_1B0151240);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v49 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C41B8, &qword_1B0151600);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v46 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B01009E8();
  sub_1B014D35C();
  v50 = v2;
  v19 = (v2 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain);
  swift_beginAccess();
  v20 = v19[1];
  v65 = *v19;
  v66 = v20;
  LOBYTE(v64[0]) = 0;
  sub_1B0100B40(v65, v20);
  sub_1B011A98C();
  v67 = v15;
  v21 = v18;
  v22 = v51;
  sub_1B014D21C();
  if (v22)
  {
    sub_1B0100A3C(v65, v66);
    return (*(v16 + 8))(v18, v67);
  }

  else
  {
    v51 = v16;
    sub_1B0100A3C(v65, v66);
    v24 = v50;
    LOBYTE(v65) = 1;

    sub_1B014D1AC();

    v25 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
    swift_beginAccess();
    v64[0] = *(v24 + v25);
    v63 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3C08, &unk_1B014F3C0);
    sub_1B00DC3B8();
    sub_1B014D1CC();
    v26 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
    swift_beginAccess();
    sub_1B00DE660(v24 + v26, v14, &qword_1EB6C3D68, &unk_1B0151240);
    v63 = 3;
    type metadata accessor for FBKSInteraction.AnnotatedContent(0);
    sub_1B0100AA4(&qword_1EDAE7118, type metadata accessor for FBKSInteraction.AnnotatedContent, &protocol conformance descriptor for FBKSInteraction.AnnotatedContent);
    sub_1B014D1CC();
    sub_1B00DE9C0(v14, &qword_1EB6C3D68, &unk_1B0151240);
    v27 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent;
    swift_beginAccess();
    v28 = v24 + v27;
    v29 = v49;
    sub_1B00DE660(v28, v49, &qword_1EB6C3D68, &unk_1B0151240);
    v62 = 4;
    sub_1B014D1CC();
    sub_1B00DE9C0(v29, &qword_1EB6C3D68, &unk_1B0151240);
    v30 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
    swift_beginAccess();
    v61[0] = *(v24 + v30);
    v60 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C41A8, &qword_1B01515E0);
    sub_1B011A9E0(&qword_1EDAE7050, &qword_1EDAE7118, &protocol conformance descriptor for FBKSInteraction.AnnotatedContent, MEMORY[0x1E69E6300]);
    sub_1B014D21C();
    v31 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
    swift_beginAccess();
    v32 = v24 + v31;
    v33 = v48;
    sub_1B00DE660(v32, v48, &qword_1EB6C3C28, &qword_1B01515D0);
    v60 = 6;
    type metadata accessor for FBKSInteraction.Content(0);
    sub_1B0100AA4(&qword_1EDAE7230, type metadata accessor for FBKSInteraction.Content, &protocol conformance descriptor for FBKSInteraction.Content);
    v49 = v21;
    sub_1B014D1CC();
    sub_1B00DE9C0(v33, &qword_1EB6C3C28, &qword_1B01515D0);
    v34 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent;
    v35 = v50;
    swift_beginAccess();
    v36 = v35 + v34;
    v37 = v47;
    sub_1B00DE660(v36, v47, &qword_1EB6C3C28, &qword_1B01515D0);
    v59 = 7;
    sub_1B014D1CC();
    sub_1B00DE9C0(v37, &qword_1EB6C3C28, &qword_1B01515D0);
    v38 = v50;
    swift_beginAccess();
    v58 = 8;

    sub_1B014D1AC();

    swift_beginAccess();
    v57 = 9;

    sub_1B014D1AC();

    v39 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
    swift_beginAccess();
    v56 = *(v38 + v39);
    v55 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C41B0, &qword_1B01515E8);
    sub_1B011AA7C(&qword_1EDAE7058, MEMORY[0x1E69E6160], MEMORY[0x1E69E6538], MEMORY[0x1E69E5E38]);
    sub_1B014D1CC();
    swift_beginAccess();
    v55 = 11;
    sub_1B014D1EC();
    v40 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
    v41 = v50;
    swift_beginAccess();
    v42 = v41 + v40;
    v43 = v46;
    sub_1B00DE660(v42, v46, &qword_1EB6C3B98, &qword_1B014F360);
    v54 = 12;
    sub_1B014CB1C();
    sub_1B0100AA4(&qword_1EDAE7200, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1B014D1CC();
    sub_1B00DE9C0(v43, &qword_1EB6C3B98, &qword_1B014F360);
    swift_beginAccess();
    v53 = 13;
    sub_1B014D1EC();
    swift_beginAccess();
    v52 = 14;
    v44 = v67;
    v45 = v49;
    sub_1B014D1EC();
    return (*(v51 + 8))(v45, v44);
  }
}

void sub_1B0104478(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1B014C9BC();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

char *FBKSInteraction.__allocating_init(featureDomain:bundleID:prefillQuestions:originalAnnotatedContent:generatedAnnotatedContent:extraContent:modelVersion:diagnostics:auxiliaryMetrics:isHighPriority:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v14 = v13;
  v17 = objc_allocWithZone(v13);
  v18 = *a1;
  v19 = a1[1];
  v20 = &v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v20 = 0;
  v20[1] = 0;
  *&v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v21 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  v22 = type metadata accessor for FBKSInteraction.AnnotatedContent(0);
  v23 = *(*(v22 - 8) + 56);
  v23(&v17[v21], 1, 1, v22);
  v23(&v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v22);
  *&v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v24 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  v25 = type metadata accessor for FBKSInteraction.Content(0);
  v26 = *(*(v25 - 8) + 56);
  v26(&v17[v24], 1, 1, v25);
  v26(&v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v25);
  v27 = &v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v27 = 0;
  v27[1] = 0;
  v28 = &v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v28 = 0;
  v28[1] = 0;
  *&v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v29 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v30 = sub_1B014CB1C();
  (*(*(v30 - 8) + 56))(&v17[v29], 1, 1, v30);
  v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  *&v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  v31 = &v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain];
  *v31 = v18;
  v31[1] = v19;
  v59.receiver = v17;
  v59.super_class = v14;
  v32 = objc_msgSendSuper2(&v59, sel_init);
  v33 = v32;
  if (a3)
  {
    v34 = (v32 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
    *v34 = a2;
    v34[1] = a3;
    v35 = v32;
  }

  else
  {
    v36 = objc_opt_self();
    v37 = v33;
    v38 = [v36 mainBundle];
    v39 = [v38 bundleIdentifier];

    if (v39)
    {
      v40 = sub_1B014CC1C();
      v42 = v41;
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    v43 = (v37 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
    *v43 = v40;
    v43[1] = v42;
  }

  v44 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  *(v33 + v44) = a4;

  v45 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  swift_beginAccess();
  sub_1B00DE71C(a5, v33 + v45, &qword_1EB6C3D68, &unk_1B0151240);
  swift_endAccess();
  v46 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent;
  swift_beginAccess();
  sub_1B00DE71C(a6, v33 + v46, &qword_1EB6C3D68, &unk_1B0151240);
  swift_endAccess();
  v47 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  swift_beginAccess();
  *(v33 + v47) = a7;

  v48 = (v33 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion);
  swift_beginAccess();
  *v48 = a8;
  v48[1] = a9;

  v49 = (v33 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics);
  swift_beginAccess();
  *v49 = a10;
  v49[1] = a11;

  v50 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  swift_beginAccess();
  *(v33 + v50) = a12;

  v51 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  *(v33 + v51) = a13 & 1;

  return v33;
}

unint64_t FBKSInteraction.InteractionError.description.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0xD00000000000001BLL;
  }

  v2 = *v0;
  sub_1B014D01C();

  MEMORY[0x1B271E7F0](v2, v1);
  return 0xD000000000000012;
}

unint64_t sub_1B0104A34()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0xD00000000000001BLL;
  }

  v2 = *v0;
  sub_1B014D01C();

  MEMORY[0x1B271E7F0](v2, v1);
  return 0xD000000000000012;
}

unint64_t FBKSInteraction.FeatureDomain.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = 0x432079726F6D654DLL;
  switch(v2)
  {
    case 0uLL:
      v3 = 0xD000000000000010;
      break;
    case 1uLL:
      break;
    case 2uLL:
      v3 = 0x74697277646E6148;
      break;
    case 3uLL:
      v3 = 0xD000000000000010;
      break;
    case 4uLL:
      v3 = 0x4520656369766544;
      break;
    case 5uLL:
      v3 = 0x20676E6974697257;
      break;
    case 6uLL:
      v3 = 0x6552207472616D53;
      break;
    case 7uLL:
      v3 = 0xD000000000000010;
      break;
    case 8uLL:
    case 0x18uLL:
      v3 = 0xD000000000000012;
      break;
    case 9uLL:
      v3 = 0x676948206C69614DLL;
      break;
    case 0xAuLL:
      v3 = 0xD000000000000016;
      break;
    case 0xBuLL:
      v4 = 11;
      goto LABEL_21;
    case 0xCuLL:
    case 0x13uLL:
      v3 = 0xD000000000000018;
      break;
    case 0xDuLL:
      v4 = 10;
LABEL_21:
      v3 = v4 | 0xD000000000000010;
      break;
    case 0xEuLL:
      v3 = 0x615020636967614DLL;
      break;
    case 0xFuLL:
      v3 = 0x7341207466697753;
      break;
    case 0x10uLL:
      v3 = 0x4320736F746F6850;
      break;
    case 0x11uLL:
    case 0x15uLL:
      v3 = 0xD000000000000013;
      break;
    case 0x12uLL:
      v3 = 1769105747;
      break;
    case 0x14uLL:
      v3 = 0x6C616E6F73726550;
      break;
    case 0x16uLL:
      v3 = 0x5320736F746F6850;
      break;
    case 0x17uLL:
      v3 = 0xD000000000000010;
      break;
    case 0x19uLL:
      v3 = 0x4D4C4C206B7341;
      break;
    case 0x1AuLL:
      v3 = 0x6341207472616D53;
      break;
    case 0x1BuLL:
      v3 = 0x68432065646F6358;
      break;
    case 0x1CuLL:
      v3 = 0x65746F6E79654BLL;
      break;
    case 0x1DuLL:
      v3 = 0x7365676150;
      break;
    case 0x1EuLL:
      v3 = 0x737265626D754ELL;
      break;
    case 0x1FuLL:
      v3 = 0x6D726F6665657246;
      break;
    case 0x20uLL:
    case 0x21uLL:
      v3 = 0xD000000000000017;
      break;
    case 0x22uLL:
      v3 = 0x756E452070696B53;
      break;
    case 0x23uLL:
      v3 = 1953719636;
      break;
    default:
      v3 = v1;
      break;
  }

  sub_1B0100B40(v1, v2);
  return v3;
}

double static FBKSInteraction.FeatureDomain.allCases.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t static FBKSInteraction.FeatureDomain.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EB6C4178 = a1;
}

uint64_t sub_1B0104FE4(void **a1)
{
  v1 = *a1;

  swift_beginAccess();
  off_1EB6C4178 = v1;
}

unint64_t sub_1B0105040(char a1)
{
  result = 0x6E65476567616D69;
  switch(a1)
  {
    case 1:
      result = 0x724379726F6D656DLL;
      break;
    case 2:
      result = 0x74697277646E6168;
      break;
    case 3:
      result = 0x73416D6574737973;
      break;
    case 4:
      result = 0x7845656369766564;
      break;
    case 5:
      result = 0x54676E6974697277;
      break;
    case 6:
      result = 0x7065527472616D73;
      break;
    case 7:
      result = 0x6E6547696A6F6D65;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x686769486C69616DLL;
      break;
    case 10:
    case 33:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 12:
    case 23:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0xD000000000000019;
      break;
    case 14:
      result = 0x706150636967616DLL;
      break;
    case 15:
      result = 0x7373417466697773;
      break;
    case 16:
      result = 0x6C43736F746F6870;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0x6874695769726973;
      break;
    case 19:
      result = 0xD000000000000013;
      break;
    case 20:
      result = 0x41515069726973;
      break;
    case 21:
      result = 0xD000000000000012;
      break;
    case 22:
      result = 0x6553736F746F6870;
      break;
    case 24:
      result = 0xD000000000000011;
      break;
    case 25:
      result = 0x4D4C4C6B7361;
      break;
    case 26:
      result = 0x7463417472616D73;
      break;
    case 27:
      result = 0x61684365646F6378;
      break;
    case 28:
      result = 0x65746F6E79656BLL;
      break;
    case 29:
      result = 0x7365676170;
      break;
    case 30:
      result = 0x737265626D756ELL;
      break;
    case 31:
      result = 0x6D726F6665657266;
      break;
    case 32:
      result = 0xD000000000000016;
      break;
    case 34:
      result = 0x6D756E4570696B73;
      break;
    case 35:
      result = 0x7261726F706D6574;
      break;
    case 36:
      result = 1953719668;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B0105474(uint64_t a1)
{
  v2 = sub_1B011AEDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01054B0(uint64_t a1)
{
  v2 = sub_1B011AEDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01054F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0122E04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0105528(uint64_t a1)
{
  v2 = sub_1B011AAEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105564(uint64_t a1)
{
  v2 = sub_1B011AAEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01055A0(uint64_t a1)
{
  v2 = sub_1B011B5C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01055DC(uint64_t a1)
{
  v2 = sub_1B011B5C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105618(uint64_t a1)
{
  v2 = sub_1B011B4C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105654(uint64_t a1)
{
  v2 = sub_1B011B4C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105690(uint64_t a1)
{
  v2 = sub_1B011ACE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01056CC(uint64_t a1)
{
  v2 = sub_1B011ACE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105708(uint64_t a1)
{
  v2 = sub_1B011B668();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105744(uint64_t a1)
{
  v2 = sub_1B011B668();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105780(uint64_t a1)
{
  v2 = sub_1B011B710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01057BC(uint64_t a1)
{
  v2 = sub_1B011B710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01057F8(uint64_t a1)
{
  v2 = sub_1B011AF84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105834(uint64_t a1)
{
  v2 = sub_1B011AF84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105870(uint64_t a1)
{
  v2 = sub_1B011ADE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01058AC(uint64_t a1)
{
  v2 = sub_1B011ADE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01058E8(uint64_t a1)
{
  v2 = sub_1B011B278();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105924(uint64_t a1)
{
  v2 = sub_1B011B278();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105960(uint64_t a1)
{
  v2 = sub_1B011B41C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B010599C(uint64_t a1)
{
  v2 = sub_1B011B41C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01059D8(uint64_t a1)
{
  v2 = sub_1B011B470();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105A14(uint64_t a1)
{
  v2 = sub_1B011B470();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105A50(uint64_t a1)
{
  v2 = sub_1B011B6BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105A8C(uint64_t a1)
{
  v2 = sub_1B011B6BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105AC8(uint64_t a1)
{
  v2 = sub_1B011B3C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105B04(uint64_t a1)
{
  v2 = sub_1B011B3C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105B40(uint64_t a1)
{
  v2 = sub_1B011AF30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105B7C(uint64_t a1)
{
  v2 = sub_1B011AF30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105BB8(uint64_t a1)
{
  v2 = sub_1B011B17C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105BF4(uint64_t a1)
{
  v2 = sub_1B011B17C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105C30(uint64_t a1)
{
  v2 = sub_1B011B2CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105C6C(uint64_t a1)
{
  v2 = sub_1B011B2CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105CA8(uint64_t a1)
{
  v2 = sub_1B011B320();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105CE4(uint64_t a1)
{
  v2 = sub_1B011B320();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105D20(uint64_t a1)
{
  v2 = sub_1B011B374();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105D5C(uint64_t a1)
{
  v2 = sub_1B011B374();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105D98(uint64_t a1)
{
  v2 = sub_1B011AD38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105DD4(uint64_t a1)
{
  v2 = sub_1B011AD38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105E10(uint64_t a1)
{
  v2 = sub_1B011AD8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105E4C(uint64_t a1)
{
  v2 = sub_1B011AD8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105E88(uint64_t a1)
{
  v2 = sub_1B011B1D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105EC4(uint64_t a1)
{
  v2 = sub_1B011B1D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105F00(uint64_t a1)
{
  v2 = sub_1B011AFD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105F3C(uint64_t a1)
{
  v2 = sub_1B011AFD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105F78(uint64_t a1)
{
  v2 = sub_1B011B080();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0105FB4(uint64_t a1)
{
  v2 = sub_1B011B080();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0105FF0(uint64_t a1)
{
  v2 = sub_1B011B128();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B010602C(uint64_t a1)
{
  v2 = sub_1B011B128();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0106068(uint64_t a1)
{
  v2 = sub_1B011ABE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01060A4(uint64_t a1)
{
  v2 = sub_1B011ABE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01060E0(uint64_t a1)
{
  v2 = sub_1B011AE88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B010611C(uint64_t a1)
{
  v2 = sub_1B011AE88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0106158(uint64_t a1)
{
  v2 = sub_1B011B518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0106194(uint64_t a1)
{
  v2 = sub_1B011B518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01061D0(uint64_t a1)
{
  v2 = sub_1B011B224();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B010620C(uint64_t a1)
{
  v2 = sub_1B011B224();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0106248(uint64_t a1)
{
  v2 = sub_1B011B614();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0106284(uint64_t a1)
{
  v2 = sub_1B011B614();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01062D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B014D25C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B0106358(uint64_t a1)
{
  v2 = sub_1B011AB94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0106394(uint64_t a1)
{
  v2 = sub_1B011AB94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01063D0(uint64_t a1)
{
  v2 = sub_1B011AB40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B010640C(uint64_t a1)
{
  v2 = sub_1B011AB40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0106448(uint64_t a1)
{
  v2 = sub_1B011AC3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0106484(uint64_t a1)
{
  v2 = sub_1B011AC3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01064C0(uint64_t a1)
{
  v2 = sub_1B011B02C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01064FC(uint64_t a1)
{
  v2 = sub_1B011B02C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0106538(uint64_t a1)
{
  v2 = sub_1B011AC90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0106574(uint64_t a1)
{
  v2 = sub_1B011AC90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01065B0(uint64_t a1)
{
  v2 = sub_1B011B56C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01065EC(uint64_t a1)
{
  v2 = sub_1B011B56C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0106628(uint64_t a1)
{
  v2 = sub_1B011B0D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0106664(uint64_t a1)
{
  v2 = sub_1B011B0D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01066A0(uint64_t a1)
{
  v2 = sub_1B011AE34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01066DC(uint64_t a1)
{
  v2 = sub_1B011AE34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKSInteraction.FeatureDomain.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C41C0, &qword_1B0151608);
  v204 = *(v4 - 8);
  v205 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v203 = &v97 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C41C8, &qword_1B0151610);
  v201 = *(v6 - 8);
  v202 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v200 = &v97 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C41D0, &qword_1B0151618);
  v198 = *(v8 - 8);
  v199 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v197 = &v97 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C41D8, &qword_1B0151620);
  v195 = *(v10 - 8);
  v196 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v194 = &v97 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C41E0, &qword_1B0151628);
  v192 = *(v12 - 8);
  v193 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v191 = &v97 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C41E8, &qword_1B0151630);
  v189 = *(v14 - 8);
  v190 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v188 = &v97 - v15;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C41F0, &qword_1B0151638);
  v186 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v185 = &v97 - v16;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C41F8, &qword_1B0151640);
  v183 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v182 = &v97 - v17;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4200, &qword_1B0151648);
  v180 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v179 = &v97 - v18;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4208, &qword_1B0151650);
  v177 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v176 = &v97 - v19;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4210, &qword_1B0151658);
  v174 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v173 = &v97 - v20;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4218, &qword_1B0151660);
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v170 = &v97 - v21;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4220, &qword_1B0151668);
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v167 = &v97 - v22;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4228, &qword_1B0151670);
  v165 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v164 = &v97 - v23;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4230, &qword_1B0151678);
  v162 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v161 = &v97 - v24;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4238, &qword_1B0151680);
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v158 = &v97 - v25;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4240, &qword_1B0151688);
  v156 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v155 = &v97 - v26;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4248, &qword_1B0151690);
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v152 = &v97 - v27;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4250, &qword_1B0151698);
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v149 = &v97 - v28;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4258, &qword_1B01516A0);
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v146 = &v97 - v29;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4260, &qword_1B01516A8);
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v143 = &v97 - v30;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4268, &qword_1B01516B0);
  v141 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v140 = &v97 - v31;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4270, &qword_1B01516B8);
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v137 = &v97 - v32;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4278, &qword_1B01516C0);
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v134 = &v97 - v33;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4280, &qword_1B01516C8);
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v131 = &v97 - v34;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4288, &qword_1B01516D0);
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v128 = &v97 - v35;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4290, &qword_1B01516D8);
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v125 = &v97 - v36;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4298, &qword_1B01516E0);
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v122 = &v97 - v37;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C42A0, &qword_1B01516E8);
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v119 = &v97 - v38;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C42A8, &qword_1B01516F0);
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v116 = &v97 - v39;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C42B0, &qword_1B01516F8);
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v97 - v40;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C42B8, &qword_1B0151700);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v97 - v41;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C42C0, &qword_1B0151708);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v97 - v42;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C42C8, &qword_1B0151710);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v97 - v43;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C42D0, &qword_1B0151718);
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v97 - v44;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C42D8, &qword_1B0151720);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v46 = &v97 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C42E0, &qword_1B0151728);
  v98 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v97 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C42E8, &qword_1B0151730);
  v51 = *(v50 - 8);
  v207 = v50;
  v208 = v51;
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v97 - v52;
  v54 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B011AAEC();
  v206 = v53;
  sub_1B014D35C();
  switch(v54)
  {
    case 0:
      v210 = 0;
      sub_1B011B710();
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      (*(v98 + 8))(v49, v47);
      goto LABEL_40;
    case 1:
      v210 = 1;
      sub_1B011B6BC();
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v99 + 8);
      v62 = v46;
      v63 = &v132;
      goto LABEL_39;
    case 2:
      v210 = 2;
      sub_1B011B668();
      v72 = v101;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v102 + 8);
      v62 = v72;
      v63 = &v135;
      goto LABEL_39;
    case 3:
      v210 = 3;
      sub_1B011B614();
      v74 = v104;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v105 + 8);
      v62 = v74;
      v63 = &v138;
      goto LABEL_39;
    case 4:
      v210 = 4;
      sub_1B011B5C0();
      v67 = v107;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v108 + 8);
      v62 = v67;
      v63 = &v141;
      goto LABEL_39;
    case 5:
      v210 = 5;
      sub_1B011B56C();
      v78 = v110;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v111 + 8);
      v62 = v78;
      v63 = &v144;
      goto LABEL_39;
    case 6:
      v210 = 6;
      sub_1B011B518();
      v81 = v113;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v114 + 8);
      v62 = v81;
      v63 = &v147;
      goto LABEL_39;
    case 7:
      v210 = 7;
      sub_1B011B4C4();
      v75 = v116;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v117 + 8);
      v62 = v75;
      v63 = &v150;
      goto LABEL_39;
    case 8:
      v210 = 8;
      sub_1B011B470();
      v84 = v119;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v120 + 8);
      v62 = v84;
      v63 = &v153;
      goto LABEL_39;
    case 9:
      v210 = 9;
      sub_1B011B41C();
      v69 = v122;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v123 + 8);
      v62 = v69;
      v63 = &v156;
      goto LABEL_39;
    case 10:
      v210 = 10;
      sub_1B011B3C8();
      v83 = v125;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v126 + 8);
      v62 = v83;
      v63 = &v159;
      goto LABEL_39;
    case 11:
      v210 = 11;
      sub_1B011B374();
      v66 = v128;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v129 + 8);
      v62 = v66;
      v63 = &v162;
      goto LABEL_39;
    case 12:
      v210 = 12;
      sub_1B011B320();
      v68 = v131;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v132 + 8);
      v62 = v68;
      v63 = &v165;
      goto LABEL_39;
    case 13:
      v210 = 13;
      sub_1B011B2CC();
      v80 = v134;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v135 + 8);
      v62 = v80;
      v63 = &v168;
      goto LABEL_39;
    case 14:
      v210 = 14;
      sub_1B011B278();
      v65 = v137;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v138 + 8);
      v62 = v65;
      v63 = &v171;
      goto LABEL_39;
    case 15:
      v210 = 15;
      sub_1B011B224();
      v73 = v140;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v141 + 8);
      v62 = v73;
      v63 = &v174;
      goto LABEL_39;
    case 16:
      v210 = 16;
      sub_1B011B1D0();
      v64 = v143;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v144 + 8);
      v62 = v64;
      v63 = &v177;
      goto LABEL_39;
    case 17:
      v210 = 17;
      sub_1B011B17C();
      v76 = v146;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v147 + 8);
      v62 = v76;
      v63 = &v180;
      goto LABEL_39;
    case 18:
      v210 = 18;
      sub_1B011B128();
      v82 = v149;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v150 + 8);
      v62 = v82;
      v63 = &v183;
      goto LABEL_39;
    case 19:
      v210 = 19;
      sub_1B011B0D4();
      v87 = v152;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v153 + 8);
      v62 = v87;
      v63 = &v186;
      goto LABEL_39;
    case 20:
      v210 = 20;
      sub_1B011B080();
      v77 = v155;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v156 + 8);
      v62 = v77;
      v63 = &v189;
      goto LABEL_39;
    case 21:
      v210 = 21;
      sub_1B011B02C();
      v79 = v158;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v159 + 8);
      v62 = v79;
      v63 = &v192;
      goto LABEL_39;
    case 22:
      v210 = 22;
      sub_1B011AFD8();
      v86 = v161;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v162 + 8);
      v62 = v86;
      v63 = &v195;
      goto LABEL_39;
    case 23:
      v210 = 23;
      sub_1B011AF84();
      v88 = v164;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v165 + 8);
      v62 = v88;
      v63 = &v198;
      goto LABEL_39;
    case 24:
      v210 = 24;
      sub_1B011AF30();
      v71 = v167;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v168 + 8);
      v62 = v71;
      v63 = &v201;
      goto LABEL_39;
    case 25:
      v210 = 25;
      sub_1B011AEDC();
      v70 = v170;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v171 + 8);
      v62 = v70;
      v63 = &v204;
      goto LABEL_39;
    case 26:
      v210 = 26;
      sub_1B011AE88();
      v91 = v173;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v174 + 8);
      v62 = v91;
      v63 = &v207;
      goto LABEL_39;
    case 27:
      v210 = 27;
      sub_1B011AE34();
      v60 = v176;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v177 + 8);
      v62 = v60;
      v63 = &v209;
      goto LABEL_39;
    case 28:
      v210 = 28;
      sub_1B011ADE0();
      v89 = v179;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v180 + 8);
      v62 = v89;
      v63 = &v211;
      goto LABEL_39;
    case 29:
      v210 = 29;
      sub_1B011AD8C();
      v90 = v182;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v183 + 8);
      v62 = v90;
      v63 = &v212;
      goto LABEL_39;
    case 30:
      v210 = 30;
      sub_1B011AD38();
      v85 = v185;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v61 = *(v186 + 8);
      v62 = v85;
      v63 = &v213;
LABEL_39:
      v61(v62, *(v63 - 32));
      goto LABEL_40;
    case 31:
      v210 = 31;
      sub_1B011ACE4();
      v57 = v188;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v59 = v189;
      v58 = v190;
      goto LABEL_32;
    case 32:
      v210 = 32;
      sub_1B011AC90();
      v57 = v191;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v59 = v192;
      v58 = v193;
      goto LABEL_32;
    case 33:
      v210 = 33;
      sub_1B011AC3C();
      v57 = v194;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v59 = v195;
      v58 = v196;
      goto LABEL_32;
    case 34:
      v210 = 34;
      sub_1B011ABE8();
      v57 = v197;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v59 = v198;
      v58 = v199;
      goto LABEL_32;
    case 35:
      v210 = 36;
      sub_1B011AB40();
      v57 = v203;
      v56 = v206;
      v55 = v207;
      sub_1B014D19C();
      v59 = v204;
      v58 = v205;
LABEL_32:
      (*(v59 + 8))(v57, v58);
LABEL_40:
      result = (*(v208 + 8))(v56, v55);
      break;
    default:
      v210 = 35;
      sub_1B011AB94();
      v93 = v200;
      v95 = v206;
      v94 = v207;
      sub_1B014D19C();
      v96 = v202;
      sub_1B014D1DC();
      (*(v201 + 8))(v93, v96);
      result = (*(v208 + 8))(v95, v94);
      break;
  }

  return result;
}

uint64_t FBKSInteraction.FeatureDomain.hash(into:)(uint64_t a1)
{
  switch(*(v1 + 8))
  {
    case 0:
      v2 = 0;
      goto LABEL_38;
    case 1:
      v2 = 1;
      goto LABEL_38;
    case 2:
      v2 = 2;
      goto LABEL_38;
    case 3:
      v2 = 3;
      goto LABEL_38;
    case 4:
      v2 = 4;
      goto LABEL_38;
    case 5:
      v2 = 5;
      goto LABEL_38;
    case 6:
      v2 = 6;
      goto LABEL_38;
    case 7:
      v2 = 7;
      goto LABEL_38;
    case 8:
      v2 = 8;
      goto LABEL_38;
    case 9:
      v2 = 9;
      goto LABEL_38;
    case 0xALL:
      v2 = 10;
      goto LABEL_38;
    case 0xBLL:
      v2 = 11;
      goto LABEL_38;
    case 0xCLL:
      v2 = 12;
      goto LABEL_38;
    case 0xDLL:
      v2 = 13;
      goto LABEL_38;
    case 0xELL:
      v2 = 14;
      goto LABEL_38;
    case 0xFLL:
      v2 = 15;
      goto LABEL_38;
    case 0x10:
      v2 = 16;
      goto LABEL_38;
    case 0x11:
      v2 = 17;
      goto LABEL_38;
    case 0x12:
      v2 = 18;
      goto LABEL_38;
    case 0x13:
      v2 = 19;
      goto LABEL_38;
    case 0x14:
      v2 = 20;
      goto LABEL_38;
    case 0x15:
      v2 = 21;
      goto LABEL_38;
    case 0x16:
      v2 = 22;
      goto LABEL_38;
    case 0x17:
      v2 = 23;
      goto LABEL_38;
    case 0x18:
      v2 = 24;
      goto LABEL_38;
    case 0x19:
      v2 = 25;
      goto LABEL_38;
    case 0x1ALL:
      v2 = 26;
      goto LABEL_38;
    case 0x1BLL:
      v2 = 27;
      goto LABEL_38;
    case 0x1CLL:
      v2 = 28;
      goto LABEL_38;
    case 0x1DLL:
      v2 = 29;
      goto LABEL_38;
    case 0x1ELL:
      v2 = 30;
      goto LABEL_38;
    case 0x1FLL:
      v2 = 31;
      goto LABEL_38;
    case 0x20:
      v2 = 32;
      goto LABEL_38;
    case 0x21:
      v2 = 33;
      goto LABEL_38;
    case 0x22:
      v2 = 34;
      goto LABEL_38;
    case 0x23:
      v2 = 36;
LABEL_38:
      result = MEMORY[0x1B271EE00](v2);
      break;
    default:
      MEMORY[0x1B271EE00](35);

      result = sub_1B014CCAC();
      break;
  }

  return result;
}

uint64_t FBKSInteraction.FeatureDomain.hashValue.getter()
{
  v3 = *v0;
  sub_1B014D2FC();
  FBKSInteraction.FeatureDomain.hash(into:)(v2);
  return sub_1B014D33C();
}

uint64_t FBKSInteraction.FeatureDomain.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v253 = a2;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C43E8, &qword_1B0151738);
  v215 = *(v252 - 8);
  MEMORY[0x1EEE9AC00](v252);
  v248 = &v141 - v3;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C43F0, &qword_1B0151740);
  v214 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216);
  v247 = &v141 - v4;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C43F8, &qword_1B0151748);
  v212 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v246 = &v141 - v5;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4400, &qword_1B0151750);
  v210 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v245 = &v141 - v6;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4408, &qword_1B0151758);
  v208 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v244 = &v141 - v7;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4410, &qword_1B0151760);
  v206 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v243 = &v141 - v8;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4418, &qword_1B0151768);
  v204 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v242 = &v141 - v9;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4420, &qword_1B0151770);
  v202 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v241 = &v141 - v10;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4428, &qword_1B0151778);
  v200 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v240 = &v141 - v11;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4430, &qword_1B0151780);
  v198 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v239 = &v141 - v12;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4438, &qword_1B0151788);
  v196 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v238 = &v141 - v13;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4440, &qword_1B0151790);
  v194 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v237 = &v141 - v14;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4448, &qword_1B0151798);
  v192 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v236 = &v141 - v15;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4450, &qword_1B01517A0);
  v190 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v235 = &v141 - v16;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4458, &qword_1B01517A8);
  v188 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v234 = &v141 - v17;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4460, &qword_1B01517B0);
  v186 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v233 = &v141 - v18;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4468, &qword_1B01517B8);
  v184 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v232 = &v141 - v19;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4470, &qword_1B01517C0);
  v182 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v231 = &v141 - v20;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4478, &qword_1B01517C8);
  v180 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v230 = &v141 - v21;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4480, &qword_1B01517D0);
  v178 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v229 = &v141 - v22;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4488, &qword_1B01517D8);
  v176 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v228 = &v141 - v23;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4490, &qword_1B01517E0);
  v174 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v227 = &v141 - v24;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4498, &qword_1B01517E8);
  v172 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v226 = &v141 - v25;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C44A0, &qword_1B01517F0);
  v170 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v225 = &v141 - v26;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C44A8, &qword_1B01517F8);
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v224 = &v141 - v27;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C44B0, &qword_1B0151800);
  v166 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v223 = &v141 - v28;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C44B8, &qword_1B0151808);
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v222 = &v141 - v29;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C44C0, &qword_1B0151810);
  v162 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v251 = &v141 - v30;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C44C8, &qword_1B0151818);
  v160 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v250 = &v141 - v31;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C44D0, &qword_1B0151820);
  v159 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v221 = &v141 - v32;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C44D8, &qword_1B0151828);
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v220 = &v141 - v33;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C44E0, &qword_1B0151830);
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v249 = &v141 - v34;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C44E8, &qword_1B0151838);
  v152 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v219 = &v141 - v35;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C44F0, &qword_1B0151840);
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v218 = &v141 - v36;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C44F8, &qword_1B0151848);
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v217 = &v141 - v37;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4500, &qword_1B0151850);
  v146 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v39 = &v141 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4508, &qword_1B0151858);
  v145 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v141 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4510, &unk_1B0151860);
  v44 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v141 - v45;
  v47 = a1[3];
  v255 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v47);
  sub_1B011AAEC();
  v48 = v254;
  sub_1B014D34C();
  if (v48)
  {
LABEL_8:
    v64 = v255;
    return __swift_destroy_boxed_opaque_existential_0(v64);
  }

  v142 = v42;
  v141 = v40;
  v143 = v39;
  v49 = v249;
  v50 = v250;
  v51 = v251;
  v144 = 0;
  v53 = v252;
  v52 = v253;
  v254 = v44;
  v54 = sub_1B014D18C();
  v55 = (2 * *(v54 + 16)) | 1;
  v256 = v54;
  v257 = v54 + 32;
  v258 = 0;
  v259 = v55;
  v56 = sub_1B00D4A68();
  if (v258 != v259 >> 1)
  {
LABEL_6:
    v61 = sub_1B014D05C();
    swift_allocError();
    v63 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BE8, &qword_1B014F3B0);
    *v63 = &type metadata for FBKSInteraction.FeatureDomain;
    sub_1B014D0FC();
    sub_1B014D04C();
    (*(*(v61 - 8) + 104))(v63, *MEMORY[0x1E69E6AF8], v61);
    swift_willThrow();
LABEL_7:
    (*(v254 + 8))(v46, v43);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  switch(v56)
  {
    case 0:
      v260 = 0;
      sub_1B011B710();
      v57 = v142;
      v58 = v144;
      sub_1B014D0EC();
      if (v58)
      {
        goto LABEL_7;
      }

      (*(v145 + 8))(v57, v141);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 0;
      goto LABEL_82;
    case 1:
      v260 = 1;
      sub_1B011B6BC();
      v104 = v143;
      v105 = v144;
      sub_1B014D0EC();
      if (v105)
      {
        goto LABEL_7;
      }

      (*(v146 + 8))(v104, v147);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 1;
      goto LABEL_82;
    case 2:
      v260 = 2;
      sub_1B011B668();
      v96 = v217;
      v97 = v144;
      sub_1B014D0EC();
      if (v97)
      {
        goto LABEL_7;
      }

      (*(v148 + 8))(v96, v149);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 2;
      goto LABEL_82;
    case 3:
      v260 = 3;
      sub_1B011B614();
      v100 = v218;
      v101 = v144;
      sub_1B014D0EC();
      if (v101)
      {
        goto LABEL_7;
      }

      (*(v150 + 8))(v100, v151);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 3;
      goto LABEL_82;
    case 4:
      v260 = 4;
      sub_1B011B5C0();
      v87 = v219;
      v88 = v144;
      sub_1B014D0EC();
      if (v88)
      {
        goto LABEL_7;
      }

      (*(v152 + 8))(v87, v153);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 4;
      goto LABEL_82;
    case 5:
      v260 = 5;
      sub_1B011B56C();
      v112 = v144;
      sub_1B014D0EC();
      if (v112)
      {
        goto LABEL_7;
      }

      (*(v155 + 8))(v49, v156);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 5;
      goto LABEL_82;
    case 6:
      v260 = 6;
      sub_1B011B518();
      v117 = v220;
      v118 = v144;
      sub_1B014D0EC();
      if (v118)
      {
        goto LABEL_7;
      }

      (*(v157 + 8))(v117, v158);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 6;
      goto LABEL_82;
    case 7:
      v260 = 7;
      sub_1B011B4C4();
      v102 = v221;
      v103 = v144;
      sub_1B014D0EC();
      if (v103)
      {
        goto LABEL_7;
      }

      (*(v159 + 8))(v102, v154);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 7;
      goto LABEL_82;
    case 8:
      v260 = 8;
      sub_1B011B470();
      v123 = v144;
      sub_1B014D0EC();
      if (v123)
      {
        goto LABEL_7;
      }

      (*(v160 + 8))(v50, v161);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 8;
      goto LABEL_82;
    case 9:
      v260 = 9;
      sub_1B011B41C();
      v91 = v144;
      sub_1B014D0EC();
      if (v91)
      {
        goto LABEL_7;
      }

      (*(v162 + 8))(v51, v163);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 9;
      goto LABEL_82;
    case 10:
      v260 = 10;
      sub_1B011B3C8();
      v121 = v222;
      v122 = v144;
      sub_1B014D0EC();
      if (v122)
      {
        goto LABEL_7;
      }

      (*(v164 + 8))(v121, v165);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 10;
      goto LABEL_82;
    case 11:
      v260 = 11;
      sub_1B011B374();
      v85 = v223;
      v86 = v144;
      sub_1B014D0EC();
      if (v86)
      {
        goto LABEL_7;
      }

      (*(v166 + 8))(v85, v167);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 11;
      goto LABEL_82;
    case 12:
      v260 = 12;
      sub_1B011B320();
      v89 = v224;
      v90 = v144;
      sub_1B014D0EC();
      if (v90)
      {
        goto LABEL_7;
      }

      (*(v168 + 8))(v89, v169);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 12;
      goto LABEL_82;
    case 13:
      v260 = 13;
      sub_1B011B2CC();
      v115 = v225;
      v116 = v144;
      sub_1B014D0EC();
      if (v116)
      {
        goto LABEL_7;
      }

      (*(v170 + 8))(v115, v171);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 13;
      goto LABEL_82;
    case 14:
      v260 = 14;
      sub_1B011B278();
      v81 = v226;
      v82 = v144;
      sub_1B014D0EC();
      if (v82)
      {
        goto LABEL_7;
      }

      (*(v172 + 8))(v81, v173);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 14;
      goto LABEL_82;
    case 15:
      v260 = 15;
      sub_1B011B224();
      v98 = v227;
      v99 = v144;
      sub_1B014D0EC();
      if (v99)
      {
        goto LABEL_7;
      }

      (*(v174 + 8))(v98, v175);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 15;
      goto LABEL_82;
    case 16:
      v260 = 16;
      sub_1B011B1D0();
      v79 = v228;
      v80 = v144;
      sub_1B014D0EC();
      if (v80)
      {
        goto LABEL_7;
      }

      (*(v176 + 8))(v79, v177);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 16;
      goto LABEL_82;
    case 17:
      v260 = 17;
      sub_1B011B17C();
      v108 = v229;
      v109 = v144;
      sub_1B014D0EC();
      if (v109)
      {
        goto LABEL_7;
      }

      (*(v178 + 8))(v108, v179);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 17;
      goto LABEL_82;
    case 18:
      v260 = 18;
      sub_1B011B128();
      v119 = v230;
      v120 = v144;
      sub_1B014D0EC();
      if (v120)
      {
        goto LABEL_7;
      }

      (*(v180 + 8))(v119, v181);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 18;
      goto LABEL_82;
    case 19:
      v260 = 19;
      sub_1B011B0D4();
      v130 = v231;
      v131 = v144;
      sub_1B014D0EC();
      if (v131)
      {
        goto LABEL_7;
      }

      (*(v182 + 8))(v130, v183);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 19;
      goto LABEL_82;
    case 20:
      v260 = 20;
      sub_1B011B080();
      v110 = v232;
      v111 = v144;
      sub_1B014D0EC();
      if (v111)
      {
        goto LABEL_7;
      }

      (*(v184 + 8))(v110, v185);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 20;
      goto LABEL_82;
    case 21:
      v260 = 21;
      sub_1B011B02C();
      v113 = v233;
      v114 = v144;
      sub_1B014D0EC();
      if (v114)
      {
        goto LABEL_7;
      }

      (*(v186 + 8))(v113, v187);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 21;
      goto LABEL_82;
    case 22:
      v260 = 22;
      sub_1B011AFD8();
      v128 = v234;
      v129 = v144;
      sub_1B014D0EC();
      if (v129)
      {
        goto LABEL_7;
      }

      (*(v188 + 8))(v128, v189);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 22;
      goto LABEL_82;
    case 23:
      v260 = 23;
      sub_1B011AF84();
      v132 = v235;
      v133 = v144;
      sub_1B014D0EC();
      if (v133)
      {
        goto LABEL_7;
      }

      (*(v190 + 8))(v132, v191);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 23;
      goto LABEL_82;
    case 24:
      v260 = 24;
      sub_1B011AF30();
      v94 = v236;
      v95 = v144;
      sub_1B014D0EC();
      if (v95)
      {
        goto LABEL_7;
      }

      (*(v192 + 8))(v94, v193);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 24;
      goto LABEL_82;
    case 25:
      v260 = 25;
      sub_1B011AEDC();
      v92 = v237;
      v93 = v144;
      sub_1B014D0EC();
      if (v93)
      {
        goto LABEL_7;
      }

      (*(v194 + 8))(v92, v195);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 25;
      goto LABEL_82;
    case 26:
      v260 = 26;
      sub_1B011AE88();
      v138 = v238;
      v139 = v144;
      sub_1B014D0EC();
      if (v139)
      {
        goto LABEL_7;
      }

      (*(v196 + 8))(v138, v197);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 26;
      goto LABEL_82;
    case 27:
      v260 = 27;
      sub_1B011AE34();
      v75 = v239;
      v76 = v144;
      sub_1B014D0EC();
      if (v76)
      {
        goto LABEL_7;
      }

      (*(v198 + 8))(v75, v199);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 27;
      goto LABEL_82;
    case 28:
      v260 = 28;
      sub_1B011ADE0();
      v134 = v240;
      v135 = v144;
      sub_1B014D0EC();
      if (v135)
      {
        goto LABEL_7;
      }

      (*(v200 + 8))(v134, v201);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 28;
      goto LABEL_82;
    case 29:
      v260 = 29;
      sub_1B011AD8C();
      v136 = v241;
      v137 = v144;
      sub_1B014D0EC();
      if (v137)
      {
        goto LABEL_7;
      }

      (*(v202 + 8))(v136, v203);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 29;
      goto LABEL_82;
    case 30:
      v260 = 30;
      sub_1B011AD38();
      v124 = v242;
      v125 = v144;
      sub_1B014D0EC();
      if (v125)
      {
        goto LABEL_7;
      }

      (*(v204 + 8))(v124, v205);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 30;
      goto LABEL_82;
    case 31:
      v260 = 31;
      sub_1B011ACE4();
      v106 = v243;
      v107 = v144;
      sub_1B014D0EC();
      if (v107)
      {
        goto LABEL_7;
      }

      (*(v206 + 8))(v106, v207);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 31;
      goto LABEL_82;
    case 32:
      v260 = 32;
      sub_1B011AC90();
      v126 = v244;
      v127 = v144;
      sub_1B014D0EC();
      if (v127)
      {
        goto LABEL_7;
      }

      (*(v208 + 8))(v126, v209);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 32;
      goto LABEL_82;
    case 33:
      v260 = 33;
      sub_1B011AC3C();
      v83 = v245;
      v84 = v144;
      sub_1B014D0EC();
      if (v84)
      {
        goto LABEL_7;
      }

      (*(v210 + 8))(v83, v211);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 33;
      goto LABEL_82;
    case 34:
      v260 = 34;
      sub_1B011ABE8();
      v77 = v246;
      v78 = v144;
      sub_1B014D0EC();
      if (v78)
      {
        goto LABEL_7;
      }

      (*(v212 + 8))(v77, v213);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 34;
      goto LABEL_82;
    case 35:
      v260 = 35;
      sub_1B011AB94();
      v66 = v247;
      v67 = v144;
      sub_1B014D0EC();
      if (v67)
      {
        goto LABEL_7;
      }

      v68 = v216;
      v69 = sub_1B014D13C();
      v70 = v66;
      v72 = v254;
      v71 = v255;
      v59 = v69;
      v60 = v140;
      (*(v214 + 8))(v70, v68);
      (*(v72 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v64 = v71;
      goto LABEL_83;
    case 36:
      v260 = 36;
      sub_1B011AB40();
      v73 = v248;
      v74 = v144;
      sub_1B014D0EC();
      if (v74)
      {
        goto LABEL_7;
      }

      (*(v215 + 8))(v73, v53);
      (*(v254 + 8))(v46, v43);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 35;
LABEL_82:
      v64 = v255;
LABEL_83:
      *v52 = v59;
      v52[1] = v60;
      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_0(v64);
}

double sub_1B010B860@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EB6C4178;

  return result;
}

uint64_t sub_1B010B8B4()
{
  v3 = *v0;
  sub_1B014D2FC();
  FBKSInteraction.FeatureDomain.hash(into:)(v2);
  return sub_1B014D33C();
}

uint64_t sub_1B010B904(uint64_t a1)
{
  v4 = *v1;
  sub_1B014D2FC();
  FBKSInteraction.FeatureDomain.hash(into:)(v3);
  return sub_1B014D33C();
}

double FBKSInteraction.StructuredValue.init(_:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  static FBKSInteraction.StructuredValue.wrap(_:)(a1, &v7);
  __swift_destroy_boxed_opaque_existential_0(a1);
  if (!v2)
  {
    v6 = v8;
    result = *&v7;
    *a2 = v7;
    *(a2 + 16) = v6;
  }

  return result;
}

void *static FBKSInteraction.StructuredValue.wrap(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B00D20D0(a1, v55);
  result = swift_dynamicCast();
  if (result)
  {
    *a2 = LOBYTE(v54[0]);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    return result;
  }

  sub_1B00D20D0(a1, v55);
  result = swift_dynamicCast();
  if (result)
  {
    *a2 = v54[0];
    *(a2 + 8) = 0;
    v6 = 1;
LABEL_37:
    *(a2 + 16) = v6;
    return result;
  }

  sub_1B00D20D0(a1, v55);
  result = swift_dynamicCast();
  if (result)
  {
    *a2 = v54[0];
    *(a2 + 8) = 0;
    v6 = 2;
    goto LABEL_37;
  }

  sub_1B00D20D0(a1, v55);
  result = swift_dynamicCast();
  if (result)
  {
    v7 = v54[1];
    *a2 = v54[0];
    *(a2 + 8) = v7;
    v6 = 3;
    goto LABEL_37;
  }

  sub_1B00D20D0(a1, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4518, &qword_1B0151870);
  if (swift_dynamicCast())
  {
    v8 = v54[0];
    v9 = *(v54[0] + 16);
    if (!v9)
    {

      v11 = MEMORY[0x1E69E7CC0];
LABEL_36:
      *a2 = v11;
      *(a2 + 8) = 0;
      v6 = 4;
      goto LABEL_37;
    }

    v56 = MEMORY[0x1E69E7CC0];
    result = sub_1B00D1718(0, v9, 0);
    v10 = 0;
    v11 = v56;
    v12 = v54[0] + 32;
    while (v10 < *(v8 + 16))
    {
      sub_1B00D20D0(v12, v55);
      sub_1B00D20D0(v55, v54);
      static FBKSInteraction.StructuredValue.wrap(_:)(v54, &v52);
      if (v2)
      {

        __swift_destroy_boxed_opaque_existential_0(v54);
        __swift_destroy_boxed_opaque_existential_0(v55);
      }

      __swift_destroy_boxed_opaque_existential_0(v54);
      result = __swift_destroy_boxed_opaque_existential_0(v55);
      v13 = v52;
      v14 = v53;
      v56 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v49 = v52;
        result = sub_1B00D1718((v15 > 1), v16 + 1, 1);
        v13 = v49;
        v17 = v16 + 1;
        v11 = v56;
      }

      ++v10;
      *(v11 + 16) = v17;
      v18 = v11 + 24 * v16;
      *(v18 + 32) = v13;
      *(v18 + 48) = v14;
      v12 += 32;
      if (v9 == v10)
      {

        goto LABEL_36;
      }
    }

    goto LABEL_40;
  }

  sub_1B00D20D0(a1, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4520, &qword_1B0151878);
  if (!swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v55[0] = swift_getDynamicType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4528, &qword_1B0151880);
    v40 = sub_1B014CC6C();
    v42 = v41;
    sub_1B00D20D0(a1, v55);
    v43 = sub_1B014CC6C();
    v45 = v44;
    sub_1B011B764();
    swift_allocError();
    *v46 = v40;
    v46[1] = v42;
    v46[2] = v43;
    v46[3] = v45;
    return swift_willThrow();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4538, &qword_1B0151888);
  result = sub_1B014D0AC();
  v19 = 0;
  v21 = v54[0] + 64;
  v20 = *(v54[0] + 64);
  v51 = v54[0];
  v22 = 1 << *(v54[0] + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v20;
  v25 = (v22 + 63) >> 6;
  v48 = result + 8;
  v50 = result;
  if ((v23 & v20) == 0)
  {
LABEL_23:
    v27 = v19;
    while (1)
    {
      v19 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v19 >= v25)
      {
        v47 = result;

        *a2 = v47;
        *(a2 + 8) = 0;
        v6 = 5;
        goto LABEL_37;
      }

      v28 = *(v21 + 8 * v19);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v24 = (v28 - 1) & v28;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return result;
  }

  while (1)
  {
    v26 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
LABEL_28:
    v29 = v26 | (v19 << 6);
    v30 = (*(v51 + 48) + 16 * v29);
    v31 = *v30;
    v32 = v30[1];
    sub_1B00D20D0(*(v51 + 56) + 32 * v29, v55);
    sub_1B00D20D0(v55, v54);

    static FBKSInteraction.StructuredValue.wrap(_:)(v54, &v52);
    if (v2)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_0(v54);
    __swift_destroy_boxed_opaque_existential_0(v55);
    v33 = v53;
    v34 = v52;
    result = v50;
    *(v48 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v35 = (v50[6] + 16 * v29);
    *v35 = v31;
    v35[1] = v32;
    v36 = v50[7] + 24 * v29;
    *v36 = v34;
    *(v36 + 16) = v33;
    v37 = v50[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_41;
    }

    v50[2] = v39;
    if (!v24)
    {
      goto LABEL_23;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v54);
  return __swift_destroy_boxed_opaque_existential_0(v55);
}

uint64_t FBKSInteraction.StructuredValue.jsonDescription.getter()
{
  v1 = sub_1B014CC5C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1B014C84C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 16);
  sub_1B014C88C();
  swift_allocObject();
  sub_1B014C87C();
  sub_1B014C83C();
  sub_1B014C85C();
  sub_1B011B7B8();
  v6 = sub_1B014C86C();
  v8 = v7;
  sub_1B014CC4C();
  v9 = sub_1B014CC3C();
  if (!v10)
  {
    if (qword_1EDAE7070 != -1)
    {
      swift_once();
    }

    v11 = sub_1B014CB5C();
    __swift_project_value_buffer(v11, qword_1EDAE7828);
    v12 = sub_1B014CB3C();
    v13 = sub_1B014CF4C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1B00C4000, v12, v13, "Failed to encode. Will use default description", v14, 2u);
      MEMORY[0x1B271F750](v14, -1, -1);
    }

    sub_1B00DE580(v3, v4, v5);
    v9 = sub_1B014CC6C();
  }

  v15 = v9;
  sub_1B00D2024(v6, v8);

  return v15;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FBKSInteraction.StructuredValue.toSerializedJson()()
{
  v31[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1B014CC5C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = v0[1];
  v7 = *(v0 + 16);
  *&v28 = *v0;
  *(&v28 + 1) = v6;
  v29 = v7;
  v8 = &v28;
  FBKSInteraction.StructuredValue.unwrap()(v31);
  if (!v1)
  {
    v11 = sub_1B011BEB4(MEMORY[0x1E69E7CC0]);
    v30 = MEMORY[0x1E69E6530];
    *&v28 = 2;
    sub_1B00D20C0(&v28, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v11;
    sub_1B01185F4(v27, 0x6E6F6973726576, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    v13 = v26;
    sub_1B00D20D0(v31, &v28);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    *&v27[0] = v13;
    sub_1B01185F4(&v28, 1635017060, 0xE400000000000000, v14);
    v15 = objc_opt_self();
    v16 = sub_1B014CB9C();

    *&v28 = 0;
    v17 = [v15 dataWithJSONObject:v16 options:1 error:&v28];

    v18 = v28;
    if (v17)
    {
      v19 = sub_1B014CA8C();
      v21 = v20;

      sub_1B014CC4C();
      v22 = sub_1B014CC3C();
      if (v23)
      {
        v4 = v22;
        v8 = v23;
        __swift_destroy_boxed_opaque_existential_0(v31);
        sub_1B00D2024(v19, v21);
      }

      else
      {
        *&v28 = v5;
        *(&v28 + 1) = v6;
        v29 = v7;
        v4 = FBKSInteraction.StructuredValue.jsonDescription.getter();
        v8 = v24;
        sub_1B00D2024(v19, v21);
        __swift_destroy_boxed_opaque_existential_0(v31);
      }
    }

    else
    {
      v4 = v18;
      v8 = sub_1B014C9CC();

      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0(v31);
    }
  }

  v9 = v4;
  v10 = v8;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

void FBKSInteraction.StructuredValue.unwrap()(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  if (v4 <= 2)
  {
    if (*(v1 + 16))
    {
      if (v4 == 1)
      {
        v5 = MEMORY[0x1E69E6530];
      }

      else
      {
        v5 = MEMORY[0x1E69E63B0];
      }

      a1[3] = v5;
      *a1 = v3;
    }

    else
    {
      a1[3] = MEMORY[0x1E69E6370];
      *a1 = v3 & 1;
    }

    return;
  }

  if (v4 == 3)
  {
    v12 = v1[1];
    a1[3] = MEMORY[0x1E69E6158];
    *a1 = v3;
    a1[1] = v12;

    return;
  }

  v41 = *v1;
  if (v4 == 4)
  {
    v6 = *(v3 + 16);
    v7 = MEMORY[0x1E69E7CC0];
    if (!v6)
    {
LABEL_33:
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4518, &qword_1B0151870);
      *a1 = v7;
      return;
    }

    v46 = MEMORY[0x1E69E7CC0];
    sub_1B00D1738(0, v6, 0);
    v8 = 0;
    v7 = v46;
    v9 = (v3 + 48);
    while (v8 < *(v3 + 16))
    {
      v42 = *(v9 - 2);
      v43 = *(v9 - 1);
      v44 = *v9;
      sub_1B00DE580(v42, v43, *v9);
      FBKSInteraction.StructuredValue.unwrap()(v45);
      if (v2)
      {
        sub_1B00DE5AC(v42, v43, v44);

        return;
      }

      sub_1B00DE5AC(v42, v43, v44);
      v46 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1B00D1738((v10 > 1), v11 + 1, 1);
        v7 = v46;
      }

      ++v8;
      *(v7 + 16) = v11 + 1;
      sub_1B00D20C0(v45, (v7 + 32 * v11 + 32));
      v9 += 24;
      v3 = v41;
      if (v6 == v8)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_37;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4540, &qword_1B0151898);
  v13 = sub_1B014D0AC();
  v14 = v13;
  v15 = 0;
  v35 = v3 + 64;
  v16 = 1 << *(v3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v3 + 64);
  v19 = (v16 + 63) >> 6;
  v38 = v13 + 64;
  v39 = v13;
  v37 = v19;
  if (!v18)
  {
LABEL_23:
    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {
        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4520, &qword_1B0151878);
        *a1 = v14;
        return;
      }

      v22 = *(v35 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v40 = (v22 - 1) & v22;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return;
  }

  while (1)
  {
    v20 = __clz(__rbit64(v18));
    v40 = (v18 - 1) & v18;
LABEL_28:
    v23 = v20 | (v15 << 6);
    v24 = (*(v3 + 48) + 16 * v23);
    v26 = *v24;
    v25 = v24[1];
    v27 = *(v3 + 56) + 24 * v23;
    v28 = *v27;
    v29 = *(v27 + 8);
    v30 = *(v27 + 16);

    sub_1B00DE580(v28, v29, v30);
    FBKSInteraction.StructuredValue.unwrap()(v45);
    if (v2)
    {
      break;
    }

    sub_1B00DE5AC(v28, v29, v30);
    v14 = v39;
    *(v38 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v31 = (v39[6] + 16 * v23);
    *v31 = v26;
    v31[1] = v25;
    sub_1B00D20C0(v45, (v39[7] + 32 * v23));
    v32 = v39[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_38;
    }

    v39[2] = v34;
    v18 = v40;
    v3 = v41;
    v19 = v37;
    if (!v40)
    {
      goto LABEL_23;
    }
  }

  sub_1B00DE5AC(v28, v29, v30);
}

uint64_t sub_1B010C968(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  for (i = (a1 + 48); ; i += 24)
  {
    v6 = *(i - 2);
    v7 = *(i - 1);
    v8 = *i;
    v9 = *(v3 - 2);
    v10 = *(v3 - 1);
    v11 = *v3;
    if (v8 <= 2)
    {
      if (*i)
      {
        if (v8 == 1)
        {
          if (v11 != 1)
          {
            goto LABEL_33;
          }

          sub_1B00DE5AC(*(i - 2), *(i - 1), 1);
          sub_1B00DE5AC(v9, v10, 1);
          if (v6 != v9)
          {
            return 0;
          }
        }

        else
        {
          if (v11 != 2)
          {
            goto LABEL_33;
          }

          sub_1B00DE5AC(*(i - 2), *(i - 1), 2);
          sub_1B00DE5AC(v9, v10, 2);
          if (*&v6 != *&v9)
          {
            return 0;
          }
        }
      }

      else
      {
        if (*v3)
        {
          goto LABEL_33;
        }

        sub_1B00DE5AC(*(i - 2), *(i - 1), 0);
        sub_1B00DE5AC(v9, v10, 0);
        if ((v9 ^ v6))
        {
          return 0;
        }
      }

      goto LABEL_6;
    }

    if (v8 != 3)
    {
      break;
    }

    if (v11 != 3)
    {
      goto LABEL_32;
    }

    if (v6 == v9 && v7 == v10)
    {
      sub_1B00DE580(*(i - 2), *(i - 1), 3);
      sub_1B00DE580(v6, v7, 3);
      sub_1B00DE5AC(v6, v7, 3);
      sub_1B00DE5AC(v6, v7, 3);
    }

    else
    {
      v5 = sub_1B014D25C();
      sub_1B00DE580(v9, v10, 3);
      sub_1B00DE580(v6, v7, 3);
      sub_1B00DE5AC(v6, v7, 3);
      sub_1B00DE5AC(v9, v10, 3);
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_6:
    v3 += 3;
    if (!--v2)
    {
      return 1;
    }
  }

  if (v8 == 4)
  {
    if (v11 != 4)
    {
      goto LABEL_32;
    }

    sub_1B00DE580(*(v3 - 2), *(v3 - 1), 4);
    sub_1B00DE580(v6, v7, 4);
    sub_1B00DE580(v9, v10, 4);
    sub_1B00DE580(v6, v7, 4);
    v12 = sub_1B010C968(v6, v9);
    sub_1B00DE5AC(v6, v7, 4);
    sub_1B00DE5AC(v9, v10, 4);
    sub_1B00DE5AC(v9, v10, 4);
    sub_1B00DE5AC(v6, v7, 4);
    if ((v12 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (v11 == 5)
  {
    sub_1B00DE580(*(v3 - 2), *(v3 - 1), 5);
    sub_1B00DE580(v6, v7, 5);
    sub_1B00DE580(v9, v10, 5);
    sub_1B00DE580(v6, v7, 5);
    v13 = sub_1B00D5754(v6, v9);
    sub_1B00DE5AC(v6, v7, 5);
    sub_1B00DE5AC(v9, v10, 5);
    sub_1B00DE5AC(v9, v10, 5);
    sub_1B00DE5AC(v6, v7, 5);
    if ((v13 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_6;
  }

LABEL_32:
  sub_1B00DE580(*(i - 2), *(i - 1), *i);

LABEL_33:
  sub_1B00DE580(v9, v10, v11);
  sub_1B00DE5AC(v6, v7, v8);
  sub_1B00DE5AC(v9, v10, v11);
  sub_1B00DE5AC(v6, v7, v8);
  return 0;
}

uint64_t sub_1B010CD30(uint64_t a1)
{
  v2 = sub_1B011C08C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B010CD6C(uint64_t a1)
{
  v2 = sub_1B011C08C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B010CDA8(uint64_t a1)
{
  v2 = sub_1B011C1DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B010CDE4(uint64_t a1)
{
  v2 = sub_1B011C1DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B010CE20()
{
  v1 = *v0;
  v2 = 1819242338;
  v3 = 0x676E69727473;
  v4 = 0x7961727261;
  if (v1 != 4)
  {
    v4 = 0x616E6F6974636964;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x72656765746E69;
  if (v1 != 1)
  {
    v5 = 0x656C62756F64;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B010CECC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0123980(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B010CF00(uint64_t a1)
{
  v2 = sub_1B011BFE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B010CF3C(uint64_t a1)
{
  v2 = sub_1B011BFE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B010CF78(uint64_t a1)
{
  v2 = sub_1B011C038();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B010CFB4(uint64_t a1)
{
  v2 = sub_1B011C038();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B010CFF0(uint64_t a1)
{
  v2 = sub_1B011C134();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B010D02C(uint64_t a1)
{
  v2 = sub_1B011C134();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B010D068(uint64_t a1)
{
  v2 = sub_1B011C188();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B010D0A4(uint64_t a1)
{
  v2 = sub_1B011C188();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B010D0E0(uint64_t a1)
{
  v2 = sub_1B011C0E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B010D11C(uint64_t a1)
{
  v2 = sub_1B011C0E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKSInteraction.StructuredValue.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4548, &qword_1B01518A0);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4550, &qword_1B01518A8);
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4558, &qword_1B01518B0);
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4560, &qword_1B01518B8);
  v35 = *(v9 - 8);
  v36 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v30 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4568, &qword_1B01518C0);
  v32 = *(v11 - 8);
  v33 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4570, &qword_1B01518C8);
  v31 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4578, &qword_1B01518D0);
  v47 = *(v17 - 8);
  v48 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  v20 = v1[1];
  v46 = *v1;
  v30 = v20;
  v21 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B011BFE4();
  sub_1B014D35C();
  if (v21 > 2)
  {
    if (v21 == 3)
    {
      LOBYTE(v49) = 3;
      sub_1B011C0E0();
      v27 = v37;
      v23 = v48;
      v22 = v19;
      sub_1B014D19C();
      v24 = v39;
      sub_1B014D1DC();
      v28 = v38;
    }

    else
    {
      v22 = v19;
      if (v21 == 4)
      {
        LOBYTE(v49) = 4;
        sub_1B011C08C();
        v27 = v40;
        v23 = v48;
        sub_1B014D19C();
        v49 = v46;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4588, &qword_1B01518E0);
        sub_1B011C308(&qword_1EDAE6EE0, sub_1B011B7B8, MEMORY[0x1E69E6300]);
        v24 = v42;
        sub_1B014D21C();
        v28 = v41;
      }

      else
      {
        LOBYTE(v49) = 5;
        sub_1B011C038();
        v27 = v43;
        v23 = v48;
        sub_1B014D19C();
        v49 = v46;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4580, &qword_1B01518D8);
        sub_1B011C230(&qword_1EDAE7060, sub_1B011B7B8, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
        v24 = v45;
        sub_1B014D21C();
        v28 = v44;
      }
    }

    goto LABEL_12;
  }

  if (v21)
  {
    v22 = v19;
    if (v21 == 1)
    {
      LOBYTE(v49) = 1;
      sub_1B011C188();
      v23 = v48;
      sub_1B014D19C();
      v24 = v33;
      sub_1B014D20C();
      v25 = *(v32 + 8);
      v26 = v13;
LABEL_13:
      v25(v26, v24);
      return (*(v47 + 8))(v22, v23);
    }

    LOBYTE(v49) = 2;
    sub_1B011C134();
    v27 = v34;
    v23 = v48;
    sub_1B014D19C();
    v24 = v36;
    sub_1B014D1FC();
    v28 = v35;
LABEL_12:
    v25 = *(v28 + 8);
    v26 = v27;
    goto LABEL_13;
  }

  LOBYTE(v49) = 0;
  sub_1B011C1DC();
  v23 = v48;
  v22 = v19;
  sub_1B014D19C();
  sub_1B014D1EC();
  (*(v31 + 8))(v16, v14);
  return (*(v47 + 8))(v22, v23);
}

void FBKSInteraction.StructuredValue.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      MEMORY[0x1B271EE00](3);

      sub_1B014CCAC();
    }

    else if (v4 == 4)
    {
      MEMORY[0x1B271EE00](4);

      sub_1B0118D5C(a1, v3);
    }

    else
    {
      MEMORY[0x1B271EE00](5);

      sub_1B0118B04(a1, v3);
    }
  }

  else if (*(v1 + 16))
  {
    if (v4 == 1)
    {
      MEMORY[0x1B271EE00](1);
      MEMORY[0x1B271EE00](v3);
    }

    else
    {
      MEMORY[0x1B271EE00](2);
      if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = v3;
      }

      else
      {
        v5 = 0;
      }

      MEMORY[0x1B271EE20](v5);
    }
  }

  else
  {
    MEMORY[0x1B271EE00](0);
    sub_1B014D31C();
  }
}

uint64_t FBKSInteraction.StructuredValue.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1B014D2FC();
  FBKSInteraction.StructuredValue.hash(into:)(v3);
  return sub_1B014D33C();
}

uint64_t FBKSInteraction.StructuredValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C45A8, &qword_1B01518E8);
  v69 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v73 = &v55[-v3];
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C45B0, &qword_1B01518F0);
  v68 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v70 = &v55[-v4];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C45B8, &qword_1B01518F8);
  v65 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v72 = &v55[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C45C0, &qword_1B0151900);
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v55[-v7];
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C45C8, &qword_1B0151908);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v9 = &v55[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C45D0, &qword_1B0151910);
  v59 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C45D8, &qword_1B0151918);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v55[-v15];
  v17 = a1[3];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1B011BFE4();
  v18 = v75;
  sub_1B014D34C();
  v19 = v18;
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0(v76);
  }

  v20 = v12;
  v57 = v10;
  v21 = v9;
  v22 = v72;
  v23 = v73;
  v58 = v14;
  v24 = v74;
  v75 = v16;
  v25 = sub_1B014D18C();
  v26 = (2 * *(v25 + 16)) | 1;
  v78 = v25;
  v79 = v25 + 32;
  v80 = 0;
  v81 = v26;
  v27 = sub_1B00D4A9C();
  if (v27 == 6 || v80 != v81 >> 1)
  {
    v29 = sub_1B014D05C();
    swift_allocError();
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BE8, &qword_1B014F3B0);
    *v31 = &type metadata for FBKSInteraction.StructuredValue;
    v32 = v75;
    sub_1B014D0FC();
    sub_1B014D04C();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
    swift_willThrow();
    (*(v58 + 8))(v32, v13);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v76);
  }

  v56 = v27;
  if (v27 > 2u)
  {
    v34 = v24;
    if (v27 == 3)
    {
      LOBYTE(v77) = 3;
      sub_1B011C0E0();
      v40 = v75;
      sub_1B014D0EC();
      v41 = v62;
      v42 = sub_1B014D13C();
      v59 = 0;
      v54 = v42;
      v19 = v51;
      (*(v65 + 8))(v22, v41);
      (*(v58 + 8))(v40, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = v75;
      if (v27 == 4)
      {
        LOBYTE(v77) = 4;
        sub_1B011C08C();
        v36 = v70;
        sub_1B014D0EC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4588, &qword_1B01518E0);
        sub_1B011C308(&qword_1EDAE6AB0, sub_1B011C2B4, MEMORY[0x1E69E6330]);
        v37 = v66;
        sub_1B014D17C();
        v59 = 0;
        (*(v68 + 8))(v36, v37);
      }

      else
      {
        LOBYTE(v77) = 5;
        sub_1B011C038();
        sub_1B014D0EC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4580, &qword_1B01518D8);
        sub_1B011C230(&qword_1EDAE6B08, sub_1B011C2B4, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
        v47 = v67;
        sub_1B014D17C();
        v59 = 0;
        (*(v69 + 8))(v23, v47);
      }

      (*(v58 + 8))(v35, v13);
      swift_unknownObjectRelease();
      v54 = v77;
    }

    v24 = v34;
  }

  else if (v27)
  {
    if (v27 == 1)
    {
      LOBYTE(v77) = 1;
      sub_1B011C188();
      sub_1B014D0EC();
      v28 = v58;
      v50 = v61;
      v19 = 0;
      v54 = sub_1B014D16C();
      v59 = 0;
      (*(v60 + 8))(v21, v50);
      (*(v28 + 8))(v75, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      LOBYTE(v77) = 2;
      sub_1B011C134();
      v43 = v71;
      v44 = v75;
      sub_1B014D0EC();
      v45 = v58;
      v46 = v64;
      sub_1B014D15C();
      v19 = 0;
      v53 = v52;
      v59 = 0;
      (*(v63 + 8))(v43, v46);
      (*(v45 + 8))(v44, v13);
      swift_unknownObjectRelease();
      v54 = v53;
    }
  }

  else
  {
    LOBYTE(v77) = 0;
    sub_1B011C1DC();
    v38 = v20;
    v39 = v75;
    sub_1B014D0EC();
    v48 = v57;
    v49 = sub_1B014D14C();
    v19 = 0;
    (*(v59 + 8))(v38, v48);
    (*(v58 + 8))(v39, v13);
    swift_unknownObjectRelease();
    v59 = 0;
    v54 = v49 & 1;
  }

  *v24 = v54;
  *(v24 + 8) = v19;
  *(v24 + 16) = v56;
  return __swift_destroy_boxed_opaque_existential_0(v76);
}

uint64_t sub_1B010E660()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1B014D2FC();
  FBKSInteraction.StructuredValue.hash(into:)(v3);
  return sub_1B014D33C();
}

uint64_t sub_1B010E6B8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_1B014D2FC();
  FBKSInteraction.StructuredValue.hash(into:)(v4);
  return sub_1B014D33C();
}

unint64_t FBKSInteraction.Content.description.getter()
{
  v1 = v0;
  v2 = sub_1B014CA4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FBKSInteraction.Content(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B011A8C4(v1, v8, type metadata accessor for FBKSInteraction.Content);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v11 = *v8;
      sub_1B00D2024(v8[2], v8[3]);
      result = v11;
      break;
    case 2u:
      sub_1B011A92C(v8, type metadata accessor for FBKSInteraction.Content);
      result = 1954047316;
      break;
    case 3u:
      sub_1B011A92C(v8, type metadata accessor for FBKSInteraction.Content);
      result = 0x6567616D49;
      break;
    case 4u:
      sub_1B011A92C(v8, type metadata accessor for FBKSInteraction.Content);
      result = 0x6F69647541;
      break;
    case 5u:
      sub_1B011A92C(v8, type metadata accessor for FBKSInteraction.Content);
      result = 0x74697277646E6148;
      break;
    case 6u:
      sub_1B011A92C(v8, type metadata accessor for FBKSInteraction.Content);
      result = 0x686374656B53;
      break;
    case 7u:
      sub_1B011A92C(v8, type metadata accessor for FBKSInteraction.Content);
      result = 0x65542B6567616D49;
      break;
    case 8u:
      sub_1B011A92C(v8, type metadata accessor for FBKSInteraction.Content);
      result = 0x542B686374656B53;
      break;
    case 9u:
      sub_1B011A92C(v8, type metadata accessor for FBKSInteraction.Content);
      result = 0x6F65646956;
      break;
    case 0xAu:
      sub_1B011A92C(v8, type metadata accessor for FBKSInteraction.Content);
      result = 0x6320656372756F53;
      break;
    case 0xBu:
      sub_1B011A92C(v8, type metadata accessor for FBKSInteraction.Content);
      result = 0x7275746375727453;
      break;
    case 0xCu:
      sub_1B011A92C(v8, type metadata accessor for FBKSInteraction.Content);
      result = 0xD000000000000010;
      break;
    case 0xDu:
      sub_1B011A92C(v8, type metadata accessor for FBKSInteraction.Content);
      result = 0xD000000000000011;
      break;
    case 0xEu:
      sub_1B011A92C(v8, type metadata accessor for FBKSInteraction.Content);
      result = 0x6163696669746F4ELL;
      break;
    case 0xFu:
      sub_1B011A92C(v8, type metadata accessor for FBKSInteraction.Content);
      result = 0x73656D206C69614DLL;
      break;
    case 0x10u:
      sub_1B011A92C(v8, type metadata accessor for FBKSInteraction.Content);
      result = 0x696A6F6D45;
      break;
    case 0x11u:
      sub_1B011A92C(v8, type metadata accessor for FBKSInteraction.Content);
      result = 1280136264;
      break;
    default:
      (*(v3 + 32))(v5, v8, v2);
      v9 = sub_1B014C9EC();
      (*(v3 + 8))(v5, v2);
      result = v9;
      break;
  }

  return result;
}

uint64_t FBKSInteraction.Content.debugDescription.getter()
{
  v3 = type metadata accessor for FBKSInteraction.Content(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B011A8C4(v0, v5, type metadata accessor for FBKSInteraction.Content);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v11 = *(v5 + 16);
      v12 = *(v5 + 24);

      v67 = FBKSInteraction.Content.description.getter();
      v68 = v26;
      MEMORY[0x1B271E7F0](0x203A657A6953203ALL, 0xE800000000000000);
      v23 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        goto LABEL_80;
      }

      if (!v23)
      {
        goto LABEL_51;
      }

      LODWORD(v16) = HIDWORD(v11) - v11;
      if (!__OFSUB__(HIDWORD(v11), v11))
      {
        goto LABEL_106;
      }

      __break(1u);
      goto LABEL_39;
    case 2u:
      goto LABEL_21;
    case 3u:
      v11 = *v5;
      v12 = *(v5 + 8);
      v67 = FBKSInteraction.Content.description.getter();
      v68 = v21;
      MEMORY[0x1B271E7F0](0x203A657A6953203ALL, 0xE800000000000000);
      v16 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        goto LABEL_72;
      }

      if (!v16)
      {
        goto LABEL_51;
      }

      LODWORD(v16) = HIDWORD(v11) - v11;
      if (!__OFSUB__(HIDWORD(v11), v11))
      {
        goto LABEL_106;
      }

      __break(1u);
LABEL_28:
      v11 = *v5;
      v12 = *(v5 + 8);
      v2 = *(v5 + 16);
      v1 = *(v5 + 24);
      v67 = 0;
      v68 = 0xE000000000000000;
      sub_1B014D01C();

      v67 = 0x7A69532061746144;
      v68 = 0xEB00000000203A65;
      v22 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        goto LABEL_76;
      }

      if (!v22)
      {
        goto LABEL_55;
      }

      LODWORD(v23) = HIDWORD(v11) - v11;
      if (!__OFSUB__(HIDWORD(v11), v11))
      {
        goto LABEL_109;
      }

      __break(1u);
LABEL_33:
      v24 = FBKSInteraction.Content.description.getter();
      v25 = sub_1B014CA4C();
      (*(*(v25 - 8) + 8))(v5, v25);
      return v24;
    case 4u:
      goto LABEL_8;
    case 5u:
LABEL_39:
      v11 = *v5;
      v12 = *(v5 + 8);
      v67 = FBKSInteraction.Content.description.getter();
      v68 = v27;
      MEMORY[0x1B271E7F0](0x203A657A6953203ALL, 0xE800000000000000);
      v16 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        goto LABEL_84;
      }

      if (!v16)
      {
        goto LABEL_51;
      }

      LODWORD(v16) = HIDWORD(v11) - v11;
      if (!__OFSUB__(HIDWORD(v11), v11))
      {
        goto LABEL_106;
      }

      __break(1u);
LABEL_44:
      v11 = *v5;
      v12 = *(v5 + 8);
      v67 = FBKSInteraction.Content.description.getter();
      v68 = v28;
      MEMORY[0x1B271E7F0](0x203A657A6953203ALL, 0xE800000000000000);
      v16 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        goto LABEL_88;
      }

      if (!v16)
      {
        goto LABEL_51;
      }

      LODWORD(v16) = HIDWORD(v11) - v11;
      if (!__OFSUB__(HIDWORD(v11), v11))
      {
        goto LABEL_106;
      }

      __break(1u);
LABEL_49:
      v11 = *v5;
      v12 = *(v5 + 8);
      v67 = FBKSInteraction.Content.description.getter();
      v68 = v29;
      result = MEMORY[0x1B271E7F0](0x203A657A6953203ALL, 0xE800000000000000);
      v16 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        goto LABEL_92;
      }

      if (!v16)
      {
        goto LABEL_51;
      }

      LODWORD(v16) = HIDWORD(v11) - v11;
      if (!__OFSUB__(HIDWORD(v11), v11))
      {
        goto LABEL_106;
      }

      goto LABEL_115;
    case 6u:
      goto LABEL_49;
    case 7u:
      goto LABEL_28;
    case 8u:
      v11 = *v5;
      v12 = *(v5 + 8);
      v2 = *(v5 + 16);
      v1 = *(v5 + 24);
      v67 = 0;
      v68 = 0xE000000000000000;
      sub_1B014D01C();

      v67 = 0x7A69532061746144;
      v68 = 0xEB00000000203A65;
      v37 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        v23 = 0;
        if (v37 == 2)
        {
          v58 = *(v11 + 16);
          v57 = *(v11 + 24);
          v40 = __OFSUB__(v57, v58);
          v23 = v57 - v58;
          if (v40)
          {
            __break(1u);
            goto LABEL_101;
          }
        }

        goto LABEL_110;
      }

      if (!v37)
      {
LABEL_55:
        v23 = BYTE6(v12);
        goto LABEL_110;
      }

      LODWORD(v23) = HIDWORD(v11) - v11;
      if (!__OFSUB__(HIDWORD(v11), v11))
      {
LABEL_109:
        v23 = v23;
        goto LABEL_110;
      }

      goto LABEL_116;
    case 9u:
      v11 = *v5;
      v12 = *(v5 + 8);
      v67 = FBKSInteraction.Content.description.getter();
      v68 = v19;
      MEMORY[0x1B271E7F0](0x203A657A695320, 0xE700000000000000);
      v14 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        goto LABEL_68;
      }

      if (!v14)
      {
        goto LABEL_51;
      }

      LODWORD(v16) = HIDWORD(v11) - v11;
      if (!__OFSUB__(HIDWORD(v11), v11))
      {
        goto LABEL_106;
      }

      __break(1u);
LABEL_21:
      v6 = *v5;
      v7 = *(v5 + 8);
      v67 = FBKSInteraction.Content.description.getter();
      v68 = v20;
      v9 = 0x3A65756C6176203ALL;
      v10 = 0xE900000000000020;
LABEL_22:
      MEMORY[0x1B271E7F0](v9, v10);
      MEMORY[0x1B271E7F0](v6, v7);

      return v67;
    case 0xAu:
    case 0xEu:
    case 0xFu:
    case 0x11u:
      v6 = *v5;
      v7 = *(v5 + 8);
      v67 = FBKSInteraction.Content.description.getter();
      v68 = v8;
      v9 = 8250;
      v10 = 0xE200000000000000;
      goto LABEL_22;
    case 0xBu:
      v30 = *v5;
      v31 = *(v5 + 8);
      v32 = *(v5 + 16);
      v70 = FBKSInteraction.Content.description.getter();
      v71 = v33;
      MEMORY[0x1B271E7F0](8250, 0xE200000000000000);
      v67 = v30;
      v68 = v31;
      v69 = v32;
      v34 = FBKSInteraction.StructuredValue.jsonDescription.getter();
      v36 = v35;
      sub_1B00DE5AC(v30, v31, v32);
      MEMORY[0x1B271E7F0](v34, v36);

      return v70;
    case 0xCu:
      v11 = *v5;
      v12 = *(v5 + 8);
      v1 = *(v5 + 16);
      v2 = *(v5 + 24);
      v5 = *(v5 + 32);
      v67 = 0;
      v68 = 0xE000000000000000;
      sub_1B014D01C();

      v70 = 0x7A69532061746144;
      v71 = 0xEB00000000203A65;
      v13 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        v14 = 0;
        if (v13 != 2 || (v39 = *(v11 + 16), v38 = *(v11 + 24), v40 = __OFSUB__(v38, v39), v14 = v38 - v39, !v40))
        {
LABEL_103:
          v67 = v14;
          v59 = sub_1B014D22C();
          MEMORY[0x1B271E7F0](v59);

          MEMORY[0x1B271E7F0](0x746375727453202CLL, 0xEE00203A64657275);
          v67 = v1;
          v68 = v2;
          v69 = v5;
          v60 = FBKSInteraction.StructuredValue.jsonDescription.getter();
          v62 = v61;
          sub_1B00DE5AC(v1, v2, v5);
          MEMORY[0x1B271E7F0](v60, v62);

          sub_1B00D2024(v11, v12);
          return v70;
        }

        __break(1u);
        goto LABEL_60;
      }

      if (!v13)
      {
LABEL_15:
        v14 = BYTE6(v12);
        goto LABEL_103;
      }

      LODWORD(v14) = HIDWORD(v11) - v11;
      if (!__OFSUB__(HIDWORD(v11), v11))
      {
        goto LABEL_102;
      }

      __break(1u);
LABEL_8:
      v11 = *v5;
      v12 = *(v5 + 8);
      v67 = FBKSInteraction.Content.description.getter();
      v68 = v15;
      MEMORY[0x1B271E7F0](0x203A657A6953203ALL, 0xE800000000000000);
      v14 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
LABEL_60:
        if (v14 != 2)
        {
LABEL_96:
          v16 = 0;
          goto LABEL_107;
        }

        v18 = *(v11 + 16);
        v41 = *(v11 + 24);
        v40 = __OFSUB__(v41, v18);
        v16 = v41 - v18;
        if (!v40)
        {
          goto LABEL_107;
        }

        __break(1u);
LABEL_64:
        v14 = 0;
        if (v18 != 2)
        {
          goto LABEL_103;
        }

        v43 = *(v11 + 16);
        v42 = *(v11 + 24);
        v40 = __OFSUB__(v42, v43);
        v14 = v42 - v43;
        if (!v40)
        {
          goto LABEL_103;
        }

        __break(1u);
LABEL_68:
        if (v14 == 2)
        {
          v45 = *(v11 + 16);
          v44 = *(v11 + 24);
          v40 = __OFSUB__(v44, v45);
          v16 = v44 - v45;
          if (!v40)
          {
            goto LABEL_107;
          }

          __break(1u);
LABEL_72:
          if (v16 == 2)
          {
            v22 = *(v11 + 16);
            v46 = *(v11 + 24);
            v40 = __OFSUB__(v46, v22);
            v16 = v46 - v22;
            if (!v40)
            {
              goto LABEL_107;
            }

            __break(1u);
LABEL_76:
            v23 = 0;
            if (v22 != 2 || (v48 = *(v11 + 16), v47 = *(v11 + 24), v40 = __OFSUB__(v47, v48), v23 = v47 - v48, !v40))
            {
LABEL_110:
              v70 = v23;
              v65 = sub_1B014D22C();
              MEMORY[0x1B271E7F0](v65);

              MEMORY[0x1B271E7F0](0x203A74786554202CLL, 0xE800000000000000);
              v63 = v2;
              v64 = v1;
LABEL_111:
              MEMORY[0x1B271E7F0](v63, v64);

              sub_1B00D2024(v11, v12);
              return v67;
            }

            __break(1u);
LABEL_80:
            if (v23 == 2)
            {
              v50 = *(v11 + 16);
              v49 = *(v11 + 24);
              v40 = __OFSUB__(v49, v50);
              v16 = v49 - v50;
              if (!v40)
              {
                goto LABEL_107;
              }

              __break(1u);
LABEL_84:
              if (v16 == 2)
              {
                v52 = *(v11 + 16);
                v51 = *(v11 + 24);
                v40 = __OFSUB__(v51, v52);
                v16 = v51 - v52;
                if (!v40)
                {
                  goto LABEL_107;
                }

                __break(1u);
LABEL_88:
                if (v16 == 2)
                {
                  v54 = *(v11 + 16);
                  v53 = *(v11 + 24);
                  v40 = __OFSUB__(v53, v54);
                  v16 = v53 - v54;
                  if (!v40)
                  {
                    goto LABEL_107;
                  }

                  __break(1u);
LABEL_92:
                  if (v16 == 2)
                  {
                    v56 = *(v11 + 16);
                    v55 = *(v11 + 24);
                    v40 = __OFSUB__(v55, v56);
                    v16 = v55 - v56;
                    if (!v40)
                    {
                      goto LABEL_107;
                    }

                    __break(1u);
                  }
                }
              }
            }
          }
        }

        goto LABEL_96;
      }

      if (!v14)
      {
LABEL_51:
        v16 = BYTE6(v12);
LABEL_107:
        v70 = v16;
        v63 = sub_1B014D22C();
        goto LABEL_111;
      }

      LODWORD(v16) = HIDWORD(v11) - v11;
      if (!__OFSUB__(HIDWORD(v11), v11))
      {
LABEL_106:
        v16 = v16;
        goto LABEL_107;
      }

      __break(1u);
LABEL_13:
      v11 = *v5;
      v12 = *(v5 + 8);
      v1 = *(v5 + 16);
      v2 = *(v5 + 24);
      LOBYTE(v5) = *(v5 + 32);
      v67 = 0;
      v68 = 0xE000000000000000;
      sub_1B014D01C();

      v70 = 0x7A69532061746144;
      v71 = 0xEB00000000203A65;
      v18 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        goto LABEL_64;
      }

      if (!v18)
      {
        goto LABEL_15;
      }

LABEL_101:
      LODWORD(v14) = HIDWORD(v11) - v11;
      if (!__OFSUB__(HIDWORD(v11), v11))
      {
LABEL_102:
        v14 = v14;
        goto LABEL_103;
      }

      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
      return result;
    case 0xDu:
      goto LABEL_13;
    case 0x10u:
      goto LABEL_44;
    default:
      goto LABEL_33;
  }
}

uint64_t sub_1B010F40C()
{
  v1 = v0;
  v2 = type metadata accessor for FBKSInteraction.Content(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B011A8C4(v1, v4, type metadata accessor for FBKSInteraction.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload <= 11)
    {
      if (EnumCaseMultiPayload != 7 && EnumCaseMultiPayload != 8)
      {
        if (EnumCaseMultiPayload != 9)
        {
          goto LABEL_9;
        }

        goto LABEL_16;
      }

      v7 = *v4;
      v8 = *(v4 + 1);
      goto LABEL_20;
    }

    if (EnumCaseMultiPayload == 12 || EnumCaseMultiPayload == 13)
    {
      v7 = *v4;
      v8 = *(v4 + 1);
      sub_1B00DE5AC(*(v4 + 2), *(v4 + 3), v4[32]);
      goto LABEL_21;
    }

    if (EnumCaseMultiPayload != 16)
    {
      goto LABEL_9;
    }

LABEL_16:
    v7 = *v4;
    v8 = *(v4 + 1);
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload > 3)
  {
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload != 3)
    {
LABEL_9:
      sub_1B011A92C(v4, type metadata accessor for FBKSInteraction.Content);
      return 0;
    }

    goto LABEL_16;
  }

  v7 = *(v4 + 2);
  v8 = *(v4 + 3);
LABEL_20:

LABEL_21:
  v9 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v9)
    {
      sub_1B00D2024(v7, v8);
      return BYTE6(v8);
    }

    goto LABEL_28;
  }

  if (v9 != 2)
  {
    sub_1B00D2024(v7, v8);
    return 0;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  sub_1B00D2024(v7, v8);
  result = v10 - v11;
  if (__OFSUB__(v10, v11))
  {
    __break(1u);
LABEL_28:
    result = sub_1B00D2024(v7, v8);
    if (__OFSUB__(HIDWORD(v7), v7))
    {
      __break(1u);
    }

    else
    {
      return HIDWORD(v7) - v7;
    }
  }

  return result;
}

uint64_t sub_1B010F60C()
{
  v0 = sub_1B014C9DC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3B50, &qword_1B014F330);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v33 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C49F0, &qword_1B0156530);
  v7 = *(type metadata accessor for FBKSInteraction.Content(0) - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B01515B0;
  v11 = v10 + v9;
  v12 = sub_1B014CA4C();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  (*(v1 + 104))(v3, *MEMORY[0x1E6968F70], v0);
  sub_1B014CA3C();
  swift_storeEnumTagMultiPayload();
  v13 = (v11 + v8);
  *v13 = 1954047348;
  v13[1] = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  v33[0] = xmmword_1B0150250;
  *(v11 + 2 * v8) = xmmword_1B0150250;
  swift_storeEnumTagMultiPayload();
  *(v11 + 3 * v8) = v33[0];
  swift_storeEnumTagMultiPayload();
  *(v11 + 4 * v8) = v33[0];
  swift_storeEnumTagMultiPayload();
  *(v11 + 5 * v8) = v33[0];
  swift_storeEnumTagMultiPayload();
  v14 = v11 + 6 * v8;
  *v14 = v33[0];
  *(v14 + 16) = 1954047348;
  *(v14 + 24) = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  v15 = v11 + 7 * v8;
  *v15 = v33[0];
  *(v15 + 16) = 1954047348;
  *(v15 + 24) = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  *(v11 + 8 * v8) = v33[0];
  swift_storeEnumTagMultiPayload();
  v16 = (v11 + 9 * v8);
  *v16 = 1954047348;
  v16[1] = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  v17 = sub_1B0122CF0(&unk_1F25D5CF0);
  sub_1B00DE9C0(&unk_1F25D5D10, &qword_1EB6C49F8, &qword_1B0156538);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4A00, &qword_1B0156540);
  v37 = v18;
  v36[0] = v17;
  static FBKSInteraction.StructuredValue.wrap(_:)(v36, &v34);
  v19 = v11 + 10 * v8;
  __swift_destroy_boxed_opaque_existential_0(v36);
  v20 = v35;
  *v19 = v34;
  *(v19 + 16) = v20;
  swift_storeEnumTagMultiPayload();
  v21 = sub_1B0122CF0(&unk_1F25D5D30);
  sub_1B00DE9C0(&unk_1F25D5D50, &qword_1EB6C49F8, &qword_1B0156538);
  v37 = v18;
  v36[0] = v21;
  static FBKSInteraction.StructuredValue.wrap(_:)(v36, &v34);
  v22 = v11 + 11 * v8;
  __swift_destroy_boxed_opaque_existential_0(v36);
  v23 = v35;
  v24 = v34;
  *v22 = v33[0];
  *(v22 + 16) = v24;
  *(v22 + 32) = v23;
  swift_storeEnumTagMultiPayload();
  v25 = sub_1B0122CF0(&unk_1F25D5D70);
  sub_1B00DE9C0(&unk_1F25D5D90, &qword_1EB6C49F8, &qword_1B0156538);
  v37 = v18;
  v36[0] = v25;
  static FBKSInteraction.StructuredValue.wrap(_:)(v36, &v34);
  v26 = v11 + 12 * v8;
  __swift_destroy_boxed_opaque_existential_0(v36);
  v27 = v35;
  v28 = v34;
  *v26 = v33[0];
  *(v26 + 16) = v28;
  *(v26 + 32) = v27;
  swift_storeEnumTagMultiPayload();
  v29 = (v11 + 13 * v8);
  *v29 = 1954047348;
  v29[1] = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  v30 = (v11 + 14 * v8);
  *v30 = 1954047348;
  v30[1] = 0xE400000000000000;
  swift_storeEnumTagMultiPayload();
  *(v11 + 15 * v8) = v33[0];
  swift_storeEnumTagMultiPayload();
  v31 = (v11 + 16 * v8);
  *v31 = 1954047348;
  v31[1] = 0xE400000000000000;
  result = swift_storeEnumTagMultiPayload();
  qword_1EB6C4180 = v10;
  return result;
}

double static FBKSInteraction.Content.allCases.getter()
{
  if (qword_1EB6C3A90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t static FBKSInteraction.Content.allCases.setter(uint64_t a1)
{
  if (qword_1EB6C3A90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB6C4180 = a1;
}

uint64_t (*static FBKSInteraction.Content.allCases.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EB6C3A90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_1B010FD30@<D0>(void *a1@<X8>)
{
  if (qword_1EB6C3A90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EB6C4180;

  return result;
}

uint64_t sub_1B010FDB0(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EB6C3A90;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB6C4180 = v1;
}

unint64_t sub_1B010FE3C(char a1)
{
  result = 1701603686;
  switch(a1)
  {
    case 1:
      result = 0x656C69665FLL;
      break;
    case 2:
      result = 1954047348;
      break;
    case 3:
      result = 0x6567616D69;
      break;
    case 4:
      result = 0x6F69647561;
      break;
    case 5:
      result = 0x74697277646E6168;
      break;
    case 6:
      result = 0x686374656B73;
      break;
    case 7:
      result = 0x7865546567616D69;
      break;
    case 8:
      result = 0x6554686374656B73;
      break;
    case 9:
      result = 0x6F65646976;
      break;
    case 10:
      result = 0x6F43656372756F73;
      break;
    case 11:
      result = 0x7275746375727473;
      break;
    case 12:
      result = 0x7274536567616D69;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0x6163696669746F6ELL;
      break;
    case 15:
      result = 0x7373654D6C69616DLL;
      break;
    case 16:
      result = 0x696A6F6D65;
      break;
    case 17:
      result = 1819112552;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B0110014(uint64_t a1)
{
  v2 = sub_1B011C86C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0110050(uint64_t a1)
{
  v2 = sub_1B011C86C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0110094@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0123B78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B01100C8(uint64_t a1)
{
  v2 = sub_1B011C380();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0110104(uint64_t a1)
{
  v2 = sub_1B011C380();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0110140(uint64_t a1)
{
  v2 = sub_1B011C428();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B011017C(uint64_t a1)
{
  v2 = sub_1B011C428();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01101C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B014D25C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B0110250(uint64_t a1)
{
  v2 = sub_1B011C9BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B011028C(uint64_t a1)
{
  v2 = sub_1B011C9BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01102C8(uint64_t a1)
{
  v2 = sub_1B011C818();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0110304(uint64_t a1)
{
  v2 = sub_1B011C818();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0110340(uint64_t a1)
{
  v2 = sub_1B011C3D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B011037C(uint64_t a1)
{
  v2 = sub_1B011C3D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01103B8(uint64_t a1)
{
  v2 = sub_1B011C8C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01103F4(uint64_t a1)
{
  v2 = sub_1B011C8C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0110430()
{
  if (*v0)
  {
    return 0x7275746375727473;
  }

  else
  {
    return 0x6567616D69;
  }
}

uint64_t sub_1B011046C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B014D25C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7275746375727473 && a2 == 0xEA00000000006465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B014D25C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B011054C(uint64_t a1)
{
  v2 = sub_1B011C5CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0110588(uint64_t a1)
{
  v2 = sub_1B011C5CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01105C4()
{
  if (*v0)
  {
    return 1954047348;
  }

  else
  {
    return 0x6567616D69;
  }
}

uint64_t sub_1B01105F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B014D25C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B014D25C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B01106CC(uint64_t a1)
{
  v2 = sub_1B011C770();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0110708(uint64_t a1)
{
  v2 = sub_1B011C770();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0110744(uint64_t a1)
{
  v2 = sub_1B011C4D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0110780(uint64_t a1)
{
  v2 = sub_1B011C4D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01107BC(uint64_t a1)
{
  v2 = sub_1B011C524();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B01107F8(uint64_t a1)
{
  v2 = sub_1B011C524();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0110834(uint64_t a1)
{
  v2 = sub_1B011C7C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0110870(uint64_t a1)
{
  v2 = sub_1B011C7C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B01108AC()
{
  if (*v0)
  {
    return 0x7275746375727473;
  }

  else
  {
    return 0x686374656B73;
  }
}

uint64_t sub_1B01108E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x686374656B73 && a2 == 0xE600000000000000;
  if (v6 || (sub_1B014D25C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7275746375727473 && a2 == 0xEA00000000006465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B014D25C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B01109C8(uint64_t a1)
{
  v2 = sub_1B011C578();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0110A04(uint64_t a1)
{
  v2 = sub_1B011C578();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0110A40()
{
  if (*v0)
  {
    return 1954047348;
  }

  else
  {
    return 0x686374656B73;
  }
}

uint64_t sub_1B0110A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x686374656B73 && a2 == 0xE600000000000000;
  if (v6 || (sub_1B014D25C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B014D25C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B0110B48(uint64_t a1)
{
  v2 = sub_1B011C71C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0110B84(uint64_t a1)
{
  v2 = sub_1B011C71C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0110BC0(uint64_t a1)
{
  v2 = sub_1B011C674();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0110BFC(uint64_t a1)
{
  v2 = sub_1B011C674();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0110C38(uint64_t a1)
{
  v2 = sub_1B011C620();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0110C74(uint64_t a1)
{
  v2 = sub_1B011C620();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0110CB0(uint64_t a1)
{
  v2 = sub_1B011C914();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0110CEC(uint64_t a1)
{
  v2 = sub_1B011C914();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0110D28(uint64_t a1)
{
  v2 = sub_1B011C6C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0110D64(uint64_t a1)
{
  v2 = sub_1B011C6C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B0110DA0()
{
  if (*v0)
  {
    return 1635017060;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1B0110DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B014D25C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B014D25C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B0110EA0(uint64_t a1)
{
  v2 = sub_1B011C968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B0110EDC(uint64_t a1)
{
  v2 = sub_1B011C968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FBKSInteraction.Content.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C45E0, &qword_1B0151920);
  v140 = *(v2 - 8);
  v141 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v139 = &v88 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C45E8, &qword_1B0151928);
  v137 = *(v4 - 8);
  v138 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v136 = &v88 - v5;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C45F0, &qword_1B0151930);
  v132 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v130 = &v88 - v6;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C45F8, &qword_1B0151938);
  v126[1] = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v125 = &v88 - v7;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4600, &qword_1B0151940);
  v133 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v131 = &v88 - v8;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4608, &qword_1B0151948);
  v127 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v126[0] = &v88 - v9;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4610, &qword_1B0151950);
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v122 = &v88 - v10;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4618, &qword_1B0151958);
  v118 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v117 = &v88 - v11;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4620, &qword_1B0151960);
  v113 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v111 = &v88 - v12;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4628, &qword_1B0151968);
  v119 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v116 = &v88 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4630, &qword_1B0151970);
  v112 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v110 = &v88 - v14;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4638, &qword_1B0151978);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v88 - v15;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4640, &qword_1B0151980);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v88 - v16;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4648, &qword_1B0151988);
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v88 - v17;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4650, &qword_1B0151990);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v98 = &v88 - v18;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4658, &qword_1B0151998);
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v92 = &v88 - v19;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4660, &qword_1B01519A0);
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v93 = &v88 - v20;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4668, &qword_1B01519A8);
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v22 = &v88 - v21;
  v23 = sub_1B014CA4C();
  v89 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for FBKSInteraction.Content(0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4670, &qword_1B01519B0);
  v30 = *(v29 - 8);
  v145 = v29;
  v146 = v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v88 - v31;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B011C380();
  v144 = v32;
  sub_1B014D35C();
  sub_1B011A8C4(v142, v28, type metadata accessor for FBKSInteraction.Content);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v72 = *(v28 + 2);
      v71 = *(v28 + 3);
      LOBYTE(v147) = 1;
      sub_1B011C968();
      v79 = v93;
      v81 = v144;
      v80 = v145;
      sub_1B014D19C();
      LOBYTE(v147) = 0;
      v82 = v97;
      v83 = v143;
      sub_1B014D1DC();
      if (!v83)
      {

        v147 = v72;
        v148 = v71;
        v151 = 1;
        sub_1B011C47C();
        sub_1B014D21C();
        (*(v96 + 8))(v79, v82);
        (*(v146 + 8))(v81, v80);
        return sub_1B00D2024(v72, v71);
      }

      sub_1B00D2024(v72, v71);
      (*(v96 + 8))(v79, v82);
      return (*(v146 + 8))(v81, v80);
    case 2u:
      LOBYTE(v147) = 2;
      sub_1B011C914();
      v45 = v92;
      v47 = v144;
      v46 = v145;
      sub_1B014D19C();
      v48 = v95;
      sub_1B014D1DC();

      v49 = v126;
      goto LABEL_26;
    case 3u:
      v38 = *v28;
      v39 = *(v28 + 1);
      LOBYTE(v147) = 3;
      sub_1B011C8C0();
      v40 = v98;
      v42 = v144;
      v41 = v145;
      sub_1B014D19C();
      v147 = v38;
      v148 = v39;
      sub_1B011C47C();
      v43 = v100;
      sub_1B014D21C();
      v60 = &v130;
      goto LABEL_23;
    case 4u:
      v38 = *v28;
      v39 = *(v28 + 1);
      LOBYTE(v147) = 4;
      sub_1B011C86C();
      v40 = v101;
      v42 = v144;
      v41 = v145;
      sub_1B014D19C();
      v147 = v38;
      v148 = v39;
      sub_1B011C47C();
      v43 = v103;
      sub_1B014D21C();
      v60 = &v133;
      goto LABEL_23;
    case 5u:
      v38 = *v28;
      v39 = *(v28 + 1);
      LOBYTE(v147) = 5;
      sub_1B011C818();
      v40 = v104;
      v42 = v144;
      v41 = v145;
      sub_1B014D19C();
      v147 = v38;
      v148 = v39;
      sub_1B011C47C();
      v43 = v106;
      sub_1B014D21C();
      v60 = &v136;
      goto LABEL_23;
    case 6u:
      v38 = *v28;
      v39 = *(v28 + 1);
      LOBYTE(v147) = 6;
      sub_1B011C7C4();
      v40 = v107;
      v42 = v144;
      v41 = v145;
      sub_1B014D19C();
      v147 = v38;
      v148 = v39;
      sub_1B011C47C();
      v43 = v109;
      sub_1B014D21C();
      v60 = &v139;
      goto LABEL_23;
    case 7u:
      v72 = *v28;
      v71 = *(v28 + 1);
      v142 = *(v28 + 2);
      LOBYTE(v147) = 7;
      sub_1B011C770();
      v73 = v110;
      v75 = v144;
      v74 = v145;
      sub_1B014D19C();
      v147 = v72;
      v148 = v71;
      v151 = 0;
      sub_1B011C47C();
      v76 = v114;
      v77 = v143;
      sub_1B014D21C();
      if (v77)
      {

        v78 = &v143;
        goto LABEL_31;
      }

      LOBYTE(v147) = 1;
      sub_1B014D1DC();
      sub_1B00D2024(v72, v71);

      v87 = &v143;
      goto LABEL_41;
    case 8u:
      v72 = *v28;
      v71 = *(v28 + 1);
      v142 = *(v28 + 2);
      LOBYTE(v147) = 8;
      sub_1B011C71C();
      v73 = v116;
      v75 = v144;
      v74 = v145;
      sub_1B014D19C();
      v147 = v72;
      v148 = v71;
      v151 = 0;
      sub_1B011C47C();
      v76 = v121;
      v85 = v143;
      sub_1B014D21C();
      if (v85)
      {

        v78 = &v150;
LABEL_31:
        (*(*(v78 - 32) + 8))(v73, v76);
        (*(v146 + 8))(v75, v74);
        return sub_1B00D2024(v72, v71);
      }

      else
      {
        LOBYTE(v147) = 1;
        sub_1B014D1DC();
        sub_1B00D2024(v72, v71);

        v87 = &v150;
LABEL_41:
        (*(*(v87 - 32) + 8))(v73, v76);
        return (*(v146 + 8))(v75, v74);
      }

    case 9u:
      v38 = *v28;
      v39 = *(v28 + 1);
      LOBYTE(v147) = 9;
      sub_1B011C6C8();
      v40 = v111;
      v42 = v144;
      v41 = v145;
      sub_1B014D19C();
      v147 = v38;
      v148 = v39;
      sub_1B011C47C();
      v43 = v115;
      sub_1B014D21C();
      v60 = &v144;
LABEL_23:
      v44 = *(v60 - 32);
      goto LABEL_24;
    case 0xAu:
      LOBYTE(v147) = 10;
      sub_1B011C674();
      v45 = v117;
      v47 = v144;
      v46 = v145;
      sub_1B014D19C();
      v48 = v120;
      sub_1B014D1DC();

      v49 = &v149;
      goto LABEL_26;
    case 0xBu:
      v50 = *v28;
      v51 = *(v28 + 1);
      v52 = v28[16];
      LOBYTE(v147) = 11;
      sub_1B011C620();
      v53 = v122;
      v55 = v144;
      v54 = v145;
      sub_1B014D19C();
      v147 = v50;
      v148 = v51;
      v149 = v52;
      sub_1B011B7B8();
      v56 = v124;
      sub_1B014D21C();
      (*(v123 + 8))(v53, v56);
      (*(v146 + 8))(v55, v54);
      v57 = v50;
      v58 = v51;
      v59 = v52;
      return sub_1B00DE5AC(v57, v58, v59);
    case 0xCu:
      v62 = *v28;
      v61 = *(v28 + 1);
      v63 = *(v28 + 2);
      v141 = *(v28 + 3);
      LODWORD(v142) = v28[32];
      LOBYTE(v147) = 12;
      sub_1B011C5CC();
      v64 = v126[0];
      v66 = v144;
      v65 = v145;
      sub_1B014D19C();
      v147 = v62;
      v148 = v61;
      v151 = 0;
      sub_1B011C47C();
      v67 = v129;
      v68 = v143;
      sub_1B014D21C();
      if (v68)
      {
        sub_1B00DE5AC(v63, v141, v142);
        v69 = v127;
        goto LABEL_21;
      }

      v147 = v63;
      v148 = v141;
      v149 = v142;
      v151 = 1;
      sub_1B011B7B8();
      sub_1B014D21C();
      sub_1B00D2024(v62, v61);
      v86 = v127;
      goto LABEL_37;
    case 0xDu:
      v62 = *v28;
      v61 = *(v28 + 1);
      v63 = *(v28 + 2);
      v141 = *(v28 + 3);
      LODWORD(v142) = v28[32];
      LOBYTE(v147) = 13;
      sub_1B011C578();
      v64 = v131;
      v66 = v144;
      v65 = v145;
      sub_1B014D19C();
      v147 = v62;
      v148 = v61;
      v151 = 0;
      sub_1B011C47C();
      v67 = v135;
      v84 = v143;
      sub_1B014D21C();
      if (v84)
      {
        sub_1B00DE5AC(v63, v141, v142);
        v69 = v133;
LABEL_21:
        (*(v69 + 8))(v64, v67);
        (*(v146 + 8))(v66, v65);
        return sub_1B00D2024(v62, v61);
      }

      else
      {
        v147 = v63;
        v148 = v141;
        v149 = v142;
        v151 = 1;
        sub_1B011B7B8();
        sub_1B014D21C();
        sub_1B00D2024(v62, v61);
        v86 = v133;
LABEL_37:
        (*(v86 + 8))(v64, v67);
        (*(v146 + 8))(v66, v65);
        v57 = v63;
        v58 = v141;
        v59 = v142;
        return sub_1B00DE5AC(v57, v58, v59);
      }

    case 0xEu:
      LOBYTE(v147) = 14;
      sub_1B011C524();
      v45 = v125;
      v47 = v144;
      v46 = v145;
      sub_1B014D19C();
      v48 = v128;
      sub_1B014D1DC();

      v49 = &v152;
LABEL_26:
      v70 = *(v49 - 32);
      goto LABEL_27;
    case 0xFu:
      LOBYTE(v147) = 15;
      sub_1B011C4D0();
      v45 = v130;
      v47 = v144;
      v46 = v145;
      sub_1B014D19C();
      v48 = v134;
      sub_1B014D1DC();

      v70 = v132;
      goto LABEL_27;
    case 0x10u:
      v38 = *v28;
      v39 = *(v28 + 1);
      LOBYTE(v147) = 16;
      sub_1B011C428();
      v40 = v136;
      v42 = v144;
      v41 = v145;
      sub_1B014D19C();
      v147 = v38;
      v148 = v39;
      sub_1B011C47C();
      v43 = v138;
      sub_1B014D21C();
      v44 = v137;
LABEL_24:
      (*(v44 + 8))(v40, v43);
      (*(v146 + 8))(v42, v41);
      return sub_1B00D2024(v38, v39);
    case 0x11u:
      LOBYTE(v147) = 17;
      sub_1B011C3D4();
      v45 = v139;
      v47 = v144;
      v46 = v145;
      sub_1B014D19C();
      v48 = v141;
      sub_1B014D1DC();

      v70 = v140;
LABEL_27:
      (*(v70 + 8))(v45, v48);
      return (*(v146 + 8))(v47, v46);
    default:
      v33 = v89;
      (*(v89 + 32))(v25, v28, v23);
      LOBYTE(v147) = 0;
      sub_1B011C9BC();
      v35 = v144;
      v34 = v145;
      sub_1B014D19C();
      sub_1B0100AA4(&qword_1EB6C46F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
      v36 = v91;
      sub_1B014D21C();
      (*(v90 + 8))(v22, v36);
      (*(v33 + 8))(v25, v23);
      return (*(v146 + 8))(v35, v34);
  }
}

uint64_t FBKSInteraction.Content.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B014CA4C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FBKSInteraction.Content(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B011A8C4(v2, v10, type metadata accessor for FBKSInteraction.Content);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v28 = *(v10 + 2);
      v29 = *(v10 + 3);
      MEMORY[0x1B271EE00](1);
      sub_1B014CCAC();

      sub_1B014CA9C();
      return sub_1B00D2024(v28, v29);
    case 2u:
      v15 = 2;
      goto LABEL_21;
    case 3u:
      v12 = *v10;
      v13 = *(v10 + 1);
      v14 = 3;
      goto LABEL_19;
    case 4u:
      v12 = *v10;
      v13 = *(v10 + 1);
      v14 = 4;
      goto LABEL_19;
    case 5u:
      v12 = *v10;
      v13 = *(v10 + 1);
      v14 = 5;
      goto LABEL_19;
    case 6u:
      v12 = *v10;
      v13 = *(v10 + 1);
      v14 = 6;
      goto LABEL_19;
    case 7u:
      v25 = *v10;
      v26 = *(v10 + 1);
      v27 = 7;
      goto LABEL_23;
    case 8u:
      v25 = *v10;
      v26 = *(v10 + 1);
      v27 = 8;
LABEL_23:
      MEMORY[0x1B271EE00](v27);
      sub_1B014CA9C();
      sub_1B014CCAC();
      sub_1B00D2024(v25, v26);
      goto LABEL_24;
    case 9u:
      v12 = *v10;
      v13 = *(v10 + 1);
      v14 = 9;
      goto LABEL_19;
    case 0xAu:
      v15 = 10;
      goto LABEL_21;
    case 0xBu:
      v16 = *v10;
      v17 = *(v10 + 1);
      v18 = v10[16];
      MEMORY[0x1B271EE00](11);
      v31 = v16;
      v32 = v17;
      v33 = v18;
      FBKSInteraction.StructuredValue.hash(into:)(a1);
      return sub_1B00DE5AC(v16, v17, v18);
    case 0xCu:
      v19 = *v10;
      v20 = *(v10 + 1);
      v21 = *(v10 + 2);
      v22 = *(v10 + 3);
      v23 = v10[32];
      v24 = 12;
      goto LABEL_17;
    case 0xDu:
      v19 = *v10;
      v20 = *(v10 + 1);
      v21 = *(v10 + 2);
      v22 = *(v10 + 3);
      v23 = v10[32];
      v24 = 13;
LABEL_17:
      MEMORY[0x1B271EE00](v24);
      sub_1B014CA9C();
      v31 = v21;
      v32 = v22;
      v33 = v23;
      FBKSInteraction.StructuredValue.hash(into:)(a1);
      sub_1B00D2024(v19, v20);
      return sub_1B00DE5AC(v21, v22, v23);
    case 0xEu:
      v15 = 14;
      goto LABEL_21;
    case 0xFu:
      v15 = 15;
      goto LABEL_21;
    case 0x10u:
      v12 = *v10;
      v13 = *(v10 + 1);
      v14 = 16;
LABEL_19:
      MEMORY[0x1B271EE00](v14);
      sub_1B014CA9C();
      return sub_1B00D2024(v12, v13);
    case 0x11u:
      v15 = 17;
LABEL_21:
      MEMORY[0x1B271EE00](v15);
      sub_1B014CCAC();
LABEL_24:

      break;
    default:
      (*(v5 + 32))(v7, v10, v4);
      MEMORY[0x1B271EE00](0);
      sub_1B0100AA4(&qword_1EB6C46F8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1B014CBCC();
      result = (*(v5 + 8))(v7, v4);
      break;
  }

  return result;
}

uint64_t FBKSInteraction.Content.hashValue.getter()
{
  sub_1B014D2FC();
  FBKSInteraction.Content.hash(into:)(v1);
  return sub_1B014D33C();
}

uint64_t FBKSInteraction.Content.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v274 = a2;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4700, &qword_1B01519B8);
  v258 = *(v257 - 8);
  MEMORY[0x1EEE9AC00](v257);
  v272 = &v205 - v3;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4708, &qword_1B01519C0);
  v255 = *(v256 - 8);
  MEMORY[0x1EEE9AC00](v256);
  v279 = &v205 - v4;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4710, &qword_1B01519C8);
  v251 = *(v254 - 8);
  MEMORY[0x1EEE9AC00](v254);
  v273 = &v205 - v5;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4718, &qword_1B01519D0);
  v247 = *(v250 - 8);
  MEMORY[0x1EEE9AC00](v250);
  v271 = &v205 - v6;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4720, &qword_1B01519D8);
  v252 = *(v253 - 8);
  MEMORY[0x1EEE9AC00](v253);
  v278 = &v205 - v7;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4728, &qword_1B01519E0);
  v248 = *(v249 - 8);
  MEMORY[0x1EEE9AC00](v249);
  v270 = &v205 - v8;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4730, &qword_1B01519E8);
  v245 = *(v246 - 8);
  MEMORY[0x1EEE9AC00](v246);
  v269 = &v205 - v9;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4738, &qword_1B01519F0);
  v243 = *(v244 - 8);
  MEMORY[0x1EEE9AC00](v244);
  v268 = &v205 - v10;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4740, &qword_1B01519F8);
  v240 = *(v241 - 8);
  MEMORY[0x1EEE9AC00](v241);
  v266 = &v205 - v11;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4748, &qword_1B0151A00);
  v238 = *(v242 - 8);
  MEMORY[0x1EEE9AC00](v242);
  v267 = &v205 - v12;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4750, &qword_1B0151A08);
  v237 = *(v239 - 8);
  MEMORY[0x1EEE9AC00](v239);
  v265 = &v205 - v13;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4758, &qword_1B0151A10);
  v235 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236);
  v264 = &v205 - v14;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4760, &qword_1B0151A18);
  v233 = *(v234 - 8);
  MEMORY[0x1EEE9AC00](v234);
  v263 = &v205 - v15;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4768, &qword_1B0151A20);
  v231 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232);
  v262 = &v205 - v16;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4770, &qword_1B0151A28);
  v230 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229);
  v277 = &v205 - v17;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4778, &qword_1B0151A30);
  v226 = *(v227 - 8);
  MEMORY[0x1EEE9AC00](v227);
  v260 = &v205 - v18;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4780, &qword_1B0151A38);
  v228 = *(v276 - 8);
  MEMORY[0x1EEE9AC00](v276);
  v261 = &v205 - v19;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4788, &qword_1B0151A40);
  v224 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225);
  v259 = &v205 - v20;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C4790, &qword_1B0151A48);
  v280 = *(v275 - 8);
  MEMORY[0x1EEE9AC00](v275);
  v284 = &v205 - v21;
  v281 = type metadata accessor for FBKSInteraction.Content(0);
  v22 = MEMORY[0x1EEE9AC00](v281);
  v223 = (&v205 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x1EEE9AC00](v22);
  v222 = (&v205 - v25);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v221 = (&v205 - v27);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v220 = (&v205 - v29);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v214 = (&v205 - v31);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v213 = (&v205 - v33);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v219 = (&v205 - v35);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v218 = (&v205 - v37);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v217 = (&v205 - v39);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v212 = (&v205 - v41);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v211 = (&v205 - v43);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v216 = (&v205 - v45);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v215 = (&v205 - v47);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v50 = &v205 - v49;
  v51 = MEMORY[0x1EEE9AC00](v48);
  v53 = &v205 - v52;
  v54 = MEMORY[0x1EEE9AC00](v51);
  v56 = &v205 - v55;
  v57 = MEMORY[0x1EEE9AC00](v54);
  v59 = &v205 - v58;
  v60 = MEMORY[0x1EEE9AC00](v57);
  v62 = &v205 - v61;
  MEMORY[0x1EEE9AC00](v60);
  v64 = &v205 - v63;
  v65 = a1[3];
  v283 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v65);
  sub_1B011C380();
  v66 = v282;
  sub_1B014D34C();
  if (v66)
  {
LABEL_9:
    v85 = v283;
    return __swift_destroy_boxed_opaque_existential_0(v85);
  }

  v206 = v56;
  v209 = v62;
  v207 = v53;
  v208 = v50;
  v205 = v59;
  v68 = v276;
  v67 = v277;
  v69 = v278;
  v70 = v279;
  v282 = 0;
  v210 = v64;
  v71 = v275;
  v72 = v284;
  v73 = sub_1B014D18C();
  v74 = (2 * *(v73 + 16)) | 1;
  v289 = v73;
  v290 = v73 + 32;
  v291 = 0;
  v292 = v74;
  v75 = sub_1B00D4AD0();
  if (v291 != v292 >> 1)
  {
LABEL_6:
    v82 = sub_1B014D05C();
    swift_allocError();
    v84 = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6C3BE8, &qword_1B014F3B0);
    *v84 = v281;
    sub_1B014D0FC();
    sub_1B014D04C();
    (*(*(v82 - 8) + 104))(v84, *MEMORY[0x1E69E6AF8], v82);
    swift_willThrow();
LABEL_7:
    (*(v280 + 8))(v72, v71);
LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v76 = v274;
  switch(v75)
  {
    case 0:
      LOBYTE(v285) = 0;
      sub_1B011C9BC();
      v77 = v259;
      v78 = v71;
      v79 = v282;
      sub_1B014D0EC();
      if (v79)
      {
        goto LABEL_42;
      }

      sub_1B014CA4C();
      sub_1B0100AA4(&qword_1EB6C4798, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
      v80 = v209;
      v81 = v225;
      sub_1B014D17C();
      (*(v224 + 8))(v77, v81);
      (*(v280 + 8))(v72, v78);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v186 = v80;
      goto LABEL_51;
    case 1:
      LOBYTE(v285) = 1;
      sub_1B011C968();
      v131 = v261;
      v78 = v71;
      v132 = v282;
      sub_1B014D0EC();
      if (v132)
      {
        goto LABEL_42;
      }

      LOBYTE(v285) = 0;
      v133 = v68;
      v134 = sub_1B014D13C();
      v135 = v280;
      v187 = v131;
      v188 = v134;
      v190 = v189;
      LOBYTE(v287) = 1;
      sub_1B011CA10();
      sub_1B014D17C();
      (*(v228 + 8))(v187, v133);
      (*(v135 + 8))(v72, v78);
      swift_unknownObjectRelease();
      v181 = v205;
      *v205 = v188;
      v181[1] = v190;
      *(v181 + 1) = v285;
LABEL_50:
      swift_storeEnumTagMultiPayload();
      v186 = v181;
      goto LABEL_51;
    case 2:
      LOBYTE(v285) = 2;
      sub_1B011C914();
      v112 = v260;
      v78 = v71;
      v113 = v282;
      sub_1B014D0EC();
      if (v113)
      {
        goto LABEL_42;
      }

      v103 = v76;
      v114 = v227;
      v115 = sub_1B014D13C();
      v116 = v280;
      v173 = v115;
      v175 = v174;
      (*(v226 + 8))(v112, v114);
      (*(v116 + 8))(v72, v71);
      swift_unknownObjectRelease();
      v176 = v206;
      *v206 = v173;
      v176[1] = v175;
      swift_storeEnumTagMultiPayload();
      v177 = v176;
      goto LABEL_54;
    case 3:
      LOBYTE(v285) = 3;
      sub_1B011C8C0();
      v122 = v67;
      v123 = v282;
      sub_1B014D0EC();
      if (v123)
      {
        goto LABEL_7;
      }

      sub_1B011CA10();
      v124 = v229;
      sub_1B014D17C();
      v125 = v280;
      (*(v230 + 8))(v122, v124);
      (*(v125 + 8))(v72, v71);
      swift_unknownObjectRelease();
      v181 = v207;
      *v207 = v285;
      goto LABEL_50;
    case 4:
      LOBYTE(v285) = 4;
      sub_1B011C86C();
      v99 = v262;
      v100 = v282;
      sub_1B014D0EC();
      if (v100)
      {
        goto LABEL_7;
      }

      sub_1B011CA10();
      v160 = v232;
      sub_1B014D17C();
      v161 = v280;
      (*(v231 + 8))(v99, v160);
      (*(v161 + 8))(v72, v71);
      swift_unknownObjectRelease();
      v167 = v208;
      *v208 = v285;
      goto LABEL_48;
    case 5:
      LOBYTE(v285) = 5;
      sub_1B011C818();
      v142 = v263;
      v143 = v282;
      sub_1B014D0EC();
      if (v143)
      {
        goto LABEL_7;
      }

      sub_1B011CA10();
      v144 = v234;
      sub_1B014D17C();
      v145 = v280;
      (*(v233 + 8))(v142, v144);
      (*(v145 + 8))(v72, v71);
      swift_unknownObjectRelease();
      v167 = v215;
      *v215 = v285;
      goto LABEL_48;
    case 6:
      LOBYTE(v285) = 6;
      sub_1B011C7C4();
      v152 = v264;
      v153 = v282;
      sub_1B014D0EC();
      if (v153)
      {
        goto LABEL_7;
      }

      sub_1B011CA10();
      v154 = v236;
      sub_1B014D17C();
      v155 = v280;
      (*(v235 + 8))(v152, v154);
      (*(v155 + 8))(v72, v71);
      swift_unknownObjectRelease();
      v167 = v216;
      *v216 = v285;
      goto LABEL_48;
    case 7:
      LOBYTE(v285) = 7;
      sub_1B011C770();
      v126 = v265;
      v127 = v71;
      v128 = v282;
      sub_1B014D0EC();
      if (v128)
      {
        goto LABEL_44;
      }

      LOBYTE(v287) = 0;
      sub_1B011CA10();
      v129 = v239;
      sub_1B014D17C();
      v130 = v280;
      v182 = v285;
      LOBYTE(v287) = 1;
      v279 = sub_1B014D13C();
      v282 = 0;
      v184 = v183;
      (*(v237 + 8))(v126, v129);
      (*(v130 + 8))(v72, v71);
      swift_unknownObjectRelease();
      v185 = v211;
      *v211 = v182;
      *(v185 + 2) = v279;
      *(v185 + 3) = v184;
      goto LABEL_55;
    case 8:
      LOBYTE(v285) = 8;
      sub_1B011C71C();
      v158 = v267;
      v127 = v71;
      v159 = v282;
      sub_1B014D0EC();
      if (v159)
      {
LABEL_44:
        (*(v280 + 8))(v72, v127);
        swift_unknownObjectRelease();
        v85 = v283;
        return __swift_destroy_boxed_opaque_existential_0(v85);
      }

      LOBYTE(v287) = 0;
      sub_1B011CA10();
      v165 = v242;
      sub_1B014D17C();
      v166 = v280;
      v196 = v285;
      LOBYTE(v287) = 1;
      v279 = sub_1B014D13C();
      v282 = 0;
      v203 = v202;
      (*(v238 + 8))(v158, v165);
      (*(v166 + 8))(v72, v71);
      swift_unknownObjectRelease();
      v185 = v212;
      *v212 = v196;
      *(v185 + 2) = v279;
      *(v185 + 3) = v203;
LABEL_55:
      swift_storeEnumTagMultiPayload();
      v204 = v185;
      v199 = v210;
      sub_1B00FA138(v204, v210, type metadata accessor for FBKSInteraction.Content);
      v200 = v283;
      v76 = v274;
      goto LABEL_52;
    case 9:
      LOBYTE(v285) = 9;
      sub_1B011C6C8();
      v108 = v266;
      v109 = v282;
      sub_1B014D0EC();
      if (v109)
      {
        goto LABEL_7;
      }

      sub_1B011CA10();
      v110 = v241;
      sub_1B014D17C();
      v111 = v280;
      (*(v240 + 8))(v108, v110);
      (*(v111 + 8))(v72, v71);
      swift_unknownObjectRelease();
      v167 = v217;
      *v217 = v285;
      goto LABEL_48;
    case 10:
      LOBYTE(v285) = 10;
      sub_1B011C674();
      v156 = v268;
      v78 = v71;
      v157 = v282;
      sub_1B014D0EC();
      if (v157)
      {
        goto LABEL_42;
      }

      v162 = v244;
      v163 = sub_1B014D13C();
      v164 = v280;
      v193 = v163;
      v195 = v194;
      (*(v243 + 8))(v156, v162);
      (*(v164 + 8))(v72, v78);
      swift_unknownObjectRelease();
      v171 = v218;
      *v218 = v193;
      v171[1] = v195;
      goto LABEL_49;
    case 11:
      LOBYTE(v285) = 11;
      sub_1B011C620();
      v95 = v269;
      v96 = v282;
      sub_1B014D0EC();
      if (v96)
      {
        goto LABEL_7;
      }

      sub_1B011C2B4();
      v97 = v246;
      sub_1B014D17C();
      v98 = v280;
      (*(v245 + 8))(v95, v97);
      (*(v98 + 8))(v72, v71);
      swift_unknownObjectRelease();
      v172 = v286;
      v167 = v219;
      *v219 = v285;
      *(v167 + 16) = v172;
      goto LABEL_48;
    case 12:
      LOBYTE(v285) = 12;
      sub_1B011C5CC();
      v101 = v270;
      v78 = v71;
      v102 = v282;
      sub_1B014D0EC();
      if (v102)
      {
        goto LABEL_42;
      }

      v103 = v76;
      LOBYTE(v285) = 0;
      sub_1B011CA10();
      v104 = v249;
      sub_1B014D17C();
      v105 = v280;
      v107 = v287;
      v106 = v288;
      v293 = 1;
      sub_1B011C2B4();
      sub_1B014D17C();
      (*(v248 + 8))(v101, v104);
      (*(v105 + 8))(v72, v78);
      swift_unknownObjectRelease();
      v197 = v286;
      v198 = v213;
      *v213 = v107;
      v198[1] = v106;
      *(v198 + 1) = v285;
      *(v198 + 32) = v197;
      goto LABEL_53;
    case 13:
      LOBYTE(v285) = 13;
      sub_1B011C578();
      v146 = v69;
      v78 = v71;
      v147 = v282;
      sub_1B014D0EC();
      if (v147)
      {
        goto LABEL_42;
      }

      v103 = v76;
      LOBYTE(v285) = 0;
      sub_1B011CA10();
      v148 = v253;
      sub_1B014D17C();
      v149 = v280;
      v151 = v287;
      v150 = v288;
      v293 = 1;
      sub_1B011C2B4();
      sub_1B014D17C();
      (*(v252 + 8))(v146, v148);
      (*(v149 + 8))(v72, v78);
      swift_unknownObjectRelease();
      v201 = v286;
      v198 = v214;
      *v214 = v151;
      v198[1] = v150;
      *(v198 + 1) = v285;
      *(v198 + 32) = v201;
LABEL_53:
      swift_storeEnumTagMultiPayload();
      v177 = v198;
LABEL_54:
      v199 = v210;
      sub_1B00FA138(v177, v210, type metadata accessor for FBKSInteraction.Content);
      v200 = v283;
      v76 = v103;
      goto LABEL_52;
    case 14:
      LOBYTE(v285) = 14;
      sub_1B011C524();
      v90 = v271;
      v78 = v71;
      v91 = v282;
      sub_1B014D0EC();
      if (v91)
      {
        goto LABEL_42;
      }

      v92 = v250;
      v93 = sub_1B014D13C();
      v94 = v280;
      v168 = v93;
      v170 = v169;
      (*(v247 + 8))(v90, v92);
      (*(v94 + 8))(v72, v78);
      swift_unknownObjectRelease();
      v171 = v220;
      *v220 = v168;
      v171[1] = v170;
      goto LABEL_49;
    case 15:
      LOBYTE(v285) = 15;
      sub_1B011C4D0();
      v117 = v273;
      v78 = v71;
      v118 = v282;
      sub_1B014D0EC();
      if (v118)
      {
        goto LABEL_42;
      }

      v119 = v254;
      v120 = sub_1B014D13C();
      v121 = v280;
      v178 = v120;
      v180 = v179;
      (*(v251 + 8))(v117, v119);
      (*(v121 + 8))(v72, v78);
      swift_unknownObjectRelease();
      v171 = v221;
      *v221 = v178;
      v171[1] = v180;
      goto LABEL_49;
    case 16:
      LOBYTE(v285) = 16;
      sub_1B011C428();
      v78 = v71;
      v87 = v282;
      sub_1B014D0EC();
      if (v87)
      {
LABEL_42:
        (*(v280 + 8))(v72, v78);
        goto LABEL_8;
      }

      sub_1B011CA10();
      v88 = v256;
      sub_1B014D17C();
      v89 = v280;
      (*(v255 + 8))(v70, v88);
      (*(v89 + 8))(v72, v71);
      swift_unknownObjectRelease();
      v167 = v222;
      *v222 = v285;
LABEL_48:
      swift_storeEnumTagMultiPayload();
      v186 = v167;
LABEL_51:
      v199 = v210;
      sub_1B00FA138(v186, v210, type metadata accessor for FBKSInteraction.Content);
      v200 = v283;
LABEL_52:
      sub_1B00FA138(v199, v76, type metadata accessor for FBKSInteraction.Content);
      result = __swift_destroy_boxed_opaque_existential_0(v200);
      break;
    case 17:
      LOBYTE(v285) = 17;
      sub_1B011C3D4();
      v136 = v272;
      v137 = v282;
      sub_1B014D0EC();
      if (v137)
      {
        goto LABEL_7;
      }

      v138 = v257;
      v139 = sub_1B014D13C();
      v140 = v136;
      v141 = v280;
      v192 = v191;
      (*(v258 + 8))(v140, v138);
      (*(v141 + 8))(v72, v71);
      swift_unknownObjectRelease();
      v171 = v223;
      *v223 = v139;
      v171[1] = v192;
LABEL_49:
      swift_storeEnumTagMultiPayload();
      v186 = v171;
      goto LABEL_51;
    default:
      goto LABEL_6;
  }

  return result;
}

uint64_t sub_1B01152B0()
{
  sub_1B014D2FC();
  FBKSInteraction.Content.hash(into:)(v1);
  return sub_1B014D33C();
}

uint64_t sub_1B01152F4(uint64_t a1)
{
  sub_1B014D2FC();
  FBKSInteraction.Content.hash(into:)(v2);
  return sub_1B014D33C();
}

uint64_t sub_1B0115330@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_1B0100B40(v4, v5);
}

uint64_t sub_1B0115388(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_1B0100B40(v2, v3);
  return sub_1B0100A3C(v5, v6);
}

uint64_t sub_1B0115424@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*result + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
  v4 = *v3;
  v5 = v3[1];
  if (v5)
  {

    result = sub_1B01154BC(0x6C7070612E6D6F63, 0xEA00000000002E65, v4, v5);
    if ((result & 1) == 0)
    {

      v5 = 0xEB00000000797472;
      v4 = 0x6170206472696854;
    }
  }

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B01154BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_1B014CD1C();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_1B014CD1C();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_1B014D25C();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_1B014CD1C();
      v7 = v9;
    }

    while (v9);
  }

  sub_1B014CD1C();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_1B0115618(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18 - v13;
  sub_1B00DE660(a1, &v18 - v13, a5, a6);
  v15 = *a2;
  v16 = *a7;
  swift_beginAccess();
  sub_1B00DE71C(v14, v15 + v16, a5, a6);
  return swift_endAccess();
}

uint64_t sub_1B01156F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1B0115758(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

unint64_t sub_1B0115864()
{
  v1 = (v0 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain);
  swift_beginAccess();
  v4 = *v1;
  v5 = v1[1];
  v2 = FBKSInteraction.FeatureDomain.description.getter();
  sub_1B0100B40(v4, v5);
  sub_1B0100A3C(v4, v5);
  return v2;
}

char *FBKSInteraction.__allocating_init(featureDomain:bundleID:prefillQuestions:originalContent:generatedContent:modelVersion:diagnostics:auxiliaryMetrics:isHighPriority:evaluationID:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  v14 = v13;
  v17 = objc_allocWithZone(v13);
  v18 = *a1;
  v19 = a1[1];
  v20 = &v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v20 = 0;
  v20[1] = 0;
  *&v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v21 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  v22 = type metadata accessor for FBKSInteraction.AnnotatedContent(0);
  v23 = *(*(v22 - 8) + 56);
  v23(&v17[v21], 1, 1, v22);
  v23(&v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v22);
  *&v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v24 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  v25 = type metadata accessor for FBKSInteraction.Content(0);
  v26 = *(*(v25 - 8) + 56);
  v26(&v17[v24], 1, 1, v25);
  v26(&v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v25);
  v27 = &v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v27 = 0;
  v27[1] = 0;
  v28 = &v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v28 = 0;
  v28[1] = 0;
  *&v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v29 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v30 = sub_1B014CB1C();
  (*(*(v30 - 8) + 56))(&v17[v29], 1, 1, v30);
  v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  *&v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  v31 = &v17[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain];
  *v31 = v18;
  v31[1] = v19;
  v59.receiver = v17;
  v59.super_class = v14;
  v32 = objc_msgSendSuper2(&v59, sel_init);
  v33 = v32;
  if (a3)
  {
    v34 = (v32 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
    *v34 = a2;
    v34[1] = a3;
    v35 = v32;
  }

  else
  {
    v36 = objc_opt_self();
    v37 = v33;
    v38 = [v36 mainBundle];
    v39 = [v38 bundleIdentifier];

    if (v39)
    {
      v40 = sub_1B014CC1C();
      v42 = v41;
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    v43 = (v37 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
    *v43 = v40;
    v43[1] = v42;
  }

  v44 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  *(v33 + v44) = a4;

  v45 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  swift_beginAccess();
  sub_1B00DE71C(a5, v33 + v45, &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v46 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent;
  swift_beginAccess();
  sub_1B00DE71C(a6, v33 + v46, &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v47 = (v33 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion);
  swift_beginAccess();
  *v47 = a7;
  v47[1] = a8;

  v48 = (v33 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics);
  swift_beginAccess();
  *v48 = a9;
  v48[1] = a10;

  v49 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  swift_beginAccess();
  *(v33 + v49) = a11;

  v50 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  *(v33 + v50) = a12 & 1;
  v51 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  swift_beginAccess();
  sub_1B00DE71C(a13, v33 + v51, &qword_1EB6C3B98, &qword_1B014F360);
  swift_endAccess();

  return v33;
}

char *FBKSInteraction.__allocating_init(featureDomain:bundleID:prefillQuestions:originalContent:generatedContent:modelVersion:diagnostics:auxiliaryMetrics:isHighPriority:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = v12;
  v16 = objc_allocWithZone(v12);
  v17 = *a1;
  v18 = a1[1];
  v19 = &v16[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID];
  *v19 = 0;
  v19[1] = 0;
  *&v16[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions] = 0;
  v20 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalAnnotatedContent;
  v21 = type metadata accessor for FBKSInteraction.AnnotatedContent(0);
  v22 = *(*(v21 - 8) + 56);
  v22(&v16[v20], 1, 1, v21);
  v22(&v16[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedAnnotatedContent], 1, 1, v21);
  *&v16[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_extraContent] = MEMORY[0x1E69E7CC0];
  v23 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  v24 = type metadata accessor for FBKSInteraction.Content(0);
  v25 = *(*(v24 - 8) + 56);
  v25(&v16[v23], 1, 1, v24);
  v25(&v16[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent], 1, 1, v24);
  v26 = &v16[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion];
  *v26 = 0;
  v26[1] = 0;
  v27 = &v16[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics];
  *v27 = 0;
  v27[1] = 0;
  *&v16[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics] = 0;
  v16[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority] = 0;
  v28 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__evaluationID;
  v29 = sub_1B014CB1C();
  (*(*(v29 - 8) + 56))(&v16[v28], 1, 1, v29);
  v16[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_sentPresented] = 0;
  v16[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_firstEvaluation] = 1;
  *&v16[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction____lazy_storage___dataSizeFormatter] = 0;
  v30 = &v16[OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_featureDomain];
  *v30 = v17;
  v30[1] = v18;
  v57.receiver = v16;
  v57.super_class = v13;
  v31 = objc_msgSendSuper2(&v57, sel_init);
  v32 = v31;
  if (a3)
  {
    v33 = (v31 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
    *v33 = a2;
    v33[1] = a3;
    v34 = v31;
  }

  else
  {
    v35 = objc_opt_self();
    v36 = v32;
    v37 = [v35 mainBundle];
    v38 = [v37 bundleIdentifier];

    if (v38)
    {
      v39 = sub_1B014CC1C();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    v42 = (v36 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction__bundleID);
    *v42 = v39;
    v42[1] = v41;
  }

  v43 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_prefillQuestions;
  swift_beginAccess();
  *(v32 + v43) = a4;

  v44 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_originalContent;
  swift_beginAccess();
  sub_1B00DE71C(a5, v32 + v44, &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v45 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_generatedContent;
  swift_beginAccess();
  sub_1B00DE71C(a6, v32 + v45, &qword_1EB6C3C28, &qword_1B01515D0);
  swift_endAccess();
  v46 = (v32 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_modelVersion);
  swift_beginAccess();
  *v46 = a7;
  v46[1] = a8;

  v47 = (v32 + OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_diagnostics);
  swift_beginAccess();
  *v47 = a9;
  v47[1] = a10;

  v48 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_auxiliaryMetrics;
  swift_beginAccess();
  *(v32 + v48) = a11;

  v49 = OBJC_IVAR____TtC15FeedbackService15FBKSInteraction_isHighPriority;
  swift_beginAccess();
  *(v32 + v49) = a12 & 1;

  return v32;
}