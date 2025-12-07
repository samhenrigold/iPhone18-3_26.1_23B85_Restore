id cryptoLog(uint64_t a1)
{
  if (cryptoLog_onceToken[0] != -1)
  {
    cryptoLog_cold_1();
  }

  v2 = cryptoLog_cryptoLog;

  return v2;
}

uint64_t __cryptoLog_block_invoke()
{
  cryptoLog_cryptoLog = os_log_create("com.apple.cosmo", "Crypto");

  return MEMORY[0x2821F96F8]();
}

SecKeyRef createKeyPair(void *a1, uint64_t a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CDC018];
  v10[0] = *MEMORY[0x277CDC028];
  v10[1] = v3;
  v11[0] = a1;
  v4 = MEMORY[0x277CCABB0];
  v5 = a1;
  v6 = [v4 numberWithUnsignedInteger:a2];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  RandomKey = SecKeyCreateRandomKey(v7, 0);
  return RandomKey;
}

sec_identity_t secIdentityFromKeyPair(NSObject *a1)
{
  v1 = a1;
  v2 = SecKeyCopyPublicKey(a1);
  SelfSignedCertificate = SecGenerateSelfSignedCertificate();
  v4 = SelfSignedCertificate;
  if (v2)
  {
    CFRelease(v2);
  }

  if (v4)
  {
    v5 = SecIdentityCreate();
    CFRelease(v4);
    if (v5)
    {
      v1 = sec_identity_create(v5);
      CFRelease(v5);
      if (!v1)
      {
        v8 = cryptoLog(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          secIdentityFromKeyPair_cold_1();
        }
      }

      goto LABEL_17;
    }

    v10 = cryptoLog(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      secIdentityFromKeyPair_cold_2();
    }

LABEL_16:
    v1 = 0;
    goto LABEL_17;
  }

  v9 = cryptoLog(SelfSignedCertificate);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    secIdentityFromKeyPair_cold_3();
  }

  if (v1)
  {
    CFRelease(v1);
    goto LABEL_16;
  }

LABEL_17:

  return v1;
}

__SecKey *secIdentity(void *a1, uint64_t a2)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CDC018];
  v19[0] = *MEMORY[0x277CDC028];
  v19[1] = v3;
  v20[0] = a1;
  v4 = MEMORY[0x277CCABB0];
  v5 = a1;
  v6 = [v4 numberWithUnsignedInteger:a2];
  v20[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  RandomKey = SecKeyCreateRandomKey(v7, 0);
  v9 = SecKeyCopyPublicKey(RandomKey);
  SelfSignedCertificate = SecGenerateSelfSignedCertificate();
  v11 = SelfSignedCertificate;
  if (v9)
  {
    CFRelease(v9);
  }

  if (v11)
  {
    v12 = SecIdentityCreate();
    CFRelease(v11);
    if (RandomKey)
    {
      CFRelease(RandomKey);
    }

    if (v12)
    {
      RandomKey = sec_identity_create(v12);
      CFRelease(v12);
      if (!RandomKey)
      {
        v15 = cryptoLog(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          secIdentityFromKeyPair_cold_1();
        }
      }

      goto LABEL_19;
    }

    v17 = cryptoLog(v13);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      secIdentityFromKeyPair_cold_2();
    }

LABEL_18:
    RandomKey = 0;
    goto LABEL_19;
  }

  v16 = cryptoLog(SelfSignedCertificate);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    secIdentityFromKeyPair_cold_3();
  }

  if (RandomKey)
  {
    CFRelease(RandomKey);
    goto LABEL_18;
  }

LABEL_19:

  return RandomKey;
}

__SecIdentity *publicKeyFromIdentity(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_16;
  }

  v3 = sec_identity_copy_ref(v1);
  v4 = v3;
  if (!v3)
  {
    goto LABEL_17;
  }

  privateKeyRef = 0;
  v5 = SecIdentityCopyPrivateKey(v3, &privateKeyRef);
  CFRelease(v4);
  if (v5)
  {
    v6 = privateKeyRef;
    if (privateKeyRef)
    {
      CFRelease(privateKeyRef);
      privateKeyRef = 0;
    }

    v7 = cryptoLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      publicKeyFromIdentity_cold_1();
    }
  }

  if (!privateKeyRef)
  {
    goto LABEL_16;
  }

  v8 = SecKeyCopyPublicKey(privateKeyRef);
  if (privateKeyRef)
  {
    CFRelease(privateKeyRef);
    privateKeyRef = 0;
  }

  if (v8)
  {
    v4 = SecKeyCopySubjectPublicKeyInfo();
    CFRelease(v8);
    if (v4)
    {
      v9 = v4;
    }
  }

  else
  {
LABEL_16:
    v4 = 0;
  }

LABEL_17:

  return v4;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

uint64_t TransferHost.State.description.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0xD00000000000001ALL;
    v8 = 0x676E6970706F7473;
    if (v1 != 10)
    {
      v8 = 0x646570706F7473;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0xD000000000000017;
    if (v1 == 7)
    {
      v9 = 0xD000000000000021;
    }

    if (v1 == 6)
    {
      v9 = 0xD00000000000001ELL;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6C616974696E69;
    v3 = 0xD000000000000015;
    v4 = 0xD000000000000017;
    if (v1 != 4)
    {
      v4 = 0xD000000000000015;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0xD00000000000001CLL;
    if (v1 != 1)
    {
      v5 = 0xD00000000000001FLL;
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
}

uint64_t TransferHost.State.hashValue.getter()
{
  v1 = *v0;
  sub_247DD32BC();
  MEMORY[0x24C1BA5C0](v1);
  return sub_247DD32EC();
}

uint64_t sub_247D57D58()
{
  v1 = *v0;
  sub_247DD32BC();
  MEMORY[0x24C1BA5C0](v1);
  return sub_247DD32EC();
}

uint64_t sub_247D57DCC(uint64_t a1)
{
  v2 = *v1;
  sub_247DD32BC();
  MEMORY[0x24C1BA5C0](v2);
  return sub_247DD32EC();
}

double TransferHost.config.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

uint64_t sub_247D57E88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_247D57ED8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t TransferHost.__allocating_init(delegate:queue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0x3FF0000000000000;
  type metadata accessor for TransferHost(0);
  v6 = swift_allocObject();
  TransferHost.init(delegate:config:queue:)(a1, a2, &v8, a3);
  return v6;
}

uint64_t TransferHost.__allocating_init(delegate:config:queue:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  TransferHost.init(delegate:config:queue:)(a1, a2, a3, a4);
  return v8;
}

uint64_t TransferHost.init(delegate:config:queue:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v23 = a2;
  v7 = sub_247DD2F6C();
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x28223BE20](v7);
  v19 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_247DD2F3C();
  MEMORY[0x28223BE20](v9);
  v10 = sub_247DD2A2C();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = *a3;
  *(v4 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 49) = 12;
  v22 = xmmword_247DD3EC0;
  *(v4 + 56) = xmmword_247DD3EC0;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0;
  v12 = OBJC_IVAR____TtC5Cosmo12TransferHost_attestationServiceUUID;
  v13 = sub_247DD225C();
  v14 = *(*(v13 - 8) + 56);
  v14(v4 + v12, 1, 1, v13);
  *(v4 + OBJC_IVAR____TtC5Cosmo12TransferHost_attestationCount) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2Prover) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2ProverConfirm) = v22;
  v15 = OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferDescriptor;
  v16 = type metadata accessor for NetworkDescriptor(0);
  (*(*(v16 - 8) + 56))(v4 + v15, 1, 1, v16);
  *(v4 + OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferHost) = 0;
  v14(v4 + OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferServiceUUID, 1, 1, v13);
  *(v4 + OBJC_IVAR____TtC5Cosmo12TransferHost_filesToTransfer) = MEMORY[0x277D84F98];
  *(v4 + OBJC_IVAR____TtC5Cosmo12TransferHost_filesRequestedCount) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo12TransferHost_filesSentCount) = 0;
  swift_beginAccess();
  *(v4 + 40) = v23;
  swift_unknownObjectWeakAssign();
  *(v4 + 24) = v11;
  if (!a4)
  {
    sub_247D6A0F4();
    sub_247DD2A1C();
    v24 = MEMORY[0x277D84F90];
    sub_247D6A33C(&unk_27EE73390, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE739B0, &unk_247DD3F70);
    sub_247D6AE30(&qword_27EE733A0, &unk_27EE739B0, &unk_247DD3F70, MEMORY[0x277D83970]);
    sub_247DD2FFC();
    (*(v20 + 104))(v19, *MEMORY[0x277D85260], v21);
    a4 = sub_247DD2F8C();
  }

  swift_unknownObjectRelease();
  *(v4 + 16) = a4;
  *(v4 + 48) = 0;
  return v4;
}

void sub_247D58468(char *a1)
{
  v4 = sub_247DD2ABC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  v9 = *(v1 + 16);
  *v7 = v9;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v10 = v9;
  LOBYTE(v9) = sub_247DD2ADC();
  (*(v5 + 8))(v7, v4);
  if (v9)
  {
    v2 = *(v1 + 48);
    *(v1 + 48) = v8;
    if (qword_27EE73298 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = sub_247DD23CC();
  __swift_project_value_buffer(v11, qword_27EE7B920);
  v12 = sub_247DD23AC();
  v13 = sub_247DD2F2C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315394;
    v22[7] = v2;
    v16 = TransferHost.State.description.getter();
    v18 = sub_247D72868(v16, v17, &v23);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v22[6] = v8;
    v19 = TransferHost.State.description.getter();
    v21 = sub_247D72868(v19, v20, &v23);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_247D56000, v12, v13, "[State] Updated, old-state='%s' new-state='%s'", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v15, -1, -1);
    MEMORY[0x24C1BAF60](v14, -1, -1);
  }
}

uint64_t TransferHost.deinit()
{
  sub_247D6A1D0(v0 + 32);
  sub_247D6A25C(*(v0 + 56), *(v0 + 64));

  sub_247D6A24C(*(v0 + 80), *(v0 + 88));
  sub_247D6A24C(*(v0 + 96), *(v0 + 104));
  sub_247D6A24C(*(v0 + 112), *(v0 + 120));
  sub_247D6BAD4(v0 + OBJC_IVAR____TtC5Cosmo12TransferHost_attestationServiceUUID, &qword_27EE733A8, &unk_247DD61B0);

  sub_247D6A25C(*(v0 + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2ProverConfirm), *(v0 + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2ProverConfirm + 8));
  sub_247D6BAD4(v0 + OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferDescriptor, &unk_27EE733B0, &unk_247DD3F80);

  sub_247D6BAD4(v0 + OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferServiceUUID, &qword_27EE733A8, &unk_247DD61B0);

  return v0;
}

uint64_t TransferHost.__deallocating_deinit()
{
  TransferHost.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t TransferHost.start(onStart:)(uint64_t a1, uint64_t a2)
{
  static SharedSecret.accV2Compatible(protocolVersion:)(2, v7);
  v4 = v7[0];
  v5 = v7[1];
  TransferHost.start(secret:onStart:)(v7, a1, a2);

  return sub_247D6A1F8(v4, v5);
}

uint64_t TransferHost.start(secret:onStart:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_247DD2A0C();
  v21 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_247DD2A2C();
  v11 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = a1[1];
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = v14;
  v16[6] = v15;
  aBlock[4] = sub_247D6A2B8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor;
  v17 = _Block_copy(aBlock);

  sub_247D6A2E8(v14, v15);
  sub_247DD2A1C();
  v22 = MEMORY[0x277D84F90];
  sub_247D6A33C(&unk_27EE73AF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0, MEMORY[0x277D83970]);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v13, v10, v17);
  _Block_release(v17);
  (*(v21 + 8))(v10, v8);
  (*(v11 + 8))(v13, v20);
}

void sub_247D58BAC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_247DD225C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE733A8, &unk_247DD61B0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v66 - v15;
  v17 = *(a1 + 48);
  if (v17 == 11 || v17 == 0)
  {
    v68 = v13;
    v19 = *(a1 + 56);
    v20 = *(a1 + 64);
    *(a1 + 56) = a4;
    *(a1 + 64) = a5;
    sub_247D6A2E8(a4, a5);
    sub_247D6A25C(v19, v20);
    v21 = *(a1 + 112);
    v22 = *(a1 + 120);
    *(a1 + 112) = a2;
    *(a1 + 120) = a3;

    sub_247D6A24C(v21, v22);
    v74[0] = a4;
    v74[1] = a5;
    SharedSecret.advertisementIdentifer.getter(v16);
    v69 = v11;
    (*(v11 + 56))(v16, 0, 1, v10);
    v23 = OBJC_IVAR____TtC5Cosmo12TransferHost_attestationServiceUUID;
    swift_beginAccess();
    sub_247D6B4B4(v16, a1 + v23, &qword_27EE733A8, &unk_247DD61B0);
    swift_endAccess();
    if (qword_27EE73298 != -1)
    {
      swift_once();
    }

    v24 = sub_247DD23CC();
    v25 = __swift_project_value_buffer(v24, qword_27EE7B920);
    sub_247D6A2E8(a4, a5);
    v26 = sub_247DD23AC();
    v27 = sub_247DD2F2C();
    sub_247D6A1F8(a4, a5);
    if (os_log_type_enabled(v26, v27))
    {
      v66[1] = v25;
      v67 = v10;
      v28 = swift_slowAlloc();
      v66[0] = swift_slowAlloc();
      v74[0] = v66[0];
      *v28 = 136315394;
      v29 = sub_247D94008(a4, a5);
      v31 = v30;
      v32 = sub_247DD2D8C();
      if (v32)
      {
        v33 = v32;
        v34 = sub_247D993D8(v32, 0);

        v35 = sub_247D99310(&v71, v34 + 4, v33, v29, v31);

        if (v35 != v33)
        {
          __break(1u);
          return;
        }
      }

      else
      {

        v34 = MEMORY[0x277D84F90];
      }

      v46 = v34[2];
      v47 = v46 - 5;
      if (v46 < 5)
      {
        v47 = 0;
      }

      v71.n128_u64[0] = v34;
      v71.n128_u64[1] = (v34 + 4);
      v72 = v47;
      v73 = (2 * v46) | 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73F80, &unk_247DD65B0);
      sub_247D6AE30(&qword_27EE73520, &unk_27EE73F80, &unk_247DD65B0, MEMORY[0x277D83FB0]);
      v48 = sub_247DD2E3C();
      v50 = sub_247D72868(v48, v49, v74);

      *(v28 + 4) = v50;
      *(v28 + 12) = 2080;
      v71.n128_u64[0] = a4;
      v71.n128_u64[1] = a5;
      v51 = SharedSecret.protocolVersion.getter();
      if ((v51 & 0x100) != 0)
      {
        v54 = 0xE300000000000000;
        v52 = 7104878;
      }

      else
      {
        v70 = v51;
        v52 = sub_247DD2CFC();
        v54 = v53;
      }

      v10 = v67;
      v55 = sub_247D72868(v52, v54, v74);

      *(v28 + 14) = v55;
      _os_log_impl(&dword_247D56000, v26, v27, "[Start] Using shared-secret=%s, protocol-version=%s", v28, 0x16u);
      v56 = v66[0];
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v56, -1, -1);
      MEMORY[0x24C1BAF60](v28, -1, -1);
    }

    else
    {
    }

    sub_247D6A2E8(a4, a5);
    v57 = sub_247DD23AC();
    v58 = sub_247DD2F2C();
    sub_247D6A1F8(a4, a5);
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v74[0] = v60;
      *v59 = 136315138;
      v71.n128_u64[0] = a4;
      v71.n128_u64[1] = a5;
      v61 = v68;
      SharedSecret.advertisementIdentifer.getter(v68);
      sub_247D6A33C(&unk_27EE73510, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v62 = sub_247DD321C();
      v64 = v63;
      (*(v69 + 8))(v61, v10);
      v65 = sub_247D72868(v62, v64, v74);

      *(v59 + 4) = v65;
      _os_log_impl(&dword_247D56000, v57, v58, "[Start] Starting attestation-host with Bonjour attestationServiceUUID=%s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
      MEMORY[0x24C1BAF60](v60, -1, -1);
      MEMORY[0x24C1BAF60](v59, -1, -1);
    }

    sub_247D592FC();
  }

  else
  {
    if (qword_27EE73298 != -1)
    {
      swift_once();
    }

    v36 = sub_247DD23CC();
    __swift_project_value_buffer(v36, qword_27EE7B920);

    v37 = sub_247DD23AC();
    v38 = sub_247DD2F2C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v71.n128_u64[0] = v40;
      *v39 = 136315138;
      LOBYTE(v74[0]) = *(a1 + 48);
      v41 = TransferHost.State.description.getter();
      v43 = sub_247D72868(v41, v42, &v71);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_247D56000, v37, v38, "[Start] Must be invoked while in the initial or stopped, state=%s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      MEMORY[0x24C1BAF60](v40, -1, -1);
      MEMORY[0x24C1BAF60](v39, -1, -1);
    }

    sub_247D6ADD0();
    v44 = swift_allocError();
    *v45 = xmmword_247DD3ED0;
    v71 = v44;
    LOBYTE(v72) = 1;
    a2(&v71);
    sub_247D6AE24(v71.n128_u64[0], v71.n128_u64[1], v72);
  }
}

uint64_t sub_247D592FC()
{
  v1 = v0;
  v2 = type metadata accessor for NetworkDescriptor(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v40 = (&v34 - v6);
  v7 = sub_247DD2ABC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v0[2];
  *v10 = v11;
  v12 = *(v8 + 104);
  v39 = *MEMORY[0x277D85200];
  v38 = v12;
  v12(v10);
  v13 = v11;
  v14 = sub_247DD2ADC();
  v41 = *(v8 + 8);
  result = v41(v10, v7);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v16 = v1[8];
  if (v16 >> 60 == 15)
  {
    return result;
  }

  v37 = v8 + 104;
  v17 = v1[7];
  v18 = v40;
  *v40 = v17;
  v18[1] = v16;
  *(v18 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  v36 = "Client called stop()";
  sub_247D6BA04(v18, v5, type metadata accessor for NetworkDescriptor);
  type metadata accessor for CosmoSerialChannelHost(0);
  swift_allocObject();
  v19 = v13;
  sub_247D6B278(v17, v16);
  v20 = v19;
  v34 = v17;
  v35 = v16;
  sub_247D6B278(v17, v16);
  v21 = sub_247DBE028(0xD000000000000010, v36 | 0x8000000000000000, v5, v13);

  v1[9] = v21;

  v22 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v24 = v21[2];
  v23 = v21[3];
  v21[2] = sub_247D6AE78;
  v21[3] = v22;

  sub_247D6A24C(v24, v23);

  sub_247D59D90();
  sub_247D59F80();
  *v10 = v20;
  v25 = v39;
  v26 = v38;
  v38(v10, v39, v7);
  v27 = v20;
  LOBYTE(v21) = sub_247DD2ADC();
  result = v41(v10, v7);
  if ((v21 & 1) == 0)
  {
    goto LABEL_17;
  }

  if (v1[9])
  {
    v28 = swift_allocObject();
    swift_weakInit();

    sub_247D63E18(sub_247D6AEB8, v28, &unk_2859E3F38, sub_247D6AEC4, &block_descriptor_106);
  }

  *v10 = v27;
  v26(v10, v25, v7);
  v29 = v27;
  v30 = sub_247DD2ADC();
  result = v41(v10, v7);
  if ((v30 & 1) == 0)
  {
    goto LABEL_18;
  }

  if (v1[9])
  {
    v31 = swift_allocObject();
    swift_weakInit();

    sub_247D63E18(sub_247D6AEB0, v31, &unk_2859E4000, sub_247D6B110, &block_descriptor_121);
  }

  *v10 = v29;
  v26(v10, v25, v7);
  v32 = sub_247DD2ADC();
  result = v41(v10, v7);
  if ((v32 & 1) == 0)
  {
    goto LABEL_19;
  }

  if (v1[9])
  {
    v33 = swift_allocObject();
    swift_weakInit();

    sub_247D63E18(sub_247D6AEA8, v33, &unk_2859E40C8, sub_247D6B28C, &block_descriptor_137);
  }

  v42 = 1;
  sub_247D58468(&v42);
  if (v1[9])
  {

    sub_247DBBA48();
  }

  sub_247D6A25C(v34, v35);
  return sub_247D6B998(v40, type metadata accessor for NetworkDescriptor);
}

uint64_t sub_247D598D4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_247D59918(char *a1)
{
  v2 = v1;
  v4 = sub_247DD2ABC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v9 = *(v2 + 16);
  *v7 = v9;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v10 = v9;
  LOBYTE(v9) = sub_247DD2ADC();
  (*(v5 + 8))(v7, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_8;
  }

  if (!*(v2 + 72))
  {
    return;
  }

  v11 = *(v2 + 48);
  if (v11 <= 9)
  {
    if (v8)
    {
      if (v11 == 1)
      {
        LOBYTE(v35) = 2;
        sub_247D5A170(&v35, 0xD00000000000001CLL, 0x8000000247DD8D60);
      }
    }

    else
    {
      v20 = *(v2 + 64);
      if (v20 >> 60 == 15)
      {
        if (qword_27EE73298 != -1)
        {
          swift_once();
        }

        v21 = sub_247DD23CC();
        __swift_project_value_buffer(v21, qword_27EE7B920);
        v22 = sub_247DD23AC();
        v23 = sub_247DD2F0C();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_247D56000, v22, v23, "Unexpected, attestation-host ready, but no shared-secret found", v24, 2u);
          MEMORY[0x24C1BAF60](v24, -1, -1);
        }

        v25 = *(v2 + 112);
        if (v25)
        {
          v26 = *(v2 + 120);
          sub_247D6ADD0();
          v27 = swift_allocError();
          *v28 = 0xD000000000000014;
          v28[1] = 0x8000000247DD8D80;
          v35 = v27;
          v36 = 0;
          v37 = 1;

          v25(&v35);
          sub_247D6A24C(v25, v26);
          sub_247D6AE24(v35, v36, v37);
        }
      }

      else
      {
        v29 = *(v2 + 56);
        LOBYTE(v35) = 2;
        sub_247D6A2E8(v29, v20);
        sub_247D58468(&v35);
        v30 = *(v2 + 112);
        if (v30)
        {
          v31 = *(v2 + 120);
          v35 = v29;
          v36 = v20;
          v37 = 0;
          sub_247D6B278(v29, v20);
          sub_247D6ACFC(v30);
          v30(&v35);
          sub_247D6A24C(v30, v31);
          sub_247D6A25C(v29, v20);
          sub_247D6AE24(v35, v36, v37);
        }

        else
        {
          sub_247D6A25C(v29, v20);
        }

        v32 = *(v2 + 112);
        v33 = *(v2 + 120);
        *(v2 + 112) = 0;
        *(v2 + 120) = 0;
        sub_247D6A24C(v32, v33);
      }
    }

    return;
  }

  if (qword_27EE73298 != -1)
  {
    goto LABEL_24;
  }

LABEL_8:
  v12 = sub_247DD23CC();
  __swift_project_value_buffer(v12, qword_27EE7B920);

  v13 = sub_247DD23AC();
  v14 = sub_247DD2F2C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v35 = v16;
    *v15 = 136315138;
    v38 = *(v2 + 48);
    v17 = TransferHost.State.description.getter();
    v19 = sub_247D72868(v17, v18, &v35);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_247D56000, v13, v14, "Stopped, ignoring attestation-host state change, state=%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x24C1BAF60](v16, -1, -1);
    MEMORY[0x24C1BAF60](v15, -1, -1);
  }
}

uint64_t sub_247D59D90()
{
  v1 = sub_247DD2ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 16);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_247DD2ADC();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (*(v0 + OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferHost))
    {
      v8 = swift_allocObject();
      swift_weakInit();
      v9 = swift_allocObject();
      swift_weakInit();

      sub_247D65914(sub_247D6BC9C, v8, sub_247D6BCA4, v9, &unk_2859E44B0, sub_247D6BD00, &block_descriptor_222, sub_247D6C07C);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_247D59F80()
{
  v1 = sub_247DD2ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 16);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_247DD2ADC();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (*(v0 + OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferHost))
    {
      v8 = swift_allocObject();
      swift_weakInit();
      v9 = swift_allocObject();
      swift_weakInit();

      sub_247D65914(sub_247D6BB34, v8, sub_247D6BB3C, v9, &unk_2859E43E8, sub_247D6BB48, &block_descriptor_205, sub_247D6C07C);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_247D5A170(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_247DD2ABC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  v13 = *(v4 + 16);
  *v11 = v13;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v14 = v13;
  LOBYTE(v13) = sub_247DD2ADC();
  result = (*(v9 + 8))(v11, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  if (*(v4 + 48) > 9u)
  {
    return result;
  }

  if (qword_27EE73298 != -1)
  {
    goto LABEL_15;
  }

LABEL_4:
  v16 = sub_247DD23CC();
  __swift_project_value_buffer(v16, qword_27EE7B920);

  v17 = sub_247DD23AC();
  v18 = sub_247DD2F2C();

  v19 = os_log_type_enabled(v17, v18);
  v43 = a2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v45 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_247D72868(a2, a3, &v45);
    *(v20 + 12) = 2080;
    v44 = *(v4 + 48);
    v22 = TransferHost.State.description.getter();
    v24 = sub_247D72868(v22, v23, &v45);

    *(v20 + 14) = v24;
    _os_log_impl(&dword_247D56000, v17, v18, "[Close] Closing, reason='%s', state=%s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v21, -1, -1);
    MEMORY[0x24C1BAF60](v20, -1, -1);
  }

  LOBYTE(v45) = 10;
  sub_247D58468(&v45);
  v25 = *(v4 + 80);
  if (v25 && *(v4 + OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferHost) && v12 != 4)
  {
    v26 = *(v4 + 88);

    sub_247D6ACFC(v25);
    v27 = sub_247DD23AC();
    v28 = sub_247DD2F2C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v42 = v26;
      v30 = v29;
      v31 = swift_slowAlloc();
      v45 = v31;
      *v30 = 136315138;
      v44 = *(v4 + 48);
      v32 = TransferHost.State.description.getter();
      v34 = sub_247D72868(v32, v33, &v45);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_247D56000, v27, v28, "[Close] Completing lease, state=%s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x24C1BAF60](v31, -1, -1);
      v35 = v30;
      v26 = v42;
      MEMORY[0x24C1BAF60](v35, -1, -1);
    }

    v36 = v43;
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = v12;
    *(v38 + 32) = v36;
    *(v38 + 40) = a3;
    v39 = *(v4 + 96);
    v40 = *(v4 + 104);
    *(v4 + 96) = sub_247D6AD48;
    *(v4 + 104) = v38;

    sub_247D6A24C(v39, v40);

    v45 = 200;
    v46 = v36;
    v47 = a3;
    v48 = 0;

    v25(&v45);
    sub_247D6A24C(v25, v26);
    return sub_247D6AD58(v45, v46, v47, v48);
  }

  else
  {
    LOBYTE(v45) = v12;
    return sub_247D6A9B0(&v45);
  }
}

void sub_247D5A61C(unsigned __int8 *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v107 = a3;
  v6 = sub_247DD230C();
  v106 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a1 + 1);
  v12 = *(a1 + 2);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v14 = Strong;
  if (*(Strong + 48) != 2)
  {
    if (qword_27EE73298 != -1)
    {
      swift_once();
    }

    v27 = sub_247DD23CC();
    __swift_project_value_buffer(v27, qword_27EE7B920);

    v28 = sub_247DD23AC();
    v29 = sub_247DD2F2C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v110 = v31;
      *v30 = 136315138;
      LOBYTE(v108[0]) = *(v14 + 48);
      v32 = TransferHost.State.description.getter();
      v34 = a2;
      v35 = sub_247D72868(v32, v33, &v110);

      *(v30 + 4) = v35;
      a2 = v34;
      _os_log_impl(&dword_247D56000, v28, v29, "[SPAKE2 Share] Ignoring request, state=%s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x24C1BAF60](v31, -1, -1);
      MEMORY[0x24C1BAF60](v30, -1, -1);
    }

    sub_247D6ADD0();
    v36 = swift_allocError();
    *v37 = 0xD000000000000035;
    v37[1] = 0x8000000247DD8980;
    v110 = v36;
    v111 = 0;
    v112 = 1;
    a2(&v110);
    goto LABEL_17;
  }

  if (v9 < 2u)
  {
    v15 = 1;
  }

  else
  {
    v15 = v10;
  }

  v105 = a2;
  if (v15)
  {
    v104 = Strong;
    if (qword_27EE73298 != -1)
    {
      swift_once();
    }

    v16 = sub_247DD23CC();
    v17 = __swift_project_value_buffer(v16, qword_27EE7B920);
    sub_247D6A2E8(v11, v12);
    v18 = sub_247DD23AC();
    v19 = sub_247DD2F2C();
    sub_247D6A1F8(v11, v12);
    if (os_log_type_enabled(v18, v19))
    {
      v106 = v17;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v110 = v21;
      *v20 = 136315394;
      v22 = sub_247DD216C();
      v24 = sub_247D72868(v22, v23, &v110);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      if (v10)
      {
        v25 = 0xE300000000000000;
        v26 = 7104878;
      }

      else
      {
        LOBYTE(v108[0]) = v9;
        v26 = sub_247DD2CFC();
        v25 = v60;
      }

      v61 = sub_247D72868(v26, v25, &v110);

      *(v20 + 14) = v61;
      _os_log_impl(&dword_247D56000, v18, v19, "[SPAKE2 Share] Received shareV=%s, protocol-version=%s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v21, -1, -1);
      MEMORY[0x24C1BAF60](v20, -1, -1);
    }

    else
    {
    }

    v62 = sub_247DD23AC();
    v63 = sub_247DD2F0C();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 16777472;
      v64[4] = 2;
      _os_log_impl(&dword_247D56000, v62, v63, "[SPAKE2 Share] Version mismatch, expected protocol-version >= %hhu", v64, 5u);
      MEMORY[0x24C1BAF60](v64, -1, -1);
    }

    sub_247D6ADD0();
    v65 = swift_allocError();
    *v66 = xmmword_247DD3EE0;
    v110 = v65;
    v111 = 0;
    v112 = 1;
    v105(&v110);

    LOBYTE(v110) = 6;
    sub_247D5A170(&v110, 0xD000000000000040, 0x8000000247DD89C0);
    goto LABEL_33;
  }

  if (qword_27EE73298 != -1)
  {
    swift_once();
  }

  v38 = sub_247DD23CC();
  v39 = __swift_project_value_buffer(v38, qword_27EE7B920);
  sub_247D6A2E8(v11, v12);
  v103 = v39;
  v40 = sub_247DD23AC();
  v41 = sub_247DD2F2C();
  sub_247D6A1F8(v11, v12);
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v110 = v102;
    *v42 = 136315394;
    v43 = sub_247DD216C();
    v104 = v14;
    v45 = sub_247D72868(v43, v44, &v110);
    v14 = v104;

    *(v42 + 4) = v45;
    *(v42 + 12) = 256;
    *(v42 + 14) = v9;
    _os_log_impl(&dword_247D56000, v40, v41, "[SPAKE2 Share] Received shareV=%s, protocol-version=%hhu", v42, 0xFu);
    v46 = v102;
    __swift_destroy_boxed_opaque_existential_0Tm(v102);
    MEMORY[0x24C1BAF60](v46, -1, -1);
    MEMORY[0x24C1BAF60](v42, -1, -1);
  }

  v47 = *(v14 + OBJC_IVAR____TtC5Cosmo12TransferHost_attestationCount);
  v48 = v47 + 1;
  if (__OFADD__(v47, 1))
  {
    __break(1u);
    return;
  }

  *(v14 + OBJC_IVAR____TtC5Cosmo12TransferHost_attestationCount) = v48;
  v49 = *(v14 + 64);
  if (v49 >> 60 == 15)
  {
    LOBYTE(v110) = 0;
    sub_247D5A170(&v110, 0xD000000000000037, 0x8000000247DD8A10);
LABEL_33:

    return;
  }

  v50 = *(v14 + 56);
  sub_247D6A2E8(v50, *(v14 + 64));
  v104 = v50;
  v51 = sub_247DC2028(v50, v49);
  v53 = v52;
  type metadata accessor for Spake2Prover(0);
  swift_allocObject();
  v54 = sub_247DC0E24(v51, v53, v48);
  if (!v54)
  {
    sub_247D6ADD0();
    v36 = swift_allocError();
    *v67 = 0xD00000000000001DLL;
    v67[1] = 0x8000000247DD8A50;
    v110 = v36;
    v111 = 0;
    v112 = 1;
    v105(&v110);
    sub_247D6A25C(v104, v49);
LABEL_17:

    return;
  }

  v55 = v54;
  v102 = v49;
  *(v14 + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2Prover) = v54;

  v56 = OBJC_IVAR____TtC5Cosmo12Spake2Prover_prover;
  swift_beginAccess();
  v57 = v106;
  (*(v106 + 16))(v8, v55 + v56, v6);

  v58 = sub_247DD22FC();
  v101 = v59;
  v100 = v58;
  (*(v57 + 8))(v8, v6);
  swift_beginAccess();
  v68 = sub_247DD22DC();
  v70 = v69;
  swift_endAccess();
  v71 = (v14 + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2ProverConfirm);
  v72 = *(v14 + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2ProverConfirm);
  v73 = *(v14 + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2ProverConfirm + 8);
  *v71 = v68;
  v71[1] = v70;
  sub_247D6A25C(v72, v73);
  v75 = v100;
  v74 = v101;
  sub_247D6A2E8(v100, v101);
  v76 = sub_247DD23AC();
  v77 = sub_247DD2F2C();
  sub_247D6A1F8(v75, v74);
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v108[0] = v79;
    *v78 = 136315394;
    v80 = sub_247DD216C();
    v82 = sub_247D72868(v80, v81, v108);

    *(v78 + 4) = v82;
    *(v78 + 12) = 2080;
    v83 = sub_247D5BDD4();
    v85 = sub_247D72868(v83, v84, v108);

    *(v78 + 14) = v85;
    _os_log_impl(&dword_247D56000, v76, v77, "[SPAKE2 Share] Computed confirmP=%s, %s", v78, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v79, -1, -1);
    MEMORY[0x24C1BAF60](v78, -1, -1);
  }

  v86 = v101;
  sub_247D6A2E8(v75, v101);
  v87 = sub_247DD23AC();
  v88 = sub_247DD2F2C();
  sub_247D6A1F8(v75, v86);
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v108[0] = v90;
    *v89 = 136315394;
    v91 = sub_247DD216C();
    v93 = sub_247D72868(v91, v92, v108);

    *(v89 + 4) = v93;
    *(v89 + 12) = 2080;
    v94 = sub_247D5BDD4();
    v96 = sub_247D72868(v94, v95, v108);

    *(v89 + 14) = v96;
    _os_log_impl(&dword_247D56000, v87, v88, "[SPAKE2 Share] Sending shareP=%s %s", v89, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v90, -1, -1);
    MEMORY[0x24C1BAF60](v89, -1, -1);
  }

  v98 = v104;
  v97 = v105;
  v99 = v101;
  v108[0] = v75;
  v108[1] = v101;
  v109 = 0;
  sub_247D6A2E8(v75, v101);
  v97(v108);
  sub_247D6A1F8(v75, v99);
  LOBYTE(v108[0]) = 4;
  sub_247D58468(v108);
  sub_247D6A1F8(v75, v99);
  sub_247D6A25C(v98, v102);
}

void sub_247D5B444(uint64_t *a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (*(Strong + 48) != 4)
    {
      v25 = qword_27EE73298;

      if (v25 != -1)
      {
        swift_once();
      }

      v26 = sub_247DD23CC();
      __swift_project_value_buffer(v26, qword_27EE7B920);
      v27 = sub_247DD23AC();
      v28 = sub_247DD2F2C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v59 = v30;
        *v29 = 136315138;
        v31 = sub_247D5BDD4();
        v33 = sub_247D72868(v31, v32, &v59);

        *(v29 + 4) = v33;
        _os_log_impl(&dword_247D56000, v27, v28, "[SPAKE2 Confirm] Ignoring request, %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v30);
        MEMORY[0x24C1BAF60](v30, -1, -1);
        MEMORY[0x24C1BAF60](v29, -1, -1);
      }

      sub_247D6ADD0();
      v23 = swift_allocError();
      *v34 = 0xD000000000000037;
      v34[1] = 0x8000000247DD8AA0;
      v59 = v23;
      v60 = 0;
      v61 = 1;
      a2(&v59);
      goto LABEL_15;
    }

    if (!*(Strong + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2Prover))
    {
      sub_247D6ADD0();
      v36 = swift_allocError();
      *v37 = 0xD000000000000014;
      v37[1] = 0x8000000247DD8AE0;
      v59 = v36;
      v60 = 0;
      v61 = 1;

      a2(&v59);

      v35 = v36;
      goto LABEL_17;
    }

    v9 = qword_27EE73298;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = sub_247DD23CC();
    __swift_project_value_buffer(v10, qword_27EE7B920);
    sub_247D6A2E8(v5, v6);
    v11 = sub_247DD23AC();
    v12 = sub_247DD2F2C();
    sub_247D6A1F8(v5, v6);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v59 = v14;
      *v13 = 136315394;
      v15 = sub_247DD216C();
      v17 = sub_247D72868(v15, v16, &v59);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      v18 = sub_247D5BDD4();
      v20 = sub_247D72868(v18, v19, &v59);

      *(v13 + 14) = v20;
      _os_log_impl(&dword_247D56000, v11, v12, "[SPAKE2 Confirm] Received confirmV=%s, %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v14, -1, -1);
      MEMORY[0x24C1BAF60](v13, -1, -1);
    }

    v21 = (v8 + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2ProverConfirm);
    v22 = *(v8 + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2ProverConfirm + 8);
    if (v22 >> 60 == 15)
    {
      sub_247D6ADD0();
      v23 = swift_allocError();
      *v24 = 0xD00000000000001CLL;
      v24[1] = 0x8000000247DD8B00;
      v59 = v23;
      v60 = 0;
      v61 = 1;
      a2(&v59);

LABEL_15:

      v35 = v23;
LABEL_17:

      return;
    }

    v38 = *v21;
    sub_247D6B278(*v21, *(v8 + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2ProverConfirm + 8));
    sub_247D6A2E8(v38, v22);
    v39 = sub_247DD23AC();
    v40 = sub_247DD2F2C();
    sub_247D6A25C(v38, v22);
    v58 = v38;
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v59 = v57;
      *v41 = 136315394;
      v42 = sub_247DD216C();
      v44 = sub_247D72868(v42, v43, &v59);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2080;
      v45 = sub_247D5BDD4();
      v47 = sub_247D72868(v45, v46, &v59);

      *(v41 + 14) = v47;
      _os_log_impl(&dword_247D56000, v39, v40, "[SPAKE2 Confirm] Sending confirmP=%s %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v57, -1, -1);
      MEMORY[0x24C1BAF60](v41, -1, -1);
    }

    v59 = v38;
    v60 = v22;
    v61 = 0;
    sub_247D6A2E8(v38, v22);
    a2(&v59);
    sub_247D6A25C(v38, v22);
    sub_247DC13D8(v5, v6);
    v48 = sub_247DD23AC();
    v49 = sub_247DD2F2C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v59 = v51;
      *v50 = 136315138;
      v52 = sub_247D5BDD4();
      v54 = sub_247D72868(v52, v53, &v59);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_247D56000, v48, v49, "[SPAKE2 Confirm] Seed validated, %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x24C1BAF60](v51, -1, -1);
      MEMORY[0x24C1BAF60](v50, -1, -1);
    }

    LOBYTE(v59) = 5;
    sub_247D58468(&v59);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v55 = *(v8 + 40);
      ObjectType = swift_getObjectType();
      (*(v55 + 8))(v8, ObjectType, v55);

      sub_247D6A25C(v58, v22);

      swift_unknownObjectRelease();
    }

    else
    {

      sub_247D6A25C(v58, v22);
    }
  }
}

uint64_t sub_247D5BDD4()
{
  sub_247DD304C();

  v0 = sub_247DD321C();
  MEMORY[0x24C1BA0A0](v0);

  MEMORY[0x24C1BA0A0](0x3D657461747320, 0xE700000000000000);
  v1 = TransferHost.State.description.getter();
  MEMORY[0x24C1BA0A0](v1);

  return 0x612D747365747461;
}

void sub_247D5BEC4(uint64_t *a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v225 = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733B0, &unk_247DD3F80);
  MEMORY[0x28223BE20](v7 - 8);
  v216 = &v193 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE733A8, &unk_247DD61B0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v215 = &v193 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v193 - v12;
  v14 = sub_247DD225C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v214 = &v193 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v217 = &v193 - v19;
  MEMORY[0x28223BE20](v18);
  v218 = &v193 - v20;
  v22 = *a1;
  v21 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    if (*(Strong + 48) == 5)
    {
      v210 = v15;
      v25 = *(Strong + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2Prover);
      if (v25)
      {
        v209 = v14;
        v211 = a2;
        v26 = qword_27EE73298;

        if (v26 != -1)
        {
          swift_once();
        }

        v27 = sub_247DD23CC();
        v28 = __swift_project_value_buffer(v27, qword_27EE7B920);

        v213 = v28;
        v29 = sub_247DD23AC();
        v30 = sub_247DD2F2C();

        v31 = os_log_type_enabled(v29, v30);
        v212 = v25;
        if (v31)
        {
          v32 = swift_slowAlloc();
          v208 = a3;
          v33 = v32;
          v34 = swift_slowAlloc();
          v220 = v34;
          *v33 = 136315394;
          *(v33 + 4) = sub_247D72868(v22, v21, &v220);
          *(v33 + 12) = 2080;
          LOBYTE(v219) = *(v24 + 48);
          v35 = TransferHost.State.description.getter();
          v37 = v24;
          v38 = sub_247D72868(v35, v36, &v220);

          *(v33 + 14) = v38;
          v24 = v37;
          _os_log_impl(&dword_247D56000, v29, v30, "[FileTransferSetup] Received encryptedRemotePublicKey=%s, state=%s", v33, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1BAF60](v34, -1, -1);
          v39 = v33;
          a3 = v208;
          MEMORY[0x24C1BAF60](v39, -1, -1);
        }

        v40 = sub_247DD210C();
        v42 = v211;
        if (v41 >> 60 == 15)
        {
          v43 = sub_247DD23AC();
          v44 = sub_247DD2F0C();
          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            *v45 = 0;
            _os_log_impl(&dword_247D56000, v43, v44, "[FileTransferSetup] Failed to deserialize encryptedRemotePublicKey from base64", v45, 2u);
            MEMORY[0x24C1BAF60](v45, -1, -1);
          }

          sub_247D6ADD0();
          v46 = swift_allocError();
          *v47 = 0xD00000000000002DLL;
          v47[1] = 0x8000000247DD8B60;
          v220 = v46;
          v221 = 0;
          v222 = 0;
          v223 = 0;
          v224 = 1;
          v42(&v220);
        }

        else
        {
          v206 = v40;
          v207 = v41;
          v60 = sub_247DBF6AC(v40, v41);
          v62 = v61;
          if (v61 >> 60 != 15)
          {
            v71 = v60;

            sub_247D6B278(v71, v62);
            v72 = sub_247DD23AC();
            v73 = sub_247DD2F2C();
            sub_247D6A25C(v71, v62);

            v74 = os_log_type_enabled(v72, v73);
            v208 = a3;
            v205 = v24;
            v203 = v62;
            v196 = 0;
            if (v74)
            {
              v75 = swift_slowAlloc();
              v76 = swift_slowAlloc();
              v220 = v76;
              *v75 = 136315394;
              v77 = sub_247DD216C();
              v79 = sub_247D72868(v77, v78, &v220);

              *(v75 + 4) = v79;
              *(v75 + 12) = 2080;
              LOBYTE(v219) = *(v24 + 48);
              v80 = TransferHost.State.description.getter();
              v82 = sub_247D72868(v80, v81, &v220);

              *(v75 + 14) = v82;
              _os_log_impl(&dword_247D56000, v72, v73, "[FileTransferSetup] Finished decryption, remotePublicKey=%s state=%s", v75, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x24C1BAF60](v76, -1, -1);
              MEMORY[0x24C1BAF60](v75, -1, -1);
            }

            v83 = v71;
            v84 = v210;
            KeyPair = createKeyPair(*MEMORY[0x277CDC040], 256);
            v202 = secIdentityFromKeyPair(KeyPair);
            v85 = publicKeyFromIdentity(v202);
            v86 = sub_247DD217C();
            v204 = v87;

            v194 = sub_247DD216C();
            v195 = v88;
            v89 = v218;
            sub_247DD224C();
            v90 = *(v84 + 16);
            v200 = v84 + 16;
            v201 = v90;
            v91 = v209;
            v90(v13, v89, v209);
            (*(v84 + 56))(v13, 0, 1, v91);
            v92 = OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferServiceUUID;
            v93 = v205;
            swift_beginAccess();
            v193 = v92;
            sub_247D6B4B4(v13, v93 + v92, &qword_27EE733A8, &unk_247DD61B0);
            swift_endAccess();
            v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73580, &qword_247DD4348);
            v95 = *(v94 + 96);
            v96 = *(v94 + 112);
            v97 = v216;
            *v216 = 1;
            v98 = v203;
            *(v97 + 1) = v83;
            *(v97 + 2) = v98;
            v99 = v204;
            *(v97 + 3) = v86;
            *(v97 + 4) = v99;
            *(v97 + 5) = v202;
            v201(&v97[v95], v218, v91);
            v97[v96] = 1;
            v100 = type metadata accessor for NetworkDescriptor(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v100 - 8) + 56))(v97, 0, 1, v100);
            v101 = OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferDescriptor;
            swift_beginAccess();
            v198 = v83;
            sub_247D6B278(v83, v98);
            v199 = v86;
            sub_247D6A2E8(v86, v99);
            swift_unknownObjectRetain();
            sub_247D6B4B4(v97, v93 + v101, &unk_27EE733B0, &unk_247DD3F80);
            swift_endAccess();
            v102 = v217;
            v201(v217, v218, v91);

            v103 = v195;

            v104 = sub_247DD23AC();
            v105 = v210;
            v106 = v104;
            v107 = sub_247DD2F2C();

            if (os_log_type_enabled(v106, v107))
            {
              v108 = swift_slowAlloc();
              v109 = swift_slowAlloc();
              v220 = v109;
              *v108 = 136315650;
              v110 = sub_247D72868(v194, v103, &v220);

              *(v108 + 4) = v110;
              *(v108 + 12) = 2080;
              sub_247D6A33C(&unk_27EE73510, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v111 = v209;
              v112 = sub_247DD321C();
              v114 = v113;
              v115 = *(v105 + 8);
              (v115)(v102, v111);
              v116 = sub_247D72868(v112, v114, &v220);

              *(v108 + 14) = v116;
              *(v108 + 22) = 2080;
              LOBYTE(v219) = *(v205 + 48);
              v117 = TransferHost.State.description.getter();
              v119 = sub_247D72868(v117, v118, &v220);

              *(v108 + 24) = v119;
              _os_log_impl(&dword_247D56000, v106, v107, "[FileTransferSetup] Generated localPublicKey=%s fileTransferServiceUUID=%s, state=%s", v108, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C1BAF60](v109, -1, -1);
              MEMORY[0x24C1BAF60](v108, -1, -1);
            }

            else
            {

              v115 = *(v105 + 8);
              (v115)(v102, v209);
            }

            v120 = v196;
            v121 = v199;
            v122 = v204;
            v123 = sub_247DBF19C(v199, v204);
            if (v120)
            {
              v125 = v205;

              v126 = v120;
              v127 = sub_247DD23AC();
              v128 = sub_247DD2F0C();

              if (os_log_type_enabled(v127, v128))
              {
                v129 = swift_slowAlloc();
                v217 = v115;
                v130 = v122;
                v131 = v129;
                v132 = swift_slowAlloc();
                v220 = v132;
                *v131 = 136315394;
                v219 = v120;
                v133 = v120;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
                v134 = sub_247DD2CFC();
                v136 = sub_247D72868(v134, v135, &v220);

                *(v131 + 4) = v136;
                *(v131 + 12) = 2080;
                LOBYTE(v219) = *(v125 + 48);
                v137 = TransferHost.State.description.getter();
                v139 = sub_247D72868(v137, v138, &v220);

                *(v131 + 14) = v139;
                _os_log_impl(&dword_247D56000, v127, v128, "[FileTransferSetup] Failed to encrypt publicKey, error=%s %s", v131, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x24C1BAF60](v132, -1, -1);
                v140 = v131;
                v122 = v130;
                v115 = v217;
                MEMORY[0x24C1BAF60](v140, -1, -1);
              }

              v141 = v211;
              sub_247D6ADD0();
              v46 = swift_allocError();
              *v142 = 0xD00000000000001ELL;
              v142[1] = 0x8000000247DD8BE0;
              v220 = v46;
              v221 = 0;
              v222 = 0;
              v223 = 0;
              v224 = 1;
              v141(&v220);

              sub_247D6A25C(v206, v207);

              swift_unknownObjectRelease();
              sub_247D6A1F8(v121, v122);
              sub_247D6A25C(v198, v203);
            }

            else
            {
              if (v124 >> 60 != 15)
              {
                v155 = v122;
                v156 = v123;
                v157 = v124;
                v220 = sub_247DD223C();
                v221 = v158;
                v159 = sub_247D97B54(&v220, &v222);
                v161 = v160;
                v162 = sub_247DBF19C(v159, v160);
                v164 = v163;
                v165 = v162;
                sub_247D6A1F8(v159, v161);
                if (v164 >> 60 != 15)
                {
                  v217 = sub_247DD216C();
                  v167 = v166;

                  v216 = sub_247DD216C();
                  v169 = v168;

                  sub_247D6A25C(v165, v164);
                  sub_247D6A25C(v156, v157);
                  v170 = v205;

                  v171 = sub_247DD23AC();
                  v172 = sub_247DD2F2C();

                  if (os_log_type_enabled(v171, v172))
                  {
                    v173 = swift_slowAlloc();
                    v174 = swift_slowAlloc();
                    v220 = v174;
                    *v173 = 136315650;
                    *(v173 + 4) = sub_247D72868(v217, v167, &v220);
                    *(v173 + 12) = 2080;
                    *(v173 + 14) = sub_247D72868(v216, v169, &v220);
                    *(v173 + 22) = 2080;
                    LOBYTE(v219) = *(v170 + 48);
                    v175 = TransferHost.State.description.getter();
                    v177 = sub_247D72868(v175, v176, &v220);

                    *(v173 + 24) = v177;
                    _os_log_impl(&dword_247D56000, v171, v172, "[FileTransferSetup] Sending encryptedLocalPublicKey=%s encryptedServiceUUID=%s, state=%s", v173, 0x20u);
                    swift_arrayDestroy();
                    MEMORY[0x24C1BAF60](v174, -1, -1);
                    MEMORY[0x24C1BAF60](v173, -1, -1);
                  }

                  v178 = v198;
                  v179 = v115;
                  v220 = v217;
                  v221 = v167;
                  v222 = v216;
                  v223 = v169;
                  v224 = 0;
                  v211(&v220);

                  v180 = sub_247DD23AC();
                  v181 = sub_247DD2F2C();
                  if (os_log_type_enabled(v180, v181))
                  {
                    LODWORD(v217) = v181;
                    v182 = swift_slowAlloc();
                    v216 = swift_slowAlloc();
                    v220 = v216;
                    *v182 = 136315138;
                    v183 = v215;
                    sub_247D6BA6C(v170 + v193, v215, &qword_27EE733A8, &unk_247DD61B0);
                    v185 = v209;
                    v184 = v210;
                    v186 = (*(v210 + 48))(v183, 1, v209);

                    if (v186 == 1)
                    {
                      __break(1u);
                      return;
                    }

                    v187 = v214;
                    (*(v184 + 32))(v214, v183, v185);
                    sub_247D6A33C(&unk_27EE73510, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                    v188 = sub_247DD321C();
                    v190 = v189;
                    v179 = v115;
                    (v115)(v187, v185);
                    v191 = sub_247D72868(v188, v190, &v220);

                    *(v182 + 4) = v191;
                    _os_log_impl(&dword_247D56000, v180, v217, "Starting file-transfer-host with Bonjour fileTransferServiceUUID=%s", v182, 0xCu);
                    v192 = v216;
                    __swift_destroy_boxed_opaque_existential_0Tm(v216);
                    MEMORY[0x24C1BAF60](v192, -1, -1);
                    MEMORY[0x24C1BAF60](v182, -1, -1);

                    v178 = v198;
                  }

                  else
                  {

                    v185 = v209;
                  }

                  sub_247D5D82C();

                  sub_247D6A25C(v206, v207);
                  swift_unknownObjectRelease();

                  sub_247D6A1F8(v199, v204);
                  sub_247D6A25C(v178, v203);

                  v179(v218, v185);
                  return;
                }

                sub_247D6A25C(v156, v157);
                v122 = v155;
              }

              v143 = v205;

              v144 = sub_247DD23AC();
              v145 = sub_247DD2F0C();

              if (os_log_type_enabled(v144, v145))
              {
                v146 = swift_slowAlloc();
                v147 = swift_slowAlloc();
                v220 = v147;
                *v146 = 136315138;
                LOBYTE(v219) = *(v143 + 48);
                v148 = TransferHost.State.description.getter();
                v150 = v115;
                v151 = v122;
                v152 = sub_247D72868(v148, v149, &v220);

                *(v146 + 4) = v152;
                v122 = v151;
                v115 = v150;
                _os_log_impl(&dword_247D56000, v144, v145, "[FileTransferSetup] Spake2Prover.encrypt() returned nil, %s", v146, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v147);
                MEMORY[0x24C1BAF60](v147, -1, -1);
                MEMORY[0x24C1BAF60](v146, -1, -1);
              }

              v153 = v211;
              sub_247D6ADD0();
              v46 = swift_allocError();
              *v154 = 0xD000000000000023;
              v154[1] = 0x8000000247DD8C00;
              v220 = v46;
              v221 = 0;
              v222 = 0;
              v223 = 0;
              v224 = 1;
              v153(&v220);

              sub_247D6A25C(v206, v207);
              swift_unknownObjectRelease();

              sub_247D6A1F8(v121, v122);
              sub_247D6A25C(v198, v203);
            }

            (v115)(v218, v209);
            goto LABEL_20;
          }

          v63 = sub_247DD23AC();
          v64 = sub_247DD2F0C();

          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v220 = v66;
            *v65 = 136315394;
            *(v65 + 4) = sub_247D72868(v22, v21, &v220);
            *(v65 + 12) = 2080;
            LOBYTE(v219) = *(v24 + 48);
            v67 = TransferHost.State.description.getter();
            v69 = sub_247D72868(v67, v68, &v220);

            *(v65 + 14) = v69;
            _os_log_impl(&dword_247D56000, v63, v64, "[FileTransferSetup] Spake2Prover.decrypt() returned nil for encryptedRemotePublicKey=%s %s", v65, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x24C1BAF60](v66, -1, -1);
            MEMORY[0x24C1BAF60](v65, -1, -1);
          }

          sub_247D6ADD0();
          v46 = swift_allocError();
          *v70 = 0xD000000000000023;
          v70[1] = 0x8000000247DD8BB0;
          v220 = v46;
          v221 = 0;
          v222 = 0;
          v223 = 0;
          v224 = 1;
          v42(&v220);
          sub_247D6A25C(v206, v207);
        }

LABEL_19:

LABEL_20:

        return;
      }

      v56 = 0x8000000247DD8AE0;
      sub_247D6ADD0();
      v57 = swift_allocError();
      v46 = v57;
      v59 = 0xD000000000000014;
    }

    else
    {
      if (qword_27EE73298 != -1)
      {
        swift_once();
      }

      v48 = sub_247DD23CC();
      __swift_project_value_buffer(v48, qword_27EE7B920);

      v49 = sub_247DD23AC();
      v50 = sub_247DD2F0C();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v220 = v52;
        *v51 = 136315138;
        LOBYTE(v219) = *(v24 + 48);
        v53 = TransferHost.State.description.getter();
        v55 = sub_247D72868(v53, v54, &v220);

        *(v51 + 4) = v55;
        _os_log_impl(&dword_247D56000, v49, v50, "[FileTransferSetup] Ignoring request, state=%s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v52);
        MEMORY[0x24C1BAF60](v52, -1, -1);
        MEMORY[0x24C1BAF60](v51, -1, -1);
      }

      v56 = 0x8000000247DD8B20;
      sub_247D6ADD0();
      v57 = swift_allocError();
      v46 = v57;
      v59 = 0xD00000000000003ALL;
    }

    *v58 = v59;
    v58[1] = v56;
    v220 = v57;
    v221 = 0;
    v222 = 0;
    v223 = 0;
    v224 = 1;
    a2(&v220);
    goto LABEL_19;
  }
}

uint64_t sub_247D5D82C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733B0, &unk_247DD3F80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - v3;
  v5 = type metadata accessor for NetworkDescriptor(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = &v34 - v10;
  v11 = sub_247DD2ABC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v1 + 16);
  *v14 = v15;
  v16 = *(v12 + 104);
  v36 = *MEMORY[0x277D85200];
  v35 = v16;
  v16(v14);
  v34 = v15;
  LOBYTE(v15) = sub_247DD2ADC();
  v38 = *(v12 + 8);
  result = v38(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v18 = OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferDescriptor;
  swift_beginAccess();
  sub_247D6BA6C(v1 + v18, v4, &unk_27EE733B0, &unk_247DD3F80);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_247D6BAD4(v4, &unk_27EE733B0, &unk_247DD3F80);
  }

  v19 = v4;
  v20 = v37;
  sub_247D6B8C4(v19, v37, type metadata accessor for NetworkDescriptor);
  sub_247D6BA04(v20, v9, type metadata accessor for NetworkDescriptor);
  type metadata accessor for CosmoMultiplexChannelHost(0);
  swift_allocObject();
  v21 = v34;
  v22 = v34;
  v23 = sub_247DD0DF0(0xD000000000000012, 0x8000000247DD8C30, v9, v21);

  v34 = (v12 + 104);
  v24 = OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferHost;
  *(v1 + OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferHost) = v23;

  v25 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v26 = v23[2];
  v27 = v23[3];
  v23[2] = sub_247D6B51C;
  v23[3] = v25;

  sub_247D6A24C(v26, v27);

  sub_247D59D90();
  sub_247D59F80();
  *v14 = v22;
  v28 = v36;
  v29 = v35;
  v35(v14, v36, v11);
  v30 = v22;
  LOBYTE(v23) = sub_247DD2ADC();
  result = v38(v14, v11);
  if ((v23 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (*(v1 + v24))
  {
    v31 = swift_allocObject();
    swift_weakInit();

    sub_247D65914(sub_247D6B554, v31, 0, 0, &unk_2859E4190, sub_247D6B560, &block_descriptor_156, sub_247D6C07C);
  }

  sub_247D5F060();
  *v14 = v30;
  v29(v14, v28, v11);
  v32 = sub_247DD2ADC();
  result = v38(v14, v11);
  if ((v32 & 1) == 0)
  {
    goto LABEL_16;
  }

  if (*(v1 + v24))
  {
    v33 = swift_allocObject();
    swift_weakInit();

    sub_247D65914(sub_247D6B54C, v33, 0, 0, &unk_2859E4258, sub_247D6B7D4, &block_descriptor_171, sub_247D6C07C);
  }

  v39 = 6;
  sub_247D58468(&v39);
  if (*(v1 + v24))
  {

    sub_247DC91B4();
  }

  return sub_247D6B998(v37, type metadata accessor for NetworkDescriptor);
}

Swift::Void __swiftcall TransferHost.setTransferFiles(_:)(Swift::OpaquePointer a1)
{
  v3 = sub_247DD2A0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_247DD2A2C();
  v7 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = v1[2];
  v10 = swift_allocObject();
  v10[2]._rawValue = a1._rawValue;
  v10[3]._rawValue = v1;
  aBlock[4] = sub_247D6A3C4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_15;
  v11 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v14 = MEMORY[0x277D84F90];
  sub_247D6A33C(&unk_27EE73AF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0, MEMORY[0x277D83970]);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v13);
}

void sub_247D5E10C(uint64_t a1, uint64_t a2)
{
  v112 = sub_247DD225C();
  v107 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v118 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE734F8, &qword_247DD4308);
  v6 = MEMORY[0x28223BE20](v5);
  v111 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v116 = (&v102 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73500, &unk_247DD4310);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = (&v102 - v13);
  v15 = sub_247DD20DC();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v115 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v20 = MEMORY[0x28223BE20](v19);
  v21 = MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  v26 = &v102 - v25;
  v27 = *(a1 + 16);
  if (!v27)
  {
    return;
  }

  v104 = v24;
  v105 = v23;
  v108 = v12;
  v113 = v14;
  v114 = v22;
  v106 = v5;
  v103 = a2;
  v29 = v16 + 16;
  v28 = *(v16 + 16);
  isUniquelyReferenced_nonNull_native = v16 + 8;
  v31 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v117 = *(v16 + 72);
  v32 = v31;
  v110 = v27;
  v33 = v27;
  while (1)
  {
    v28(v26, v31, v15);
    if ((sub_247DD206C() & 1) == 0)
    {
      break;
    }

    (*isUniquelyReferenced_nonNull_native)(v26, v15);
    v31 += v117;
    if (!--v33)
    {
      v34 = v103;
      v102 = OBJC_IVAR____TtC5Cosmo12TransferHost_filesToTransfer;
      v35 = *(*(v103 + OBJC_IVAR____TtC5Cosmo12TransferHost_filesToTransfer) + 16);
      v109 = v28;
      if (v35)
      {
        if (qword_27EE73298 != -1)
        {
          swift_once();
        }

        v36 = sub_247DD23CC();
        __swift_project_value_buffer(v36, qword_27EE7B920);

        v37 = sub_247DD23AC();
        v38 = sub_247DD2F0C();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v114 = v15;
          v40 = v39;
          v41 = swift_slowAlloc();
          v120[0] = v41;
          *v40 = 136315138;
          v119 = *(v34 + 48);
          v42 = TransferHost.State.description.getter();
          isUniquelyReferenced_nonNull_native = sub_247D72868(v42, v43, v120);

          *(v40 + 4) = isUniquelyReferenced_nonNull_native;
          _os_log_impl(&dword_247D56000, v37, v38, "[SetTransferFiles] Overriding fileURLs, state=%s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v41);
          MEMORY[0x24C1BAF60](v41, -1, -1);
          v44 = v40;
          v15 = v114;
          v28 = v109;
          MEMORY[0x24C1BAF60](v44, -1, -1);
        }
      }

      v26 = 0;
      v113 = (v16 + 32);
      v45 = v106;
      v105 = v107 + 16;
      v108 = (v107 + 8);
      v46 = MEMORY[0x277D84F98];
      v104 = (v16 + 40);
      v47 = v32;
      while (1)
      {
        if (__OFADD__(v26, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        v114 = v26 + 1;
        v50 = *(v45 + 48);
        v51 = v116;
        *v116 = v26;
        v52 = v47;
        v53 = v29;
        (v28)(v51 + v50);
        v16 = v118;
        sub_247DD224C();
        v54 = v111;
        sub_247D6BA6C(v51, v111, &qword_27EE734F8, &qword_247DD4308);
        v28 = *v113;
        v55 = v54 + *(v45 + 48);
        v56 = v15;
        (*v113)(v115, v55, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v120[0] = v46;
        v15 = sub_247D94C28(v16);
        v58 = v46[2];
        v59 = (v57 & 1) == 0;
        v60 = v58 + v59;
        if (__OFADD__(v58, v59))
        {
          goto LABEL_40;
        }

        v16 = v57;
        if (v46[3] >= v60)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v46 = v120[0];
            if ((v57 & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_247DCFB7C();
            v46 = v120[0];
            if ((v16 & 1) == 0)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
          sub_247DCECB4(v60, isUniquelyReferenced_nonNull_native);
          v61 = sub_247D94C28(v118);
          if ((v16 & 1) != (v62 & 1))
          {
            sub_247DD323C();
            __break(1u);
            return;
          }

          v15 = v61;
          v46 = v120[0];
          if ((v16 & 1) == 0)
          {
LABEL_22:
            v46[(v15 >> 6) + 8] |= 1 << v15;
            isUniquelyReferenced_nonNull_native = v107;
            v63 = v118;
            v16 = v112;
            (*(v107 + 16))(v46[6] + *(v107 + 72) * v15, v118, v112);
            v64 = v46[7] + v15 * v117;
            v15 = v56;
            v28(v64, v115, v56);
            (*(isUniquelyReferenced_nonNull_native + 8))(v63, v16);
            sub_247D6BAD4(v116, &qword_27EE734F8, &qword_247DD4308);
            v65 = v46[2];
            v66 = __OFADD__(v65, 1);
            v67 = v65 + 1;
            if (v66)
            {
              goto LABEL_41;
            }

            v46[2] = v67;
            v45 = v106;
            v48 = v117;
            goto LABEL_13;
          }
        }

        v48 = v117;
        v49 = v46[7] + v15 * v117;
        v15 = v56;
        (*v104)(v49, v115, v56);
        (*v108)(v118, v112);
        sub_247D6BAD4(v116, &qword_27EE734F8, &qword_247DD4308);
LABEL_13:
        ++v26;
        v47 = v52 + v48;
        v28 = v109;
        v29 = v53;
        if (v114 == v110)
        {
          v79 = v103;
          *(v103 + v102) = v46;

          if (qword_27EE73298 != -1)
          {
            swift_once();
          }

          v80 = sub_247DD23CC();
          __swift_project_value_buffer(v80, qword_27EE7B920);

          v81 = sub_247DD23AC();
          v82 = sub_247DD2F2C();

          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v120[0] = v84;
            *v83 = 136315394;
            sub_247D6A33C(&qword_27EE738D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

            v85 = v79;
            v86 = sub_247DD2C4C();
            v88 = v87;

            v89 = sub_247D72868(v86, v88, v120);

            *(v83 + 4) = v89;
            *(v83 + 12) = 2080;
            v119 = *(v85 + 48);
            v90 = TransferHost.State.description.getter();
            v92 = sub_247D72868(v90, v91, v120);

            *(v83 + 14) = v92;
            _os_log_impl(&dword_247D56000, v81, v82, "[SetTransferFiles] Ready to serve files=%s, state=%s", v83, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x24C1BAF60](v84, -1, -1);
            MEMORY[0x24C1BAF60](v83, -1, -1);
          }

          return;
        }
      }
    }
  }

  if (qword_27EE73298 != -1)
  {
LABEL_42:
    swift_once();
  }

  v68 = sub_247DD23CC();
  __swift_project_value_buffer(v68, qword_27EE7B920);
  v69 = v114;
  v28(v114, v26, v15);

  v70 = sub_247DD23AC();
  v71 = v28;
  v72 = sub_247DD2F0C();

  if (os_log_type_enabled(v70, v72))
  {
    LODWORD(v118) = v72;
    v73 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v120[0] = v117;
    *v73 = 136315394;
    v74 = v113;
    v71(v113, v69, v15);
    (*(v16 + 56))(v74, 0, 1, v15);
    v75 = v74;
    v76 = v108;
    sub_247D6BA6C(v75, v108, &unk_27EE73500, &unk_247DD4310);
    if ((*(v16 + 48))(v76, 1, v15) == 1)
    {
      v77 = 0xE300000000000000;
      v78 = 7104878;
    }

    else
    {
      v94 = v105;
      (*(v16 + 32))(v105, v76, v15);
      v71(v104, v94, v15);
      v78 = sub_247DD2CFC();
      v77 = v95;
      (*(v16 + 8))(v94, v15);
    }

    sub_247D6BAD4(v113, &unk_27EE73500, &unk_247DD4310);
    v96 = *isUniquelyReferenced_nonNull_native;
    (*isUniquelyReferenced_nonNull_native)(v114, v15);
    v97 = sub_247D72868(v78, v77, v120);

    *(v73 + 4) = v97;
    *(v73 + 12) = 2080;
    v119 = *(v103 + 48);
    v98 = TransferHost.State.description.getter();
    v100 = sub_247D72868(v98, v99, v120);

    *(v73 + 14) = v100;
    _os_log_impl(&dword_247D56000, v70, v118, "[SetTransferFiles] Ignoring, non-file-url found url=%s, state=%s", v73, 0x16u);
    v101 = v117;
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v101, -1, -1);
    MEMORY[0x24C1BAF60](v73, -1, -1);

    v96(v26, v15);
  }

  else
  {

    v93 = *isUniquelyReferenced_nonNull_native;
    (*isUniquelyReferenced_nonNull_native)(v69, v15);
    v93(v26, v15);
  }
}

uint64_t sub_247D5ED40(char *a1, uint64_t a2, void (*a3)(char *))
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = v4;
    a3(&v6);
  }

  return result;
}

void sub_247D5EDB4(char *a1)
{
  v3 = sub_247DD2ABC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  v8 = *(v1 + 16);
  *v6 = v8;
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = sub_247DD2ADC();
  (*(v4 + 8))(v6, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_8;
  }

  if (!*(v1 + OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferHost))
  {
    return;
  }

  v10 = *(v1 + 48);
  if (v10 <= 9)
  {
    if (v7)
    {
      if (v10 == 6)
      {
        BYTE6(v19) = 2;
        sub_247D5A170(&v19 + 6, 0xD00000000000001ELL, 0x8000000247DD8C90);
      }
    }

    else
    {
      BYTE5(v19) = 7;
      sub_247D58468(&v19 + 5);
    }

    return;
  }

  if (qword_27EE73298 != -1)
  {
    goto LABEL_14;
  }

LABEL_8:
  v11 = sub_247DD23CC();
  __swift_project_value_buffer(v11, qword_27EE7B920);

  v12 = sub_247DD23AC();
  v13 = sub_247DD2F2C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136315138;
    HIBYTE(v19) = *(v1 + 48);
    v16 = TransferHost.State.description.getter();
    v18 = sub_247D72868(v16, v17, &v20);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_247D56000, v12, v13, "Stop detected, ignoring file-transfer-host state change, state=%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x24C1BAF60](v15, -1, -1);
    MEMORY[0x24C1BAF60](v14, -1, -1);
  }
}

uint64_t sub_247D5F060()
{
  v1 = sub_247DD2ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 16);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_247DD2ADC();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (*(v0 + OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferHost))
    {
      v8 = swift_allocObject();
      swift_weakInit();
      v9 = swift_allocObject();
      swift_weakInit();

      sub_247D65914(sub_247D6B87C, v8, sub_247D6B884, v9, &unk_2859E4320, sub_247D6B890, &block_descriptor_188, sub_247D6C07C);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_247D5F250(uint64_t a1, unint64_t a2, void *a3, char a4)
{
  if (a4)
  {
    if (qword_27EE73298 != -1)
    {
      swift_once();
    }

    v7 = sub_247DD23CC();
    __swift_project_value_buffer(v7, qword_27EE7B920);

    sub_247D6BC90(a3, 1);
    oslog = sub_247DD23AC();
    v8 = sub_247DD2F0C();

    sub_247D6B9F8(a3, 1);

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v27 = v10;
      *v9 = 136315650;
      *(v9 + 4) = sub_247D72868(a1, a2, &v27);
      *(v9 + 12) = 2080;
      v11 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
      v12 = sub_247DD2CFC();
      v14 = sub_247D72868(v12, v13, &v27);

      *(v9 + 14) = v14;
      *(v9 + 22) = 2080;
      v15 = TransferHost.State.description.getter();
      v17 = sub_247D72868(v15, v16, &v27);

      *(v9 + 24) = v17;
      _os_log_impl(&dword_247D56000, oslog, v8, "%s Failed flushing HTTP response with error=%s, state=%s", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v10, -1, -1);
      v18 = v9;
LABEL_10:
      MEMORY[0x24C1BAF60](v18, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_27EE73298 != -1)
    {
      swift_once();
    }

    v19 = sub_247DD23CC();
    __swift_project_value_buffer(v19, qword_27EE7B920);

    oslog = sub_247DD23AC();
    v20 = sub_247DD2F2C();

    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136315394;
      *(v21 + 4) = sub_247D72868(a1, a2, &v27);
      *(v21 + 12) = 2080;
      v23 = TransferHost.State.description.getter();
      v25 = sub_247D72868(v23, v24, &v27);

      *(v21 + 14) = v25;
      _os_log_impl(&dword_247D56000, oslog, v20, "%s Finished flushing HTTP response, state=%s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v22, -1, -1);
      v18 = v21;
      goto LABEL_10;
    }
  }
}

uint64_t sub_247D5F5EC(unsigned __int8 *a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if (*(result + 48) >= 2u)
    {
      if (qword_27EE73298 != -1)
      {
        swift_once();
      }

      v17 = sub_247DD23CC();
      __swift_project_value_buffer(v17, qword_27EE7B920);
      v18 = sub_247DD23AC();
      v19 = sub_247DD2F2C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 16777472;
        v20[4] = v6;
        _os_log_impl(&dword_247D56000, v18, v19, "[Lease] Received lease, version=%hhu", v20, 5u);
        MEMORY[0x24C1BAF60](v20, -1, -1);
      }

      v21 = *(v8 + 80);
      v22 = *(v8 + 88);
      *(v8 + 80) = a2;
      *(v8 + 88) = a3;

      sub_247D6A24C(v21, v22);
      if (v6 == 2)
      {
        v23 = *(v8 + 49);
        if (v23 != 12)
        {

          v24 = sub_247DD23AC();
          v25 = sub_247DD2F2C();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            *&v39 = v27;
            *v26 = 136315394;
            v43 = v23;
            v28 = TransferHost.State.description.getter();
            v30 = sub_247D72868(v28, v29, &v39);

            *(v26 + 4) = v30;
            *(v26 + 12) = 2080;
            v43 = *(v8 + 48);
            v31 = TransferHost.State.description.getter();
            v33 = sub_247D72868(v31, v32, &v39);

            *(v26 + 14) = v33;
            _os_log_impl(&dword_247D56000, v24, v25, "[Lease] Client invoked stop in state=%s, satisfying now, state=%s", v26, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x24C1BAF60](v27, -1, -1);
            MEMORY[0x24C1BAF60](v26, -1, -1);
          }

          LOBYTE(v39) = 3;
          sub_247D5A170(&v39, 0xD000000000000014, 0x8000000247DD8940);
        }
      }

      else
      {
        v34 = sub_247DD23AC();
        v35 = sub_247DD2F2C();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 16777472;
          v36[4] = 2;
          _os_log_impl(&dword_247D56000, v34, v35, "[Lease] Version mismatch detected, expected-version=%hhu", v36, 5u);
          MEMORY[0x24C1BAF60](v36, -1, -1);
        }

        v43 = 6;
        *&v39 = 0;
        *(&v39 + 1) = 0xE000000000000000;
        sub_247DD304C();
        MEMORY[0x24C1BA0A0](0xD000000000000023, 0x8000000247DD8D10);
        v37 = sub_247DD321C();
        MEMORY[0x24C1BA0A0](v37);

        MEMORY[0x24C1BA0A0](0xD000000000000012, 0x8000000247DD8D40);
        v42 = v6;
        v38 = sub_247DD321C();
        MEMORY[0x24C1BA0A0](v38);

        sub_247D5A170(&v43, 0, 0xE000000000000000);
      }
    }

    else
    {
      if (qword_27EE73298 != -1)
      {
        swift_once();
      }

      v9 = sub_247DD23CC();
      __swift_project_value_buffer(v9, qword_27EE7B920);

      v10 = sub_247DD23AC();
      v11 = sub_247DD2F2C();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v39 = v13;
        *v12 = 136315138;
        v43 = *(v8 + 48);
        v14 = TransferHost.State.description.getter();
        v16 = sub_247D72868(v14, v15, &v39);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_247D56000, v10, v11, "[Lease] Unexpected request received, state=%s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v13);
        MEMORY[0x24C1BAF60](v13, -1, -1);
        MEMORY[0x24C1BAF60](v12, -1, -1);
      }

      v39 = xmmword_247DD3EF0;
      v40 = 2;
      v41 = 1;
      a2(&v39);
    }
  }

  return result;
}

uint64_t sub_247D5FB60(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_247D5F250(0x5D657361654C5BLL, 0xE700000000000000, a3, a4 & 1);
    v9 = *(v8 + 96);
    if (v9)
    {
      v10 = *(v8 + 104);

      v9(v11);

      return sub_247D6A24C(v9, v10);
    }

    else
    {
      v13 = 2;
      sub_247DD304C();

      sub_247D6BC90(a3, a4 & 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73628, &qword_247DD4398);
      v12 = sub_247DD2CFC();
      MEMORY[0x24C1BA0A0](v12);

      sub_247D6A9B0(&v13);
    }
  }

  return result;
}

void sub_247D5FCC8(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (*(Strong + 48) > 9u)
    {
      if (qword_27EE73298 != -1)
      {
        swift_once();
      }

      v15 = sub_247DD23CC();
      __swift_project_value_buffer(v15, qword_27EE7B920);

      v16 = sub_247DD23AC();
      v17 = sub_247DD2F2C();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *&v23 = v19;
        *v18 = 136315138;
        v25 = *(v6 + 48);
        v20 = TransferHost.State.description.getter();
        v22 = sub_247D72868(v20, v21, &v23);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_247D56000, v16, v17, "[Close Request] Ignoring request, state=%s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v19);
        MEMORY[0x24C1BAF60](v19, -1, -1);
        MEMORY[0x24C1BAF60](v18, -1, -1);
      }
    }

    else
    {
      if (qword_27EE73298 != -1)
      {
        swift_once();
      }

      v7 = sub_247DD23CC();
      __swift_project_value_buffer(v7, qword_27EE7B920);

      v8 = sub_247DD23AC();
      v9 = sub_247DD2F2C();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *&v23 = v11;
        *v10 = 136315138;
        v25 = *(v6 + 48);
        v12 = TransferHost.State.description.getter();
        v14 = sub_247D72868(v12, v13, &v23);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_247D56000, v8, v9, "[Close Request] Remote TransferClient requested close, state=%s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v11);
        MEMORY[0x24C1BAF60](v11, -1, -1);
        MEMORY[0x24C1BAF60](v10, -1, -1);
      }

      v23 = xmmword_247DD3F00;
      v24 = 0;
      a2(&v23);
    }
  }
}

uint64_t sub_247D5FFBC(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_247D5F250(0x522065736F6C435BLL, 0xEF5D747365757165, a3, a4 & 1);
    v8 = 4;
    sub_247D60074(&v8, 0xD000000000000030, 0x8000000247DD8CB0);
  }

  return result;
}

uint64_t sub_247D60074(char *a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v5 = sub_247DD2A0C();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_247DD2A2C();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_247DD2A7C();
  v9 = *(v34 - 8);
  v10 = MEMORY[0x28223BE20](v34);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v15 = sub_247DD2ABC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *a1;
  v20 = *(v3 + 16);
  *v18 = v20;
  (*(v16 + 104))(v18, *MEMORY[0x277D85200], v15);
  v31 = v20;
  LOBYTE(v20) = sub_247DD2ADC();
  result = (*(v16 + 8))(v18, v15);
  if (v20)
  {
    sub_247DD2A6C();
    sub_247DD2ACC();
    v30 = *(v9 + 8);
    v22 = v34;
    v30(v12, v34);
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = v19;
    v25 = v33;
    *(v24 + 32) = v32;
    *(v24 + 40) = v25;
    aBlock[4] = sub_247D6ADC0;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_247D598D4;
    aBlock[3] = &block_descriptor_96;
    v26 = _Block_copy(aBlock);

    sub_247DD2A1C();
    v40 = MEMORY[0x277D84F90];
    sub_247D6A33C(&unk_27EE73AF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
    sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0, MEMORY[0x277D83970]);
    v27 = v36;
    v28 = v39;
    sub_247DD2FFC();
    MEMORY[0x24C1BA240](v14, v8, v27, v26);
    _Block_release(v26);
    (*(v38 + 8))(v27, v28);
    (*(v35 + 8))(v8, v37);
    v30(v14, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_247D6055C(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4)
{
  v154 = sub_247DD20DC();
  v142 = *(v154 - 8);
  v6 = MEMORY[0x28223BE20](v154);
  v8 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v157 = &v131 - v10;
  MEMORY[0x28223BE20](v9);
  v140 = &v131 - v11;
  v12 = sub_247DD225C();
  v145 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v158 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v155 = &v131 - v16;
  MEMORY[0x28223BE20](v15);
  v139 = &v131 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE735B0, &qword_247DD4368);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v144 = &v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v143 = &v131 - v21;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v23 = result;
  v24 = *(result + 48);
  v152 = result;
  if (v24 < 7)
  {
    if (qword_27EE73298 != -1)
    {
LABEL_69:
      swift_once();
    }

    v25 = sub_247DD23CC();
    __swift_project_value_buffer(v25, qword_27EE7B920);

    v26 = sub_247DD23AC();
    v27 = sub_247DD2F0C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v160 = v29;
      *v28 = 136315138;
      LOBYTE(v159) = *(v152 + 48);
      v30 = TransferHost.State.description.getter();
      v32 = sub_247D72868(v30, v31, &v160);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_247D56000, v26, v27, "[FileList] Unexpected request received, state=%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x24C1BAF60](v29, -1, -1);
      MEMORY[0x24C1BAF60](v28, -1, -1);
    }

    v33 = xmmword_247DD3EF0;
    goto LABEL_64;
  }

  sub_247D615CC();
  v34 = *(v23 + OBJC_IVAR____TtC5Cosmo12TransferHost_filesToTransfer);
  if (!*(v34 + 16))
  {
    if (qword_27EE73298 != -1)
    {
      swift_once();
    }

    v123 = sub_247DD23CC();
    __swift_project_value_buffer(v123, qword_27EE7B920);

    v124 = sub_247DD23AC();
    v125 = sub_247DD2F0C();

    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      *&v160 = v127;
      *v126 = 136315138;
      LOBYTE(v159) = *(v152 + 48);
      v128 = TransferHost.State.description.getter();
      v130 = sub_247D72868(v128, v129, &v160);

      *(v126 + 4) = v130;
      _os_log_impl(&dword_247D56000, v124, v125, "[FileList] No files to transfer, state=%s", v126, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v127);
      MEMORY[0x24C1BAF60](v127, -1, -1);
      MEMORY[0x24C1BAF60](v126, -1, -1);
    }

    v33 = xmmword_247DD3F10;
LABEL_64:
    v160 = v33;
    v161 = 258;
    a2(&v160);
  }

  v138 = v8;
  v131 = a3;
  v132 = a2;
  v35 = *(v34 + 64);
  v134 = v34 + 64;
  v36 = 1 << *(v34 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & v35;
  v133 = (v36 + 63) >> 6;
  v153 = (v145 + 16);
  v148 = (v145 + 32);
  v146 = (v142 + 16);
  v147 = (v142 + 32);
  v136 = *MEMORY[0x277CCA1C0];
  v149 = (v142 + 8);
  v141 = (v145 + 8);
  v137 = v34;

  v39 = 0;
  v40 = MEMORY[0x277D84F98];
  a2 = &qword_27EE735B8;
  *&v41 = 136315394;
  v135 = v41;
  v156 = v12;
  v42 = v154;
  while (1)
  {
    if (!v38)
    {
      if (v133 <= v39 + 1)
      {
        v46 = v39 + 1;
      }

      else
      {
        v46 = v133;
      }

      v47 = (v46 - 1);
      while (1)
      {
        v45 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if (v45 >= v133)
        {
          v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE735B8, &unk_247DD4370);
          v108 = v144;
          (*(*(v107 - 8) + 56))(v144, 1, 1, v107);
          v58 = v108;
          v151 = 0;
          goto LABEL_24;
        }

        v38 = *(v134 + 8 * v45);
        v39 = (v39 + 1);
        if (v38)
        {
          v150 = v40;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v150 = v40;
    v45 = v39;
LABEL_23:
    v151 = (v38 - 1) & v38;
    v48 = __clz(__rbit64(v38)) | (v45 << 6);
    v49 = v137;
    v50 = v145;
    v51 = v139;
    (*(v145 + 16))(v139, *(v137 + 48) + *(v145 + 72) * v48, v12);
    v52 = v142;
    v53 = v140;
    (*(v142 + 16))(v140, *(v49 + 56) + *(v142 + 72) * v48, v42);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE735B8, &unk_247DD4370);
    v55 = *(v54 + 48);
    v56 = *(v50 + 32);
    v57 = v144;
    v56(v144, v51, v156);
    (*(v52 + 32))(&v57[v55], v53, v42);
    (*(*(v54 - 8) + 56))(v57, 0, 1, v54);
    v47 = v45;
    v58 = v57;
    a2 = &qword_27EE735B8;
    v40 = v150;
    v23 = v152;
LABEL_24:
    v59 = v143;
    sub_247D6B708(v58, v143);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE735B8, &unk_247DD4370);
    if ((*(*(v60 - 8) + 48))(v59, 1, v60) == 1)
    {
      break;
    }

    v61 = *(v60 + 48);
    v62 = v156;
    (*v148)(v155, v59, v156);
    v63 = v154;
    (*v147)(v157, v59 + v61, v154);
    v64 = sub_247D94864();
    v150 = v47;
    if (v64)
    {
      v65 = v64;
      if (*(v64 + 16) && (v66 = sub_247D94CC0(v136), (v67 & 1) != 0))
      {
        sub_247D6B778(*(v65 + 56) + 32 * v66, &v160);

        if (swift_dynamicCast())
        {
          goto LABEL_36;
        }
      }

      else
      {
      }
    }

    if (qword_27EE73298 != -1)
    {
      swift_once();
    }

    v68 = sub_247DD23CC();
    __swift_project_value_buffer(v68, qword_27EE7B920);
    v69 = v138;
    (*v146)(v138, v157, v63);

    v70 = sub_247DD23AC();
    v71 = sub_247DD2F0C();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = v23;
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *&v160 = v74;
      *v73 = v135;
      sub_247D6A33C(&qword_27EE735C0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v75 = sub_247DD321C();
      v76 = v63;
      v78 = v77;
      (*v149)(v69, v76);
      v79 = sub_247D72868(v75, v78, &v160);

      *(v73 + 4) = v79;
      *(v73 + 12) = 2080;
      v80 = *(v72 + 48);
      a2 = &qword_27EE735B8;
      LOBYTE(v159) = v80;
      v81 = TransferHost.State.description.getter();
      v83 = sub_247D72868(v81, v82, &v160);

      *(v73 + 14) = v83;
      _os_log_impl(&dword_247D56000, v70, v71, "[FileList] Could not read file-size of file=%s, state=%s", v73, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v74, -1, -1);
      v62 = v156;
      MEMORY[0x24C1BAF60](v73, -1, -1);
    }

    else
    {

      (*v149)(v69, v63);
      v62 = v156;
    }

LABEL_36:
    v84 = *v153;
    (*v153)(v158, v155, v62);
    v85 = sub_247DD207C();
    v87 = v86;
    v88 = sub_247D94864();
    if (v88)
    {
      v89 = v88;
      if (*(v88 + 16) && (v90 = sub_247D94CC0(v136), (v91 & 1) != 0))
      {
        sub_247D6B778(*(v89 + 56) + 32 * v90, &v160);

        if (swift_dynamicCast())
        {
          v92 = v159;
          goto LABEL_43;
        }
      }

      else
      {
      }
    }

    v92 = 0;
LABEL_43:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v160 = v40;
    v94 = sub_247D94C28(v158);
    v96 = v40[2];
    v97 = (v95 & 1) == 0;
    v98 = __OFADD__(v96, v97);
    v99 = v96 + v97;
    if (v98)
    {
      goto LABEL_67;
    }

    v100 = v95;
    if (v40[3] < v99)
    {
      sub_247DCF15C(v99, isUniquelyReferenced_nonNull_native);
      v94 = sub_247D94C28(v158);
      if ((v100 & 1) != (v101 & 1))
      {
        result = sub_247DD323C();
        __break(1u);
        return result;
      }

LABEL_48:
      v40 = v160;
      if (v100)
      {
        goto LABEL_11;
      }

      goto LABEL_49;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_48;
    }

    v109 = v94;
    sub_247DCFED0();
    v94 = v109;
    v40 = v160;
    if (v100)
    {
LABEL_11:
      v43 = (v40[7] + 24 * v94);
      *v43 = v85;
      v43[1] = v87;
      v43[2] = v92;

      v44 = *v141;
      v12 = v156;
      (*v141)(v158, v156);
      (*v149)(v157, v154);
      v44(v155, v12);
      v39 = v150;
      v23 = v152;
      goto LABEL_12;
    }

LABEL_49:
    v40[(v94 >> 6) + 8] |= 1 << v94;
    a2 = v145;
    v102 = v94;
    v12 = v156;
    v84(v40[6] + *(v145 + 72) * v94, v158, v156);
    v103 = (v40[7] + 24 * v102);
    *v103 = v85;
    v103[1] = v87;
    v103[2] = v92;
    v104 = *(a2 + 1);
    v104(v158, v12);
    (*v149)(v157, v154);
    v104(v155, v12);
    v105 = v40[2];
    v98 = __OFADD__(v105, 1);
    v106 = v105 + 1;
    if (v98)
    {
      goto LABEL_68;
    }

    v40[2] = v106;
    v39 = v150;
    v23 = v152;
    a2 = &qword_27EE735B8;
LABEL_12:
    v38 = v151;
  }

  if (qword_27EE73298 != -1)
  {
    swift_once();
  }

  v110 = sub_247DD23CC();
  __swift_project_value_buffer(v110, qword_27EE7B920);

  v111 = sub_247DD23AC();
  v112 = sub_247DD2F2C();

  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    *&v160 = v114;
    *v113 = v135;
    sub_247D6A33C(&qword_27EE738D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

    v115 = sub_247DD2C4C();
    v117 = v116;

    v118 = sub_247D72868(v115, v117, &v160);

    *(v113 + 4) = v118;
    *(v113 + 12) = 2080;
    LOBYTE(v159) = *(v152 + 48);
    v119 = TransferHost.State.description.getter();
    v121 = sub_247D72868(v119, v120, &v160);

    *(v113 + 14) = v121;
    _os_log_impl(&dword_247D56000, v111, v112, "[FileList] Received request, sending response=%s state=%s", v113, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v114, -1, -1);
    MEMORY[0x24C1BAF60](v113, -1, -1);
  }

  v122 = v132;
  LOBYTE(v160) = 8;
  sub_247D58468(&v160);
  *&v160 = 200;
  *(&v160 + 1) = v40;
  v161 = 0;

  v122(&v160);

  sub_247D6B598(v160, *(&v160 + 1), v161, SHIBYTE(v161));
}

uint64_t sub_247D615CC()
{
  v1 = v0;
  v2 = sub_247DD2ABC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 16);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v7 = v6;
  LOBYTE(v6) = sub_247DD2ADC();
  result = (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  if (!*(v1 + 72))
  {
    return result;
  }

  v9 = qword_27EE73298;

  if (v9 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v10 = sub_247DD23CC();
  __swift_project_value_buffer(v10, qword_27EE7B920);
  v11 = sub_247DD23AC();
  v12 = sub_247DD2F2C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_247D56000, v11, v12, "[Attestation] Closing attestation-channel-host", v13, 2u);
    MEMORY[0x24C1BAF60](v13, -1, -1);
  }

  sub_247DBBD10();

  *(v1 + 72) = 0;
}

uint64_t sub_247D617B8(void (*a1)(char *, unint64_t, uint64_t), void (*a2)(__int128 *), uint64_t a3, uint64_t a4)
{
  v122 = a3;
  v123 = a2;
  v124 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73600, &qword_247DD4390);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v112 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v112 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v112 - v14;
  v16 = type metadata accessor for FileRequest(0);
  v118 = *(v16 - 8);
  v119 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v113 = &v112 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v114 = (&v112 - v23);
  MEMORY[0x28223BE20](v22);
  v25 = &v112 - v24;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE735E8, &qword_247DD4388);
  MEMORY[0x28223BE20](v120);
  v121 = (&v112 - v26);
  v27 = sub_247DD20DC();
  v116 = *(v27 - 8);
  v117 = v27;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v112 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v112 - v32;
  MEMORY[0x28223BE20](v31);
  v115 = &v112 - v34;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v36 = result;
  v37 = *(result + OBJC_IVAR____TtC5Cosmo12TransferHost_filesRequestedCount);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
    goto LABEL_38;
  }

  *(result + OBJC_IVAR____TtC5Cosmo12TransferHost_filesRequestedCount) = v39;
  if (*(result + 48) < 8u)
  {
    v40 = qword_27EE73298;

    if (v40 == -1)
    {
LABEL_5:
      v41 = sub_247DD23CC();
      __swift_project_value_buffer(v41, qword_27EE7B920);
      sub_247D6BA04(v124, v19, type metadata accessor for FileRequest);

      v42 = sub_247DD23AC();
      v43 = sub_247DD2F0C();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v126 = v45;
        *v44 = 136315650;
        sub_247D6BA04(v19, v10, type metadata accessor for FileRequest);
        v47 = v118;
        v46 = v119;
        (*(v118 + 56))(v10, 0, 1, v119);
        sub_247D6BA6C(v10, v7, &qword_27EE73600, &qword_247DD4390);
        if ((*(v47 + 48))(v7, 1, v46) == 1)
        {
          v48 = 7104878;
          v49 = 0xE300000000000000;
        }

        else
        {
          v124 = v45;
          v91 = v114;
          sub_247D6B8C4(v7, v114, type metadata accessor for FileRequest);
          sub_247D6BA04(v91, v113, type metadata accessor for FileRequest);
          v48 = sub_247DD2CFC();
          v49 = v92;
          v45 = v124;
          sub_247D6B998(v91, type metadata accessor for FileRequest);
        }

        sub_247D6BAD4(v10, &qword_27EE73600, &qword_247DD4390);
        sub_247D6B998(v19, type metadata accessor for FileRequest);
        v93 = sub_247D72868(v48, v49, &v126);

        *(v44 + 4) = v93;
        *(v44 + 12) = 2080;
        v94 = sub_247D62550();
        v96 = sub_247D72868(v94, v95, &v126);

        *(v44 + 14) = v96;
        *(v44 + 22) = 2080;
        v125 = *(v36 + 48);
        v97 = TransferHost.State.description.getter();
        v99 = sub_247D72868(v97, v98, &v126);

        *(v44 + 24) = v99;
        _os_log_impl(&dword_247D56000, v42, v43, "[Request] Unexpected request=%s, %s state=%s", v44, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v45, -1, -1);
        MEMORY[0x24C1BAF60](v44, -1, -1);
      }

      else
      {

        sub_247D6B998(v19, type metadata accessor for FileRequest);
      }

      v100 = xmmword_247DD3EF0;
LABEL_33:
      v110 = v121;
      *v121 = v100;
      *(v110 + 16) = 2;
      swift_storeEnumTagMultiPayload();
      v123(v110);

      return sub_247D6BAD4(v110, &qword_27EE735E8, &qword_247DD4388);
    }

LABEL_38:
    swift_once();
    goto LABEL_5;
  }

  v50 = *(result + OBJC_IVAR____TtC5Cosmo12TransferHost_filesToTransfer);
  v51 = *(v50 + 16);

  v52 = v124;
  if (!v51)
  {
LABEL_21:
    if (qword_27EE73298 != -1)
    {
      swift_once();
    }

    v82 = sub_247DD23CC();
    __swift_project_value_buffer(v82, qword_27EE7B920);
    sub_247D6BA04(v52, v25, type metadata accessor for FileRequest);

    v83 = sub_247DD23AC();
    v84 = sub_247DD2F0C();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v126 = v86;
      *v85 = 136315650;
      sub_247D6BA04(v25, v15, type metadata accessor for FileRequest);
      v88 = v118;
      v87 = v119;
      (*(v118 + 56))(v15, 0, 1, v119);
      sub_247D6BA6C(v15, v13, &qword_27EE73600, &qword_247DD4390);
      if ((*(v88 + 48))(v13, 1, v87) == 1)
      {
        v89 = 7104878;
        v90 = 0xE300000000000000;
      }

      else
      {
        v124 = v86;
        v101 = v114;
        sub_247D6B8C4(v13, v114, type metadata accessor for FileRequest);
        sub_247D6BA04(v101, v113, type metadata accessor for FileRequest);
        v89 = sub_247DD2CFC();
        v90 = v102;
        v86 = v124;
        sub_247D6B998(v101, type metadata accessor for FileRequest);
      }

      sub_247D6BAD4(v15, &qword_27EE73600, &qword_247DD4390);
      sub_247D6B998(v25, type metadata accessor for FileRequest);
      v103 = sub_247D72868(v89, v90, &v126);

      *(v85 + 4) = v103;
      *(v85 + 12) = 2080;
      v104 = sub_247D62550();
      v106 = sub_247D72868(v104, v105, &v126);

      *(v85 + 14) = v106;
      *(v85 + 22) = 2080;
      v125 = *(v36 + 48);
      v107 = TransferHost.State.description.getter();
      v109 = sub_247D72868(v107, v108, &v126);

      *(v85 + 24) = v109;
      _os_log_impl(&dword_247D56000, v83, v84, "[Request] Could not find URL for request=%s, %s state=%s", v85, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v86, -1, -1);
      MEMORY[0x24C1BAF60](v85, -1, -1);
    }

    else
    {

      sub_247D6B998(v25, type metadata accessor for FileRequest);
    }

    v100 = xmmword_247DD3F10;
    goto LABEL_33;
  }

  v53 = sub_247D94C28(v52);
  if ((v54 & 1) == 0)
  {

    goto LABEL_21;
  }

  v55 = v115;
  v56 = v116[2];
  v57 = v117;
  v56(v115, *(v50 + 56) + v116[9] * v53, v117);

  if (*(v36 + 48) != 9)
  {
    LOBYTE(v126) = 9;
    sub_247D58468(&v126);
  }

  v58 = *(v36 + OBJC_IVAR____TtC5Cosmo12TransferHost_filesSentCount);
  v38 = __OFADD__(v58, 1);
  v59 = v58 + 1;
  if (v38)
  {
    __break(1u);
    goto LABEL_40;
  }

  *(v36 + OBJC_IVAR____TtC5Cosmo12TransferHost_filesSentCount) = v59;
  if (qword_27EE73298 != -1)
  {
LABEL_40:
    swift_once();
  }

  v60 = sub_247DD23CC();
  __swift_project_value_buffer(v60, qword_27EE7B920);
  v56(v33, v55, v57);
  v124 = v56;
  v56(v30, v55, v57);

  v61 = sub_247DD23AC();
  v62 = sub_247DD2F2C();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v126 = v119;
    *v63 = 136315906;
    sub_247D6A33C(&qword_27EE735C0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    LODWORD(v118) = v62;
    v64 = sub_247DD321C();
    v66 = v65;
    v114 = v61;
    v67 = v116[1];
    v67(v33, v117);
    v68 = sub_247D72868(v64, v66, &v126);

    *(v63 + 4) = v68;
    *(v63 + 12) = 2048;
    v70 = URL.fileSize.getter(v69);
    if (v71)
    {
      v72 = 0;
    }

    else
    {
      v72 = v70;
    }

    v67(v30, v117);
    *(v63 + 14) = v72;
    *(v63 + 22) = 2080;
    v73 = sub_247D62550();
    v75 = sub_247D72868(v73, v74, &v126);

    *(v63 + 24) = v75;
    *(v63 + 32) = 2080;
    v57 = v117;
    v125 = *(v36 + 48);
    v76 = TransferHost.State.description.getter();
    v78 = sub_247D72868(v76, v77, &v126);

    *(v63 + 34) = v78;
    v79 = v114;
    _os_log_impl(&dword_247D56000, v114, v118, "[Request] Returning file=%s size=%llu, %s state=%s", v63, 0x2Au);
    v80 = v119;
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v80, -1, -1);
    v81 = v63;
    v55 = v115;
    MEMORY[0x24C1BAF60](v81, -1, -1);
  }

  else
  {
    v67 = v116[1];
    v67(v30, v57);

    v67(v33, v57);
  }

  v111 = v121;
  v124(v121, v55, v57);
  *(v111 + *(type metadata accessor for CosmoFileHttpResponse(0) + 20)) = 200;
  swift_storeEnumTagMultiPayload();
  v123(v111);

  sub_247D6BAD4(v111, &qword_27EE735E8, &qword_247DD4388);
  return (v67)(v55, v57);
}

unint64_t sub_247D62550()
{
  sub_247DD304C();

  v0 = sub_247DD321C();
  MEMORY[0x24C1BA0A0](v0);

  MEMORY[0x24C1BA0A0](0xD000000000000012, 0x8000000247DD8C70);
  v1 = sub_247DD321C();
  MEMORY[0x24C1BA0A0](v1);

  return 0xD000000000000016;
}

uint64_t sub_247D62660(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5)
{
  v8 = sub_247DD20DC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v16 = result;
  v17 = *(result + OBJC_IVAR____TtC5Cosmo12TransferHost_filesToTransfer);
  if (!*(v17 + 16))
  {
  }

  v18 = sub_247D94C28(a1);
  if ((v19 & 1) == 0)
  {
  }

  v20 = v9[2];
  v20(v14, *(v17 + 56) + v9[9] * v18, v8);

  v20(v12, v14, v8);
  if ((a4 & 1) == 0)
  {
    v39 = qword_27EE73298;

    if (v39 != -1)
    {
      swift_once();
    }

    v40 = sub_247DD23CC();
    __swift_project_value_buffer(v40, qword_27EE7B920);
    v24 = sub_247DD23AC();
    v41 = sub_247DD2F2C();
    if (os_log_type_enabled(v24, v41))
    {
      v42 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v53[0] = v51;
      *v42 = 136315138;
      v50 = sub_247D62B98();
      v44 = v43;
      v35 = v9[1];
      v35(v12, v8);
      v45 = sub_247D72868(v50, v44, v53);

      *(v42 + 4) = v45;
      _os_log_impl(&dword_247D56000, v24, v41, "[Request] Finished writing HTTP response for %s", v42, 0xCu);
      v46 = v51;
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x24C1BAF60](v46, -1, -1);
      v38 = v42;
      goto LABEL_15;
    }

LABEL_16:

    v35 = v9[1];
    v35(v12, v8);
    goto LABEL_17;
  }

  v21 = qword_27EE73298;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_247DD23CC();
  __swift_project_value_buffer(v22, qword_27EE7B920);
  v23 = a3;
  v24 = sub_247DD23AC();
  v25 = sub_247DD2F0C();
  sub_247D6B9F8(a3, 1);
  if (!os_log_type_enabled(v24, v25))
  {
    goto LABEL_16;
  }

  v26 = swift_slowAlloc();
  LODWORD(v50) = v25;
  v27 = v26;
  v51 = swift_slowAlloc();
  v52 = a3;
  v53[0] = v51;
  *v27 = 136315394;
  v28 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
  v29 = sub_247DD2CFC();
  v31 = sub_247D72868(v29, v30, v53);

  *(v27 + 4) = v31;
  *(v27 + 12) = 2080;
  v32 = sub_247D62B98();
  v34 = v33;
  v35 = v9[1];
  v35(v12, v8);
  v36 = sub_247D72868(v32, v34, v53);

  *(v27 + 14) = v36;
  _os_log_impl(&dword_247D56000, v24, v50, "[Request] Failed writing HTTP resopnse with error=%s for %s", v27, 0x16u);
  v37 = v51;
  swift_arrayDestroy();
  MEMORY[0x24C1BAF60](v37, -1, -1);
  v38 = v27;
LABEL_15:
  MEMORY[0x24C1BAF60](v38, -1, -1);

LABEL_17:
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v47 = *(v16 + 40);
    ObjectType = swift_getObjectType();
    (*(v47 + 40))(v14, ObjectType, v47);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return (v35)(v14, v8);
}

uint64_t sub_247D62B98()
{
  sub_247DD304C();

  sub_247DD20DC();
  sub_247D6A33C(&qword_27EE735C0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  v0 = sub_247DD321C();
  MEMORY[0x24C1BA0A0](v0);

  v1 = MEMORY[0x24C1BA0A0](0x3D657A697320, 0xE600000000000000);
  URL.fileSize.getter(v1);
  v2 = sub_247DD321C();
  MEMORY[0x24C1BA0A0](v2);

  MEMORY[0x24C1BA0A0](0x3D6574617473202CLL, 0xE800000000000000);
  v3 = TransferHost.State.description.getter();
  MEMORY[0x24C1BA0A0](v3);

  return 0x3D656C6966;
}

uint64_t sub_247D62CFC(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4)
{
  v92 = a3;
  v93 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE735D8, &unk_247DD48D0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v85 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v85 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v85 - v15;
  v17 = type metadata accessor for RejectFileRequest(0);
  v89 = *(v17 - 8);
  v90 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v86 = &v85 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v87 = &v85 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v85 - v25;
  v88 = sub_247DD20DC();
  v91 = *(v88 - 8);
  v27 = MEMORY[0x28223BE20](v88);
  v29 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v85 - v30;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v33 = *(result + 48);
  v94 = result;
  if (v33 < 8)
  {
    if (qword_27EE73298 != -1)
    {
      swift_once();
    }

    v34 = sub_247DD23CC();
    __swift_project_value_buffer(v34, qword_27EE7B920);
    sub_247D6BA04(a1, v20, type metadata accessor for RejectFileRequest);

    v35 = sub_247DD23AC();
    v36 = sub_247DD2F0C();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v97 = v38;
      *v37 = 136315394;
      sub_247D6BA04(v20, v11, type metadata accessor for RejectFileRequest);
      v40 = v89;
      v39 = v90;
      (*(v89 + 56))(v11, 0, 1, v90);
      sub_247D6BA6C(v11, v8, &qword_27EE735D8, &unk_247DD48D0);
      if ((*(v40 + 48))(v8, 1, v39) == 1)
      {
        v41 = 7104878;
        v42 = 0xE300000000000000;
      }

      else
      {
        v71 = v87;
        sub_247D6B8C4(v8, v87, type metadata accessor for RejectFileRequest);
        sub_247D6BA04(v71, v86, type metadata accessor for RejectFileRequest);
        v41 = sub_247DD2CFC();
        v42 = v72;
        sub_247D6B998(v71, type metadata accessor for RejectFileRequest);
      }

      sub_247D6BAD4(v11, &qword_27EE735D8, &unk_247DD48D0);
      sub_247D6B998(v20, type metadata accessor for RejectFileRequest);
      v73 = sub_247D72868(v41, v42, &v97);

      *(v37 + 4) = v73;
      *(v37 + 12) = 2080;
      LOBYTE(v95) = *(v94 + 48);
      v74 = TransferHost.State.description.getter();
      v76 = sub_247D72868(v74, v75, &v97);

      *(v37 + 14) = v76;
      _os_log_impl(&dword_247D56000, v35, v36, "[Reject] Unexpected request=%s, state=%s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v38, -1, -1);
      MEMORY[0x24C1BAF60](v37, -1, -1);
    }

    else
    {

      sub_247D6B998(v20, type metadata accessor for RejectFileRequest);
    }

    v97 = xmmword_247DD3EF0;
    v98 = 258;
    v93(&v97);
  }

  v43 = *(result + OBJC_IVAR____TtC5Cosmo12TransferHost_filesToTransfer);
  if (!*(v43 + 16))
  {
LABEL_16:
    if (qword_27EE73298 != -1)
    {
      swift_once();
    }

    v62 = sub_247DD23CC();
    __swift_project_value_buffer(v62, qword_27EE7B920);
    sub_247D6BA04(a1, v26, type metadata accessor for RejectFileRequest);

    v63 = sub_247DD23AC();
    v64 = sub_247DD2F0C();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v97 = v66;
      *v65 = 136315394;
      sub_247D6BA04(v26, v16, type metadata accessor for RejectFileRequest);
      v68 = v89;
      v67 = v90;
      (*(v89 + 56))(v16, 0, 1, v90);
      sub_247D6BA6C(v16, v14, &qword_27EE735D8, &unk_247DD48D0);
      if ((*(v68 + 48))(v14, 1, v67) == 1)
      {
        v69 = 7104878;
        v70 = 0xE300000000000000;
      }

      else
      {
        v77 = v87;
        sub_247D6B8C4(v14, v87, type metadata accessor for RejectFileRequest);
        sub_247D6BA04(v77, v86, type metadata accessor for RejectFileRequest);
        v69 = sub_247DD2CFC();
        v70 = v78;
        sub_247D6B998(v77, type metadata accessor for RejectFileRequest);
      }

      sub_247D6BAD4(v16, &qword_27EE735D8, &unk_247DD48D0);
      sub_247D6B998(v26, type metadata accessor for RejectFileRequest);
      v79 = sub_247D72868(v69, v70, &v97);

      *(v65 + 4) = v79;
      *(v65 + 12) = 2080;
      LOBYTE(v95) = *(v94 + 48);
      v80 = TransferHost.State.description.getter();
      v82 = sub_247D72868(v80, v81, &v97);

      *(v65 + 14) = v82;
      _os_log_impl(&dword_247D56000, v63, v64, "[Reject] Could not find URL for request=%s, state=%s", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v66, -1, -1);
      MEMORY[0x24C1BAF60](v65, -1, -1);
    }

    else
    {

      sub_247D6B998(v26, type metadata accessor for RejectFileRequest);
    }

    v97 = xmmword_247DD3F10;
    v98 = 258;
    v93(&v97);
  }

  v44 = sub_247D94C28(a1);
  if ((v45 & 1) == 0)
  {

    goto LABEL_16;
  }

  v46 = v91[2];
  v47 = v88;
  v46(v31, *(v43 + 56) + v91[9] * v44, v88);

  if (qword_27EE73298 != -1)
  {
    swift_once();
  }

  v48 = sub_247DD23CC();
  __swift_project_value_buffer(v48, qword_27EE7B920);
  v46(v29, v31, v47);
  v49 = v94;

  v50 = sub_247DD23AC();
  v51 = sub_247DD2F2C();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *&v97 = v53;
    *v52 = 136315394;
    sub_247D6A33C(&qword_27EE735C0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v54 = sub_247DD321C();
    v56 = v55;
    v57 = v91[1];
    v57(v29, v88);
    v58 = sub_247D72868(v54, v56, &v97);

    *(v52 + 4) = v58;
    *(v52 + 12) = 2080;
    LOBYTE(v95) = *(v49 + 48);
    v59 = TransferHost.State.description.getter();
    v61 = sub_247D72868(v59, v60, &v97);

    *(v52 + 14) = v61;
    v47 = v88;
    _os_log_impl(&dword_247D56000, v50, v51, "[Reject] Marking file=%s as rejected, state=%s", v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v53, -1, -1);
    MEMORY[0x24C1BAF60](v52, -1, -1);
  }

  else
  {

    v57 = v91[1];
    v57(v29, v47);
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v83 = *(v49 + 40);
    ObjectType = swift_getObjectType();
    (*(v83 + 32))(v31, ObjectType, v83);
    swift_unknownObjectRelease();
  }

  v95 = xmmword_247DD3F00;
  v96 = 0;
  v93(&v95);

  return (v57)(v31, v47);
}

Swift::Void __swiftcall TransferHost.stop()()
{
  v1 = sub_247DD2A0C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_247DD2A2C();
  v5 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *(v0 + 16);
  aBlock[4] = sub_247D6A3CC;
  v13 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_18;
  v8 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v11 = MEMORY[0x277D84F90];
  sub_247D6A33C(&unk_27EE73AF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0, MEMORY[0x277D83970]);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v10);
}

void sub_247D63B7C(uint64_t a1)
{
  v3 = *(a1 + 48);
  if (v3 <= 9)
  {
    v15 = v1;
    v16 = v2;
    if (v3 - 2 > 4)
    {
      v14 = 3;
      sub_247D5A170(&v14, 0xD000000000000014, 0x8000000247DD8940);
    }

    else
    {
      if (qword_27EE73298 != -1)
      {
        swift_once();
      }

      v5 = sub_247DD23CC();
      __swift_project_value_buffer(v5, qword_27EE7B920);

      v6 = sub_247DD23AC();
      v7 = sub_247DD2F2C();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v13 = v9;
        *v8 = 136315138;
        v10 = TransferHost.State.description.getter();
        v12 = sub_247D72868(v10, v11, &v13);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_247D56000, v6, v7, "[Stop] Queueing stop until file-transfer-channel established, state=%s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v9);
        MEMORY[0x24C1BAF60](v9, -1, -1);
        MEMORY[0x24C1BAF60](v8, -1, -1);
      }

      *(a1 + 49) = *(a1 + 48);
    }
  }
}

uint64_t sub_247D63D34(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = a2;
    sub_247D60074(&v8, a3, a4);
  }

  return result;
}

uint64_t sub_247D63DB4(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = a2;
    sub_247D6A9B0(&v4);
  }

  return result;
}

uint64_t sub_247D63E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  v11 = sub_247DD2A0C();
  v22 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_247DD2A2C();
  v14 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v8 + 48);
  v17 = swift_allocObject();
  v17[2] = v8;
  v17[3] = a1;
  v17[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = a5;
  v18 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v23 = MEMORY[0x277D84F90];
  sub_247D6A33C(&unk_27EE73AF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0, MEMORY[0x277D83970]);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v16, v13, v18);
  _Block_release(v18);
  (*(v22 + 8))(v13, v11);
  (*(v14 + 8))(v16, v21);
}

uint64_t sub_247D640F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_27EE732B8 != -1)
  {
    swift_once();
  }

  v11 = sub_247DD23CC();
  __swift_project_value_buffer(v11, qword_27EE73FA0);

  v12 = sub_247DD23AC();
  v13 = sub_247DD2F2C();

  if (os_log_type_enabled(v12, v13))
  {
    v24 = a6;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26[0] = v15;
    *v14 = 67109378;
    *(v14 + 4) = a4;
    *(v14 + 8) = 2080;
    v16 = CosmoSerialChannelHost.description.getter();
    v18 = sub_247D72868(v16, v17, v26);

    *(v14 + 10) = v18;
    _os_log_impl(&dword_247D56000, v12, v13, "[Respond] Registered handler for messageType=%u, %s", v14, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x24C1BAF60](v15, -1, -1);
    v19 = v14;
    a6 = v24;
    MEMORY[0x24C1BAF60](v19, -1, -1);
  }

  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a1;
  *(v20 + 32) = a2;
  *(v20 + 40) = a3;
  v21 = OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_handlers;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(a1 + v21);
  *(a1 + v21) = 0x8000000000000000;
  sub_247DCF714(a6, v20, a4, isUniquelyReferenced_nonNull_native);
  *(a1 + v21) = v25;
  return swift_endAccess();
}

uint64_t sub_247D64310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *, uint64_t (*)(), void *))
{
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  sub_247DD1F5C();
  swift_allocObject();

  sub_247DD1F4C();
  sub_247D6AF5C();
  sub_247DD1F3C();

  LOWORD(v16) = v14;
  v17 = v15;
  v12 = swift_allocObject();
  v12[2] = sub_247D6AF58;
  v12[3] = v11;
  v12[4] = a6;

  a7(&v16, sub_247D6B098, v12);

  return sub_247D6A1F8(v17, *(&v17 + 1));
}

uint64_t sub_247D647F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(__int128 *, uint64_t (*)(), void *))
{
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  sub_247DD1F5C();
  swift_allocObject();

  sub_247DD1F4C();
  sub_247D6B168();
  sub_247DD1F3C();

  v15 = v14;
  v12 = swift_allocObject();
  v12[2] = sub_247D6C028;
  v12[3] = v11;
  v12[4] = a6;

  a7(&v15, sub_247D6B1BC, v12);

  return sub_247D6A1F8(v15, *(&v15 + 1));
}

uint64_t sub_247D64CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(__int128 *, uint64_t (*)(), void *))
{
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  sub_247DD1F5C();
  swift_allocObject();

  sub_247DD1F4C();
  sub_247D6B390();
  sub_247DD1F3C();

  v15 = v14;
  v12 = swift_allocObject();
  v12[2] = sub_247D6C028;
  v12[3] = v11;
  v12[4] = a6;

  a7(&v15, sub_247D6B424, v12);
}

uint64_t sub_247D6519C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9)
{
  if (a3)
  {
    return (a4)(a1, 0, 0, 1, a5, a6, a7, a8);
  }

  sub_247DD1F8C();
  swift_allocObject();
  sub_247D6A2E8(a1, a2);
  sub_247DD1F7C();
  a7();
  v14 = sub_247DD1F6C();
  v16 = v15;

  sub_247D6A2E8(v14, v16);
  a4(a9, v14, v16, 0);
  sub_247D6A1F8(v14, v16);
  sub_247D6A1F8(v14, v16);
  return sub_247D6A1F8(a1, a2);
}

uint64_t sub_247D65528(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (*(a1 + 32))
  {
    return a2(*a1, 0, 0, 1);
  }

  sub_247DD1F8C();
  swift_allocObject();

  sub_247DD1F7C();
  sub_247D6B460();
  v4 = sub_247DD1F6C();
  v6 = v5;

  sub_247D6A2E8(v4, v6);
  a2(6, v4, v6, 0);
  sub_247D6A1F8(v4, v6);
  sub_247D6A1F8(v4, v6);
}

uint64_t sub_247D65914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t))
{
  v25 = a7;
  v26 = a8;
  v10 = v8;
  v15 = sub_247DD2A0C();
  v30 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_247DD2A2C();
  v28 = *(v18 - 8);
  v29 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v10 + 48);
  v21 = swift_allocObject();
  v21[2] = v10;
  v21[3] = a1;
  v21[4] = a2;
  v21[5] = a3;
  v21[6] = a4;
  aBlock[4] = a6;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = v25;
  v22 = _Block_copy(aBlock);

  v26(a3, a4);
  sub_247DD2A1C();
  v31 = MEMORY[0x277D84F90];
  sub_247D6A33C(&unk_27EE73AF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0, MEMORY[0x277D83970]);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v20, v17, v22);
  _Block_release(v22);
  (*(v30 + 8))(v17, v15);
  (*(v28 + 8))(v20, v29);
}

void sub_247D65C0C(uint64_t a1, unint64_t a2)
{
  sub_247DD1F5C();
  swift_allocObject();
  sub_247DD1F4C();
  sub_247D6BDE8();
  sub_247DD1F3C();
  if (!v4)
  {

    return;
  }

  v7 = sub_247DD03F8(a1, a2);
  if (v8)
  {
    goto LABEL_10;
  }

  v28 = a1;
  v29 = a2;
  sub_247D6A2E8(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73530, &unk_247DD4320);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    sub_247D6BAD4(v26, &qword_27EE73538, &qword_247DD6100);
LABEL_9:
    v7 = sub_247DD0170(a1, a2);
LABEL_10:
    v10 = v7;
    v9 = v8;
    goto LABEL_11;
  }

  sub_247D6B5A8(v26, v30);
  __swift_project_boxed_opaque_existential_1(v30, v31);
  if ((sub_247DD310C() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(v30, v31);
  sub_247DD30FC();
  v9 = *(&v26[0] + 1);
  v10 = *&v26[0];
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
LABEL_11:
  if (qword_27EE73330 != -1)
  {
    swift_once();
  }

  v11 = sub_247DD23CC();
  __swift_project_value_buffer(v11, qword_27EE74460);

  v12 = v4;

  v13 = sub_247DD23AC();
  v14 = sub_247DD2F0C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30[0] = v16;
    *v15 = 136315906;
    v17 = sub_247D72868(v10, v9, v30);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_247D72868(0x657361656C2FLL, 0xE600000000000000, v30);
    *(v15 + 22) = 2080;
    *&v26[0] = v4;
    v18 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
    v19 = sub_247DD2CFC();
    v21 = sub_247D72868(v19, v20, v30);

    *(v15 + 24) = v21;
    *(v15 + 32) = 2080;
    v22 = CosmoMultiplexChannelHost.description.getter();
    v24 = sub_247D72868(v22, v23, v30);

    *(v15 + 34) = v24;
    _os_log_impl(&dword_247D56000, v13, v14, "[Respond] Failed to deserialize request from body=%s, type=%s error=%s %s", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v16, -1, -1);
    MEMORY[0x24C1BAF60](v15, -1, -1);
  }

  else
  {
  }

  sub_247D6AFB0();
  swift_allocError();
  *v25 = xmmword_247DD3EF0;
  *(v25 + 16) = 2;
  swift_willThrow();
}

void sub_247D66024(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  sub_247DD1F5C();
  swift_allocObject();
  sub_247DD1F4C();
  a4();
  sub_247DD1F3C();
  if (!v7)
  {

    return;
  }

  v13 = sub_247DD03F8(a1, a2);
  if (v14)
  {
    goto LABEL_10;
  }

  v36 = a1;
  v37 = a2;
  sub_247D6A2E8(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73530, &unk_247DD4320);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    sub_247D6BAD4(v34, &qword_27EE73538, &qword_247DD6100);
LABEL_9:
    v13 = sub_247DD0170(a1, a2);
LABEL_10:
    v16 = v13;
    v15 = v14;
    goto LABEL_11;
  }

  sub_247D6B5A8(v34, v38);
  __swift_project_boxed_opaque_existential_1(v38, v39);
  if ((sub_247DD310C() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(v38, v39);
  sub_247DD30FC();
  v15 = *(&v34[0] + 1);
  v16 = *&v34[0];
  __swift_destroy_boxed_opaque_existential_0Tm(v38);
LABEL_11:
  if (qword_27EE73330 != -1)
  {
    swift_once();
  }

  v17 = sub_247DD23CC();
  __swift_project_value_buffer(v17, qword_27EE74460);

  v18 = v7;

  v19 = sub_247DD23AC();
  v20 = sub_247DD2F0C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v40 = a3;
    v22 = a6;
    v23 = v21;
    v24 = swift_slowAlloc();
    v38[0] = v24;
    *v23 = 136315906;
    v25 = sub_247D72868(v16, v15, v38);

    *(v23 + 4) = v25;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_247D72868(v22, 0xE600000000000000, v38);
    *(v23 + 22) = 2080;
    *&v34[0] = v7;
    v26 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
    v27 = sub_247DD2CFC();
    v29 = sub_247D72868(v27, v28, v38);

    *(v23 + 24) = v29;
    *(v23 + 32) = 2080;
    v30 = CosmoMultiplexChannelHost.description.getter();
    v32 = sub_247D72868(v30, v31, v38);

    *(v23 + 34) = v32;
    _os_log_impl(&dword_247D56000, v19, v20, "[Respond] Failed to deserialize request from body=%s, type=%s error=%s %s", v23, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v24, -1, -1);
    MEMORY[0x24C1BAF60](v23, -1, -1);
  }

  else
  {
  }

  sub_247D6AFB0();
  swift_allocError();
  *v33 = xmmword_247DD3EF0;
  *(v33 + 16) = 2;
  swift_willThrow();
}

void sub_247D66448(uint64_t a1, unint64_t a2)
{
  sub_247DD1F5C();
  swift_allocObject();
  sub_247DD1F4C();
  type metadata accessor for FileRequest(0);
  sub_247D6A33C(&qword_27EE735F0, type metadata accessor for FileRequest, &protocol conformance descriptor for FileRequest);
  sub_247DD1F3C();
  if (!v4)
  {

    return;
  }

  v7 = sub_247DD03F8(a1, a2);
  if (v8)
  {
    goto LABEL_10;
  }

  v28 = a1;
  v29 = a2;
  sub_247D6A2E8(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73530, &unk_247DD4320);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    sub_247D6BAD4(v26, &qword_27EE73538, &qword_247DD6100);
LABEL_9:
    v7 = sub_247DD0170(a1, a2);
LABEL_10:
    v10 = v7;
    v9 = v8;
    goto LABEL_11;
  }

  sub_247D6B5A8(v26, v30);
  __swift_project_boxed_opaque_existential_1(v30, v31);
  if ((sub_247DD310C() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(v30, v31);
  sub_247DD30FC();
  v9 = *(&v26[0] + 1);
  v10 = *&v26[0];
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
LABEL_11:
  if (qword_27EE73330 != -1)
  {
    swift_once();
  }

  v11 = sub_247DD23CC();
  __swift_project_value_buffer(v11, qword_27EE74460);

  v12 = v4;

  v13 = sub_247DD23AC();
  v14 = sub_247DD2F0C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30[0] = v16;
    *v15 = 136315906;
    v17 = sub_247D72868(v10, v9, v30);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_247D72868(0x656C69662FLL, 0xE500000000000000, v30);
    *(v15 + 22) = 2080;
    *&v26[0] = v4;
    v18 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
    v19 = sub_247DD2CFC();
    v21 = sub_247D72868(v19, v20, v30);

    *(v15 + 24) = v21;
    *(v15 + 32) = 2080;
    v22 = CosmoMultiplexChannelHost.description.getter();
    v24 = sub_247D72868(v22, v23, v30);

    *(v15 + 34) = v24;
    _os_log_impl(&dword_247D56000, v13, v14, "[Respond] Failed to deserialize request from body=%s, type=%s error=%s %s", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v16, -1, -1);
    MEMORY[0x24C1BAF60](v15, -1, -1);
  }

  else
  {
  }

  sub_247D6AFB0();
  swift_allocError();
  *v25 = xmmword_247DD3EF0;
  *(v25 + 16) = 2;
  swift_willThrow();
}

void sub_247D66898(uint64_t a1, unint64_t a2)
{
  sub_247DD1F5C();
  swift_allocObject();
  sub_247DD1F4C();
  type metadata accessor for RejectFileRequest(0);
  sub_247D6A33C(&qword_27EE735C8, type metadata accessor for RejectFileRequest, &protocol conformance descriptor for RejectFileRequest);
  sub_247DD1F3C();
  if (!v4)
  {

    return;
  }

  v7 = sub_247DD03F8(a1, a2);
  if (v8)
  {
    goto LABEL_10;
  }

  v28 = a1;
  v29 = a2;
  sub_247D6A2E8(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73530, &unk_247DD4320);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    sub_247D6BAD4(v26, &qword_27EE73538, &qword_247DD6100);
LABEL_9:
    v7 = sub_247DD0170(a1, a2);
LABEL_10:
    v10 = v7;
    v9 = v8;
    goto LABEL_11;
  }

  sub_247D6B5A8(v26, v30);
  __swift_project_boxed_opaque_existential_1(v30, v31);
  if ((sub_247DD310C() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(v30, v31);
  sub_247DD30FC();
  v9 = *(&v26[0] + 1);
  v10 = *&v26[0];
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
LABEL_11:
  if (qword_27EE73330 != -1)
  {
    swift_once();
  }

  v11 = sub_247DD23CC();
  __swift_project_value_buffer(v11, qword_27EE74460);

  v12 = v4;

  v13 = sub_247DD23AC();
  v14 = sub_247DD2F0C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30[0] = v16;
    *v15 = 136315906;
    v17 = sub_247D72868(v10, v9, v30);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_247D72868(0x467463656A65722FLL, 0xEB00000000656C69, v30);
    *(v15 + 22) = 2080;
    *&v26[0] = v4;
    v18 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
    v19 = sub_247DD2CFC();
    v21 = sub_247D72868(v19, v20, v30);

    *(v15 + 24) = v21;
    *(v15 + 32) = 2080;
    v22 = CosmoMultiplexChannelHost.description.getter();
    v24 = sub_247D72868(v22, v23, v30);

    *(v15 + 34) = v24;
    _os_log_impl(&dword_247D56000, v13, v14, "[Respond] Failed to deserialize request from body=%s, type=%s error=%s %s", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v16, -1, -1);
    MEMORY[0x24C1BAF60](v15, -1, -1);
  }

  else
  {
  }

  sub_247D6AFB0();
  swift_allocError();
  *v25 = xmmword_247DD3EF0;
  *(v25 + 16) = 2;
  swift_willThrow();
}

uint64_t sub_247D66CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27EE73330 != -1)
  {
    swift_once();
  }

  v10 = sub_247DD23CC();
  __swift_project_value_buffer(v10, qword_27EE74460);

  v11 = sub_247DD23AC();
  v12 = sub_247DD2F2C();

  if (os_log_type_enabled(v11, v12))
  {
    v26 = a5;
    v13 = swift_slowAlloc();
    v25 = a2;
    v14 = swift_slowAlloc();
    v28[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_247D72868(0x657361656C2FLL, 0xE600000000000000, v28);
    *(v13 + 12) = 2080;
    v15 = CosmoMultiplexChannelHost.description.getter();
    v17 = sub_247D72868(v15, v16, v28);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_247D56000, v11, v12, "[Respond] Registered handler for path=%s, %s", v13, 0x16u);
    swift_arrayDestroy();
    v18 = v14;
    a2 = v25;
    MEMORY[0x24C1BAF60](v18, -1, -1);
    v19 = v13;
    a5 = v26;
    MEMORY[0x24C1BAF60](v19, -1, -1);
  }

  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a1;
  v22 = OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_handlers;
  swift_beginAccess();
  swift_retain_n();

  sub_247D6ACFC(a4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(a1 + v22);
  *(a1 + v22) = 0x8000000000000000;
  sub_247DCF568(sub_247D6BD70, v20, sub_247D6BDC4, v21, 0x657361656C2FLL, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  *(a1 + v22) = v27;
  return swift_endAccess();
}

uint64_t sub_247D66F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27EE73330 != -1)
  {
    swift_once();
  }

  v10 = sub_247DD23CC();
  __swift_project_value_buffer(v10, qword_27EE74460);

  v11 = sub_247DD23AC();
  v12 = sub_247DD2F2C();

  if (os_log_type_enabled(v11, v12))
  {
    v26 = a5;
    v13 = swift_slowAlloc();
    v25 = a2;
    v14 = swift_slowAlloc();
    v28[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_247D72868(0x65736F6C632FLL, 0xE600000000000000, v28);
    *(v13 + 12) = 2080;
    v15 = CosmoMultiplexChannelHost.description.getter();
    v17 = sub_247D72868(v15, v16, v28);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_247D56000, v11, v12, "[Respond] Registered handler for path=%s, %s", v13, 0x16u);
    swift_arrayDestroy();
    v18 = v14;
    a2 = v25;
    MEMORY[0x24C1BAF60](v18, -1, -1);
    v19 = v13;
    a5 = v26;
    MEMORY[0x24C1BAF60](v19, -1, -1);
  }

  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a1;
  v22 = OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_handlers;
  swift_beginAccess();
  swift_retain_n();

  sub_247D6ACFC(a4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(a1 + v22);
  *(a1 + v22) = 0x8000000000000000;
  sub_247DCF568(sub_247D6BB60, v20, sub_247D6BB6C, v21, 0x65736F6C632FLL, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  *(a1 + v22) = v27;
  return swift_endAccess();
}

uint64_t sub_247D67244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27EE73330 != -1)
  {
    swift_once();
  }

  v10 = sub_247DD23CC();
  __swift_project_value_buffer(v10, qword_27EE74460);

  v11 = sub_247DD23AC();
  v12 = sub_247DD2F2C();

  if (os_log_type_enabled(v11, v12))
  {
    v26 = a5;
    v13 = swift_slowAlloc();
    v25 = a2;
    v14 = swift_slowAlloc();
    v28[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_247D72868(0x73656C69662FLL, 0xE600000000000000, v28);
    *(v13 + 12) = 2080;
    v15 = CosmoMultiplexChannelHost.description.getter();
    v17 = sub_247D72868(v15, v16, v28);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_247D56000, v11, v12, "[Respond] Registered handler for path=%s, %s", v13, 0x16u);
    swift_arrayDestroy();
    v18 = v14;
    a2 = v25;
    MEMORY[0x24C1BAF60](v18, -1, -1);
    v19 = v13;
    a5 = v26;
    MEMORY[0x24C1BAF60](v19, -1, -1);
  }

  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a1;
  v22 = OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_handlers;
  swift_beginAccess();
  swift_retain_n();

  sub_247D6ACFC(a4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(a1 + v22);
  *(a1 + v22) = 0x8000000000000000;
  sub_247DCF568(sub_247D6B578, v20, sub_247D6B588, v21, 0x73656C69662FLL, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  *(a1 + v22) = v27;
  return swift_endAccess();
}

uint64_t sub_247D674EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27EE73330 != -1)
  {
    swift_once();
  }

  v10 = sub_247DD23CC();
  __swift_project_value_buffer(v10, qword_27EE74460);

  v11 = sub_247DD23AC();
  v12 = sub_247DD2F2C();

  if (os_log_type_enabled(v11, v12))
  {
    v26 = a5;
    v13 = swift_slowAlloc();
    v25 = a2;
    v14 = swift_slowAlloc();
    v28[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_247D72868(0x656C69662FLL, 0xE500000000000000, v28);
    *(v13 + 12) = 2080;
    v15 = CosmoMultiplexChannelHost.description.getter();
    v17 = sub_247D72868(v15, v16, v28);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_247D56000, v11, v12, "[Respond] Registered handler for path=%s, %s", v13, 0x16u);
    swift_arrayDestroy();
    v18 = v14;
    a2 = v25;
    MEMORY[0x24C1BAF60](v18, -1, -1);
    v19 = v13;
    a5 = v26;
    MEMORY[0x24C1BAF60](v19, -1, -1);
  }

  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a1;
  v22 = OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_handlers;
  swift_beginAccess();
  swift_retain_n();

  sub_247D6ACFC(a4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(a1 + v22);
  *(a1 + v22) = 0x8000000000000000;
  sub_247DCF568(sub_247D6B8A8, v20, sub_247D6B8B4, v21, 0x656C69662FLL, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  *(a1 + v22) = v27;
  return swift_endAccess();
}

uint64_t sub_247D67794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27EE73330 != -1)
  {
    swift_once();
  }

  v9 = sub_247DD23CC();
  __swift_project_value_buffer(v9, qword_27EE74460);

  v10 = sub_247DD23AC();
  v11 = sub_247DD2F2C();

  if (os_log_type_enabled(v10, v11))
  {
    v25 = a5;
    v12 = swift_slowAlloc();
    v24 = a2;
    v13 = swift_slowAlloc();
    v28[0] = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_247D72868(0x467463656A65722FLL, 0xEB00000000656C69, v28);
    *(v12 + 12) = 2080;
    v14 = CosmoMultiplexChannelHost.description.getter();
    v16 = sub_247D72868(v14, v15, v28);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_247D56000, v10, v11, "[Respond] Registered handler for path=%s, %s", v12, 0x16u);
    swift_arrayDestroy();
    v17 = v13;
    a2 = v24;
    MEMORY[0x24C1BAF60](v17, -1, -1);
    v18 = v12;
    a5 = v25;
    MEMORY[0x24C1BAF60](v18, -1, -1);
  }

  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a1;
  v21 = OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_handlers;
  swift_beginAccess();
  swift_retain_n();

  sub_247D6ACFC(a4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(a1 + v21);
  *(a1 + v21) = 0x8000000000000000;
  sub_247DCF568(sub_247D6B7EC, v19, sub_247D6B7F8, v20, 0x467463656A65722FLL, 0xEB00000000656C69, isUniquelyReferenced_nonNull_native);
  *(a1 + v21) = v27;
  return swift_endAccess();
}

uint64_t sub_247D67A50(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(__int128 *, uint64_t (*)(), uint64_t))
{
  sub_247D65C0C(a1, a2);
  LOBYTE(v11) = v12;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;

  a6(&v11, sub_247D6BE3C, v9);
}

uint64_t sub_247D67B70(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t, uint64_t (*)(), uint64_t))
{
  sub_247D66024(a1, a2, a5, sub_247D6BB88, &type metadata for CloseRequest, 0x65736F6C632FLL);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;

  a6(v10, sub_247D6BBDC, v9);
}

uint64_t sub_247D67CAC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t, uint64_t (*)(), uint64_t))
{
  sub_247D66024(a1, a2, a5, sub_247D6B624, &type metadata for FileListRequest, 0x73656C69662FLL);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;

  a6(v10, sub_247D6B678, v9);
}

uint64_t sub_247D67DE8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t (*)(), uint64_t))
{
  v11 = type metadata accessor for FileRequest(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  sub_247D66448(a1, a2);
  sub_247D6B8C4(v14, v16, type metadata accessor for FileRequest);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;

  a6(v16, sub_247D6B92C, v17);

  return sub_247D6B998(v16, type metadata accessor for FileRequest);
}

uint64_t sub_247D67F98(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t (*)(), uint64_t))
{
  v11 = type metadata accessor for RejectFileRequest(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  sub_247D66898(a1, a2);
  sub_247D6B8C4(v14, v16, type metadata accessor for RejectFileRequest);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;

  a6(v16, sub_247D6B808, v17);

  return sub_247D6B998(v16, type metadata accessor for RejectFileRequest);
}

uint64_t sub_247D68148(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(uint64_t *, __n128))
{
  if (a4)
  {
    v11 = a1;
    v12 = a2;
    LOBYTE(v13) = a3;
    v16 = 1;
    v7.n128_f64[0] = sub_247D6B69C(a1, a2, a3);
  }

  else
  {
    v14 = &type metadata for LeaseRequest.Response;
    v9 = a1;
    v15 = sub_247D6BE54();
    LODWORD(v11) = v9;
    v12 = a2;
    v13 = a3;
    v16 = 0;
  }

  a5(&v11, v7);
  return sub_247D6BAD4(&v11, &qword_27EE73588, &qword_247DD4350);
}

uint64_t sub_247D681FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, __n128))
{
  if ((a3 & 0x100) != 0)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
    v13 = 1;
    v6.n128_f64[0] = sub_247D6B69C(a1, a2, a3);
  }

  else
  {
    v11 = &type metadata for FileListRequest.Response;
    LODWORD(v8) = a1;
    v12 = sub_247D6B6B4();
    v9 = a2;
    v13 = 0;
  }

  a4(&v8, v6);
  return sub_247D6BAD4(&v8, &qword_27EE73588, &qword_247DD4350);
}

uint64_t sub_247D682A0(uint64_t a1, void (*a2)(__int128 *))
{
  v4 = type metadata accessor for CosmoFileHttpResponse(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE735E8, &qword_247DD4388);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  sub_247D6BA6C(a1, &v13 - v8, &qword_27EE735E8, &qword_247DD4388);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = v9[16];
    v13 = *v9;
    v14 = v10;
    v17 = 1;
    a2(&v13);
  }

  else
  {
    sub_247D6B8C4(v9, v6, type metadata accessor for CosmoFileHttpResponse);
    v15 = v4;
    v16 = sub_247D6A33C(&qword_27EE735F8, type metadata accessor for CosmoFileHttpResponse, &protocol conformance descriptor for CosmoFileHttpResponse);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
    sub_247D6BA04(v6, boxed_opaque_existential_1, type metadata accessor for CosmoFileHttpResponse);
    v17 = 0;
    a2(&v13);
    sub_247D6B998(v6, type metadata accessor for CosmoFileHttpResponse);
  }

  return sub_247D6BAD4(&v13, &qword_27EE73588, &qword_247DD4350);
}

uint64_t sub_247D684A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t))
{
  if ((a3 & 0x100) != 0)
  {
    v11[0] = a1;
    v11[1] = a2;
    v12 = a3;
    v15 = 1;
    v9.n128_f64[0] = sub_247D6B69C(a1, a2, a3);
  }

  else
  {
    v13 = a6;
    v8 = a1;
    v14 = a7(a1, a2);
    LODWORD(v11[0]) = v8;
    v15 = 0;
  }

  (a4)(v11, v9);
  return sub_247D6BAD4(v11, &qword_27EE73588, &qword_247DD4350);
}

uint64_t sub_247D68534(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(char *, _BYTE *, uint64_t, void), uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    v14 = result;

    sub_247D65C0C(v14, a2);
    v40 = v35;
    sub_247D6BA6C(a3, &v35, &qword_27EE73588, &qword_247DD4350);
    if (v37)
    {
      *v38 = v35;
      *&v38[16] = v36;
      v39 = 1;
LABEL_4:
      a6(&v40, v38, a4, a5 & 1);
      sub_247D6A24C(a6, a7);
      return sub_247D6AD58(*v38, *&v38[8], *&v38[16], v39);
    }

    sub_247D6B5A8(&v35, v34);
    sub_247D6B5C0(v34, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73590, &qword_247DD4358);
    if (swift_dynamicCast())
    {
      if (*(&v31 + 1) != 1)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        *v38 = v30;
        *&v38[8] = v31;
        v39 = 0;
        goto LABEL_4;
      }

      v15 = v30;
      v16 = v31;
    }

    else
    {
      v16 = 0;
      v15 = 0;
      v30 = 0;
      *&v31 = 0;
      *(&v31 + 1) = 1;
    }

    sub_247D6BDD4(v15, v16, 1);
    if (qword_27EE73330 != -1)
    {
      swift_once();
    }

    v17 = sub_247DD23CC();
    __swift_project_value_buffer(v17, qword_27EE74460);
    sub_247D6B5C0(v34, v33);
    v18 = sub_247DD23AC();
    v19 = sub_247DD2F0C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32 = v21;
      *v20 = 136315138;
      sub_247D6B5C0(v33, &v30);
      sub_247D6BA6C(&v30, &v28, &qword_27EE73598, &qword_247DD4360);
      if (v29)
      {
        sub_247D6B5A8(&v28, v27);
        sub_247D6B5C0(v27, v26);
        v22 = sub_247DD2CFC();
        v24 = v23;
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
      }

      else
      {
        v24 = 0xE300000000000000;
        v22 = 7104878;
      }

      sub_247D6BAD4(&v30, &qword_27EE73598, &qword_247DD4360);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      v25 = sub_247D72868(v22, v24, &v32);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_247D56000, v18, v19, "[Respond] Could not cast %s into response type", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x24C1BAF60](v21, -1, -1);
      MEMORY[0x24C1BAF60](v20, -1, -1);
      sub_247D6A24C(a6, a7);
    }

    else
    {
      sub_247D6A24C(a6, a7);

      __swift_destroy_boxed_opaque_existential_0Tm(v33);
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v34);
  }

  return result;
}

uint64_t sub_247D688D8(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(uint64_t, __int128 *, uint64_t, void), uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    v15 = result;

    sub_247D66024(v15, a2, a8, sub_247D6BB88, &type metadata for CloseRequest, 0x65736F6C632FLL);
    v16 = sub_247D6BA6C(a3, &v35, &qword_27EE73588, &qword_247DD4350);
    if (v37)
    {
      v38 = v35;
      LOBYTE(v39) = v36;
      HIBYTE(v39) = 1;
LABEL_6:
      a6(v16, &v38, a4, a5 & 1);
      sub_247D6A24C(a6, a7);
      return sub_247D6BB7C(v38, *(&v38 + 1), v39, SHIBYTE(v39));
    }

    sub_247D6B5A8(&v35, v34);
    sub_247D6B5C0(v34, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73590, &qword_247DD4358);
    if (swift_dynamicCast())
    {
      v31 = 0;
      v16 = __swift_destroy_boxed_opaque_existential_0Tm(v34);
      v38 = v30;
      v39 = 0;
      goto LABEL_6;
    }

    if (qword_27EE73330 != -1)
    {
      swift_once();
    }

    v17 = sub_247DD23CC();
    __swift_project_value_buffer(v17, qword_27EE74460);
    sub_247D6B5C0(v34, v33);
    v18 = sub_247DD23AC();
    v19 = sub_247DD2F0C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32 = v21;
      *v20 = 136315138;
      sub_247D6B5C0(v33, &v30);
      sub_247D6BA6C(&v30, &v28, &qword_27EE73598, &qword_247DD4360);
      if (v29)
      {
        sub_247D6B5A8(&v28, v27);
        sub_247D6B5C0(v27, v26);
        v22 = sub_247DD2CFC();
        v24 = v23;
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
      }

      else
      {
        v24 = 0xE300000000000000;
        v22 = 7104878;
      }

      sub_247D6BAD4(&v30, &qword_27EE73598, &qword_247DD4360);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      v25 = sub_247D72868(v22, v24, &v32);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_247D56000, v18, v19, "[Respond] Could not cast %s into response type", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x24C1BAF60](v21, -1, -1);
      MEMORY[0x24C1BAF60](v20, -1, -1);
      sub_247D6A24C(a6, a7);
    }

    else
    {
      sub_247D6A24C(a6, a7);

      __swift_destroy_boxed_opaque_existential_0Tm(v33);
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v34);
  }

  return result;
}

uint64_t sub_247D68C84(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(uint64_t, __int128 *, uint64_t, void), uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    v15 = result;

    sub_247D66024(v15, a2, a8, sub_247D6B624, &type metadata for FileListRequest, 0x73656C69662FLL);
    v16 = sub_247D6BA6C(a3, &v35, &qword_27EE73588, &qword_247DD4350);
    if (v37)
    {
      v38 = v35;
      LOBYTE(v39) = v36;
      HIBYTE(v39) = 1;
LABEL_7:
      a6(v16, &v38, a4, a5 & 1);
      sub_247D6A24C(a6, a7);
      return sub_247D6B598(v38, *(&v38 + 1), v39, SHIBYTE(v39));
    }

    sub_247D6B5A8(&v35, v34);
    sub_247D6B5C0(v34, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73590, &qword_247DD4358);
    if (swift_dynamicCast())
    {
      if (v31)
      {
        v16 = __swift_destroy_boxed_opaque_existential_0Tm(v34);
        *&v38 = v30;
        *(&v38 + 1) = v31;
        v39 = 0;
        goto LABEL_7;
      }
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    if (qword_27EE73330 != -1)
    {
      swift_once();
    }

    v17 = sub_247DD23CC();
    __swift_project_value_buffer(v17, qword_27EE74460);
    sub_247D6B5C0(v34, v33);
    v18 = sub_247DD23AC();
    v19 = sub_247DD2F0C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32 = v21;
      *v20 = 136315138;
      sub_247D6B5C0(v33, &v30);
      sub_247D6BA6C(&v30, &v28, &qword_27EE73598, &qword_247DD4360);
      if (v29)
      {
        sub_247D6B5A8(&v28, v27);
        sub_247D6B5C0(v27, v26);
        v22 = sub_247DD2CFC();
        v24 = v23;
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
      }

      else
      {
        v24 = 0xE300000000000000;
        v22 = 7104878;
      }

      sub_247D6BAD4(&v30, &qword_27EE73598, &qword_247DD4360);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      v25 = sub_247D72868(v22, v24, &v32);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_247D56000, v18, v19, "[Respond] Could not cast %s into response type", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x24C1BAF60](v21, -1, -1);
      MEMORY[0x24C1BAF60](v20, -1, -1);
      sub_247D6A24C(a6, a7);
    }

    else
    {
      sub_247D6A24C(a6, a7);

      __swift_destroy_boxed_opaque_existential_0Tm(v33);
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v34);
  }

  return result;
}

uint64_t sub_247D69044(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5, void (*a6)(void, void, void, void), uint64_t a7, uint64_t a8)
{
  v47 = a5;
  v48 = a4;
  v49 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE735E0, &qword_247DD4380);
  MEMORY[0x28223BE20](v12 - 8);
  v46 = &v42 - v13;
  v14 = type metadata accessor for CosmoFileHttpResponse(0);
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x28223BE20](v14);
  v43 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE735E8, &qword_247DD4388);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  v19 = type metadata accessor for FileRequest(0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v20);
  v50 = a6;
  if (a6)
  {
    v25 = &v42 - v24;

    sub_247D66448(a1, a2);
    v26 = v25;
    sub_247D6B8C4(v22, v25, type metadata accessor for FileRequest);
    sub_247D6BA6C(v49, &v59, &qword_27EE73588, &qword_247DD4350);
    if (v61)
    {
      v27 = v60;
      *v18 = v59;
      v18[16] = v27;
    }

    else
    {
      sub_247D6B5A8(&v59, v58);
      sub_247D6B5C0(v58, v57);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73590, &qword_247DD4358);
      v29 = v45;
      v28 = v46;
      if ((swift_dynamicCast() & 1) == 0)
      {
        (*(v44 + 56))(v28, 1, 1, v29);
        sub_247D6BAD4(v28, &qword_27EE735E0, &qword_247DD4380);
        if (qword_27EE73330 != -1)
        {
          swift_once();
        }

        v33 = sub_247DD23CC();
        __swift_project_value_buffer(v33, qword_27EE74460);
        sub_247D6B5C0(v58, v57);
        v34 = sub_247DD23AC();
        v35 = sub_247DD2F0C();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v56 = v37;
          *v36 = 136315138;
          sub_247D6B5C0(v57, v55);
          sub_247D6BA6C(v55, &v53, &qword_27EE73598, &qword_247DD4360);
          if (v54)
          {
            sub_247D6B5A8(&v53, v52);
            sub_247D6B5C0(v52, &v51);
            v38 = sub_247DD2CFC();
            v40 = v39;
            __swift_destroy_boxed_opaque_existential_0Tm(v52);
          }

          else
          {
            v40 = 0xE300000000000000;
            v38 = 7104878;
          }

          sub_247D6BAD4(v55, &qword_27EE73598, &qword_247DD4360);
          __swift_destroy_boxed_opaque_existential_0Tm(v57);
          v41 = sub_247D72868(v38, v40, &v56);

          *(v36 + 4) = v41;
          _os_log_impl(&dword_247D56000, v34, v35, "[Respond] Could not cast %s into response type", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v37);
          MEMORY[0x24C1BAF60](v37, -1, -1);
          MEMORY[0x24C1BAF60](v36, -1, -1);
          sub_247D6A24C(v50, a7);
        }

        else
        {
          sub_247D6A24C(v50, a7);

          __swift_destroy_boxed_opaque_existential_0Tm(v57);
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v58);
        return sub_247D6B998(v26, type metadata accessor for FileRequest);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v58);
      (*(v44 + 56))(v28, 0, 1, v29);
      v30 = v28;
      v31 = v43;
      sub_247D6B8C4(v30, v43, type metadata accessor for CosmoFileHttpResponse);
      sub_247D6B8C4(v31, v18, type metadata accessor for CosmoFileHttpResponse);
    }

    swift_storeEnumTagMultiPayload();
    v32 = v50;
    v50(v25, v18, v48, v47 & 1);
    sub_247D6A24C(v32, a7);
    sub_247D6BAD4(v18, &qword_27EE735E8, &qword_247DD4388);
    return sub_247D6B998(v26, type metadata accessor for FileRequest);
  }

  return result;
}

uint64_t sub_247D69618(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(_BYTE *, __int128 *, uint64_t, void), uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for RejectFileRequest(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v16);
  v33 = &v33 - v20;
  if (a6)
  {

    sub_247D66898(a1, a2);
    v21 = v18;
    v22 = v33;
    sub_247D6B8C4(v21, v33, type metadata accessor for RejectFileRequest);
    sub_247D6BA6C(a3, &v43, &qword_27EE73588, &qword_247DD4350);
    if (v45)
    {
      v46 = v43;
      LOBYTE(v47) = v44;
      HIBYTE(v47) = 1;
    }

    else
    {
      sub_247D6B5A8(&v43, v42);
      sub_247D6B5C0(v42, v41);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73590, &qword_247DD4358);
      if ((swift_dynamicCast() & 1) == 0)
      {
        if (qword_27EE73330 != -1)
        {
          swift_once();
        }

        v24 = sub_247DD23CC();
        __swift_project_value_buffer(v24, qword_27EE74460);
        sub_247D6B5C0(v42, v41);
        v25 = sub_247DD23AC();
        v26 = sub_247DD2F0C();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v40 = v28;
          *v27 = 136315138;
          sub_247D6B5C0(v41, &v38);
          sub_247D6BA6C(&v38, &v36, &qword_27EE73598, &qword_247DD4360);
          if (v37)
          {
            sub_247D6B5A8(&v36, v35);
            sub_247D6B5C0(v35, &v34);
            v29 = sub_247DD2CFC();
            v31 = v30;
            __swift_destroy_boxed_opaque_existential_0Tm(v35);
          }

          else
          {
            v31 = 0xE300000000000000;
            v29 = 7104878;
          }

          sub_247D6BAD4(&v38, &qword_27EE73598, &qword_247DD4360);
          __swift_destroy_boxed_opaque_existential_0Tm(v41);
          v32 = sub_247D72868(v29, v31, &v40);

          *(v27 + 4) = v32;
          _os_log_impl(&dword_247D56000, v25, v26, "[Respond] Could not cast %s into response type", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v28);
          MEMORY[0x24C1BAF60](v28, -1, -1);
          MEMORY[0x24C1BAF60](v27, -1, -1);
          sub_247D6A24C(a6, a7);

          __swift_destroy_boxed_opaque_existential_0Tm(v42);
          v23 = v33;
          return sub_247D6B998(v23, type metadata accessor for RejectFileRequest);
        }

        sub_247D6A24C(a6, a7);

        __swift_destroy_boxed_opaque_existential_0Tm(v41);
        __swift_destroy_boxed_opaque_existential_0Tm(v42);
LABEL_7:
        v23 = v22;
        return sub_247D6B998(v23, type metadata accessor for RejectFileRequest);
      }

      v39 = 0;
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      v46 = v38;
      v47 = 0;
    }

    a6(v22, &v46, a4, a5 & 1);
    sub_247D6A24C(a6, a7);
    sub_247D6BB7C(v46, *(&v46 + 1), v47, SHIBYTE(v47));
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_247D69A48()
{
  v0 = sub_247DD2CAC();
  v1 = MEMORY[0x24C1BA120](v0);

  return v1;
}

uint64_t sub_247D69A84(uint64_t a1)
{
  sub_247DD2CAC();
  sub_247DD2D7C();
}

uint64_t sub_247D69AD8(uint64_t a1)
{
  sub_247DD2CAC();
  sub_247DD32BC();
  sub_247DD2D7C();
  v1 = sub_247DD32EC();

  return v1;
}

uint64_t sub_247D69B54(uint64_t a1, id *a2)
{
  result = sub_247DD2C8C();
  *a2 = 0;
  return result;
}

uint64_t sub_247D69BCC(uint64_t a1, id *a2)
{
  v3 = sub_247DD2C9C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_247D69C4C@<X0>(uint64_t *a2@<X8>)
{
  sub_247DD2CAC();
  v3 = sub_247DD2C7C();

  *a2 = v3;
  return result;
}

uint64_t sub_247D69D34(uint64_t a1, uint64_t a2)
{
  sub_247DD32BC();
  swift_getWitnessTable();
  sub_247DD227C();
  return sub_247DD32EC();
}

uint64_t sub_247D69D9C(void *a1, uint64_t *a2)
{
  v2 = sub_247DD2CAC();
  v4 = v3;
  if (v2 == sub_247DD2CAC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_247DD322C();
  }

  return v7 & 1;
}

uint64_t sub_247D69E24(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_247DD226C();
}

uint64_t sub_247D69E90@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_247DD2C7C();

  *a2 = v3;
  return result;
}

uint64_t sub_247D69ED8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_247DD2CAC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_247D69F04(uint64_t a1)
{
  v2 = sub_247D6A33C(&qword_27EE73650, type metadata accessor for FileAttributeKey, &unk_247DD4508);
  v3 = sub_247D6A33C(&qword_27EE73658, type metadata accessor for FileAttributeKey, &unk_247DD445C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void _s5Cosmo20TransferHostDelegatePAAE16requestedPinCodeyyyAA0fG0VcF_0()
{
  if (qword_27EE73298 != -1)
  {
    swift_once();
  }

  v0 = sub_247DD23CC();
  __swift_project_value_buffer(v0, qword_27EE7B920);
  oslog = sub_247DD23AC();
  v1 = sub_247DD2F2C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_247D56000, oslog, v1, "IGNORING: using PIN-less flow", v2, 2u);
    MEMORY[0x24C1BAF60](v2, -1, -1);
  }
}

uint64_t type metadata accessor for TransferHost(uint64_t a1)
{
  result = qword_27EE733E0;
  if (!qword_27EE733E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_247D6A0F4()
{
  result = qword_27EE739A0;
  if (!qword_27EE739A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE739A0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_247D6A1F8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_247D6A24C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_247D6A25C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_247D6A1F8(result, a2);
  }

  return result;
}

uint64_t sub_247D6A270()
{

  sub_247D6A1F8(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247D6A2E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_247D6A33C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_247D6A384()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_247D6A3D8()
{
  result = qword_27EE733D0;
  if (!qword_27EE733D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE733D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransferHost.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransferHost.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_247D6A61C(uint64_t a1)
{
  sub_247D6A7F4(319, &qword_27EE733F0, MEMORY[0x277CC95F0]);
  if (v1 <= 0x3F)
  {
    sub_247D6A7F4(319, &unk_27EE733F8, type metadata accessor for NetworkDescriptor);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_247D6A7F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_247DD2F9C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for TransferHost.Configuration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TransferHost.Configuration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_247D6A9B0(char *a1)
{
  v3 = v1;
  v5 = sub_247DD2ABC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = *(v3 + 16);
  *v8 = v10;
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v11 = v10;
  LOBYTE(v10) = sub_247DD2ADC();
  result = (*(v6 + 8))(v8, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(v3 + 48) > 0xAu)
  {
    return result;
  }

  LOBYTE(v29) = 11;
  sub_247D58468(&v29);
  v2 = (v3 + 112);
  v8 = *(v3 + 112);
  *(v3 + 49) = 12;
  v5 = *(v3 + 120);
  if (v8)
  {
    v13 = qword_27EE73298;

    if (v13 == -1)
    {
LABEL_5:
      v14 = sub_247DD23CC();
      __swift_project_value_buffer(v14, qword_27EE7B920);
      v15 = sub_247DD23AC();
      v16 = sub_247DD2F2C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_247D56000, v15, v16, "[Close] Found incomplete onStart() lambda, completing with error", v17, 2u);
        MEMORY[0x24C1BAF60](v17, -1, -1);
      }

      sub_247D6ADD0();
      v18 = swift_allocError();
      *v19 = xmmword_247DD3F30;
      v29 = v18;
      v30 = 0;
      v31 = 1;
      v8(&v29);
      sub_247D6A24C(v8, v5);
      sub_247D6AE24(v29, v30, v31);
      v20 = *(v3 + 112);
      v5 = *(v3 + 120);
      goto LABEL_9;
    }

LABEL_15:
    swift_once();
    goto LABEL_5;
  }

  v20 = 0;
LABEL_9:
  *v2 = 0;
  v2[1] = 0;
  sub_247D6A24C(v20, v5);
  sub_247D615CC();
  v21 = *(v3 + 80);
  v22 = *(v3 + 88);
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  sub_247D6A24C(v21, v22);
  v23 = *(v3 + 96);
  v24 = *(v3 + 104);
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  sub_247D6A24C(v23, v24);
  v25 = OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferHost;
  if (*(v3 + OBJC_IVAR____TtC5Cosmo12TransferHost_fileTransferHost))
  {

    sub_247DC9468();
  }

  *(v3 + v25) = 0;

  *(v3 + OBJC_IVAR____TtC5Cosmo12TransferHost_spake2Prover) = 0;

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v26 = *(v3 + 40);
    ObjectType = swift_getObjectType();
    HIBYTE(v28) = v9;
    (*(v26 + 48))(&v28 + 7, ObjectType, v26);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_247D6ACFC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_247D6AD0C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247D6AD58(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_247D6AD68(a1, a2, a3);
  }

  else
  {
  }
}

uint64_t sub_247D6AD68(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t objectdestroy_88Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_247D6ADD0()
{
  result = qword_27EE734F0;
  if (!qword_27EE734F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE734F0);
  }

  return result;
}

void sub_247D6AE24(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_247D6A1F8(a1, a2);
  }
}

uint64_t sub_247D6AE30(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_247D6AF20()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_247D6AF5C()
{
  result = qword_27EE73528;
  if (!qword_27EE73528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73528);
  }

  return result;
}

unint64_t sub_247D6AFB0()
{
  result = qword_27EE73540;
  if (!qword_27EE73540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73540);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_247D6B0BC()
{
  result = qword_27EE73550;
  if (!qword_27EE73550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73550);
  }

  return result;
}

unint64_t sub_247D6B168()
{
  result = qword_27EE73558;
  if (!qword_27EE73558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73558);
  }

  return result;
}

unint64_t sub_247D6B224()
{
  result = qword_27EE73560;
  if (!qword_27EE73560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73560);
  }

  return result;
}

uint64_t sub_247D6B278(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_247D6A2E8(a1, a2);
  }

  return a1;
}

uint64_t objectdestroy_108Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_247D6B34C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 16);
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v8 = a4 & 1;
  return v5(v7);
}

unint64_t sub_247D6B390()
{
  result = qword_27EE73568;
  if (!qword_27EE73568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73568);
  }

  return result;
}

uint64_t objectdestroy_114Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_247D6B424(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = *(a1 + 32);
  return sub_247D65528(v5, v2);
}

unint64_t sub_247D6B460()
{
  result = qword_27EE73570;
  if (!qword_27EE73570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73570);
  }

  return result;
}

uint64_t sub_247D6B4B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_247D6B598(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {
    return sub_247D6AD68(a1, a2, a3);
  }

  else
  {
  }
}

uint64_t sub_247D6B5A8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_247D6B5C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_247D6B624()
{
  result = qword_27EE735A0;
  if (!qword_27EE735A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE735A0);
  }

  return result;
}

double sub_247D6B69C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_247D6B6B4()
{
  result = qword_27EE735A8;
  if (!qword_27EE735A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE735A8);
  }

  return result;
}

uint64_t sub_247D6B708(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE735B0, &qword_247DD4368);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_247D6B778(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_247D6B828()
{
  result = qword_27EE735D0;
  if (!qword_27EE735D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE735D0);
  }

  return result;
}

uint64_t sub_247D6B8C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_247D6B998(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_247D6B9F8(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_247D6BA04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_247D6BA6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_247D6BAD4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_247D6BB7C(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {
    return sub_247D6AD68(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_247D6BB88()
{
  result = qword_27EE73608;
  if (!qword_27EE73608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73608);
  }

  return result;
}

unint64_t sub_247D6BC3C()
{
  result = qword_27EE73610;
  if (!qword_27EE73610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73610);
  }

  return result;
}

id sub_247D6BC90(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t objectdestroy_152Tm()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_102Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_161Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_247D6BDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_247D6BDE8()
{
  result = qword_27EE73618;
  if (!qword_27EE73618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73618);
  }

  return result;
}

unint64_t sub_247D6BE54()
{
  result = qword_27EE73620;
  if (!qword_27EE73620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73620);
  }

  return result;
}

void sub_247D6BEBC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t CosmoFileHttpResponse.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + *(type metadata accessor for CosmoFileHttpResponse(0) + 20)) = 200;
  v4 = sub_247DD20DC();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_247D6C160(void *a1, uint64_t a2)
{
  sub_247DD2DBC();
  sub_247DD2D1C();

  sub_247DD2D1C();
  sub_247DD2D1C();
  nw_http_request_create();

  metadata_for_request = nw_http_create_metadata_for_request();
  sub_247DD2D1C();
  swift_unknownObjectRetain();
  nw_http_fields_append();
  swift_unknownObjectRelease_n();

  return metadata_for_request;
}

uint64_t sub_247D6C264(uint64_t a1)
{
  sub_247DD2DBC();
  sub_247DD2D1C();

  sub_247DD2D1C();
  sub_247DD2D1C();
  nw_http_request_create();

  metadata_for_request = nw_http_create_metadata_for_request();
  sub_247DD2D1C();
  swift_unknownObjectRetain();
  nw_http_fields_append();
  swift_unknownObjectRelease_n();

  return metadata_for_request;
}

uint64_t CosmoHttpRequest.metadata.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 56))();
  (*(a2 + 48))(a1, a2);
  sub_247DD2D1C();

  sub_247DD2D1C();
  sub_247DD2D1C();
  sub_247DD2D1C();

  nw_http_request_create();

  metadata_for_request = nw_http_create_metadata_for_request();
  sub_247DD2D1C();
  swift_unknownObjectRetain();
  nw_http_fields_append();
  swift_unknownObjectRelease_n();

  return metadata_for_request;
}

uint64_t sub_247D6C4DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73600, &qword_247DD4390);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  MEMORY[0x28223BE20](v1);
  v2 = type metadata accessor for FileRequest(0);
  v3 = MEMORY[0x28223BE20](v2);
  v4 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v4);
  sub_247DD1F8C();
  swift_allocObject();
  sub_247DD1F7C();
  sub_247D73238(&qword_27EE737C8, type metadata accessor for FileRequest, &protocol conformance descriptor for FileRequest);
  v5 = sub_247DD1F6C();

  return v5;
}

uint64_t sub_247D6C9E8(char a1)
{
  sub_247DD1F8C();
  swift_allocObject();
  sub_247DD1F7C();
  sub_247D73D18();
  v1 = sub_247DD1F6C();

  return v1;
}

uint64_t sub_247D6CC28(uint64_t (*a1)(void), uint64_t a2)
{
  sub_247DD1F8C();
  swift_allocObject();
  sub_247DD1F7C();
  a1();
  v3 = sub_247DD1F6C();

  return v3;
}

uint64_t sub_247D6CE58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE735D8, &unk_247DD48D0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  MEMORY[0x28223BE20](v1);
  v2 = type metadata accessor for RejectFileRequest(0);
  v3 = MEMORY[0x28223BE20](v2);
  v4 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v4);
  sub_247DD1F8C();
  swift_allocObject();
  sub_247DD1F7C();
  sub_247D73238(&qword_27EE737B0, type metadata accessor for RejectFileRequest, &protocol conformance descriptor for RejectFileRequest);
  v5 = sub_247DD1F6C();

  return v5;
}

uint64_t CosmoHttpRequest.body.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_247DD2F9C();
  v3 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  sub_247DD1F8C();
  swift_allocObject();
  sub_247DD1F7C();
  v4 = sub_247DD1F6C();

  return v4;
}

uint64_t CosmoHttpRequest.file.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_247DD20DC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_247D6D820(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for CosmoHttpResponseContent(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_247D73280(a1, v8, type metadata accessor for CosmoHttpResponseContent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_247D732E8(v8, type metadata accessor for CosmoHttpResponseContent);
    sub_247D6AFB0();
    swift_allocError();
    *v9 = xmmword_247DD3F20;
    *(v9 + 16) = 2;
    return swift_willThrow();
  }

  else
  {
    v11 = *v8;
    v12 = v8[1];
    sub_247DD1F5C();
    swift_allocObject();
    sub_247DD1F4C();
    a2();
    sub_247DD1F3C();

    result = sub_247D6A1F8(v11, v12);
    if (!v3)
    {
      return v13[3];
    }
  }

  return result;
}

uint64_t sub_247D6D9E8(uint64_t a1)
{
  v3 = type metadata accessor for CosmoHttpResponseContent(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_247D73280(a1, v5, type metadata accessor for CosmoHttpResponseContent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_247D732E8(v5, type metadata accessor for CosmoHttpResponseContent);
    sub_247D6AFB0();
    swift_allocError();
    *v6 = xmmword_247DD3F20;
    *(v6 + 16) = 2;
    return swift_willThrow();
  }

  else
  {
    v8 = *v5;
    v9 = v5[1];
    sub_247DD1F5C();
    swift_allocObject();
    sub_247DD1F4C();
    sub_247D73DC0();
    sub_247DD1F3C();

    return sub_247D6A1F8(v8, v9);
  }
}

uint64_t sub_247D6DB68(uint64_t a1)
{
  v3 = type metadata accessor for CosmoHttpResponseContent(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_247D73280(a1, v5, type metadata accessor for CosmoHttpResponseContent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_247D732E8(v5, type metadata accessor for CosmoHttpResponseContent);
    sub_247D6AFB0();
    swift_allocError();
    *v6 = xmmword_247DD3F20;
    *(v6 + 16) = 2;
    return swift_willThrow();
  }

  else
  {
    v8 = *v5;
    v9 = v5[1];
    sub_247DD1F5C();
    swift_allocObject();
    sub_247DD1F4C();
    sub_247D73CC4();
    sub_247DD1F3C();

    return sub_247D6A1F8(v8, v9);
  }
}

uint64_t sub_247D6DD1C(uint64_t a1, uint64_t (*a2)(void))
{
  v6 = type metadata accessor for CosmoHttpResponseContent(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_247D73280(a1, v8, type metadata accessor for CosmoHttpResponseContent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_247D732E8(v8, type metadata accessor for CosmoHttpResponseContent);
    sub_247D6AFB0();
    swift_allocError();
    *v9 = xmmword_247DD3F20;
    *(v9 + 16) = 2;
    return swift_willThrow();
  }

  else
  {
    v11 = *v8;
    v12 = v8[1];
    sub_247DD1F5C();
    swift_allocObject();
    sub_247DD1F4C();
    a2();
    sub_247DD1F3C();

    return sub_247D6A1F8(v11, v12);
  }
}

uint64_t static CosmoHttpResponse._create(from:)(uint64_t a1)
{
  v5 = type metadata accessor for CosmoHttpResponseContent(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_247D73280(a1, v7, type metadata accessor for CosmoHttpResponseContent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_247D732E8(v7, type metadata accessor for CosmoHttpResponseContent);
    sub_247D6AFB0();
    swift_allocError();
    *v8 = xmmword_247DD3F20;
    *(v8 + 16) = 2;
    return swift_willThrow();
  }

  else
  {
    v10 = *v7;
    v11 = v7[1];
    sub_247DD1F5C();
    swift_allocObject();
    sub_247DD1F4C();
    sub_247DD1F3C();

    return sub_247D6A1F8(v10, v11);
  }
}

uint64_t sub_247D6E038@<X0>(uint64_t (*a2)(void)@<X1>, uint64_t *a4@<X8>)
{
  sub_247DD1F8C();
  swift_allocObject();
  sub_247DD1F7C();
  a2();
  v6 = sub_247DD1F6C();
  v8 = v7;

  *a4 = v6;
  a4[1] = v8;
  type metadata accessor for CosmoHttpResponseContent(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_247D6E298@<X0>(uint64_t *a4@<X8>)
{
  sub_247DD1F8C();
  swift_allocObject();
  sub_247DD1F7C();
  sub_247D73D6C();
  v5 = sub_247DD1F6C();
  v7 = v6;

  *a4 = v5;
  a4[1] = v7;
  type metadata accessor for CosmoHttpResponseContent(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_247D6E528@<X0>(uint64_t *a3@<X8>)
{
  sub_247DD1F8C();
  swift_allocObject();
  sub_247DD1F7C();
  sub_247D73C70();
  v4 = sub_247DD1F6C();
  v6 = v5;

  *a3 = v4;
  a3[1] = v6;
  type metadata accessor for CosmoHttpResponseContent(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_247D6E7AC@<X0>(uint64_t (*a2)(void)@<X1>, uint64_t *a4@<X8>)
{
  sub_247DD1F8C();
  swift_allocObject();
  sub_247DD1F7C();
  a2();
  v6 = sub_247DD1F6C();
  v8 = v7;

  *a4 = v6;
  a4[1] = v8;
  type metadata accessor for CosmoHttpResponseContent(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t CosmoHttpResponse._contents.getter@<X0>(uint64_t *a3@<X8>)
{
  v4 = sub_247DD2F9C();
  v5 = MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  sub_247DD1F8C();
  swift_allocObject();
  sub_247DD1F7C();
  v6 = sub_247DD1F6C();
  v8 = v7;

  *a3 = v6;
  a3[1] = v8;
  type metadata accessor for CosmoHttpResponseContent(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_247D6EE18()
{
  v1 = sub_247DD20DC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CosmoFileHttpResponse(0);
  nw_http_response_create_well_known();
  sub_247DD2D1C();
  swift_unknownObjectRetain();
  nw_http_fields_append();
  swift_unknownObjectRelease();

  v5 = (*(v2 + 16))(v4, v0, v1);
  v6 = URL.fileSize.getter(v5);
  if (v7)
  {
    if (qword_27EE73260 != -1)
    {
      swift_once();
    }

    v8 = sub_247DD23CC();
    __swift_project_value_buffer(v8, qword_27EE7B878);
    v9 = sub_247DD23AC();
    v10 = sub_247DD2F0C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_247D56000, v9, v10, "File specified, but could not read file-size to set 'Content-Length'", v11, 2u);
      MEMORY[0x24C1BAF60](v11, -1, -1);
    }
  }

  else
  {
    v14[1] = v6;
    swift_unknownObjectRetain();
    sub_247DD321C();
    sub_247DD2D1C();

    nw_http_fields_append();
    swift_unknownObjectRelease();
  }

  sub_247DD207C();
  sub_247DD2D1C();
  sub_247DD2D1C();

  nw_http_fields_append();
  (*(v2 + 8))(v4, v1);

  metadata_for_response = nw_http_create_metadata_for_response();
  swift_unknownObjectRelease();
  return metadata_for_response;
}

uint64_t sub_247D6F110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[1] = a3;
  v3 = type metadata accessor for CosmoHttpResponseContent(0);
  MEMORY[0x28223BE20](v3);
  v5 = (v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73500, &unk_247DD4310);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v23 - v7;
  v9 = sub_247DD20DC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v24 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  nw_http_response_create_well_known();
  sub_247DD2D1C();
  swift_unknownObjectRetain();
  nw_http_fields_append();
  swift_unknownObjectRelease();

  sub_247D6E298(v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v8, v5, v9);
    v12 = 0;
  }

  else
  {
    sub_247D732E8(v5, type metadata accessor for CosmoHttpResponseContent);
    v12 = 1;
  }

  (*(v10 + 56))(v8, v12, 1, v9);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_247D6BAD4(v8, &unk_27EE73500, &unk_247DD4310);
  }

  else
  {
    v13 = (*(v10 + 32))(v24, v8, v9);
    v14 = URL.fileSize.getter(v13);
    if (v15)
    {
      if (qword_27EE73260 != -1)
      {
        swift_once();
      }

      v16 = sub_247DD23CC();
      __swift_project_value_buffer(v16, qword_27EE7B878);
      v17 = sub_247DD23AC();
      v18 = sub_247DD2F0C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_247D56000, v17, v18, "File specified, but could not read file-size to set 'Content-Length'", v19, 2u);
        MEMORY[0x24C1BAF60](v19, -1, -1);
      }
    }

    else
    {
      v25 = v14;
      swift_unknownObjectRetain();
      sub_247DD321C();
      sub_247DD2D1C();

      nw_http_fields_append();
      swift_unknownObjectRelease();
    }

    v20 = v24;
    sub_247DD207C();
    sub_247DD2D1C();
    sub_247DD2D1C();

    nw_http_fields_append();
    (*(v10 + 8))(v20, v9);
  }

  metadata_for_response = nw_http_create_metadata_for_response();
  swift_unknownObjectRelease();
  return metadata_for_response;
}

uint64_t sub_247D6F588(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for CosmoHttpResponseContent(0);
  MEMORY[0x28223BE20](v2);
  v4 = (v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73500, &unk_247DD4310);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v22 - v6;
  v8 = sub_247DD20DC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v22[0] = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  nw_http_response_create_well_known();
  sub_247DD2D1C();
  swift_unknownObjectRetain();
  nw_http_fields_append();
  swift_unknownObjectRelease();

  sub_247D6E528(v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v7, v4, v8);
    v11 = 0;
  }

  else
  {
    sub_247D732E8(v4, type metadata accessor for CosmoHttpResponseContent);
    v11 = 1;
  }

  (*(v9 + 56))(v7, v11, 1, v8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_247D6BAD4(v7, &unk_27EE73500, &unk_247DD4310);
  }

  else
  {
    v12 = (*(v9 + 32))(v22[0], v7, v8);
    v13 = URL.fileSize.getter(v12);
    if (v14)
    {
      if (qword_27EE73260 != -1)
      {
        swift_once();
      }

      v15 = sub_247DD23CC();
      __swift_project_value_buffer(v15, qword_27EE7B878);
      v16 = sub_247DD23AC();
      v17 = sub_247DD2F0C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_247D56000, v16, v17, "File specified, but could not read file-size to set 'Content-Length'", v18, 2u);
        MEMORY[0x24C1BAF60](v18, -1, -1);
      }
    }

    else
    {
      v22[1] = v13;
      swift_unknownObjectRetain();
      sub_247DD321C();
      sub_247DD2D1C();

      nw_http_fields_append();
      swift_unknownObjectRelease();
    }

    v19 = v22[0];
    sub_247DD207C();
    sub_247DD2D1C();
    sub_247DD2D1C();

    nw_http_fields_append();
    (*(v9 + 8))(v19, v8);
  }

  metadata_for_response = nw_http_create_metadata_for_response();
  swift_unknownObjectRelease();
  return metadata_for_response;
}

uint64_t sub_247D6F9F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v26 = a3;
  v27 = a4;
  v6 = type metadata accessor for CosmoHttpResponseContent(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73500, &unk_247DD4310);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - v10;
  v12 = sub_247DD20DC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v28 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  nw_http_response_create_well_known();
  sub_247DD2D1C();
  swift_unknownObjectRetain();
  nw_http_fields_append();
  swift_unknownObjectRelease();

  v27(a1, a2, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v11, v8, v12);
    v15 = 0;
  }

  else
  {
    sub_247D732E8(v8, type metadata accessor for CosmoHttpResponseContent);
    v15 = 1;
  }

  (*(v13 + 56))(v11, v15, 1, v12);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_247D6BAD4(v11, &unk_27EE73500, &unk_247DD4310);
  }

  else
  {
    v16 = (*(v13 + 32))(v28, v11, v12);
    v17 = URL.fileSize.getter(v16);
    if (v18)
    {
      if (qword_27EE73260 != -1)
      {
        swift_once();
      }

      v19 = sub_247DD23CC();
      __swift_project_value_buffer(v19, qword_27EE7B878);
      v20 = sub_247DD23AC();
      v21 = sub_247DD2F0C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_247D56000, v20, v21, "File specified, but could not read file-size to set 'Content-Length'", v22, 2u);
        MEMORY[0x24C1BAF60](v22, -1, -1);
      }
    }

    else
    {
      v29 = v17;
      swift_unknownObjectRetain();
      sub_247DD321C();
      sub_247DD2D1C();

      nw_http_fields_append();
      swift_unknownObjectRelease();
    }

    v23 = v28;
    sub_247DD207C();
    sub_247DD2D1C();
    sub_247DD2D1C();

    nw_http_fields_append();
    (*(v13 + 8))(v23, v12);
  }

  metadata_for_response = nw_http_create_metadata_for_response();
  swift_unknownObjectRelease();
  return metadata_for_response;
}

uint64_t CosmoHttpResponse.metadata.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73500, &unk_247DD4310);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - v5;
  v7 = sub_247DD20DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 32))(a1, a2);
  nw_http_response_create_well_known();
  sub_247DD2D1C();
  swift_unknownObjectRetain();
  nw_http_fields_append();
  swift_unknownObjectRelease();

  (*(*(a2 + 8) + 24))(a1);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_247D6BAD4(v6, &unk_27EE73500, &unk_247DD4310);
  }

  else
  {
    v11 = (*(v8 + 32))(v10, v6, v7);
    v12 = URL.fileSize.getter(v11);
    if (v13)
    {
      if (qword_27EE73260 != -1)
      {
        swift_once();
      }

      v14 = sub_247DD23CC();
      __swift_project_value_buffer(v14, qword_27EE7B878);
      v15 = sub_247DD23AC();
      v16 = sub_247DD2F0C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_247D56000, v15, v16, "File specified, but could not read file-size to set 'Content-Length'", v17, 2u);
        MEMORY[0x24C1BAF60](v17, -1, -1);
      }
    }

    else
    {
      v20[1] = v12;
      swift_unknownObjectRetain();
      sub_247DD321C();
      sub_247DD2D1C();

      nw_http_fields_append();
      swift_unknownObjectRelease();
    }

    sub_247DD207C();
    sub_247DD2D1C();
    sub_247DD2D1C();

    nw_http_fields_append();
    (*(v8 + 8))(v10, v7);
  }

  metadata_for_response = nw_http_create_metadata_for_response();
  swift_unknownObjectRelease();
  return metadata_for_response;
}

uint64_t CosmoHttpResponse.body.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CosmoHttpResponseContent(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 48))(a1, a2);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v6;
  }

  sub_247D732E8(v6, type metadata accessor for CosmoHttpResponseContent);
  return 0;
}

uint64_t CosmoHttpResponse.file.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CosmoHttpResponseContent(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 48))(a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_247DD20DC();
    v10 = *(v9 - 8);
    (*(v10 + 32))(a3, v8, v9);
    return (*(v10 + 56))(a3, 0, 1, v9);
  }

  else
  {
    sub_247D732E8(v8, type metadata accessor for CosmoHttpResponseContent);
    v12 = sub_247DD20DC();
    return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
  }
}

uint64_t CosmoFileHttpResponse.status.setter(int a1)
{
  result = type metadata accessor for CosmoFileHttpResponse(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t static CosmoFileHttpResponse._create(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73720, &qword_247DD4550);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - v6;
  v8 = type metadata accessor for CosmoHttpResponseContent(0);
  v34 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v31 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v32 = &v31 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  v15 = sub_247DD20DC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247D73280(a1, v14, type metadata accessor for CosmoHttpResponseContent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *(v16 + 32);
    v19(v18, v14, v15);
    v20 = v33;
    v19(v33, v18, v15);
    result = type metadata accessor for CosmoFileHttpResponse(0);
    *&v20[*(result + 20)] = 200;
  }

  else
  {
    sub_247D732E8(v14, type metadata accessor for CosmoHttpResponseContent);
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_247DD304C();
    MEMORY[0x24C1BA0A0](0xD000000000000035, 0x8000000247DD8DA0);
    sub_247D73280(a1, v7, type metadata accessor for CosmoHttpResponseContent);
    v22 = v34;
    (*(v34 + 56))(v7, 0, 1, v8);
    v23 = v37;
    sub_247D6BA6C(v7, v37, &qword_27EE73720, &qword_247DD4550);
    if ((*(v22 + 48))(v23, 1, v8) == 1)
    {
      v24 = 0xE300000000000000;
      v25 = 7104878;
    }

    else
    {
      v26 = v32;
      sub_247D73B0C(v23, v32, type metadata accessor for CosmoHttpResponseContent);
      sub_247D73280(v26, v31, type metadata accessor for CosmoHttpResponseContent);
      v25 = sub_247DD2CFC();
      v24 = v27;
      sub_247D732E8(v26, type metadata accessor for CosmoHttpResponseContent);
    }

    sub_247D6BAD4(v7, &qword_27EE73720, &qword_247DD4550);
    MEMORY[0x24C1BA0A0](v25, v24);

    v28 = v35;
    v29 = v36;
    sub_247D6AFB0();
    swift_allocError();
    *v30 = v28;
    *(v30 + 8) = v29;
    *(v30 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t CosmoFileHttpResponse._contents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_247DD20DC();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for CosmoHttpResponseContent(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_247D70A3C()
{
  if (*v0)
  {
    return 0x737574617473;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_247D70A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_247DD322C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_247DD322C();

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

uint64_t sub_247D70B5C(uint64_t a1)
{
  v2 = sub_247D731E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247D70B98(uint64_t a1)
{
  v2 = sub_247D731E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CosmoFileHttpResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73728, &qword_247DD4558);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247D731E4();
  sub_247DD331C();
  v8[15] = 0;
  sub_247DD20DC();
  sub_247D73238(&qword_27EE73738, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
  sub_247DD31DC();
  if (!v1)
  {
    type metadata accessor for CosmoFileHttpResponse(0);
    v8[14] = 1;
    sub_247DD31FC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t CosmoFileHttpResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v22 = sub_247DD20DC();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73740, &qword_247DD4560);
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = &v18 - v6;
  v8 = type metadata accessor for CosmoFileHttpResponse(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247D731E4();
  sub_247DD330C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v18 = v10;
  v11 = v20;
  v25 = 0;
  sub_247D73238(&qword_27EE73748, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  v12 = v22;
  sub_247DD316C();
  v13 = v18;
  (*(v11 + 32))(v18, v5, v12);
  v24 = 1;
  v14 = sub_247DD318C();
  v15 = v13;
  v16 = *(v8 + 20);
  (*(v21 + 8))(v7, v23);
  *(v15 + v16) = v14;
  sub_247D73280(v15, v19, type metadata accessor for CosmoFileHttpResponse);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_247D732E8(v15, type metadata accessor for CosmoFileHttpResponse);
}

uint64_t sub_247D7110C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_247DD20DC();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for CosmoHttpResponseContent(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_247D711CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_247DD20DC();
  v6 = *(v3 - 8);
  (*(v6 + 16))(a1, v1, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_247D712BC(uint64_t a1)
{
  v2 = sub_247D74154();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247D712F8(uint64_t a1)
{
  v2 = sub_247D74154();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_247D71334@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_247D6D820(a1, sub_247D73F48, &type metadata for CosmoBadRequestHttpResponse);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_247D71530(uint64_t a1)
{
  v2 = sub_247D74100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247D7156C(uint64_t a1)
{
  v2 = sub_247D74100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_247D715B0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_247D6D820(a1, sub_247D73E74, &type metadata for CosmoNotFoundHttpResponse);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_247D71674@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, _DWORD *a6@<X8>)
{
  v16 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v17 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_247DD330C();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v12 = v16;
  v13 = sub_247DD318C();
  (*(v17 + 8))(v11, v9);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *v12 = v13;
  return result;
}

uint64_t sub_247D718D8()
{
  sub_247DD32BC();
  MEMORY[0x24C1BA5C0](0);
  return sub_247DD32EC();
}

uint64_t sub_247D7191C(uint64_t a1)
{
  sub_247DD32BC();
  MEMORY[0x24C1BA5C0](0);
  return sub_247DD32EC();
}

uint64_t sub_247D7195C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_247DD322C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_247D719E0(uint64_t a1)
{
  v2 = sub_247D741A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247D71A1C(uint64_t a1)
{
  v2 = sub_247D741A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_247D71A58@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_247D6D820(a1, sub_247D74058, &type metadata for CosmoInternalServerErrorHttpResponse);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_247D71B60(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t a7)
{
  v14 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14();
  sub_247DD331C();
  sub_247DD31FC();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_247D71D9C()
{
  v0 = type metadata accessor for CosmoHttpResponseContent(0);
  MEMORY[0x28223BE20](v0);
  v2 = (&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_247D6E298(v2);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v2;
  }

  sub_247D732E8(v2, type metadata accessor for CosmoHttpResponseContent);
  return 0;
}

uint64_t sub_247D71E60@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CosmoHttpResponseContent(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_247D6E298(v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_247DD20DC();
    v6 = *(v5 - 8);
    (*(v6 + 32))(a1, v4, v5);
    return (*(v6 + 56))(a1, 0, 1, v5);
  }

  else
  {
    sub_247D732E8(v4, type metadata accessor for CosmoHttpResponseContent);
    v8 = sub_247DD20DC();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_247D72018@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_247DD20DC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_247D720B4()
{
  v0 = type metadata accessor for CosmoHttpResponseContent(0);
  MEMORY[0x28223BE20](v0);
  v2 = (&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_247D6E528(v2);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v2;
  }

  sub_247D732E8(v2, type metadata accessor for CosmoHttpResponseContent);
  return 0;
}

uint64_t sub_247D72178@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CosmoHttpResponseContent(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_247D6E528(v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_247DD20DC();
    v6 = *(v5 - 8);
    (*(v6 + 32))(a1, v4, v5);
    return (*(v6 + 56))(a1, 0, 1, v5);
  }

  else
  {
    sub_247D732E8(v4, type metadata accessor for CosmoHttpResponseContent);
    v8 = sub_247DD20DC();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_247D7254C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, uint64_t, uint64_t))
{
  v9 = type metadata accessor for CosmoHttpResponseContent(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a5(*v5, a3, a4);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v11;
  }

  sub_247D732E8(v11, type metadata accessor for CosmoHttpResponseContent);
  return 0;
}

uint64_t sub_247D72660@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void (*a3)(void, uint64_t, uint64_t)@<X4>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for CosmoHttpResponseContent(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(*v4, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_247DD20DC();
    v13 = *(v12 - 8);
    (*(v13 + 32))(a4, v11, v12);
    return (*(v13 + 56))(a4, 0, 1, v12);
  }

  else
  {
    sub_247D732E8(v11, type metadata accessor for CosmoHttpResponseContent);
    v15 = sub_247DD20DC();
    return (*(*(v15 - 8) + 56))(a4, 1, 1, v15);
  }
}

unint64_t sub_247D72868(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_247D72934(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_247D6B778(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_247D72934(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_247D72A40(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_247DD308C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_247D72A40(uint64_t a1, unint64_t a2)
{
  v3 = sub_247D72A8C(a1, a2);
  sub_247D72BBC(&unk_2859E38F0);
  return v3;
}

void *sub_247D72A8C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_247D80A0C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_247DD308C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_247DD2DDC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_247D80A0C(v10, 0);
        result = sub_247DD301C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_247D72BBC(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_247D72CA8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_247D72CA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73960, &qword_247DD48E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t _s5Cosmo0A5ErrorO2eeoiySbAC_ACtFZ_0(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_10;
    }

    v16 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v9 = sub_247DD322C();
      sub_247D6B69C(v6, v5, 0);
      sub_247D6B69C(v3, v2, 0);
      sub_247D6AD68(v3, v2, 0);
      v10 = v6;
      v11 = v5;
      v12 = 0;
      goto LABEL_30;
    }

    sub_247D6B69C(v16, v2, 0);
    sub_247D6B69C(v3, v2, 0);
    sub_247D6AD68(v3, v2, 0);
    v15 = v3;
    v18 = v2;
    v19 = 0;
    goto LABEL_54;
  }

  if (v4 != 1)
  {
    if (v3 <= 2)
    {
      if (v3 | v2)
      {
        if (!(v3 ^ 1 | v2))
        {
          if (v7 == 2 && v6 == 1 && !v5)
          {
            sub_247D6AD68(*a1, v2, 2u);
            v13 = 1;
            sub_247D6AD68(1, 0, 2u);
            return v13;
          }

LABEL_10:
          sub_247D6B69C(*a2, *(a2 + 8), v7);
          sub_247D6B69C(v3, v2, v4);
          sub_247D6AD68(v3, v2, v4);
          sub_247D6AD68(v6, v5, v7);
          return 0;
        }

        if (v7 != 2 || v6 != 2 || v5)
        {
          goto LABEL_10;
        }

        sub_247D6AD68(*a1, v2, 2u);
        v15 = 2;
      }

      else
      {
        if (v7 != 2 || v5 | v6)
        {
          goto LABEL_10;
        }

        sub_247D6AD68(*a1, v2, 2u);
        v15 = 0;
      }
    }

    else if (v3 > 4)
    {
      if (v3 ^ 5 | v2)
      {
        if (v7 != 2 || v6 != 6 || v5)
        {
          goto LABEL_10;
        }

        sub_247D6AD68(*a1, v2, 2u);
        v15 = 6;
      }

      else
      {
        if (v7 != 2 || v6 != 5 || v5)
        {
          goto LABEL_10;
        }

        sub_247D6AD68(*a1, v2, 2u);
        v15 = 5;
      }
    }

    else if (v3 ^ 3 | v2)
    {
      if (v7 != 2 || v6 != 4 || v5)
      {
        goto LABEL_10;
      }

      sub_247D6AD68(*a1, v2, 2u);
      v15 = 4;
    }

    else
    {
      if (v7 != 2 || v6 != 3 || v5)
      {
        goto LABEL_10;
      }

      sub_247D6AD68(*a1, v2, 2u);
      v15 = 3;
    }

    v18 = 0;
    v19 = 2;
LABEL_54:
    sub_247D6AD68(v15, v18, v19);
    return 1;
  }

  if (v7 != 1)
  {
    goto LABEL_10;
  }

  if (v3 == v6 && v2 == v5)
  {
    v13 = 1;
    sub_247D6B69C(*a1, v2, 1u);
    sub_247D6B69C(v3, v2, 1u);
    sub_247D6AD68(v3, v2, 1u);
    sub_247D6AD68(v3, v2, 1u);
    return v13;
  }

  v9 = sub_247DD322C();
  sub_247D6B69C(v6, v5, 1u);
  sub_247D6B69C(v3, v2, 1u);
  sub_247D6AD68(v3, v2, 1u);
  v10 = v6;
  v11 = v5;
  v12 = 1;
LABEL_30:
  sub_247D6AD68(v10, v11, v12);
  return v9 & 1;
}

uint64_t sub_247D731AC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_247D731E4()
{
  result = qword_27EE73730;
  if (!qword_27EE73730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73730);
  }

  return result;
}

uint64_t sub_247D73238(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_247D73280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_247D732E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_247D73348(uint64_t a1)
{
  *(a1 + 16) = sub_247D73238(&qword_27EE73750, type metadata accessor for CosmoFileHttpResponse, &protocol conformance descriptor for CosmoFileHttpResponse);
  result = sub_247D73238(&qword_27EE73758, type metadata accessor for CosmoFileHttpResponse, &protocol conformance descriptor for CosmoFileHttpResponse);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_247D734E4(uint64_t a1)
{
  result = sub_247DD20DC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_247D73564(uint64_t a1, uint64_t a2)
{
  v4 = sub_247DD20DC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_247D735E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_247DD20DC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_247D73654(uint64_t a1)
{
  result = sub_247DD20DC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5Cosmo0A5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_247D736F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_247D73740(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_247D73784(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CosmoSerialChannelHost.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CosmoSerialChannelHost.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_247D7390C()
{
  result = qword_27EE73780;
  if (!qword_27EE73780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73780);
  }

  return result;
}

unint64_t sub_247D73964()
{
  result = qword_27EE73788;
  if (!qword_27EE73788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73788);
  }

  return result;
}

unint64_t sub_247D739BC()
{
  result = qword_27EE73790;
  if (!qword_27EE73790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73790);
  }

  return result;
}

unint64_t sub_247D73A10()
{
  result = qword_27EE73798;
  if (!qword_27EE73798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73798);
  }

  return result;
}

unint64_t sub_247D73A64()
{
  result = qword_27EE737A0;
  if (!qword_27EE737A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE737A0);
  }

  return result;
}

unint64_t sub_247D73AB8()
{
  result = qword_27EE737A8;
  if (!qword_27EE737A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE737A8);
  }

  return result;
}

uint64_t sub_247D73B0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_247D73B74()
{
  result = qword_27EE737B8;
  if (!qword_27EE737B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE737B8);
  }

  return result;
}

unint64_t sub_247D73BC8()
{
  result = qword_27EE737C0;
  if (!qword_27EE737C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE737C0);
  }

  return result;
}

unint64_t sub_247D73C1C()
{
  result = qword_27EE737D0;
  if (!qword_27EE737D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE737D0);
  }

  return result;
}