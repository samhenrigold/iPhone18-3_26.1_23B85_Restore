void sub_1C20E59D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1C216FCE4();
  swift_allocObject();
  sub_1C216FCD4();
  sub_1C20EAE78();
  sub_1C216FCC4();

  v5 = v32;
  v4 = v33;
  if (v32 == 0x69746E6564657263 && v33 == 0xEA00000000006C61 || ((v19 = sub_1C2171324(), v32 == 0x69746E6564657263) ? (v20 = v33 == 0xEE007465672E6C61) : (v20 = 0), !v20 ? (v21 = 0) : (v21 = 1), (v19 & 1) != 0 || (v21 & 1) != 0 || (sub_1C2171324() & 1) != 0))
  {
    v6 = [objc_allocWithZone(ASCCredentialRequestContext) initWithRequestTypes_];
    v7 = sub_1C21708F4();
    [v6 setRelyingPartyIdentifier_];

    v8 = sub_1C21708F4();

    v9 = objc_allocWithZone(ASCDigitalIdentityCredentialOptions);
    v10 = sub_1C21708F4();
    v11 = sub_1C2170154();
    v12 = [v9 initWithOrigin:v10 requestType:v8 commandData:v11];

    [v6 setDigitalIdentityCredentialOptions_];
    v13 = (v3 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_completionHandler);
    v14 = *(v3 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_completionHandler);
    if (v14)
    {
      v15 = v13[1];
      sub_1C20EAECC(*(v3 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_completionHandler), v15);
      v16 = v6;
      v14(v6, 0);
      sub_1C20B0080(v14, v15);

      v17 = *v13;
      v18 = v13[1];
      *v13 = 0;
      v13[1] = 0;
      sub_1C20B0080(v17, v18);
    }

    else
    {
      if (qword_1EDD4A728 != -1)
      {
        swift_once();
      }

      v27 = sub_1C21705A4();
      __swift_project_value_buffer(v27, qword_1EDD4CB08);
      v28 = sub_1C2170584();
      v29 = sub_1C2170C54();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1C20AD000, v28, v29, "Could not complete command without completionHandler", v30, 2u);
        MEMORY[0x1C6915360](v30, -1, -1);
      }

      sub_1C20E6774(0);
    }
  }

  else
  {
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v22 = sub_1C21705A4();
    __swift_project_value_buffer(v22, qword_1EDD4CB08);

    v23 = sub_1C2170584();
    v24 = sub_1C2170C54();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1C20D7F2C(v5, v4, &v31);
      _os_log_impl(&dword_1C20AD000, v23, v24, "Invalid JSON command, unexpected request type '%s'", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x1C6915360](v26, -1, -1);
      MEMORY[0x1C6915360](v25, -1, -1);
    }

    sub_1C20E6774(0);
  }
}

id sub_1C20E5FA0(uint64_t *a1)
{
  v2 = v1;
  v3 = a1[4];
  v4 = a1[5];
  v5 = *(a1 + 6);
  v51 = *(a1 + 5);
  v52 = v5;
  v6 = *(a1 + 8);
  v53 = *(a1 + 7);
  v54 = v6;
  v7 = *(a1 + 4);
  v49 = *(a1 + 3);
  v50 = v7;
  v8 = [objc_allocWithZone(ASCCredentialRequestContext) initWithRequestTypes_];
  [v8 setIsCABLEAuthenticatorRequest_];
  if (v4 && *(v4 + 16) && (v9 = sub_1C2121F88(30325, 0xE200000000000000), (v10 & 1) != 0) && *(*(v4 + 56) + v9) == 1)
  {
    v40 = 0;
    if (!v3)
    {
LABEL_6:
      v11 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    v40 = 1;
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  v38 = v2;
  v12 = *(v3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v39 = v8;
    *&v48[0] = MEMORY[0x1E69E7CC0];
    sub_1C2170FD4();
    v13 = (v3 + 64);
    do
    {
      v15 = *(v13 - 2);
      v17 = *(v13 - 1);
      v16 = *v13;

      sub_1C20D865C(v15, v17);

      sub_1C20D865C(v15, v17);

      v18 = sub_1C2170154();
      if (v16)
      {
        v14 = sub_1C2170B54();
      }

      else
      {
        v14 = 0;
      }

      v13 += 5;
      [objc_allocWithZone(ASCPublicKeyCredentialDescriptor) initWithCredentialID:v18 transports:v14];

      sub_1C20D3174(v15, v17);

      sub_1C20D3174(v15, v17);

      sub_1C2170FB4();
      sub_1C2170FE4();
      sub_1C2170FF4();
      sub_1C2170FC4();
      --v12;
    }

    while (v12);
    v11 = *&v48[0];
    v8 = v39;
  }

  if (v11 >> 62)
  {
    result = sub_1C2170E84();
    if (result != 1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result != 1)
    {
      goto LABEL_23;
    }
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
    v20 = v8;
    v21 = MEMORY[0x1C69141F0](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v20 = v8;
    v21 = *(v11 + 32);
  }

  v22 = v21;
  v23 = [v21 credentialID];

  v24 = sub_1C2170174();
  v26 = v25;

  v27 = [objc_opt_self() magicCredentialID];
  v28 = sub_1C2170174();
  v30 = v29;

  LOBYTE(v27) = sub_1C21068CC(v24, v26, v28, v30);
  sub_1C20D3174(v28, v30);
  sub_1C20D3174(v24, v26);
  if (v27)
  {

    v11 = 0;
    *(v38 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_usedMagicCredentialID) = 1;
  }

  v8 = v20;
LABEL_23:
  v31 = sub_1C21708F4();
  v32 = sub_1C2170154();
  if ((v40 & 1) == 0)
  {
    v33 = sub_1C21708F4();

    if (v11)
    {
      goto LABEL_25;
    }

LABEL_27:
    v34 = 0;
    goto LABEL_28;
  }

  v33 = 0;
  if (!v11)
  {
    goto LABEL_27;
  }

LABEL_25:
  sub_1C20DB8B8(0, &qword_1EBF23410, off_1E815F1B8);

  v34 = sub_1C2170B54();

LABEL_28:
  v35 = [objc_allocWithZone(ASCPublicKeyCredentialAssertionOptions) initWithKind:1 relyingPartyIdentifier:v31 clientDataHash:v32 userVerificationPreference:v33 allowedCredentials:v34];

  if (*(&v49 + 1) != 2)
  {
    v42 = v49;
    v45 = v52;
    v46 = v53;
    v43 = v50;
    v44 = v51;
    v48[4] = v53;
    v48[5] = v54;
    v48[2] = v51;
    v48[3] = v52;
    v47 = v54;
    v48[0] = v49;
    v48[1] = v50;
    sub_1C20EAE1C(v48, v41);
    v36 = sub_1C212EC3C(1);
    [v35 setExtensions_];

    sub_1C20EB498(&v49, &unk_1EBF23690, &qword_1C2176D38);
  }

  [v8 setPlatformKeyCredentialAssertionOptions_];
  v37 = sub_1C21708F4();
  [v8 setRelyingPartyIdentifier_];

  return v8;
}

uint64_t sub_1C20E64D8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1C2170E84();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v9 = MEMORY[0x1E69E7CC0];
    result = sub_1C2170FD4();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          MEMORY[0x1C69141F0]();
          sub_1C20DB8B8(0, &qword_1EBF23730, 0x1E696ABD0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23738, &qword_1C2179240);
          swift_dynamicCast();
          sub_1C2170FB4();
          sub_1C2170FE4();
          sub_1C2170FF4();
          sub_1C2170FC4();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = (a1 + 32);
        sub_1C20DB8B8(0, &qword_1EBF23730, 0x1E696ABD0);
        do
        {
          v7 = *v6++;
          v8 = v7;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23738, &qword_1C2179240);
          swift_dynamicCast();
          sub_1C2170FB4();
          sub_1C2170FE4();
          sub_1C2170FF4();
          sub_1C2170FC4();
          --v2;
        }

        while (v2);
      }

      return v9;
    }
  }

  return result;
}

uint64_t sub_1C20E66CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    sub_1C2170FD4();
    v4 = a1 + 32;
    do
    {
      v4 += 4;
      sub_1C2171424();
      sub_1C2170FB4();
      sub_1C2170FE4();
      sub_1C2170FF4();
      sub_1C2170FC4();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

void *sub_1C20E6774(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23680, &qword_1C2176D30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34[-1] - v5;
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v7 = sub_1C21705A4();
  __swift_project_value_buffer(v7, qword_1EDD4CB08);
  v8 = sub_1C2170584();
  v9 = sub_1C2170C54();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33 = a1;
    v34[0] = v11;
    *v10 = 136315138;
    sub_1C20E7CE8();
    v12 = sub_1C21713D4();
    v14 = sub_1C20D7F2C(v12, v13, v34);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1C20AD000, v8, v9, "caBLE transaction failed: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x1C6915360](v11, -1, -1);
    MEMORY[0x1C6915360](v10, -1, -1);
  }

  [*(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_powerLogger) logAuthenticationFinishedEventIfNeeded];
  [*(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_bluetoothAdvertiser) invalidate];
  v15 = type metadata accessor for ASCABLEAdvertisement(0);
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_advertisement;
  swift_beginAccess();
  sub_1C20EB114(v6, v2 + v16);
  swift_endAccess();
  v17 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentState);
  *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentState) = 0;
  sub_1C20E1718(v17);
  v18 = (v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_completionHandler);
  v19 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_completionHandler);
  if (v19)
  {
    v20 = v18[1];
    sub_1C20E7CE8();
    v21 = swift_allocError();
    *v22 = a1;

    v19(0, v21);
    sub_1C20B0080(v19, v20);

    v23 = *v18;
  }

  else
  {
    v23 = 0;
  }

  v24 = v18[1];
  *v18 = 0;
  v18[1] = 0;
  sub_1C20B0080(v23, v24);
  v25 = OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_webSocket;
  v26 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_webSocket);
  if (v26)
  {
    v27 = v26;
    sub_1C2152FA4();

    v26 = *(v2 + v25);
  }

  *(v2 + v25) = 0;

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = result;
    sub_1C20E7CE8();
    v30 = swift_allocError();
    *v31 = a1;
    v32 = sub_1C216FF84();

    [v29 authenticator:v2 didCompleteTransactionWithError:v32];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C20E6B10(void *a1)
{
  v2 = sub_1C2170664();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C21706D4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2170684();
  v10 = sub_1C21706C4();
  (*(v7 + 8))(v9, v6);
  v11 = a1[2];
  if (v10)
  {
    if (v11)
    {
      v12 = a1[4];

      return v12;
    }

    return 0;
  }

  if (!v11)
  {
    return 0;
  }

  v13 = (v3 + 88);
  v14 = *MEMORY[0x1E6977AE8];
  v15 = (v3 + 8);
  for (i = a1 + 5; ; i += 2)
  {
    v12 = *(i - 1);
    swift_bridgeObjectRetain_n();
    sub_1C2170674();
    if ((*v13)(v5, v2) == v14)
    {
      break;
    }

    (*v15)(v5, v2);
    if (!--v11)
    {
      return 0;
    }
  }

  (*v15)(v5, v2);
  return v12;
}

id ASCABLEAuthenticator.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_bluetoothAdvertiser] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASCABLEAuthenticator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C20E70B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASCABLEAuthenticator.APSWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ASCABLEAuthenticator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_1C20E71AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C20E7294(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C20E71CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C20E73C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C20E71EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C20E75D8(a1, a2, a3, *v3, &unk_1EBF23740, &unk_1C2176DB0, MEMORY[0x1E6968A70]);
  *v3 = result;
  return result;
}

char *sub_1C20E7230(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C20E74D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C20E7250(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C20E75D8(a1, a2, a3, *v3, &unk_1EBF23E70, &qword_1C2176D90, type metadata accessor for ASPasswordSignInEventCollector.SignInEvent);
  *v3 = result;
  return result;
}

void *sub_1C20E7294(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23720, &qword_1C2176D98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23728, &unk_1C2176DA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C20E73C8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF236C0, &unk_1C2176D50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C20E74D4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF236B0, &qword_1C2176D40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_1C20E75D8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

__n128 sub_1C20E77B4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23660, &qword_1C2176D10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1C20EB3E8(a3, &v12 - v9, &qword_1EBF23660, &qword_1C2176D10);
  v10 = sub_1C20FAAD0(&v13, a1, a2);
  result = v14;
  *a4 = v13;
  *(a4 + 8) = result;
  *(a4 + 24) = v10;
  return result;
}

uint64_t sub_1C20E7898(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23750, &qword_1C2176DC0);
  v10 = sub_1C20EB398(&qword_1EDD4A8B0, &unk_1EBF23750, &qword_1C2176DC0, MEMORY[0x1E6969E08]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1C21063A0(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v5;
}

uint64_t sub_1C20E7974(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1C20FAF88(result);
    }

    else
    {
      sub_1C216FE14();
      swift_allocObject();
      sub_1C216FDE4();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1C21700E4();
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

unint64_t sub_1C20E7A14(unint64_t result)
{
  if (result > 7)
  {
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ASCABLEAuthenticator(uint64_t a1)
{
  result = qword_1EBF235D0;
  if (!qword_1EBF235D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C20E7A78(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (((a2 >> 60) & 3) <= 1)
  {
    if (v2)
    {
      a2 &= 0xCFFFFFFFFFFFFFFFLL;
    }

    return sub_1C20D3174(result, a2);
  }

  if (v2 == 2)
  {
    a2 &= 0xCFFFFFFFFFFFFFFFLL;
    return sub_1C20D3174(result, a2);
  }

  return result;
}

uint64_t sub_1C20E7AA8(uint64_t a1)
{
  v1 = *(a1 + 216);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_1C20E7AC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a2)
  {

    sub_1C20D3174(a3, a4);
  }
}

void sub_1C20E7B24(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {

    sub_1C20D3174(a3, a4);
  }
}

unint64_t sub_1C20E7B88()
{
  result = qword_1EBF23580;
  if (!qword_1EBF23580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23580);
  }

  return result;
}

unint64_t sub_1C20E7BE0()
{
  result = qword_1EBF23588;
  if (!qword_1EBF23588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23588);
  }

  return result;
}

unint64_t sub_1C20E7C38()
{
  result = qword_1EBF23590;
  if (!qword_1EBF23590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23590);
  }

  return result;
}

unint64_t sub_1C20E7C90()
{
  result = qword_1EBF23598;
  if (!qword_1EBF23598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23598);
  }

  return result;
}

unint64_t sub_1C20E7CE8()
{
  result = qword_1EBF235A8;
  if (!qword_1EBF235A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF235A8);
  }

  return result;
}

void sub_1C20E7D44(uint64_t a1)
{
  sub_1C20E7F88(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C20E7F88(uint64_t a1)
{
  if (!qword_1EDD4A8E0)
  {
    type metadata accessor for ASCABLEAdvertisement(255);
    v1 = sub_1C2170D24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD4A8E0);
    }
  }
}

uint64_t getEnumTagSinglePayload for ASCABLEAuthenticator.CABLEState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ASCABLEAuthenticator.CABLEState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C20E8168()
{
  result = qword_1EBF23658;
  if (!qword_1EBF23658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23658);
  }

  return result;
}

unint64_t sub_1C20E81BC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C2171134();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

void *sub_1C20E8208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v9[2] = *(v3 + 16);
  result = sub_1C20FA088(sub_1C20E8264, v9, a1, a2);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;
  return result;
}

id sub_1C20E8284(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 96);
  v4 = *(a1 + 104);
  v5 = *(a1 + 112);
  v6 = *(a1 + 168);
  v55 = *(a1 + 152);
  v56 = v6;
  v7 = *(a1 + 200);
  v57 = *(a1 + 184);
  v58 = v7;
  v8 = *(a1 + 136);
  v53 = *(a1 + 120);
  v54 = v8;
  v9 = objc_allocWithZone(ASCCredentialRequestContext);
  v42 = v2;
  v43 = v1;
  sub_1C20D865C(v1, v2);
  v44 = [v9 initWithRequestTypes_];
  [v44 setIsCABLEAuthenticatorRequest_];
  v10 = *(v3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    *&v52[0] = MEMORY[0x1E69E7CC0];
    sub_1C20E7230(0, v10, 0);
    v11 = *&v52[0];
    v12 = (v3 + 48);
    v13 = *(*&v52[0] + 16);
    do
    {
      v15 = *v12;
      v12 += 6;
      v14 = v15;
      *&v52[0] = v11;
      v16 = *(v11 + 24);
      if (v13 >= v16 >> 1)
      {
        sub_1C20E7230((v16 > 1), v13 + 1, 1);
        v11 = *&v52[0];
      }

      *(v11 + 16) = v13 + 1;
      *(v11 + 4 * v13++ + 32) = v14;
      --v10;
    }

    while (v10);
  }

  sub_1C20E66CC(v11);

  if (v5 && *(v5 + 16) && (v17 = sub_1C2121F88(30325, 0xE200000000000000), (v18 & 1) != 0) && *(*(v5 + 56) + v17) == 1)
  {
    v41 = 0;
    if (!v4)
    {
LABEL_11:
      v19 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v41 = 1;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  v20 = *(v4 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    *&v52[0] = MEMORY[0x1E69E7CC0];
    sub_1C2170FD4();
    v21 = (v4 + 64);
    do
    {
      v23 = *(v21 - 2);
      v25 = *(v21 - 1);
      v24 = *v21;

      sub_1C20D865C(v23, v25);

      sub_1C20D865C(v23, v25);

      v26 = sub_1C2170154();
      if (v24)
      {
        v22 = sub_1C2170B54();
      }

      else
      {
        v22 = 0;
      }

      v21 += 5;
      [objc_allocWithZone(ASCPublicKeyCredentialDescriptor) initWithCredentialID:v26 transports:v22];

      sub_1C20D3174(v23, v25);

      sub_1C20D3174(v23, v25);

      sub_1C2170FB4();
      sub_1C2170FE4();
      sub_1C2170FF4();
      sub_1C2170FC4();
      --v20;
    }

    while (v20);
    v19 = *&v52[0];
  }

LABEL_20:
  v27 = sub_1C2170154();
  sub_1C20D3174(v43, v42);
  v28 = sub_1C21708F4();
  v29 = sub_1C21708F4();
  v30 = sub_1C2170154();
  v31 = sub_1C21708F4();
  sub_1C20DB8B8(0, &qword_1EDD4A9B0, 0x1E696AD98);
  v32 = sub_1C2170B54();

  v33 = sub_1C21708F4();
  v34 = 0;
  if ((v41 & 1) == 0)
  {
    v34 = sub_1C21708F4();
  }

  if (v19)
  {
    sub_1C20DB8B8(0, &qword_1EBF23410, off_1E815F1B8);
    v35 = sub_1C2170B54();
  }

  else
  {
    v35 = 0;
  }

  v36 = v27;
  v37 = [objc_allocWithZone(ASCPublicKeyCredentialCreationOptions) initWithChallenge:0 clientDataJSON:0 clientDataHash:v27 relyingPartyIdentifier:v28 userName:v29 userIdentifier:v30 userDisplayName:v31 supportedAlgorithmIdentifiers:v32 attestationPreference:v33 userVerificationPreference:v34 excludedCredentials:v35 extensions:0 origin:0];

  if (*(&v53 + 1) != 2)
  {
    v46 = v53;
    v49 = v56;
    v50 = v57;
    v47 = v54;
    v48 = v55;
    v52[4] = v57;
    v52[5] = v58;
    v52[2] = v55;
    v52[3] = v56;
    v51 = v58;
    v52[0] = v53;
    v52[1] = v54;
    sub_1C20EAE1C(v52, v45);
    v38 = sub_1C212EE38(1);
    [v37 setExtensions_];

    sub_1C20EB498(&v53, &unk_1EBF23690, &qword_1C2176D38);
  }

  [v44 setPlatformKeyCredentialCreationOptions_];
  v39 = [v37 relyingPartyIdentifier];
  if (!v39)
  {
    sub_1C2170914();
    v39 = sub_1C21708F4();
  }

  [v44 setRelyingPartyIdentifier_];

  return v44;
}

void sub_1C20E880C(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentState;
  v4 = v2[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentState];
  if (v4 < 3)
  {
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v5 = sub_1C21705A4();
    __swift_project_value_buffer(v5, qword_1EDD4CB08);
    v6 = v2;
    v7 = v2;
    v8 = sub_1C2170584();
    v9 = sub_1C2170C54();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_23;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v12 = v6[v3];
    if (v12 <= 1)
    {
      if (v6[v3])
      {
        v13 = 0x80000001C21842B0;
        v14 = 0xD000000000000010;
      }

      else
      {
        v13 = 0xE400000000000000;
        v14 = 1701602409;
      }

      goto LABEL_22;
    }

    if (v12 == 2)
    {
      v14 = 0xD000000000000015;
      v15 = "listeningForRelayPush";
    }

    else
    {
      if (v12 == 3)
      {
        v13 = 0x80000001C21842F0;
        v14 = 0xD00000000000001ALL;
LABEL_22:
        v16 = sub_1C20D7F2C(v14, v13, &v17);

        *(v10 + 4) = v16;
        _os_log_impl(&dword_1C20AD000, v8, v9, "Unexpectedly received socket message while in state %s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v11);
        MEMORY[0x1C6915360](v11, -1, -1);
        MEMORY[0x1C6915360](v10, -1, -1);
LABEL_23:

        sub_1C20E6774(0);
        return;
      }

      v14 = 0xD000000000000015;
      v15 = "connectionEstablished";
    }

    v13 = (v15 - 32) | 0x8000000000000000;
    goto LABEL_22;
  }

  if (v4 == 3)
  {

    sub_1C20E4094(a1, a2);
  }

  else
  {

    sub_1C20E4F30(a1, a2);
  }
}

void *sub_1C20E8A78(uint64_t a1, unint64_t a2)
{
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v4 = sub_1C21705A4();
  __swift_project_value_buffer(v4, qword_1EDD4CB08);

  v5 = sub_1C2170584();
  v6 = sub_1C2170C54();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1C20D7F2C(a1, a2, &v10);
    _os_log_impl(&dword_1C20AD000, v5, v6, "Unexpectedly received string frame: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x1C6915360](v8, -1, -1);
    MEMORY[0x1C6915360](v7, -1, -1);
  }

  return sub_1C20E6774(4);
}

void *sub_1C20E8BE0(void *a1)
{
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v2 = sub_1C21705A4();
  __swift_project_value_buffer(v2, qword_1EDD4CB08);
  v3 = a1;
  v4 = sub_1C2170584();
  v5 = sub_1C2170C54();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1C21713D4();
    v10 = sub_1C20D7F2C(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1C20AD000, v4, v5, "Networking error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x1C6915360](v7, -1, -1);
    MEMORY[0x1C6915360](v6, -1, -1);
  }

  return sub_1C20E6774(4);
}

id sub_1C20E8D60(void *a1, char *a2, uint64_t a3)
{
  v114 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23770, &qword_1C2176DD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v111 = (&v106 - v6);
  v112 = type metadata accessor for CableResponse.AllocationResponse(0);
  v110 = *(v112 - 8);
  v7 = MEMORY[0x1EEE9AC00](v112);
  v108 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v107 = &v106 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v109 = &v106 - v11;
  v12 = sub_1C21703D4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = type metadata accessor for CableResponse(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v106 - v17;
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v19 = sub_1C21705A4();
  __swift_project_value_buffer(v19, qword_1EDD4CB08);
  v20 = sub_1C2170584();
  v21 = sub_1C2170C34();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = a3;
    v23 = v13;
    v24 = v16;
    v25 = a1;
    v26 = v18;
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1C20AD000, v20, v21, "Received server allocation response", v27, 2u);
    v28 = v27;
    v18 = v26;
    a1 = v25;
    v16 = v24;
    v13 = v23;
    a3 = v22;
    MEMORY[0x1C6915360](v28, -1, -1);
  }

  if (a3)
  {
    v29 = v114;
    v30 = v114;
    v31 = sub_1C2170584();
    v32 = sub_1C2170C54();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v115[0] = v34;
      *v33 = 134218242;
      *(v33 + 4) = a3;
      *(v33 + 12) = 2080;
      if (v114)
      {
        swift_getErrorValue();
        v35 = sub_1C21713D4();
        v37 = v36;
      }

      else
      {
        v35 = 0x3E6C696E3CLL;
        v37 = 0xE500000000000000;
      }

      v60 = sub_1C20D7F2C(v35, v37, v115);

      *(v33 + 14) = v60;
      _os_log_impl(&dword_1C20AD000, v31, v32, "Received unexpected resultCode from server: %ld, %s", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x1C6915360](v34, -1, -1);
      MEMORY[0x1C6915360](v33, -1, -1);
    }

    return sub_1C20E6774(4);
  }

  if (!a1 || (objc_opt_self(), (v38 = swift_dynamicCastObjCClass()) == 0))
  {
    v46 = a1;
    v47 = v114;
    v48 = v114;
    v49 = sub_1C2170584();
    v50 = sub_1C2170C54();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = 0x3E6C696E3CLL;
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v115[0] = v53;
      *v52 = 136315394;
      v54 = 0xE500000000000000;
      v55 = sub_1C2163C04(0x3E6C696E3CLL, 0xE500000000000000, a1);
      v57 = sub_1C20D7F2C(v55, v56, v115);

      *(v52 + 4) = v57;
      *(v52 + 12) = 2080;
      if (v114)
      {
        swift_getErrorValue();
        v51 = sub_1C21713D4();
        v54 = v58;
      }

      v59 = sub_1C20D7F2C(v51, v54, v115);

      *(v52 + 14) = v59;
      _os_log_impl(&dword_1C20AD000, v49, v50, "Received unexpected response from server: %s, %s", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6915360](v53, -1, -1);
      MEMORY[0x1C6915360](v52, -1, -1);
    }

    return sub_1C20E6774(4);
  }

  v39 = v38;
  v40 = a1;
  result = [v39 protoResponse];
  if (result)
  {
    v42 = result;
    v43 = sub_1C2170174();
    v45 = v44;

    v117 = v43;
    v118 = v45;
    v116 = 0;
    memset(v115, 0, sizeof(v115));
    sub_1C21703C4();
    sub_1C20EB450(&qword_1EBF23778, type metadata accessor for CableResponse, &unk_1C2180650);
    sub_1C21704B4();
    if (v18[*(v13 + 28)] != 1)
    {
      sub_1C20EB560(v18, v16, type metadata accessor for CableResponse);
      v63 = sub_1C2170584();
      v71 = sub_1C2170C54();
      if (!os_log_type_enabled(v63, v71))
      {
        sub_1C20EB5C8(v16, type metadata accessor for CableResponse);
        goto LABEL_41;
      }

      v65 = swift_slowAlloc();
      *v65 = 134217984;
      v72 = v16[*(v13 + 28)];
      v73 = v18;
      if (v72 == 5)
      {
        v74 = 0;
      }

      else
      {
        v74 = v72;
      }

      sub_1C20EB5C8(v16, type metadata accessor for CableResponse);
      *(v65 + 4) = v74;
      v18 = v73;
      v66 = "Allocation server returned error: %ld";
      v67 = v71;
      v68 = v63;
      v69 = v65;
      v70 = 12;
      goto LABEL_31;
    }

    v61 = v111;
    sub_1C216439C(v111);
    v62 = v112;
    if ((*(v110 + 48))(v61, 1, v112) == 1)
    {
      sub_1C20EB498(v61, &qword_1EBF23770, &qword_1C2176DD0);
      v63 = sub_1C2170584();
      v64 = sub_1C2170C54();
      if (!os_log_type_enabled(v63, v64))
      {
LABEL_41:

        sub_1C20E6774(4);
        return sub_1C20EB5C8(v18, type metadata accessor for CableResponse);
      }

      v65 = swift_slowAlloc();
      *v65 = 0;
      v66 = "Couldn't decode allocation response";
      v67 = v64;
      v68 = v63;
      v69 = v65;
      v70 = 2;
LABEL_31:
      _os_log_impl(&dword_1C20AD000, v68, v67, v66, v69, v70);
      MEMORY[0x1C6915360](v65, -1, -1);
      goto LABEL_41;
    }

    v75 = v109;
    sub_1C20EB4F8(v61, v109, type metadata accessor for CableResponse.AllocationResponse);
    v76 = v107;
    sub_1C20EB560(v75, v107, type metadata accessor for CableResponse.AllocationResponse);
    v77 = sub_1C2170584();
    v78 = sub_1C2170C74();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *&v115[0] = v111;
      *v79 = 136315138;
      v80 = (v76 + *(v62 + 20));
      v81 = *v80;
      v82 = v80[1];
      v114 = v18;
      if (v82 >> 60 == 15)
      {
        v83 = 0;
      }

      else
      {
        v83 = v81;
      }

      if (v82 >> 60 == 15)
      {
        v84 = 0xC000000000000000;
      }

      else
      {
        v84 = v82;
      }

      sub_1C20B22B8(v81, v82);
      v85 = sub_1C2170084();
      v87 = v86;
      v88 = v84;
      v75 = v109;
      sub_1C20D3174(v83, v88);
      sub_1C20EB5C8(v76, type metadata accessor for CableResponse.AllocationResponse);
      v89 = v85;
      v62 = v112;
      v90 = sub_1C20D7F2C(v89, v87, v115);

      *(v79 + 4) = v90;
      v18 = v114;
      _os_log_impl(&dword_1C20AD000, v77, v78, "Allocated relay with routingID: %s", v79, 0xCu);
      v91 = v111;
      __swift_destroy_boxed_opaque_existential_0Tm(v111);
      MEMORY[0x1C6915360](v91, -1, -1);
      MEMORY[0x1C6915360](v79, -1, -1);
    }

    else
    {

      sub_1C20EB5C8(v76, type metadata accessor for CableResponse.AllocationResponse);
    }

    v92 = v108;
    v93 = v75 + *(v62 + 24);
    if (*(v93 + 4))
    {
      v94 = 0;
    }

    else
    {
      v94 = *v93;
      if (HIWORD(*v93))
      {
        sub_1C20EB560(v75, v108, type metadata accessor for CableResponse.AllocationResponse);
        v95 = sub_1C2170584();
        v96 = sub_1C2170C54();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          *v97 = 67109120;
          v98 = v92 + *(v62 + 24);
          if (*(v98 + 4))
          {
            v99 = 0;
          }

          else
          {
            v99 = *v98;
          }

          sub_1C20EB5C8(v92, type metadata accessor for CableResponse.AllocationResponse);
          *(v97 + 4) = v99;
          _os_log_impl(&dword_1C20AD000, v95, v96, "Received invalid encodedDomain: %u", v97, 8u);
          MEMORY[0x1C6915360](v97, -1, -1);
        }

        else
        {
          sub_1C20EB5C8(v92, type metadata accessor for CableResponse.AllocationResponse);
        }

        sub_1C20E6774(4);
        goto LABEL_60;
      }
    }

    v100 = (v75 + *(v62 + 20));
    v101 = v100[1];
    if (v101 >> 60 == 15)
    {
      v102 = 0;
    }

    else
    {
      v102 = *v100;
    }

    if (v101 >> 60 == 15)
    {
      v103 = 0xC000000000000000;
    }

    else
    {
      v103 = v100[1];
    }

    sub_1C20B22B8(*v100, v101);
    v104 = v113;
    sub_1C20E2670(v102, v103, v94);
    sub_1C20D3174(v102, v103);
    v105 = *(v104 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentState);
    *(v104 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentState) = 2;
    sub_1C20E1718(v105);
LABEL_60:

    sub_1C20EB5C8(v75, type metadata accessor for CableResponse.AllocationResponse);
    return sub_1C20EB5C8(v18, type metadata accessor for CableResponse);
  }

  __break(1u);
  return result;
}

void sub_1C20E9A58()
{
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v0 = sub_1C21705A4();
  __swift_project_value_buffer(v0, qword_1EDD4CB08);
  oslog = sub_1C2170584();
  v1 = sub_1C2170C34();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1C20AD000, oslog, v1, "Received public push token", v2, 2u);
    MEMORY[0x1C6915360](v2, -1, -1);
  }
}

void sub_1C20E9B40(NSObject *a1)
{
  v125 = a1;
  v116 = sub_1C2170764();
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v114 = &v109 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for CableRelayConnectionRequest(0);
  v2 = *(v122 - 8);
  v3 = MEMORY[0x1EEE9AC00](v122);
  v118 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v120 = &v109 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23678, &unk_1C2180C70);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v117 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v119 = &v109 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v121 = &v109 - v11;
  v12 = sub_1C21703D4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v123 = (&v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for CableRelayPushMessage(0);
  MEMORY[0x1EEE9AC00](v14);
  v124 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23680, &qword_1C2176D30);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v109 - v17;
  v19 = type metadata accessor for ASCABLEAdvertisement(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v23 = sub_1C21705A4();
  v24 = __swift_project_value_buffer(v23, qword_1EDD4CB08);
  v25 = sub_1C2170584();
  v26 = sub_1C2170C74();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v113 = v18;
    v28 = v24;
    v29 = v14;
    v30 = v2;
    v31 = v19;
    v32 = v22;
    v33 = v27;
    *v27 = 0;
    _os_log_impl(&dword_1C20AD000, v25, v26, "Received relay push", v27, 2u);
    v34 = v33;
    v22 = v32;
    v19 = v31;
    v2 = v30;
    v14 = v29;
    v24 = v28;
    v18 = v113;
    MEMORY[0x1C6915360](v34, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = Strong;
    v37 = OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_advertisement;
    swift_beginAccess();
    sub_1C20EB3E8(&v36[v37], v18, &qword_1EBF23680, &qword_1C2176D30);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      sub_1C20EB498(v18, &qword_1EBF23680, &qword_1C2176D30);
      v38 = sub_1C2170584();
      v39 = sub_1C2170C54();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1C20AD000, v38, v39, "Unexpectedly received push without a valid advertisement", v40, 2u);
        MEMORY[0x1C6915360](v40, -1, -1);
      }

      sub_1C20E6774(0);
      return;
    }

    sub_1C20EB4F8(v18, v22, type metadata accessor for ASCABLEAdvertisement);
    if (v125)
    {
      v126 = 0x6675626F746F7270;
      v127 = 0xE800000000000000;
      v44 = v125;
      sub_1C2170ED4();
      v45 = [v44 userInfo];
      if (!v45)
      {
        __break(1u);
        return;
      }

      v46 = v45;
      v47 = sub_1C2170864();

      if (*(v47 + 16) && (v48 = sub_1C212224C(v128), (v49 & 1) != 0))
      {
        sub_1C20DA01C(*(v47 + 56) + 32 * v48, v130);
        sub_1C20EADC8(v128);

        if (swift_dynamicCast())
        {
          v50 = sub_1C2170064();
          if (v51 >> 60 != 15)
          {
            v112 = v24;
            v130[0] = v50;
            v130[1] = v51;
            v129 = 0;
            memset(v128, 0, sizeof(v128));
            v113 = v50;
            v125 = v51;
            sub_1C20D865C(v50, v51);
            sub_1C21703C4();
            sub_1C20EB450(&qword_1EBF23688, type metadata accessor for CableRelayPushMessage, &unk_1C217FC50);
            v52 = v124;
            sub_1C21704B4();
            v109 = 0;
            v123 = v44;
            v111 = v22;
            v60 = *(v14 + 20);
            v61 = v121;
            sub_1C20EB3E8(&v52[v60], v121, &qword_1EBF23678, &unk_1C2180C70);
            v62 = v122;
            v110 = *(v2 + 48);
            v63 = v110(v61, 1, v122);
            sub_1C20EB498(v61, &qword_1EBF23678, &unk_1C2180C70);
            v64 = v63 == 1;
            v65 = v124;
            if (v64)
            {
              goto LABEL_40;
            }

            v121 = v60;
            v66 = v119;
            sub_1C20EB3E8(&v124[v60], v119, &qword_1EBF23678, &unk_1C2180C70);
            v67 = v110;
            if (v110(v66, 1, v62) == 1)
            {
              v68 = type metadata accessor for CableRelayConnectionRequest.OneOf_Message(0);
              v69 = v120;
              (*(*(v68 - 8) + 56))(v120, 1, 1, v68);
              *(v69 + *(v62 + 20)) = MEMORY[0x1E69E7CC0];
              sub_1C21703A4();
              *(v69 + *(v62 + 28)) = xmmword_1C21769B0;
              v70 = v67;
              if (v67(v66, 1, v62) != 1)
              {
                sub_1C20EB498(v66, &qword_1EBF23678, &unk_1C2180C70);
              }
            }

            else
            {
              v70 = v67;
              v69 = v120;
              sub_1C20EB4F8(v66, v120, type metadata accessor for CableRelayConnectionRequest);
            }

            v71 = *(v69 + *(v62 + 20));

            sub_1C20EB5C8(v69, type metadata accessor for CableRelayConnectionRequest);
            v72 = *(v71 + 16);

            v65 = v124;
            if (!v72)
            {
LABEL_40:
              v76 = sub_1C2170584();
              v77 = sub_1C2170C54();
              if (os_log_type_enabled(v76, v77))
              {
                v78 = swift_slowAlloc();
                *v78 = 0;
                _os_log_impl(&dword_1C20AD000, v76, v77, "Could not read IP address for relay", v78, 2u);
                MEMORY[0x1C6915360](v78, -1, -1);
              }

              sub_1C20E6774(4);
              sub_1C20B23C8(v113, v125);

              v79 = v65;
            }

            else
            {
              v73 = v117;
              sub_1C20EB3E8(&v124[v121], v117, &qword_1EBF23678, &unk_1C2180C70);
              if (v70(v73, 1, v62) == 1)
              {
                v74 = type metadata accessor for CableRelayConnectionRequest.OneOf_Message(0);
                v75 = v118;
                (*(*(v74 - 8) + 56))(v118, 1, 1, v74);
                *&v75[*(v62 + 20)] = MEMORY[0x1E69E7CC0];
                sub_1C21703A4();
                *&v75[*(v62 + 28)] = xmmword_1C21769B0;
                if (v70(v73, 1, v62) != 1)
                {
                  sub_1C20EB498(v73, &qword_1EBF23678, &unk_1C2180C70);
                }
              }

              else
              {
                v75 = v118;
                sub_1C20EB4F8(v73, v118, type metadata accessor for CableRelayConnectionRequest);
              }

              v80 = *&v75[*(v62 + 20)];

              sub_1C20EB5C8(v75, type metadata accessor for CableRelayConnectionRequest);
              v81 = sub_1C20E6B10(v80);
              v83 = v82;

              v84 = v111;
              if (!v83)
              {
                v91 = sub_1C2170584();
                v92 = sub_1C2170C54();
                v93 = os_log_type_enabled(v91, v92);
                v94 = v124;
                if (v93)
                {
                  v95 = swift_slowAlloc();
                  *v95 = 0;
                  _os_log_impl(&dword_1C20AD000, v91, v92, "Could not find usable IP address", v95, 2u);
                  MEMORY[0x1C6915360](v95, -1, -1);
                }

                sub_1C20E6774(4);
                sub_1C20B23C8(v113, v125);

                v90 = v94;
                goto LABEL_53;
              }

              v85 = &v124[*(v14 + 24)];
              v86 = v85[1];
              if (v86 >> 60 == 15)
              {

                v87 = sub_1C2170584();
                v88 = sub_1C2170C54();
                if (os_log_type_enabled(v87, v88))
                {
                  v89 = swift_slowAlloc();
                  *v89 = 0;
                  _os_log_impl(&dword_1C20AD000, v87, v88, "Could not read access token for relay", v89, 2u);
                  MEMORY[0x1C6915360](v89, -1, -1);
                }

                sub_1C20E6774(4);
                sub_1C20B23C8(v113, v125);

                v90 = v124;
LABEL_53:
                sub_1C20EB5C8(v90, type metadata accessor for CableRelayPushMessage);
                v59 = v84;
                goto LABEL_30;
              }

              v119 = *v85;
              v122 = v81;
              sub_1C20B22B8(v119, v86);
              v121 = sub_1C2170084();
              v120 = v96;
              v97 = v115;
              v98 = v114;
              v99 = v116;
              (*(v115 + 16))(v114, *&v36[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_cryptographyManager] + OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_tunnelID, v116);
              sub_1C2170734();
              v100 = v128[0];
              v118 = sub_1C2170084();
              v102 = v101;
              sub_1C20D3174(v100, *(&v100 + 1));
              (*(v97 + 8))(v98, v99);
              v103 = v119;
              v104 = sub_1C2170074();
              v106 = v105;
              v107 = sub_1C216FFA4();
              sub_1C20E2E50(v122, v83, v121, v120, v118, v102, v104, v106, v107, v108);

              sub_1C20D3174(v103, v86);

              sub_1C20B23C8(v113, v125);

              v79 = v124;
            }

            sub_1C20EB5C8(v79, type metadata accessor for CableRelayPushMessage);
            v59 = v111;
LABEL_30:
            sub_1C20EB5C8(v59, type metadata accessor for ASCABLEAdvertisement);
            return;
          }
        }
      }

      else
      {

        sub_1C20EADC8(v128);
      }

      v53 = sub_1C2170584();
      v54 = sub_1C2170C54();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_1C20AD000, v53, v54, "Could not read protobuf payload", v55, 2u);
        MEMORY[0x1C6915360](v55, -1, -1);
      }

      sub_1C20E6774(4);
    }

    else
    {
      v56 = sub_1C2170584();
      v57 = sub_1C2170C54();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_1C20AD000, v56, v57, "Push unexpectedly had nil message", v58, 2u);
        MEMORY[0x1C6915360](v58, -1, -1);
      }

      sub_1C20E6774(1);
    }

    v59 = v22;
    goto LABEL_30;
  }

  v125 = sub_1C2170584();
  v41 = sub_1C2170C64();
  if (os_log_type_enabled(v125, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1C20AD000, v125, v41, "Authenticator is nil.", v42, 2u);
    MEMORY[0x1C6915360](v42, -1, -1);
  }

  v43 = v125;
}

unint64_t sub_1C20EAE78()
{
  result = qword_1EBF236A0;
  if (!qword_1EBF236A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF236A0);
  }

  return result;
}

uint64_t sub_1C20EAECC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1C20EB03C()
{
  result = qword_1EDD4A920;
  if (!qword_1EDD4A920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4A920);
  }

  return result;
}

uint64_t sub_1C20EB090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF236F0, &qword_1C2176D78);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C20EB114(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23680, &qword_1C2176D30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C20EB1D4()
{
  result = qword_1EBF23708;
  if (!qword_1EBF23708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23708);
  }

  return result;
}

uint64_t sub_1C20EB228(uint64_t a1, uint64_t a2)
{
  v5 = **(v2 + 16);
  v4[2] = &v5;
  return sub_1C20FA0F4(sub_1C20EB280, v4, a1, a2);
}

uint64_t sub_1C20EB280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *v7;
  v9 = v7[1];
  sub_1C20D865C(*v7, v9);
  result = sub_1C20FACBC(a3, a1, a2, v8, v9);
  a3[3] = result;
  return result;
}

uint64_t sub_1C20EB398(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1C20EB3E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C20EB450(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C20EB498(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C20EB4F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C20EB560(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C20EB5C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1C20EB628(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 216) = -1;
  return result;
}

unint64_t sub_1C20EB658()
{
  result = qword_1EBF23788;
  if (!qword_1EBF23788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23788);
  }

  return result;
}

unint64_t sub_1C20EB6AC()
{
  result = qword_1EBF23790;
  if (!qword_1EBF23790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23790);
  }

  return result;
}

uint64_t sub_1C20EB768(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x676E656C6C616863;
    }

    else
    {
      v3 = 1701869940;
    }

    if (v2)
    {
      v4 = 0xE900000000000065;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x6E696769726FLL;
  }

  else if (a1 == 3)
  {
    v3 = 0x69724F73736F7263;
    v4 = 0xEB000000006E6967;
  }

  else
  {
    v3 = 0x696769724F706F74;
    v4 = 0xE90000000000006ELL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x676E656C6C616863;
    }

    else
    {
      v9 = 1701869940;
    }

    if (a2)
    {
      v8 = 0xE900000000000065;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x69724F73736F7263;
    v6 = 0xEB000000006E6967;
    if (a2 != 3)
    {
      v5 = 0x696769724F706F74;
      v6 = 0xE90000000000006ELL;
    }

    if (a2 == 2)
    {
      v7 = 0x6E696769726FLL;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_1C2171324();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1C20EB90C(unsigned __int8 a1, unsigned __int8 a2)
{
  sub_1C20DB8B8(0, &qword_1EDD4A9B0, 0x1E696AD98);
  v2 = sub_1C2170CD4();
  v3 = sub_1C2170CD4();
  v4 = sub_1C2170CF4();

  return v4 & 1;
}

uint64_t sub_1C20EB988(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x74726F70707573;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6574697277;
    }

    else
    {
      v4 = 0x6C616E696769726FLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xEC000000657A6953;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1684104562;
    }

    else
    {
      v4 = 0x74726F70707573;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x6574697277;
  if (a2 != 2)
  {
    v8 = 0x6C616E696769726FLL;
    v7 = 0xEC000000657A6953;
  }

  if (a2)
  {
    v2 = 1684104562;
    v6 = 0xE400000000000000;
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
    v11 = sub_1C2171324();
  }

  return v11 & 1;
}

uint64_t sub_1C20EBAC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6452085;
  v3 = a1;
  v4 = 0xE800000000000000;
  v5 = 0x6C616E7265746E69;
  v6 = 0xE600000000000000;
  v7 = 0x646972627968;
  if (a1 != 4)
  {
    v7 = 0x61632D7472616D73;
    v6 = 0xEA00000000006472;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 6514286;
  if (a1 != 1)
  {
    v8 = 6646882;
  }

  if (!a1)
  {
    v8 = 6452085;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v3 <= 2)
  {
    v10 = 0xE300000000000000;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE800000000000000;
      if (v9 != 0x6C616E7265746E69)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x646972627968)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v11 = 0xEA00000000006472;
      if (v9 != 0x61632D7472616D73)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v11 = 0xE300000000000000;
    if (a2)
    {
      if (a2 == 1)
      {
        if (v9 != 6514286)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 6646882;
    }

    if (v9 != v2)
    {
LABEL_31:
      v12 = sub_1C2171324();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v10 != v11)
  {
    goto LABEL_31;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_1C20EBC6C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000015;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 1701602409;
    }

    if (v3)
    {
      v5 = 0x80000001C21842B0;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x80000001C21842D0;
    v4 = 0xD000000000000015;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0xD00000000000001ALL;
    }

    else
    {
      v4 = 0xD000000000000015;
    }

    if (v3 == 3)
    {
      v5 = 0x80000001C21842F0;
    }

    else
    {
      v5 = 0x80000001C2184310;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v7 = 1701602409;
    }

    if (a2)
    {
      v6 = 0x80000001C21842B0;
    }

    else
    {
      v6 = 0xE400000000000000;
    }

    if (v4 != v7)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0x80000001C21842D0;
    if (v4 != 0xD000000000000015)
    {
LABEL_34:
      v8 = sub_1C2171324();
      goto LABEL_35;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000001ALL;
      v6 = 0x80000001C21842F0;
    }

    else
    {
      v6 = 0x80000001C2184310;
    }

    if (v4 != v2)
    {
      goto LABEL_34;
    }
  }

  if (v5 != v6)
  {
    goto LABEL_34;
  }

  v8 = 1;
LABEL_35:

  return v8 & 1;
}

uint64_t sub_1C20EBDF8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000011;
  v3 = "connectionEstablished";
  if (a1 <= 3u)
  {
    v4 = "bluetoothOnAndIdle";
    v5 = 0xD00000000000001ALL;
    if (a1 != 2)
    {
      v5 = 0xD000000000000022;
      v4 = "waitingForBluetoothPowerOn";
    }

    v8 = "bluetoothNotReady";
    if (a1)
    {
      v9 = 0xD000000000000012;
    }

    else
    {
      v9 = 0xD000000000000011;
    }

    if (!a1)
    {
      v8 = "connectionEstablished";
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = "openingWebSocket";
    v5 = 0xD000000000000020;
    v6 = "performingInitialHandshake";
    v7 = 0xD000000000000015;
    if (a1 != 7)
    {
      v7 = 0xD000000000000011;
      v6 = "HandshakeMessage";
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = "toothAdvertisement";
    v9 = 0xD000000000000010;
    if (a1 != 4)
    {
      v9 = 0xD00000000000001ALL;
      v8 = "listeningForRelayPush";
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v10)
  {
    v12 = v8;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = "openingWebSocket";
        v2 = 0xD000000000000020;
      }

      else if (a2 == 7)
      {
        v3 = "performingInitialHandshake";
        v2 = 0xD000000000000015;
      }

      else
      {
        v3 = "HandshakeMessage";
      }

      goto LABEL_40;
    }

    if (a2 == 4)
    {
      v3 = "toothAdvertisement";
      v2 = 0xD000000000000010;
      goto LABEL_40;
    }

    v13 = "performingInitialHandshake";
LABEL_39:
    v3 = (v13 - 32);
    v2 = 0xD00000000000001ALL;
    goto LABEL_40;
  }

  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v3 = "waitingForBluetoothPowerOn";
      v2 = 0xD000000000000022;
      goto LABEL_40;
    }

    v13 = "waitingForBluetoothPowerOn";
    goto LABEL_39;
  }

  if (a2)
  {
    v3 = "bluetoothNotReady";
    v2 = 0xD000000000000012;
  }

LABEL_40:
  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1C2171324();
  }

  return v14 & 1;
}

void sub_1C20EC01C(uint64_t a1, unsigned __int8 a2)
{
  sub_1C20DB8B8(0, &qword_1EDD4A9B0, 0x1E696AD98);
  v2 = sub_1C2170CD4();
  sub_1C2170D04();
}

uint64_t sub_1C20EC09C(uint64_t a1, unsigned __int8 a2)
{
  sub_1C21709B4();
}

uint64_t sub_1C20EC1EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C20E7898(a2);
  v6 = v5;
  v7 = sub_1C2170154();
  v8 = [objc_opt_self() UUIDWithData_];

  result = sub_1C20D3174(v4, v6);
  *a3 = v8;
  return result;
}

uint64_t sub_1C20EC2AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C20F58EC();

  return MEMORY[0x1EEDC2D70](a1, a2, v4);
}

unint64_t sub_1C20EC2F8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C20F1EC4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C20EC32C(uint64_t a1)
{
  v2 = sub_1C20F58EC();

  return MEMORY[0x1EEDC2D80](a1, v2);
}

uint64_t sub_1C20EC368(uint64_t a1)
{
  v2 = sub_1C20F58EC();

  return MEMORY[0x1EEDC2D78](a1, v2);
}

uint64_t sub_1C20EC3C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C20F58EC();

  return MEMORY[0x1EEDC2D68](a1, a2, v4);
}

unint64_t ASCABLEClient.OperationType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1C20EC428()
{
  v1 = *v0;
  sub_1C2171434();
  MEMORY[0x1C69146F0](v1);
  return sub_1C2171454();
}

uint64_t sub_1C20EC49C(uint64_t a1)
{
  v2 = *v1;
  sub_1C2171434();
  MEMORY[0x1C69146F0](v2);
  return sub_1C2171454();
}

unint64_t *sub_1C20EC4E0@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1C20EC650@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_qrCodeStruct + 16);
  v10[0] = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_qrCodeStruct);
  v10[1] = v3;
  v5 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_qrCodeStruct);
  v4 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_qrCodeStruct + 16);
  v11[0] = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_qrCodeStruct + 32);
  *(v11 + 15) = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_qrCodeStruct + 47);
  v7 = v5;
  v8 = v4;
  *v9 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_qrCodeStruct + 32);
  *&v9[15] = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_qrCodeStruct + 47);
  sub_1C20F1ED4(v10, v12);
  sub_1C20FD544(a1);
  v12[0] = v7;
  v12[1] = v8;
  v13[0] = *v9;
  *(v13 + 15) = *&v9[15];
  return sub_1C20EB700(v12);
}

char *ASCABLEClient.__allocating_init(delegate:isRegistrationRequest:)(char *a1, char a2)
{
  objc_allocWithZone(v2);
  swift_getObjectType();
  v7 = a2;
  v5 = sub_1C20F1F30(a1, &v7);
  swift_unknownObjectRelease();
  swift_deallocPartialClassInstance();
  return v5;
}

char *ASCABLEClient.init(delegate:isRegistrationRequest:)(char *a1, char a2)
{
  swift_getObjectType();
  v6 = a2;
  v4 = sub_1C20F1F30(a1, &v6);
  swift_unknownObjectRelease();
  swift_deallocPartialClassInstance();
  return v4;
}

char *ASCABLEClient.__allocating_init(delegate:requestType:)(char *a1, void (*a2)(char *, char *, uint64_t))
{
  v2 = sub_1C20F1F30(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

id sub_1C20EC924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (v5 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentRelyingPartyIdentifier);
  *v9 = a2;
  v9[1] = a3;

  v10 = v5 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentOperationType;
  *v10 = a1;
  *(v10 + 8) = 0;
  v11 = (v5 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_completionHandler);
  v12 = *(v5 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_completionHandler);
  v13 = *(v5 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_completionHandler + 8);
  *v11 = a4;
  v11[1] = a5;

  sub_1C20B0080(v12, v13);
  sub_1C20ED054();
  v14 = *(v5 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_powerLogger);

  return [v14 logAuthenticationStartedEventIfNeeded];
}

unint64_t sub_1C20ECB00(unsigned __int8 a1)
{
  v1 = 0xD000000000000011;
  if (a1 <= 3u)
  {
    v6 = 0xD00000000000001ALL;
    if (a1 != 2)
    {
      v6 = 0xD000000000000022;
    }

    if (a1)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD000000000000020;
    v3 = 0xD000000000000015;
    if (a1 != 7)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v2 = v3;
    }

    v4 = 0xD00000000000001ALL;
    if (a1 == 4)
    {
      v4 = 0xD000000000000010;
    }

    if (a1 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1C20ECC08()
{
  v1 = *v0;
  sub_1C2171434();
  sub_1C20EC09C(v3, v1);
  return sub_1C2171454();
}

uint64_t sub_1C20ECC58(uint64_t a1)
{
  v2 = *v1;
  sub_1C2171434();
  sub_1C20EC09C(v4, v2);
  return sub_1C2171454();
}

unint64_t sub_1C20ECC9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C20F2E58(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1C20ECCCC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C20ECB00(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1C20ECCF8(unsigned __int8 a1)
{
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v3 = sub_1C21705A4();
  __swift_project_value_buffer(v3, qword_1EDD4CB08);
  v4 = v1;
  oslog = sub_1C2170584();
  v5 = sub_1C2170C34();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = 0xD000000000000011;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315394;
    v9 = "connectionEstablished";
    if (a1 <= 3u)
    {
      v10 = "bluetoothOnAndIdle";
      v11 = 0xD00000000000001ALL;
      if (a1 != 2)
      {
        v11 = 0xD000000000000022;
        v10 = "waitingForBluetoothPowerOn";
      }

      v14 = "bluetoothNotReady";
      if (a1)
      {
        v15 = 0xD000000000000012;
      }

      else
      {
        v15 = 0xD000000000000011;
      }

      if (!a1)
      {
        v14 = "connectionEstablished";
      }

      v16 = a1 <= 1u;
    }

    else
    {
      v10 = "openingWebSocket";
      v11 = 0xD000000000000020;
      v12 = "performingInitialHandshake";
      v13 = 0xD000000000000015;
      if (a1 != 7)
      {
        v13 = 0xD000000000000011;
        v12 = "HandshakeMessage";
      }

      if (a1 != 6)
      {
        v11 = v13;
        v10 = v12;
      }

      v14 = "toothAdvertisement";
      v15 = 0xD000000000000010;
      if (a1 != 4)
      {
        v15 = 0xD00000000000001ALL;
        v14 = "listeningForRelayPush";
      }

      v16 = a1 <= 5u;
    }

    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = v11;
    }

    if (v16)
    {
      v18 = v14;
    }

    else
    {
      v18 = v10;
    }

    v19 = sub_1C20D7F2C(v17, v18 | 0x8000000000000000, &v24);

    *(v7 + 4) = v19;
    *(v7 + 12) = 2080;
    v20 = v4[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState];
    if (v20 <= 3)
    {
      if (v4[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState] <= 1u)
      {
        if (v4[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState])
        {
          v9 = "bluetoothNotReady";
          v6 = 0xD000000000000012;
        }

        goto LABEL_43;
      }

      if (v20 != 2)
      {
        v9 = "waitingForBluetoothPowerOn";
        v6 = 0xD000000000000022;
        goto LABEL_43;
      }

      v21 = "waitingForBluetoothPowerOn";
    }

    else
    {
      if (v4[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState] > 5u)
      {
        if (v20 == 6)
        {
          v9 = "openingWebSocket";
          v6 = 0xD000000000000020;
        }

        else if (v20 == 7)
        {
          v9 = "performingInitialHandshake";
          v6 = 0xD000000000000015;
        }

        else
        {
          v9 = "HandshakeMessage";
        }

        goto LABEL_43;
      }

      if (v20 == 4)
      {
        v9 = "toothAdvertisement";
        v6 = 0xD000000000000010;
LABEL_43:
        v22 = sub_1C20D7F2C(v6, v9 | 0x8000000000000000, &v24);

        *(v7 + 14) = v22;
        _os_log_impl(&dword_1C20AD000, oslog, v5, "Changing caBLE client state from %s to %s", v7, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C6915360](v8, -1, -1);
        MEMORY[0x1C6915360](v7, -1, -1);
        goto LABEL_44;
      }

      v21 = "performingInitialHandshake";
    }

    v9 = (v21 - 32);
    v6 = 0xD00000000000001ALL;
    goto LABEL_43;
  }

LABEL_44:
}

void sub_1C20ED054()
{
  v1 = OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState;
  if (*(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState) <= 3u)
  {
    if (*(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState) > 1u)
    {
      goto LABEL_11;
    }

    v2 = "connectionEstablished";
    if (*(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState))
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (*(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState) < 8u)
    {
      goto LABEL_11;
    }

    v2 = "HandshakeMessage";
  }

  if ((v2 | 0x8000000000000000) == 0x80000001C2184330)
  {

LABEL_12:
    v4 = *(v0 + v1);
    *(v0 + v1) = 2;

    sub_1C20ECCF8(v4);
    return;
  }

LABEL_11:
  v3 = sub_1C2171324();

  if (v3)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + v1);
  *(v0 + v1) = 3;
  sub_1C20ECCF8(v5);
  v6 = *(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_bluetoothManager);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23400, &qword_1C2176810);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C2176DE0;
  if (qword_1EBF230A0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EBF36480;
  *(v7 + 32) = qword_1EBF36480;
  v9 = qword_1EBF230A8;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_1EBF36488;
  *(v7 + 40) = qword_1EBF36488;
  sub_1C20DB8B8(0, &qword_1EBF23918, 0x1E695D2A0);
  v12 = v11;
  v13 = sub_1C2170B54();

  [v6 scanForPeripheralsWithServices:v13 options:0];
}

void sub_1C20ED324(void *a1)
{
  v2 = v1;
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v4 = sub_1C21705A4();
  __swift_project_value_buffer(v4, qword_1EDD4CB08);
  v5 = a1;
  v6 = sub_1C2170584();
  v7 = sub_1C2170C34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 2048;
    *(v8 + 14) = [v5 state];
    _os_log_impl(&dword_1C20AD000, v6, v7, "%@ changed state to %ld", v8, 0x16u);
    sub_1C20EB498(v9, &qword_1EBF23700, &qword_1C2176D80);
    MEMORY[0x1C6915360](v9, -1, -1);
    MEMORY[0x1C6915360](v8, -1, -1);
  }

  else
  {

    v6 = v5;
  }

  v10 = [v5 state];
  v11 = OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState;
  v12 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState);
  if (v10 != 5)
  {
    *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState) = 0;
    goto LABEL_20;
  }

  if (*(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState) <= 3u)
  {
    if (*(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState) <= 1u)
    {
      goto LABEL_15;
    }

    v13 = "bluetoothOnAndIdle";
    if (v12 != 2)
    {
      goto LABEL_15;
    }

LABEL_24:
    if ((v13 | 0x8000000000000000) == 0x80000001C2184370)
    {

      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (*(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState) <= 5u && v12 != 4)
  {
    v13 = "listeningForRelayPush";
    goto LABEL_24;
  }

LABEL_15:
  v14 = sub_1C2171324();

  if (v14)
  {
LABEL_16:

    sub_1C20ED054();
    return;
  }

  LOBYTE(v12) = *(v2 + v11);
  *(v2 + v11) = 1;
LABEL_20:

  sub_1C20ECCF8(v12);
}

void sub_1C20ED71C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a2 && (a1 == 0x6261632E6F646966 && a2 == 0xEA0000000000656CLL || (sub_1C2171324() & 1) != 0))
    {
      sub_1C20EDA8C();
    }

    else
    {
      if (qword_1EDD4A728 != -1)
      {
        swift_once();
      }

      v10 = sub_1C21705A4();
      __swift_project_value_buffer(v10, qword_1EDD4CB08);

      v11 = sub_1C2170584();
      v12 = sub_1C2170C54();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v17 = v14;
        *v13 = 136315138;
        if (a2)
        {
          v15 = a2;
        }

        else
        {
          a1 = 7104878;
          v15 = 0xE300000000000000;
        }

        v16 = sub_1C20D7F2C(a1, v15, &v17);

        *(v13 + 4) = v16;
        _os_log_impl(&dword_1C20AD000, v11, v12, "Received socket connection with unexpected protocol: %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        MEMORY[0x1C6915360](v14, -1, -1);
        MEMORY[0x1C6915360](v13, -1, -1);
      }

      sub_1C20F2980(0);
    }
  }

  else
  {
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v7 = sub_1C21705A4();
    __swift_project_value_buffer(v7, qword_1EDD4CB08);
    v6 = sub_1C2170584();
    v8 = sub_1C2170C74();
    if (os_log_type_enabled(v6, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C20AD000, v6, v8, "Client was deinitialized while waiting for initial connection.", v9, 2u);
      MEMORY[0x1C6915360](v9, -1, -1);
    }
  }
}

void sub_1C20EDA8C()
{
  v1 = v0;
  v2 = sub_1C2170CA4();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v39 = (&v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1C2170764();
  v42 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23680, &qword_1C2176D30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v38 - v8;
  v10 = type metadata accessor for ASCABLEAdvertisement(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_authenticatorAdvertisement;
  swift_beginAccess();
  sub_1C20EB3E8(v1 + v14, v9, &qword_1EBF23680, &qword_1C2176D30);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1C20EB498(v9, &qword_1EBF23680, &qword_1C2176D30);
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v15 = sub_1C21705A4();
    __swift_project_value_buffer(v15, qword_1EDD4CB08);
    v16 = sub_1C2170584();
    v17 = sub_1C2170C54();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1C20AD000, v16, v17, "Unexpectedly tried to perform initial handshake without an advertisement", v18, 2u);
      MEMORY[0x1C6915360](v18, -1, -1);
    }

    sub_1C20F2980(0);
  }

  else
  {
    sub_1C20F4EA0(v9, v13);
    v19 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_webSocket);
    v20 = v13;
    if (v19)
    {
      v21 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState);
      *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState) = 5;
      v22 = v19;
      sub_1C20ECCF8(v21);
      v45 = *(v20 + *(v10 + 32));
      v43 = sub_1C20E7898(&unk_1F419D008);
      v44 = v23;
      sub_1C2170844();
      sub_1C20F5A10(&qword_1EDD4A7A0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      sub_1C20EB03C();
      sub_1C21707B4();
      sub_1C20D3174(v43, v44);
      sub_1C2170734();
      (*(v42 + 8))(v6, v4);
      v24 = v45;
      v25 = sub_1C20F706C(v45, *(&v45 + 1));
      v42 = v20;
      v30 = v39;
      v31 = v40;
      *v39 = v25;
      v30[1] = v32;
      v33 = v25;
      v34 = v32;
      v35 = v41;
      (*(v31 + 104))(v30, *MEMORY[0x1E6969F28], v41);
      *(swift_allocObject() + 16) = v22;
      v36 = v22;
      sub_1C20D865C(v33, v34);
      sub_1C2170C94();

      sub_1C20D3174(v24, *(&v24 + 1));
      sub_1C20D3174(v33, v34);
      v37 = v30;
      v20 = v42;
      (*(v31 + 8))(v37, v35);
    }

    else
    {
      if (qword_1EDD4A728 != -1)
      {
        swift_once();
      }

      v26 = sub_1C21705A4();
      __swift_project_value_buffer(v26, qword_1EDD4CB08);
      v27 = sub_1C2170584();
      v28 = sub_1C2170C54();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1C20AD000, v27, v28, "Unexpectedly tried to perform initial handshake without web socket", v29, 2u);
        MEMORY[0x1C6915360](v29, -1, -1);
      }

      sub_1C20F2980(0);
    }

    sub_1C20F4F04(v20);
  }
}

void sub_1C20EE214(uint64_t a1, uint64_t a2)
{
  sub_1C20F8108(a1, a2);
  v3 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState);
  *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState) = 6;

  sub_1C20ECCF8(v3);
}

uint64_t sub_1C20EE3D4(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = sub_1C2170CA4();
  v3[29] = v4;
  v3[30] = *(v4 - 8);
  v3[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C20EE498, 0, 0);
}

uint64_t sub_1C20EE498()
{
  v1 = *(v0 + 224);
  v2 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_webSocket);
  *(v0 + 256) = v2;
  if (!v2)
  {
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v10 = sub_1C21705A4();
    __swift_project_value_buffer(v10, qword_1EDD4CB08);
    v11 = sub_1C2170584();
    v12 = sub_1C2170C54();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1C20AD000, v11, v12, "Unexpectedly received posthandshake message without a valid websocket.", v13, 2u);
      MEMORY[0x1C6915360](v13, -1, -1);
    }

    sub_1C20F2980(0);
    goto LABEL_25;
  }

  if (*(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentOperationType + 8))
  {
    v3 = qword_1EDD4A728;
    v4 = v2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_1C21705A4();
    __swift_project_value_buffer(v5, qword_1EDD4CB08);
    v6 = sub_1C2170584();
    v7 = sub_1C2170C54();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_24;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Unexpectedly received postHandshake message without a current operation.";
LABEL_23:
    _os_log_impl(&dword_1C20AD000, v6, v7, v9, v8, 2u);
    MEMORY[0x1C6915360](v8, -1, -1);
LABEL_24:

    sub_1C20F2980(0);
LABEL_25:

    v28 = *(v0 + 8);

    return v28();
  }

  v14 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentOperationType);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 264) = Strong;
  if (!Strong)
  {
    v26 = qword_1EDD4A728;
    v4 = v2;
    if (v26 != -1)
    {
      swift_once();
    }

    v27 = sub_1C21705A4();
    __swift_project_value_buffer(v27, qword_1EDD4CB08);
    v6 = sub_1C2170584();
    v7 = sub_1C2170C54();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_24;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Delegate no longer exists.";
    goto LABEL_23;
  }

  v16 = Strong;
  *(v0 + 272) = *(*(v0 + 224) + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_cryptographyManager);
  v17 = v2;
  sub_1C20F8AD0((v0 + 16));
  v30 = *(v0 + 80);
  *(v0 + 144) = *(v0 + 64);
  *(v0 + 160) = v30;
  *(v0 + 176) = *(v0 + 96);
  v31 = *(v0 + 48);
  *(v0 + 112) = *(v0 + 32);
  *(v0 + 128) = v31;
  v32 = sub_1C21260D8();
  v33 = *(v0 + 120);
  *(v0 + 280) = v33;
  if (v33)
  {
    v34 = v33;
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
  }

  if (v14 == 2)
  {
    if ([v16 respondsToSelector_])
    {
      v65 = swift_allocObject();
      *(v65 + 16) = v16;
      v66 = swift_allocObject();
      *(v0 + 288) = v66;
      *(v66 + 16) = sub_1C20F4DC8;
      *(v66 + 24) = v65;
      v67 = swift_task_alloc();
      *(v0 + 296) = v67;
      v67[2] = sub_1C20F4DE0;
      v67[3] = v66;
      v67[4] = v34;
      swift_unknownObjectRetain();

      v68 = swift_task_alloc();
      *(v0 + 304) = v68;
      *v68 = v0;
      v68[1] = sub_1C20EF11C;
      v60 = MEMORY[0x1E6969080];
      v58 = sub_1C20F4DE8;
      v44 = (v0 + 184);
      v57 = 0x80000001C2185290;
      v54 = 0;
      v55 = 0;
      v56 = 0xD00000000000002ELL;
      v59 = v67;

      return MEMORY[0x1EEE6DE38](v44, v54, v55, v56, v57, v58, v59, v60);
    }

    if ([v16 respondsToSelector_])
    {
      swift_unknownObjectRetain();

      v74 = sub_1C2170B54();

      v75 = [v16 encodeDigitalCredentialJSONCommandForAuthenticatorWithAuthenticatorSupportedExtensions_];
      swift_unknownObjectRelease();

      v62 = sub_1C2170174();
      v77 = v76;

      v64 = v77 | 0x2000000000000000;
      goto LABEL_53;
    }

    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v90 = sub_1C21705A4();
    __swift_project_value_buffer(v90, qword_1EDD4CB08);
    v70 = sub_1C2170584();
    v71 = sub_1C2170C54();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      v73 = "Delegate didn't implement either version of encodeDigitalCredentialJSONCommandForAuthenticator";
      goto LABEL_62;
    }

LABEL_63:

    sub_1C20F46B8();
    v91 = swift_allocError();
    *v92 = 0;
    swift_willThrow();
    sub_1C20EAF94(v0 + 16);
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v18 = sub_1C21705A4();
    __swift_project_value_buffer(v18, qword_1EDD4CB08);
    v19 = v91;
    v20 = sub_1C2170584();
    v21 = sub_1C2170C54();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = sub_1C216FF84();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&dword_1C20AD000, v20, v21, "Could not decode post handshake message: %@", v22, 0xCu);
      sub_1C20EB498(v23, &qword_1EBF23700, &qword_1C2176D80);
      MEMORY[0x1C6915360](v23, -1, -1);
      MEMORY[0x1C6915360](v22, -1, -1);
    }

    v25 = *(v0 + 256);

    sub_1C20F2980(2);
    swift_unknownObjectRelease();

    goto LABEL_25;
  }

  v35 = v32;
  if (v14 == 1)
  {
LABEL_37:
    if ([v16 respondsToSelector_])
    {
      v45 = *(v0 + 224);
      swift_unknownObjectRetain();

      v46 = sub_1C2170B54();
      v38 = [v16 encodeGetAssertionCTAPCommandForAuthenticatorWithUserVerificationAvailability:v35 authenticatorSupportedExtensions:v46];

      swift_unknownObjectRelease();
      v47 = [v38 first];
      v48 = sub_1C2170174();
      v50 = v49;

      v51 = (v45 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_clientDataJSON);
      v52 = *(v45 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_clientDataJSON);
      v53 = *(v45 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_clientDataJSON + 8);
      *v51 = v48;
      v51[1] = v50;
      sub_1C20B23C8(v52, v53);
      v44 = [v38 second];
      if (v44)
      {
        goto LABEL_39;
      }

      __break(1u);
      return MEMORY[0x1EEE6DE38](v44, v54, v55, v56, v57, v58, v59, v60);
    }

    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v69 = sub_1C21705A4();
    __swift_project_value_buffer(v69, qword_1EDD4CB08);
    v70 = sub_1C2170584();
    v71 = sub_1C2170C54();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      v73 = "Delegate didn't implement encodeGetAssertionCTAPCommandForAuthenticator(withUserVerificationAvailability:authenticatorSupportedExtensions:)";
LABEL_62:
      _os_log_impl(&dword_1C20AD000, v70, v71, v73, v72, 2u);
      MEMORY[0x1C6915360](v72, -1, -1);
      goto LABEL_63;
    }

    goto LABEL_63;
  }

  if (!v14)
  {
    if (([v16 respondsToSelector_] & 1) == 0)
    {

      if (qword_1EDD4A728 != -1)
      {
        swift_once();
      }

      v82 = sub_1C21705A4();
      __swift_project_value_buffer(v82, qword_1EDD4CB08);
      v70 = sub_1C2170584();
      v71 = sub_1C2170C54();
      if (!os_log_type_enabled(v70, v71))
      {
        goto LABEL_63;
      }

      v72 = swift_slowAlloc();
      *v72 = 0;
      v73 = "Delegate didn't implement encodeMakeCredentialCTAPCommandForAuthenticator(withUserVerificationAvailability:authenticatorSupportedExtensions:)";
      goto LABEL_62;
    }

    v36 = *(v0 + 224);
    swift_unknownObjectRetain();

    v37 = sub_1C2170B54();
    v38 = [v16 encodeMakeCredentialCTAPCommandForAuthenticatorWithUserVerificationAvailability:v35 authenticatorSupportedExtensions:v37];

    swift_unknownObjectRelease();
    v16 = [v38 first];
    v35 = sub_1C2170174();
    v40 = v39;

    v41 = (v36 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_clientDataJSON);
    v42 = *(v36 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_clientDataJSON);
    v43 = *(v36 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_clientDataJSON + 8);
    *v41 = v35;
    v41[1] = v40;
    sub_1C20B23C8(v42, v43);
    v44 = [v38 second];
    if (v44)
    {
LABEL_39:
      v61 = v44;

      v62 = sub_1C2170174();
      v64 = v63;

LABEL_53:
      v78 = *(v0 + 264);
      v79 = *(v0 + 224);
      v80 = *(v79 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState);
      *(v79 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState) = 7;
      sub_1C20ECCF8(v80);
      [v78 cableClientWillAuthenticate_];
      v81 = sub_1C20F8530(v62, v64, 1);
      v83 = *(v0 + 256);
      v85 = *(v0 + 240);
      v84 = *(v0 + 248);
      v93 = *(v0 + 232);
      *v84 = v81;
      v84[1] = v86;
      v87 = v81;
      v88 = v86;
      (*(v85 + 104))(v84, *MEMORY[0x1E6969F28]);
      *(swift_allocObject() + 16) = v83;
      v89 = v83;
      sub_1C20D865C(v87, v88);
      sub_1C2170C94();

      sub_1C20F4D90(v62, v64, sub_1C20D3174);
      swift_unknownObjectRelease();
      sub_1C20EAF94(v0 + 16);
      sub_1C20D3174(v87, v88);
      (*(v85 + 8))(v84, v93);

      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_37;
  }

  *(v0 + 200) = v14;

  return sub_1C2171344();
}

uint64_t sub_1C20EF11C()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1C20EF594;
  }

  else
  {

    v2 = sub_1C20EF254;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C20EF254()
{

  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[39];
  v4 = v0[33];
  v5 = v0[28];
  v6 = *(v5 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState);
  *(v5 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState) = 7;
  sub_1C20ECCF8(v6);
  [v4 cableClientWillAuthenticate_];
  v7 = sub_1C20F8530(v1, v2 | 0x2000000000000000, 1);
  if (v3)
  {
    sub_1C20EAF94((v0 + 2));
    sub_1C20F4D90(v1, v2 | 0x2000000000000000, sub_1C20D3174);
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v9 = sub_1C21705A4();
    __swift_project_value_buffer(v9, qword_1EDD4CB08);
    v10 = v3;
    v11 = sub_1C2170584();
    v12 = sub_1C2170C54();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = sub_1C216FF84();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&dword_1C20AD000, v11, v12, "Could not decode post handshake message: %@", v13, 0xCu);
      sub_1C20EB498(v14, &qword_1EBF23700, &qword_1C2176D80);
      MEMORY[0x1C6915360](v14, -1, -1);
      MEMORY[0x1C6915360](v13, -1, -1);
    }

    v16 = v0[32];

    sub_1C20F2980(2);
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = v0[32];
    v19 = v0[30];
    v18 = v0[31];
    v25 = v0[29];
    *v18 = v7;
    v18[1] = v8;
    v20 = v7;
    v21 = v8;
    (*(v19 + 104))(v18, *MEMORY[0x1E6969F28]);
    *(swift_allocObject() + 16) = v17;
    v22 = v17;
    sub_1C20D865C(v20, v21);
    sub_1C2170C94();

    sub_1C20F4D90(v1, v2 | 0x2000000000000000, sub_1C20D3174);
    swift_unknownObjectRelease();
    sub_1C20EAF94((v0 + 2));
    sub_1C20D3174(v20, v21);
    (*(v19 + 8))(v18, v25);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_1C20EF594()
{
  sub_1C20EAF94((v0 + 2));

  v1 = v0[39];
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v2 = sub_1C21705A4();
  __swift_project_value_buffer(v2, qword_1EDD4CB08);
  v3 = v1;
  v4 = sub_1C2170584();
  v5 = sub_1C2170C54();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = sub_1C216FF84();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_1C20AD000, v4, v5, "Could not decode post handshake message: %@", v6, 0xCu);
    sub_1C20EB498(v7, &qword_1EBF23700, &qword_1C2176D80);
    MEMORY[0x1C6915360](v7, -1, -1);
    MEMORY[0x1C6915360](v6, -1, -1);
  }

  v9 = v0[32];

  sub_1C20F2980(2);
  swift_unknownObjectRelease();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1C20EF778(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void *))
{
  v7 = sub_1C2170B54();
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1C20EF84C;
  v10[3] = &block_descriptor_0;
  v8 = _Block_copy(v10);

  a4(v7, v8);
  _Block_release(v8);
}

uint64_t sub_1C20EF84C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_1C2170174();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_1C20B23C8(v4, v8);
}

uint64_t sub_1C20EF8F8(uint64_t a1, void (*a2)(uint64_t, uint64_t (*)(), uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF238C0, &qword_1C21771F8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  a2(a4, sub_1C20F4DF4, v12);
}

uint64_t sub_1C20EFA58(uint64_t a1, unint64_t a2, id a3)
{
  if (a2 >> 60 == 15)
  {
    if (a3)
    {
      v3 = a3;
    }

    else
    {
      if (qword_1EDD4A728 != -1)
      {
        swift_once();
      }

      v5 = sub_1C21705A4();
      __swift_project_value_buffer(v5, qword_1EDD4CB08);
      v6 = sub_1C2170584();
      v7 = sub_1C2170C54();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_1C20AD000, v6, v7, "Delegate invoked completion handler for encodeDigitalCredentialJSONCommandForAuthenticator with neither data nor error, assuming failure", v8, 2u);
        MEMORY[0x1C6915360](v8, -1, -1);
      }

      sub_1C20F46B8();
      swift_allocError();
      *v9 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF238C0, &qword_1C21771F8);
    return sub_1C2170BB4();
  }

  else
  {
    sub_1C20D865C(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF238C0, &qword_1C21771F8);
    return sub_1C2170BC4();
  }
}

uint64_t sub_1C20EFBD4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C20F87F4(a1, a2, 1);
  v5 = (v4 >> 60) & 3;
  if (((v4 >> 60) & 3) > 1)
  {
    if (v5 == 2)
    {
      if (*(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentOperationType + 8))
      {
        v13 = v4;
        v14 = v3;
        sub_1C20D865C(v3, v4 & 0xCFFFFFFFFFFFFFFFLL);
        if (qword_1EDD4A728 != -1)
        {
          swift_once();
        }

        v15 = sub_1C21705A4();
        __swift_project_value_buffer(v15, qword_1EDD4CB08);
        v16 = sub_1C2170584();
        v17 = sub_1C2170C54();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_1C20AD000, v16, v17, "Missing current operation type", v18, 2u);
          MEMORY[0x1C6915360](v18, -1, -1);
        }

        sub_1C20F2980(0);
        sub_1C20F4D90(v14, v13, sub_1C20D3174);
        v19 = v14;
        v20 = v13;
      }

      else
      {
        v33 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentOperationType);
        v34 = v4;
        v35 = v3;
        sub_1C20D865C(v3, v4 & 0xCFFFFFFFFFFFFFFFLL);
        sub_1C20F13FC(v35, v34 & 0xCFFFFFFFFFFFFFFFLL, v33);
        sub_1C20F4D90(v35, v34, sub_1C20D3174);
        v19 = v35;
        v20 = v34;
      }
    }

    else
    {
      v27 = v3;
      v28 = v4;
      if (qword_1EDD4A728 != -1)
      {
        swift_once();
      }

      v29 = sub_1C21705A4();
      __swift_project_value_buffer(v29, qword_1EDD4CB08);
      v30 = sub_1C2170584();
      v31 = sub_1C2170C54();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1C20AD000, v30, v31, "Unexpectedly received shutdown from authenticator.", v32, 2u);
        MEMORY[0x1C6915360](v32, -1, -1);
      }

      sub_1C20F2980(0);
      v19 = v27;
      v20 = v28;
    }
  }

  else if (v5)
  {
    v21 = v3;
    v22 = v4;
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v23 = sub_1C21705A4();
    __swift_project_value_buffer(v23, qword_1EDD4CB08);
    v24 = sub_1C2170584();
    v25 = sub_1C2170C74();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1C20AD000, v24, v25, "Received unsupported caBLE update message. Dropping.", v26, 2u);
      MEMORY[0x1C6915360](v26, -1, -1);
    }

    v19 = v21;
    v20 = v22;
  }

  else
  {
    v6 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_clientDataJSON + 8);
    if (v6 >> 60 == 15 || (*(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentOperationType + 8) & 1) != 0)
    {
      v7 = v3;
      v8 = v4;
      sub_1C20F4D90(v3, v4, sub_1C20D865C);
      if (qword_1EDD4A728 != -1)
      {
        swift_once();
      }

      v9 = sub_1C21705A4();
      __swift_project_value_buffer(v9, qword_1EDD4CB08);
      v10 = sub_1C2170584();
      v11 = sub_1C2170C54();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_1C20AD000, v10, v11, "Missing clientDataJSON or current operation type", v12, 2u);
        MEMORY[0x1C6915360](v12, -1, -1);
      }

      sub_1C20F2980(0);
      sub_1C20F4D90(v7, v8, sub_1C20D3174);
    }

    else
    {
      v36 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_clientDataJSON);
      v37 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentOperationType);
      v7 = v3;
      v8 = v4;
      sub_1C20F4D90(v3, v4, sub_1C20D865C);
      sub_1C20B22B8(v36, v6);
      sub_1C20F0550(v7, v8, v36, v6, v37);
      sub_1C20F4D90(v7, v8, sub_1C20D3174);
      sub_1C20B23C8(v36, v6);
    }

    v19 = v7;
    v20 = v8;
  }

  return sub_1C20F4D90(v19, v20, sub_1C20D3174);
}

void sub_1C20F0288()
{
  v1 = sub_1C2170CA4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1C20F8530(0, 0x3000000000000000uLL, 1);
  v7 = *(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_webSocket);
  if (v7)
  {
    *v4 = v5;
    v4[1] = v6;
    v8 = v5;
    v9 = v6;
    (*(v2 + 104))(v4, *MEMORY[0x1E6969F28], v1);
    *(swift_allocObject() + 16) = v7;
    v10 = v7;
    sub_1C20D865C(v8, v9);
    sub_1C2170C94();

    sub_1C20D3174(v8, v9);
    (*(v2 + 8))(v4, v1);
  }

  else
  {

    sub_1C20D3174(v5, v6);
  }
}

void sub_1C20F0550(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (!*(v5 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentRelyingPartyIdentifier + 8))
  {
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v12 = sub_1C21705A4();
    __swift_project_value_buffer(v12, qword_1EDD4CB08);
    v13 = sub_1C2170584();
    v14 = sub_1C2170C54();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1C20AD000, v13, v14, "Unexpectedly received authenticator response without a relying party identifier.", v15, 2u);
      MEMORY[0x1C6915360](v15, -1, -1);
    }

    v11 = 0;
    goto LABEL_13;
  }

  v10 = sub_1C21289D8(a1, a2);
  if ((v10 & 0x100) == 0 && sub_1C21480F0(v10) == 3)
  {

    v11 = 5;
LABEL_13:

    sub_1C20F2980(v11);
    return;
  }

  if (a5 != 2)
  {
    if (a5 == 1)
    {
      sub_1C20D865C(a1, a2);
      sub_1C20D865C(a1, a2);
      sub_1C2128BB4(1uLL, a1, a2, &v89);
      a5 = 0;
      sub_1C2145E50(v89, *(&v89 + 1), v120);
      v29 = sub_1C21289D8(a1, a2);
      if ((v29 & 0x100) == 0)
      {
        *&v132[64] = v120[11];
        *&v132[80] = v120[12];
        *&v132[96] = v120[13];
        *v132 = v120[7];
        *&v132[16] = v120[8];
        *&v132[32] = v120[9];
        *&v132[48] = v120[10];
        v128 = v120[3];
        v129 = v120[4];
        v130 = v120[5];
        v131 = v120[6];
        v125 = v120[0];
        v126 = v120[1];
        LOBYTE(v122) = v29;
        v123 = a1;
        v124 = a2;
        v132[112] = v121;
        v127 = v120[2];
        if ((sub_1C20F1390() - 1) >= 7u)
        {
          v39 = *(&v125 + 1);
          v75 = *(&v126 + 1);
          v76 = v126;
          v82 = *(&v127 + 1);
          v40 = v128;
          v41 = v129;
          if (v130)
          {
            v78 = *(&v130 + 1);
            v80 = v131;
            sub_1C20D865C(*(&v130 + 1), v131);
          }

          else
          {
            v78 = 0;
            v80 = 0xC000000000000000;
          }

          if (v39)
          {
            sub_1C20D865C(v76, v75);
          }

          else
          {
            v75 = 0xC000000000000000;
            v76 = 0;
          }

          *&v117[9] = *&v132[97];
          v115 = *&v132[56];
          v116 = *&v132[72];
          *v117 = *&v132[88];
          v113 = *&v132[24];
          v114 = *&v132[40];
          if (v132[112] == 3)
          {
            sub_1C20D865C(v82, v40);
            sub_1C20D865C(*(&v40 + 1), v41);
            v73 = 0;
          }

          else
          {
            v98 = *&v132[56];
            v99 = *&v132[72];
            *v100 = *&v132[88];
            *&v100[16] = *&v132[104];
            v96 = *&v132[24];
            v97 = *&v132[40];
            v100[24] = v117[24];
            sub_1C20D865C(v82, v40);
            sub_1C20D865C(*(&v40 + 1), v41);
            sub_1C20EB3E8(&v113, &v103, &qword_1EBF23560, &unk_1C2176A00);
            v73 = sub_1C212F364();
            v105 = v98;
            v106 = v99;
            *v107 = *v100;
            *&v107[9] = *&v100[9];
            v103 = v96;
            v104 = v97;
            sub_1C20F4BA0(&v103);
          }

          v72 = v41;
          v70 = objc_allocWithZone(ASCPlatformPublicKeyCredentialAssertion);
          v46 = sub_1C21708F4();

          v47 = sub_1C2170154();
          v48 = sub_1C2170154();
          v49 = sub_1C2170154();
          v50 = sub_1C2170154();
          v51 = sub_1C2170154();
          LOBYTE(v69) = 0;
          v71 = [v70 initWithRelyingPartyIdentifier:v46 authenticatorData:v47 signature:v48 userHandle:v49 rawClientDataJSON:v50 credentialID:v51 extensions:v73 attachment:@"cross-platform" isExternal:v69];

          sub_1C20D3174(v76, v75);
          sub_1C20D3174(v78, v80);

          sub_1C20D3174(*(&v40 + 1), v72);
          sub_1C20D3174(v82, v40);

          v52 = v71;
          sub_1C20F1D24(v52, v6);
        }

        else
        {

          if (qword_1EDD4A728 != -1)
          {
            swift_once();
          }

          v30 = sub_1C21705A4();
          __swift_project_value_buffer(v30, qword_1EDD4CB08);
          sub_1C20EB3E8(&v122, &v113, &qword_1EBF23568, &qword_1C21771F0);
          v31 = sub_1C2170584();
          v32 = sub_1C2170C54();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            *v33 = 16777472;
            v33[4] = v122;
            sub_1C20EB498(&v122, &qword_1EBF23568, &qword_1C21771F0);
            _os_log_impl(&dword_1C20AD000, v31, v32, "Received error from authenticator: %hhu", v33, 5u);
            MEMORY[0x1C6915360](v33, -1, -1);
          }

          else
          {
            sub_1C20EB498(&v122, &qword_1EBF23568, &qword_1C21771F0);
          }

          sub_1C20F2980(2);
        }

        v53 = &qword_1EBF23568;
        v54 = &qword_1C21771F0;
LABEL_66:
        sub_1C20EB498(&v122, v53, v54);
        return;
      }

      __break(1u);
    }

    else
    {
      if (a5)
      {
LABEL_69:
        v122 = a5;
        sub_1C2171344();
        __break(1u);
        return;
      }

      sub_1C20D865C(a1, a2);
      sub_1C20D865C(a1, a2);
      sub_1C2128BB4(1uLL, a1, a2, v110);
      sub_1C2144408(v110[0], v110[1], v111);
      v34 = sub_1C21289D8(a1, a2);
      if ((v34 & 0x100) == 0)
      {
        v130 = v111[5];
        v131 = v111[6];
        *v132 = v112[0];
        *&v132[9] = *(v112 + 9);
        v126 = v111[1];
        v127 = v111[2];
        v128 = v111[3];
        v129 = v111[4];
        LOBYTE(v122) = v34;
        v123 = a1;
        v124 = a2;
        v125 = v111[0];
        if ((sub_1C20F1390() - 1) >= 7u)
        {
          v118 = v131;
          *v119 = *v132;
          *&v119[9] = *&v132[9];
          v115 = v127;
          v116 = v128;
          *v117 = v129;
          *&v117[16] = v130;
          v113 = v125;
          v114 = v126;
          v101 = v131;
          v102[0] = *v132;
          *(v102 + 9) = *&v132[9];
          v98 = v127;
          v99 = v128;
          *v100 = v129;
          *&v100[16] = v130;
          v96 = v125;
          v97 = v126;
          sub_1C20F4BF4(&v113, &v103);
          ASCTAPAuthenticatorMakeCredentialResponse.attestationObjectEncoded()();
          v43 = v42;
          v81 = v44;
          v108 = v101;
          v109[0] = v102[0];
          *(v109 + 9) = *(v102 + 9);
          v105 = v98;
          v106 = v99;
          *v107 = *v100;
          *&v107[16] = *&v100[16];
          v103 = v96;
          v104 = v97;
          sub_1C20EB344(&v103);
          v45 = v114;
          sub_1C20D865C(v114, *(&v114 + 1));
          ASCTAPAuthData.init(data:)(v45, *(&v45 + 1), &v96);
          v83 = v43;
          v91 = v98;
          v92 = v99;
          v93 = *v100;
          v94 = *&v100[16];
          v89 = v96;
          v90 = v97;
          v55 = *(&v97 + 1);
          v56 = *(&v98 + 1);
          v57 = v98;
          v59 = *(&v99 + 1);
          v58 = v99;
          v60 = *v100;
          sub_1C20F4D00(*(&v97 + 1), v98, *(&v98 + 1), v99, *(&v99 + 1), *v100, sub_1C20D865C);
          sub_1C20F4CAC(&v89);
          if (v57 >> 60 == 15)
          {
            v56 = 0;
            v58 = 0xC000000000000000;
          }

          else
          {
            sub_1C20D865C(v56, v58);
            sub_1C20F4D00(v55, v57, v56, v58, v59, v60, sub_1C20D3174);
          }

          v77 = v58;
          if (v119[24] == 3)
          {
            v79 = 0;
          }

          else
          {
            v86 = *&v117[16];
            v87 = v118;
            *v88 = *v119;
            *&v88[16] = *&v119[16];
            v84 = v116;
            v85 = *v117;
            v88[24] = v119[24];
            v89 = v116;
            v90 = *v117;
            v94 = *&v119[16];
            v91 = *&v117[16];
            v92 = v118;
            v93 = *v119;
            v95 = v119[24];
            sub_1C20F4C50(&v89, &v96);
            v79 = sub_1C212F134();
            v98 = v86;
            v99 = v87;
            *v100 = *v88;
            *&v100[9] = *&v88[9];
            v96 = v84;
            v97 = v85;
            sub_1C20F4BA0(&v96);
          }

          v61 = objc_allocWithZone(ASCPlatformPublicKeyCredentialRegistration);
          v74 = sub_1C21708F4();

          v62 = sub_1C2170154();
          v63 = sub_1C2170154();
          v64 = sub_1C2170154();
          v65 = sub_1C2170B54();
          LOBYTE(v68) = 0;
          v66 = [v61 initWithRelyingPartyIdentifier:v74 attestationObject:v62 rawClientDataJSON:v63 credentialID:v64 transports:v65 extensions:v79 attachment:@"cross-platform" isExternal:v68];

          sub_1C20D3174(v56, v77);
          sub_1C20D3174(v83, v81);

          v67 = v66;
          sub_1C20F1D24(v67, v6);
        }

        else
        {

          if (qword_1EDD4A728 != -1)
          {
            swift_once();
          }

          v35 = sub_1C21705A4();
          __swift_project_value_buffer(v35, qword_1EDD4CB08);
          sub_1C20EB3E8(&v122, &v113, &qword_1EBF23540, &qword_1C21769F0);
          v36 = sub_1C2170584();
          v37 = sub_1C2170C54();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            *v38 = 16777472;
            v38[4] = v122;
            sub_1C20EB498(&v122, &qword_1EBF23540, &qword_1C21769F0);
            _os_log_impl(&dword_1C20AD000, v36, v37, "Received error from authenticator: %hhu", v38, 5u);
            MEMORY[0x1C6915360](v38, -1, -1);
          }

          else
          {
            sub_1C20EB498(&v122, &qword_1EBF23540, &qword_1C21769F0);
          }

          sub_1C20F2980(2);
        }

        v53 = &qword_1EBF23540;
        v54 = &qword_1C21769F0;
        goto LABEL_66;
      }
    }

    __break(1u);
    goto LABEL_69;
  }

  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v16 = sub_1C21705A4();
  __swift_project_value_buffer(v16, qword_1EDD4CB08);
  v17 = sub_1C2170584();
  v18 = sub_1C2170C54();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1C20AD000, v17, v18, "Unexpected operation type digitalCredential for CTAP response", v19, 2u);
    MEMORY[0x1C6915360](v19, -1, -1);
  }

  sub_1C20F46B8();
  v20 = swift_allocError();
  *v21 = 0;
  swift_willThrow();
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v22 = sub_1C21705A4();
  __swift_project_value_buffer(v22, qword_1EDD4CB08);
  v23 = v20;
  v24 = sub_1C2170584();
  v25 = sub_1C2170C54();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = sub_1C216FF84();
    *(v26 + 4) = v28;
    *v27 = v28;
    _os_log_impl(&dword_1C20AD000, v24, v25, "Could not decode authenticator response: %@", v26, 0xCu);
    sub_1C20EB498(v27, &qword_1EBF23700, &qword_1C2176D80);
    MEMORY[0x1C6915360](v27, -1, -1);
    MEMORY[0x1C6915360](v26, -1, -1);
  }

  sub_1C20F2980(2);
}

uint64_t sub_1C20F1390()
{
  result = *v0;
  if (*v0 > 0x21u)
  {
    if (result == 34)
    {
      return 4;
    }

    if (result != 47)
    {
      if (result == 127)
      {
        return 6;
      }

      return 7;
    }

    return 5;
  }

  else
  {
    if (result < 2)
    {
      return result;
    }

    if (result != 5)
    {
      if (result == 25)
      {
        return 3;
      }

      return 7;
    }

    return 2;
  }
}

void sub_1C20F13FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 2)
  {
    v4 = objc_allocWithZone(ASCDigitalIdentityCredential);
    v5 = sub_1C2170154();
    v6 = [v4 initWithCommandResponseData_];

    v12 = v6;
    sub_1C20F1D24(v12, v3);
  }

  else
  {
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v8 = sub_1C21705A4();
    __swift_project_value_buffer(v8, qword_1EDD4CB08);
    v9 = sub_1C2170584();
    v10 = sub_1C2170C54();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = a3;
      _os_log_impl(&dword_1C20AD000, v9, v10, "Received authenticator response for invalid operation type %ld", v11, 0xCu);
      MEMORY[0x1C6915360](v11, -1, -1);
    }

    sub_1C20F2980(4);
  }
}

uint64_t sub_1C20F15A0(uint64_t a1)
{
  v1 = sub_1C216FDA4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C216FD94();
  sub_1C216FD84();
  type metadata accessor for ASCABLEAdvertisement(0);
  v5 = sub_1C216FFA4();
  MEMORY[0x1C6913010](v5);
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1C2170F34();

  v14 = 0x632F656C6261632FLL;
  v15 = 0xEF2F7463656E6E6FLL;
  v6 = sub_1C2170084();
  MEMORY[0x1C6913CB0](v6);

  MEMORY[0x1C6913CB0](47, 0xE100000000000000);
  sub_1C2170734();
  v7 = v13[2];
  v8 = v13[3];
  v9 = sub_1C2170084();
  v11 = v10;
  sub_1C20D3174(v7, v8);
  MEMORY[0x1C6913CB0](v9, v11);

  MEMORY[0x1C6913020](v14, v15);
  sub_1C216FD54();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1C20F17A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1C20DBD8C;

  return sub_1C20EE3D4(a5, a6);
}

void sub_1C20F184C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23680, &qword_1C2176D30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  [*(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_powerLogger) logAuthenticationFinishedEventIfNeeded];
  v5 = *(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState);
  *(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState) = 0;
  sub_1C20ECCF8(v5);
  [*(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_bluetoothManager) stopScan];
  v6 = (v0 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentRelyingPartyIdentifier);
  *v6 = 0;
  v6[1] = 0;

  v7 = v0 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentOperationType;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = type metadata accessor for ASCABLEAdvertisement(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_authenticatorAdvertisement;
  swift_beginAccess();
  sub_1C20EB114(v4, v1 + v9);
  swift_endAccess();
  v10 = (v1 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_completionHandler);
  v11 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_completionHandler);
  v12 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_completionHandler + 8);
  *v10 = 0;
  v10[1] = 0;
  sub_1C20B0080(v11, v12);
  v13 = OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_webSocket;
  v14 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_webSocket);
  if (v14)
  {
    v15 = v14;
    sub_1C2152FA4();

    v14 = *(v1 + v13);
  }

  *(v1 + v13) = 0;
}

id ASCABLEClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ASCABLEClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASCABLEClient(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C20F1BF4(uint64_t a1, uint64_t a2)
{
  sub_1C2171434();
  sub_1C21709B4();
  v4 = sub_1C2171454();

  return sub_1C20F1C6C(a1, a2, v4);
}

unint64_t sub_1C20F1C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1C2171324())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_1C20F1D24(uint64_t a1, uint64_t a2)
{
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v4 = sub_1C21705A4();
  __swift_project_value_buffer(v4, qword_1EDD4CB08);
  v5 = sub_1C2170584();
  v6 = sub_1C2170C74();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C20AD000, v5, v6, "Transaction succeeded.", v7, 2u);
    MEMORY[0x1C6915360](v7, -1, -1);
  }

  v8 = *(a2 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_completionHandler);
  if (v8)
  {
    v9 = *(a2 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_completionHandler + 8);

    v8(a1, 0);
    sub_1C20B0080(v8, v9);
  }

  else
  {
    v10 = sub_1C2170584();
    v11 = sub_1C2170C54();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1C20AD000, v10, v11, "Unexpectedly finished a transaction without a completion handler.", v12, 2u);
      MEMORY[0x1C6915360](v12, -1, -1);
    }
  }

  sub_1C20F0288();
  sub_1C20F184C();
}

unint64_t sub_1C20F1EC4(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

char *sub_1C20F1F30(char *a1, void (*a2)(char *, char *, uint64_t))
{
  v67 = a2;
  v70 = a1;
  v66 = sub_1C21701F4();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C21707F4();
  v4 = *(v3 - 8);
  v72 = v3;
  v73 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v71 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23920, &unk_1C21772B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v68 = (&v60 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23928, &unk_1C2177240);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v60 - v9;
  v11 = sub_1C2170824();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C2170784();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1C2170764();
  v19 = *(v69 - 8);
  v20 = MEMORY[0x1EEE9AC00](v69);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v60 - v23;
  v63 = *v67;
  if (qword_1EDD4A720 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v15, qword_1EDD4A9C8);
  (*(v16 + 16))(v18, v25, v15);
  sub_1C2170754();
  sub_1C2170814();
  v26 = v19;
  v67 = *(v19 + 16);
  v27 = v69;
  v67(v22, v24, v69);
  (*(v12 + 16))(v10, v14, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v28 = v68;
  (*(v73 + 56))(v68, 1, 1, v72);
  type metadata accessor for ASCABLECryptographyManager(0);
  swift_allocObject();
  v29 = sub_1C20F5B24(v22, v10, v28);
  (*(v12 + 8))(v14, v11);
  v61 = *(v26 + 8);
  v61(v24, v27);
  v62 = [objc_allocWithZone(MEMORY[0x1E695D258]) init];
  v30 = type metadata accessor for ASCABLEClient(0);
  memset(v76, 0, sizeof(v76));
  v77 = 0;
  v68 = v30;
  v31 = objc_allocWithZone(v30);
  swift_unknownObjectWeakInit();
  v32 = &v31[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentRelyingPartyIdentifier];
  *v32 = 0;
  v32[1] = 0;
  v33 = &v31[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentOperationType];
  *v33 = 0;
  v33[8] = 1;
  *&v31[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_clientDataJSON] = xmmword_1C21769B0;
  *&v31[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_webSocket] = 0;
  v34 = OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_authenticatorAdvertisement;
  v35 = type metadata accessor for ASCABLEAdvertisement(0);
  (*(*(v35 - 8) + 56))(&v31[v34], 1, 1, v35);
  v36 = &v31[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_completionHandler];
  *v36 = 0;
  v36[1] = 0;
  v37 = OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_powerLogger;
  *&v31[v37] = [objc_allocWithZone(_ASCABLEPowerLogger) init];
  v38 = &v31[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_testDelegate];
  *(v38 + 4) = 0;
  *v38 = 0u;
  *(v38 + 1) = 0u;
  v31[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState] = 0;
  swift_unknownObjectWeakAssign();
  *&v31[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_cryptographyManager] = v29;
  v40 = v72;
  v39 = v73;
  (*(v73 + 16))(v71, v29 + OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_qrPublicKey, v72);
  v67(v24, (v29 + OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_qrSymmetricKey), v27);
  v41 = qword_1EDD4A710;

  v43 = v24;
  if (v41 != -1)
  {
    result = swift_once();
  }

  v44 = *(qword_1EDD4CAB0 + 16);
  if (v44 > 0xFF)
  {
    __break(1u);
    goto LABEL_11;
  }

  v70 = v38;
  v45 = v64;
  sub_1C21701E4();
  sub_1C21701D4();
  v47 = v46;
  v48 = v46;
  result = (*(v65 + 8))(v45, v66);
  if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v47 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v47 < 9.22337204e18)
  {
    v49 = v71;
    v65 = v44;
    v50 = v39;
    v66 = v47;
    v51 = sub_1C21707D4();
    v67 = v29;
    v53 = v52;
    sub_1C2170734();
    v61(v43, v27);
    (*(v50 + 8))(v49, v40);
    v54 = v75;
    v55 = &v31[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_qrCodeStruct];
    *v55 = v51;
    *(v55 + 1) = v53;
    *(v55 + 1) = v54;
    v55[32] = v65;
    *(v55 + 5) = v66;
    *(v55 + 24) = 0;
    v55[50] = v63;
    v56 = v62;
    *&v31[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_bluetoothManager] = v62;
    v57 = v70;
    swift_beginAccess();
    v58 = v56;
    sub_1C20F5A68(v76, v57, &qword_1EBF238C8, &unk_1C2177200);
    swift_endAccess();
    v74.receiver = v31;
    v74.super_class = v68;
    v59 = objc_msgSendSuper2(&v74, sel_init);
    [v58 setDelegate_];

    sub_1C20EB498(v76, &qword_1EBF238C8, &unk_1C2177200);
    return v59;
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_1C20F2850(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23900, &unk_1C2177230);
    v3 = sub_1C2171114();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C20EB3E8(v4, &v13, &unk_1EBF23908, &qword_1C217B8D0);
      v5 = v13;
      v6 = v14;
      result = sub_1C20F1BF4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C20F5A58(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1C20F2980(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState;
  v4 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState);
  if (v4 <= 3)
  {
    if (*(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState) > 1u || *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState))
    {
LABEL_18:
      v6 = sub_1C2171324();

      if (v6)
      {
        return;
      }

      if (qword_1EDD4A728 != -1)
      {
        swift_once();
      }

      v7 = sub_1C21705A4();
      __swift_project_value_buffer(v7, qword_1EDD4CB08);
      v8 = sub_1C2170584();
      v9 = sub_1C2170C54();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v22 = v11;
        *v10 = 136315138;
        sub_1C20F46B8();
        v12 = sub_1C21713D4();
        v14 = sub_1C20D7F2C(v12, v13, &v22);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_1C20AD000, v8, v9, "caBLE transaction failed: %s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v11);
        MEMORY[0x1C6915360](v11, -1, -1);
        MEMORY[0x1C6915360](v10, -1, -1);
      }

      v15 = *(v1 + v3);
      *(v1 + v3) = 8;
      sub_1C20ECCF8(v15);
      if (a1 <= 2)
      {
        switch(a1)
        {
          case 0:
            goto LABEL_37;
          case 1:
            sub_1C20F46B8();
            v17 = swift_allocError();
            v18 = 1;
            goto LABEL_34;
          case 2:
            sub_1C20F46B8();
            v17 = swift_allocError();
            v18 = 2;
            goto LABEL_34;
        }
      }

      else
      {
        if (a1 <= 4)
        {
          if (a1 == 3)
          {
            sub_1C20F46B8();
            v17 = swift_allocError();
            v18 = 3;
LABEL_34:
            *v16 = v18;
LABEL_38:
            v20 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_completionHandler);
            if (v20)
            {
              v21 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_completionHandler + 8);

              v20(0, v17);
              sub_1C20B0080(v20, v21);
            }

            sub_1C20F184C();

            return;
          }

LABEL_35:
          type metadata accessor for ASCAuthorizationError(0);
          sub_1C20F2850(MEMORY[0x1E69E7CC0]);
          sub_1C20F5A10(&qword_1EDD4A800, type metadata accessor for ASCAuthorizationError, &unk_1C21766CC);
          sub_1C216FF74();
          v17 = v22;
          goto LABEL_38;
        }

        if (a1 == 5)
        {
          goto LABEL_35;
        }

        if (a1 == 6)
        {
LABEL_37:
          sub_1C20F46B8();
          v17 = swift_allocError();
          *v19 = 0;
          goto LABEL_38;
        }
      }

      v22 = a1;
      sub_1C2171344();
      __break(1u);
      return;
    }

    v5 = "bluetoothNotReady";
  }

  else
  {
    if (*(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState) <= 5u || v4 == 6 || v4 == 7)
    {
      goto LABEL_18;
    }

    v5 = "transactionFailed";
  }

  if (((v5 - 32) | 0x8000000000000000) != 0x80000001C2184410)
  {
    goto LABEL_18;
  }
}

unint64_t sub_1C20F2E58(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C2171134();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

void sub_1C20F2EA4(void *a1)
{
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v2 = sub_1C21705A4();
  __swift_project_value_buffer(v2, qword_1EDD4CB08);
  v3 = a1;
  v4 = sub_1C2170584();
  v5 = sub_1C2170C54();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    if (a1)
    {
      swift_getErrorValue();
      v8 = sub_1C21713D4();
      v10 = v9;
    }

    else
    {
      v10 = 0xE500000000000000;
      v8 = 0x3E6C696E3CLL;
    }

    v11 = sub_1C20D7F2C(v8, v10, &v12);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1C20AD000, v4, v5, "Unable to start BLE scanning: %s.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x1C6915360](v7, -1, -1);
    MEMORY[0x1C6915360](v6, -1, -1);
  }

  sub_1C20F2980(0);
}

void sub_1C20F3040(void *a1, uint64_t a2)
{
  v3 = v2;
  v164 = a2;
  v5 = sub_1C216FCB4();
  v154 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v160 = v144 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251D0, &qword_1C2176940);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v159 = v144 - v11;
  v12 = sub_1C2170024();
  v13 = *(v12 - 1);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v157 = v144 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v158 = v144 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = v144 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23680, &qword_1C2176D30);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v156 = (v144 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v161 = v144 - v26;
  v163 = type metadata accessor for ASCABLEAdvertisement(0);
  v162 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v28 = v144 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v3[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState];
  v153 = v8;
  v155 = OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState;
  if (v29 == 3)
  {
  }

  else
  {
    v30 = sub_1C2171324();

    if ((v30 & 1) == 0)
    {
      return;
    }
  }

  v151 = v5;
  v150 = v16;
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v31 = sub_1C21705A4();
  v32 = __swift_project_value_buffer(v31, qword_1EDD4CB08);
  v33 = a1;
  v34 = sub_1C2170584();
  v35 = sub_1C2170C44();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v152 = v32;
    v37 = v22;
    v38 = v13;
    v39 = v28;
    v40 = v12;
    v41 = v3;
    v42 = v36;
    v43 = swift_slowAlloc();
    *v42 = 138412290;
    *(v42 + 4) = v33;
    *v43 = v33;
    v44 = v33;
    _os_log_impl(&dword_1C20AD000, v34, v35, "Central manager discovered peripheral: %@", v42, 0xCu);
    sub_1C20EB498(v43, &qword_1EBF23700, &qword_1C2176D80);
    MEMORY[0x1C6915360](v43, -1, -1);
    v45 = v42;
    v3 = v41;
    v12 = v40;
    v28 = v39;
    v13 = v38;
    v22 = v37;
    v32 = v152;
    MEMORY[0x1C6915360](v45, -1, -1);
  }

  v46 = sub_1C2170914();
  v48 = v164;
  if (!*(v164 + 16))
  {

LABEL_22:
    v63 = sub_1C2170584();
    v64 = sub_1C2170C34();
    if (!os_log_type_enabled(v63, v64))
    {
LABEL_25:

      return;
    }

    v65 = swift_slowAlloc();
    *v65 = 0;
    v66 = "Found unexpected advertisement.";
LABEL_24:
    _os_log_impl(&dword_1C20AD000, v63, v64, v66, v65, 2u);
    MEMORY[0x1C6915360](v65, -1, -1);
    goto LABEL_25;
  }

  v49 = sub_1C2121F88(v46, v47);
  v51 = v50;

  if ((v51 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_1C20DA01C(*(v48 + 56) + 32 * v49, &v171);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF238D0, &qword_1C2177228);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v52 = v168;
  if (qword_1EBF230A8 == -1)
  {
    if (!v168[2])
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_60:
    swift_once();
    if (!v52[2])
    {
      goto LABEL_14;
    }
  }

  v53 = sub_1C2122290(qword_1EBF36488);
  if (v54)
  {
    goto LABEL_17;
  }

LABEL_14:
  if (qword_1EBF230A0 == -1)
  {
    if (!v52[2])
    {
LABEL_63:

      v63 = sub_1C2170584();
      v64 = sub_1C2170C34();
      if (!os_log_type_enabled(v63, v64))
      {
        goto LABEL_25;
      }

      v65 = swift_slowAlloc();
      *v65 = 0;
      v66 = "Found advertisemnt without caBLE UUID.";
      goto LABEL_24;
    }
  }

  else
  {
    swift_once();
    if (!v52[2])
    {
      goto LABEL_63;
    }
  }

  v53 = sub_1C2122290(qword_1EBF36480);
  if ((v55 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_17:
  v152 = v32;
  v56 = (v52[7] + 16 * v53);
  v58 = *v56;
  v57 = v56[1];
  sub_1C20D865C(*v56, v57);
  v59 = v161;
  v164 = v58;
  sub_1C20F6454(v58, v57, v161);
  if ((*(v162 + 48))(v59, 1, v163) == 1)
  {

    sub_1C20EB498(v59, &qword_1EBF23680, &qword_1C2176D30);
    v60 = sub_1C2170584();
    v61 = sub_1C2170C74();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_1C20AD000, v60, v61, "Could not decrypt caBLE advertisement.", v62, 2u);
      MEMORY[0x1C6915360](v62, -1, -1);
    }

    sub_1C20B23C8(v164, v57);
    return;
  }

  sub_1C20F4EA0(v59, v28);
  v67 = v159;
  sub_1C20F15A0(v28);
  if ((*(v13 + 48))(v67, 1, v12) == 1)
  {

    sub_1C20EB498(v67, &qword_1EBF251D0, &qword_1C2176940);
    v68 = sub_1C2170584();
    v69 = sub_1C2170C54();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_1C20AD000, v68, v69, "Could not get URL from advertisement.", v70, 2u);
      MEMORY[0x1C6915360](v70, -1, -1);
    }

    sub_1C20F2980(1);
    sub_1C20B23C8(v164, v57);
LABEL_37:
    sub_1C20F4F04(v28);
    return;
  }

  v161 = v57;
  (*(v13 + 32))(v22, v67, v12);
  Strong = swift_unknownObjectWeakLoadStrong();
  v72 = v22;
  if (!Strong)
  {
    v86 = v164;

    v87 = sub_1C2170584();
    v88 = sub_1C2170C54();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = v12;
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_1C20AD000, v87, v88, "Delegate no longer exists.", v90, 2u);
      v91 = v90;
      v12 = v89;
      MEMORY[0x1C6915360](v91, -1, -1);
    }

    sub_1C20F2980(0);
    sub_1C20B23C8(v86, v161);
    (*(v13 + 8))(v72, v12);
    goto LABEL_37;
  }

  v73 = Strong;
  [*&v3[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_bluetoothManager] stopScan];
  v74 = v3[v155];
  v3[v155] = 4;
  sub_1C20ECCF8(v74);
  v149 = v28;
  v75 = v156;
  sub_1C20F5940(v28, v156);
  (*(v162 + 56))(v75, 0, 1, v163);
  v76 = OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_authenticatorAdvertisement;
  swift_beginAccess();
  sub_1C20EB114(v75, &v3[v76]);
  swift_endAccess();
  v144[1] = v73;
  [v73 cableClientWillConnect_];
  v77 = *(v13 + 16);
  v155 = v72;
  v163 = v12;
  v159 = (v13 + 16);
  v156 = v77;
  (v77)(v158, v72, v12);
  v78 = [objc_opt_self() ephemeralSessionConfiguration];
  v79 = objc_opt_self();
  v80 = [v79 sessionWithConfiguration_];

  v81 = OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_testDelegate;
  swift_beginAccess();
  sub_1C20EB3E8(&v3[v81], &v168, &qword_1EBF238C8, &unk_1C2177200);
  v82 = v169;
  if (v169)
  {
    v83 = v170;
    v84 = __swift_project_boxed_opaque_existential_1(&v168, v169);
    *(&v172 + 1) = v82;
    v173 = *(v83 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v171);
    (*(*(v82 - 8) + 16))(boxed_opaque_existential_1, v84, v82);
    __swift_destroy_boxed_opaque_existential_0Tm(&v168);
  }

  else
  {
    sub_1C20EB498(&v168, &qword_1EBF238C8, &unk_1C2177200);
    v171 = 0u;
    v172 = 0u;
    v173 = 0;
  }

  v92 = v157;
  v93 = v151;
  v162 = v13;
  v157 = v3;
  v22 = sub_1C213F3FC(MEMORY[0x1E69E7CC0]);
  v148 = type metadata accessor for ASWebSocket();
  v12 = objc_allocWithZone(v148);
  *(v12 + OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_isConnected) = 0;
  v94 = (v12 + OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_connectionCompletionHandler);
  *v94 = 0;
  v94[1] = 0;
  v95 = v12 + OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_testDelegate;
  *(v95 + 4) = 0;
  *v95 = 0u;
  *(v95 + 1) = 0u;
  v147 = v95;
  v96 = v80;
  if (!v80)
  {
    v96 = [v79 sharedSession];
  }

  v145 = OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_urlSession;
  *(v12 + OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_urlSession) = v96;
  (v156)(v92, v158, v163);
  v146 = v80;
  sub_1C216FC84();
  v3 = 0;
  v32 = (v22 + 64);
  v97 = 1 << v22[32];
  v98 = -1;
  if (v97 < 64)
  {
    v98 = ~(-1 << v97);
  }

  v13 = v98 & *(v22 + 8);
  v28 = ((v97 + 63) >> 6);
  v144[2] = v52;
  if (v13)
  {
    while (1)
    {
      v99 = v3;
LABEL_49:
      v100 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v52 = *(*(v22 + 7) + ((v99 << 10) | (16 * v100)) + 8);

      sub_1C216FC94();

      v93 = v151;
      if (!v13)
      {
        goto LABEL_45;
      }
    }
  }

  while (1)
  {
LABEL_45:
    v99 = (v3 + 1);
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_60;
    }

    if (v99 >= v28)
    {
      break;
    }

    v13 = *(v32 + 8 * v99);
    ++v3;
    if (v13)
    {
      v3 = v99;
      goto LABEL_49;
    }
  }

  v168 = &unk_1F419D2A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF236E0, &qword_1C2176D70);
  sub_1C20F59A4();
  sub_1C21708A4();
  v101 = v160;
  sub_1C216FC94();

  sub_1C20EB3E8(&v171, &v166, &unk_1EBF236F0, &qword_1C2176D78);
  if (v167)
  {
    sub_1C20EB760(&v166, &v168);
    v102 = v169;
    v103 = v170;
    __swift_project_boxed_opaque_existential_1(&v168, v169);
    v104 = v153;
    (*(v103 + 8))(v101, v102, v103);
    v105 = v154;
    (*(v154 + 8))(v101, v93);
    (*(v105 + 32))(v101, v104, v93);
    __swift_destroy_boxed_opaque_existential_0Tm(&v168);
    v106 = v157;
    v107 = v162;
  }

  else
  {
    sub_1C20EB498(&v166, &unk_1EBF236F0, &qword_1C2176D78);
    v106 = v157;
    v107 = v162;
    v105 = v154;
  }

  v108 = *(v12 + v145);
  v109 = sub_1C216FC74();
  v110 = [v108 webSocketTaskWithRequest_];

  *(v12 + OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_webSocketTask) = v110;
  v111 = v147;
  swift_beginAccess();
  sub_1C20F5A68(&v171, v111, &unk_1EBF236F0, &qword_1C2176D78);
  swift_endAccess();
  v165.receiver = v12;
  v165.super_class = v148;
  v112 = v101;
  v113 = objc_msgSendSuper2(&v165, sel_init);
  [*&v113[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_webSocketTask] setDelegate_];

  (*(v105 + 8))(v112, v93);
  v116 = *(v107 + 8);
  v114 = v107 + 8;
  v115 = v116;
  v117 = v163;
  (v116)(v158, v163);
  sub_1C20EB498(&v171, &unk_1EBF236F0, &qword_1C2176D78);
  v118 = OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_webSocket;
  v119 = *&v106[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_webSocket];
  *&v106[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_webSocket] = v113;
  v120 = v113;

  *&v120[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_delegate + 8] = &off_1F419E340;
  swift_unknownObjectWeakAssign();

  v121 = v150;
  (v156)(v150, v155, v117);
  v122 = sub_1C2170584();
  v123 = sub_1C2170C74();
  if (os_log_type_enabled(v122, v123))
  {
    v124 = swift_slowAlloc();
    v160 = v115;
    v125 = v117;
    v126 = v124;
    v127 = swift_slowAlloc();
    v162 = v114;
    v128 = v127;
    *&v171 = v127;
    *v126 = 136315138;
    sub_1C20F5A10(&unk_1EBF238F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v129 = sub_1C21712E4();
    v131 = v130;
    v132 = v125;
    v115 = v160;
    (v160)(v121, v132);
    v133 = sub_1C20D7F2C(v129, v131, &v171);

    *(v126 + 4) = v133;
    _os_log_impl(&dword_1C20AD000, v122, v123, "Connecting to relay at %s", v126, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v128);
    MEMORY[0x1C6915360](v128, -1, -1);
    MEMORY[0x1C6915360](v126, -1, -1);
  }

  else
  {

    (v115)(v121, v117);
  }

  v134 = v149;
  v135 = *&v106[v118];
  v136 = v164;
  if (v135)
  {
    v137 = v135;

    v138 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v139 = *&v137[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_webSocketTask];

    [v139 resume];
    sub_1C20B23C8(v136, v161);
    swift_unknownObjectRelease();
    (v115)(v155, v163);
    sub_1C20F4F04(v134);
    v140 = swift_allocObject();
    *(v140 + 2) = v137;
    *(v140 + 3) = sub_1C20F5A08;
    *(v140 + 4) = v138;
    v141 = &v137[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_connectionCompletionHandler];
    v142 = *&v137[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_connectionCompletionHandler];
    v143 = *&v137[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_connectionCompletionHandler + 8];
    *v141 = sub_1C20EB108;
    v141[1] = v140;
    v63 = v137;
    sub_1C20B0080(v142, v143);

    goto LABEL_25;
  }

  __break(1u);
}

uint64_t type metadata accessor for ASCABLEClient(uint64_t a1)
{
  result = qword_1EDD4A9A0;
  if (!qword_1EDD4A9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C20F4558()
{
  result = qword_1EDD4A940;
  if (!qword_1EDD4A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4A940);
  }

  return result;
}

unint64_t sub_1C20F45B0()
{
  result = qword_1EDD4A948;
  if (!qword_1EDD4A948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4A948);
  }

  return result;
}

unint64_t sub_1C20F4608()
{
  result = qword_1EDD4A950;
  if (!qword_1EDD4A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4A950);
  }

  return result;
}

unint64_t sub_1C20F4660()
{
  result = qword_1EDD4A958;
  if (!qword_1EDD4A958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4A958);
  }

  return result;
}

unint64_t sub_1C20F46B8()
{
  result = qword_1EDD4A968;
  if (!qword_1EDD4A968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4A968);
  }

  return result;
}

unint64_t sub_1C20F4710()
{
  result = qword_1EBF237C0;
  if (!qword_1EBF237C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF237C0);
  }

  return result;
}

void sub_1C20F476C(uint64_t a1)
{
  sub_1C20E7F88(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for ASCABLEClient.CABLEState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ASCABLEClient.CABLEState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C20F4B4C()
{
  result = qword_1EBF238B8;
  if (!qword_1EBF238B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF238B8);
  }

  return result;
}

void sub_1C20F4D00(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  if (a2 >> 60 != 15)
  {
    a7(a1);
    (a7)(a3, a4);

    (a7)(a5, a6);
  }
}

uint64_t sub_1C20F4D90(uint64_t result, unint64_t a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  v3 = (a2 >> 60) & 3;
  if (((a2 >> 60) & 3) > 1)
  {
    if (v3 == 2)
    {
      return a3(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    if (v3)
    {
      a2 &= 0xCFFFFFFFFFFFFFFFLL;
    }

    return a3(result, a2);
  }

  return result;
}

uint64_t sub_1C20F4DF4(uint64_t a1, unint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF238C0, &qword_1C21771F8);

  return sub_1C20EFA58(a1, a2, a3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C20F4EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASCABLEAdvertisement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C20F4F04(uint64_t a1)
{
  v2 = type metadata accessor for ASCABLEAdvertisement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C20F4F60(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23490, &qword_1C2176890);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v38 - v7;
  v9 = OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState;
  v10 = v3[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState];
  if (v10 <= 4)
  {
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v11 = sub_1C21705A4();
    __swift_project_value_buffer(v11, qword_1EDD4CB08);
    v12 = v3;
    v13 = sub_1C2170584();
    v14 = sub_1C2170C54();

    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_46;
    }

    v15 = 0xD000000000000011;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v39 = v17;
    *v16 = 136315138;
    v18 = v3[v9];
    if (v18 <= 3)
    {
      if (v3[v9] <= 1u)
      {
        if (v3[v9])
        {
          v19 = "bluetoothNotReady";
          v15 = 0xD000000000000012;
          goto LABEL_45;
        }

        v20 = "bluetoothNotReady";
        goto LABEL_42;
      }

      if (v18 != 2)
      {
        v19 = "waitingForBluetoothPowerOn";
        v15 = 0xD000000000000022;
        goto LABEL_45;
      }

      v32 = "waitingForBluetoothPowerOn";
    }

    else
    {
      if (v3[v9] > 5u)
      {
        if (v18 == 6)
        {
          v19 = "openingWebSocket";
          v15 = 0xD000000000000020;
          goto LABEL_45;
        }

        if (v18 == 7)
        {
          v19 = "performingInitialHandshake";
          v15 = 0xD000000000000015;
LABEL_45:
          v34 = sub_1C20D7F2C(v15, v19 | 0x8000000000000000, &v39);

          *(v16 + 4) = v34;
          _os_log_impl(&dword_1C20AD000, v13, v14, "Unexpectedly received socket message while in state %s", v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v17);
          MEMORY[0x1C6915360](v17, -1, -1);
          MEMORY[0x1C6915360](v16, -1, -1);
LABEL_46:

          sub_1C20F2980(0);
          return;
        }

        v20 = "transactionFailed";
LABEL_42:
        v19 = (v20 - 32);
        goto LABEL_45;
      }

      if (v18 == 4)
      {
        v19 = "toothAdvertisement";
        v15 = 0xD000000000000010;
        goto LABEL_45;
      }

      v32 = "performingInitialHandshake";
    }

    v19 = (v32 - 32);
    v15 = 0xD00000000000001ALL;
    goto LABEL_45;
  }

  if (v3[OBJC_IVAR____TtC26AuthenticationServicesCore13ASCABLEClient_currentState] <= 6u)
  {
    if (v10 == 5)
    {

      sub_1C20EE214(a1, a2);
    }

    else
    {
      v21 = sub_1C2170BE4();
      (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
      v22 = swift_allocObject();
      v22[2] = 0;
      v22[3] = 0;
      v22[4] = v3;
      v22[5] = a1;
      v22[6] = a2;
      v23 = v3;
      sub_1C20D865C(a1, a2);
      sub_1C211E0FC(0, 0, v8, &unk_1C2177218, v22);
    }

    return;
  }

  if (v10 == 7)
  {

    sub_1C20EFBD4(a1, a2);
    return;
  }

  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v24 = sub_1C21705A4();
  __swift_project_value_buffer(v24, qword_1EDD4CB08);
  v25 = v3;
  v38 = sub_1C2170584();
  v26 = sub_1C2170C54();

  if (os_log_type_enabled(v38, v26))
  {
    v27 = 0xD000000000000011;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v39 = v29;
    *v28 = 136315138;
    v30 = v3[v9];
    if (v30 <= 3)
    {
      if (v3[v9] <= 1u)
      {
        if (v3[v9])
        {
          v31 = "bluetoothNotReady";
          v27 = 0xD000000000000012;
          goto LABEL_61;
        }

        v35 = "bluetoothNotReady";
        goto LABEL_58;
      }

      if (v30 != 2)
      {
        v31 = "waitingForBluetoothPowerOn";
        v27 = 0xD000000000000022;
        goto LABEL_61;
      }

      v36 = "waitingForBluetoothPowerOn";
    }

    else
    {
      if (v3[v9] > 5u)
      {
        if (v30 == 6)
        {
          v31 = "openingWebSocket";
          v27 = 0xD000000000000020;
          goto LABEL_61;
        }

        if (v30 == 7)
        {
          v31 = "performingInitialHandshake";
          v27 = 0xD000000000000015;
LABEL_61:
          v37 = sub_1C20D7F2C(v27, v31 | 0x8000000000000000, &v39);

          *(v28 + 4) = v37;
          _os_log_impl(&dword_1C20AD000, v38, v26, "Unexpectedly received socket message while in state %s", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v29);
          MEMORY[0x1C6915360](v29, -1, -1);
          MEMORY[0x1C6915360](v28, -1, -1);

          return;
        }

        v35 = "transactionFailed";
LABEL_58:
        v31 = (v35 - 32);
        goto LABEL_61;
      }

      if (v30 == 4)
      {
        v31 = "toothAdvertisement";
        v27 = 0xD000000000000010;
        goto LABEL_61;
      }

      v36 = "performingInitialHandshake";
    }

    v31 = (v36 - 32);
    v27 = 0xD00000000000001ALL;
    goto LABEL_61;
  }

  v33 = v38;
}

void sub_1C20F5560(uint64_t a1, unint64_t a2)
{
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v4 = sub_1C21705A4();
  __swift_project_value_buffer(v4, qword_1EDD4CB08);

  v5 = sub_1C2170584();
  v6 = sub_1C2170C54();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1C20D7F2C(a1, a2, &v9);
    _os_log_impl(&dword_1C20AD000, v5, v6, "Unexpectedly received string frame: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x1C6915360](v8, -1, -1);
    MEMORY[0x1C6915360](v7, -1, -1);
  }

  sub_1C20F2980(3);
}

void sub_1C20F56C8(void *a1)
{
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v2 = sub_1C21705A4();
  __swift_project_value_buffer(v2, qword_1EDD4CB08);
  v3 = a1;
  v4 = sub_1C2170584();
  v5 = sub_1C2170C54();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = sub_1C216FF84();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_1C20AD000, v4, v5, "Networking error: %@", v6, 0xCu);
    sub_1C20EB498(v7, &qword_1EBF23700, &qword_1C2176D80);
    MEMORY[0x1C6915360](v7, -1, -1);
    MEMORY[0x1C6915360](v6, -1, -1);
  }

  sub_1C20F2980(3);
}

uint64_t sub_1C20F5824(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C20DBD8C;

  return sub_1C20F17A0(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1C20F58EC()
{
  result = qword_1EDD4A9C0;
  if (!qword_1EDD4A9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4A9C0);
  }

  return result;
}

uint64_t sub_1C20F5940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASCABLEAdvertisement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C20F59A4()
{
  result = qword_1EBF238E0;
  if (!qword_1EBF238E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBF236E0, &qword_1C2176D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF238E0);
  }

  return result;
}

uint64_t sub_1C20F5A10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_1C20F5A58(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1C20F5A68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C20F5AD4()
{
  v0 = sub_1C2170784();
  __swift_allocate_value_buffer(v0, qword_1EDD4A9C8);
  __swift_project_value_buffer(v0, qword_1EDD4A9C8);
  return sub_1C2170774();
}

uint64_t sub_1C20F5B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v68 = a3;
  v70 = a1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF239A0, &qword_1C21772E8);
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v56 - v6;
  v7 = sub_1C2170764();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v65 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23928, &unk_1C2177240);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v56 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23920, &unk_1C21772B0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v60 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v56 - v18;
  v20 = sub_1C21707F4();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_noiseManager;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23930, &qword_1C2177290);
  (*(*(v25 - 8) + 56))(v4 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_noiseTransportCipher;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23938, &qword_1C2177298);
  v28 = v4 + v26;
  v29 = v70;
  (*(*(v27 - 8) + 56))(v28, 1, 1, v27);
  v67 = v8;
  v30 = *(v8 + 16);
  v58 = OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_qrSymmetricKey;
  v64 = v7;
  v30(v4 + OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_qrSymmetricKey, v29, v7);
  v31 = OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_qrPrivateKey;
  v69 = v4;
  sub_1C20EB3E8(a2, v4 + OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_qrPrivateKey, &qword_1EBF23928, &unk_1C2177240);
  v66 = a2;
  sub_1C20EB3E8(a2, v14, &qword_1EBF23928, &unk_1C2177240);
  v32 = sub_1C2170824();
  v33 = *(v32 - 8);
  v34 = (*(v33 + 48))(v14, 1, v32);
  v59 = v21;
  v57 = v31;
  if (v34 != 1)
  {
    sub_1C2170804();
    (*(v33 + 8))(v14, v32);
    (*(v21 + 56))(v19, 0, 1, v20);
    v39 = *(v21 + 32);
    v39(v23, v19, v20);
    v40 = v61;
    v41 = v62;
    v38 = v20;
LABEL_7:
    v39((v69 + OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_qrPublicKey), v23, v38);
    v71 = sub_1C20E7898(&unk_1F419CDC0);
    v72 = v42;
    v43 = sub_1C2170844();
    sub_1C20FBA48(&qword_1EDD4A7A0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
    sub_1C20EB03C();
    v44 = v63;
    v62 = v43;
    sub_1C21707A4();
    sub_1C20D3174(v71, v72);
    sub_1C2170734();
    v45 = *(v40 + 48);
    v46 = v67;
    v47 = *(v67 + 32);
    v48 = v69;
    v49 = v64;
    v47(v69 + OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_eidAESKey, v41, v64);
    v47(v48 + OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_eidHMACKey, &v41[v45], v49);
    v71 = sub_1C20E7898(&unk_1F419CDE8);
    v72 = v50;
    v51 = v65;
    v52 = v70;
    sub_1C21707A4();
    sub_1C20EB498(v68, &qword_1EBF23920, &unk_1C21772B0);
    sub_1C20EB498(v66, &qword_1EBF23928, &unk_1C2177240);
    v53 = *(v46 + 8);
    v53(v52, v49);
    sub_1C20D3174(v71, v72);
    v53(v44, v49);
    v47(v48 + OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_tunnelID, v51, v49);
    return v48;
  }

  sub_1C20EB498(v14, &qword_1EBF23928, &unk_1C2177240);
  (*(v21 + 56))(v19, 1, 1, v20);
  v35 = v60;
  sub_1C20EB3E8(v68, v60, &qword_1EBF23920, &unk_1C21772B0);
  v36 = v21 + 48;
  v37 = *(v21 + 48);
  if (v37(v35, 1, v20) != 1)
  {
    v38 = v20;
    v39 = *(v21 + 32);
    v39(v23, v60, v20);
    if (v37(v19, 1, v20) != 1)
    {
      sub_1C20EB498(v19, &qword_1EBF23920, &unk_1C21772B0);
    }

    v40 = v61;
    v41 = v62;
    goto LABEL_7;
  }

  __break(1u);

  v55 = v69;
  (*(v67 + 8))(v69 + v58, v64);
  sub_1C20EB498(v55 + v57, &qword_1EBF23928, &unk_1C2177240);
  (*(v59 + 8))(v55 + v36, v23);
  sub_1C20EB498(v55 + OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_noiseManager, &qword_1EBF23968, &qword_1C21772C0);
  sub_1C20EB498(v55 + OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_noiseTransportCipher, &qword_1EBF23948, &qword_1C21772A0);
  type metadata accessor for ASCABLECryptographyManager(0);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1C20F6384(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF239A0, &qword_1C21772E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF239A8, &qword_1C21772F0);
  sub_1C20FBDA4();
  sub_1C2170744();
  return sub_1C2170744();
}

uint64_t sub_1C20F6454@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23660, &qword_1C2176D10);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v64 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23990, &qword_1C21772E0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v64 - v13;
  v15 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_16;
    }

    v17 = *(a1 + 16);
    v16 = *(a1 + 24);
    v18 = __OFSUB__(v16, v17);
    v19 = v16 - v17;
    if (!v18)
    {
      if (v19 == 20)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v15)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 20)
      {
        goto LABEL_8;
      }

LABEL_16:
      if (qword_1EDD4A728 != -1)
      {
        swift_once();
      }

      v37 = sub_1C21705A4();
      __swift_project_value_buffer(v37, qword_1EDD4CB08);
      sub_1C20D865C(a1, a2);
      v30 = sub_1C2170584();
      v38 = sub_1C2170C54();
      if (!os_log_type_enabled(v30, v38))
      {
        sub_1C20D3174(a1, a2);
LABEL_37:

        v61 = type metadata accessor for ASCABLEAdvertisement(0);
        v62 = *(*(v61 - 8) + 56);

        return v62(a3, 1, 1, v61);
      }

      result = swift_slowAlloc();
      *result = 134217984;
      if (v15 <= 1)
      {
        if (v15)
        {
          LODWORD(v40) = HIDWORD(a1) - a1;
          if (__OFSUB__(HIDWORD(a1), a1))
          {
            __break(1u);
            return result;
          }

          v40 = v40;
        }

        else
        {
          v40 = BYTE6(a2);
        }

        goto LABEL_36;
      }

      if (v15 != 2)
      {
        v40 = 0;
LABEL_36:
        *(result + 4) = v40;
        v60 = result;
        sub_1C20D3174(a1, a2);
        _os_log_impl(&dword_1C20AD000, v30, v38, "Could not decrypt caBLE advertisement of incorrect size: %ld", v60, 0xCu);
        MEMORY[0x1C6915360](v60, -1, -1);
        goto LABEL_37;
      }

      v57 = *(a1 + 16);
      v56 = *(a1 + 24);
      v18 = __OFSUB__(v56, v57);
      v40 = v56 - v57;
      if (!v18)
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_30:
      sub_1C20DC2BC(v30, a3, v66);
      sub_1C20D3174(v68, v69);
      sub_1C20D3174(a2, v7);
      sub_1C20D3174(v15, v65);
      return (*(v3 + 8))(v70, v11);
    }

    goto LABEL_43;
  }

  if (BYTE6(a2) != 20)
  {
    goto LABEL_16;
  }

LABEL_8:
  v66 = a3;
  v67 = v12;
  v70 = v14;
  v20 = sub_1C2170124();
  v22 = v21;
  v23 = sub_1C2170124();
  v25 = v24;
  v68 = v20;
  v69 = v22;
  v71 = v20;
  v72 = v22;
  sub_1C2170844();
  sub_1C20FBA48(&qword_1EDD4A7A0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  sub_1C20EB03C();
  a3 = v25;
  v15 = v23;
  v3 = v11;
  v11 = v67;
  v26 = v70;
  sub_1C21707C4();
  (*(v3 + 16))(v9, v26, v11);
  *&v9[*(v7 + 36)] = 4;
  a2 = sub_1C20DDE60(v9);
  v7 = v27;
  if (!sub_1C21068CC(v15, a3, a2, v27))
  {
    if (qword_1EDD4A728 == -1)
    {
LABEL_24:
      v41 = sub_1C21705A4();
      __swift_project_value_buffer(v41, qword_1EDD4CB08);
      sub_1C20D865C(v15, a3);
      sub_1C20D865C(a2, v7);
      v42 = sub_1C2170584();
      v43 = sub_1C2170C54();
      sub_1C20D3174(v15, a3);
      sub_1C20D3174(a2, v7);
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v45 = v71;
        *v44 = 136315394;
        sub_1C20D865C(v15, a3);
        v46 = sub_1C21700C4();
        v47 = a3;
        v65 = a3;
        v48 = v46;
        v50 = v49;
        sub_1C20D3174(v15, v47);
        v51 = sub_1C20D7F2C(v48, v50, &v71);

        *(v44 + 4) = v51;
        *(v44 + 12) = 2080;
        sub_1C20D865C(a2, v7);
        v52 = sub_1C21700C4();
        v54 = v53;
        sub_1C20D3174(a2, v7);
        v55 = sub_1C20D7F2C(v52, v54, &v71);

        *(v44 + 14) = v55;
        _os_log_impl(&dword_1C20AD000, v42, v43, "caBLE HMAC tag mismatch. Expected %s got %s.", v44, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C6915360](v45, -1, -1);
        MEMORY[0x1C6915360](v44, -1, -1);
        sub_1C20D3174(v68, v69);

        sub_1C20D3174(a2, v7);
        sub_1C20D3174(v15, v65);
      }

      else
      {
        sub_1C20D3174(a2, v7);
        sub_1C20D3174(v15, a3);
        sub_1C20D3174(v68, v69);
      }

      (*(v3 + 8))(v70, v67);
      v58 = v66;
      v59 = type metadata accessor for ASCABLEAdvertisement(0);
      return (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
    }

LABEL_44:
    swift_once();
    goto LABEL_24;
  }

  v65 = a3;
  sub_1C2170734();
  v28 = v71;
  v29 = v72;
  v30 = sub_1C20FB810(v68, v69, v71, v72, 0);
  a3 = v31;
  sub_1C20D3174(v28, v29);
  if (a3 >> 60 != 15)
  {
    goto LABEL_30;
  }

  v32 = v66;
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v33 = sub_1C21705A4();
  __swift_project_value_buffer(v33, qword_1EDD4CB08);
  v34 = sub_1C2170584();
  v35 = sub_1C2170C54();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1C20AD000, v34, v35, "Could not decrypt caBLE advertisement.", v36, 2u);
    MEMORY[0x1C6915360](v36, -1, -1);
    sub_1C20D3174(v68, v69);

    sub_1C20D3174(a2, v7);
    sub_1C20D3174(v15, v65);
  }

  else
  {
    sub_1C20D3174(a2, v7);
    sub_1C20D3174(v15, v65);
    sub_1C20D3174(v68, v69);
  }

  (*(v3 + 8))(v70, v11);
  v63 = type metadata accessor for ASCABLEAdvertisement(0);
  return (*(*(v63 - 8) + 56))(v32, 1, 1, v63);
}

uint64_t sub_1C20F6D14(uint64_t a1)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23660, &qword_1C2176D10);
  MEMORY[0x1EEE9AC00](v24);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23990, &qword_1C21772E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = (a1 + *(type metadata accessor for ASCABLEAdvertisement(0) + 32));
  v10 = *v9;
  v11 = v9[1];
  v23 = v1;
  sub_1C2170734();
  v13 = v25;
  v12 = v26;
  v14 = sub_1C20FB810(v10, v11, v25, v26, 1);
  v16 = v15;
  sub_1C20D3174(v13, v12);
  if (v16 >> 60 == 15)
  {
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v17 = sub_1C21705A4();
    __swift_project_value_buffer(v17, qword_1EDD4CB08);
    v18 = sub_1C2170584();
    v19 = sub_1C2170C54();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1C20AD000, v18, v19, "Could not encrypte caBLE advertisement.", v20, 2u);
      MEMORY[0x1C6915360](v20, -1, -1);
    }

    return 0;
  }

  else
  {
    v25 = v14;
    v26 = v16;
    sub_1C2170844();
    sub_1C20FBA48(&qword_1EDD4A7A0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
    sub_1C20EB03C();
    sub_1C21707C4();
    (*(v6 + 16))(v4, v8, v5);
    *&v4[*(v24 + 36)] = 4;
    v25 = v14;
    v26 = v16;
    sub_1C20FA5E8(v4);
    sub_1C20EB498(v4, &qword_1EBF23660, &qword_1C2176D10);
    (*(v6 + 8))(v8, v5);
    return v25;
  }
}

uint64_t sub_1C20F706C(uint64_t a1, unint64_t a2)
{
  v58 = a2;
  v65 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23948, &qword_1C21772A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v51[0] = v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23920, &unk_1C21772B0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v60 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v66 = v51 - v8;
  v56 = sub_1C2170614();
  v9 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v11 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C2170624();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v64 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23968, &qword_1C21772C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v59 = v51 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23928, &unk_1C2177240);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v57 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v63 = v51 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = v51 - v21;
  v23 = sub_1C2170824();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v2;
  sub_1C20EB3E8(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_qrPrivateKey, v22, &qword_1EBF23928, &unk_1C2177240);
  v27 = v23;
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    goto LABEL_7;
  }

  v28 = *(v24 + 32);
  v62 = v26;
  v29 = v26;
  v30 = v23;
  v28(v29, v22, v23);
  (*(v9 + 104))(v11, *MEMORY[0x1E6993CB0], v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23970, &qword_1C21772C8);
  v31 = sub_1C2170644();
  v32 = *(v31 - 8);
  v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v34 = swift_allocObject();
  v52 = xmmword_1C21768E0;
  *(v34 + 16) = xmmword_1C21768E0;
  (*(v32 + 104))(v34 + v33, *MEMORY[0x1E6993CB8], v31);
  sub_1C2170634();
  v35 = sub_1C20E7898(&unk_1F419D2D0);
  v55 = v36;
  v56 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23978, &unk_1C21772D0);
  v37 = swift_allocObject();
  v53 = v24;
  v54 = v37;
  *(v37 + 16) = v52;
  v38 = v58;
  *(v37 + 32) = v65;
  *(v37 + 40) = v38;
  v39 = *(v24 + 56);
  v39(v63, 1, 1, v27);
  v40 = sub_1C21707F4();
  v41 = *(*(v40 - 8) + 56);
  v41(v66, 1, 1, v40);
  v22 = v57;
  (*(v24 + 16))(v57, v62, v30);
  v39(v22, 0, 1, v30);
  v41(v60, 1, 1, v40);
  sub_1C20D865C(v65, v38);
  sub_1C2170834();
  sub_1C2170794();
  sub_1C2170844();
  sub_1C20FBA48(&qword_1EBF23980, MEMORY[0x1E69664F8], MEMORY[0x1E6993CC0]);
  sub_1C20FBA48(&qword_1EBF23988, MEMORY[0x1E6966620], MEMORY[0x1E6993CD0]);
  v42 = v59;
  sub_1C21705E4();
  (*(v53 + 8))(v62, v30);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23930, &qword_1C2177290);
  v44 = *(v43 - 8);
  (*(v44 + 56))(v42, 0, 1, v43);
  v45 = OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_noiseManager;
  v46 = v61;
  swift_beginAccess();
  sub_1C20FB7A0(v42, v46 + v45);
  swift_endAccess();
  swift_beginAccess();
  if ((*(v44 + 48))(v46 + v45, 1, v43) == 1)
  {
    __break(1u);
LABEL_7:
    sub_1C20EB498(v22, &qword_1EBF23928, &unk_1C2177240);
    result = sub_1C21710B4();
    __break(1u);
    return result;
  }

  v48 = v51[0];
  v47 = v51[1];
  v49 = sub_1C21705D4();
  swift_endAccess();
  if (!v47)
  {
    sub_1C20EB498(v48, &qword_1EBF23948, &qword_1C21772A0);
  }

  return v49;
}

uint64_t sub_1C20F78AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v64 = a2;
  v77 = a4;
  v67 = a3;
  v63 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23948, &qword_1C21772A0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v61 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v60 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23960, &qword_1C21772A8);
  MEMORY[0x1EEE9AC00](v62);
  v76 = (&v60 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23920, &unk_1C21772B0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v74 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v78 = &v60 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23928, &unk_1C2177240);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v17;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v60 - v18;
  v69 = &v60 - v18;
  v20 = sub_1C2170614();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1C2170624();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v72 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23968, &qword_1C21772C0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v73 = &v60 - v27;
  (*(v21 + 104))(v23, *MEMORY[0x1E6993CB0], v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23970, &qword_1C21772C8);
  v28 = sub_1C2170644();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v31 = swift_allocObject();
  v66 = xmmword_1C21768E0;
  *(v31 + 16) = xmmword_1C21768E0;
  (*(v29 + 104))(v31 + v30, *MEMORY[0x1E6993CB8], v28);
  sub_1C2170634();
  v32 = sub_1C20E7898(&unk_1F419D030);
  v70 = v33;
  v71 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23978, &unk_1C21772D0);
  v34 = swift_allocObject();
  *(v34 + 16) = v66;
  v35 = v77;
  *(v34 + 32) = a3;
  *(v34 + 40) = v35;
  v36 = sub_1C2170824();
  v37 = *(*(v36 - 8) + 56);
  v37(v19, 1, 1, v36);
  v38 = sub_1C21707F4();
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v40(v78, 1, 1, v38);
  v37(v17, 1, 1, v36);
  v42 = v74;
  v41 = v75;
  (*(v39 + 16))(v74, v75 + OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_qrPublicKey, v38);
  v40(v42, 0, 1, v38);
  sub_1C20D865C(v67, v77);
  sub_1C2170834();
  sub_1C2170794();
  sub_1C2170844();
  sub_1C20FBA48(&qword_1EBF23980, MEMORY[0x1E69664F8], MEMORY[0x1E6993CC0]);
  sub_1C20FBA48(&qword_1EBF23988, MEMORY[0x1E6966620], MEMORY[0x1E6993CD0]);
  v43 = v41;
  v44 = v73;
  sub_1C21705E4();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23930, &qword_1C2177290);
  v46 = *(v45 - 8);
  (*(v46 + 56))(v44, 0, 1, v45);
  v47 = OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_noiseManager;
  swift_beginAccess();
  sub_1C20FB7A0(v44, v41 + v47);
  swift_endAccess();
  swift_beginAccess();
  v48 = *(v46 + 48);
  result = v48(v41 + v47, 1, v45);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v50 = v41 + v47;
    v51 = v65;
    v52 = sub_1C21705C4();
    if (v51)
    {
      swift_endAccess();
      return v50;
    }

    v54 = v52;
    v55 = v53;
    swift_endAccess();
    v56 = v76;
    *v76 = v54;
    v56[1] = v55;
    swift_beginAccess();
    result = v48(v43 + v47, 1, v45);
    if (result != 1)
    {
      v57 = v61;
      v50 = sub_1C21705D4();
      swift_endAccess();
      sub_1C20EB498(v76, &qword_1EBF23960, &qword_1C21772A8);
      v58 = v60;
      sub_1C20FB6C0(v57, v60);
      v59 = OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_noiseTransportCipher;
      swift_beginAccess();
      sub_1C20FB730(v58, v43 + v59);
      swift_endAccess();
      sub_1C20EB498(v58, &qword_1EBF23948, &qword_1C21772A0);
      return v50;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C20F8108(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23948, &qword_1C21772A0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v11 = OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_noiseManager;
  swift_beginAccess();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23930, &qword_1C2177290);
  result = (*(*(v12 - 8) + 48))(v4 + v11, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v14 = sub_1C21705C4();
    if (v3)
    {
      return swift_endAccess();
    }

    else
    {
      v16 = v14;
      v17 = v15;
      swift_endAccess();
      sub_1C20D3174(v16, v17);
      sub_1C20FB6C0(v8, v10);
      v18 = OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_noiseTransportCipher;
      swift_beginAccess();
      sub_1C20FB730(v10, v4 + v18);
      swift_endAccess();
      return sub_1C20EB498(v10, &qword_1EBF23948, &qword_1C21772A0);
    }
  }

  return result;
}

uint64_t sub_1C20F82DC(__int128 *a1)
{
  v3 = v1;
  v5 = sub_1C21702C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v27 = a1[2];
  v28 = v9;
  v10 = a1[5];
  v29 = a1[4];
  v30 = v10;
  v11 = a1[1];
  v25 = *a1;
  v26 = v11;
  sub_1C2170314();
  swift_allocObject();
  sub_1C2170304();
  (*(v6 + 104))(v8, *MEMORY[0x1E698F6D8], v5);
  sub_1C21702D4();
  sub_1C20FB66C();
  v12 = sub_1C21702E4();
  v14 = v13;

  if (v2)
  {
    return v3;
  }

  v15 = sub_1C20FB3E0(v12, v14);
  v17 = v16;
  sub_1C20D3174(v12, v14);
  v23 = v15;
  v24 = v17;
  v18 = OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_noiseTransportCipher;
  swift_beginAccess();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23938, &qword_1C2177298);
  result = (*(*(v19 - 8) + 48))(v3 + v18, 1, v19);
  if (result != 1)
  {
    sub_1C20EB03C();
    v3 = sub_1C2170604();
    v21 = v23;
    v22 = v24;
    swift_endAccess();
    sub_1C20D3174(v21, v22);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C20F8530(uint64_t a1, unint64_t a2, int a3)
{
  v22 = a1;
  LODWORD(v26) = a3;
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23948, &qword_1C21772A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_noiseTransportCipher;
  swift_beginAccess();
  sub_1C20EB3E8(v3 + v7, v6, &qword_1EBF23948, &qword_1C21772A0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23938, &qword_1C2177298);
  v9 = *(*(v8 - 8) + 48);
  v10 = v9(v6, 1, v8);
  sub_1C20EB498(v6, &qword_1EBF23948, &qword_1C21772A0);
  if (v10 == 1)
  {
    v11 = sub_1C21705B4();
    sub_1C20FBA48(&qword_1EBF23950, MEMORY[0x1E6993CA0], MEMORY[0x1E6993CA8]);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x1E6993C98], v11);
    swift_willThrow();
    return v11;
  }

  v13 = sub_1C2128A60(v22, v23);
  v15 = v13;
  v16 = v14;
  if (v26)
  {
    v17 = sub_1C20FB3E0(v13, v14);
    v19 = v18;
  }

  else
  {
    sub_1C20D865C(v13, v14);
    v17 = v15;
    v19 = v16;
  }

  v26 = v17;
  v24 = v17;
  v25 = v19;
  swift_beginAccess();
  result = v9((v3 + v7), 1, v8);
  if (result != 1)
  {
    sub_1C20EB03C();
    v11 = sub_1C2170604();
    swift_endAccess();
    sub_1C20D3174(v15, v16);
    sub_1C20D3174(v26, v19);
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C20F87F4(uint64_t a1, uint64_t a2, int a3)
{
  v23 = a1;
  v21 = a3;
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23948, &qword_1C21772A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_noiseTransportCipher;
  swift_beginAccess();
  sub_1C20EB3E8(v3 + v7, v6, &qword_1EBF23948, &qword_1C21772A0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23938, &qword_1C2177298);
  v9 = *(*(v8 - 8) + 48);
  v10 = v9(v6, 1, v8);
  sub_1C20EB498(v6, &qword_1EBF23948, &qword_1C21772A0);
  if (v10 == 1)
  {
    v10 = sub_1C21705B4();
    sub_1C20FBA48(&qword_1EBF23950, MEMORY[0x1E6993CA0], MEMORY[0x1E6993CA8]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x1E6993C98], v10);
    swift_willThrow();
    return v10;
  }

  v24 = v23;
  v25 = v26;
  swift_beginAccess();
  result = v9((v3 + v7), 1, v8);
  if (result != 1)
  {
    sub_1C20EB03C();
    v13 = v22;
    v14 = sub_1C21705F4();
    v16 = v15;
    swift_endAccess();
    if (!v13)
    {
      if (v21)
      {
        v17 = sub_1C20FB524(v14, v16);
        v19 = v18;
      }

      else
      {
        sub_1C20D865C(v14, v16);
        v17 = v14;
        v19 = v16;
      }

      v10 = sub_1C212CAA8(v17, v19);
      sub_1C20D3174(v17, v19);
      sub_1C20D3174(v14, v16);
    }

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C20F8AD0@<X0>(_OWORD *a3@<X8>)
{
  v6 = OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_noiseTransportCipher;
  swift_beginAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23938, &qword_1C2177298);
  result = (*(*(v7 - 8) + 48))(v3 + v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1C20EB03C();
    v9 = sub_1C21705F4();
    if (v4)
    {
      return swift_endAccess();
    }

    else
    {
      v11 = v9;
      v12 = v10;
      swift_endAccess();
      v13 = sub_1C20FB524(v11, v12);
      v15 = v14;
      sub_1C20D3174(v11, v12);
      sub_1C21702A4();
      swift_allocObject();
      sub_1C2170294();
      sub_1C20FB618();
      sub_1C2170274();
      sub_1C20D3174(v13, v15);

      a3[2] = v18;
      a3[3] = v19;
      a3[4] = v20;
      a3[5] = v21;
      *a3 = v16;
      a3[1] = v17;
    }
  }

  return result;
}

uint64_t sub_1C20F8C74@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a2;
    v7 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v7 == 2)
      {
        a2 = *(a2 + 16);
        v8 = *(v5 + 24);
      }

      else
      {
        a2 = 0;
        v8 = 0;
      }
    }

    else
    {
      if (v7)
      {
        a2 = a2;
      }

      else
      {
        a2 = 0;
      }

      if (v7)
      {
        v8 = v5 >> 32;
      }

      else
      {
        v8 = BYTE6(a3);
      }
    }

    v9 = -result;
    v10 = sub_1C20FA9B8(v8, a2, v5, a3);
    if (v10 > 0 || v10 <= v9)
    {
      v11 = sub_1C20FAA6C(v8, v9, v5, a3);
      if (v7 > 1)
      {
        v12 = 0;
        if (v7 == 2)
        {
          v12 = *(v5 + 16);
        }
      }

      else if (v7)
      {
        v12 = v5;
      }

      else
      {
        v12 = 0;
      }

      if (v11 < v12)
      {
        __break(1u);
      }
    }

    v13 = sub_1C2170124();
    v15 = v14;
    result = sub_1C20D3174(v5, a3);
    *a4 = v13;
    a4[1] = v15;
  }

  return result;
}

uint64_t sub_1C20F8DBC(const void *a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, unint64_t a6, unint64_t a7, char **a8)
{
  v10 = a7;
  key[2] = *MEMORY[0x1E69E9840];
  v14 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v63 = a5;
      dataInLength = a1;
      v19 = *(a3 + 16);
      sub_1C20D865C(a6, a7);
      sub_1C20D865C(a3, a4);
      v20 = sub_1C216FDD4();
      if (v20)
      {
        v21 = sub_1C216FE04();
        if (__OFSUB__(v19, v21))
        {
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        v20 += v19 - v21;
      }

      sub_1C216FDF4();
      v23 = *(a3 + 16);
      v22 = *(a3 + 24);
      v8 = v22 - v23;
      if (__OFSUB__(v22, v23))
      {
        goto LABEL_70;
      }

      v24 = v10 >> 62;
      v61 = v20;
      if ((v10 >> 62) <= 1)
      {
        if (v24)
        {
          if (__OFSUB__(HIDWORD(a6), a6))
          {
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
          }

          v25 = HIDWORD(a6) - a6;
        }

        else
        {
          v25 = BYTE6(v10);
        }

        goto LABEL_57;
      }

LABEL_28:
      if (v24 == 2)
      {
        v38 = *(a6 + 16);
        v37 = *(a6 + 24);
        v25 = v37 - v38;
        if (__OFSUB__(v37, v38))
        {
          __break(1u);
          goto LABEL_32;
        }
      }

      else
      {
        v25 = 0;
      }

LABEL_57:
      v53 = *a8;
      v54 = *(*a8 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a8 = v53;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v53 = sub_1C2115150(0, *(v53 + 2), 0, v53);
      }

      *a8 = v53;
      v56 = CCCrypt((v63 & 1) == 0, 0, 0, v61, v8, 0, dataInLength, v25, v53 + 32, v54, 0);
      goto LABEL_67;
    }

    v30 = a7 >> 62;
    memset(key, 0, 14);
    v67 = a7;
    if ((a7 >> 62) > 1)
    {
      v10 = a6;
      v31 = 0;
      if (v30 == 2)
      {
        v36 = *(a6 + 16);
        v24 = *(a6 + 24);
        v34 = __OFSUB__(v24, v36);
        v31 = v24 - v36;
        if (v34)
        {
          __break(1u);
          goto LABEL_28;
        }
      }
    }

    else if (v30)
    {
      if (__OFSUB__(HIDWORD(a6), a6))
      {
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v10 = a6;
      v31 = HIDWORD(a6) - a6;
    }

    else
    {
      v10 = a6;
      v31 = BYTE6(a7);
    }

    dataInLengthb = v31;
    v44 = a1;
    v45 = *a8;
    dataOutAvailable = *(*a8 + 2);
    sub_1C20D865C(v10, a7);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_1C2115150(0, *(v45 + 2), 0, v45);
    }

    *a8 = v45;
    v47 = CCCrypt((a5 & 1) == 0, 0, 0, key, 0, 0, v44, dataInLengthb, v45 + 32, dataOutAvailable, 0);
    goto LABEL_53;
  }

  if (v14)
  {
    if (a3 <= a3 >> 32)
    {
      v63 = a5;
      dataInLength = a1;
      sub_1C20D865C(a6, a7);
      sub_1C20D865C(a3, a4);
      v26 = sub_1C216FDD4();
      if (v26)
      {
        v27 = v26;
        v28 = sub_1C216FE04();
        if (__OFSUB__(a3, v28))
        {
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        v29 = (a3 - v28 + v27);
        goto LABEL_33;
      }

LABEL_32:
      v29 = 0;
LABEL_33:
      a1 = sub_1C216FDF4();
      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        v39 = v10 >> 62;
        if ((v10 >> 62) > 1)
        {
          if (v39 != 2)
          {
            v62 = 0;
            goto LABEL_64;
          }

          v42 = *(a6 + 16);
          v41 = *(a6 + 24);
          v34 = __OFSUB__(v41, v42);
          v40 = v41 - v42;
          if (v34)
          {
            __break(1u);
LABEL_41:
            LODWORD(v18) = HIDWORD(a6) - a6;
            if (!__OFSUB__(HIDWORD(a6), a6))
            {
              v10 = a6;
              v16 = a5;
              v17 = a1;
              v18 = v18;
              goto LABEL_43;
            }

            goto LABEL_75;
          }
        }

        else if (v39)
        {
          LODWORD(v40) = HIDWORD(a6) - a6;
          if (__OFSUB__(HIDWORD(a6), a6))
          {
            goto LABEL_78;
          }

          v40 = v40;
        }

        else
        {
          v40 = BYTE6(v10);
        }

        v62 = v40;
LABEL_64:
        v57 = *a8;
        v58 = *(*a8 + 2);
        v59 = swift_isUniquelyReferenced_nonNull_native();
        *a8 = v57;
        if ((v59 & 1) == 0)
        {
          v57 = sub_1C2115150(0, *(v57 + 2), 0, v57);
        }

        *a8 = v57;
        v56 = CCCrypt((v63 & 1) == 0, 0, 0, v29, HIDWORD(a3) - a3, 0, dataInLength, v62, v57 + 32, v58, 0);
LABEL_67:
        v50 = v56;
        sub_1C20D3174(a3, a4);
        v51 = a6;
        v52 = v10;
        goto LABEL_68;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  key[0] = a3;
  LOWORD(key[1]) = a4;
  BYTE2(key[1]) = BYTE2(a4);
  BYTE3(key[1]) = BYTE3(a4);
  BYTE4(key[1]) = BYTE4(a4);
  v15 = a7 >> 62;
  BYTE5(key[1]) = BYTE5(a4);
  v67 = a7;
  if ((a7 >> 62) <= 1)
  {
    if (!v15)
    {
      v10 = a6;
      v16 = a5;
      v17 = a1;
      v18 = BYTE6(a7);
LABEL_43:
      dataInLengtha = v18;
      goto LABEL_50;
    }

    goto LABEL_41;
  }

  if (v15 != 2)
  {
    v10 = a6;
    v16 = a5;
    v17 = a1;
    dataInLengtha = 0;
    goto LABEL_50;
  }

  v33 = *(a6 + 16);
  v32 = *(a6 + 24);
  v34 = __OFSUB__(v32, v33);
  v35 = v32 - v33;
  if (v34)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v10 = a6;
  dataInLengtha = v35;
  v16 = a5;
  v17 = a1;
LABEL_50:
  v48 = *a8;
  v49 = *(*a8 + 2);
  sub_1C20D865C(v10, v67);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v48 = sub_1C2115150(0, *(v48 + 2), 0, v48);
  }

  *a8 = v48;
  v47 = CCCrypt((v16 & 1) == 0, 0, 0, key, BYTE6(a4), 0, v17, dataInLengtha, v48 + 32, v49, 0);
LABEL_53:
  v50 = v47;
  sub_1C20D3174(a3, a4);
  v51 = v10;
  v52 = v67;
LABEL_68:
  result = sub_1C20D3174(v51, v52);
  *v68 = v50;
  return result;
}

unint64_t sub_1C20F9330(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5, unint64_t a6, unint64_t a7, char **a8)
{
  v9 = a7;
  v12 = a4;
  v35[2] = *MEMORY[0x1E69E9840];
  v14 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v14)
    {
      v35[0] = a1;
      LOWORD(v35[1]) = a2;
      BYTE2(v35[1]) = BYTE2(a2);
      BYTE3(v35[1]) = BYTE3(a2);
      BYTE4(v35[1]) = BYTE4(a2);
      BYTE5(v35[1]) = BYTE5(a2);
      sub_1C20F8DBC(v35, v35 + BYTE6(a2), a3, a4, a5 & 1, a6, a7, a8);
      sub_1C20D3174(a3, v12);
      if (v8)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    v23 = a1;
    v24 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v31 = a7;
      v32 = a8;
      v33 = v8;
      v17 = sub_1C216FDD4();
      if (!v17)
      {
        goto LABEL_17;
      }

      v25 = sub_1C216FE04();
      if (!__OFSUB__(v23, v25))
      {
        v17 += v23 - v25;
LABEL_17:
        v26 = sub_1C216FDF4();
        if (v26 >= v24)
        {
          v22 = v24;
        }

        else
        {
          v22 = v26;
        }

        goto LABEL_20;
      }

LABEL_34:
      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }

  if (v14 != 2)
  {
    memset(v35, 0, 14);
    sub_1C20F8DBC(v35, v35, a3, a4, a5 & 1, a6, a7, a8);
    if (v8)
    {
      sub_1C20D3174(a3, v12);
      goto LABEL_30;
    }

    sub_1C20D3174(a3, v12);
LABEL_29:
    v12 = v34;
    goto LABEL_30;
  }

  v31 = a7;
  v32 = a8;
  v33 = v8;
  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  v17 = sub_1C216FDD4();
  if (v17)
  {
    v18 = sub_1C216FE04();
    if (__OFSUB__(v16, v18))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v17 += v16 - v18;
  }

  v19 = __OFSUB__(v15, v16);
  v20 = v15 - v16;
  if (v19)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v21 = sub_1C216FDF4();
  if (v21 >= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

LABEL_20:
  v27 = v22 + v17;
  if (v17)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v29 = v17;
  v9 = v31;
  sub_1C20F8DBC(v29, v28, a3, v12, a5 & 1, a6, v31, v32);
  sub_1C20D3174(a3, v12);
  if (!v33)
  {
    v12 = LODWORD(v35[0]);
  }

LABEL_30:
  sub_1C20D3174(a6, v9);
  return v12;
}

uint64_t sub_1C20F95E0()
{
  v1 = OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_qrSymmetricKey;
  v2 = sub_1C2170764();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  sub_1C20EB498(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_qrPrivateKey, &qword_1EBF23928, &unk_1C2177240);
  v4 = OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_qrPublicKey;
  v5 = sub_1C21707F4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_eidAESKey, v2);
  v3(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_eidHMACKey, v2);
  v3(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_tunnelID, v2);
  sub_1C20EB498(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_noiseManager, &qword_1EBF23968, &qword_1C21772C0);
  sub_1C20EB498(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_noiseTransportCipher, &qword_1EBF23948, &qword_1C21772A0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ASCABLECryptographyManager(uint64_t a1)
{
  result = qword_1EDD4AA18;
  if (!qword_1EDD4AA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C20F97D8(uint64_t a1)
{
  sub_1C2170764();
  if (v1 <= 0x3F)
  {
    sub_1C20F9988(319);
    if (v2 <= 0x3F)
    {
      sub_1C21707F4();
      if (v3 <= 0x3F)
      {
        sub_1C20F99E0(319, &qword_1EDD4AA30, &qword_1EBF23930, &qword_1C2177290);
        if (v4 <= 0x3F)
        {
          sub_1C20F99E0(319, qword_1EDD4AA38, &qword_1EBF23938, &qword_1C2177298);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1C20F9988(uint64_t a1)
{
  if (!qword_1EDD4AA28)
  {
    sub_1C2170824();
    v1 = sub_1C2170D24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD4AA28);
    }
  }
}

void sub_1C20F99E0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1C2170D24();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

char *sub_1C20F9A34(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_1C20D3174(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1C20D3174(v7, v6);
    *v4 = xmmword_1C2176980;
    sub_1C20D3174(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1C216FDD4() && __OFSUB__(v7, sub_1C216FE04()))
      {
LABEL_26:
        __break(1u);
      }

      sub_1C216FE14();
      swift_allocObject();
      v14 = sub_1C216FDB4();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_1C20FA224(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_1C20D3174(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1C2176980;
    sub_1C20D3174(0, 0xC000000000000000);
    sub_1C2170034();
    result = sub_1C20FA224(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

uint64_t sub_1C20F9DD8(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v23 = *MEMORY[0x1E69E9840];
  v6 = *v2;
  v5 = v2[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (v7)
    {

      sub_1C20D3174(v6, v5);
      *&v22 = v6;
      *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_1C2176980;
      sub_1C20D3174(0, 0xC000000000000000);
      result = sub_1C20FA148(a1);
      v9 = v22;
      v10 = *(&v22 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_1C20D3174(v6, v5);
      *&v22 = v6;
      WORD4(v22) = v5;
      BYTE10(v22) = BYTE2(v5);
      BYTE11(v22) = BYTE3(v5);
      BYTE12(v22) = BYTE4(v5);
      BYTE13(v22) = BYTE5(v5);
      BYTE14(v22) = BYTE6(v5);
      result = (a1)(&v22, &v22 + BYTE6(v5));
      v9 = v22;
      v10 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
    }

    *v3 = v9;
    v3[1] = v10;
    return result;
  }

  if (v7 != 2)
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    return (a1)(&v22, &v22);
  }

  sub_1C20D3174(v6, v5);
  *&v22 = v6;
  *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_1C2176980;
  sub_1C20D3174(0, 0xC000000000000000);
  sub_1C2170034();
  v11 = *(&v22 + 1);
  v12 = *(v22 + 16);
  v13 = *(v22 + 24);
  result = sub_1C216FDD4();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = sub_1C216FE04();
  v16 = v12 - v15;
  if (__OFSUB__(v12, v15))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v17 = __OFSUB__(v13, v12);
  v18 = v13 - v12;
  if (v17)
  {
    goto LABEL_17;
  }

  v19 = sub_1C216FDF4();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  result = (a1)(v14 + v16, v14 + v16 + v20);
  *v3 = v22;
  v3[1] = v11 | 0x8000000000000000;
  return result;
}

void *sub_1C20FA088(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_1C20FA0F4(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(a3, a4 - a3);
    if (!v4)
    {
      return result;
    }

LABEL_5:
    __break(1u);
    return result;
  }

  result = (a1)(0, 0, 0, a4);
  if (v4)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_1C20FA148(void (*a1)(uint64_t, uint64_t))
{
  result = sub_1C21700B4();
  v4 = *v1;
  v5 = v1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = a1;

  result = sub_1C216FDD4();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = result;
  result = sub_1C216FE04();
  v7 = v4 - result;
  if (__OFSUB__(v4, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v5 - v4;
  v9 = sub_1C216FDF4();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11(v6 + v7, v6 + v7 + v10);
}

char *sub_1C20FA224(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1C216FDD4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1C216FE04();
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

  v12 = sub_1C216FDF4();
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

uint64_t *sub_1C20FA2D8(uint64_t *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v22 = *MEMORY[0x1E69E9840];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_1C20D3174(v5, v4);
      __b = v5;
      v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_1C2176980;
      sub_1C20D3174(0, 0xC000000000000000);
      result = sub_1C20FA540(&__b, v2);
      v7 = __b;
      v8 = v21 | 0x4000000000000000;
    }

    else
    {
      __c = a2;
      sub_1C20D3174(v5, v4);
      __b = v5;
      LOWORD(v21) = v4;
      BYTE2(v21) = BYTE2(v4);
      BYTE3(v21) = BYTE3(v4);
      BYTE4(v21) = BYTE4(v4);
      BYTE5(v21) = BYTE5(v4);
      BYTE6(v21) = BYTE6(v4);
      result = memset(&__b, __c, BYTE6(v4));
      v7 = __b;
      v8 = v21 | ((WORD2(v21) | (BYTE6(v21) << 16)) << 32);
    }

    *v3 = v7;
    v3[1] = v8;
    return result;
  }

  if (v6 != 2)
  {
    return result;
  }

  sub_1C20D3174(v5, v4);
  __b = v5;
  v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_1C2176980;
  sub_1C20D3174(0, 0xC000000000000000);
  sub_1C2170034();
  v9 = v21;
  v10 = *(__b + 16);
  v11 = *(__b + 24);
  result = sub_1C216FDD4();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = sub_1C216FE04();
  v14 = v10 - v13;
  if (__OFSUB__(v10, v13))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v15 = __OFSUB__(v11, v10);
  v16 = v11 - v10;
  if (v15)
  {
    goto LABEL_16;
  }

  v17 = sub_1C216FDF4();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  result = memset(v12 + v14, v2, v18);
  *v3 = __b;
  v3[1] = v9 | 0x8000000000000000;
  return result;
}

uint64_t sub_1C20FA540(int *a1, int a2)
{
  result = sub_1C21700B4();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1C216FDD4();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_1C216FE04();
  v8 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v6 - v5;
  v10 = sub_1C216FDF4();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  memset((v7 + v8), a2, v11);
}

uint64_t sub_1C20FA5E8(uint64_t a1)
{
  v32[5] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23660, &qword_1C2176D10);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C20EB3E8(a1, &v29[-v4], &qword_1EBF23660, &qword_1C2176D10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23668, &qword_1C2176D18);
  if (swift_dynamicCast())
  {
    sub_1C20EB760(v30, v32);
    v5 = __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    MEMORY[0x1EEE9AC00](v5);
    *&v29[-16] = v1;
    sub_1C216FE24();
    return __swift_destroy_boxed_opaque_existential_0Tm(v32);
  }

  v31 = 0;
  memset(v30, 0, sizeof(v30));
  sub_1C20EB498(v30, &qword_1EBF23670, &unk_1C2176D20);
  v7 = *v1;
  v8 = v1[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    v10 = 0;
    if (v9 != 2)
    {
      goto LABEL_13;
    }

    v12 = v7 + 16;
    v7 = *(v7 + 16);
    v11 = *(v12 + 8);
    v10 = v11 - v7;
    if (!__OFSUB__(v11, v7))
    {
LABEL_12:
      if (v11 < 0)
      {
        goto LABEL_45;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(v7), v7))
    {
      goto LABEL_49;
    }

    v10 = HIDWORD(v7) - v7;
    v11 = v7 >> 32;
    goto LABEL_12;
  }

  if (v9)
  {
    goto LABEL_10;
  }

  v10 = BYTE6(v8);
LABEL_13:
  v13 = sub_1C21700F4();
  MEMORY[0x1EEE9AC00](v13);
  *&v29[-32] = v10;
  *&v29[-24] = 0;
  *&v29[-16] = a1;
  v17 = sub_1C20F9A34(sub_1C20FBA90, &v29[-48]);
  if (v16)
  {
    v18 = *v1;
    v19 = v1[1];
    v20 = v19 >> 62;
    if ((v19 >> 62) > 1)
    {
      v21 = 0;
      if (v20 == 2)
      {
        v21 = *(v18 + 16);
      }
    }

    else
    {
      v21 = v18;
      if (!v20)
      {
        v21 = 0;
      }
    }

    v26 = __OFADD__(v21, v10);
    v27 = v21 + v10;
    if (v26)
    {
      goto LABEL_46;
    }

    if (__OFADD__(v27, v16))
    {
      goto LABEL_47;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v28 = *(v18 + 24);
      }

      else
      {
        v28 = 0;
      }
    }

    else if (v20)
    {
      v28 = v18 >> 32;
    }

    else
    {
      v28 = BYTE6(v19);
    }

    if (v28 < v27 + v16)
    {
      goto LABEL_48;
    }

    sub_1C2170104();
  }

  else
  {
    v22 = v15;
    memset(v32, 0, 15);
    if (v15)
    {
      v23 = v14;
      LOBYTE(v24) = 0;
      do
      {
        v25 = *(v17 + 2);
        if (v23 == v25)
        {
          break;
        }

        if (v23 >= v25)
        {
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
        }

        *(v32 + v24) = v17[v23 + 32];
        v24 = v24 + 1;
        if ((v24 >> 8))
        {
          goto LABEL_44;
        }

        if (v24 == 14)
        {
          *&v30[0] = v32[0];
          *(v30 + 6) = *(v32 + 6);
          sub_1C2170114();
          LOBYTE(v24) = 0;
        }

        ++v23;
        --v22;
      }

      while (v22);
      if (v24)
      {
        *&v30[0] = v32[0];
        *(v30 + 6) = *(v32 + 6);
        sub_1C2170114();
      }
    }
  }
}

uint64_t sub_1C20FA9B8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C20FAA6C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1C20FAAD0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23990, &qword_1C21772E0);
  MEMORY[0x1EEE9AC00](v8);
  (*(v10 + 16))(v21 - v9, v3, v8);
  sub_1C20FBD40();
  sub_1C2170AD4();
  v11 = *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23660, &qword_1C2176D10) + 36));
  result = sub_1C20EB498(v4, &qword_1EBF23660, &qword_1C2176D10);
  v13 = v21[0];
  v14 = v21[1];
  if (!a2)
  {
    v17 = v11;
    v11 = 0;
    goto LABEL_17;
  }

  if (!a3)
  {
    v17 = v11;
    v11 = 0;
    goto LABEL_17;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v11)
    {
      v15 = 0;
      v16 = v11 - a3;
      v17 = v11 - 1;
      while (1)
      {
        v18 = v15;
        v19 = v14 + v15;
        v20 = *(v13 + 16);
        if (v19 == v20)
        {
          v14 = v19;
          v11 = v18;
          goto LABEL_17;
        }

        if (v19 >= v20)
        {
          break;
        }

        *(a2 + v18) = *(v14 + v13 + 32 + v18);
        if (a3 - 1 == v18)
        {
          v11 = a3;
          goto LABEL_16;
        }

        v15 = v18 + 1;
        --v17;
        if (v11 == v18 + 1)
        {
          v16 = 0;
LABEL_16:
          v14 += v18 + 1;
          v17 = v16;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

    v17 = 0;
LABEL_17:
    *a1 = v13;
    a1[1] = v14;
    a1[2] = v17;
    return v11;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1C20FACBC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (v8)
    {
      v9 = a4 >> 32;
    }

    else
    {
      v9 = BYTE6(a5);
    }

    if (a2)
    {
      goto LABEL_6;
    }

LABEL_43:
    v10 = 0;
    goto LABEL_45;
  }

LABEL_38:
  if (v8 == 2)
  {
    v9 = *(a4 + 24);
    if (!a2)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v9 = 0;
    if (!a2)
    {
      goto LABEL_43;
    }
  }

LABEL_6:
  if (!a3)
  {
    v10 = 0;
    goto LABEL_45;
  }

  if (a3 < 0)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
  }

  v20 = a3;
  v21 = a1;
  v10 = 0;
  v11 = a3 - 1;
  while (1)
  {
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v12 = *(a4 + 16);
LABEL_14:
        if (v9 == v12)
        {
          goto LABEL_46;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v12 = a4;
      if (v8)
      {
        goto LABEL_14;
      }
    }

    if (!v9)
    {
LABEL_46:
      a1 = v21;
      goto LABEL_45;
    }

LABEL_17:
    if (__OFSUB__(v9--, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (v8 > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_55;
      }

      if (v9 < *(a4 + 16))
      {
        goto LABEL_49;
      }

      if (v9 >= *(a4 + 24))
      {
        goto LABEL_51;
      }

      v15 = sub_1C216FDD4();
      if (!v15)
      {
        goto LABEL_57;
      }

      v16 = v15;
      a1 = sub_1C216FE04();
      v17 = v9 - a1;
      if (__OFSUB__(v9, a1))
      {
        goto LABEL_53;
      }

      goto LABEL_33;
    }

    if (v8)
    {
      if (v9 < a4 || v9 >= a4 >> 32)
      {
        goto LABEL_50;
      }

      v18 = sub_1C216FDD4();
      if (!v18)
      {
        goto LABEL_56;
      }

      v16 = v18;
      a1 = sub_1C216FE04();
      v17 = v9 - a1;
      if (__OFSUB__(v9, a1))
      {
        goto LABEL_52;
      }

LABEL_33:
      v14 = *(v16 + v17);
      goto LABEL_34;
    }

    if (v9 >= BYTE6(a5))
    {
      goto LABEL_48;
    }

    v22 = a4;
    v23 = a5;
    v24 = BYTE2(a5);
    v25 = BYTE3(a5);
    v26 = BYTE4(a5);
    v27 = BYTE5(a5);
    v14 = *(&v22 + v9);
LABEL_34:
    *(a2 + v10) = v14;
    if (v11 == v10)
    {
      break;
    }

    if (__OFADD__(++v10, 1))
    {
      __break(1u);
      goto LABEL_38;
    }
  }

  v10 = v20;
  a1 = v21;
LABEL_45:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = v9;
  return v10;
}