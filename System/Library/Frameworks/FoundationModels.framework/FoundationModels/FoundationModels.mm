void sub_238810290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2388103CC(void *a1)
{
  if (qword_27DF31B28)
  {
    return (*(a1[8] + 16))();
  }

  else
  {
    return MEMORY[0x2821F9670](a1[4], sel_authenticate_clientID_scopes_resource_withCompletionHandler_, a1[9], a1[5], a1[6], a1[7], a1[8]);
  }
}

void sub_238810518(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(*(a1 + 32) + 8))
  {
    v65 = 0;
    v66 = &v65;
    v67 = 0x2050000000;
    v8 = qword_27DF31B40;
    v68 = qword_27DF31B40;
    if (!qword_27DF31B40)
    {
      v60 = MEMORY[0x277D85DD0];
      v61 = 3221225472;
      v62 = sub_238810ACC;
      v63 = &unk_278A57858;
      v64 = &v65;
      sub_238810988();
      v66[3] = objc_getClass("ACAuthenticationRequest");
      qword_27DF31B40 = *(v64[1] + 24);
      v8 = v66[3];
    }

    v9 = v8;
    _Block_object_dispose(&v65, 8);
    v10 = objc_alloc_init(v8);
    objc_msgSend_setOauthClientID_(v10, v11, *(a1 + 40), v12, v13, v14, v15);
    objc_msgSend_setAuthType_(v10, v16, 3, v17, v18, v19, v20);
    objc_msgSend_setOauthGrantType_(v10, v21, 2, v22, v23, v24, v25);
    objc_msgSend_setOauthResource_(v10, v26, *(a1 + 48), v27, v28, v29, v30);
    objc_msgSend_setOauthScopes_(v10, v31, *(a1 + 56), v32, v33, v34, v35);
    v42 = objc_msgSend_requiresSilentAuthentication(*(a1 + 32), v36, v37, v38, v39, v40, v41);
    objc_msgSend_setInteractivityType_(v10, v43, v42, v44, v45, v46, v47);
    v48 = *(*(a1 + 32) + 8);
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = sub_238810754;
    v57[3] = &unk_278A57808;
    v49 = *(a1 + 64);
    v50 = *(a1 + 72);
    v58 = v49;
    v59 = v50;
    objc_msgSend_authenticateWithRequest_completion_(v48, v51, v10, v57, v52, v53, v54);
  }

  else
  {
    v55 = *(a1 + 64);
    v56 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], a2, @"FMAjaxAuthenticator", 9999, 0, a6, a7);
    (*(v55 + 16))(v55, 0, v56);
  }
}

void sub_238810754(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_27DF31B20;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_238810814;
  block[3] = &unk_278A577E0;
  v9 = v3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void sub_238810814(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = objc_msgSend_serviceTicket(*(a1 + 32), a2, a3, a4, a5, a6, a7);

  if (v8)
  {
    v15 = *(a1 + 48);
    if (v15 == 1)
    {
      v16 = objc_msgSend_oauthAccessToken(*(a1 + 32), v9, v10, v11, v12, v13, v14);
    }

    else
    {
      if (v15)
      {
LABEL_10:
        v19 = *(*(a1 + 40) + 16);

        v19();
        return;
      }

      v16 = objc_msgSend_oauthIDToken(*(a1 + 32), v9, v10, v11, v12, v13, v14);
    }

    v18 = qword_27DF31B28;
    qword_27DF31B28 = v16;

    goto LABEL_10;
  }

  v17 = *(a1 + 40);
  v20 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v9, @"FMAjaxAuthenticator", 2, 0, v13, v14);
  (*(v17 + 16))(v17, 0, v20);
}

Class sub_238810938(uint64_t a1)
{
  sub_238810988();
  result = objc_getClass("ACMobileAuthenticationContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DF31B30 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_238810988()
{
  if (!qword_27DF31B38)
  {
    qword_27DF31B38 = _sl_dlopen();
  }
}

uint64_t sub_238810A58(uint64_t a1)
{
  result = _sl_dlopen();
  qword_27DF31B38 = result;
  return result;
}

Class sub_238810ACC(uint64_t a1)
{
  sub_238810988();
  result = objc_getClass("ACAuthenticationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DF31B40 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t Generable.asPartiallyGenerated()(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(a2 + 16) + 24))(&v10, a1);
  v6 = v10;
  v7 = v11;
  v8 = v12;
  v9 = v13;
  sub_238810CBC(&v6, AssociatedTypeWitness, a1, a2);
  sub_238810DC4(v6, *(&v6 + 1), v7);
}

uint64_t sub_238810CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 17);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v4;
  v14 = v8;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(AssociatedConformanceWitness + 8);
  sub_238814698(v13[0], v4, v8);

  v11 = swift_checkMetadataState();
  return v10(v13, v11, AssociatedConformanceWitness);
}

uint64_t sub_238810DC4(uint64_t result, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 2:

    case 4:

LABEL_6:

    case 3:
      goto LABEL_6;
  }

  return v4;
}

uint64_t sub_238810E44(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_238810E8C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_238810ED4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2388D0D88();
  MEMORY[0x28223BE20](v6);
  sub_238810E44(a1, a2);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2388D3F70;
  v13 = *(v3 + 8);
  v14 = *v3;
  LOBYTE(a1) = *(v3 + 16);
  sub_2388D0DC8();
  swift_allocObject();
  v8 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  *(swift_allocObject() + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  sub_238815678(&qword_27DF2FA08, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90, MEMORY[0x277D83970]);
  sub_2388D2F08();
  sub_2388D0D98();
  v9 = sub_238819C1C(v14, v13, a1, v8);
  v11 = v10;

  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  *(v7 + 48) = 0;
  *a3 = v7;
  return result;
}

uint64_t sub_238811138@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = sub_2388D0D88();
  MEMORY[0x28223BE20](v7);
  sub_238810E44(a2, a3);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2388D3F70;
  v22[0] = a1 & 1;
  v22[1] = 0;
  v23 = 0;
  v9 = sub_23881EF9C(v22);
  v19 = v10;
  v20 = v9;
  v12 = v11;

  sub_2388D0DC8();
  swift_allocObject();
  v13 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  v22[0] = v14;
  sub_238815678(&qword_27DF2FA08, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90, MEMORY[0x277D83970]);
  sub_2388D2F08();
  sub_2388D0D98();
  v15 = sub_238819C1C(v20, v19, v12, v13);
  v17 = v16;

  sub_238810DC4(v20, v19, v12);

  *(v8 + 32) = v15;
  *(v8 + 40) = v17;
  *(v8 + 48) = 0;
  *a4 = v8;
  return result;
}

uint64_t sub_2388113C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = sub_2388D0D88();
  MEMORY[0x28223BE20](v7);
  sub_238810E44(a2, a3);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2388D3F70;
  v22[0] = a1;
  v22[1] = 0.0;
  v23 = 1;
  v9 = sub_23881EF9C(v22);
  v19 = v10;
  v20 = v9;
  v12 = v11;
  swift_bridgeObjectRelease_n();
  sub_2388D0DC8();
  swift_allocObject();
  v13 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  *&v22[0] = v14;
  sub_238815678(&qword_27DF2FA08, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90, MEMORY[0x277D83970]);
  sub_2388D2F08();
  sub_2388D0D98();
  v15 = sub_238819C1C(v20, v19, v12, v13);
  v17 = v16;

  sub_238810DC4(v20, v19, v12);

  *(v8 + 32) = v15;
  *(v8 + 40) = v17;
  *(v8 + 48) = 0;
  *a4 = v8;
  return result;
}

uint64_t sub_238811664@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>, float a4@<S0>)
{
  v7 = sub_2388D0D88();
  MEMORY[0x28223BE20](v7);
  sub_238810E44(a1, a2);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2388D3F70;
  v21[0] = a4;
  v21[1] = 0.0;
  v22 = 1;
  v19 = sub_23881EF9C(v21);
  v10 = v9;
  v12 = v11;
  swift_bridgeObjectRelease_n();
  sub_2388D0DC8();
  swift_allocObject();
  v13 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  *&v21[0] = v14;
  sub_238815678(&qword_27DF2FA08, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90, MEMORY[0x277D83970]);
  sub_2388D2F08();
  sub_2388D0D98();
  v15 = sub_238819C1C(v19, v10, v12, v13);
  v17 = v16;

  sub_238810DC4(v19, v10, v12);

  *(v8 + 32) = v15;
  *(v8 + 40) = v17;
  *(v8 + 48) = 0;
  *a3 = v8;
  return result;
}

uint64_t sub_23881190C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v7 = sub_2388D0D88();
  MEMORY[0x28223BE20](v7);
  sub_238810E44(a1, a2);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2388D3F70;
  *v21 = a4;
  v21[1] = 0;
  v22 = 1;
  v19 = sub_23881EF9C(v21);
  v10 = v9;
  v12 = v11;

  sub_2388D0DC8();
  swift_allocObject();
  v13 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  v21[0] = v14;
  sub_238815678(&qword_27DF2FA08, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90, MEMORY[0x277D83970]);
  sub_2388D2F08();
  sub_2388D0D98();
  v15 = sub_238819C1C(v19, v10, v12, v13);
  v17 = v16;

  sub_238810DC4(v19, v10, v12);

  *(v8 + 32) = v15;
  *(v8 + 40) = v17;
  *(v8 + 48) = 0;
  *a3 = v8;
  return result;
}

uint64_t sub_238811BAC@<X0>(uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  v23 = sub_2388D0D88();
  MEMORY[0x28223BE20](v23);
  sub_238810E44(a4, a5);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2388D3F70;
  v9 = sub_2388D2E48();
  sub_2388D2D38();
  v11 = v10;

  v25[0] = v11;
  v25[1] = 0;
  v26 = 1;
  v22 = sub_23881EF9C(v25);
  v13 = v12;
  v15 = v14;
  swift_bridgeObjectRelease_n();
  sub_2388D0DC8();
  swift_allocObject();
  v16 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  v25[0] = v17;
  sub_238815678(&qword_27DF2FA08, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90, MEMORY[0x277D83970]);
  sub_2388D2F08();
  sub_2388D0D98();
  v18 = sub_238819C1C(v22, v13, v15, v16);
  v20 = v19;

  sub_238810DC4(v22, v13, v15);

  *(v8 + 32) = v18;
  *(v8 + 40) = v20;
  *(v8 + 48) = 0;
  *a6 = v8;
  return result;
}

uint64_t sub_238811E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v17 = sub_2388D0D88();
  MEMORY[0x28223BE20](v17);
  sub_238810E44(a3, a4);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2388D3F70;
  (*(a2 + 24))(v19, a1, a2);
  v10 = v19[1];
  v16 = v19[0];
  LOBYTE(a1) = v20;
  sub_2388D0DC8();
  swift_allocObject();
  v11 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  *(swift_allocObject() + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  sub_238815678(&qword_27DF2FA08, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90, MEMORY[0x277D83970]);
  sub_2388D2F08();
  sub_2388D0D98();
  v12 = sub_238819C1C(v16, v10, a1, v11);
  v14 = v13;

  sub_238810DC4(v16, v10, a1);

  *(v9 + 32) = v12;
  *(v9 + 40) = v14;
  *(v9 + 48) = 0;
  *a5 = v9;
  return result;
}

double Optional<A>.generatedContent.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[4] = *(a1 + 16);
  v15[5] = a2;
  v15[2] = a2;
  v15[3] = swift_getKeyPath();
  sub_2388122EC(sub_23881466C, v15, MEMORY[0x277D84A98], &type metadata for GeneratedContent, v4, &v16);

  v5 = v19;
  if (v19 == 1)
  {
    if (qword_27DF2F9B8 != -1)
    {
      swift_once();
    }

    v6 = qword_27DF3F830;
    v7 = *algn_27DF3F838;
    v8 = HIBYTE(word_27DF3F840);
    v9 = qword_27DF3F848;
    v10 = unk_27DF3F850;
    *a3 = qword_27DF3F830;
    *(a3 + 8) = v7;
    v11 = word_27DF3F840;
    *(a3 + 16) = word_27DF3F840;
    *(a3 + 17) = v8;
    *(a3 + 24) = v9;
    *(a3 + 32) = v10;
    sub_238814698(v6, v7, v11);
  }

  else
  {
    v14 = v17;
    v13 = v18;
    result = *&v16;
    *a3 = v16;
    *(a3 + 16) = v14;
    *(a3 + 17) = HIBYTE(v14) & 1;
    *(a3 + 24) = v13;
    *(a3 + 32) = v5;
  }

  return result;
}

double sub_23881227C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a1 + a2 - 8) + 24))(&v7, *(a1 + a2 - 16));
  v4 = v8;
  v5 = v9;
  *a3 = v7;
  *(a3 + 16) = v4;
  *(a3 + 17) = v5;
  result = v10[0];
  *(a3 + 24) = *v10;
  return result;
}

uint64_t sub_2388122EC@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t static Bool.generationSchema.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GenerationSchema.Kind(0);
  MEMORY[0x28223BE20](v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_238814708(v4, a1);
  v10[1] = MEMORY[0x277D839B0];
  sub_238810E44(&qword_27DF2FA28, &unk_2388D3FD0);
  v5 = sub_2388D28B8();
  v7 = v6;
  sub_23881476C(v4);
  result = type metadata accessor for GenerationSchema(0);
  v9 = (a1 + *(result + 20));
  *v9 = v5;
  v9[1] = v7;
  return result;
}

uint64_t Bool.init(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = *(a1 + 32);
  if (v1)
  {
    v2 = sub_238814A84();
  }

  else
  {
    v2 = v4[0];
  }

  sub_238814D44(v4);
  return v2 & 1;
}

uint64_t Bool.generatedContent.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v9[0] = a1 & 1;
  v9[1] = 0;
  v10 = 0;
  v3 = sub_23881EF9C(v9);
  v5 = v4;
  v7 = v6;

  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 17) = HIBYTE(v7) & 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_238812804@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GenerationSchema.Kind(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_238814708(v5, a1);
  v12 = v1;
  sub_238810E44(&qword_27DF2FA28, &unk_2388D3FD0);
  v6 = sub_2388D28B8();
  v8 = v7;
  sub_23881476C(v5);
  result = type metadata accessor for GenerationSchema(0);
  v10 = (a1 + *(result + 20));
  *v10 = v6;
  v10[1] = v8;
  return result;
}

uint64_t sub_2388128E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v8 = *(a1 + 32);
  if (v4)
  {
    v5 = sub_238814A84();
    result = sub_238814D44(v7);
    if (v2)
    {
      return result;
    }
  }

  else
  {
    v5 = v7[0];
    result = sub_238814D44(v7);
  }

  *a2 = v5 & 1;
  return result;
}

uint64_t sub_238812964@<X0>(uint64_t a1@<X8>)
{
  v9[0] = *v1;
  v9[1] = 0;
  v10 = 0;
  v3 = sub_23881EF9C(v9);
  v5 = v4;
  v7 = v6;

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 17) = HIBYTE(v7) & 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t static String.generationSchema.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_238810E44(&qword_27DF2FA30, &qword_2388D44E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v17 - v3;
  v5 = type metadata accessor for GenerationSchema.Kind(0);
  MEMORY[0x28223BE20](v5);
  v7 = (v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v7 + *(sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0) + 64);
  *v7 = 0u;
  v7[1] = 0u;
  v9 = sub_238810E44(&qword_27DF2FA40, &unk_2388D4500);
  v10 = *(*(v9 - 8) + 56);
  v10(v4, 1, 1, v9);
  v11 = *(type metadata accessor for StringGuides(0) + 20);
  v10(&v8[v11], 1, 1, v9);
  *v8 = 0;
  sub_2388150EC(v4, &v8[v11]);
  swift_storeEnumTagMultiPayload();
  sub_238814708(v7, a1);
  v17[1] = MEMORY[0x277D837D0];
  sub_238810E44(&qword_27DF2FA48, &unk_2388D3FF0);
  v12 = sub_2388D28B8();
  v14 = v13;
  sub_23881476C(v7);
  result = type metadata accessor for GenerationSchema(0);
  v16 = (a1 + *(result + 20));
  *v16 = v12;
  v16[1] = v14;
  return result;
}

_OWORD *String.init(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v7 = *(a1 + 32);
  if (v2 == 2)
  {
    v3 = *&v6[0];
  }

  else
  {
    v3 = v6;
    v4 = sub_2388147C8();
    if (!v1)
    {
      v3 = v4;
    }
  }

  sub_238814D44(v6);
  return v3;
}

uint64_t String.generatedContent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10[0] = a1;
  v10[1] = a2;
  v11 = 2;

  v4 = sub_23881EF9C(v10);
  v6 = v5;
  v8 = v7;

  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  *(a3 + 17) = HIBYTE(v8) & 1;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

uint64_t sub_238812D2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v4;
  v11 = *(a1 + 32);
  if (v4 == 2)
  {
    v5 = *(&v10[0] + 1);
    v6 = *&v10[0];
  }

  else
  {
    v7 = sub_2388147C8();
    if (v2)
    {
      return sub_238814D44(v10);
    }

    v6 = v7;
    v5 = v8;
  }

  result = sub_238814D44(v10);
  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t sub_238812DC0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v10[0] = *v1;
  v10[1] = v3;
  v11 = 2;

  v4 = sub_23881EF9C(v10);
  v6 = v5;
  v8 = v7;

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8;
  *(a1 + 17) = HIBYTE(v8) & 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t static Int.generationSchema.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GenerationSchema.Kind(0);
  MEMORY[0x28223BE20](v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v4 = 0;
  v4[8] = 1;
  *(v4 + 2) = 0;
  v4[24] = 1;
  swift_storeEnumTagMultiPayload();
  sub_238814708(v4, a1);
  v10[1] = MEMORY[0x277D83B88];
  sub_238810E44(&qword_27DF2FA50, "\bH");
  v5 = sub_2388D28B8();
  v7 = v6;
  sub_23881476C(v4);
  result = type metadata accessor for GenerationSchema(0);
  v9 = (a1 + *(result + 20));
  *v9 = v5;
  v9[1] = v7;
  return result;
}

uint64_t Int.init(_:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = sub_238815BE8();
  sub_238810DC4(v1, v2, v3);

  return v4;
}

uint64_t Int.generatedContent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v9[0] = a1;
  v9[1] = 0.0;
  v10 = 1;
  v3 = sub_23881EF9C(v9);
  v5 = v4;
  v7 = v6;
  result = swift_bridgeObjectRelease_n();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 17) = HIBYTE(v7) & 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_23881302C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GenerationSchema.Kind(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v5 = 0;
  v5[8] = 1;
  *(v5 + 2) = 0;
  v5[24] = 1;
  swift_storeEnumTagMultiPayload();
  sub_238814708(v5, a1);
  v12 = v1;
  sub_238810E44(&qword_27DF2FA50, "\bH");
  v6 = sub_2388D28B8();
  v8 = v7;
  sub_23881476C(v5);
  result = type metadata accessor for GenerationSchema(0);
  v10 = (a1 + *(result + 20));
  *v10 = v6;
  v10[1] = v8;
  return result;
}

uint64_t sub_23881311C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = sub_238815BE8();
  sub_238810DC4(v4, v5, v6);

  if (!v2)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t Float.init(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  if (v1 != 1)
  {
    sub_238814D98();
  }

  return sub_238814D44(v3);
}

uint64_t Float.generatedContent.getter@<X0>(uint64_t a1@<X8>, float a2@<S0>)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v9[0] = a2;
  v9[1] = 0.0;
  v10 = 1;
  v3 = sub_23881EF9C(v9);
  v5 = v4;
  v7 = v6;
  result = swift_bridgeObjectRelease_n();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 17) = HIBYTE(v7) & 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_238813310@<X0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v10 = *(a1 + 32);
  if (v4 == 1)
  {
    v5 = *v9;
    result = sub_238814D44(v9);
  }

  else
  {
    sub_238814D98();
    v5 = v7;
    result = sub_238814D44(v9);
    if (v2)
    {
      return result;
    }
  }

  v8 = v5;
  *a2 = v8;
  return result;
}

double Double.init(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v1;
  v6 = *(a1 + 32);
  if (v1 == 1)
  {
    v2 = *v5;
  }

  else
  {
    sub_238814D98();
    v2 = v3;
  }

  sub_238814D44(v5);
  return v2;
}

uint64_t Double.generatedContent.getter@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *v9 = a2;
  v9[1] = 0;
  v10 = 1;
  v3 = sub_23881EF9C(v9);
  v5 = v4;
  v7 = v6;

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 17) = HIBYTE(v7) & 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_2388134F0@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v4;
  v9 = *(a1 + 32);
  if (v4 == 1)
  {
    v5 = *&v8[0];
    result = sub_238814D44(v8);
  }

  else
  {
    sub_238814D98();
    v5 = v7;
    result = sub_238814D44(v8);
    if (v2)
    {
      return result;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t sub_238813574@<X0>(uint64_t a1@<X8>)
{
  v9[0] = *v1;
  v9[1] = 0;
  v10 = 1;
  v3 = sub_23881EF9C(v9);
  v5 = v4;
  v7 = v6;

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 17) = HIBYTE(v7) & 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t _sSd16FoundationModelsE16generationSchemaAA010GenerationD0VvgZ_0@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  type metadata accessor for GenerationSchema.Kind(0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for GenerationSchema(0);
  v3 = (a1 + *(result + 20));
  *v3 = 0x7265626D754ELL;
  v3[1] = 0xE600000000000000;
  return result;
}

uint64_t NSDecimal.init(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v7 = *(a1 + 32);
  if (v2 == 1)
  {
    v3 = *v6;
    result = sub_238814D44(v6);
  }

  else
  {
    sub_238814D98();
    v3 = v5;
    result = sub_238814D44(v6);
    if (v1)
    {
      return result;
    }
  }

  return MEMORY[0x23EE670F0](result, v3);
}

uint64_t NSDecimal.generatedContent.getter@<X0>(uint64_t a4@<X8>)
{
  v5 = sub_2388D2E48();
  sub_2388D2D38();
  v7 = v6;

  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  v14[0] = v7;
  v14[1] = 0;
  v15 = 1;
  v8 = sub_23881EF9C(v14);
  v10 = v9;
  v12 = v11;
  result = swift_bridgeObjectRelease_n();
  *a4 = v8;
  *(a4 + 8) = v10;
  *(a4 + 16) = v12;
  *(a4 + 17) = HIBYTE(v12) & 1;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  return result;
}

uint64_t sub_2388137C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v4;
  v11 = *(a1 + 32);
  if (v4 == 1)
  {
    v5 = *v10;
    result = sub_238814D44(v10);
  }

  else
  {
    sub_238814D98();
    v5 = v7;
    result = sub_238814D44(v10);
    if (v2)
    {
      return result;
    }
  }

  result = MEMORY[0x23EE670F0](result, v5);
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  return result;
}

uint64_t static Array<A>.generationSchema.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for GenerationSchema.Kind(0);
  MEMORY[0x28223BE20](v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = a1;
  *(v8 + 1) = a2;
  *(v8 + 2) = 0;
  v8[24] = 1;
  *(v8 + 4) = 0;
  v8[40] = 1;
  *(v8 + 6) = 0;
  swift_storeEnumTagMultiPayload();
  v9 = sub_2388D2B18();
  sub_238814708(v8, a3);
  v15[1] = v9;
  swift_getMetatypeMetadata();
  v10 = sub_2388D28B8();
  v12 = v11;
  sub_23881476C(v8);
  result = type metadata accessor for GenerationSchema(0);
  v14 = (a3 + *(result + 20));
  *v14 = v10;
  v14[1] = v12;
  return result;
}

uint64_t Array<A>.generatedContent.getter@<X0>(uint64_t x8_0@<X8>)
{
  sub_238810E44(&qword_27DF2FA58, &qword_2388D4000);
  v4 = sub_2388D3098();

  return sub_238813A34(v4, 0, 0, x8_0);
}

uint64_t sub_238813A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 16);
  v48 = MEMORY[0x277D84F90];
  result = sub_2388B7B78(0, v5, 0);
  v7 = v48;
  v38 = v5;
  v39 = a1;
  if (v5)
  {
    v8 = *(a1 + 16);
    v9 = a1 + 32;
    while (v8)
    {
      sub_238815814(v9, v45);
      v10 = v46;
      v11 = v47;
      sub_238815878(v45, v46);
      (*(v11 + 24))(&v41, v10, v11);
      v12 = v41;
      v13 = v42;
      v14 = v43;
      v40 = v44;
      sub_238814698(v41, v42, v43);
      sub_238810DC4(v12, v13, v14);

      result = sub_2388158BC(v45);
      v48 = v7;
      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_2388B7B78((v15 > 1), v16 + 1, 1);
        v7 = v48;
      }

      *(v7 + 16) = v16 + 1;
      v17 = v7 + 24 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v13;
      *(v17 + 48) = v14;
      *(v17 + 49) = v40;
      v9 += 40;
      --v8;
      if (!--v5)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v18 = v38;
    result = v39;
    v19 = *(v39 + 16);
    if (v38 == v19)
    {
LABEL_8:

      v20 = sub_23882D3D4(v7);
      v22 = v21;
      v24 = v23;
      sub_238814698(v20, v21, v23);

      *a4 = v20;
      *(a4 + 8) = v22;
      *(a4 + 16) = v24;
      *(a4 + 17) = HIBYTE(v24) & 1;
      *(a4 + 24) = a2;
      *(a4 + 32) = a3;
      return result;
    }

    v25 = v39 + 40 * v38 + 32;
    while (v18 < v19)
    {
      sub_238815814(v25, v45);
      v26 = v46;
      v27 = v47;
      sub_238815878(v45, v46);
      (*(v27 + 24))(&v41, v26, v27);
      v28 = v41;
      v29 = v42;
      v30 = v43;
      v31 = v44;
      sub_238814698(v41, v42, v43);
      sub_238810DC4(v28, v29, v30);

      sub_2388158BC(v45);
      v48 = v7;
      v33 = *(v7 + 16);
      v32 = *(v7 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_2388B7B78((v32 > 1), v33 + 1, 1);
        v7 = v48;
      }

      ++v18;
      *(v7 + 16) = v33 + 1;
      v34 = v7 + 24 * v33;
      *(v34 + 32) = v28;
      *(v34 + 40) = v29;
      *(v34 + 48) = v30;
      *(v34 + 49) = v31;
      result = v39;
      v19 = *(v39 + 16);
      v25 += 40;
      if (v18 == v19)
      {
        goto LABEL_8;
      }
    }
  }

  __break(1u);
  return result;
}

void *Array<A>.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 17);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 16);
  v20[0] = *a1;
  v6 = v20[0];
  v20[1] = v7;
  v21 = v11;
  v22 = v8;
  v23 = v9;
  v24 = v10;
  v12 = v20;
  v13 = sub_23881608C();
  sub_238810DC4(v6, v7, v11);

  if (!v3)
  {
    v20[0] = v13;
    MEMORY[0x28223BE20](v14);
    v19[2] = a2;
    v19[3] = a3;
    v19[4] = a2;
    v15 = sub_238810E44(&qword_27DF2FA60, &qword_2388D4008);
    v16 = sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
    v17 = sub_238815180(&qword_27DF2FA70, &qword_27DF2FA60, &qword_2388D4008, MEMORY[0x277D83988]);
    v12 = sub_238813F68(sub_23881515C, v19, v15, a2, v16, v17, MEMORY[0x277D84950], &v25);
  }

  return v12;
}

uint64_t sub_238813EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 17);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v9;
  v17 = v13;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v14 = *(a4 + 8);
  sub_238814698(v16[0], v9, v13);

  result = v14(v16, a3, a4);
  if (v5)
  {
    *a5 = v5;
  }

  return result;
}

uint64_t sub_238813F68(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_2388D2D78();
  if (!v19)
  {
    return sub_2388D2AF8();
  }

  v41 = v19;
  v45 = sub_2388D3038();
  v32 = sub_2388D3048();
  sub_2388D3018();
  result = sub_2388D2D68();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_2388D2D98();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_2388D3028();
      result = sub_2388D2D88();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_238814388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = Array<A>.init(_:)(a1, *(a2 + 16), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t Never.init(_:)(uint64_t a1)
{
  sub_238810DC4(*a1, *(a1 + 8), *(a1 + 16));

  sub_2388151C8(v1, v2, v3);
  swift_allocError();
  *v4 = 0xD000000000000028;
  *(v4 + 8) = 0x80000002388DE1C0;
  *(v4 + 16) = MEMORY[0x277D84F90];
  *(v4 + 24) = 0;
  *(v4 + 32) = 5;
  return swift_willThrow();
}

uint64_t sub_238814564(uint64_t a1)
{
  sub_238810DC4(*a1, *(a1 + 8), *(a1 + 16));

  sub_2388151C8(v1, v2, v3);
  swift_allocError();
  *v4 = 0xD000000000000028;
  *(v4 + 8) = 0x80000002388DE1C0;
  *(v4 + 16) = MEMORY[0x277D84F90];
  *(v4 + 24) = 0;
  *(v4 + 32) = 5;
  return swift_willThrow();
}

__n128 sub_238814660(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_238814698(uint64_t result, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 2:

    case 4:

LABEL_6:

    case 3:
      goto LABEL_6;
  }

  return v4;
}

uint64_t sub_238814708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerationSchema.Kind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23881476C(uint64_t a1)
{
  v2 = type metadata accessor for GenerationSchema.Kind(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2388147C8()
{
  v1 = sub_2388D0D88();
  MEMORY[0x28223BE20](v1);
  sub_2388D2FA8();

  v12 = *(v0 + 8);
  v13 = *v0;
  v2 = *(v0 + 16);
  sub_2388D0DC8();
  swift_allocObject();
  v3 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  *(swift_allocObject() + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  sub_238815678(&qword_27DF2FA08, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90, MEMORY[0x277D83970]);
  sub_2388D2F08();
  sub_2388D0D98();
  v4 = sub_238819C1C(v13, v12, v2, v3);
  v6 = v5;

  MEMORY[0x23EE66C20](v4, v6);

  sub_2388151C8(v7, v8, v9);
  swift_allocError();
  *v10 = 0xD000000000000033;
  *(v10 + 8) = 0x80000002388DE260;
  *(v10 + 16) = MEMORY[0x277D84F90];
  *(v10 + 24) = 0;
  *(v10 + 32) = 5;
  return swift_willThrow();
}

uint64_t sub_238814A84()
{
  v1 = sub_2388D0D88();
  MEMORY[0x28223BE20](v1);
  sub_2388D2FA8();

  v12 = *(v0 + 8);
  v13 = *v0;
  v2 = *(v0 + 16);
  sub_2388D0DC8();
  swift_allocObject();
  v3 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  *(swift_allocObject() + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  sub_238815678(&qword_27DF2FA08, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90, MEMORY[0x277D83970]);
  sub_2388D2F08();
  sub_2388D0D98();
  v4 = sub_238819C1C(v13, v12, v2, v3);
  v6 = v5;

  MEMORY[0x23EE66C20](v4, v6);

  sub_2388151C8(v7, v8, v9);
  swift_allocError();
  *v10 = 0xD000000000000031;
  *(v10 + 8) = 0x80000002388DE2A0;
  *(v10 + 16) = MEMORY[0x277D84F90];
  *(v10 + 24) = 0;
  *(v10 + 32) = 5;
  swift_willThrow();
  return 0;
}

uint64_t sub_238814D98()
{
  v1 = sub_2388D0D88();
  MEMORY[0x28223BE20](v1);
  sub_2388D2FA8();

  v12 = *(v0 + 8);
  v13 = *v0;
  v2 = *(v0 + 16);
  sub_2388D0DC8();
  swift_allocObject();
  v3 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  *(swift_allocObject() + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  sub_238815678(&qword_27DF2FA08, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90, MEMORY[0x277D83970]);
  sub_2388D2F08();
  sub_2388D0D98();
  v4 = sub_238819C1C(v13, v12, v2, v3);
  v6 = v5;

  MEMORY[0x23EE66C20](v4, v6);

  sub_2388151C8(v7, v8, v9);
  swift_allocError();
  *v10 = 0xD000000000000033;
  *(v10 + 8) = 0x80000002388DE220;
  *(v10 + 16) = MEMORY[0x277D84F90];
  *(v10 + 24) = 0;
  *(v10 + 32) = 5;
  return swift_willThrow();
}

uint64_t sub_2388150EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_238810E44(&qword_27DF2FA30, &qword_2388D44E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_238815180(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_238810E8C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2388151C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF2FA78;
  if (!qword_27DF2FA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FA78);
  }

  return result;
}

uint64_t sub_23881521C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2388153A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_238815424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

__n128 sub_2388154EC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_238815504(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238815524(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 20) = v3;
  return result;
}

void sub_238815578(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_2388155C4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_2388D1348();
}

uint64_t sub_238815678(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_238815764(uint64_t a1, uint64_t a2)
{
  sub_2388D34A8();
  swift_getWitnessTable();
  sub_2388D1358();
  return sub_2388D34E8();
}

uint64_t sub_238815814(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_238815878(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2388158BC(void *a1)
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

uint64_t GeneratedContent.jsonString.getter()
{
  v1 = sub_2388D0D88();
  MEMORY[0x28223BE20](v1);
  v2 = *(v0 + 8);
  v7 = *v0;
  v3 = *(v0 + 16);
  sub_2388D0DC8();
  swift_allocObject();
  v4 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  *(swift_allocObject() + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  sub_238815B14();
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90, MEMORY[0x277D83970]);
  sub_2388D2F08();
  sub_2388D0D98();
  v5 = sub_238819C1C(v7, v2, v3, v4);

  return v5;
}

unint64_t sub_238815B14()
{
  result = qword_27DF2FA08;
  if (!qword_27DF2FA08)
  {
    sub_2388D0D88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FA08);
  }

  return result;
}

uint64_t GeneratedContent.init(kind:id:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v13 = *a1;
  v14 = v4;
  v7 = sub_23881EF9C(&v13);
  v9 = v8;
  v11 = v10;

  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v11;
  *(a3 + 17) = HIBYTE(v11) & 1;
  *(a3 + 24) = v5;
  *(a3 + 32) = v6;
  return result;
}

uint64_t sub_238815BE8()
{
  v2 = sub_2388D0D88();
  MEMORY[0x28223BE20](v2);
  v3 = *v0;
  v4 = *(v0 + 1);
  if (v4 == 1)
  {
    v5 = *v0;
  }

  else
  {
    result = sub_238814D98();
    if (v1)
    {
      return result;
    }
  }

  v7 = trunc(v5);
  if (v5 > -9.22337204e18 && v5 < 9.22337204e18 && v5 == v7)
  {
    return v5;
  }

  sub_2388D2FA8();

  sub_2388D0DC8();
  swift_allocObject();
  v10 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  *(swift_allocObject() + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  sub_238815B14();
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90, MEMORY[0x277D83970]);
  sub_2388D2F08();
  sub_2388D0D98();
  v11 = sub_238819C1C(v3, *(&v3 + 1), v4, v10);
  v13 = v12;

  MEMORY[0x23EE66C20](v11, v13);

  sub_2388151C8(v14, v15, v16);
  swift_allocError();
  *v17 = 0xD000000000000033;
  *(v17 + 8) = 0x80000002388DE4C0;
  *(v17 + 16) = MEMORY[0x277D84F90];
  *(v17 + 24) = 0;
  *(v17 + 32) = 5;
  return swift_willThrow();
}

uint64_t GeneratedContent.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  (*(a3 + 24))(v14, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  v7 = v14[0];
  v8 = v14[1];
  v9 = v15;
  v10 = v16;
  v11 = v17;
  v12 = v18;

  *a4 = v7;
  *(a4 + 8) = v8;
  *(a4 + 16) = v9;
  *(a4 + 17) = v10;
  *(a4 + 24) = v11;
  *(a4 + 32) = v12;
  return result;
}

uint64_t GeneratedContent.init<A>(elements:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, uint64_t a6@<X7>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = sub_238818408(sub_23881834C, 0, a3, &type metadata for GeneratedJSON, MEMORY[0x277D84A98], a4, MEMORY[0x277D84AC0], a6);
  v12 = sub_23882D3D4(v11);
  v14 = v13;
  v16 = v15;
  sub_238814698(v12, v13, v15);

  (*(*(a3 - 1) + 8))(a1, a3);

  *a5 = v12;
  *(a5 + 8) = v14;
  *(a5 + 16) = v16;
  *(a5 + 17) = HIBYTE(v16) & 1;
  *(a5 + 24) = v9;
  *(a5 + 32) = v10;
  return result;
}

uint64_t sub_23881608C()
{
  v1 = sub_2388D0D88();
  v2 = MEMORY[0x28223BE20](v1);
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 17);
  v21 = *v0;
  v22 = v4;
  v23 = v5;
  v24 = v6;
  v25 = *(v0 + 24);
  GeneratedContent.kind.getter(v2, v19);
  result = v19[0];
  if (v20 != 3)
  {
    sub_238810DC4(v19[0], v19[1], v20);
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_2388D2FA8();

    v21 = 0xD000000000000035;
    v22 = 0x80000002388DE480;
    sub_2388D0DC8();
    swift_allocObject();
    v8 = sub_2388D0DB8();
    sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_2388D3F70;
    sub_2388D0D78();
    v19[0] = v9;
    sub_238815B14();
    v26 = v4;
    sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
    sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90, MEMORY[0x277D83970]);
    sub_2388D2F08();
    sub_2388D0D98();
    v10 = sub_238819C1C(v3, v26, v5, v8);
    v12 = v11;

    MEMORY[0x23EE66C20](v10, v12);

    v14 = v21;
    v15 = v22;
    sub_2388151C8(v13, v16, v17);
    swift_allocError();
    *v18 = v14;
    *(v18 + 8) = v15;
    *(v18 + 16) = MEMORY[0x277D84F90];
    *(v18 + 24) = 0;
    *(v18 + 32) = 5;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_23881634C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v55 = MEMORY[0x277D84F90];
  sub_2388B7BB0(0, v1, 0);
  v2 = v55;
  v4 = v3 + 64;
  result = sub_2388D2F18();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v36 = v3 + 72;
  v37 = v1;
  v38 = v8;
  v39 = v3 + 64;
  v40 = v3;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v41 = v7;
    v11 = (*(v3 + 48) + 16 * v6);
    v12 = v11[1];
    v43 = *v11;
    v44 = v2;
    v13 = *(v3 + 56) + 40 * v6;
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 17);
    v17 = *(v13 + 24);
    v18 = *(v13 + 32);
    v19 = *(v13 + 16);
    swift_bridgeObjectRetain_n();
    sub_238814698(v14, v15, v19);

    sub_238814698(v14, v15, v19);

    sub_238810DC4(v14, v15, v19);

    v49 = v14;
    v50 = v15;
    v51 = v19;
    v52 = v16;
    v53 = v17;
    v54 = v18;

    GeneratedContent.kind.getter(v20, &v47);
    v45 = v47;
    v46 = v48;
    v21 = sub_23881EF9C(&v45);
    v42 = v22;
    v24 = v23;

    v25 = v19;
    v2 = v44;
    sub_238810DC4(v14, v15, v25);

    v55 = v44;
    v27 = *(v44 + 16);
    v26 = *(v44 + 24);
    if (v27 >= v26 >> 1)
    {
      result = sub_2388B7BB0((v26 > 1), v27 + 1, 1);
      v2 = v55;
    }

    *(v2 + 16) = v27 + 1;
    v28 = v2 + 40 * v27;
    *(v28 + 32) = v43;
    *(v28 + 40) = v12;
    *(v28 + 48) = v21;
    *(v28 + 56) = v42;
    *(v28 + 64) = v24;
    *(v28 + 65) = HIBYTE(v24) & 1;
    v3 = v40;
    v9 = 1 << *(v40 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = v39;
    v29 = *(v39 + 8 * v10);
    if ((v29 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v38;
    if (v38 != *(v40 + 36))
    {
      goto LABEL_26;
    }

    v30 = v29 & (-2 << (v6 & 0x3F));
    if (v30)
    {
      v9 = __clz(__rbit64(v30)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = v10 << 6;
      v32 = v10 + 1;
      v33 = (v36 + 8 * v10);
      while (v32 < (v9 + 63) >> 6)
      {
        v35 = *v33++;
        v34 = v35;
        v31 += 64;
        ++v32;
        if (v35)
        {
          result = sub_238827E7C(v6, v38, 0);
          v9 = __clz(__rbit64(v34)) + v31;
          goto LABEL_4;
        }
      }

      result = sub_238827E7C(v6, v38, 0);
    }

LABEL_4:
    v7 = v41 + 1;
    v6 = v9;
    if (v41 + 1 == v37)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t static GeneratedContent.generationSchema.getter@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v1 = sub_238810E44(&qword_27DF2FA30, &qword_2388D44E0);
  MEMORY[0x28223BE20](v1 - 8);
  v82 = &v70 - v2;
  v88 = type metadata accessor for GenerationSchema.Kind(0);
  MEMORY[0x28223BE20](v88);
  v83 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for GenerationSchema(0);
  v4 = MEMORY[0x28223BE20](v89);
  v84 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v72 = &v70 - v6;
  v7 = type metadata accessor for DynamicGenerationSchema(0);
  v76 = *(v7 - 8);
  v77 = v7 - 8;
  v81 = v76;
  v8 = MEMORY[0x28223BE20](v7);
  v78 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v79 = (&v70 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v73 = &v70 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v87 = &v70 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v71 = &v70 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v70 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v70 - v22);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v70 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v70 - v27;
  v90 = &type metadata for GeneratedContent;
  sub_238810E44(&qword_27DF2FAA0, &qword_2388D44E8);
  v29 = sub_2388D28B8();
  v75 = v29;
  v31 = v30;
  sub_238810E44(&qword_27DF2FAA8, &unk_2388D44F0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_2388D3F70;
  *(v32 + 32) = v29;
  *(v32 + 40) = v31;
  v74 = v31;
  swift_bridgeObjectRetain_n();
  sub_2388D2318();
  *v28 = 0;
  *(v28 + 1) = 0;
  *(v28 + 2) = 0;
  v28[24] = 2;
  *(v28 + 4) = v29;
  *(v28 + 5) = v31;
  *(v28 + 6) = v32;
  *&v28[*(v7 + 32)] = MEMORY[0x277D84F90];
  v86 = type metadata accessor for DynamicGenerationSchema;
  sub_238827D40(v28, v23, type metadata accessor for DynamicGenerationSchema);
  v90 = 0x3A676E697274535BLL;
  v91 = 0xE900000000000020;
  MEMORY[0x23EE66C20](v23[4], v23[5]);
  MEMORY[0x23EE66C20](93, 0xE100000000000000);
  v34 = v90;
  v33 = v91;
  v35 = v23[6];
  v36 = *(v23 + *(v7 + 32));

  sub_2388D2298();
  sub_238826050(v23, type metadata accessor for DynamicGenerationSchema);
  *(v26 + 1) = 0;
  *(v26 + 2) = 0;
  *v26 = 0;
  v26[24] = 2;
  *(v26 + 4) = v34;
  *(v26 + 5) = v33;
  *(v26 + 6) = v35;
  *&v26[*(v7 + 32)] = v36;
  v80 = v28;
  sub_238827D40(v28, v23, v86);
  v90 = 0x3C7961727241;
  v91 = 0xE600000000000000;
  MEMORY[0x23EE66C20](v23[4], v23[5]);
  MEMORY[0x23EE66C20](62, 0xE100000000000000);
  v37 = v90;
  v38 = v91;
  v39 = v23[6];
  v40 = *(v23 + *(v7 + 32));

  sub_2388D22F8();
  sub_238826050(v23, type metadata accessor for DynamicGenerationSchema);
  *(v20 + 1) = 0;
  *(v20 + 2) = 0;
  *v20 = 0;
  v20[24] = 2;
  *(v20 + 4) = v37;
  *(v20 + 5) = v38;
  *(v20 + 6) = v39;
  *&v20[*(v7 + 32)] = v40;
  v41 = v83;
  swift_storeEnumTagMultiPayload();
  v42 = v72;
  sub_238827D40(v41, v72, type metadata accessor for GenerationSchema.Kind);
  v90 = MEMORY[0x277D839B0];
  sub_238810E44(&qword_27DF2FA28, &unk_2388D3FD0);
  v43 = sub_2388D28B8();
  v45 = v44;
  sub_238826050(v41, type metadata accessor for GenerationSchema.Kind);
  v46 = (v42 + *(v89 + 20));
  *v46 = v43;
  v46[1] = v45;

  sub_238826050(v42, type metadata accessor for GenerationSchema);
  v47 = v71;
  v48 = MEMORY[0x277D84F90];
  sub_2388D22A8();
  *v47 = 0;
  *(v47 + 1) = 0;
  *(v47 + 2) = 0;
  v47[24] = 2;
  *(v47 + 4) = v43;
  *(v47 + 5) = v45;
  *(v47 + 6) = v48;
  v83 = v7;
  v49 = v73;
  *&v47[*(v7 + 32)] = v48;
  v50 = v47;
  sub_2388AF0DC(1, 0, 1, v87);
  v51 = sub_238810E44(&qword_27DF2FA40, &unk_2388D4500);
  v52 = v82;
  (*(*(v51 - 8) + 56))(v82, 1, 1, v51);
  sub_2388AF734(0, v52, v49);
  sub_238827E88(v52, &qword_27DF2FA30, &qword_2388D44E0);
  sub_238810E44(&qword_27DF2FAB0, &qword_2388DC290);
  v53 = *(v76 + 72);
  v54 = (v81[80] + 32) & ~v81[80];
  v55 = 4 * v53;
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_2388D44A0;
  v57 = v56 + v54;
  v81 = v26;
  v58 = v26;
  v59 = v86;
  sub_238827D40(v58, v57, v86);
  v82 = v20;
  sub_238827D40(v20, v57 + v53, v59);
  sub_238827D40(v50, v57 + 2 * v53, v59);
  v60 = 3 * v53;
  v61 = v87;
  v62 = v78;
  sub_238827D40(v87, v57 + v60, v59);
  v63 = v57 + v55;
  v64 = v79;
  sub_238827D40(v49, v63, v59);
  DynamicGenerationSchema.init(name:description:anyOf:)(v75, v74, 0x6167656C20796E41, 0xEE004E4F534A206CLL, v56, v64);
  sub_238827D40(v64, v62, v59);
  sub_2388BCC08(v62, MEMORY[0x277D84F90]);
  sub_238827D40(v62, v23, type metadata accessor for DynamicGenerationSchema);
  sub_23881FCBC(MEMORY[0x277D84F90], sub_2388B6844, type metadata accessor for DynamicGenerationSchema);
  sub_238826050(v62, type metadata accessor for DynamicGenerationSchema);
  sub_238826050(v64, type metadata accessor for DynamicGenerationSchema);
  sub_238826050(v49, type metadata accessor for DynamicGenerationSchema);
  sub_238826050(v61, type metadata accessor for DynamicGenerationSchema);
  sub_238826050(v50, type metadata accessor for DynamicGenerationSchema);
  sub_238826050(v82, type metadata accessor for DynamicGenerationSchema);
  sub_238826050(v81, type metadata accessor for DynamicGenerationSchema);
  sub_238826050(v80, type metadata accessor for DynamicGenerationSchema);
  v65 = v84;
  sub_238827D40(v23, v84, type metadata accessor for DynamicGenerationSchema);
  swift_storeEnumTagMultiPayload();
  v67 = v23[4];
  v66 = v23[5];

  sub_238826050(v23, type metadata accessor for DynamicGenerationSchema);
  v68 = (v65 + *(v89 + 20));
  *v68 = v67;
  v68[1] = v66;
  return sub_238826AA4(v65, v85);
}

uint64_t GeneratedContent.id.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

uint64_t GeneratedContent.id.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t GeneratedContent.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  v7 = a1[3];
  v8 = a1[4];

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 17) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  return result;
}

uint64_t GeneratedContent.generatedContent.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 17);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v7 = *(v1 + 16);
  *(a1 + 16) = v7;
  *(a1 + 17) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  sub_238814698(v2, v3, v7);
}

uint64_t GeneratedContent.init(properties:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    goto LABEL_13;
  }

  v38 = a2[1];
  v39 = *a2;
  v43 = MEMORY[0x277D84F90];
  sub_2388B7BD0(0, v7, 0);
  v41 = a1;
  v9 = a1 + 32;
  v8 = v43;
  v10 = a1 + 32;
  do
  {
    sub_238827E14(v10, &v56, &qword_27DF2FAB8, &qword_2388D4510);
    v11 = v56;
    v12 = v57;
    sub_238826B08(v58, v59);
    v56 = v11;
    v57 = v12;
    sub_238826B08(v59, v58);
    sub_238827E14(&v56, &v53, &qword_27DF2FAC0, &qword_2388D4518);
    v14 = v53;
    v13 = v54;
    v48 = v53;
    v49 = v54;
    sub_238826B08(v55, v50);

    sub_238827E88(&v48, &qword_27DF2FAC0, &qword_2388D4518);
    sub_238827E88(&v56, &qword_27DF2FAC0, &qword_2388D4518);
    v43 = v8;
    v16 = *(v8 + 16);
    v15 = *(v8 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_2388B7BD0((v15 > 1), v16 + 1, 1);
      v8 = v43;
    }

    *(v8 + 16) = v16 + 1;
    v17 = v8 + 16 * v16;
    *(v17 + 32) = v14;
    *(v17 + 40) = v13;
    v10 += 56;
    --v7;
  }

  while (v7);
  v18 = *(v41 + 16);
  if (!v18)
  {
    v5 = v39;
    v4 = a3;
    v6 = v38;
LABEL_13:

    v19 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v47 = MEMORY[0x277D84F90];
  sub_2388B7B78(0, v18, 0);
  v19 = v47;
  do
  {
    sub_238827E14(v9, &v56, &qword_27DF2FAB8, &qword_2388D4510);
    v20 = v56;
    v21 = v57;
    sub_238826B08(v58, v59);
    v56 = v20;
    v57 = v21;
    sub_238826B08(v59, v58);
    sub_238827E14(&v56, &v53, &qword_27DF2FAC0, &qword_2388D4518);
    v48 = v53;
    v49 = v54;
    sub_238826B08(v55, v50);
    v22 = v51;
    v23 = v52;
    sub_238815878(v50, v51);
    (*(v23 + 24))(&v43, v22, v23);
    v24 = v43;
    v25 = v44;
    v26 = v45;
    v42 = v46;
    sub_238814698(v43, v44, v45);
    sub_238810DC4(v24, v25, v26);

    sub_238827E88(&v48, &qword_27DF2FAC0, &qword_2388D4518);
    sub_238827E88(&v56, &qword_27DF2FAC0, &qword_2388D4518);
    v47 = v19;
    v28 = *(v19 + 16);
    v27 = *(v19 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_2388B7B78((v27 > 1), v28 + 1, 1);
      v19 = v47;
    }

    *(v19 + 16) = v28 + 1;
    v29 = v19 + 24 * v28;
    *(v29 + 32) = v24;
    *(v29 + 40) = v25;
    *(v29 + 48) = v26;
    *(v29 + 49) = v42;
    v9 += 56;
    --v18;
  }

  while (v18);

  v5 = v39;
  v4 = a3;
  v6 = v38;
LABEL_14:

  v31 = sub_238826B20(v30, v19);

  v32 = sub_23882D408(v31, v8);
  v34 = v33;
  v36 = v35;

  *v4 = v32;
  *(v4 + 8) = v34;
  *(v4 + 16) = v36;
  *(v4 + 17) = HIBYTE(v36) & 1;
  *(v4 + 24) = v5;
  *(v4 + 32) = v6;
  return result;
}

uint64_t GeneratedContent.init<A, B>(properties:id:uniquingKeysWith:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void (*a3)(unsigned __int128 *, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v10 = v9;
  v136 = a4;
  v137 = a8;
  v135 = a3;
  v130 = a1;
  v126 = a9;
  v133 = a6;
  v147 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v134 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2388D30F8();
  MEMORY[0x28223BE20](v15);
  v16 = sub_2388D30E8();
  v129 = *(v16 - 1);
  MEMORY[0x28223BE20](v16);
  v18 = &v125 - v17;
  v19 = a2[1];
  v125 = *a2;
  v127 = v19;
  v128 = a5;
  MEMORY[0x23EE66D00](a5, a7);
  sub_2388D30C8();
  v176 = v16;
  v148 = v18;
  sub_2388D30D8();
  v172 = v169;
  v173 = *v170;
  v174 = *&v170[16];
  v175 = v171;
  v20 = *v170;
  if (*v170)
  {
    v131 = (v147 + 8);
    v132 = v137 + 24;
    v21 = MEMORY[0x277D84F98];
    while (1)
    {
      v23 = v172;
      sub_238826B08((&v173 + 8), v167);
      sub_238826B08(v167, v160);
      if (v21[2])
      {
        v24 = sub_238820AA8(*(&v23 + 1), v20);
        if (v25)
        {
          v142 = v23;
          sub_238827E14(v21[7] + (v24 << 6), &v163, &qword_27DF2FAC8, &unk_2388D4520);
          v26 = v163;
          v141 = *(&v165 + 1);
          sub_238826B08(v164, v154);
          v169 = v26;
          sub_238826B08(v154, v170);
          v27 = v171;
          v159 = v171;
          v157 = *v170;
          v158 = *&v170[16];
          v156 = v169;
          v28 = *&v170[24];
          sub_238815878(&v157, *&v170[24]);
          (*(v27 + 24))(&v169, v28, v27);
          v163 = v169;
          LOWORD(v164[0]) = *v170;
          *(v164 + 8) = *&v170[8];
          v29 = v161;
          v30 = v162;
          sub_238815878(v160, v161);
          (*(v30 + 24))(&v153, v29, v30);
          v149 = v153;
          v150 = v154[0];
          v151 = v154[1];
          v152 = v155;
          v31 = v134;
          v9 = v10;
          v135(&v163, &v149);
          if (v10)
          {

            (*(*(v128 - 8) + 8))(v130);
            sub_238810DC4(v149, *(&v149 + 1), v150);

            sub_238810DC4(v163, *(&v163 + 1), v164[0]);

            (*(v129 + 8))(v148, v176);
            sub_238827E88(&v156, &qword_27DF2FAB8, &qword_2388D4510);
            sub_2388158BC(v160);
          }

          v144 = 0;
          sub_238810DC4(v149, *(&v149 + 1), v150);

          sub_238810DC4(v163, *(&v163 + 1), v164[0]);

          v32 = v133;
          (*(v137 + 24))(&v169, v133);
          (*v131)(v31, v32);
          v143 = v21;
          v140 = *(&v23 + 1);
          v33 = *(&v169 + 1);
          v139 = *(&v169 + 1);
          v34 = v169;
          v35 = v170[0];
          v138 = v170[0];
          LODWORD(v147) = v170[1];
          v145 = *&v170[16];
          v146 = *&v170[8];
          v36 = *(&v158 + 1);
          v37 = v159;
          sub_238815878(&v157, *(&v158 + 1));
          (*(v37 + 24))(&v169, v36, v37);
          v38 = v169;
          v39 = v170[1];
          v40 = *&v170[8];
          v41 = *&v170[16];
          v42 = v170[0];
          v169 = __PAIR128__(v33, v34);
          v170[0] = v35;
          v170[1] = v147;
          *&v170[8] = v146;
          *&v170[16] = v145;
          v163 = v38;
          LOBYTE(v164[0]) = v42;
          BYTE1(v164[0]) = v39;
          *(&v164[0] + 1) = v40;
          *&v164[1] = v41;
          LOBYTE(v33) = _s16FoundationModels16GeneratedContentV2eeoiySbAC_ACtFZ_0(&v169, &v163);
          sub_238810DC4(v38, *(&v38 + 1), v42);

          if (v33)
          {
            v43 = v141;
          }

          else
          {
            v43 = v142;
          }

          v44 = swift_allocObject();
          *(v44 + 16) = v34;
          v45 = v140;
          v46 = v143;
          *(v44 + 24) = v139;
          *(v44 + 32) = v138;
          *(v44 + 33) = v147;
          v47 = v145;
          *(v44 + 40) = v146;
          *(v44 + 48) = v47;
          *&v169 = v45;
          *(&v169 + 1) = v20;
          *v170 = v44;
          *&v170[24] = &type metadata for GeneratedContent;
          *&v171 = &protocol witness table for GeneratedContent;
          *(&v171 + 1) = v43;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v163 = v46;
          v49 = sub_238820AA8(v45, v20);
          v51 = v46[2];
          v52 = (v50 & 1) == 0;
          v53 = __OFADD__(v51, v52);
          v54 = v51 + v52;
          if (v53)
          {
            goto LABEL_59;
          }

          v55 = v50;
          if (v46[3] >= v54)
          {
            v10 = v144;
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_24;
            }

            v74 = v49;
            sub_238820F64();
            v49 = v74;
            if ((v55 & 1) == 0)
            {
              goto LABEL_29;
            }

LABEL_25:
            v72 = v49;

            v21 = v163;
            sub_238826BF4(&v169, *(v163 + 56) + (v72 << 6));
          }

          else
          {
            sub_2388220E4(v54, isUniquelyReferenced_nonNull_native);
            v49 = sub_238820AA8(v45, v20);
            v10 = v144;
            if ((v55 & 1) != (v56 & 1))
            {
              goto LABEL_62;
            }

LABEL_24:
            if (v55)
            {
              goto LABEL_25;
            }

LABEL_29:
            v21 = v163;
            *(v163 + 8 * (v49 >> 6) + 64) |= 1 << v49;
            v75 = (v21[6] + 16 * v49);
            *v75 = v45;
            v75[1] = v20;
            v76 = (v21[7] + (v49 << 6));
            v78 = *&v170[16];
            v77 = v171;
            v79 = *v170;
            *v76 = v169;
            v76[1] = v79;
            v76[2] = v78;
            v76[3] = v77;
            v80 = v21[2];
            v53 = __OFADD__(v80, 1);
            v81 = v80 + 1;
            if (v53)
            {
              goto LABEL_60;
            }

            v21[2] = v81;
          }

          sub_238827E88(&v156, &qword_27DF2FAB8, &qword_2388D4510);
          goto LABEL_4;
        }
      }

      *&v169 = *(&v23 + 1);
      *(&v169 + 1) = v20;
      sub_238815814(v160, v170);
      *(&v171 + 1) = v23;
      v163 = v169;
      v164[0] = *v170;
      v164[1] = *&v170[16];
      v165 = v171;

      v57 = swift_isUniquelyReferenced_nonNull_native();
      *&v156 = v21;
      v58 = sub_238820AA8(*(&v23 + 1), v20);
      v60 = v21[2];
      v61 = (v59 & 1) == 0;
      v53 = __OFADD__(v60, v61);
      v62 = v60 + v61;
      if (v53)
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        sub_2388D3438();
        __break(1u);
        goto LABEL_63;
      }

      v63 = v59;
      if (v21[3] < v62)
      {
        break;
      }

      if (v57)
      {
        goto LABEL_20;
      }

      v73 = v58;
      sub_238820F64();
      v58 = v73;
      if (v63)
      {
LABEL_3:
        v22 = v58;

        v21 = v156;
        sub_238826BF4(&v163, *(v156 + 56) + (v22 << 6));
        goto LABEL_4;
      }

LABEL_21:
      v21 = v156;
      *(v156 + 8 * (v58 >> 6) + 64) |= 1 << v58;
      v65 = (v21[6] + 16 * v58);
      *v65 = *(&v23 + 1);
      v65[1] = v20;
      v66 = (v21[7] + (v58 << 6));
      v68 = v164[1];
      v67 = v165;
      v69 = v164[0];
      *v66 = v163;
      v66[1] = v69;
      v66[2] = v68;
      v66[3] = v67;
      v70 = v21[2];
      v53 = __OFADD__(v70, 1);
      v71 = v70 + 1;
      if (v53)
      {
        goto LABEL_58;
      }

      v21[2] = v71;
LABEL_4:
      sub_2388158BC(v160);
      sub_2388D30D8();
      v172 = v169;
      v173 = *v170;
      v174 = *&v170[16];
      v175 = v171;
      v20 = *v170;
      if (!*v170)
      {
        goto LABEL_33;
      }
    }

    sub_2388220E4(v62, v57);
    v58 = sub_238820AA8(*(&v23 + 1), v20);
    if ((v23 & 1) != (v64 & 1))
    {
      goto LABEL_62;
    }

LABEL_20:
    if (v63)
    {
      goto LABEL_3;
    }

    goto LABEL_21;
  }

  v21 = MEMORY[0x277D84F98];
LABEL_33:
  (*(v129 + 8))(v148, v176);
  v82 = v21[2];
  if (v82)
  {
    v144 = v10;
    v83 = sub_238820254(v82, 0);
    v176 = sub_238825884(&v172, v83 + 2, v82, v21);
    v84 = v172;
    swift_bridgeObjectRetain_n();
    sub_238826BEC(v84);
    if (v176 != v82)
    {
      goto LABEL_61;
    }

    v10 = v144;
  }

  else
  {

    v83 = MEMORY[0x277D84F90];
  }

  *&v172 = v83;
  v9 = v10;
  sub_238823A00(&v172);
  if (!v10)
  {
    v143 = v21;
    v144 = 0;

    v85 = v172;
    v86 = *(v172 + 16);
    v87 = MEMORY[0x277D84F90];
    if (v86)
    {
      *&v156 = MEMORY[0x277D84F90];
      sub_2388B7E04(0, v86, 0);
      v176 = v85;
      v88 = (v85 + 4);
      v89 = v156;
      do
      {
        sub_238827E14(v88, &v172, &qword_27DF2FAC8, &unk_2388D4520);
        sub_238827E14(&v172, &v169, &qword_27DF2FAC8, &unk_2388D4520);
        v90 = *(&v171 + 1);
        v163 = v169;
        sub_238826B08(v170, v164);
        *(&v165 + 1) = v90;
        sub_238827E14(&v163, &v166, &qword_27DF2FAB8, &qword_2388D4510);
        sub_238827E88(&v163, &qword_27DF2FAC8, &unk_2388D4520);
        sub_238827E88(&v172, &qword_27DF2FAC8, &unk_2388D4520);
        *&v156 = v89;
        v92 = *(v89 + 16);
        v91 = *(v89 + 24);
        v93 = v89;
        if (v92 >= v91 >> 1)
        {
          sub_2388B7E04((v91 > 1), v92 + 1, 1);
          v93 = v156;
        }

        *(v93 + 16) = v92 + 1;
        v94 = v93 + 56 * v92;
        v95 = v166;
        v96 = v167[0];
        v97 = v167[1];
        *(v94 + 80) = v168;
        *(v94 + 48) = v96;
        *(v94 + 64) = v97;
        *(v94 + 32) = v95;
        v88 += 64;
        --v86;
        v89 = v93;
      }

      while (v86);

      v87 = MEMORY[0x277D84F90];
      v98 = *(v89 + 16);
      if (v98)
      {
        goto LABEL_44;
      }
    }

    else
    {

      v89 = MEMORY[0x277D84F90];
      v98 = *(MEMORY[0x277D84F90] + 16);
      if (v98)
      {
LABEL_44:
        *&v166 = v87;
        sub_2388B7BD0(0, v98, 0);
        v147 = v89;
        v99 = v89 + 32;
        v100 = v166;
        v101 = v89 + 32;
        v176 = v98;
        do
        {
          sub_238827E14(v101, &v172, &qword_27DF2FAB8, &qword_2388D4510);
          sub_238827E14(&v172, &v169, &qword_27DF2FAB8, &qword_2388D4510);
          v102 = v169;
          v163 = v169;
          sub_238826B08(v170, v164);

          sub_238827E88(&v163, &qword_27DF2FAB8, &qword_2388D4510);
          sub_238827E88(&v172, &qword_27DF2FAB8, &qword_2388D4510);
          *&v166 = v100;
          v104 = *(v100 + 16);
          v103 = *(v100 + 24);
          if (v104 >= v103 >> 1)
          {
            sub_2388B7BD0((v103 > 1), v104 + 1, 1);
            v100 = v166;
          }

          *(v100 + 16) = v104 + 1;
          *(v100 + 16 * v104 + 32) = v102;
          v101 += 56;
          v98 = (v98 - 1);
        }

        while (v98);
        v146 = v100;
        *&v156 = MEMORY[0x277D84F90];
        v105 = v176;
        sub_2388B7B78(0, v176, 0);
        v106 = v156;
        do
        {
          v176 = v105;
          sub_238827E14(v99, &v172, &qword_27DF2FAB8, &qword_2388D4510);
          sub_238827E14(&v172, &v169, &qword_27DF2FAB8, &qword_2388D4510);
          v163 = v169;
          sub_238826B08(v170, v164);
          v107 = *(&v164[1] + 1);
          v108 = v165;
          sub_238815878(v164, *(&v164[1] + 1));
          (*(v108 + 24))(&v166, v107, v108);
          v109 = v166;
          v110 = v167[0];
          LODWORD(v148) = BYTE1(v167[0]);
          sub_238814698(v166, *(&v166 + 1), v167[0]);
          sub_238810DC4(v109, *(&v109 + 1), v110);

          sub_238827E88(&v163, &qword_27DF2FAB8, &qword_2388D4510);
          sub_238827E88(&v172, &qword_27DF2FAB8, &qword_2388D4510);
          *&v156 = v106;
          v112 = *(v106 + 16);
          v111 = *(v106 + 24);
          if (v112 >= v111 >> 1)
          {
            sub_2388B7B78((v111 > 1), v112 + 1, 1);
            v106 = v156;
          }

          *(v106 + 16) = v112 + 1;
          v113 = v106 + 24 * v112;
          *(v113 + 32) = v109;
          *(v113 + 48) = v110;
          *(v113 + 49) = v148;
          v99 += 56;
          v105 = (v176 - 1);
        }

        while (v176 != 1);

        v114 = v146;
        goto LABEL_55;
      }
    }

    v106 = MEMORY[0x277D84F90];
    v114 = MEMORY[0x277D84F90];
LABEL_55:

    v116 = sub_238826B20(v115, v106);

    v117 = sub_23882D408(v116, v114);
    v119 = v118;
    v121 = v120;

    (*(*(v128 - 8) + 8))(v130);

    v123 = v126;
    *v126 = v117;
    v123[1] = v119;
    *(v123 + 16) = v121;
    *(v123 + 17) = HIBYTE(v121) & 1;
    v124 = v127;
    v123[3] = v125;
    v123[4] = v124;
    return result;
  }

LABEL_63:

  __break(1u);
  return result;
}

uint64_t sub_23881834C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_238815878(a1, v3);
  (*(v4 + 24))(&v10, v3, v4);
  v5 = v10;
  v6 = v11;
  v7 = v13;
  v8 = v12;
  sub_238814698(v10, v11, v12);
  sub_238810DC4(v5, v6, v8);

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 17) = v7;
  return result;
}

uint64_t sub_238818408(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = &v42 - v18;
  v19 = sub_2388D2E78();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v55 = *(a3 - 1);
  MEMORY[0x28223BE20](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v31 = &v42 - v30;
  v32 = sub_2388D2A58();
  v63 = sub_2388D3038();
  v58 = sub_2388D3048();
  sub_2388D3018();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_2388D2A48();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_2388D2EA8();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_2388D3028();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_2388D2EA8();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_2388D3028();
      sub_2388D2EA8();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t GeneratedContent.init<A>(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v11;
  v13 = v11[1];
  (*(v8 + 16))(v10, a1);
  GeneratedContent.init<A>(_:)(v10, a2, a3, &v17);
  (*(v8 + 8))(a1, a2);
  v14 = v18;
  v15 = v19;
  *a4 = v17;
  *(a4 + 16) = v14;
  *(a4 + 17) = v15;

  *(a4 + 24) = v12;
  *(a4 + 32) = v13;
  return result;
}

uint64_t GeneratedContent.init(json:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v5 = sub_2388D1058();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2388D1048();
  v9 = sub_2388D1038();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  sub_2388D0D58();
  swift_allocObject();
  *&v38 = sub_2388D0D48();
  swift_allocObject();
  v12 = sub_2388D0D48();
  *&v41 = 0;
  *(&v41 + 1) = 0xE000000000000000;
  v13 = MEMORY[0x277D84F90];
  *&v42 = 15;
  *(&v42 + 1) = MEMORY[0x277D84F90];
  v43 = MEMORY[0x277D84F90];
  *&v44 = MEMORY[0x277D84F98];
  *(&v44 + 1) = v12;
  *(v39 + 8) = v41;
  *(&v39[1] + 8) = v42;
  *(&v39[2] + 8) = MEMORY[0x277D84F90];
  *(&v39[3] + 8) = v44;
  *(&v39[4] + 1) = 0;
  *&v40 = 0xE000000000000000;
  sub_23882F0E0();
  *(&v40 + 1) = v14;
  *(&v38 + 1) = v9;
  *&v39[0] = v11;
  v15 = v27;
  sub_23882D83C(a1, a2, &v36);
  if (v15)
  {

    sub_2388151C8(v16, v17, v18);
    swift_allocError();
    *v19 = 0xD000000000000027;
    *(v19 + 8) = 0x80000002388DE310;
    *(v19 + 16) = v13;
    *(v19 + 24) = 0;
    *(v19 + 32) = 5;
    swift_willThrow();
    v33 = v39[3];
    v34 = v39[4];
    v35 = v40;
    v29 = v38;
    v30 = v39[0];
    v31 = v39[1];
    v32 = v39[2];
    return sub_238826CA8(&v29);
  }

  else
  {
    v21 = v45;
    if (*(&v36 + 1))
    {
      v22 = v37[1];
      v26 = *(&v37[1] + 8);
      v27 = v37[0];
      v23 = (*&v37[1] >> 8) & 1;
      v33 = v39[3];
      v34 = v39[4];
      v35 = v40;
      v29 = v38;
      v30 = v39[0];
      v31 = v39[1];
      v32 = v39[2];
      sub_238826CA8(&v29);

      v25 = v26;
      v24 = v27;
    }

    else
    {
      v28[0] = 0;
      v28[1] = 0;
      GeneratedContent.init(id:text:)(v28, a1, a2, &v36);
      v33 = v39[3];
      v34 = v39[4];
      v35 = v40;
      v29 = v38;
      v30 = v39[0];
      v31 = v39[1];
      v32 = v39[2];
      result = sub_238826CA8(&v29);
      v24 = v36;
      v22 = v37[0];
      LOBYTE(v23) = BYTE1(v37[0]);
      v25 = *(v37 + 8);
    }

    *v21 = v24;
    *(v21 + 16) = v22;
    *(v21 + 17) = v23;
    *(v21 + 24) = v25;
  }

  return result;
}

char *GeneratedContent.init(id:text:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *a1;
  v8 = a1[1];

  sub_2388D0D58();
  swift_allocObject();
  sub_2388D0D48();

  v10 = sub_238819688(a2, a3);
  v12 = v11;
  sub_238826CFC(v10, v11, v13);
  sub_2388D0D38();
  if (v4)
  {
    sub_238826D50(v10, v12);

    sub_2388D2FA8();

    MEMORY[0x23EE66C20](a2, a3);

    sub_238810E44(&qword_27DF2FAD8, &unk_2388D6360);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_2388D3F70;
    *(v14 + 32) = v4;
    sub_2388151C8(v14, v15, v16);
    swift_allocError();
    *v17 = 0xD000000000000038;
    *(v17 + 8) = 0x80000002388DE340;
    *(v17 + 16) = v14;
    *(v17 + 24) = 0;
    *(v17 + 32) = 5;
    swift_willThrow();
  }

  else
  {

    sub_238826D50(v10, v12);

    result = sub_23882C97C(v22, v23, v24, 0, 0, 0, 0);
    *a4 = result;
    *(a4 + 8) = v19;
    *(a4 + 16) = v21;
    *(a4 + 17) = v20 & 1;
    *(a4 + 24) = v9;
    *(a4 + 32) = v8;
  }

  return result;
}

uint64_t sub_238819134(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = *MEMORY[0x277D85DE8];
  *&v45 = a1;
  *(&v45 + 1) = a2;
  v46 = a3;
  v47 = a4;

  sub_238810E44(&qword_27DF2FB88, &qword_2388D4998);
  if (!swift_dynamicCast())
  {
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    sub_238827E88(v43, &qword_27DF2FB90, &qword_2388D49A0);
    sub_238825C4C(a1, a2, a3, a4, &v38);
    v8 = *(&v38 + 1);
    v9 = v38;
    if (*(&v38 + 1) >> 60 != 15)
    {
      v43[0] = v38;
      goto LABEL_54;
    }

    v10 = sub_2388D2E88();
    *&v43[0] = sub_2388271B8(v10);
    *(&v43[0] + 1) = v11;
    MEMORY[0x28223BE20](*&v43[0]);
    sub_238824940(sub_238827FD8, &v38);
    v13 = v39;
    v12 = v40;
    v14 = v41;
    v15 = *(&v43[0] + 1) >> 62;
    if ((*(&v43[0] + 1) >> 62) > 1)
    {
      if (v15 == 2)
      {
        v17 = *(*&v43[0] + 16);
        v16 = *(*&v43[0] + 24);
        v18 = __OFSUB__(v16, v17);
        v19 = v16 - v17;
        if (v18)
        {
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
        }

        if (v42 == v19)
        {
          goto LABEL_20;
        }

        goto LABEL_15;
      }

      if (v42)
      {
        v20 = 0;
LABEL_51:
        if (v20 >= v42)
        {
          sub_2388D0FC8();
LABEL_53:

          goto LABEL_54;
        }

LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

    else
    {
      if (!v15)
      {
        if (v42 == BYTE14(v43[0]))
        {
          goto LABEL_20;
        }

LABEL_15:
        if (v15 == 2)
        {
          v20 = *(*&v43[0] + 24);
        }

        else if (v15 == 1)
        {
          v20 = *&v43[0] >> 32;
        }

        else
        {
          v20 = BYTE14(v43[0]);
        }

        goto LABEL_51;
      }

      if (__OFSUB__(DWORD1(v43[0]), v43[0]))
      {
        goto LABEL_61;
      }

      if (v42 != DWORD1(v43[0]) - LODWORD(v43[0]))
      {
        goto LABEL_15;
      }
    }

LABEL_20:
    v21 = *(&v38 + 1) >> 14;
    *(&v45 + 7) = 0;
    *&v45 = 0;
    if (*(&v38 + 1) >> 14 == v41 >> 14)
    {

      sub_238827FA4(v9, v8);
      goto LABEL_54;
    }

    v33 = v9;
    v34 = v8;
    LOBYTE(v8) = 0;
    v22 = v38 >> 14;
    v23 = (v39 >> 59) & 1;
    if ((v40 & 0x1000000000000000) == 0)
    {
      LOBYTE(v23) = 1;
    }

    v24 = 4 << v23;
    v36 = v40 & 0xFFFFFFFFFFFFFFLL;
    v35 = (v40 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v25 = HIBYTE(v40) & 0xF;
    if ((v40 & 0x2000000000000000) == 0)
    {
      v25 = v39 & 0xFFFFFFFFFFFFLL;
    }

    v37 = v25;
    while (1)
    {
      v26 = v14 & 0xC;
      v27 = v14;
      if (v26 == v24)
      {
        v27 = sub_238880F74(v14, v13, v12);
      }

      if (v27 >> 14 < v22 || v27 >> 14 >= v21)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      if ((v12 & 0x1000000000000000) != 0)
      {
        v30 = sub_2388D29D8();
        if (v26 != v24)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v28 = v27 >> 16;
        if ((v12 & 0x2000000000000000) != 0)
        {
          *&v38 = v13;
          *(&v38 + 1) = v36;
          v30 = *(&v38 + v28);
          if (v26 != v24)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v29 = v35;
          if ((v13 & 0x1000000000000000) == 0)
          {
            v29 = sub_2388D3008();
          }

          v30 = *(v29 + v28);
          if (v26 != v24)
          {
LABEL_39:
            if ((v12 & 0x1000000000000000) != 0)
            {
              goto LABEL_43;
            }

            goto LABEL_40;
          }
        }
      }

      v14 = sub_238880F74(v14, v13, v12);
      if ((v12 & 0x1000000000000000) != 0)
      {
LABEL_43:
        if (v37 <= v14 >> 16)
        {
          goto LABEL_58;
        }

        v14 = sub_2388D29A8();
        goto LABEL_45;
      }

LABEL_40:
      v14 = (v14 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_45:
      *(&v45 + v8) = v30;
      LOWORD(v8) = v8 + 1;
      if ((v8 & 0x100) != 0)
      {
        goto LABEL_57;
      }

      if (v8 == 14)
      {
        *&v38 = v45;
        *(&v38 + 6) = *(&v45 + 6);
        sub_2388D0FD8();
        LOBYTE(v8) = 0;
        if (v21 == v14 >> 14)
        {

          sub_238827FA4(v33, v34);
          goto LABEL_54;
        }
      }

      else if (v21 == v14 >> 14)
      {
        *&v38 = v45;
        *(&v38 + 6) = *(&v45 + 6);
        sub_2388D0FD8();
        sub_238827FA4(v33, v34);
        goto LABEL_53;
      }
    }
  }

  sub_238826B08(v43, &v38);
  sub_238815878(&v38, v40);
  sub_2388D0E98();
  v43[0] = v45;
  sub_2388158BC(&v38);
LABEL_54:
  v31 = v43[0];
  sub_238827F50(*&v43[0], *(&v43[0] + 1));

  sub_238826D50(v31, *(&v31 + 1));
  return v31;
}

uint64_t sub_238819688(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  sub_238810E44(&qword_27DF2FB88, &qword_2388D4998);
  if (swift_dynamicCast())
  {
    sub_238826B08(__src, &v43);
    sub_238815878(&v43, v44);
    sub_2388D0E98();
    __src[0] = v42;
    sub_2388158BC(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_238827E88(__src, &qword_27DF2FB90, &qword_2388D49A0);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_2388D3008();
  }

  sub_238824878(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_2388271B8(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_238824CF8(sub_238827EE8, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_2388D0FC8();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_238880F74(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_2388D2998();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_2388D29D8();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_2388D3008();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_238880F74(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_2388D29A8();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_2388D0FD8();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_2388D0FD8();
    sub_238827FA4(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_238827FA4(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_238827F50(*&__src[0], *(&__src[0] + 1));

  sub_238826D50(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_238819BA8()
{
  v0 = sub_23882C97C(0, 0, 5, 0, 0, 0, 0);
  v2 = v1;
  v4 = v3;
  qword_27DF3F848 = 0;
  unk_27DF3F850 = 0;

  qword_27DF3F830 = v0;
  *algn_27DF3F838 = v2;
  word_27DF3F840 = v4 & 0x1FF;
  return result;
}

uint64_t sub_238819C1C(uint64_t a1, void *a2, unsigned __int8 a3, uint64_t a4)
{
  v84 = a4;
  v7 = 0;
  v8 = sub_2388D2898();
  MEMORY[0x28223BE20](v8 - 8);
  v81 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3;
  if (a3 > 2u)
  {
LABEL_6:
    v83 = a1;
    if (v10 == 3)
    {
      v21 = *(a1 + 16);
      v22 = MEMORY[0x277D84F90];
      if (v21)
      {
        v88 = MEMORY[0x277D84F90];

        sub_2388B7BD0(0, v21, 0);
        v22 = v88;
        v23 = a1 + 49;
        do
        {
          v24 = *(v23 - 17);
          v25 = *(v23 - 9);
          v26 = *(v23 - 1);
          sub_238814698(v24, v25, v26);
          v27 = sub_238819C1C(v24, v25, v26, v84);
          v29 = v28;
          sub_238810DC4(v24, v25, v26);
          v88 = v22;
          v31 = *(v22 + 16);
          v30 = *(v22 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_2388B7BD0((v30 > 1), v31 + 1, 1);
            v22 = v88;
          }

          *(v22 + 16) = v31 + 1;
          v32 = v22 + 16 * v31;
          *(v32 + 32) = v27;
          *(v32 + 40) = v29;
          v23 += 24;
          --v21;
        }

        while (v21);
        sub_238810DC4(v83, a2, 3);
      }

      v88 = v22;
      sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
      sub_238815180(&qword_27DF2FBC0, &qword_27DF2FBB8, &unk_2388D5410, MEMORY[0x277D83958]);
      v39 = sub_2388D27B8();
      v41 = v40;

      v88 = 91;
      v89 = 0xE100000000000000;
      MEMORY[0x23EE66C20](v39, v41);

      v42 = 93;
LABEL_39:
      MEMORY[0x23EE66C20](v42, 0xE100000000000000);
      return v88;
    }

    if (v10 != 4)
    {
      return 1819047278;
    }

    if (a2)
    {

      v16 = a2[2];
      if (!v16)
      {
LABEL_37:

        v76 = MEMORY[0x277D84F90];
LABEL_38:
        v88 = v76;
        sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
        sub_238815180(&qword_27DF2FBC0, &qword_27DF2FBB8, &unk_2388D5410, MEMORY[0x277D83958]);
        v77 = sub_2388D27B8();
        v79 = v78;

        v88 = 123;
        v89 = 0xE100000000000000;
        MEMORY[0x23EE66C20](v77, v79);

        v42 = 125;
        goto LABEL_39;
      }
    }

    else
    {
      v43 = *(a1 + 16);
      if (v43)
      {
        v44 = sub_2388201D0(*(a1 + 16), 0);
        v45 = a1;
        v46 = sub_2388255D4(&v88, v44 + 4, v43, a1);
        v47 = v88;
        sub_238814698(v45, 0, 4);

        sub_238826BEC(v47);
        if (v46 != v43)
        {
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        a2 = v44;
        v16 = v44[2];
        if (!v16)
        {
          goto LABEL_37;
        }
      }

      else
      {
        sub_238814698(a1, 0, 4);
        a2 = MEMORY[0x277D84F90];
        v16 = *(MEMORY[0x277D84F90] + 16);
        if (!v16)
        {
          goto LABEL_37;
        }
      }
    }

    v87 = MEMORY[0x277D84F90];
    sub_2388B7BD0(0, v16, 0);
    v48 = 0;
    v82 = v87;
    v49 = a2 + 5;
    v80 = a2;
    while (v48 < a2[2])
    {
      v51 = *(v49 - 1);
      v50 = *v49;
      v88 = 0;
      v89 = 0xE000000000000000;
      v85 = v51;
      v86 = v50;

      v52 = sub_2388D0DA8();
      if (v7)
      {
        goto LABEL_47;
      }

      v54 = v52;
      v55 = v53;
      sub_2388D2888();
      v56 = sub_2388D2878();
      if (!v57)
      {
        goto LABEL_44;
      }

      v58 = v56;
      v59 = v57;
      sub_238826D50(v54, v55);
      MEMORY[0x23EE66C20](v58, v59);

      MEMORY[0x23EE66C20](8250, 0xE200000000000000);
      v60 = v83;
      if (!*(v83 + 16))
      {
        goto LABEL_41;
      }

      v61 = sub_238820AA8(v51, v50);
      if ((v62 & 1) == 0)
      {
        goto LABEL_42;
      }

      v63 = *(v60 + 56) + 24 * v61;
      v64 = *v63;
      v65 = *(v63 + 8);
      v66 = *(v63 + 16);
      sub_238814698(*v63, v65, v66);
      v67 = sub_238819C1C(v64, v65, v66, v84);
      v69 = v68;
      sub_238810DC4(v64, v65, v66);
      MEMORY[0x23EE66C20](v67, v69);

      v70 = v88;
      v71 = v89;
      v72 = v82;
      v87 = v82;
      v74 = *(v82 + 16);
      v73 = *(v82 + 24);
      if (v74 >= v73 >> 1)
      {
        sub_2388B7BD0((v73 > 1), v74 + 1, 1);
        v72 = v87;
      }

      ++v48;
      *(v72 + 16) = v74 + 1;
      v82 = v72;
      v75 = v72 + 16 * v74;
      *(v75 + 32) = v70;
      *(v75 + 40) = v71;
      v49 += 2;
      a2 = v80;
      if (v16 == v48)
      {

        v76 = v82;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      v88 = a1;
      v89 = a2;

      v33 = sub_2388D0DA8();
      v35 = v34;
      sub_2388D2888();
      v36 = sub_2388D2878();
      if (v37)
      {
        v38 = v36;
        sub_238810DC4(a1, a2, 2);
        sub_238826D50(v33, v35);
        return v38;
      }

      goto LABEL_46;
    }

    v88 = a1;
    v11 = sub_2388D0DA8();
    v13 = v12;
    v7 = v81;
    sub_2388D2888();
    v14 = sub_2388D2878();
    if (!v15)
    {
      __break(1u);
      goto LABEL_6;
    }

LABEL_12:
    v19 = v14;
    sub_238826D50(v11, v13);
    return v19;
  }

  LOBYTE(v88) = a1 & 1;
  v11 = sub_2388D0DA8();
  v13 = v17;
  sub_2388D2888();
  v14 = sub_2388D2878();
  if (v18)
  {
    goto LABEL_12;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t GeneratedContent.value<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 8);
  v7 = *(v3 + 17);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v6;
  v14 = v10;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v11 = *(a3 + 8);
  sub_238814698(v13[0], v6, v10);

  return v11(v13, a2, a3);
}

uint64_t GeneratedContent.kind.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v80 = *v2;
  v81 = v5;
  v82 = *(v2 + 4);
  v83 = v80;
  v84 = *(v2 + 8);
  v7 = *(&v80 + 1);
  v6 = v80;
  v8 = v84;
  if (v84 <= 2u)
  {
    if (v84)
    {
      if (v84 == 1)
      {
        v9 = 0;
LABEL_58:
        v10 = v6;
        goto LABEL_59;
      }

      v8 = v84;
      v9 = *(&v80 + 1);
      v10 = v80;
    }

    else
    {
      v9 = 0;
      v10 = v80 & 1;
    }

LABEL_59:
    *a2 = v10;
    *(a2 + 8) = v9;
    *(a2 + 16) = v8;
    return result;
  }

  v74 = v80;
  if (v84 == 3)
  {
    v45 = *(v80 + 16);
    v10 = MEMORY[0x277D84F90];
    if (!v45)
    {
LABEL_44:
      v9 = 0;
      goto LABEL_59;
    }

    v65 = a2;
    v77 = MEMORY[0x277D84F90];

    v67 = v45;
    sub_2388B7C74(0, v45, 0);
    v46 = 0;
    v73 = *(v80 + 16);
    v10 = v77;
    v47 = v82;
    v71 = *(&v81 + 1);
    v48 = (v80 + 49);
    v69 = v82;
    while (v73 != v46)
    {
      if (v46 >= *(v6 + 16))
      {
        goto LABEL_61;
      }

      v49 = *(v48 - 17);
      v50 = *(v48 - 9);
      v51 = *(v48 - 1);
      v76 = *v48;
      if (v47)
      {
        v78 = v71;
        v79 = v47;
        swift_bridgeObjectRetain_n();
        sub_238814698(v49, v50, v51);
        MEMORY[0x23EE66C20](91, 0xE100000000000000);
        v52 = sub_2388D32F8();
        MEMORY[0x23EE66C20](v52);

        MEMORY[0x23EE66C20](93, 0xE100000000000000);
        v45 = v67;
      }

      else
      {
        sub_238814698(v49, v50, v51);
      }

      v54 = *(v77 + 16);
      v53 = *(v77 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_2388B7C74((v53 > 1), v54 + 1, 1);
        v45 = v67;
      }

      ++v46;
      *(v77 + 16) = v54 + 1;
      v55 = v77 + 40 * v54;
      *(v55 + 32) = v49;
      *(v55 + 40) = v50;
      *(v55 + 48) = v51;
      *(v55 + 49) = v76;
      *(v55 + 56) = v71;
      *(v55 + 64) = v47;
      v48 += 24;
      v6 = v74;
      v47 = v69;
      if (v45 == v46)
      {
        result = sub_238826E74(&v83);
        a2 = v65;
        v8 = 3;
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v10 = 0;
  v9 = 0;
  if (v84 != 4)
  {
    goto LABEL_59;
  }

  v66 = *(&v80 + 1);
  if (*(&v80 + 1))
  {
    v11 = *(*(&v80 + 1) + 16);
    sub_238826DB0(&v83, &v78);

    if (v11)
    {
      v12 = 0;
      v13 = v7 + 5;
      v61 = v11 - 1;
      v14 = MEMORY[0x277D84F90];
      v64 = a2;
      v75 = v11;
      v62 = v7 + 5;
LABEL_10:
      v63 = v14;
      v15 = &v13[2 * v12];
      v16 = v12;
      while (v16 < v7[2])
      {
        if (*(v6 + 16))
        {
          v22 = *(v15 - 1);
          v23 = *v15;

          v24 = sub_238820AA8(v22, v23);
          if (v25)
          {
            v26 = *(v6 + 56) + 24 * v24;
            v21 = *v26;
            v27 = *(v26 + 8);
            v28 = *(v26 + 16);
            v70 = *(v26 + 17);
            v29 = *(&v81 + 1);
            v30 = v82;
            v72 = v27;
            if (v82)
            {
              v78 = *(&v81 + 1);
              v79 = v82;
              v31 = v28;
              v68 = v28;
              v32 = v27;
              sub_238814698(v21, v27, v31);

              sub_238814698(v21, v32, v68);

              MEMORY[0x23EE66C20](46, 0xE100000000000000);
              MEMORY[0x23EE66C20](v22, v23);
              v33 = v32;
              v28 = v68;
              sub_238810DC4(v21, v33, v68);

              v29 = v78;
              v30 = v79;
            }

            else
            {
              sub_238814698(v21, v27, v28);
            }

            v35 = 256;
            if (!v70)
            {
              v35 = 0;
            }

            v34 = v3 & 0xFFFFFFFFFFFF0000 | v28;
            v19 = v34 | v35;
            if (v23)
            {
              v3 = v34 | v35;
              v36 = v63;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v36 = sub_2388B66F4(0, v63[2] + 1, 1, v63);
              }

              v37 = v29;
              v38 = v30;
              v40 = v36[2];
              v39 = v36[3];
              v41 = v36;
              if (v40 >= v39 >> 1)
              {
                v44 = sub_2388B66F4((v39 > 1), v40 + 1, 1, v36);
                v38 = v30;
                v37 = v29;
                v41 = v44;
              }

              v11 = v75;
              v7 = v66;
              v12 = v16 + 1;
              v41[2] = v40 + 1;
              v42 = &v41[7 * v40];
              v14 = v41;
              v42[4] = v22;
              v42[5] = v23;
              v6 = v74;
              v42[6] = v21;
              v42[7] = v72;
              v42[8] = v3;
              v42[9] = v37;
              v42[10] = v38;
              v43 = v61 == v16;
              a2 = v64;
              v13 = v62;
              if (v43)
              {
                goto LABEL_49;
              }

              goto LABEL_10;
            }

            v18 = v29;
            v17 = v30;
            v11 = v75;
            v7 = v66;
            v20 = v72;
          }

          else
          {

            v17 = 0;
            v18 = 0;
            v19 = 0;
            v20 = 0;
            v21 = 0;
            v22 = 0;
            v11 = v75;
          }
        }

        else
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
        }

        ++v16;
        v3 = v19;
        sub_238826E0C(v22, 0, v21, v20, v19, v18, v17);
        v15 += 2;
        if (v11 == v16)
        {
          a2 = v64;
          v14 = v63;
          goto LABEL_49;
        }
      }

LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v14 = MEMORY[0x277D84F90];
LABEL_49:

    if (v14[2])
    {
      goto LABEL_50;
    }

LABEL_47:
    v56 = MEMORY[0x277D84F98];
    goto LABEL_51;
  }

  MEMORY[0x28223BE20](result);
  sub_238826DB0(&v83, &v78);
  v7 = 0;
  if (!*(sub_2388260B0(v6, sub_238826DA4) + 16))
  {
    goto LABEL_47;
  }

LABEL_50:
  sub_238810E44(&qword_27DF2FAE0, &qword_2388D4530);
  v56 = sub_2388D3128();
LABEL_51:
  v78 = v56;

  sub_2388202D8(v57, 1, &v78);

  v10 = v78;
  if (v7)
  {

    v9 = v7;
    v8 = 4;
    goto LABEL_59;
  }

  v6 = v78;
  v58 = *(v74 + 16);
  if (!v58)
  {

    v9 = MEMORY[0x277D84F90];
    goto LABEL_57;
  }

  v59 = a2;
  v9 = sub_2388201D0(*(v74 + 16), 0);
  v60 = sub_2388255D4(&v78, v9 + 4, v58, v74);
  result = sub_238826BEC(v78);
  if (v60 == v58)
  {
    a2 = v59;
LABEL_57:
    v8 = 4;
    goto LABEL_58;
  }

LABEL_63:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_23881AB94()
{
  v1 = sub_2388D0D88();
  v2 = MEMORY[0x28223BE20](v1);
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 17);
  v21 = *v0;
  v22 = v4;
  v23 = v5;
  v24 = v6;
  v25 = *(v0 + 24);
  GeneratedContent.kind.getter(v2, v19);
  v7 = v19[0];
  if (v20 == 4)
  {
  }

  else
  {
    sub_238810DC4(v19[0], v19[1], v20);
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_2388D2FA8();

    v21 = 0xD000000000000036;
    v22 = 0x80000002388DE400;
    sub_2388D0DC8();
    swift_allocObject();
    v8 = sub_2388D0DB8();
    sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_2388D3F70;
    sub_2388D0D78();
    v19[0] = v9;
    sub_238815B14();
    v26 = v4;
    sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
    sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90, MEMORY[0x277D83970]);
    sub_2388D2F08();
    sub_2388D0D98();
    v10 = sub_238819C1C(v3, v26, v5, v8);
    v12 = v11;

    MEMORY[0x23EE66C20](v10, v12);

    v14 = v21;
    v7 = v22;
    sub_2388151C8(v13, v15, v16);
    swift_allocError();
    *v17 = v14;
    *(v17 + 8) = v7;
    *(v17 + 16) = MEMORY[0x277D84F90];
    *(v17 + 24) = 0;
    *(v17 + 32) = 5;
    swift_willThrow();
  }

  return v7;
}

uint64_t GeneratedContent.value<A>(_:forProperty:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v47 = a4;
  v46 = a3;
  v42 = a5;
  v45 = sub_2388D0D88();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2388D2E78();
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v13 = *v5;
  v12 = *(v5 + 8);
  v14 = *(v5 + 16);
  v15 = *(v5 + 17);
  v49 = *v5;
  v50 = v12;
  v51 = v14;
  v52 = v15;
  v53 = *(v5 + 24);
  v16 = a1;
  v17 = a1;
  v18 = a2;
  v19 = a2;
  v20 = v46;
  v21 = v48;
  result = GeneratedContent.value<A>(_:forProperty:)(v17, v19, v46, v47, &v35 - v10);
  if (!v21)
  {
    v36 = v16;
    v37 = v18;
    v38 = v15;
    v39 = v14;
    v47 = v12;
    v48 = v13;
    v23 = *(v20 - 8);
    if ((*(v23 + 48))(v11, 1, v20) == 1)
    {
      (*(v40 + 8))(v11, v41);
      v49 = 0;
      v50 = 0xE000000000000000;
      sub_2388D2FA8();

      v49 = 0xD00000000000002ELL;
      v50 = 0x80000002388DE3A0;
      MEMORY[0x23EE66C20](v36, v37);
      MEMORY[0x23EE66C20](0x65746E6F430A2E27, 0xEC000000203A746ELL);
      sub_2388D0DC8();
      swift_allocObject();
      v24 = sub_2388D0DB8();
      sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_2388D3F70;
      sub_2388D0D78();
      v54 = v25;
      sub_238815B14();
      sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
      sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90, MEMORY[0x277D83970]);
      sub_2388D2F08();
      sub_2388D0D98();
      v26 = sub_238819C1C(v48, v47, v39, v24);
      v28 = v27;

      MEMORY[0x23EE66C20](v26, v28);

      v30 = v49;
      v31 = v50;
      sub_2388151C8(v29, v32, v33);
      swift_allocError();
      *v34 = v30;
      *(v34 + 8) = v31;
      *(v34 + 16) = MEMORY[0x277D84F90];
      *(v34 + 24) = 0;
      *(v34 + 32) = 5;
      return swift_willThrow();
    }

    else
    {
      return (*(v23 + 32))(v42, v11, v20);
    }
  }

  return result;
}

uint64_t GeneratedContent.value<A>(_:forProperty:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12 = *(v5 + 16);
  v13 = *(v5 + 17);
  v32 = *v5;
  v33 = v12;
  v34 = v13;
  v35 = *(v5 + 24);
  result = sub_23881AB94();
  if (!v6)
  {
    v15 = result;
    v36 = 0;
    if (!*(result + 16))
    {
      goto LABEL_7;
    }

    v16 = sub_238820AA8(a1, a2);
    if ((v17 & 1) == 0)
    {
      goto LABEL_7;
    }

    v18 = *(v15 + 56) + 40 * v16;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v30 = *(v18 + 17);
    v22 = *(v18 + 32);
    v28 = *(v18 + 24);
    sub_238814698(*v18, v20, v21);
    v31 = v22;

    sub_238814698(v19, v20, v21);
    v23 = sub_23882C97C(0, 0, 5, 0, 0, 0, 0);
    v25 = v24;
    v27 = v26;
    v29 = sub_23882D4E4(v23, v24, v26, v19, v20, v21);
    sub_238810DC4(v23, v25, v27);
    sub_238810DC4(v19, v20, v21);
    if ((v29 & 1) != 0 && v30 != ((v27 & 0x100) == 0))
    {
      sub_238810DC4(v19, v20, v21);
LABEL_7:

      return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
    }

    *&v32 = v19;
    *(&v32 + 1) = v20;
    v33 = v21;
    v34 = v30;
    *&v35 = v28;
    *(&v35 + 1) = v31;
    (*(a4 + 8))(&v32, a3, a4);
    return (*(*(a3 - 8) + 56))(a5, 0, 1, a3);
  }

  return result;
}

uint64_t GeneratedContent.debugDescription.getter()
{
  v1 = sub_2388D2898();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_23882BCCC(*v0, *(v0 + 8), *(v0 + 16));
  v4 = v3;
  v6 = v5;
  sub_2388D0DC8();
  swift_allocObject();
  v7 = sub_2388D0DB8();
  sub_238826EC8(v7, v8, v9);
  v10 = sub_2388D0DA8();
  v12 = v11;

  sub_2388D2888();
  v13 = sub_2388D2878();
  v15 = v14;
  sub_238826D50(v10, v12);
  if (v15)
  {
    sub_238810DC4(v2, v4, v6);
    return v13;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_23881B680@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  v7 = a1[3];
  v8 = a1[4];

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 17) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_23881B6E8@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 17);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v7 = *(v1 + 16);
  *(a1 + 16) = v7;
  *(a1 + 17) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  sub_238814698(v2, v3, v7);
}

uint64_t sub_23881B740(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
LABEL_6:
  while (2)
  {
    while (2)
    {
      if (v7)
      {
        v9 = __clz(__rbit64(v7));
        v235 = (v7 - 1) & v7;
        goto LABEL_13;
      }

      v10 = v4;
      do
      {
        v4 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_233:
          v129 = v7;
          sub_238810DC4(v229, v228, 3);
          v130 = v129;
          goto LABEL_252;
        }

        if (v4 >= v8)
        {
          return 1;
        }

        v11 = *(a1 + 64 + 8 * v4);
        ++v10;
      }

      while (!v11);
      v9 = __clz(__rbit64(v11));
      v235 = (v11 - 1) & v11;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(a1 + 56) + 24 * v12;
      v18 = *v16;
      v17 = *(v16 + 8);
      v19 = *(v16 + 16);

      v236 = v18;
      v234 = v17;
      sub_238814698(v18, v17, v19);
      v20 = sub_238820AA8(v14, v15);
      LOBYTE(v18) = v21;

      if ((v18 & 1) == 0)
      {
        v128 = v236;
        v35 = v17;
        goto LABEL_237;
      }

      v22 = *(a2 + 56) + 24 * v20;
      v2 = *v22;
      v23 = *(v22 + 8);
      v24 = *(v22 + 16);
      v25 = 24;
      if (v24 > 2)
      {
        v26 = v236;
        if (v24 != 3)
        {
          if (v24 == 4)
          {
            if (v19 == 4)
            {

              v28 = sub_23881B740(v27, v236);
              sub_238810DC4(v236, v234, 4);
              sub_238810DC4(v2, v23, 4);
              v7 = v235;
              if (v28)
              {
                continue;
              }

              return 0;
            }

LABEL_227:
            v128 = v26;
            v35 = v234;
          }

          else
          {
            v35 = v234;
            v7 = v235;
            if (v19 == 5 && (v234 | v236) == 0)
            {
              continue;
            }

            v128 = v236;
          }

LABEL_237:
          v132 = v19;
LABEL_254:
          sub_238810DC4(v128, v35, v132);
          return 0;
        }

        if (v19 != 3)
        {
          goto LABEL_227;
        }

        v29 = *(v2 + 16);
        if (v29 != *(v236 + 16))
        {
          v128 = v236;
          v35 = v234;
          goto LABEL_253;
        }

        if (!v29 || v2 == v236)
        {
          v30 = v236;
          v31 = v234;
          goto LABEL_33;
        }

        v231 = v2 + 32;

        v40 = 0;
        v224 = v2;
        while (2)
        {
          if (v40 >= *(v2 + 16))
          {
            __break(1u);
LABEL_263:
            __break(1u);
LABEL_264:
            v175 = v39;
            v176 = v38;
            v177 = v37;
            sub_238814698(v39, v38, v37);
            sub_238814698(v25, v29, 3);
            sub_238810DC4(v215, v225, 3);
            sub_238810DC4(v210, v218, 3);
            sub_238810DC4(v230, v222, 3);
            sub_238810DC4(v217, v221, 3);
            sub_238810DC4(v229, v228, 3);
            sub_238810DC4(v226, v232, 3);
            sub_238810DC4(v236, v234, 3);
            sub_238810DC4(v2, v216, 3);
            v178 = v175;
            v179 = v176;
            v180 = v177;
LABEL_270:
            sub_238810DC4(v178, v179, v180);
            v128 = v25;
            v35 = v29;
            goto LABEL_253;
          }

          if (v40 >= *(v236 + 16))
          {
            goto LABEL_263;
          }

          v42 = v231 + 24 * v40;
          v43 = *v42;
          v232 = *(v42 + 8);
          v44 = *(v42 + 16);
          v39 = v236 + 32;
          v45 = v236 + 32 + 24 * v40;
          v37 = *v45;
          v38 = *(v45 + 8);
          v19 = *(v45 + 16);
          if (v44 <= 2)
          {
            if (v44)
            {
              if (v44 == 1)
              {
                if (v19 != 1)
                {
                  goto LABEL_230;
                }

                if (*&v43 != *&v37)
                {
                  goto LABEL_228;
                }

                goto LABEL_54;
              }

              if (v19 == 2)
              {
                v57 = v43 == v37 && v232 == v38;
                if (!v57 && (sub_2388D3368() & 1) == 0)
                {
                  goto LABEL_228;
                }

                goto LABEL_54;
              }

              v137 = *v45;
              v138 = *(v45 + 8);
              sub_238814698(*v45, v138, *(v45 + 16));
              sub_238814698(v43, v232, 2);
              sub_238810DC4(v236, v234, 3);
              sub_238810DC4(v2, v23, 3);
              sub_238810DC4(*&v137, v138, v19);
              v128 = v43;
              v35 = v232;
LABEL_266:
              v132 = 2;
              goto LABEL_254;
            }

            if (*(v45 + 16))
            {
              goto LABEL_230;
            }

            if ((v37 ^ v43))
            {
LABEL_228:
              sub_238810DC4(v236, v234, 3);
              v128 = v2;
              goto LABEL_229;
            }

LABEL_54:
            ++v40;
            v25 = 24;
            if (v40 != v29)
            {
              continue;
            }

            sub_238810DC4(v236, v234, 3);
            v30 = v2;
            v31 = v23;
LABEL_33:
            v32 = 3;
LABEL_47:
            sub_238810DC4(v30, v31, v32);
            v7 = v235;
            goto LABEL_6;
          }

          break;
        }

        if (v44 != 3)
        {
          if (v44 == 4)
          {
            v46 = *v45;
            v47 = *(v45 + 8);
            if (v19 == 4)
            {
              v48 = *v45;
              v228 = *(v45 + 8);
              sub_238814698(v46, v47, 4);
              sub_238814698(v43, v232, 4);
              LODWORD(v230) = sub_23881B740(v43, v48);
              sub_238810DC4(v48, v228, 4);
              sub_238810DC4(v43, v232, 4);
              v2 = v224;
              if ((v230 & 1) == 0)
              {
                goto LABEL_228;
              }

              goto LABEL_54;
            }

            v135 = *v45;
            v136 = *(v45 + 8);
            sub_238814698(v46, v47, *(v45 + 16));
            sub_238814698(v43, v232, 4);
            sub_238810DC4(v236, v234, 3);
            sub_238810DC4(v224, v23, 3);
            sub_238810DC4(v135, v136, v19);
            v128 = v43;
            v35 = v232;
LABEL_268:
            v132 = 4;
            goto LABEL_254;
          }

          if (v19 == 5 && (v38 | v37) == 0)
          {
            goto LABEL_54;
          }

LABEL_230:
          v124 = *v45;
          v125 = *(v45 + 8);
          sub_238814698(*v45, v125, *(v45 + 16));
          sub_238810DC4(v236, v234, 3);
          v126 = v2;
          v127 = v23;
LABEL_235:
          sub_238810DC4(v126, v127, 3);
          v128 = v124;
LABEL_236:
          v35 = v125;
          goto LABEL_237;
        }

        if (v19 != 3)
        {
          v133 = *v45;
          v134 = *(v45 + 8);
          sub_238814698(*v45, v134, *(v45 + 16));
          sub_238814698(v43, v232, 3);
          sub_238810DC4(v236, v234, 3);
          sub_238810DC4(v2, v23, 3);
          sub_238810DC4(v133, v134, v19);
          v128 = v43;
          v35 = v232;
          goto LABEL_253;
        }

        v49 = *(v43 + 16);
        if (v49 != *(v37 + 16))
        {
          v139 = v37;
          v140 = v38;
          sub_238814698(v37, v38, 3);
          sub_238814698(v43, v232, 3);
          sub_238810DC4(v236, v234, 3);
          sub_238810DC4(v2, v23, 3);
          sub_238810DC4(v139, v140, 3);
          v128 = v43;
          v35 = v232;
          goto LABEL_253;
        }

        if (v49)
        {
          v50 = v43 == v37;
        }

        else
        {
          v50 = 1;
        }

        if (v50)
        {
          goto LABEL_54;
        }

        v216 = v23;
        v51 = v37 + 32;
        v228 = v38;
        v229 = v37;
        v226 = v43;
        v223 = *(v43 + 16);
        sub_238814698(v37, v38, 3);
        result = sub_238814698(v43, v232, 3);
        v53 = v51;
        v54 = v43 + 32;
        v55 = v223;
        v7 = v43;
        v56 = 0;
        v219 = v51;
        v220 = v43 + 32;
        v227 = v29;
        while (2)
        {
          if (v56 >= *(v7 + 16))
          {
            __break(1u);
LABEL_272:
            __break(1u);
LABEL_273:
            __break(1u);
LABEL_274:
            __break(1u);
LABEL_275:
            __break(1u);
LABEL_276:
            __break(1u);
LABEL_277:
            __break(1u);
LABEL_278:
            __break(1u);
            return result;
          }

          if (v56 >= *(v229 + 16))
          {
            goto LABEL_272;
          }

          v59 = v54 + 24 * v56;
          v60 = *v59;
          v61 = *(v59 + 8);
          v62 = *(v59 + 16);
          v63 = v53 + 24 * v56;
          v64 = *(v63 + 8);
          v230 = *v63;
          v65 = *(v63 + 16);
          if (v62 <= 2)
          {
            if (v62)
            {
              if (v62 == 1)
              {
                if (v65 != 1)
                {
                  goto LABEL_234;
                }

                if (v60 != *&v230)
                {
                  goto LABEL_233;
                }
              }

              else
              {
                if (v65 != 2)
                {
                  v152 = v65;
                  v153 = v7;
                  v154 = *&v60;
                  v155 = v64;
                  sub_238814698(v230, v64, v65);
                  sub_238814698(v154, v61, 2);
                  sub_238810DC4(v229, v228, 3);
                  sub_238810DC4(v153, v232, 3);
                  sub_238810DC4(v236, v234, 3);
                  sub_238810DC4(v2, v216, 3);
                  sub_238810DC4(v230, v155, v152);
                  v128 = v154;
                  v35 = v61;
                  goto LABEL_266;
                }

                if (*&v60 != v230 || v61 != v64)
                {
                  result = sub_2388D3368();
                  v53 = v219;
                  v54 = v220;
                  v55 = v223;
                  v7 = v226;
                  if ((result & 1) == 0)
                  {
                    goto LABEL_233;
                  }
                }
              }
            }

            else
            {
              if (v65)
              {
                goto LABEL_234;
              }

              if ((v230 ^ LODWORD(v60)))
              {
                goto LABEL_233;
              }
            }

            goto LABEL_90;
          }

          if (v62 != 3)
          {
            if (v62 == 4)
            {
              v66 = *&v60;
              if (v65 != 4)
              {
                v156 = v65;
                v157 = v64;
                sub_238814698(v230, v64, v65);
                sub_238814698(v66, v61, 4);
                sub_238810DC4(v229, v228, 3);
                sub_238810DC4(v226, v232, 3);
                sub_238810DC4(v236, v234, 3);
                sub_238810DC4(v2, v216, 3);
                sub_238810DC4(v230, v157, v156);
                v128 = v66;
                v35 = v61;
                goto LABEL_268;
              }

              v222 = v64;
              sub_238814698(v230, v64, 4);
              sub_238814698(v66, v61, 4);
              LODWORD(v225) = sub_23881B740(v66, v230);
              sub_238810DC4(v230, v222, 4);
              result = sub_238810DC4(v66, v61, 4);
              v53 = v219;
              v54 = v220;
              v55 = v223;
              v7 = v226;
              if ((v225 & 1) == 0)
              {
                goto LABEL_233;
              }
            }

            else if (v65 != 5 || (v64 | v230) != 0)
            {
LABEL_234:
              v124 = v230;
              LOBYTE(v19) = v65;
              v131 = v7;
              v125 = v64;
              sub_238814698(v230, v64, v65);
              sub_238810DC4(v229, v228, 3);
              sub_238810DC4(v131, v232, 3);
              sub_238810DC4(v236, v234, 3);
              v126 = v2;
              v127 = v216;
              goto LABEL_235;
            }

            goto LABEL_90;
          }

          v221 = v61;
          if (v65 == 3)
          {
            v67 = *(*&v60 + 16);
            if (v67 == *(v230 + 16))
            {
              if (v67)
              {
                v68 = *&v60 == v230;
              }

              else
              {
                v68 = 1;
              }

              v7 = v226;
              if (v68)
              {
LABEL_90:
                ++v56;
                v29 = v227;
                if (v56 == v55)
                {
                  v123 = v7;
                  sub_238810DC4(v229, v228, 3);
                  sub_238810DC4(v123, v232, 3);
                  v23 = v216;
                  goto LABEL_54;
                }

                continue;
              }

              v69 = *&v60 + 32;
              v222 = v64;
              v217 = *&v60;
              v214 = *(*&v60 + 16);
              sub_238814698(v230, v64, 3);
              result = sub_238814698(v217, v61, 3);
              v70 = v230 + 32;
              v71 = v69;
              v72 = v214;
              v73 = v217;
              v74 = 0;
              v213 = v69;
              while (1)
              {
                if (v74 >= *(v73 + 16))
                {
                  goto LABEL_273;
                }

                if (v74 >= *(v230 + 16))
                {
                  goto LABEL_274;
                }

                v77 = v71 + 24 * v74;
                v79 = *v77;
                v78 = *(v77 + 8);
                v80 = *(v77 + 16);
                v81 = v70 + 24 * v74;
                v82 = *v81;
                v225 = *(v81 + 8);
                v83 = *(v81 + 16);
                if (v80 <= 2)
                {
                  if (v80)
                  {
                    if (v80 == 1)
                    {
                      if (v83 != 1)
                      {
                        goto LABEL_243;
                      }

                      if (*&v79 != *&v82)
                      {
                        goto LABEL_242;
                      }
                    }

                    else
                    {
                      if (v83 != 2)
                      {
                        v170 = v82;
                        v171 = v78;
                        v172 = v83;
                        v173 = v73;
                        sub_238814698(v82, v225, v83);
                        sub_238814698(v79, v171, 2);
                        sub_238810DC4(v230, v222, 3);
                        sub_238810DC4(v173, v221, 3);
                        sub_238810DC4(v229, v228, 3);
                        sub_238810DC4(v226, v232, 3);
                        sub_238810DC4(v236, v234, 3);
                        sub_238810DC4(v2, v216, 3);
                        sub_238810DC4(v170, v225, v172);
                        v128 = v79;
                        v35 = v171;
                        goto LABEL_266;
                      }

                      if (v79 != v82 || v78 != v225)
                      {
                        result = sub_2388D3368();
                        v70 = v230 + 32;
                        v71 = v213;
                        v72 = v214;
                        v73 = v217;
                        if ((result & 1) == 0)
                        {
                          goto LABEL_242;
                        }
                      }
                    }
                  }

                  else
                  {
                    if (v83)
                    {
                      goto LABEL_243;
                    }

                    if ((v82 ^ v79))
                    {
LABEL_242:
                      v141 = v73;
                      sub_238810DC4(v230, v222, 3);
                      v142 = v141;
                      goto LABEL_251;
                    }
                  }

                  goto LABEL_126;
                }

                if (v80 != 3)
                {
                  if (v80 == 4)
                  {
                    v218 = v78;
                    if (v83 != 4)
                    {
                      v162 = v82;
                      v163 = v83;
                      sub_238814698(v82, v225, v83);
                      sub_238814698(v79, v218, 4);
                      sub_238810DC4(v230, v222, 3);
                      sub_238810DC4(v217, v221, 3);
                      sub_238810DC4(v229, v228, 3);
                      sub_238810DC4(v226, v232, 3);
                      sub_238810DC4(v236, v234, 3);
                      sub_238810DC4(v2, v216, 3);
                      sub_238810DC4(v162, v225, v163);
                      v128 = v79;
                      v35 = v218;
                      goto LABEL_268;
                    }

                    v84 = v82;
                    sub_238814698(v82, v225, 4);
                    sub_238814698(v79, v218, 4);
                    LODWORD(v215) = sub_23881B740(v79, v84);
                    sub_238810DC4(v84, v225, 4);
                    result = sub_238810DC4(v79, v218, 4);
                    v70 = v230 + 32;
                    v71 = v213;
                    v72 = v214;
                    v73 = v217;
                    if ((v215 & 1) == 0)
                    {
                      goto LABEL_242;
                    }
                  }

                  else if (v83 != 5 || (v225 | v82) != 0)
                  {
LABEL_243:
                    v143 = v82;
                    LOBYTE(v19) = v83;
                    v144 = v73;
                    sub_238814698(v82, v225, v83);
                    sub_238810DC4(v230, v222, 3);
                    sub_238810DC4(v144, v221, 3);
                    sub_238810DC4(v229, v228, 3);
                    sub_238810DC4(v226, v232, 3);
                    sub_238810DC4(v236, v234, 3);
                    sub_238810DC4(v2, v216, 3);
                    v128 = v143;
                    v35 = v225;
                    goto LABEL_237;
                  }

                  goto LABEL_126;
                }

                v218 = v78;
                if (v83 != 3)
                {
                  v164 = v82;
                  v165 = v83;
                  sub_238814698(v82, v225, v83);
                  v166 = v218;
                  sub_238814698(v79, v218, 3);
                  sub_238810DC4(v230, v222, 3);
                  sub_238810DC4(v217, v221, 3);
                  sub_238810DC4(v229, v228, 3);
                  sub_238810DC4(v226, v232, 3);
                  sub_238810DC4(v236, v234, 3);
                  sub_238810DC4(v2, v216, 3);
                  v167 = v164;
                  v168 = v225;
                  v169 = v165;
                  goto LABEL_261;
                }

                v85 = *(v79 + 16);
                if (v85 != *(v82 + 16))
                {
                  v174 = v82;
                  sub_238814698(v82, v225, 3);
                  v166 = v218;
                  sub_238814698(v79, v218, 3);
                  sub_238810DC4(v230, v222, 3);
                  sub_238810DC4(v217, v221, 3);
                  sub_238810DC4(v229, v228, 3);
                  sub_238810DC4(v226, v232, 3);
                  sub_238810DC4(v236, v234, 3);
                  sub_238810DC4(v2, v216, 3);
                  v167 = v174;
                  v168 = v225;
                  v169 = 3;
LABEL_261:
                  sub_238810DC4(v167, v168, v169);
                  v128 = v79;
                  v35 = v166;
LABEL_253:
                  v132 = 3;
                  goto LABEL_254;
                }

                v86 = !v85 || v79 == v82;
                v73 = v217;
                if (!v86)
                {
                  break;
                }

LABEL_126:
                if (++v74 == v72)
                {
                  v122 = v73;
                  sub_238810DC4(v230, v222, 3);
                  result = sub_238810DC4(v122, v221, 3);
                  v7 = v226;
                  v55 = v223;
                  v53 = v219;
                  v54 = v220;
                  goto LABEL_90;
                }
              }

              v207 = v82 + 32;
              v208 = v79 + 32;
              v215 = v82;
              v209 = *(v79 + 16);
              sub_238814698(v82, v225, 3);
              result = sub_238814698(v79, v218, 3);
              v88 = v207;
              v87 = v79 + 32;
              v89 = v209;
              v90 = 0;
              v91 = v79;
              v210 = v79;
              while (1)
              {
                if (v90 >= *(v91 + 16))
                {
                  goto LABEL_275;
                }

                if (v90 >= *(v215 + 16))
                {
                  goto LABEL_276;
                }

                v94 = v87 + 24 * v90;
                v25 = *v94;
                v29 = *(v94 + 8);
                v95 = *(v94 + 16);
                v96 = v88 + 24 * v90;
                v39 = *v96;
                v38 = *(v96 + 8);
                LODWORD(v37) = *(v96 + 16);
                if (v95 > 2)
                {
                  break;
                }

                if (v95)
                {
                  if (v95 == 1)
                  {
                    if (v37 != 1)
                    {
                      goto LABEL_256;
                    }

                    if (*&v25 != *&v39)
                    {
                      goto LABEL_250;
                    }
                  }

                  else
                  {
                    if (v37 != 2)
                    {
                      v181 = *v96;
                      v182 = *(v96 + 8);
                      v183 = v91;
                      v184 = *(v96 + 16);
                      sub_238814698(*v96, v182, v37);
                      sub_238814698(v25, v29, 2);
                      sub_238810DC4(v215, v225, 3);
                      sub_238810DC4(v183, v218, 3);
                      sub_238810DC4(v230, v222, 3);
                      sub_238810DC4(v217, v221, 3);
                      sub_238810DC4(v229, v228, 3);
                      sub_238810DC4(v226, v232, 3);
                      sub_238810DC4(v236, v234, 3);
                      sub_238810DC4(v2, v216, 3);
                      sub_238810DC4(*&v181, v182, v184);
                      v128 = v25;
                      v35 = v29;
                      goto LABEL_266;
                    }

                    if (v25 != v39 || v29 != v38)
                    {
                      v108 = v90;
                      result = sub_2388D3368();
                      v90 = v108;
                      v88 = v207;
                      v87 = v208;
                      v89 = v209;
                      v91 = v210;
                      if ((result & 1) == 0)
                      {
                        goto LABEL_250;
                      }
                    }
                  }

                  goto LABEL_162;
                }

                if (*(v96 + 16))
                {
                  goto LABEL_256;
                }

                if ((v39 ^ v25))
                {
LABEL_250:
                  v159 = v91;
                  sub_238810DC4(v215, v225, 3);
                  sub_238810DC4(v159, v218, 3);
                  sub_238810DC4(v230, v222, 3);
                  v142 = v217;
LABEL_251:
                  sub_238810DC4(v142, v221, 3);
                  sub_238810DC4(v229, v228, 3);
                  v130 = v226;
LABEL_252:
                  sub_238810DC4(v130, v232, 3);
                  sub_238810DC4(v236, v234, 3);
                  v128 = v2;
                  v35 = v216;
                  goto LABEL_253;
                }

LABEL_162:
                if (++v90 == v89)
                {
                  v121 = v91;
                  sub_238810DC4(v215, v225, 3);
                  result = sub_238810DC4(v121, v218, 3);
                  v73 = v217;
                  v71 = v213;
                  v72 = v214;
                  v70 = v230 + 32;
                  goto LABEL_126;
                }
              }

              if (v95 != 3)
              {
                if (v95 == 4)
                {
                  v211 = v29;
                  v97 = v25;
                  if (v37 != 4)
                  {
                    v185 = *v96;
                    v186 = *(v96 + 8);
                    v187 = *(v96 + 16);
                    sub_238814698(v39, v38, v37);
                    sub_238814698(v25, v211, 4);
                    sub_238810DC4(v215, v225, 3);
                    sub_238810DC4(v210, v218, 3);
                    sub_238810DC4(v230, v222, 3);
                    sub_238810DC4(v217, v221, 3);
                    sub_238810DC4(v229, v228, 3);
                    sub_238810DC4(v226, v232, 3);
                    sub_238810DC4(v236, v234, 3);
                    sub_238810DC4(v2, v216, 3);
                    sub_238810DC4(v185, v186, v187);
                    v128 = v25;
                    v35 = v211;
                    goto LABEL_268;
                  }

                  v98 = *v96;
                  v200 = v90;
                  v202 = *(v96 + 8);
                  sub_238814698(v39, v38, 4);
                  sub_238814698(v97, v211, 4);
                  v204 = sub_23881B740(v97, v98);
                  sub_238810DC4(v98, v202, 4);
                  result = sub_238810DC4(v97, v211, 4);
                  v90 = v200;
                  v88 = v207;
                  v87 = v208;
                  v89 = v209;
                  v91 = v210;
                  if ((v204 & 1) == 0)
                  {
                    goto LABEL_250;
                  }
                }

                else if (v37 != 5 || (v38 | v39) != 0)
                {
LABEL_256:
                  v160 = *v96;
                  v125 = *(v96 + 8);
                  v161 = v91;
                  LOBYTE(v19) = *(v96 + 16);
                  sub_238814698(*v96, v125, v37);
                  sub_238810DC4(v215, v225, 3);
                  sub_238810DC4(v161, v218, 3);
                  sub_238810DC4(v230, v222, 3);
                  sub_238810DC4(v217, v221, 3);
                  sub_238810DC4(v229, v228, 3);
                  sub_238810DC4(v226, v232, 3);
                  sub_238810DC4(v236, v234, 3);
                  sub_238810DC4(v2, v216, 3);
                  v128 = v160;
                  goto LABEL_236;
                }

                goto LABEL_162;
              }

              if (v37 != 3)
              {
                goto LABEL_264;
              }

              v99 = *(v25 + 16);
              if (v99 != *(v39 + 16))
              {
                v188 = v39;
                v189 = v38;
                sub_238814698(v39, v38, 3);
                sub_238814698(v25, v29, 3);
                sub_238810DC4(v215, v225, 3);
                sub_238810DC4(v210, v218, 3);
                sub_238810DC4(v230, v222, 3);
                sub_238810DC4(v217, v221, 3);
                sub_238810DC4(v229, v228, 3);
                sub_238810DC4(v226, v232, 3);
                sub_238810DC4(v236, v234, 3);
                sub_238810DC4(v2, v216, 3);
                v178 = v188;
                v179 = v189;
                v180 = 3;
                goto LABEL_270;
              }

              if (v99)
              {
                v100 = v25 == v39;
              }

              else
              {
                v100 = 1;
              }

              v91 = v210;
              if (v100)
              {
                goto LABEL_162;
              }

              v201 = v90;
              v203 = v38;
              v191 = *(v25 + 16);
              v192 = v39;
              v199 = v25;
              sub_238814698(v39, v38, 3);
              v212 = v29;
              result = sub_238814698(v25, v29, 3);
              v102 = v191;
              v101 = v192;
              v103 = v25;
              v104 = 0;
              v105 = (v192 + 48);
              v106 = (v25 + 48);
              while (1)
              {
                if (v104 >= *(v103 + 16))
                {
                  goto LABEL_277;
                }

                if (v104 >= *(v101 + 16))
                {
                  goto LABEL_278;
                }

                v113 = *(v106 - 2);
                v114 = *v106;
                v115 = *(v105 - 2);
                v116 = *(v105 - 1);
                v117 = *v105;
                if (v114 > 2)
                {
                  if (v114 == 3)
                  {
                    if (v117 != 3)
                    {
                      goto LABEL_244;
                    }

                    v109 = *(v106 - 1);
                    v197 = v105;
                    v193 = *(v105 - 2);
                    v195 = *(v105 - 1);
                    v198 = v104;
                    v205 = v106;
                    sub_238814698(v193, v116, 3);
                    sub_238814698(v113, v109, 3);
                    v190 = sub_23889041C(v113, v193);
                    sub_238810DC4(v193, v195, 3);
                    v110 = v113;
                    v111 = v109;
                    v112 = 3;
LABEL_195:
                    result = sub_238810DC4(v110, v111, v112);
                    v106 = v205;
                    v105 = v197;
                    v104 = v198;
                    v102 = v191;
                    v101 = v192;
                    v103 = v199;
                    if ((v190 & 1) == 0)
                    {
                      goto LABEL_244;
                    }

                    goto LABEL_196;
                  }

                  if (v114 == 4)
                  {
                    if (v117 != 4)
                    {
                      goto LABEL_244;
                    }

                    v118 = *(v106 - 1);
                    v197 = v105;
                    v194 = *(v105 - 2);
                    v196 = *(v105 - 1);
                    v198 = v104;
                    v205 = v106;
                    sub_238814698(v194, v116, 4);
                    sub_238814698(v113, v118, 4);
                    v190 = sub_23881B740(v113, v194);
                    sub_238810DC4(v194, v196, 4);
                    v110 = v113;
                    v111 = v118;
                    v112 = 4;
                    goto LABEL_195;
                  }

                  if (v117 != 5 || v116 | *&v115)
                  {
                    goto LABEL_244;
                  }
                }

                else if (*v106)
                {
                  if (v114 == 1)
                  {
                    if (v117 != 1 || *&v113 != v115)
                    {
                      goto LABEL_244;
                    }
                  }

                  else if (v117 != 2 || (v113 != *&v115 || *(v106 - 1) != v116) && (v119 = v104, v120 = v105, v206 = v106, result = sub_2388D3368(), v106 = v206, v105 = v120, v104 = v119, v102 = v191, v101 = v192, v103 = v199, (result & 1) == 0))
                  {
LABEL_244:
                    v145 = v101;
                    sub_238810DC4(v215, v225, 3);
                    sub_238810DC4(v210, v218, 3);
                    sub_238810DC4(v230, v222, 3);
                    sub_238810DC4(v217, v221, 3);
                    sub_238810DC4(v229, v228, 3);
                    sub_238810DC4(v226, v232, 3);
                    sub_238810DC4(v236, v234, 3);
                    sub_238810DC4(v2, v216, 3);
                    sub_238810DC4(v145, v203, 3);
                    v128 = v103;
                    v35 = v212;
                    goto LABEL_253;
                  }
                }

                else if (*v105 || ((LODWORD(v115) ^ v113) & 1) != 0)
                {
                  goto LABEL_244;
                }

LABEL_196:
                ++v104;
                v105 += 3;
                v106 += 3;
                if (v102 == v104)
                {
                  sub_238810DC4(v101, v203, 3);
                  result = sub_238810DC4(v103, v212, 3);
                  v89 = v209;
                  v91 = v210;
                  v88 = v207;
                  v87 = v208;
                  v90 = v201;
                  goto LABEL_162;
                }
              }
            }

            v147 = *&v60;
            v158 = v64;
            sub_238814698(v230, v64, 3);
            v23 = v61;
            sub_238814698(v147, v61, 3);
            sub_238810DC4(v229, v228, 3);
            sub_238810DC4(v226, v232, 3);
            sub_238810DC4(v236, v234, 3);
            sub_238810DC4(v2, v216, 3);
            v149 = v230;
            v150 = v158;
            v151 = 3;
          }

          else
          {
            v146 = v65;
            v147 = *&v60;
            v148 = v64;
            sub_238814698(v230, v64, v65);
            v23 = v61;
            sub_238814698(v147, v61, 3);
            sub_238810DC4(v229, v228, 3);
            sub_238810DC4(v226, v232, 3);
            sub_238810DC4(v236, v234, 3);
            sub_238810DC4(v2, v216, 3);
            v149 = v230;
            v150 = v148;
            v151 = v146;
          }

          break;
        }

        sub_238810DC4(v149, v150, v151);
        v128 = v147;
LABEL_229:
        v35 = v23;
        goto LABEL_253;
      }

      break;
    }

    v26 = v236;
    if (v24)
    {
      if (v24 == 1)
      {
        if (v19 != 1)
        {
          goto LABEL_227;
        }

        v7 = v235;
        if (*&v2 != *&v236)
        {
          return 0;
        }

        continue;
      }

      if (v19 != 2)
      {
        goto LABEL_227;
      }

      if (v2 == v236 && v23 == v234)
      {
        v30 = v236;
        v31 = v234;
        v32 = 2;
        goto LABEL_47;
      }

      v34 = sub_2388D3368();
      sub_238810DC4(v236, v234, 2);
      v7 = v235;
      if (v34)
      {
        continue;
      }
    }

    else
    {
      if (v19)
      {
        goto LABEL_227;
      }

      v7 = v235;
      if (((v2 ^ v236) & 1) == 0)
      {
        continue;
      }
    }

    return 0;
  }
}

uint64_t sub_23881D144(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v51 = a1;
  v52 = a2;
  if (!v7)
  {
LABEL_7:
    v10 = v3;
    while (1)
    {
      v3 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v3 >= v8)
      {
        return 1;
      }

      v11 = *(v4 + 8 * v3);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v55 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_93:
    sub_238810DC4(*&v57, a2, 4);

    v42 = v2;
    v41 = 0;
    v50 = 4;
    goto LABEL_81;
  }

  while (1)
  {
    v9 = __clz(__rbit64(v7));
    v55 = (v7 - 1) & v7;
LABEL_12:
    v12 = v9 | (v3 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a1 + 56) + 40 * v12;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v58 = *(v16 + 17);
    v20 = *(v16 + 32);
    v54 = *(v16 + 24);

    v61 = v19;
    sub_238814698(v17, v18, v19);
    v59 = v20;

    if (!v14)
    {
      return 1;
    }

    v21 = v2;
    v22 = sub_238820AA8(v15, v14);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_78;
    }

    v25 = *(v21 + 56) + 40 * v22;
    v26 = *v25;
    v27 = *(v25 + 8);
    v28 = *(v25 + 16);
    v29 = *(v25 + 17);
    v57 = *v25;
    v56 = *(v25 + 16);
    v53 = *(v25 + 24);
    v60 = *(v25 + 32);
    if (v28 <= 2)
    {
      if (*(v25 + 16))
      {
        if (v28 == 1)
        {
          if (v61 != 1)
          {
            goto LABEL_85;
          }

          if (*&v26 != *&v17)
          {
            v42 = v17;
            v41 = v18;
            v50 = 1;
            goto LABEL_81;
          }

          v30 = *v25;
          v31 = *(v25 + 8);
          v32 = v31;
          v33 = 1;
        }

        else
        {
          if (v61 != 2)
          {
LABEL_85:
            v42 = v17;
            v41 = v18;
            goto LABEL_80;
          }

          if (v26 == v17 && v27 == v18)
          {
            v31 = *(v25 + 8);
            v30 = *&v17;
            v32 = v18;
          }

          else
          {
            v45 = *v25;
            v46 = *(v25 + 8);
            if ((sub_2388D3368() & 1) == 0)
            {
              v42 = v17;
              v41 = v18;
              v50 = 2;
              goto LABEL_81;
            }

            v30 = v45;
            v31 = v46;
            v32 = v46;
          }

          v33 = 2;
        }
      }

      else
      {
        v41 = v18;
        v42 = v17;
        if (v61)
        {
          goto LABEL_80;
        }

        if ((v26 ^ v17))
        {
          v50 = 0;
          goto LABEL_81;
        }

        v30 = *v25;
        v31 = *(v25 + 8);
        v32 = v31;
        v33 = 0;
      }

LABEL_61:
      sub_238814698(*&v30, v32, v33);

      goto LABEL_62;
    }

    if (v28 != 3)
    {
      break;
    }

    if (v61 != 3)
    {
      v42 = v17;
LABEL_79:
      v41 = v18;
      goto LABEL_80;
    }

    v31 = *(v25 + 8);
    v43 = *v25;
    sub_238814698(v26, v27, 3);

    if ((sub_2388919B8(*&v43, v17) & 1) == 0)
    {
      sub_238810DC4(*&v57, v31, 3);

      v42 = v17;
      v41 = v18;
      v50 = 3;
      goto LABEL_81;
    }

LABEL_62:
    if (v58 != v29)
    {
      sub_238810DC4(*&v57, v31, v56);

LABEL_78:
      v42 = v17;
      goto LABEL_79;
    }

    if (v60)
    {
      v2 = v52;
      if (!v59)
      {
        goto LABEL_84;
      }

      if (v53 == v54 && v60 == v59)
      {
        swift_bridgeObjectRetain_n();
      }

      else
      {
        v48 = sub_2388D3368();
        swift_bridgeObjectRetain_n();
        if ((v48 & 1) == 0)
        {
          swift_bridgeObjectRelease_n();
          sub_238810DC4(*&v57, v31, v56);

          sub_238810DC4(v17, v18, v61);
          goto LABEL_82;
        }
      }

      swift_bridgeObjectRelease_n();
      sub_238810DC4(*&v57, v31, v56);

      sub_238810DC4(v17, v18, v61);
    }

    else
    {
      v2 = v52;
      if (v59)
      {
LABEL_84:

        sub_238810DC4(*&v57, v31, v56);

        sub_238810DC4(v17, v18, v61);
        goto LABEL_82;
      }

      sub_238810DC4(*&v57, v31, v56);

      sub_238810DC4(v17, v18, v61);
    }

    a1 = v51;
    v7 = v55;
    if (!v55)
    {
      goto LABEL_7;
    }
  }

  if (v28 != 4)
  {
    if (v61 != 5 || (v18 | v17) != 0)
    {
      v41 = v18;
      v42 = v17;
LABEL_80:
      v50 = v61;
      goto LABEL_81;
    }

    v30 = *v25;
    v31 = *(v25 + 8);
    v32 = v31;
    v33 = 5;
    goto LABEL_61;
  }

  if (v61 != 4)
  {
    v42 = v17;
    v41 = v18;
    goto LABEL_80;
  }

  v34 = *v25;
  v31 = *(v25 + 8);
  sub_238814698(v26, v27, 4);
  v2 = v17;

  result = sub_23881D7DC(*&v34, v17);
  if ((result & 1) == 0)
  {
    v49 = *&v57;
    a2 = v31;
    goto LABEL_95;
  }

  a2 = v31;
  if (!v31)
  {
    v31 = 0;
    if (v18)
    {
      v49 = *&v57;
      a2 = 0;
      goto LABEL_95;
    }

    goto LABEL_62;
  }

  if (!v18)
  {
    goto LABEL_93;
  }

  v36 = *(v31 + 16);
  if (v36 == *(v18 + 16))
  {
    if (v36)
    {
      v37 = v31 == v18;
    }

    else
    {
      v37 = 1;
    }

    if (!v37)
    {
      v38 = (v31 + 40);
      v39 = (v18 + 40);
      while (v36)
      {
        result = *(v38 - 1);
        if (result != *(v39 - 1) || *v38 != *v39)
        {
          result = sub_2388D3368();
          if ((result & 1) == 0)
          {
            v49 = *&v57;
            a2 = v31;
            goto LABEL_95;
          }
        }

        v38 += 2;
        v39 += 2;
        if (!--v36)
        {
          goto LABEL_62;
        }
      }

      __break(1u);
      return result;
    }

    goto LABEL_62;
  }

  v49 = *&v57;
LABEL_95:
  sub_238810DC4(v49, a2, 4);

  v42 = v17;
  v41 = v18;
  v50 = 4;
LABEL_81:
  sub_238810DC4(v42, v41, v50);
LABEL_82:

  return 0;
}

uint64_t sub_23881D7DC(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_409;
  }

  v6 = 0;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  while (1)
  {
LABEL_6:
    if (v9)
    {
      v11 = __clz(__rbit64(v9));
      v313 = (v9 - 1) & v9;
      goto LABEL_13;
    }

    v12 = v6;
    do
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_356:
        sub_238810DC4(v4, v3, 4);
        v226 = v2;
        v227 = 0;
        goto LABEL_359;
      }

      if (v6 >= v10)
      {
        return 1;
      }

      v13 = *(a1 + 64 + 8 * v6);
      ++v12;
    }

    while (!v13);
    v11 = __clz(__rbit64(v13));
    v313 = (v13 - 1) & v13;
LABEL_13:
    v14 = v11 | (v6 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(a1 + 56) + 24 * v14;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v312 = *(v18 + 17);

    *&v314 = v20;
    *(&v314 + 1) = v19;
    sub_238814698(v19, v20, v21);
    v22 = sub_238820AA8(v16, v17);
    LOBYTE(v20) = v23;

    if ((v20 & 1) == 0)
    {
      v226 = *(&v314 + 1);
      v227 = v314;
LABEL_352:
      v225 = v21;
LABEL_408:
      sub_238810DC4(v226, v227, v225);
LABEL_409:
      *&result = 0.0;
      return result;
    }

    v24 = *(a2 + 56) + 24 * v22;
    v4 = *v24;
    v3 = *(v24 + 8);
    v25 = *(v24 + 16);
    v26 = *(v24 + 17);
    if (v25 <= 2)
    {
      break;
    }

    v2 = *(&v314 + 1);
    v29 = v314;
    if (v25 != 3)
    {
      if (v25 != 4)
      {
        if (v21 == 5 && v314 == 0)
        {
          goto LABEL_337;
        }

LABEL_351:
        v226 = *(&v314 + 1);
        v227 = v314;
        goto LABEL_352;
      }

      if (v21 != 4)
      {
        goto LABEL_351;
      }

      if (sub_23881D7DC(v30, *(&v314 + 1)))
      {
        if (!v3)
        {
          sub_238810DC4(v4, 0, 4);
          if (v314)
          {
            goto LABEL_354;
          }

          v35 = *(&v314 + 1);
          v36 = 0;
LABEL_335:
          v37 = 4;
          goto LABEL_336;
        }

        if (!v314)
        {
          goto LABEL_356;
        }

        v2 = *(v3 + 16);
        if (v2 == *(v314 + 16))
        {
          if (v2)
          {
            if (v3 != v314)
            {
              v306 = v26;
              v26 = v4;
              v223 = (v3 + 40);
              v4 = v314 + 40;
              do
              {
                v224 = *(v223 - 1) == *(v4 - 8) && *v223 == *v4;
                if (!v224 && (sub_2388D3368() & 1) == 0)
                {
                  sub_238810DC4(v26, v3, 4);
                  v226 = *(&v314 + 1);
                  v227 = v314;
                  goto LABEL_359;
                }

                v223 += 2;
                v4 += 16;
                --v2;
              }

              while (v2);
              sub_238810DC4(v26, v3, 4);
              sub_238810DC4(*(&v314 + 1), v314, 4);
              LODWORD(v26) = v306;
              goto LABEL_337;
            }

            v31 = v4;
            v32 = v314;
          }

          else
          {
            v31 = v4;
            v32 = v3;
          }

          sub_238810DC4(v31, v32, 4);
          v35 = *(&v314 + 1);
          v36 = v314;
          goto LABEL_335;
        }

        sub_238810DC4(v4, v3, 4);
        v226 = *(&v314 + 1);
      }

      else
      {
        sub_238810DC4(v4, v3, 4);
LABEL_354:
        v226 = *(&v314 + 1);
      }

      v227 = v314;
LABEL_359:
      v225 = 4;
      goto LABEL_408;
    }

    if (v21 != 3)
    {
      goto LABEL_351;
    }

    v34 = *(v4 + 16);
    if (v34 != *(*(&v314 + 1) + 16))
    {
      goto LABEL_366;
    }

    if (v34 && v4 != *(&v314 + 1))
    {
      v310 = v4;
      v302 = v3;
      v3 = *(&v314 + 1) + 32;
      v308 = *(v4 + 16);

      v40 = v4 + 32;
      v41 = v308;
      v42 = 0;
      v305 = v26;
      v301 = v4 + 32;
      while (1)
      {
        if (v42 >= *(v310 + 16))
        {
          __break(1u);
LABEL_375:
          __break(1u);
LABEL_376:
          sub_238810DC4(v284, v283, 4);
          v238 = v4;
          v239 = v26;
          goto LABEL_381;
        }

        if (v42 >= *(v2 + 16))
        {
          goto LABEL_375;
        }

        v43 = v40 + 24 * v42;
        v45 = *v43;
        v44 = *(v43 + 8);
        v4 = *(v43 + 17);
        v46 = *(v43 + 16);
        v47 = v3 + 24 * v42;
        v49 = *v47;
        v48 = *(v47 + 8);
        v50 = *(v47 + 16);
        v51 = *(v47 + 17);
        if (v46 <= 2)
        {
          if (v46)
          {
            if (v46 == 1)
            {
              if (v50 != 1 || v45 != *&v49)
              {
                goto LABEL_363;
              }
            }

            else
            {
              if (v50 != 2)
              {
                goto LABEL_363;
              }

              if (*&v45 != v49 || v44 != v48)
              {
                v210 = v40;
                v309 = v42;
                v211 = v51;
                v212 = sub_2388D3368();
                v51 = v211;
                v41 = v308;
                v42 = v309;
                v40 = v210;
                if ((v212 & 1) == 0)
                {
                  goto LABEL_363;
                }
              }
            }
          }

          else if (v50 || ((v49 ^ LODWORD(v45)) & 1) != 0)
          {
            goto LABEL_363;
          }

          goto LABEL_320;
        }

        if (v46 == 3)
        {
          break;
        }

        if (v46 != 4)
        {
          if (v50 != 5 || (v48 | v49) != 0)
          {
            goto LABEL_363;
          }

          goto LABEL_320;
        }

        if (v50 != 4)
        {
          goto LABEL_363;
        }

        v303 = v51;
        v304 = v4;
        v52 = v29;
        v53 = *&v45;
        v54 = v44;
        v307 = v48;
        sub_238814698(v49, v48, 4);
        sub_238814698(v53, v54, 4);
        v55 = v53;
        v309 = v49;
        if ((sub_23881D7DC(v53, v49) & 1) == 0)
        {
          sub_238810DC4(v49, v307, 4);
          sub_238810DC4(v53, v54, 4);
          sub_238810DC4(v310, v302, 3);
          v226 = *(&v314 + 1);
          v227 = v52;
          goto LABEL_407;
        }

        v2 = *(&v314 + 1);
        if (v54)
        {
          v56 = v54;
          v29 = v52;
          if (!v307)
          {
            v231 = v56;
            sub_238810DC4(v309, 0, 4);
            v232 = v53;
            v233 = v231;
LABEL_365:
            sub_238810DC4(v232, v233, 4);
            sub_238810DC4(v310, v302, 3);
LABEL_366:
            v226 = v2;
LABEL_367:
            v227 = v29;
            goto LABEL_407;
          }

          v57 = *(v56 + 16);
          if (v57 != *(v307 + 16))
          {
            v234 = v56;
            sub_238810DC4(v309, v307, 4);
            sub_238810DC4(v53, v234, 4);
LABEL_363:
            sub_238810DC4(v310, v302, 3);
            v226 = *(&v314 + 1);
            goto LABEL_367;
          }

          if (v57)
          {
            if (v56 != v307)
            {
              v298 = v56;
              v216 = (v56 + 40);
              v217 = (v307 + 40);
              do
              {
                v218 = *(v216 - 1) == *(v217 - 1) && *v216 == *v217;
                if (!v218 && (sub_2388D3368() & 1) == 0)
                {
                  sub_238810DC4(v309, v307, 4);
                  v228 = v55;
                  v229 = v298;
                  v230 = 4;
                  goto LABEL_406;
                }

                v216 += 2;
                v217 += 2;
                --v57;
              }

              while (v57);
              sub_238810DC4(v55, v298, 4);
              v220 = v309;
              v221 = v307;
              v222 = 4;
              goto LABEL_332;
            }

            v58 = v53;
            v59 = v56;
          }

          else
          {
            v58 = v53;
            v59 = v307;
          }

          sub_238810DC4(v58, v56, 4);
          v214 = v309;
          v215 = v59;
        }

        else
        {
          v29 = v52;
          if (v307)
          {
            sub_238810DC4(v309, v307, 4);
            v232 = v53;
            v233 = 0;
            goto LABEL_365;
          }

          sub_238810DC4(v53, 0, 4);
          v214 = v309;
          v215 = 0;
        }

        sub_238810DC4(v214, v215, 4);
LABEL_319:
        v4 = v304;
        v26 = v305;
        v41 = v308;
        v3 = *(&v314 + 1) + 32;
        v40 = v301;
        v51 = v303;
LABEL_320:
        if (v4 != v51)
        {
          goto LABEL_363;
        }

        ++v42;
        v2 = *(&v314 + 1);
        if (v42 == v41)
        {
          sub_238810DC4(v310, v302, 3);
          goto LABEL_39;
        }
      }

      if (v50 != 3)
      {
        goto LABEL_363;
      }

      v60 = *(*&v45 + 16);
      if (v60 != *(v49 + 16))
      {
        goto LABEL_363;
      }

      if (v60)
      {
        v61 = *&v45 == v49;
      }

      else
      {
        v61 = 1;
      }

      if (v61)
      {
        goto LABEL_320;
      }

      v303 = v51;
      v304 = v4;
      v62 = v49;
      v309 = v49;
      v63 = *&v45 + 32;
      v64 = v49 + 32;
      v65 = *&v45;
      v66 = v44;
      v307 = v48;
      v300 = *(*&v45 + 16);
      sub_238814698(v62, v48, 3);
      v298 = v66;
      v67 = v66;
      v68 = v63;
      sub_238814698(v65, v67, 3);
      v69 = v300;
      v70 = v307;
      v71 = 0;
      v295 = v65;
      v289 = v64;
      v290 = v68;
      while (2)
      {
        if (v71 >= *(v65 + 16))
        {
          __break(1u);
LABEL_383:
          __break(1u);
LABEL_384:
          sub_238810DC4(v275, v276, 4);
          v242 = v277;
          v243 = v64;
          goto LABEL_391;
        }

        if (v71 >= *(v309 + 16))
        {
          goto LABEL_383;
        }

        v72 = v68 + 24 * v71;
        v73 = *v72;
        v74 = *(v72 + 8);
        v75 = *(v72 + 17);
        v76 = *(v72 + 16);
        v77 = v64 + 24 * v71;
        v78 = *v77;
        v79 = *(v77 + 8);
        v80 = *(v77 + 16);
        v81 = *(v77 + 17);
        if (v76 <= 2)
        {
          if (v76)
          {
            if (v76 == 1)
            {
              if (v80 != 1 || v73 != *&v78)
              {
                goto LABEL_405;
              }
            }

            else
            {
              if (v80 != 2)
              {
                goto LABEL_405;
              }

              if (*&v73 != v78 || v74 != v79)
              {
                v293 = v75;
                v200 = v71;
                v201 = v81;
                v202 = sub_2388D3368();
                v81 = v201;
                v71 = v200;
                v75 = v293;
                v69 = v300;
                v70 = v307;
                if ((v202 & 1) == 0)
                {
                  goto LABEL_405;
                }
              }
            }
          }

          else if (v80 || ((v78 ^ LODWORD(v73)) & 1) != 0)
          {
            goto LABEL_405;
          }

          goto LABEL_288;
        }

        if (v76 != 3)
        {
          if (v76 != 4)
          {
            if (v80 != 5 || (v79 | v78) != 0)
            {
              goto LABEL_405;
            }

LABEL_288:
            if (v75 != v81)
            {
              goto LABEL_405;
            }

            goto LABEL_289;
          }

          if (v80 != 4)
          {
            goto LABEL_405;
          }

          v291 = v81;
          v297 = v71;
          v83 = *&v73;
          v299 = v79;
          v84 = v78;
          v85 = v74;
          sub_238814698(v78, v79, 4);
          sub_238814698(v83, v85, 4);
          v86 = v83;
          v87 = v83;
          v88 = v84;
          if (sub_23881D7DC(v87, v84))
          {
            if (v85)
            {
              if (v299)
              {
                v89 = v86;
                v90 = *(v85 + 16);
                if (v90 == *(v299 + 16))
                {
                  if (v90)
                  {
                    if (v85 == v299)
                    {
                      v91 = v89;
                      v92 = v85;
                      v93 = v85;
                      goto LABEL_286;
                    }

                    v294 = v75;
                    v287 = v85;
                    v206 = (v85 + 40);
                    v207 = (v299 + 40);
                    do
                    {
                      v208 = *(v206 - 1) == *(v207 - 1) && *v206 == *v207;
                      if (!v208 && (sub_2388D3368() & 1) == 0)
                      {
                        sub_238810DC4(v88, v299, 4);
                        v235 = v89;
                        v236 = v287;
                        goto LABEL_373;
                      }

                      v206 += 2;
                      v207 += 2;
                      --v90;
                    }

                    while (v90);
                    sub_238810DC4(v89, v287, 4);
                    sub_238810DC4(v88, v299, 4);
                    v70 = v307;
                    v65 = v295;
                    v69 = v300;
                    v64 = v289;
                    v68 = v290;
                    v71 = v297;
                    v102 = v294;
LABEL_300:
                    if (v102 != v291)
                    {
                      goto LABEL_405;
                    }

LABEL_289:
                    if (++v71 != v69)
                    {
                      continue;
                    }

                    v219 = v70;
                    sub_238810DC4(v65, v298, 3);
                    v220 = v309;
                    v221 = v219;
                    v222 = 3;
LABEL_332:
                    sub_238810DC4(v220, v221, v222);
                    v29 = v314;
                    goto LABEL_319;
                  }

                  v91 = v89;
                  v92 = v85;
                  v93 = v299;
LABEL_286:
                  sub_238810DC4(v91, v92, 4);
                  v204 = v88;
                  v205 = v93;
LABEL_287:
                  sub_238810DC4(v204, v205, 4);
                  v70 = v307;
                  v65 = v295;
                  v69 = v300;
                  v64 = v289;
                  v68 = v290;
                  v71 = v297;
                  v81 = v291;
                  goto LABEL_288;
                }

                v237 = v85;
                sub_238810DC4(v88, v299, 4);
                v235 = v89;
              }

              else
              {
                v237 = v85;
                sub_238810DC4(v84, 0, 4);
                v235 = v86;
              }

              v236 = v237;
            }

            else
            {
              if (!v299)
              {
                sub_238810DC4(v86, 0, 4);
                v204 = v84;
                v205 = 0;
                goto LABEL_287;
              }

              sub_238810DC4(v84, v299, 4);
              v235 = v86;
              v236 = 0;
            }
          }

          else
          {
            sub_238810DC4(v84, v299, 4);
            v235 = v86;
            v236 = v85;
          }

LABEL_373:
          v240 = 4;
LABEL_404:
          sub_238810DC4(v235, v236, v240);
          v70 = v307;
          v65 = v295;
LABEL_405:
          sub_238810DC4(v309, v70, 3);
          v228 = v65;
          v229 = v298;
          v230 = 3;
LABEL_406:
          sub_238810DC4(v228, v229, v230);
          sub_238810DC4(v310, v302, 3);
          v226 = *(&v314 + 1);
          v227 = v314;
LABEL_407:
          v225 = 3;
          goto LABEL_408;
        }

        break;
      }

      if (v80 != 3)
      {
        goto LABEL_405;
      }

      v94 = *(*&v73 + 16);
      if (v94 != *(v78 + 16))
      {
        goto LABEL_405;
      }

      if (v94)
      {
        v95 = *&v73 == v78;
      }

      else
      {
        v95 = 1;
      }

      if (v95)
      {
        goto LABEL_288;
      }

      v291 = v81;
      v292 = v75;
      v96 = *&v73 + 32;
      v97 = v78 + 32;
      v98 = v73;
      v296 = v78;
      v99 = v74;
      v299 = v79;
      v288 = *(*&v73 + 16);
      sub_238814698(v78, v79, 3);
      v297 = *&v98;
      v287 = v99;
      v100 = v99;
      v101 = v96;
      v102 = v292;
      sub_238814698(*&v98, v100, 3);
      v103 = *&v97;
      v104 = v288;
      v105 = v299;
      v106 = 0;
      v282 = v101;
      v278 = v103;
      while (2)
      {
        if (v106 >= *(v297 + 16))
        {
          __break(1u);
LABEL_393:
          __break(1u);
LABEL_394:
          v249 = v101;
          v250 = 0;
LABEL_396:
          sub_238810DC4(v249, v250, 4);
          v251 = v256;
          v252 = *&v98;
LABEL_397:
          v253 = 4;
LABEL_398:
          sub_238810DC4(v251, v252, v253);
          v156 = v276;
          v154 = v277;
          v153 = v275;
LABEL_399:
          sub_238810DC4(v153, v156, 3);
          v242 = v154;
          v243 = v255;
          v254 = 3;
          goto LABEL_400;
        }

        if (v106 >= *(v296 + 16))
        {
          goto LABEL_393;
        }

        v107 = v101 + 24 * v106;
        v108 = *v107;
        v109 = *(v107 + 8);
        v110 = *(v107 + 17);
        v111 = *(v107 + 16);
        v112 = (*&v103 + 24 * v106);
        v113 = *v112;
        v114 = v112[1];
        v115 = *(v112 + 16);
        v116 = *(v112 + 17);
        if (v111 <= 2)
        {
          if (v111)
          {
            if (v111 == 1)
            {
              if (v115 != 1 || v108 != *&v113)
              {
                goto LABEL_403;
              }
            }

            else
            {
              if (v115 != 2)
              {
                goto LABEL_403;
              }

              if (*&v108 != v113 || v109 != v114)
              {
                v98 = v103;
                v286 = v110;
                v190 = v116;
                v191 = sub_2388D3368();
                v116 = v190;
                v101 = v282;
                v110 = v286;
                v103 = v98;
                v104 = v288;
                v105 = v299;
                if ((v191 & 1) == 0)
                {
                  goto LABEL_403;
                }
              }
            }
          }

          else if (v115 || ((v113 ^ LODWORD(v108)) & 1) != 0)
          {
            goto LABEL_403;
          }

          goto LABEL_268;
        }

        if (v111 != 3)
        {
          if (v111 != 4)
          {
            if (v115 != 5 || (v114 | v113) != 0)
            {
              goto LABEL_403;
            }

LABEL_268:
            if (v110 != v116)
            {
              goto LABEL_403;
            }

            if (++v106 == v104)
            {
              v198 = v105;
              sub_238810DC4(v297, v287, 3);
              sub_238810DC4(v296, v198, 3);
              v70 = v307;
              v65 = v295;
              v69 = v300;
              v64 = v289;
              v68 = v290;
              goto LABEL_300;
            }

            continue;
          }

          if (v115 != 4)
          {
            goto LABEL_403;
          }

          v279 = v116;
          v285 = v110;
          v280 = v106;
          v118 = *&v108;
          v283 = v114;
          v26 = v109;
          v98 = *&v113;
          sub_238814698(v113, v114, 4);
          sub_238814698(v118, v26, 4);
          v4 = v118;
          *&v284 = v98;
          if ((sub_23881D7DC(v118, *&v98) & 1) == 0)
          {
            goto LABEL_376;
          }

          if (*&v26 == 0.0)
          {
            if (*&v283 == 0.0)
            {
              sub_238810DC4(v118, 0, 4);
              sub_238810DC4(*&v98, 0, 4);
              v105 = v299;
              v104 = v288;
              v101 = v282;
              v103 = v278;
              v106 = v280;
              v102 = v292;
              goto LABEL_267;
            }

            sub_238810DC4(*&v98, v283, 4);
            v238 = v118;
            v239 = 0;
          }

          else
          {
            v119 = v26;
            v98 = *&v283;
            v120 = v118;
            if (*&v283 == 0.0)
            {
              v241 = v26;
              sub_238810DC4(v284, 0, 4);
              v238 = v118;
            }

            else
            {
              v121 = *(v26 + 16);
              v102 = v292;
              if (v121 == *(v283 + 16))
              {
                v101 = v282;
                v106 = v280;
                if (v121)
                {
                  if (v119 == v283)
                  {
                    v122 = v119;
                    v98 = *&v119;
                    goto LABEL_256;
                  }

                  v193 = v120;
                  v271 = v119;
                  v194 = v119 + 5;
                  *&v98 = v283 + 40;
                  do
                  {
                    if (*(v194 - 1) != *(*&v98 - 8) || *v194 != **&v98)
                    {
                      v196 = v121;
                      v197 = sub_2388D3368();
                      v121 = v196;
                      if ((v197 & 1) == 0)
                      {
                        sub_238810DC4(v284, v283, 4);
                        v238 = v193;
                        v239 = v271;
                        goto LABEL_381;
                      }
                    }

                    v194 += 2;
                    *&v98 += 16;
                    --v121;
                  }

                  while (v121);
                  sub_238810DC4(v193, v271, 4);
                  sub_238810DC4(v284, v283, 4);
                  v105 = v299;
                  v102 = v292;
LABEL_266:
                  v104 = v288;
                  v101 = v282;
                  v103 = v278;
                  v106 = v280;
                }

                else
                {
                  v122 = v119;
LABEL_256:
                  sub_238810DC4(v120, v122, 4);
                  sub_238810DC4(v284, *&v98, 4);
                  v105 = v299;
                  v104 = v288;
                  v103 = v278;
                }

LABEL_267:
                v110 = v285;
                v116 = v279;
                goto LABEL_268;
              }

              v241 = v26;
              sub_238810DC4(v284, v283, 4);
              v238 = v118;
            }

            v239 = v241;
          }

LABEL_381:
          v244 = 4;
LABEL_402:
          sub_238810DC4(v238, v239, v244);
          v105 = v299;
LABEL_403:
          sub_238810DC4(v296, v105, 3);
          v235 = v297;
          v236 = v287;
          v240 = 3;
          goto LABEL_404;
        }

        break;
      }

      if (v115 != 3)
      {
        goto LABEL_403;
      }

      v123 = *(*&v108 + 16);
      if (v123 != *(v113 + 16))
      {
        goto LABEL_403;
      }

      if (v123)
      {
        v124 = *&v108 == v113;
      }

      else
      {
        v124 = 1;
      }

      if (v124)
      {
        goto LABEL_268;
      }

      v279 = v116;
      v285 = v110;
      v280 = v106;
      v125 = *&v108 + 32;
      v126 = v113 + 32;
      v283 = v114;
      v284 = v113;
      v127 = *&v108;
      v128 = v109;
      v274 = *(*&v108 + 16);
      sub_238814698(v113, v114, 3);
      v281 = v127;
      v129 = v127;
      v102 = v292;
      v271 = v128;
      *&result = COERCE_DOUBLE(sub_238814698(v129, v128, 3));
      v130 = v126;
      v131 = v125;
      v132 = v274;
      v98 = *&v284;
      v133 = 0;
      v269 = v126;
      v270 = v131;
      while (2)
      {
        if (v133 >= *(v281 + 16))
        {
          __break(1u);
LABEL_413:
          __break(1u);
          __break(1u);
LABEL_414:
          __break(1u);
LABEL_415:
          __break(1u);
          return result;
        }

        if (v133 >= *(*&v98 + 16))
        {
          goto LABEL_413;
        }

        v134 = v131 + 24 * v133;
        v136 = *v134;
        v135 = *(v134 + 8);
        v137 = *(v134 + 17);
        v138 = *(v134 + 16);
        v139 = v130 + 24 * v133;
        v141 = *v139;
        v140 = *(v139 + 8);
        v142 = *(v139 + 16);
        v143 = *(v139 + 17);
        if (v138 <= 2)
        {
          if (v138)
          {
            if (v138 == 1)
            {
              if (v142 != 1 || *&v136 != *&v141)
              {
                goto LABEL_401;
              }
            }

            else
            {
              if (v142 != 2)
              {
                goto LABEL_401;
              }

              if (v136 != v141 || v135 != v140)
              {
                v182 = v133;
                v273 = v137;
                v183 = v143;
                *&result = COERCE_DOUBLE(sub_2388D3368());
                v143 = v183;
                v137 = v273;
                v133 = v182;
                v130 = v269;
                v131 = v270;
                v132 = v274;
                v98 = *&v284;
                if ((result & 1) == 0)
                {
                  goto LABEL_401;
                }
              }
            }
          }

          else if (v142 || ((v141 ^ v136) & 1) != 0)
          {
            goto LABEL_401;
          }

          goto LABEL_229;
        }

        if (v138 != 3)
        {
          if (v138 != 4)
          {
            if (v142 != 5 || (v140 | v141) != 0)
            {
              goto LABEL_401;
            }

LABEL_229:
            if (v137 != v143)
            {
              goto LABEL_401;
            }

            if (++v133 == v132)
            {
              sub_238810DC4(v281, v271, 3);
              sub_238810DC4(*&v98, v283, 3);
              v105 = v299;
              goto LABEL_266;
            }

            continue;
          }

          if (v142 != 4)
          {
            goto LABEL_401;
          }

          v267 = v143;
          v272 = v137;
          v268 = v133;
          v64 = v135;
          v276 = v140;
          sub_238814698(v141, v140, 4);
          sub_238814698(v136, v64, 4);
          v277 = v136;
          v275 = v141;
          if ((sub_23881D7DC(v136, v141) & 1) == 0)
          {
            goto LABEL_384;
          }

          if (v64)
          {
            if (v276)
            {
              v145 = *(v64 + 16);
              if (v145 == *(v276 + 16))
              {
                if (!v145)
                {
                  sub_238810DC4(v136, v64, 4);
                  v146 = v275;
                  v147 = v276;
                  goto LABEL_226;
                }

                if (v64 == v276)
                {
                  sub_238810DC4(v136, v64, 4);
                  v146 = v275;
                  v147 = v64;
LABEL_226:
                  v180 = 4;
LABEL_227:
                  *&result = COERCE_DOUBLE(sub_238810DC4(v146, v147, v180));
                }

                else
                {
                  v185 = v64;
                  v186 = (v64 + 40);
                  v187 = (v276 + 40);
                  do
                  {
                    v188 = *(v186 - 1) == *(v187 - 1) && *v186 == *v187;
                    if (!v188 && (sub_2388D3368() & 1) == 0)
                    {
                      sub_238810DC4(v275, v276, 4);
                      v242 = v277;
                      v243 = v185;
                      goto LABEL_391;
                    }

                    v186 += 2;
                    v187 += 2;
                    --v145;
                  }

                  while (v145);
                  sub_238810DC4(v277, v185, 4);
                  *&result = COERCE_DOUBLE(sub_238810DC4(v275, v276, 4));
                  v102 = v292;
                }

                v98 = *&v284;
                v132 = v274;
                v130 = v269;
                v131 = v270;
                v133 = v268;
                v137 = v272;
                v143 = v267;
                goto LABEL_229;
              }

              v245 = v136;
              v246 = v275;
              v247 = v64;
              v248 = v276;
            }

            else
            {
              v245 = v136;
              v246 = v141;
              v247 = v64;
              v248 = 0;
            }

            sub_238810DC4(v246, v248, 4);
            v242 = v245;
            v243 = v247;
          }

          else
          {
            if (!v276)
            {
              sub_238810DC4(v136, 0, 4);
              v146 = v141;
              v147 = 0;
              goto LABEL_226;
            }

            sub_238810DC4(v141, v276, 4);
            v242 = v136;
            v243 = 0;
          }

LABEL_391:
          v254 = 4;
LABEL_400:
          sub_238810DC4(v242, v243, v254);
          v98 = *&v284;
LABEL_401:
          sub_238810DC4(*&v98, v283, 3);
          v238 = v281;
          v239 = v271;
          v244 = 3;
          goto LABEL_402;
        }

        break;
      }

      if (v142 != 3)
      {
        goto LABEL_401;
      }

      v148 = *(v136 + 16);
      if (v148 != *(v141 + 16))
      {
        goto LABEL_401;
      }

      if (v148)
      {
        v149 = v136 == v141;
      }

      else
      {
        v149 = 1;
      }

      if (v149)
      {
        goto LABEL_229;
      }

      v267 = v143;
      v272 = v137;
      v268 = v133;
      v257 = *(v136 + 16);
      v150 = v135;
      v276 = v140;
      sub_238814698(v141, v140, 3);
      v151 = v136;
      v255 = v150;
      v152 = v150;
      v153 = v141;
      v154 = v136;
      v155 = v257;
      *&result = COERCE_DOUBLE(sub_238814698(v151, v152, 3));
      v156 = v276;
      v157 = 0;
      v158 = (v153 + 49);
      v159 = (v154 + 49);
      v277 = v154;
      v275 = v153;
      while (2)
      {
        if (v157 >= *(v154 + 16))
        {
          goto LABEL_414;
        }

        if (v157 >= *(v153 + 16))
        {
          goto LABEL_415;
        }

        result = *(v159 - 17);
        v160 = *v159;
        v161 = *(v159 - 1);
        v162 = *(v158 - 17);
        v163 = *(v158 - 9);
        v164 = *(v158 - 1);
        v165 = *v158;
        if (v161 <= 2)
        {
          if (*(v159 - 1))
          {
            if (v161 == 1)
            {
              if (v164 != 1 || *&result != *&v162)
              {
                goto LABEL_399;
              }
            }

            else
            {
              if (v164 != 2)
              {
                goto LABEL_399;
              }

              if (result != v162 || *(v159 - 9) != v163)
              {
                v175 = v157;
                v266 = v158;
                v176 = v159;
                v177 = *v159;
                v264 = *v158;
                *&result = COERCE_DOUBLE(sub_2388D3368());
                v165 = v264;
                v160 = v177;
                v159 = v176;
                v155 = v257;
                v158 = v266;
                v153 = v275;
                v156 = v276;
                v157 = v175;
                v154 = v277;
                if ((result & 1) == 0)
                {
                  goto LABEL_399;
                }
              }
            }
          }

          else if (*(v158 - 1) || ((v162 ^ result) & 1) != 0)
          {
            goto LABEL_399;
          }

LABEL_208:
          if (v160 != v165)
          {
            goto LABEL_399;
          }

          ++v157;
          v158 += 24;
          v159 += 24;
          if (v155 == v157)
          {
            v178 = v154;
            v179 = v156;
            sub_238810DC4(v178, v255, 3);
            v146 = v153;
            v147 = v179;
            v180 = 3;
            goto LABEL_227;
          }

          continue;
        }

        break;
      }

      if (v161 == 3)
      {
        if (v164 != 3)
        {
          goto LABEL_399;
        }

        v263 = *v158;
        v260 = *v159;
        v258 = v157;
        v259 = v159;
        v265 = v158;
        v171 = *(v159 - 17);
        v172 = *(v158 - 17);
        v173 = *(v159 - 9);
        v262 = *(v158 - 9);
        sub_238814698(v162, v163, 3);
        sub_238814698(v171, v173, 3);
        if ((sub_2388919B8(v171, v172) & 1) == 0)
        {
          sub_238810DC4(v172, v262, 3);
          v251 = v171;
          v252 = v173;
          v253 = 3;
          goto LABEL_398;
        }

        sub_238810DC4(v171, v173, 3);
        v169 = v172;
        v170 = v262;
        v174 = 3;
      }

      else
      {
        if (v161 != 4)
        {
          if (v164 != 5 || v163 | v162)
          {
            goto LABEL_399;
          }

          goto LABEL_208;
        }

        if (v164 != 4)
        {
          goto LABEL_399;
        }

        v263 = *v158;
        v260 = *v159;
        v258 = v157;
        v259 = v159;
        v265 = v158;
        v166 = *(v159 - 17);
        v261 = *(v158 - 9);
        v167 = *(v158 - 17);
        v98 = *(v159 - 9);
        sub_238814698(v162, v163, 4);
        sub_238814698(v166, *&v98, 4);
        v256 = v166;
        v168 = v166;
        v101 = v167;
        if ((sub_23881D7DC(v168, v167) & 1) == 0)
        {
          v249 = v167;
          v250 = v261;
          goto LABEL_396;
        }

        if (v98 == 0.0)
        {
          if (v261)
          {
            sub_238810DC4(v167, v261, 4);
            v251 = v256;
            v252 = 0;
            goto LABEL_397;
          }

          sub_238810DC4(v256, 0, 4);
          v169 = v167;
          v170 = 0;
        }

        else
        {
          if (!v261)
          {
            goto LABEL_394;
          }

          if ((sub_238890BFC(*&v98, v261) & 1) == 0)
          {
            v249 = v167;
            v250 = v261;
            goto LABEL_396;
          }

          sub_238810DC4(v256, *&v98, 4);
          v169 = v167;
          v170 = v261;
        }

        v174 = 4;
      }

      *&result = COERCE_DOUBLE(sub_238810DC4(v169, v170, v174));
      v156 = v276;
      v154 = v277;
      v157 = v258;
      v159 = v259;
      v158 = v265;
      v153 = v275;
      v155 = v257;
      v160 = v260;
      v165 = v263;
      goto LABEL_208;
    }

LABEL_39:
    v35 = v2;
    v36 = v29;
    v37 = 3;
LABEL_336:
    sub_238810DC4(v35, v36, v37);
LABEL_337:
    *&result = 0.0;
    v9 = v313;
    if (v312 != v26)
    {
      return result;
    }
  }

  v27 = *v24;
  v2 = *(&v314 + 1);
  v4 = v314;
  if (!v25)
  {
    if (!v21)
    {
      *&result = 0.0;
      if (((LODWORD(v27) ^ DWORD2(v314)) & 1) == 0)
      {
        goto LABEL_32;
      }

      return result;
    }

LABEL_350:
    v226 = *(&v314 + 1);
    v227 = v314;
    goto LABEL_352;
  }

  if (v25 == 1)
  {
    if (v21 != 1)
    {
      goto LABEL_350;
    }

    *&result = 0.0;
    if (v27 != *(&v314 + 1))
    {
      return result;
    }

LABEL_32:
    v33 = v312 ^ v26;
LABEL_33:
    v9 = v313;
    if (v33)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (v21 != 2)
  {
    goto LABEL_350;
  }

  if (*&v27 == *(&v314 + 1) && v3 == v314)
  {
    v35 = *(&v314 + 1);
    v36 = v314;
    v37 = 2;
    goto LABEL_336;
  }

  v2 = sub_2388D3368();
  sub_238810DC4(*(&v314 + 1), v314, 2);
  *&result = 0.0;
  if (v2)
  {
    v33 = v312 ^ v26;
    goto LABEL_33;
  }

  return result;
}

char *sub_23881EF9C(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    if (*(a1 + 16))
    {
      v4 = *a1;
      if (v3 == 1)
      {
        v5 = 0;
        v6 = 1;
      }

      else
      {
        v5 = v1;
        v6 = 2;
      }
    }

    else
    {
      v4 = *a1 & 1;
      v5 = 0;
      v6 = 0;
    }

    return sub_23882C97C(v4, v5, v6, 0, 0, 0, 0);
  }

  if (v3 == 3)
  {
    v9 = *(v2 + 16);
    v10 = MEMORY[0x277D84F90];
    if (v9)
    {
      v32 = *(a1 + 8);
      v42 = MEMORY[0x277D84F90];
      sub_2388B7B78(0, v9, 0);
      v10 = v42;
      v31 = v2;
      v11 = (v2 + 64);
      do
      {
        v12 = *(v11 - 4);
        v13 = *(v11 - 3);
        v14 = *(v11 - 15);
        v15 = *(v11 - 1);
        v16 = *v11;
        v17 = *(v11 - 16);
        v37[0] = v12;
        v37[1] = v13;
        v38 = v17;
        v39 = v14;
        v40 = v15;
        v41 = v16;
        sub_238814698(v12, v13, v17);

        GeneratedContent.kind.getter(v18, &v35);
        v33 = v35;
        v34 = v36;
        v19 = sub_23881EF9C(&v33);
        v21 = v20;
        v23 = v22;
        sub_238810DC4(v12, v13, v17);

        v42 = v10;
        v25 = *(v10 + 16);
        v24 = *(v10 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_2388B7B78((v24 > 1), v25 + 1, 1);
          v10 = v42;
        }

        v11 += 5;
        *(v10 + 16) = v25 + 1;
        v26 = v10 + 24 * v25;
        *(v26 + 32) = v19;
        *(v26 + 40) = v21;
        *(v26 + 48) = v23;
        *(v26 + 49) = HIBYTE(v23) & 1;
        --v9;
      }

      while (v9);
      v2 = v31;
      v1 = v32;
    }

    v28 = sub_23882D3D4(v10);
    sub_238814698(v28, v29, v30);
    sub_238810DC4(v2, v1, 3);
  }

  else
  {
    if (v3 != 4)
    {
      v4 = 0;
      v5 = 0;
      v6 = 5;
      return sub_23882C97C(v4, v5, v6, 0, 0, 0, 0);
    }

    v7 = sub_23881634C(v2);
    if (*(v7 + 16))
    {
      sub_238810E44(&qword_27DF2FB80, &qword_2388D4990);
      v8 = sub_2388D3128();
    }

    else
    {
      v8 = MEMORY[0x277D84F98];
    }

    v37[0] = v8;
    sub_2388263C4(v7, 1, v37);

    v28 = sub_23882D408(v37[0], v1);
    sub_238810DC4(v2, v1, 4);
  }

  return v28;
}

uint64_t sub_23881F294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7)
{
  v13 = *(a7 + 24);
  v14 = *(a7 + 32);
  if (v14)
  {
    v16 = *(a7 + 24);
    swift_bridgeObjectRetain_n();
    MEMORY[0x23EE66C20](46, 0xE100000000000000);
    MEMORY[0x23EE66C20](a2, a3);

    v13 = v16;
  }

  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  *a1 = a4;
  *(a1 + 8) = a5;
  *(a1 + 16) = a6;
  *(a1 + 17) = HIBYTE(a6) & 1;
  sub_238814698(a4, a5, a6);

  return a2;
}

uint64_t sub_23881F368()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_23881F398@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_23881F3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_238827BD4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23881F3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_238827BD4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_23881F42C(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = sub_238810E44(&qword_27DF2FB20, &qword_2388D4928);
  v9 = MEMORY[0x28223BE20](v8);
  v12 = &v44 - v11;
  if (a4 <= 2u)
  {
    if (a4)
    {
      sub_238815878(a1, a1[3]);
      sub_2388D3558();
      sub_238827C28(v53, v55);
      if (a4 == 1)
      {
        sub_2388D33E8();
      }

      else
      {
        sub_2388D33C8();
      }
    }

    else
    {
      sub_238815878(a1, a1[3]);
      sub_2388D3558();
      sub_238827C28(v53, v55);
      sub_2388D33D8();
    }

    return sub_2388158BC(v53);
  }

  if (a4 == 3)
  {
    sub_238815878(a1, a1[3]);
    sub_2388D3548();
    v36 = *(a2 + 16);
    if (v36)
    {
      for (i = (a2 + 48); ; i += 24)
      {
        v39 = *(i - 1);
        v40 = *i;
        v50 = *(i - 2);
        v38 = v50;
        v51 = v39;
        v52 = v40;
        sub_238827C28(v53, v55);
        v41 = sub_238814698(v38, v39, v40);
        sub_238826EC8(v41, v42, v43);
        sub_2388D3348();
        if (v4)
        {
          break;
        }

        sub_238810DC4(v38, v39, v40);
        if (!--v36)
        {
          return sub_2388158BC(v53);
        }
      }

      sub_238810DC4(v38, v39, v40);
    }

    return sub_2388158BC(v53);
  }

  if (a4 != 4)
  {
    sub_238815878(a1, a1[3]);
    sub_2388D3558();
    sub_238827C28(v53, v55);
    sub_2388D3408();
    return sub_2388158BC(v53);
  }

  v45 = v10;
  v48 = v9;
  v49 = v4;
  v13 = sub_238815878(a1, a1[3]);
  sub_238827BD4(v13, v14, v15);
  v47 = v12;
  sub_2388D3568();
  v16 = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a2 + 64);
  v20 = (v17 + 63) >> 6;

  v22 = 0;
  v46 = a2;
  if (v19)
  {
    while (1)
    {
      v23 = v22;
LABEL_14:
      v24 = __clz(__rbit64(v19)) | (v23 << 6);
      v25 = (*(a2 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(a2 + 56) + 24 * v24;
      v30 = *(v28 + 8);
      v31 = *(v28 + 16);
      v53[0] = *v28;
      v29 = v53[0];
      v53[1] = v30;
      v54 = v31;
      v50 = v26;
      v51 = v27;

      v32 = sub_238814698(v29, v30, v31);
      sub_238826EC8(v32, v33, v34);
      v35 = v49;
      sub_2388D32C8();
      v49 = v35;
      if (v35)
      {
        break;
      }

      v19 &= v19 - 1;

      result = sub_238810DC4(v29, v30, v31);
      v22 = v23;
      a2 = v46;
      if (!v19)
      {
        goto LABEL_11;
      }
    }

    (*(v45 + 8))(v47, v48);

    return sub_238810DC4(v29, v30, v31);
  }

  else
  {
LABEL_11:
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v20)
      {

        return (*(v45 + 8))(v47, v48);
      }

      v19 = *(v16 + 8 * v23);
      ++v22;
      if (v19)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23881F920@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_238827358(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_23881F970(uint64_t a1)
{
  v1 = sub_2388D2898();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2388D0DC8();
  swift_allocObject();
  v2 = sub_2388D0DB8();
  sub_238826EC8(v2, v3, v4);
  v5 = sub_2388D0DA8();
  v7 = v6;

  sub_2388D2888();
  v8 = sub_2388D2878();
  v10 = v9;
  sub_238826D50(v5, v7);
  if (v10)
  {
    return v8;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_23881FB88(uint64_t result, uint64_t (*a2)(void), uint64_t a3)
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

uint64_t sub_23881FCBC(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
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

uint64_t sub_23881FE00(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2388B7900(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23881FF1C(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v6 = result;
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
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_238810E44(a3, a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, v5);
  v14 = v12 + v5;
  if (!v13)
  {
    *(v6 + 16) = v14;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_23882003C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_238810E44(&qword_27DF2FB48, &qword_2388D4950);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2E8BA2E8BA2E8BA3) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_2388200D4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_238810E44(&qword_27DF2FB70, &unk_2388D5C30);
  v4 = *(type metadata accessor for Transcript.Entry(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2388201D0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_238810E44(&qword_27DF2FAA8, &unk_2388D44F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_238820254(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_238810E44(&qword_27DF2FBB0, qword_2388D49C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 + 31;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 6);
  return result;
}

void sub_2388202D8(uint64_t a1, char a2, void *a3)
{
  v3 = a1;
  v29 = *(a1 + 16);
  if (!v29)
  {
LABEL_18:

    return;
  }

  v5 = 0;
  v6 = 32;
  while (1)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_2388D3438();
      __break(1u);
      goto LABEL_24;
    }

    v7 = *(v3 + v6 + 16);
    v36[0] = *(v3 + v6);
    v36[1] = v7;
    v37 = *(v3 + v6 + 32);
    v8 = *(v3 + v6 + 48);
    v38 = v8;
    v9 = v36[0];
    v33 = v7;
    v10 = v37;
    v11 = BYTE1(v37);
    v32 = *(&v37 + 1);
    sub_238827E14(v36, v35, &qword_27DF2FB78, &unk_2388D4980);
    if (!*(&v9 + 1))
    {
      goto LABEL_18;
    }

    v30 = v10;
    v31 = v8;
    v36[0] = v9;
    v12 = *a3;
    v14 = sub_238820AA8(v9, *(&v9 + 1));
    v15 = v12[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_21;
    }

    v18 = v13;
    if (v12[3] < v17)
    {
      break;
    }

    if (a2)
    {
      if (v13)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_238820DA4();
      if (v18)
      {
        goto LABEL_16;
      }
    }

LABEL_12:
    v21 = *a3;
    *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
    *(v21[6] + 16 * v14) = v9;
    v22 = v21[7] + 40 * v14;
    *v22 = v33;
    *(v22 + 16) = v30;
    *(v22 + 17) = v11 & 1;
    *(v22 + 24) = v32;
    *(v22 + 32) = v31;
    v23 = v21[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_22;
    }

    ++v5;
    v21[2] = v25;
    v6 += 56;
    a2 = 1;
    v3 = a1;
    if (v29 == v5)
    {
      goto LABEL_18;
    }
  }

  sub_238821DB4(v17, a2 & 1);
  v19 = sub_238820AA8(v9, *(&v9 + 1));
  if ((v18 & 1) != (v20 & 1))
  {
    goto LABEL_23;
  }

  v14 = v19;
  if ((v18 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  v26 = swift_allocError();
  swift_willThrow();
  v39 = v26;
  v27 = v26;
  sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_238810DC4(v33, *(&v33 + 1), v30);

    return;
  }

LABEL_24:
  v35[0] = 0;
  v35[1] = 0xE000000000000000;
  sub_2388D2FA8();
  MEMORY[0x23EE66C20](0xD00000000000001BLL, 0x80000002388DE460);
  sub_2388D30A8();
  MEMORY[0x23EE66C20](39, 0xE100000000000000);
  sub_2388D30B8();
  __break(1u);
}

void sub_238820630(void *a1, uint64_t a2, char a3, void *a4)
{
  v7 = a1[2];

  if (!v7 || !*(a2 + 16))
  {
    goto LABEL_25;
  }

  v8 = a1[4];
  v9 = a1[5];
  v55 = a2;
  v56 = a1;
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = *(a2 + 49);
  v14 = *a4;

  v57 = v10;
  v58 = v12;
  sub_238814698(v11, v10, v12);
  v16 = sub_238820AA8(v8, v9);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = v15;
  if (v14[3] >= v19)
  {
    if (a3)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_238820C04();
      if ((v20 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_10:
    v23 = swift_allocError();
    swift_willThrow();
    v24 = v23;
    sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_238810DC4(v11, v57, v58);

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      return;
    }

    goto LABEL_32;
  }

  sub_238821AC4(v19, a3 & 1);
  v21 = sub_238820AA8(v8, v9);
  if ((v20 & 1) != (v22 & 1))
  {
LABEL_31:
    sub_2388D3438();
    __break(1u);
LABEL_32:
    sub_2388D2FA8();
    MEMORY[0x23EE66C20](0xD00000000000001BLL, 0x80000002388DE460);
    sub_2388D30A8();
    MEMORY[0x23EE66C20](39, 0xE100000000000000);
    sub_2388D30B8();
    __break(1u);
    return;
  }

  v16 = v21;
  if (v20)
  {
    goto LABEL_10;
  }

LABEL_13:
  v25 = *a4;
  *(*a4 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  v26 = (v25[6] + 16 * v16);
  *v26 = v8;
  v26[1] = v9;
  v27 = v25[7] + 24 * v16;
  *v27 = v11;
  *(v27 + 8) = v57;
  *(v27 + 16) = v12;
  *(v27 + 17) = v13;
  v28 = v25[2];
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v25[2] = v30;
  v31 = v55;
  v32 = v56[2];
  if (v32 != 1)
  {
    v33 = v56 + 7;
    v34 = (v55 + 73);
    v35 = 1;
    while (v35 < v32)
    {
      v36 = *(v31 + 16);
      if (v35 == v36)
      {
        goto LABEL_25;
      }

      if (v35 >= v36)
      {
        goto LABEL_30;
      }

      v37 = *(v33 - 1);
      v38 = *v33;
      v11 = *(v34 - 17);
      v39 = *(v34 - 9);
      v40 = *(v34 - 1);
      v41 = *v34;
      v42 = *a4;

      v57 = v39;
      v58 = v40;
      sub_238814698(v11, v39, v40);
      v43 = sub_238820AA8(v37, v38);
      v45 = v42[2];
      v46 = (v44 & 1) == 0;
      v29 = __OFADD__(v45, v46);
      v47 = v45 + v46;
      if (v29)
      {
        goto LABEL_27;
      }

      v48 = v44;
      if (v42[3] < v47)
      {
        sub_238821AC4(v47, 1);
        v43 = sub_238820AA8(v37, v38);
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_31;
        }
      }

      if (v48)
      {
        goto LABEL_10;
      }

      v50 = *a4;
      *(*a4 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      v51 = (v50[6] + 16 * v43);
      *v51 = v37;
      v51[1] = v38;
      v52 = v50[7] + 24 * v43;
      *v52 = v11;
      *(v52 + 8) = v57;
      *(v52 + 16) = v40;
      *(v52 + 17) = v41;
      v53 = v50[2];
      v29 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v29)
      {
        goto LABEL_28;
      }

      ++v35;
      v50[2] = v54;
      v31 = v55;
      v32 = v56[2];
      v33 += 2;
      v34 += 24;
      if (v35 == v32)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_29;
  }

LABEL_25:

  swift_bridgeObjectRelease_n();
}

unint64_t sub_238820AA8(uint64_t a1, uint64_t a2)
{
  sub_2388D34A8();
  sub_2388D2938();
  v4 = sub_2388D34E8();

  return sub_2388237F0(a1, a2, v4);
}

unint64_t sub_238820B20(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2388D34A8();
  sub_2388D27A8();
  v8 = sub_2388D34E8();
  return sub_2388238A8(a1, a2, a3, a4, v8);
}

unint64_t sub_238820BC0(uint64_t a1)
{
  v2 = sub_2388D3498();

  return sub_238823994(a1, v2);
}

void *sub_238820C04()
{
  v1 = v0;
  sub_238810E44(&qword_27DF2FB80, &qword_2388D4990);
  v2 = *v0;
  v3 = sub_2388D3108();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 17);
        v26 = (*(v4 + 48) + v18);
        v27 = *(v22 + 16);
        *v26 = v21;
        v26[1] = v20;
        v28 = *(v4 + 56) + v17;
        *v28 = v23;
        *(v28 + 8) = v24;
        *(v28 + 16) = v27;
        *(v28 + 17) = v25;

        result = sub_238814698(v23, v24, v27);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_238820DA4()
{
  sub_238810E44(&qword_27DF2FAE0, &qword_2388D4530);
  v30 = v0;
  v1 = *v0;
  v2 = sub_2388D3108();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v18 = (*(v1 + 48) + 16 * v16);
        v20 = *v18;
        v19 = v18[1];
        v16 *= 40;
        v21 = *(v1 + 56) + v16;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v21 + 17);
        v25 = *(v21 + 24);
        v26 = *(v21 + 32);
        v27 = (*(v3 + 48) + v17);
        v28 = *(v21 + 16);
        *v27 = v20;
        v27[1] = v19;
        v29 = *(v3 + 56) + v16;
        *v29 = v22;
        *(v29 + 8) = v23;
        *(v29 + 16) = v28;
        *(v29 + 17) = v24;
        *(v29 + 24) = v25;
        *(v29 + 32) = v26;

        sub_238814698(v22, v23, v28);
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v30 = v3;
  }

  return result;
}