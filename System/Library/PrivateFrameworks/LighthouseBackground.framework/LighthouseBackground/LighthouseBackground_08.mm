uint64_t static CryptoUtils.decryptData(_:using:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = sub_1DF22AB50();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF16573C(a1, a2);
  sub_1DF1EA2C0(a1, a2);
  if (!v3)
  {
    a3 = sub_1DF22AB00();
    (*(v8 + 8))(v10, v7);
  }

  return a3;
}

uint64_t static CryptoUtils.encryptData(_:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E408, &qword_1DF238388);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v16 - v8;
  v10 = sub_1DF22AB50();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = a1;
  v16[1] = a2;
  v14 = sub_1DF22AB20();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  sub_1DF1EA5D4();
  sub_1DF22AB10();
  sub_1DF16184C(v9, &qword_1ECE0E408, &qword_1DF238388);
  if (!v3)
  {
    a3 = sub_1DF22AB30();
    (*(v11 + 8))(v13, v10);
  }

  return a3;
}

uint64_t sub_1DF20B4C4()
{
  type metadata accessor for CryptoActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1ECE0EEF0 = v0;
  return result;
}

uint64_t CryptoActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

double sub_1DF20B580()
{
  if (qword_1ECE0C778 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1DF20B5DC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CryptoActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

unint64_t sub_1DF20B614()
{
  type metadata accessor for CryptoUtils();
  v0 = swift_allocObject();
  result = sub_1DF19036C(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = result;
  qword_1ECE0EEF8 = v0;
  return result;
}

double sub_1DF20B680(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return result;
}

SecAccessControlRef sub_1DF20B6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF00, &qword_1DF23A948);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31[-v11];
  v13 = sub_1DF22AAF0();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v31[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v31[-v18];
  static CryptoUtils.readKeyFromKeychain(label:accessGroup:)(a1, a2, a3, a4, v12);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    v21 = *(v14 + 32);
    v21(v19, v12, v13);
    v21(a5, v19, v13);
    v22 = 0;
    return (*(v14 + 56))(a5, v22, 1, v13);
  }

  sub_1DF16184C(v12, &qword_1ECE0EF00, &qword_1DF23A948);
  if ((_s20LighthouseBackground12MLHostClientC21isEncryptionSupportedSbvgZ_0() & 1) == 0)
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v23 = sub_1DF22A8C0();
    __swift_project_value_buffer(v23, qword_1ED8E92C0);
    v24 = sub_1DF22A8A0();
    v25 = sub_1DF22B110();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1DF15A000, v24, v25, "Secure enclave is not available.", v26, 2u);
      MEMORY[0x1E12D0B40](v26, -1, -1);
    }

LABEL_11:
    v22 = 1;
    return (*(v14 + 56))(a5, v22, 1, v13);
  }

  result = SecAccessControlCreateWithFlags(0, *MEMORY[0x1E697ABE8], 0, 0);
  if (result)
  {
    sub_1DF22AAE0();
    if (_s20LighthouseBackground11CryptoUtilsC18storeKeyInKeychain_5label11accessGroupSb0C3Kit13SecureEnclaveO4P256O0F9AgreementO07PrivateF0V_S2StFZ_0(v17, 0xD000000000000022, 0x80000001DF23E630, a3, a4))
    {
      (*(v14 + 32))(a5, v17, v13);
      v22 = 0;
      return (*(v14 + 56))(a5, v22, 1, v13);
    }

    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v27 = sub_1DF22A8C0();
    __swift_project_value_buffer(v27, qword_1ED8E92C0);
    v28 = sub_1DF22A8A0();
    v29 = sub_1DF22B110();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1DF15A000, v28, v29, "Failed at storing client key in keychain.", v30, 2u);
      MEMORY[0x1E12D0B40](v30, -1, -1);
    }

    (*(v14 + 8))(v17, v13);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t static CryptoUtils.readKeyFromKeychain(label:accessGroup:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result[53] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D1A8, &qword_1DF22F190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF23A910;
  *(inited + 32) = sub_1DF22ACC0();
  *(inited + 40) = v11;
  v12 = *MEMORY[0x1E697B008];
  type metadata accessor for CFString(0);
  *(inited + 72) = v13;
  *(inited + 48) = v12;
  *(inited + 80) = sub_1DF22ACC0();
  *(inited + 88) = v14;
  v15 = MEMORY[0x1E69E6158];
  *(inited + 120) = MEMORY[0x1E69E6158];
  *(inited + 96) = a1;
  *(inited + 104) = a2;
  *(inited + 128) = sub_1DF22ACC0();
  *(inited + 136) = v16;
  *(inited + 168) = v15;
  *(inited + 144) = a1;
  *(inited + 152) = a2;
  *(inited + 176) = sub_1DF22ACC0();
  *(inited + 184) = v17;
  *(inited + 216) = v15;
  *(inited + 192) = 0xD000000000000017;
  *(inited + 200) = 0x80000001DF23E610;
  *(inited + 224) = sub_1DF22ACC0();
  *(inited + 232) = v18;
  v19 = MEMORY[0x1E69E6370];
  *(inited + 264) = MEMORY[0x1E69E6370];
  v20 = 1;
  *(inited + 240) = 1;
  *(inited + 272) = sub_1DF22ACC0();
  *(inited + 280) = v21;
  *(inited + 312) = v15;
  *(inited + 288) = a3;
  *(inited + 296) = a4;
  *(inited + 320) = sub_1DF22ACC0();
  *(inited + 328) = v22;
  *(inited + 360) = v19;
  *(inited + 336) = 1;
  *(inited + 368) = sub_1DF22ACC0();
  *(inited + 376) = v23;
  *(inited + 408) = v19;
  *(inited + 384) = 0;
  swift_bridgeObjectRetain_n();
  v24 = v12;

  sub_1DF18ED00(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D1B0, &qword_1DF22F198);
  swift_arrayDestroy();
  result[0] = 0;
  v25 = sub_1DF22AB90();

  v26 = SecItemCopyMatching(v25, result);

  if (v26 != -25300)
  {
    if (v26)
    {
      v27 = SecCopyErrorMessageString(v26, 0);
      if (v27)
      {
        v28 = v27;
        v29 = sub_1DF22ACC0();
        v31 = v30;
      }

      else
      {
        LODWORD(v41) = v26;
        v29 = sub_1DF22B600();
        v31 = v32;
      }

      if (qword_1ED8E7530 != -1)
      {
        swift_once();
      }

      v33 = sub_1DF22A8C0();
      __swift_project_value_buffer(v33, qword_1ED8E92C0);

      v34 = sub_1DF22A8A0();
      v35 = sub_1DF22B110();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v41 = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_1DF160728(a3, a4, &v41);
        *(v36 + 12) = 2080;
        v38 = sub_1DF160728(v29, v31, &v41);

        *(v36 + 14) = v38;
        _os_log_impl(&dword_1DF15A000, v34, v35, "Keychain read failed: accessGroup: %s, %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12D0B40](v37, -1, -1);
        MEMORY[0x1E12D0B40](v36, -1, -1);
      }

      else
      {
      }

      v20 = 1;
    }

    else if (result[0])
    {
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        sub_1DF16573C(v41, v42);
        sub_1DF22AAD0();
        sub_1DF1657C8(v41, v42);
        v20 = 0;
      }
    }
  }

  v39 = sub_1DF22AAF0();
  (*(*(v39 - 8) + 56))(a5, v20, 1, v39);
  return swift_unknownObjectRelease();
}

uint64_t static CryptoUtils.deleteKeyFromKeychain(_:accessGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D1A8, &qword_1DF22F190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF23A920;
  *(inited + 32) = sub_1DF22ACC0();
  *(inited + 40) = v9;
  v10 = *MEMORY[0x1E697B008];
  type metadata accessor for CFString(0);
  *(inited + 72) = v11;
  *(inited + 48) = v10;
  *(inited + 80) = sub_1DF22ACC0();
  *(inited + 88) = v12;
  v13 = MEMORY[0x1E69E6158];
  *(inited + 120) = MEMORY[0x1E69E6158];
  *(inited + 96) = a1;
  *(inited + 104) = a2;
  *(inited + 128) = sub_1DF22ACC0();
  *(inited + 136) = v14;
  *(inited + 168) = v13;
  *(inited + 144) = a1;
  *(inited + 152) = a2;
  *(inited + 176) = sub_1DF22ACC0();
  *(inited + 184) = v15;
  *(inited + 216) = v13;
  *(inited + 192) = 0xD000000000000017;
  *(inited + 200) = 0x80000001DF23E610;
  *(inited + 224) = sub_1DF22ACC0();
  *(inited + 232) = v16;
  *(inited + 264) = v13;
  *(inited + 240) = a3;
  *(inited + 248) = a4;
  swift_bridgeObjectRetain_n();
  v17 = v10;

  sub_1DF18ED00(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D1B0, &qword_1DF22F198);
  swift_arrayDestroy();
  v18 = sub_1DF22AB90();

  v19 = SecItemDelete(v18);

  result = 1;
  if (v19 != -25300 && v19)
  {
    v21 = SecCopyErrorMessageString(v19, 0);
    if (v21)
    {
      v22 = v21;
      v23 = sub_1DF22ACC0();
      v25 = v24;
    }

    else
    {
      LODWORD(v33) = v19;
      v23 = sub_1DF22B600();
      v25 = v26;
    }

    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v27 = sub_1DF22A8C0();
    __swift_project_value_buffer(v27, qword_1ED8E92C0);

    v28 = sub_1DF22A8A0();
    v29 = sub_1DF22B110();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = v31;
      *v30 = 136315138;
      v32 = sub_1DF160728(v23, v25, &v33);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_1DF15A000, v28, v29, "Unexpected deletion error: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1E12D0B40](v31, -1, -1);
      MEMORY[0x1E12D0B40](v30, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t CryptoUtils.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1DF20C614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF00, &qword_1DF23A948);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL _s20LighthouseBackground11CryptoUtilsC18storeKeyInKeychain_5label11accessGroupSb0C3Kit13SecureEnclaveO4P256O0F9AgreementO07PrivateF0V_S2StFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D1A8, &qword_1DF22F190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF23A930;
  *(inited + 32) = sub_1DF22ACC0();
  *(inited + 40) = v10;
  v11 = *MEMORY[0x1E697B008];
  type metadata accessor for CFString(0);
  v13 = v12;
  *(inited + 72) = v12;
  *(inited + 48) = v11;
  *(inited + 80) = sub_1DF22ACC0();
  *(inited + 88) = v14;
  v15 = MEMORY[0x1E69E6158];
  *(inited + 120) = MEMORY[0x1E69E6158];
  *(inited + 96) = a2;
  *(inited + 104) = a3;
  *(inited + 128) = sub_1DF22ACC0();
  *(inited + 136) = v16;
  *(inited + 168) = v15;
  *(inited + 144) = a2;
  *(inited + 152) = a3;
  *(inited + 176) = sub_1DF22ACC0();
  *(inited + 184) = v17;
  *(inited + 216) = v15;
  *(inited + 192) = 0xD000000000000017;
  *(inited + 200) = 0x80000001DF23E610;
  *(inited + 224) = sub_1DF22ACC0();
  *(inited + 232) = v18;
  v19 = *MEMORY[0x1E697ABE8];
  *(inited + 264) = v13;
  *(inited + 240) = v19;
  *(inited + 272) = sub_1DF22ACC0();
  *(inited + 280) = v20;
  v21 = MEMORY[0x1E69E6370];
  *(inited + 312) = MEMORY[0x1E69E6370];
  *(inited + 288) = 1;
  *(inited + 320) = sub_1DF22ACC0();
  *(inited + 328) = v22;
  *(inited + 360) = v15;
  v44 = a4;
  *(inited + 336) = a4;
  *(inited + 344) = a5;
  *(inited + 368) = sub_1DF22ACC0();
  *(inited + 376) = v23;
  swift_bridgeObjectRetain_n();
  v24 = v11;
  v25 = v19;

  v26 = sub_1DF22AAC0();
  *(inited + 408) = MEMORY[0x1E6969080];
  *(inited + 384) = v26;
  *(inited + 392) = v27;
  *(inited + 416) = sub_1DF22ACC0();
  *(inited + 424) = v28;
  *(inited + 456) = v21;
  *(inited + 432) = 0;
  sub_1DF18ED00(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D1B0, &qword_1DF22F198);
  swift_arrayDestroy();
  v29 = sub_1DF22AB90();

  v30 = SecItemAdd(v29, 0);

  if (v30)
  {
    v31 = SecCopyErrorMessageString(v30, 0);
    if (v31)
    {
      v32 = v31;
      v33 = sub_1DF22ACC0();
      v35 = v34;
    }

    else
    {
      LODWORD(v45) = v30;
      v33 = sub_1DF22B600();
      v35 = v36;
    }

    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v37 = sub_1DF22A8C0();
    __swift_project_value_buffer(v37, qword_1ED8E92C0);

    v38 = sub_1DF22A8A0();
    v39 = sub_1DF22B110();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v45 = v41;
      *v40 = 136315394;
      *(v40 + 4) = sub_1DF160728(v44, a5, &v45);
      *(v40 + 12) = 2080;
      v42 = sub_1DF160728(v33, v35, &v45);

      *(v40 + 14) = v42;
      _os_log_impl(&dword_1DF15A000, v38, v39, "Unable to store item: accessGroup: %s, %s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D0B40](v41, -1, -1);
      MEMORY[0x1E12D0B40](v40, -1, -1);
    }

    else
    {
    }
  }

  return v30 == 0;
}

uint64_t sub_1DF20CAFC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t LedgerClient.__allocating_init()()
{
  v0 = swift_allocObject();
  LedgerClient.init()();
  return v0;
}

void *LedgerClient.init()()
{
  swift_defaultActor_initialize();
  v1 = [BiomeLibrary() Lighthouse];
  swift_unknownObjectRelease();
  v2 = [v1 Ledger];
  swift_unknownObjectRelease();
  v3 = [v2 TaskStatus];
  swift_unknownObjectRelease();
  v0[14] = v3;
  v4 = [BiomeLibrary() Lighthouse];
  swift_unknownObjectRelease();
  v5 = [v4 Ledger];
  swift_unknownObjectRelease();
  v6 = [v5 TaskCustomEvent];
  swift_unknownObjectRelease();
  v0[15] = v6;
  v7 = [BiomeLibrary() Lighthouse];
  swift_unknownObjectRelease();
  v8 = [v7 Ledger];
  swift_unknownObjectRelease();
  v9 = [v8 TaskError];
  swift_unknownObjectRelease();
  v0[16] = v9;
  v10 = [BiomeLibrary() Lighthouse];
  swift_unknownObjectRelease();
  v11 = [v10 Ledger];
  swift_unknownObjectRelease();
  v12 = [v11 TaskTelemetry];
  swift_unknownObjectRelease();
  v0[17] = v12;
  v13 = [BiomeLibrary() Lighthouse];
  swift_unknownObjectRelease();
  v14 = [v13 Ledger];
  swift_unknownObjectRelease();
  v15 = [v14 DeviceTelemetry];
  swift_unknownObjectRelease();
  v0[18] = v15;
  return v0;
}

void sub_1DF20CE78(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0EF10, &qword_1DF22DDF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v82 = &v69 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CF50, &unk_1DF23A480);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v69 - v8);
  v10 = sub_1DF22A800();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v70 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v69 = &v69 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v69 - v16;
  v81 = sub_1DF22A840();
  v17 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TaskStatusEvent(0);
  v78 = *(v19 - 8);
  v79 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v87 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v77 = (&v69 - v23);
  MEMORY[0x1EEE9AC00](v22);
  v76 = &v69 - v24;
  v25 = sub_1DF20FFD0(*(v2 + 112), a1, a2, &unk_1F5A4FF30, &block_descriptor_38, sub_1DF2105D4, &block_descriptor_41);
  v26 = v25;
  v88 = *(v25 + 16);
  if (!v88)
  {
LABEL_21:

    return;
  }

  v74 = v10;
  v27 = 0;
  v72 = (v17 + 8);
  v85 = (v11 + 32);
  v28 = (v25 + 40);
  v29 = MEMORY[0x1E69E7CC0];
  v30 = &off_1E86AB000;
  v73 = v25;
  v31 = v88;
  v75 = v9;
  while (v27 < *(v26 + 16))
  {
    v32 = *v28;
    v33 = [v32 v30[247]];
    if (!v33)
    {
      goto LABEL_4;
    }

    v34 = v33;
    v90 = sub_1DF22ACC0();
    v36 = v35;

    v37 = [v32 taskState];
    if (!v37)
    {

LABEL_4:

      goto LABEL_5;
    }

    v89 = v36;
    v38 = v37;
    v39 = sub_1DF22ACC0();
    v41 = v40;

    v42._countAndFlagsBits = v39;
    v42._object = v41;
    TaskStatus.init(rawValue:)(v42);
    v43 = v91;
    if (v91 != 11)
    {
      v44 = v80;
      sub_1DF22A830();
      v45 = sub_1DF22A810();
      v83 = v46;
      v84 = v45;
      (*v72)(v44, v81);
      sub_1DF22A720();
      sub_1DF20FC70([v32 pushMetadata], v9);
      v47 = [v32 pullMetadata];
      if (v47)
      {
        v48 = v47;
        v49 = [v48 creationDate];
        if (v49)
        {
          v50 = v49;
          v51 = v70;
          sub_1DF22A7C0();

          v71 = v29;
          v52 = *v85;
          v53 = v43;
          v54 = v69;
          v55 = v51;
          v56 = v74;
          (*v85)(v69, v55, v74);
          v57 = v82;
          v58 = v54;
          v43 = v53;
          v52(v82, v58, v56);
          v29 = v71;
          v59 = type metadata accessor for PullMetadata(0);
          (*(*(v59 - 8) + 56))(v57, 0, 1, v59);

LABEL_16:
          v61 = v77;
          v62 = v83;
          *v77 = v84;
          *(v61 + 8) = v62;
          v63 = v79;
          v52((v61 + v79[5]), v86, v56);
          v64 = (v61 + v63[6]);
          v65 = v89;
          *v64 = v90;
          v64[1] = v65;
          *(v61 + v63[7]) = v43;
          v9 = v75;
          sub_1DF17A710(v75, v61 + v63[8], &qword_1ECE0CF50, &unk_1DF23A480);
          sub_1DF17A710(v57, v61 + v63[9], &unk_1ECE0EF10, &qword_1DF22DDF0);
          v66 = v76;
          sub_1DF21036C(v61, v76, type metadata accessor for TaskStatusEvent);
          sub_1DF21036C(v66, v87, type metadata accessor for TaskStatusEvent);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_1DF174C34(0, v29[2] + 1, 1, v29);
          }

          v31 = v88;
          v30 = &off_1E86AB000;
          v68 = v29[2];
          v67 = v29[3];
          if (v68 >= v67 >> 1)
          {
            v29 = sub_1DF174C34((v67 > 1), v68 + 1, 1, v29);
          }

          v29[2] = v68 + 1;
          sub_1DF21036C(v87, v29 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v68, type metadata accessor for TaskStatusEvent);
          v26 = v73;
          goto LABEL_5;
        }
      }

      v60 = type metadata accessor for PullMetadata(0);
      v57 = v82;
      (*(*(v60 - 8) + 56))(v82, 1, 1, v60);

      v52 = *v85;
      v56 = v74;
      goto LABEL_16;
    }

    v31 = v88;
    v30 = &off_1E86AB000;
LABEL_5:
    ++v27;
    v28 += 2;
    if (v31 == v27)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
}

void *sub_1DF20D600(uint64_t a1, uint64_t a2)
{
  v44 = sub_1DF22A800();
  v5 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF20, &qword_1DF23AA10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v39 - v8;
  v10 = type metadata accessor for TaskErrorEvent(0);
  v11 = *(v10 - 1);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v39 - v15;
  result = sub_1DF20FFD0(*(v2 + 128), a1, a2, &unk_1F5A4FEB8, &block_descriptor_29, sub_1DF2105A4, &block_descriptor_32);
  v17 = result;
  v49 = result[2];
  if (v49)
  {
    v18 = 0;
    v41 = (v5 + 32);
    v47 = (v11 + 48);
    v48 = (v11 + 56);
    v19 = (result + 5);
    v50 = MEMORY[0x1E69E7CC0];
    v42 = v14;
    v46 = result;
    v40 = v11;
    while (v18 < v17[2])
    {
      v20 = *v19;
      v21 = [v20 taskName];
      if (v21)
      {
        v22 = v21;
        v23 = sub_1DF22ACC0();
        v25 = v24;

        v26 = [v20 errorCode];
        if (v26)
        {
          v27 = v26;
          v28 = sub_1DF22ACC0();
          v30 = v29;

          v31 = v43;
          sub_1DF22A720();
          *v9 = 4271950;
          *(v9 + 1) = 0xE300000000000000;
          (*v41)(&v9[v10[5]], v31, v44);
          v32 = 0;
          v33 = &v9[v10[6]];
          *v33 = v23;
          v33[1] = v25;
          v34 = &v9[v10[7]];
          *v34 = v28;
          v34[1] = v30;
          v11 = v40;
          v14 = v42;
        }

        else
        {

          v32 = 1;
        }

        v17 = v46;
      }

      else
      {
        v32 = 1;
      }

      (*v48)(v9, v32, 1, v10);

      if ((*v47)(v9, 1, v10) == 1)
      {
        result = sub_1DF16184C(v9, &qword_1ECE0EF20, &qword_1DF23AA10);
      }

      else
      {
        v35 = v45;
        sub_1DF21036C(v9, v45, type metadata accessor for TaskErrorEvent);
        sub_1DF21036C(v35, v14, type metadata accessor for TaskErrorEvent);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_1DF174DE0(0, v50[2] + 1, 1, v50);
        }

        v37 = v50[2];
        v36 = v50[3];
        if (v37 >= v36 >> 1)
        {
          v50 = sub_1DF174DE0((v36 > 1), v37 + 1, 1, v50);
        }

        v38 = v50;
        v50[2] = v37 + 1;
        result = sub_1DF21036C(v14, v38 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v37, type metadata accessor for TaskErrorEvent);
      }

      ++v18;
      v19 += 2;
      if (v49 == v18)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v50 = MEMORY[0x1E69E7CC0];
LABEL_19:

    return v50;
  }

  return result;
}

void sub_1DF20DAA8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*(v4 + 120) source];
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v12 = sub_1DF22A8C0();
  __swift_project_value_buffer(v12, qword_1ED8E92C0);
  v13 = *(v8 + 16);
  v29 = a1;
  v13(v10, a1, a3);
  v14 = a2;
  v15 = sub_1DF22A8A0();
  v16 = sub_1DF22B100();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28 = v11;
    v18 = v17;
    v19 = swift_slowAlloc();
    v30[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_1DF160728(*&v14[OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName], *&v14[OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName + 8], v30);
    *(v18 + 12) = 2080;
    sub_1DF22AE10();
    (*(v8 + 8))(v10, a3);
    v20 = sub_1DF160728(v30[1], v30[2], v30);

    *(v18 + 14) = v20;
    _os_log_impl(&dword_1DF15A000, v15, v16, "Writing task event for %s with state: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D0B40](v19, -1, -1);
    v21 = v18;
    v11 = v28;
    MEMORY[0x1E12D0B40](v21, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, a3);
  }

  sub_1DF22AE10();
  v22 = objc_allocWithZone(MEMORY[0x1E698EC60]);
  v23 = sub_1DF22ACA0();
  v24 = sub_1DF22ACA0();
  v25 = sub_1DF22ACA0();

  v26 = [v22 initWithTaskID:v23 taskName:v24 eventName:v25];

  [v11 sendEvent_];
}

void sub_1DF20DE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a4;
  v8 = type metadata accessor for TaskCustomEvent(0);
  v71 = *(v8 - 8);
  v72 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v74 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v70 = (&v68 - v12);
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v68 - v13;
  v14 = sub_1DF20FFD0(*(v4 + 120), a1, a2, &unk_1F5A4FE40, &block_descriptor_20, sub_1DF210574, &block_descriptor_23);
  v15 = v14;
  v16 = *(v14 + 16);
  if (!v16)
  {
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v17 = 0;
  v75 = v14 + 40;
  v68 = v16 - 1;
  v18 = MEMORY[0x1E69E7CC0];
  do
  {
    v73 = v18;
    v19 = (v75 + 16 * v17);
    v20 = v17;
    while (1)
    {
      if (v20 >= *(v15 + 16))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        return;
      }

      v21 = *(v19 - 1);
      v17 = v20 + 1;
      v22 = *v19;
      v23 = v22;
      if (!v76)
      {
        goto LABEL_15;
      }

      v24 = [v22 taskName];
      if (v24)
      {
        break;
      }

LABEL_4:

      v19 += 2;
      ++v20;
      if (v16 == v17)
      {
        v18 = v73;
        goto LABEL_23;
      }
    }

    v25 = v16;
    v26 = v24;
    v27 = a3;
    v28 = sub_1DF22ACC0();
    v30 = v29;

    v31 = v28;
    a3 = v27;
    if (v31 != v27 || v30 != v76)
    {
      v33 = sub_1DF22B620();

      v16 = v25;
      if (v33)
      {
        goto LABEL_15;
      }

      goto LABEL_4;
    }

    v16 = v25;
LABEL_15:
    v34 = v73;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = v34;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1DF160DD8(0, *(v34 + 16) + 1, 1);
      v34 = v77;
    }

    v37 = *(v34 + 16);
    v36 = *(v34 + 24);
    if (v37 >= v36 >> 1)
    {
      sub_1DF160DD8((v36 > 1), v37 + 1, 1);
      v34 = v77;
    }

    *(v34 + 16) = v37 + 1;
    v38 = v34 + 16 * v37;
    *(v38 + 32) = v21;
    *(v38 + 40) = v23;
    v18 = v34;
  }

  while (v68 != v20);
LABEL_23:

  v39 = *(v18 + 16);
  if (v39)
  {
    v40 = 0;
    v41 = (v18 + 40);
    v42 = MEMORY[0x1E69E7CC0];
    v43 = &off_1E86AB000;
    v73 = v18;
    v68 = v39;
    do
    {
      if (v40 >= *(v18 + 16))
      {
        goto LABEL_40;
      }

      v44 = *v41;
      v45 = [v44 v43[256]];
      if (v45)
      {
        v46 = v45;
        v47 = sub_1DF22ACC0();
        v49 = v48;

        v50 = [v44 taskName];
        if (v50)
        {
          v76 = v47;
          v51 = v50;
          v75 = sub_1DF22ACC0();
          v53 = v52;

          v54 = [v44 eventName];
          if (v54)
          {
            v55 = v54;
            v56 = sub_1DF22ACC0();
            v57 = v42;
            v59 = v58;

            v60 = v72;
            v61 = v70;
            sub_1DF22A720();

            v62 = v75;
            *v61 = v76;
            v61[1] = v49;
            v63 = (v61 + *(v60 + 24));
            *v63 = v62;
            v63[1] = v53;
            v64 = (v61 + *(v60 + 28));
            *v64 = v56;
            v64[1] = v59;
            v42 = v57;
            v65 = v69;
            sub_1DF21036C(v61, v69, type metadata accessor for TaskCustomEvent);
            sub_1DF21036C(v65, v74, type metadata accessor for TaskCustomEvent);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v42 = sub_1DF174E2C(0, v57[2] + 1, 1, v57);
            }

            v67 = v42[2];
            v66 = v42[3];
            v18 = v73;
            v43 = &off_1E86AB000;
            if (v67 >= v66 >> 1)
            {
              v42 = sub_1DF174E2C((v66 > 1), v67 + 1, 1, v42);
            }

            v42[2] = v67 + 1;
            sub_1DF21036C(v74, v42 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v67, type metadata accessor for TaskCustomEvent);
            v39 = v68;
            goto LABEL_27;
          }
        }
      }

LABEL_27:
      ++v40;
      v41 += 2;
    }

    while (v39 != v40);
  }
}

void *sub_1DF20E34C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF28, &qword_1DF23AA18);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v22 - v6);
  v8 = type metadata accessor for TaskTelemetry(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v25 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v24 = &v22 - v12;
  result = sub_1DF20FFD0(*(v2 + 136), a1, a2, &unk_1F5A4FDC8, &block_descriptor_11, sub_1DF210544, &block_descriptor_14);
  v14 = result;
  v15 = result[2];
  if (v15)
  {
    v16 = 0;
    v17 = (result + 5);
    v18 = MEMORY[0x1E69E7CC0];
    v23 = v8;
    while (v16 < *(v14 + 16))
    {
      sub_1DF20E63C(*v17, v7);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        result = sub_1DF16184C(v7, &qword_1ECE0EF28, &qword_1DF23AA18);
      }

      else
      {
        v19 = v24;
        sub_1DF21036C(v7, v24, type metadata accessor for TaskTelemetry);
        sub_1DF21036C(v19, v25, type metadata accessor for TaskTelemetry);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1DF174AE4(0, v18[2] + 1, 1, v18);
        }

        v21 = v18[2];
        v20 = v18[3];
        if (v21 >= v20 >> 1)
        {
          v18 = sub_1DF174AE4((v20 > 1), v21 + 1, 1, v18);
        }

        v18[2] = v21 + 1;
        result = sub_1DF21036C(v25, v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, type metadata accessor for TaskTelemetry);
        v8 = v23;
      }

      ++v16;
      v17 += 2;
      if (v15 == v16)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_13:

    return v18;
  }

  return result;
}

uint64_t sub_1DF20E63C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v104 = a2;
  v3 = sub_1DF22A840();
  v101 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v100 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D4A8, &unk_1DF23A460);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v84 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF40, &qword_1DF23AAB0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v99 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v102 = &v84 - v14;
  v15 = sub_1DF22A800();
  v103 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v98 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v84 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v84 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v84 - v24;
  v26 = [a1 taskName];
  if (!v26)
  {
    goto LABEL_16;
  }

  v97 = v25;
  v95 = v3;
  v27 = v26;
  v94 = sub_1DF22ACC0();
  v29 = v28;

  v30 = [a1 taskState];
  if (!v30)
  {
    goto LABEL_15;
  }

  v96 = v29;
  v31 = v30;
  v92 = sub_1DF22ACC0();
  v33 = v32;

  v34 = [a1 latestEventTimestamp];
  if (!v34)
  {
LABEL_14:

LABEL_15:

    goto LABEL_16;
  }

  v93 = v33;
  v35 = v97;
  v36 = v34;
  sub_1DF22A7C0();

  v37 = [a1 bucketStart];
  if (!v37)
  {
    (*(v103 + 8))(v35, v15);
    goto LABEL_14;
  }

  v38 = v37;
  sub_1DF22A7C0();

  v39 = [a1 bucketEnd];
  if (v39)
  {
    v40 = v39;
    sub_1DF22A7C0();

    sub_1DF1A8874();
    result = sub_1DF22AC60();
    if (result)
    {
      v42 = *(v103 + 16);
      v42(v10, v23, v15);
      v42(&v10[*(v5 + 48)], v20, v15);
      sub_1DF17A6A8(v10, v8, &qword_1ECE0D4A8, &unk_1DF23A460);
      v91 = *(v5 + 48);
      v86 = v20;
      v43 = v103;
      v44 = *(v103 + 32);
      v44(v102, v8, v15);
      v85 = v23;
      v45 = *(v43 + 8);
      v45(&v8[v91], v15);
      v87 = v45;
      v103 = v43 + 8;
      sub_1DF17A710(v10, v8, &qword_1ECE0D4A8, &unk_1DF23A460);
      v46 = v102;
      v44(&v102[*(v11 + 36)], &v8[*(v5 + 48)], v15);
      v47 = v44;
      v45(v8, v15);
      v48 = v86;
      v49 = v85;
      sub_1DF22A7F0();
      if (v50 <= 86400.0)
      {
        v51 = 6;
      }

      else
      {
        v51 = 7;
      }

      LODWORD(v91) = v51;
      v90 = [a1 countCompleted];
      v89 = [a1 countFailed];
      v88 = [a1 countDeferred];
      [a1 dailyExecutionLatency];
      v53 = v52;
      [a1 crossExecutionDelay];
      v55 = v54;
      [a1 executionCompletionTime];
      v57 = v56;
      [a1 executionFailureTime];
      v59 = v58;
      [a1 executionDeferralTime];
      v61 = v60;
      v62 = v100;
      sub_1DF22A830();
      v63 = sub_1DF22A810();
      v65 = v64;

      (*(v101 + 8))(v62, v95);
      v66 = v87;
      v87(v48, v15);
      v66(v49, v15);
      v67 = v99;
      sub_1DF17A710(v46, v99, &qword_1ECE0EF40, &qword_1DF23AAB0);
      v68 = v98;
      v47(v98, v97, v15);
      v69 = v104;
      *v104 = v63;
      v69[1] = v65;
      v70 = type metadata accessor for TaskTelemetry(0);
      sub_1DF17A710(v67, v69 + v70[5], &qword_1ECE0EF40, &qword_1DF23AAB0);
      v71 = (v69 + v70[7]);
      v72 = v96;
      *v71 = v94;
      v71[1] = v72;
      v73 = (v69 + v70[8]);
      v74 = v93;
      *v73 = v92;
      v73[1] = v74;
      v47(v69 + v70[9], v68, v15);
      *(v69 + v70[10]) = v90;
      *(v69 + v70[11]) = v89;
      *(v69 + v70[12]) = v88;
      *(v69 + v70[13]) = v53;
      *(v69 + v70[14]) = v55;
      *(v69 + v70[15]) = v57;
      *(v69 + v70[16]) = v59;
      *(v69 + v70[17]) = v61;
      *(v69 + v70[6]) = v91;
      *(v69 + v70[18]) = 0;
      return (*(*(v70 - 1) + 56))(v69, 0, 1, v70);
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  v83 = *(v103 + 8);
  v83(v23, v15);
  v83(v35, v15);
LABEL_16:
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v75 = sub_1DF22A8C0();
  __swift_project_value_buffer(v75, qword_1ED8E92C0);
  v76 = a1;
  v77 = sub_1DF22A8A0();
  v78 = sub_1DF22B100();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v79 = 138412290;
    *(v79 + 4) = v76;
    *v80 = v76;
    v81 = v76;
    _os_log_impl(&dword_1DF15A000, v77, v78, "Invalid event: %@", v79, 0xCu);
    sub_1DF16184C(v80, &qword_1ECE0C7E8, &qword_1DF230550);
    MEMORY[0x1E12D0B40](v80, -1, -1);
    MEMORY[0x1E12D0B40](v79, -1, -1);
    v76 = v77;
    v77 = v81;
  }

  v82 = type metadata accessor for TaskTelemetry(0);
  return (*(*(v82 - 8) + 56))(v104, 1, 1, v82);
}

void *sub_1DF20EFA4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0EF30, &qword_1DF23AA20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v22 - v6);
  v8 = type metadata accessor for DeviceTelemetry(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v25 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v24 = &v22 - v12;
  result = sub_1DF20FFD0(*(v2 + 144), a1, a2, &unk_1F5A4FD50, &block_descriptor_2, sub_1DF210514, &block_descriptor_5);
  v14 = result;
  v15 = result[2];
  if (v15)
  {
    v16 = 0;
    v17 = (result + 5);
    v18 = MEMORY[0x1E69E7CC0];
    v23 = v8;
    while (v16 < *(v14 + 16))
    {
      sub_1DF20F294(*v17, v7);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        result = sub_1DF16184C(v7, &unk_1ECE0EF30, &qword_1DF23AA20);
      }

      else
      {
        v19 = v24;
        sub_1DF21036C(v7, v24, type metadata accessor for DeviceTelemetry);
        sub_1DF21036C(v19, v25, type metadata accessor for DeviceTelemetry);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1DF174C5C(0, v18[2] + 1, 1, v18);
        }

        v21 = v18[2];
        v20 = v18[3];
        if (v21 >= v20 >> 1)
        {
          v18 = sub_1DF174C5C((v20 > 1), v21 + 1, 1, v18);
        }

        v18[2] = v21 + 1;
        result = sub_1DF21036C(v25, v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, type metadata accessor for DeviceTelemetry);
        v8 = v23;
      }

      ++v16;
      v17 += 2;
      if (v15 == v16)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_13:

    return v18;
  }

  return result;
}

uint64_t sub_1DF20F294@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v61 = a2;
  v3 = sub_1DF22A840();
  v58 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D4A8, &unk_1DF23A460);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v50 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF40, &qword_1DF23AAB0);
  v12 = MEMORY[0x1EEE9AC00](v57);
  v59 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v50 - v14;
  v15 = sub_1DF22A800();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - v20;
  v22 = [a1 bucketStart];
  if (v22)
  {
    v56 = v5;
    v23 = v22;
    sub_1DF22A7C0();

    v24 = [a1 bucketEnd];
    if (v24)
    {
      v25 = v24;
      sub_1DF22A7C0();

      sub_1DF1A8874();
      result = sub_1DF22AC60();
      if (result)
      {
        v55 = v3;
        v27 = v16[2];
        v27(v11, v21, v15);
        v27(&v11[*(v6 + 48)], v19, v15);
        sub_1DF17A6A8(v11, v9, &qword_1ECE0D4A8, &unk_1DF23A460);
        v28 = *(v6 + 48);
        v29 = v61;
        v53 = v19;
        v54 = v21;
        v30 = v16[4];
        v52 = v11;
        v30(v60, v9, v15);
        v31 = v16[1];
        v31(&v9[v28], v15);
        sub_1DF17A710(v52, v9, &qword_1ECE0D4A8, &unk_1DF23A460);
        v32 = *(v6 + 48);
        v33 = v60;
        v30(&v60[*(v57 + 36)], &v9[v32], v15);
        v31(v9, v15);
        v57 = [a1 tasksCount];
        v52 = [a1 tasksRun];
        v51 = [a1 tasksDeferred];
        v50 = [a1 tasksFailed];
        v34 = [a1 tasksCompleted];
        v35 = v56;
        sub_1DF22A830();
        v36 = sub_1DF22A810();
        v38 = v37;

        (*(v58 + 8))(v35, v55);
        v31(v53, v15);
        v31(v54, v15);
        v39 = v59;
        sub_1DF17A710(v33, v59, &qword_1ECE0EF40, &qword_1DF23AAB0);
        *v29 = v36;
        v29[1] = v38;
        v40 = type metadata accessor for DeviceTelemetry(0);
        sub_1DF17A710(v39, v29 + v40[5], &qword_1ECE0EF40, &qword_1DF23AAB0);
        *(v29 + v40[6]) = v57;
        v41 = v51;
        *(v29 + v40[7]) = v52;
        *(v29 + v40[8]) = v41;
        *(v29 + v40[9]) = v50;
        *(v29 + v40[10]) = v34;
        return (*(*(v40 - 1) + 56))(v29, 0, 1, v40);
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    (v16[1])(v21, v15);
  }

  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v42 = sub_1DF22A8C0();
  __swift_project_value_buffer(v42, qword_1ED8E92C0);
  v43 = a1;
  v44 = sub_1DF22A8A0();
  v45 = sub_1DF22B100();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 138412290;
    *(v46 + 4) = v43;
    *v47 = v43;
    v48 = v43;
    _os_log_impl(&dword_1DF15A000, v44, v45, "Invalid event: %@", v46, 0xCu);
    sub_1DF16184C(v47, &qword_1ECE0C7E8, &qword_1DF230550);
    MEMORY[0x1E12D0B40](v47, -1, -1);
    MEMORY[0x1E12D0B40](v46, -1, -1);
    v43 = v44;
    v44 = v48;
  }

  v49 = type metadata accessor for DeviceTelemetry(0);
  return (*(*(v49 - 8) + 56))(v61, 1, 1, v49);
}

void sub_1DF20F968(void *a1, uint64_t a2, uint64_t (*a3)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v6 = [a1 eventBody];
  if (v6)
  {
    v7 = v6;
    [a1 timestamp];
    v9 = v8;
    swift_beginAccess();
    v10 = *(a2 + 16);
    v11 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = a3(0, *(v10 + 16) + 1, 1, v10);
      *(a2 + 16) = v10;
    }

    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      v10 = a3(v13 > 1, v14 + 1, 1, v10);
    }

    *(v10 + 16) = v14 + 1;
    v15 = v10 + 16 * v14;
    *(v15 + 32) = v9;
    *(v15 + 40) = v11;
    *(a2 + 16) = v10;
    swift_endAccess();
  }

  else
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v16 = sub_1DF22A8C0();
    __swift_project_value_buffer(v16, qword_1ED8E92C0);
    v17 = a1;
    oslog = sub_1DF22A8A0();
    v18 = sub_1DF22B100();

    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v17;
      *v20 = v17;
      v21 = v17;
      _os_log_impl(&dword_1DF15A000, oslog, v18, "Invalid event: %@", v19, 0xCu);
      sub_1DF16184C(v20, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v20, -1, -1);
      MEMORY[0x1E12D0B40](v19, -1, -1);
    }
  }
}

uint64_t LedgerClient.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DF20FC70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1DF22A800();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v40 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - v12;
  if (a1)
  {
    v14 = [a1 channelID];
    if (v14)
    {
      v15 = v14;
      v16 = sub_1DF22ACC0();
      v18 = v17;

      v19 = [a1 creationDate];
      if (v19)
      {
        v44 = v16;
        v45 = v18;
        v20 = v19;
        sub_1DF22A7C0();

        v21 = *(v5 + 32);
        v21(v13, v11, v4);
        v22 = [a1 pushPriority];
        if (v22)
        {
          v23 = v22;
          v43 = sub_1DF22ACC0();
          v25 = v24;

          v26 = [a1 pushType];
          if (v26)
          {
            v27 = v26;
            v41 = sub_1DF22ACC0();
            v42 = v28;

            v29 = [a1 topic];
            if (v29)
            {
              v30 = v29;
              v31 = sub_1DF22ACC0();
              v40 = v25;
              v33 = v32;

              v21(v8, v13, v4);
              *a2 = v31;
              a2[1] = v33;
              v34 = v45;
              a2[2] = v44;
              a2[3] = v34;
              v35 = v42;
              a2[4] = v41;
              a2[5] = v35;
              v36 = v40;
              a2[6] = v43;
              a2[7] = v36;
              v37 = type metadata accessor for PushMetadata(0);
              v21(a2 + *(v37 + 32), v8, v4);
              return (*(*(v37 - 8) + 56))(a2, 0, 1, v37);
            }

            (*(v5 + 8))(v13, v4);
          }

          else
          {
            (*(v5 + 8))(v13, v4);
          }
        }

        else
        {
          (*(v5 + 8))(v13, v4);
        }
      }
    }
  }

  v39 = type metadata accessor for PushMetadata(0);
  return (*(*(v39 - 8) + 56))(a2, 1, 1, v39);
}

uint64_t sub_1DF20FFD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(), uint64_t a7)
{
  v31 = a6;
  v32 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - v15;
  sub_1DF17A6A8(a2, &v31 - v15, &qword_1ECE0CDC0, &unk_1DF22D7C0);
  sub_1DF17A6A8(a3, v14, &qword_1ECE0CDC0, &unk_1DF22D7C0);
  v17 = sub_1DF22A800();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v20 = 0;
  if (v19(v16, 1, v17) != 1)
  {
    v20 = sub_1DF22A770();
    (*(v18 + 8))(v16, v17);
  }

  if (v19(v14, 1, v17) == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = sub_1DF22A770();
    (*(v18 + 8))(v14, v17);
  }

  v22 = [objc_allocWithZone(MEMORY[0x1E698F2D0]) initWithStartDate:v20 endDate:v21 maxEvents:0 lastN:0 reversed:0];

  v23 = sub_1DF22ACA0();
  v24 = [a1 publisherWithUseCase:v23 options:v22];

  v25 = swift_allocObject();
  *(v25 + 16) = MEMORY[0x1E69E7CC0];
  v37 = nullsub_1;
  v38 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1DF21064C;
  v36 = a5;
  v26 = _Block_copy(&aBlock);
  v37 = v31;
  v38 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1DF21064C;
  v36 = v32;
  v27 = _Block_copy(&aBlock);

  v28 = [v24 sinkWithCompletion:v26 receiveInput:v27];

  _Block_release(v27);
  _Block_release(v26);

  swift_beginAccess();
  v29 = *(v25 + 16);

  return v29;
}

uint64_t sub_1DF21036C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t DeviceTelemetry.init(contextId:bucketRange:tasksCount:tasksRun:tasksDeferred:tasksFailed:tasksCompleted:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = a1;
  a9[1] = a2;
  v16 = type metadata accessor for DeviceTelemetry(0);
  result = sub_1DF17A710(a3, a9 + v16[5], &qword_1ECE0EF40, &qword_1DF23AAB0);
  *(a9 + v16[6]) = a4;
  *(a9 + v16[7]) = a5;
  *(a9 + v16[8]) = a6;
  *(a9 + v16[9]) = a7;
  *(a9 + v16[10]) = a8;
  return result;
}

void __swiftcall PushTelemetry.init(contextId:taskName:countPushParameterError:countPushProcessed:countPushReceived:countPushRegistrationError:pushErrorLatency:pushFirstRunLatency:pushReceivedLatency:)(LighthouseBackground::PushTelemetry *__return_ptr retstr, Swift::String contextId, Swift::String taskName, Swift::Int countPushParameterError, Swift::Int countPushProcessed, Swift::Int countPushReceived, Swift::Int countPushRegistrationError, Swift::Double pushErrorLatency, Swift::Double pushFirstRunLatency, Swift::Double pushReceivedLatency)
{
  retstr->contextId = contextId;
  retstr->taskName = taskName;
  retstr->countPushParameterError = countPushParameterError;
  retstr->countPushProcessed = countPushProcessed;
  retstr->countPushReceived = countPushReceived;
  retstr->countPushRegistrationError = countPushRegistrationError;
  retstr->pushErrorLatency = pushErrorLatency;
  retstr->pushFirstRunLatency = pushFirstRunLatency;
  retstr->pushReceivedLatency = pushReceivedLatency;
}

uint64_t TaskTelemetry.init(contextId:bucketRange:bucketInterval:taskName:taskState:latestEventTimestamp:countCompleted:countFailed:countDeferred:dailyExecutionLatency:crossExecutionDelay:executionCompletionTime:executionFailureTime:executionDeferralTime:deferralToCompletionTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v37 = *a4;
  *a9 = a1;
  *(a9 + 1) = a2;
  v31 = type metadata accessor for TaskTelemetry(0);
  sub_1DF17A710(a3, &a9[v31[5]], &qword_1ECE0EF40, &qword_1DF23AAB0);
  v32 = &a9[v31[7]];
  *v32 = a5;
  *(v32 + 1) = a6;
  v33 = &a9[v31[8]];
  *v33 = a7;
  *(v33 + 1) = a8;
  v34 = v31[9];
  v35 = sub_1DF22A800();
  result = (*(*(v35 - 8) + 32))(&a9[v34], a16, v35);
  *&a9[v31[10]] = a17;
  *&a9[v31[11]] = a18;
  *&a9[v31[12]] = a19;
  *&a9[v31[13]] = a10;
  *&a9[v31[14]] = a11;
  *&a9[v31[15]] = a12;
  *&a9[v31[16]] = a13;
  *&a9[v31[17]] = a14;
  a9[v31[6]] = v37;
  *&a9[v31[18]] = a15;
  return result;
}

uint64_t TaskStatusEvent.init(contextId:date:taskName:taskStatus:pushMetadata:pullMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v15 = *a6;
  *a9 = a1;
  *(a9 + 1) = a2;
  v16 = type metadata accessor for TaskStatusEvent(0);
  v17 = v16[5];
  v18 = sub_1DF22A800();
  (*(*(v18 - 8) + 32))(&a9[v17], a3, v18);
  v19 = &a9[v16[6]];
  *v19 = a4;
  *(v19 + 1) = a5;
  a9[v16[7]] = v15;
  sub_1DF17A710(a7, &a9[v16[8]], &qword_1ECE0CF50, &unk_1DF23A480);
  return sub_1DF17A710(a8, &a9[v16[9]], &unk_1ECE0EF10, &qword_1DF22DDF0);
}

uint64_t sub_1DF210A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void)@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v15 = a8(0);
  v16 = v15[5];
  v17 = sub_1DF22A800();
  result = (*(*(v17 - 8) + 32))(&a9[v16], a3, v17);
  v19 = &a9[v15[6]];
  *v19 = a4;
  *(v19 + 1) = a5;
  v20 = &a9[v15[7]];
  *v20 = a6;
  *(v20 + 1) = a7;
  return result;
}

LighthouseBackground::CoreAnalyticsEvents_optional __swiftcall CoreAnalyticsEvents.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CoreAnalyticsEvents.rawValue.getter()
{
  v1 = 0xD00000000000002ELL;
  v2 = *v0;
  v3 = 0xD000000000000025;
  if (v2 != 5)
  {
    v3 = 0xD00000000000002BLL;
  }

  v4 = 0xD00000000000002CLL;
  if (v2 == 3)
  {
    v4 = 0xD00000000000002ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v2 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000030;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DF210C60(uint64_t a1)
{
  sub_1DF22AD20();
}

void sub_1DF210D68(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000002ELL;
  v3 = *v1;
  v4 = "oad";
  v5 = "ouseLedger.PushTaskTelemetry";
  v6 = 0xD000000000000025;
  if (v3 != 5)
  {
    v6 = 0xD00000000000002BLL;
    v5 = ".CloudWorkerTelemetry";
  }

  v7 = "ouseLedger.TaskErrorTelemetry";
  v8 = 0xD00000000000002CLL;
  if (v3 == 3)
  {
    v8 = 0xD00000000000002ELL;
  }

  else
  {
    v7 = "ouseLedger.TaskCustomTelemetry";
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "eStatusTelemetry";
  if (v3 != 1)
  {
    v2 = 0xD00000000000002DLL;
    v9 = "ouseLedger.TaskStatusTelemetry";
  }

  if (*v1)
  {
    v4 = v9;
  }

  else
  {
    v2 = 0xD000000000000030;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v2 = v6;
    v10 = v5;
  }

  *a1 = v2;
  a1[1] = v10 | 0x8000000000000000;
}

uint64_t TaskStatusEvent.taskStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TaskStatusEvent(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t sub_1DF210F34()
{
  v1 = *v0;
  v2 = 0x49747865746E6F63;
  v3 = 0x746174536B736174;
  v4 = 0x6174654D68737570;
  if (v1 != 4)
  {
    v4 = 0x6174654D6C6C7570;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1702125924;
  if (v1 != 1)
  {
    v5 = 0x656D614E6B736174;
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

uint64_t sub_1DF211000@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF217248(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF211034(uint64_t a1)
{
  v2 = sub_1DF2113C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF211070(uint64_t a1)
{
  v2 = sub_1DF2113C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TaskStatusEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF48, &qword_1DF23AAB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF2113C4();
  sub_1DF22B740();
  v11[15] = 0;
  sub_1DF22B580();
  if (!v2)
  {
    v9 = type metadata accessor for TaskStatusEvent(0);
    v11[14] = 1;
    sub_1DF22A800();
    sub_1DF216870(&qword_1ECE0C728, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1DF22B5C0();
    v11[13] = 2;
    sub_1DF22B580();
    v11[12] = *(v3 + *(v9 + 28));
    v11[11] = 3;
    sub_1DF184180();
    sub_1DF22B5C0();
    v11[10] = 4;
    type metadata accessor for PushMetadata(0);
    sub_1DF216870(&qword_1ECE0CF68, type metadata accessor for PushMetadata, &protocol conformance descriptor for PushMetadata);
    sub_1DF22B560();
    v11[9] = 5;
    type metadata accessor for PullMetadata(0);
    sub_1DF216870(&qword_1ECE0CF70, type metadata accessor for PullMetadata, &protocol conformance descriptor for PullMetadata);
    sub_1DF22B560();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1DF2113C4()
{
  result = qword_1ECE0EF50;
  if (!qword_1ECE0EF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EF50);
  }

  return result;
}

uint64_t TaskStatusEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0EF10, &qword_1DF22DDF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = v27 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CF50, &unk_1DF23A480);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v27 - v6;
  v8 = sub_1DF22A800();
  v31 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF58, &qword_1DF23AAC0);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v12 = v27 - v11;
  v13 = type metadata accessor for TaskStatusEvent(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1DF2113C4();
  v32 = v12;
  v17 = v34;
  sub_1DF22B730();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v35);
  }

  v34 = v7;
  v19 = v30;
  v18 = v31;
  v42 = 0;
  *v15 = sub_1DF22B4A0();
  v15[1] = v20;
  v41 = 1;
  sub_1DF216870(&qword_1ED8E6BE0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1DF22B4E0();
  (*(v18 + 32))(v15 + v13[5], v10, v8);
  v40 = 2;
  v21 = sub_1DF22B4A0();
  v22 = (v15 + v13[6]);
  *v22 = v21;
  v22[1] = v23;
  v38 = 3;
  sub_1DF1847C4();
  sub_1DF22B4E0();
  v27[1] = 0;
  *(v15 + v13[7]) = v39;
  type metadata accessor for PushMetadata(0);
  v37 = 4;
  sub_1DF216870(&qword_1ECE0CF80, type metadata accessor for PushMetadata, &protocol conformance descriptor for PushMetadata);
  v24 = v34;
  sub_1DF22B480();
  sub_1DF17A710(v24, v15 + v13[8], &qword_1ECE0CF50, &unk_1DF23A480);
  type metadata accessor for PullMetadata(0);
  v36 = 5;
  sub_1DF216870(&qword_1ECE0CF88, type metadata accessor for PullMetadata, &protocol conformance descriptor for PullMetadata);
  v25 = v29;
  sub_1DF22B480();
  (*(v19 + 8))(v32, v33);
  sub_1DF17A710(v25, v15 + v13[9], &unk_1ECE0EF10, &qword_1DF22DDF0);
  sub_1DF212350(v15, v28, type metadata accessor for TaskStatusEvent);
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  return sub_1DF2123B8(v15, type metadata accessor for TaskStatusEvent);
}

uint64_t sub_1DF211AA8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1DF22A800();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1DF211B44(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 24));

  return v2;
}

uint64_t sub_1DF211BA4()
{
  v1 = 0x49747865746E6F63;
  v2 = 0x656D614E6B736174;
  if (*v0 != 2)
  {
    v2 = 0x73654D726F727265;
  }

  if (*v0)
  {
    v1 = 1702125924;
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

uint64_t sub_1DF211C24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF217460(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF211C4C(uint64_t a1)
{
  v2 = sub_1DF211EE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF211C88(uint64_t a1)
{
  v2 = sub_1DF211EE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TaskErrorEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF60, &qword_1DF23AAC8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF211EE0();
  sub_1DF22B740();
  v8[15] = 0;
  sub_1DF22B580();
  if (!v1)
  {
    type metadata accessor for TaskErrorEvent(0);
    v8[14] = 1;
    sub_1DF22A800();
    sub_1DF216870(&qword_1ECE0C728, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1DF22B5C0();
    v8[13] = 2;
    sub_1DF22B580();
    v8[12] = 3;
    sub_1DF22B580();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1DF211EE0()
{
  result = qword_1ECE0EF68;
  if (!qword_1ECE0EF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EF68);
  }

  return result;
}

uint64_t TaskErrorEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_1DF22A800();
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF70, &qword_1DF23AAD0);
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v24 - v6;
  v8 = type metadata accessor for TaskErrorEvent(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF211EE0();
  v27 = v7;
  v11 = v29;
  sub_1DF22B730();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v12 = v25;
  v33 = 0;
  v13 = v10;
  *v10 = sub_1DF22B4A0();
  v10[1] = v14;
  v29 = v14;
  v32 = 1;
  sub_1DF216870(&qword_1ED8E6BE0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1DF22B4E0();
  v15 = v8;
  (*(v12 + 32))(v13 + *(v8 + 20), v5, v3);
  v31 = 2;
  v16 = sub_1DF22B4A0();
  v17 = (v13 + *(v8 + 24));
  *v17 = v16;
  v17[1] = v18;
  v30 = 3;
  v19 = sub_1DF22B4A0();
  v21 = v20;
  (*(v26 + 8))(v27, v28);
  v22 = (v13 + *(v15 + 28));
  *v22 = v19;
  v22[1] = v21;
  sub_1DF212350(v13, v24, type metadata accessor for TaskErrorEvent);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1DF2123B8(v13, type metadata accessor for TaskErrorEvent);
}

uint64_t sub_1DF212350(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF2123B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DF212490(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 28));

  return v2;
}

uint64_t sub_1DF2124D8()
{
  v1 = 0x49747865746E6F63;
  v2 = 0x656D614E6B736174;
  if (*v0 != 2)
  {
    v2 = 0x6D614E746E657665;
  }

  if (*v0)
  {
    v1 = 1702125924;
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

uint64_t sub_1DF21254C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF2175D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF212574(uint64_t a1)
{
  v2 = sub_1DF212808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF2125B0(uint64_t a1)
{
  v2 = sub_1DF212808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TaskCustomEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF78, &qword_1DF23AAD8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF212808();
  sub_1DF22B740();
  v8[15] = 0;
  sub_1DF22B580();
  if (!v1)
  {
    type metadata accessor for TaskCustomEvent(0);
    v8[14] = 1;
    sub_1DF22A800();
    sub_1DF216870(&qword_1ECE0C728, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1DF22B5C0();
    v8[13] = 2;
    sub_1DF22B580();
    v8[12] = 3;
    sub_1DF22B580();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1DF212808()
{
  result = qword_1ECE0EF80;
  if (!qword_1ECE0EF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EF80);
  }

  return result;
}

uint64_t TaskCustomEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_1DF22A800();
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF88, &qword_1DF23AAE0);
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v24 - v6;
  v8 = type metadata accessor for TaskCustomEvent(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF212808();
  v27 = v7;
  v11 = v29;
  sub_1DF22B730();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v12 = v25;
  v33 = 0;
  v13 = v10;
  *v10 = sub_1DF22B4A0();
  v10[1] = v14;
  v29 = v14;
  v32 = 1;
  sub_1DF216870(&qword_1ED8E6BE0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1DF22B4E0();
  v15 = v8;
  (*(v12 + 32))(v13 + *(v8 + 20), v5, v3);
  v31 = 2;
  v16 = sub_1DF22B4A0();
  v17 = (v13 + *(v8 + 24));
  *v17 = v16;
  v17[1] = v18;
  v30 = 3;
  v19 = sub_1DF22B4A0();
  v21 = v20;
  (*(v26 + 8))(v27, v28);
  v22 = (v13 + *(v15 + 28));
  *v22 = v19;
  v22[1] = v21;
  sub_1DF212350(v13, v24, type metadata accessor for TaskCustomEvent);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1DF2123B8(v13, type metadata accessor for TaskCustomEvent);
}

uint64_t sub_1DF212D74()
{
  v1 = *v0;
  v2 = 0x49747865746E6F63;
  v3 = 0x696146736B736174;
  if (v1 != 5)
  {
    v3 = 0x6D6F43736B736174;
  }

  v4 = 0x6E7552736B736174;
  if (v1 != 3)
  {
    v4 = 0x666544736B736174;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x615274656B637562;
  if (v1 != 1)
  {
    v5 = 0x756F43736B736174;
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

uint64_t sub_1DF212E80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF217740(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF212EA8(uint64_t a1)
{
  v2 = sub_1DF2131CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF212EE4(uint64_t a1)
{
  v2 = sub_1DF2131CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DeviceTelemetry.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF90, &qword_1DF23AAE8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF2131CC();
  sub_1DF22B740();
  v8[15] = 0;
  sub_1DF22B580();
  if (!v1)
  {
    type metadata accessor for DeviceTelemetry(0);
    v8[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF40, &qword_1DF23AAB0);
    sub_1DF213688(&qword_1ECE0EFA0, &qword_1ECE0C728, MEMORY[0x1E6969538], MEMORY[0x1E69E66B0]);
    sub_1DF22B5C0();
    v8[13] = 2;
    sub_1DF22B5B0();
    v8[12] = 3;
    sub_1DF22B5B0();
    v8[11] = 4;
    sub_1DF22B5B0();
    v8[10] = 5;
    sub_1DF22B5B0();
    v8[9] = 6;
    sub_1DF22B5B0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1DF2131CC()
{
  result = qword_1ECE0EF98;
  if (!qword_1ECE0EF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EF98);
  }

  return result;
}

uint64_t DeviceTelemetry.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF40, &qword_1DF23AAB0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EFA8, &qword_1DF23AAF0);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for DeviceTelemetry(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1DF2131CC();
  v23 = v9;
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  v14 = v21;
  v15 = v22;
  v31 = 0;
  *v12 = sub_1DF22B4A0();
  v12[1] = v16;
  v30 = 1;
  sub_1DF213688(&qword_1ECE0EFB0, &qword_1ED8E6BE0, MEMORY[0x1E6969558], MEMORY[0x1E69E66E0]);
  sub_1DF22B4E0();
  sub_1DF17A710(v6, v12 + v10[5], &qword_1ECE0EF40, &qword_1DF23AAB0);
  v29 = 2;
  *(v12 + v10[6]) = sub_1DF22B4D0();
  v28 = 3;
  *(v12 + v10[7]) = sub_1DF22B4D0();
  v27 = 4;
  *(v12 + v10[8]) = sub_1DF22B4D0();
  v26 = 5;
  *(v12 + v10[9]) = sub_1DF22B4D0();
  v25 = 6;
  v17 = sub_1DF22B4D0();
  (*(v14 + 8))(v23, v15);
  *(v12 + v10[10]) = v17;
  sub_1DF212350(v12, v20, type metadata accessor for DeviceTelemetry);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  return sub_1DF2123B8(v12, type metadata accessor for DeviceTelemetry);
}

uint64_t sub_1DF213688(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE0EF40, &qword_1DF23AAB0);
    sub_1DF216870(a2, MEMORY[0x1E6969530], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PushTelemetry.contextId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PushTelemetry.taskName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1DF213904(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x49747865746E6F63;
    v5 = 0xD000000000000012;
    if (a1 == 2)
    {
      v5 = 0xD000000000000017;
    }

    if (a1)
    {
      v4 = 0x656D614E6B736174;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000010;
    if (a1 != 6)
    {
      v1 = 0xD000000000000013;
    }

    v2 = 0xD000000000000011;
    if (a1 != 4)
    {
      v2 = 0xD00000000000001ALL;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1DF213A44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF2179B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF213A78(uint64_t a1)
{
  v2 = sub_1DF213D88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF213AB4(uint64_t a1)
{
  v2 = sub_1DF213D88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PushTelemetry.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EFB8, &qword_1DF23AAF8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - v6;
  v8 = v1[2];
  v16[4] = v1[3];
  v16[5] = v8;
  v9 = v1[4];
  v16[2] = v1[5];
  v16[3] = v9;
  v10 = v1[6];
  v16[0] = v1[7];
  v16[1] = v10;
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_1DF213D88();
  sub_1DF22B740();
  v25 = 0;
  sub_1DF22B580();
  if (!v2)
  {
    v24 = 1;
    sub_1DF22B580();
    v23 = 2;
    sub_1DF22B5B0();
    v22 = 3;
    sub_1DF22B5B0();
    v21 = 4;
    sub_1DF22B5B0();
    v20 = 5;
    sub_1DF22B5B0();
    v19 = 6;
    sub_1DF22B5A0();
    v18 = 7;
    sub_1DF22B5A0();
    v17 = 8;
    sub_1DF22B5A0();
  }

  return (*(v5 + 8))(v7, v14);
}

unint64_t sub_1DF213D88()
{
  result = qword_1ECE0EFC0;
  if (!qword_1ECE0EFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EFC0);
  }

  return result;
}

uint64_t PushTelemetry.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EFC8, &qword_1DF23AB00);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF213D88();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v41[0]) = 0;
  v9 = sub_1DF22B4A0();
  v11 = v10;
  v34 = a2;
  v12 = v9;
  LOBYTE(v41[0]) = 1;
  v13 = sub_1DF22B4A0();
  *(&v33 + 1) = v14;
  *&v33 = v13;
  LOBYTE(v41[0]) = 2;
  v32 = sub_1DF22B4D0();
  LOBYTE(v41[0]) = 3;
  v31 = sub_1DF22B4D0();
  LOBYTE(v41[0]) = 4;
  v15 = sub_1DF22B4D0();
  LOBYTE(v41[0]) = 5;
  v30 = sub_1DF22B4D0();
  LOBYTE(v41[0]) = 6;
  sub_1DF22B4C0();
  v17 = v16;
  LOBYTE(v41[0]) = 7;
  sub_1DF22B4C0();
  v19 = v18;
  v50[0] = 8;
  sub_1DF22B4C0();
  v21 = v20;
  (*(v6 + 8))(v8, v5);
  *&v35 = v12;
  *(&v35 + 1) = v11;
  v22 = v33;
  v36 = v33;
  v23 = v32;
  v24 = v31;
  *&v37 = v32;
  *(&v37 + 1) = v31;
  v25 = v30;
  *&v38 = v15;
  *(&v38 + 1) = v30;
  *&v39 = v17;
  *(&v39 + 1) = v19;
  v40 = v21;
  v26 = v38;
  v27 = v34;
  *(v34 + 32) = v37;
  *(v27 + 48) = v26;
  *(v27 + 64) = v39;
  *(v27 + 80) = v40;
  v28 = v36;
  *v27 = v35;
  *(v27 + 16) = v28;
  sub_1DF214228(&v35, v41);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v41[0] = v12;
  v41[1] = v11;
  v42 = __PAIR128__(*(&v33 + 1), v22);
  v43 = v23;
  v44 = v24;
  v45 = v15;
  v46 = v25;
  v47 = v17;
  v48 = v19;
  v49 = v21;
  return sub_1DF20A070(v41);
}

uint64_t TaskTelemetry.contextId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TaskTelemetry.bucketInterval.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TaskTelemetry(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t TaskTelemetry.taskState.getter()
{
  v1 = *(v0 + *(type metadata accessor for TaskTelemetry(0) + 32));

  return v1;
}

uint64_t TaskTelemetry.latestEventTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TaskTelemetry(0) + 36);
  v4 = sub_1DF22A800();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_1DF214574(char a1)
{
  result = 0x49747865746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x615274656B637562;
      break;
    case 2:
      result = 0x6E4974656B637562;
      break;
    case 3:
      result = 0x656D614E6B736174;
      break;
    case 4:
      result = 0x746174536B736174;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x6D6F43746E756F63;
      break;
    case 7:
      result = 0x696146746E756F63;
      break;
    case 8:
      result = 0x666544746E756F63;
      break;
    case 9:
    case 13:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD000000000000017;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DF214754@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF217C98(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF214788(uint64_t a1)
{
  v2 = sub_1DF214C74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF2147C4(uint64_t a1)
{
  v2 = sub_1DF214C74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TaskTelemetry.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EFD0, &qword_1DF23AB08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF214C74();
  sub_1DF22B740();
  v12 = 0;
  sub_1DF22B580();
  if (!v2)
  {
    v9 = type metadata accessor for TaskTelemetry(0);
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF40, &qword_1DF23AAB0);
    sub_1DF213688(&qword_1ECE0EFA0, &qword_1ECE0C728, MEMORY[0x1E6969538], MEMORY[0x1E69E66B0]);
    sub_1DF22B5C0();
    v12 = *(v3 + *(v9 + 24));
    v11[14] = 2;
    sub_1DF214CC8();
    sub_1DF22B5C0();
    v12 = 3;
    sub_1DF22B580();
    v12 = 4;
    sub_1DF22B580();
    v12 = 5;
    sub_1DF22A800();
    sub_1DF216870(&qword_1ECE0C728, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1DF22B5C0();
    v12 = 6;
    sub_1DF22B5B0();
    v12 = 7;
    sub_1DF22B5B0();
    v12 = 8;
    sub_1DF22B5B0();
    v12 = 9;
    sub_1DF22B5A0();
    v12 = 10;
    sub_1DF22B5A0();
    v12 = 11;
    sub_1DF22B5A0();
    v12 = 12;
    sub_1DF22B5A0();
    v12 = 13;
    sub_1DF22B5A0();
    v12 = 14;
    sub_1DF22B5A0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1DF214C74()
{
  result = qword_1ECE0EFD8;
  if (!qword_1ECE0EFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EFD8);
  }

  return result;
}

unint64_t sub_1DF214CC8()
{
  result = qword_1ECE0EFE0;
  if (!qword_1ECE0EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EFE0);
  }

  return result;
}

uint64_t TaskTelemetry.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v42 = sub_1DF22A800();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF40, &qword_1DF23AAB0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EFE8, &qword_1DF23AB10);
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - v8;
  v10 = type metadata accessor for TaskTelemetry(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF214C74();
  v45 = v9;
  v13 = v46;
  sub_1DF22B730();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v14 = v6;
  v15 = v41;
  v16 = v42;
  v37 = v10;
  v38 = v12;
  v46 = a1;
  v48 = 0;
  v17 = sub_1DF22B4A0();
  v18 = v38;
  *v38 = v17;
  v18[1] = v19;
  v48 = 1;
  sub_1DF213688(&qword_1ECE0EFB0, &qword_1ED8E6BE0, MEMORY[0x1E6969558], MEMORY[0x1E69E66E0]);
  sub_1DF22B4E0();
  v20 = v37;
  sub_1DF17A710(v14, v18 + v37[5], &qword_1ECE0EF40, &qword_1DF23AAB0);
  v47 = 2;
  sub_1DF215574();
  v36 = 0;
  sub_1DF22B4E0();
  *(v18 + v20[6]) = v48;
  v48 = 3;
  v21 = sub_1DF22B4A0();
  v22 = (v18 + v20[7]);
  *v22 = v21;
  v22[1] = v23;
  v48 = 4;
  v24 = sub_1DF22B4A0();
  v25 = (v18 + v20[8]);
  *v25 = v24;
  v25[1] = v26;
  v48 = 5;
  sub_1DF216870(&qword_1ED8E6BE0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1DF22B4E0();
  (*(v40 + 32))(v18 + v20[9], v15, v16);
  v48 = 6;
  *(v18 + v20[10]) = sub_1DF22B4D0();
  v48 = 7;
  *(v18 + v20[11]) = sub_1DF22B4D0();
  v48 = 8;
  *(v18 + v20[12]) = sub_1DF22B4D0();
  v48 = 9;
  sub_1DF22B4C0();
  *(v38 + v37[13]) = v27;
  v48 = 10;
  sub_1DF22B4C0();
  *(v38 + v37[14]) = v28;
  v48 = 11;
  sub_1DF22B4C0();
  *(v38 + v37[15]) = v29;
  v48 = 12;
  sub_1DF22B4C0();
  *(v38 + v37[16]) = v30;
  v48 = 13;
  sub_1DF22B4C0();
  *(v38 + v37[17]) = v31;
  v48 = 14;
  sub_1DF22B4C0();
  v33 = v32;
  (*(v43 + 8))(v45, v44);
  v34 = v38;
  *(v38 + v37[18]) = v33;
  sub_1DF212350(v34, v39, type metadata accessor for TaskTelemetry);
  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  return sub_1DF2123B8(v34, type metadata accessor for TaskTelemetry);
}

unint64_t sub_1DF215574()
{
  result = qword_1ECE0EFF0;
  if (!qword_1ECE0EFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EFF0);
  }

  return result;
}

unint64_t DeviceTelemetry.coreAnalyticsDictionary.getter()
{
  v1 = v0;
  v2 = sub_1DF19005C(MEMORY[0x1E69E7CC0]);
  v3 = sub_1DF22ACA0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v3, 0x49747865746E6F63, 0xE900000000000064, isUniquelyReferenced_nonNull_native);
  v5 = type metadata accessor for DeviceTelemetry(0);
  v6 = sub_1DF22B090();
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v6, 0x756F43736B736174, 0xEA0000000000746ELL, v7);
  v8 = sub_1DF22B090();
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v8, 0x6E7552736B736174, 0xE800000000000000, v9);
  v10 = sub_1DF22B090();
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v10, 0x666544736B736174, 0xED00006465727265, v11);
  v12 = sub_1DF22B090();
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v12, 0x696146736B736174, 0xEB0000000064656CLL, v13);
  v14 = sub_1DF22B090();
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v14, 0x6D6F43736B736174, 0xEE00646574656C70, v15);
  v16 = v1 + *(v5 + 20);
  sub_1DF20803C(v16);
  v17 = sub_1DF22ACA0();

  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v17, 0x745374656B637562, 0xEB00000000747261, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF40, &qword_1DF23AAB0);
  sub_1DF20803C(v16 + *(v19 + 36));
  v20 = sub_1DF22ACA0();

  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v20, 0x6E4574656B637562, 0xE900000000000064, v21);
  return v2;
}

unint64_t PushTelemetry.coreAnalyticsDictionary.getter()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v4 = *(v0 + 6);
  v3 = *(v0 + 7);
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[10];
  v8 = sub_1DF19005C(MEMORY[0x1E69E7CC0]);
  v9 = sub_1DF22ACA0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v9, 0x49747865746E6F63, 0xE900000000000064, isUniquelyReferenced_nonNull_native);
  v11 = sub_1DF22ACA0();
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v11, 0x656D614E6B736174, 0xE800000000000000, v12);
  v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v13, 0xD000000000000017, 0x80000001DF23E7D0, v14);
  v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v15, 0xD000000000000012, 0x80000001DF23E7F0, v16);
  v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v17, 0xD000000000000011, 0x80000001DF23E810, v18);
  v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v19, 0xD00000000000001ALL, 0x80000001DF23E830, v20);
  v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v21, 0xD000000000000010, 0x80000001DF23E850, v22);
  v23 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v23, 0xD000000000000013, 0x80000001DF23E870, v24);
  v25 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v25, 0xD000000000000013, 0x80000001DF23E890, v26);
  return v8;
}

unint64_t TaskTelemetry.coreAnalyticsDictionary.getter()
{
  v1 = v0;
  v2 = sub_1DF19005C(MEMORY[0x1E69E7CC0]);
  v3 = sub_1DF22ACA0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v3, 0x49747865746E6F63, 0xE900000000000064, isUniquelyReferenced_nonNull_native);
  v5 = type metadata accessor for TaskTelemetry(0);
  v6 = v1 + v5[5];
  sub_1DF20803C(v6);
  v7 = sub_1DF22ACA0();

  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v7, 0x745374656B637562, 0xEB00000000747261, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF40, &qword_1DF23AAB0);
  sub_1DF20803C(v6 + *(v9 + 36));
  v10 = sub_1DF22ACA0();

  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v10, 0x6E4574656B637562, 0xE900000000000064, v11);
  v12 = sub_1DF22ACA0();

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v12, 0x6E4974656B637562, 0xEE006C6176726574, v13);
  v14 = sub_1DF22ACA0();
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v14, 0x656D614E6B736174, 0xE800000000000000, v15);
  v16 = sub_1DF22ACA0();
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v16, 0x746174536B736174, 0xE900000000000065, v17);
  sub_1DF22A7A0();
  sub_1DF22B040();
  v18 = sub_1DF22ACA0();

  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v18, 0xD000000000000014, 0x80000001DF23E8B0, v19);
  v20 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v20, 0x6D6F43746E756F63, 0xEE00646574656C70, v21);
  v22 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v22, 0x696146746E756F63, 0xEB0000000064656CLL, v23);
  v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v24, 0x666544746E756F63, 0xED00006465727265, v25);
  v26 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v27 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v26, 0xD000000000000015, 0x80000001DF23E8D0, v27);
  v28 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v28, 0xD000000000000013, 0x80000001DF23E8F0, v29);
  v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v31 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v30, 0xD000000000000017, 0x80000001DF23E910, v31);
  v32 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v33 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v32, 0xD000000000000014, 0x80000001DF23E930, v33);
  v34 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v35 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v34, 0xD000000000000015, 0x80000001DF23E950, v35);
  v36 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v37 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v36, 0xD000000000000018, 0x80000001DF23E970, v37);
  return v2;
}

unint64_t sub_1DF2162B0()
{
  result = qword_1ECE0EFF8;
  if (!qword_1ECE0EFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0EFF8);
  }

  return result;
}

unint64_t sub_1DF216308()
{
  result = qword_1ECE0F000;
  if (!qword_1ECE0F000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE0F008, &qword_1DF23ABB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F000);
  }

  return result;
}

void sub_1DF2163B8(uint64_t a1)
{
  sub_1DF22A800();
  if (v1 <= 0x3F)
  {
    sub_1DF2164AC(319, &qword_1ECE0C640, type metadata accessor for PushMetadata);
    if (v2 <= 0x3F)
    {
      sub_1DF2164AC(319, &qword_1ECE0C658, type metadata accessor for PullMetadata);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DF2164AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DF22B1A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_18Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DF22A800();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_19Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DF22A800();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF2166A0(uint64_t a1)
{
  result = sub_1DF22A800();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1DF21674C(uint64_t a1)
{
  sub_1DF2167DC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DF2167DC(uint64_t a1)
{
  if (!qword_1ECE0F040)
  {
    sub_1DF22A800();
    sub_1DF216870(&qword_1ECE0C720, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v1 = sub_1DF22B0E0();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECE0F040);
    }
  }
}

uint64_t sub_1DF216870(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DF2168DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1DF216924(uint64_t result, int a2, int a3)
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

void sub_1DF2169B0(uint64_t a1)
{
  sub_1DF2167DC(319);
  if (v1 <= 0x3F)
  {
    sub_1DF22A800();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for TaskTelemetry.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TaskTelemetry.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DF216C1C()
{
  result = qword_1ECE0F058;
  if (!qword_1ECE0F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F058);
  }

  return result;
}

unint64_t sub_1DF216C74()
{
  result = qword_1ECE0F060;
  if (!qword_1ECE0F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F060);
  }

  return result;
}

unint64_t sub_1DF216CCC()
{
  result = qword_1ECE0F068;
  if (!qword_1ECE0F068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F068);
  }

  return result;
}

unint64_t sub_1DF216D24()
{
  result = qword_1ECE0F070;
  if (!qword_1ECE0F070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F070);
  }

  return result;
}

unint64_t sub_1DF216D7C()
{
  result = qword_1ECE0F078;
  if (!qword_1ECE0F078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F078);
  }

  return result;
}

unint64_t sub_1DF216DD4()
{
  result = qword_1ECE0F080;
  if (!qword_1ECE0F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F080);
  }

  return result;
}

unint64_t sub_1DF216E2C()
{
  result = qword_1ECE0F088;
  if (!qword_1ECE0F088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F088);
  }

  return result;
}

unint64_t sub_1DF216E84()
{
  result = qword_1ECE0F090;
  if (!qword_1ECE0F090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F090);
  }

  return result;
}

unint64_t sub_1DF216EDC()
{
  result = qword_1ECE0F098;
  if (!qword_1ECE0F098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F098);
  }

  return result;
}

unint64_t sub_1DF216F34()
{
  result = qword_1ECE0F0A0;
  if (!qword_1ECE0F0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F0A0);
  }

  return result;
}

unint64_t sub_1DF216F8C()
{
  result = qword_1ECE0F0A8;
  if (!qword_1ECE0F0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F0A8);
  }

  return result;
}

unint64_t sub_1DF216FE4()
{
  result = qword_1ECE0F0B0;
  if (!qword_1ECE0F0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F0B0);
  }

  return result;
}

unint64_t sub_1DF21703C()
{
  result = qword_1ECE0F0B8;
  if (!qword_1ECE0F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F0B8);
  }

  return result;
}

unint64_t sub_1DF217094()
{
  result = qword_1ECE0F0C0;
  if (!qword_1ECE0F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F0C0);
  }

  return result;
}

unint64_t sub_1DF2170EC()
{
  result = qword_1ECE0F0C8;
  if (!qword_1ECE0F0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F0C8);
  }

  return result;
}

unint64_t sub_1DF217144()
{
  result = qword_1ECE0F0D0;
  if (!qword_1ECE0F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F0D0);
  }

  return result;
}

unint64_t sub_1DF21719C()
{
  result = qword_1ECE0F0D8;
  if (!qword_1ECE0F0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F0D8);
  }

  return result;
}

unint64_t sub_1DF2171F4()
{
  result = qword_1ECE0F0E0;
  if (!qword_1ECE0F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F0E0);
  }

  return result;
}

uint64_t sub_1DF217248(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49747865746E6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E6B736174 && a2 == 0xE800000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746174536B736174 && a2 == 0xEA00000000007375 || (sub_1DF22B620() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174654D68737570 && a2 == 0xEC00000061746164 || (sub_1DF22B620() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174654D6C6C7570 && a2 == 0xEC00000061746164)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DF22B620();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1DF217460(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49747865746E6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E6B736174 && a2 == 0xE800000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73654D726F727265 && a2 == 0xEC00000065676173)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DF22B620();

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

uint64_t sub_1DF2175D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49747865746E6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E6B736174 && a2 == 0xE800000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D614E746E657665 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DF22B620();

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

uint64_t sub_1DF217740(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49747865746E6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x615274656B637562 && a2 == 0xEB0000000065676ELL || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F43736B736174 && a2 == 0xEA0000000000746ELL || (sub_1DF22B620() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E7552736B736174 && a2 == 0xE800000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x666544736B736174 && a2 == 0xED00006465727265 || (sub_1DF22B620() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x696146736B736174 && a2 == 0xEB0000000064656CLL || (sub_1DF22B620() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D6F43736B736174 && a2 == 0xEE00646574656C70)
  {

    return 6;
  }

  else
  {
    v6 = sub_1DF22B620();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1DF2179B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49747865746E6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E6B736174 && a2 == 0xE800000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DF23E7D0 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DF23E7F0 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DF23E810 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001DF23E830 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DF23E850 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DF23E870 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DF23E890 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1DF22B620();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1DF217C98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49747865746E6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x615274656B637562 && a2 == 0xEB0000000065676ELL || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E4974656B637562 && a2 == 0xEE006C6176726574 || (sub_1DF22B620() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E6B736174 && a2 == 0xE800000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746174536B736174 && a2 == 0xE900000000000065 || (sub_1DF22B620() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DF23E8B0 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D6F43746E756F63 && a2 == 0xEE00646574656C70 || (sub_1DF22B620() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x696146746E756F63 && a2 == 0xEB0000000064656CLL || (sub_1DF22B620() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x666544746E756F63 && a2 == 0xED00006465727265 || (sub_1DF22B620() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DF23E8D0 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DF23E8F0 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DF23E910 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DF23E930 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DF23E950 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DF23E970 == a2)
  {

    return 14;
  }

  else
  {
    v6 = sub_1DF22B620();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t MLHostParameters.systemParameters.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 112);
  v20 = *(v1 + 96);
  v21[0] = v3;
  v4 = *(v1 + 16);
  v5 = *(v1 + 48);
  v16 = *(v1 + 32);
  v6 = v16;
  v17 = v5;
  v7 = *(v1 + 48);
  v8 = *(v1 + 80);
  v18 = *(v1 + 64);
  v9 = v18;
  v19 = v8;
  v10 = *(v1 + 16);
  v15[0] = *v1;
  v11 = v15[0];
  v15[1] = v10;
  v12 = *(v1 + 112);
  *(a1 + 96) = v20;
  *(a1 + 112) = v12;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  *(v21 + 15) = *(v1 + 127);
  *(a1 + 127) = *(v1 + 127);
  *a1 = v11;
  *(a1 + 16) = v4;
  return sub_1DF218210(v15, v14);
}

uint64_t MLHostParameters.init(taskParameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 1;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0;
  *(a3 + 130) = 2;
  v8 = type metadata accessor for MLHostParameters(0, a2, a4, a5);
  v9 = *(*(a2 - 8) + 32);
  v10 = a3 + *(v8 + 44);

  return v9(v10, a1, a2);
}

double MLHostSystemParameters.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 130) = 2;
  return result;
}

uint64_t MLHostParameters.init(systemParameters:taskParameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *(a1 + 112);
  *(a6 + 96) = *(a1 + 96);
  *(a6 + 112) = v9;
  *(a6 + 127) = *(a1 + 127);
  v10 = *(a1 + 48);
  *(a6 + 32) = *(a1 + 32);
  *(a6 + 48) = v10;
  v11 = *(a1 + 80);
  *(a6 + 64) = *(a1 + 64);
  *(a6 + 80) = v11;
  v12 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v12;
  v13 = type metadata accessor for MLHostParameters(0, a3, a4, a5);
  v14 = *(*(a3 - 8) + 32);
  v15 = a6 + *(v13 + 44);

  return v14(v15, a2, a3);
}

uint64_t sub_1DF21842C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001DF23EB40 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617261506B736174 && a2 == 0xEE0073726574656DLL)
  {

    return 1;
  }

  else
  {
    v5 = sub_1DF22B620();

    if (v5)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DF21850C(char a1)
{
  if (a1)
  {
    return 0x617261506B736174;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1DF218594(uint64_t a1)
{
  sub_1DF22B6C0();
  sub_1DF1FCCF0(v3, *v1);
  return sub_1DF22B6F0();
}

uint64_t sub_1DF2185F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF21842C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF218628@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DF20019C();
  *a1 = result;
  return result;
}

uint64_t sub_1DF21865C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DF2186B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t MLHostParameters.encode(to:)(void *a1, void *a2)
{
  v3 = v2;
  v5 = a2[3];
  v22 = a2[2];
  v23 = a2;
  v21 = a2[4];
  type metadata accessor for MLHostParameters.CodingKeys(255, v22, v5, v21);
  swift_getWitnessTable();
  v6 = sub_1DF22B5E0();
  v24 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = v6;
  sub_1DF22B740();
  v10 = *(v3 + 96);
  v11 = *(v3 + 64);
  v47 = *(v3 + 80);
  v48 = v10;
  v12 = *(v3 + 96);
  v49[0] = *(v3 + 112);
  v13 = *(v3 + 16);
  v14 = *(v3 + 48);
  v44 = *(v3 + 32);
  v45 = v14;
  v15 = *(v3 + 48);
  v46 = *(v3 + 64);
  v16 = *(v3 + 16);
  v43[0] = *v3;
  v43[1] = v16;
  v40 = v47;
  v41 = v12;
  v42[0] = *(v3 + 112);
  v37 = v44;
  v38 = v15;
  v39 = v11;
  *(v49 + 15) = *(v3 + 127);
  *(v42 + 15) = *(v3 + 127);
  v35 = v43[0];
  v36 = v13;
  v34 = 0;
  sub_1DF218210(v43, &v26);
  sub_1DF2189DC();
  v17 = v50;
  sub_1DF22B5C0();
  if (v17)
  {
    v32 = v41;
    *v33 = v42[0];
    *&v33[15] = *(v42 + 15);
    v28 = v37;
    v29 = v38;
    v30 = v39;
    v31 = v40;
    v26 = v35;
    v27 = v36;
    sub_1DF218A30(&v26);
    return (*(v24 + 8))(v8, v6);
  }

  else
  {
    v19 = v24;
    v32 = v41;
    *v33 = v42[0];
    *&v33[15] = *(v42 + 15);
    v28 = v37;
    v29 = v38;
    v30 = v39;
    v31 = v40;
    v26 = v35;
    v27 = v36;
    sub_1DF218A30(&v26);
    v25 = 1;
    sub_1DF22B5C0();
    return (*(v19 + 8))(v8, v9);
  }
}

unint64_t sub_1DF2189DC()
{
  result = qword_1ECE0F0F0;
  if (!qword_1ECE0F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F0F0);
  }

  return result;
}

uint64_t MLHostParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a5;
  v30 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MLHostParameters.CodingKeys(255, v10, v11, v12);
  WitnessTable = swift_getWitnessTable();
  v37 = sub_1DF22B500();
  v32 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v14 = &v29 - v13;
  v34 = a3;
  v35 = a2;
  v15 = type metadata accessor for MLHostParameters(0, a2, a3, a4);
  v29 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v36 = v14;
  v18 = v49;
  sub_1DF22B730();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  WitnessTable = v15;
  v20 = v32;
  v19 = v33;
  v49 = a1;
  v21 = v35;
  v40 = 0;
  sub_1DF218E3C();
  sub_1DF22B4E0();
  v22 = v48[0];
  *(v17 + 6) = v47;
  *(v17 + 7) = v22;
  *(v17 + 127) = *(v48 + 15);
  v23 = v44;
  *(v17 + 2) = v43;
  *(v17 + 3) = v23;
  v24 = v46;
  *(v17 + 4) = v45;
  *(v17 + 5) = v24;
  v25 = v42;
  *v17 = v41;
  *(v17 + 1) = v25;
  v39 = 1;
  sub_1DF22B4E0();
  (*(v20 + 8))(v36, v37);
  v26 = WitnessTable;
  (*(v30 + 32))(&v17[*(WitnessTable + 44)], v19, v21);
  v27 = v29;
  (*(v29 + 16))(v31, v17, v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  return (*(v27 + 8))(v17, v26);
}

unint64_t sub_1DF218E3C()
{
  result = qword_1ECE0F0F8;
  if (!qword_1ECE0F0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F0F8);
  }

  return result;
}

void MLHostSystemParameters.mobileAsset.getter(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_1DF180D2C(v2, v3, v4, v5);
}

uint64_t MLHostSystemParameters.dediscoParameters.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v9 = *(v1 + 96);
  v10 = v2;
  v11 = *(v1 + 128);
  v3 = v11;
  v4 = *(v1 + 80);
  v8[0] = *(v1 + 64);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1DF218F48(v8, v7);
}

uint64_t sub_1DF218F48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0F100, &qword_1DF23B650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 MLHostSystemParameters.init(targetingRules:osEligibilityRules:sampling:mobileAsset:dediscoParameters:betaOnly:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4 & 1;
  v8 = a5[1];
  *(a8 + 32) = *a5;
  *(a8 + 48) = v8;
  v9 = *(a6 + 48);
  *(a8 + 96) = *(a6 + 32);
  *(a8 + 112) = v9;
  *(a8 + 128) = *(a6 + 64);
  result = *(a6 + 16);
  *(a8 + 64) = *a6;
  *(a8 + 80) = result;
  *(a8 + 130) = a7;
  return result;
}

uint64_t sub_1DF218FF8()
{
  v1 = *v0;
  v2 = 0x6E69746567726174;
  v3 = 0x7341656C69626F6DLL;
  v4 = 0x796C6E4F61746562;
  if (v1 == 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x676E696C706D6173;
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

uint64_t sub_1DF2190C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF21CC48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF2190EC(uint64_t a1)
{
  v2 = sub_1DF21962C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF219128(uint64_t a1)
{
  v2 = sub_1DF21962C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MLHostSystemParameters.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0F108, &qword_1DF23B658);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v8 = *v1;
  v38 = v1[1];
  v23 = v1[2];
  v22 = *(v1 + 24);
  v9 = v1[5];
  *&v19 = v1[4];
  *(&v19 + 1) = v9;
  v10 = v1[7];
  v21 = v1[6];
  v20 = v10;
  v11 = *(v1 + 7);
  v35 = *(v1 + 6);
  v36 = v11;
  v37 = *(v1 + 64);
  v12 = *(v1 + 5);
  v33 = *(v1 + 4);
  v34 = v12;
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_1DF21962C();

  sub_1DF22B740();
  *&v28 = v8;
  LOBYTE(v25[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0F118, &qword_1DF23B660);
  sub_1DF219DC8(&qword_1ECE0F120, sub_1DF219680, MEMORY[0x1E69E6300]);
  sub_1DF22B560();

  if (!v2)
  {
    *&v28 = v38;
    LOBYTE(v25[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0F130, &qword_1DF23B668);
    sub_1DF2196D4(&qword_1ECE0F138, sub_1DF21974C, MEMORY[0x1E69E6300]);
    sub_1DF22B560();
    LOBYTE(v28) = 2;
    sub_1DF22B530();
    v28 = v19;
    *&v29 = v21;
    *(&v29 + 1) = v20;
    LOBYTE(v25[0]) = 3;
    sub_1DF180D2C(v19, *(&v19 + 1), v21, v20);
    sub_1DF2197A0();
    sub_1DF22B560();
    sub_1DF180DA8(v28, *(&v28 + 1), v29, *(&v29 + 1));
    v31 = v36;
    v32 = v37;
    v29 = v34;
    v30 = v35;
    v28 = v33;
    v27 = 4;
    sub_1DF218F48(&v33, v25);
    sub_1DF2197F4();
    sub_1DF22B560();
    v25[2] = v30;
    v25[3] = v31;
    v26 = v32;
    v25[1] = v29;
    v25[0] = v28;
    sub_1DF16184C(v25, &qword_1ECE0F100, &qword_1DF23B650);
    v24 = 5;
    sub_1DF22B520();
  }

  return (*(v5 + 8))(v7, v16);
}

unint64_t sub_1DF21962C()
{
  result = qword_1ECE0C2F0;
  if (!qword_1ECE0C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C2F0);
  }

  return result;
}

unint64_t sub_1DF219680()
{
  result = qword_1ECE0F128;
  if (!qword_1ECE0F128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F128);
  }

  return result;
}

uint64_t sub_1DF2196D4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE0F130, &qword_1DF23B668);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF21974C()
{
  result = qword_1ECE0F140;
  if (!qword_1ECE0F140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F140);
  }

  return result;
}

unint64_t sub_1DF2197A0()
{
  result = qword_1ECE0F148;
  if (!qword_1ECE0F148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F148);
  }

  return result;
}

unint64_t sub_1DF2197F4()
{
  result = qword_1ECE0F150;
  if (!qword_1ECE0F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F150);
  }

  return result;
}

void MLHostSystemParameters.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0F158, &qword_1DF23B670);
  v5 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF21962C();
  sub_1DF22B730();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0F118, &qword_1DF23B660);
    LOBYTE(v23) = 0;
    sub_1DF219DC8(&qword_1ECE0C0B0, sub_1DF219E40, MEMORY[0x1E69E6330]);
    sub_1DF22B480();
    v8 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0F130, &qword_1DF23B668);
    LOBYTE(v23) = 1;
    sub_1DF2196D4(&qword_1ECE0C090, sub_1DF219E94, MEMORY[0x1E69E6330]);
    sub_1DF22B480();
    v22 = v31;
    LOBYTE(v31) = 2;
    v20 = sub_1DF22B450();
    v55 = v9 & 1;
    LOBYTE(v23) = 3;
    sub_1DF219EE8();
    sub_1DF22B480();
    v21 = v31;
    v18 = v32;
    v19 = v33;
    v44 = 4;
    sub_1DF219F3C();
    sub_1DF22B480();
    v52 = v47;
    v53 = v48;
    v54 = v49;
    v50 = v45;
    v51 = v46;
    v43 = 5;
    v10 = sub_1DF22B440();
    (*(v5 + 8))(v7, v56);
    *&v23 = v8;
    *(&v23 + 1) = v22;
    *&v24 = v20;
    LODWORD(v56) = v55;
    BYTE8(v24) = v55;
    v12 = v18;
    v11 = v19;
    *&v25 = v21;
    *(&v25 + 1) = v18;
    v26 = v19;
    v29 = v52;
    *v30 = v53;
    *&v30[16] = v54;
    v28 = v51;
    v27 = v50;
    v30[18] = v10;
    v13 = v19;
    *(a2 + 32) = v25;
    *(a2 + 48) = v13;
    v14 = *v30;
    *(a2 + 96) = v29;
    *(a2 + 112) = v14;
    v15 = v28;
    *(a2 + 64) = v27;
    *(a2 + 80) = v15;
    v16 = v24;
    *a2 = v23;
    *(a2 + 16) = v16;
    *(a2 + 127) = *&v30[15];
    sub_1DF218210(&v23, &v31);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v31 = v8;
    v32 = v22;
    *&v33 = v20;
    BYTE8(v33) = v56;
    v34 = v21;
    v35 = v12;
    v36 = __PAIR128__(*(&v19 + 1), v11);
    v39 = v52;
    v40 = v53;
    v41 = v54;
    v37 = v50;
    v38 = v51;
    v42 = v10;
    sub_1DF218A30(&v31);
  }
}

uint64_t sub_1DF219DC8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE0F118, &qword_1DF23B660);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF219E40()
{
  result = qword_1ECE0C618;
  if (!qword_1ECE0C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C618);
  }

  return result;
}

unint64_t sub_1DF219E94()
{
  result = qword_1ECE0C3D8;
  if (!qword_1ECE0C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C3D8);
  }

  return result;
}

unint64_t sub_1DF219EE8()
{
  result = qword_1ECE0C310;
  if (!qword_1ECE0C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C310);
  }

  return result;
}

unint64_t sub_1DF219F3C()
{
  result = qword_1ECE0C438;
  if (!qword_1ECE0C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C438);
  }

  return result;
}

uint64_t MLHostAssetParameters.assetType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MLHostAssetParameters.assetSpecifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

LighthouseBackground::MLHostAssetParameters __swiftcall MLHostAssetParameters.init(assetType:assetSpecifier:)(Swift::String assetType, Swift::String assetSpecifier)
{
  *v2 = assetType;
  v2[1] = assetSpecifier;
  result.assetSpecifier = assetSpecifier;
  result.assetType = assetType;
  return result;
}

uint64_t sub_1DF21A02C()
{
  if (*v0)
  {
    return 0x6570537465737361;
  }

  else
  {
    return 0x7079547465737361;
  }
}

uint64_t sub_1DF21A078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7079547465737361 && a2 == 0xE900000000000065;
  if (v6 || (sub_1DF22B620() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6570537465737361 && a2 == 0xEE00726569666963)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF22B620();

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

uint64_t sub_1DF21A164(uint64_t a1)
{
  v2 = sub_1DF21A370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF21A1A0(uint64_t a1)
{
  v2 = sub_1DF21A370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MLHostAssetParameters.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0F160, &qword_1DF23B678);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF21A370();
  sub_1DF22B740();
  v12 = 0;
  v8 = v10[3];
  sub_1DF22B580();
  if (!v8)
  {
    v11 = 1;
    sub_1DF22B580();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1DF21A370()
{
  result = qword_1ECE0F168;
  if (!qword_1ECE0F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F168);
  }

  return result;
}

uint64_t MLHostAssetParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0F170, &qword_1DF23B680);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF21A370();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = 0;
  v9 = sub_1DF22B4A0();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1DF22B4A0();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DF21A5F4(uint64_t a1)
{
  v2 = sub_1DF21A780();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF21A630(uint64_t a1)
{
  v2 = sub_1DF21A780();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MLHostEmptyParameters.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0F178, &qword_1DF23B688);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF21A780();
  sub_1DF22B740();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1DF21A780()
{
  result = qword_1ECE0F180;
  if (!qword_1ECE0F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F180);
  }

  return result;
}

uint64_t sub_1DF21A7FC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0F178, &qword_1DF23B688);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF21A780();
  sub_1DF22B740();
  return (*(v3 + 8))(v5, v2);
}

LighthouseBackground::MLHostCommonError_optional __swiftcall MLHostCommonError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MLHostCommonError.rawValue.getter()
{
  v1 = 0xD000000000000011;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_1DF21A9C4(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000011;
  v3 = *a1;
  v4 = "extensionInvocationFailed";
  if (v3 == 1)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (v3 == 1)
  {
    v6 = "extensionInvocationFailed";
  }

  else
  {
    v6 = "mobileAssetUnavailable";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000019;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "ouseLedger.DediscoTelemetry";
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000016;
  }

  else
  {
    v4 = "mobileAssetUnavailable";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000019;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "ouseLedger.DediscoTelemetry";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DF22B620();
  }

  return v11 & 1;
}

uint64_t sub_1DF21AAA0()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF21AB3C(uint64_t a1)
{
  sub_1DF22AD20();
}

uint64_t sub_1DF21ABC4(uint64_t a1)
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

void sub_1DF21AC68(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000011;
  v3 = "extensionInvocationFailed";
  if (*v1 == 1)
  {
    v2 = 0xD000000000000016;
  }

  else
  {
    v3 = "mobileAssetUnavailable";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000019;
    v4 = "ouseLedger.DediscoTelemetry";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t MLHostExtensionContext.taskId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskId);

  return v1;
}

uint64_t MLHostExtensionContext.taskName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName);

  return v1;
}

uint64_t MLHostExtensionContext.taskFolder.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskFolder);

  return v1;
}

id MLHostExtensionContext.__allocating_init(taskId:taskName:taskFolder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskId];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v13[OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v13[OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskFolder];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v13;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, sel_init);
}

id MLHostExtensionContext.init(taskId:taskName:taskFolder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v14 = &v6[OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskId];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v6[OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v6[OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskFolder];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v6;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

unint64_t MLHostExtensionContext.description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskFolder + 8);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskFolder);
    v6 = 0;
    sub_1DF22B300();
    MEMORY[0x1E12CF820](0xD00000000000001FLL, 0x80000001DF23E990);
    MEMORY[0x1E12CF820](*(v0 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskId), *(v0 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskId + 8));
    MEMORY[0x1E12CF820](0x614E6B736174202CLL, 0xEC000000203A656DLL);
    MEMORY[0x1E12CF820](*(v0 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName), *(v0 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName + 8));
    MEMORY[0x1E12CF820](0x6F466B736174202CLL, 0xEE00203A7265646CLL);
    v3 = v2;
    v4 = v1;
  }

  else
  {
    sub_1DF22B300();

    v6 = 0xD00000000000001FLL;
    MEMORY[0x1E12CF820](*(v0 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskId), *(v0 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskId + 8));
    MEMORY[0x1E12CF820](0x614E6B736174202CLL, 0xEC000000203A656DLL);
    v3 = *(v0 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName);
    v4 = *(v0 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName + 8);
  }

  MEMORY[0x1E12CF820](v3, v4);
  MEMORY[0x1E12CF820](41, 0xE100000000000000);
  return v6;
}

Swift::Void __swiftcall MLHostExtensionContext.encode(with:)(NSCoder with)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithUTF8String_];

  v4 = sub_1DF22ACA0();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithUTF8String_];

  v6 = sub_1DF22ACA0();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  if (*(v1 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskFolder + 8))
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithUTF8String_];

    v8 = sub_1DF22ACA0();
    [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  }
}

id MLHostExtensionContext.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1DF21B480();
  v5 = sub_1DF22B160();
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = sub_1DF22B160();
  if (!v7)
  {

LABEL_6:
    swift_deallocPartialClassInstance();
    return 0;
  }

  v8 = v7;
  v9 = sub_1DF22ACC0();
  v10 = &v2[OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskId];
  *v10 = v9;
  v10[1] = v11;
  v12 = sub_1DF22ACC0();
  v13 = &v2[OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName];
  *v13 = v12;
  v13[1] = v14;
  v15 = sub_1DF22B160();
  if (v15)
  {
    v16 = v15;
    v17 = sub_1DF22ACC0();
    v19 = v18;

    v20 = &v2[OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskFolder];
    *v20 = v17;
    v20[1] = v19;
  }

  else
  {

    v22 = &v2[OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskFolder];
    *v22 = 0;
    *(v22 + 1) = 0;
  }

  v24.receiver = v2;
  v24.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v24, sel_init);

  return v23;
}

unint64_t sub_1DF21B480()
{
  result = qword_1ED8E7520;
  if (!qword_1ED8E7520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8E7520);
  }

  return result;
}

unint64_t MLHostResultPolicy.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1DF21B5FC()
{
  v1 = *v0;
  sub_1DF22B6C0();
  MEMORY[0x1E12D01A0](v1);
  return sub_1DF22B6F0();
}

uint64_t sub_1DF21B644(uint64_t a1)
{
  v2 = *v1;
  sub_1DF22B6C0();
  MEMORY[0x1E12D01A0](v2);
  return sub_1DF22B6F0();
}

id MLHostResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MLHostResult.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_status] = 0;
  *&v0[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_policy] = 1;
  v2 = &v0[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_error];
  *v2 = 0;
  *(v2 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id MLHostResult.__allocating_init(status:policy:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_status] = a1;
  *&v5[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_policy] = a2;
  v6 = &v5[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_error];
  *v6 = 0;
  *(v6 + 1) = 0;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id MLHostResult.init(status:policy:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_status] = a1;
  *&v2[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_policy] = a2;
  v6 = &v2[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_error];
  *v6 = 0;
  *(v6 + 1) = 0;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id MLHostResult.__allocating_init(error:policy:)(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = sub_1DF21CE5C(v7, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

id MLHostResult.init(error:policy:)(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_1DF21CAA0(v9, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v11;
}

uint64_t MLHostResult.errorString.getter()
{
  if (*(v0 + OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_status))
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_error);

  return v1;
}

id sub_1DF21BAC4(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1DF22ACA0();

  return v5;
}

uint64_t MLHostResult.description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_error + 8);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_error);
    sub_1DF22B300();

    v3 = *(v0 + OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_status);
    if (v3 < 3)
    {
      v4 = 0xE700000000000000;
      MEMORY[0x1E12CF820](*&aFailure_1[8 * v3], 0xE700000000000000);

      MEMORY[0x1E12CF820](0x7963696C6F70202CLL, 0xEA0000000000203ALL);
      v5 = *(v0 + OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_policy);
      switch(v5)
      {
        case 0:
          v6 = 0x65747563657865;
          goto LABEL_13;
        case 2:
          v4 = 0xE600000000000000;
          v6 = 0x6C65636E6163;
LABEL_13:
          MEMORY[0x1E12CF820](v6, v4);

          MEMORY[0x1E12CF820](0x3A726F727265202CLL, 0xE900000000000020);
          MEMORY[0x1E12CF820](v2, v1);
LABEL_18:
          MEMORY[0x1E12CF820](41, 0xE100000000000000);
          return 0xD000000000000015;
        case 1:
          v6 = 0x7564656863736572;
          v4 = 0xEA0000000000656CLL;
          goto LABEL_13;
      }
    }
  }

  else
  {
    sub_1DF22B300();

    v7 = *(v0 + OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_status);
    if (v7 < 3)
    {
      v8 = 0xE700000000000000;
      MEMORY[0x1E12CF820](*&aFailure_1[8 * v7], 0xE700000000000000);

      MEMORY[0x1E12CF820](0x7963696C6F70202CLL, 0xEA0000000000203ALL);
      v9 = *(v0 + OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_policy);
      if (v9)
      {
        if (v9 == 2)
        {
          v8 = 0xE600000000000000;
          v10 = 0x6C65636E6163;
        }

        else
        {
          if (v9 != 1)
          {
            goto LABEL_19;
          }

          v10 = 0x7564656863736572;
          v8 = 0xEA0000000000656CLL;
        }
      }

      else
      {
        v10 = 0x65747563657865;
      }

      MEMORY[0x1E12CF820](v10, v8);

      goto LABEL_18;
    }
  }

LABEL_19:
  result = sub_1DF22B640();
  __break(1u);
  return result;
}

Swift::Void __swiftcall MLHostResult.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_status);
  v4 = sub_1DF22ACA0();
  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_policy);
  v6 = sub_1DF22ACA0();
  [(objc_class *)with.super.isa encodeInteger:v5 forKey:v6];

  if (*(v1 + OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_error + 8))
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithUTF8String_];

    v8 = sub_1DF22ACA0();
    [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  }
}

id MLHostResult.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1DF22ACA0();
  v6 = [a1 decodeIntegerForKey_];

  if (v6 > 2 || (v7 = sub_1DF22ACA0(), v8 = [a1 decodeIntegerForKey_], v7, v8 > 2))
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *&v2[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_status] = v6;
    *&v2[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_policy] = v8;
    sub_1DF21B480();
    if (sub_1DF22B160())
    {
      v9 = sub_1DF22ACD0();
      v10 = &v2[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_error];
      *v10 = v9;
      v10[1] = v11;
    }

    else
    {
      v13 = &v2[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_error];
      *v13 = 0;
      *(v13 + 1) = 0;
    }

    v15.receiver = v2;
    v15.super_class = ObjectType;
    v14 = objc_msgSendSuper2(&v15, sel_init);

    return v14;
  }
}

id sub_1DF21C19C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MLHostResultStatus.description.getter(unint64_t a1)
{
  if (a1 < 3)
  {
    return *&aFailure_1[8 * a1];
  }

  result = sub_1DF22B640();
  __break(1u);
  return result;
}

uint64_t sub_1DF21C238(uint64_t a1)
{
  if (*v1 < 3uLL)
  {
    return *&aFailure_1[8 * *v1];
  }

  result = sub_1DF22B640();
  __break(1u);
  return result;
}

uint64_t MLHostResultPolicy.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x65747563657865;
    case 2:
      return 0x6C65636E6163;
    case 1:
      return 0x7564656863736572;
  }

  result = sub_1DF22B640();
  __break(1u);
  return result;
}

uint64_t sub_1DF21C31C(uint64_t a1)
{
  v2 = *v1;
  if (!*v1)
  {
    return 0x65747563657865;
  }

  if (v2 == 2)
  {
    return 0x6C65636E6163;
  }

  if (v2 == 1)
  {
    return 0x7564656863736572;
  }

  result = sub_1DF22B640();
  __break(1u);
  return result;
}

uint64_t MLHostParameters.description.getter(uint64_t a1)
{
  v3 = sub_1DF22B720();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v26 + 1) = a1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v25);
  v8 = *(*(a1 - 8) + 16);
  v21[1] = a1;
  v8(boxed_opaque_existential_1, v1, a1);
  sub_1DF22B700();
  v9 = sub_1DF22B710();
  (*(v4 + 8))(v6, v3);
  v21[0] = v9;
  sub_1DF22B3A0();
  sub_1DF22B410();
  if (*(&v27 + 1))
  {
    v10 = MEMORY[0x1E69E7CC0];
    do
    {
      v24[0] = v25;
      v24[1] = v26;
      v24[2] = v27;
      if (*(&v25 + 1))
      {
        v22 = 0;
        v23 = 0xE000000000000000;
        MEMORY[0x1E12CF820](*&v24[0]);
        MEMORY[0x1E12CF820](8250, 0xE200000000000000);
        sub_1DF22B3B0();
        v12 = v22;
        v11 = v23;
        sub_1DF16184C(v24, &qword_1ECE0F1C0, &qword_1DF230A98);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1DF174610(0, *(v10 + 2) + 1, 1, v10);
        }

        v14 = *(v10 + 2);
        v13 = *(v10 + 3);
        if (v14 >= v13 >> 1)
        {
          v10 = sub_1DF174610((v13 > 1), v14 + 1, 1, v10);
        }

        *(v10 + 2) = v14 + 1;
        v15 = &v10[16 * v14];
        *(v15 + 4) = v12;
        *(v15 + 5) = v11;
      }

      else
      {
        sub_1DF16184C(v24, &qword_1ECE0F1C0, &qword_1DF230A98);
      }

      sub_1DF22B410();
    }

    while (*(&v27 + 1));
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  *&v25 = sub_1DF22B7B0();
  *(&v25 + 1) = v16;
  MEMORY[0x1E12CF820](40, 0xE100000000000000);
  *&v24[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0C7A0, &qword_1DF22CB50);
  sub_1DF164BEC(&qword_1ECE0C060, &unk_1ECE0C7A0, &qword_1DF22CB50, MEMORY[0x1E69E6310]);
  v17 = sub_1DF22AC40();
  v19 = v18;

  MEMORY[0x1E12CF820](v17, v19);

  MEMORY[0x1E12CF820](41, 0xE100000000000000);
  return v25;
}

uint64_t MLHostSystemParameters.description.getter()
{
  v1 = sub_1DF22B720();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 112);
  v33[6] = *(v0 + 96);
  v34[0] = v5;
  *(v34 + 15) = *(v0 + 127);
  v6 = *(v0 + 48);
  v33[2] = *(v0 + 32);
  v33[3] = v6;
  v7 = *(v0 + 80);
  v33[4] = *(v0 + 64);
  v33[5] = v7;
  v8 = *(v0 + 16);
  v33[0] = *v0;
  v33[1] = v8;
  *(&v29 + 1) = &type metadata for MLHostSystemParameters;
  v9 = swift_allocObject();
  *&v28 = v9;
  v10 = *(v0 + 112);
  *(v9 + 112) = *(v0 + 96);
  *(v9 + 128) = v10;
  *(v9 + 143) = *(v0 + 127);
  v11 = *(v0 + 48);
  *(v9 + 48) = *(v0 + 32);
  *(v9 + 64) = v11;
  v12 = *(v0 + 80);
  *(v9 + 80) = *(v0 + 64);
  *(v9 + 96) = v12;
  v13 = *(v0 + 16);
  *(v9 + 16) = *v0;
  *(v9 + 32) = v13;
  sub_1DF218210(v33, v31);
  sub_1DF22B700();
  v14 = sub_1DF22B710();
  (*(v2 + 8))(v4, v1);
  v25[1] = v14;
  sub_1DF22B3A0();
  sub_1DF22B410();
  if (*(&v32 + 1))
  {
    v15 = MEMORY[0x1E69E7CC0];
    do
    {
      v28 = v31[0];
      v29 = v31[1];
      v30 = v32;
      if (*(&v31[0] + 1))
      {
        v26 = 0;
        v27 = 0xE000000000000000;
        MEMORY[0x1E12CF820](v28);
        MEMORY[0x1E12CF820](8250, 0xE200000000000000);
        sub_1DF22B3B0();
        v16 = v26;
        v17 = v27;
        sub_1DF16184C(&v28, &qword_1ECE0F1C0, &qword_1DF230A98);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1DF174610(0, *(v15 + 2) + 1, 1, v15);
        }

        v19 = *(v15 + 2);
        v18 = *(v15 + 3);
        if (v19 >= v18 >> 1)
        {
          v15 = sub_1DF174610((v18 > 1), v19 + 1, 1, v15);
        }

        *(v15 + 2) = v19 + 1;
        v20 = &v15[16 * v19];
        *(v20 + 4) = v16;
        *(v20 + 5) = v17;
      }

      else
      {
        sub_1DF16184C(&v28, &qword_1ECE0F1C0, &qword_1DF230A98);
      }

      sub_1DF22B410();
    }

    while (*(&v32 + 1));
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  *&v31[0] = 0xD000000000000017;
  *(&v31[0] + 1) = 0x80000001DF23EA10;
  *&v28 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0C7A0, &qword_1DF22CB50);
  sub_1DF164BEC(&qword_1ECE0C060, &unk_1ECE0C7A0, &qword_1DF22CB50, MEMORY[0x1E69E6310]);
  v21 = sub_1DF22AC40();
  v23 = v22;

  MEMORY[0x1E12CF820](v21, v23);

  MEMORY[0x1E12CF820](41, 0xE100000000000000);
  return *&v31[0];
}

id sub_1DF21CAA0(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v20 = a4;
  v21 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  *&a3[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_status] = 0;
  *&a3[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_policy] = a2;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  sub_1DF22AE10();
  swift_getAssociatedConformanceWitness();
  v13 = sub_1DF22ADC0();
  v14 = &a3[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_error];
  *v14 = v13;
  *(v14 + 1) = v15;
  v18.receiver = a3;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  return v16;
}

uint64_t sub_1DF21CC48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69746567726174 && a2 == 0xEE0073656C755267;
  if (v4 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DF23EB60 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696C706D6173 && a2 == 0xE800000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7341656C69626F6DLL && a2 == 0xEB00000000746573 || (sub_1DF22B620() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DF23EB80 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x796C6E4F61746562 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DF22B620();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

id sub_1DF21CE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(v12);
  (*(v9 + 16))(v11, a1, a4);
  return sub_1DF21CAA0(v11, a2, v13, a4, a5);
}

unint64_t sub_1DF21CF54()
{
  result = qword_1ECE0F1C8;
  if (!qword_1ECE0F1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F1C8);
  }

  return result;
}

unint64_t sub_1DF21CFA8(uint64_t a1)
{
  *(a1 + 8) = sub_1DF21CFD8();
  result = sub_1DF21D02C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DF21CFD8()
{
  result = qword_1ECE0F1D8;
  if (!qword_1ECE0F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F1D8);
  }

  return result;
}

unint64_t sub_1DF21D02C()
{
  result = qword_1ECE0F1E0;
  if (!qword_1ECE0F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F1E0);
  }

  return result;
}

unint64_t sub_1DF21D084()
{
  result = qword_1ECE0F1E8;
  if (!qword_1ECE0F1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F1E8);
  }

  return result;
}

unint64_t sub_1DF21D120()
{
  result = qword_1ECE0F200;
  if (!qword_1ECE0F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F200);
  }

  return result;
}

uint64_t sub_1DF21D1C0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DF21D240(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v10 = ((v6 + 131) & ~v6) + v7;
  v11 = 8 * (((v6 - 125) & ~v6) + v7);
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if (v5 > 0x7FFFFFFE)
      {
        return (*(v4 + 48))((a1 + v6 + 131) & ~v6);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      v17 = v16 - 1;
      if (v17 < 0)
      {
        v17 = -1;
      }

      return (v17 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
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

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1DF21D3D8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 131) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * (((v9 - 125) & ~v9) + *(*(*(a4 + 16) - 8) + 64)))) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * (((v9 - 125) & ~v9) + *(*(*(a4 + 16) - 8) + 64))));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0x7FFFFFFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 131] & ~v9;

    v19(v20);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 15) = 0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    a1[130] = 0;
    *(a1 + 64) = 0;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *a1 = a2;
  }
}

uint64_t get_enum_tag_for_layout_string_20LighthouseBackground21MLHostAssetParametersVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_20LighthouseBackground17DeDiscoParametersVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy131_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 127) = *(a2 + 127);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1DF21D6C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 131))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1DF21D724(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 130) = 0;
    *(result + 128) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 131) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 131) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1DF21D92C()
{
  result = qword_1ECE0F288;
  if (!qword_1ECE0F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F288);
  }

  return result;
}

unint64_t sub_1DF21D984()
{
  result = qword_1ECE0F290;
  if (!qword_1ECE0F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F290);
  }

  return result;
}

unint64_t sub_1DF21D9DC()
{
  result = qword_1ECE0F298;
  if (!qword_1ECE0F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F298);
  }

  return result;
}

unint64_t sub_1DF21DA34()
{
  result = qword_1ECE0F2A0;
  if (!qword_1ECE0F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F2A0);
  }

  return result;
}

unint64_t sub_1DF21DA8C()
{
  result = qword_1ECE0F2A8;
  if (!qword_1ECE0F2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F2A8);
  }

  return result;
}

unint64_t sub_1DF21DAE4()
{
  result = qword_1ECE0F2B0;
  if (!qword_1ECE0F2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F2B0);
  }

  return result;
}

unint64_t sub_1DF21DB3C()
{
  result = qword_1ECE0C2D8;
  if (!qword_1ECE0C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C2D8);
  }

  return result;
}

unint64_t sub_1DF21DB94()
{
  result = qword_1ECE0C2E0;
  if (!qword_1ECE0C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C2E0);
  }

  return result;
}

uint64_t sub_1DF21DC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E4A0, &qword_1DF23A430);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1DF222844(a3, v25 - v10);
  v12 = sub_1DF22AFC0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1DF16184C(v11, &qword_1ECE0E4A0, &qword_1DF23A430);
  }

  else
  {
    sub_1DF22AFB0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1DF22AF90();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1DF22ACF0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1DF16184C(a3, &qword_1ECE0E4A0, &qword_1DF23A430);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DF16184C(a3, &qword_1ECE0E4A0, &qword_1DF23A430);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1DF21DF50()
{
  v1 = type metadata accessor for MLHostResult();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_status] = 2;
  *&v2[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_policy] = 0;
  v3 = &v2[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_error];
  *v3 = 0;
  *(v3 + 1) = 0;
  v0[1].receiver = v2;
  v0[1].super_class = v1;
  v4 = objc_msgSendSuper2(v0 + 1, sel_init);
  super_class = v0->super_class;

  return super_class(v4);
}

uint64_t sub_1DF21E024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1DF1F0740;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, v11, a3, v12, a4, a5);
}

uint64_t MLHostExtension.loadConfig<A>(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a2;
  v7[6] = a4;
  v7[4] = a1;
  v8 = sub_1DF22A4B0();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  v9 = sub_1DF22A4C0();
  v7[12] = v9;
  v7[13] = *(v9 - 8);
  v7[14] = swift_task_alloc();
  v10 = sub_1DF22A650();
  v7[15] = v10;
  v7[16] = *(v10 - 8);
  v7[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D428, &qword_1DF2305C0);
  v7[18] = swift_task_alloc();
  v11 = sub_1DF22A6B0();
  v7[19] = v11;
  v7[20] = *(v11 - 8);
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF21E30C, 0, 0);
}

uint64_t sub_1DF21E30C()
{
  if (!*(v0[5] + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskFolder + 8))
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v26 = sub_1DF22A8C0();
    __swift_project_value_buffer(v26, qword_1ED8E92C0);
    v27 = sub_1DF22A8A0();
    v28 = sub_1DF22B110();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_18;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "TaskFolder missing.";
    goto LABEL_17;
  }

  v1 = v0[21];
  v2 = v0[20];
  v42 = v0[22];
  v44 = v0[19];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[16];
  (*(v2 + 56))();
  v6 = *MEMORY[0x1E6968F70];
  v7 = *(v5 + 104);
  v7(v3, v6, v4);

  sub_1DF22A690();
  v45 = v0;
  v0[2] = 0x6574656D61726170;
  v0[3] = 0xEF6E6F736A2E7372;
  v7(v3, v6, v4);
  sub_1DF17924C();
  sub_1DF22A6A0();
  (*(v5 + 8))(v3, v4);
  v8 = *(v2 + 8);
  v8(v1, v44);
  sub_1DF22A680();
  v8(v42, v44);
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  v11 = sub_1DF22ACA0();
  v12 = [v10 fileExistsAtPath_];

  if ((v12 & 1) == 0)
  {

    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v31 = sub_1DF22A8C0();
    __swift_project_value_buffer(v31, qword_1ED8E92C0);
    v27 = sub_1DF22A8A0();
    v28 = sub_1DF22B110();
    v0 = v45;
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_18;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "ParameterFile missing.";
    goto LABEL_17;
  }

  v13 = [v9 defaultManager];
  v14 = sub_1DF22ACA0();

  v15 = [v13 contentsAtPath_];

  if (v15)
  {
    v0 = v45;
    v17 = v45[13];
    v16 = v45[14];
    v19 = v45[11];
    v18 = v45[12];
    v20 = v45[9];
    v21 = v45[10];
    v41 = v45[7];
    v43 = v45[8];
    v40 = v45[6];
    v22 = sub_1DF22A710();
    v24 = v23;

    sub_1DF22A510();
    swift_allocObject();
    sub_1DF22A500();
    (*(v17 + 104))(v16, *MEMORY[0x1E6967F30], v18);
    sub_1DF22A4E0();
    (*(v21 + 104))(v19, *MEMORY[0x1E6967F08], v20);
    sub_1DF22A4D0();
    v25 = type metadata accessor for MLHostParameters(0, v40, v41, v43);
    swift_getWitnessTable();
    sub_1DF22A4F0();
    (*(*(v25 - 8) + 56))(v45[4], 0, 1, v25);

    sub_1DF1657C8(v22, v24);
    goto LABEL_19;
  }

  v0 = v45;
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v32 = sub_1DF22A8C0();
  __swift_project_value_buffer(v32, qword_1ED8E92C0);
  v27 = sub_1DF22A8A0();
  v28 = sub_1DF22B110();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "ParameterFile invalid.";
LABEL_17:
    _os_log_impl(&dword_1DF15A000, v27, v28, v30, v29, 2u);
    MEMORY[0x1E12D0B40](v29, -1, -1);
  }

LABEL_18:
  v34 = v0[7];
  v33 = v0[8];
  v35 = v0[6];
  v36 = v0[4];

  v37 = type metadata accessor for MLHostParameters(0, v35, v34, v33);
  (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
LABEL_19:

  v38 = v0[1];

  return v38();
}

id MLHostExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  result = sub_1DF221C8C(v4, a1, a2, a4);
  *a3 = result;
  return result;
}

uint64_t sub_1DF21EB44(void *a1, uint64_t a2)
{
  [a1 setExportedObject_];
  v3 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 resume];
  return 1;
}

void sub_1DF21EBD0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  type metadata accessor for SandboxExtension();
  v6 = swift_allocObject();
  *(v6 + 24) = a2;
  *(v6 + 32) = 0;
  *(v6 + 40) = 1;
  *(v6 + 16) = a1;
  v7 = qword_1ED8E7530;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_1DF22A8C0();
  __swift_project_value_buffer(v8, qword_1ED8E92C0);

  v9 = sub_1DF22A8A0();
  v10 = sub_1DF22B100();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v56 = v12;
    *v11 = 136315138;

    v13 = SandboxExtension.description.getter();
    v14 = a1;
    v16 = v15;

    v17 = sub_1DF160728(v13, v16, &v56);
    a1 = v14;

    *(v11 + 4) = v17;
    _os_log_impl(&dword_1DF15A000, v9, v10, "Processing sandbox extension: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1E12D0B40](v12, -1, -1);
    MEMORY[0x1E12D0B40](v11, -1, -1);
  }

  SandboxExtension.consume()();
  if (v18)
  {
    v59[0] = v18;
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D448, &qword_1DF2305D8);
    if (!swift_dynamicCast())
    {
LABEL_9:

      v23 = sub_1DF22A8A0();
      v24 = sub_1DF22B110();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v56 = v54;
        *v25 = 136315138;

        v26 = sub_1DF2269DC(16, a1, a2);
        v28 = v27;
        v30 = v29;
        v32 = v31;

        v33 = MEMORY[0x1E12CF7D0](v26, v28, v30, v32);
        v35 = v34;

        v36 = sub_1DF160728(v33, v35, &v56);

        *(v25 + 4) = v36;
        _os_log_impl(&dword_1DF15A000, v23, v24, "Failed at consuming sandbox extension for token: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        MEMORY[0x1E12D0B40](v54, -1, -1);
        MEMORY[0x1E12D0B40](v25, -1, -1);
      }

      return;
    }

    v21 = v56;
    v20 = v57;
    v22 = v58;
    if ((v58 - 1) < 2)
    {
      sub_1DF222EA0(v56, v57, v58);
      goto LABEL_9;
    }

    v47 = sub_1DF22A8A0();
    v48 = sub_1DF22B110();
    sub_1DF222EA0(v21, v20, v22);
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v55 = v50;
      *v49 = 67109378;
      *(v49 + 4) = v21;
      *(v49 + 8) = 2080;
      if (v22)
      {
        v51 = v20;
      }

      else
      {
        v51 = 0;
      }

      if (v22)
      {
        v52 = v22;
      }

      else
      {
        v52 = 0xE000000000000000;
      }

      v53 = sub_1DF160728(v51, v52, &v55);

      *(v49 + 10) = v53;
      _os_log_impl(&dword_1DF15A000, v47, v48, "Failed at consuming sandbox extension: %d %s", v49, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x1E12D0B40](v50, -1, -1);
      MEMORY[0x1E12D0B40](v49, -1, -1);
    }

    else
    {

      sub_1DF222EA0(v21, v20, v22);
    }
  }

  else
  {
    v37 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x68);
    swift_beginAccess();

    MEMORY[0x1E12CF930](v38);
    if (*((*(v3 + v37) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v37) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DF22AEC0();
    }

    sub_1DF22AF00();
    swift_endAccess();

    v39 = sub_1DF22A8A0();
    v40 = sub_1DF22B100();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v56 = v42;
      *v41 = 136315138;

      v43 = SandboxExtension.description.getter();
      v45 = v44;

      v46 = sub_1DF160728(v43, v45, &v56);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_1DF15A000, v39, v40, "Consumed sandbox extension: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x1E12D0B40](v42, -1, -1);
      MEMORY[0x1E12D0B40](v41, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1DF21F23C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DF22ACC0();
  v6 = v5;
  v7 = a1;
  sub_1DF21EBD0(v4, v6);
}

uint64_t sub_1DF21F2A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[45] = a6;
  v7[46] = a7;
  v7[43] = a4;
  v7[44] = a5;
  v7[47] = *MEMORY[0x1E69E7D40] & *a4;
  v10 = swift_task_alloc();
  v7[48] = v10;
  *v10 = v7;
  v10[1] = sub_1DF21F388;

  return sub_1DF2207B4((v7 + 19), a4, a5);
}

uint64_t sub_1DF21F388()
{

  return MEMORY[0x1EEE6DFA0](sub_1DF21F484, 0, 0);
}

uint64_t sub_1DF21F484()
{
  v51 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 248);
  v3 = *(v0 + 168);
  v4 = *(v0 + 200);
  *(v0 + 48) = *(v0 + 184);
  *(v0 + 64) = v4;
  *(v0 + 80) = *(v0 + 216);
  *(v0 + 96) = v1;
  *(v0 + 16) = *(v0 + 152);
  *(v0 + 32) = v3;
  v5 = *(v0 + 264);
  *(v0 + 112) = v2;
  *(v0 + 128) = v5;
  *(v0 + 143) = *(v0 + 279);
  if (*(v0 + 16) && (v6 = , v7 = satisfiesTargetingRules(_:)(v6), , !v7))
  {
    v17 = (v0 + 320);
    sub_1DF218A30(v0 + 16);
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 352);
    v19 = sub_1DF22A8C0();
    __swift_project_value_buffer(v19, qword_1ED8E92C0);
    v20 = v18;
    v21 = sub_1DF22A8A0();
    v22 = sub_1DF22B0F0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 352);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v50 = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_1DF160728(*(v23 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName), *(v23 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName + 8), &v50);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_1DF160728(*(v23 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskId), *(v23 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskId + 8), &v50);
      _os_log_impl(&dword_1DF15A000, v21, v22, "Task %s [id: %s] doesn't satisfy targeting rules. Skipping execution.", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D0B40](v25, -1, -1);
      MEMORY[0x1E12D0B40](v24, -1, -1);
    }

    v26 = 328;
  }

  else
  {
    if (!*(v0 + 24) || (v8 = , v9 = satisifiesOSEligibilityRules(_:)(v8), , v9))
    {
      v11 = *(v0 + 48);
      v10 = *(v0 + 56);
      *(v0 + 392) = v11;
      *(v0 + 400) = v10;
      v12 = *(v0 + 64);
      v13 = *(v0 + 72);
      *(v0 + 408) = v12;
      *(v0 + 416) = v13;
      if (v10)
      {
        sub_1DF180D2C(v11, v10, v12, v13);
        v14 = swift_task_alloc();
        *(v0 + 424) = v14;
        *v14 = v0;
        v14[1] = sub_1DF21FAC0;
        v15 = *(v0 + 352);

        return sub_1DF19BCE4(v15, v11, v10, v12, v13);
      }

      else
      {
        v43 = *(v0 + 376);
        v44 = *(v43 + 88);
        *(v0 + 440) = v44;
        v45 = *(v44 + 16);
        v46 = *(v43 + 80);
        *(v0 + 448) = v46;
        v49 = (v45 + *v45);
        v47 = swift_task_alloc();
        *(v0 + 456) = v47;
        *v47 = v0;
        v47[1] = sub_1DF22023C;
        v48 = *(v0 + 352);

        return v49(v48, v46, v44);
      }
    }

    v17 = (v0 + 304);
    sub_1DF218A30(v0 + 16);
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 352);
    v28 = sub_1DF22A8C0();
    __swift_project_value_buffer(v28, qword_1ED8E92C0);
    v29 = v27;
    v30 = sub_1DF22A8A0();
    v31 = sub_1DF22B0F0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = *(v0 + 352);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v50 = v34;
      *v33 = 136315394;
      *(v33 + 4) = sub_1DF160728(*(v32 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName), *(v32 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName + 8), &v50);
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_1DF160728(*(v32 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskId), *(v32 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskId + 8), &v50);
      _os_log_impl(&dword_1DF15A000, v30, v31, "Task %s [id: %s] doesn't satisfy OS Eligibility rules. Skipping execution.", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D0B40](v34, -1, -1);
      MEMORY[0x1E12D0B40](v33, -1, -1);
    }

    v26 = 312;
  }

  v35 = *(v0 + 368);
  v37 = *(v0 + 352);
  v36 = *(v0 + 360);
  v38 = type metadata accessor for MLHostResult();
  v39 = objc_allocWithZone(v38);
  *&v39[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_status] = 2;
  *&v39[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_policy] = 1;
  v40 = &v39[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_error];
  *v40 = 0;
  *(v40 + 1) = 0;
  v17->receiver = v39;
  *(v0 + v26) = v38;
  v41 = [(objc_super *)v17 init];
  sub_1DF2221D0(v41, v37, v36, v35);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1DF21FAC0(char a1)
{
  v4 = *v2;
  *(*v2 + 432) = v1;

  if (v1)
  {
    sub_1DF218A30(v4 + 16);
    v5 = sub_1DF21FE98;
  }

  else
  {
    v6 = *(v4 + 408);
    v7 = *(v4 + 416);
    v8 = *(v4 + 392);
    v9 = *(v4 + 400);
    *(v4 + 148) = a1 & 1;
    sub_1DF180DA8(v8, v9, v6, v7);
    v5 = sub_1DF21FBFC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DF21FBFC()
{
  if (*(v0 + 148))
  {
    v1 = *(v0 + 376);
    v2 = *(v1 + 88);
    *(v0 + 440) = v2;
    v3 = *(v2 + 16);
    v4 = *(v1 + 80);
    *(v0 + 448) = v4;
    v18 = (v3 + *v3);
    v5 = swift_task_alloc();
    *(v0 + 456) = v5;
    *v5 = v0;
    v5[1] = sub_1DF22023C;
    v6 = *(v0 + 352);

    return v18(v6, v4, v2);
  }

  else
  {
    sub_1DF218A30(v0 + 16);
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v8 = sub_1DF22A8C0();
    __swift_project_value_buffer(v8, qword_1ED8E92C0);
    v9 = sub_1DF22A8A0();
    v10 = sub_1DF22B0F0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DF15A000, v9, v10, "MobileAsset not available. Rescheduling.", v11, 2u);
      MEMORY[0x1E12D0B40](v11, -1, -1);
    }

    v12 = *(v0 + 368);
    v14 = *(v0 + 352);
    v13 = *(v0 + 360);

    v15 = objc_allocWithZone(type metadata accessor for MLHostResult());
    v16 = sub_1DF2219C8(1, 1, v15);
    sub_1DF2221D0(v16, v14, v13, v12);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1DF21FE98()
{
  v1 = *(v0 + 432);
  sub_1DF180DA8(*(v0 + 392), *(v0 + 400), *(v0 + 408), *(v0 + 416));
  *(v0 + 336) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D448, &qword_1DF2305D8);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 147);
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v4 = sub_1DF22A8C0();
    __swift_project_value_buffer(v4, qword_1ED8E92C0);
    v5 = sub_1DF22A8A0();
    v6 = sub_1DF22B110();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      sub_1DF19DA38();
      swift_allocError();
      *v9 = v3;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_1DF15A000, v5, v6, "Got MLHostError while accessing MAAutoAsset: %@", v7, 0xCu);
      sub_1DF16184C(v8, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v8, -1, -1);
      MEMORY[0x1E12D0B40](v7, -1, -1);
    }

    v11 = *(v0 + 368);
    v13 = *(v0 + 352);
    v12 = *(v0 + 360);

    v14 = objc_allocWithZone(type metadata accessor for MLHostResult());
    v15 = sub_1DF221800(v3, 1, v14);
    sub_1DF2221D0(v15, v13, v12, v11);

    v16 = *(v0 + 336);
  }

  else
  {

    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 432);
    v18 = sub_1DF22A8C0();
    __swift_project_value_buffer(v18, qword_1ED8E92C0);
    v19 = v17;
    v20 = sub_1DF22A8A0();
    v21 = sub_1DF22B110();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 432);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v22;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1DF15A000, v20, v21, "Got unexpected non-MLHostError while accessing MAAutoAsset: %@", v23, 0xCu);
      sub_1DF16184C(v24, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v24, -1, -1);
      MEMORY[0x1E12D0B40](v23, -1, -1);
    }

    v27 = *(v0 + 432);
    v28 = *(v0 + 368);
    v30 = *(v0 + 352);
    v29 = *(v0 + 360);

    v31 = objc_allocWithZone(type metadata accessor for MLHostResult());
    v32 = sub_1DF2219C8(2, 1, v31);
    sub_1DF2221D0(v32, v30, v29, v28);

    v16 = v27;
  }

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1DF22023C(uint64_t a1)
{
  *(*v1 + 464) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DF22033C, 0, 0);
}

uint64_t sub_1DF22033C()
{
  v38 = v0;
  v1 = *(*(v0 + 464) + OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_policy);
  sub_1DF218A30(v0 + 16);
  if (v1)
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v2 = sub_1DF22A8C0();
    __swift_project_value_buffer(v2, qword_1ED8E92C0);
    v3 = sub_1DF22A8A0();
    v4 = sub_1DF22B0F0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DF15A000, v3, v4, "Extension indicated shouldRun() = false.", v5, 2u);
      MEMORY[0x1E12D0B40](v5, -1, -1);
    }

    v6 = *(v0 + 464);
    v8 = *(v0 + 360);
    v7 = *(v0 + 368);
    v9 = *(v0 + 352);

    sub_1DF2221D0(v6, v9, v8, v7);
    goto LABEL_22;
  }

  if (*(v0 + 40))
  {
LABEL_17:
    v6 = *(v0 + 464);
    sub_1DF2221D0(v6, *(v0 + 352), *(v0 + 360), *(v0 + 368));
    goto LABEL_22;
  }

  v10 = *(v0 + 32);
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 352);
  v12 = sub_1DF22A8C0();
  __swift_project_value_buffer(v12, qword_1ED8E92C0);
  v13 = v11;
  v14 = sub_1DF22A8A0();
  v15 = sub_1DF22B0F0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 352);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v37 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1DF160728(*(v16 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskId), *(v16 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskId + 8), &v37);
    _os_log_impl(&dword_1DF15A000, v14, v15, "Evaluating system sampling condition for task: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1E12D0B40](v18, -1, -1);
    MEMORY[0x1E12D0B40](v17, -1, -1);
  }

  v19 = sub_1DF221774(0x20000000000001uLL);
  if (v19 == 0x20000000000000)
  {
    v20 = 1.0;
    if (v10 >= 1.0)
    {
LABEL_14:
      v21 = sub_1DF22A8A0();
      v22 = sub_1DF22B0F0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = v20;
        _os_log_impl(&dword_1DF15A000, v21, v22, "Device has been selected for execution this time. Executing. Score: %f", v23, 0xCu);
        MEMORY[0x1E12D0B40](v23, -1, -1);
      }

      goto LABEL_17;
    }
  }

  else
  {
    v24 = vcvtd_n_f64_u64(v19, 0x35uLL);
    v20 = v24 + 0.0;
    if (v10 >= v24)
    {
      goto LABEL_14;
    }
  }

  v25 = sub_1DF22A8A0();
  v26 = sub_1DF22B0F0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134217984;
    *(v27 + 4) = v20;
    _os_log_impl(&dword_1DF15A000, v25, v26, "Device has not been selected for execution this time. Rescheduling. Score: %f", v27, 0xCu);
    MEMORY[0x1E12D0B40](v27, -1, -1);
  }

  v6 = *(v0 + 464);
  v29 = *(v0 + 360);
  v28 = *(v0 + 368);
  v30 = *(v0 + 352);

  v31 = type metadata accessor for MLHostResult();
  v32 = objc_allocWithZone(v31);
  *&v32[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_status] = 2;
  *&v32[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_policy] = 1;
  v33 = &v32[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_error];
  *v33 = 0;
  *(v33 + 1) = 0;
  *(v0 + 288) = v32;
  *(v0 + 296) = v31;
  v34 = objc_msgSendSuper2((v0 + 288), sel_init);
  sub_1DF2221D0(v34, v30, v29, v28);

LABEL_22:
  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1DF2207B4(uint64_t a1, void *a2, uint64_t a3)
{
  *(v3 + 288) = a1;
  v5 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x58);
  v6 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x50);
  v11 = (*(v5 + 32) + **(v5 + 32));
  v7 = swift_task_alloc();
  *(v3 + 296) = v7;
  v8 = sub_1DF222DD4();
  v9 = sub_1DF222E28();
  *v7 = v3;
  v7[1] = sub_1DF220958;

  return v11(v3 + 152, a3, &type metadata for MLHostEmptyParameters, v8, v9, v6, v5);
}

uint64_t sub_1DF220958()
{

  return MEMORY[0x1EEE6DFA0](sub_1DF220A54, 0, 0);
}

uint64_t sub_1DF220A54()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 248);
  v3 = *(v0 + 168);
  v4 = *(v0 + 200);
  *(v0 + 48) = *(v0 + 184);
  *(v0 + 64) = v4;
  *(v0 + 80) = *(v0 + 216);
  *(v0 + 96) = v1;
  *(v0 + 16) = *(v0 + 152);
  *(v0 + 32) = v3;
  v5 = *(v0 + 264);
  *(v0 + 112) = v2;
  *(v0 + 128) = v5;
  *(v0 + 143) = *(v0 + 279);
  v6 = sub_1DF222E7C((v0 + 16));
  v7 = *(v0 + 288);
  if (v6 == 1)
  {
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *(v7 + 24) = 1;
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
    *(v7 + 80) = 0u;
    *(v7 + 96) = 0u;
    *(v7 + 112) = 0u;
    *(v7 + 128) = 0;
    *(v7 + 130) = 2;
  }

  else
  {
    *v7 = *(v0 + 16);
    v8 = *(v0 + 32);
    v9 = *(v0 + 48);
    v10 = *(v0 + 80);
    *(v7 + 48) = *(v0 + 64);
    *(v7 + 64) = v10;
    *(v7 + 16) = v8;
    *(v7 + 32) = v9;
    v11 = *(v0 + 96);
    v12 = *(v0 + 112);
    v13 = *(v0 + 128);
    *(v7 + 127) = *(v0 + 143);
    *(v7 + 96) = v12;
    *(v7 + 112) = v13;
    *(v7 + 80) = v11;
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1DF220B98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E4A0, &qword_1DF23A430);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_1DF22AFC0();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v5;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v15 = v5;
  v16 = a1;

  *(v15 + *((*MEMORY[0x1E69E7D40] & *v15) + 0x70)) = sub_1DF21DC44(0, 0, v12, a5, v14);
}

uint64_t sub_1DF220CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  v9 = *a4;
  v10 = *MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x58);
  v7[5] = v11;
  v12 = *(v11 + 24);
  v13 = *((v10 & v9) + 0x50);
  v7[6] = v13;
  v16 = (v12 + *v12);
  v14 = swift_task_alloc();
  v7[7] = v14;
  *v14 = v7;
  v14[1] = sub_1DF220E74;

  return v16(a5, v13, v11);
}

uint64_t sub_1DF220E74(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DF220F74, 0, 0);
}

uint64_t sub_1DF220F74()
{
  v1 = *(v0 + 64);
  sub_1DF2221D0(v1, *(v0 + 16), *(v0 + 24), *(v0 + 32));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF221024(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = a1;
  sub_1DF220B98(v15, a6, v14, a7, a8);
}

void sub_1DF2210DC()
{
  v1 = v0;
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF22A8C0();
  __swift_project_value_buffer(v2, qword_1ED8E92C0);
  v3 = sub_1DF22A8A0();
  v4 = sub_1DF22B0F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DF15A000, v3, v4, "Extension asked to stop!", v5, 2u);
    MEMORY[0x1E12D0B40](v5, -1, -1);
  }

  if (*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)))
  {

    sub_1DF22B010();
  }
}

void sub_1DF221230(void *a1)
{
  v1 = a1;
  sub_1DF2210DC();
}

unint64_t TaskErrorEvent.coreAnalyticsDictionary.getter()
{
  v1 = v0;
  v2 = sub_1DF19005C(MEMORY[0x1E69E7CC0]);
  v3 = type metadata accessor for TaskErrorEvent(0);
  sub_1DF20803C(v1 + *(v3 + 20));
  v4 = sub_1DF22ACA0();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v4, 0x6D61745365746164, 0xE900000000000070, isUniquelyReferenced_nonNull_native);
  v6 = sub_1DF22ACA0();
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v6, 0x656D614E6B736174, 0xE800000000000000, v7);
  v8 = sub_1DF22ACA0();
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF1A7B40(v8, 0x73654D726F727265, 0xEC00000065676173, v9);
  return v2;
}

id sub_1DF2213BC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1DF222BBC();
    v4 = sub_1DF22AB90();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1DF221488(char *a1)
{
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)]);
}

uint64_t sub_1DF221584(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DF22167C;

  return v6(a1);
}

uint64_t sub_1DF22167C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1DF221774(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1E12D0B60](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1E12D0B60](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1DF221800(char a1, uint64_t a2, char *a3)
{
  v6 = 0xD000000000000014;
  ObjectType = swift_getObjectType();
  v20[3] = &type metadata for MLHostAssetError;
  v20[4] = sub_1DF222D2C();
  *&a3[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_status] = 0;
  LOBYTE(v20[0]) = a1;
  *&a3[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_policy] = a2;
  v8 = __swift_project_boxed_opaque_existential_1(v20, &type metadata for MLHostAssetError);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = (&v18 - v10);
  if (*v8)
  {
    if (*v8 == 1)
    {
      v12 = "failedToGetAutoAsset";
      v6 = 0xD00000000000001ELL;
    }

    else
    {
      v12 = "failedToExpressInterestInAsset";
      v6 = 0xD000000000000023;
    }
  }

  else
  {
    v12 = "CategoricalType";
  }

  *v11 = v6;
  v11[1] = v12 | 0x8000000000000000;
  swift_getAssociatedConformanceWitness();
  v13 = sub_1DF22ADC0();
  v14 = &a3[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_error];
  *v14 = v13;
  *(v14 + 1) = v15;
  v19.receiver = a3;
  v19.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v19, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  return v16;
}

id sub_1DF2219C8(char a1, uint64_t a2, char *a3)
{
  v6 = 0xD000000000000011;
  ObjectType = swift_getObjectType();
  v21[3] = &type metadata for MLHostCommonError;
  v21[4] = sub_1DF222D80();
  *&a3[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_status] = 0;
  LOBYTE(v21[0]) = a1;
  *&a3[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_policy] = a2;
  v8 = __swift_project_boxed_opaque_existential_1(v21, &type metadata for MLHostCommonError);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = (&v19 - v10);
  if (!*v8)
  {
    v6 = 0xD000000000000019;
    v13 = "extensionInvocationFailed";
LABEL_6:
    v12 = v13 - 32;
    goto LABEL_7;
  }

  if (*v8 != 1)
  {
    v13 = "mobileAssetFailed";
    goto LABEL_6;
  }

  v12 = "extensionInvocationFailed";
  v6 = 0xD000000000000016;
LABEL_7:
  *v11 = v6;
  v11[1] = v12 | 0x8000000000000000;
  swift_getAssociatedConformanceWitness();
  v14 = sub_1DF22ADC0();
  v15 = &a3[OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_error];
  *v15 = v14;
  *(v15 + 1) = v16;
  v20.receiver = a3;
  v20.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v20, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  return v17;
}

id sub_1DF221B8C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *v1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40];
  *&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x68)] = MEMORY[0x1E69E7CC0];
  *&v1[*((*v5 & *v1) + 0x70)] = 0;
  (*(*(*((v6 & v4) + 0x50) - 8) + 16))(&v1[*((*v5 & *v1) + 0x60)], a1);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t dispatch thunk of MLHostExtension.shouldRun(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DF222EBC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MLHostExtension.doWork(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DF19A474;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MLHostExtension.loadConfig<A>(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 32) + **(a7 + 32));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1DF1F0740;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1DF222070(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DF22214C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DF222194(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DF2221D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v63 = a4;
  v61 = a2;
  v6 = type metadata accessor for TaskErrorEvent(0);
  v62 = *(v6 - 1);
  v7 = *(v62 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v51 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v51 - v12);
  v14 = *(sub_1DF22A800() - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v21 = &v51 - v20;
  if (*(v18 + OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_status))
  {
    return a3();
  }

  v23 = *(v18 + OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_error + 8);
  if (!v23)
  {
    return a3();
  }

  v56 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a3;
  v60 = v18;
  v52 = *(v18 + OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_error);
  v53 = v11;
  v24 = v19;

  sub_1DF22A7D0();
  sub_1DF22A730();
  v54 = *(v14 + 8);
  v55 = v14 + 8;
  v54(v21, v24);
  sub_1DF22A720();
  v25 = v61;
  v27 = *(v61 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskId);
  v26 = *(v61 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskId + 8);
  v28 = *(v14 + 16);
  v29 = v13 + v6[5];
  v57 = v17;
  v58 = v24;
  v28(v29, v17, v24);
  v30 = *(v25 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName);
  v31 = *(v25 + OBJC_IVAR____TtC20LighthouseBackground22MLHostExtensionContext_taskName + 8);
  *v13 = v27;
  v13[1] = v26;
  v32 = (v13 + v6[6]);
  *v32 = v30;
  v32[1] = v31;
  v33 = (v13 + v6[7]);
  *v33 = v52;
  v33[1] = v23;
  v34 = qword_1ED8E7530;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = sub_1DF22A8C0();
  __swift_project_value_buffer(v35, qword_1ED8E92C0);
  v36 = v53;
  sub_1DF222A24(v13, v53);
  v37 = sub_1DF22A8A0();
  v38 = sub_1DF22B100();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136315138;
    TaskErrorEvent.coreAnalyticsDictionary.getter();
    sub_1DF222BBC();
    v41 = sub_1DF22ABB0();
    v43 = v42;

    sub_1DF222A88(v36);
    v44 = sub_1DF160728(v41, v43, aBlock);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_1DF15A000, v37, v38, "Sending Error: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x1E12D0B40](v40, -1, -1);
    MEMORY[0x1E12D0B40](v39, -1, -1);
  }

  else
  {

    sub_1DF222A88(v36);
  }

  v45 = v59;
  v46 = v56;
  v47 = sub_1DF22ACA0();
  sub_1DF222A24(v13, v46);
  v48 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v49 = swift_allocObject();
  sub_1DF222AE4(v46, v49 + v48);
  aBlock[4] = sub_1DF222B48;
  aBlock[5] = v49;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF2213BC;
  aBlock[3] = &block_descriptor_3;
  v50 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v50);

  (v45)(v60);
  sub_1DF222A88(v13);
  return (v54)(v57, v58);
}

uint64_t sub_1DF222770(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DF1F22C0;

  return sub_1DF220CF0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1DF222844(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E4A0, &qword_1DF23A430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF2228B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF1F22C0;

  return sub_1DF221584(a1, v4);
}

uint64_t sub_1DF22296C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF1F0740;

  return sub_1DF221584(a1, v4);
}

uint64_t sub_1DF222A24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskErrorEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF222A88(uint64_t a1)
{
  v2 = type metadata accessor for TaskErrorEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF222AE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskErrorEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1DF222BBC()
{
  result = qword_1ED8E6BE8;
  if (!qword_1ED8E6BE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8E6BE8);
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DF222C58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DF1F22C0;

  return sub_1DF21F2A4(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_1DF222D2C()
{
  result = qword_1ECE0F320;
  if (!qword_1ECE0F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F320);
  }

  return result;
}

unint64_t sub_1DF222D80()
{
  result = qword_1ECE0F328;
  if (!qword_1ECE0F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F328);
  }

  return result;
}

unint64_t sub_1DF222DD4()
{
  result = qword_1ED8E74B8;
  if (!qword_1ED8E74B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E74B8);
  }

  return result;
}

unint64_t sub_1DF222E28()
{
  result = qword_1ED8E74C0;
  if (!qword_1ED8E74C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E74C0);
  }

  return result;
}

uint64_t sub_1DF222E7C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF222EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 - 1) >= 2)
  {
  }

  return result;
}

uint64_t sub_1DF222EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD60, &qword_1DF22FFC0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v24 - v14 + 16;
  v24[0] = a3;
  v24[1] = a4;
  swift_beginAccess();
  v16 = *(v4 + 32);
  if (!*(v16 + 16))
  {
    goto LABEL_5;
  }

  v17 = sub_1DF175254(a1, a2);
  if ((v18 & 1) == 0)
  {

LABEL_5:
    v21 = 0;
    return v21 & 1;
  }

  sub_1DF17A6A8(*(v16 + 56) + *(v10 + 72) * v17, v13, &qword_1ECE0CD60, &qword_1DF22FFC0);

  v19 = sub_1DF196EF8(v13, v15);
  MEMORY[0x1EEE9AC00](v19);
  *(&v23 - 2) = v24;
  v21 = sub_1DF1605F8(sub_1DF2262D4, (&v23 - 4), v20);
  sub_1DF16184C(v15, &qword_1ECE0CD60, &qword_1DF22FFC0);
  return v21 & 1;
}

uint64_t StateMachineAnalytics.firstEventTimestamp.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  (*(a2 + 80))(a1, a2);
  v9 = type metadata accessor for LedgerState(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_1DF16184C(v8, &qword_1ECE0CCF8, &qword_1DF22FF80);
    v10 = sub_1DF22A800();
    return (*(*(v10 - 8) + 56))(a3, 1, 1, v10);
  }

  else
  {
    v12 = *(v9 + 20);
    v13 = sub_1DF22A800();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a3, &v8[v12], v13);
    sub_1DF17B558(v8);
    return (*(v14 + 56))(a3, 0, 1, v13);
  }
}

uint64_t StateMachineAnalytics.lastEventTimestamp.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  (*(a2 + 104))(a1, a2);
  v9 = type metadata accessor for LedgerState(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_1DF16184C(v8, &qword_1ECE0CCF8, &qword_1DF22FF80);
    v10 = sub_1DF22A800();
    return (*(*(v10 - 8) + 56))(a3, 1, 1, v10);
  }

  else
  {
    v12 = *(v9 + 20);
    v13 = sub_1DF22A800();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a3, &v8[v12], v13);
    sub_1DF17B558(v8);
    return (*(v14 + 56))(a3, 0, 1, v13);
  }
}

uint64_t StateMachineAnalytics.description.getter(uint64_t a1, uint64_t a2)
{
  sub_1DF22B300();
  MEMORY[0x1E12CF820](0xD000000000000023, 0x80000001DF23E5A0);
  (*(a2 + 32))(a1, a2);

  v4 = sub_1DF22B600();
  MEMORY[0x1E12CF820](v4);

  MEMORY[0x1E12CF820](0xD000000000000016, 0x80000001DF23E5D0);
  (*(a2 + 56))(a1, a2);

  v5 = sub_1DF22B600();
  MEMORY[0x1E12CF820](v5);

  MEMORY[0x1E12CF820](41, 0xE100000000000000);
  return 0;
}

char *LedgerStateMachine.__allocating_init(inputGraph:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1DF225A8C(a1);

  return v2;
}

uint64_t sub_1DF223638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  sub_1DF17A6A8(v2 + *(a1 + 24), &v14 - v6, &qword_1ECE0CCF8, &qword_1DF22FF80);
  v8 = type metadata accessor for LedgerState(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1DF16184C(v7, &qword_1ECE0CCF8, &qword_1DF22FF80);
    v9 = sub_1DF22A800();
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }

  else
  {
    v11 = *(v8 + 20);
    v12 = sub_1DF22A800();
    v13 = *(v12 - 8);
    (*(v13 + 16))(a2, &v7[v11], v12);
    sub_1DF17B558(v7);
    return (*(v13 + 56))(a2, 0, 1, v12);
  }
}

uint64_t sub_1DF223818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  sub_1DF17A6A8(v2 + *(a1 + 28), &v14 - v6, &qword_1ECE0CCF8, &qword_1DF22FF80);
  v8 = type metadata accessor for LedgerState(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1DF16184C(v7, &qword_1ECE0CCF8, &qword_1DF22FF80);
    v9 = sub_1DF22A800();
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }

  else
  {
    v11 = *(v8 + 20);
    v12 = sub_1DF22A800();
    v13 = *(v12 - 8);
    (*(v13 + 16))(a2, &v7[v11], v12);
    sub_1DF17B558(v7);
    return (*(v13 + 56))(a2, 0, 1, v12);
  }
}

LighthouseBackground::LedgerTransitionStatistics __swiftcall LedgerTransitionStatistics.init()()
{
  *v0 = 0x7FEFFFFFFFFFFFFFLL;
  v0[1] = 0;
  v0[2] = 0;
  v0[3] = 0;
  return result;
}

Swift::Void __swiftcall LedgerTransitionStatistics.processTime(delta:)(Swift::Double delta)
{
  if (*v1 > delta)
  {
    *v1 = delta;
  }

  if (*(v1 + 8) < delta)
  {
    *(v1 + 8) = delta;
  }

  v2 = *(v1 + 24);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = v4;
    *(v1 + 16) = *(v1 + 16) + (delta - *(v1 + 16)) / v4;
  }
}

uint64_t LedgerTransitionStatistics.description.getter()
{
  sub_1DF22B300();
  MEMORY[0x1E12CF820](0x203A6E61654DLL, 0xE600000000000000);
  sub_1DF22B050();
  MEMORY[0x1E12CF820](0x203A6E694D207C20, 0xE800000000000000);
  sub_1DF22B050();
  MEMORY[0x1E12CF820](0x203A78614D207C20, 0xE800000000000000);
  sub_1DF22B050();
  return 0;
}

uint64_t sub_1DF223C28()
{
  v1 = 7235949;
  v2 = 1851876717;
  if (*v0 != 2)
  {
    v2 = 0x746E756F63;
  }

  if (*v0)
  {
    v1 = 7889261;
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

uint64_t sub_1DF223C88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF226174(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF223CB0(uint64_t a1)
{
  v2 = sub_1DF225CAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF223CEC(uint64_t a1)
{
  v2 = sub_1DF225CAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LedgerTransitionStatistics.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0F330, &qword_1DF23C348);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF225CAC();
  sub_1DF22B740();
  v8[15] = 0;
  sub_1DF22B5A0();
  if (!v1)
  {
    v8[14] = 1;
    sub_1DF22B5A0();
    v8[13] = 2;
    sub_1DF22B5A0();
    v8[12] = 3;
    sub_1DF22B5B0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t LedgerTransitionStatistics.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0F340, &unk_1DF23C350);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF225CAC();
  sub_1DF22B730();
  if (!v2)
  {
    v17[15] = 0;
    sub_1DF22B4C0();
    v10 = v9;
    v17[14] = 1;
    sub_1DF22B4C0();
    v12 = v11;
    v17[13] = 2;
    sub_1DF22B4C0();
    v15 = v14;
    v17[12] = 3;
    v16 = sub_1DF22B4D0();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    a2[1] = v12;
    a2[2] = v15;
    a2[3] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DF224140@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1ECE0F348;
  swift_beginAccess();
  return sub_1DF17A6A8(v1 + v3, a1, &qword_1ECE0CCF8, &qword_1DF22FF80);
}

uint64_t sub_1DF2241A8(uint64_t a1)
{
  v3 = qword_1ECE0F348;
  swift_beginAccess();
  sub_1DF1FAE54(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1DF224208@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1DF2242A8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

char *LedgerStateMachine.init(inputGraph:)(uint64_t a1)
{
  v1 = sub_1DF225A8C(a1);

  return v1;
}

uint64_t sub_1DF224384()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_1DF1751D0(*(v2 + 16), 0);
  v5 = sub_1DF17A7EC();

  sub_1DF178EDC(v11);
  if (v5 != v3)
  {
    __break(1u);
LABEL_4:
    v4 = MEMORY[0x1E69E7CC0];
  }

  v6 = MEMORY[0x1E12CF970](v4, MEMORY[0x1E69E6158]);

  MEMORY[0x1E12CF820](10, 0xE100000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD60, &qword_1DF22FFC0);
  v7 = sub_1DF22ABB0();
  v9 = v8;

  MEMORY[0x1E12CF820](v7, v9);

  return v6;
}

uint64_t sub_1DF224518(uint64_t a1)
{
  v21 = a1;
  v2 = *v1;
  v3 = type metadata accessor for LedgerState(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v20 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + 80);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  v19 = *(v4 + 56);
  v19(&v18 - v14, 1, 1, v3);
  sub_1DF2241A8(v15);
  (*(*(v2 + 88) + 144))(v7);
  sub_1DF2242A8(v9);
  sub_1DF17A6A8(v21, v13, &qword_1ECE0CCF8, &qword_1DF22FF80);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    return sub_1DF16184C(v13, &qword_1ECE0CCF8, &qword_1DF22FF80);
  }

  v17 = v20;
  sub_1DF199278(v13, v20);
  sub_1DF17B4F4(v17, v15);
  v19(v15, 0, 1, v3);
  sub_1DF2241A8(v15);
  sub_1DF22500C(v17);
  return sub_1DF17B558(v17);
}

uint64_t sub_1DF2247C8(uint64_t *a1)
{
  v80 = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v76 - v7;
  v9 = type metadata accessor for LedgerState(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v79 = (&v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v76 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v76 - v16);
  v18 = qword_1ECE0F348;
  swift_beginAccess();
  sub_1DF17A6A8(v1 + v18, v8, &qword_1ECE0CCF8, &qword_1DF22FF80);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v23 = v80;
    sub_1DF199278(v8, v17);
    v35 = *v17;
    v36 = v17[1];
    v29 = a1[1];
    v78 = *a1;
    if ((sub_1DF222EC4(v35, v36, v78, v29) & 1) == 0)
    {
      if (qword_1ED8E7530 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_31;
    }

    sub_1DF2251C0(v17, a1);
    sub_1DF17B4F4(a1, v6);
    (*(v10 + 56))(v6, 0, 1, v9);
    sub_1DF2241A8(v6);
    v37 = v17;
    return sub_1DF17B558(v37);
  }

  sub_1DF16184C(v8, &qword_1ECE0CCF8, &qword_1DF22FF80);
  sub_1DF17B4F4(a1, v6);
  (*(v10 + 56))(v6, 0, 1, v9);
  sub_1DF2241A8(v6);
  v15 = *a1;
  v19 = a1[1];
  v79 = a1;
  swift_beginAccess();
  v21 = *(v80 + 80);
  v20 = *(v80 + 88);
  v22 = *(v20 + 48);

  v23 = v15;
  v17 = v22(v82, v21, v20);
  v25 = v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v25;
  v27 = v81;
  *v25 = 0x8000000000000000;
  v29 = sub_1DF175254(v15, v19);
  v30 = *(v27 + 16);
  v31 = (v28 & 1) == 0;
  v32 = v30 + v31;
  if (__OFADD__(v30, v31))
  {
    __break(1u);
    goto LABEL_30;
  }

  v15 = v28;
  if (*(v27 + 24) < v32)
  {
    sub_1DF1A63D0(v32, isUniquelyReferenced_nonNull_native);
    v33 = sub_1DF175254(v23, v19);
    if ((v15 & 1) == (v34 & 1))
    {
      v29 = v33;
      goto LABEL_12;
    }

    goto LABEL_36;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_33;
  }

  while (1)
  {
LABEL_12:
    *v25 = v81;

    v52 = *v25;
    if (v15)
    {
    }

    else
    {
      sub_1DF1A8614(v29, v23, v19, 0, *v25);
    }

    v53 = *(v52 + 56);
    v54 = *(v53 + 8 * v29);
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (!v55)
    {
      *(v53 + 8 * v29) = v56;
      (v17)(v82, 0);
      swift_endAccess();
      return sub_1DF22500C(v79);
    }

LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
LABEL_9:
    v38 = sub_1DF22A8C0();
    __swift_project_value_buffer(v38, qword_1ED8E92C0);
    sub_1DF17B4F4(v17, v15);
    v39 = a1;
    v40 = v79;
    sub_1DF17B4F4(v39, v79);
    v41 = sub_1DF22A8A0();
    v42 = sub_1DF22B100();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v23;
    v77 = v17;
    if (v43)
    {
      v45 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v82[0] = v76;
      *v45 = 136315394;
      v46 = *v15;
      v47 = *(v15 + 8);

      sub_1DF17B558(v15);
      v48 = sub_1DF160728(v46, v47, v82);

      *(v45 + 4) = v48;
      *(v45 + 12) = 2080;
      v49 = *v40;
      v15 = v40[1];

      sub_1DF17B558(v40);
      v50 = sub_1DF160728(v49, v15, v82);

      *(v45 + 14) = v50;
      _os_log_impl(&dword_1DF15A000, v41, v42, "Invalid StateMachine transition, incrementing state: %s -> %s", v45, 0x16u);
      v51 = v76;
      swift_arrayDestroy();
      MEMORY[0x1E12D0B40](v51, -1, -1);
      MEMORY[0x1E12D0B40](v45, -1, -1);
    }

    else
    {

      sub_1DF17B558(v40);
      sub_1DF17B558(v15);
    }

    a1 = v78;
    swift_beginAccess();
    v59 = *(v44 + 80);
    v58 = *(v44 + 88);
    v25 = *(v58 + 48);

    v60 = (v25)(v82, v59, v58);
    v17 = v61;
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v63 = v29;
    v29 = v62;
    v81 = *v17;
    v64 = v81;
    *v17 = 0x8000000000000000;
    v19 = v63;
    v23 = sub_1DF175254(a1, v63);
    v66 = *(v64 + 16);
    v67 = (v65 & 1) == 0;
    v68 = v66 + v67;
    if (!__OFADD__(v66, v67))
    {
      break;
    }

    __break(1u);
LABEL_33:
    sub_1DF176390();
  }

  v69 = v65;
  if (*(v64 + 24) >= v68)
  {
    if ((v29 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_23;
  }

  sub_1DF1A63D0(v68, v29);
  v70 = sub_1DF175254(a1, v19);
  if ((v69 & 1) == (v71 & 1))
  {
    v23 = v70;
    while (1)
    {
LABEL_23:
      *v17 = v81;

      v72 = *v17;
      if (v69)
      {
      }

      else
      {
        sub_1DF1A8614(v23, a1, v19, 0, *v17);
      }

      v73 = *(v72 + 56);
      v74 = *(v73 + 8 * v23);
      v55 = __OFADD__(v74, 1);
      v75 = v74 + 1;
      if (!v55)
      {
        break;
      }

      __break(1u);
LABEL_35:
      sub_1DF176390();
    }

    *(v73 + 8 * v23) = v75;
    v60(v82, 0);
    swift_endAccess();
    v37 = v77;
    return sub_1DF17B558(v37);
  }

LABEL_36:
  result = sub_1DF22B660();
  __break(1u);
  return result;
}

uint64_t sub_1DF224F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = *(type metadata accessor for LedgerState(0) - 8);
    v6 = (a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));
    v7 = *(v5 + 72);
    do
    {
      sub_1DF2247C8(v6);
      v6 = (v6 + v7);
      --v3;
    }

    while (v3);
  }

  return sub_1DF224208(a2);
}

uint64_t sub_1DF22500C(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  sub_1DF17B4F4(a1, &v12 - v5);
  v7 = type metadata accessor for LedgerState(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  swift_beginAccess();
  v9 = *(v3 + 88);
  v10 = *(v3 + 80);
  (*(v9 + 88))(v6, v10, v9);
  sub_1DF17B4F4(a1, v6);
  v8(v6, 0, 1, v7);
  (*(v9 + 112))(v6, v10, v9);
  return swift_endAccess();
}

uint64_t sub_1DF2251C0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v52 = &v50 - v8;
  v9 = a1[1];
  v55 = *a1;
  v11 = *a2;
  v10 = a2[1];
  v50 = type metadata accessor for LedgerState(0);
  LODWORD(v12) = *(v50 + 20);
  swift_bridgeObjectRetain_n();
  v56 = v9;

  v51 = a2;
  sub_1DF22A7F0();
  v14 = v13;
  swift_beginAccess();
  v15 = *(v6 + 88);
  v16 = v15[6];
  v54 = *(v6 + 80);
  v17 = v15;
  v53 = v16(v59);
  v19 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v19;
  v57 = v11;
  v58 = v21;
  *v19 = 0x8000000000000000;
  v23 = sub_1DF175254(v11, v10);
  v24 = v21[2];
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v12) = v22;
  if (v21[3] >= v26)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_29;
    }

    while (1)
    {
LABEL_6:
      v29 = v54;
      v30 = v17;
      *v19 = v58;

      v31 = *v19;
      if (v12)
      {
      }

      else
      {
        sub_1DF1A8614(v23, v57, v10, 0, *v19);
      }

      v32 = v31[7];
      v33 = *(v32 + 8 * v23);
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        break;
      }

      *(v32 + 8 * v23) = v35;
      v53(v59, 0);
      swift_endAccess();
      swift_beginAccess();
      v54 = (v17[9])(v59, v29, v17);
      v17 = v36;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v58 = *v17;
      v37 = v58;
      *v17 = 0x8000000000000000;
      v19 = sub_1DF1752CC(v55, v56, v57, v10);
      v39 = v37[2];
      v40 = (v38 & 1) == 0;
      v41 = v39 + v40;
      if (__OFADD__(v39, v40))
      {
        goto LABEL_27;
      }

      v23 = v38;
      if (v37[3] >= v41)
      {
        if ((v12 & 1) == 0)
        {
          sub_1DF176200();
        }
      }

      else
      {
        sub_1DF1A60CC(v41, v12);
        v42 = sub_1DF1752CC(v55, v56, v57, v10);
        if ((v23 & 1) != (v43 & 1))
        {
          goto LABEL_31;
        }

        v19 = v42;
      }

      *v17 = v58;

      v44 = *v17;
      if (v23)
      {
      }

      else
      {
        sub_1DF1A85B8(v19, v55, v56, v57, v10, 0, *v17, 1.79769313e308, 0.0, 0.0);
      }

      v45 = *(v44 + 56) + 32 * v19;
      if (v14 < *v45)
      {
        *v45 = v14;
      }

      if (*(v45 + 8) < v14)
      {
        *(v45 + 8) = v14;
      }

      v46 = *(v45 + 24);
      v34 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (!v34)
      {
        *(v45 + 24) = v47;
        *(v45 + 16) = *(v45 + 16) + (v14 - *(v45 + 16)) / v47;
        v54(v59, 0);
        swift_endAccess();
        v48 = v52;
        sub_1DF17B4F4(v51, v52);
        (*(*(v50 - 8) + 56))(v48, 0, 1);
        swift_beginAccess();
        (v30[14])(v48, v29, v30);
        return swift_endAccess();
      }

LABEL_28:
      __break(1u);
LABEL_29:
      sub_1DF176390();
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_1DF1A63D0(v26, isUniquelyReferenced_nonNull_native);
  v27 = sub_1DF175254(v57, v10);
  if ((v12 & 1) == (v28 & 1))
  {
    v23 = v27;
    goto LABEL_6;
  }

  sub_1DF22B660();
  __break(1u);
LABEL_31:
  result = sub_1DF22B660();
  __break(1u);
  return result;
}

void static LedgerStateMachine.meanEdgeLatencySumForPath(path:computedAnalytics:)(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    if (v2 == 1)
    {
      v5 = MEMORY[0x1E69E7CC0];
      v13 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v13)
      {
LABEL_17:

        return;
      }
    }

    else
    {
      v32 = MEMORY[0x1E69E7CC0];
      sub_1DF160DF8(0, v3, 0);
      v5 = v32;
      v6 = (a1 + 56);
      do
      {
        v7 = *(v6 - 3);
        v8 = *(v6 - 2);
        v10 = *(v6 - 1);
        v9 = *v6;
        v12 = *(v32 + 16);
        v11 = *(v32 + 24);
        v13 = v12 + 1;

        if (v12 >= v11 >> 1)
        {
          sub_1DF160DF8((v11 > 1), v12 + 1, 1);
        }

        *(v32 + 16) = v13;
        v14 = (v32 + 32 * v12);
        v14[4] = v7;
        v14[5] = v8;
        v14[6] = v10;
        v14[7] = v9;
        v6 += 2;
        --v3;
      }

      while (v3);
    }

    v15 = 0;
    v16 = (v5 + 56);
    v17 = 0.0;
    v29 = v5;
    while (v15 < *(v5 + 16))
    {
      v19 = *(v16 - 3);
      v18 = *(v16 - 2);
      v21 = *(v16 - 1);
      v20 = *v16;
      v23 = a2[3];
      v22 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v23);
      v31 = *(v22 + 56);

      v24 = v31(v23, v22);
      if (!*(v24 + 16))
      {

LABEL_16:

        goto LABEL_17;
      }

      v25 = sub_1DF1752CC(v19, v18, v21, v20);
      v27 = v26;

      if ((v27 & 1) == 0)
      {
        goto LABEL_16;
      }

      ++v15;
      v28 = *(*(v24 + 56) + 32 * v25 + 16);

      v17 = v17 + v28;
      v16 += 4;
      v5 = v29;
      if (v13 == v15)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t static LedgerStateMachine.averageLatencyAcrossPaths(paths:computedAnalytics:)(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = 0;
    v5 = result + 32;
    v6 = 0.0;
    do
    {

      static LedgerStateMachine.meanEdgeLatencySumForPath(path:computedAnalytics:)(v7, a2);
      v9 = v8;
      v11 = v10;

      if ((v11 & 1) == 0)
      {
        if (__OFADD__(v4++, 1))
        {
          __break(1u);
          return result;
        }

        v6 = v6 + (v9 - v6) / v4;
      }

      v5 += 8;
      --v2;
    }

    while (v2);
  }

  return result;
}

char *LedgerStateMachine.deinit()
{
  v1 = *v0;

  sub_1DF16184C(v0 + qword_1ECE0F348, &qword_1ECE0CCF8, &qword_1DF22FF80);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  return v0;
}

uint64_t LedgerStateMachine.__deallocating_deinit()
{
  LedgerStateMachine.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

char *sub_1DF225A8C(uint64_t a1)
{
  v2 = v1;
  v16 = *v1;
  v4 = *(v16 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = qword_1ECE0F348;
  v12 = type metadata accessor for LedgerState(0);
  v13 = *(*(v12 - 8) + 56);
  v13(&v2[v11], 1, 1, v12);
  *(v2 + 2) = a1;
  v13(v10, 1, 1, v12);
  v14 = qword_1ECE0F348;
  swift_beginAccess();

  sub_1DF1FAE54(v10, &v2[v14]);
  swift_endAccess();
  (*(*(v16 + 88) + 144))(v4);
  (*(v5 + 32))(&v2[*(*v2 + 112)], v7, v4);
  return v2;
}

unint64_t sub_1DF225CAC()
{
  result = qword_1ECE0F338;
  if (!qword_1ECE0F338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F338);
  }

  return result;
}

void sub_1DF225E3C(uint64_t a1)
{
  sub_1DF1FBEB0(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

unint64_t sub_1DF226070()
{
  result = qword_1ECE0F3D0;
  if (!qword_1ECE0F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F3D0);
  }

  return result;
}

unint64_t sub_1DF2260C8()
{
  result = qword_1ECE0F3D8;
  if (!qword_1ECE0F3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F3D8);
  }

  return result;
}

unint64_t sub_1DF226120()
{
  result = qword_1ECE0F3E0;
  if (!qword_1ECE0F3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F3E0);
  }

  return result;
}

uint64_t sub_1DF226174(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7235949 && a2 == 0xE300000000000000;
  if (v3 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1851876717 && a2 == 0xE400000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DF22B620();

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

uint64_t sub_1DF2262D4(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(a1 + 16) == *v2 && *(a1 + 24) == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DF22B620() & 1;
  }
}

uint64_t SandboxExtension.__allocating_init(token:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = 1;
  *(result + 16) = a1;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SandboxExtension.consume()()
{
  v1 = v0;
  if (*(v0 + 40))
  {
    sub_1DF22ACF0();
    v2 = sandbox_extension_consume();

    if (v2 < 0)
    {
      v12 = MEMORY[0x1E12CF490](v3);
      v13 = MEMORY[0x1E12CF490]();
      if (strerror(v13))
      {
        v14 = sub_1DF22AC90();
        v16 = v15;
        sub_1DF2265BC();
        swift_allocError();
        *v17 = v12;
        v17[1] = v14;
        v17[2] = v16;
        swift_willThrow();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      *(v1 + 32) = v2;
      *(v1 + 40) = 0;
    }
  }

  else
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v4 = sub_1DF22A8C0();
    __swift_project_value_buffer(v4, qword_1ED8E92C0);

    v5 = sub_1DF22A8A0();
    v6 = sub_1DF22B100();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      v9 = SandboxExtension.description.getter();
      v11 = sub_1DF160728(v9, v10, &v18);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1DF15A000, v5, v6, "SandboxExtension already consumed: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E12D0B40](v8, -1, -1);
      MEMORY[0x1E12D0B40](v7, -1, -1);
    }
  }
}

uint64_t SandboxExtension.token.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SandboxExtension.init(token:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  *(v2 + 16) = a1;
  return v2;
}

unint64_t sub_1DF2265BC()
{
  result = qword_1ECE0F3E8;
  if (!qword_1ECE0F3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F3E8);
  }

  return result;
}

uint64_t SandboxExtension.deinit()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    sandbox_extension_release();
  }

  return v0;
}

uint64_t SandboxExtension.__deallocating_deinit()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    sandbox_extension_release();
  }

  return MEMORY[0x1EEE6BDC0](v0, 41, 7);
}

unint64_t SandboxExtension.description.getter()
{
  v1 = v0;
  sub_1DF22B300();

  v2 = *(v0 + 16);
  v3 = *(v1 + 24);

  v4 = sub_1DF2269DC(16, v2, v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = MEMORY[0x1E12CF7D0](v4, v6, v8, v10);
  v13 = v12;

  MEMORY[0x1E12CF820](v11, v13);

  MEMORY[0x1E12CF820](0x656C646E6168202CLL, 0xEA0000000000203ALL);
  v14 = sub_1DF22B600();
  MEMORY[0x1E12CF820](v14);

  MEMORY[0x1E12CF820](41, 0xE100000000000000);
  return 0xD000000000000018;
}

char *static SandboxExtension.issue(auditToken:url:readonly:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  sub_1DF22A680();
  v6 = sub_1DF22ACF0();

  v7 = sandbox_extension_issue_file_to_process();

  if (v7)
  {
    v9 = sub_1DF22AC90();
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      v6 = swift_allocObject();
      *(v6 + 24) = v12;
      *(v6 + 32) = 0;
      *(v6 + 40) = 1;
      *(v6 + 16) = v11;
    }

    else
    {
      sub_1DF2265BC();
      swift_allocError();
      *v19 = 0;
      v19[1] = 0;
      v19[2] = 1;
      swift_willThrow();
    }

    free(v7);
    return v6;
  }

  v13 = MEMORY[0x1E12CF490](v8);
  v14 = MEMORY[0x1E12CF490]();
  result = strerror(v14);
  if (result)
  {
    v16 = sub_1DF22AC90();
    v6 = v17;
    sub_1DF2265BC();
    swift_allocError();
    *v18 = v13;
    v18[1] = v16;
    v18[2] = v6;
    swift_willThrow();
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF2269DC(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1DF22AD40();

    return sub_1DF22ADD0();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20LighthouseBackground12SandboxErrorO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF226A9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF226B04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

void *sub_1DF226B58(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = a2;
  }

  return result;
}

uint64_t LedgerStateDefinition.index.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LedgerStateDefinition.index.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static LedgerStateDefinition.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DF22B620();
  }
}

uint64_t sub_1DF226CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF22B620();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF226D40(uint64_t a1)
{
  v2 = sub_1DF226EF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF226D7C(uint64_t a1)
{
  v2 = sub_1DF226EF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LedgerStateDefinition.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0F3F0, &qword_1DF23C6A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF226EF4();
  sub_1DF22B740();
  sub_1DF22B580();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1DF226EF4()
{
  result = qword_1ECE0F3F8;
  if (!qword_1ECE0F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F3F8);
  }

  return result;
}

uint64_t LedgerStateDefinition.hashValue.getter()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();
  return sub_1DF22B6F0();
}

uint64_t LedgerStateDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0F400, &qword_1DF23C6A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF226EF4();
  sub_1DF22B730();
  if (!v2)
  {
    v9 = sub_1DF22B4A0();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DF227110()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();
  return sub_1DF22B6F0();
}

uint64_t sub_1DF227164(uint64_t a1)
{
  sub_1DF22B6C0();
  sub_1DF22AD20();
  return sub_1DF22B6F0();
}

uint64_t sub_1DF2271C4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0F3F0, &qword_1DF23C6A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF226EF4();
  sub_1DF22B740();
  sub_1DF22B580();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1DF227300(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DF22B620();
  }
}

uint64_t LedgerRecipe.project.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LedgerRecipe.project.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LedgerRecipe.events.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t LedgerRecipe.transitions.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

LighthouseBackground::LedgerRecipe __swiftcall LedgerRecipe.init(project:events:transitions:)(Swift::String project, Swift::OpaquePointer events, Swift::OpaquePointer transitions)
{
  *v3 = project;
  *(v3 + 16) = events;
  *(v3 + 24) = transitions;
  result.project = project;
  result.transitions = transitions;
  result.events = events;
  return result;
}

uint64_t sub_1DF22746C()
{
  v1 = 0x73746E657665;
  if (*v0 != 1)
  {
    v1 = 0x697469736E617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7463656A6F7270;
  }
}

uint64_t sub_1DF2274CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF227F60(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF2274F4(uint64_t a1)
{
  v2 = sub_1DF227790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF227530(uint64_t a1)
{
  v2 = sub_1DF227790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LedgerRecipe.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0F408, &qword_1DF23C6B0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v7 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF227790();
  sub_1DF22B740();
  LOBYTE(v15) = 0;
  v8 = v13;
  sub_1DF22B580();
  if (!v8)
  {
    v9 = v11;
    v15 = v12;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0F418, &qword_1DF23C6B8);
    sub_1DF227B30(&qword_1ECE0F420, sub_1DF2277E4, MEMORY[0x1E69E6300]);
    sub_1DF22B5C0();
    v15 = v9;
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CB28, &qword_1DF231270);
    sub_1DF1663F4();
    sub_1DF22B5C0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1DF227790()
{
  result = qword_1ECE0F410;
  if (!qword_1ECE0F410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F410);
  }

  return result;
}

unint64_t sub_1DF2277E4()
{
  result = qword_1ECE0F428;
  if (!qword_1ECE0F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F428);
  }

  return result;
}

uint64_t LedgerRecipe.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0F430, &qword_1DF23C6C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF227790();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v19) = 0;
  v9 = sub_1DF22B4A0();
  v11 = v10;
  v17 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0F418, &qword_1DF23C6B8);
  v18 = 1;
  sub_1DF227B30(&qword_1ECE0F438, sub_1DF227BA8, MEMORY[0x1E69E6330]);
  sub_1DF22B4E0();
  v16 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CB28, &qword_1DF231270);
  v18 = 2;
  sub_1DF1666C0();
  sub_1DF22B4E0();
  (*(v6 + 8))(v8, v5);
  v12 = v19;
  v13 = v16;
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v13;
  a2[3] = v12;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DF227B30(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE0F418, &qword_1DF23C6B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF227BA8()
{
  result = qword_1ECE0F440;
  if (!qword_1ECE0F440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F440);
  }

  return result;
}

unint64_t sub_1DF227BFC(void *a1)
{
  a1[1] = sub_1DF227BA8();
  a1[2] = sub_1DF2277E4();
  result = sub_1DF227C34();
  a1[3] = result;
  return result;
}

unint64_t sub_1DF227C34()
{
  result = qword_1ECE0F448;
  if (!qword_1ECE0F448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F448);
  }

  return result;
}

unint64_t sub_1DF227C8C()
{
  result = qword_1ECE0F450;
  if (!qword_1ECE0F450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F450);
  }

  return result;
}

unint64_t sub_1DF227D54()
{
  result = qword_1ECE0F458;
  if (!qword_1ECE0F458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F458);
  }

  return result;
}

unint64_t sub_1DF227DAC()
{
  result = qword_1ECE0F460;
  if (!qword_1ECE0F460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F460);
  }

  return result;
}

unint64_t sub_1DF227E04()
{
  result = qword_1ECE0F468;
  if (!qword_1ECE0F468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F468);
  }

  return result;
}

unint64_t sub_1DF227E5C()
{
  result = qword_1ECE0F470;
  if (!qword_1ECE0F470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F470);
  }

  return result;
}

unint64_t sub_1DF227EB4()
{
  result = qword_1ECE0F478;
  if (!qword_1ECE0F478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F478);
  }

  return result;
}

unint64_t sub_1DF227F0C()
{
  result = qword_1ECE0F480;
  if (!qword_1ECE0F480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F480);
  }

  return result;
}

uint64_t sub_1DF227F60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A6F7270 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E657665 && a2 == 0xE600000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697469736E617274 && a2 == 0xEB00000000736E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DF22B620();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1DF228078(unsigned __int8 a1)
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF2281A4(unsigned __int8 a1)
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF2282A0(unsigned __int8 a1)
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF22838C(unsigned __int8 a1)
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF2284C8(uint64_t a1, unsigned __int8 a2)
{
  sub_1DF22AD20();
}

uint64_t sub_1DF2285FC(uint64_t a1, unsigned __int8 a2)
{
  sub_1DF22AD20();
}

uint64_t sub_1DF228790(uint64_t a1, unsigned __int8 a2)
{
  sub_1DF22AD20();
}

uint64_t sub_1DF228924(uint64_t a1, unsigned __int8 a2)
{
  sub_1DF22AD20();
}

uint64_t sub_1DF228AD8(uint64_t a1, unsigned __int8 a2)
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF228BD0(uint64_t a1, unsigned __int8 a2)
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF228D00(uint64_t a1, unsigned __int8 a2)
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF228E38(uint64_t a1, char a2)
{
  sub_1DF22B6C0();
  MEMORY[0x1E12D01B0](qword_1DF23CD88[a2]);
  return sub_1DF22B6F0();
}

uint64_t sub_1DF228E88(uint64_t a1, unsigned __int8 a2)
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF228FB0(uint64_t a1, unsigned __int8 a2)
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF2290B8(uint64_t a1, unsigned __int8 a2)
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF22922C(uint64_t a1, unsigned __int8 a2)
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF229374(uint64_t a1, unsigned __int8 a2)
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

unint64_t OnDemandError.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x5264696C61766E69;
  v3 = 0x61766E496B736174;
  v4 = 0x6E6E75526B736174;
  if (v1 != 4)
  {
    v4 = 0x646E65506B736174;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x696C756465686373;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
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

LighthouseBackground::OnDemandError_optional __swiftcall OnDemandError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DF2295C8(uint64_t a1)
{
  sub_1DF22AD20();
}

void sub_1DF229700(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00747365757165;
  v4 = 0x5264696C61766E69;
  v5 = 0xEB0000000064696CLL;
  v6 = 0x61766E496B736174;
  v7 = 0x6E6E75526B736174;
  if (v2 != 4)
  {
    v7 = 0x646E65506B736174;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xEB00000000676E69;
  }

  if (v2 != 1)
  {
    v4 = 0x696C756465686373;
    v3 = 0xEF726F727245676ELL;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000001DF23D6C0;
  }

  if (*v1 <= 2u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t OnDemandResult.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DF22B420();

  *a3 = v4 != 0;
  return result;
}

unint64_t sub_1DF229940()
{
  result = qword_1ECE0F488;
  if (!qword_1ECE0F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F488);
  }

  return result;
}

unint64_t sub_1DF2299C8()
{
  result = qword_1ECE0F4A0;
  if (!qword_1ECE0F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F4A0);
  }

  return result;
}

uint64_t sub_1DF229A1C()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();
  return sub_1DF22B6F0();
}

uint64_t sub_1DF229AA0(uint64_t a1)
{
  sub_1DF22B6C0();
  sub_1DF22AD20();
  return sub_1DF22B6F0();
}

uint64_t sub_1DF229AFC@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1DF22B420();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_1DF229C88()
{
  result = qword_1ECE0F4B8;
  if (!qword_1ECE0F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F4B8);
  }

  return result;
}

unint64_t sub_1DF229CDC()
{
  result = qword_1ECE0F4C0;
  if (!qword_1ECE0F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0F4C0);
  }

  return result;
}

uint64_t RemoteProcessInfo.auditToken.setter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v4 = result;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

uint64_t RemoteProcessInfo.bundleIdentifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t RemoteProcessInfo.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

void RemoteProcessInfo.init(auditToken:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *v18.val = a1;
  *&v18.val[2] = a2;
  *&v18.val[4] = a3;
  *&v18.val[6] = a4;
  v10 = audit_token_to_pid(&v18);
  *v18.val = a1;
  *&v18.val[2] = a2;
  *&v18.val[4] = a3;
  *&v18.val[6] = a4;
  v11 = audit_token_to_pidversion(&v18);
  *v18.val = a1;
  *&v18.val[2] = a2;
  *&v18.val[4] = a3;
  *&v18.val[6] = a4;
  v12 = SecTaskCreateWithAuditToken(0, &v18);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v12;
  v14 = SecTaskCopySigningIdentifier(v12, 0);
  if (!v14)
  {

LABEL_9:
    v17 = 0;
    v16 = 0;
    goto LABEL_10;
  }

  v15 = v14;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_9;
  }

  *v18.val = 0;
  *&v18.val[2] = 0;
  sub_1DF22ACB0();

  v17 = *v18.val;
  v16 = *&v18.val[2];
  if (!*&v18.val[2])
  {
    v17 = 0;
  }

LABEL_10:
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = v10;
  *(a5 + 36) = v11;
  *(a5 + 40) = v17;
  *(a5 + 48) = v16;
}

Swift::String_optional __swiftcall RemoteProcessInfo.valueString(forEntitlement:)(Swift::String forEntitlement)
{
  v2 = v1[1];
  *v12.val = *v1;
  *&v12.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(0, &v12);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = sub_1DF22ACA0();
  v6 = SecTaskCopyValueForEntitlement(v4, v5, 0);

  if (!v6)
  {

LABEL_7:
    v3 = 0;
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  type metadata accessor for CFString(0);
  swift_unknownObjectRetain();
  if (!swift_dynamicCastUnknownClass())
  {

    swift_unknownObjectRelease_n();
    goto LABEL_7;
  }

  v7 = sub_1DF22ACC0();
  v9 = v8;

  swift_unknownObjectRelease_n();
  v10 = v9;
  v3 = v7;
LABEL_9:
  result.value._object = v10;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::OpaquePointer_optional __swiftcall RemoteProcessInfo.valueStringArray(forEntitlement:)(Swift::String forEntitlement)
{
  v2 = v1[1];
  *v8.val = *v1;
  *&v8.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(0, &v8);
  if (!v3)
  {
    goto LABEL_11;
  }

  v5 = v3;
  v6 = sub_1DF22ACA0();
  v7 = SecTaskCopyValueForEntitlement(v5, v6, 0);

  if (!v7)
  {
    goto LABEL_9;
  }

  type metadata accessor for CFArray(0);
  if (!swift_dynamicCastUnknownClass())
  {

    swift_unknownObjectRelease();
LABEL_10:
    v3 = 0;
    goto LABEL_11;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
LABEL_9:

    goto LABEL_10;
  }

  *v8.val = 0;
  swift_unknownObjectRetain();
  sub_1DF22AE80();
  swift_unknownObjectRelease_n();

  v3 = *v8.val;
  if (!*v8.val)
  {
    goto LABEL_10;
  }

LABEL_11:
  result.value._rawValue = v3;
  result.is_nil = v4;
  return result;
}

Swift::Bool_optional __swiftcall RemoteProcessInfo.valueBool(forEntitlement:)(Swift::String forEntitlement)
{
  v2 = v1[1];
  *v10.val = *v1;
  *&v10.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(0, &v10);
  if (!v3)
  {
    return 2;
  }

  v4 = v3;
  v5 = sub_1DF22ACA0();
  v6 = SecTaskCopyValueForEntitlement(v4, v5, 0);

  if (!v6)
  {
    goto LABEL_9;
  }

  type metadata accessor for CFBoolean(0);
  if (!swift_dynamicCastUnknownClass())
  {

    swift_unknownObjectRelease();
    return 2;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
LABEL_9:

    return 2;
  }

  v8 = v7;
  LOBYTE(v10.val[0]) = 2;
  swift_unknownObjectRetain();
  MEMORY[0x1E12CFA50](v8, &v10);
  swift_unknownObjectRelease_n();

  result.value = v10.val[0];
  if (LOBYTE(v10.val[0]) == 2)
  {
    return 2;
  }

  return result;
}

unint64_t RemoteProcessInfo.description.getter()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  sub_1DF22B300();

  v3 = sub_1DF22B600();
  MEMORY[0x1E12CF820](v3);

  MEMORY[0x1E12CF820](0x726576646970202CLL, 0xEE00203A6E6F6973);
  v4 = sub_1DF22B600();
  MEMORY[0x1E12CF820](v4);

  MEMORY[0x1E12CF820](0xD000000000000014, 0x80000001DF23D840);
  if (v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 7104878;
  }

  if (!v1)
  {
    v1 = 0xE300000000000000;
  }

  MEMORY[0x1E12CF820](v5, v1);

  MEMORY[0x1E12CF820](41, 0xE100000000000000);
  return 0xD000000000000017;
}

uint64_t sub_1DF22A3E4(uint64_t a1, unsigned int a2)
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

uint64_t sub_1DF22A440(uint64_t result, unsigned int a2, unsigned int a3)
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