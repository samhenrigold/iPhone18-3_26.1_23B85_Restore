void sub_21C7AC7F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_21C6E8F4C(0, &qword_27CDEAF70, 0x277D499D0);
  v5 = sub_21CB85824();

  v6 = a3;
  v4(v5, a3);
}

void sub_21C7AC8A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v4);
  v6 = (v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (v62 - v8);
  v10 = *(type metadata accessor for PMAccount(0) + 24);
  sub_21C7AE7C8(a1 + v10, v9, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = v9;
LABEL_8:
    sub_21C719060(v11, type metadata accessor for PMAccount.Storage);
    return;
  }

  v12 = *v9;
  if (*(a2 + 32) == 2)
  {
    v13 = PMAccount.totpGenerator.getter();
    if (v13)
    {
      v14 = v13;

      return;
    }
  }

  sub_21C7AE7C8(a1 + v10, v6, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v11 = v6;
    goto LABEL_8;
  }

  v15 = *v6;
  v16 = [*v6 credentialTypes];

  if (v16)
  {
    v66 = v12;
    v64 = a2;
    v17 = *(a2 + 192);
    v20 = *(v17 + 56);
    v19 = v17 + 56;
    v18 = v20;
    v21 = 1 << *(*(a2 + 192) + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v18;
    v24 = (v21 + 63) >> 6;

    v25 = 0;
    while (v23)
    {
LABEL_19:
      v23 &= v23 - 1;

      v27 = sub_21CB85584();

      v28 = [v66 matchesServiceNameHintString_];

      if (v28)
      {
LABEL_42:

        return;
      }
    }

    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v26 >= v24)
      {
        break;
      }

      v23 = *(v19 + 8 * v26);
      ++v25;
      if (v23)
      {
        v25 = v26;
        goto LABEL_19;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF78, &unk_21CBA0DD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CBA0690;
    v30 = v66;
    v31 = [v66 highLevelDomain];
    if (v31)
    {
      v32 = v31;
      v33 = sub_21CB855C4();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    v36 = v64;
    *(inited + 32) = v33;
    *(inited + 40) = v35;
    v37 = [v30 additionalSites];
    v38 = sub_21CB85824();

    v39 = *(v38 + 16);
    if (v39)
    {
      v63 = inited;
      v65[0] = MEMORY[0x277D84F90];
      sub_21C7B0C0C(0, v39, 0);
      v40 = v65[0];
      v62[1] = v38;
      v41 = v38 + 40;
      do
      {

        v42 = sub_21CB85584();
        v43 = [v42 safari_highLevelDomainForPasswordManager];

        v44 = sub_21CB855C4();
        v46 = v45;

        v65[0] = v40;
        v48 = *(v40 + 16);
        v47 = *(v40 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_21C7B0C0C((v47 > 1), v48 + 1, 1);
          v40 = v65[0];
        }

        *(v40 + 16) = v48 + 1;
        v49 = v40 + 16 * v48;
        *(v49 + 32) = v44;
        *(v49 + 40) = v46;
        v41 += 16;
        --v39;
      }

      while (v39);

      inited = v63;
      v36 = v64;
    }

    else
    {

      v40 = MEMORY[0x277D84F90];
    }

    v50 = sub_21CA492C8(v40);

    v65[0] = inited;
    sub_21CAE8A88(v50);
    v64 = v65[0];
    v51 = *(v36 + 200);
    v52 = 1 << *(v51 + 32);
    v53 = -1;
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    v54 = v53 & *(v51 + 56);
    v55 = (v52 + 63) >> 6;

    v57 = 0;
    while (v54)
    {
      v58 = v57;
LABEL_40:
      v59 = (*(v51 + 48) + ((v58 << 10) | (16 * __clz(__rbit64(v54)))));
      v60 = v59[1];
      v54 &= v54 - 1;
      v65[0] = *v59;
      v65[1] = v60;
      MEMORY[0x28223BE20](v56);
      v62[-2] = v65;

      v61 = sub_21C8A1458(sub_21C7AE620, &v62[-4], v64);

      if (v61)
      {

        goto LABEL_42;
      }
    }

    while (1)
    {
      v58 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        break;
      }

      if (v58 >= v55)
      {

        return;
      }

      v54 = *(v51 + 56 + 8 * v58);
      ++v57;
      if (v54)
      {
        v57 = v58;
        goto LABEL_40;
      }
    }

LABEL_45:
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_21C7ACE64(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath(byte_21CBA0A40);
  swift_getKeyPath(byte_21CBA0A68);
  sub_21CB81DB4();

  if (v6 == 1)
  {
    swift_getKeyPath(byte_21CBA0A40);
    swift_getKeyPath(byte_21CBA0A68);
    v7 = 0;

    sub_21CB81DC4();
    if (*(v2 + 32) == 1)
    {
      swift_getKeyPath(aP_31, v7);
      swift_getKeyPath(a0_24);

      return sub_21CB81DC4();
    }

    else
    {
      return sub_21C7A8470(a1, a2);
    }
  }

  return result;
}

void sub_21C7ACF94(char a1, uint64_t a2)
{
  v4 = sub_21CB853D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB85404();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v20 = v10;
    sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
    v19 = sub_21CB85CF4();
    aBlock[4] = sub_21C7AE9C4;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C6ECBD4;
    aBlock[3] = &block_descriptor_124;
    v13 = _Block_copy(aBlock);

    sub_21CB853E4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21C6F17A4(&qword_27CDEAF48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
    sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0, MEMORY[0x277D83970]);
    sub_21CB85F14();
    v14 = v19;
    MEMORY[0x21CF15800](0, v12, v7, v13);
    _Block_release(v13);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v12, v20);
  }

  else
  {
    if (qword_27CDEA3E0 != -1)
    {
      swift_once();
    }

    v15 = sub_21CB81C84();
    __swift_project_value_buffer(v15, qword_27CE18550);
    v20 = sub_21CB81C64();
    v16 = sub_21CB85B14();
    if (os_log_type_enabled(v20, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21C6E5000, v20, v16, "caBLE transaction did not succeed. Leaving picker up.", v17, 2u);
      MEMORY[0x21CF16D90](v17, -1, -1);
    }

    v18 = v20;
  }
}

uint64_t sub_21C7AD35C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  if (qword_27CDEA3E0 != -1)
  {
    swift_once();
  }

  v5 = sub_21CB81C84();
  __swift_project_value_buffer(v5, qword_27CE18550);
  v6 = sub_21CB81C64();
  v7 = sub_21CB85B14();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21C6E5000, v6, v7, "Finished caBLE transaction. Dismissing picker.", v8, 2u);
    MEMORY[0x21CF16D90](v8, -1, -1);
  }

  v9 = *(a1 + 360);
  v10 = type metadata accessor for PMAccount(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);

  v9(v4);

  return sub_21C6EA794(v4, &unk_27CDEBE60, &unk_21CB9FF40);
}

uint64_t sub_21C7AD508(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath(byte_21CBA0810);
    swift_getKeyPath(byte_21CBA0838);

    sub_21CB81DC4();
    sub_21C7A6364();
  }

  return result;
}

uint64_t sub_21C7AD5B4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21C7ACE64(v2, v3);
  }

  return result;
}

uint64_t sub_21C7AD624(void *a1, uint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath(aP_31);
    swift_getKeyPath(a0_24);
    sub_21CB81DB4();

    if (v7)
    {
      if (v6 == *a1 && v7 == a1[1])
      {

LABEL_7:
        swift_getKeyPath(aP_31);
        swift_getKeyPath(a0_24);

        return sub_21CB81DC4();
      }

      v5 = sub_21CB86344();

      if (v5)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t sub_21C7AD764(uint64_t a1, uint64_t a2)
{
  v2 = sub_21CB853D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB85404();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
    v12 = sub_21CB85CF4();
    aBlock[4] = sub_21C7AE714;
    aBlock[5] = v11;
    v17 = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C6ECBD4;
    aBlock[3] = &block_descriptor_61;
    v16 = _Block_copy(aBlock);

    sub_21CB853E4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21C6F17A4(&qword_27CDEAF48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
    v15 = v6;
    sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0, MEMORY[0x277D83970]);
    sub_21CB85F14();
    v14 = v16;
    v13 = v17;
    MEMORY[0x21CF15800](0, v9, v5, v16);
    _Block_release(v14);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v15);
  }

  return result;
}

uint64_t sub_21C7ADA6C(uint64_t a1, uint64_t a2)
{
  v3 = sub_21CB807E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_21CB807B4();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21C7ADB60()
{

  memcpy(v20, (v0 + 32), sizeof(v20));
  sub_21C7ADFB8(v20);

  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_savedAccountForHistorySection, &unk_27CDEBE60, &unk_21CB9FF40);

  v1 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__selectedItem;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF18, &qword_21CBA0798);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_selectedAccount, &unk_27CDEBE60, &unk_21CB9FF40);
  v3 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__searchText;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__listedAccounts;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__accountsForPasskeyAutoFill, v6);
  v7(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__accountsWithPasswordsMatchingHintStrings, v6);
  v7(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__accounts, v6);
  v8 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__expectingNewAccount;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v11 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__addAccountSheetModel;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF28, &qword_21CBA07A8);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__deleteAccountAlertConfiguration;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF30, &unk_21CBA07B0);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__presentedDetailsAccountID;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF38, &qword_21CBA1CA0);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v10(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__showAddSiteAlert, v9);
  v10(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__showGeneratedPasswordsSheet, v9);

  v17 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__selectedHistoryItem;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF40, &qword_21CBA07C0);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  return v0;
}

uint64_t sub_21C7ADF58()
{
  sub_21C7ADB60();

  return swift_deallocClassInstance();
}

double sub_21C7AE034@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath(byte_21CBA0930);
  swift_getKeyPath(byte_21CBA0958);
  sub_21CB81DB4();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_21C7AE0BC(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  swift_getKeyPath(byte_21CBA0930);
  swift_getKeyPath(byte_21CBA0958);

  sub_21C79B044(v2, v3, v4);
  return sub_21CB81DC4();
}

double sub_21C7AE178@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath(aP_31);
  swift_getKeyPath(a0_24);
  sub_21CB81DB4();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_21C7AE1F8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(aP_31);
  swift_getKeyPath(a0_24);

  return sub_21CB81DC4();
}

uint64_t sub_21C7AE27C@<X0>(const char *a1@<X4>, const char *a3@<X3>, _BYTE *a4@<X8>, ...)
{
  swift_getKeyPath(a3);
  swift_getKeyPath(a1);
  sub_21CB81DB4();

  *a4 = v7;
  return result;
}

uint64_t sub_21C7AE2F8(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, ...)
{
  swift_getKeyPath(a5);
  swift_getKeyPath(a6);

  return sub_21CB81DC4();
}

uint64_t sub_21C7AE3B8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, ...)
{
  swift_getKeyPath(a5);
  swift_getKeyPath(a6);

  return sub_21CB81DC4();
}

uint64_t sub_21C7AE430@<X0>(const char *a1@<X3>, const char *a3@<X4>, void *a4@<X8>, ...)
{
  swift_getKeyPath(a1);
  swift_getKeyPath(a3);
  sub_21CB81DB4();

  *a4 = v7;
  return result;
}

uint64_t sub_21C7AE4AC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBA0810);
  swift_getKeyPath(byte_21CBA0838);

  sub_21CB81DC4();
  return sub_21C7A6364();
}

BOOL sub_21C7AE52C(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_21CB86344() & 1;
    }
  }

  return result;
}

void sub_21C7AE5A0(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_21C7AE5B4(a1, a2, a3);
  }
}

void sub_21C7AE5B4(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3 >= 2u)
    {
      return;
    }

LABEL_7:

    return;
  }

  if (a3 == 2)
  {
    goto LABEL_7;
  }

  if (a3 == 3)
  {
  }
}

uint64_t sub_21C7AE640(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7AE758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7AE7C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7AE858(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_21C7AE884(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21C7A9788(a1, v4, v5, v7, v6);
}

uint64_t sub_21C7AE944(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_21C7AEA7C()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_viewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_21C7AEB28(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_viewController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_21C7AEC88(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21C7AECE8(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_21C7AED80;
}

void sub_21C7AED80(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

char *_PMTOTPMigrationController.init(migrationURL:delegate:)(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v63 = a1;
  v65 = sub_21CB80DD4();
  v61 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
  v59 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v56 - v8;
  v10 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFB0, &unk_21CBA0C80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v56 - v14;
  v70 = type metadata accessor for PMOfflineMigrationPayload(0);
  v16 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v60 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_viewController;
  *&v2[OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_viewController] = 0;
  v18 = OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_delegate;
  swift_unknownObjectWeakInit();
  v19 = OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_migrationURL;
  v20 = sub_21CB80BE4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 16);
  v66 = v19;
  v23 = &v2[v19];
  v24 = v63;
  v22(v23, v63, v20);
  swift_beginAccess();
  v68 = v18;
  swift_unknownObjectWeakAssign();
  v25 = [objc_allocWithZone(type metadata accessor for PMPasswordManagerState(0)) init];
  v62 = OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_appState;
  *&v2[OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_appState] = v25;
  sub_21CA9042C(v15);
  if ((*(v16 + 48))(v15, 1, v70) == 1)
  {
    v26 = *(v21 + 8);
    v26(v24, v20);
    swift_unknownObjectRelease();
    sub_21C7B09AC(v15);
LABEL_30:

    v26(&v2[v66], v20);
    sub_21C7B0A14(&v2[v68]);
    type metadata accessor for _PMTOTPMigrationController(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v57 = v21;
  v58 = v20;
  v27 = v60;
  sub_21C7B0CD4(v15, v60, type metadata accessor for PMOfflineMigrationPayload);
  v28 = *v27;
  v29 = *(*v27 + 16);
  if (!v29)
  {
    v26 = *(v57 + 8);
    v20 = v58;
    v26(v63, v58);
    swift_unknownObjectRelease();
    sub_21C7B1ECC(v27, type metadata accessor for PMOfflineMigrationPayload);
    goto LABEL_30;
  }

  v56 = v2;
  v73[0] = MEMORY[0x277D84F90];
  sub_21C7B0C90(0, v29, 0);
  v30 = v73[0];
  v31 = v28 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
  v32 = (v61 + 8);
  v61 = v12;
  v62 = v32;
  v70 = *(v59 + 72);
  do
  {
    sub_21C7B1E64(v31, v9, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
    sub_21C7B1E64(v9, v12, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
    sub_21C7B1E64(v9, v6, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
    v33 = *(v6 + 10);
    if (v6[88] == 1)
    {
      if (v33 < 2)
      {
        goto LABEL_18;
      }
    }

    else if (v33 != 2)
    {
      goto LABEL_18;
    }

    if (v6[56] != 1)
    {
LABEL_18:
      sub_21C7B1ECC(v6, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
      v39 = 0;
      goto LABEL_19;
    }

    v34 = *(v6 + 6);
    v35 = v34 >= 2;
    if (v34 > 2)
    {
      if (v34 != 3)
      {
        goto LABEL_18;
      }

      v36 = 2;
    }

    else
    {
      v36 = 1;
      if (!v35)
      {
        v36 = 0;
      }
    }

    v68 = v36;
    v67 = sub_21CB80C64();
    v37 = v64;
    sub_21CB80D74();
    v66 = sub_21CB80D24();
    (*v62)(v37, v65);
    if (v6[72])
    {
      v38 = 6;
    }

    else if (*(v6 + 8) == 8)
    {
      v38 = 8;
    }

    else
    {
      v38 = 6;
    }

    v42 = objc_allocWithZone(MEMORY[0x277D49B78]);
    v43 = sub_21CB85584();
    v44 = sub_21CB85584();
    v45 = v42;
    v47 = v66;
    v46 = v67;
    v39 = [v45 initWithKeyData:v67 initialDate:v66 codeGenerationPeriod:30 numberOfDigits:v38 algorithm:v68 issuer:v43 accountName:v44 originalURL:0];

    sub_21C7B1ECC(v6, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
    if (v39)
    {
    }

    v12 = v61;
LABEL_19:
    sub_21C7B1ECC(v9, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
    *&v12[*(v72 + 20)] = v39;
    v73[0] = v30;
    v41 = *(v30 + 16);
    v40 = *(v30 + 24);
    if (v41 >= v40 >> 1)
    {
      sub_21C7B0C90((v40 > 1), v41 + 1, 1);
      v30 = v73[0];
    }

    *(v30 + 16) = v41 + 1;
    sub_21C7B0CD4(v12, v30 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v41, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
    v31 += v70;
    --v29;
  }

  while (v29);
  type metadata accessor for PMTOTPMigrationModel(0);
  swift_allocObject();
  v48 = sub_21CB52A38(v30);
  v49 = v56;
  *&v56[OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_totpMigrationModel] = v48;
  v50 = type metadata accessor for _PMTOTPMigrationController(0);
  v74.receiver = v49;
  v74.super_class = v50;
  v51 = objc_msgSendSuper2(&v74, sel_init);
  v52 = sub_21C7AF774();
  swift_unknownObjectRelease();
  (*(v57 + 8))(v63, v58);
  sub_21C7B1ECC(v60, type metadata accessor for PMOfflineMigrationPayload);
  v53 = OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_viewController;
  swift_beginAccess();
  v54 = *&v51[v53];
  *&v51[v53] = v52;

  return v51;
}

uint64_t sub_21C7AF774()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB070, &qword_21CBA0E10);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = v16 - v3;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for PMTOTPMigrationModel(0);
  sub_21C7B1E1C(&qword_27CDEB078, type metadata accessor for PMTOTPMigrationModel, &unk_21CBCE094);

  v8 = sub_21CB82674();
  v16[0] = sub_21C7B1DB0;
  v16[1] = v5;
  v16[2] = sub_21C7B1DB8;
  v16[3] = v6;
  v16[4] = sub_21C7B1DC0;
  v16[5] = v7;
  v16[6] = v8;
  v16[7] = v9;
  sub_21C7B1DC8();
  sub_21CB84064();

  v10 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_appState);
  type metadata accessor for PMPasswordManagerState(0);
  sub_21C7B1E1C(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
  v11 = sub_21CB81CE4();
  v12 = &v4[*(v2 + 44)];
  *v12 = v11;
  v12[1] = v10;
  v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB088, &qword_21CBA0E18));
  v14 = v10;
  return sub_21CB833B4();
}

void sub_21C7AF9E4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = type metadata accessor for PMAccount(0);
    sub_21C7B1E64(a1 + *(v8 + 24), v5, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_21C7B1ECC(v5, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v9 = *v5;
      swift_beginAccess();
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        [v10 totpMigrationController:v7 presentDetailsForSavedAccount:v9];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

void sub_21C7AFB4C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      [v5 totpMigrationController:v4 presentPickerForGenerator:a1];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_21C7AFBF8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      [v3 totpMigrationControllerFinishedImport_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_21C7AFC94(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_21CB858B4();
  v3[5] = sub_21CB858A4();
  v5 = sub_21CB85874();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_21C7AFD30, v5, v4);
}

uint64_t sub_21C7AFD30()
{
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_21C7AFDD4;
  v3 = v0[2];
  v2 = v0[3];

  return sub_21CB51C9C(v3, v2);
}

uint64_t sub_21C7AFDD4()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_21C7AFEF4, v3, v2);
}

uint64_t sub_21C7AFEF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21C7B00E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = sub_21CB858B4();
  v4[7] = sub_21CB858A4();
  v6 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C7B0184, v6, v5);
}

uint64_t sub_21C7B0184()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[8] = _Block_copy(v1);
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v0[9] = sub_21CB858A4();
  v9 = sub_21CB85874();
  v0[10] = v9;
  v0[11] = v8;

  return MEMORY[0x2822009F8](sub_21C7B0244, v9, v8);
}

uint64_t sub_21C7B0244()
{
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_21C7B02E8;
  v3 = v0[2];
  v2 = v0[3];

  return sub_21CB51C9C(v3, v2);
}

uint64_t sub_21C7B02E8()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_21C7B0408, v3, v2);
}

uint64_t sub_21C7B0408()
{
  v1 = v0[8];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v1[2](v1);
  _Block_release(v1);
  v5 = v0[1];

  return v5();
}

uint64_t sub_21C7B0538()
{
  swift_getKeyPath(asc_21CBA0C90);
  swift_getKeyPath(byte_21CBA0CB8);
  sub_21CB81DB4();

  v0 = *(v2 + 16);

  return v0;
}

uint64_t sub_21C7B0628()
{
  v0 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v1 = *(v0 - 8);
  *&v2 = MEMORY[0x28223BE20](v0).n128_u64[0];
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(asc_21CBA0C90, v2);
  swift_getKeyPath(byte_21CBA0CB8);
  sub_21CB81DB4();

  v5 = v16;
  v16 = MEMORY[0x277D84F90];
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v0 + 20);
    v8 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v9 = *(v1 + 72);
    v10 = MEMORY[0x277D84F90];
    do
    {
      sub_21C7B1E64(v8, v4, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      v11 = *&v4[v7];
      v12 = v11;
      v13 = sub_21C7B1ECC(v4, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      if (v11)
      {
        MEMORY[0x21CF15300](v13);
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21CB85834();
        }

        sub_21CB85854();
        v10 = v16;
      }

      v8 += v9;
      --v6;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v10;
}

id _PMTOTPMigrationController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _PMTOTPMigrationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _PMTOTPMigrationController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21C7B09AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFB0, &unk_21CBA0C80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for _PMTOTPMigrationController(uint64_t a1)
{
  result = qword_27CDEAFD0;
  if (!qword_27CDEAFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C7B0A88@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(asc_21CBA0C90);
  swift_getKeyPath(byte_21CBA0CB8);
  sub_21CB81DB4();

  *a2 = v4;
  return result;
}

uint64_t sub_21C7B0B08(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(asc_21CBA0C90);
  swift_getKeyPath(byte_21CBA0CB8);

  return sub_21CB81DC4();
}

void *sub_21C7B0B84(void *a1, int64_t a2, char a3)
{
  result = sub_21C6EA08C(a1, a2, a3, *v3, &qword_27CDEB040, &qword_21CBA0DE0, type metadata accessor for PMGeneratedPassword);
  *v3 = result;
  return result;
}

void *sub_21C7B0BC8(void *a1, int64_t a2, char a3)
{
  result = sub_21C6EA08C(a1, a2, a3, *v3, &unk_27CDF7720, &qword_21CBA0D80, MEMORY[0x277D49978]);
  *v3 = result;
  return result;
}

char *sub_21C7B0C0C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21C7B1544(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21C7B0C2C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21C7B1650(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21C7B0C4C(void *a1, int64_t a2, char a3)
{
  result = sub_21C6EA08C(a1, a2, a3, *v3, &qword_27CDEC2B0, &unk_21CBA0D70, type metadata accessor for PMAccount);
  *v3 = result;
  return result;
}

void *sub_21C7B0C90(void *a1, int64_t a2, char a3)
{
  result = sub_21C6EA08C(a1, a2, a3, *v3, &qword_27CDEB090, &unk_21CBA0E20, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
  *v3 = result;
  return result;
}

uint64_t sub_21C7B0CD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7B0D44(uint64_t a1)
{
  result = sub_21CB80BE4();
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

uint64_t dispatch thunk of _PMTOTPMigrationController.add(generator:to:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xB8);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21C702EFC;

  return v9(a1, a2);
}

char *sub_21C7B10A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21C7B175C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21C7B10C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21C7B1884(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21C7B10E0(void *a1, int64_t a2, char a3)
{
  result = sub_21C6EA08C(a1, a2, a3, *v3, &qword_27CDEB038, &qword_21CBA0DC8, MEMORY[0x277D49948]);
  *v3 = result;
  return result;
}

void *sub_21C7B1124(void *a1, int64_t a2, char a3)
{
  result = sub_21C6EA08C(a1, a2, a3, *v3, &qword_27CDEB048, &qword_21CBA0DE8, type metadata accessor for PMEditableWebsite);
  *v3 = result;
  return result;
}

char *sub_21C7B1168(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21C7B19B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21C7B1188(void *a1, int64_t a2, char a3)
{
  result = sub_21C6EA08C(a1, a2, a3, *v3, &qword_27CDEAFF8, &qword_21CBA0D68, type metadata accessor for PMSharingGroup);
  *v3 = result;
  return result;
}

char *sub_21C7B11CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21C7B1F2C(a1, a2, a3, *v3, &qword_27CDEB028, &unk_21CBB3650, &type metadata for PMUserHandle);
  *v3 = result;
  return result;
}

void *sub_21C7B1204(void *a1, int64_t a2, char a3)
{
  result = sub_21C6EA08C(a1, a2, a3, *v3, &qword_27CDEB008, &qword_21CBC0C30, type metadata accessor for PMWiFiNetwork);
  *v3 = result;
  return result;
}

void *sub_21C7B1248(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21C7B2370(a1, a2, a3, *v3, &qword_27CDEAFE8, &qword_21CBA0D58, &qword_27CDEAFF0, &qword_21CBA0D60);
  *v3 = result;
  return result;
}

char *sub_21C7B1288(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21C7B1440(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21C7B12A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21C7B2370(a1, a2, a3, *v3, &qword_27CDEB050, &unk_21CBA0DF0, &qword_27CDEB058, &unk_21CBB50B0);
  *v3 = result;
  return result;
}

void *sub_21C7B12E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21C7B2370(a1, a2, a3, *v3, &qword_27CDEB060, &unk_21CBA0E00, &qword_27CDEB068, &unk_21CBB9C10);
  *v3 = result;
  return result;
}

char *sub_21C7B1328(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21C7B1F2C(a1, a2, a3, *v3, &qword_27CDF7730, &unk_21CBA0E60, &type metadata for PMWiFiNetworkIdentifier);
  *v3 = result;
  return result;
}

char *sub_21C7B1360(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21C7B2038(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21C7B1380(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21C7B2370(a1, a2, a3, *v3, &qword_27CDEB098, &unk_21CBC1D80, &qword_27CDEB0A0, &qword_21CBA0E40);
  *v3 = result;
  return result;
}

void *sub_21C7B13C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21C7B213C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21C7B13E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21C7B2270(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21C7B1400(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21C7B2370(a1, a2, a3, *v3, &qword_27CDEB0B0, &unk_21CBA0E50, &unk_27CDED250, &qword_21CBA64C0);
  *v3 = result;
  return result;
}

char *sub_21C7B1440(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF76F0, &qword_21CBA0DA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_21C7B1544(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_21C7B1650(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB000, &unk_21CBB0000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21C7B175C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB018, &qword_21CBA0D90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21C7B1884(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF78, &unk_21CBA0DD0);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED260, &qword_21CBA1C60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21C7B19B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFE0, &qword_21CBA0D50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_21C7B1B18()
{
  result = qword_27CDEB030;
  if (!qword_27CDEB030)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDEB030);
  }

  return result;
}

uint64_t sub_21C7B1B64()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21C6F35D0;

  return sub_21C7B00E4(v2, v3, v5, v4);
}

uint64_t sub_21C7B1C24()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21C6F35D0;

  return sub_21C963D24(v2, v3, v4);
}

uint64_t sub_21C7B1CE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C6F35D0;

  return sub_21C963E0C(a1, v4, v5, v6);
}

unint64_t sub_21C7B1DC8()
{
  result = qword_27CDEB080;
  if (!qword_27CDEB080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB080);
  }

  return result;
}

uint64_t sub_21C7B1E1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C7B1E64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7B1ECC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_21C7B1F2C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[16 * v11])
    {
      memmove(v16, v17, 16 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_21C7B2038(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB0B8, &qword_21CBAA1F0);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_21C7B213C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC290, &unk_21CBA3E10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3320, &unk_21CBA0E30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21C7B2270(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB0A8, &qword_21CBA0E48);
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
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

void *sub_21C7B2370(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_21C7B2558()
{

  sub_21CB81E94();

  return v1;
}

uint64_t sub_21C7B25A4(char a1)
{

  sub_21CB81EA4();
}

uint64_t (*sub_21C7B25F4(void *a1))()
{
  *a1 = *(v1 + 24);

  sub_21CB81E94();
  return sub_21C7B2650;
}

uint64_t sub_21C7B2654()
{

  sub_21CB81EB4();

  return v1;
}

uint64_t sub_21C7B26A4@<X0>(_BYTE *a2@<X8>)
{

  sub_21CB81E94();

  *a2 = v4;
  return result;
}

uint64_t sub_21C7B26FC(char *a1, uint64_t a2)
{

  sub_21CB81EA4();
}

uint64_t sub_21C7B2754(char *a1)
{

  sub_21CB81EA4();
}

uint64_t (*sub_21C7B27A8(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + 32);

  sub_21CB81E94();
  return sub_21C7B2804;
}

uint64_t sub_21C7B2804(uint64_t *a1)
{
  *(a1 + 9) = *(a1 + 8);
  sub_21CB81EA4();
}

uint64_t sub_21C7B2850()
{

  sub_21CB81EB4();
}

uint64_t sub_21C7B28A0@<X0>(_BYTE *a2@<X8>)
{

  sub_21CB81E94();

  *a2 = v4;
  return result;
}

uint64_t sub_21C7B28F8(char *a1, uint64_t a2)
{

  sub_21CB81EA4();
}

uint64_t sub_21C7B2950(char a1)
{

  sub_21CB81EA4();
}

uint64_t (*sub_21C7B29A0(void *a1))()
{
  *a1 = *(v1 + 40);

  sub_21CB81E94();
  return sub_21C7B51FC;
}

uint64_t sub_21C7B29FC()
{

  sub_21CB81EB4();

  return v1;
}

uint64_t sub_21C7B2A4C@<X0>(_BYTE *a2@<X8>)
{

  sub_21CB81E94();

  *a2 = v4;
  return result;
}

uint64_t sub_21C7B2AA4(char *a1, uint64_t a2)
{

  sub_21CB81EA4();
}

uint64_t sub_21C7B2AFC()
{

  sub_21CB81E94();

  return v1;
}

uint64_t sub_21C7B2B48(char a1)
{

  sub_21CB81EA4();
}

uint64_t (*sub_21C7B2B98(void *a1))()
{
  *a1 = *(v1 + 48);

  sub_21CB81E94();
  return sub_21C7B51FC;
}

uint64_t sub_21C7B2BF4()
{

  sub_21CB81EB4();

  return v1;
}

uint64_t (*sub_21C7B2C94(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath(aP_33);
  *(v3 + 40) = swift_getKeyPath(a0_26);
  *(v3 + 48) = sub_21CB81DA4();
  return sub_21C7B2D38;
}

uint64_t (*sub_21C7B2D54(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC58, &qword_21CBA0EC0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isShowingPasswordOptionsSheet;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  sub_21CB81D84();
  swift_endAccess();
  return sub_21C7B2EC4;
}

uint64_t (*sub_21C7B2F18(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath(asc_21CBA0EC8);
  *(v3 + 40) = swift_getKeyPath(byte_21CBA0EF0);
  *(v3 + 48) = sub_21CB81DA4();
  return sub_21C7B5200;
}

uint64_t (*sub_21C7B2FD4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC58, &qword_21CBA0EC0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isShowingFetchWebsiteNameDebuggerSheet;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  sub_21CB81D84();
  swift_endAccess();
  return sub_21C7B5204;
}

uint64_t (*sub_21C7B3194(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath(byte_21CBA0F10);
  *(v3 + 40) = swift_getKeyPath(byte_21CBA0F38);
  *(v3 + 48) = sub_21CB81DA4();
  return sub_21C7B5200;
}

uint64_t (*sub_21C7B3250(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC58, &qword_21CBA0EC0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isShowingAcceptICloudTermsAndConditionsAlert;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  sub_21CB81D84();
  swift_endAccess();
  return sub_21C7B5204;
}

uint64_t (*sub_21C7B3410(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath(byte_21CBA0F58);
  *(v3 + 40) = swift_getKeyPath(aX_21);
  *(v3 + 48) = sub_21CB81DA4();
  return sub_21C7B5200;
}

uint64_t (*sub_21C7B34CC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC58, &qword_21CBA0EC0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__hideDebugMenuUntilRelaunch;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  sub_21CB81D84();
  swift_endAccess();
  return sub_21C7B5204;
}

uint64_t sub_21C7B363C()
{
  v1 = v0;
  swift_getKeyPath(byte_21CBA1090);
  swift_getKeyPath(byte_21CBA10B8);
  sub_21CB81DB4();

  v2 = *(v0 + 16);
  if (BYTE8(v10[0]))
  {
    v3 = qword_27CDEA4C0;

    if (v3 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C704000(v2, *&v10[0]);

    swift_getKeyPath(byte_21CBA10D8);
    swift_getKeyPath(byte_21CBA1100);
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_21CB81DC4();
    v4 = *(v1 + 16);

    sub_21CB86544();
    v5 = sub_21C704000(v4, 0);

    v6 = *(v5 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider + 24);
    v7 = *(v5 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider + 32);
    __swift_project_boxed_opaque_existential_0((v5 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider), v6);
    (*(v7 + 40))(v6, v7);
  }

  else
  {
    v9 = qword_27CDEA4C0;

    if (v9 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C704000(v2, *&v10[0]);

    sub_21C7047E0(*&v10[0], v10);
    swift_getKeyPath(byte_21CBA10D8);
    swift_getKeyPath(byte_21CBA1100);
    return sub_21CB81DC4();
  }
}

uint64_t sub_21C7B38BC()
{
  swift_getKeyPath(byte_21CBA1090);
  swift_getKeyPath(byte_21CBA10B8);
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C7B3984(char a1, const char *a2, const char *a3)
{
  swift_getKeyPath(a2);
  swift_getKeyPath(a3);

  return sub_21CB81DC4();
}

uint64_t (*sub_21C7B39F0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath(asc_21CBA0FA0);
  *(v3 + 40) = swift_getKeyPath(asc_21CBA0FC8);
  *(v3 + 48) = sub_21CB81DA4();
  return sub_21C7B5200;
}

void sub_21C7B3A94(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_21C7B3AFC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  sub_21CB81D84();
  return swift_endAccess();
}

uint64_t sub_21C7B3B70(_BYTE *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC58, &qword_21CBA0EC0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  v14 = *(v7 + 16);
  (v14)(&v16 - v12, a1, v6, v11);
  v14(v9, v13, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  sub_21CB81D94();
  swift_endAccess();
  return (*(v7 + 8))(v13, v6);
}

uint64_t sub_21C7B3D08(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  sub_21CB81D84();
  return swift_endAccess();
}

uint64_t sub_21C7B3D84(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC58, &qword_21CBA0EC0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v8 - v6, a1, v3, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  sub_21CB81D94();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*sub_21C7B3EBC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC58, &qword_21CBA0EC0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__alwaysShowSharedGroupOnboarding;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  sub_21CB81D84();
  swift_endAccess();
  return sub_21C7B5204;
}

void sub_21C7B402C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_21CB81D94();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_21CB81D94();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t (*sub_21C7B41C4(void *a1))()
{
  *a1 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isFuzzySearchEnabled);

  sub_21CB81E94();
  return sub_21C7B51FC;
}

uint64_t (*sub_21C7B4264(void *a1))()
{
  *a1 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isPromotePasskeyUpgradesEnabled);

  sub_21CB81E94();
  return sub_21C7B51FC;
}

uint64_t sub_21C7B42E0@<X0>(_BYTE *a3@<X8>)
{

  sub_21CB81E94();

  *a3 = v5;
  return result;
}

uint64_t sub_21C7B4348(char *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{

  sub_21CB81EA4();
}

uint64_t sub_21C7B43B0(void *a1)
{

  sub_21CB81E94();

  return v2;
}

uint64_t sub_21C7B440C(char a1, void *a2)
{

  sub_21CB81EA4();
}

uint64_t (*sub_21C7B4460(void *a1))()
{
  *a1 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isPasswordsAppiPadNavigationViewEnabled);

  sub_21CB81E94();
  return sub_21C7B51FC;
}

uint64_t sub_21C7B44C4(uint64_t *a1)
{
  *(a1 + 9) = *(a1 + 8);
  sub_21CB81EA4();
}

uint64_t sub_21C7B451C(void *a1)
{

  sub_21CB81EB4();

  return v2;
}

char *PMDebugSettingsManager.deinit()
{

  v1 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isShowingPasswordOptionsSheet;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isShowingFetchWebsiteNameDebuggerSheet, v2);
  v3(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isShowingAcceptICloudTermsAndConditionsAlert, v2);
  v3(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__hideDebugMenuUntilRelaunch, v2);
  v4 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__tipOverride;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB108, &qword_21CBA0FE8);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__alwaysShowSharedGroupOnboarding, v2);

  return v0;
}

uint64_t PMDebugSettingsManager.__deallocating_deinit()
{
  PMDebugSettingsManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21C7B50EC@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath(byte_21CBA1090);
  swift_getKeyPath(byte_21CBA10B8);
  sub_21CB81DB4();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_21C7B5174(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBA1090);
  swift_getKeyPath(byte_21CBA10B8);

  sub_21CB81DC4();
  return sub_21C7B363C();
}

uint64_t sub_21C7B5208(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_21C7A230C(v3, a1);

  if (v4)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(asc_21CBA11E0);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C7B72F8();
    sub_21CB810C4();
  }
}

uint64_t sub_21C7B5320(uint64_t a1)
{
  if (*(v1 + 16) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21CBA12C0);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C7B72F8();
    sub_21CB810C4();
  }
}

uint64_t sub_21C7B5424()
{
  v1 = *(v0 + 56);
  v2 = qword_27CDEA4C0;

  if (v2 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v1, v6);

  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21C7B728C;
  *(v4 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF90, &qword_21CBA77E0);
  sub_21C7B7294();
  sub_21CB81E04();

  swift_getKeyPath(asc_21CBA11E0);
  sub_21C7B72F8();
  sub_21CB810D4();

  swift_getKeyPath(asc_21CBA11E0);
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  swift_getKeyPath(asc_21CBA11E0);
  sub_21CB810E4();
}

uint64_t sub_21C7B5660()
{
  swift_getKeyPath(byte_21CBA12C0);
  sub_21C7B72F8();
  sub_21CB810D4();
}

uint64_t sub_21C7B56D4()
{
  swift_getKeyPath(asc_21CBA1208);
  sub_21C7B72F8();
  sub_21CB810D4();

  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_21C7B5754@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(asc_21CBA1208);
  sub_21C7B72F8();
  sub_21CB810D4();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_21C7B57D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 24) == a1 && v5 == a2;
      if (v6 || (sub_21CB86344() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath(asc_21CBA1208);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C7B72F8();
    sub_21CB810C4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_21C7B5910()
{
  swift_getKeyPath(byte_21CBA1280);
  sub_21C7B72F8();
  sub_21CB810D4();
}

uint64_t sub_21C7B5984(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = a2;
}

uint64_t sub_21C7B59C0()
{
  swift_getKeyPath(asc_21CBA11E0);
  sub_21C7B72F8();
  sub_21CB810D4();

  swift_beginAccess();
}

uint64_t sub_21C7B5A48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(asc_21CBA11E0);
  sub_21C7B72F8();
  sub_21CB810D4();

  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_21C7B5AD8(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 32);
  if (v4 && (*(v1 + 24) == v3 ? (v5 = v4 == v2) : (v5 = 0), v5 || (sub_21CB86344() & 1) != 0))
  {
    *(v1 + 24) = v3;
    *(v1 + 32) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath(asc_21CBA1208);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C7B72F8();

    sub_21CB810C4();
  }
}

id sub_21C7B5C2C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = &v44 - v4;
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  v12 = sub_21CB80BE4();
  v13 = *(v12 - 8);
  *&v14 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a1;
  result = [a1 exportableURL];
  if (result)
  {
    v59 = v13;
    v56 = v1;
    v18 = result;
    sub_21CB80B94();

    v54 = sub_21CB5E3D8();
    v66 = 1;
    v55 = [objc_opt_self() defaultContext];
    v58 = v12;
    sub_21CB81014();
    sub_21CB81014();
    v57 = v16;
    v19 = sub_21CB80FF4();
    v52 = v20;
    v53 = v19;
    v21 = *(v6 + 8);
    v21(v8, v5);
    v21(v11, v5);
    sub_21CB81014();
    sub_21CB81014();
    v22 = sub_21CB80FF4();
    v50 = v23;
    v51 = v22;
    v21(v8, v5);
    v21(v11, v5);
    sub_21CB81014();
    v24 = sub_21CB81004();
    v48 = v25;
    v49 = v24;
    v21(v11, v5);
    sub_21CB81014();
    v26 = sub_21CB81004();
    v46 = v27;
    v47 = v26;
    v21(v11, v5);
    sub_21CB81014();
    v28 = sub_21CB81004();
    v44 = v29;
    v45 = v28;
    v21(v11, v5);
    sub_21CB81014();
    v30 = sub_21CB81004();
    v32 = v31;
    v21(v11, v5);
    sub_21CB81014();
    v33 = sub_21CB81004();
    v35 = v34;
    v21(v11, v5);
    LOBYTE(v109[0]) = 2;
    *(v109 + 1) = *v68;
    HIDWORD(v109[0]) = *&v68[3];
    v109[2] = 0;
    v109[1] = 0;
    v109[3] = v53;
    v109[4] = v52;
    v109[5] = v51;
    v109[6] = v50;
    v109[7] = v49;
    v109[8] = v48;
    v109[9] = 0;
    v109[10] = 0xE000000000000000;
    v109[11] = v47;
    v109[12] = v46;
    v109[13] = v45;
    v109[14] = v44;
    v109[15] = v30;
    v109[16] = v32;
    v109[17] = v33;
    v109[18] = v35;
    v109[19] = 7;
    v109[20] = v54;
    v109[21] = MEMORY[0x277D84FA0];
    v113 = 0;
    v111 = 0u;
    v112 = 0u;
    v110 = 0u;
    *v114 = *v67;
    *&v114[3] = *&v67[3];
    v115 = 0u;
    v116 = 0u;
    v117 = 0;
    v118 = v66;
    v119 = v64;
    v120 = v65;
    v122 = 0;
    v121 = 0;
    v123 = 0;
    v124 = 1;
    *v125 = *v63;
    *&v125[3] = *&v63[3];
    v126 = v55;
    v69 = 2;
    *&v70[3] = *&v68[3];
    *v70 = *v68;
    v71 = 0;
    v72 = 0;
    v73 = v53;
    v74 = v52;
    v75 = v51;
    v76 = v50;
    v77 = v49;
    v78 = v48;
    v79 = 0;
    v80 = 0xE000000000000000;
    v81 = v47;
    v82 = v46;
    v83 = v45;
    v84 = v44;
    v85 = v30;
    v86 = v32;
    v87 = v33;
    v88 = v35;
    v89 = 7;
    v90 = v54;
    v91 = MEMORY[0x277D84FA0];
    v95 = 0;
    v94 = 0u;
    v93 = 0u;
    v92 = 0u;
    *v96 = *v67;
    *&v96[3] = *&v67[3];
    v97 = 0u;
    v98 = 0u;
    v99 = 0;
    v100 = v66;
    v101 = v64;
    v102 = v65;
    v104 = 0;
    v103 = 0;
    v105 = 0;
    v106 = 1;
    *v107 = *v63;
    *&v107[3] = *&v63[3];
    v108 = v55;
    sub_21C7AE6B0(v109, v62);
    sub_21C7ADFB8(&v69);
    v36 = swift_allocObject();
    v37 = v56;
    swift_weakInit();
    v38 = swift_allocObject();
    v39 = v61;
    *(v38 + 16) = v36;
    *(v38 + 24) = v39;
    v40 = type metadata accessor for PMAccount(0);
    v41 = v60;
    (*(*(v40 - 8) + 56))(v60, 1, 1, v40);
    type metadata accessor for PMAccountPickerModel(0);
    swift_allocObject();
    v42 = v39;
    sub_21C7A4DA0(v109, 0, sub_21C7B73E8, v38, nullsub_1, 0, v41, nullsub_1, 0);
    KeyPath = swift_getKeyPath(byte_21CBA1280);
    MEMORY[0x28223BE20](KeyPath);
    v62[0] = v37;
    sub_21C7B72F8();
    sub_21CB810C4();

    return (*(v59 + 8))(v57, v58);
  }

  return result;
}

uint64_t sub_21C7B647C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26[-v6];
  v8 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v26[-v12];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    sub_21C725C54(a1, v13);
    v16 = type metadata accessor for PMAccount(0);
    if ((*(*(v16 - 8) + 48))(v13, 1, v16) == 1)
    {
      sub_21C7B7380(v13);
    }

    else
    {
      sub_21C7B7408(&v13[*(v16 + 24)], v10);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v18 = *v10;
        sub_21C7190C0(v13, type metadata accessor for PMAccount);
        v19 = sub_21CB858E4();
        (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
        sub_21CB858B4();

        v20 = a3;
        v21 = v18;
        v22 = sub_21CB858A4();
        v23 = swift_allocObject();
        v24 = MEMORY[0x277D85700];
        v23[2] = v22;
        v23[3] = v24;
        v23[4] = v15;
        v23[5] = v20;
        v23[6] = v21;
        sub_21C98B308(0, 0, v7, &unk_21CBA12B8, v23);

        KeyPath = swift_getKeyPath(byte_21CBA1280);
        MEMORY[0x28223BE20](KeyPath);
        *&v26[-16] = v15;
        *&v26[-8] = 0;
        v27 = v15;
        sub_21C7B72F8();
        goto LABEL_8;
      }

      sub_21C7190C0(v10, type metadata accessor for PMAccount.Storage);
      sub_21C7190C0(v13, type metadata accessor for PMAccount);
    }

    v17 = swift_getKeyPath(byte_21CBA1280);
    MEMORY[0x28223BE20](v17);
    *&v26[-16] = v15;
    *&v26[-8] = 0;
    v27 = v15;
    sub_21C7B72F8();
LABEL_8:
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C7B6870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  sub_21CB858B4();
  v6[6] = sub_21CB858A4();
  v8 = sub_21CB85874();
  v6[7] = v8;
  v6[8] = v7;

  return MEMORY[0x2822009F8](sub_21C7B690C, v8, v7);
}

uint64_t sub_21C7B690C()
{
  v1 = v0[3];
  swift_getKeyPath(byte_21CBA12C0);
  v0[2] = v1;
  sub_21C7B72F8();
  sub_21CB810D4();

  v0[9] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_21C7B6A00;
  v4 = v0[4];
  v3 = v0[5];

  return sub_21CB51C9C(v4, v3);
}

uint64_t sub_21C7B6A00()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_21C7B6B44, v3, v2);
}

uint64_t sub_21C7B6B44()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_21C7B6BA4()
{
  v1 = swift_allocObject();
  swift_weakInit();
  sub_21CB858B4();

  v2 = sub_21CB858A4();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D85700];
  v3[2] = v2;
  v3[3] = v4;
  v3[4] = v1;

  v5 = swift_allocObject();
  swift_weakInit();

  v6 = sub_21CB858A4();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v4;
  v7[4] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);

  return sub_21CB84F64();
}

uint64_t sub_21C7B6D08@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_getKeyPath(asc_21CBA1208);
    sub_21C7B72F8();
    sub_21CB810D4();

    v5 = *(v4 + 32);
    v6 = *(v4 + 56);
    v7 = qword_27CDEA4C0;

    if (v7 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7072A8(v6, v4);

    swift_getKeyPath(byte_21CBA1238);
    swift_getKeyPath(byte_21CBA1260);
    sub_21CB81DB4();

    if (v5)
    {
      MEMORY[0x28223BE20](v8);

      sub_21C968D04(sub_21C7AE738, v4, a2);

      return swift_bridgeObjectRelease_n();
    }

    else
    {

      v11 = type metadata accessor for PMAccount(0);
      (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
    }
  }

  else
  {
    v10 = type metadata accessor for PMAccount(0);
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }
}

uint64_t sub_21C7B6F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v12 - v6);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21C725C54(a1, v7);
    v9 = type metadata accessor for PMAccount(0);
    if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
    {
      sub_21C7B7380(v7);
      v10 = 0;
      v11 = 0;
    }

    else
    {
      v10 = *v7;
      v11 = v7[1];

      sub_21C7190C0(v7, type metadata accessor for PMAccount);
    }

    sub_21C7B57D0(v10, v11);
  }

  return result;
}

uint64_t sub_21C7B70D4(void *a1, uint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_getKeyPath(asc_21CBA1208);
    sub_21C7B72F8();
    sub_21CB810D4();

    v7 = *(v6 + 32);
    if (v7)
    {
      v8 = *(v6 + 24) == *a1 && v7 == a1[1];
      if (v8 || (sub_21CB86344() & 1) != 0)
      {
        v10 = *a2;
        v9 = a2[1];

        sub_21C7B57D0(v10, v9);
      }
    }
  }

  return result;
}

uint64_t sub_21C7B71C0()
{

  v1 = OBJC_IVAR____TtC17PasswordManagerUI23PMAppTOTPMigrationModel___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_21C7B7294()
{
  result = qword_27CDEAF98;
  if (!qword_27CDEAF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAF90, &qword_21CBA77E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEAF98);
  }

  return result;
}

unint64_t sub_21C7B72F8()
{
  result = qword_27CDEB150;
  if (!qword_27CDEB150)
  {
    type metadata accessor for PMAppTOTPMigrationModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB150);
  }

  return result;
}

uint64_t sub_21C7B7380(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C7B7408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount.Storage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7B746C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C702EFC;

  return sub_21C7B6870(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21C7B7534()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
}

uint64_t sub_21C7B7570()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;
}

uint64_t sub_21C7B75B0()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t sub_21C7B7660@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(aH_49);
  sub_21C7B8934(&qword_27CDEB150, type metadata accessor for PMAppTOTPMigrationModel, &unk_21CBA11B8);
  sub_21CB810D4();

  *a2 = *(v3 + 16);
}

uint64_t sub_21C7B7738@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(asc_21CBA13D8);
  sub_21C7B8934(&qword_27CDEB150, type metadata accessor for PMAppTOTPMigrationModel, &unk_21CBA11B8);
  sub_21CB810D4();

  *a2 = *(v3 + 40);
}

uint64_t sub_21C7B77E4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(asc_21CBA13D8);
  sub_21C7B8934(&qword_27CDEB150, type metadata accessor for PMAppTOTPMigrationModel, &unk_21CBA11B8);
  sub_21CB810C4();
}

uint64_t sub_21C7B78B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB1E8, &qword_21CBA13A0);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = v35 - v4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB158, &unk_21CBA12F0);
  v37 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v36 = v35 - v5;
  v6 = type metadata accessor for PMAppTOTPMigrationView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v35 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v35 - v14;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB188, &unk_21CBA1370);
  v40 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v43 = v35 - v16;
  sub_21CB85084();
  v17 = v50;
  swift_getKeyPath(aH_49);
  v50 = v17;
  sub_21C7B8934(&qword_27CDEB150, type metadata accessor for PMAppTOTPMigrationModel, &unk_21CBA11B8);
  sub_21CB810D4();

  sub_21C7B88CC(a1, v15, type metadata accessor for PMAppTOTPMigrationView);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  v35[3] = v19;
  sub_21C7B86C0(v15, v19 + v18);
  sub_21C7B88CC(a1, v12, type metadata accessor for PMAppTOTPMigrationView);
  v20 = swift_allocObject();
  v35[2] = v20;
  sub_21C7B86C0(v12, v20 + v18);
  v35[4] = a1;
  sub_21C7B88CC(a1, v9, type metadata accessor for PMAppTOTPMigrationView);
  v21 = swift_allocObject();
  sub_21C7B86C0(v9, v21 + v18);
  type metadata accessor for PMTOTPMigrationModel(0);
  sub_21C7B8934(&qword_27CDEB078, type metadata accessor for PMTOTPMigrationModel, &unk_21CBCE094);
  v22 = sub_21CB82674();
  v35[1] = v23;
  v50 = sub_21C7B8724;
  v51 = v19;
  v52 = sub_21C7B8794;
  v53 = v20;
  v54 = sub_21C7B8804;
  v55 = v21;
  v56 = v22;
  v57 = v23;
  v24 = v36;
  v25 = v42;
  sub_21CB85094();
  swift_getKeyPath(asc_21CBA13D8);
  sub_21CB850B4();

  (*(v37 + 8))(v24, v25);
  v44 = v47;
  v45 = v48;
  v46 = v49;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB190, &qword_21CBA1380);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB198, &qword_21CBA1388);
  v28 = sub_21C7B1DC8();
  v29 = sub_21C6EADEC(&qword_27CDEB1A0, &qword_27CDEB190, &qword_21CBA1380, &unk_21CBBE7F0);
  v30 = sub_21C71FA88();
  sub_21CB847C4();

  sub_21CB85084();
  v31 = v39;
  sub_21C7B6BA4();

  type metadata accessor for PMAccount(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBFD0, &unk_21CBA39B0);
  v50 = &type metadata for PMTOTPMigrationView;
  v51 = v26;
  v52 = v27;
  v53 = v28;
  v54 = v29;
  v55 = v30;
  swift_getOpaqueTypeConformance2();
  sub_21C7B8934(&qword_27CDEB1C8, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
  sub_21C7B85D8();
  v32 = v38;
  v33 = v43;
  sub_21CB84574();
  sub_21C7B8864(v31);
  return (*(v40 + 8))(v33, v32);
}

uint64_t sub_21C7B7FB4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB158, &unk_21CBA12F0);
  sub_21CB85084();
  sub_21C7B5AD8(a1);
}

uint64_t sub_21C7B8010(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB158, &unk_21CBA12F0);
  sub_21CB85084();
  sub_21C7B5C2C(a1);
}

uint64_t sub_21C7B806C(uint64_t a1)
{
  v2 = sub_21CB82F84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = sub_21CB823B4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PMAppTOTPMigrationView(0);
  sub_21C7B8998(a1 + *(v13 + 20), v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_21CB85B04();
    v14 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_21CB823A4();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_21C7B82E0@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for PMAccountPickerModel(0);
  sub_21C7B8934(&qword_27CDEB1F0, type metadata accessor for PMAccountPickerModel, &unk_21CBA0758);

  v3 = sub_21CB82674();
  v5 = v4;
  result = swift_getKeyPath(byte_21CBA1428);
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_21C7B8384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21C7B88CC(a1, a2, type metadata accessor for PMAccount);
  KeyPath = swift_getKeyPath(byte_21CBA1400);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBFD0, &unk_21CBA39B0);
  v5 = a2 + *(result + 36);
  *v5 = KeyPath;
  *(v5 + 8) = 1;
  return result;
}

uint64_t sub_21C7B83F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB180, &qword_21CBA1368);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB188, &unk_21CBA1370);
  type metadata accessor for PMAccount(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDEBFD0, &unk_21CBA39B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB190, &qword_21CBA1380);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB198, &qword_21CBA1388);
  sub_21C7B1DC8();
  sub_21C6EADEC(&qword_27CDEB1A0, &qword_27CDEB190, &qword_21CBA1380, &unk_21CBBE7F0);
  sub_21C71FA88();
  swift_getOpaqueTypeConformance2();
  sub_21C7B8934(&qword_27CDEB1C8, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
  sub_21C7B85D8();
  swift_getOpaqueTypeConformance2();
  return sub_21CB82924();
}

unint64_t sub_21C7B85D8()
{
  result = qword_27CDEB1D0;
  if (!qword_27CDEB1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDEBFD0, &unk_21CBA39B0);
    sub_21C7B8934(&qword_27CDEB1D8, type metadata accessor for PMAccountDetailsView, &unk_21CBA1F18);
    sub_21C6EADEC(&unk_27CDEBFE0, &qword_27CDEB1E0, &unk_21CBA5270, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB1D0);
  }

  return result;
}

uint64_t sub_21C7B86C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAppTOTPMigrationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7B8724(uint64_t *a1)
{
  type metadata accessor for PMAppTOTPMigrationView(0);

  return sub_21C7B7FB4(a1);
}

uint64_t sub_21C7B8794(void *a1)
{
  type metadata accessor for PMAppTOTPMigrationView(0);

  return sub_21C7B8010(a1);
}

uint64_t sub_21C7B8804()
{
  v1 = *(type metadata accessor for PMAppTOTPMigrationView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C7B806C(v2);
}

uint64_t sub_21C7B8864(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB1E8, &qword_21CBA13A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C7B88CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7B8934(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C7B8998(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7B8A08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21C7B8A50(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_21C7B8AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21CB830D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C7B8D48(a1, a2, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB208, &unk_21CBB3F40);
  sub_21C7B8EA4();
  sub_21CB85034();
  v10 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB218, &qword_21CBA14F0) + 36));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB220, &qword_21CBA14F8) + 28);
  v12 = sub_21CB84004();
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  *v10 = swift_getKeyPath(byte_21CBA1500);
  sub_21CB830B4();
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB228, &qword_21CBA1530) + 36);
  (*(v7 + 16))(a3 + v13, v9, v6);
  v14 = *(v7 + 56);
  v14((a3 + v13), 0, 1, v6);
  KeyPath = swift_getKeyPath(asc_21CBA1538);
  v16 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB230, &qword_21CBA1568) + 36));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB238, &qword_21CBA1570) + 28);
  (*(v7 + 32))(v16 + v17, v9, v6);
  result = v14(v16 + v17, 0, 1, v6);
  *v16 = KeyPath;
  return result;
}

__n128 sub_21C7B8D48@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v17 = a1;
  *(&v17 + 1) = a2;
  sub_21C71F3FC();

  v4 = sub_21CB84054();
  v6 = v5;
  v8 = v7;
  sub_21CB83D64();
  v9 = sub_21CB84024();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_21C74A72C(v4, v6, v8 & 1);

  sub_21CB85214();
  sub_21CB82AC4();
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v15;
  *(a3 + 96) = v21;
  *(a3 + 112) = v22;
  *(a3 + 128) = v23;
  *(a3 + 32) = v17;
  *(a3 + 48) = v18;
  result = v20;
  *(a3 + 64) = v19;
  *(a3 + 80) = v20;
  return result;
}

unint64_t sub_21C7B8EA4()
{
  result = qword_27CDEB210;
  if (!qword_27CDEB210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB208, &unk_21CBB3F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB210);
  }

  return result;
}

uint64_t sub_21C7B8F4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB240, &qword_21CBA1578);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21C7B8FDC(a1, &v5 - v3);
  return sub_21CB82F04();
}

uint64_t sub_21C7B8FDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB240, &qword_21CBA1578);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C7B904C()
{
  result = qword_27CDEB248;
  if (!qword_27CDEB248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB230, &qword_21CBA1568);
    sub_21C7B9104();
    sub_21C6EADEC(&qword_27CDEB288, &qword_27CDEB238, &qword_21CBA1570, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB248);
  }

  return result;
}

unint64_t sub_21C7B9104()
{
  result = qword_27CDEB250;
  if (!qword_27CDEB250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB228, &qword_21CBA1530);
    sub_21C7B91BC();
    sub_21C6EADEC(&qword_27CDEB278, &qword_27CDEB280, &unk_21CBA7D90, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB250);
  }

  return result;
}

unint64_t sub_21C7B91BC()
{
  result = qword_27CDEB258;
  if (!qword_27CDEB258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB218, &qword_21CBA14F0);
    sub_21C7B9274();
    sub_21C6EADEC(&qword_27CDEB270, &qword_27CDEB220, &qword_21CBA14F8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB258);
  }

  return result;
}

unint64_t sub_21C7B9274()
{
  result = qword_27CDEB260;
  if (!qword_27CDEB260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB268, &unk_21CBA1580);
    sub_21C7B8EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB260);
  }

  return result;
}

int *sub_21C7B9304@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  v10 = sub_21CB85C44();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v51 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() sharedManager];
  v54 = v2;
  v14 = [v13 groupMemberDataForGroup_];

  sub_21C7B9798();
  v15 = sub_21CB85824();

  if (v15 >> 62)
  {
    v16 = sub_21CB85FA4();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = v11;
  v53 = v10;
  v50 = v5;
  if (v16)
  {
    v55 = MEMORY[0x277D84F90];
    result = sub_21C7B10A0(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      __break(1u);
      return result;
    }

    v47 = v4;
    v48 = a1;
    v18 = 0;
    v19 = v55;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x21CF15BD0](v18, v15);
      }

      else
      {
        v20 = *(v15 + 8 * v18 + 32);
      }

      v21 = v20;
      sub_21C9DCC64(v20, v56);

      v55 = v19;
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_21C7B10A0((v22 > 1), v23 + 1, 1);
        v19 = v55;
      }

      ++v18;
      *(v19 + 16) = v23 + 1;
      v24 = (v19 + 112 * v23);
      v25 = v56[0];
      v26 = v56[2];
      v24[3] = v56[1];
      v24[4] = v26;
      v24[2] = v25;
      v27 = v56[3];
      v28 = v56[4];
      v29 = v56[6];
      v24[7] = v56[5];
      v24[8] = v29;
      v24[5] = v27;
      v24[6] = v28;
    }

    while (v16 != v18);

    a1 = v48;
    v4 = v47;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v30 = v54;
  v31 = [v54 groupID];
  sub_21CB855C4();

  v32 = v51;
  sub_21CB85B54();
  v33 = [v30 displayName];
  if (v33)
  {
    v34 = v33;
    v35 = sub_21CB855C4();
    v37 = v36;
  }

  else
  {
    sub_21CB81014();
    v38 = v49;
    sub_21CB81014();
    v35 = sub_21CB80FF4();
    v37 = v39;
    v40 = *(v50 + 8);
    v40(v38, v4);
    v40(v9, v4);
    v30 = v54;
  }

  v41 = [v30 as_groupMemberTableViewCellDescription];
  v42 = sub_21CB855C4();
  v44 = v43;

  (*(v52 + 32))(a1, v32, v53);
  result = type metadata accessor for PMSharingGroup(0);
  v45 = (a1 + result[5]);
  *v45 = v35;
  v45[1] = v37;
  *(a1 + result[6]) = v19;
  v46 = (a1 + result[7]);
  *v46 = v42;
  v46[1] = v44;
  return result;
}

unint64_t sub_21C7B9798()
{
  result = qword_27CDEE440;
  if (!qword_27CDEE440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDEE440);
  }

  return result;
}

uint64_t sub_21C7B9970(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v5 + 8))(v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21CBA0690;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_21C7C0050();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = sub_21CB85594();

  return v9;
}

uint64_t sub_21C7B9CA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v5 + 8))(v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21CBA0690;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_21C7C0050();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = sub_21CB85594();

  return v9;
}

uint64_t sub_21C7BA054(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v5 + 8))(v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21CBA0690;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_21C7C0050();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = sub_21CB85594();

  return v9;
}

uint64_t sub_21C7BA56C()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_21C7BA73C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_21C7BA9C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_21C7BAE10()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_21C7BB034()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v4;
}

id sub_21C7BB134()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  v4 = sub_21CB85584();

  return v4;
}

uint64_t sub_21C7BB25C()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v4;
}

id sub_21C7BB35C()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  v4 = sub_21CB85584();

  return v4;
}

uint64_t sub_21C7BB484()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_21C7BB728()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v4;
}

id sub_21C7BB828()
{
  sub_21C7C2E34();
  v0 = sub_21CB85584();

  return v0;
}

uint64_t sub_21C7BB994()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_21C7BBBB8()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_21C7BBDDC()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_21C7BBEDC(uint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x28223BE20](a1).n128_u64[0];
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4)
  {
    [v4 safari_isOrContainsNetworkUnavailableError];
  }

  sub_21CB81014();
  v8 = sub_21CB81004();
  (*(v3 + 8))(v7, v2);
  return v8;
}

uint64_t sub_21C7BC180(uint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x28223BE20](a1).n128_u64[0];
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4)
  {
    [v4 safari_isOrContainsNetworkUnavailableError];
  }

  sub_21CB81014();
  v8 = sub_21CB81004();
  (*(v3 + 8))(v7, v2);
  return v8;
}

uint64_t sub_21C7BC424(uint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x28223BE20](a1).n128_u64[0];
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4)
  {
    [v4 safari_isOrContainsNetworkUnavailableError];
  }

  sub_21CB81014();
  v8 = sub_21CB81004();
  (*(v3 + 8))(v7, v2);
  return v8;
}

uint64_t sub_21C7BC6C8(uint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x28223BE20](a1).n128_u64[0];
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4)
  {
    [v4 safari_isOrContainsNetworkUnavailableError];
  }

  sub_21CB81014();
  v8 = sub_21CB81004();
  (*(v3 + 8))(v7, v2);
  return v8;
}

uint64_t sub_21C7BC96C(uint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x28223BE20](a1).n128_u64[0];
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4)
  {
    [v4 safari_isOrContainsNetworkUnavailableError];
  }

  sub_21CB81014();
  v8 = sub_21CB81004();
  (*(v3 + 8))(v7, v2);
  return v8;
}

uint64_t sub_21C7BCC10(uint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x28223BE20](a1).n128_u64[0];
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4)
  {
    [v4 safari_isOrContainsNetworkUnavailableError];
  }

  sub_21CB81014();
  v8 = sub_21CB81004();
  (*(v3 + 8))(v7, v2);
  return v8;
}

uint64_t sub_21C7BCEB4(uint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x28223BE20](a1).n128_u64[0];
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4)
  {
    [v4 safari_isOrContainsNetworkUnavailableError];
  }

  sub_21CB81014();
  v8 = sub_21CB81004();
  (*(v3 + 8))(v7, v2);
  return v8;
}

uint64_t sub_21C7BD158(uint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x28223BE20](a1).n128_u64[0];
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4)
  {
    [v4 safari_isOrContainsNetworkUnavailableError];
  }

  sub_21CB81014();
  v8 = sub_21CB81004();
  (*(v3 + 8))(v7, v2);
  return v8;
}

id OngoingCredentialSharingAlertConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OngoingCredentialSharingAlertConfiguration.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OngoingCredentialSharingAlertConfiguration();
  return objc_msgSendSuper2(&v2, sel_init);
}

id OngoingCredentialSharingAlertConfiguration.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for OngoingCredentialSharingAlertConfiguration();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_21C7BD554(void *a1, void *a2)
{
  v344 = a1;
  v3 = sub_21CB81024();
  v4 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v6 = &v340 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() sharedManager];
  v343 = a2;
  v8 = [v7 groupMemberDataForGroup_];

  sub_21C6E8F4C(0, &qword_27CDEE440, 0x277CBAA00);
  v9 = sub_21CB85824();

  v345 = MEMORY[0x277D84F90];
  if (v9 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21CB85FA4())
  {
    v340 = v6;
    v341 = v3;
    v342 = v4;
    v6 = 0;
    v4 = v9 & 0xC000000000000001;
    v3 = &property descriptor for static PMMiniPasswordsIsMenuBarExtra.defaultValue;
    while (1)
    {
      if (v4)
      {
        v11 = MEMORY[0x21CF15BD0](v6, v9);
      }

      else
      {
        if (v6 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v11 = *(v9 + 8 * v6 + 32);
      }

      v12 = v11;
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ([v11 isMeParticipant])
      {
      }

      else
      {
        sub_21CB86134();
        sub_21CB86164();
        sub_21CB86174();
        sub_21CB86144();
      }

      ++v6;
      if (v13 == i)
      {
        v14 = v345;
        v3 = v341;
        v4 = v342;
        v6 = v340;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_18:

  v15 = [v344 credentialTypes];
  if (v15 > 3)
  {
    if ((v15 - 8) < 2)
    {
      v20 = v14 < 0 || (v14 & 0x4000000000000000) != 0;
      if (v20)
      {
        v21 = sub_21CB85FA4();
        if (v21 <= 1)
        {
LABEL_37:
          if (!v21)
          {
            goto LABEL_210;
          }

          if (v21 == 1)
          {
            sub_21CB81014();
            v9 = sub_21CB81004();
            (*(v4 + 8))(v6, v3);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
            v18 = swift_allocObject();
            *(v18 + 16) = xmmword_21CBA15B0;
            if (v20)
            {
              v22 = sub_21CB85FA4();
            }

            else
            {
              v22 = *(v14 + 16);
            }

            if (!v22)
            {
LABEL_361:
              __break(1u);
LABEL_362:
              __break(1u);
LABEL_363:
              __break(1u);
              goto LABEL_364;
            }

            if ((v14 & 0xC000000000000001) != 0)
            {
LABEL_364:
              v43 = MEMORY[0x21CF15BD0](0, v14);
LABEL_88:
              v44 = v43;

              v45 = [v44 displayName];

              v46 = sub_21CB855C4();
              v48 = v47;

              v40 = MEMORY[0x277D837D0];
              *(v18 + 56) = MEMORY[0x277D837D0];
              v41 = sub_21C7C0050();
              *(v18 + 64) = v41;
              *(v18 + 32) = v46;
              *(v18 + 40) = v48;
              v42 = [v343 displayName];
              if (v42)
              {
                goto LABEL_110;
              }

              goto LABEL_118;
            }

            if (*(v14 + 16))
            {
              v43 = *(v14 + 32);
              goto LABEL_88;
            }

            __break(1u);
            goto LABEL_368;
          }

          goto LABEL_126;
        }
      }

      else
      {
        v21 = *(v14 + 16);
        if (v21 <= 1)
        {
          goto LABEL_37;
        }
      }

      if (v21 == 2)
      {
        sub_21CB81014();
        v86 = sub_21CB81004();
        (*(v4 + 8))(v6, v3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_21CBA15A0;
        if (v20)
        {
          v87 = sub_21CB85FA4();
        }

        else
        {
          v87 = *(v14 + 16);
        }

        if (!v87)
        {
          goto LABEL_363;
        }

        v9 = v14 & 0xC000000000000001;
        v344 = v86;
        if ((v14 & 0xC000000000000001) != 0)
        {
          v97 = MEMORY[0x21CF15BD0](0, v14);
        }

        else
        {
          if (!*(v14 + 16))
          {
LABEL_369:
            __break(1u);
LABEL_370:
            __break(1u);
LABEL_371:
            __break(1u);
LABEL_372:
            __break(1u);
LABEL_373:
            __break(1u);
            goto LABEL_374;
          }

          v97 = *(v14 + 32);
        }

        v98 = v97;
        v99 = [v97 displayName];

        v100 = sub_21CB855C4();
        v102 = v101;

        v103 = MEMORY[0x277D837D0];
        *(v18 + 56) = MEMORY[0x277D837D0];
        v104 = sub_21C7C0050();
        *(v18 + 64) = v104;
        *(v18 + 32) = v100;
        *(v18 + 40) = v102;
        if (v9)
        {
          v105 = MEMORY[0x21CF15BD0](1, v14);
        }

        else
        {
          if (*(v14 + 16) < 2uLL)
          {
LABEL_419:
            __break(1u);
            goto LABEL_420;
          }

          v105 = *(v14 + 40);
        }

        v114 = v105;

        v115 = [v114 displayName];

        v116 = sub_21CB855C4();
        v118 = v117;

        *(v18 + 96) = v103;
        *(v18 + 104) = v104;
        *(v18 + 72) = v116;
        *(v18 + 80) = v118;
        v119 = [v343 displayName];
        if (!v119)
        {
          goto LABEL_349;
        }

        goto LABEL_340;
      }

      if (v21 == 3)
      {
        sub_21CB81014();
        v78 = sub_21CB81004();
        (*(v4 + 8))(v6, v3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_21CBA1590;
        if (v20)
        {
          v79 = sub_21CB85FA4();
        }

        else
        {
          v79 = *(v14 + 16);
        }

        if (!v79)
        {
          goto LABEL_362;
        }

        v9 = v14 & 0xC000000000000001;
        v344 = v78;
        if ((v14 & 0xC000000000000001) != 0)
        {
          v88 = MEMORY[0x21CF15BD0](0, v14);
        }

        else
        {
          if (!*(v14 + 16))
          {
LABEL_368:
            __break(1u);
            goto LABEL_369;
          }

          v88 = *(v14 + 32);
        }

        v89 = v88;
        v90 = [v88 displayName];

        v91 = sub_21CB855C4();
        v93 = v92;

        v94 = MEMORY[0x277D837D0];
        *(v18 + 56) = MEMORY[0x277D837D0];
        v95 = sub_21C7C0050();
        *(v18 + 64) = v95;
        *(v18 + 32) = v91;
        *(v18 + 40) = v93;
        if (v9)
        {
          v96 = MEMORY[0x21CF15BD0](1, v14);
        }

        else
        {
          if (*(v14 + 16) < 2uLL)
          {
LABEL_418:
            __break(1u);
            goto LABEL_419;
          }

          v96 = *(v14 + 40);
        }

        v108 = v96;
        v109 = [v96 displayName];

        v110 = sub_21CB855C4();
        v112 = v111;

        *(v18 + 96) = v94;
        *(v18 + 104) = v95;
        *(v18 + 72) = v110;
        *(v18 + 80) = v112;
        if (v9)
        {
          v113 = MEMORY[0x21CF15BD0](2, v14);
        }

        else
        {
          if (*(v14 + 16) < 3uLL)
          {
LABEL_420:
            __break(1u);
            goto LABEL_421;
          }

          v113 = *(v14 + 48);
        }

        v120 = v113;

        v121 = [v120 displayName];

        v122 = sub_21CB855C4();
        v124 = v123;

        *(v18 + 136) = v94;
        *(v18 + 144) = v95;
        *(v18 + 112) = v122;
        *(v18 + 120) = v124;
        v125 = [v343 displayName];
        if (!v125)
        {
          goto LABEL_354;
        }

        goto LABEL_256;
      }

LABEL_126:

      sub_21CB81014();
      sub_21CB81004();
      (*(v4 + 8))(v6, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_21CBA0690;
      v81 = [v343 displayName];
      if (v81)
      {
        v82 = v81;
        v83 = sub_21CB855C4();
        v85 = v84;
      }

      else
      {
        v83 = 0;
        v85 = 0;
      }

      *(v80 + 56) = MEMORY[0x277D837D0];
      *(v80 + 64) = sub_21C7C0050();
      if (v85)
      {
        v106 = v83;
      }

      else
      {
        v106 = 0;
      }

      v107 = 0xE000000000000000;
      if (v85)
      {
        v107 = v85;
      }

      *(v80 + 32) = v106;
      *(v80 + 40) = v107;
      goto LABEL_357;
    }

    if (v15 != 4)
    {
      goto LABEL_60;
    }

    v23 = v14 < 0 || (v14 & 0x4000000000000000) != 0;
    if (v23)
    {
      v24 = sub_21CB85FA4();
      if (v24 <= 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v24 = *(v14 + 16);
      if (v24 <= 1)
      {
LABEL_47:
        if (!v24)
        {
          goto LABEL_210;
        }

        if (v24 == 1)
        {
          sub_21CB81014();
          v9 = sub_21CB81004();
          (*(v4 + 8))(v6, v3);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_21CBA15B0;
          if (v23)
          {
            v25 = sub_21CB85FA4();
          }

          else
          {
            v25 = *(v14 + 16);
          }

          if (v25)
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              v55 = MEMORY[0x21CF15BD0](0, v14);
            }

            else
            {
              if (!*(v14 + 16))
              {
LABEL_409:
                __break(1u);
                goto LABEL_410;
              }

              v55 = *(v14 + 32);
            }

            v56 = v55;

            v57 = [v56 displayName];

            v58 = sub_21CB855C4();
            v60 = v59;

            v40 = MEMORY[0x277D837D0];
            *(v18 + 56) = MEMORY[0x277D837D0];
            v41 = sub_21C7C0050();
            *(v18 + 64) = v41;
            *(v18 + 32) = v58;
            *(v18 + 40) = v60;
            v42 = [v343 displayName];
            if (v42)
            {
              goto LABEL_110;
            }

            goto LABEL_118;
          }

          goto LABEL_377;
        }

        goto LABEL_216;
      }
    }

    if (v24 == 2)
    {
      sub_21CB81014();
      v179 = sub_21CB81004();
      (*(v4 + 8))(v6, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_21CBA15A0;
      if (v23)
      {
        v180 = sub_21CB85FA4();
      }

      else
      {
        v180 = *(v14 + 16);
      }

      if (!v180)
      {
        goto LABEL_379;
      }

      v344 = v179;
      if ((v14 & 0xC000000000000001) != 0)
      {
        v196 = MEMORY[0x21CF15BD0](0, v14);
      }

      else
      {
        if (!*(v14 + 16))
        {
LABEL_411:
          __break(1u);
LABEL_412:
          __break(1u);
          goto LABEL_413;
        }

        v196 = *(v14 + 32);
      }

      v197 = v196;
      v198 = [v196 displayName];

      v199 = sub_21CB855C4();
      v201 = v200;

      v103 = MEMORY[0x277D837D0];
      *(v18 + 56) = MEMORY[0x277D837D0];
      v104 = sub_21C7C0050();
      *(v18 + 64) = v104;
      *(v18 + 32) = v199;
      *(v18 + 40) = v201;
      if ((v14 & 0xC000000000000001) != 0)
      {
        v202 = MEMORY[0x21CF15BD0](1, v14);
      }

      else
      {
        if (*(v14 + 16) < 2uLL)
        {
LABEL_428:
          __break(1u);
          goto LABEL_429;
        }

        v202 = *(v14 + 40);
      }

      v214 = v202;

      v215 = [v214 displayName];

      v216 = sub_21CB855C4();
      v218 = v217;

      *(v18 + 96) = v103;
      *(v18 + 104) = v104;
      *(v18 + 72) = v216;
      *(v18 + 80) = v218;
      v119 = [v343 displayName];
      if (v119)
      {
        goto LABEL_340;
      }

      goto LABEL_349;
    }

    if (v24 == 3)
    {
      sub_21CB81014();
      v175 = sub_21CB81004();
      (*(v4 + 8))(v6, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_21CBA1590;
      if (v23)
      {
        v176 = sub_21CB85FA4();
      }

      else
      {
        v176 = *(v14 + 16);
      }

      if (!v176)
      {
        goto LABEL_378;
      }

      v188 = v14 & 0xC000000000000001;
      v344 = v175;
      if ((v14 & 0xC000000000000001) != 0)
      {
        v189 = MEMORY[0x21CF15BD0](0, v14);
      }

      else
      {
        if (!*(v14 + 16))
        {
LABEL_410:
          __break(1u);
          goto LABEL_411;
        }

        v189 = *(v14 + 32);
      }

      v190 = v189;
      v191 = [v189 displayName];

      v192 = sub_21CB855C4();
      v194 = v193;

      v94 = MEMORY[0x277D837D0];
      *(v18 + 56) = MEMORY[0x277D837D0];
      v95 = sub_21C7C0050();
      *(v18 + 64) = v95;
      *(v18 + 32) = v192;
      *(v18 + 40) = v194;
      if (v188)
      {
        v195 = MEMORY[0x21CF15BD0](1, v14);
      }

      else
      {
        if (*(v14 + 16) < 2uLL)
        {
LABEL_427:
          __break(1u);
          goto LABEL_428;
        }

        v195 = *(v14 + 40);
      }

      v208 = v195;
      v209 = [v195 displayName];

      v210 = sub_21CB855C4();
      v212 = v211;

      *(v18 + 96) = v94;
      *(v18 + 104) = v95;
      *(v18 + 72) = v210;
      *(v18 + 80) = v212;
      if (v188)
      {
        v213 = MEMORY[0x21CF15BD0](2, v14);
      }

      else
      {
        if (*(v14 + 16) < 3uLL)
        {
LABEL_434:
          __break(1u);
          goto LABEL_435;
        }

        v213 = *(v14 + 48);
      }

      v219 = v213;

      v220 = [v219 displayName];

      v221 = sub_21CB855C4();
      v223 = v222;

      *(v18 + 136) = v94;
      *(v18 + 144) = v95;
      *(v18 + 112) = v221;
      *(v18 + 120) = v223;
      v125 = [v343 displayName];
      if (!v125)
      {
        goto LABEL_354;
      }

      goto LABEL_256;
    }

LABEL_216:
    sub_21CB81014();
    v177 = sub_21CB81004();
    (*(v4 + 8))(v6, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_21CBA15A0;
    if (v23)
    {
      v178 = sub_21CB85FA4();
    }

    else
    {
      v178 = *(v14 + 16);
    }

    if (v178)
    {
      v344 = v177;
      if ((v14 & 0xC000000000000001) != 0)
      {
        v181 = MEMORY[0x21CF15BD0](0, v14);
      }

      else
      {
        if (!*(v14 + 16))
        {
LABEL_405:
          __break(1u);
          goto LABEL_406;
        }

        v181 = *(v14 + 32);
      }

      v182 = v181;
      v183 = [v181 displayName];

      v184 = sub_21CB855C4();
      v186 = v185;

      v103 = MEMORY[0x277D837D0];
      *(v18 + 56) = MEMORY[0x277D837D0];
      v104 = sub_21C7C0050();
      *(v18 + 64) = v104;
      *(v18 + 32) = v184;
      *(v18 + 40) = v186;
      if ((v14 & 0xC000000000000001) != 0)
      {
        v187 = MEMORY[0x21CF15BD0](1, v14);
      }

      else
      {
        if (*(v14 + 16) < 2uLL)
        {
LABEL_424:
          __break(1u);
          goto LABEL_425;
        }

        v187 = *(v14 + 40);
      }

      v203 = v187;

      v204 = [v203 displayName];

      v205 = sub_21CB855C4();
      v207 = v206;

      *(v18 + 96) = v103;
      *(v18 + 104) = v104;
      *(v18 + 72) = v205;
      *(v18 + 80) = v207;
      v119 = [v343 displayName];
      if (v119)
      {
        goto LABEL_340;
      }

      goto LABEL_349;
    }

    goto LABEL_373;
  }

  if (v15 == 1)
  {
    v26 = v14 < 0 || (v14 & 0x4000000000000000) != 0;
    if (v26)
    {
      v27 = sub_21CB85FA4();
      if (v27 <= 1)
      {
LABEL_56:
        if (!v27)
        {
          goto LABEL_210;
        }

        if (v27 == 1)
        {
          sub_21CB81014();
          v9 = sub_21CB81004();
          (*(v4 + 8))(v6, v3);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_21CBA15B0;
          if (v26)
          {
            v28 = sub_21CB85FA4();
          }

          else
          {
            v28 = *(v14 + 16);
          }

          if (v28)
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              v49 = MEMORY[0x21CF15BD0](0, v14);
LABEL_95:
              v50 = v49;

              v51 = [v50 displayName];

              v52 = sub_21CB855C4();
              v54 = v53;

              v40 = MEMORY[0x277D837D0];
              *(v18 + 56) = MEMORY[0x277D837D0];
              v41 = sub_21C7C0050();
              *(v18 + 64) = v41;
              *(v18 + 32) = v52;
              *(v18 + 40) = v54;
              v42 = [v343 displayName];
              if (v42)
              {
                goto LABEL_110;
              }

              goto LABEL_118;
            }

            if (*(v14 + 16))
            {
              v49 = *(v14 + 32);
              goto LABEL_95;
            }

            goto LABEL_403;
          }

          goto LABEL_371;
        }

        goto LABEL_168;
      }
    }

    else
    {
      v27 = *(v14 + 16);
      if (v27 <= 1)
      {
        goto LABEL_56;
      }
    }

    if (v27 == 2)
    {
      sub_21CB81014();
      v130 = sub_21CB81004();
      (*(v4 + 8))(v6, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_21CBA15A0;
      if (v26)
      {
        v131 = sub_21CB85FA4();
      }

      else
      {
        v131 = *(v14 + 16);
      }

      if (v131)
      {
        v344 = v130;
        if ((v14 & 0xC000000000000001) != 0)
        {
          v147 = MEMORY[0x21CF15BD0](0, v14);
        }

        else
        {
          if (!*(v14 + 16))
          {
LABEL_406:
            __break(1u);
LABEL_407:
            __break(1u);
            goto LABEL_408;
          }

          v147 = *(v14 + 32);
        }

        v148 = v147;
        v149 = [v147 displayName];

        v150 = sub_21CB855C4();
        v152 = v151;

        v103 = MEMORY[0x277D837D0];
        *(v18 + 56) = MEMORY[0x277D837D0];
        v104 = sub_21C7C0050();
        *(v18 + 64) = v104;
        *(v18 + 32) = v150;
        *(v18 + 40) = v152;
        if ((v14 & 0xC000000000000001) != 0)
        {
          v153 = MEMORY[0x21CF15BD0](1, v14);
        }

        else
        {
          if (*(v14 + 16) < 2uLL)
          {
LABEL_423:
            __break(1u);
            goto LABEL_424;
          }

          v153 = *(v14 + 40);
        }

        v165 = v153;

        v166 = [v165 displayName];

        v167 = sub_21CB855C4();
        v169 = v168;

        *(v18 + 96) = v103;
        *(v18 + 104) = v104;
        *(v18 + 72) = v167;
        *(v18 + 80) = v169;
        v119 = [v343 displayName];
        if (v119)
        {
          goto LABEL_340;
        }

        goto LABEL_349;
      }

LABEL_374:
      __break(1u);
LABEL_375:
      __break(1u);
LABEL_376:
      __break(1u);
LABEL_377:
      __break(1u);
LABEL_378:
      __break(1u);
LABEL_379:
      __break(1u);
LABEL_380:
      __break(1u);
LABEL_381:
      __break(1u);
LABEL_382:
      __break(1u);
LABEL_383:
      __break(1u);
LABEL_384:
      __break(1u);
LABEL_385:
      __break(1u);
      goto LABEL_386;
    }

    if (v27 == 3)
    {
      sub_21CB81014();
      v126 = sub_21CB81004();
      (*(v4 + 8))(v6, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_21CBA1590;
      if (v26)
      {
        v127 = sub_21CB85FA4();
      }

      else
      {
        v127 = *(v14 + 16);
      }

      if (v127)
      {
        v139 = v14 & 0xC000000000000001;
        v344 = v126;
        if ((v14 & 0xC000000000000001) != 0)
        {
          v140 = MEMORY[0x21CF15BD0](0, v14);
        }

        else
        {
          if (!*(v14 + 16))
          {
LABEL_404:
            __break(1u);
            goto LABEL_405;
          }

          v140 = *(v14 + 32);
        }

        v141 = v140;
        v142 = [v140 displayName];

        v143 = sub_21CB855C4();
        v145 = v144;

        v94 = MEMORY[0x277D837D0];
        *(v18 + 56) = MEMORY[0x277D837D0];
        v95 = sub_21C7C0050();
        *(v18 + 64) = v95;
        *(v18 + 32) = v143;
        *(v18 + 40) = v145;
        if (v139)
        {
          v146 = MEMORY[0x21CF15BD0](1, v14);
        }

        else
        {
          if (*(v14 + 16) < 2uLL)
          {
LABEL_422:
            __break(1u);
            goto LABEL_423;
          }

          v146 = *(v14 + 40);
        }

        v159 = v146;
        v160 = [v146 displayName];

        v161 = sub_21CB855C4();
        v163 = v162;

        *(v18 + 96) = v94;
        *(v18 + 104) = v95;
        *(v18 + 72) = v161;
        *(v18 + 80) = v163;
        if (v139)
        {
          v164 = MEMORY[0x21CF15BD0](2, v14);
        }

        else
        {
          if (*(v14 + 16) < 3uLL)
          {
LABEL_433:
            __break(1u);
            goto LABEL_434;
          }

          v164 = *(v14 + 48);
        }

        v170 = v164;

        v171 = [v170 displayName];

        v172 = sub_21CB855C4();
        v174 = v173;

        *(v18 + 136) = v94;
        *(v18 + 144) = v95;
        *(v18 + 112) = v172;
        *(v18 + 120) = v174;
        v125 = [v343 displayName];
        if (!v125)
        {
          goto LABEL_354;
        }

        goto LABEL_256;
      }

      goto LABEL_372;
    }

LABEL_168:
    sub_21CB81014();
    v128 = sub_21CB81004();
    (*(v4 + 8))(v6, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_21CBA15A0;
    if (v26)
    {
      v129 = sub_21CB85FA4();
    }

    else
    {
      v129 = *(v14 + 16);
    }

    if (v129)
    {
      v9 = v14 & 0xC000000000000001;
      v344 = v128;
      if ((v14 & 0xC000000000000001) != 0)
      {
LABEL_386:
        v132 = MEMORY[0x21CF15BD0](0, v14);
LABEL_177:
        v133 = v132;
        v134 = [v132 displayName];

        v135 = sub_21CB855C4();
        v137 = v136;

        v103 = MEMORY[0x277D837D0];
        *(v18 + 56) = MEMORY[0x277D837D0];
        v104 = sub_21C7C0050();
        *(v18 + 64) = v104;
        *(v18 + 32) = v135;
        *(v18 + 40) = v137;
        if (v9)
        {
          v138 = MEMORY[0x21CF15BD0](1, v14);
        }

        else
        {
          if (*(v14 + 16) < 2uLL)
          {
LABEL_421:
            __break(1u);
            goto LABEL_422;
          }

          v138 = *(v14 + 40);
        }

        v154 = v138;

        v155 = [v154 displayName];

        v156 = sub_21CB855C4();
        v158 = v157;

        *(v18 + 96) = v103;
        *(v18 + 104) = v104;
        *(v18 + 72) = v156;
        *(v18 + 80) = v158;
        v119 = [v343 displayName];
        if (!v119)
        {
          goto LABEL_349;
        }

LABEL_340:
        v319 = v119;
        v320 = sub_21CB855C4();
        v322 = v321;

        v323 = (v18 + 112);
        *(v18 + 136) = v103;
        *(v18 + 144) = v104;
        if (v322)
        {
          *v323 = v320;
          *(v18 + 120) = v322;
          goto LABEL_357;
        }

LABEL_350:
        *v323 = 0;
        *(v18 + 120) = 0xE000000000000000;
        goto LABEL_357;
      }

      if (*(v14 + 16))
      {
        v132 = *(v14 + 32);
        goto LABEL_177;
      }

      __break(1u);
LABEL_403:
      __break(1u);
      goto LABEL_404;
    }

    goto LABEL_370;
  }

  if (v15 != 2)
  {
    if (v15 == 3)
    {
      v16 = v14 < 0 || (v14 & 0x4000000000000000) != 0;
      if (v16)
      {
        v17 = sub_21CB85FA4();
        if (v17 <= 1)
        {
LABEL_27:
          if (v17)
          {
            if (v17 == 1)
            {
              sub_21CB81014();
              v9 = sub_21CB81004();
              (*(v4 + 8))(v6, v3);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
              v18 = swift_allocObject();
              *(v18 + 16) = xmmword_21CBA15B0;
              if (v16)
              {
                v19 = sub_21CB85FA4();
              }

              else
              {
                v19 = *(v14 + 16);
              }

              if (v19)
              {
                if ((v14 & 0xC000000000000001) != 0)
                {
                  v61 = MEMORY[0x21CF15BD0](0, v14);
LABEL_109:
                  v62 = v61;

                  v63 = [v62 displayName];

                  v64 = sub_21CB855C4();
                  v66 = v65;

                  v40 = MEMORY[0x277D837D0];
                  *(v18 + 56) = MEMORY[0x277D837D0];
                  v41 = sub_21C7C0050();
                  *(v18 + 64) = v41;
                  *(v18 + 32) = v64;
                  *(v18 + 40) = v66;
                  v42 = [v343 displayName];
                  if (v42)
                  {
                    goto LABEL_110;
                  }

                  goto LABEL_118;
                }

                if (*(v14 + 16))
                {
                  v61 = *(v14 + 32);
                  goto LABEL_109;
                }

                goto LABEL_412;
              }

              goto LABEL_380;
            }

LABEL_263:
            sub_21CB81014();
            v231 = sub_21CB81004();
            (*(v4 + 8))(v6, v3);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
            v18 = swift_allocObject();
            *(v18 + 16) = xmmword_21CBA15A0;
            if (v16)
            {
              v232 = sub_21CB85FA4();
            }

            else
            {
              v232 = *(v14 + 16);
            }

            if (v232)
            {
              v344 = v231;
              if ((v14 & 0xC000000000000001) != 0)
              {
                v235 = MEMORY[0x21CF15BD0](0, v14);
LABEL_272:
                v236 = v235;
                v237 = [v235 displayName];

                v238 = sub_21CB855C4();
                v240 = v239;

                v103 = MEMORY[0x277D837D0];
                *(v18 + 56) = MEMORY[0x277D837D0];
                v104 = sub_21C7C0050();
                *(v18 + 64) = v104;
                *(v18 + 32) = v238;
                *(v18 + 40) = v240;
                if ((v14 & 0xC000000000000001) != 0)
                {
                  v241 = MEMORY[0x21CF15BD0](1, v14);
                }

                else
                {
                  if (*(v14 + 16) < 2uLL)
                  {
LABEL_425:
                    __break(1u);
                    goto LABEL_426;
                  }

                  v241 = *(v14 + 40);
                }

                v259 = v241;

                v260 = [v259 displayName];

                v261 = sub_21CB855C4();
                v263 = v262;

                *(v18 + 96) = v103;
                *(v18 + 104) = v104;
                *(v18 + 72) = v261;
                *(v18 + 80) = v263;
                v119 = [v343 displayName];
                if (v119)
                {
                  goto LABEL_340;
                }

                goto LABEL_349;
              }

              if (*(v14 + 16))
              {
                v235 = *(v14 + 32);
                goto LABEL_272;
              }

              goto LABEL_407;
            }

            goto LABEL_375;
          }

LABEL_210:

          return;
        }
      }

      else
      {
        v17 = *(v14 + 16);
        if (v17 <= 1)
        {
          goto LABEL_27;
        }
      }

      if (v17 == 2)
      {
        sub_21CB81014();
        v233 = sub_21CB81004();
        (*(v4 + 8))(v6, v3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_21CBA15A0;
        if (v16)
        {
          v234 = sub_21CB85FA4();
        }

        else
        {
          v234 = *(v14 + 16);
        }

        if (v234)
        {
          v344 = v233;
          if ((v14 & 0xC000000000000001) != 0)
          {
            v252 = MEMORY[0x21CF15BD0](0, v14);
          }

          else
          {
            if (!*(v14 + 16))
            {
LABEL_415:
              __break(1u);
              goto LABEL_416;
            }

            v252 = *(v14 + 32);
          }

          v253 = v252;
          v254 = [v252 displayName];

          v255 = sub_21CB855C4();
          v257 = v256;

          v103 = MEMORY[0x277D837D0];
          *(v18 + 56) = MEMORY[0x277D837D0];
          v104 = sub_21C7C0050();
          *(v18 + 64) = v104;
          *(v18 + 32) = v255;
          *(v18 + 40) = v257;
          if ((v14 & 0xC000000000000001) != 0)
          {
            v258 = MEMORY[0x21CF15BD0](1, v14);
          }

          else
          {
            if (*(v14 + 16) < 2uLL)
            {
LABEL_430:
              __break(1u);
              goto LABEL_431;
            }

            v258 = *(v14 + 40);
          }

          v270 = v258;

          v271 = [v270 displayName];

          v272 = sub_21CB855C4();
          v274 = v273;

          *(v18 + 96) = v103;
          *(v18 + 104) = v104;
          *(v18 + 72) = v272;
          *(v18 + 80) = v274;
          v119 = [v343 displayName];
          if (!v119)
          {
            goto LABEL_349;
          }

          goto LABEL_340;
        }

        goto LABEL_383;
      }

      if (v17 == 3)
      {
        sub_21CB81014();
        v229 = sub_21CB81004();
        (*(v4 + 8))(v6, v3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_21CBA1590;
        if (v16)
        {
          v230 = sub_21CB85FA4();
        }

        else
        {
          v230 = *(v14 + 16);
        }

        if (v230)
        {
          v242 = v14 & 0xC000000000000001;
          v344 = v229;
          if ((v14 & 0xC000000000000001) != 0)
          {
            v243 = MEMORY[0x21CF15BD0](0, v14);
          }

          else
          {
            if (!*(v14 + 16))
            {
LABEL_413:
              __break(1u);
              goto LABEL_414;
            }

            v243 = *(v14 + 32);
          }

          v244 = v243;
          v245 = [v243 displayName];

          v246 = sub_21CB855C4();
          v248 = v247;

          v249 = MEMORY[0x277D837D0];
          *(v18 + 56) = MEMORY[0x277D837D0];
          v250 = sub_21C7C0050();
          *(v18 + 64) = v250;
          *(v18 + 32) = v246;
          *(v18 + 40) = v248;
          if (v242)
          {
            v251 = MEMORY[0x21CF15BD0](1, v14);
          }

          else
          {
            if (*(v14 + 16) < 2uLL)
            {
LABEL_429:
              __break(1u);
              goto LABEL_430;
            }

            v251 = *(v14 + 40);
          }

          v264 = v251;
          v265 = [v251 displayName];

          v266 = sub_21CB855C4();
          v268 = v267;

          *(v18 + 96) = v249;
          *(v18 + 104) = v250;
          *(v18 + 72) = v266;
          *(v18 + 80) = v268;
          if (v242)
          {
            v269 = MEMORY[0x21CF15BD0](2, v14);
          }

          else
          {
            if (*(v14 + 16) < 3uLL)
            {
LABEL_435:
              __break(1u);
              goto LABEL_436;
            }

            v269 = *(v14 + 48);
          }

          v275 = v269;

          v276 = [v275 displayName];

          v277 = sub_21CB855C4();
          v279 = v278;

          *(v18 + 136) = v249;
          *(v18 + 144) = v250;
          *(v18 + 112) = v277;
          *(v18 + 120) = v279;
          v280 = [v343 displayName];
          if (v280)
          {
            v281 = v280;
            v282 = sub_21CB855C4();
            v284 = v283;

            v285 = (v18 + 152);
            *(v18 + 176) = v249;
            *(v18 + 184) = v250;
            if (v284)
            {
              *v285 = v282;
              *(v18 + 160) = v284;
              goto LABEL_357;
            }
          }

          else
          {
            v285 = (v18 + 152);
            *(v18 + 176) = v249;
            *(v18 + 184) = v250;
          }

          *v285 = 0;
          *(v18 + 160) = 0xE000000000000000;
          goto LABEL_357;
        }

        goto LABEL_381;
      }

      goto LABEL_263;
    }

LABEL_60:
    v29 = v14 < 0 || (v14 & 0x4000000000000000) != 0;
    if (v29)
    {
      if (!sub_21CB85FA4())
      {
        goto LABEL_210;
      }
    }

    else if (!*(v14 + 16))
    {
      goto LABEL_210;
    }

    sub_21CB81014();
    sub_21CB81004();
    (*(v4 + 8))(v6, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_21CBA15B0;
    if (v29)
    {
      v30 = sub_21CB85FA4();
    }

    else
    {
      v30 = *(v14 + 16);
    }

    if (v30)
    {
      if ((v14 & 0xC000000000000001) == 0)
      {
        if (*(v14 + 16))
        {
          v34 = *(v14 + 32);
          goto LABEL_81;
        }

        __break(1u);
        goto LABEL_361;
      }
    }

    else
    {
      __break(1u);
    }

    v34 = MEMORY[0x21CF15BD0](0, v14);
LABEL_81:
    v35 = v34;

    v36 = [v35 displayName];

    v37 = sub_21CB855C4();
    v39 = v38;

    v40 = MEMORY[0x277D837D0];
    *(v18 + 56) = MEMORY[0x277D837D0];
    v41 = sub_21C7C0050();
    *(v18 + 64) = v41;
    *(v18 + 32) = v37;
    *(v18 + 40) = v39;
    v42 = [v343 displayName];
    if (v42)
    {
      goto LABEL_110;
    }

    goto LABEL_118;
  }

  v31 = v14 < 0 || (v14 & 0x4000000000000000) != 0;
  if (v31)
  {
    v32 = sub_21CB85FA4();
    if (v32 <= 1)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v32 = *(v14 + 16);
    if (v32 <= 1)
    {
LABEL_72:
      if (!v32)
      {
        goto LABEL_210;
      }

      if (v32 == 1)
      {
        sub_21CB81014();
        v9 = sub_21CB81004();
        (*(v4 + 8))(v6, v3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_21CBA15B0;
        if (v31)
        {
          v33 = sub_21CB85FA4();
        }

        else
        {
          v33 = *(v14 + 16);
        }

        if (v33)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v72 = MEMORY[0x21CF15BD0](0, v14);
          }

          else
          {
            if (!*(v14 + 16))
            {
LABEL_414:
              __break(1u);
              goto LABEL_415;
            }

            v72 = *(v14 + 32);
          }

          v73 = v72;

          v74 = [v73 displayName];

          v75 = sub_21CB855C4();
          v77 = v76;

          v40 = MEMORY[0x277D837D0];
          *(v18 + 56) = MEMORY[0x277D837D0];
          v41 = sub_21C7C0050();
          *(v18 + 64) = v41;
          *(v18 + 32) = v75;
          *(v18 + 40) = v77;
          v42 = [v343 displayName];
          if (v42)
          {
LABEL_110:
            v67 = v42;
            v68 = sub_21CB855C4();
            v70 = v69;

            v71 = (v18 + 72);
            *(v18 + 96) = v40;
            *(v18 + 104) = v41;
            if (v70)
            {
              *v71 = v68;
LABEL_120:
              *(v18 + 80) = v70;
LABEL_357:
              sub_21CB85594();

              return;
            }

LABEL_119:
            *v71 = 0;
            v70 = 0xE000000000000000;
            goto LABEL_120;
          }

LABEL_118:
          v71 = (v18 + 72);
          *(v18 + 96) = v40;
          *(v18 + 104) = v41;
          goto LABEL_119;
        }

        goto LABEL_382;
      }

      goto LABEL_312;
    }
  }

  if (v32 == 2)
  {
    sub_21CB81014();
    v290 = sub_21CB81004();
    (*(v4 + 8))(v6, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_21CBA15A0;
    if (v31)
    {
      v291 = sub_21CB85FA4();
    }

    else
    {
      v291 = *(v14 + 16);
    }

    if (v291)
    {
      v344 = v290;
      if ((v14 & 0xC000000000000001) != 0)
      {
        v307 = MEMORY[0x21CF15BD0](0, v14);
      }

      else
      {
        if (!*(v14 + 16))
        {
LABEL_417:
          __break(1u);
          goto LABEL_418;
        }

        v307 = *(v14 + 32);
      }

      v308 = v307;
      v309 = [v307 displayName];

      v310 = sub_21CB855C4();
      v312 = v311;

      v103 = MEMORY[0x277D837D0];
      *(v18 + 56) = MEMORY[0x277D837D0];
      v104 = sub_21C7C0050();
      *(v18 + 64) = v104;
      *(v18 + 32) = v310;
      *(v18 + 40) = v312;
      if ((v14 & 0xC000000000000001) != 0)
      {
        v313 = MEMORY[0x21CF15BD0](1, v14);
      }

      else
      {
        if (*(v14 + 16) < 2uLL)
        {
LABEL_432:
          __break(1u);
          goto LABEL_433;
        }

        v313 = *(v14 + 40);
      }

      v330 = v313;

      v331 = [v330 displayName];

      v332 = sub_21CB855C4();
      v334 = v333;

      *(v18 + 96) = v103;
      *(v18 + 104) = v104;
      *(v18 + 72) = v332;
      *(v18 + 80) = v334;
      v119 = [v343 displayName];
      if (!v119)
      {
        goto LABEL_349;
      }

      goto LABEL_340;
    }

    goto LABEL_385;
  }

  if (v32 != 3)
  {
LABEL_312:
    sub_21CB81014();
    v288 = sub_21CB81004();
    (*(v4 + 8))(v6, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_21CBA15A0;
    if (v31)
    {
      v289 = sub_21CB85FA4();
    }

    else
    {
      v289 = *(v14 + 16);
    }

    if (!v289)
    {
      goto LABEL_376;
    }

    v344 = v288;
    if ((v14 & 0xC000000000000001) != 0)
    {
      v292 = MEMORY[0x21CF15BD0](0, v14);
    }

    else
    {
      if (!*(v14 + 16))
      {
LABEL_408:
        __break(1u);
        goto LABEL_409;
      }

      v292 = *(v14 + 32);
    }

    v293 = v292;
    v294 = [v292 displayName];

    v295 = sub_21CB855C4();
    v297 = v296;

    v103 = MEMORY[0x277D837D0];
    *(v18 + 56) = MEMORY[0x277D837D0];
    v104 = sub_21C7C0050();
    *(v18 + 64) = v104;
    *(v18 + 32) = v295;
    *(v18 + 40) = v297;
    if ((v14 & 0xC000000000000001) != 0)
    {
      v298 = MEMORY[0x21CF15BD0](1, v14);
    }

    else
    {
      if (*(v14 + 16) < 2uLL)
      {
LABEL_426:
        __break(1u);
        goto LABEL_427;
      }

      v298 = *(v14 + 40);
    }

    v314 = v298;

    v315 = [v314 displayName];

    v316 = sub_21CB855C4();
    v318 = v317;

    *(v18 + 96) = v103;
    *(v18 + 104) = v104;
    *(v18 + 72) = v316;
    *(v18 + 80) = v318;
    v119 = [v343 displayName];
    if (v119)
    {
      goto LABEL_340;
    }

LABEL_349:
    v323 = (v18 + 112);
    *(v18 + 136) = v103;
    *(v18 + 144) = v104;
    goto LABEL_350;
  }

  sub_21CB81014();
  v286 = sub_21CB81004();
  (*(v4 + 8))(v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21CBA1590;
  if (v31)
  {
    v287 = sub_21CB85FA4();
  }

  else
  {
    v287 = *(v14 + 16);
  }

  if (!v287)
  {
    goto LABEL_384;
  }

  v299 = v14 & 0xC000000000000001;
  v344 = v286;
  if ((v14 & 0xC000000000000001) != 0)
  {
    v300 = MEMORY[0x21CF15BD0](0, v14);
  }

  else
  {
    if (!*(v14 + 16))
    {
LABEL_416:
      __break(1u);
      goto LABEL_417;
    }

    v300 = *(v14 + 32);
  }

  v301 = v300;
  v302 = [v300 displayName];

  v303 = sub_21CB855C4();
  v305 = v304;

  v94 = MEMORY[0x277D837D0];
  *(v18 + 56) = MEMORY[0x277D837D0];
  v95 = sub_21C7C0050();
  *(v18 + 64) = v95;
  *(v18 + 32) = v303;
  *(v18 + 40) = v305;
  if (v299)
  {
    v306 = MEMORY[0x21CF15BD0](1, v14);
  }

  else
  {
    if (*(v14 + 16) < 2uLL)
    {
LABEL_431:
      __break(1u);
      goto LABEL_432;
    }

    v306 = *(v14 + 40);
  }

  v324 = v306;
  v325 = [v306 displayName];

  v326 = sub_21CB855C4();
  v328 = v327;

  *(v18 + 96) = v94;
  *(v18 + 104) = v95;
  *(v18 + 72) = v326;
  *(v18 + 80) = v328;
  if (v299)
  {
    v329 = MEMORY[0x21CF15BD0](2, v14);
    goto LABEL_353;
  }

  if (*(v14 + 16) >= 3uLL)
  {
    v329 = *(v14 + 48);
LABEL_353:
    v335 = v329;

    v336 = [v335 displayName];

    v337 = sub_21CB855C4();
    v339 = v338;

    *(v18 + 136) = v94;
    *(v18 + 144) = v95;
    *(v18 + 112) = v337;
    *(v18 + 120) = v339;
    v125 = [v343 displayName];
    if (!v125)
    {
LABEL_354:
      v228 = (v18 + 152);
      *(v18 + 176) = v94;
      *(v18 + 184) = v95;
      goto LABEL_355;
    }

LABEL_256:
    v224 = v125;
    v225 = sub_21CB855C4();
    v227 = v226;

    v228 = (v18 + 152);
    *(v18 + 176) = v94;
    *(v18 + 184) = v95;
    if (v227)
    {
      *v228 = v225;
LABEL_356:
      *(v18 + 160) = v227;
      goto LABEL_357;
    }

LABEL_355:
    *v228 = 0;
    v227 = 0xE000000000000000;
    goto LABEL_356;
  }

LABEL_436:
  __break(1u);
}

uint64_t sub_21C7BFCA4(void *a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 credentialTypes] == 4)
  {
    return 0;
  }

  sub_21CB81014();
  v7 = sub_21CB81004();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_21C7BFE38(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 credentialTypes];
  sub_21CB81014();
  sub_21CB81004();
  (*(v7 + 8))(v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21CBA0690;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_21C7C0050();
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;

  v12 = sub_21CB85594();

  return v12;
}

unint64_t sub_21C7C0050()
{
  result = qword_27CDEBE30;
  if (!qword_27CDEBE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEBE30);
  }

  return result;
}

uint64_t sub_21C7C00A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FF4();
  v11 = *(v5 + 8);
  v11(v7, v4);
  v11(v10, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21CBA0690;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_21C7C0050();
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;

  v13 = sub_21CB85594();

  return v13;
}

uint64_t sub_21C7C0290(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v38 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    v34 = sub_21CB85FA4();
    if (!v34)
    {
      goto LABEL_42;
    }

    v11 = v34;
    if (v34 >= 1)
    {
      goto LABEL_3;
    }

    __break(1u);
LABEL_40:
    v17 = MEMORY[0x21CF15BD0](0, a1);
LABEL_19:
    v18 = v17;
    v19 = [v17 effectiveTitle];

    v20 = sub_21CB855C4();
    v22 = v21;

    if (v3 == 3)
    {
      if (a3)
      {
        goto LABEL_30;
      }
    }

    else if (v3 == 2)
    {
      if (a3)
      {
        goto LABEL_30;
      }
    }

    else if (a3)
    {
LABEL_30:

      v26 = v38;
      sub_21CB81014();
      sub_21CB81004();
      (*(v8 + 8))(v26, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21CBA15B0;
      v28 = MEMORY[0x277D837D0];
      *(v27 + 56) = MEMORY[0x277D837D0];
      v29 = sub_21C7C0050();
      *(v27 + 32) = v20;
      *(v27 + 40) = v22;
      *(v27 + 96) = v28;
      *(v27 + 104) = v29;
      *(v27 + 64) = v29;
      *(v27 + 72) = a2;
      *(v27 + 80) = a3;
      v25 = sub_21CB85594();
      goto LABEL_35;
    }

    v31 = v38;
    sub_21CB81014();
    sub_21CB81004();
    (*(v8 + 8))(v31, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_21CBA0690;
    *(v32 + 56) = MEMORY[0x277D837D0];
    *(v32 + 64) = sub_21C7C0050();
    *(v32 + 32) = v20;
    *(v32 + 40) = v22;
    v25 = sub_21CB85594();
    goto LABEL_35;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    v3 = 0;
    goto LABEL_15;
  }

LABEL_3:
  v35 = v7;
  v36 = v8;
  v37 = a2;
  v12 = a3;
  v3 = 0;
  v13 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x21CF15BD0](v13, a1);
    }

    else
    {
      v14 = *(a1 + 8 * v13 + 32);
    }

    v15 = v14;
    ++v13;
    v16 = [v14 credentialTypes];

    v3 |= v16;
  }

  while (v11 != v13);
  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  a3 = v12;
  v8 = v36;
  a2 = v37;
  v7 = v35;
  if (!(a1 >> 62))
  {
LABEL_15:
    if (*(v10 + 16) == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  while (sub_21CB85FA4() == 1)
  {
LABEL_16:
    if ((a1 & 0xC000000000000001) != 0)
    {
      goto LABEL_40;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v17 = *(a1 + 32);
      goto LABEL_19;
    }

    __break(1u);
LABEL_42:
    v3 = 0;
  }

LABEL_10:
  if (v3 == 3)
  {
    if (a3)
    {
      goto LABEL_26;
    }

LABEL_32:
    v30 = v38;
    goto LABEL_33;
  }

  if (v3 != 2)
  {
    if (a3)
    {
LABEL_26:

      v23 = v38;
      sub_21CB81014();
      sub_21CB81004();
      (*(v8 + 8))(v23, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_21CBA0690;
      *(v24 + 56) = MEMORY[0x277D837D0];
      *(v24 + 64) = sub_21C7C0050();
      *(v24 + 32) = a2;
      *(v24 + 40) = a3;
      v25 = sub_21CB85594();
LABEL_35:

      return v25;
    }

    goto LABEL_32;
  }

  if (a3)
  {
    goto LABEL_26;
  }

  v30 = v38;
LABEL_33:
  sub_21CB81014();
  v25 = sub_21CB81004();
  (*(v8 + 8))(v30, v7);
  return v25;
}

uint64_t sub_21C7C08A8(unint64_t a1, uint64_t a2)
{
  v80 = sub_21CB81024();
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v5 - 8);
  v86 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v75 - v8;
  v10 = sub_21CB85C44();
  v81 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v77 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v85 = &v75 - v15;
  v88 = MEMORY[0x277D84F90];
  v76 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_95;
  }

  v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v82 = v13;
  v87 = a1;
  if (v16)
  {
    LODWORD(v84) = a2;
    v17 = 0;
    v18 = a1 & 0xC000000000000001;
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v18)
      {
        v20 = MEMORY[0x21CF15BD0](v17, a1, v14);
      }

      else
      {
        if (v17 >= *(v19 + 16))
        {
          goto LABEL_90;
        }

        v20 = *(a1 + 8 * v17 + 32);
      }

      v21 = v20;
      v22 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      if ([v20 isSavedInSharedGroup])
      {
        a2 = &v88;
        sub_21CB86134();
        sub_21CB86164();
        a1 = v87;
        sub_21CB86174();
        sub_21CB86144();
      }

      else
      {
      }

      ++v17;
    }

    while (v22 != v16);
    v23 = v88;
    a2 = v84;
    if ((v88 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
    {
LABEL_17:
      if ((v23 & 0x4000000000000000) == 0)
      {
        v24 = *(v23 + 16);
        if (v24)
        {
          v13 = *(v23 + 16);
          v25 = v82;
          goto LABEL_22;
        }

        v13 = 0;
        v25 = v82;
        if (a2)
        {
          goto LABEL_22;
        }

LABEL_20:

        return 0;
      }
    }
  }

  v24 = sub_21CB85FA4();
  v25 = v82;
  if (v24 <= 0 && (a2 & 1) == 0)
  {
    goto LABEL_20;
  }

  v13 = sub_21CB85FA4();
LABEL_22:
  v75 = v24;
  v84 = v13;
  if (v13)
  {
    a1 = 0;
    v83 = v23 & 0xC000000000000001;
    v27 = (v81 + 48);
    v28 = (v81 + 32);
    v29 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v83)
      {
        v13 = MEMORY[0x21CF15BD0](a1, v23);
        v30 = (a1 + 1);
        if (__OFADD__(a1, 1))
        {
          goto LABEL_93;
        }
      }

      else
      {
        if (a1 >= *(v23 + 16))
        {
          goto LABEL_94;
        }

        v13 = *(v23 + 8 * a1 + 32);
        v30 = (a1 + 1);
        if (__OFADD__(a1, 1))
        {
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          v74 = v13;
          v16 = sub_21CB85FA4();
          v13 = v74;
          goto LABEL_3;
        }
      }

      a2 = v13;
      v31 = v86;
      sub_21CB85B94();
      sub_21C7C3490(v31, v9);

      if ((*v27)(v9, 1, v25) == 1)
      {
        v13 = sub_21C7C3500(v9);
      }

      else
      {
        v32 = *v28;
        (*v28)(v85, v9, v25);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_21CA4F554(0, v29[2] + 1, 1, v29);
        }

        v34 = v29[2];
        v33 = v29[3];
        a2 = v34 + 1;
        if (v34 >= v33 >> 1)
        {
          v29 = sub_21CA4F554((v33 > 1), v34 + 1, 1, v29);
        }

        v29[2] = a2;
        v35 = v29 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v34;
        v25 = v82;
        v13 = (v32)(v35, v85, v82);
      }

      ++a1;
      if (v30 == v84)
      {
        goto LABEL_39;
      }
    }
  }

  v29 = MEMORY[0x277D84F90];
LABEL_39:
  v36 = sub_21CB00D70(v29);

  v37 = *(v36 + 16);
  if (!v37)
  {

    v38 = MEMORY[0x277D84F90];
    v41 = v84;
    if (v84)
    {
      goto LABEL_42;
    }

LABEL_55:

    goto LABEL_56;
  }

  v38 = sub_21CAC8AB8(*(v36 + 16), 0);
  sub_21C8974A8(&v88, &v38[(*(v81 + 80) + 32) & ~*(v81 + 80)], v37, v36);
  v40 = v39;
  result = sub_21C6F1E7C(v88);
  v41 = v84;
  if (v40 != v37)
  {
    __break(1u);
    goto LABEL_100;
  }

  if (!v84)
  {
    goto LABEL_55;
  }

LABEL_42:
  if (v41 >= 1)
  {
    v42 = 0;
    v43 = 0;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x21CF15BD0](v43, v23);
      }

      else
      {
        v44 = *(v23 + 8 * v43 + 32);
      }

      v45 = v44;
      ++v43;
      v46 = [v44 credentialTypes];

      v42 |= v46;
    }

    while (v41 != v43);

    if (v42 == 3)
    {
      v49 = *(v38 + 2);
      if (v49 != 1)
      {
        if (!v49)
        {

          if (v76)
          {
            sub_21CB85FA4();
          }

          v56 = (v78 + 8);
          goto LABEL_86;
        }

        goto LABEL_78;
      }

      v61 = v81;
      v62 = v77;
      (*(v81 + 16))(v77, &v38[(*(v61 + 80) + 32) & ~*(v61 + 80)], v25);

      v63 = [objc_opt_self() sharedProvider];
      v64 = sub_21CB85D84();

      (*(v61 + 8))(v62, v25);
      if (v64)
      {
        v65 = [v64 displayName];

        if (v65)
        {
          a2 = sub_21CB855C4();
          v18 = v66;

          a1 = v78 + 8;
          v70 = v79;
LABEL_92:
          sub_21CB81014();
          sub_21CB81004();
          (*a1)(v70, v80);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
          v71 = swift_allocObject();
          *(v71 + 16) = xmmword_21CBA15B0;
          v72 = MEMORY[0x277D837D0];
          *(v71 + 56) = MEMORY[0x277D837D0];
          v73 = sub_21C7C0050();
          *(v71 + 32) = a2;
          *(v71 + 40) = v18;
          *(v71 + 96) = v72;
          *(v71 + 104) = v73;
          *(v71 + 64) = v73;
          *(v71 + 72) = a2;
          *(v71 + 80) = v18;

          v68 = sub_21CB85594();

          return v68;
        }
      }

      v56 = (v78 + 8);
      goto LABEL_86;
    }

    if (v42 == 2)
    {
      v47 = *(v38 + 2);
      if (v47 != 1)
      {
        if (!v47)
        {

          if (v76)
          {
            sub_21CB85FA4();
          }

          v56 = (v78 + 8);
          goto LABEL_86;
        }

LABEL_78:

        v67 = v79;
        sub_21CB81014();
        v68 = sub_21CB81004();
        (*(v78 + 8))(v67, v80);
        return v68;
      }

      v57 = v81;
      v58 = v77;
      (*(v81 + 16))(v77, &v38[(*(v57 + 80) + 32) & ~*(v57 + 80)], v25);

      v59 = [objc_opt_self() sharedProvider];
      v60 = sub_21CB85D84();

      (*(v57 + 8))(v58, v25);
      if (v60)
      {
        v54 = [v60 displayName];

        if (v54)
        {
LABEL_66:
          a2 = sub_21CB855C4();
          v18 = v55;

          a1 = v78 + 8;
LABEL_91:
          v70 = v79;
          goto LABEL_92;
        }
      }

      v56 = (v78 + 8);
LABEL_86:
      v69 = v79;
      goto LABEL_87;
    }

LABEL_56:
    v48 = *(v38 + 2);
    if (v48 != 1)
    {
      if (!v48)
      {

        if (v76)
        {
          sub_21CB85FA4();
        }

        v56 = (v78 + 8);
        goto LABEL_86;
      }

      goto LABEL_78;
    }

    v50 = v81;
    v51 = v77;
    (*(v81 + 16))(v77, &v38[(*(v50 + 80) + 32) & ~*(v50 + 80)], v25);

    v52 = [objc_opt_self() sharedProvider];
    v53 = sub_21CB85D84();

    (*(v50 + 8))(v51, v25);
    if (v53)
    {
      v54 = [v53 displayName];

      if (v54)
      {
        goto LABEL_66;
      }
    }

    v56 = (v78 + 8);
    if (v75 != 1)
    {
      v69 = v79;
LABEL_87:
      sub_21CB81014();
      v68 = sub_21CB81004();
      (*v56)(v69, v80);
      return v68;
    }

    goto LABEL_86;
  }

LABEL_100:
  __break(1u);
  return result;
}

id sub_21C7C15C0(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_21C7C0290(a1, a2, a3);
  if (v6)
  {
    sub_21C7C08A8(a1, a4 & 1);
    if (v7)
    {
      v8 = sub_21CB85584();

      v9 = sub_21CB85584();

      v10 = [objc_allocWithZone(MEMORY[0x277D49A80]) initWithFirst:v8 second:v9];

      return v10;
    }
  }

  return 0;
}

uint64_t sub_21C7C1684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 2)
  {
    if (a1 == 2)
    {
      if (a3)
      {
        goto LABEL_12;
      }

LABEL_13:
      sub_21CB81014();
      v11 = sub_21CB81004();
      (*(v7 + 8))(v9, v6);
      return v11;
    }

    goto LABEL_9;
  }

  if (a1 != 3)
  {
    if (a1 == 4)
    {
      if (a3)
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    }

LABEL_9:
    if (a3)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (!a3)
  {
    goto LABEL_13;
  }

LABEL_12:

  sub_21CB81014();
  sub_21CB81004();
  (*(v7 + 8))(v9, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21CBA0690;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_21C7C0050();
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  v11 = sub_21CB85594();

  return v11;
}

uint64_t sub_21C7C196C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != 3)
  {
    if (a1 == 2)
    {
      if (a3)
      {
        goto LABEL_8;
      }
    }

    else if (a3)
    {
      goto LABEL_8;
    }

LABEL_9:
    sub_21CB81014();
    v11 = sub_21CB81004();
    (*(v7 + 8))(v9, v6);
    return v11;
  }

  if (!a3)
  {
    goto LABEL_9;
  }

LABEL_8:

  sub_21CB81014();
  sub_21CB81004();
  (*(v7 + 8))(v9, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21CBA0690;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_21C7C0050();
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  v11 = sub_21CB85594();

  return v11;
}

unint64_t sub_21C7C1BFC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result >> 62;
  if (result >> 62)
  {
    v12 = a3;
    result = sub_21CB85FA4();
    a3 = v12;
    v5 = result;
    v14 = a2;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v6 = a3;
    v7 = 0;
    goto LABEL_11;
  }

  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  v14 = a2;
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v5 < 1)
  {
    __break(1u);
    return result;
  }

  v6 = a3;
  v7 = 0;
  v8 = 0;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x21CF15BD0](v8, v3);
    }

    else
    {
      v9 = *(v3 + 8 * v8 + 32);
    }

    v10 = v9;
    ++v8;
    v11 = [v9 credentialTypes];

    v7 |= v11;
  }

  while (v5 != v8);
LABEL_11:
  if (v4)
  {
    if (sub_21CB85FA4() != 1)
    {
      goto LABEL_13;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
LABEL_13:

    return sub_21C7C196C(v7, v14, v6);
  }

  return sub_21C7C1684(v7, v14, v6);
}

uint64_t sub_21C7C1D78(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {

    result = [a1 credentialTypes];
    if (result > 3)
    {
LABEL_14:
      if ((result - 8) < 2)
      {
        v14 = [a1 customTitle];
        if (v14)
        {
          v15 = v14;
          v16 = sub_21CB855C4();
          v18 = v17;

          v19 = HIBYTE(v18) & 0xF;
          if ((v18 & 0x2000000000000000) == 0)
          {
            v19 = v16 & 0xFFFFFFFFFFFFLL;
          }

          if (v19)
          {
            sub_21CB81014();
            sub_21CB81004();
            (*(v7 + 8))(v10, v6);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
            v20 = swift_allocObject();
            *(v20 + 16) = xmmword_21CBA15B0;
            v21 = MEMORY[0x277D837D0];
            *(v20 + 56) = MEMORY[0x277D837D0];
            v22 = sub_21C7C0050();
            *(v20 + 32) = v16;
            *(v20 + 40) = v18;
            *(v20 + 96) = v21;
            *(v20 + 104) = v22;
            *(v20 + 64) = v22;
            *(v20 + 72) = a2;
            *(v20 + 80) = a3;
LABEL_59:
            v23 = sub_21CB85594();

            return v23;
          }

          goto LABEL_46;
        }

LABEL_47:
        sub_21CB81014();
        sub_21CB81004();
        (*(v7 + 8))(v10, v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_21CBA0690;
        *(v53 + 56) = MEMORY[0x277D837D0];
        *(v53 + 64) = sub_21C7C0050();
        *(v53 + 32) = a2;
        *(v53 + 40) = a3;
        goto LABEL_59;
      }

      if (result == 4)
      {
        sub_21CB81014();
        sub_21CB81004();
        (*(v7 + 8))(v10, v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_21CBA15B0;
        result = [a1 signInWithAppleAccount];
        if (result)
        {
          v24 = result;
          v25 = [result localizedAppName];

          v26 = sub_21CB855C4();
          v28 = v27;

          v29 = MEMORY[0x277D837D0];
          *(v6 + 56) = MEMORY[0x277D837D0];
          v30 = sub_21C7C0050();
          *(v6 + 32) = v26;
          *(v6 + 40) = v28;
          *(v6 + 96) = v29;
LABEL_52:
          *(v6 + 104) = v30;
          *(v6 + 64) = v30;
          *(v6 + 72) = a2;
          *(v6 + 80) = a3;
          goto LABEL_59;
        }

        __break(1u);
        goto LABEL_63;
      }

      goto LABEL_30;
    }

    if (result == 1)
    {
      v31 = [a1 customTitle];
      if (v31)
      {
        v32 = v31;
        v33 = sub_21CB855C4();
        v35 = v34;

        v36 = HIBYTE(v35) & 0xF;
        if ((v35 & 0x2000000000000000) == 0)
        {
          v36 = v33 & 0xFFFFFFFFFFFFLL;
        }

        if (v36)
        {
          sub_21CB81014();
          sub_21CB81004();
          (*(v7 + 8))(v10, v6);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
          v37 = swift_allocObject();
          *(v37 + 16) = xmmword_21CBA15B0;
          v38 = MEMORY[0x277D837D0];
          *(v37 + 56) = MEMORY[0x277D837D0];
          v39 = sub_21C7C0050();
          *(v37 + 32) = v33;
          *(v37 + 40) = v35;
          *(v37 + 96) = v38;
          *(v37 + 104) = v39;
          *(v37 + 64) = v39;
          *(v37 + 72) = a2;
          *(v37 + 80) = a3;
          goto LABEL_59;
        }
      }

      if (![a1 hasValidWebsite])
      {
        goto LABEL_47;
      }

      sub_21CB81014();
      sub_21CB81004();
      (*(v7 + 8))(v10, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_21CBA15B0;
      result = [a1 highLevelDomain];
      if (!result)
      {
        goto LABEL_64;
      }

      goto LABEL_51;
    }

    if (result == 2)
    {
LABEL_32:
      sub_21CB81014();
      sub_21CB81004();
      v41 = *(v7 + 8);
      v7 += 8;
      v41(v10, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_21CBA15B0;
      result = [a1 highLevelDomain];
      if (!result)
      {
        __break(1u);
        goto LABEL_34;
      }

LABEL_51:
      v54 = result;
      v55 = sub_21CB855C4();
      v57 = v56;

      v58 = MEMORY[0x277D837D0];
      *(v6 + 56) = MEMORY[0x277D837D0];
      v30 = sub_21C7C0050();
      *(v6 + 32) = v55;
      *(v6 + 40) = v57;
      *(v6 + 96) = v58;
      goto LABEL_52;
    }

    if (result != 3)
    {
LABEL_30:
      sub_21CB81014();
      sub_21CB81004();
      v40 = *(v7 + 8);
      v7 += 8;
      v40(v10, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_21CBA15B0;
      result = [a1 highLevelDomain];
      if (result)
      {
        goto LABEL_51;
      }

      __break(1u);
      goto LABEL_32;
    }

    sub_21CB81014();
    sub_21CB81004();
    v12 = *(v7 + 8);
    v7 += 8;
    v12(v10, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_21CBA15B0;
    result = [a1 highLevelDomain];
    if (result)
    {
      goto LABEL_51;
    }

    __break(1u);
  }

  result = [a1 credentialTypes];
  if (result > 3)
  {
    if ((result - 8) < 2)
    {
      sub_21CB81014();
      v23 = sub_21CB81004();
      (*(v7 + 8))(v10, v6);
      return v23;
    }

LABEL_34:
    if (result == 4)
    {
      sub_21CB81014();
      sub_21CB81004();
      (*(v7 + 8))(v10, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_21CBA0690;
      result = [a1 signInWithAppleAccount];
      if (!result)
      {
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v42 = result;
      v43 = [result localizedAppName];

      v44 = sub_21CB855C4();
      v46 = v45;

      *(v6 + 56) = MEMORY[0x277D837D0];
      *(v6 + 64) = sub_21C7C0050();
      *(v6 + 32) = v44;
LABEL_58:
      *(v6 + 40) = v46;
      goto LABEL_59;
    }

LABEL_42:
    sub_21CB81014();
    sub_21CB81004();
    v51 = *(v7 + 8);
    v7 += 8;
    v51(v10, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_21CBA0690;
    result = [a1 highLevelDomain];
    if (!result)
    {
      __break(1u);
LABEL_44:
      sub_21CB81014();
      a3 = sub_21CB81004();
      v52 = *(v7 + 8);
      v7 += 8;
      v52(v10, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_21CBA0690;
      result = [a1 highLevelDomain];
      if (!result)
      {
        __break(1u);
LABEL_46:

        goto LABEL_47;
      }
    }

LABEL_57:
    v60 = result;
    v61 = sub_21CB855C4();
    v46 = v62;

    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = sub_21C7C0050();
    *(v6 + 32) = v61;
    goto LABEL_58;
  }

  if (result != 1)
  {
    if (result == 2)
    {
      goto LABEL_44;
    }

    if (result != 3)
    {
      goto LABEL_42;
    }

    sub_21CB81014();
    a3 = sub_21CB81004();
    v13 = *(v7 + 8);
    v7 += 8;
    v13(v10, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_21CBA0690;
    result = [a1 highLevelDomain];
    if (result)
    {
      goto LABEL_57;
    }

    __break(1u);
    goto LABEL_14;
  }

  v47 = [a1 customTitle];
  if (v47)
  {
    v48 = v47;
    a2 = sub_21CB855C4();
    a3 = v49;

    v50 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v50 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v50)
    {
      goto LABEL_47;
    }
  }

  v59 = (v7 + 8);
  if (![a1 hasValidWebsite])
  {
    sub_21CB81014();
    v23 = sub_21CB81004();
    (*v59)(v10, v6);
    return v23;
  }

  sub_21CB81014();
  sub_21CB81004();
  (*v59)(v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21CBA0690;
  result = [a1 highLevelDomain];
  if (result)
  {
    goto LABEL_57;
  }

LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_21C7C2A6C(void *a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[2];
  if (v6 > 1)
  {
    if (v6 == 3)
    {
      sub_21CB81014();
      sub_21CB81004();
      (*(v3 + 8))(v5, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_21CBA15A0;
      v13 = a1[4];
      v12 = a1[5];
      v14 = MEMORY[0x277D837D0];
      *(v11 + 56) = MEMORY[0x277D837D0];
      v15 = sub_21C7C0050();
      *(v11 + 32) = v13;
      *(v11 + 40) = v12;
      *(v11 + 96) = v14;
      *(v11 + 104) = v15;
      v16 = a1[6];
      v17 = a1[7];
      *(v11 + 64) = v15;
      *(v11 + 72) = v16;
      *(v11 + 80) = v17;
      *(v11 + 136) = v14;
      *(v11 + 144) = v15;
      v18 = a1[8];
      v19 = a1[9];
      *(v11 + 112) = v18;
      *(v11 + 120) = v19;

LABEL_10:

      v10 = sub_21CB85594();
      goto LABEL_11;
    }

LABEL_9:
    sub_21CB81014();
    sub_21CB81004();
    (*(v3 + 8))(v5, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_21CBA15B0;
    v22 = a1[4];
    v21 = a1[5];
    v23 = MEMORY[0x277D837D0];
    *(v20 + 56) = MEMORY[0x277D837D0];
    v24 = sub_21C7C0050();
    *(v20 + 32) = v22;
    *(v20 + 40) = v21;
    *(v20 + 96) = v23;
    *(v20 + 104) = v24;
    v25 = a1[6];
    v26 = a1[7];
    *(v20 + 64) = v24;
    *(v20 + 72) = v25;
    *(v20 + 80) = v26;
    goto LABEL_10;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      sub_21CB81014();
      sub_21CB81004();
      (*(v3 + 8))(v5, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_21CBA0690;
      v9 = a1[4];
      v8 = a1[5];
      *(v7 + 56) = MEMORY[0x277D837D0];
      *(v7 + 64) = sub_21C7C0050();
      *(v7 + 32) = v9;
      *(v7 + 40) = v8;

      v10 = sub_21CB85594();
LABEL_11:

      return v10;
    }

    goto LABEL_9;
  }

  sub_21CB81014();
  v10 = sub_21CB81004();
  (*(v3 + 8))(v5, v2);
  return v10;
}

uint64_t sub_21C7C2E34()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if ([objc_opt_self() isInternalInstall])
  {
    v11 = 0xD000000000000027;
    v12 = 0x800000021CB8BC60;
    v9 = v4;
    v10 = v6;
    v9 = sub_21CB857A4();
    v10 = v7;
    sub_21CB856D4();
    return v9;
  }

  return v4;
}

uint64_t sub_21C7C2FB4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  if (a3)
  {
    sub_21CB81004();
    (*(v7 + 8))(v9, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_21CBA0690;
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_21C7C0050();
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;

    v11 = sub_21CB85594();
  }

  else
  {
    v11 = sub_21CB81004();
    (*(v7 + 8))(v9, v6);
  }

  return v11;
}

uint64_t sub_21C7C3490(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7C3500(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C7C36B0()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_21C7C38D4()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v4;
}

id sub_21C7C39D8()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  v4 = sub_21CB85584();

  return v4;
}

uint64_t sub_21C7C3AFC()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_21C7C3D20()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_21C7C3F98()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  sub_21CB81014();
  sub_21CB81014();
  v7 = sub_21CB80FF4();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7;
}

uint64_t sub_21C7C4274()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  sub_21CB81014();
  sub_21CB81014();
  v7 = sub_21CB80FF4();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7;
}

uint64_t sub_21C7C43D8()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  sub_21CB81014();
  sub_21CB81014();
  v7 = sub_21CB80FF4();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7;
}

uint64_t sub_21C7C4678()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_21C7C489C()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_21C7C4AC0()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v4;
}

id sub_21C7C4BDC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  a4(a3, a2);
  v4 = sub_21CB85584();

  return v4;
}

uint64_t sub_21C7C4D50()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_21C7C4E50(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v5 + 8))(v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21CBA0690;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_21C7C0050();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = sub_21CB85594();

  return v9;
}

uint64_t sub_21C7C52AC()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_21C7C54D0()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v4 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v4;
}

id OngoingCredentialSharingStrings.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OngoingCredentialSharingStrings.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OngoingCredentialSharingStrings();
  return objc_msgSendSuper2(&v2, sel_init);
}

id OngoingCredentialSharingStrings.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for OngoingCredentialSharingStrings();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_21C7C56AC(uint64_t a1)
{
  v33 = a1;
  v29 = sub_21CB81024();
  v1 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  MEMORY[0x28223BE20](v12);
  v31 = &v28 - v13;
  MEMORY[0x28223BE20](v14);
  v32 = &v28 - v15;
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v30 = sub_21CB81034();
  v16 = *(v30 - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  v19 = v28;
  sub_21CB81014();
  sub_21CB80FE4();
  v20 = *(v1 + 8);
  v21 = v29;
  v20(v19, v29);
  v20(v5, v21);
  v20(v8, v21);
  v20(v11, v21);
  swift_setDeallocating();
  (*(v16 + 8))(v18 + v17, v30);
  swift_deallocClassInstance();
  v22 = v32;
  sub_21CB81004();
  v20(v31, v21);
  v20(v22, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D83B88];
  *(v23 + 16) = xmmword_21CBA0690;
  v25 = MEMORY[0x277D83C10];
  *(v23 + 56) = v24;
  *(v23 + 64) = v25;
  *(v23 + 32) = v33;
  v26 = sub_21CB85594();

  return v26;
}

uint64_t sub_21C7C5AA8(uint64_t a1)
{
  v32 = a1;
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v28 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = v28 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v28 - v12;
  MEMORY[0x28223BE20](v14);
  v30 = v28 - v15;
  MEMORY[0x28223BE20](v16);
  v31 = v28 - v17;
  v28[1] = "roupsUnavailableAlertTitle";
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v29 = sub_21CB81034();
  v18 = *(v29 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FE4();
  v21 = *(v2 + 8);
  v21(v4, v1);
  v21(v7, v1);
  v21(v10, v1);
  v21(v13, v1);
  swift_setDeallocating();
  (*(v18 + 8))(v20 + v19, v29);
  swift_deallocClassInstance();
  v22 = v31;
  sub_21CB81004();
  v21(v30, v1);
  v21(v22, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D83B88];
  *(v23 + 16) = xmmword_21CBA0690;
  v25 = MEMORY[0x277D83C10];
  *(v23 + 56) = v24;
  *(v23 + 64) = v25;
  *(v23 + 32) = v32;
  v26 = sub_21CB85594();

  return v26;
}

uint64_t PMAccount.highLevelDomain.getter()
{
  v1 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v7 + 24), v6, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v6, v3, type metadata accessor for PMAccount.MockData);
    v8 = *(v3 + 6);

    sub_21C7C6B10(v3, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v9 = *v6;
    v10 = [*v6 highLevelDomain];
    if (v10)
    {
      v11 = v10;
      v8 = sub_21CB855C4();
    }

    else
    {

      return 0;
    }
  }

  return v8;
}

uint64_t sub_21C7C61D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB398, &unk_21CBA1A30);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = &v54 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB2A8, &qword_21CBA1670);
  MEMORY[0x28223BE20](v5 - 8);
  v61 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v54 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3A0, &qword_21CBD0650);
  MEMORY[0x28223BE20](v10 - 8);
  v62 = &v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v12 - 8);
  v55 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v60 = &v54 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2F0, &unk_21CBA1660);
  MEMORY[0x28223BE20](v16 - 8);
  v59 = &v54 - v17;
  v18 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v21);
  v23 = (&v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v26 = (&v54 - v25);
  MEMORY[0x28223BE20](v27);
  v29 = (&v54 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  MEMORY[0x28223BE20](v30 - 8);
  v65 = &v54 - v31;
  v32 = PMAccount.userName.getter();
  v57 = v33;
  v58 = v32;
  v34 = *(PMAccount.sites.getter() + 16);

  if (v34)
  {
    v56 = PMAccount.sites.getter();
  }

  else
  {
    v56 = 0;
  }

  v35 = *(type metadata accessor for PMAccount(0) + 24);
  sub_21C7D3210(v1 + v35, v29, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v29, v20, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v20[v18[15]], v65, &qword_27CDEAF58, &unk_21CBA0980);
    sub_21C7C6B10(v20, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v36 = *v29;
    sub_21CB85BD4();
  }

  sub_21C7D3210(v2 + v35, v26, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v26, v20, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v20[v18[16]], v59, &unk_27CDEC2F0, &unk_21CBA1660);
    sub_21C7C6B10(v20, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v37 = *v26;
    sub_21CB85C14();
  }

  sub_21C7D3210(v2 + v35, v23, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v23, v20, type metadata accessor for PMAccount.MockData);
    v38 = v55;
    sub_21C6EDBAC(&v20[v18[18]], v55, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C7C6B10(v20, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v39 = *v23;
    v38 = v55;
    sub_21CB85B94();
  }

  sub_21C716934(v38, v60, &unk_27CDF20B0, &unk_21CBA0090);
  PMAccount.signInWithAppleAccount.getter(v9);
  v40 = type metadata accessor for PMSignInWithAppleAccount(0);
  v41 = *(*(v40 - 8) + 48);
  if (v41(v9, 1, v40) == 1)
  {
    sub_21C6EA794(v9, &qword_27CDEB2A8, &qword_21CBA1670);
    v42 = sub_21CB85B74();
    (*(*(v42 - 8) + 56))(v62, 1, 1, v42);
  }

  else
  {
    v43 = *(v40 + 20);
    v44 = sub_21CB85B74();
    v45 = *(v44 - 8);
    v46 = &v9[v43];
    v47 = v62;
    (*(v45 + 16))(v62, v46, v44);
    sub_21C7C6B10(v9, type metadata accessor for PMSignInWithAppleAccount);
    (*(v45 + 56))(v47, 0, 1, v44);
  }

  v48 = v61;
  PMAccount.signInWithAppleAccount.getter(v61);
  if (v41(v48, 1, v40) == 1)
  {
    sub_21C6EA794(v48, &qword_27CDEB2A8, &qword_21CBA1670);
    v49 = sub_21CB85B44();
    (*(*(v49 - 8) + 56))(v63, 1, 1, v49);
  }

  else
  {
    v50 = sub_21CB85B44();
    v51 = *(v50 - 8);
    v52 = v63;
    (*(v51 + 16))(v63, v48, v50);
    sub_21C7C6B10(v48, type metadata accessor for PMSignInWithAppleAccount);
    (*(v51 + 56))(v52, 0, 1, v50);
  }

  return sub_21CB85C94();
}

uint64_t PMAccount.savedAccount.getter()
{
  v1 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v4 + 24), v3, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v3;
  }

  sub_21C7C6B10(v3, type metadata accessor for PMAccount.Storage);
  return 0;
}

uint64_t sub_21C7C6B10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PMAccount.userName.getter()
{
  v1 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v7 + 24), v6, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v6, v3, type metadata accessor for PMAccount.MockData);
    if (v3[1])
    {
      v8 = *v3;
      v9 = v3[1];
    }

    else
    {
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    sub_21C7C6B10(v3, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v10 = *v6;
    if ([*v6 credentialTypes] == 4)
    {
      v11 = sub_21C7CBA64();
      if (v12)
      {
        v8 = v11;
        v9 = v12;
        v13 = HIBYTE(v12) & 0xF;
        if ((v12 & 0x2000000000000000) == 0)
        {
          v13 = v11 & 0xFFFFFFFFFFFFLL;
        }

        if (v13)
        {

          goto LABEL_19;
        }
      }

      else
      {
        v17 = sub_21C7CC0C8(&selRef_aa_fullName);
        if (v18)
        {
          v8 = v17;
          v9 = v18;

          goto LABEL_19;
        }
      }
    }

    else
    {
      v14 = [v10 user];
      if (v14)
      {
        v15 = v14;
        v8 = sub_21CB855C4();
        v9 = v16;

        goto LABEL_19;
      }
    }

    v8 = 0;
    v9 = 0xE000000000000000;
  }

LABEL_19:

  v19 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v19 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {

    return 0;
  }

  return v8;
}

uint64_t sub_21C7C6DBC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_21CB85794();
  }

  else
  {
    return 0;
  }
}

void *sub_21C7C6E04(uint64_t a1)
{
  v2 = sub_21CB85F24();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_21CAA20C0(v2, *(a1 + 36), 0, a1);
  sub_21C79B008(v4, v5, v6);
  return v4;
}

void *sub_21C7C6E94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_21CB85F24();
  if (result == (1 << *(a1 + 32)))
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    result = sub_21CA91C78(result, *(a1 + 36), a1, v7);
    v5 = v7[0];
    v6 = v7[1];
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_21C7C6F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB85F24();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_21CA91CD0(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = _s24AccountContainerIdentityOMa(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t PMAccount.additionalSites.getter()
{
  v1 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v4 + 24), v3, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7C6B10(v3, type metadata accessor for PMAccount.Storage);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v6 = *v3;
    v7 = [v6 additionalSites];
    v8 = sub_21CB85824();

    return v8;
  }
}

void PMAccount.passkeyCredentialID.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v1 + *(v9 + 24), v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v8, v5, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v5[*(v3 + 60)], a1, &qword_27CDEAF58, &unk_21CBA0980);
    sub_21C7C6B10(v5, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v10 = *v8;
    sub_21CB85BD4();
  }
}

id PMAccount.credentialTypes.getter()
{
  v1 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v4 + 24), v3, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7C6B10(v3, type metadata accessor for PMAccount.Storage);
    return 0;
  }

  else
  {
    v6 = *v3;
    v7 = [v6 credentialTypes];

    return v7;
  }
}

void *PMAccount.totpGenerator.getter()
{
  v1 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PMAccount(0);
  sub_21C7D3210(v0 + *(v7 + 24), v6, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7D3278(v6, v3, type metadata accessor for PMAccount.MockData);
    v8 = *&v3[*(v1 + 56)];
    v9 = v8;
    sub_21C7C6B10(v3, type metadata accessor for PMAccount.MockData);
    return v8;
  }

  v10 = *v6;
  v11 = [*v6 totpGenerators];
  sub_21C6E8F4C(0, &qword_27CDEB030, 0x277D49B78);
  v12 = sub_21CB85824();

  if (!(v12 >> 62))
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  result = sub_21CB85FA4();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x21CF15BD0](0, v12);
    goto LABEL_8;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v12 + 32);
LABEL_8:
    v8 = v14;

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t PMAccount.MockData.init(user:password:userVisibleDomain:highLevelDomain:creationDate:sites:notesEntry:customTitle:creationDateForPasskey:isOneTimeSharable:totpGenerator:passkeyCredentialID:passkeyRelyingPartyID:passkeyUserHandle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v24 = type metadata accessor for PMAccount.MockData(0);
  v25 = v24[8];
  v39 = v25;
  v26 = sub_21CB80DD4();
  v27 = *(*(v26 - 8) + 56);
  v27(&a9[v25], 1, 1, v26);
  v28 = &a9[v24[10]];
  v29 = &a9[v24[11]];
  v30 = v24[12];
  v27(&a9[v30], 1, 1, v26);
  v31 = v24[15];
  v40 = v24[14];
  v32 = sub_21CB85BB4();
  (*(*(v32 - 8) + 56))(&a9[v31], 1, 1, v32);
  v33 = v24[16];
  v34 = sub_21CB85C04();
  (*(*(v34 - 8) + 56))(&a9[v33], 1, 1, v34);
  v35 = v24[18];
  v36 = &a9[v24[17]];
  v37 = sub_21CB85C44();
  (*(*(v37 - 8) + 56))(&a9[v35], 1, 1, v37);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  sub_21C7D3344(a10, &a9[v39], &unk_27CDED250, &qword_21CBA64C0);
  *&a9[v24[9]] = a11;
  *v28 = a12;
  *(v28 + 1) = a13;
  *v29 = a14;
  *(v29 + 1) = a15;
  sub_21C7D3344(a16, &a9[v30], &unk_27CDED250, &qword_21CBA64C0);
  a9[v24[13]] = a17;
  *&a9[v40] = a18;
  sub_21C7D3344(a19, &a9[v31], &qword_27CDEAF58, &unk_21CBA0980);
  result = sub_21C7D3344(a20, &a9[v33], &unk_27CDEC2F0, &unk_21CBA1660);
  *v36 = a21;
  *(v36 + 1) = a22;
  return result;
}

uint64_t PMAccount.MockData.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v67 = sub_21CB85C44();
  v3 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v56 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v5 - 8);
  v65 = &v52 - v6;
  v7 = sub_21CB85C04();
  v63 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v55 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC2F0, &unk_21CBA1660);
  MEMORY[0x28223BE20](v9 - 8);
  v62 = &v52 - v10;
  v11 = sub_21CB85BB4();
  v60 = *(v11 - 8);
  v61 = v11;
  MEMORY[0x28223BE20](v11);
  v54 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  MEMORY[0x28223BE20](v13 - 8);
  v59 = &v52 - v14;
  v15 = sub_21CB80DD4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v58 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  MEMORY[0x28223BE20](v18 - 8);
  v57 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v52 - v21;
  if (*(v1 + 8))
  {
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  v23 = *(v1 + 24);
  v64 = v7;
  sub_21CB864A4();
  if (v23)
  {
    sub_21CB854C4();
  }

  sub_21CB854C4();
  sub_21CB854C4();
  v24 = type metadata accessor for PMAccount.MockData(0);
  sub_21C6EDBAC(v1 + v24[8], v22, &unk_27CDED250, &qword_21CBA64C0);
  v25 = v16;
  v26 = *(v16 + 48);
  v27 = v26(v22, 1, v15);
  v66 = v3;
  v53 = v25;
  if (v27 == 1)
  {
    sub_21CB864A4();
  }

  else
  {
    v28 = v58;
    (*(v25 + 32))(v58, v22, v15);
    sub_21CB864A4();
    sub_21C7D1210(&qword_27CDEC280, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_21CB85494();
    (*(v25 + 8))(v28, v15);
  }

  v29 = *(v1 + v24[9]);
  MEMORY[0x21CF15F90](*(v29 + 16));
  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = v29 + 40;
    do
    {

      sub_21CB854C4();

      v31 += 16;
      --v30;
    }

    while (v30);
  }

  if (*(v1 + v24[10] + 8))
  {
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  v32 = v66;
  if (*(v1 + v24[11] + 8))
  {
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  v34 = v60;
  v33 = v61;
  v35 = v57;
  sub_21C6EDBAC(v2 + v24[12], v57, &unk_27CDED250, &qword_21CBA64C0);
  if (v26(v35, 1, v15) == 1)
  {
    sub_21CB864A4();
  }

  else
  {
    v36 = v53;
    v37 = v58;
    (*(v53 + 32))(v58, v35, v15);
    sub_21CB864A4();
    sub_21C7D1210(&qword_27CDEC280, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_21CB85494();
    (*(v36 + 8))(v37, v15);
  }

  v38 = v67;
  v39 = v64;
  sub_21CB864A4();
  v40 = *(v2 + v24[14]);
  sub_21CB864A4();
  if (v40)
  {
    v41 = v40;
    sub_21CB85DE4();
  }

  v42 = v63;
  v43 = v59;
  sub_21C6EDBAC(v2 + v24[15], v59, &qword_27CDEAF58, &unk_21CBA0980);
  if ((*(v34 + 48))(v43, 1, v33) == 1)
  {
    sub_21CB864A4();
  }

  else
  {
    v44 = v32;
    v45 = v54;
    (*(v34 + 32))(v54, v43, v33);
    sub_21CB864A4();
    sub_21C7D1210(&qword_27CDEAF60, MEMORY[0x277D49948], MEMORY[0x277D49950]);
    sub_21CB85494();
    v46 = v45;
    v32 = v44;
    v38 = v67;
    (*(v34 + 8))(v46, v33);
  }

  v47 = v62;
  sub_21C6EDBAC(v2 + v24[16], v62, &unk_27CDEC2F0, &unk_21CBA1660);
  if ((*(v42 + 48))(v47, 1, v39) == 1)
  {
    sub_21CB864A4();
  }

  else
  {
    v48 = v55;
    (*(v42 + 32))(v55, v47, v39);
    sub_21CB864A4();
    sub_21C7D1210(&qword_27CDEB2A0, MEMORY[0x277D49960], MEMORY[0x277D49968]);
    sub_21CB85494();
    (*(v42 + 8))(v48, v39);
  }

  if (*(v2 + v24[17] + 8))
  {
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  v49 = v65;
  sub_21C6EDBAC(v2 + v24[18], v65, &unk_27CDF20B0, &unk_21CBA0090);
  if ((*(v32 + 48))(v49, 1, v38) == 1)
  {
    return sub_21CB864A4();
  }

  v51 = v56;
  (*(v32 + 32))(v56, v49, v38);
  sub_21CB864A4();
  sub_21C7D1210(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
  sub_21CB85494();
  return (*(v32 + 8))(v51, v38);
}