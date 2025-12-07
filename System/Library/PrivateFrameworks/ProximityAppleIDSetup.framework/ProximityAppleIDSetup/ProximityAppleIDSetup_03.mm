uint64_t sub_260FE15BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_260FA3F5C(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F90, &unk_2610BF4C0);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_260FE163C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F90, &unk_2610BF4C0);
  *a1 = v3;
}

uint64_t AKAppleIDAuthenticationControllerProtocol.authenticationResult(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v10 = (*(a4 + 8) + **(a4 + 8));
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_260FE17C0;

  return v10(a2, a3, a4);
}

uint64_t sub_260FE17C0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_260FE18F4, 0, 0);
}

uint64_t sub_260FE18F4()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    v1 = sub_260FA9068(MEMORY[0x277D84F90]);
  }

  **(v0 + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_260FE196C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  return MEMORY[0x2822009F8](sub_260FE1990, 0, 0);
}

uint64_t sub_260FE1990()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_260FE1AB8;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE648C8, &unk_2610C2CC0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_260FE1BF8;
  v0[13] = &block_descriptor_0;
  v0[14] = v3;
  [v1 authenticateWithContext:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_260FE1AB8(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {
    v5 = *(*v1 + 144);
    v6 = *(v2 + 8);

    return v6(v5);
  }
}

uint64_t sub_260FE1BF8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
      v9 = sub_2610BC914();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_260FE1D00(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x5264696C61766E69;
  }

  else
  {
    v3 = 0xD000000000000013;
  }

  if (v2)
  {
    v4 = 0x80000002610D18C0;
  }

  else
  {
    v4 = 0xEE0073746C757365;
  }

  if (*a2)
  {
    v5 = 0x5264696C61766E69;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (*a2)
  {
    v6 = 0xEE0073746C757365;
  }

  else
  {
    v6 = 0x80000002610D18C0;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2610BD384();
  }

  return v8 & 1;
}

uint64_t sub_260FE1DB8()
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_260FE1E4C(uint64_t a1)
{
  sub_2610BCA54();
}

uint64_t sub_260FE1ECC(uint64_t a1)
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_260FE1F5C@<X0>(char *a2@<X8>)
{
  v3 = sub_2610BD154();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_260FE1FBC(unint64_t *a1@<X8>)
{
  v2 = 0x80000002610D18C0;
  v3 = 0xD000000000000013;
  if (*v1)
  {
    v3 = 0x5264696C61766E69;
    v2 = 0xEE0073746C757365;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_260FE200C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v3;
  v4 = sub_2610B3F9C(v1);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v6;
}

uint64_t sub_260FE20D4(uint64_t a1)
{
  v2 = sub_260FE5F1C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_260FE2110(uint64_t a1)
{
  v2 = sub_260FE5F1C();

  return MEMORY[0x28211F4A8](a1, v2);
}

id static PASConstants.appProvidedContextDependentSetup.getter()
{
  if (qword_27FE637F0 != -1)
  {
    swift_once();
  }

  v1 = qword_27FE64830;

  return v1;
}

uint64_t sub_260FE21DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  swift_beginAccess();
  sub_260FE609C(v3 + 16, &v6);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &unk_27FE63C00, &qword_2610BEDD0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9E668(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FE610C(v5, v3 + 16);
  swift_endAccess();
}

uint64_t sub_260FE2308(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v7 = a2[3];
  v8 = a2[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  MEMORY[0x28223BE20](v9, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = a3(a1, v11, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v13;
}

uint64_t sub_260FE2410(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4[9] = a1;
  v4[10] = a3;
  v5 = *a2;
  v4[11] = v3;
  v4[12] = v5;
  return MEMORY[0x2822009F8](sub_260FE2438, v3, 0);
}

uint64_t sub_260FE2438()
{
  v67 = v0;
  v1 = *(v0 + 96);
  v2 = sub_2610BCA04();
  sub_260FC7FF8(v2, v3, v1);
  v5 = v4;

  if (v5)
  {
    v6 = sub_2610BC9D4();
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v0 + 96);
  [*(v0 + 80) setUsername_];

  v8 = sub_2610BCA04();
  sub_260FC7FF8(v8, v9, v7);
  v11 = v10;

  if (v11)
  {
    v12 = sub_2610BC9D4();
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v0 + 96);
  [*(v0 + 80) setAltDSID_];

  v14 = sub_2610BCA04();
  sub_260FC7FF8(v14, v15, v13);
  v17 = v16;

  if (v17)
  {
    v18 = sub_2610BC9D4();
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v0 + 80);
  [v19 _setPassword_];

  [v19 setAuthenticationType_];
  [v19 setIsUsernameEditable_];
  [v19 setServiceType_];
  sub_260FE21DC(v0 + 16);
  v20 = *(v0 + 40);
  v21 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v20);
  v66 = 4;
  v22 = (*(v21 + 8))(&v66, v20, v21);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  if (v22)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v23 = sub_2610BC7B4();
    __swift_project_value_buffer(v23, qword_27FE65900);
    v24 = sub_2610BC794();
    v25 = sub_2610BCD84();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_260F97000, v24, v25, "Adding proto account context to bypass shielding, prox setups will bypass shielding", v26, 2u);
      MEMORY[0x2666F8720](v26, -1, -1);
    }

    v27 = *(v0 + 80);

    v28 = [objc_allocWithZone(MEMORY[0x277CF02A8]) init];
    [v27 setProtoAccountContext_];
  }

  v29 = *(v0 + 96);
  v30 = sub_2610BCA04();
  sub_260FC7FF8(v30, v31, v29);
  v33 = v32;

  if (v33)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v34 = sub_2610BC7B4();
    __swift_project_value_buffer(v34, qword_27FE65900);
    v35 = sub_2610BC794();
    v36 = sub_2610BCD84();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_260F97000, v35, v36, "Setting passwordlessToken on auth context.", v37, 2u);
      MEMORY[0x2666F8720](v37, -1, -1);
    }

    v38 = *(v0 + 80);

    v39 = sub_2610BC9D4();

    [v38 setPasswordlessToken_];
  }

  v40 = *(v0 + 96);
  v41 = sub_2610BCA04();
  sub_260FC7FF8(v41, v42, v40);
  v44 = v43;

  if (v44)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v45 = sub_2610BC7B4();
    __swift_project_value_buffer(v45, qword_27FE65900);
    v46 = sub_2610BC794();
    v47 = sub_2610BCD84();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_260F97000, v46, v47, "Setting idmsDataToken on auth context.", v48, 2u);
      MEMORY[0x2666F8720](v48, -1, -1);
    }

    v49 = *(v0 + 80);

    v50 = sub_2610BC9D4();

    [v49 setIdmsDataToken_];
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v51 = *(v0 + 80);
  v52 = sub_2610BC7B4();
  *(v0 + 104) = __swift_project_value_buffer(v52, qword_27FE65900);
  v53 = v51;
  v54 = sub_2610BC794();
  v55 = sub_2610BCD84();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = *(v0 + 80);
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v57 = 141558274;
    *(v57 + 4) = 1752392040;
    *(v57 + 12) = 2112;
    *(v57 + 14) = v56;
    *v58 = v56;
    v59 = v56;
    _os_log_impl(&dword_260F97000, v54, v55, "PASAuthenticator authenticateDependentLocally with: %{mask.hash}@", v57, 0x16u);
    sub_260FA9980(v58, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v58, -1, -1);
    MEMORY[0x2666F8720](v57, -1, -1);
  }

  v60 = *(v0 + 88);

  v62 = v60[19];
  v61 = v60[20];
  __swift_project_boxed_opaque_existential_1(v60 + 16, v62);
  v63 = swift_task_alloc();
  *(v0 + 112) = v63;
  *v63 = v0;
  v63[1] = sub_260FE2B28;
  v64 = *(v0 + 80);

  return AKAppleIDAuthenticationControllerProtocol.authenticationResult(with:)(v0 + 56, v64, v62, v61);
}

uint64_t sub_260FE2B28()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 88);
  if (v0)
  {
    v4 = sub_260FE2DD8;
  }

  else
  {
    v4 = sub_260FE2C54;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_260FE2C54()
{
  v12 = v0;
  v1 = *(v0 + 56);

  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 141558274;
    *(v4 + 4) = 1752392040;
    *(v4 + 12) = 2080;
    *(v0 + 64) = v1;

    v6 = sub_2610BCA34();
    v8 = sub_260FA5970(v6, v7, &v11);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAuthenticator authenticateDependentLocally completed with: %{mask.hash}s", v4, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x2666F8720](v5, -1, -1);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  **(v0 + 72) = v1;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_260FE2DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 72) = a7;
  *(v8 + 80) = v7;
  *(v8 + 112) = a6;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  *(v8 + 32) = a1;
  return MEMORY[0x2822009F8](sub_260FE2E20, v7, 0);
}

uint64_t sub_260FE2E20()
{
  v26 = v0;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 112);
  v4 = *(v0 + 56);
  v5 = sub_2610BC9D4();
  [v4 setUsername_];

  [v4 setCompanionDevice_];
  [v4 setAnisetteDataProvider_];
  [v4 setIsUsernameEditable_];
  [v4 setShouldAllowAppleIDCreation_];
  [v4 setAuthenticationType_];
  [v4 setShouldUpdatePersistentServiceTokens_];
  [v4 setShouldOfferSecurityUpgrade_];
  [v4 _setProxyingForApp_];
  [v4 setAnticipateEscrowAttempt_];
  [v4 setServiceType_];
  if (v3 == 1)
  {
    [*(v0 + 56) setAppProvidedContext_];
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 56);
  v7 = sub_2610BC7B4();
  *(v0 + 88) = __swift_project_value_buffer(v7, qword_27FE65900);
  v8 = v6;
  v9 = sub_2610BC794();
  v10 = sub_2610BCD84();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 56);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 141558274;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2080;
    v14 = [v11 description];
    v15 = sub_2610BCA04();
    v17 = v16;

    v18 = sub_260FA5970(v15, v17, &v25);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_260F97000, v9, v10, "PASAuthenticator authenticatePersonalAccountLocally with: %{mask.hash}s", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x2666F8720](v13, -1, -1);
    MEMORY[0x2666F8720](v12, -1, -1);
  }

  v19 = *(v0 + 80);
  v21 = v19[19];
  v20 = v19[20];
  __swift_project_boxed_opaque_existential_1(v19 + 16, v21);
  v22 = swift_task_alloc();
  *(v0 + 96) = v22;
  *v22 = v0;
  v22[1] = sub_260FE3170;
  v23 = *(v0 + 56);

  return AKAppleIDAuthenticationControllerProtocol.authenticationResult(with:)(v0 + 16, v23, v21, v20);
}

uint64_t sub_260FE3170()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_260FE3420;
  }

  else
  {
    v4 = sub_260FE329C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_260FE329C()
{
  v12 = v0;
  v1 = *(v0 + 16);

  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 141558274;
    *(v4 + 4) = 1752392040;
    *(v4 + 12) = 2080;
    *(v0 + 24) = v1;

    v6 = sub_2610BCA34();
    v8 = sub_260FA5970(v6, v7, &v11);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAuthenticator authenticatePersonalAccountLocally completed with: %{mask.hash}s", v4, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x2666F8720](v5, -1, -1);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  **(v0 + 32) = v1;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_260FE3438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x2822009F8](sub_260FE3460, v4, 0);
}

uint64_t sub_260FE3460()
{
  v1 = *(v0 + 64);
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_260FE3588;

  return v6(v2, v3);
}

uint64_t sub_260FE3588(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    __asm { BRAA            X1, X16 }
  }

  v6 = *(v3 + 64);

  return MEMORY[0x2822009F8](sub_260FE36D0, v6, 0);
}

uint64_t sub_260FE36D0()
{
  v28 = v0;
  v1 = *(v0 + 80);
  if (v1)
  {
    [*(v0 + 48) setLinkType_];
    if (qword_27FE637F0 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v4 = *(v0 + 40);
    [v4 setAppProvidedContext_];
    [v4 setProxiedDevice_];
    v5 = [v1 aa_altDSID];
    [v4 setAltDSID_];

    [v4 setAnisetteDataProvider_];
    [v4 setNeedsNewChildAccount_];
    [v4 _setProxyingForApp_];
    [v4 setServiceType_];
    [v4 setIsUsernameEditable_];
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 40);
    v7 = sub_2610BC7B4();
    *(v0 + 88) = __swift_project_value_buffer(v7, qword_27FE65900);
    v8 = v6;
    v9 = sub_2610BC794();
    v10 = sub_2610BCD84();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 40);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v27 = v13;
      *v12 = 141558274;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2080;
      v14 = [v11 description];
      v15 = sub_2610BCA04();
      v17 = v16;

      v18 = sub_260FA5970(v15, v17, &v27);

      *(v12 + 14) = v18;
      _os_log_impl(&dword_260F97000, v9, v10, "PASAuthenticator createNewDependentAccount with: %{mask.hash}s", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x2666F8720](v13, -1, -1);
      MEMORY[0x2666F8720](v12, -1, -1);
    }

    v19 = *(v0 + 64);
    v21 = v19[19];
    v20 = v19[20];
    __swift_project_boxed_opaque_existential_1(v19 + 16, v21);
    v22 = swift_task_alloc();
    *(v0 + 96) = v22;
    *v22 = v0;
    v22[1] = sub_260FE3A84;
    v23 = *(v0 + 40);

    return AKAppleIDAuthenticationControllerProtocol.authenticationResult(with:)(v0 + 16, v23, v21, v20);
  }

  else
  {
    sub_260FE4BCC();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_260FE3A84()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_260FE3D54;
  }

  else
  {
    v4 = sub_260FE3BB0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_260FE3BB0()
{
  v14 = v0;
  v1 = *(v0 + 16);

  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 80);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 141558274;
    *(v5 + 4) = 1752392040;
    *(v5 + 12) = 2080;
    *(v0 + 24) = v1;

    v7 = sub_2610BCA34();
    v9 = sub_260FA5970(v7, v8, &v13);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAuthenticator createNewDependentAccount completed with: %{mask.hash}s", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  else
  {
    v10 = *(v0 + 80);
  }

  **(v0 + 32) = v1;
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_260FE3D54()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260FE3DD8()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  v0[11] = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAuthenticator repairLocalAccount", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[10];

  v6 = v5[24];
  v7 = v5[25];
  __swift_project_boxed_opaque_existential_1(v5 + 21, v6);
  v10 = (*(v7 + 8) + **(v7 + 8));
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_260FE3FC0;

  return v10(v6, v7);
}

uint64_t sub_260FE3FC0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 104) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    __asm { BRAA            X2, X16 }
  }

  v6 = *(v3 + 80);

  return MEMORY[0x2822009F8](sub_260FE410C, v6, 0);
}

uint64_t sub_260FE410C()
{
  v1 = v0[13];
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64870, &qword_2610C2730);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2610BF400;
    *(inited + 32) = sub_2610BCA04();
    *(inited + 40) = v3;
    v4 = 0xE000000000000000;
    sub_2610BCF84();
    MEMORY[0x2666F7380](0x100000000000001ALL, 0x80000002610D2F40);
    v5 = [v1 username];
    if (v5)
    {
      v6 = v5;
      v7 = sub_2610BCA04();
      v4 = v8;
    }

    else
    {
      v7 = 0;
    }

    v12 = v0[10];
    MEMORY[0x2666F7380](v7, v4);

    MEMORY[0x2666F7380](0x100000000000002ELL, 0x80000002610D2F60);
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    v13 = sub_260FA9178(inited);
    swift_setDeallocating();
    sub_260FA9980(inited + 32, &qword_27FE64878, &qword_2610C2738);
    v14 = v12[24];
    v15 = v12[25];
    __swift_project_boxed_opaque_existential_1(v12 + 21, v14);
    v16 = sub_260FDFB9C(v13);
    v0[14] = v16;

    v18 = (*(v15 + 24) + **(v15 + 24));
    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_260FE4414;

    return v18(v1, v16, v14, v15);
  }

  else
  {
    sub_260FE4BCC();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    v10 = v0[1];

    return v10(0);
  }
}

uint64_t sub_260FE4414()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_260FE461C;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_260FE453C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_260FE453C(uint64_t a1)
{
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAuthenticator repaired account", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v1 + 104);

  v6 = *(v1 + 8);

  return v6(1);
}

uint64_t sub_260FE461C()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2(0);
}

void *PASAuthenticator.deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 128));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 168));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t PASAuthenticator.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 128));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 168));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_260FE4730(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBF860;

  return sub_260FE2410(a1, a2, a3);
}

uint64_t sub_260FE47E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_260FB6DB4;

  return sub_260FE2DF0(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_260FE48CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_260FBF860;

  return sub_260FE3438(a1, a2, a3, a4);
}

uint64_t sub_260FE4990()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FB727C;

  return sub_260FE3DB8();
}

uint64_t sub_260FE4A20(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = MEMORY[0x28223BE20](a1, a2);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v18 - v13;
  (*(v8 + 32))(&v18 - v13);
  type metadata accessor for PASAuthenticator();
  v15 = swift_allocObject();
  (*(v8 + 16))(v11, v14, a4);
  v16 = sub_260FE4C20(a1, v11, v15, a4, a5);
  (*(v8 + 8))(v14, a4);
  return v16;
}

unint64_t sub_260FE4B78()
{
  result = qword_27FE64838;
  if (!qword_27FE64838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64838);
  }

  return result;
}

unint64_t sub_260FE4BCC()
{
  result = qword_27FE64850;
  if (!qword_27FE64850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64850);
  }

  return result;
}

uint64_t sub_260FE4C20(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a4;
  v19 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63860, &unk_2610C2CE0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0;
  *(a3 + 112) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE648E0, &qword_2610BEEC0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(a3 + 120) = v11;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v12 = sub_2610BC7B4();
  __swift_project_value_buffer(v12, qword_27FE65900);
  v13 = sub_2610BC794();
  v14 = sub_2610BCD54();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_260F97000, v13, v14, "PASAuthenticator init", v15, 2u);
    MEMORY[0x2666F8720](v15, -1, -1);
  }

  sub_260F98E14(a1, a3 + 128);
  sub_260F98E14(&v17, a3 + 168);
  return a3;
}

uint64_t sub_260FE4DD0(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, _BYTE *), uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a2;
  v7 = a1;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = 0;

  while (v11)
  {
LABEL_12:
    sub_260FA9708(*(v7 + 48) + 40 * (__clz(__rbit64(v11)) | (v13 << 6)), v50);
    a3(&v48, v50);
    if (*(v5 + 16))
    {
      v15 = sub_260FA60B4(v50);
      if (v16)
      {
        sub_260FA3F5C(*(v5 + 56) + 32 * v15, v47);
        v17 = v48;
        v18 = v49;
        sub_260FA6A84(v47, v46);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = *v6;
        v20 = v51;
        v43 = v18;
        v22 = sub_260FA5FBC(v17, v18);
        v23 = v20[2];
        v24 = (v21 & 1) == 0;
        v25 = v23 + v24;
        if (__OFADD__(v23, v24))
        {
          goto LABEL_32;
        }

        v26 = v21;
        if (v20[3] >= v25)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v29 = v51;
            if ((v21 & 1) == 0)
            {
              goto LABEL_27;
            }
          }

          else
          {
            sub_261098C00();
            v29 = v51;
            if ((v26 & 1) == 0)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
          sub_261097078(v25, isUniquelyReferenced_nonNull_native);
          v27 = sub_260FA5FBC(v17, v43);
          if ((v26 & 1) != (v28 & 1))
          {
            goto LABEL_34;
          }

          v22 = v27;
          v29 = v51;
          if ((v26 & 1) == 0)
          {
LABEL_27:
            v29[(v22 >> 6) + 8] |= 1 << v22;
            v36 = (v29[6] + 16 * v22);
            *v36 = v17;
            v36[1] = v43;
            sub_260FA6A84(v46, (v29[7] + 32 * v22));
            v37 = v29[2];
            v38 = __OFADD__(v37, 1);
            v39 = v37 + 1;
            if (v38)
            {
              goto LABEL_33;
            }

            v29[2] = v39;
            goto LABEL_29;
          }
        }

        v35 = (v29[7] + 32 * v22);
        __swift_destroy_boxed_opaque_existential_0Tm(v35);
        sub_260FA6A84(v46, v35);

LABEL_29:
        v6 = a2;
        v5 = a5;
        *a2 = v29;
        goto LABEL_6;
      }
    }

    v30 = sub_260FA5FBC(v48, v49);
    if (v31)
    {
      v32 = v30;
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v34 = *v6;
      *&v46[0] = *v6;
      if ((v33 & 1) == 0)
      {
        sub_261098C00();
        v34 = *&v46[0];
      }

      sub_260FA6A84((*(v34 + 56) + 32 * v32), v47);
      sub_261098228(v32, v34);
      *v6 = v34;
    }

    else
    {
      memset(v47, 0, sizeof(v47));
    }

    sub_260FA9980(v47, &qword_27FE63830, &qword_2610BE8E0);
LABEL_6:
    v7 = v44;
    v11 &= v11 - 1;
    sub_260FA9764(v50);
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_2610BD444();
  __break(1u);
  return result;
}

unint64_t sub_260FE50F4()
{
  result = qword_27FE64860;
  if (!qword_27FE64860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64860);
  }

  return result;
}

unint64_t sub_260FE514C()
{
  result = qword_27FE64880;
  if (!qword_27FE64880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64880);
  }

  return result;
}

unint64_t sub_260FE51A4()
{
  result = qword_27FE64888;
  if (!qword_27FE64888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64888);
  }

  return result;
}

unint64_t sub_260FE51F8(uint64_t a1)
{
  result = sub_260FE51A4();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_260FE5230(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_260FE5278(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of AKAppleIDAuthenticationControllerProtocol.authenticate(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBD298;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PASAuthenticatorProtocol.authenticateDependentLocally(with:authContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_260FBF860;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PASAuthenticatorProtocol.personalAuth(withUsername:context:companionDevice:requireAppleMAID:anisetteDataProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 16) + **(a9 + 16));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_260FBF860;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t dispatch thunk of PASAuthenticatorProtocol.createNewDependentAccount(authContext:proxiedDevice:anisetteDataProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_260FBF860;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of PASAuthenticatorProtocol.repairLocalAccount()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF864;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PASAuthenticator.authenticateDependentLocally(with:authContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 144) + **(*v3 + 144));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of PASAuthenticator.personalAuth(withUsername:context:companionDevice:requireAppleMAID:anisetteDataProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = (*(*v7 + 152) + **(*v7 + 152));
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_260FB6DB4;

  return v18(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of PASAuthenticator.createNewDependentAccount(authContext:proxiedDevice:anisetteDataProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 160) + **(*v4 + 160));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_260FBF860;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PASAuthenticator.repairLocalAccount()()
{
  v4 = (*(*v0 + 168) + **(*v0 + 168));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FBD298;

  return v4();
}

unint64_t sub_260FE5EE4(void *a1)
{
  a1[1] = sub_260FE5F1C();
  a1[2] = sub_260FE5F70();
  result = sub_260FE5FC4();
  a1[3] = result;
  return result;
}

unint64_t sub_260FE5F1C()
{
  result = qword_27FE64890;
  if (!qword_27FE64890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64890);
  }

  return result;
}

unint64_t sub_260FE5F70()
{
  result = qword_27FE64898;
  if (!qword_27FE64898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64898);
  }

  return result;
}

unint64_t sub_260FE5FC4()
{
  result = qword_27FE648A0;
  if (!qword_27FE648A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE648A0);
  }

  return result;
}

unint64_t sub_260FE601C()
{
  result = qword_27FE648A8;
  if (!qword_27FE648A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE648A8);
  }

  return result;
}

uint64_t sub_260FE609C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63C00, &qword_2610BEDD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260FE610C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63C00, &qword_2610BEDD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PASTimer.__allocating_init(named:startingAt:execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  PASTimer.init(named:startingAt:execute:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t PASTimer.init(named:startingAt:execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_defaultActor_initialize();
  *(v6 + 136) = 0;
  *(v6 + 144) = 1;
  *(v6 + 168) = 0;
  sub_2610BC574();
  v13 = v12;
  v14 = sub_2610BC5D4();
  (*(*(v14 - 8) + 8))(a3, v14);
  *(v6 + 112) = v13;
  *(v6 + 120) = a1;
  *(v6 + 128) = a2;
  *(v6 + 152) = a4;
  *(v6 + 160) = a5;
  return v6;
}

uint64_t PASTimer.stop(withContext:at:)(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v27 = a1;
  v3 = *v2;
  v4 = sub_2610BC5D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v26 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v3 + 80);
  v8 = sub_2610BCE64();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v25 - v16;
  v18 = sub_2610BCC94();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v9 + 16))(v13, v27, v8);
  v19 = v4;
  (*(v5 + 16))(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v4);
  v20 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v21 = (v10 + *(v5 + 80) + v20) & ~*(v5 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  v23 = v29;
  *(v22 + 4) = v28;
  *(v22 + 5) = v23;
  (*(v9 + 32))(&v22[v20], v13, v8);
  (*(v5 + 32))(&v22[v21], v26, v19);

  sub_261042434(0, 0, v17, &unk_2610C2D00, v22);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_260FE67D0, v2, 0);
}

uint64_t sub_260FE659C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_260FB6DB4;

  return PASTimer.stop(withContext:at:)(a5, a6);
}

uint64_t sub_260FE6648(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2610BCE64() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2610BC5D4() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[5];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_260FB6DB4;

  return sub_260FE659C(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_260FE67D0(uint64_t a1)
{
  v19 = v1;
  v2 = v1[4];
  sub_2610BC574();
  if (*(v2 + 144) == 1)
  {
    v4 = v1[4];
    v5 = v3 - *(v4 + 112);
    *(v4 + 136) = v5;
    *(v2 + 144) = 0;
    v17 = (*(v4 + 152) + **(v4 + 152));
    v6 = swift_task_alloc();
    v1[5] = v6;
    *v6 = v1;
    v6[1] = sub_260FE6A50;
    v7 = v1[2];
    v8.n128_f64[0] = v5;

    return v17(v7, v8);
  }

  else
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v10 = sub_2610BC7B4();
    __swift_project_value_buffer(v10, qword_27FE65900);

    v11 = sub_2610BC794();
    v12 = sub_2610BCD64();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v1[4];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_260FA5970(*(v13 + 120), *(v13 + 128), &v18);
      _os_log_impl(&dword_260F97000, v11, v12, "PASTimer %{public}s already stopped", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x2666F8720](v15, -1, -1);
      MEMORY[0x2666F8720](v14, -1, -1);
    }

    v16 = v1[1];

    return v16();
  }
}

uint64_t sub_260FE6A50()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *PASTimer.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PASTimer.__deallocating_deinit()
{
  PASTimer.deinit();

  return MEMORY[0x282200960](v0);
}

void *sub_260FE6CA4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 1;
  *a2 = *result == 1;
  *(a2 + 8) = v2;
  return result;
}

uint64_t PASFlowStepAllSetContext.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_title);

  return v1;
}

uint64_t PASFlowStepAllSetContext.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_subtitle);

  return v1;
}

uint64_t PASFlowStepAllSetContext.systemImage.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_systemImage);

  return v1;
}

uint64_t PASFlowStepAllSetContext.description.getter()
{
  sub_2610BCF84();
  MEMORY[0x2666F7380](60, 0xE100000000000000);
  swift_getObjectType();
  v0 = sub_2610BD634();
  MEMORY[0x2666F7380](v0);

  MEMORY[0x2666F7380](8250, 0xE200000000000000);
  sub_2610BD0A4();
  MEMORY[0x2666F7380](0x656C746974207B20, 0xEB00000000203D20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66360, &qword_2610C2E00);
  v1 = sub_2610BCA34();
  MEMORY[0x2666F7380](v1);

  MEMORY[0x2666F7380](0x746974627573202CLL, 0xED0000203D20656CLL);

  v2 = sub_2610BCA34();
  MEMORY[0x2666F7380](v2);

  MEMORY[0x2666F7380](0xD000000000000010, 0x80000002610D3030);

  v3 = sub_2610BCA34();
  MEMORY[0x2666F7380](v3);

  MEMORY[0x2666F7380](0x436567616D69202CLL, 0xEF203D20726F6C6FLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE649A0, &unk_2610C2E08);
  v4 = sub_2610BCA34();
  MEMORY[0x2666F7380](v4);

  MEMORY[0x2666F7380](1048387628, 0xE400000000000000);
  return 0;
}

uint64_t PASFlowStepAllSetContext.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_260FAC380(a1, v18);
  if (!v19)
  {
    sub_260FAC3F0(v18);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_title + 8);
  v4 = *&v17[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_title + 8];
  if (v3)
  {
    if (!v4)
    {
      goto LABEL_30;
    }

    v5 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_title) == *&v17[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_title] && v3 == v4;
    if (!v5 && (sub_2610BD384() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v4)
  {
    goto LABEL_30;
  }

  v6 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_subtitle + 8);
  v7 = *&v17[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_subtitle + 8];
  if (v6)
  {
    if (!v7)
    {
      goto LABEL_30;
    }

    v8 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_subtitle) == *&v17[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_subtitle] && v6 == v7;
    if (!v8 && (sub_2610BD384() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v7)
  {
    goto LABEL_30;
  }

  v9 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_systemImage + 8);
  v10 = *&v17[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_systemImage + 8];
  if (v9)
  {
    if (v10 && (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_systemImage) == *&v17[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_systemImage] && v9 == v10 || (sub_2610BD384() & 1) != 0))
    {
      goto LABEL_27;
    }

LABEL_30:

    return 0;
  }

  if (v10)
  {
    goto LABEL_30;
  }

LABEL_27:
  v11 = v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_imageColor;
  v12 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_imageColor);
  v13 = *(v11 + 8);
  v14 = *&v17[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_imageColor];
  v15 = v17[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_imageColor + 8];

  result = v15;
  if ((v13 & 1) == 0)
  {
    return (v12 == v14) & ~v15;
  }

  return result;
}

uint64_t PASFlowStepAllSetContext.hash.getter()
{
  sub_2610BD584();
  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_title + 8))
  {
    sub_2610BD534();
    sub_2610BCA54();
  }

  else
  {
    sub_2610BD534();
  }

  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_subtitle + 8))
  {
    sub_2610BD534();
    sub_2610BCA54();
  }

  else
  {
    sub_2610BD534();
  }

  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_systemImage + 8))
  {
    sub_2610BD534();
    sub_2610BCA54();
  }

  else
  {
    sub_2610BD534();
  }

  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_imageColor + 8) == 1)
  {
    sub_2610BD534();
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_imageColor);
    sub_2610BD534();
    MEMORY[0x2666F7E40](v1);
  }

  return sub_2610BD564();
}

uint64_t static PASFlowStepAllSetContext.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FE64970 = a1;
  return result;
}

Swift::Void __swiftcall PASFlowStepAllSetContext.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_title + 8))
  {
    v3 = sub_2610BC9D4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_subtitle + 8))
  {
    v5 = sub_2610BC9D4();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_systemImage + 8))
  {
    v7 = sub_2610BC9D4();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_imageColor + 8))
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_2610BD364();
  }

  v10 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
  swift_unknownObjectRelease();
}

id PASFlowStepAllSetContext.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_260FE7EE4(a1);

  return v4;
}

id PASFlowStepAllSetContext.init(coder:)(void *a1)
{
  v2 = sub_260FE7EE4(a1);

  return v2;
}

id PASFlowStepAllSetContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PASFlowStepAllSetContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_260FE7AC0()
{
  v1 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepAllSetContextBuilder_imageColor;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_260FE7B0C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepAllSetContextBuilder_imageColor;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

id sub_260FE7BCC()
{
  v1 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepAllSetContextBuilder_title);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  v4 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepAllSetContextBuilder_subtitle);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];
  v7 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepAllSetContextBuilder_systemImage);
  swift_beginAccess();
  v9 = *v7;
  v8 = v7[1];
  v10 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepAllSetContextBuilder_imageColor);
  swift_beginAccess();
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = type metadata accessor for PASFlowStepAllSetContext();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_title];
  *v15 = v3;
  *(v15 + 1) = v2;
  v16 = &v14[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_subtitle];
  *v16 = v6;
  *(v16 + 1) = v5;
  v17 = &v14[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_systemImage];
  *v17 = v9;
  *(v17 + 1) = v8;
  v18 = &v14[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_imageColor];
  *v18 = v11;
  v18[8] = v12;
  v20.receiver = v14;
  v20.super_class = v13;

  return objc_msgSendSuper2(&v20, sel_init);
}

id PASFlowStepAllSetContextBuilder.init()()
{
  v1 = &v0[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepAllSetContextBuilder_title];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepAllSetContextBuilder_subtitle];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepAllSetContextBuilder_systemImage];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepAllSetContextBuilder_imageColor];
  *v4 = 0;
  v4[8] = 1;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for PASFlowStepAllSetContextBuilder();
  return objc_msgSendSuper2(&v6, sel_init);
}

id PASFlowStepAllSetContextBuilder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASFlowStepAllSetContextBuilder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_260FE7E78(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
}

id sub_260FE7EE4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_260FE8484();
  v5 = sub_2610BCE14();
  sub_2610BC9F4();

  v6 = &v2[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_title];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = sub_2610BCE14();
  sub_2610BC9F4();

  v8 = &v2[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_subtitle];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = sub_2610BCE14();
  sub_2610BC9F4();

  v10 = &v2[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_systemImage];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = sub_2610BC9D4();
  v12 = [a1 decodeIntegerForKey_];

  v13 = &v2[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_imageColor];
  *v13 = v12 == 1;
  v13[8] = v12 != 1;
  v15.receiver = v2;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init, 0, 0);
}

unint64_t sub_260FE8114()
{
  result = qword_27FE649D0;
  if (!qword_27FE649D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE649D0);
  }

  return result;
}

unint64_t sub_260FE8484()
{
  result = qword_27FE63F58;
  if (!qword_27FE63F58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE63F58);
  }

  return result;
}

uint64_t PASPickerPresentable.__allocating_init(familyMember:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t static PASPickerPresentable.createChildPresentable()()
{
  result = swift_allocObject();
  *(result + 16) = 0x8000000000000000;
  return result;
}

uint64_t PASPickerPresentable.__allocating_init(account:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1 | 0x4000000000000000;
  return result;
}

uint64_t PASPickerPresentable.altDSID.getter()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_260FEA13C(&v7);
      return 0;
    }

    v2 = type metadata accessor for PASAccountWithImage();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage, &protocol conformance descriptor for PASAccountWithImage);
    v9 = v3;
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v2 = type metadata accessor for PASFamilyMember();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember, &protocol conformance descriptor for PASFamilyMember);
    v9 = v3;
  }

  *&v7 = v1;
  __swift_project_boxed_opaque_existential_1(&v7, v2);
  v4 = *(v3 + 24);

  v5 = v4(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  return v5;
}

uint64_t PASPickerPresentable.__allocating_init(familyMember:imageData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  type metadata accessor for PASFamilyMember();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  *(v6 + 16) = v7;
  return v6;
}

uint64_t PASPickerPresentable.init(familyMember:imageData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PASFamilyMember();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  *(v3 + 16) = v7;
  return v3;
}

uint64_t PASPickerPresentable.__allocating_init(account:imageData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  type metadata accessor for PASAccountWithImage();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v6 + 16) = v7 | 0x4000000000000000;
  return v6;
}

uint64_t PASPickerPresentable.init(account:imageData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PASAccountWithImage();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v3 + 16) = v7 | 0x4000000000000000;
  return v3;
}

uint64_t PASPickerPresentable.dsid.getter()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_260FEA13C(&v7);
      return 0;
    }

    v2 = type metadata accessor for PASAccountWithImage();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage, &protocol conformance descriptor for PASAccountWithImage);
    v9 = v3;
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v2 = type metadata accessor for PASFamilyMember();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember, &protocol conformance descriptor for PASFamilyMember);
    v9 = v3;
  }

  *&v7 = v1;
  __swift_project_boxed_opaque_existential_1(&v7, v2);
  v4 = *(v3 + 16);

  v5 = v4(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  return v5;
}

uint64_t PASPickerPresentable.firstName.getter()
{
  v1 = sub_2610BC634();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v3 = sub_2610BC9B4();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = *(v0 + 16);
  if (v5 == 0x8000000000000000)
  {
    sub_2610BC9C4();
    type metadata accessor for PASSourceFlowController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    sub_2610BC624();
    return sub_2610BCA24();
  }

  if (!(v5 >> 62))
  {
    v9 = type metadata accessor for PASFamilyMember();
    *(&v14 + 1) = v9;
    v10 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember, &protocol conformance descriptor for PASFamilyMember);
    v15 = v10;
    goto LABEL_7;
  }

  if (v5 >> 62 == 1)
  {
    v9 = type metadata accessor for PASAccountWithImage();
    *(&v14 + 1) = v9;
    v10 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage, &protocol conformance descriptor for PASAccountWithImage);
    v15 = v10;
    v5 &= 0x3FFFFFFFFFFFFFFFuLL;
LABEL_7:
    *&v13 = v5;
    __swift_project_boxed_opaque_existential_1(&v13, v9);
    v11 = *(v10 + 32);

    v12 = v11(v9, v10);
    __swift_destroy_boxed_opaque_existential_0Tm(&v13);
    return v12;
  }

  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  sub_260FEA13C(&v13);
  return 0;
}

uint64_t PASPickerPresentable.lastName.getter()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_260FEA13C(&v7);
      return 0;
    }

    v2 = type metadata accessor for PASAccountWithImage();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage, &protocol conformance descriptor for PASAccountWithImage);
    v9 = v3;
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v2 = type metadata accessor for PASFamilyMember();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember, &protocol conformance descriptor for PASFamilyMember);
    v9 = v3;
  }

  *&v7 = v1;
  __swift_project_boxed_opaque_existential_1(&v7, v2);
  v4 = *(v3 + 40);

  v5 = v4(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  return v5;
}

uint64_t PASPickerPresentable.appleID.getter()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_260FEA13C(&v7);
      return 0;
    }

    v2 = type metadata accessor for PASAccountWithImage();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage, &protocol conformance descriptor for PASAccountWithImage);
    v9 = v3;
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v2 = type metadata accessor for PASFamilyMember();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember, &protocol conformance descriptor for PASFamilyMember);
    v9 = v3;
  }

  *&v7 = v1;
  __swift_project_boxed_opaque_existential_1(&v7, v2);
  v4 = *(v3 + 48);

  v5 = v4(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  return v5;
}

uint64_t PASPickerPresentable.accountUsername.getter()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_260FEA13C(&v7);
      return 0;
    }

    v2 = type metadata accessor for PASAccountWithImage();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage, &protocol conformance descriptor for PASAccountWithImage);
    v9 = v3;
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v2 = type metadata accessor for PASFamilyMember();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember, &protocol conformance descriptor for PASFamilyMember);
    v9 = v3;
  }

  *&v7 = v1;
  __swift_project_boxed_opaque_existential_1(&v7, v2);
  v4 = *(v3 + 56);

  v5 = v4(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  return v5;
}

uint64_t PASPickerPresentable.formattedUsername.getter()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_260FEA13C(&v7);
      return 0;
    }

    v2 = type metadata accessor for PASAccountWithImage();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage, &protocol conformance descriptor for PASAccountWithImage);
    v9 = v3;
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v2 = type metadata accessor for PASFamilyMember();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember, &protocol conformance descriptor for PASFamilyMember);
    v9 = v3;
  }

  *&v7 = v1;
  __swift_project_boxed_opaque_existential_1(&v7, v2);
  v4 = *(v3 + 64);

  v5 = v4(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  return v5;
}

uint64_t PASPickerPresentable.memberTypeDescription.getter()
{
  v1 = sub_2610BC634();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v3 = sub_2610BC9B4();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = *(v0 + 16) >> 62;
  if (v5)
  {
    if (v5 == 1)
    {
      sub_2610BC9C4();
      type metadata accessor for PASSourceFlowController();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v7 = [objc_opt_self() bundleForClass_];
      sub_2610BC624();
      return sub_2610BCA24();
    }

    else
    {
      return 0;
    }
  }

  else
  {

    v9 = PASFamilyMember.memberTypeDescription.getter();

    return v9;
  }
}

uint64_t PASPickerPresentable.isMe.getter()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_260FEA13C(&v7);
      v5 = 0;
      return v5 & 1;
    }

    v2 = type metadata accessor for PASAccountWithImage();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage, &protocol conformance descriptor for PASAccountWithImage);
    v9 = v3;
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v2 = type metadata accessor for PASFamilyMember();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember, &protocol conformance descriptor for PASFamilyMember);
    v9 = v3;
  }

  *&v7 = v1;
  __swift_project_boxed_opaque_existential_1(&v7, v2);
  v4 = *(v3 + 72);

  v5 = v4(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  return v5 & 1;
}

uint64_t PASPickerPresentable.imageData.getter()
{
  v1 = *(v0 + 16);
  if (v1 != 0x8000000000000000)
  {
    if (!(v1 >> 62))
    {
      v2 = type metadata accessor for PASFamilyMember();
      *(&v8 + 1) = v2;
      v3 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember, &protocol conformance descriptor for PASFamilyMember);
      v9 = v3;
      goto LABEL_6;
    }

    if (v1 >> 62 == 1)
    {
      v2 = type metadata accessor for PASAccountWithImage();
      *(&v8 + 1) = v2;
      v3 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage, &protocol conformance descriptor for PASAccountWithImage);
      v9 = v3;
      v1 &= 0x3FFFFFFFFFFFFFFFuLL;
LABEL_6:
      *&v7 = v1;
      __swift_project_boxed_opaque_existential_1(&v7, v2);
      v4 = *(v3 + 80);

      v5 = v4(v2, v3);
      __swift_destroy_boxed_opaque_existential_0Tm(&v7);
      return v5;
    }

    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    sub_260FEA13C(&v7);
  }

  return 0;
}

uint64_t PASPickerPresentable.description.getter()
{
  v1 = *(v0 + 16) >> 62;
  v2 = 0x6C616E6F73726570;
  if (v1 != 1)
  {
    v2 = 0x646C696843646461;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x6E65646E65706564;
  }
}

uint64_t PASPickerPresentable.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_260FE9744()
{
  v1 = *(*v0 + 16);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_260FEA13C(&v7);
      return 0;
    }

    v2 = type metadata accessor for PASAccountWithImage();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage, &protocol conformance descriptor for PASAccountWithImage);
    v9 = v3;
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v2 = type metadata accessor for PASFamilyMember();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember, &protocol conformance descriptor for PASFamilyMember);
    v9 = v3;
  }

  *&v7 = v1;
  __swift_project_boxed_opaque_existential_1(&v7, v2);
  v4 = *(v3 + 16);

  v5 = v4(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  return v5;
}

uint64_t sub_260FE98A8()
{
  v1 = *(*v0 + 16);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_260FEA13C(&v7);
      return 0;
    }

    v2 = type metadata accessor for PASAccountWithImage();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage, &protocol conformance descriptor for PASAccountWithImage);
    v9 = v3;
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v2 = type metadata accessor for PASFamilyMember();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember, &protocol conformance descriptor for PASFamilyMember);
    v9 = v3;
  }

  *&v7 = v1;
  __swift_project_boxed_opaque_existential_1(&v7, v2);
  v4 = *(v3 + 24);

  v5 = v4(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  return v5;
}

uint64_t sub_260FE9A3C()
{
  v1 = *(*v0 + 16);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_260FEA13C(&v7);
      return 0;
    }

    v2 = type metadata accessor for PASAccountWithImage();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage, &protocol conformance descriptor for PASAccountWithImage);
    v9 = v3;
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v2 = type metadata accessor for PASFamilyMember();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember, &protocol conformance descriptor for PASFamilyMember);
    v9 = v3;
  }

  *&v7 = v1;
  __swift_project_boxed_opaque_existential_1(&v7, v2);
  v4 = *(v3 + 40);

  v5 = v4(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  return v5;
}

uint64_t sub_260FE9BAC()
{
  v1 = *(*v0 + 16);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_260FEA13C(&v7);
      return 0;
    }

    v2 = type metadata accessor for PASAccountWithImage();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage, &protocol conformance descriptor for PASAccountWithImage);
    v9 = v3;
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v2 = type metadata accessor for PASFamilyMember();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember, &protocol conformance descriptor for PASFamilyMember);
    v9 = v3;
  }

  *&v7 = v1;
  __swift_project_boxed_opaque_existential_1(&v7, v2);
  v4 = *(v3 + 48);

  v5 = v4(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  return v5;
}

uint64_t sub_260FE9D1C()
{
  v1 = *(*v0 + 16);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_260FEA13C(&v7);
      return 0;
    }

    v2 = type metadata accessor for PASAccountWithImage();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage, &protocol conformance descriptor for PASAccountWithImage);
    v9 = v3;
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v2 = type metadata accessor for PASFamilyMember();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember, &protocol conformance descriptor for PASFamilyMember);
    v9 = v3;
  }

  *&v7 = v1;
  __swift_project_boxed_opaque_existential_1(&v7, v2);
  v4 = *(v3 + 56);

  v5 = v4(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  return v5;
}

uint64_t sub_260FE9E8C()
{
  v1 = *(*v0 + 16);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_260FEA13C(&v7);
      return 0;
    }

    v2 = type metadata accessor for PASAccountWithImage();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage, &protocol conformance descriptor for PASAccountWithImage);
    v9 = v3;
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v2 = type metadata accessor for PASFamilyMember();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember, &protocol conformance descriptor for PASFamilyMember);
    v9 = v3;
  }

  *&v7 = v1;
  __swift_project_boxed_opaque_existential_1(&v7, v2);
  v4 = *(v3 + 64);

  v5 = v4(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  return v5;
}

uint64_t sub_260FEA048@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2610BCF94();
  *a1 = result;
  return result;
}

uint64_t _s21ProximityAppleIDSetup20PASPickerPresentableC2eeoiySbAC_ACtFZ_0()
{
  v0 = PASPickerPresentable.altDSID.getter();
  v2 = v1;
  v3 = PASPickerPresentable.altDSID.getter();
  if (v2)
  {
    if (v4)
    {
      if (v0 == v3 && v2 == v4)
      {

        v5 = 1;
      }

      else
      {
        v5 = sub_2610BD384();
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    if (!v4)
    {
      v5 = 1;
      return v5 & 1;
    }

    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_260FEA13C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE656B0, &unk_2610BFCE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_260FEA1A4(uint64_t a1, uint64_t a2)
{
  result = sub_260FEA1FC(&qword_27FE649D8, a2, type metadata accessor for PASPickerPresentable, &protocol conformance descriptor for PASPickerPresentable);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_260FEA1FC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t get_enum_tag_for_layout_string_21ProximityAppleIDSetup20PASPickerPresentableC14RepresentationO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_260FEA2F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_260FEA354(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_260FEA3B4(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_260FEA400@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair__accountProvider);
  swift_beginAccess();
  sub_260FC8F7C(v3 + 16, &v6);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63C70, &unk_2610C0780);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9D258(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63C70, &unk_2610C0780);
  swift_endAccess();
}

uint64_t PASFlowStepManateeRepair.__allocating_init(delegate:familyMemberSelection:shouldSignInForSelf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  swift_allocObject();
  v8 = sub_260FEB8A0(a1, a2, a3, v4);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t PASFlowStepManateeRepair.init(delegate:familyMemberSelection:shouldSignInForSelf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_260FEB8A0(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t PASFlowStepManateeRepair.prepareForPresentation()()
{
  v1[17] = v0;
  v1[18] = sub_2610BCC74();
  v1[19] = sub_2610BCC64();
  v2 = swift_task_alloc();
  v1[20] = v2;
  *v2 = v1;
  v2[1] = sub_260FEA684;

  return sub_26104582C();
}

uint64_t sub_260FEA684()
{
  *(*v1 + 168) = v0;

  v3 = sub_2610BCBF4();
  if (v0)
  {
    v4 = sub_260FEA998;
  }

  else
  {
    v4 = sub_260FEA7DC;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_260FEA7DC()
{

  sub_260FEA400(v0 + 56);
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v1);
  (*(v2 + 16))(v1, v2);
  if (!*(v0 + 120))
  {
    sub_260FA9980(v0 + 96, &unk_27FE641F0, qword_2610C0210);
    v5 = (v0 + 56);
    goto LABEL_5;
  }

  sub_260F98E14((v0 + 96), v0 + 16);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  if ((*(v4 + 16))(v3, v4))
  {
    v5 = (v0 + 16);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    v6 = *(v0 + 8);
    goto LABEL_7;
  }

  v7 = swift_allocObject();
  swift_weakInit();
  sub_260FC3450();
  swift_allocError();
  *v8 = 0xD000000000000042;
  *(v8 + 8) = 0x80000002610D31A0;
  *(v8 + 16) = &unk_2610C30E8;
  *(v8 + 24) = v7;
  *(v8 + 32) = 0;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v6 = *(v0 + 8);
LABEL_7:

  return v6();
}

uint64_t sub_260FEA998()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260FEA9FC(uint64_t a1)
{
  *(v1 + 40) = a1;
  sub_2610BCC74();
  *(v1 + 48) = sub_2610BCC64();
  v3 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_260FEAA94, v3, v2);
}

uint64_t sub_260FEAA94()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_result;
    v3 = *(Strong + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_result);
    *v2 = 1;
    v4 = *(v2 + 8);
    *(v2 + 8) = 0;
    sub_260FEBBC8(v3, v4);
    sub_2610439BC();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t PASFlowStepManateeRepair.repairManatee(withSecurityUpgradeContext:manateeHelperProvider:)(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  return MEMORY[0x2822009F8](sub_260FEAB6C, 0, 0);
}

uint64_t sub_260FEAB6C()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  *(v0 + 152) = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepManateeRepair repairManatee", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 136);
  v6 = *(v0 + 144);

  sub_260FA99E0(v5, v0 + 16);
  v7 = type metadata accessor for PASManateeRepairController();
  swift_allocObject();
  v8 = sub_2610AA964((v0 + 16), sub_2610AA928, 0);
  *(v0 + 160) = v8;
  *(v0 + 80) = v7;
  *(v0 + 88) = &protocol witness table for PASManateeRepairController;
  *(v0 + 56) = v8;
  v9 = OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_manateeRepairController;
  swift_beginAccess();

  sub_260FC3844(v0 + 56, v6 + v9, &qword_27FE649E8, &unk_2610C30F8);
  swift_endAccess();
  v10 = swift_task_alloc();
  *(v0 + 168) = v10;
  *v10 = v0;
  v10[1] = sub_260FEAD88;
  v11 = *(v0 + 128);

  return PASManateeRepairController.repair(featureName:securityUpgradeContext:)(0xD000000000000025, 0x80000002610D31F0, v11);
}

uint64_t sub_260FEAD88()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_260FEB028;
  }

  else
  {
    v2 = sub_260FEAE9C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FEAE9C()
{
  v1 = *(v0 + 144) + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_result;
  v2 = *v1;
  *v1 = 1;
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  sub_260FEBBC8(v2, v3);
  sub_2610BCC74();
  *(v0 + 184) = sub_2610BCC64();
  v5 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_260FEAF58, v5, v4);
}

uint64_t sub_260FEAF58()
{

  sub_2610439BC();

  return MEMORY[0x2822009F8](sub_260FEAFC8, 0, 0);
}

uint64_t sub_260FEAFC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260FEB028()
{
  v19 = v0;
  v1 = v0[22];
  v2 = v1;
  v3 = sub_2610BC794();
  v4 = sub_2610BCD64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[22];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136446210;
    v0[15] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v18);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v3, v4, "PASFlowStepManateeRepair failed with error %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  v12 = v0[18] + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_result;
  v13 = *v12;
  *v12 = v0[22];
  v14 = *(v12 + 8);
  *(v12 + 8) = 1;
  sub_260FEBBC8(v13, v14);
  sub_2610BCC74();
  v0[23] = sub_2610BCC64();
  v16 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_260FEAF58, v16, v15);
}

NSObject *PASFlowStepManateeRepair.nextStep()()
{
  v1 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_result);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_result + 8);
  if (v2 != 255)
  {
    if (v2)
    {
      v3 = *v1;
      sub_260FEBBEC(*v1, *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_result + 8));
      sub_260FEBC04(v3, 1);
      if (qword_27FE63808 != -1)
      {
        swift_once();
      }

      v4 = sub_2610BC7B4();
      __swift_project_value_buffer(v4, qword_27FE65900);
      sub_260FEBC04(v3, 1);
      v5 = sub_2610BC794();
      v6 = sub_2610BCD64();
      sub_260FEBBC8(v3, v2);
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v27 = v8;
        *v7 = 136446210;
        v30 = v3;
        sub_260FEBC04(v3, 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
        v9 = sub_2610BCA34();
        v11 = sub_260FA5970(v9, v10, &v27);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_260F97000, v5, v6, "PASFlowStepManateeRepair failed with error:\n%{public}s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v8);
        MEMORY[0x2666F8720](v8, -1, -1);
        MEMORY[0x2666F8720](v7, -1, -1);
      }

      swift_willThrow();
      sub_260FEBBC8(v3, v2);
      return v5;
    }

    if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_shouldSignInForSelf) == 1)
    {
      sub_260FDD49C(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_familyMemberSelection, &v27);
      if (v29 == 2)
      {
        v17 = v27;
        __swift_destroy_boxed_opaque_existential_0Tm(v28);
        v18 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        v20 = *(v18 + 8);
        type metadata accessor for PASFlowStepSendPersonalAccount(0);
        swift_allocObject();
        v5 = sub_260FC3608(v17, Strong, v20);
        swift_unknownObjectRelease();
        v21 = &qword_27FE64068;
        v22 = type metadata accessor for PASFlowStepSendPersonalAccount;
LABEL_18:
        sub_260FEBC54(v21, v22);
        return v5;
      }

      sub_260FDD4F8(&v27);
    }

    v23 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    v24 = swift_unknownObjectWeakLoadStrong();
    v25 = *(v23 + 8);
    sub_260FDD49C(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_familyMemberSelection, &v27);
    type metadata accessor for PASFlowStepPasscodeBiometricsRequest(0);
    swift_allocObject();
    v5 = sub_2610571A8(v24, v25, &v27);
    swift_unknownObjectRelease();
    v21 = &unk_27FE65BA0;
    v22 = type metadata accessor for PASFlowStepPasscodeBiometricsRequest;
    goto LABEL_18;
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v12 = sub_2610BC7B4();
  __swift_project_value_buffer(v12, qword_27FE65900);
  v13 = sub_2610BC794();
  v14 = sub_2610BCD74();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_260F97000, v13, v14, "PASFlowStepManateeRepair result is nil", v15, 2u);
    MEMORY[0x2666F8720](v15, -1, -1);
  }

  v5 = 0x80000002610D3220;
  sub_260FC3450();
  swift_allocError();
  *v16 = 0xD000000000000026;
  *(v16 + 8) = 0x80000002610D3220;
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = 1;
  swift_willThrow();
  return v5;
}

uint64_t sub_260FEB694()
{
  sub_260FDD4F8(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_familyMemberSelection);
  sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_manateeRepairController, &qword_27FE649E8, &unk_2610C30F8);
  sub_260FEBBC8(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_result + 8));
}

uint64_t PASFlowStepManateeRepair.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  sub_260FDD4F8(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_familyMemberSelection);
  sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_manateeRepairController, &qword_27FE649E8, &unk_2610C30F8);
  sub_260FEBBC8(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_result + 8));

  return v0;
}

uint64_t PASFlowStepManateeRepair.__deallocating_deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_familyMemberSelection;

  sub_260FDD4F8(v2 + v1);
  sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_manateeRepairController, &qword_27FE649E8, &unk_2610C30F8);
  sub_260FEBBC8(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_result + 8));

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_260FEB8A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_manateeRepairController;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0;
  v11 = v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_result;
  *v11 = 0;
  *(v11 + 8) = -1;
  v12 = OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair__authenticator;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE65030, &qword_2610C4080);
  v13 = swift_allocObject();
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0;
  *(v5 + v12) = v13;
  v14 = OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v15 = swift_allocObject();
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0;
  *(v5 + v14) = v15;
  v16 = qword_27FE63808;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_2610BC7B4();
  __swift_project_value_buffer(v17, qword_27FE65900);
  v18 = sub_2610BC794();
  v19 = sub_2610BCD54();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_260F97000, v18, v19, "PASFlowStepManateeRepair init", v20, 2u);
    MEMORY[0x2666F8720](v20, -1, -1);
  }

  sub_260FDD49C(a3, v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_familyMemberSelection);
  v21 = OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_shouldSignInForSelf;
  *(v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_shouldSignInForSelf) = a4 & 1;

  v22 = sub_2610BC794();
  v23 = sub_2610BCD84();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 67240192;
    v25 = *(v5 + v21);

    *(v24 + 4) = v25;

    _os_log_impl(&dword_260F97000, v22, v23, "PASFlowStepManateeRepair shouldSignInForSelf: %{BOOL,public}d", v24, 8u);
    MEMORY[0x2666F8720](v24, -1, -1);
  }

  else
  {
  }

  v26 = sub_26104DC44(a1, a2);
  sub_260FDD4F8(a3);
  return v26;
}

uint64_t sub_260FEBB38()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FB6DB4;

  return sub_260FEA9FC(v0);
}

void sub_260FEBBC8(void *result, char a2)
{
  if (a2 != -1)
  {
    sub_260FEBBE0(result, a2 & 1);
  }
}

void sub_260FEBBE0(id a1, char a2)
{
  if (a2)
  {
  }
}

id sub_260FEBBEC(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_260FEBC04(result, a2 & 1);
  }

  return result;
}

id sub_260FEBC04(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_260FEBC10(uint64_t a1)
{
  result = sub_260FEBC54(&qword_27FE64A10, type metadata accessor for PASFlowStepManateeRepair);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_260FEBC54(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t type metadata accessor for PASFlowStepManateeRepair(uint64_t a1)
{
  result = qword_27FE64A18;
  if (!qword_27FE64A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id PASExtensionDevicePair.__allocating_init(targetDeviceType:sourceDeviceBiometryType:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_targetDeviceType];
  *v8 = a1;
  v8[4] = BYTE4(a1) & 1;
  v9 = &v7[OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_sourceDeviceBiometryType];
  *v9 = a2;
  v9[8] = a3 & 1;
  v11.receiver = v7;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, sel_init);
}

id PASExtensionDevicePair.init(targetDeviceType:sourceDeviceBiometryType:)(uint64_t a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_targetDeviceType];
  *v8 = a1;
  v8[4] = BYTE4(a1) & 1;
  v9 = &v3[OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_sourceDeviceBiometryType];
  *v9 = a2;
  v9[8] = a3 & 1;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t PASExtensionDevicePair.description.getter()
{
  sub_2610BCF84();
  MEMORY[0x2666F7380](60, 0xE100000000000000);
  swift_getObjectType();
  v0 = sub_2610BD634();
  MEMORY[0x2666F7380](v0);

  MEMORY[0x2666F7380](8250, 0xE200000000000000);
  sub_2610BD0A4();
  MEMORY[0x2666F7380](0xD00000000000001ELL, 0x80000002610D3330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64A48, &qword_2610C31E0);
  v1 = sub_2610BCA34();
  MEMORY[0x2666F7380](v1);

  MEMORY[0x2666F7380](0xD000000000000025, 0x80000002610D3350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64A50, qword_2610C31E8);
  v2 = sub_2610BCA34();
  MEMORY[0x2666F7380](v2);

  MEMORY[0x2666F7380](4095264, 0xE300000000000000);
  return 0;
}

uint64_t PASExtensionDevicePair.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_260FAC380(a1, v9);
  if (!v10)
  {
    sub_260FAC3F0(v9);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_targetDeviceType + 4))
  {
    if ((v8[OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_targetDeviceType + 4] & 1) == 0)
    {
LABEL_11:

      return 0;
    }
  }

  else if ((v8[OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_targetDeviceType + 4] & 1) != 0 || *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_targetDeviceType) != *&v8[OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_targetDeviceType])
  {
    goto LABEL_11;
  }

  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_sourceDeviceBiometryType);
  v4 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_sourceDeviceBiometryType + 8);
  v5 = *&v8[OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_sourceDeviceBiometryType];
  v6 = v8[OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_sourceDeviceBiometryType + 8];

  result = v6;
  if ((v4 & 1) == 0)
  {
    return (v3 == v5) & ~v6;
  }

  return result;
}

uint64_t PASExtensionDevicePair.hash.getter()
{
  sub_2610BD584();
  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_targetDeviceType + 4) == 1)
  {
    sub_2610BD534();
  }

  else
  {
    sub_2610BD534();
    sub_2610BD544();
  }

  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_sourceDeviceBiometryType + 8) == 1)
  {
    sub_2610BD534();
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_sourceDeviceBiometryType);
    sub_2610BD534();
    MEMORY[0x2666F7E40](v1);
  }

  return sub_2610BD564();
}

uint64_t static PASExtensionDevicePair.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FE64A30 = a1;
  return result;
}

Swift::Void __swiftcall PASExtensionDevicePair.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_targetDeviceType + 4))
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_2610BD364();
  }

  v4 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_sourceDeviceBiometryType + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_2610BD364();
  }

  v6 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();
}

id PASExtensionDevicePair.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_260FEC7F0(a1);

  return v4;
}

id PASExtensionDevicePair.init(coder:)(void *a1)
{
  v2 = sub_260FEC7F0(a1);

  return v2;
}

id PASExtensionDevicePair.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PASExtensionDevicePair.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_260FEC7F0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_2610BC9D4();
  v5 = [a1 decodeInt32ForKey_];

  v6 = &v1[OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_targetDeviceType];
  *v6 = v5;
  v6[4] = 0;
  v7 = sub_2610BC9D4();
  v8 = [a1 decodeIntegerForKey_];

  v9 = &v1[OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_sourceDeviceBiometryType];
  *v9 = v8;
  v9[8] = 0;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_260FEC968()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults__sourceAppleIDExchanger);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v3 = qword_27FE637E0;

    if (v3 != -1)
    {
      swift_once();
    }

    v2 = sub_260F9F58C();
    *(v1 + 16) = v2;
    *(v1 + 24) = v4;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t PASFlowStepSendAuthResults.sendAuthResults()()
{
  *(v1 + 48) = v0;
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = sub_260FECADC;

  return sub_260FED0AC(v1 + 16, v0);
}

uint64_t sub_260FECADC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_260FECE1C;
  }

  else
  {
    v2 = sub_260FECBF0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FECBF0()
{
  v19 = v0;
  v1 = *(v0 + 64) != 0;
  v2 = *(v0 + 48) + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_result;
  v3 = *v2;
  *v2 = *(v0 + 16);
  v4 = *(v2 + 8);
  *(v2 + 8) = v1;
  sub_260FEBBC8(v3, v4);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v5 = sub_2610BC7B4();
  __swift_project_value_buffer(v5, qword_27FE65900);

  v6 = sub_2610BC794();
  v7 = sub_2610BCD84();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    v10 = *v2;
    v11 = *(v2 + 8);
    *(v0 + 32) = *v2;
    *(v0 + 40) = v11;
    sub_260FEBBEC(v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64A60, &qword_2610C3250);
    v12 = sub_2610BCA34();
    v14 = sub_260FA5970(v12, v13, &v18);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_260F97000, v6, v7, "PASFlowStepSendAuthResults sendAuthResults result: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x2666F8720](v9, -1, -1);
    MEMORY[0x2666F8720](v8, -1, -1);
  }

  sub_2610BCC74();
  *(v0 + 72) = sub_2610BCC64();
  v16 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_260FED044, v16, v15);
}

uint64_t sub_260FECE1C()
{
  v19 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 48) + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_result;
  v3 = *v2;
  *v2 = v1;
  v4 = *(v2 + 8);
  *(v2 + 8) = v1 != 0;
  sub_260FEBBC8(v3, v4);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v5 = sub_2610BC7B4();
  __swift_project_value_buffer(v5, qword_27FE65900);

  v6 = sub_2610BC794();
  v7 = sub_2610BCD84();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    v10 = *v2;
    v11 = *(v2 + 8);
    *(v0 + 32) = *v2;
    *(v0 + 40) = v11;
    sub_260FEBBEC(v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64A60, &qword_2610C3250);
    v12 = sub_2610BCA34();
    v14 = sub_260FA5970(v12, v13, &v18);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_260F97000, v6, v7, "PASFlowStepSendAuthResults sendAuthResults result: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x2666F8720](v9, -1, -1);
    MEMORY[0x2666F8720](v8, -1, -1);
  }

  sub_2610BCC74();
  *(v0 + 72) = sub_2610BCC64();
  v16 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_260FED044, v16, v15);
}

uint64_t sub_260FED044()
{

  sub_2610439BC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260FED0AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return MEMORY[0x2822009F8](sub_260FED0CC, 0, 0);
}

uint64_t sub_260FED0CC()
{
  v1 = *(v0 + 80);
  v2 = sub_260FEC968();
  v4 = v3;
  *(v0 + 88) = v2;
  *(v0 + 56) = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_proxiedAuthResults);
  sub_260FA99E0(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_account, v0 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66860, &qword_2610BFBA0);
  type metadata accessor for PASFamilyMember();
  v5 = swift_dynamicCast();
  *(v0 + 120) = v5;
  v6 = *(v0 + 64);
  *(v0 + 96) = v6;
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  ObjectType = swift_getObjectType();
  v11 = (*(v4 + 48) + **(v4 + 48));
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *v9 = v0;
  v9[1] = sub_260FED28C;

  return v11(v0 + 56, v7, ObjectType, v4);
}

uint64_t sub_260FED28C(char a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {

    swift_unknownObjectRelease();

    v5 = sub_260FED428;
  }

  else
  {
    *(v4 + 121) = a1 & 1;

    swift_unknownObjectRelease();

    v5 = sub_260FED404;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

NSObject *PASFlowStepSendAuthResults.nextStep()()
{
  v1 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_result);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_result + 8);
  if (v2 == 255)
  {
    v5 = 0x80000002610D3430;
    sub_260FC3450();
    swift_allocError();
    *v12 = 0xD000000000000028;
    *(v12 + 8) = 0x80000002610D3430;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 1;
    swift_willThrow();
  }

  else if (v2)
  {
    v3 = *v1;
    sub_260FEBBEC(*v1, *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_result + 8));
    sub_260FEBC04(v3, 1);
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v4 = sub_2610BC7B4();
    __swift_project_value_buffer(v4, qword_27FE65900);
    sub_260FEBC04(v3, 1);
    v5 = sub_2610BC794();
    v6 = sub_2610BCD64();
    sub_260FEBBC8(v3, v2);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21[0] = v8;
      *v7 = 136446210;
      v21[3] = v3;
      sub_260FEBC04(v3, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
      v9 = sub_2610BCA34();
      v11 = sub_260FA5970(v9, v10, v21);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_260F97000, v5, v6, "PASFlowStepSendAuthResults failed with error:\n%{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x2666F8720](v8, -1, -1);
      MEMORY[0x2666F8720](v7, -1, -1);
    }

    swift_willThrow();
    sub_260FEBBC8(v3, v2);
  }

  else
  {
    v13 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v15 = *(v13 + 8);
    type metadata accessor for PASFlowStepSignInResult(0);
    v16 = swift_allocObject();
    v17 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__messageSessionProvider;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE656F0, &qword_2610BFCF0);
    v18 = swift_allocObject();
    *(v16 + v17) = v18;
    *(v18 + 16) = 0;
    v19 = (v16 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__nextStep);
    *v19 = 0;
    v19[1] = 0;
    v5 = sub_26104DC44(Strong, v15);
    swift_unknownObjectRelease();
    sub_260FED960(&qword_27FE64040, type metadata accessor for PASFlowStepSignInResult);
  }

  return v5;
}

void sub_260FED774()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_account));

  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_result);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_result + 8);

  sub_260FEBBC8(v1, v2);
}

uint64_t PASFlowStepSendAuthResults.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_account));

  sub_260FEBBC8(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_result + 8));
  return v0;
}

uint64_t PASFlowStepSendAuthResults.__deallocating_deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_account;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + v1));

  sub_260FEBBC8(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_result + 8));

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_260FED91C(uint64_t a1)
{
  result = sub_260FED960(&qword_27FE65710, type metadata accessor for PASFlowStepSendAuthResults);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_260FED960(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t type metadata accessor for PASFlowStepSendAuthResults(uint64_t a1)
{
  result = qword_27FE64A80;
  if (!qword_27FE64A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HandshakeCommand.Request.init(isKeepAlive:minSupportedVersion:maxSupportedVersion:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t HandshakeCommand.Request.init(from:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[11];
  v10[10] = a1[10];
  v10[11] = v3;
  v10[12] = a1[12];
  v4 = a1[7];
  v10[6] = a1[6];
  v10[7] = v4;
  v5 = a1[9];
  v10[8] = a1[8];
  v10[9] = v5;
  v6 = a1[3];
  v10[2] = a1[2];
  v10[3] = v6;
  v7 = a1[5];
  v10[4] = a1[4];
  v10[5] = v7;
  v8 = a1[1];
  v10[0] = *a1;
  v10[1] = v8;
  result = sub_260FEDBAC(v10);
  *(a2 + 2) = 0;
  *a2 = 2;
  return result;
}

__n128 HandshakeCommand.Request.into()@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 1);
  LOBYTE(v10[0]) = *v1;
  *(v10 + 1) = v3;
  sub_260F99F8C(v10);
  v21 = v10[10];
  v22 = v10[11];
  v23 = v10[12];
  v17 = v10[6];
  v18 = v10[7];
  v19 = v10[8];
  v20 = v10[9];
  v13 = v10[2];
  v14 = v10[3];
  v15 = v10[4];
  v16 = v10[5];
  v11 = v10[0];
  v12 = v10[1];
  sub_260FEDCB8(&v11);
  v4 = v22;
  *(a1 + 160) = v21;
  *(a1 + 176) = v4;
  *(a1 + 192) = v23;
  v5 = v18;
  *(a1 + 96) = v17;
  *(a1 + 112) = v5;
  v6 = v20;
  *(a1 + 128) = v19;
  *(a1 + 144) = v6;
  v7 = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = v7;
  v8 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v8;
  result = v12;
  *a1 = v11;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_260FEDCB8(uint64_t result)
{
  v1 = *(result + 168) & 0xC000000000000003;
  *(result + 80) &= 3uLL;
  *(result + 168) = v1;
  return result;
}

uint64_t sub_260FEDD0C()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x6C417065654B7369;
  }
}

uint64_t sub_260FEDD78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_260FEFD28(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_260FEDDA0(uint64_t a1)
{
  v2 = sub_260FEDFD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260FEDDDC(uint64_t a1)
{
  v2 = sub_260FEDFD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HandshakeCommand.Request.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64A90, &qword_2610C3300);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v10 - v7;
  v10[6] = *(v1 + 1);
  v10[3] = *(v1 + 2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260FEDFD4();
  sub_2610BD5F4();
  v13 = 0;
  sub_2610BD284();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v12 = 1;
  sub_2610BD2B4();
  v11 = 2;
  sub_2610BD2B4();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_260FEDFD4()
{
  result = qword_27FE64A98;
  if (!qword_27FE64A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64A98);
  }

  return result;
}

uint64_t HandshakeCommand.Request.hash(into:)()
{
  sub_2610BD534();
  sub_2610BD534();
  return sub_2610BD534();
}

uint64_t HandshakeCommand.Request.hashValue.getter()
{
  sub_2610BD514();
  sub_2610BD534();
  sub_2610BD534();
  sub_2610BD534();
  return sub_2610BD574();
}

uint64_t HandshakeCommand.Request.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64AA0, &qword_2610C3308);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260FEDFD4();
  sub_2610BD5D4();
  if (!v2)
  {
    v17 = 0;
    v10 = sub_2610BD1C4();
    v16 = 1;
    v14 = sub_2610BD1F4();
    v15 = 2;
    v12 = sub_2610BD1F4();
    (*(v6 + 8))(v9, v5);
    *a2 = v10 & 1;
    a2[1] = v14;
    a2[2] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_260FEE2B4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[11];
  v10[10] = a1[10];
  v10[11] = v3;
  v10[12] = a1[12];
  v4 = a1[7];
  v10[6] = a1[6];
  v10[7] = v4;
  v5 = a1[9];
  v10[8] = a1[8];
  v10[9] = v5;
  v6 = a1[3];
  v10[2] = a1[2];
  v10[3] = v6;
  v7 = a1[5];
  v10[4] = a1[4];
  v10[5] = v7;
  v8 = a1[1];
  v10[0] = *a1;
  v10[1] = v8;
  result = sub_260FEDBAC(v10);
  *(a2 + 2) = 0;
  *a2 = 2;
  return result;
}

__n128 sub_260FEE328@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 1);
  LOBYTE(v10[0]) = *v1;
  *(v10 + 1) = v3;
  sub_260F99F8C(v10);
  v21 = v10[10];
  v22 = v10[11];
  v23 = v10[12];
  v17 = v10[6];
  v18 = v10[7];
  v19 = v10[8];
  v20 = v10[9];
  v13 = v10[2];
  v14 = v10[3];
  v15 = v10[4];
  v16 = v10[5];
  v11 = v10[0];
  v12 = v10[1];
  sub_260FEDCB8(&v11);
  v4 = v22;
  *(a1 + 160) = v21;
  *(a1 + 176) = v4;
  *(a1 + 192) = v23;
  v5 = v18;
  *(a1 + 96) = v17;
  *(a1 + 112) = v5;
  v6 = v20;
  *(a1 + 128) = v19;
  *(a1 + 144) = v6;
  v7 = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = v7;
  v8 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v8;
  result = v12;
  *a1 = v11;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_260FEE448()
{
  sub_2610BD514();
  sub_2610BD534();
  sub_2610BD534();
  sub_2610BD534();
  return sub_2610BD574();
}

uint64_t sub_260FEE4B8()
{
  sub_2610BD534();
  sub_2610BD534();
  return sub_2610BD534();
}

uint64_t sub_260FEE504(uint64_t a1)
{
  sub_2610BD514();
  sub_2610BD534();
  sub_2610BD534();
  sub_2610BD534();
  return sub_2610BD574();
}

uint64_t HandshakeCommand.Response.selectedVersion.setter(uint64_t result)
{
  *(v1 + 2) = result;
  *(v1 + 3) = BYTE1(result) & 1;
  return result;
}

uint64_t HandshakeCommand.Response.init(isKeepAlive:isAccepted:rejectionReason:selectedVersion:)@<X0>(char a1@<W0>, char a2@<W1>, __int16 a4@<W4>, _BYTE *a5@<X8>)
{

  *a5 = a1;
  a5[1] = a2;
  a5[2] = a4;
  a5[3] = HIBYTE(a4) & 1;
  return result;
}

uint64_t HandshakeCommand.Response.init(from:)@<X0>(_OWORD *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = a1[9];
  v4 = a1[11];
  v37 = a1[10];
  v38 = v4;
  v5 = a1[11];
  v39 = a1[12];
  v6 = a1[5];
  v7 = a1[7];
  v33 = a1[6];
  v34 = v7;
  v8 = a1[7];
  v9 = a1[9];
  v35 = a1[8];
  v36 = v9;
  v10 = a1[1];
  v11 = a1[3];
  v29 = a1[2];
  v30 = v11;
  v12 = a1[3];
  v13 = a1[5];
  v31 = a1[4];
  v32 = v13;
  v14 = a1[1];
  v28[0] = *a1;
  v28[1] = v14;
  v40[10] = v37;
  v40[11] = v5;
  v40[12] = a1[12];
  v40[6] = v33;
  v40[7] = v8;
  v40[8] = v35;
  v40[9] = v3;
  v40[2] = v29;
  v40[3] = v12;
  v40[4] = v31;
  v40[5] = v6;
  v40[0] = v28[0];
  v40[1] = v10;
  if (sub_260FEE778(v40) == 1 && (v15 = sub_260F9C524(v40), v16 = *(v15 + 48), v18 = *v15, v17 = *(v15 + 16), v26[2] = *(v15 + 32), v26[3] = v16, v26[0] = v18, v26[1] = v17, v19 = *(v15 + 112), v21 = *(v15 + 64), v20 = *(v15 + 80), v26[6] = *(v15 + 96), v26[7] = v19, v26[4] = v21, v26[5] = v20, v23 = *(v15 + 144), v22 = *(v15 + 160), v24 = *(v15 + 128), v27 = *(v15 + 176), v26[9] = v23, v26[10] = v22, v26[8] = v24, !get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(v26)))
  {
    result = sub_260F9C514(v26);
  }

  else
  {
    result = sub_260FEDBAC(v28);
  }

  *a2 = 2;
  return result;
}

__n128 HandshakeCommand.Response.into()@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  LOBYTE(v12[0]) = *v1;
  BYTE1(v12[0]) = v3;
  BYTE2(v12[0]) = v4;
  BYTE3(v12[0]) = v5;
  sub_260F99F8C(v12);
  v22 = v12[8];
  v23 = v12[9];
  v24 = v12[10];
  *&v25 = v13;
  v18 = v12[4];
  v19 = v12[5];
  v20 = v12[6];
  v21 = v12[7];
  v14 = v12[0];
  v15 = v12[1];
  v16 = v12[2];
  v17 = v12[3];
  sub_260FEE86C(&v14);
  v6 = v25;
  *(a1 + 160) = v24;
  *(a1 + 176) = v6;
  *(a1 + 192) = v26;
  v7 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v7;
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  v9 = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = v9;
  v10 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v10;
  result = v15;
  *a1 = v14;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_260FEE86C(uint64_t result)
{
  v1 = *(result + 168) & 0xC000000000000003 | 0x1000000000000000;
  *(result + 80) &= 3uLL;
  *(result + 168) = v1;
  return result;
}

uint64_t sub_260FEE890()
{
  v1 = 0x7470656363417369;
  if (*v0 != 1)
  {
    v1 = 0x64657463656C6573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C417065654B7369;
  }
}

uint64_t sub_260FEE904@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_260FEFE54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_260FEE92C(uint64_t a1)
{
  v2 = sub_260FEF1C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260FEE968(uint64_t a1)
{
  v2 = sub_260FEF1C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HandshakeCommand.Response.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64AA8, &qword_2610C3310);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v11 - v7;
  v11[6] = v1[1];
  v9 = v1[2];
  v11[2] = v1[3];
  v11[3] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260FEF1C0();
  sub_2610BD5F4();
  v14 = 0;
  sub_2610BD284();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v13 = 1;
  sub_2610BD284();
  v12 = 2;
  sub_2610BD264();
  return (*(v5 + 8))(v8, v4);
}

uint64_t HandshakeCommand.Response.hash(into:)()
{
  v1 = *(v0 + 3);
  sub_2610BD534();
  sub_2610BD534();
  if ((v1 & 1) == 0)
  {
    sub_2610BD534();
  }

  return sub_2610BD534();
}

uint64_t HandshakeCommand.Response.hashValue.getter()
{
  v1 = *(v0 + 3);
  sub_2610BD514();
  sub_2610BD534();
  sub_2610BD534();
  if ((v1 & 1) == 0)
  {
    sub_2610BD534();
  }

  sub_2610BD534();
  return sub_2610BD574();
}

uint64_t HandshakeCommand.Response.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64AB8, &qword_2610C3318);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260FEF1C0();
  sub_2610BD5D4();
  if (!v2)
  {
    v17 = 0;
    v10 = sub_2610BD1C4();
    v16 = 1;
    v11 = sub_2610BD1C4();
    v15 = 2;
    v13 = sub_2610BD1A4();
    (*(v6 + 8))(v9, v5);
    *a2 = v10 & 1;
    a2[1] = v11 & 1;
    a2[2] = v13;
    a2[3] = HIBYTE(v13) & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_260FEEE3C@<X0>(_OWORD *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = a1[9];
  v4 = a1[11];
  v37 = a1[10];
  v38 = v4;
  v5 = a1[11];
  v39 = a1[12];
  v6 = a1[5];
  v7 = a1[7];
  v33 = a1[6];
  v34 = v7;
  v8 = a1[7];
  v9 = a1[9];
  v35 = a1[8];
  v36 = v9;
  v10 = a1[1];
  v11 = a1[3];
  v29 = a1[2];
  v30 = v11;
  v12 = a1[3];
  v13 = a1[5];
  v31 = a1[4];
  v32 = v13;
  v14 = a1[1];
  v28[0] = *a1;
  v28[1] = v14;
  v40[10] = v37;
  v40[11] = v5;
  v40[12] = a1[12];
  v40[6] = v33;
  v40[7] = v8;
  v40[8] = v35;
  v40[9] = v3;
  v40[2] = v29;
  v40[3] = v12;
  v40[4] = v31;
  v40[5] = v6;
  v40[0] = v28[0];
  v40[1] = v10;
  if (sub_260FEE778(v40) == 1 && (v15 = sub_260F9C524(v40), v16 = *(v15 + 48), v18 = *v15, v17 = *(v15 + 16), v26[2] = *(v15 + 32), v26[3] = v16, v26[0] = v18, v26[1] = v17, v19 = *(v15 + 112), v21 = *(v15 + 64), v20 = *(v15 + 80), v26[6] = *(v15 + 96), v26[7] = v19, v26[4] = v21, v26[5] = v20, v23 = *(v15 + 144), v22 = *(v15 + 160), v24 = *(v15 + 128), v27 = *(v15 + 176), v26[9] = v23, v26[10] = v22, v26[8] = v24, !get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(v26)))
  {
    result = sub_260F9C514(v26);
  }

  else
  {
    result = sub_260FEDBAC(v28);
  }

  *a2 = 2;
  return result;
}

__n128 sub_260FEEF4C@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  LOBYTE(v12[0]) = *v1;
  BYTE1(v12[0]) = v3;
  BYTE2(v12[0]) = v4;
  BYTE3(v12[0]) = v5;
  sub_260F99F8C(v12);
  v22 = v12[8];
  v23 = v12[9];
  v24 = v12[10];
  *&v25 = v13;
  v18 = v12[4];
  v19 = v12[5];
  v20 = v12[6];
  v21 = v12[7];
  v14 = v12[0];
  v15 = v12[1];
  v16 = v12[2];
  v17 = v12[3];
  sub_260FEE86C(&v14);
  v6 = v25;
  *(a1 + 160) = v24;
  *(a1 + 176) = v6;
  *(a1 + 192) = v26;
  v7 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v7;
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  v9 = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = v9;
  v10 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v10;
  result = v15;
  *a1 = v14;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_260FEF06C()
{
  v1 = *(v0 + 3);
  sub_2610BD534();
  sub_2610BD534();
  if ((v1 & 1) == 0)
  {
    sub_2610BD534();
  }

  return sub_2610BD534();
}

uint64_t sub_260FEF0D0(uint64_t a1)
{
  v2 = *(v1 + 3);
  sub_2610BD514();
  sub_2610BD534();
  sub_2610BD534();
  if ((v2 & 1) == 0)
  {
    sub_2610BD534();
  }

  sub_2610BD534();
  return sub_2610BD574();
}

uint64_t _s21ProximityAppleIDSetup16HandshakeCommandO8ResponseV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    if (a1[3])
    {
      if ((a2[3] & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (a1[2] == a2[2])
      {
        v4 = a2[3];
      }

      else
      {
        v4 = 1;
      }

      if (v4)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

unint64_t sub_260FEF1C0()
{
  result = qword_27FE64AB0;
  if (!qword_27FE64AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64AB0);
  }

  return result;
}

unint64_t sub_260FEF214()
{
  result = qword_27FE64AC0;
  if (!qword_27FE64AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64AC0);
  }

  return result;
}

unint64_t sub_260FEF268(uint64_t a1)
{
  result = sub_260FEF290();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_260FEF290()
{
  result = qword_27FE64AC8;
  if (!qword_27FE64AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64AC8);
  }

  return result;
}

unint64_t sub_260FEF2E4()
{
  result = qword_27FE64AD0;
  if (!qword_27FE64AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64AD0);
  }

  return result;
}

unint64_t sub_260FEF338(uint64_t a1)
{
  result = sub_260FEF360();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_260FEF360()
{
  result = qword_27FE64AD8;
  if (!qword_27FE64AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64AD8);
  }

  return result;
}

unint64_t sub_260FEF3F4()
{
  result = qword_27FE64AE0;
  if (!qword_27FE64AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64AE0);
  }

  return result;
}

unint64_t sub_260FEF448()
{
  result = qword_27FE64AE8;
  if (!qword_27FE64AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64AE8);
  }

  return result;
}

unint64_t sub_260FEF49C()
{
  result = qword_27FE64AF0;
  if (!qword_27FE64AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64AF0);
  }

  return result;
}

unint64_t sub_260FEF4F4()
{
  result = qword_27FE64AF8;
  if (!qword_27FE64AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64AF8);
  }

  return result;
}

unint64_t sub_260FEF548(uint64_t a1)
{
  result = sub_260FEF570();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_260FEF570()
{
  result = qword_27FE64B00;
  if (!qword_27FE64B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B00);
  }

  return result;
}

unint64_t sub_260FEF5C4(uint64_t a1)
{
  result = sub_260FEF5EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_260FEF5EC()
{
  result = qword_27FE64B08;
  if (!qword_27FE64B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B08);
  }

  return result;
}

uint64_t sub_260FEF680(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_260FEF6D4()
{
  result = qword_27FE64B10;
  if (!qword_27FE64B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B10);
  }

  return result;
}

unint64_t sub_260FEF728()
{
  result = qword_27FE64B18;
  if (!qword_27FE64B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B18);
  }

  return result;
}

unint64_t sub_260FEF77C()
{
  result = qword_27FE64B20;
  if (!qword_27FE64B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B20);
  }

  return result;
}

unint64_t sub_260FEF7D4()
{
  result = qword_27FE64B28;
  if (!qword_27FE64B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B28);
  }

  return result;
}

unint64_t sub_260FEF82C()
{
  result = qword_27FE64B30;
  if (!qword_27FE64B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B30);
  }

  return result;
}

unint64_t sub_260FEF884()
{
  result = qword_27FE64B38;
  if (!qword_27FE64B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B38);
  }

  return result;
}

unint64_t sub_260FEF8D8(uint64_t a1)
{
  result = sub_260FEF2E4();
  *(a1 + 8) = result;
  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HandshakeCommand.Request(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for HandshakeCommand.Request(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HandshakeCommand.Response(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HandshakeCommand.Response(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_260FEFB1C()
{
  result = qword_27FE64B40;
  if (!qword_27FE64B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B40);
  }

  return result;
}

unint64_t sub_260FEFB74()
{
  result = qword_27FE64B48;
  if (!qword_27FE64B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B48);
  }

  return result;
}

unint64_t sub_260FEFBCC()
{
  result = qword_27FE64B50;
  if (!qword_27FE64B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B50);
  }

  return result;
}

unint64_t sub_260FEFC24()
{
  result = qword_27FE64B58;
  if (!qword_27FE64B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B58);
  }

  return result;
}

unint64_t sub_260FEFC7C()
{
  result = qword_27FE64B60;
  if (!qword_27FE64B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B60);
  }

  return result;
}

unint64_t sub_260FEFCD4()
{
  result = qword_27FE64B68;
  if (!qword_27FE64B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B68);
  }

  return result;
}

uint64_t sub_260FEFD28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C417065654B7369 && a2 == 0xEB00000000657669;
  if (v4 || (sub_2610BD384() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002610D3500 == a2 || (sub_2610BD384() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002610D3520 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_2610BD384();

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

uint64_t sub_260FEFE54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C417065654B7369 && a2 == 0xEB00000000657669;
  if (v4 || (sub_2610BD384() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470656363417369 && a2 == 0xEA00000000006465 || (sub_2610BD384() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xEF6E6F6973726556)
  {

    return 2;
  }

  else
  {
    v6 = sub_2610BD384();

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

uint64_t SignInCommand.Request.account.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[9];
  v25 = v1[8];
  v26[0] = v3;
  *(v26 + 9) = *(v1 + 153);
  v4 = v1[3];
  v5 = v1[5];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
  v7 = v1[5];
  v8 = v1[7];
  v23 = v1[6];
  v9 = v23;
  v24 = v8;
  v10 = v1[1];
  v18[0] = *v1;
  v18[1] = v10;
  v11 = v1[3];
  v13 = *v1;
  v12 = v1[1];
  v19 = v1[2];
  v14 = v19;
  v20 = v11;
  v15 = v1[9];
  a1[8] = v25;
  a1[9] = v15;
  *(a1 + 153) = *(v1 + 153);
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v9;
  a1[7] = v2;
  *a1 = v13;
  a1[1] = v12;
  a1[2] = v14;
  a1[3] = v4;
  return sub_260FD2DF8(v18, &v17);
}

__n128 SignInCommand.Request.account.setter(uint64_t a1)
{
  v3 = v1[9];
  v13[8] = v1[8];
  v14[0] = v3;
  *(v14 + 9) = *(v1 + 153);
  v4 = v1[5];
  v13[4] = v1[4];
  v13[5] = v4;
  v5 = v1[7];
  v13[6] = v1[6];
  v13[7] = v5;
  v6 = v1[1];
  v13[0] = *v1;
  v13[1] = v6;
  v7 = v1[3];
  v13[2] = v1[2];
  v13[3] = v7;
  sub_260FD2E30(v13);
  v8 = *(a1 + 144);
  v1[8] = *(a1 + 128);
  v1[9] = v8;
  *(v1 + 153) = *(a1 + 153);
  v9 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v9;
  v10 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v11;
  result = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = result;
  return result;
}

uint64_t SignInCommand.Request.authResults.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 176) = v2;
  return result;
}

__n128 SignInCommand.Request.init(account:authResults:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a1 + 144);
  *(a3 + 128) = *(a1 + 128);
  *(a3 + 144) = v4;
  *(a3 + 153) = *(a1 + 153);
  v5 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v5;
  v6 = *(a1 + 112);
  *(a3 + 96) = *(a1 + 96);
  *(a3 + 112) = v6;
  v7 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v7;
  result = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = result;
  *(a3 + 176) = v3;
  return result;
}

double SignInCommand.Request.init(from:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[9];
  v4 = a1[11];
  v54 = a1[10];
  v55 = v4;
  v5 = a1[11];
  v56 = a1[12];
  v6 = a1[5];
  v7 = a1[7];
  v50 = a1[6];
  v51 = v7;
  v8 = a1[7];
  v9 = a1[9];
  v52 = a1[8];
  v53 = v9;
  v10 = a1[1];
  v11 = a1[3];
  v46 = a1[2];
  v47 = v11;
  v12 = a1[3];
  v13 = a1[5];
  v48 = a1[4];
  v49 = v13;
  v14 = a1[1];
  v45[0] = *a1;
  v45[1] = v14;
  v57[10] = v54;
  v57[11] = v5;
  v57[12] = a1[12];
  v57[6] = v50;
  v57[7] = v8;
  v57[8] = v52;
  v57[9] = v3;
  v57[2] = v46;
  v57[3] = v12;
  v57[4] = v48;
  v57[5] = v6;
  v57[0] = v45[0];
  v57[1] = v10;
  if (sub_260FEE778(v57) || (v15 = sub_260F9C524(v57), v32 = *v15, v16 = v15[4], v18 = v15[1], v17 = v15[2], v35 = v15[3], v36 = v16, v33 = v18, v34 = v17, v19 = v15[8], v21 = v15[5], v20 = v15[6], v39 = v15[7], v40 = v19, v37 = v21, v38 = v20, v22 = v15[12], v24 = v15[9], v23 = v15[10], v43 = v15[11], v44 = v22, v41 = v24, v42 = v23, get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(&v32) != 1))
  {
    sub_260FEDBAC(v45);
  }

  else
  {
    v25 = sub_260F9C514(&v32);
    sub_260FD2E30(v25);
  }

  sub_260F99FB0(&v32);
  v26 = v41;
  *(a2 + 128) = v40;
  *(a2 + 144) = v26;
  *(a2 + 160) = v42;
  *(a2 + 176) = v43;
  v27 = v37;
  *(a2 + 64) = v36;
  *(a2 + 80) = v27;
  v28 = v39;
  *(a2 + 96) = v38;
  *(a2 + 112) = v28;
  v29 = v33;
  *a2 = v32;
  *(a2 + 16) = v29;
  result = *&v34;
  v31 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v31;
  return result;
}

__n128 SignInCommand.Request.into()@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v22 = v1[8];
  v23 = v3;
  v24 = v1[10];
  *&v25 = *(v1 + 22);
  v4 = v1[5];
  v18 = v1[4];
  v19 = v4;
  v5 = v1[7];
  v20 = v1[6];
  v21 = v5;
  v6 = v1[1];
  v14 = *v1;
  v15 = v6;
  v7 = v1[3];
  v16 = v1[2];
  v17 = v7;
  sub_260F99FD4(&v14);
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v33 = v20;
  v34 = v21;
  v35 = v22;
  v36 = v23;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v27 = v14;
  v28 = v15;
  sub_260FEDCB8(&v27);
  v8 = v38;
  *(a1 + 160) = v37;
  *(a1 + 176) = v8;
  *(a1 + 192) = v39;
  v9 = v34;
  *(a1 + 96) = v33;
  *(a1 + 112) = v9;
  v10 = v36;
  *(a1 + 128) = v35;
  *(a1 + 144) = v10;
  v11 = v30;
  *(a1 + 32) = v29;
  *(a1 + 48) = v11;
  v12 = v32;
  *(a1 + 64) = v31;
  *(a1 + 80) = v12;
  result = v28;
  *a1 = v27;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_260FF03AC()
{
  if (*v0)
  {
    return 0x7573655268747561;
  }

  else
  {
    return 0x746E756F636361;
  }
}

uint64_t sub_260FF03F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v6 || (sub_2610BD384() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7573655268747561 && a2 == 0xEB0000000073746CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2610BD384();

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

uint64_t sub_260FF04D0(uint64_t a1)
{
  v2 = sub_260FF246C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260FF050C(uint64_t a1)
{
  v2 = sub_260FF246C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SignInCommand.Request.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64B70, &qword_2610C3830);
  v45 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = v19 - v5;
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[6];
  v42 = v1[7];
  v43 = v7;
  v44[0] = v8;
  *(v44 + 9) = *(v1 + 153);
  v10 = v1[5];
  v39 = v1[4];
  v40 = v10;
  v41 = v9;
  v11 = v1[1];
  v35 = *v1;
  v36 = v11;
  v12 = v1[3];
  v37 = v1[2];
  v38 = v12;
  v19[0] = *(v1 + 22);
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_260FD2DF8(&v35, &v25);
  sub_260FF246C();
  sub_2610BD5F4();
  v32 = v42;
  v33 = v43;
  v34[0] = v44[0];
  *(v34 + 9) = *(v44 + 9);
  v29 = v39;
  v30 = v40;
  v31 = v41;
  v25 = v35;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  v24 = 0;
  sub_260FD3CFC();
  v17 = v19[1];
  sub_2610BD2A4();
  v22[8] = v33;
  *v23 = v34[0];
  *&v23[9] = *(v34 + 9);
  v22[4] = v29;
  v22[5] = v30;
  v22[6] = v31;
  v22[7] = v32;
  v22[0] = v25;
  v22[1] = v26;
  v22[2] = v27;
  v22[3] = v28;
  sub_260FD2E30(v22);
  if (!v17)
  {
    v21 = v19[0];
    v20 = 1;
    sub_260FF24C0();

    sub_2610BD2A4();
  }

  return (*(v45 + 8))(v6, v16);
}

uint64_t SignInCommand.Request.hashValue.getter()
{
  sub_2610BD514();
  IdMSAccount.hash(into:)(v1);
  PASAuthResults.hash(into:)(v1);
  return sub_2610BD574();
}

uint64_t SignInCommand.Request.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE64B90, &qword_2610C3838);
  v5 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v6);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260FF246C();
  sub_2610BD5D4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v9 = v5;
  v34 = 0;
  sub_260FD3CA8();
  v10 = v55;
  sub_2610BD1E4();
  v53 = v43;
  v54[0] = v44[0];
  *(v54 + 9) = *(v44 + 9);
  v49 = v39;
  v50 = v40;
  v51 = v41;
  v52 = v42;
  v45 = v35;
  v46 = v36;
  v47 = v37;
  v48 = v38;
  v32 = 1;
  sub_260FF2514();
  sub_2610BD1E4();
  (*(v9 + 8))(v8, v10);
  v11 = v33;
  v26 = v53;
  v27 = v54[0];
  v28 = v54[1];
  v22 = v49;
  v23 = v50;
  v24 = v51;
  v25 = v52;
  v18 = v45;
  v19 = v46;
  v20 = v47;
  v21 = v48;
  v29 = v33;
  *(a2 + 176) = v33;
  v12 = v27;
  *(a2 + 128) = v26;
  *(a2 + 144) = v12;
  *(a2 + 160) = v28;
  v13 = v23;
  *(a2 + 64) = v22;
  *(a2 + 80) = v13;
  v14 = v25;
  *(a2 + 96) = v24;
  *(a2 + 112) = v14;
  v15 = v19;
  *a2 = v18;
  *(a2 + 16) = v15;
  v16 = v21;
  *(a2 + 32) = v20;
  *(a2 + 48) = v16;
  sub_260FF2568(&v18, v30);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v30[8] = v53;
  v30[9] = v54[0];
  v30[10] = v54[1];
  v30[4] = v49;
  v30[5] = v50;
  v30[6] = v51;
  v30[7] = v52;
  v30[0] = v45;
  v30[1] = v46;
  v30[2] = v47;
  v30[3] = v48;
  v31 = v11;
  return sub_260FF25A0(v30);
}

double sub_260FF0C28@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[9];
  v4 = a1[11];
  v54 = a1[10];
  v55 = v4;
  v5 = a1[11];
  v56 = a1[12];
  v6 = a1[5];
  v7 = a1[7];
  v50 = a1[6];
  v51 = v7;
  v8 = a1[7];
  v9 = a1[9];
  v52 = a1[8];
  v53 = v9;
  v10 = a1[1];
  v11 = a1[3];
  v46 = a1[2];
  v47 = v11;
  v12 = a1[3];
  v13 = a1[5];
  v48 = a1[4];
  v49 = v13;
  v14 = a1[1];
  v45[0] = *a1;
  v45[1] = v14;
  v57[10] = v54;
  v57[11] = v5;
  v57[12] = a1[12];
  v57[6] = v50;
  v57[7] = v8;
  v57[8] = v52;
  v57[9] = v3;
  v57[2] = v46;
  v57[3] = v12;
  v57[4] = v48;
  v57[5] = v6;
  v57[0] = v45[0];
  v57[1] = v10;
  if (sub_260FEE778(v57) || (v15 = sub_260F9C524(v57), v32 = *v15, v16 = v15[4], v18 = v15[1], v17 = v15[2], v35 = v15[3], v36 = v16, v33 = v18, v34 = v17, v19 = v15[8], v21 = v15[5], v20 = v15[6], v39 = v15[7], v40 = v19, v37 = v21, v38 = v20, v22 = v15[12], v24 = v15[9], v23 = v15[10], v43 = v15[11], v44 = v22, v41 = v24, v42 = v23, get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(&v32) != 1))
  {
    sub_260FEDBAC(v45);
  }

  else
  {
    v25 = sub_260F9C514(&v32);
    sub_260FD2E30(v25);
  }

  sub_260F99FB0(&v32);
  v26 = v41;
  *(a2 + 128) = v40;
  *(a2 + 144) = v26;
  *(a2 + 160) = v42;
  *(a2 + 176) = v43;
  v27 = v37;
  *(a2 + 64) = v36;
  *(a2 + 80) = v27;
  v28 = v39;
  *(a2 + 96) = v38;
  *(a2 + 112) = v28;
  v29 = v33;
  *a2 = v32;
  *(a2 + 16) = v29;
  result = *&v34;
  v31 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v31;
  return result;
}

__n128 sub_260FF0D88@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v22 = v1[8];
  v23 = v3;
  v24 = v1[10];
  *&v25 = *(v1 + 22);
  v4 = v1[5];
  v18 = v1[4];
  v19 = v4;
  v5 = v1[7];
  v20 = v1[6];
  v21 = v5;
  v6 = v1[1];
  v14 = *v1;
  v15 = v6;
  v7 = v1[3];
  v16 = v1[2];
  v17 = v7;
  sub_260F99FD4(&v14);
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v33 = v20;
  v34 = v21;
  v35 = v22;
  v36 = v23;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v27 = v14;
  v28 = v15;
  sub_260FEDCB8(&v27);
  v8 = v38;
  *(a1 + 160) = v37;
  *(a1 + 176) = v8;
  *(a1 + 192) = v39;
  v9 = v34;
  *(a1 + 96) = v33;
  *(a1 + 112) = v9;
  v10 = v36;
  *(a1 + 128) = v35;
  *(a1 + 144) = v10;
  v11 = v30;
  *(a1 + 32) = v29;
  *(a1 + 48) = v11;
  v12 = v32;
  *(a1 + 64) = v31;
  *(a1 + 80) = v12;
  result = v28;
  *a1 = v27;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_260FF0E9C()
{
  sub_2610BD514();
  IdMSAccount.hash(into:)(v1);
  PASAuthResults.hash(into:)(v1);
  return sub_2610BD574();
}

uint64_t sub_260FF0FA8(uint64_t a1)
{
  sub_2610BD514();
  IdMSAccount.hash(into:)(v2);
  PASAuthResults.hash(into:)(v2);
  return sub_2610BD574();
}

uint64_t SignInCommand.Response.resultsByService.setter(uint64_t a1)
{

  *(v1 + 176) = a1;
  return result;
}

__n128 SignInCommand.Response.init(account:resultsByService:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 144);
  *(a3 + 128) = *(a1 + 128);
  *(a3 + 144) = v3;
  *(a3 + 153) = *(a1 + 153);
  v4 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v4;
  v5 = *(a1 + 112);
  *(a3 + 96) = *(a1 + 96);
  *(a3 + 112) = v5;
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  result = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = result;
  *(a3 + 176) = a2;
  return result;
}

double SignInCommand.Response.init(from:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[9];
  v4 = a1[11];
  v53 = a1[10];
  v54 = v4;
  v5 = a1[11];
  v55 = a1[12];
  v6 = a1[5];
  v7 = a1[7];
  v49 = a1[6];
  v50 = v7;
  v8 = a1[7];
  v9 = a1[9];
  v51 = a1[8];
  v52 = v9;
  v10 = a1[1];
  v11 = a1[3];
  v45 = a1[2];
  v46 = v11;
  v12 = a1[3];
  v13 = a1[5];
  v47 = a1[4];
  v48 = v13;
  v14 = a1[1];
  v44[0] = *a1;
  v44[1] = v14;
  v56[10] = v53;
  v56[11] = v5;
  v56[12] = a1[12];
  v56[6] = v49;
  v56[7] = v8;
  v56[8] = v51;
  v56[9] = v3;
  v56[2] = v45;
  v56[3] = v12;
  v56[4] = v47;
  v56[5] = v6;
  v56[0] = v44[0];
  v56[1] = v10;
  if (sub_260FEE778(v56) == 1 && (v15 = sub_260F9C524(v56), v16 = *(v15 + 48), v18 = *v15, v17 = *(v15 + 16), v34 = *(v15 + 32), v35 = v16, v32 = v18, v33 = v17, v19 = *(v15 + 112), v21 = *(v15 + 64), v20 = *(v15 + 80), v38 = *(v15 + 96), v39 = v19, v36 = v21, v37 = v20, v23 = *(v15 + 144), v22 = *(v15 + 160), v24 = *(v15 + 128), v43 = *(v15 + 176), v41 = v23, v42 = v22, v40 = v24, get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(&v32) == 1))
  {
    v25 = sub_260F9C514(&v32);
    sub_260FD2E30(v25);
  }

  else
  {
    sub_260FEDBAC(v44);
  }

  sub_260F99FB0(&v32);
  v26 = v41;
  *(a2 + 128) = v40;
  *(a2 + 144) = v26;
  *(a2 + 160) = v42;
  *(a2 + 176) = v43;
  v27 = v37;
  *(a2 + 64) = v36;
  *(a2 + 80) = v27;
  v28 = v39;
  *(a2 + 96) = v38;
  *(a2 + 112) = v28;
  v29 = v33;
  *a2 = v32;
  *(a2 + 16) = v29;
  result = *&v34;
  v31 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v31;
  return result;
}

__n128 SignInCommand.Response.into()@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v22 = v1[8];
  v23 = v3;
  v24 = v1[10];
  v25 = *(v1 + 22);
  v4 = v1[5];
  v18 = v1[4];
  v19 = v4;
  v5 = v1[7];
  v20 = v1[6];
  v21 = v5;
  v6 = v1[1];
  v14 = *v1;
  v15 = v6;
  v7 = v1[3];
  v16 = v1[2];
  v17 = v7;
  sub_260F99FD4(&v14);
  v34 = v22;
  v35 = v23;
  v36 = v24;
  *&v37 = v25;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  sub_260FEE86C(&v26);
  v8 = v37;
  *(a1 + 160) = v36;
  *(a1 + 176) = v8;
  *(a1 + 192) = v38;
  v9 = v33;
  *(a1 + 96) = v32;
  *(a1 + 112) = v9;
  v10 = v35;
  *(a1 + 128) = v34;
  *(a1 + 144) = v10;
  v11 = v29;
  *(a1 + 32) = v28;
  *(a1 + 48) = v11;
  v12 = v31;
  *(a1 + 64) = v30;
  *(a1 + 80) = v12;
  result = v27;
  *a1 = v26;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_260FF1328()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x746E756F636361;
  }
}

uint64_t sub_260FF1368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v6 || (sub_2610BD384() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002610D3540 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2610BD384();

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

uint64_t sub_260FF144C(uint64_t a1)
{
  v2 = sub_260FF279C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260FF1488(uint64_t a1)
{
  v2 = sub_260FF279C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SignInCommand.Response.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64BA8, &qword_2610C3840);
  v45 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = v19 - v5;
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[6];
  v42 = v1[7];
  v43 = v7;
  v44[0] = v8;
  *(v44 + 9) = *(v1 + 153);
  v10 = v1[5];
  v39 = v1[4];
  v40 = v10;
  v41 = v9;
  v11 = v1[1];
  v35 = *v1;
  v36 = v11;
  v12 = v1[3];
  v37 = v1[2];
  v38 = v12;
  v19[0] = *(v1 + 22);
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_260FD2DF8(&v35, &v25);
  sub_260FF279C();
  sub_2610BD5F4();
  v32 = v42;
  v33 = v43;
  v34[0] = v44[0];
  *(v34 + 9) = *(v44 + 9);
  v29 = v39;
  v30 = v40;
  v31 = v41;
  v25 = v35;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  v24 = 0;
  sub_260FD3CFC();
  v17 = v19[1];
  sub_2610BD2A4();
  v22[8] = v33;
  *v23 = v34[0];
  *&v23[9] = *(v34 + 9);
  v22[4] = v29;
  v22[5] = v30;
  v22[6] = v31;
  v22[7] = v32;
  v22[0] = v25;
  v22[1] = v26;
  v22[2] = v27;
  v22[3] = v28;
  sub_260FD2E30(v22);
  if (!v17)
  {
    v21 = v19[0];
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64BB8, &qword_2610C3848);
    sub_260FF27F0();
    sub_2610BD2A4();
  }

  return (*(v45 + 8))(v6, v16);
}

uint64_t SignInCommand.Response.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 176);
  IdMSAccount.hash(into:)(a1);

  return sub_260FF1FCC(a1, v3);
}

uint64_t SignInCommand.Response.hashValue.getter()
{
  v1 = *(v0 + 176);
  sub_2610BD514();
  IdMSAccount.hash(into:)(v3);
  sub_260FF1FCC(v3, v1);
  return sub_2610BD574();
}

uint64_t SignInCommand.Response.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64BE8, &qword_2610C3858);
  v5 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v6);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260FF279C();
  sub_2610BD5D4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v9 = v5;
  v34 = 0;
  sub_260FD3CA8();
  v10 = v55;
  sub_2610BD1E4();
  v53 = v43;
  v54[0] = v44[0];
  *(v54 + 9) = *(v44 + 9);
  v49 = v39;
  v50 = v40;
  v51 = v41;
  v52 = v42;
  v45 = v35;
  v46 = v36;
  v47 = v37;
  v48 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64BB8, &qword_2610C3848);
  v32 = 1;
  sub_260FF2924();
  sub_2610BD1E4();
  (*(v9 + 8))(v8, v10);
  v11 = v33;
  v26 = v53;
  v27 = v54[0];
  v28 = v54[1];
  v22 = v49;
  v23 = v50;
  v24 = v51;
  v25 = v52;
  v18 = v45;
  v19 = v46;
  v20 = v47;
  v21 = v48;
  v29 = v33;
  *(a2 + 176) = v33;
  v12 = v27;
  *(a2 + 128) = v26;
  *(a2 + 144) = v12;
  *(a2 + 160) = v28;
  v13 = v23;
  *(a2 + 64) = v22;
  *(a2 + 80) = v13;
  v14 = v25;
  *(a2 + 96) = v24;
  *(a2 + 112) = v14;
  v15 = v19;
  *a2 = v18;
  *(a2 + 16) = v15;
  v16 = v21;
  *(a2 + 32) = v20;
  *(a2 + 48) = v16;
  sub_260FF2ADC(&v18, v30);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v30[8] = v53;
  v30[9] = v54[0];
  v30[10] = v54[1];
  v30[4] = v49;
  v30[5] = v50;
  v30[6] = v51;
  v30[7] = v52;
  v30[0] = v45;
  v30[1] = v46;
  v30[2] = v47;
  v30[3] = v48;
  v31 = v11;
  return sub_260FF2B14(v30);
}

double sub_260FF1BBC@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[9];
  v4 = a1[11];
  v53 = a1[10];
  v54 = v4;
  v5 = a1[11];
  v55 = a1[12];
  v6 = a1[5];
  v7 = a1[7];
  v49 = a1[6];
  v50 = v7;
  v8 = a1[7];
  v9 = a1[9];
  v51 = a1[8];
  v52 = v9;
  v10 = a1[1];
  v11 = a1[3];
  v45 = a1[2];
  v46 = v11;
  v12 = a1[3];
  v13 = a1[5];
  v47 = a1[4];
  v48 = v13;
  v14 = a1[1];
  v44[0] = *a1;
  v44[1] = v14;
  v56[10] = v53;
  v56[11] = v5;
  v56[12] = a1[12];
  v56[6] = v49;
  v56[7] = v8;
  v56[8] = v51;
  v56[9] = v3;
  v56[2] = v45;
  v56[3] = v12;
  v56[4] = v47;
  v56[5] = v6;
  v56[0] = v44[0];
  v56[1] = v10;
  if (sub_260FEE778(v56) == 1 && (v15 = sub_260F9C524(v56), v16 = *(v15 + 48), v18 = *v15, v17 = *(v15 + 16), v34 = *(v15 + 32), v35 = v16, v32 = v18, v33 = v17, v19 = *(v15 + 112), v21 = *(v15 + 64), v20 = *(v15 + 80), v38 = *(v15 + 96), v39 = v19, v36 = v21, v37 = v20, v23 = *(v15 + 144), v22 = *(v15 + 160), v24 = *(v15 + 128), v43 = *(v15 + 176), v41 = v23, v42 = v22, v40 = v24, get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(&v32) == 1))
  {
    v25 = sub_260F9C514(&v32);
    sub_260FD2E30(v25);
  }

  else
  {
    sub_260FEDBAC(v44);
  }

  sub_260F99FB0(&v32);
  v26 = v41;
  *(a2 + 128) = v40;
  *(a2 + 144) = v26;
  *(a2 + 160) = v42;
  *(a2 + 176) = v43;
  v27 = v37;
  *(a2 + 64) = v36;
  *(a2 + 80) = v27;
  v28 = v39;
  *(a2 + 96) = v38;
  *(a2 + 112) = v28;
  v29 = v33;
  *a2 = v32;
  *(a2 + 16) = v29;
  result = *&v34;
  v31 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v31;
  return result;
}

__n128 sub_260FF1D20@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v22 = v1[8];
  v23 = v3;
  v24 = v1[10];
  v25 = *(v1 + 22);
  v4 = v1[5];
  v18 = v1[4];
  v19 = v4;
  v5 = v1[7];
  v20 = v1[6];
  v21 = v5;
  v6 = v1[1];
  v14 = *v1;
  v15 = v6;
  v7 = v1[3];
  v16 = v1[2];
  v17 = v7;
  sub_260F99FD4(&v14);
  v34 = v22;
  v35 = v23;
  v36 = v24;
  *&v37 = v25;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  sub_260FEE86C(&v26);
  v8 = v37;
  *(a1 + 160) = v36;
  *(a1 + 176) = v8;
  *(a1 + 192) = v38;
  v9 = v33;
  *(a1 + 96) = v32;
  *(a1 + 112) = v9;
  v10 = v35;
  *(a1 + 128) = v34;
  *(a1 + 144) = v10;
  v11 = v29;
  *(a1 + 32) = v28;
  *(a1 + 48) = v11;
  v12 = v31;
  *(a1 + 64) = v30;
  *(a1 + 80) = v12;
  result = v27;
  *a1 = v26;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_260FF1E34()
{
  v1 = *(v0 + 176);
  sub_2610BD514();
  IdMSAccount.hash(into:)(v3);
  sub_260FF1FCC(v3, v1);
  return sub_2610BD574();
}

uint64_t sub_260FF1EC0(__int128 *a1)
{
  v3 = *(v1 + 176);
  IdMSAccount.hash(into:)(a1);

  return sub_260FF1FCC(a1, v3);
}

uint64_t sub_260FF1F44(uint64_t a1)
{
  v2 = *(v1 + 176);
  sub_2610BD514();
  IdMSAccount.hash(into:)(v4);
  sub_260FF1FCC(v4, v2);
  return sub_2610BD574();
}

uint64_t sub_260FF1FCC(uint64_t a1, uint64_t a2)
{
  v22 = a2 + 64;
  v2 = 1 << *(a2 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a2 + 64);
  v19 = (v2 + 63) >> 6;

  v21 = 0;
  v6 = 0;
  if (v4)
  {
    while (1)
    {
      v7 = v6;
LABEL_8:
      v8 = __clz(__rbit64(v4)) | (v7 << 6);
      v9 = *(*(a2 + 48) + 8 * v8);
      v10 = *(a2 + 56) + 48 * v8;
      v11 = *v10;
      v12 = *(v10 + 8);
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      v15 = *(v10 + 32);
      v16 = *(v10 + 40);
      v17 = *(v10 + 41);
      v18 = v9;
      sub_260FF3588(v11, v12, v14, v13, v15, v16, v17);
      if (!v18)
      {
        break;
      }

      v4 &= v4 - 1;
      sub_2610BCA04();
      sub_2610BCA54();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64BD8, &qword_2610C3850);
      sub_260FF35F4();
      sub_2610BD5A4();
      sub_260FF3648(v11, v12, v14, v13, v15, v16, v17);
      result = sub_2610BD574();
      v21 ^= result;
      v6 = v7;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x2666F7E40](v21);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v19)
      {
        goto LABEL_11;
      }

      v4 = *(v22 + 8 * v7);
      ++v6;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _s21ProximityAppleIDSetup13SignInCommandV7RequestV2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[7];
  v3 = a1[9];
  v56 = a1[8];
  v57[0] = v3;
  *(v57 + 9) = *(a1 + 153);
  v4 = a1[3];
  v5 = a1[5];
  v52 = a1[4];
  v53 = v5;
  v6 = a1[5];
  v7 = a1[7];
  v54 = a1[6];
  v55 = v7;
  v8 = a1[1];
  v49[0] = *a1;
  v49[1] = v8;
  v9 = a1[3];
  v11 = *a1;
  v10 = a1[1];
  v50 = a1[2];
  v51 = v9;
  v12 = a2[7];
  v13 = a2[9];
  v65 = a2[8];
  v66[0] = v13;
  *(v66 + 9) = *(a2 + 153);
  v14 = a2[3];
  v15 = a2[5];
  v61 = a2[4];
  v62 = v15;
  v16 = a2[5];
  v17 = a2[7];
  v63 = a2[6];
  v64 = v17;
  v18 = a2[1];
  v58[0] = *a2;
  v58[1] = v18;
  v19 = a2[3];
  v21 = *a2;
  v20 = a2[1];
  v59 = a2[2];
  v60 = v19;
  v22 = a1[9];
  v47 = v56;
  v48[0] = v22;
  *(v48 + 9) = *(a1 + 153);
  v43 = v52;
  v44 = v6;
  v45 = v54;
  v46 = v2;
  v39 = v11;
  v40 = v10;
  v41 = v50;
  v42 = v4;
  v23 = a2[9];
  v37 = v65;
  v38[0] = v23;
  *(v38 + 9) = *(a2 + 153);
  v33 = v61;
  v34 = v16;
  v35 = v63;
  v36 = v12;
  v29 = v21;
  v30 = v20;
  v31 = v59;
  v32 = v14;
  sub_260FD2DF8(v49, v69);
  sub_260FD2DF8(v58, v69);
  v24 = _s21ProximityAppleIDSetup11IdMSAccountV2eeoiySbAC_ACtFZ_0(&v39, &v29);
  v67[8] = v37;
  v68[0] = v38[0];
  *(v68 + 9) = *(v38 + 9);
  v67[4] = v33;
  v67[5] = v34;
  v67[6] = v35;
  v67[7] = v36;
  v67[0] = v29;
  v67[1] = v30;
  v67[2] = v31;
  v67[3] = v32;
  sub_260FD2E30(v67);
  v69[8] = v47;
  v70[0] = v48[0];
  *(v70 + 9) = *(v48 + 9);
  v69[4] = v43;
  v69[5] = v44;
  v69[6] = v45;
  v69[7] = v46;
  v69[0] = v39;
  v69[1] = v40;
  v69[2] = v41;
  v69[3] = v42;
  sub_260FD2E30(v69);
  if (v24)
  {
    sub_260FF36B4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
    v25 = sub_2610BC8F4();
    v26 = sub_2610BC8F4();
    v27 = sub_2610BCE24();
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

unint64_t sub_260FF246C()
{
  result = qword_27FE64B78;
  if (!qword_27FE64B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B78);
  }

  return result;
}

unint64_t sub_260FF24C0()
{
  result = qword_27FE64B88;
  if (!qword_27FE64B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B88);
  }

  return result;
}

unint64_t sub_260FF2514()
{
  result = qword_27FE64BA0;
  if (!qword_27FE64BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64BA0);
  }

  return result;
}

uint64_t _s21ProximityAppleIDSetup13SignInCommandV8ResponseV2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[7];
  v3 = a1[9];
  v56 = a1[8];
  v57[0] = v3;
  *(v57 + 9) = *(a1 + 153);
  v4 = a1[3];
  v5 = a1[5];
  v52 = a1[4];
  v53 = v5;
  v6 = a1[5];
  v7 = a1[7];
  v54 = a1[6];
  v55 = v7;
  v8 = a1[1];
  v49[0] = *a1;
  v49[1] = v8;
  v9 = a1[3];
  v11 = *a1;
  v10 = a1[1];
  v50 = a1[2];
  v51 = v9;
  v12 = a2[7];
  v13 = a2[9];
  v65 = a2[8];
  v66[0] = v13;
  *(v66 + 9) = *(a2 + 153);
  v14 = a2[3];
  v15 = a2[5];
  v61 = a2[4];
  v62 = v15;
  v16 = a2[5];
  v17 = a2[7];
  v63 = a2[6];
  v64 = v17;
  v18 = a2[1];
  v58[0] = *a2;
  v58[1] = v18;
  v19 = a2[3];
  v21 = *a2;
  v20 = a2[1];
  v59 = a2[2];
  v60 = v19;
  v22 = a1[9];
  v47 = v56;
  v48[0] = v22;
  *(v48 + 9) = *(a1 + 153);
  v43 = v52;
  v44 = v6;
  v45 = v54;
  v46 = v2;
  v39 = v11;
  v40 = v10;
  v41 = v50;
  v42 = v4;
  v23 = a2[9];
  v37 = v65;
  v38[0] = v23;
  *(v38 + 9) = *(a2 + 153);
  v33 = v61;
  v34 = v16;
  v35 = v63;
  v36 = v12;
  v29 = v21;
  v30 = v20;
  v24 = *(a1 + 22);
  v25 = *(a2 + 22);
  v31 = v59;
  v32 = v14;
  sub_260FD2DF8(v49, v69);
  sub_260FD2DF8(v58, v69);
  v26 = _s21ProximityAppleIDSetup11IdMSAccountV2eeoiySbAC_ACtFZ_0(&v39, &v29);
  v67[8] = v37;
  v68[0] = v38[0];
  *(v68 + 9) = *(v38 + 9);
  v67[4] = v33;
  v67[5] = v34;
  v67[6] = v35;
  v67[7] = v36;
  v67[0] = v29;
  v67[1] = v30;
  v67[2] = v31;
  v67[3] = v32;
  sub_260FD2E30(v67);
  v69[8] = v47;
  v70[0] = v48[0];
  *(v70 + 9) = *(v48 + 9);
  v69[4] = v43;
  v69[5] = v44;
  v69[6] = v45;
  v69[7] = v46;
  v69[0] = v39;
  v69[1] = v40;
  v69[2] = v41;
  v69[3] = v42;
  sub_260FD2E30(v69);
  if (v26)
  {
    v27 = sub_261058754(v24, v25);
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

unint64_t sub_260FF279C()
{
  result = qword_27FE64BB0;
  if (!qword_27FE64BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64BB0);
  }

  return result;
}

unint64_t sub_260FF27F0()
{
  result = qword_27FE64BC0;
  if (!qword_27FE64BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE64BB8, &qword_2610C3848);
    sub_260FD5CF8(&qword_27FE642F8, &protocol conformance descriptor for AIDAServiceType);
    sub_260FF2A04(&qword_27FE64BD0, sub_260FF28D0, MEMORY[0x277D839B8], &protocol conformance descriptor for <> Result<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64BC0);
  }

  return result;
}

unint64_t sub_260FF28D0()
{
  result = qword_27FE64BE0;
  if (!qword_27FE64BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64BE0);
  }

  return result;
}

unint64_t sub_260FF2924()
{
  result = qword_27FE64BF0;
  if (!qword_27FE64BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE64BB8, &qword_2610C3848);
    sub_260FD5CF8(&qword_27FE64328, &protocol conformance descriptor for AIDAServiceType);
    sub_260FF2A04(&qword_27FE64C00, sub_260FF2A88, MEMORY[0x277D839D0], &protocol conformance descriptor for <> Result<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64BF0);
  }

  return result;
}

uint64_t sub_260FF2A04(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE64BD8, &qword_2610C3850);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_260FF2A88()
{
  result = qword_27FE64C08;
  if (!qword_27FE64C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C08);
  }

  return result;
}

unint64_t sub_260FF2B44()
{
  result = qword_27FE64C10;
  if (!qword_27FE64C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C10);
  }

  return result;
}

unint64_t sub_260FF2B98(uint64_t a1)
{
  result = sub_260FF2BC0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_260FF2BC0()
{
  result = qword_27FE64C20;
  if (!qword_27FE64C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C20);
  }

  return result;
}

unint64_t sub_260FF2C14()
{
  result = qword_27FE64C28;
  if (!qword_27FE64C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C28);
  }

  return result;
}

unint64_t sub_260FF2C68(uint64_t a1)
{
  result = sub_260FF2C90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_260FF2C90()
{
  result = qword_27FE64C30;
  if (!qword_27FE64C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C30);
  }

  return result;
}

unint64_t sub_260FF2D24()
{
  result = qword_27FE64C38;
  if (!qword_27FE64C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C38);
  }

  return result;
}

unint64_t sub_260FF2D78()
{
  result = qword_27FE64C40;
  if (!qword_27FE64C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C40);
  }

  return result;
}

unint64_t sub_260FF2DCC()
{
  result = qword_27FE64C48;
  if (!qword_27FE64C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C48);
  }

  return result;
}

unint64_t sub_260FF2E24()
{
  result = qword_27FE64C50;
  if (!qword_27FE64C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C50);
  }

  return result;
}

unint64_t sub_260FF2E78(uint64_t a1)
{
  result = sub_260FF2EA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_260FF2EA0()
{
  result = qword_27FE64C60;
  if (!qword_27FE64C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C60);
  }

  return result;
}

unint64_t sub_260FF2EF4(uint64_t a1)
{
  result = sub_260FF2F1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_260FF2F1C()
{
  result = qword_27FE64C68;
  if (!qword_27FE64C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C68);
  }

  return result;
}

uint64_t sub_260FF2FB0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_260FF3004()
{
  result = qword_27FE64C70;
  if (!qword_27FE64C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C70);
  }

  return result;
}

unint64_t sub_260FF3058()
{
  result = qword_27FE64C78;
  if (!qword_27FE64C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C78);
  }

  return result;
}

unint64_t sub_260FF30AC()
{
  result = qword_27FE64C80;
  if (!qword_27FE64C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C80);
  }

  return result;
}

unint64_t sub_260FF3104()
{
  result = qword_27FE64C88;
  if (!qword_27FE64C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C88);
  }

  return result;
}

unint64_t sub_260FF315C()
{
  result = qword_27FE64C90;
  if (!qword_27FE64C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C90);
  }

  return result;
}

unint64_t sub_260FF31B4()
{
  result = qword_27FE64C98;
  if (!qword_27FE64C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C98);
  }

  return result;
}

unint64_t sub_260FF3208(uint64_t a1)
{
  result = sub_260FF2C14();
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_260FF3294(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_260FF32DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_260FF337C()
{
  result = qword_27FE64CA8;
  if (!qword_27FE64CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64CA8);
  }

  return result;
}

unint64_t sub_260FF33D4()
{
  result = qword_27FE64CB0;
  if (!qword_27FE64CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64CB0);
  }

  return result;
}

unint64_t sub_260FF342C()
{
  result = qword_27FE64CB8;
  if (!qword_27FE64CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64CB8);
  }

  return result;
}

unint64_t sub_260FF3484()
{
  result = qword_27FE64CC0;
  if (!qword_27FE64CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64CC0);
  }

  return result;
}

unint64_t sub_260FF34DC()
{
  result = qword_27FE64CC8;
  if (!qword_27FE64CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64CC8);
  }

  return result;
}

unint64_t sub_260FF3534()
{
  result = qword_27FE64CD0;
  if (!qword_27FE64CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64CD0);
  }

  return result;
}

uint64_t sub_260FF3588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  if (a7)
  {
    return sub_260FF3594(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

uint64_t sub_260FF3594(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 1)
  {
  }

  else if (!a6)
  {
  }

  return v7;
}

unint64_t sub_260FF35F4()
{
  result = qword_27FE64CD8;
  if (!qword_27FE64CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64CD8);
  }

  return result;
}

uint64_t sub_260FF3648(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  if (a7)
  {
    return sub_260FF3654(result, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_260FF3654(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 1)
  {
  }

  else if (!a6)
  {
  }

  return v7;
}

unint64_t sub_260FF36B4()
{
  result = qword_27FE64CE0;
  if (!qword_27FE64CE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE64CE0);
  }

  return result;
}

uint64_t PASFlowStepSendSelectedAccount.__allocating_init(delegate:familyMemberSelection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount__messageSessionProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  *(v6 + v7) = v8;
  v9 = OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount__deviceProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v6 + v9) = v10;
  *(v6 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount_isSignInForSelfSupported) = 0;
  sub_260FDD49C(a3, v6 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount_familyMemberSelection);
  v11 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  sub_260FDD4F8(a3);
  return v11;
}

uint64_t sub_260FF382C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount__messageSessionProvider);
  swift_beginAccess();
  sub_260FF518C(v3 + 16, &v6);
  if (v7)
  {
    return sub_260FA9F80(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63CB0, &unk_2610BFDB0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9E15C(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260FA9F80(&v6, v5);
  swift_beginAccess();
  sub_260FF51FC(v5, v3 + 16);
  swift_endAccess();
}

uint64_t sub_260FF3948()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount__deviceProvider);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v3 = qword_27FE637E0;

    if (v3 != -1)
    {
      swift_once();
    }

    v2 = sub_260F9D764();
    *(v1 + 16) = v2;
    *(v1 + 24) = v4;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_260FF3A20()
{
  sub_260FF3948();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 16))(v7, ObjectType, v1);
  swift_unknownObjectRelease();
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    strcpy(v6, "signInForSelf");
    v6[7] = -4864;
    LOBYTE(v3) = (*(v4 + 24))(v6, v3, v4);

    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
    sub_260FA9980(v7, &qword_27FE63850, qword_2610CC240);
  }

  return v3 & 1;
}

uint64_t PASFlowStepSendSelectedAccount.init(delegate:familyMemberSelection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount__messageSessionProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  *(v3 + v7) = v8;
  v9 = OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount__deviceProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v3 + v9) = v10;
  *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount_isSignInForSelfSupported) = 0;
  sub_260FDD49C(a3, v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount_familyMemberSelection);
  v11 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  sub_260FDD4F8(a3);
  return v11;
}

uint64_t PASFlowStepSendSelectedAccount.prepareForPresentation()()
{
  v1[2] = v0;
  v1[3] = sub_2610BCC74();
  v1[4] = sub_2610BCC64();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_260FF3CA8;

  return sub_26104582C();
}

uint64_t sub_260FF3CA8()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {
    v4 = sub_2610BCBF4();

    return MEMORY[0x2822009F8](sub_260FC97F4, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 56) = v5;
    *v5 = v2;
    v5[1] = sub_260FC9654;

    return sub_260FF3E2C();
  }
}

uint64_t sub_260FF3E4C()
{
  v25 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  *(v0 + 248) = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepSendSelectedAccount sendSelectedAccount", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 240);

  sub_260FDD49C(v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount_familyMemberSelection, v0 + 88);
  v6 = *(v0 + 136);
  if (v6 <= 1)
  {
    if (*(v0 + 136))
    {
      v13 = [*(*(v0 + 88) + 16) dictionary];
      if (v13)
      {
        v14 = v13;
        v11 = sub_2610BC914();
      }

      else
      {
        v11 = sub_260FA8BCC(MEMORY[0x277D84F90]);
      }

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
      goto LABEL_20;
    }
  }

  else
  {
    if (v6 == 2)
    {

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
      v11 = 0;
      v12 = 1;
      goto LABEL_21;
    }

    if (v6 != 3)
    {
      v7 = sub_2610BC794();
      v8 = sub_2610BCD74();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_260F97000, v7, v8, "PASFlowStepSendSelectedAccount sendSelectedAccount with noSelection", v9, 2u);
        MEMORY[0x2666F8720](v9, -1, -1);
      }

      v10 = *(v0 + 8);

      __asm { BRAA            X1, X16 }
    }
  }

  sub_260FDD4F8(v0 + 88);
  v11 = 0;
LABEL_20:
  v12 = 0;
LABEL_21:
  v15 = sub_2610BC794();
  v16 = sub_2610BCD84();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134349056;
    *(v17 + 4) = v12;
    _os_log_impl(&dword_260F97000, v15, v16, "PASFlowStepSendSelectedAccount sendSelectedAccount accountType: %{public}ld", v17, 0xCu);
    MEMORY[0x2666F8720](v17, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66540, &unk_2610C4040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = 1;
  v19 = inited + 32;
  *(inited + 64) = MEMORY[0x277D83B88];
  *(inited + 40) = v12;
  v20 = sub_260FA8D08(inited);
  swift_setDeallocating();
  sub_260FA9980(v19, &qword_27FE63C20, &unk_2610BEDF0);
  *(v0 + 224) = v20;
  if (v11)
  {
    v24[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F70, &qword_2610BF440);
    v24[0] = v11;
    sub_260FAD618(v24, 3);
  }

  *(v0 + 256) = sub_2610BCC74();
  *(v0 + 264) = sub_2610BCC64();
  v22 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_260FF4244, v22, v21);
}

uint64_t sub_260FF4244()
{

  *(v0 + 138) = sub_260FF3A20() & 1;

  return MEMORY[0x2822009F8](sub_260FF42BC, 0, 0);
}

uint64_t sub_260FF42BC()
{
  sub_260FF382C((v0 + 18));
  v1 = v0[21];
  v2 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v1);
  v5 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  v0[34] = v3;
  *v3 = v0;
  v3[1] = sub_260FF43F4;

  return v5(v0 + 23, v1, v2);
}

uint64_t sub_260FF43F4()
{
  *(*v1 + 280) = v0;

  if (v0)
  {

    v2 = sub_260FF48CC;
  }

  else
  {
    v2 = sub_260FF4510;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FF4510()
{
  v1 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 23, v1);
  v2 = v0[28];
  v0[36] = v2;
  v3 = swift_task_alloc();
  v0[37] = v3;
  *v3 = v0;
  v3[1] = sub_260FF45F4;
  v4 = MEMORY[0x277D839B0];

  return sub_260FAECF0(v0 + 137, 7, 0, 0, 1, v2, v1, v4);
}

uint64_t sub_260FF45F4()
{
  *(*v1 + 304) = v0;

  if (v0)
  {

    v2 = sub_260FF4A94;
  }

  else
  {
    v2 = sub_260FF4710;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FF4710()
{
  v1 = *(v0 + 137);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 184));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 144));
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67240192;
    *(v4 + 4) = v1;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepSendSelectedAccount sent .accountSelected message with response: %{BOOL,public}d", v4, 8u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 138);
  v6 = *(v0 + 240);

  *(v6 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount_isSignInForSelfSupported) = v5 & v1 & 1;
  *(v0 + 312) = sub_2610BCC64();
  v8 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_260FF4864, v8, v7);
}

uint64_t sub_260FF4864()
{

  sub_2610439BC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260FF48CC()
{
  v15 = v0;
  v1 = v0[35];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  v2 = v1;
  v3 = sub_2610BC794();
  v4 = sub_2610BCD64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    v0[29] = v1;
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v8 = sub_2610BCA34();
    v10 = sub_260FA5970(v8, v9, &v14);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_260F97000, v3, v4, "PASFlowStepSendSelectedAccount failed to sendSelectedAccount.\n%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  else
  {
  }

  v0[39] = sub_2610BCC64();
  v12 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_260FF4864, v12, v11);
}

uint64_t sub_260FF4A94()
{
  v15 = v0;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 23);
  v1 = v0[38];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  v2 = v1;
  v3 = sub_2610BC794();
  v4 = sub_2610BCD64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    v0[29] = v1;
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v8 = sub_2610BCA34();
    v10 = sub_260FA5970(v8, v9, &v14);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_260F97000, v3, v4, "PASFlowStepSendSelectedAccount failed to sendSelectedAccount.\n%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  else
  {
  }

  v0[39] = sub_2610BCC64();
  v12 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_260FF4864, v12, v11);
}

uint64_t PASFlowStepSendSelectedAccount.nextStep()()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount_familyMemberSelection;
  sub_260FDD49C(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount_familyMemberSelection, &v15);
  if (v17 == 2)
  {
    v2 = v15;
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    v3 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount_isSignInForSelfSupported) != 1)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v13 = *(v3 + 8);
      type metadata accessor for PASFlowStepSendPersonalAccount(0);
      swift_allocObject();
      v6 = sub_260FC3608(v2, Strong, v13);
      swift_unknownObjectRelease();
      v10 = &qword_27FE64068;
      v11 = type metadata accessor for PASFlowStepSendPersonalAccount;
      goto LABEL_7;
    }

    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    v5 = *(v3 + 8);
    sub_260FDD49C(v0 + v1, &v15);
    type metadata accessor for PASFlowStepManateeRepair(0);
    swift_allocObject();
    v6 = sub_260FEB8A0(v4, v5, &v15, 1);
  }

  else
  {
    sub_260FDD4F8(&v15);
    v7 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    v9 = *(v7 + 8);
    sub_260FDD49C(v0 + v1, &v15);
    type metadata accessor for PASFlowStepManateeRepair(0);
    swift_allocObject();
    v6 = sub_260FEB8A0(v8, v9, &v15, 0);
  }

  swift_unknownObjectRelease();
  v10 = &qword_27FE64A10;
  v11 = type metadata accessor for PASFlowStepManateeRepair;
LABEL_7:
  sub_260FF505C(v10, v11);
  return v6;
}

uint64_t sub_260FF4EB4()
{
  sub_260FDD4F8(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount_familyMemberSelection);
}

uint64_t PASFlowStepSendSelectedAccount.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  sub_260FDD4F8(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount_familyMemberSelection);

  return v0;
}

uint64_t PASFlowStepSendSelectedAccount.__deallocating_deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount_familyMemberSelection;

  sub_260FDD4F8(v2 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_260FF5018(uint64_t a1)
{
  result = sub_260FF505C(&qword_27FE64700, type metadata accessor for PASFlowStepSendSelectedAccount);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_260FF505C(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t type metadata accessor for PASFlowStepSendSelectedAccount(uint64_t a1)
{
  result = qword_27FE64D08;
  if (!qword_27FE64D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_260FF518C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63CB0, &unk_2610BFDB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260FF51FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63CB0, &unk_2610BFDB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_260FF527C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepRepairLocalAccount__authenticator);
  swift_beginAccess();
  sub_260FF69D0(v3 + 16, &v6);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63BD0, &qword_2610BED90);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260FA097C(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FF6A40(v5, v3 + 16);
  swift_endAccess();
}

uint64_t PASFlowStepRepairLocalAccount.prepareForPresentation()()
{
  v1[2] = v0;
  v1[3] = sub_2610BCC74();
  v1[4] = sub_2610BCC64();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_260FF5448;

  return sub_26104582C();
}

uint64_t sub_260FF5448()
{
  *(*v1 + 48) = v0;

  v3 = sub_2610BCBF4();
  if (v0)
  {
    v4 = sub_260FF5690;
  }

  else
  {
    v4 = sub_260FF55A4;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_260FF55A4()
{

  v1 = swift_allocObject();
  swift_weakInit();
  sub_260FC3450();
  swift_allocError();
  *v2 = 0xD000000000000033;
  *(v2 + 8) = 0x80000002610D3620;
  *(v2 + 16) = &unk_2610C4060;
  *(v2 + 24) = v1;
  *(v2 + 32) = 0;
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_260FF5690()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260FF56F4(uint64_t a1)
{
  v1[5] = a1;
  sub_2610BCC74();
  v1[6] = sub_2610BCC64();
  v3 = sub_2610BCBF4();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_260FF578C, v3, v2);
}

uint64_t sub_260FF578C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_260FF587C;

    return PASFlowStepRepairLocalAccount.repairLocalAccount()();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_260FF587C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_260FF59C0, v3, v2);
}

uint64_t sub_260FF59C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260FF5A20()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FB6DB4;

  return sub_260FF56F4(v0);
}

uint64_t sub_260FF5AD0()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  v0[10] = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepRepairLocalAccount repairLocalAccount", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  sub_260FF527C((v0 + 2));
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v9 = (*(v6 + 32) + **(v6 + 32));
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_260FF5CC0;

  return v9(v5, v6);
}

uint64_t sub_260FF5CC0()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_260FF5ED8;
  }

  else
  {
    v2 = sub_260FF5DD4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FF5DD4()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  sub_2610BCC74();
  *(v0 + 104) = sub_2610BCC64();
  v2 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_260FF5E70, v2, v1);
}

uint64_t sub_260FF5E70()
{

  sub_2610439BC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260FF5ED8()
{
  v20 = v0;
  v1 = *(v0 + 96);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  *(v0 + 56) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
  if ((swift_dynamicCast() & 1) != 0 && (*(v0 + 120) & 1) == 0)
  {

    v17 = swift_task_alloc();
    *(v0 + 112) = v17;
    *v17 = v0;
    v17[1] = sub_260FF616C;

    return sub_260FF62C8();
  }

  else
  {
    v3 = *(v0 + 96);

    v4 = v3;
    v5 = sub_2610BC794();
    v6 = sub_2610BCD64();

    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 96);
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136446210;
      *(v0 + 64) = v8;
      v11 = v8;
      v12 = sub_2610BCA34();
      v14 = sub_260FA5970(v12, v13, &v19);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_260F97000, v5, v6, "PASFlowStepRepairLocalAccount encountered error but we'll proceed anyway\n%{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x2666F8720](v10, -1, -1);
      MEMORY[0x2666F8720](v9, -1, -1);
    }

    else
    {
    }

    sub_2610BCC74();
    *(v0 + 104) = sub_2610BCC64();
    v16 = sub_2610BCBF4();

    return MEMORY[0x2822009F8](sub_260FF5E70, v16, v15);
  }
}

uint64_t sub_260FF616C()
{

  return MEMORY[0x2822009F8](sub_260FF6268, 0, 0);
}

uint64_t sub_260FF6268()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260FF62E8()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepRepairLocalAccount failed to fetch local account", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 96);

  v6 = v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    sub_260FE4BCC();
    v10 = swift_allocError();
    *v11 = 0;
    *(v0 + 16) = v10;
    *(v0 + 64) = 1;
    v15 = (*(v8 + 16) + **(v8 + 16));
    v12 = swift_task_alloc();
    *(v0 + 112) = v12;
    *v12 = v0;
    v12[1] = sub_260FC7B30;

    return v15(v0 + 16, ObjectType, v8);
  }

  else
  {
    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t PASFlowStepRepairLocalAccount.nextStep()()
{
  v1 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  type metadata accessor for PASFlowStepConnectPeer(0);
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer__deviceProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v4 + v5) = v6;
  v7 = OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  *(v4 + v7) = v8;
  v9 = v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepConnectPeer_result;
  *v9 = 0;
  *(v9 + 8) = -1;
  v10 = sub_26104DC44(Strong, v3);
  swift_unknownObjectRelease();
  sub_260FF68E0(&qword_27FE64D18, type metadata accessor for PASFlowStepConnectPeer);
  return v10;
}

uint64_t PASFlowStepRepairLocalAccount.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepRepairLocalAccount__authenticator;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE65030, &qword_2610C4080);
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0;
  *(v4 + v5) = v6;
  v7 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t PASFlowStepRepairLocalAccount.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup29PASFlowStepRepairLocalAccount__authenticator;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE65030, &qword_2610C4080);
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0;
  *(v2 + v5) = v6;
  v7 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t PASFlowStepRepairLocalAccount.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();

  return v0;
}

uint64_t PASFlowStepRepairLocalAccount.__deallocating_deinit()
{
  v0 = PASSourceFlowStepBase.deinit();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_260FF689C(uint64_t a1)
{
  result = sub_260FF68E0(&qword_27FE64D28, type metadata accessor for PASFlowStepRepairLocalAccount);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_260FF68E0(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t type metadata accessor for PASFlowStepRepairLocalAccount(uint64_t a1)
{
  result = qword_27FE64D30;
  if (!qword_27FE64D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_260FF69D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63BD0, &qword_2610BED90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260FF6A40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63BD0, &qword_2610BED90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *PASAccountStore.__allocating_init(accountStore:accountManager:)(void *a1, void *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = a2[3];
  v9 = a2[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a2, v8);
  v11 = sub_260FFADBC(v7, v10, v2, v5, v8, v6, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v11;
}

uint64_t sub_260FF6B44(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v3 = 0x6341534D44496F6ELL;
  }

  if (v2)
  {
    v4 = 0xED0000746E756F63;
  }

  else
  {
    v4 = 0x80000002610D1900;
  }

  if (*a2)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0x6341534D44496F6ELL;
  }

  if (*a2)
  {
    v6 = 0x80000002610D1900;
  }

  else
  {
    v6 = 0xED0000746E756F63;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2610BD384();
  }

  return v8 & 1;
}

uint64_t sub_260FF6BFC()
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_260FF6C90(uint64_t a1)
{
  sub_2610BCA54();
}

uint64_t sub_260FF6D10(uint64_t a1)
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_260FF6DA0@<X0>(char *a2@<X8>)
{
  v3 = sub_2610BD154();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_260FF6E00(unint64_t *a1@<X8>)
{
  v2 = 0x80000002610D1900;
  v3 = 0x6341534D44496F6ELL;
  if (*v1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v2 = 0xED0000746E756F63;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_260FF6E50()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v3;
  v4 = sub_2610B3EF4(v1);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v6;
}

uint64_t sub_260FF6F18(uint64_t a1)
{
  v2 = sub_260FFC558();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_260FF6F54(uint64_t a1)
{
  v2 = sub_260FFC558();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_260FF6FB4()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_260FE1AB8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64D90, &qword_2610C4548);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26106EFEC;
  v0[13] = &block_descriptor_75;
  v0[14] = v2;
  [v1 aa:v0 + 10 primaryAppleAccountWithCompletion:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_260FF70D0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FFCB98;

  return sub_260FFC6D8(a1, a2);
}

uint64_t sub_260FF718C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_260FF7258(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 144) = a1;
  *(v2 + 152) = v3;
  return MEMORY[0x2822009F8](sub_260FF727C, 0, 0);
}

uint64_t sub_260FF727C()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_260FF73A4;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE668C0, &qword_2610C4530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2610A0A60;
  v0[13] = &block_descriptor_65;
  v0[14] = v3;
  [v1 saveAccount:v2 withCompletionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_260FF73A4(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
    v3 = *(v2 + 8);
    v4 = 0;
  }

  else
  {
    v4 = *(*v1 + 160);
    v3 = *(v2 + 8);
  }

  return v3(v4);
}

uint64_t sub_260FF74C0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 144) = a1;
  *(v2 + 152) = v3;
  return MEMORY[0x2822009F8](sub_260FF74E4, 0, 0);
}

uint64_t sub_260FF74E4()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_260FFCB94;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE668C0, &qword_2610C4530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2610A0A60;
  v0[13] = &block_descriptor_61;
  v0[14] = v3;
  [v1 removeAccount:v2 withCompletionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

id sub_260FF7630(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [v1 credentialForAccount:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_2610BC4F4();

    swift_willThrow();
  }

  return v2;
}

id sub_260FF76EC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = sub_2610BC9D4();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v3 accountTypeWithAccountTypeIdentifier_];

  return v5;
}

uint64_t sub_260FF7748(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260FFCB98;

  return sub_260FFAF5C(a1);
}

uint64_t sub_260FF77F8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      sub_260FA9AB4(0, &qword_27FE64D80, 0x277CB8F30);
      v9 = sub_2610BCB34();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x282200950](v5);
  }
}

id sub_260FF78F8(uint64_t a1)
{
  v2 = [*v1 transportableAuthKitAccount_];

  return v2;
}

id sub_260FF7934()
{
  v1 = [*v0 protoAccount];

  return v1;
}

void *PASAccountStore.init(accountStore:accountManager:)(void *a1, void *a2)
{
  v3 = v2;
  v7 = a1[3];
  v6 = a1[4];
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  MEMORY[0x28223BE20](v8, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = a2[3];
  v13 = a2[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a2, v12);
  MEMORY[0x28223BE20](v14, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = sub_260FFACFC(v10, v16, v3, v7, v12, v6, v13);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v18;
}

uint64_t sub_260FF7B3C()
{
  v1 = *(v0 + 16);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_260FF7C64;

  return v6(v2, v3);
}

uint64_t sub_260FF7C64(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_260FF7D84()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "Attempting to get a partial account", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[8];

  sub_260FA99E0(v5 + 56, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63B00, &qword_2610BED20);
  sub_260FA9AB4(0, &unk_27FE63CD0, 0x277CF0130);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = v0[7];
  v7 = [v6 respondsToSelector_];
  v8 = sub_2610BC794();
  v9 = sub_2610BCD54();
  v10 = os_log_type_enabled(v8, v9);
  if (!v7)
  {
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_260F97000, v8, v9, "We do not have the protoAccount method", v14, 2u);
      MEMORY[0x2666F8720](v14, -1, -1);
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  if (v10)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_260F97000, v8, v9, "We have the protoAccount method, using it", v11, 2u);
    MEMORY[0x2666F8720](v11, -1, -1);
  }

  v12 = [v6 protoAccount];
  v13 = v12;
LABEL_14:
  v15 = v0[1];

  return v15(v13);
}

uint64_t PASAccountStore.renewCredentials(for:options:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_260FF8048, 0, 0);
}

uint64_t sub_260FF8048()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  v8 = (*(v5 + 16) + **(v5 + 16));
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_260FF8188;

  return v8(v3, v2, v4, v5);
}

uint64_t sub_260FF8188(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t PASAccountStore.saveAccount(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_260FF82A8, 0, 0);
}

uint64_t sub_260FF82A8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v7 = (*(v4 + 24) + **(v4 + 24));
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_260FF83E0;

  return v7(v2, v3, v4);
}

uint64_t sub_260FF83E0(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t PASAccountStore.removeAccount(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_260FF8508, 0, 0);
}

uint64_t sub_260FF8508()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v7 = (*(v4 + 32) + **(v4 + 32));
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_260FFCB9C;

  return v7(v2, v3, v4);
}

uint64_t PASAccountStore.credential(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_260FF8660, 0, 0);
}

uint64_t sub_260FF8660()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_260FA9AB4(0, &qword_27FE64D40, 0x277CB8F38);
  *v2 = v0;
  v2[1] = sub_260FF8770;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000010, 0x80000002610D36A0, sub_260FFB3D4, v1, v3);
}

uint64_t sub_260FF8770()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_260FF88A8;
  }

  else
  {

    v2 = sub_260FF888C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FF88A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260FF890C(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v33 = sub_2610BC8B4();
  v36 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v3);
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2610BC8E4();
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64DB8, qword_2610C4560);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v28 - v12;
  v14 = sub_2610BC8C4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_260FA9AB4(0, &qword_27FE66E50, 0x277D85C78);
  (*(v15 + 104))(v18, *MEMORY[0x277D851C8], v14);
  v19 = sub_2610BCE04();
  (*(v15 + 8))(v18, v14);
  (*(v10 + 16))(v13, v29, v9);
  v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v21 = swift_allocObject();
  v22 = v31;
  *(v21 + 16) = v30;
  *(v21 + 24) = v22;
  (*(v10 + 32))(v21 + v20, v13, v9);
  aBlock[4] = sub_260FFCAEC;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_260FF8E10;
  aBlock[3] = &block_descriptor_85;
  v23 = _Block_copy(aBlock);

  v24 = v22;
  sub_2610BC8D4();
  v37 = MEMORY[0x277D84F90];
  sub_260FFCA30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64DA8, &qword_2610C4558);
  sub_260FFCA88();
  v26 = v32;
  v25 = v33;
  sub_2610BCED4();
  MEMORY[0x2666F7700](0, v8, v26, v23);
  _Block_release(v23);

  (*(v36 + 8))(v26, v25);
  (*(v34 + 8))(v8, v35);
}

uint64_t sub_260FF8D40(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v3);
  (*(v4 + 40))(a2, v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64DB8, qword_2610C4560);
  return sub_2610BCC14();
}

uint64_t sub_260FF8E10(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t PASAccountStore.accountType(withAccountTypeIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_260FF8E78, 0, 0);
}

uint64_t sub_260FF8E78()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64D48, &qword_2610C4150);
  *v5 = v0;
  v5[1] = sub_260FF8F90;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000027, 0x80000002610D36C0, sub_260FFB3DC, v4, v6);
}

uint64_t sub_260FF8F90()
{

  return MEMORY[0x2822009F8](sub_260FF90A8, 0, 0);
}

uint64_t sub_260FF90C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v28 = a1;
  v29 = a2;
  v33 = sub_2610BC8B4();
  v36 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v4);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2610BC8E4();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64D98, &qword_2610C4550);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v28 - v13;
  v15 = sub_2610BC8C4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_260FA9AB4(0, &qword_27FE66E50, 0x277D85C78);
  (*(v16 + 104))(v19, *MEMORY[0x277D851C8], v15);
  v20 = sub_2610BCE04();
  (*(v16 + 8))(v19, v15);
  (*(v11 + 16))(v14, v28, v10);
  v21 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v22 = swift_allocObject();
  v23 = v30;
  *(v22 + 2) = v29;
  *(v22 + 3) = v23;
  *(v22 + 4) = v31;
  (*(v11 + 32))(&v22[v21], v14, v10);
  aBlock[4] = sub_260FFC9A4;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_260FF8E10;
  aBlock[3] = &block_descriptor_79;
  v24 = _Block_copy(aBlock);

  sub_2610BC8D4();
  v37 = MEMORY[0x277D84F90];
  sub_260FFCA30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64DA8, &qword_2610C4558);
  sub_260FFCA88();
  v26 = v32;
  v25 = v33;
  sub_2610BCED4();
  MEMORY[0x2666F7700](0, v9, v26, v24);
  _Block_release(v24);

  (*(v36 + 8))(v26, v25);
  (*(v34 + 8))(v9, v35);
}

uint64_t sub_260FF9500(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[5];
  v6 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v5);
  (*(v6 + 48))(a2, a3, v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64D98, &qword_2610C4550);
  return sub_2610BCC14();
}

uint64_t PASAccountStore.idmsAccount(for:)(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](sub_260FF95C4, 0, 0);
}

uint64_t sub_260FF95C4()
{
  v1 = v0[13];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE67030, &unk_2610C4160);
  v4 = swift_allocObject();
  v0[14] = v4;
  *(v4 + 16) = xmmword_2610BF400;
  *(v4 + 32) = sub_2610BCA04();
  *(v4 + 40) = v5;
  v8 = (*(v3 + 56) + **(v3 + 56));
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_260FF9740;

  return v8(v4, v2, v3);
}

uint64_t sub_260FF9740(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_260FF9D14;
  }

  else
  {

    v4 = sub_260FF985C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_260FF985C()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_47;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2610BD0E4())
    {
      v3 = 0;
      v4 = *(v0 + 128);
      v45 = v4 & 0xFFFFFFFFFFFFFF8;
      v46 = v4 & 0xC000000000000001;
      v44 = i;
      while (1)
      {
        if (v46)
        {
          v5 = MEMORY[0x2666F78E0](v3, v1);
        }

        else
        {
          if (v3 >= *(v45 + 16))
          {
            goto LABEL_46;
          }

          v5 = *(v1 + 8 * v3 + 32);
        }

        v6 = v5;
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v8 = [v5 aa_altDSID];
        if (v8)
        {
          v9 = *(v0 + 96);
          v10 = v8;
          v11 = sub_2610BCA04();
          v13 = v12;

          v14 = [v9 aa_altDSID];
          if (v14)
          {
            v15 = v14;
            v16 = sub_2610BCA04();
            v18 = v17;

            if (v11 == v16 && v13 == v18)
            {
LABEL_43:

LABEL_44:

              goto LABEL_49;
            }

            v19 = sub_2610BD384();

            if (v19)
            {
              goto LABEL_44;
            }
          }

          else
          {
          }
        }

        v20 = sub_2610BC9D4();
        v21 = [v6 accountPropertyForKey_];

        if (v21)
        {
          sub_2610BCEA4();
          swift_unknownObjectRelease();
        }

        else
        {
          v47 = 0u;
          v48 = 0u;
        }

        *(v0 + 16) = v47;
        *(v0 + 32) = v48;
        if (!*(v0 + 40))
        {
          sub_260FA9980(v0 + 16, &qword_27FE63830, &qword_2610BE8E0);
          goto LABEL_33;
        }

        sub_260FA9AB4(0, &qword_27FE63F00, 0x277CCABB0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_33;
        }

        v22 = *(v0 + 96);
        v23 = *(v0 + 80);
        v24 = sub_2610BC9D4();
        v25 = [v22 accountPropertyForKey_];

        if (v25)
        {
          sub_2610BCEA4();
          swift_unknownObjectRelease();
        }

        else
        {
          v47 = 0u;
          v48 = 0u;
        }

        *(v0 + 48) = v47;
        *(v0 + 64) = v48;
        if (!*(v0 + 72))
        {
          sub_260FA9980(v0 + 48, &qword_27FE63830, &qword_2610BE8E0);
LABEL_32:

          goto LABEL_33;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_32;
        }

        v26 = *(v0 + 88);
        v27 = sub_2610BCE24();

        if (v27)
        {
          goto LABEL_44;
        }

LABEL_33:
        v28 = [v6 username];
        if (v28)
        {
          v29 = *(v0 + 96);
          v30 = v28;
          v31 = sub_2610BCA04();
          v33 = v32;

          v34 = [v29 username];
          if (v34)
          {
            v35 = v34;
            v36 = sub_2610BCA04();
            v38 = v37;

            if (v31 == v36 && v33 == v38)
            {
              goto LABEL_43;
            }

            v39 = sub_2610BD384();

            if (v39)
            {
              goto LABEL_44;
            }
          }

          else
          {
          }
        }

        ++v3;
        if (v7 == v44)
        {
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      ;
    }

LABEL_48:

    v6 = 0;
LABEL_49:
    v43 = *(v0 + 8);

    return v43(v6);
  }

  else
  {
    sub_260FFB3E8();
    swift_allocError();
    *v40 = 0;
    swift_willThrow();
    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_260FF9D14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PASAccountStore.transportableAuthKitAccount(_:includeCredential:)(uint64_t a1, char a2)
{
  *(v3 + 112) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  return MEMORY[0x2822009F8](sub_260FF9D9C, 0, 0);
}

uint64_t sub_260FF9D9C()
{
  v1 = *(v0 + 64);
  sub_260FA99E0(*(v0 + 72) + 56, v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = [v1 portableCopy];
  if (!v4)
  {
    __break(1u);
    return MEMORY[0x2822008A0](v4, v5, v6, v7, v8, v9, v10, v11);
  }

  v12 = v4;
  v13 = (*(v3 + 8))(v4, v2, v3);
  *(v0 + 80) = v13;

  if (v13)
  {
    v14 = *(v0 + 112);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    if (v14 == 1)
    {
      v15 = *(v0 + 72);
      v16 = swift_task_alloc();
      *(v0 + 88) = v16;
      *(v16 + 16) = v15;
      *(v16 + 24) = v13;
      v17 = swift_task_alloc();
      *(v0 + 96) = v17;
      v11 = sub_260FA9AB4(0, &qword_27FE64D40, 0x277CB8F38);
      *v17 = v0;
      v17[1] = sub_260FF9FE8;
      v9 = sub_260FFCBA8;
      v4 = (v0 + 56);
      v8 = 0x80000002610D36A0;
      v5 = 0;
      v6 = 0;
      v7 = 0xD000000000000010;
      v10 = v16;

      return MEMORY[0x2822008A0](v4, v5, v6, v7, v8, v9, v10, v11);
    }

    v21 = *(v0 + 8);
    v22 = *(v0 + 80);

    return v21(v22);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    sub_260FFB3E8();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_260FF9FE8()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_260FFA180;
  }

  else
  {

    v2 = sub_260FFA104;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260FFA104()
{
  v1 = *(v0 + 56);
  [*(v0 + 80) setCredential_];

  v2 = *(v0 + 8);
  v3 = *(v0 + 80);

  return v2(v3);
}