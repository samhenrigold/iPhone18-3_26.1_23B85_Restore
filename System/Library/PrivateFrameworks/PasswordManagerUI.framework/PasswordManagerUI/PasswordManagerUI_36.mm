uint64_t sub_21CB13C94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21CB13CE4(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_21CB853D4();
  v20 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21CB85404();
  v8 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CDEA3F8 != -1)
  {
    swift_once();
  }

  v11 = sub_21CB81C84();
  __swift_project_value_buffer(v11, qword_27CE18598);
  v12 = sub_21CB81C64();
  v13 = sub_21CB85AD4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_21C6E5000, v12, v13, "Biometric authentication in PMCredentialPickerViewController failed.", v14, 2u);
    MEMORY[0x21CF16D90](v14, -1, -1);
  }

  if ((a1 & 1) == 0)
  {
    sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
    v15 = sub_21CB85CF4();
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    *(v16 + 24) = ObjectType;
    aBlock[4] = sub_21CB17144;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C6ECBD4;
    aBlock[3] = &block_descriptor_214;
    v17 = _Block_copy(aBlock);
    v18 = v2;

    sub_21CB853E4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21CB13C94(&qword_27CDEAF48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
    sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0, MEMORY[0x277D83970]);
    sub_21CB85F14();
    MEMORY[0x21CF15800](0, v10, v7, v17);
    _Block_release(v17);

    (*(v20 + 8))(v7, v5);
    (*(v8 + 8))(v10, v19);
  }
}

uint64_t sub_21CB140A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21C702EFC;

  return sub_21CB0AE88();
}

id sub_21CB14154(id result, uint64_t a2)
{
  if (result)
  {
    return [*(v2 + 16) performAuthorization:*(*(v2 + 16) + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_confirmButtonSubpane) withAuthenticatedLAContext:a2];
  }

  return result;
}

void *sub_21CB14184(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v4 = [objc_opt_self() sharedManager];
    v5 = [v4 getEnabledExtensionsSynchronously];

    if (v5)
    {
      sub_21C6E8F4C(0, qword_280E22EE0, 0x277CCA9C8);
      v6 = sub_21CB85824();

      if (v6 >> 62)
      {
        goto LABEL_23;
      }

      for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21CB85FA4())
      {
        v8 = 0;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x21CF15BD0](v8, v6);
          }

          else
          {
            if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v9 = *(v6 + 8 * v8 + 32);
          }

          v10 = v9;
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          v12 = [v9 sf_bundleIdentifierForContainingApp];
          if (v12)
          {
            v13 = v12;
            v14 = v2;
            v15 = sub_21CB855C4();
            v17 = v16;

            if (v15 == a1 && v17 == v14)
            {

LABEL_20:

              return v10;
            }

            v2 = v14;
            v19 = sub_21CB86344();

            if (v19)
            {
              goto LABEL_20;
            }
          }

          ++v8;
          if (v11 == i)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        ;
      }

LABEL_24:
    }
  }

  return 0;
}

double _s17PasswordManagerUI32PMCredentialPickerViewControllerC07performA14AuthenticationyySo39ASCredentialRequestConfirmButtonSubPaneCF_0()
{
  sub_21CB051FC();
  v2 = [v1 loginChoiceKind];
  swift_unknownObjectRelease();
  if (v2)
  {
    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v3 = sub_21CB81C84();
    __swift_project_value_buffer(v3, qword_27CE18598);
    oslog = sub_21CB81C64();
    v4 = sub_21CB85AF4();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_21C6E5000, oslog, v4, "Password authentication button pressed but selected login choice is not a Sign in with Apple login choice", v5, 2u);
      MEMORY[0x21CF16D90](v5, -1, -1);
    }
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v0;
    v8 = v0;
    sub_21CB07B10(0, sub_21CB170BC, v7);
  }

  return result;
}

void sub_21CB14518(void *a1, void *a2, char *a3, char *a4, void (**a5)(void))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF85D0, &qword_21CBC9430);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v73 - v11;
  v13 = sub_21CB81604();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21CB80DD4();
  v76 = *(v17 - 8);
  v77 = v17;
  MEMORY[0x28223BE20](v17);
  v78 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  _Block_copy(a5);

  if (a2)
  {
    v20 = a2;
    v75 = a4;
    sub_21CB051FC();
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21 && (v22 = v21, (v23 = [v21 externalCredentialIdentity]) != 0))
    {
      v24 = v23;
      v25 = [v22 site];
      if (!v25)
      {
        sub_21CB855C4();
        v25 = sub_21CB85584();
      }

      v26 = [v20 user];
      v27 = v78;
      if (!v26)
      {
        sub_21CB855C4();
        v26 = sub_21CB85584();
      }

      v79 = v19;
      v28 = [v20 password];
      if (!v28)
      {
        sub_21CB855C4();
        v28 = sub_21CB85584();
      }

      sub_21CB80DC4();
      v74 = v24;
      v29 = [v24 owningExtensionState];
      if (v29 && (v30 = v29, v31 = [v29 providerBundleID], v30, v31))
      {
        sub_21CB855C4();
        v33 = v32;

        v34 = sub_21CB80D24();
        if (v33)
        {
          v35 = sub_21CB85584();
        }

        else
        {
          v35 = 0;
        }

        v42 = v78;
      }

      else
      {
        v42 = v27;
        v34 = sub_21CB80D24();
        v35 = 0;
      }

      v56 = [objc_allocWithZone(MEMORY[0x277CF0428]) initWithUser:v26 password:v28 site:v25 creationDate:v34 externalProviderBundleIdentifier:v35];

      (*(v76 + 8))(v42, v77);
      v57 = v75;
      v58 = [v75 delegate];
      if (v58)
      {
        [v58 requestPaneViewController:v57 dismissWithCredential:v56 error:0];

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      a5[2](a5);
    }

    else
    {

      swift_unknownObjectRelease();
      a5[2](a5);
    }

    goto LABEL_16;
  }

  v78 = a3;
  v79 = v19;
  v36 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController;
  v37 = *&a4[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController];
  v38 = a4;
  if (v37)
  {
    aBlock[4] = sub_21CB17324;
    aBlock[5] = v79;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C6ECBD4;
    aBlock[3] = &block_descriptor_104;
    v39 = _Block_copy(aBlock);
    v40 = v37;
    v38 = a4;

    [v40 dismissViewControllerAnimated:1 completion:v39];
    _Block_release(v39);

    v41 = *&a4[v36];
  }

  else
  {
    v41 = 0;
  }

  v43 = v78;
  *&v38[v36] = 0;

  v44 = *&v38[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_externalPasswordCredentialForSelectedLoginChoice];
  *&v38[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_externalPasswordCredentialForSelectedLoginChoice] = 0;

  sub_21CB051FC();
  sub_21CB81614();
  swift_unknownObjectRelease();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_21C6EA794(v12, &qword_27CDF85D0, &qword_21CBC9430);
    if (!v43)
    {
LABEL_16:

      return;
    }
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_21CB05380();
    (*(v14 + 8))(v16, v13);
    if (!v43)
    {
      goto LABEL_16;
    }
  }

  aBlock[0] = v43;
  v45 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C6E8F4C(0, &qword_27CDED2A0, 0x277CCA9B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v46 = v80;
  v47 = *MEMORY[0x277CBA8B0];
  if ([v80 safari:*MEMORY[0x277CBA8B0] matchesErrorDomain:102 andCode:?])
  {
    v48 = [v38 delegate];
    if (v48)
    {
      v49 = v48;
      v50 = sub_21CB80B04();
      [v49 requestPaneViewController:v38 dismissWithCredential:0 error:v50];

      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_49;
  }

  if ([v46 safari:v47 matchesErrorDomain:1 andCode:?])
  {
    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v51 = sub_21CB81C84();
    __swift_project_value_buffer(v51, qword_27CE18598);
    v52 = sub_21CB81C64();
    v53 = sub_21CB85B14();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_21C6E5000, v52, v53, "Did not receive any external password credential because user canceled", v54, 2u);
      v55 = v54;
LABEL_45:
      MEMORY[0x21CF16D90](v55, -1, -1);
    }
  }

  else
  {
    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v59 = sub_21CB81C84();
    __swift_project_value_buffer(v59, qword_27CE18598);
    v60 = v46;
    v52 = sub_21CB81C64();
    v61 = sub_21CB85AF4();

    if (os_log_type_enabled(v52, v61))
    {
      v62 = v38;
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      aBlock[0] = v64;
      *v63 = 136446210;
      v65 = [v60 safari_privacyPreservingDescription];
      v66 = sub_21CB855C4();
      v68 = v67;

      v69 = sub_21C98E004(v66, v68, aBlock);

      *(v63 + 4) = v69;
      _os_log_impl(&dword_21C6E5000, v52, v61, "Did not receive any external password credential because of error: %{public}s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x21CF16D90](v64, -1, -1);
      v55 = v63;
      v38 = v62;
      goto LABEL_45;
    }
  }

  if ([*&v38[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_presentationContext] isConditionalRegistrationRequest])
  {
    v70 = [v38 delegate];
    if (v70)
    {
      v71 = v70;
      v72 = sub_21CB80B04();
      [v71 requestPaneViewController:v38 dismissWithCredential:0 error:v72];

      swift_unknownObjectRelease();
      return;
    }
  }

LABEL_49:
}

uint64_t sub_21CB14F0C(void *a1, uint64_t a2, id a3, uint64_t a4)
{
  v54[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v54[0] = 0;
    v7 = a1;
    if ([v7 _validateWithError_])
    {
      v50 = a3;
      v51 = a4;
      v8 = v54[0];

      v9 = v7;
      v52 = [v9 relyingParty];
      if (!v52)
      {
        sub_21CB855C4();
        v52 = sub_21CB85584();
      }

      v10 = [v9 authenticatorData];
      v53 = sub_21CB80C84();
      v48 = v11;

      v12 = [v9 signature];
      v44 = sub_21CB80C84();
      v49 = v13;

      v14 = [v9 userHandle];
      v43 = sub_21CB80C84();
      v45 = v15;

      v16 = [v9 credentialID];
      v17 = sub_21CB80C84();
      v19 = v18;

      v20 = [v9 coreExtensions];
      v46 = *MEMORY[0x277CF0408];
      v21 = objc_allocWithZone(MEMORY[0x277CF0438]);
      v22 = sub_21CB80C64();
      v23 = sub_21CB80C64();
      v24 = sub_21CB80C64();
      v25 = v17;
      v26 = sub_21CB80C64();
      LOBYTE(v42) = 1;
      v47 = [v21 initWithRelyingPartyIdentifier:v52 authenticatorData:v22 signature:v23 userHandle:v24 rawClientDataJSON:0 credentialID:v26 extensions:v20 attachment:v46 isExternal:v42];

      sub_21C7A34C0(v25, v19);
      sub_21C7A34C0(v43, v45);

      sub_21C7A34C0(v44, v49);
      sub_21C7A34C0(v53, v48);

      v27 = [v50 delegate];
      if (v27)
      {
        [v27 requestPaneViewController:v50 dismissWithCredential:v47 error:0];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      a4 = v51;
      return (*(a4 + 16))(a4);
    }

    v28 = v54[0];
    v29 = sub_21CB80B14();

    swift_willThrow();
    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v30 = sub_21CB81C84();
    __swift_project_value_buffer(v30, qword_27CE18598);
    v31 = v29;
    v32 = sub_21CB81C64();
    v33 = sub_21CB85AF4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138543362;
      v36 = v29;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_21C6E5000, v32, v33, "Returned credential failed validation: %{public}@", v34, 0xCu);
      sub_21C6EA794(v35, &unk_27CDF76B0, &qword_21CBA2BE0);
      MEMORY[0x21CF16D90](v35, -1, -1);
      MEMORY[0x21CF16D90](v34, -1, -1);
    }

    else
    {
    }
  }

  v38 = [a3 delegate];
  if (v38)
  {
    v39 = v38;
    if (a2)
    {
      v40 = sub_21CB80B04();
    }

    else
    {
      v40 = 0;
    }

    [v39 requestPaneViewController:a3 dismissWithCredential:0 error:v40];

    swift_unknownObjectRelease();
  }

  return (*(a4 + 16))(a4);
}

double sub_21CB15404(void *a1, uint64_t a2, char *a3, const void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController;
  v10 = *&a3[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController];
  if (v10)
  {
    v15[4] = sub_21CB17324;
    v15[5] = v8;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_21C6ECBD4;
    v15[3] = &block_descriptor_97;
    v11 = _Block_copy(v15);
    _Block_copy(a4);
    v12 = v10;

    [v12 dismissViewControllerAnimated:1 completion:v11];
    _Block_release(v11);
  }

  else
  {
    _Block_copy(a4);
  }

  v13 = *&a3[v9];
  *&a3[v9] = 0;

  _Block_copy(a4);
  sub_21CB14F0C(a1, a2, a3, a4);
  _Block_release(a4);

  return result;
}

void sub_21CB15574(void *a1, uint64_t a2, char *a3, void (**a4)(void))
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF470, &qword_21CBC94D0);
  MEMORY[0x28223BE20](v8 - 8);
  v74 = v68 - v9;
  v10 = swift_allocObject();
  v11 = v10;
  v10[2] = a4;
  v12 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController;
  v13 = *&a3[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController];
  if (v13)
  {
    aBlock[4] = sub_21CB17324;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C6ECBD4;
    aBlock[3] = &block_descriptor_90;
    v14 = _Block_copy(aBlock);
    _Block_copy(a4);
    v15 = v13;

    [v15 dismissViewControllerAnimated:1 completion:v14];
    _Block_release(v14);
  }

  else
  {
    _Block_copy(a4);
  }

  v16 = *&a3[v12];
  *&a3[v12] = 0;

  if (!a1)
  {
LABEL_18:
    v55 = [a3 delegate];
    if (v55)
    {
      v56 = v55;
      if (a2)
      {
        v57 = sub_21CB80B04();
      }

      else
      {
        v57 = 0;
      }

      [v56 requestPaneViewController:a3 dismissWithCredential:0 error:v57];

      swift_unknownObjectRelease();
    }

    goto LABEL_23;
  }

  aBlock[0] = 0;
  v17 = a1;
  if (![v17 _validateWithError_])
  {
    v45 = aBlock[0];
    v46 = sub_21CB80B14();

    swift_willThrow();
    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v47 = sub_21CB81C84();
    __swift_project_value_buffer(v47, qword_27CE18598);
    v48 = v46;
    v49 = sub_21CB81C64();
    v50 = sub_21CB85AF4();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138543362;
      v53 = v46;
      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 4) = v54;
      *v52 = v54;
      _os_log_impl(&dword_21C6E5000, v49, v50, "Returned credential failed validation: %{public}@", v51, 0xCu);
      sub_21C6EA794(v52, &unk_27CDF76B0, &qword_21CBA2BE0);
      MEMORY[0x21CF16D90](v52, -1, -1);
      MEMORY[0x21CF16D90](v51, -1, -1);
    }

    else
    {
    }

    goto LABEL_18;
  }

  v72 = v11;
  v18 = aBlock[0];

  v19 = v17;
  v20 = [v19 relyingParty];
  if (!v20)
  {
    sub_21CB855C4();
    v21 = sub_21CB85584();

    v20 = v21;
  }

  v69 = a3;
  v70 = v20;
  v73 = a4;
  v22 = [v19 attestationObject];
  v23 = sub_21CB80C84();
  v25 = v24;

  v26 = [v19 credentialID];
  v27 = sub_21CB80C84();
  v29 = v28;

  v30 = [objc_opt_self() _defaultTransports];
  if (!v30)
  {
    sub_21CB85824();
    v30 = sub_21CB85814();
  }

  v71 = v19;
  v31 = [v19 coreExtensions];
  v32 = *MEMORY[0x277CF0408];
  v33 = objc_allocWithZone(MEMORY[0x277CF0448]);
  v34 = v23;
  v35 = sub_21CB80C64();
  v36 = sub_21CB80C64();
  LOBYTE(v67) = 1;
  v66 = v32;
  v37 = v70;
  v38 = [v33 initWithRelyingPartyIdentifier:v70 attestationObject:v35 rawClientDataJSON:0 credentialID:v36 transports:v30 extensions:v31 attachment:v66 isExternal:v67];

  sub_21C7A34C0(v27, v29);
  sub_21C7A34C0(v34, v25);

  v39 = v69;
  sub_21CB051FC();
  sub_21CB81BE4();
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    v58 = [v39 delegate];
    a4 = v73;
    if (v58)
    {
      [v58 requestPaneViewController:v39 dismissWithCredential:v38 error:0];

      swift_unknownObjectRelease();
    }

    else
    {
    }

LABEL_23:
    a4[2](a4);

    return;
  }

  v40 = sub_21CB81BD4();
  v70 = sub_21CB81A74();
  v68[1] = v41;

  v42 = sub_21CB81BD4();
  v43 = sub_21CB81A54();

  v44 = v73;
  if (v43)
  {
    sub_21CB81A34();
  }

  v59 = sub_21CB81BD4();
  sub_21CB81B24();

  v60 = objc_allocWithZone(sub_21CB81BA4());
  v61 = v38;
  v62 = sub_21CB81B94();
  v63 = [v39 delegate];
  if (v63)
  {
    v64 = v63;
    v65 = v62;
    [v64 requestPaneViewController:v39 dismissWithCredential:v65 error:0];

    swift_unknownObjectRelease();
  }

  v44[2](v44);

  swift_unknownObjectRelease();
}

void sub_21CB15CC4(void *a1, char *a2, uint64_t a3)
{
  v6 = sub_21CB80DD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = *&a2[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_presentationContext];
    v11 = a1;
    v12 = [v10 serviceName];
    if (v12)
    {
      v13 = v12;
      sub_21CB051FC();
      v15 = v14;
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16)
      {
        v17 = [v16 externalCredentialIdentity];
        if (v17)
        {
          v18 = v17;
          v39 = v7;
          v41 = v15;
          v19 = [v11 user];
          if (!v19)
          {
            sub_21CB855C4();
            v19 = sub_21CB85584();
          }

          v20 = [v11 password];
          if (!v20)
          {
            sub_21CB855C4();
            v20 = sub_21CB85584();
          }

          v21 = v19;
          sub_21CB80DC4();
          v40 = v18;
          v22 = [v18 owningExtensionState];
          if (v22 && (v23 = v22, v24 = [v22 providerBundleID], v23, v24))
          {
            sub_21CB855C4();
            v26 = v25;

            v27 = v26;
            v28 = sub_21CB80D24();
            if (v27)
            {
              v29 = sub_21CB85584();

LABEL_17:
              v30 = [objc_allocWithZone(MEMORY[0x277CF0428]) initWithUser:v21 password:v20 site:v13 creationDate:v28 externalProviderBundleIdentifier:v29];

              swift_unknownObjectRelease();
              (*(v39 + 8))(v9, v6);
              v31 = 0;
              goto LABEL_20;
            }
          }

          else
          {
            v28 = sub_21CB80D24();
          }

          v29 = 0;
          goto LABEL_17;
        }

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  v31 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CF0400] code:2 userInfo:0];
  v30 = 0;
LABEL_20:
  v32 = [a2 delegate];
  if (v32)
  {
    v33 = v32;
    v34 = v30;
    if (v31)
    {
      v35 = v31;
      v36 = sub_21CB80B04();
    }

    else
    {
      v36 = 0;
    }

    [v33 requestPaneViewController:a2 dismissWithCredential:v30 error:v36];

    swift_unknownObjectRelease();
  }

  v37 = *&a2[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialListViewController];
  *&a2[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialListViewController] = 0;

  (*(a3 + 16))(a3);
}

void sub_21CB160AC(void *a1, char *a2, void *aBlock)
{
  v6 = *&a2[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialListViewController];
  *&a2[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialListViewController] = 0;
  _Block_copy(aBlock);

  if (a1)
  {
    _Block_copy(aBlock);
    v7 = a1;
    sub_21CB14F0C(a1, 0, a2, aBlock);
    _Block_release(aBlock);
  }

  else
  {
    v8 = [a2 delegate];
    if (v8)
    {
      v9 = v8;
      v10 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CF0400] code:2 userInfo:0];
      v11 = sub_21CB80B04();

      [v9 requestPaneViewController:a2 dismissWithCredential:0 error:v11];
      swift_unknownObjectRelease();
    }

    (*(aBlock + 2))(aBlock);
  }

  _Block_release(aBlock);
}

uint64_t sub_21CB161E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v7 = sub_21CB853D4();
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21CB85404();
  v10 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v13 = sub_21CB85CF4();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = v20;
  v15 = _Block_copy(aBlock);
  v16 = v4;
  v17 = a1;

  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21CB13C94(&qword_27CDEAF48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0, MEMORY[0x277D83970]);
  sub_21CB85F14();
  MEMORY[0x21CF15800](0, v12, v9, v15);
  _Block_release(v15);

  (*(v22 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v21);
}

uint64_t sub_21CB164D4(void *a1)
{
  v3 = sub_21CB853D4();
  v16 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21CB85404();
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v9 = sub_21CB85CF4();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v1;
  aBlock[4] = sub_21CB17068;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_134;
  v11 = _Block_copy(aBlock);
  v12 = a1;
  v13 = v1;

  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21CB13C94(&qword_27CDEAF48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0, MEMORY[0x277D83970]);
  sub_21CB85F14();
  MEMORY[0x21CF15800](0, v8, v5, v11);
  _Block_release(v11);

  (*(v16 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v15);
}

uint64_t sub_21CB167D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v37 = a3;
  v9 = sub_21CB853D4();
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x28223BE20](v9);
  v40 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21CB85404();
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x28223BE20](v11);
  v35 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21CB85424();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v20 = &v33 - v19;
  v21 = *&v5[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_authKitAuthorizationProvider];
  if (v21)
  {
    v22 = [objc_msgSend(v21 loginRowData];
    swift_unknownObjectRelease();
    v23 = v22 == 3;
  }

  else
  {
    v23 = 0;
  }

  [*&v5[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_confirmButtonSubpane] showAlertContinuingWithPassword_];
  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v24 = sub_21CB85CF4();
  sub_21CB85414();
  sub_21CB85434();
  v34 = *(v14 + 8);
  v34(v16, v13);
  v25 = swift_allocObject();
  v25[2] = v5;
  v25[3] = a1;
  v25[4] = a2;
  v25[5] = v37;
  v25[6] = a4;
  v25[7] = v36;
  aBlock[4] = sub_21CB17028;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_122;
  v26 = _Block_copy(aBlock);
  v27 = v5;

  v28 = v35;
  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21CB13C94(&qword_27CDEAF48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  v29 = v13;
  sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0, MEMORY[0x277D83970]);
  v30 = v40;
  v31 = v42;
  sub_21CB85F14();
  MEMORY[0x21CF157D0](v20, v28, v30, v26);
  _Block_release(v26);

  (*(v41 + 8))(v30, v31);
  (*(v38 + 8))(v28, v39);
  return (v34)(v20, v29);
}

void sub_21CB16C6C(uint64_t a1)
{
  sub_21CB81884();
  if (v1 <= 0x3F)
  {
    sub_21CB16D9C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21CB16D9C()
{
  if (!qword_27CDF8730)
  {
    v0 = sub_21CB81DD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF8730);
    }
  }
}

uint64_t sub_21CB16E14(uint64_t a1)
{
  result = sub_21CB81884();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PMCredentialPickerViewController(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21CB16EE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21CB0CF08(a1, v4, v5, v7, v6);
}

uint64_t sub_21CB16FC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_142Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21CB171C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB1722C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for PMSaveAccountRequest(uint64_t a1)
{
  result = qword_27CDF8AC0;
  if (!qword_27CDF8AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CB1742C(uint64_t a1)
{
  sub_21C6F0848(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_21CB174F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8AE0, &qword_21CBC9818);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

unint64_t sub_21CB17570()
{
  result = qword_27CDF8AE8;
  if (!qword_27CDF8AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8AE0, &qword_21CBC9818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8AE8);
  }

  return result;
}

uint64_t PMSecurityRecommendation.messageWithIssueTypesDescription.getter()
{
  v1 = [*(v0 + 24) localizedLongDescriptionForClient_];
  v2 = sub_21CB855C4();

  return v2;
}

uint64_t PMSecurityRecommendation.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PMSecurityRecommendation.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_21CB176DC(SEL *a1)
{
  v2 = [*(v1 + 24) *a1];
  v3 = sub_21CB855C4();

  return v3;
}

uint64_t static PMSecurityRecommendation.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 == v3)
    {
LABEL_7:
      sub_21C7EBFE0();
      return sub_21CB85DD4() & 1;
    }
  }

  else if ((sub_21CB86344() & 1) != 0 && ((v2 ^ v3) & 1) == 0)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t PMSecurityRecommendation.hash(into:)(uint64_t a1)
{
  sub_21CB854C4();
  sub_21CB864A4();
  return sub_21CB85DE4();
}

uint64_t PMSecurityRecommendation.hashValue.getter()
{
  sub_21CB86484();
  sub_21CB854C4();
  sub_21CB864A4();
  sub_21CB85DE4();
  return sub_21CB864D4();
}

uint64_t sub_21CB17920()
{
  sub_21CB86484();
  sub_21CB854C4();
  sub_21CB864A4();
  sub_21CB85DE4();
  return sub_21CB864D4();
}

uint64_t sub_21CB1799C(uint64_t a1)
{
  sub_21CB854C4();
  sub_21CB864A4();
  return sub_21CB85DE4();
}

uint64_t sub_21CB179EC(uint64_t a1)
{
  sub_21CB86484();
  sub_21CB854C4();
  sub_21CB864A4();
  sub_21CB85DE4();
  return sub_21CB864D4();
}

BOOL sub_21CB17A68(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  v8 = a2[3];
  v13[0] = *a1;
  v13[1] = v2;
  v14 = v3;
  v15 = v4;
  v10[0] = v5;
  v10[1] = v6;
  v11 = v7;
  v12 = v8;
  return !_s17PasswordManagerUI24PMSecurityRecommendationV1loiySbAC_ACtFZ_0(v10, v13);
}

BOOL sub_21CB17AC8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  v8 = a2[3];
  v13[0] = *a1;
  v13[1] = v2;
  v14 = v3;
  v15 = v4;
  v10[0] = v5;
  v10[1] = v6;
  v11 = v7;
  v12 = v8;
  return !_s17PasswordManagerUI24PMSecurityRecommendationV1loiySbAC_ACtFZ_0(v13, v10);
}

BOOL sub_21CB17B28(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  v8 = a2[3];
  v13[0] = *a1;
  v13[1] = v2;
  v14 = v3;
  v15 = v4;
  v10[0] = v5;
  v10[1] = v6;
  v11 = v7;
  v12 = v8;
  return _s17PasswordManagerUI24PMSecurityRecommendationV1loiySbAC_ACtFZ_0(v10, v13);
}

uint64_t sub_21CB17B84(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 == v3)
    {
LABEL_7:
      sub_21C7EBFE0();
      return sub_21CB85DD4() & 1;
    }
  }

  else if ((sub_21CB86344() & 1) != 0 && ((v2 ^ v3) & 1) == 0)
  {
    goto LABEL_7;
  }

  return 0;
}

BOOL _s17PasswordManagerUI24PMSecurityRecommendationV1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  v4 = [v2 severityScore];
  if (v4 == [v3 severityScore])
  {
    v5 = [v2 savedAccount];
    v6 = [v3 savedAccount];
    v7 = [v5 compare_];

    return v7 == -1;
  }

  else
  {
    v9 = [v2 severityScore];
    return v9 < [v3 severityScore];
  }
}

unint64_t sub_21CB17CF4()
{
  result = qword_27CDF8AF0;
  if (!qword_27CDF8AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8AF0);
  }

  return result;
}

unint64_t sub_21CB17D5C()
{
  result = qword_27CDF8AF8;
  if (!qword_27CDF8AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8AF8);
  }

  return result;
}

uint64_t sub_21CB17DB4()
{
  swift_getKeyPath(byte_21CBC9A30);
  sub_21CB18028();
  sub_21CB810D4();
}

uint64_t sub_21CB17E28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBC9A30);
  sub_21CB18028();
  sub_21CB810D4();

  *a2 = *(v3 + 16);
}

double sub_21CB17EA4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBC9A30);
  sub_21CB18028();
  sub_21CB810C4();

  return result;
}

void sub_21CB17F40(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
}

uint64_t sub_21CB17F7C()
{

  v1 = OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialImporter___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_21CB18028()
{
  result = qword_27CDF0160;
  if (!qword_27CDF0160)
  {
    type metadata accessor for PMCredentialImporter(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0160);
  }

  return result;
}

uint64_t sub_21CB180A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB80BE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

id sub_21CB18144(uint64_t a1)
{
  v1 = sub_21CB80B74();
  v2 = makeSafariViewControllerWithURL(v1);

  return v2;
}

uint64_t sub_21CB18180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21C72C134(&qword_27CDF8B90, type metadata accessor for PMSafariView._PMSafariView, &unk_21CBC9BB8);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21CB18214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21C72C134(&qword_27CDF8B90, type metadata accessor for PMSafariView._PMSafariView, &unk_21CBC9BB8);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21CB182A8(uint64_t a1)
{
  sub_21C72C134(&qword_27CDF8B90, type metadata accessor for PMSafariView._PMSafariView, &unk_21CBC9BB8);
  sub_21CB83B44();
  __break(1u);
}

uint64_t sub_21CB18300@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB80BE4();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  v4 = sub_21CB82934();
  v5 = sub_21CB83CE4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8B68, &qword_21CBC9B50);
  v7 = a1 + *(result + 36);
  *v7 = v4;
  *(v7 + 8) = v5;
  return result;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB80BE4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_9Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB80BE4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_21CB1849C()
{
  result = qword_27CDF8B80;
  if (!qword_27CDF8B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8B68, &qword_21CBC9B50);
    sub_21C72C134(&qword_27CDF8B88, type metadata accessor for PMSafariView._PMSafariView, &unk_21CBC9B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8B80);
  }

  return result;
}

uint64_t type metadata accessor for PMSecurityRecommendationsAccountRow(uint64_t a1)
{
  result = qword_27CDF8B98;
  if (!qword_27CDF8B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CB18614(uint64_t a1)
{
  type metadata accessor for PMAccount(319);
  if (v1 <= 0x3F)
  {
    sub_21C7205C4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21CB186BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8BB0, &qword_21CBC9CB0);
  v91 = *(v3 - 8);
  v92 = v3;
  MEMORY[0x28223BE20](v3);
  v78 = &v77 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8BB8, &qword_21CBC9CB8);
  MEMORY[0x28223BE20](v5 - 8);
  v94 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v93 = &v77 - v8;
  v9 = type metadata accessor for PMSecurityRecommendationsAccountRow(0);
  v10 = v9 - 8;
  v86 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v87 = v11;
  v88 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PMAccountRow(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8BC0, &qword_21CBC9CC0);
  MEMORY[0x28223BE20](v83);
  v19 = &v77 - v18;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8BC8, &qword_21CBC9CC8);
  MEMORY[0x28223BE20](v85);
  v90 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v84 = &v77 - v22;
  MEMORY[0x28223BE20](v23);
  v89 = &v77 - v24;
  sub_21CB199D4(a1, v14, type metadata accessor for PMAccount);
  v25 = sub_21CB19000();
  v81 = v26;
  v82 = v25;
  v80 = sub_21CB1918C();
  v79 = v27;
  v28 = (a1 + *(v10 + 28));
  if ([v28[3] hasBeenCompromised])
  {
    *&v97 = sub_21CB84A64();
    v29 = MEMORY[0x277CE0F60];
    v30 = MEMORY[0x277CE0F78];
  }

  else
  {
    LODWORD(v97) = sub_21CB837E4();
    v29 = MEMORY[0x277CE04E8];
    v30 = MEMORY[0x277CE04F8];
  }

  v98 = v30;
  v99 = v29;
  v31 = &v17[v15[9]];
  KeyPath = swift_getKeyPath(byte_21CBC9CD0);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(KeyPath, v96);

  type metadata accessor for PMGroupsStore(0);
  sub_21CADC854();
  v33 = sub_21CB82674();
  v35 = v34;

  *v31 = v33;
  v31[1] = v35;
  v36 = &v17[v15[10]];
  *v36 = swift_getKeyPath(byte_21CBC9CF0);
  v36[8] = 0;
  v37 = &v17[v15[11]];
  v37[8] = 0;
  v38 = v15[12];
  *&v17[v38] = swift_getKeyPath(byte_21CBC9D48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v39 = v15[13];
  *&v17[v39] = swift_getKeyPath(aP_113);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC90, &qword_21CBA5D20);
  swift_storeEnumTagMultiPayload();
  v40 = v15[14];
  *&v17[v40] = swift_getKeyPath(asc_21CBC9DB8);
  sub_21CB198FC(v14, v17, type metadata accessor for PMAccount);
  v41 = &v17[v15[5]];
  v42 = v81;
  *v41 = v82;
  *(v41 + 1) = v42;
  v43 = &v17[v15[6]];
  v44 = v79;
  *v43 = v80;
  v43[1] = v44;
  sub_21C6EA568(&v97, &v17[v15[7]]);
  v45 = &v17[v15[8]];
  *v45 = 0;
  *(v45 + 1) = 0xE000000000000000;
  v47 = *v28;
  v46 = v28[1];
  v48 = *(v28 + 16);
  v49 = v28[3];
  if (v48)
  {
    LOBYTE(v50) = 2;
    v51 = v89;
  }

  else
  {
    v52 = [v28[3] severity];
    v51 = v89;
    if (v52 > 3)
    {
      LOBYTE(v50) = 2;
    }

    else
    {
      v50 = 0x2010002u >> (8 * v52);
    }
  }

  *v19 = v47;
  *(v19 + 1) = v46;
  *(v19 + 2) = v48;
  *(v19 + 3) = v49;
  v19[32] = v50;
  *(v19 + 33) = 256;
  v53 = v83;
  sub_21CB199D4(v17, &v19[*(v83 + 48)], type metadata accessor for PMAccountRow);
  v54 = *(v53 + 52);
  *&v19[v54] = swift_getKeyPath(asc_21CBC9DD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();

  v55 = v49;
  sub_21CB19A3C(v17, type metadata accessor for PMAccountRow);
  v56 = sub_21CB832C4();
  v57 = v88;
  sub_21CB199D4(a1, v88, type metadata accessor for PMSecurityRecommendationsAccountRow);
  v58 = (*(v86 + 80) + 16) & ~*(v86 + 80);
  v59 = swift_allocObject();
  sub_21CB198FC(v57, v59 + v58, type metadata accessor for PMSecurityRecommendationsAccountRow);
  v60 = v84;
  sub_21C716934(v19, v84, &qword_27CDF8BC0, &qword_21CBC9CC0);
  v61 = (v60 + *(v85 + 36));
  *v61 = v56;
  v61[1] = sub_21CB19964;
  v61[2] = v59;
  sub_21C716934(v60, v51, &qword_27CDF8BC8, &qword_21CBC9CC8);
  if (sub_21CB19660())
  {
    v62 = type metadata accessor for PMChangePasswordOnWebsiteLink(0);
    v63 = v78;
    sub_21CB199D4(a1, &v78[v62[5]], type metadata accessor for PMAccount);
    *v63 = swift_getKeyPath(byte_21CBC9E18);
    *(v63 + 8) = 0;
    *(v63 + 16) = 0;
    v64 = (v63 + v62[7]);
    v65 = v62[9];
    *(v63 + v62[6]) = 0;
    v66 = (v63 + v65);
    *v64 = 0;
    v64[1] = 0;
    *(v63 + v62[8]) = 0;
    sub_21C805AD8();
    *v66 = 0;
    v66[1] = 0;
    v67 = sub_21CB83314();
    v68 = v92;
    v69 = v93;
    v70 = (v63 + *(v92 + 36));
    *v70 = v67;
    v70[1] = sub_21C7902AC;
    v70[2] = 0;
    sub_21C716934(v63, v69, &qword_27CDF8BB0, &qword_21CBC9CB0);
    v71 = 0;
  }

  else
  {
    v71 = 1;
    v68 = v92;
    v69 = v93;
  }

  (*(v91 + 56))(v69, v71, 1, v68);
  v72 = v90;
  sub_21C6EDBAC(v51, v90, &qword_27CDF8BC8, &qword_21CBC9CC8);
  v73 = v94;
  sub_21C6EDBAC(v69, v94, &qword_27CDF8BB8, &qword_21CBC9CB8);
  v74 = v95;
  sub_21C6EDBAC(v72, v95, &qword_27CDF8BC8, &qword_21CBC9CC8);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8BD0, &qword_21CBC9E10);
  sub_21C6EDBAC(v73, v74 + *(v75 + 48), &qword_27CDF8BB8, &qword_21CBC9CB8);
  sub_21C6EA794(v69, &qword_27CDF8BB8, &qword_21CBC9CB8);
  sub_21C6EA794(v51, &qword_27CDF8BC8, &qword_21CBC9CC8);
  sub_21C6EA794(v73, &qword_27CDF8BB8, &qword_21CBC9CB8);
  return sub_21C6EA794(v72, &qword_27CDF8BC8, &qword_21CBC9CC8);
}

uint64_t sub_21CB19000()
{
  v1 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  PMAccount.customTitle.getter();
  if (v4)
  {
    goto LABEL_2;
  }

  PMAccount.customTitle.getter();
  if (v6)
  {
  }

  else
  {
    v7 = type metadata accessor for PMAccount(0);
    sub_21CB199D4(v0 + *(v7 + 24), v3, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CB19A3C(v3, type metadata accessor for PMAccount.Storage);
      LOBYTE(v3) = 0;
      goto LABEL_11;
    }

    v8 = *v3;
    v3 = [*v3 serviceName];

    if (!v3)
    {
      goto LABEL_11;
    }
  }

  LOBYTE(v3) = 1;
LABEL_11:
  if ([*(v0 + *(type metadata accessor for PMSecurityRecommendationsAccountRow(0) + 20) + 24) savedAccountIsOnlySavedAccountForHighLevelDomain])
  {
    if ((v3 & 1) == 0)
    {
      PMAccount.userVisibleDomain.getter();
      if (v9)
      {
LABEL_2:
      }
    }
  }

  return 0;
}

uint64_t sub_21CB1918C()
{
  v1 = sub_21CB82F84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMSecurityRecommendationsAccountRow(0);
  v6 = v0 + *(v5 + 24);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    v17 = *v6;
  }

  else
  {

    sub_21CB85B04();
    v8 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v7, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v7) = v17;
  }

  if (v7 == 1)
  {

    goto LABEL_11;
  }

  v9 = sub_21CB86344();

  if (v9)
  {
LABEL_11:
    v12 = [*(v0 + *(v5 + 20) + 24) localizedShortDescriptivePhrase];
    goto LABEL_12;
  }

  v10 = v0 + *(v5 + 20);
  v11 = *(v10 + 24);
  if ((*(v10 + 16) & 1) != 0 || [v11 severity] != 1)
  {
    v12 = [v11 localizedShortDescriptivePhrase];
  }

  else
  {
    v12 = [v11 localizedLongDescriptionForClient_];
  }

LABEL_12:
  v13 = v12;
  v14 = sub_21CB855C4();

  return v14;
}

uint64_t sub_21CB1942C(uint64_t a1, uint64_t a2)
{
  v3 = sub_21CB82F84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + *(type metadata accessor for PMSecurityRecommendationsAccountRow(0) + 24);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v14 = *v7;
  }

  else
  {

    sub_21CB85B04();
    v9 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v14;
  }

  if (v8 == 1)
  {

    goto LABEL_8;
  }

  v10 = sub_21CB86344();

  if (v10)
  {
LABEL_8:
    sub_21C805AD8();
    v11 = sub_21CB83314();
    return MEMORY[0x21CF122A0](v11);
  }

  v11 = sub_21CB832F4();
  return MEMORY[0x21CF122A0](v11);
}

BOOL sub_21CB19660()
{
  v1 = sub_21CB82F84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMSecurityRecommendationsAccountRow(0);
  v6 = v0 + *(v5 + 24);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    v13 = *v6;
  }

  else
  {

    sub_21CB85B04();
    v8 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v7, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v7) = v13;
  }

  if (v7 == 1)
  {

    return 0;
  }

  else
  {
    v10 = sub_21CB86344();

    if (v10)
    {
      return 0;
    }

    v11 = v0 + *(v5 + 20);
    return (*(v11 + 16) & 1) == 0 && [*(v11 + 24) severity] == 1;
  }
}

uint64_t sub_21CB198A8@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_21CB832C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8BA8, &qword_21CBC9CA8);
  return sub_21CB186BC(v2, a2 + *(v4 + 44));
}

uint64_t sub_21CB198FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB19964(uint64_t a1)
{
  v3 = *(type metadata accessor for PMSecurityRecommendationsAccountRow(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CB1942C(a1, v4);
}

uint64_t sub_21CB199D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB19A3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21CB19A9C()
{
  result = qword_27CDF8BD8;
  if (!qword_27CDF8BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8BE0, &unk_21CBC9E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8BD8);
  }

  return result;
}

uint64_t sub_21CB19B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a5;
  v37 = sub_21CB82A04();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v34 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21CB839E4();
  v33 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8BE8, &qword_21CBC9F90);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8BF0, &qword_21CBC9F98);
  v17 = *(v16 - 8);
  v31 = v16;
  v32 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - v18;
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  v20[5] = a4;
  v38 = a1;
  v39 = a2;
  v40 = a3;
  v41 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB208, &unk_21CBB3F40);
  sub_21C7B8EA4();
  sub_21CB84DA4();
  v21 = &v15[*(v13 + 36)];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13A0, &qword_21CBB1100) + 28);
  v23 = *MEMORY[0x277CDF420];
  v24 = sub_21CB82064();
  (*(*(v24 - 8) + 104))(&v21[v22], v23, v24);
  *v21 = swift_getKeyPath(aP_114);
  sub_21CB839D4();
  v25 = sub_21CB1A630();
  v26 = sub_21CB1A788(&qword_27CDF8C00, MEMORY[0x277CDE340], MEMORY[0x277CDE338]);
  sub_21CB84124();
  (*(v33 + 8))(v12, v10);
  sub_21CB1A714(v15);
  v27 = v34;
  sub_21CB829F4();
  v42 = v13;
  v43 = v10;
  v44 = v25;
  v45 = v26;
  swift_getOpaqueTypeConformance2();
  v28 = v31;
  sub_21CB84334();
  (*(v35 + 8))(v27, v37);
  return (*(v32 + 8))(v19, v28);
}

__n128 sub_21CB19F78@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(&v22 + 1) = a2;
  sub_21C71F3FC();

  v4 = sub_21CB84054();
  v6 = v5;
  v8 = v7;
  sub_21CB83E04();
  v9 = sub_21CB83FA4();
  v11 = v10;
  v13 = v12;
  sub_21C74A72C(v4, v6, v8 & 1);

  *&v22 = sub_21CB84AD4();
  v14 = sub_21CB83FC4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_21C74A72C(v9, v11, v13 & 1);

  sub_21CB85214();
  sub_21CB82AC4();
  *a3 = v14;
  *(a3 + 8) = v16;
  *(a3 + 16) = v18 & 1;
  *(a3 + 24) = v20;
  *(a3 + 96) = v26;
  *(a3 + 112) = v27;
  *(a3 + 128) = v28;
  *(a3 + 32) = v22;
  *(a3 + 48) = v23;
  result = v25;
  *(a3 + 64) = v24;
  *(a3 + 80) = v25;
  return result;
}

uint64_t sub_21CB1A12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_21CB829C4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8BE8, &qword_21CBC9F90);
  MEMORY[0x28223BE20](v14);
  v16 = &v38[-v15];
  v39 = a1;
  v40 = a2;
  v41 = a3;
  v42 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB208, &unk_21CBB3F40);
  sub_21C7B8EA4();
  sub_21CB84DA4();
  v17 = &v16[*(v14 + 36)];
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13A0, &qword_21CBB1100) + 28);
  v19 = *MEMORY[0x277CDF420];
  v20 = sub_21CB82064();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  *v17 = swift_getKeyPath(aP_114);
  sub_21CB829B4();
  sub_21CB1A630();
  sub_21CB1A788(&qword_27CDF0948, MEMORY[0x277CDDA98], MEMORY[0x277CDDA90]);
  sub_21CB84124();
  (*(v11 + 8))(v13, v10);
  sub_21CB1A714(v16);
  v21 = [objc_opt_self() systemGray6Color];
  v22 = sub_21CB84A24();
  v23 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8C08, &qword_21CBC9FD8) + 36));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8C10, &qword_21CBC9FE0);
  v25 = *(v24 + 52);
  v26 = *MEMORY[0x277CE0118];
  v27 = sub_21CB831A4();
  (*(*(v27 - 8) + 104))(v23 + v25, v26, v27);
  *v23 = v22;
  *(v23 + *(v24 + 56)) = 256;
  LOBYTE(v22) = sub_21CB83CE4();
  sub_21CB81F24();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8C18, &qword_21CBC9FE8);
  v37 = a5 + *(result + 36);
  *v37 = v22;
  *(v37 + 8) = v29;
  *(v37 + 16) = v31;
  *(v37 + 24) = v33;
  *(v37 + 32) = v35;
  *(v37 + 40) = 0;
  return result;
}

__n128 sub_21CB1A4B8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v17 = a1;
  *(&v17 + 1) = a2;
  sub_21C71F3FC();

  v4 = sub_21CB84054();
  v6 = v5;
  v8 = v7;
  sub_21CB83E04();
  v9 = sub_21CB83FA4();
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

unint64_t sub_21CB1A630()
{
  result = qword_27CDF8BF8;
  if (!qword_27CDF8BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8BE8, &qword_21CBC9F90);
    sub_21C6EADEC(&qword_27CDF2C18, &qword_27CDF2C10, &unk_21CBB5AA0, MEMORY[0x277CDF028]);
    sub_21C6EADEC(&qword_27CDF1398, &qword_27CDF13A0, &qword_21CBB1100, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8BF8);
  }

  return result;
}

uint64_t sub_21CB1A714(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8BE8, &qword_21CBC9F90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CB1A788(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21CB1A7D0()
{
  result = qword_27CDF8C20;
  if (!qword_27CDF8C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8C18, &qword_21CBC9FE8);
    sub_21CB1A85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8C20);
  }

  return result;
}

unint64_t sub_21CB1A85C()
{
  result = qword_27CDF8C28;
  if (!qword_27CDF8C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8C08, &qword_21CBC9FD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8BE8, &qword_21CBC9F90);
    sub_21CB829C4();
    sub_21CB1A630();
    sub_21CB1A788(&qword_27CDF0948, MEMORY[0x277CDDA98], MEMORY[0x277CDDA90]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(qword_27CDF8C30, &qword_27CDF8C10, &qword_21CBC9FE0, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8C28);
  }

  return result;
}

uint64_t sub_21CB1A9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21CB1AA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13(v10);
  sub_21C72BE10(v8, a3, a4);
  v14 = *(v6 + 8);
  v14(v8, a3);
  sub_21C72BE10(v12, a3, a4);
  return (v14)(v12, a3);
}

void sub_21CB1AB84(uint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_21CBCA0B8, v4);
  sub_21CB81DB4();

  if ((v43 & 1) == 0)
  {
    goto LABEL_23;
  }

  swift_getKeyPath(byte_21CBCA100);
  swift_getKeyPath(byte_21CBCA128);
  sub_21CB81DB4();

  v7 = v43;
  v8 = *(v43 + 16);
  if (v8)
  {
    v39[2] = a1;
    v40 = v6;
    v41 = v3;
    v42 = v2;
    v43 = MEMORY[0x277D84F90];
    sub_21C7B0C0C(0, v8, 0);
    v9 = v43;
    v39[1] = v7;
    v10 = (v7 + 56);
    do
    {
      v11 = *v10;

      v12 = v11;
      v13 = [v12 savedAccount];
      v14 = [v13 userVisibleDomain];

      v15 = sub_21CB855C4();
      v17 = v16;

      v43 = v9;
      v19 = *(v9 + 16);
      v18 = *(v9 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_21C7B0C0C((v18 > 1), v19 + 1, 1);
        v9 = v43;
      }

      *(v9 + 16) = v19 + 1;
      v20 = v9 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v10 += 4;
      --v8;
    }

    while (v8);

    v3 = v41;
    v2 = v42;
    v6 = v40;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v43 = MEMORY[0x277D84FA0];
  v21 = sub_21CB1B2DC(v9);

  v22 = v21[2];
  swift_getKeyPath(aX_83);
  swift_getKeyPath(aX_84);
  sub_21CB81DB4();

  v23 = v21[2];
  if (!v23)
  {
    goto LABEL_21;
  }

  v25 = v21[4];
  v24 = v21[5];
  if ((v43 & 1) == 0)
  {

    if (v22 == 1)
    {
      goto LABEL_19;
    }

LABEL_21:

    swift_getKeyPath(byte_21CBCA100);
    swift_getKeyPath(byte_21CBCA128);
    sub_21CB81DB4();

    v31 = *(v43 + 16);

    if (!v31)
    {
      swift_getKeyPath(asc_21CBCA190);
      swift_getKeyPath(asc_21CBCA1B8);
      sub_21CB81DB4();
    }

LABEL_23:
    sub_21CB81014();
    sub_21CB81004();
    (*(v3 + 8))(v6, v2);
    return;
  }

  if (v22 < 4)
  {

    if (v22 != 1 && v22 != 2)
    {
      if (v22 == 3)
      {
        sub_21CB81014();
        sub_21CB81004();
        (*(v3 + 8))(v6, v2);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_21CBA15B0;
        *(v26 + 56) = MEMORY[0x277D837D0];
        v27 = sub_21C7C0050();
        v28 = MEMORY[0x277D83B88];
        v29 = MEMORY[0x277D83C10];
        *(v26 + 32) = v25;
        *(v26 + 40) = v24;
        *(v26 + 96) = v28;
        *(v26 + 104) = v29;
        *(v26 + 64) = v27;
        *(v26 + 72) = 2;
LABEL_20:
        sub_21CB85594();
LABEL_26:

        return;
      }

      goto LABEL_21;
    }

LABEL_19:
    sub_21CB81014();
    sub_21CB81004();
    (*(v3 + 8))(v6, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_21CBA0690;
    *(v30 + 56) = MEMORY[0x277D837D0];
    *(v30 + 64) = sub_21C7C0050();
    *(v30 + 32) = v25;
    *(v30 + 40) = v24;
    goto LABEL_20;
  }

  if (v23 != 1)
  {
    v32 = v6;
    v34 = v21[6];
    v33 = v21[7];

    sub_21CB81014();
    sub_21CB81004();
    (*(v3 + 8))(v32, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_21CBA15A0;
    v36 = MEMORY[0x277D837D0];
    *(v35 + 56) = MEMORY[0x277D837D0];
    v37 = sub_21C7C0050();
    *(v35 + 32) = v25;
    *(v35 + 40) = v24;
    *(v35 + 96) = v36;
    *(v35 + 104) = v37;
    *(v35 + 64) = v37;
    *(v35 + 72) = v34;
    *(v35 + 80) = v33;
    v38 = MEMORY[0x277D83C10];
    *(v35 + 136) = MEMORY[0x277D83B88];
    *(v35 + 144) = v38;
    *(v35 + 112) = v22 - 2;
    sub_21CB85594();
    goto LABEL_26;
  }

  __break(1u);
}

uint64_t sub_21CB1B2DC(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v3 = result + 40;
  v4 = MEMORY[0x277D84F90];
  v13 = result + 40;
  do
  {
    v5 = (v3 + 16 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v8 = *(v5 - 1);
      v7 = *v5;
      swift_bridgeObjectRetain_n();
      v9 = sub_21CA94078(&v14, v8, v7);

      if (v9)
      {
        break;
      }

      v5 += 2;
      if (v2 == v1)
      {
        return v4;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v15 = v4;
    if ((result & 1) == 0)
    {
      result = sub_21C7B0C0C(0, *(v4 + 16) + 1, 1);
      v4 = v15;
    }

    v11 = *(v4 + 16);
    v10 = *(v4 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_21C7B0C0C((v10 > 1), v11 + 1, 1);
      v4 = v15;
    }

    *(v4 + 16) = v11 + 1;
    v12 = v4 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v7;
    v3 = v13;
  }

  while (v2 != v1);
  return v4;
}

uint64_t sub_21CB1B468@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21CB82744();
  MEMORY[0x28223BE20](v2);
  v3 = sub_21CB834E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  sub_21CB82DB4();
  sub_21CB834D4();
  v10 = sub_21CB834B4();
  v11 = *(v4 + 8);
  v11(v6, v3);
  v11(v9, v3);
  if ((v10 & 1) == 0)
  {
    sub_21CB82734();
  }

  result = sub_21CB82384();
  *a1 = result;
  return result;
}

double sub_21CB1B668(uint64_t a1)
{
  sub_21CB84AB4();
  sub_21CB85214();
  sub_21CB82374();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5560, &qword_21CBBE1F0);
  sub_21CA2B89C();
  sub_21CB84494();

  return result;
}

uint64_t sub_21CB1B728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21C94B4A8(v2, a2);
  v5 = *(a1 + 24);
  v6 = *(v2 + *(a1 + 20));
  v8 = *(v2 + v5);
  v7 = *(v2 + v5 + 8);
  v9 = type metadata accessor for _PMSendGroupInviteMessageSheet(0);
  *(a2 + *(v9 + 20)) = v6;
  v10 = (a2 + *(v9 + 24));
  *v10 = v8;
  v10[1] = v7;

  v11 = sub_21CB82934();
  LOBYTE(v7) = sub_21CB83CE4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF8D50, &qword_21CBCA3D8);
  v13 = a2 + *(result + 36);
  *v13 = v11;
  *(v13 + 8) = v7;
  return result;
}

id sub_21CB1B7D0(uint64_t a1)
{
  v3 = sub_21CB80BE4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277CD6888]) init];
  v8 = *(v1 + *(type metadata accessor for _PMSendGroupInviteMessageSheet(0) + 20));
  v9 = *(v8 + 16);
  if (v9)
  {
    v26[1] = v1;
    v27 = v4;
    v28 = v3;
    v29 = a1;
    v30 = MEMORY[0x277D84F90];
    sub_21C7B0C0C(0, v9, 0);
    v10 = v30;
    v11 = (v8 + 72);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v30 = v10;
      v14 = v10[2];
      v15 = v10[3];

      if (v14 >= v15 >> 1)
      {
        sub_21C7B0C0C((v15 > 1), v14 + 1, 1);
        v10 = v30;
      }

      v10[2] = v14 + 1;
      v16 = &v10[2 * v14];
      v16[4] = v12;
      v16[5] = v13;
      v11 += 14;
      --v9;
    }

    while (v9);
    v3 = v28;
    v4 = v27;
  }

  v17 = sub_21CB85814();

  [v7 setRecipients_];

  v18 = sub_21CAF9874();
  v20 = v19;
  v21 = sub_21CB80C64();
  sub_21C7A34C0(v18, v20);
  v22 = WBSOngoingSharingInvitationFallbackURL();
  sub_21CB80B94();

  v23 = sub_21CB80B74();
  (*(v4 + 8))(v6, v3);
  [v7 addRichLinkData:v21 withWebpageURL:v23];

  [v7 _setCanEditRecipients_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8D80, &qword_21CBCA4A8);
  sub_21CB83C84();
  v24 = v30;
  [v7 setMessageComposeDelegate_];

  return v7;
}

id sub_21CB1BB04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _PMSendGroupInviteMessageSheet.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21CB1BBD0()
{
  result = qword_27CDF8D48;
  if (!qword_27CDF8D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8D48);
  }

  return result;
}

double sub_21CB1BC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8D80, &qword_21CBCA4A8);
  sub_21CB83C84();
  v5 = (v3 + *(a3 + 24));
  v7 = *v5;
  v6 = v5[1];
  v8 = &v10[OBJC_IVAR____TtCV17PasswordManagerUIP33_1312920E03BB5C121609F962CF0CDDEA30_PMSendGroupInviteMessageSheet11Coordinator_actionPerformed];
  *v8 = v7;
  *(v8 + 1) = v6;

  return result;
}

id sub_21CB1BCEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (v2 + *(a1 + 24));
  v6 = *v4;
  v5 = v4[1];
  v7 = type metadata accessor for _PMSendGroupInviteMessageSheet.Coordinator();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtCV17PasswordManagerUIP33_1312920E03BB5C121609F962CF0CDDEA30_PMSendGroupInviteMessageSheet11Coordinator_actionPerformed];
  *v9 = v6;
  *(v9 + 1) = v5;
  v11.receiver = v8;
  v11.super_class = v7;

  result = objc_msgSendSuper2(&v11, sel_init);
  *a2 = result;
  return result;
}

uint64_t sub_21CB1BD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB1C228(&qword_27CDF8D88, &unk_21CBCA430);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21CB1BDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB1C228(&qword_27CDF8D88, &unk_21CBCA430);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21CB1BE6C(uint64_t a1)
{
  sub_21CB1C228(&qword_27CDF8D88, &unk_21CBCA430);
  sub_21CB83B44();
  __break(1u);
}

double sub_21CB1BEB0(uint64_t a1)
{
  v2 = a1 == 1;
  v3 = *(v1 + OBJC_IVAR____TtCV17PasswordManagerUIP33_1312920E03BB5C121609F962CF0CDDEA30_PMSendGroupInviteMessageSheet11Coordinator_actionPerformed);

  v3(v2);

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMSharingGroup(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PMSharingGroup(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_21CB1C0B0(uint64_t a1)
{
  type metadata accessor for PMSharingGroup(319);
  if (v1 <= 0x3F)
  {
    sub_21C6E9428();
    if (v2 <= 0x3F)
    {
      sub_21C7226D8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21CB1C14C()
{
  result = qword_27CDF8D70;
  if (!qword_27CDF8D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDF8D50, &qword_21CBCA3D8);
    sub_21CB1C228(&qword_27CDF8D78, &unk_21CBCA3E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8D70);
  }

  return result;
}

uint64_t sub_21CB1C228(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _PMSendGroupInviteMessageSheet(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21CB1C270@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB82F84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PMNeverSavedPasswordsView(0);
  sub_21C7B8998(v1 + *(v10 + 28), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21CB823B4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_21CB85B04();
    v13 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t PMNeverSavedPasswordsView.init()@<X0>(uint64_t *a1@<X8>)
{
  KeyPath = swift_getKeyPath(byte_21CBCA4C0);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v8);

  type metadata accessor for PMAccountsState(0);
  sub_21C706258(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v3 = sub_21CB82674();
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD30, &unk_21CBA5590);
  sub_21CB84D44();
  a1[2] = v8;
  a1[3] = v9;
  sub_21CB84D44();
  a1[4] = v8;
  a1[5] = v9;
  v6 = *(type metadata accessor for PMNeverSavedPasswordsView(0) + 28);
  *(a1 + v6) = swift_getKeyPath(aX_85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t PMNeverSavedPasswordsView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8D90, &qword_21CBCA528);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8D98, &unk_21CBCA530);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF59E0, &qword_21CBBF080);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8DA0, &qword_21CBCA540);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8DA8, &qword_21CBCA548);
  sub_21CB1ECC8();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3600, &qword_21CBB7D10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC010, &qword_21CBAA950);
  sub_21C6EADEC(&qword_27CDF3640, &qword_27CDEC010, &qword_21CBAA950, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_21CB82924();
}

uint64_t sub_21CB1C80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  v79 = a2;
  v3 = sub_21CB82FD4();
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x28223BE20](v3);
  v76 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB81024();
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x28223BE20](v5);
  v71 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_21CB85114();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v65 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_21CB829D4();
  v62 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB830D4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8DB8, &qword_21CBCA550);
  MEMORY[0x28223BE20](v13);
  v15 = &v58 - v14;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8DA8, &qword_21CBCA548);
  MEMORY[0x28223BE20](v60);
  v58 = &v58 - v16;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8DA0, &qword_21CBCA540);
  v70 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v63 = &v58 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8D98, &unk_21CBCA530);
  v19 = *(v18 - 8);
  v74 = v18;
  v75 = v19;
  MEMORY[0x28223BE20](v18);
  v64 = &v58 - v20;
  v81 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8E10, &qword_21CBCA5F8);
  sub_21C6EADEC(&qword_27CDF8E18, &qword_27CDF8E10, &qword_21CBCA5F8, MEMORY[0x277CE14C0]);
  sub_21CB83EF4();
  sub_21CB830B4();
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8DD0, &qword_21CBCA558) + 36);
  (*(v10 + 16))(&v15[v21], v12, v9);
  v22 = *(v10 + 56);
  v22(&v15[v21], 0, 1, v9);
  KeyPath = swift_getKeyPath(byte_21CBCA600);
  v24 = &v15[*(v13 + 36)];
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB238, &qword_21CBA1570) + 28);
  (*(v10 + 32))(v24 + v25, v12, v9);
  v22(v24 + v25, 0, 1, v9);
  *v24 = KeyPath;
  v26 = v59;
  sub_21CB85294();
  sub_21CB1EE0C();
  sub_21C706258(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
  v27 = v58;
  v28 = v61;
  sub_21CB849C4();
  (*(v62 + 8))(v26, v28);
  sub_21C6EA794(v15, &qword_27CDF8DB8, &qword_21CBCA550);
  v30 = v60;
  v31 = (v27 + *(v60 + 36));
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED938, &qword_21CBA7D60) + 28);
  v33 = v67;
  v34 = v65;
  v35 = v68;
  (*(v67 + 104))(v65, *MEMORY[0x277CDF0D0], v68);
  sub_21CB84F74();
  (*(v33 + 8))(v34, v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED038, &unk_21CBA6000);
  (*(*(v36 - 8) + 56))(v31 + v32, 0, 1, v36);
  *v31 = v29;
  v37 = v71;
  sub_21CB81014();
  v38 = sub_21CB81004();
  v40 = v39;
  (*(v72 + 8))(v37, v73);
  v82 = v38;
  v83 = v40;
  v41 = sub_21CB1ECC8();
  v42 = sub_21C71F3FC();
  v43 = MEMORY[0x277D837D0];
  v44 = v63;
  v45 = v30;
  sub_21CB842F4();

  sub_21C789F28(v27);
  v46 = v76;
  v47 = v77;
  v48 = v78;
  (*(v77 + 104))(v76, *MEMORY[0x277CDDDC0], v78);
  v82 = v45;
  v83 = v43;
  v84 = v41;
  v85 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v64;
  v51 = v69;
  sub_21CB84684();
  (*(v47 + 8))(v46, v48);
  (*(v70 + 8))(v44, v51);
  v80 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF59E0, &qword_21CBBF080);
  v82 = v51;
  v83 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3600, &qword_21CBB7D10);
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC010, &qword_21CBAA950);
  v54 = sub_21C6EADEC(&qword_27CDF3640, &qword_27CDEC010, &qword_21CBAA950, MEMORY[0x277CDD7A8]);
  v82 = v53;
  v83 = v54;
  v55 = swift_getOpaqueTypeConformance2();
  v82 = v52;
  v83 = v55;
  swift_getOpaqueTypeConformance2();
  v56 = v74;
  sub_21CB84894();
  return (*(v75 + 8))(v50, v56);
}

uint64_t sub_21CB1D22C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF72F0, &qword_21CBCA670);
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v42 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v43 = v33 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8E28, &qword_21CBCA678);
  v36 = *(v38 - 8);
  v7 = v36;
  MEMORY[0x28223BE20](v38);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v33 - v11;
  v13 = sub_21CB81024();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v14 + 8))(v16, v13);
  v37 = sub_21CB85594();
  v18 = v17;
  v33[1] = v17;

  v45 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8E30, &qword_21CBCA680);
  sub_21CB1F1A4();
  v35 = v12;
  sub_21CB85054();
  v44 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  v19 = v43;
  sub_21CB85054();
  v20 = *(v7 + 16);
  v34 = v9;
  v21 = v12;
  v22 = v38;
  v20(v9, v21, v38);
  v24 = v39;
  v23 = v40;
  v25 = *(v39 + 16);
  v25(v42, v19, v40);
  v26 = v41;
  *v41 = v37;
  v26[1] = v18;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8E70, &unk_21CBCA6A8);
  v20(v27 + *(v28 + 48), v9, v22);
  v29 = v42;
  v25(v27 + *(v28 + 64), v42, v23);
  v30 = *(v24 + 8);

  v30(v43, v23);
  v31 = *(v36 + 8);
  v31(v35, v22);
  v30(v29, v23);
  v31(v34, v22);
}

uint64_t sub_21CB1D69C@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v2 = type metadata accessor for PMNeverSavedPasswordsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  *&v5 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v14 = v1;
  swift_getKeyPath(aH_111, v5);
  swift_getKeyPath(asc_21CBCA6E0);
  sub_21CB81DB4();

  v13 = type metadata accessor for PMNeverSavedPasswordsView;
  sub_21CB1F3F8(v1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMNeverSavedPasswordsView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_21CB1F104(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8E58, &qword_21CBCA690);
  sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730, MEMORY[0x277D83980]);
  sub_21CB1F2E0();
  sub_21C706258(&qword_27CDEB2C8, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
  v8 = v15;
  sub_21CB84FF4();
  sub_21CB1F3F8(v14, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v9 = swift_allocObject();
  sub_21CB1F104(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v6);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_21CB1F508;
  *(v10 + 24) = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8E30, &qword_21CBCA680);
  v12 = (v8 + *(result + 36));
  *v12 = sub_21C7A4968;
  v12[1] = v10;
  return result;
}

uint64_t sub_21CB1D970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = type metadata accessor for PMNeverSavedPasswordsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v20 - v7;
  v9 = sub_21CB81024();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v13 = sub_21CB81004();
  v15 = v14;
  (*(v10 + 8))(v12, v9);
  v20[2] = v13;
  v20[3] = v15;
  sub_21CB81ED4();
  v16 = sub_21CB81F14();
  (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  sub_21CB1F3F8(a1, v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMNeverSavedPasswordsView);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_21CB1F104(v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  sub_21C71F3FC();
  return sub_21CB84DC4();
}

uint64_t sub_21CB1DC14(void *a1)
{
  v2 = type metadata accessor for PMAccount(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_21CB823B4();
  v29 = *(v6 - 8);
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v28 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[1];
  swift_getKeyPath(aH_111, v7);
  swift_getKeyPath(asc_21CBCA6E0);
  v27 = v9;
  sub_21CB81DB4();

  v10 = v31;
  v11 = *(v31 + 16);
  if (v11)
  {
    v25 = v6;
    v26 = a1;
    v31 = MEMORY[0x277D84F90];
    sub_21C7B0C0C(0, v11, 0);
    v12 = v31;
    v13 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_21CB1F3F8(v13, v5, type metadata accessor for PMAccount);
      v15 = *v5;
      v16 = v5[1];

      sub_21C7D4A64(v5);
      v31 = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_21C7B0C0C((v17 > 1), v18 + 1, 1);
        v12 = v31;
      }

      *(v12 + 16) = v18 + 1;
      v19 = v12 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      v13 += v14;
      --v11;
    }

    while (v11);

    v6 = v25;
    a1 = v26;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  v20 = sub_21CB009AC(v12);

  v22 = a1[5];
  v31 = a1[4];
  v21 = v31;
  v32 = v22;
  v30 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8E20, &qword_21CBCA668);
  sub_21CB84D64();
  v31 = v21;
  v32 = v22;
  sub_21CB84D54();
  sub_21C832B9C(v30);

  v23 = v28;
  sub_21CB1C270(v28);
  sub_21CB823A4();
  return (*(v29 + 8))(v23, v6);
}

uint64_t sub_21CB1DF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v3 = sub_21CB83604();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC010, &qword_21CBAA950);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3600, &qword_21CBB7D10);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - v10;
  sub_21CB835D4();
  v15[4] = a1;
  type metadata accessor for PMPlatformRoleButton(0);
  sub_21C706258(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton, &unk_21CBA2ED8);
  sub_21CB82194();
  v12 = sub_21C6EADEC(&qword_27CDF3640, &qword_27CDEC010, &qword_21CBAA950, MEMORY[0x277CDD7A8]);
  MEMORY[0x21CF131E0](v7, v4, v12);
  (*(v5 + 8))(v7, v4);
  v15[6] = v4;
  v15[7] = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CF131E0](v11, v8, OpaqueTypeConformance2);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21CB1E1DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = *(a2 + 32);
  v19 = *(a2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8E20, &qword_21CBCA668);
  sub_21CB84D54();
  v5 = sub_21C8FFAE0(*a1, a1[1], v15);

  v6 = 0uLL;
  if (v5)
  {
    result = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v13 = PMAccount.userVisibleDomain.getter();
    if (v14)
    {
      v16 = v13;
      v17 = v14;
      sub_21CB84F74();

      v8 = v18;
      v9 = v19;
      v10 = v20;
      v11 = v21;
      result = swift_getKeyPath(byte_21CBCA710, v16, v17);
      v6 = xmmword_21CBCA4B0;
      v12 = 1;
    }

    else
    {
      result = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v6 = 0uLL;
    }
  }

  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = v10;
  *(a3 + 48) = v11;
  *(a3 + 56) = v6;
  *(a3 + 72) = v12;
  return result;
}

void sub_21CB1E31C(uint64_t a1, void *a2)
{
  v26 = a2;
  v2 = type metadata accessor for PMAccount(0);
  v22 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v21 = (&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_21CB80F34();
  v4 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v24 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8E78, &qword_21CBCA708);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  sub_21CB80F44();
  sub_21CB80F64();
  sub_21C706258(&qword_27CDF8E80, MEMORY[0x277CC9A28], MEMORY[0x277CC9A50]);
  v23 = (v4 + 8);
  while (1)
  {
    v9 = v24;
    sub_21CB85A64();
    sub_21C706258(&qword_27CDF8E88, MEMORY[0x277CC9A08], MEMORY[0x277CC9A10]);
    v10 = v25;
    v11 = sub_21CB85574();
    (*v23)(v9, v10);
    if (v11)
    {
      sub_21C6EA794(v8, &qword_27CDF8E78, &qword_21CBCA708);
      return;
    }

    v12 = sub_21CB85A94();
    v14 = *v13;
    v12(&v33, 0);
    sub_21CB85A74();
    swift_getKeyPath(aH_111);
    swift_getKeyPath(asc_21CBCA6E0);
    sub_21CB81DB4();

    if ((v14 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v14 >= *(v33 + 16))
    {
      goto LABEL_8;
    }

    v15 = v33 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v14;
    v16 = v21;
    sub_21CB1F3F8(v15, v21, type metadata accessor for PMAccount);

    v17 = *v16;
    v18 = v16[1];

    sub_21C7D4A64(v16);
    v20 = v26[5];
    v30 = v26[4];
    v19 = v30;
    v31 = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8E20, &qword_21CBCA668);
    sub_21CB84D54();
    sub_21CA94078(&v33, v17, v18);

    v28 = v19;
    v29 = v20;
    v27 = v32;
    sub_21CB84D64();
  }

  __break(1u);
LABEL_8:
  __break(1u);
}

uint64_t sub_21CB1E738@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a1;
  v3 = type metadata accessor for PMNeverSavedPasswordsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMPlatformRoleButton(0);
  sub_21CB81F04();
  sub_21CB81014();
  v11 = sub_21CB81004();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  sub_21CB1F3F8(v19, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMNeverSavedPasswordsView);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  result = sub_21CB1F104(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  *a2 = v11;
  a2[1] = v13;
  v17 = (a2 + *(v10 + 24));
  *v17 = sub_21CB1F168;
  v17[1] = v15;
  return result;
}

uint64_t sub_21CB1E938(uint64_t a1)
{
  v2 = sub_21CB823B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 40);
  v8[2] = *(a1 + 32);
  v8[3] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8E20, &qword_21CBCA668);
  sub_21CB84D54();
  sub_21C832B9C(v8[1]);

  sub_21CB1C270(v5);
  sub_21CB823A4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21CB1EA60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8D90, &qword_21CBCA528);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8D98, &unk_21CBCA530);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF59E0, &qword_21CBBF080);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8DA0, &qword_21CBCA540);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8DA8, &qword_21CBCA548);
  sub_21CB1ECC8();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3600, &qword_21CBB7D10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC010, &qword_21CBAA950);
  sub_21C6EADEC(&qword_27CDF3640, &qword_27CDEC010, &qword_21CBAA950, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_21CB82924();
}

uint64_t type metadata accessor for PMNeverSavedPasswordsView(uint64_t a1)
{
  result = qword_27CDF8DE8;
  if (!qword_27CDF8DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21CB1ECC8()
{
  result = qword_27CDF8DB0;
  if (!qword_27CDF8DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8DA8, &qword_21CBCA548);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8DB8, &qword_21CBCA550);
    sub_21CB829D4();
    sub_21CB1EE0C();
    sub_21C706258(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDED970, &qword_27CDED938, &qword_21CBA7D60, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8DB0);
  }

  return result;
}

unint64_t sub_21CB1EE0C()
{
  result = qword_27CDF8DC0;
  if (!qword_27CDF8DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8DB8, &qword_21CBCA550);
    sub_21CB1EEC4();
    sub_21C6EADEC(&qword_27CDEB288, &qword_27CDEB238, &qword_21CBA1570, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8DC0);
  }

  return result;
}

unint64_t sub_21CB1EEC4()
{
  result = qword_27CDF8DC8;
  if (!qword_27CDF8DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8DD0, &qword_21CBCA558);
    sub_21C6EADEC(&qword_27CDF8DD8, &qword_27CDF8DE0, &unk_21CBCA560, MEMORY[0x277CDE580]);
    sub_21C6EADEC(&qword_27CDEB278, &qword_27CDEB280, &unk_21CBA7D90, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8DC8);
  }

  return result;
}

void sub_21CB1EFEC(uint64_t a1)
{
  sub_21C705CFC(319);
  if (v1 <= 0x3F)
  {
    sub_21CB1F088(319);
    if (v2 <= 0x3F)
    {
      sub_21C721A6C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21CB1F088(uint64_t a1)
{
  if (!qword_27CDF8DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDECD30, &unk_21CBA5590);
    v1 = sub_21CB84D84();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF8DF8);
    }
  }
}

uint64_t sub_21CB1F104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMNeverSavedPasswordsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CB1F1A4()
{
  result = qword_27CDF8E38;
  if (!qword_27CDF8E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8E30, &qword_21CBCA680);
    sub_21CB1F25C();
    sub_21C6EADEC(&qword_27CDF8E60, &qword_27CDF8E68, &unk_21CBCA698, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8E38);
  }

  return result;
}

unint64_t sub_21CB1F25C()
{
  result = qword_27CDF8E40;
  if (!qword_27CDF8E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8E48, &qword_21CBCA688);
    sub_21CB1F2E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8E40);
  }

  return result;
}

unint64_t sub_21CB1F2E0()
{
  result = qword_27CDF8E50;
  if (!qword_27CDF8E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8E58, &qword_21CBCA690);
    sub_21C85872C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8E50);
  }

  return result;
}

uint64_t sub_21CB1F384(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMNeverSavedPasswordsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21CB1F3F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB1F488@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMNeverSavedPasswordsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21CB1E1DC(a1, v6, a2);
}

void sub_21CB1F508(uint64_t a1)
{
  v3 = *(type metadata accessor for PMNeverSavedPasswordsView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  sub_21CB1E31C(a1, v4);
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI40PMSetUpVerificationCodeAlertViewModifierV28OpenQRCodeImageHandlingError33_178D9B58BE388571F3D2DB04122B186DLLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21CB1F5F8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21CB1F64C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21CB1F71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v5 = a4(319, a2, a3);
  if (v6 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v5;
}

void sub_21CB1F7C4(uint64_t a1)
{
  sub_21C722688(319, &qword_27CDEE2A8, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PMSetUpVerificationCodeAlertPurpose(319);
    if (v2 <= 0x3F)
    {
      sub_21C7226D8();
      if (v3 <= 0x3F)
      {
        sub_21C722688(319, &qword_27CDF3598, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_21C722688(319, &qword_27CDF4000, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_21CB1F934(319);
            if (v6 <= 0x3F)
            {
              sub_21C70DC98(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_21CB1F934(uint64_t a1)
{
  if (!qword_27CDF8EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1478, &qword_21CBB1660);
    v1 = sub_21CB84D84();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF8EC0);
    }
  }
}

uint64_t sub_21CB1F9B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a1;
  v117 = a2;
  v3 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0);
  v4 = v3 - 8;
  v118 = *(v3 - 8);
  v127 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v5;
  v7 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8EC8, &qword_21CBCA908);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v91 - v9;
  v11 = sub_21CB81024();
  v128 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8ED0, &qword_21CBCA910);
  v109 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v121 = &v91 - v15;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8ED8, &qword_21CBCA918);
  v112 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v120 = &v91 - v16;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8EE0, &qword_21CBCA920);
  v114 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v123 = &v91 - v17;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8EE8, &unk_21CBCA928);
  v116 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v124 = &v91 - v18;
  v119 = v14;
  sub_21CB81014();
  v19 = sub_21CB81004();
  v21 = v20;
  v22 = *(v12 + 8);
  v129 = v12 + 8;
  v130 = v22;
  v22(v14, v11);
  v135 = v19;
  v136 = v21;
  v122 = sub_21C71F3FC();
  v101 = sub_21CB84054();
  v100 = v23;
  v95 = v24;
  v96 = v25;
  v26 = v2;
  v27 = *(v2 + 8);
  OpaqueTypeConformance2 = *v2;
  v98 = v27;
  v97 = *(v2 + 16);
  v28 = v2 + *(v4 + 28);
  v92 = v10;
  sub_21CB24280(v28, v10, type metadata accessor for PMSetUpVerificationCodeAlertPurpose);
  v29 = type metadata accessor for PMSetUpVerificationCodeAlertPurpose(0);
  (*(*(v29 - 8) + 56))(v10, 0, 1, v29);
  v106 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier;
  sub_21CB24280(v2, v7, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  v30 = *(v118 + 80);
  v107 = v6;
  v31 = (v30 + 16) & ~v30;
  v105 = v30;
  v32 = swift_allocObject();
  v104 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier;
  sub_21CB24EE8(v7, v32 + v31, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  v102 = v7;
  sub_21CB24280(v2, v7, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  v103 = v31;
  v33 = swift_allocObject();
  sub_21CB24EE8(v7, v33 + v31, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8EF0, &qword_21CBCA938);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8EF8, &unk_21CBCA940);
  v94 = sub_21C6EADEC(&qword_27CDF8F00, &qword_27CDF8EF0, &qword_21CBCA938, MEMORY[0x277CE04B0]);
  v110 = MEMORY[0x277CE14C0];
  v118 = sub_21C6EADEC(&qword_27CDF8F08, &qword_27CDF8EF8, &unk_21CBCA940, MEMORY[0x277CE14C0]);
  LOBYTE(v6) = v95;
  v34 = v101;
  v35 = v100;
  v36 = v92;
  sub_21CB84704();
  sub_21C74A72C(v34, v35, v6 & 1);

  sub_21C6EA794(v36, &qword_27CDF8EC8, &qword_21CBCA908);

  v37 = v119;
  sub_21CB81014();
  v38 = sub_21CB81004();
  v40 = v39;
  v130(v37, v128);
  v135 = v38;
  v136 = v40;
  v41 = sub_21CB84054();
  v43 = v42;
  LOBYTE(v31) = v44;
  v100 = v45;
  v46 = v26 + v127[10];
  v47 = *v46;
  v48 = *(v46 + 8);
  LOBYTE(v145) = v47;
  v146 = v48;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  v97 = v137;
  v125 = v26;
  v134 = v26;
  v133 = v26;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC150, &unk_21CBA4F60);
  v135 = v91;
  v136 = v93;
  v137 = MEMORY[0x277CE0BD8];
  v138 = v29;
  v139 = v94;
  v140 = v118;
  v141 = MEMORY[0x277CE0BC8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v118 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  v50 = sub_21C7FC578();
  v51 = v49;
  v101 = v49;
  v52 = v108;
  v53 = v121;
  sub_21CB84744();

  sub_21C74A72C(v41, v43, v31 & 1);

  (*(v109 + 8))(v53, v52);
  v54 = v127;
  v55 = v125;
  v56 = v125 + v127[12];
  v57 = *v56;
  v58 = *(v56 + 8);
  LOBYTE(v145) = v57;
  v146 = v58;
  sub_21CB84D74();
  v59 = v102;
  sub_21CB24280(v55, v102, v106);
  v60 = v103;
  v61 = swift_allocObject();
  sub_21CB24EE8(v59, v61 + v60, v104);
  v121 = type metadata accessor for PMOtpauthQRCodeScannerView(0);
  v135 = v52;
  v136 = v51;
  v137 = v98;
  v138 = OpaqueTypeConformance2;
  v139 = v118;
  v140 = v50;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = sub_21CB25158(&qword_27CDF8F10, type metadata accessor for PMOtpauthQRCodeScannerView, &unk_21CBB6B9C);
  v64 = v111;
  v65 = v120;
  sub_21CB847B4();

  (*(v112 + 8))(v65, v64);
  v66 = v119;
  sub_21CB81014();
  v67 = sub_21CB81004();
  v69 = v68;
  v130(v66, v128);
  v145 = v67;
  v146 = v69;
  v70 = v54[14];
  v71 = v125;
  v72 = (v125 + v70);
  v73 = *v72;
  v74 = *(v72 + 1);
  v143 = v73;
  v144 = v74;
  sub_21CB84D74();
  v132 = v71;
  v135 = v64;
  v136 = v121;
  v137 = v62;
  v138 = v63;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = v122;
  v77 = v75;
  v78 = v101;
  v79 = v113;
  v80 = v123;
  sub_21CB84754();

  (*(v114 + 8))(v80, v79);
  sub_21CB81014();
  v81 = sub_21CB81004();
  v83 = v82;
  v123 = v82;
  v130(v66, v128);
  v145 = v81;
  v146 = v83;
  v84 = v125;
  v85 = v125 + v127[13];
  v86 = *v85;
  v87 = *(v85 + 8);
  v143 = v86;
  v144 = v87;
  sub_21CB84D74();
  LODWORD(v130) = v137;
  v131 = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F18, &qword_21CBCA950);
  v135 = v79;
  v136 = MEMORY[0x277D837D0];
  v137 = v78;
  v138 = MEMORY[0x277CE0BD8];
  v139 = v77;
  v140 = v76;
  v141 = v118;
  v142 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  sub_21C6EADEC(&qword_27CDF8F20, &qword_27CDF8F18, &qword_21CBCA950, v110);
  v88 = v115;
  v89 = v124;
  sub_21CB84754();

  return (*(v116 + 8))(v89, v88);
}

uint64_t sub_21CB209F0@<X0>(uint64_t a2@<X8>)
{
  v81 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v2 - 8);
  v78 = &v66 - v3;
  v4 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v66 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC948, &qword_21CBA4E30);
  MEMORY[0x28223BE20](v12 - 8);
  v80 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v79 = &v66 - v15;
  MEMORY[0x28223BE20](v16);
  v77 = &v66 - v17;
  MEMORY[0x28223BE20](v18);
  v85 = &v66 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v66 - v21;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F38, &qword_21CBCA9A8);
  MEMORY[0x28223BE20](v68);
  v76 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v66 - v25;
  MEMORY[0x28223BE20](v27);
  v87 = &v66 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F40, &unk_21CBCA9B0);
  MEMORY[0x28223BE20](v29 - 8);
  v84 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v83 = &v66 - v32;
  v33 = v86;
  sub_21CB234C4(&v66 - v32);
  sub_21CB24280(v33, &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  v34 = *(v6 + 80);
  v35 = (v34 + 16) & ~v34;
  v82 = v34;
  v72 = v35 + v7;
  v36 = swift_allocObject();
  v73 = v35;
  v69 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB24EE8(v69, v36 + v35, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  sub_21CB84DA4();
  v71 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  sub_21CB845C4();
  v37 = *(v9 + 8);
  v74 = v9 + 8;
  v75 = v8;
  v70 = v37;
  v37(v11, v8);
  v38 = v86;
  v39 = (v86 + *(v5 + 36));
  v40 = *v39;
  v41 = *(v39 + 2);
  v88 = v40;
  v89 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
  sub_21CB84D54();
  v42 = objc_allocWithZone(MEMORY[0x277D49B78]);
  v43 = sub_21CB85584();

  v44 = [v42 initWithUserProvidedString_];

  if (v44)
  {
  }

  v45 = v44 == 0;
  KeyPath = swift_getKeyPath(byte_21CBCA9C0);
  v47 = swift_allocObject();
  *(v47 + 16) = v45;
  sub_21C716934(v22, v26, &qword_27CDEC948, &qword_21CBA4E30);
  v48 = &v26[*(v68 + 9)];
  *v48 = KeyPath;
  v48[1] = sub_21C735744;
  v48[2] = v47;
  sub_21C716934(v26, v87, &qword_27CDF8F38, &qword_21CBCA9A8);
  v68 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier;
  v49 = v69;
  sub_21CB24280(v38, v69, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  v50 = swift_allocObject();
  v67 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier;
  v51 = v73;
  sub_21CB24EE8(v49, v50 + v73, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  sub_21CB84DA4();
  v52 = v75;
  sub_21CB845C4();
  v53 = v70;
  v70(v11, v52);
  v54 = v78;
  sub_21CB81EF4();
  v55 = sub_21CB81F14();
  (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
  sub_21CB24280(v86, v49, v68);
  v56 = swift_allocObject();
  sub_21CB24EE8(v49, v56 + v51, v67);
  sub_21CB84D94();
  v57 = v77;
  sub_21CB845C4();
  v53(v11, v52);
  v58 = v84;
  sub_21C78A454(v83, v84);
  v59 = v76;
  sub_21C6EDBAC(v87, v76, &qword_27CDF8F38, &qword_21CBCA9A8);
  v60 = v85;
  v61 = v79;
  sub_21C6EDBAC(v85, v79, &qword_27CDEC948, &qword_21CBA4E30);
  v62 = v80;
  sub_21C6EDBAC(v57, v80, &qword_27CDEC948, &qword_21CBA4E30);
  v63 = v81;
  sub_21C78A454(v58, v81);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F48, &qword_21CBCA9F0);
  sub_21C6EDBAC(v59, v63 + v64[12], &qword_27CDF8F38, &qword_21CBCA9A8);
  sub_21C6EDBAC(v61, v63 + v64[16], &qword_27CDEC948, &qword_21CBA4E30);
  sub_21C6EDBAC(v62, v63 + v64[20], &qword_27CDEC948, &qword_21CBA4E30);
  sub_21C6EA794(v57, &qword_27CDEC948, &qword_21CBA4E30);
  sub_21C6EA794(v60, &qword_27CDEC948, &qword_21CBA4E30);
  sub_21C6EA794(v87, &qword_27CDF8F38, &qword_21CBCA9A8);
  sub_21C78A4C4(v83);
  sub_21C6EA794(v62, &qword_27CDEC948, &qword_21CBA4E30);
  sub_21C6EA794(v61, &qword_27CDEC948, &qword_21CBA4E30);
  sub_21C6EA794(v59, &qword_27CDF8F38, &qword_21CBCA9A8);
  return sub_21C78A4C4(v84);
}

uint64_t sub_21CB213A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v57 = a1;
  v61 = a2;
  v2 = sub_21CB81024();
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x28223BE20](v2);
  v58 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v54);
  v55 = (&v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for PMAccount(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v56 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMSetUpVerificationCodeAlertPurpose(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v54 - v16;
  v18 = *(v6 + 56);
  v19 = 1;
  v18(&v54 - v16, 1, 1, v5, v15);
  sub_21C6EA794(v17, &unk_27CDEBE60, &unk_21CB9FF40);
  sub_21CB24280(v57, v10, type metadata accessor for PMSetUpVerificationCodeAlertPurpose);
  v20 = *(v6 + 48);
  if (v20(v10, 1, v5) != 1)
  {
    sub_21CB24EE8(v10, v17, type metadata accessor for PMAccount);
    v19 = 0;
  }

  (v18)(v17, v19, 1, v5);
  sub_21C6EDBAC(v17, v13, &unk_27CDEBE60, &unk_21CB9FF40);
  if (v20(v13, 1, v5) == 1)
  {
    sub_21C6EA794(v13, &unk_27CDEBE60, &unk_21CB9FF40);
LABEL_11:
    v34 = v58;
    sub_21CB81014();
    v35 = sub_21CB81004();
    v37 = v36;
    (*(v59 + 8))(v34, v60);
    v62 = v35;
    v63 = v37;
    sub_21C71F3FC();
    v38 = sub_21CB84054();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    goto LABEL_12;
  }

  v21 = v56;
  sub_21CB24EE8(v13, v56, type metadata accessor for PMAccount);
  v22 = v55;
  sub_21CB24280(v21 + *(v5 + 24), v55, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CB24F50(v22, type metadata accessor for PMAccount.Storage);
LABEL_10:
    sub_21CB24F50(v21, type metadata accessor for PMAccount);
    goto LABEL_11;
  }

  v23 = *v22;
  v24 = [v23 hasValidWebsite];

  if (!v24)
  {
    goto LABEL_10;
  }

  v25 = PMAccount.userVisibleDomain.getter();
  if (v26)
  {
    v27 = v25;
    v28 = v26;
    v29 = v58;
    sub_21CB81014();
    sub_21CB81004();
    (*(v59 + 8))(v29, v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_21CBA0690;
    *(v30 + 56) = MEMORY[0x277D837D0];
    *(v30 + 64) = sub_21C7C0050();
    *(v30 + 32) = v27;
    *(v30 + 40) = v28;
    v31 = sub_21CB85594();
    v33 = v32;

    v62 = v31;
    v63 = v33;
  }

  else
  {
    v47 = v58;
    sub_21CB81014();
    v48 = sub_21CB81004();
    v50 = v49;
    (*(v59 + 8))(v47, v60);
    v62 = v48;
    v63 = v50;
  }

  sub_21C71F3FC();
  v38 = sub_21CB84054();
  v40 = v51;
  v42 = v52;
  v44 = v53;
  sub_21CB24F50(v21, type metadata accessor for PMAccount);
LABEL_12:
  result = sub_21C6EA794(v17, &unk_27CDEBE60, &unk_21CB9FF40);
  v46 = v61;
  *v61 = v38;
  v46[1] = v40;
  *(v46 + 16) = v42 & 1;
  v46[3] = v44;
  return result;
}

double sub_21CB219FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(a1 + *(type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F30, &qword_21CBCA9A0);
  sub_21CB84D54();
  if (v13 >= 3)
  {
    v3 = [v13 localizedDescription];
    v4 = sub_21CB855C4();
    v6 = v5;

    *&v14 = v4;
    *(&v14 + 1) = v6;
    sub_21C71F3FC();
    v7 = sub_21CB84054();
    v9 = v8;
    v11 = v10 & 1;
    sub_21C79B058(v7, v8, v10 & 1);

    sub_21C79B058(v7, v9, v11);

    sub_21CB83494();
    sub_21CB24EC8(v13);
    sub_21C74A72C(v7, v9, v11);

    sub_21C74A72C(v7, v9, v11);
  }

  else
  {
    sub_21CB83134();
    sub_21CB84034();
    sub_21CB83494();
  }

  result = *&v14;
  *a2 = v14;
  *(a2 + 16) = v15;
  *(a2 + 32) = v16;
  return result;
}

uint64_t sub_21CB21BDC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(void *a1)@<X8>)
{
  v4 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_21CB24280(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_21CB24EE8(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  *a2 = sub_21CB24508;
  a2[1] = v8;
  v9 = *(type metadata accessor for PMOtpauthQRCodeScannerView(0) + 20);
  *(a2 + v9) = swift_getKeyPath(a8_46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21CB21D3C(void *a1, uint64_t a2)
{
  v56 = sub_21CB853D4();
  v58 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_21CB85404();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0);
  v51 = *(v6 - 1);
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v6);
  v52 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1610, &unk_21CBB1810);
  MEMORY[0x28223BE20](v62);
  v9 = (&v47 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC90, &qword_21CBA0160);
  MEMORY[0x28223BE20](v10 - 8);
  v60 = (&v47 - v11);
  v12 = sub_21CB80BE4();
  v59 = *(v12 - 8);
  v13 = *(v59 + 64);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - v15;
  v17 = objc_allocWithZone(MEMORY[0x277D49B78]);
  v61 = a1;
  v18 = sub_21CB80B74();
  v19 = [v17 initWithOTPAuthURL_];

  v20 = (a2 + v6[10]);
  v21 = *v20;
  v22 = *(v20 + 1);
  if (v19)
  {
    LOBYTE(aBlock) = v21;
    v64 = v22;
    v69 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
    sub_21CB84D64();
    v23 = *(a2 + v6[6]);
    *v9 = v19;
    swift_storeEnumTagMultiPayload();
    v24 = v19;
    v23(v9);

    return sub_21C6EA794(v9, &qword_27CDF1610, &unk_21CBB1810);
  }

  v48 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v7;
  v50 = v16;
  v26 = v59;
  v62 = v12;
  LOBYTE(aBlock) = v21;
  v64 = v22;
  v69 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D64();
  v27 = v60;
  sub_21C9F5568(v61, v60);
  v28 = type metadata accessor for PMOpenURLHandler.Action(0);
  if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
  {
    sub_21C6EA794(v27, &qword_27CDEAC90, &qword_21CBA0160);
    v29 = a2;
  }

  else
  {
    v29 = a2;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v30 = v26;
      v31 = *(v26 + 32);
      v32 = v50;
      v33 = v62;
      v31(v50, v27, v62);
      sub_21C8582C0();
      v61 = sub_21CB85CF4();
      v34 = v52;
      sub_21CB24280(v29, v52, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
      v35 = v48;
      (*(v30 + 16))(v48, v32, v33);
      v36 = (*(v51 + 80) + 16) & ~*(v51 + 80);
      v37 = (v49 + *(v30 + 80) + v36) & ~*(v30 + 80);
      v38 = swift_allocObject();
      sub_21CB24EE8(v34, v38 + v36, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
      v31((v38 + v37), v35, v33);
      v67 = sub_21CB24DD0;
      v68 = v38;
      aBlock = MEMORY[0x277D85DD0];
      v64 = 1107296256;
      v65 = sub_21C6ECBD4;
      v66 = &block_descriptor_41;
      v39 = _Block_copy(&aBlock);

      v40 = v53;
      sub_21CB853E4();
      aBlock = MEMORY[0x277D84F90];
      sub_21CB25158(&qword_27CDEAF48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
      sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0, MEMORY[0x277D83970]);
      v41 = v54;
      v42 = v56;
      sub_21CB85F14();
      v43 = v61;
      MEMORY[0x21CF15800](0, v40, v41, v39);
      _Block_release(v39);

      (*(v58 + 8))(v41, v42);
      (*(v55 + 8))(v40, v57);
      return (*(v30 + 8))(v50, v33);
    }

    sub_21CB24F50(v27, type metadata accessor for PMOpenURLHandler.Action);
  }

  v44 = v29 + v6[12];
  v45 = *v44;
  v46 = *(v44 + 8);
  LOBYTE(aBlock) = v45;
  v64 = v46;
  v69 = 1;
  return sub_21CB84D64();
}

uint64_t sub_21CB224D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1610, &unk_21CBB1810);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = *(a1 + *(type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0) + 24));
  v8 = sub_21CB80BE4();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, a2, v8);
  (*(v9 + 56))(v6, 0, 3, v8);
  swift_storeEnumTagMultiPayload();
  v7(v6);
  return sub_21C6EA794(v6, &qword_27CDF1610, &unk_21CBB1810);
}

uint64_t sub_21CB22628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_21CB24280(a1, &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_21CB24EE8(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  return sub_21CB84DA4();
}

uint64_t sub_21CB2276C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1610, &unk_21CBB1810);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v7 = *(a1 + *(type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0) + 24));
  v8 = sub_21CB80BE4();
  (*(*(v8 - 8) + 56))(v6, a2, 3, v8);
  swift_storeEnumTagMultiPayload();
  v7(v6);
  return sub_21C6EA794(v6, &qword_27CDF1610, &unk_21CBB1810);
}

uint64_t sub_21CB22888@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21CB229B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  v62 = a2;
  v2 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0);
  v64 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v65 = v3;
  v59 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB81024();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v56 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v61 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v51 - v13;
  v15 = sub_21CB80BE4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v55 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v51 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B8, &qword_21CBA3EB0);
  MEMORY[0x28223BE20](v21 - 8);
  v60 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v51 - v24;
  sub_21CB855C4();
  sub_21CB80BD4();

  v26 = (*(v16 + 48))(v14, 1, v15);
  v63 = v25;
  if (v26 == 1)
  {
    sub_21C6EA794(v14, &qword_27CDEC300, &qword_21CBA3ED0);
    v27 = 1;
    v28 = v11;
    v29 = v59;
  }

  else
  {
    v53 = v11;
    v54 = v7;
    v52 = v6;
    v30 = *(v16 + 32);
    v31 = v20;
    v30(v20, v14, v15);
    v32 = v56;
    sub_21CB81014();
    v33 = sub_21CB81004();
    v35 = v34;
    (*(v57 + 8))(v32, v58);
    v67 = v33;
    v68 = v35;
    v36 = v59;
    sub_21CB24280(v66, v59, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
    v37 = v55;
    (*(v16 + 16))(v55, v31, v15);
    v38 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v39 = (v65 + *(v16 + 80) + v38) & ~*(v16 + 80);
    v40 = swift_allocObject();
    sub_21CB24EE8(v36, v40 + v38, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
    v30((v40 + v39), v37, v15);
    v6 = v52;
    v25 = v63;
    v7 = v54;
    sub_21C71F3FC();
    v28 = v53;
    sub_21CB84DE4();
    (*(v16 + 8))(v31, v15);
    (*(v7 + 32))(v25, v28, v6);
    v27 = 0;
    v29 = v36;
  }

  (*(v7 + 56))(v25, v27, 1, v6);
  sub_21CB24280(v66, v29, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  v41 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v42 = swift_allocObject();
  sub_21CB24EE8(v29, v42 + v41, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  sub_21CB84DA4();
  v43 = v25;
  v44 = v60;
  sub_21C6EDBAC(v43, v60, &qword_27CDEC2B8, &qword_21CBA3EB0);
  v45 = *(v7 + 16);
  v46 = v61;
  v45(v61, v28, v6);
  v47 = v62;
  sub_21C6EDBAC(v44, v62, &qword_27CDEC2B8, &qword_21CBA3EB0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F28, &unk_21CBCA958);
  v45((v47 + *(v48 + 48)), v46, v6);
  v49 = *(v7 + 8);
  v49(v28, v6);
  sub_21C6EA794(v63, &qword_27CDEC2B8, &qword_21CBA3EB0);
  v49(v46, v6);
  return sub_21C6EA794(v44, &qword_27CDEC2B8, &qword_21CBA3EB0);
}

uint64_t sub_21CB230F0(uint64_t a1, uint64_t a2)
{
  v16[1] = a2;
  v16[0] = sub_21CB82F84();
  v3 = *(v16[0] - 8);
  MEMORY[0x28223BE20](v16[0]);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  MEMORY[0x28223BE20](v6);
  v8 = v16 - v7;
  v9 = sub_21CB82484();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0);
  sub_21C6EDBAC(a1 + *(v13 + 52), v8, &qword_27CDEBDA0, &qword_21CBA0550);
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

    (*(v3 + 8))(v5, v16[0]);
  }

  sub_21CB82454();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_21CB23398@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21CB234C4@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v1 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0);
  v2 = v1 - 8;
  v69 = *(v1 - 8);
  v68 = *(v69 + 64);
  MEMORY[0x28223BE20](v1);
  v67 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE080, &qword_21CBD0220);
  MEMORY[0x28223BE20](v4 - 8);
  v65 = &v55 - v5;
  v62 = sub_21CB83D74();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v57 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v8 = &v55 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F50, &qword_21CBCA9F8);
  MEMORY[0x28223BE20](v59);
  v10 = &v55 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F58, &qword_21CBCAA00);
  v12 = *(v11 - 8);
  v63 = v11;
  v64 = v12;
  MEMORY[0x28223BE20](v11);
  v58 = &v55 - v13;
  v14 = sub_21CB81024();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  sub_21CB81014();
  sub_21CB81014();
  v21 = sub_21CB80FF4();
  v23 = v22;
  v24 = *(v15 + 8);
  v24(v17, v14);
  v24(v20, v14);
  v75 = v21;
  v76 = v23;
  sub_21C71F3FC();
  v25 = sub_21CB84054();
  v27 = v26;
  LOBYTE(v17) = v28;
  v30 = v29;
  v31 = (v70 + *(v2 + 36));
  v32 = *v31;
  v33 = *(v31 + 2);
  v77 = v32;
  v78 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
  sub_21CB84D74();
  LOBYTE(v17) = v17 & 1;
  v71 = v25;
  v72 = v27;
  v73 = v17;
  v74 = v30;
  sub_21C79B058(v25, v27, v17);

  sub_21CB852F4();
  sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0, MEMORY[0x277CDF1A8]);
  v34 = v56;
  sub_21CB845C4();
  (*(v57 + 8))(v8, v34);
  KeyPath = swift_getKeyPath(byte_21CBCAA08);
  v36 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFD0, &qword_21CBA9260) + 36)];
  *v36 = KeyPath;
  v36[8] = 1;
  sub_21CB83D94();
  v37 = v61;
  v38 = v60;
  v39 = v62;
  (*(v61 + 104))(v60, *MEMORY[0x277CE0948], v62);
  v40 = sub_21CB83D84();

  (*(v37 + 8))(v38, v39);
  v41 = swift_getKeyPath(aX_86);
  v42 = v59;
  v43 = &v10[*(v59 + 36)];
  *v43 = v41;
  v43[1] = v40;
  v44 = sub_21CB250A0();
  v45 = v58;
  MEMORY[0x21CF14040](1, v42, v44);
  sub_21C6EA794(v10, &qword_27CDF8F50, &qword_21CBCA9F8);
  v46 = v65;
  sub_21CB83A84();
  v47 = sub_21CB83A94();
  (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  v75 = v42;
  v76 = v44;
  swift_getOpaqueTypeConformance2();
  v48 = v66;
  v49 = v63;
  sub_21CB84664();
  sub_21C74A72C(v25, v27, v17);

  sub_21C6EA794(v46, &qword_27CDEE080, &qword_21CBD0220);
  (*(v64 + 8))(v45, v49);
  v50 = v67;
  sub_21CB24280(v70, v67, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  v51 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v52 = swift_allocObject();
  sub_21CB24EE8(v50, v52 + v51, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F40, &unk_21CBCA9B0);
  v54 = (v48 + *(result + 36));
  *v54 = 0;
  v54[1] = 0;
  v54[2] = sub_21CB251A0;
  v54[3] = v52;
  return result;
}

uint64_t sub_21CB23D00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1610, &unk_21CBB1810);
  MEMORY[0x28223BE20](v2);
  v4 = &v16[-v3];
  v5 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0);
  v6 = (a1 + *(v5 + 28));
  v7 = *v6;
  v8 = *(v6 + 2);
  *&v16[24] = v7;
  v17 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
  sub_21CB84D54();
  v9 = objc_allocWithZone(MEMORY[0x277D49B78]);
  v10 = sub_21CB85584();

  v11 = [v9 initWithUserProvidedString_];

  v12 = *(a1 + *(v5 + 24));
  if (v11)
  {
    *v4 = v11;
    swift_storeEnumTagMultiPayload();
    v13 = v11;
    v12(v4);
  }

  else
  {
    v14 = sub_21CB80BE4();
    (*(*(v14 - 8) + 56))(v4, 2, 3, v14);
    swift_storeEnumTagMultiPayload();
    v12(v4);
  }

  return sub_21C6EA794(v4, &qword_27CDF1610, &unk_21CBB1810);
}

uint64_t sub_21CB23EF8(uint64_t a1)
{
  [objc_opt_self() authorizationStatusForMediaType_];
  type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

uint64_t sub_21CB23FA4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21CB240E4@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v8 = sub_21CB81004();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v15[0] = v8;
  v15[1] = v10;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a3 = result;
  *(a3 + 8) = v12;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v14;
  return result;
}

uint64_t sub_21CB24208(uint64_t a1)
{
  type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
  return sub_21CB84D64();
}

uint64_t sub_21CB24280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB24424@<X0>(uint64_t (**a1)(void *a1)@<X8>)
{
  v3 = *(type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CB21BDC(v4, a1);
}

uint64_t sub_21CB24508(void *a1)
{
  v3 = *(type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CB21D3C(a1, v4);
}

uint64_t objectdestroy_41Tm()
{
  v1 = v0;
  v2 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = sub_21CB80BE4();
  v7 = *(v6 - 8);
  v54 = *(v7 + 80);
  v55 = *(v7 + 64);
  v8 = v0 + v4;

  v9 = v8 + v2[5];
  v10 = type metadata accessor for PMAccount(0);
  if ((*(*(v10 - 1) + 48))(v9, 1, v10))
  {
    goto LABEL_25;
  }

  v50 = v5;
  v51 = (v3 + 16) & ~v3;
  v52 = v6;

  v53 = v9;
  v11 = v9 + v10[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  v49 = v7;
  if (EnumCaseMultiPayload != 1)
  {

    v35 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v36 = v35[7];
    v37 = sub_21CB85C04();
    v38 = *(v37 - 8);
    if (!(*(v38 + 48))(v11 + v36, 1, v37))
    {
      (*(v38 + 8))(v11 + v36, v37);
    }

    v39 = v35[8];
    v40 = sub_21CB85BB4();
    v41 = *(v40 - 8);
    if (!(*(v41 + 48))(v11 + v39, 1, v40))
    {
      (*(v41 + 8))(v11 + v39, v40);
    }

    v16 = v35[9];
    v17 = sub_21CB85C44();
    v18 = *(v17 - 8);
    v7 = v49;
    if ((*(v18 + 48))(v11 + v16, 1, v17))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v13 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v14 = *(v13 + 28);
  v15 = sub_21CB85B74();
  (*(*(v15 - 8) + 8))(v11 + v14, v15);

  v16 = *(v13 + 36);
  v17 = sub_21CB85C44();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v11 + v16, 1, v17))
  {
LABEL_4:
    (*(v18 + 8))(v11 + v16, v17);
  }

LABEL_5:
  v19 = (v53 + v10[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = v3;

    v20 = type metadata accessor for PMAccount.MockData(0);
    v21 = v20[8];
    v22 = sub_21CB80DD4();
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    if (!v24(v19 + v21, 1, v22))
    {
      (*(v23 + 8))(v19 + v21, v22);
    }

    v25 = v20[12];
    if (!v24(v19 + v25, 1, v22))
    {
      (*(v23 + 8))(v19 + v25, v22);
    }

    v26 = v20[15];
    v27 = sub_21CB85BB4();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v19 + v26, 1, v27))
    {
      (*(v28 + 8))(v19 + v26, v27);
    }

    v29 = v20[16];
    v30 = sub_21CB85C04();
    v31 = *(v30 - 8);
    v3 = v48;
    if (!(*(v31 + 48))(v19 + v29, 1, v30))
    {
      (*(v31 + 8))(v19 + v29, v30);
    }

    v32 = v20[18];
    v33 = sub_21CB85C44();
    v34 = *(v33 - 8);
    v7 = v49;
    if (!(*(v34 + 48))(v19 + v32, 1, v33))
    {
      (*(v34 + 8))(v19 + v32, v33);
    }
  }

  else
  {
  }

  v6 = v52;
  v42 = v53 + v10[7];
  v5 = v50;
  v4 = v51;
  if (*(v42 + 8))
  {
  }

LABEL_25:

  v43 = *(v8 + v2[9]);
  if (v43 >= 3)
  {
  }

  v44 = v2[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = sub_21CB82484();
    (*(*(v45 - 8) + 8))(v8 + v44, v45);
  }

  else
  {
  }

  v46 = (v4 + v5 + v54) & ~v54;
  (*(v7 + 8))(v1 + v46, v6);

  return MEMORY[0x2821FE8E8](v1, v46 + v55, v3 | v54 | 7);
}

uint64_t sub_21CB24DE8(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_21CB80BE4() - 8);
  v6 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return a1(v1 + v3, v6);
}

void sub_21CB24EC8(id result)
{
  if (result != 2)
  {
    sub_21CB24ED8(result);
  }
}

void sub_21CB24ED8(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_21CB24EE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB24F50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CB2504C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  sub_21C79B058(v2, v3, v4);
}

unint64_t sub_21CB250A0()
{
  result = qword_27CDF8F60;
  if (!qword_27CDF8F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8F50, &qword_21CBCA9F8);
    sub_21C853080();
    sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8F60);
  }

  return result;
}

uint64_t sub_21CB25158(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CB251B8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21CB25238(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_21CB25294(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21CB25304(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_21CB25ACC(v5, v7) & 1;
}

uint64_t sub_21CB2537C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21CB84BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_21CB85214();
  a2[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F68, &qword_21CBCAB50);
  sub_21CB25650(a1, (a2 + *(v9 + 44)));
  v10 = sub_21CB85244();
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F70, &qword_21CBCAB58) + 36));
  *v11 = v10;
  v11[1] = a1;

  v12 = sub_21CB85214();
  v14 = v13;
  sub_21CB84BB4();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v15 = sub_21CB84C64();

  (*(v5 + 8))(v7, v4);
  sub_21CB85384();
  v17 = v16;
  v19 = v18;
  LOBYTE(v40[0]) = 1;
  v20 = sub_21CB84AD4();
  KeyPath = swift_getKeyPath(asc_21CBCAB60);
  v35 = v15;
  LOWORD(v36[0]) = 1;
  *(v36 + 2) = v33;
  WORD3(v36[0]) = v34;
  __asm { FMOV            V0.2D, #0.5 }

  v31 = _Q0;
  *(v36 + 8) = _Q0;
  *(&v36[1] + 1) = v17;
  *&v37 = v19;
  *(&v37 + 1) = KeyPath;
  *&v38 = v20;
  *(&v38 + 1) = v12;
  v39 = v14;
  v27 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F78, &qword_21CBCAB90) + 36);
  v28 = v37;
  *(v27 + 2) = v36[1];
  *(v27 + 3) = v28;
  *(v27 + 4) = v38;
  *(v27 + 10) = v39;
  v29 = v36[0];
  *v27 = v35;
  *(v27 + 1) = v29;
  v40[0] = v15;
  v40[1] = 0;
  v41 = 1;
  v43 = v34;
  v42 = v33;
  v44 = v31;
  v45 = v17;
  v46 = v19;
  v47 = KeyPath;
  v48 = v20;
  v49 = v12;
  v50 = v14;
  sub_21C6EDBAC(&v35, &v32, &qword_27CDF8F80, &qword_21CBCAB98);
  return sub_21C6EA794(v40, &qword_27CDF8F80, &qword_21CBCAB98);
}

double sub_21CB25650@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F88, &qword_21CBCABA0);
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v5 = (&v32 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F90, &qword_21CBCABA8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = sub_21CB82FF4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  if (a1)
  {
    v19 = a1;
  }

  else
  {
    v20 = [objc_opt_self() darkGrayColor];
    v19 = sub_21CB84A24();
  }

  sub_21CB82FE4();
  v21.n128_f64[0] = (*(v13 + 16))(v15, v18, v12);
  sub_21CB25A04(v21);
  v22 = sub_21CB82394();
  (*(v13 + 8))(v18, v12);
  if (a1)
  {
    sub_21CB84A94();
    v23 = sub_21CB84B04();

    v24 = v32;
    v25 = *(v32 + 36);
    v26 = *MEMORY[0x277CE13B0];
    v27 = sub_21CB85284();
    (*(*(v27 - 8) + 104))(v5 + v25, v26, v27);
    *v5 = v23;
    sub_21CB25A5C(v5, v11);
    v28 = 0;
  }

  else
  {
    v28 = 1;
    v24 = v32;
  }

  (*(v3 + 56))(v11, v28, 1, v24);
  sub_21C6EDBAC(v11, v8, &qword_27CDF8F90, &qword_21CBCABA8);
  v29 = v33;
  *v33 = v19;
  v29[1] = v22;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8FA0, &qword_21CBCABB0);
  sub_21C6EDBAC(v8, v29 + *(v30 + 48), &qword_27CDF8F90, &qword_21CBCABA8);

  sub_21C6EA794(v11, &qword_27CDF8F90, &qword_21CBCABA8);
  sub_21C6EA794(v8, &qword_27CDF8F90, &qword_21CBCABA8);

  return result;
}

unint64_t sub_21CB25A04(__n128 a1)
{
  result = qword_27CDF8F98;
  if (!qword_27CDF8F98)
  {
    sub_21CB82FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8F98);
  }

  return result;
}

uint64_t sub_21CB25A5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8F88, &qword_21CBCABA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CB25ACC(double *a1, double *a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  if (a1[3])
  {
    if ((a2[3] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v2 = 0;
    if (a2[3])
    {
      return v2;
    }

    if (a1[1] != a2[1] || a1[2] != a2[2])
    {
      return v2;
    }
  }

  v2 = *(a2 + 40);
  if (a1[5])
  {
    if (!*(a2 + 40))
    {
      return v2;
    }
  }

  else
  {
    if (a1[4] != a2[4])
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v5 = *(a1 + 6);
  v6 = *(a2 + 6);
  v2 = (v5 | v6) == 0;
  if (!v5 || !v6)
  {
    return v2;
  }

  v8 = sub_21CB84A54();
  sub_21CB25BA8(a2);
  return v8 & 1;
}

unint64_t sub_21CB25BD8()
{
  result = qword_27CDF8FA8;
  if (!qword_27CDF8FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8F78, &qword_21CBCAB90);
    sub_21CB25C90();
    sub_21C6EADEC(&qword_27CDF8FD8, &qword_27CDF8F80, &qword_21CBCAB98, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8FA8);
  }

  return result;
}

unint64_t sub_21CB25C90()
{
  result = qword_27CDF8FB0;
  if (!qword_27CDF8FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8F70, &qword_21CBCAB58);
    sub_21C6EADEC(&qword_27CDF8FB8, &qword_27CDF8FC0, &qword_21CBCABB8, MEMORY[0x277CE11A8]);
    sub_21C6EADEC(&qword_27CDF8FC8, &qword_27CDF8FD0, &unk_21CBCABC0, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8FB0);
  }

  return result;
}

uint64_t sub_21CB25D9C@<X0>(_OWORD *a1@<X8>)
{
  result = type metadata accessor for PMSharingGroup(0);
  v4 = *(v1 + *(result + 24));
  v5 = *(v4 + 16);
  v6 = 0uLL;
  if (v5)
  {
    v7 = (v4 + 32);
    while (1)
    {
      v8 = v7[3];
      v9 = v7[4];
      v10 = v7[6];
      v32 = v7[5];
      v11 = v7[1];
      v12 = v7[2];
      v27 = *v7;
      v28 = v11;
      v33 = v10;
      v30 = v8;
      v31 = v9;
      v29 = v12;
      if (BYTE1(v32) == 2)
      {
        break;
      }

      v7 += 7;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    v24 = v32;
    v25 = v33;
    v22 = v30;
    v23 = v31;
    v20 = v28;
    v21 = v29;
    v19 = v27;
    result = sub_21C7A33F0(&v27, v26);
    v17 = v24;
    v18 = v25;
    v15 = v22;
    v16 = v23;
    v13 = v20;
    v14 = v21;
    v6 = v19;
  }

  else
  {
LABEL_5:
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
  }

  *a1 = v6;
  a1[1] = v13;
  a1[2] = v14;
  a1[3] = v15;
  a1[4] = v16;
  a1[5] = v17;
  a1[6] = v18;
  return result;
}

uint64_t sub_21CB25E88@<X0>(_OWORD *a1@<X8>)
{
  result = type metadata accessor for PMSharingGroup(0);
  v4 = *(v1 + *(result + 24));
  v5 = *(v4 + 16);
  v6 = 0uLL;
  if (v5)
  {
    v7 = (v4 + 32);
    while (1)
    {
      v8 = v7[3];
      v9 = v7[4];
      v10 = v7[6];
      v32 = v7[5];
      v11 = v7[1];
      v12 = v7[2];
      v27 = *v7;
      v28 = v11;
      v33 = v10;
      v30 = v8;
      v31 = v9;
      v29 = v12;
      if (v32 == 1)
      {
        break;
      }

      v7 += 7;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    v24 = v32;
    v25 = v33;
    v22 = v30;
    v23 = v31;
    v20 = v28;
    v21 = v29;
    v19 = v27;
    result = sub_21C7A33F0(&v27, v26);
    v17 = v24;
    v18 = v25;
    v15 = v22;
    v16 = v23;
    v13 = v20;
    v14 = v21;
    v6 = v19;
  }

  else
  {
LABEL_5:
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
  }

  *a1 = v6;
  a1[1] = v13;
  a1[2] = v14;
  a1[3] = v15;
  a1[4] = v16;
  a1[5] = v17;
  a1[6] = v18;
  return result;
}

uint64_t sub_21CB25F74(uint64_t a1)
{
  sub_21CB85C44();
  sub_21CB26618(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
  sub_21CB85494();
  v2 = type metadata accessor for PMSharingGroup(0);
  sub_21CB854C4();
  v3 = *(v1 + *(v2 + 24));
  MEMORY[0x21CF15F90](*(v3 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      v7 = v5[2];
      v8 = *v5;
      v19 = v5[1];
      v20 = v7;
      v18 = v8;
      v9 = v5[3];
      v10 = v5[4];
      v11 = v5[6];
      v23 = v5[5];
      v24 = v11;
      v21 = v9;
      v22 = v10;
      if (*(&v8 + 1))
      {
        sub_21CB864A4();
        sub_21C7A33F0(&v18, v17);
        sub_21CB854C4();
        if (*(&v19 + 1))
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_21CB864A4();
        sub_21C7A33F0(&v18, v17);
        if (*(&v19 + 1))
        {
LABEL_7:
          sub_21CB864A4();
          sub_21CB854C4();
          goto LABEL_10;
        }
      }

      sub_21CB864A4();
LABEL_10:
      sub_21CB854C4();
      sub_21CB854C4();
      sub_21CB854C4();
      v12 = v24;
      v13 = BYTE2(v23);
      v14 = BYTE1(v23);
      sub_21CB864A4();
      MEMORY[0x21CF15F90](v14);
      MEMORY[0x21CF15F90](v13);
      if (v12)
      {
        sub_21CB864A4();
        sub_21CB854C4();
        v15 = *(&v24 + 1);
        if (!*(&v24 + 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_21CB864A4();
        v15 = *(&v24 + 1);
        if (!*(&v24 + 1))
        {
LABEL_14:
          sub_21CB864A4();
          goto LABEL_4;
        }
      }

      sub_21CB864A4();
      v6 = v15;
      sub_21CB85DE4();

LABEL_4:
      sub_21C7A344C(&v18);
      v5 += 7;
      --v4;
    }

    while (v4);
  }

  return sub_21CB854C4();
}

uint64_t sub_21CB26278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v11 = sub_21CB81004();
  v13 = v12;
  result = (*(v8 + 8))(v10, v7);
  *a4 = v11;
  *a5 = v13;
  return result;
}

uint64_t sub_21CB26380()
{
  sub_21CB86484();
  sub_21CB25F74(v1);
  return sub_21CB864D4();
}

uint64_t sub_21CB263C4(uint64_t a1)
{
  sub_21CB86484();
  sub_21CB25F74(v2);
  return sub_21CB864D4();
}

uint64_t sub_21CB26494(uint64_t a1, uint64_t a2)
{
  sub_21CB85C44();
  sub_21CB26618(&qword_27CDECD58, MEMORY[0x277D49978], MEMORY[0x277D49998]);
  sub_21CB857F4();
  sub_21CB857F4();
  if (v20 == v18 && v21 == v19)
  {
  }

  else
  {
    v5 = sub_21CB86344();

    if ((v5 & 1) == 0)
    {
LABEL_17:
      v16 = 0;
      return v16 & 1;
    }
  }

  v6 = type metadata accessor for PMSharingGroup(0);
  v7 = v6[5];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (sub_21CB86344() & 1) == 0 || (sub_21C967680(*(a1 + v6[6]), *(a2 + v6[6])) & 1) == 0)
  {
    goto LABEL_17;
  }

  v12 = v6[7];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  if (v13 == *v15 && v14 == v15[1])
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_21CB86344();
  }

  return v16 & 1;
}

uint64_t sub_21CB26618(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CB26660(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_21CB266BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

double sub_21CB2673C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2;
  v7 = sub_21CB84BD4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21CB268F0(a1, v4);
  (*(v8 + 104))(v10, *MEMORY[0x277CE0FE0], v7);
  v11 = sub_21CB84C64();

  (*(v8 + 8))(v10, v7);
  sub_21CB85214();
  sub_21CB82374();
  v17 = 1;
  *&v16[8] = v18;
  *&v16[24] = v19;
  *&v16[40] = v20;
  v12 = sub_21CB85214();
  v13 = *&v16[18];
  *(a3 + 18) = *&v16[2];
  *a3 = v11;
  *(a3 + 8) = 0;
  *(a3 + 16) = 257;
  *(a3 + 34) = v13;
  result = *&v16[34];
  *(a3 + 50) = *&v16[34];
  *(a3 + 64) = *&v16[48];
  *(a3 + 72) = v12;
  *(a3 + 80) = v15;
  return result;
}

uint64_t sub_21CB268F0(uint64_t a1, char a2)
{
  v4 = sub_21CB84BE4();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a1 && (swift_getKeyPath(byte_21CBCAD18, v6), v16 = a1, sub_21CA42C34(), sub_21CB810D4(), , (v9 = *(a1 + 144)) != 0))
    {
      v10 = v9;
      sub_21CB84BA4();
    }

    else
    {
      sub_21CB84BB4();
    }

    (*(v5 + 104))(v8, *MEMORY[0x277CE0FF0], v4);
    v14 = sub_21CB84BF4();

    (*(v5 + 8))(v8, v4);
    return v14;
  }

  else if (a1 && (swift_getKeyPath(byte_21CBCAD18, v6), v16 = a1, sub_21CA42C34(), sub_21CB810D4(), , (v11 = *(a1 + 144)) != 0))
  {
    v12 = v11;
    return sub_21CB84BA4();
  }

  else
  {
    return sub_21CB84BB4();
  }
}

unint64_t sub_21CB26AFC()
{
  result = qword_27CDF8FF8;
  if (!qword_27CDF8FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9000, &qword_21CBCAD40);
    sub_21C738A18();
    sub_21CB26B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8FF8);
  }

  return result;
}

unint64_t sub_21CB26B88()
{
  result = qword_27CDF9008;
  if (!qword_27CDF9008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDF9010, &qword_21CBCAD48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9008);
  }

  return result;
}

uint64_t Date.stringUsingHistoryItemAutoFillViewHostingFormat.getter()
{
  v0 = sub_21CB81024();
  v29 = *(v0 - 8);
  v30 = v0;
  MEMORY[0x28223BE20](v0);
  v28 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_21CB80F14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_21CB80F24();
  v6 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - v10;
  v12 = sub_21CB80DD4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v31 = &v27 - v17;
  sub_21CB80F04();
  (*(v3 + 104))(v5, *MEMORY[0x277CC99A0], v2);
  sub_21CB80DA4();
  sub_21CB80EF4();
  v33 = *(v13 + 8);
  v33(v15, v12);
  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v32);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21C6EA794(v11, &unk_27CDED250, &qword_21CBA64C0);
    v18 = v33;
  }

  else
  {
    v19 = v31;
    (*(v13 + 32))(v31, v11, v12);
    if (sub_21CB80D34())
    {
      v20 = v28;
      sub_21CB81014();
      v21 = sub_21CB81004();
      (*(v29 + 8))(v20, v30);
      v33(v19, v12);
      return v21;
    }

    v18 = v33;
    v33(v19, v12);
  }

  if (qword_27CDEA4A8 != -1)
  {
    swift_once();
  }

  v22 = qword_27CDF90C8;
  v23 = sub_21CB80D24();
  sub_21CB80DA4();
  v24 = sub_21CB80D24();
  v18(v15, v12);
  v25 = [v22 localizedStringForDate:v23 relativeToDate:v24];

  v21 = sub_21CB855C4();
  return v21;
}

uint64_t sub_21CB27164@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF90D0, &qword_21CBCAEB0);
  MEMORY[0x28223BE20](v36);
  v9 = v31 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF90D8, &qword_21CBCAEB8);
  MEMORY[0x28223BE20](v35);
  v11 = v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF90E0, &qword_21CBCAEC0);
  v32 = *(v12 - 8);
  v33 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v31 - v13;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF90E8, &qword_21CBCAEC8);
  MEMORY[0x28223BE20](v34);
  v16 = v31 - v15;
  v17 = sub_21C805FA0(a1);
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    v21 = swift_allocObject();
    v31[1] = v31;
    v21[2] = a1;
    v21[3] = a2;
    v21[4] = a3;
    v21[5] = v19;
    v21[6] = v20;
    MEMORY[0x28223BE20](v21);
    v31[-4] = a1;
    v31[-3] = a2;
    v31[-2] = a3;
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9118, &qword_21CBCAED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9150, &qword_21CBCAEF0);
    sub_21CB2A214();
    v31[2] = a4;
    sub_21C6EADEC(&qword_27CDF9158, &qword_27CDF9150, &qword_21CBCAEF0, MEMORY[0x277CE14C0]);
    sub_21CB82814();
    sub_21C6EADEC(&qword_27CDF90F8, &qword_27CDF90E0, &qword_21CBCAEC0, MEMORY[0x277CDD9E8]);
    sub_21CB2A134();
    v22 = v33;
    sub_21CB84504();
    (*(v32 + 8))(v14, v22);
    v23 = sub_21CB832C4();
    v24 = &v16[*(v34 + 36)];
    *v24 = v23;
    v24[1] = sub_21CB2AD5C;
    v24[2] = 0;
    v25 = &qword_27CDF90E8;
    v26 = &qword_21CBCAEC8;
    sub_21C6EDBAC(v16, v11, &qword_27CDF90E8, &qword_21CBCAEC8);
    swift_storeEnumTagMultiPayload();
    sub_21CB2A024();
    sub_21CB2A188();
    sub_21CB83494();
    v27 = v16;
  }

  else
  {
    sub_21CB280D8(a1, a2, a3, v9);
    v28 = sub_21CB832C4();
    v29 = &v9[*(v36 + 36)];
    *v29 = v28;
    v29[1] = sub_21CB2AD5C;
    v29[2] = 0;
    v25 = &qword_27CDF90D0;
    v26 = &qword_21CBCAEB0;
    sub_21C6EDBAC(v9, v11, &qword_27CDF90D0, &qword_21CBCAEB0);
    swift_storeEnumTagMultiPayload();
    sub_21CB2A024();
    sub_21CB2A188();
    sub_21CB83494();
    v27 = v9;
  }

  return sub_21C6EA794(v27, v25, v26);
}

uint64_t sub_21CB2760C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v55 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9160, &qword_21CBCAEF8);
  MEMORY[0x28223BE20](v11 - 8);
  v56 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v54 = &v48 - v14;
  v15 = sub_21CB81024();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v50 = a1;
  if (swift_dynamicCastObjCClass())
  {
    sub_21CB81014();
    sub_21CB81004();
    (*(v16 + 8))(v18, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_21CBA0690;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = sub_21C7C0050();
    *(v19 + 32) = a2;
    *(v19 + 40) = a3;

    v20 = sub_21CB85594();
    v21 = a5;
    v23 = v22;

    v63 = v20;
    v64 = v23;
    sub_21C71F3FC();
    v24 = sub_21CB84054();
    v53 = v25;
    LOBYTE(v23) = v26;
    v52 = v27;
    LOBYTE(v38) = sub_21CB83D44();
    sub_21CB81F24();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = v23 & 1;
    a5 = v21;
    LOBYTE(v63) = v36;
    LOBYTE(v57) = 0;
    v37 = v36;
    v38 = v38;
  }

  else
  {
    v24 = 0;
    v53 = 0;
    v52 = 0;
    KeyPath = 0;
    v38 = 0;
    v37 = 0;
    v29 = 0;
    v31 = 0;
    v33 = 0;
    v35 = 0;
  }

  v49 = v37;
  v39 = v54;
  sub_21CB27AB4(v55, a5, v54);
  v40 = v56;
  sub_21C6EDBAC(v39, v56, &qword_27CDF9160, &qword_21CBCAEF8);
  *&v57 = v24;
  v41 = v53;
  *(&v57 + 1) = v53;
  *&v58 = v37;
  v42 = v52;
  *(&v58 + 1) = v52;
  v43 = KeyPath;
  v59 = KeyPath;
  v60 = 0;
  *&v61 = v38;
  *(&v61 + 1) = v29;
  *v62 = v31;
  *&v62[8] = v33;
  *&v62[16] = v35;
  v62[24] = 0;
  v44 = v61;
  a6[2] = KeyPath;
  a6[3] = v44;
  a6[4] = *v62;
  *(a6 + 73) = *&v62[9];
  v45 = v58;
  *a6 = v57;
  a6[1] = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9168, &qword_21CBCAF00);
  sub_21C6EDBAC(v40, a6 + *(v46 + 48), &qword_27CDF9160, &qword_21CBCAEF8);
  sub_21C6EDBAC(&v57, &v63, &qword_27CDF9170, &unk_21CBCAF08);
  sub_21C6EA794(v39, &qword_27CDF9160, &qword_21CBCAEF8);
  sub_21C6EA794(v40, &qword_27CDF9160, &qword_21CBCAEF8);
  v63 = v24;
  v64 = v41;
  v65 = v49;
  v66 = v42;
  v67 = v43;
  v68 = 0;
  v69 = v38;
  v70 = v29;
  v71 = v31;
  v72 = v33;
  v73 = v35;
  v74 = 0;
  return sub_21C6EA794(&v63, &qword_27CDF9170, &unk_21CBCAF08);
}

uint64_t sub_21CB27AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v55 = sub_21CB81024();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9178, &qword_21CBCAF48);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9180, &qword_21CBCAF50);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9188, &qword_21CBCAF58);
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9190, &qword_21CBCAF60);
  v53 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v47 - v18;
  *v10 = sub_21CB83074();
  *(v10 + 1) = 0;
  v10[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9198, &qword_21CBCAF68);
  v48 = a1;
  v47 = a2;
  sub_21CB28570(a1, a2);
  sub_21CB85214();
  sub_21CB82AC4();
  sub_21C716934(v10, v14, &qword_27CDF9178, &qword_21CBCAF48);
  v19 = &v14[*(v12 + 44)];
  v20 = v70;
  *(v19 + 4) = v69;
  *(v19 + 5) = v20;
  *(v19 + 6) = v71;
  v21 = v66;
  *v19 = v65;
  *(v19 + 1) = v21;
  v22 = v68;
  *(v19 + 2) = v67;
  *(v19 + 3) = v22;
  LOBYTE(v10) = sub_21CB83D44();
  sub_21CB81F24();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_21C716934(v14, v17, &qword_27CDF9180, &qword_21CBCAF50);
  v31 = &v17[*(v15 + 36)];
  *v31 = v10;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v57 = a1;
  v58 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v33 = sub_21CB2A58C();
  v34 = sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
  sub_21CB84154();
  sub_21C6EA794(v17, &qword_27CDF9188, &qword_21CBCAF58);
  v35 = v50;
  sub_21CB81014();
  v36 = v51;
  sub_21CB81014();
  v37 = sub_21CB80FF4();
  v39 = v38;
  v40 = *(v54 + 8);
  v41 = v36;
  v42 = v55;
  v40(v41, v55);
  v40(v35, v42);
  v63 = v37;
  v64 = v39;
  v43 = swift_allocObject();
  *(v43 + 16) = v48;
  *(v43 + 24) = v47;

  v59 = v15;
  v60 = v32;
  v61 = v33;
  v62 = v34;
  swift_getOpaqueTypeConformance2();
  sub_21C71F3FC();
  v44 = v52;
  v45 = v49;
  sub_21CB84474();

  return (*(v53 + 8))(v45, v44);
}

uint64_t sub_21CB280D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  v7 = sub_21CB83A74();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9138, &qword_21CBCAEE0);
  v40 = *(v14 - 8);
  v41 = v14;
  MEMORY[0x28223BE20](v14);
  v39 = &v38 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9128, &qword_21CBCAED8);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v38 - v18;
  sub_21CB83A64();
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  (*(v8 + 16))(v10, v13, v7);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_21CB2A7E0;
  *(v21 + 24) = v20;
  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9148, &qword_21CBCAEE8);
  sub_21CB2AD14(&qword_27CDF91C0, MEMORY[0x277CE0818], MEMORY[0x277CE0810]);
  sub_21C6EADEC(&qword_27CDF9140, &qword_27CDF9148, &qword_21CBCAEE8, &unk_21CBC3548);
  v22 = v39;
  sub_21CB82304();
  (*(v8 + 8))(v13, v7);
  sub_21CB85224();
  sub_21CB82AC4();
  (*(v40 + 32))(v19, v22, v41);
  v23 = &v19[*(v17 + 44)];
  v24 = v48;
  *(v23 + 4) = v47;
  *(v23 + 5) = v24;
  *(v23 + 6) = v49;
  v25 = v44;
  *v23 = v43;
  *(v23 + 1) = v25;
  v26 = v46;
  *(v23 + 2) = v45;
  *(v23 + 3) = v26;
  LOBYTE(a2) = sub_21CB83D44();
  sub_21CB81F24();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v42;
  sub_21C716934(v19, v42, &qword_27CDF9128, &qword_21CBCAED8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9118, &qword_21CBCAED0);
  v37 = v35 + *(result + 36);
  *v37 = a2;
  *(v37 + 8) = v28;
  *(v37 + 16) = v30;
  *(v37 + 24) = v32;
  *(v37 + 32) = v34;
  *(v37 + 40) = 0;
  return result;
}

uint64_t sub_21CB28514()
{
  if (qword_27CDEA408 != -1)
  {
    swift_once();
  }

  return MEMORY[0x21CF122A0](qword_27CE185D0);
}

uint64_t sub_21CB28570(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  sub_21CB81014();
  sub_21CB81014();
  v11 = sub_21CB80FF4();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v7, v4);
  v14(v10, v4);
  v15 = sub_21CB85214();
  v17 = v16;
  LOBYTE(v21) = 0;
  sub_21CB84D44();
  *&v21 = a1;
  *(&v21 + 1) = a2;
  LOBYTE(v22) = 1;
  *(&v22 + 1) = *v28;
  DWORD1(v22) = *&v28[3];
  *(&v22 + 1) = v11;
  *&v23 = v13;
  BYTE8(v23) = 0;
  *(&v23 + 9) = *v27;
  HIDWORD(v23) = *&v27[3];
  *&v24 = v15;
  *(&v24 + 1) = v17;
  LOBYTE(v25) = v29[0];
  DWORD1(v25) = *&v26[3];
  *(&v25 + 1) = *v26;
  *(&v25 + 1) = *(&v29[0] + 1);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  sub_21CB2A71C();
  sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
  sub_21CB848F4();

  v29[2] = v23;
  v29[3] = v24;
  v29[4] = v25;
  v29[0] = v21;
  v29[1] = v22;
  return sub_21CB2A770(v29);
}

uint64_t sub_21CB2886C()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v12 - v5;
  sub_21CB81014();
  sub_21CB81014();
  v7 = sub_21CB80FF4();
  v9 = v8;
  v10 = *(v1 + 8);
  v10(v3, v0);
  v10(v6, v0);
  v12[0] = v7;
  v12[1] = v9;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21CB28A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);

  return sub_21CB84DA4();
}

uint64_t sub_21CB28AE8()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v12 - v5;
  sub_21CB81014();
  sub_21CB81014();
  v7 = sub_21CB80FF4();
  v9 = v8;
  v10 = *(v1 + 8);
  v10(v3, v0);
  v10(v6, v0);
  v12[0] = v7;
  v12[1] = v9;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

void sub_21CB28C88(uint64_t a1, uint64_t a2)
{
  if (qword_27CDEA480 != -1)
  {
    v2 = a1;
    v3 = a2;
    swift_once();
    a1 = v2;
    a2 = v3;
  }

  sub_21CADAA84(a1, a2, 1);
}

uint64_t sub_21CB28CFC@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_21C80620C(a1);
  v6 = v5;
  v7 = sub_21C806B18(a1);
  *a2 = v4;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9148, &qword_21CBCAEE8) + 40);
  sub_21C806664(a1);
  sub_21CB84C14();
  sub_21CB85214();
  sub_21CB82374();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF09A8, &unk_21CBAF7E0);
  sub_21C8FD198();
  sub_21CB846B4();

  v10 = sub_21CB84AD4();
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF91D8, &qword_21CBCAF88) + 36)] = v10;
  LOBYTE(v10) = sub_21CB83CE4();
  sub_21CB81F24();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF91E0, &qword_21CBCAF90) + 36)];
  *v19 = v10;
  *(v19 + 1) = v12;
  *(v19 + 2) = v14;
  *(v19 + 3) = v16;
  *(v19 + 4) = v18;
  v19[40] = 0;
  v20 = sub_21C8068C8(a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF91E8, &qword_21CBCAF98);
  v22 = &v9[*(result + 36)];
  *v22 = v20;
  *(v22 + 4) = 256;
  return result;
}

uint64_t sub_21CB28ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = sub_21CB83C34();
  v87 = *(v3 - 8);
  v88 = v3;
  MEMORY[0x28223BE20](v3);
  v60 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9208, &qword_21CBCB000);
  MEMORY[0x28223BE20](v5 - 8);
  v89 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v91 = &v60 - v8;
  v9 = sub_21CB83874();
  v85 = *(v9 - 8);
  v86 = v9;
  MEMORY[0x28223BE20](v9);
  v84 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21CB83A34();
  v81 = *(v11 - 8);
  v82 = v11;
  MEMORY[0x28223BE20](v11);
  v80 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_21CB82A54();
  v77 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v72 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21CB83C54();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v67 = v16;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9210, &qword_21CBCB008);
  v73 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v18 = &v60 - v17;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9218, &qword_21CBCB010);
  v75 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v20 = &v60 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9220, &qword_21CBCB018);
  v22 = *(v21 - 8);
  v78 = v21;
  v79 = v22;
  MEMORY[0x28223BE20](v21);
  v70 = &v60 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9228, &qword_21CBCB020);
  MEMORY[0x28223BE20](v24 - 8);
  v83 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v69 = &v60 - v28;
  v68 = *(v15 + 16);
  v62 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a1;
  v63 = v14;
  v68(v62, a1, v14, v27);
  v64 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v29 = v64;
  v30 = swift_allocObject();
  v31 = *(v15 + 32);
  v65 = v15 + 32;
  v66 = v31;
  v31(v30 + v29, &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v92 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9230, &qword_21CBCB028);
  sub_21CB2A8B8();
  sub_21CB84DA4();
  v32 = v72;
  sub_21CB82A44();
  v33 = sub_21C6EADEC(&qword_27CDF9250, &qword_27CDF9210, &qword_21CBCB008, MEMORY[0x277CDF028]);
  v34 = sub_21CB2AD14(&qword_27CDED508, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v35 = v71;
  v36 = v76;
  sub_21CB84124();
  (*(v77 + 8))(v32, v36);
  (*(v73 + 8))(v18, v35);
  v37 = v80;
  sub_21CB83A24();
  v93 = v35;
  v94 = v36;
  v95 = v33;
  v96 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v70;
  v40 = v74;
  sub_21CB844F4();
  (*(v81 + 8))(v37, v82);
  v41 = v40;
  (*(v75 + 8))(v20, v40);
  v42 = v62;
  v43 = v63;
  (v68)(v62, v61, v63);
  v44 = v69;
  v45 = v64;
  v46 = swift_allocObject() + v45;
  v47 = v87;
  v66(v46, v42, v43);
  v48 = v84;
  sub_21CB83864();
  v93 = v41;
  v94 = OpaqueTypeConformance2;
  v49 = v88;
  swift_getOpaqueTypeConformance2();
  v50 = v78;
  sub_21CB84484();

  (*(v85 + 8))(v48, v86);
  (*(v79 + 8))(v39, v50);
  v51 = sub_21CB83C04();
  v52 = 1;
  if (v51)
  {
    v53 = v60;
    sub_21CB83C44();
    (*(v47 + 32))(v91, v53, v49);
    v52 = 0;
  }

  v54 = v91;
  (*(v47 + 56))(v91, v52, 1, v49);
  v55 = v83;
  sub_21C6EDBAC(v44, v83, &qword_27CDF9228, &qword_21CBCB020);
  v56 = v89;
  sub_21C6EDBAC(v54, v89, &qword_27CDF9208, &qword_21CBCB000);
  v57 = v90;
  sub_21C6EDBAC(v55, v90, &qword_27CDF9228, &qword_21CBCB020);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9258, &qword_21CBCB040);
  sub_21C6EDBAC(v56, v57 + *(v58 + 48), &qword_27CDF9208, &qword_21CBCB000);
  sub_21C6EA794(v54, &qword_27CDF9208, &qword_21CBCB000);
  sub_21C6EA794(v44, &qword_27CDF9228, &qword_21CBCB020);
  sub_21C6EA794(v56, &qword_27CDF9208, &qword_21CBCB000);
  return sub_21C6EA794(v55, &qword_27CDF9228, &qword_21CBCB020);
}

uint64_t sub_21CB29908@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_21CB83074();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9260, &qword_21CBCB048);
  sub_21CB2997C((a2 + *(v3 + 44)));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9230, &qword_21CBCB028);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_21CB2997C@<X0>(char *a1@<X8>)
{
  v55 = a1;
  v1 = sub_21CB83094();
  v2 = *(v1 - 8);
  v53 = v1;
  v54 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9268, &qword_21CBCB050);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9270, &qword_21CBCB058);
  v13 = *(v12 - 8);
  v51 = v12;
  v52 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9278, &unk_21CBCB060);
  MEMORY[0x28223BE20](v16 - 8);
  v50 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v48 = &v44 - v19;
  v49 = sub_21CB83C14();
  v45 = *(v49 - 8);
  v20 = v45;
  MEMORY[0x28223BE20](v49);
  v47 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v46 = &v44 - v23;
  sub_21CB83C24();
  v24 = sub_21CB83C04();
  v56 = sub_21CB2AAB8(v24 & 1);
  v57 = v25;
  sub_21CB83C04();
  sub_21C71F3FC();
  sub_21CB84CB4();
  v26 = sub_21CB84B34();
  (*(v6 + 32))(v11, v8, v5);
  *&v11[*(v9 + 36)] = v26;
  v27 = v4;
  sub_21CB83084();
  v28 = sub_21CB2AC30();
  v29 = sub_21CB2AD14(&qword_27CDEC0A8, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  v30 = v53;
  sub_21CB840E4();
  (*(v54 + 8))(v27, v30);
  sub_21C6EA794(v11, &qword_27CDF9268, &qword_21CBCB050);
  v56 = v9;
  v57 = v30;
  v58 = v28;
  v59 = v29;
  swift_getOpaqueTypeConformance2();
  v31 = v48;
  v32 = v51;
  sub_21CB84494();
  (*(v52 + 8))(v15, v32);
  v33 = *(v20 + 16);
  v34 = v46;
  v35 = v47;
  v36 = v49;
  v33(v47, v46, v49);
  LOBYTE(v56) = 1;
  v37 = v50;
  sub_21C6EDBAC(v31, v50, &qword_27CDF9278, &unk_21CBCB060);
  v38 = v55;
  v33(v55, v35, v36);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9288, &qword_21CBCB070);
  v40 = &v38[*(v39 + 48)];
  v41 = v56;
  *v40 = 0;
  v40[8] = v41;
  sub_21C6EDBAC(v37, &v38[*(v39 + 64)], &qword_27CDF9278, &unk_21CBCB060);
  sub_21C6EA794(v31, &qword_27CDF9278, &unk_21CBCB060);
  v42 = *(v45 + 8);
  v42(v34, v36);
  sub_21C6EA794(v37, &qword_27CDF9278, &unk_21CBCB060);
  return (v42)(v35, v36);
}

uint64_t sub_21CB29F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_21CB832F4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9200, &qword_21CBCAFF8);
  return sub_21CB28ECC(a1, a2 + *(v4 + 44));
}

id sub_21CB29FA8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCAC78]) init];
  result = [v0 setDateTimeStyle_];
  qword_27CDF90C8 = v0;
  return result;
}

unint64_t sub_21CB2A024()
{
  result = qword_27CDF90F0;
  if (!qword_27CDF90F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF90E8, &qword_21CBCAEC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF90E0, &qword_21CBCAEC0);
    sub_21C6EADEC(&qword_27CDF90F8, &qword_27CDF90E0, &qword_21CBCAEC0, MEMORY[0x277CDD9E8]);
    sub_21CB2A134();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF90F0);
  }

  return result;
}

unint64_t sub_21CB2A134()
{
  result = qword_27CDF9100;
  if (!qword_27CDF9100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9100);
  }

  return result;
}

unint64_t sub_21CB2A188()
{
  result = qword_27CDF9108;
  if (!qword_27CDF9108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF90D0, &qword_21CBCAEB0);
    sub_21CB2A214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9108);
  }

  return result;
}

unint64_t sub_21CB2A214()
{
  result = qword_27CDF9110;
  if (!qword_27CDF9110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9118, &qword_21CBCAED0);
    sub_21CB2A2A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9110);
  }

  return result;
}

unint64_t sub_21CB2A2A0()
{
  result = qword_27CDF9120;
  if (!qword_27CDF9120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9128, &qword_21CBCAED8);
    sub_21CB2A32C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9120);
  }

  return result;
}

unint64_t sub_21CB2A32C()
{
  result = qword_27CDF9130;
  if (!qword_27CDF9130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9138, &qword_21CBCAEE0);
    sub_21C6EADEC(&qword_27CDF9140, &qword_27CDF9148, &qword_21CBCAEE8, &unk_21CBC3548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9130);
  }

  return result;
}

uint64_t sub_21CB2A3F8(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF91C8, &qword_21CBCAF70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF91D0, &unk_21CBCAF78);
  v11 = *(v9 - 8);
  result = v9 - 8;
  if (*(v11 + 64) == v6)
  {
    (*(v5 + 16))(v8, a1, v4);
    a2(v8);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_21CB2A58C()
{
  result = qword_27CDF91A0;
  if (!qword_27CDF91A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9188, &qword_21CBCAF58);
    sub_21CB2A618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF91A0);
  }

  return result;
}

unint64_t sub_21CB2A618()
{
  result = qword_27CDF91A8;
  if (!qword_27CDF91A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9180, &qword_21CBCAF50);
    sub_21C6EADEC(&qword_27CDF91B0, &qword_27CDF9178, &qword_21CBCAF48, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF91A8);
  }

  return result;
}

unint64_t sub_21CB2A71C()
{
  result = qword_27CDF91B8;
  if (!qword_27CDF91B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF91B8);
  }

  return result;
}

unint64_t sub_21CB2A804()
{
  result = qword_27CDF91F0;
  if (!qword_27CDF91F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF91F8, &qword_21CBCAFB8);
    sub_21CB2A024();
    sub_21CB2A188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF91F0);
  }

  return result;
}

unint64_t sub_21CB2A8B8()
{
  result = qword_27CDF9238;
  if (!qword_27CDF9238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9230, &qword_21CBCB028);
    sub_21C6EADEC(&qword_27CDF9240, &qword_27CDF9248, &unk_21CBCB030, MEMORY[0x277CE1138]);
    sub_21C6EADEC(&qword_27CDEB970, &qword_27CDEB948, &unk_21CBA26E0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9238);
  }

  return result;
}

uint64_t objectdestroy_23Tm(__n128 a1)
{
  v2 = sub_21CB83C54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_21CB2AA24(__n128 a1)
{
  sub_21CB83C54();
  v1 = sub_21CB83BF4();
  *v2 = !*v2;
  return v1(&v4, 0);
}

uint64_t sub_21CB2AAB8(char a1)
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_21CB81014();
  sub_21CB81014();
  v8 = sub_21CB80FF4();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  return v8;
}

unint64_t sub_21CB2AC30()
{
  result = qword_27CDF9280;
  if (!qword_27CDF9280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9268, &qword_21CBCB050);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
    sub_21C6EADEC(&unk_27CDF45A0, &qword_27CDEECF0, &qword_21CBAF890, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9280);
  }

  return result;
}

uint64_t sub_21CB2AD14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CB2AD68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v4 - 8);
  v71 = v67 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v67 - v7;
  v9 = type metadata accessor for PMSignInWithAppleAccount(0);
  v10 = v9[7];
  v11 = sub_21CB80DD4();
  v12 = *(*(v11 - 8) + 56);
  v67[0] = v10;
  v12(a2 + v10, 1, 1, v11);
  v13 = (a2 + v9[13]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a2 + v9[14]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a2 + v9[15]);
  *v15 = 0;
  v15[1] = 0;
  v16 = v9[17];
  v17 = sub_21CB85C44();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v69 = v17;
  v70 = v16;
  v67[1] = v18 + 56;
  v68 = v19;
  (v19)(a2 + v16, 1, 1);
  if ([a1 respondsToSelector_])
  {
    v20 = [a1 userID];
    sub_21CB855C4();
  }

  sub_21CB85B54();
  v21 = [a1 clientID];
  sub_21CB855C4();

  sub_21CB85B54();
  v22 = [a1 localizedAppName];
  v23 = sub_21CB855C4();
  v25 = v24;

  v26 = (a2 + v9[6]);
  *v26 = v23;
  v26[1] = v25;
  v27 = [a1 creationDate];
  if (v27)
  {
    v28 = v27;
    sub_21CB80D94();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v12(v8, v29, 1, v11);
  sub_21C7D3344(v8, a2 + v67[0], &unk_27CDED250, &qword_21CBA64C0);
  if ([a1 sharedScopes])
  {
    v30 = sub_21CA4F57C(0, 1, 1, MEMORY[0x277D84F90]);
    v32 = *(v30 + 2);
    v31 = *(v30 + 3);
    if (v32 >= v31 >> 1)
    {
      v30 = sub_21CA4F57C((v31 > 1), v32 + 1, 1, v30);
    }

    *(v30 + 2) = v32 + 1;
    v30[v32 + 32] = 1;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  if (([a1 sharedScopes] & 2) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_21CA4F57C(0, *(v30 + 2) + 1, 1, v30);
    }

    v34 = *(v30 + 2);
    v33 = *(v30 + 3);
    if (v34 >= v33 >> 1)
    {
      v30 = sub_21CA4F57C((v33 > 1), v34 + 1, 1, v30);
    }

    *(v30 + 2) = v34 + 1;
    v30[v34 + 32] = 2;
  }

  if (([a1 sharedScopes] & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_21CA4F57C(0, *(v30 + 2) + 1, 1, v30);
    }

    v36 = *(v30 + 2);
    v35 = *(v30 + 3);
    if (v36 >= v35 >> 1)
    {
      v30 = sub_21CA4F57C((v35 > 1), v36 + 1, 1, v30);
    }

    *(v30 + 2) = v36 + 1;
    v30[v36 + 32] = 3;
  }

  *(a2 + v9[8]) = v30;

  v37 = [a1 privateEmail];
  if (v37)
  {
    v38 = v37;
    v39 = sub_21CB855C4();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  v42 = (a2 + v9[9]);
  *v42 = v39;
  v42[1] = v41;
  v43 = [a1 localizedAppDeveloperName];
  v44 = sub_21CB855C4();
  v46 = v45;

  v47 = (a2 + v9[10]);
  *v47 = v44;
  v47[1] = v46;
  v48 = [a1 privacyPolicyURL];
  if (v48)
  {
    v49 = v48;
    v50 = sub_21CB855C4();
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0;
  }

  v53 = (a2 + v9[11]);
  *v53 = v50;
  v53[1] = v52;
  *(a2 + v9[12]) = [a1 hasEULA];
  v54 = [a1 shareInfo];
  if (v54)
  {
    v55 = v54;
    v56 = [v54 participantID];

    v57 = sub_21CB855C4();
    v59 = v58;
  }

  else
  {
    v57 = 0;
    v59 = 0;
  }

  v60 = (a2 + v9[16]);
  *v60 = v57;
  v60[1] = v59;
  v61 = [a1 shareInfo];
  if (v61)
  {
    v62 = v61;
    v63 = [v62 groupID];
    sub_21CB855C4();

    v64 = v71;
    sub_21CB85B54();

    v65 = 0;
    a1 = v62;
  }

  else
  {
    v65 = 1;
    v64 = v71;
  }

  v68(v64, v65, 1, v69);

  return sub_21C7D3344(v64, a2 + v70, &unk_27CDF20B0, &unk_21CBA0090);
}

PasswordManagerUI::PMSignInWithAppleAccountSharedScope_optional __swiftcall PMSignInWithAppleAccountSharedScope.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v3 = v1;
  v4 = stringValue._countAndFlagsBits == 1701736302 && stringValue._object == 0xE400000000000000;
  if (v4 || (countAndFlagsBits = stringValue._countAndFlagsBits, (sub_21CB86344() & 1) != 0))
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 1701667182 && object == 0xE400000000000000 || (sub_21CB86344() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x6C69616D65 && object == 0xE500000000000000 || (sub_21CB86344() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x4565746176697270 && object == 0xEC0000006C69616DLL)
  {

    v7 = 3;
  }

  else
  {
    v8 = sub_21CB86344();

    if (v8)
    {
      v7 = 3;
    }

    else
    {
      v7 = 4;
    }
  }

  *v3 = v7;
  return result;
}

PasswordManagerUI::PMSignInWithAppleAccountSharedScope_optional __swiftcall PMSignInWithAppleAccountSharedScope.init(intValue:)(Swift::Int intValue)
{
  v2 = 4;
  if (intValue < 4)
  {
    v2 = intValue;
  }

  *v1 = v2;
  return intValue;
}

uint64_t PMSignInWithAppleAccountSharedScope.stringValue.getter()
{
  v1 = 1701736302;
  v2 = 0x6C69616D65;
  if (*v0 != 2)
  {
    v2 = 0x4565746176697270;
  }

  if (*v0)
  {
    v1 = 1701667182;
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

uint64_t sub_21CB2B614()
{
  v1 = 1701736302;
  v2 = 0x6C69616D65;
  if (*v0 != 2)
  {
    v2 = 0x4565746176697270;
  }

  if (*v0)
  {
    v1 = 1701667182;
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

uint64_t sub_21CB2B698(uint64_t a1)
{
  v2 = sub_21CB2CC08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CB2B6D4(uint64_t a1)
{
  v2 = sub_21CB2CC08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PMSignInWithAppleAccount.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21CB85C44();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v5 - 8);
  v25 = &v24 - v6;
  v7 = sub_21CB80DD4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - v12;
  sub_21CB85B44();
  sub_21CB2CC5C(&qword_27CDF92A0, MEMORY[0x277D49918], MEMORY[0x277D49920]);
  sub_21CB85494();
  v14 = type metadata accessor for PMSignInWithAppleAccount(0);
  sub_21CB85B74();
  sub_21CB2CC5C(&qword_27CDEB3D8, MEMORY[0x277D49930], MEMORY[0x277D49938]);
  sub_21CB85494();
  sub_21CB854C4();
  sub_21C6EDBAC(v1 + v14[7], v13, &unk_27CDED250, &qword_21CBA64C0);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    sub_21CB864A4();
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    sub_21CB864A4();
    sub_21CB2CC5C(&qword_27CDEC280, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_21CB85494();
    (*(v8 + 8))(v10, v7);
  }

  v15 = *(v1 + v14[8]);
  MEMORY[0x21CF15F90](*(v15 + 16));
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = (v15 + 32);
    do
    {
      v18 = *v17++;
      MEMORY[0x21CF15F90](v18);
      --v16;
    }

    while (v16);
  }

  if (*(v1 + v14[9] + 8))
  {
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  sub_21CB854C4();
  if (*(v1 + v14[11] + 8))
  {
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  sub_21CB864A4();
  if (*(v1 + v14[13] + 8))
  {
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  if (*(v1 + v14[14] + 8))
  {
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  if (*(v1 + v14[15] + 8))
  {
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  if (*(v1 + v14[16] + 8))
  {
    sub_21CB864A4();
    sub_21CB854C4();
  }

  else
  {
    sub_21CB864A4();
  }

  v19 = v25;
  sub_21C6EDBAC(v2 + v14[17], v25, &unk_27CDF20B0, &unk_21CBA0090);
  v21 = v26;
  v20 = v27;
  if ((*(v26 + 48))(v19, 1, v27) == 1)
  {
    return sub_21CB864A4();
  }

  v23 = v24;
  (*(v21 + 32))(v24, v19, v20);
  sub_21CB864A4();
  sub_21CB2CC5C(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
  sub_21CB85494();
  return (*(v21 + 8))(v23, v20);
}

uint64_t PMSignInWithAppleAccount.hashValue.getter()
{
  sub_21CB86484();
  PMSignInWithAppleAccount.hash(into:)(v1);
  return sub_21CB864D4();
}

uint64_t sub_21CB2BDA0()
{
  sub_21CB86484();
  PMSignInWithAppleAccount.hash(into:)(v1);
  return sub_21CB864D4();
}

uint64_t sub_21CB2BDE4(uint64_t a1)
{
  sub_21CB86484();
  PMSignInWithAppleAccount.hash(into:)(v2);
  return sub_21CB864D4();
}

uint64_t _s17PasswordManagerUI24PMSignInWithAppleAccountV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v88 = sub_21CB85C44();
  v90 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v5 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v6 - 8);
  v86 = &v85 - v7;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  MEMORY[0x28223BE20](v87);
  v89 = &v85 - v8;
  v9 = sub_21CB80DD4();
  v93 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v91 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  MEMORY[0x28223BE20](v11 - 8);
  v92 = &v85 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3E0, &unk_21CBA1A70);
  MEMORY[0x28223BE20](v13);
  v15 = &v85 - v14;
  sub_21CB85B44();
  sub_21CB2CC5C(&qword_27CDF92E8, MEMORY[0x277D49918], MEMORY[0x277D49928]);
  v16 = a1;
  sub_21CB857F4();
  sub_21CB857F4();
  if (v96 == v95)
  {
  }

  else
  {
    v17 = sub_21CB86344();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  v85 = v5;
  v94 = type metadata accessor for PMSignInWithAppleAccount(0);
  sub_21CB85B74();
  sub_21CB2CC5C(&qword_27CDEB3C0, MEMORY[0x277D49930], MEMORY[0x277D49940]);
  sub_21CB857F4();
  sub_21CB857F4();
  if (v96 == v95)
  {

    goto LABEL_7;
  }

  v18 = sub_21CB86344();

  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  v19 = v94;
  v20 = *(v94 + 24);
  v21 = v16;
  v22 = *(v16 + v20);
  v23 = *(v16 + v20 + 8);
  v24 = (a2 + v20);
  if ((v22 != *v24 || v23 != v24[1]) && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

  v25 = *(v19 + 28);
  v26 = *(v13 + 48);
  sub_21C6EDBAC(v16 + v25, v15, &unk_27CDED250, &qword_21CBA64C0);
  sub_21C6EDBAC(a2 + v25, &v15[v26], &unk_27CDED250, &qword_21CBA64C0);
  v27 = v93;
  v28 = *(v93 + 48);
  if (v28(v15, 1, v9) == 1)
  {
    if (v28(&v15[v26], 1, v9) == 1)
    {
      sub_21C6EA794(v15, &unk_27CDED250, &qword_21CBA64C0);
      goto LABEL_18;
    }

LABEL_15:
    v30 = &qword_27CDEB3E0;
    v31 = &unk_21CBA1A70;
    v32 = v15;
LABEL_16:
    sub_21C6EA794(v32, v30, v31);
    return 0;
  }

  v29 = v92;
  sub_21C6EDBAC(v15, v92, &unk_27CDED250, &qword_21CBA64C0);
  if (v28(&v15[v26], 1, v9) == 1)
  {
    (*(v27 + 8))(v29, v9);
    goto LABEL_15;
  }

  v33 = v91;
  (*(v27 + 32))(v91, &v15[v26], v9);
  sub_21CB2CC5C(&qword_27CDEB3E8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v34 = sub_21CB85574();
  v35 = *(v27 + 8);
  v35(v33, v9);
  v35(v29, v9);
  sub_21C6EA794(v15, &unk_27CDED250, &qword_21CBA64C0);
  if ((v34 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  v36 = v94;
  if ((sub_21C967A2C(*(v21 + *(v94 + 32)), *(a2 + *(v94 + 32))) & 1) == 0)
  {
    return 0;
  }

  v37 = v36[9];
  v38 = (v21 + v37);
  v39 = *(v21 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41 || (*v38 != *v40 || v39 != v41) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v41)
  {
    return 0;
  }

  v42 = v36[10];
  v43 = *(v21 + v42);
  v44 = *(v21 + v42 + 8);
  v45 = (a2 + v42);
  if ((v43 != *v45 || v44 != v45[1]) && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

  v46 = v36[11];
  v47 = (v21 + v46);
  v48 = *(v21 + v46 + 8);
  v49 = (a2 + v46);
  v50 = v49[1];
  if (v48)
  {
    if (!v50 || (*v47 != *v49 || v48 != v50) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v50)
  {
    return 0;
  }

  if (*(v21 + v36[12]) != *(a2 + v36[12]))
  {
    return 0;
  }

  v52 = v36[13];
  v53 = (v21 + v52);
  v54 = *(v21 + v52 + 8);
  v55 = (a2 + v52);
  v56 = v55[1];
  if (v54)
  {
    if (!v56 || (*v53 != *v55 || v54 != v56) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v56)
  {
    return 0;
  }

  v57 = v36[14];
  v58 = (v21 + v57);
  v59 = *(v21 + v57 + 8);
  v60 = (a2 + v57);
  v61 = v60[1];
  if (v59)
  {
    if (!v61 || (*v58 != *v60 || v59 != v61) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v61)
  {
    return 0;
  }

  v62 = v36[15];
  v63 = (v21 + v62);
  v64 = *(v21 + v62 + 8);
  v65 = (a2 + v62);
  v66 = v65[1];
  if (v64)
  {
    if (!v66 || (*v63 != *v65 || v64 != v66) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v66)
  {
    return 0;
  }

  v67 = v36[16];
  v68 = (v21 + v67);
  v69 = *(v21 + v67 + 8);
  v70 = (a2 + v67);
  v71 = v70[1];
  if (v69)
  {
    if (!v71 || (*v68 != *v70 || v69 != v71) && (sub_21CB86344() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v71)
  {
    return 0;
  }

  v72 = v36[17];
  v73 = *(v87 + 48);
  v74 = v89;
  sub_21C6EDBAC(v21 + v72, v89, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EDBAC(a2 + v72, v74 + v73, &unk_27CDF20B0, &unk_21CBA0090);
  v75 = *(v90 + 48);
  v76 = v88;
  if (v75(v74, 1, v88) == 1)
  {
    v77 = v75(v74 + v73, 1, v76) == 1;
    v32 = v74;
    if (!v77)
    {
      goto LABEL_72;
    }

    sub_21C6EA794(v74, &unk_27CDF20B0, &unk_21CBA0090);
  }

  else
  {
    v78 = v86;
    sub_21C6EDBAC(v74, v86, &unk_27CDF20B0, &unk_21CBA0090);
    if (v75(v74 + v73, 1, v76) == 1)
    {
      (*(v90 + 8))(v78, v76);
      v32 = v89;
LABEL_72:
      v30 = &qword_27CDEAC40;
      v31 = &qword_21CBA1A40;
      goto LABEL_16;
    }

    v80 = v89;
    v79 = v90;
    v81 = v89 + v73;
    v82 = v85;
    (*(v90 + 32))(v85, v81, v76);
    sub_21CB2CC5C(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
    v83 = sub_21CB85574();
    v84 = *(v79 + 8);
    v84(v82, v76);
    v84(v78, v76);
    sub_21C6EA794(v80, &unk_27CDF20B0, &unk_21CBA0090);
    if ((v83 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t type metadata accessor for PMSignInWithAppleAccount(uint64_t a1)
{
  result = qword_27CDF92C8;
  if (!qword_27CDF92C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21CB2C8AC()
{
  result = qword_27CDF92A8;
  if (!qword_27CDF92A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF92A8);
  }

  return result;
}

unint64_t sub_21CB2C904()
{
  result = qword_27CDF92B0;
  if (!qword_27CDF92B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF92B0);
  }

  return result;
}

unint64_t sub_21CB2C95C()
{
  result = qword_27CDF92B8;
  if (!qword_27CDF92B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF92B8);
  }

  return result;
}

void sub_21CB2CA30(uint64_t a1)
{
  sub_21CB85B44();
  if (v1 <= 0x3F)
  {
    sub_21CB85B74();
    if (v2 <= 0x3F)
    {
      sub_21C6EAB20(319, &qword_27CDEB310, MEMORY[0x277CC9578]);
      if (v3 <= 0x3F)
      {
        sub_21CB2CBB8(319, &qword_27CDF92D8, &type metadata for PMSignInWithAppleAccountSharedScope, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_21CB2CBB8(319, &qword_27CDEB308, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_21C6EAB20(319, &qword_27CDEABC0, MEMORY[0x277D49978]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21CB2CBB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_21CB2CC08()
{
  result = qword_27CDF92E0;
  if (!qword_27CDF92E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF92E0);
  }

  return result;
}

uint64_t sub_21CB2CC5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PMContentListSearchable(uint64_t a1)
{
  result = qword_27CDF92F0;
  if (!qword_27CDF92F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CB2CD1C(uint64_t a1)
{
  sub_21C7086F8(319);
  if (v1 <= 0x3F)
  {
    sub_21CB2CE30(319, &qword_27CDEE7E8, type metadata accessor for PMGlobalSearchModel, type metadata accessor for PMDependency);
    if (v2 <= 0x3F)
    {
      sub_21CB2CE30(319, &qword_27CDEF190, type metadata accessor for PMAppRootNavigationModel, MEMORY[0x277CDD7D0]);
      if (v3 <= 0x3F)
      {
        sub_21CB2CE94();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21CB2CE30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_21CB2CE94()
{
  if (!qword_27CDEE4A0)
  {
    v0 = sub_21CB84F94();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEE4A0);
    }
  }
}

uint64_t sub_21CB2CF00(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PMContentListSearchable(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9300, &qword_21CBCB300);
  MEMORY[0x28223BE20](v8);
  v10 = v18 - v9;
  sub_21CB2D1BC(a1, v18 - v9);
  v11 = *(v2 + *(v5 + 28));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v12 = sub_21C81C2B8(v11, v18[0]);

  swift_getKeyPath(byte_21CBCB308);
  v18[0] = v12;
  sub_21CB2E280(&qword_27CDEEE18, type metadata accessor for PMGlobalSearchModel, &unk_21CBAC838);
  sub_21CB810D4();

  v13 = *(v12 + 16);
  v14 = *(v12 + 24);

  v18[0] = v13;
  v18[1] = v14;
  sub_21CB2DF3C(v2, v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_21CB2DFA0(v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_21CB2E064();
  sub_21CB84934();

  return sub_21C6EA794(v10, &qword_27CDF9300, &qword_21CBCB300);
}

uint64_t sub_21CB2D1BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a1;
  v81 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9330, &qword_21CBCB350);
  MEMORY[0x28223BE20](v79);
  v80 = &v64[-v3];
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9318, &qword_21CBCB338);
  MEMORY[0x28223BE20](v84);
  v77 = &v64[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v75 = &v64[-v6];
  v7 = sub_21CB83834();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v69 = &v64[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  MEMORY[0x28223BE20](v10);
  v12 = &v64[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v13 - 8);
  v76 = &v64[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v64[-v16];
  MEMORY[0x28223BE20](v18);
  v20 = &v64[-v19];
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0348, &qword_21CBAE820);
  v85 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v73 = &v64[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v71 = &v64[-v23];
  MEMORY[0x28223BE20](v24);
  v70 = &v64[-v25];
  MEMORY[0x28223BE20](v26);
  v28 = &v64[-v27];
  v72 = type metadata accessor for PMContentListSearchable(0);
  v29 = *(v2 + *(v72 + 20));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C81C2B8(v29, v95);

  type metadata accessor for PMGlobalSearchModel(0);
  sub_21CB2E280(&qword_27CDEEE18, type metadata accessor for PMGlobalSearchModel, &unk_21CBAC838);
  v82 = v28;
  sub_21CB850A4();
  v74 = v2;
  sub_21C728D50(v20);
  (*(v8 + 104))(v17, *MEMORY[0x277CE0558], v7);
  (*(v8 + 56))(v17, 0, 1, v7);
  v30 = *(v10 + 48);
  sub_21C6EDBAC(v20, v12, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v17, &v12[v30], &qword_27CDEC390, &qword_21CBA40E0);
  v31 = *(v8 + 48);
  if (v31(v12, 1, v7) == 1)
  {
    sub_21C6EA794(v17, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v20, &qword_27CDEC390, &qword_21CBA40E0);
    if (v31(&v12[v30], 1, v7) == 1)
    {
      sub_21C6EA794(v12, &qword_27CDEC390, &qword_21CBA40E0);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v32 = v76;
  sub_21C6EDBAC(v12, v76, &qword_27CDEC390, &qword_21CBA40E0);
  if (v31(&v12[v30], 1, v7) == 1)
  {
    sub_21C6EA794(v17, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v20, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v8 + 8))(v32, v7);
LABEL_8:
    sub_21C6EA794(v12, &qword_27CDEE530, &unk_21CBA9D80);
LABEL_9:
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9328, &unk_21CBCB340);
    (*(*(v33 - 8) + 16))(v80, v78, v33);
    swift_storeEnumTagMultiPayload();
    sub_21CB2E0F0();
    sub_21CB2E1AC();
    sub_21CB83494();
    return (*(v85 + 8))(v82, v83);
  }

  v35 = v32;
  v36 = v69;
  (*(v8 + 32))(v69, &v12[v30], v7);
  sub_21CB2E280(&qword_27CDEE538, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v37 = sub_21CB85574();
  v38 = *(v8 + 8);
  v38(v36, v7);
  sub_21C6EA794(v17, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v20, &qword_27CDEC390, &qword_21CBA40E0);
  v38(v35, v7);
  sub_21C6EA794(v12, &qword_27CDEC390, &qword_21CBA40E0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_11:
  v39 = v70;
  v40 = v83;
  sub_21CB85094();
  swift_getKeyPath(byte_21CBCB308);
  sub_21CB850B4();

  v41 = v85 + 8;
  v42 = *(v85 + 8);
  (v42)(v39, v40);
  v67 = v95;
  v70 = v96;
  v66 = v97;
  v69 = v98;
  v43 = v71;
  sub_21CB85094();
  swift_getKeyPath(byte_21CBCB358);
  sub_21CB850B4();

  (v42)(v43, v40);
  v71 = v92;
  v68 = v93;
  v65 = v94;
  v44 = v73;
  sub_21CB85094();
  swift_getKeyPath(byte_21CBCB380);
  sub_21CB850B4();

  v85 = v41;
  v76 = v42;
  (v42)(v44, v40);
  v45 = v89;
  v46 = v90;
  LODWORD(v73) = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF168, &qword_21CBABBC0);
  sub_21CB821D4();
  if (v88 != 1)
  {
    j_j__swift_release(v87);
    goto LABEL_15;
  }

  if (!v87)
  {
LABEL_15:
    v48 = 0;
    v50 = 0;
    goto LABEL_16;
  }

  v47 = v87;
  v48 = sub_21C8CEDC4();
  v50 = v49;
  j_j__swift_release(v47);
LABEL_16:
  v51 = &v77[*(v84 + 36)];
  v52 = v70;
  *v51 = v67;
  *(v51 + 1) = v52;
  v53 = v69;
  *(v51 + 2) = v66;
  *(v51 + 3) = v53;
  v54 = v68;
  *(v51 + 4) = v71;
  *(v51 + 5) = v54;
  v51[48] = v65;
  *(v51 + 7) = v45;
  *(v51 + 8) = v46;
  v51[72] = v73;
  *(v51 + 73) = 257;
  *(v51 + 10) = v48;
  *(v51 + 11) = v50;
  v86 = 0;

  sub_21CB84D44();
  v55 = v88;
  v51[96] = v87;
  *(v51 + 13) = v55;
  v56 = sub_21CB81F94();
  v58 = v57;
  LODWORD(v74) = v59;

  v51[112] = v56 & 1;
  *(v51 + 15) = v58;
  v51[128] = v74 & 1;
  v60 = *(type metadata accessor for PMSearchable(0) + 48);
  *&v51[v60] = swift_getKeyPath(asc_21CBCB3A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9328, &unk_21CBCB340);
  v62 = v77;
  (*(*(v61 - 8) + 16))(v77, v78, v61);
  v63 = v75;
  sub_21CB2E210(v62, v75);
  sub_21C6EDBAC(v63, v80, &qword_27CDF9318, &qword_21CBCB338);
  swift_storeEnumTagMultiPayload();
  sub_21CB2E0F0();
  sub_21CB2E1AC();
  sub_21CB83494();
  sub_21C6EA794(v63, &qword_27CDF9318, &qword_21CBCB338);
  return (v76)(v82, v83);
}

uint64_t sub_21CB2DDD0(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for PMContentListSearchable(0) + 20));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C81C2B8(v1, v3);

  swift_getKeyPath(byte_21CBCB308);
  sub_21CB2E280(&qword_27CDEEE18, type metadata accessor for PMGlobalSearchModel, &unk_21CBAC838);
  sub_21CB810D4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
  return sub_21CB84F34();
}

uint64_t sub_21CB2DF3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMContentListSearchable(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CB2DFA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMContentListSearchable(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CB2E004()
{
  v1 = *(type metadata accessor for PMContentListSearchable(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21CB2DDD0(v2);
}

unint64_t sub_21CB2E064()
{
  result = qword_27CDF9308;
  if (!qword_27CDF9308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9300, &qword_21CBCB300);
    sub_21CB2E0F0();
    sub_21CB2E1AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9308);
  }

  return result;
}

unint64_t sub_21CB2E0F0()
{
  result = qword_27CDF9310;
  if (!qword_27CDF9310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9318, &qword_21CBCB338);
    sub_21CB2E1AC();
    sub_21CB2E280(&qword_27CDEBF90, type metadata accessor for PMSearchable, &unk_21CBA9C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9310);
  }

  return result;
}

unint64_t sub_21CB2E1AC()
{
  result = qword_27CDF9320;
  if (!qword_27CDF9320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF9328, &unk_21CBCB340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF9320);
  }

  return result;
}

uint64_t sub_21CB2E210(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9318, &qword_21CBCB338);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CB2E280(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CB2E2C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB2A8, &qword_21CBA1670);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - v5;
  type metadata accessor for PMSignInWithAppleAccountDetailsModel(0);
  swift_allocObject();
  LOBYTE(v37) = 0;
  sub_21CB81D74();
  sub_21CB3917C(&qword_27CDF68E8, type metadata accessor for PMSignInWithAppleAccountDetailsModel, &unk_21CBC0218);
  *a2 = sub_21CB82674();
  a2[1] = v7;
  v8 = type metadata accessor for PMSignInWithAppleAccountDetailsView(0);
  v9 = v8[5];
  *(a2 + v9) = swift_getKeyPath(asc_21CBCB3E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v10 = v8[6];
  *(a2 + v10) = swift_getKeyPath(byte_21CBCB420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v11 = (a2 + v8[7]);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v37);

  type metadata accessor for PMAccountsState(0);
  sub_21CB3917C(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v13 = sub_21CB82674();
  v15 = v14;

  *v11 = v13;
  v11[1] = v15;
  v16 = (a2 + v8[8]);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAEF8, &unk_21CBA0740);
  sub_21CB84D44();
  v17 = v38;
  *v16 = v37;
  v16[1] = v17;
  v18 = a2 + v8[9];
  *v18 = swift_getKeyPath(byte_21CBCB488);
  v18[8] = 0;
  v19 = a2 + v8[10];
  LOBYTE(v34) = 0;
  sub_21CB84D44();
  v20 = *(&v37 + 1);
  *v19 = v37;
  *(v19 + 1) = v20;
  v21 = (a2 + v8[11]);
  v22 = swift_getKeyPath(byte_21CBCB4B0);
  sub_21CB86544();
  sub_21C7073E8(v22, v37);

  type metadata accessor for PMGroupsStore(0);
  sub_21CB3917C(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v23 = sub_21CB82674();
  v25 = v24;

  *v21 = v23;
  v21[1] = v25;
  v26 = a2 + v8[12];
  *v26 = swift_getKeyPath(aH_112);
  v26[8] = 0;
  sub_21CB38794(a1, a2 + v8[13], type metadata accessor for PMAccount);
  PMAccount.signInWithAppleAccount.getter(v6);
  v27 = type metadata accessor for PMSignInWithAppleAccount(0);
  if ((*(*(v27 - 8) + 48))(v6, 1, v27) == 1)
  {
    sub_21C6EA794(v6, &qword_27CDEB2A8, &qword_21CBA1670);
    v28 = 0;
    v29 = 0xE000000000000000;
  }

  else
  {
    v30 = &v6[*(v27 + 24)];
    v28 = *v30;
    v29 = *(v30 + 1);

    sub_21C719900(v6, type metadata accessor for PMSignInWithAppleAccount);
  }

  result = sub_21C719900(a1, type metadata accessor for PMAccount);
  v32 = (a2 + v8[14]);
  *v32 = v28;
  v32[1] = v29;
  return result;
}

uint64_t type metadata accessor for PMSignInWithAppleAccountDetailsView(uint64_t a1)
{
  result = qword_27CDF9338;
  if (!qword_27CDF9338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CB2E7BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = sub_21CB830D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMSignInWithAppleAccountDetailsView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  *&v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9358, &qword_21CBCB578);
  MEMORY[0x28223BE20](v47);
  v11 = (&v45 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9360, &qword_21CBCB580);
  v50 = *(v12 - 8);
  v51 = v12;
  MEMORY[0x28223BE20](v12);
  v48 = &v45 - v13;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9368, &unk_21CBCB588);
  MEMORY[0x28223BE20](v54);
  v53 = &v45 - v14;
  sub_21CB38794(v2, &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMSignInWithAppleAccountDetailsView);
  v15 = *(v8 + 80);
  v16 = (v15 + 16) & ~v15;
  v52 = v9;
  v45 = v15;
  v17 = swift_allocObject();
  v46 = v16;
  v55 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB3910C(v55, v17 + v16, type metadata accessor for PMSignInWithAppleAccountDetailsView);
  *&v49 = v7;
  v18 = *(v7 + 40);
  v56 = v2;
  v19 = (v2 + v18);
  v20 = *v19;
  v21 = *(v19 + 1);
  LOBYTE(v58) = v20;
  *(&v58 + 1) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  if (v61 == 1)
  {
    sub_21CB830B4();
  }

  else
  {
    sub_21CB830C4();
  }

  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9370, &qword_21CBCB598) + 36);
  (*(v4 + 16))(v11 + v22, v6, v3);
  v23 = *(v4 + 56);
  v23(v11 + v22, 0, 1, v3);
  *v11 = sub_21CB37CFC;
  v11[1] = v17;
  KeyPath = swift_getKeyPath(asc_21CBCB5A0);
  v25 = (v11 + *(v47 + 36));
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB238, &qword_21CBA1570) + 28);
  (*(v4 + 32))(v25 + v26, v6, v3);
  v27 = (v23)(v25 + v26, 0, 1, v3);
  *v25 = KeyPath;
  MEMORY[0x28223BE20](v27);
  v28 = v56;
  *(&v45 - 2) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9378, &qword_21CBCB5D8);
  sub_21CB37D74();
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF93A0, &qword_21CBCB5F0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF93A8, &qword_21CBCB5F8);
  v31 = sub_21CB37F10();
  *&v58 = v30;
  *(&v58 + 1) = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v58 = v29;
  *(&v58 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v33 = v48;
  sub_21CB84894();
  sub_21C6EA794(v11, &qword_27CDF9358, &qword_21CBCB578);
  v34 = (v28 + *(v49 + 32));
  v35 = v34[1];
  v61 = *v34;
  v62 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF93C8, &qword_21CBCB610);
  sub_21CB84D74();
  v49 = v58;
  v47 = v59;
  v36 = v60;
  v37 = v55;
  sub_21CB38794(v28, v55, type metadata accessor for PMSignInWithAppleAccountDetailsView);
  v38 = v46;
  v39 = swift_allocObject();
  sub_21CB3910C(v37, v39 + v38, type metadata accessor for PMSignInWithAppleAccountDetailsView);
  v40 = v53;
  (*(v50 + 32))(v53, v33, v51);
  v41 = v40 + *(v54 + 36);
  v42 = v47;
  *v41 = v49;
  *(v41 + 16) = v42;
  *(v41 + 32) = v36;
  *(v41 + 40) = &unk_21CBCB620;
  *(v41 + 48) = v39;
  v43 = *(v28 + 8);
  type metadata accessor for PMSignInWithAppleAccountDetailsModel(0);
  sub_21CB3917C(&qword_27CDF68E8, type metadata accessor for PMSignInWithAppleAccountDetailsModel, &unk_21CBC0218);
  sub_21CB81CD4();
  *&v58 = v43;
  sub_21CB38144();
  sub_21CB843A4();

  return sub_21C6EA794(v40, &qword_27CDF9368, &unk_21CBCB588);
}

uint64_t sub_21CB2EEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF93E8, &unk_21CBCB6A8);
  MEMORY[0x28223BE20](v62);
  v4 = &v51 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C48, &qword_21CBB26C0);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v57 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF93F0, &qword_21CBCB6B8);
  v55 = *(v9 - 8);
  v56 = v9;
  MEMORY[0x28223BE20](v9);
  v52 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v51 - v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF93F8, &qword_21CBCB6C0);
  MEMORY[0x28223BE20](v59);
  v61 = &v51 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9400, &qword_21CBCB6C8);
  MEMORY[0x28223BE20](v60);
  v15 = &v51 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9408, &qword_21CBCB6D0);
  v53 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v51 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9410, &qword_21CBCB6D8);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v51 - v26;
  v28 = (a1 + *(type metadata accessor for PMSignInWithAppleAccountDetailsView(0) + 40));
  v29 = *v28;
  v30 = *(v28 + 1);
  v65 = v29;
  v66 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  v31 = sub_21CB84D54();
  if (v64 == 1)
  {
    v32 = sub_21CB2F6CC(v27);
    MEMORY[0x28223BE20](v32);
    *(&v51 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9440, &qword_21CBCB6F0);
    sub_21CB3844C();
    sub_21CB85054();
    v58 = v27;
    sub_21C6EDBAC(v27, v24, &qword_27CDF9410, &qword_21CBCB6D8);
    v33 = v53;
    v34 = *(v53 + 2);
    v34(v18, v21, v16);
    sub_21C6EDBAC(v24, v15, &qword_27CDF9410, &qword_21CBCB6D8);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9460, &unk_21CBCB708);
    v34(&v15[*(v35 + 48)], v18, v16);
    v36 = *(v33 + 1);
    v36(v18, v16);
    sub_21C6EA794(v24, &qword_27CDF9410, &qword_21CBCB6D8);
    sub_21C6EDBAC(v15, v61, &qword_27CDF9400, &qword_21CBCB6C8);
    swift_storeEnumTagMultiPayload();
    v37 = MEMORY[0x277CE14C0];
    sub_21C6EADEC(&qword_27CDF9430, &qword_27CDF9400, &qword_21CBCB6C8, MEMORY[0x277CE14C0]);
    sub_21C6EADEC(&qword_27CDF9438, &qword_27CDF93E8, &unk_21CBCB6A8, v37);
    sub_21CB83494();
    sub_21C6EA794(v15, &qword_27CDF9400, &qword_21CBCB6C8);
    v36(v21, v16);
    return sub_21C6EA794(v58, &qword_27CDF9410, &qword_21CBCB6D8);
  }

  else
  {
    v53 = v4;
    MEMORY[0x28223BE20](v31);
    *(&v51 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9418, &qword_21CBCB6E0);
    v39 = MEMORY[0x277CE14C0];
    sub_21C6EADEC(&qword_27CDF9420, &qword_27CDF9418, &qword_21CBCB6E0, MEMORY[0x277CE14C0]);
    v40 = v58;
    sub_21CB85054();
    v41 = v57;
    v42 = sub_21CB2FC98(v57);
    v44 = v55;
    v43 = v56;
    v45 = *(v55 + 16);
    v46 = v52;
    v45(v52, v40, v56, v42);
    v47 = v54;
    sub_21C6EDBAC(v41, v54, &qword_27CDF1C48, &qword_21CBB26C0);
    v48 = v53;
    (v45)(v53, v46, v43);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9428, &qword_21CBCB6E8);
    sub_21C6EDBAC(v47, v48 + *(v49 + 48), &qword_27CDF1C48, &qword_21CBB26C0);
    sub_21C6EA794(v47, &qword_27CDF1C48, &qword_21CBB26C0);
    v50 = *(v44 + 8);
    v50(v46, v43);
    sub_21C6EDBAC(v48, v61, &qword_27CDF93E8, &unk_21CBCB6A8);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDF9430, &qword_27CDF9400, &qword_21CBCB6C8, v39);
    sub_21C6EADEC(&qword_27CDF9438, &qword_27CDF93E8, &unk_21CBCB6A8, v39);
    sub_21CB83494();
    sub_21C6EA794(v48, &qword_27CDF93E8, &unk_21CBCB6A8);
    sub_21C6EA794(v41, &qword_27CDF1C48, &qword_21CBB26C0);
    return (v50)(v58, v43);
  }
}

uint64_t sub_21CB2F6CC@<X0>(char *a1@<X8>)
{
  v47 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9478, &qword_21CBCB758);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v39 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9480, &qword_21CBCB760);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9488, &qword_21CBCB768);
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v45 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9490, &qword_21CBCB770);
  v43 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  v52 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9498, &qword_21CBCB778);
  sub_21C6EADEC(&qword_27CDF94A0, &qword_27CDF9498, &qword_21CBCB778, MEMORY[0x277CE14C0]);
  sub_21CB85054();
  v51 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF94A8, &qword_21CBCB780);
  sub_21CB391CC(&qword_27CDF94B0, &qword_27CDF94A8, &qword_21CBCB780, sub_21CB385D4);
  v18 = v13;
  sub_21CB85054();
  v19 = [objc_opt_self() isSignInWithAppleCredentialSharingEnabled];
  if (v19)
  {
    MEMORY[0x28223BE20](v19);
    *(&v39 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF94E0, &qword_21CBCB7A8);
    sub_21CB386DC();
    v20 = v39;
    sub_21CB85054();
    (*(v3 + 32))(v9, v20, v2);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  (*(v3 + 56))(v9, v21, 1, v2);
  v22 = v43;
  v23 = *(v43 + 16);
  v24 = v48;
  v42 = v17;
  v23(v48, v17, v49);
  v25 = v45;
  v26 = v46;
  v27 = v9;
  v40 = v9;
  v41 = v18;
  v28 = *(v46 + 16);
  v29 = v18;
  v30 = v44;
  v28(v45, v29, v44);
  sub_21C6EDBAC(v27, v50, &qword_27CDF9480, &qword_21CBCB760);
  v31 = v47;
  v32 = v24;
  v33 = v49;
  v23(v47, v32, v49);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF94D8, &qword_21CBCB7A0);
  v28(&v31[*(v34 + 48)], v25, v30);
  v35 = v50;
  sub_21C6EDBAC(v50, &v31[*(v34 + 64)], &qword_27CDF9480, &qword_21CBCB760);
  sub_21C6EA794(v40, &qword_27CDF9480, &qword_21CBCB760);
  v36 = *(v26 + 8);
  v36(v41, v30);
  v37 = *(v22 + 8);
  v37(v42, v33);
  sub_21C6EA794(v35, &qword_27CDF9480, &qword_21CBCB760);
  v36(v25, v30);
  return (v37)(v48, v33);
}

__n128 sub_21CB2FC98@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF11D0, &qword_21CBB0B20);
  MEMORY[0x28223BE20](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C38, &unk_21CBB26B0);
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C40, &qword_21CBCB960);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-v7];
  v16 = v1;
  sub_21CB85184();
  v9 = MEMORY[0x277CE1340];
  v10 = MEMORY[0x277CE1350];
  sub_21CB831D4();
  *&v17 = v10;
  *(&v17 + 1) = v9;
  swift_getOpaqueTypeConformance2();
  sub_21CB851A4();
  type metadata accessor for PMAppAccountDetailsCredentialSecurityView(0);
  sub_21C943BA4();
  sub_21CB3917C(&qword_27CDF1C58, type metadata accessor for PMAppAccountDetailsCredentialSecurityView, &unk_21CBB8994);
  sub_21CB85034();
  sub_21CB85224();
  sub_21CB82AC4();
  (*(v6 + 32))(a1, v8, v5);
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C48, &qword_21CBB26C0) + 36);
  v12 = v22;
  *(v11 + 64) = v21;
  *(v11 + 80) = v12;
  *(v11 + 96) = v23;
  v13 = v18;
  *v11 = v17;
  *(v11 + 16) = v13;
  result = v20;
  *(v11 + 32) = v19;
  *(v11 + 48) = result;
  return result;
}

uint64_t sub_21CB2FFB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF93A0, &qword_21CBCB5F0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - v2;
  sub_21CB300E0(v8 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF93A8, &qword_21CBCB5F8);
  v5 = sub_21CB37F10();
  v8[0] = v4;
  v8[1] = v5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CF131E0](v3, v0, OpaqueTypeConformance2);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21CB300E0@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2768, &qword_21CBB4860);
  v40 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v3 = &v37 - v2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA80, &unk_21CBA81E0);
  v39 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v5 = &v37 - v4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF93D8, &unk_21CBCB690);
  v38 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v7 = &v37 - v6;
  v8 = sub_21CB83604();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF93B8, &unk_21CBCB600);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF93A8, &qword_21CBCB5F8);
  MEMORY[0x28223BE20](v41);
  v14 = &v37 - v13;
  v15 = (v1 + *(type metadata accessor for PMSignInWithAppleAccountDetailsView(0) + 40));
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v47) = v16;
  v48 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  v18 = sub_21CB84D54();
  if (v46 == 1)
  {
    v19 = sub_21CB835D4();
    MEMORY[0x28223BE20](v19);
    *(&v37 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF93E0, &qword_21CBCB6A0);
    v20 = type metadata accessor for PMPlatformRoleButton(255);
    v21 = sub_21CB3917C(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton, &unk_21CBA2ED8);
    v47 = v20;
    v48 = v21;
    swift_getOpaqueTypeConformance2();
    sub_21CB82194();
    v22 = MEMORY[0x277CDD7A8];
    v23 = sub_21C6EADEC(&qword_27CDF93C0, &qword_27CDF93B8, &unk_21CBCB600, MEMORY[0x277CDD7A8]);
    MEMORY[0x21CF131E0](v12, v9, v23);
    v47 = v9;
    v48 = v23;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v25 = sub_21C6EADEC(&qword_27CDF2770, &qword_27CDEDA80, &unk_21CBA81E0, v22);
    v47 = v43;
    v48 = v25;
    v26 = swift_getOpaqueTypeConformance2();
    v27 = v42;
    MEMORY[0x21CF131F0](v7, v42, v44, OpaqueTypeConformance2, v26);
    (*(v38 + 8))(v7, v27);
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    MEMORY[0x28223BE20](v18);
    *(&v37 - 2) = v1;
    sub_21CB835E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    sub_21CB82194();
    v28 = MEMORY[0x277CDD7A8];
    v29 = sub_21C6EADEC(&qword_27CDF2770, &qword_27CDEDA80, &unk_21CBA81E0, MEMORY[0x277CDD7A8]);
    v30 = v43;
    MEMORY[0x21CF131E0](v5, v43, v29);
    v31 = sub_21C6EADEC(&qword_27CDF93C0, &qword_27CDF93B8, &unk_21CBCB600, v28);
    v47 = v9;
    v48 = v31;
    v32 = swift_getOpaqueTypeConformance2();
    v47 = v30;
    v48 = v29;
    v33 = swift_getOpaqueTypeConformance2();
    v34 = v44;
    MEMORY[0x21CF13200](v3, v42, v44, v32, v33);
    (*(v40 + 8))(v3, v34);
    (*(v39 + 8))(v5, v30);
  }

  v35 = sub_21CB37F10();
  MEMORY[0x21CF131E0](v14, v41, v35);
  return sub_21C6EA794(v14, &qword_27CDF93A8, &qword_21CBCB5F8);
}

uint64_t sub_21CB307D4(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = *(type metadata accessor for PMSignInWithAppleAccountDetailsView(0) - 8);
  v2[3] = v3;
  v2[4] = *(v3 + 64);
  v2[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v2[6] = swift_task_alloc();
  v2[7] = sub_21CB858B4();
  v2[8] = sub_21CB858A4();
  v5 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21CB30908, v5, v4);
}

uint64_t sub_21CB30908()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[2];

  v5 = sub_21CB858E4();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_21CB38794(v4, v1, type metadata accessor for PMSignInWithAppleAccountDetailsView);
  v6 = sub_21CB858A4();
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v6;
  *(v8 + 24) = v9;
  sub_21CB3910C(v1, v8 + v7, type metadata accessor for PMSignInWithAppleAccountDetailsView);
  sub_21C98B308(0, 0, v2, &unk_21CBCB638, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_21CB30A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_21CB858B4();
  v4[4] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_21CB30B14, v6, v5);
}

uint64_t sub_21CB30B14()
{
  v1 = *(v0 + 16);
  *(v0 + 56) = *(v1 + 8);
  swift_getKeyPath(byte_21CBCB640);
  swift_getKeyPath(aH_113);
  *(v0 + 116) = 1;

  sub_21CB81DC4();
  v2 = type metadata accessor for PMSignInWithAppleAccountDetailsView(0);
  *(v0 + 64) = *(v1 + *(v2 + 28) + 8);
  *(v0 + 112) = *(v2 + 52);
  *(v0 + 72) = sub_21CB858A4();
  v4 = sub_21CB85874();
  *(v0 + 80) = v4;
  *(v0 + 88) = v3;

  return MEMORY[0x2822009F8](sub_21CB30C20, v4, v3);
}

uint64_t sub_21CB30C20()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 16);
    v4 = *(*(v0 + 64) + 24);
    ObjectType = swift_getObjectType();
    v10 = (*(v4 + 96) + **(v4 + 96));
    v6 = swift_task_alloc();
    *(v0 + 104) = v6;
    *v6 = v0;
    v6[1] = sub_21CB30DB4;

    return v10(4, v3 + v2, ObjectType, v4);
  }

  else
  {

    v8 = *(v0 + 40);
    v9 = *(v0 + 48);

    return MEMORY[0x2822009F8](sub_21CB30F5C, v8, v9);
  }
}

uint64_t sub_21CB30DB4()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_21CB30EF8, v3, v2);
}

uint64_t sub_21CB30EF8()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_21CB30F5C, v1, v2);
}

uint64_t sub_21CB30F5C()
{

  swift_getKeyPath(byte_21CBCB640);
  swift_getKeyPath(aH_113);
  *(v0 + 117) = 0;

  sub_21CB81DC4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CB3100C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9540, &qword_21CBCB968);
  v88 = *(v3 - 8);
  v89 = v3;
  MEMORY[0x28223BE20](v3);
  v87 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v97 = &v77 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF94E0, &qword_21CBCB7A8);
  v84 = *(v7 - 8);
  v85 = v7;
  MEMORY[0x28223BE20](v7);
  v83 = &v77 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9548, &qword_21CBCB970);
  MEMORY[0x28223BE20](v9 - 8);
  v96 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v98 = &v77 - v12;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9550, &qword_21CBCB978);
  MEMORY[0x28223BE20](v79);
  v82 = &v77 - v13;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B78, &qword_21CBBE2D0);
  MEMORY[0x28223BE20](v81);
  v80 = &v77 - v14;
  v15 = type metadata accessor for PMSignInWithAppleAccount(0);
  v16 = *(v15 - 1);
  MEMORY[0x28223BE20](v15);
  v78 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB2A8, &qword_21CBA1670);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v77 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9558, &qword_21CBCB980);
  MEMORY[0x28223BE20](v24 - 8);
  v95 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v93 = &v77 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9530, &unk_21CBCB8C0);
  MEMORY[0x28223BE20](v28 - 8);
  v94 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v77 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF55A0, &qword_21CBBE3B8);
  MEMORY[0x28223BE20](v33 - 8);
  v92 = &v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v77 - v36;
  v38 = (a1 + *(type metadata accessor for PMSignInWithAppleAccountDetailsView(0) + 56));
  v40 = *v38;
  v39 = v38[1];

  v41 = sub_21CB34C04();
  v99 = a1;
  v90 = v37;
  v42 = v37;
  v43 = a1;
  sub_21CA26210(v40, v39, v41, v44, sub_21CB39250, v42);
  v91 = v32;
  sub_21CB31C2C(v32);
  PMAccount.signInWithAppleAccount.getter(v23);
  v45 = *(v16 + 48);
  if (v45(v23, 1, v15) == 1)
  {
    sub_21C6EA794(v23, &qword_27CDEB2A8, &qword_21CBA1670);
  }

  else
  {
    v46 = &v23[v15[9]];
    v47 = *v46;
    v48 = v46[1];

    sub_21C719900(v23, type metadata accessor for PMSignInWithAppleAccount);
    if (v48)
    {
      v49 = v80;
      sub_21CB322CC(v47, v48, v80);

      sub_21C6EDBAC(v49, v82, &qword_27CDF1B78, &qword_21CBBE2D0);
      swift_storeEnumTagMultiPayload();
      sub_21C6EADEC(&qword_27CDF1BD0, &qword_27CDF1B78, &qword_21CBBE2D0, &unk_21CBA2640);
      v50 = v93;
      sub_21CB83494();
      sub_21C6EA794(v49, &qword_27CDF1B78, &qword_21CBBE2D0);
      v51 = 0;
      goto LABEL_12;
    }
  }

  PMAccount.signInWithAppleAccount.getter(v20);
  if (v45(v20, 1, v15) == 1)
  {
    sub_21C6EA794(v20, &qword_27CDEB2A8, &qword_21CBA1670);
LABEL_11:
    v51 = 1;
    v50 = v93;
    goto LABEL_12;
  }

  v52 = v78;
  sub_21CB3910C(v20, v78, type metadata accessor for PMSignInWithAppleAccount);
  v53 = (v52 + v15[15]);
  v54 = v53[1];
  if (!v54)
  {
    sub_21C719900(v52, type metadata accessor for PMSignInWithAppleAccount);
    goto LABEL_11;
  }

  v55 = *v53;
  v56 = sub_21C8A137C(2u, *(v52 + v15[8]));
  v50 = v93;
  if (v56)
  {

    v57 = v80;
    sub_21CB326FC(v55, v54, v80);

    sub_21C6EDBAC(v57, v82, &qword_27CDF1B78, &qword_21CBBE2D0);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDF1BD0, &qword_27CDF1B78, &qword_21CBBE2D0, &unk_21CBA2640);
    sub_21CB83494();
    sub_21C6EA794(v57, &qword_27CDF1B78, &qword_21CBBE2D0);
    sub_21C719900(v52, type metadata accessor for PMSignInWithAppleAccount);
    v51 = 0;
  }

  else
  {
    sub_21C719900(v52, type metadata accessor for PMSignInWithAppleAccount);
    v51 = 1;
  }

LABEL_12:
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9560, &qword_21CBCB988);
  v59 = 1;
  (*(*(v58 - 8) + 56))(v50, v51, 1, v58);
  if ([objc_opt_self() isSignInWithAppleCredentialSharingEnabled])
  {
    v60 = v83;
    sub_21CB32B20(v83);
    sub_21C716934(v60, v98, &qword_27CDF94E0, &qword_21CBCB7A8);
    v59 = 0;
  }

  v61 = v98;
  (*(v84 + 56))(v98, v59, 1, v85);
  v62 = sub_21CB85184();
  MEMORY[0x28223BE20](v62);
  *(&v77 - 2) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9500, &unk_21CBCB7B8);
  sub_21CB391CC(&qword_27CDF9568, &qword_27CDF9500, &unk_21CBCB7B8, sub_21C831C64);
  v63 = v97;
  sub_21CB851A4();
  v64 = v92;
  sub_21C6EDBAC(v90, v92, &qword_27CDF55A0, &qword_21CBBE3B8);
  v65 = v94;
  sub_21C6EDBAC(v91, v94, &qword_27CDF9530, &unk_21CBCB8C0);
  v66 = v95;
  sub_21C6EDBAC(v50, v95, &qword_27CDF9558, &qword_21CBCB980);
  v67 = v96;
  sub_21C6EDBAC(v61, v96, &qword_27CDF9548, &qword_21CBCB970);
  v69 = v87;
  v68 = v88;
  v70 = *(v88 + 16);
  v71 = v63;
  v72 = v89;
  v70(v87, v71, v89);
  v73 = v86;
  sub_21C6EDBAC(v64, v86, &qword_27CDF55A0, &qword_21CBBE3B8);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9570, &unk_21CBCB990);
  sub_21C6EDBAC(v65, v73 + v74[12], &qword_27CDF9530, &unk_21CBCB8C0);
  sub_21C6EDBAC(v66, v73 + v74[16], &qword_27CDF9558, &qword_21CBCB980);
  sub_21C6EDBAC(v67, v73 + v74[20], &qword_27CDF9548, &qword_21CBCB970);
  v70((v73 + v74[24]), v69, v72);
  v75 = *(v68 + 8);
  v75(v97, v72);
  sub_21C6EA794(v98, &qword_27CDF9548, &qword_21CBCB970);
  sub_21C6EA794(v93, &qword_27CDF9558, &qword_21CBCB980);
  sub_21C6EA794(v91, &qword_27CDF9530, &unk_21CBCB8C0);
  sub_21C6EA794(v90, &qword_27CDF55A0, &qword_21CBBE3B8);
  v75(v69, v72);
  sub_21C6EA794(v96, &qword_27CDF9548, &qword_21CBCB970);
  sub_21C6EA794(v95, &qword_27CDF9558, &qword_21CBCB980);
  sub_21C6EA794(v94, &qword_27CDF9530, &unk_21CBCB8C0);
  return sub_21C6EA794(v92, &qword_27CDF55A0, &qword_21CBBE3B8);
}

uint64_t sub_21CB31C2C@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = sub_21CB81024();
  v50 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B78, &qword_21CBBE2D0);
  v53 = *(v8 - 8);
  v54 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB2A8, &qword_21CBA1670);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  v51 = *(type metadata accessor for PMSignInWithAppleAccountDetailsView(0) + 52);
  v52 = v1;
  PMAccount.signInWithAppleAccount.getter(v16);
  v17 = type metadata accessor for PMSignInWithAppleAccount(0);
  v18 = *(*(v17 - 8) + 48);
  if (v18(v16, 1, v17) == 1)
  {
    sub_21C6EA794(v16, &qword_27CDEB2A8, &qword_21CBA1670);
LABEL_5:
    v22 = 1;
    v24 = v54;
    v23 = v55;
    return (*(v53 + 56))(v23, v22, 1, v24);
  }

  v19 = &v16[*(v17 + 56)];
  v20 = *(v19 + 1);
  v49 = *v19;

  sub_21C719900(v16, type metadata accessor for PMSignInWithAppleAccount);
  if (!v20)
  {
    goto LABEL_5;
  }

  [objc_opt_self() isAppleAccountBrandingEnabled];
  v21 = (v50 + 8);
  v48 = v20;
  sub_21CB81014();
  v47 = sub_21CB81004();
  v50 = v25;
  v26 = *v21;
  (*v21)(v7, v2);
  sub_21CB81014();
  sub_21CB81014();
  v27 = sub_21CB80FF4();
  v45 = v28;
  v46 = v27;
  v26(v4, v2);
  v26(v7, v2);
  PMAccount.signInWithAppleAccount.getter(v13);
  if (v18(v13, 1, v17) == 1)
  {
    sub_21C6EA794(v13, &qword_27CDEB2A8, &qword_21CBA1670);
    v29 = 0;
    v30 = 0;
  }

  else
  {
    v31 = &v13[*(v17 + 52)];
    v29 = *v31;
    v30 = *(v31 + 1);

    sub_21C719900(v13, type metadata accessor for PMSignInWithAppleAccount);
  }

  v24 = v54;
  v56 = 0;
  sub_21CB84D44();
  v32 = v58;
  v10[88] = v57;
  *(v10 + 12) = v32;
  v56 = 0;
  sub_21CB84D44();
  v33 = v58;
  v10[104] = v57;
  *(v10 + 14) = v33;
  v56 = 0;
  sub_21CB84D44();
  v34 = v58;
  v10[120] = v57;
  *(v10 + 16) = v34;
  v56 = 0;
  sub_21CB84D44();
  v35 = v58;
  v10[136] = v57;
  *(v10 + 18) = v35;
  *(v10 + 19) = swift_getKeyPath(byte_21CBCB868);
  *(v10 + 20) = 0;
  v10[168] = 0;
  *(v10 + 22) = swift_getKeyPath(aH_114);
  v10[184] = 0;
  v36 = v24[29];
  *&v10[v36] = swift_getKeyPath(byte_21CBCB420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v37 = &v10[v24[30]];
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21CB3917C(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel, &unk_21CBC08FC);
  *v37 = sub_21CB823C4();
  v37[1] = v38;
  type metadata accessor for PMWiFiDetailsModel(0);
  sub_21CB3917C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
  sub_21CB821F4();
  *&v10[v24[32]] = 0;
  v39 = &v10[v24[33]];
  *v39 = 0x707954656772616CLL;
  *(v39 + 1) = 0xE900000000000065;
  v40 = v50;
  *v10 = v47;
  *(v10 + 1) = v40;
  v41 = v45;
  *(v10 + 2) = v46;
  *(v10 + 3) = v41;
  v42 = v48;
  *(v10 + 4) = v49;
  *(v10 + 5) = v42;
  *(v10 + 6) = 0;
  v10[56] = 1;
  *(v10 + 57) = 0;
  *(v10 + 8) = v29;
  *(v10 + 9) = v30;
  *(v10 + 20) = 257;
  *(v10 + 42) = 256;
  v10[86] = 0;
  v43 = v55;
  sub_21C716934(v10, v55, &qword_27CDF1B78, &qword_21CBBE2D0);
  v23 = v43;
  v22 = 0;
  return (*(v53 + 56))(v23, v22, 1, v24);
}

uint64_t sub_21CB322CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a1;
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  sub_21CB81014();
  sub_21CB81014();
  v30 = sub_21CB80FF4();
  v13 = v12;
  v14 = *(v6 + 8);
  v14(v8, v5);
  v14(v11, v5);
  sub_21CB81014();
  sub_21CB81014();
  v15 = sub_21CB80FF4();
  v17 = v16;
  v14(v8, v5);
  v14(v11, v5);
  v32 = 0;
  sub_21CB84D44();
  v18 = v34;
  *(a3 + 88) = v33;
  *(a3 + 96) = v18;
  v32 = 0;
  sub_21CB84D44();
  v19 = v34;
  *(a3 + 104) = v33;
  *(a3 + 112) = v19;
  v32 = 0;
  sub_21CB84D44();
  v20 = v34;
  *(a3 + 120) = v33;
  *(a3 + 128) = v20;
  v32 = 0;
  sub_21CB84D44();
  v21 = v34;
  *(a3 + 136) = v33;
  *(a3 + 144) = v21;
  *(a3 + 152) = swift_getKeyPath(byte_21CBCB868);
  *(a3 + 160) = 0;
  *(a3 + 168) = 0;
  *(a3 + 176) = swift_getKeyPath(aH_114);
  *(a3 + 184) = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B78, &qword_21CBBE2D0);
  v23 = v22[29];
  *(a3 + v23) = swift_getKeyPath(byte_21CBCB420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v24 = (a3 + v22[30]);
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21CB3917C(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel, &unk_21CBC08FC);
  *v24 = sub_21CB823C4();
  v24[1] = v25;
  type metadata accessor for PMWiFiDetailsModel(0);
  sub_21CB3917C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
  sub_21CB821F4();
  *(a3 + v22[32]) = 0;
  v26 = (a3 + v22[33]);
  *v26 = 0x707954656772616CLL;
  v26[1] = 0xE900000000000065;
  v27 = v31;
  *a3 = v30;
  *(a3 + 8) = v13;
  *(a3 + 16) = v15;
  *(a3 + 24) = v17;
  *(a3 + 32) = v27;
  *(a3 + 40) = a2;
  *(a3 + 48) = 0;
  *(a3 + 56) = 1;
  *(a3 + 57) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 257;
  *(a3 + 84) = 256;
  *(a3 + 86) = 0;
}

uint64_t sub_21CB326FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a1;
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  sub_21CB81014();
  sub_21CB81014();
  v30 = sub_21CB80FF4();
  v13 = v12;
  v14 = *(v6 + 8);
  v14(v8, v5);
  v14(v11, v5);
  sub_21CB81014();
  sub_21CB81014();
  v15 = sub_21CB80FF4();
  v17 = v16;
  v14(v8, v5);
  v14(v11, v5);
  v32 = 0;
  sub_21CB84D44();
  v18 = v34;
  *(a3 + 88) = v33;
  *(a3 + 96) = v18;
  v32 = 0;
  sub_21CB84D44();
  v19 = v34;
  *(a3 + 104) = v33;
  *(a3 + 112) = v19;
  v32 = 0;
  sub_21CB84D44();
  v20 = v34;
  *(a3 + 120) = v33;
  *(a3 + 128) = v20;
  v32 = 0;
  sub_21CB84D44();
  v21 = v34;
  *(a3 + 136) = v33;
  *(a3 + 144) = v21;
  *(a3 + 152) = swift_getKeyPath(byte_21CBCB868);
  *(a3 + 160) = 0;
  *(a3 + 168) = 0;
  *(a3 + 176) = swift_getKeyPath(aH_114);
  *(a3 + 184) = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B78, &qword_21CBBE2D0);
  v23 = v22[29];
  *(a3 + v23) = swift_getKeyPath(byte_21CBCB420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v24 = (a3 + v22[30]);
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21CB3917C(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel, &unk_21CBC08FC);
  *v24 = sub_21CB823C4();
  v24[1] = v25;
  type metadata accessor for PMWiFiDetailsModel(0);
  sub_21CB3917C(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
  sub_21CB821F4();
  *(a3 + v22[32]) = 0;
  v26 = (a3 + v22[33]);
  *v26 = 0x707954656772616CLL;
  v26[1] = 0xE900000000000065;
  v27 = v31;
  *a3 = v30;
  *(a3 + 8) = v13;
  *(a3 + 16) = v15;
  *(a3 + 24) = v17;
  *(a3 + 32) = v27;
  *(a3 + 40) = a2;
  *(a3 + 48) = 0;
  *(a3 + 56) = 1;
  *(a3 + 57) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 257;
  *(a3 + 84) = 256;
  *(a3 + 86) = 0;
}

uint64_t sub_21CB32B20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF94F8, &qword_21CBCB7B0);
  v136 = *(v4 - 8);
  v137 = v4;
  MEMORY[0x28223BE20](v4);
  v133 = &v106 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9500, &unk_21CBCB7B8);
  MEMORY[0x28223BE20](v6 - 8);
  v132 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v131 = &v106 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED6E0, &qword_21CBBE3A0);
  v129 = *(v10 - 8);
  v130 = v10;
  MEMORY[0x28223BE20](v10);
  v128 = &v106 - v11;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9508, &unk_21CBCB7C8);
  MEMORY[0x28223BE20](v124);
  v126 = &v106 - v12;
  v109 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v109);
  v110 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v116 = &v106 - v14;
  v15 = type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  MEMORY[0x28223BE20](v15 - 8);
  v118 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_21CB81024();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v106 - v19;
  v21 = type metadata accessor for PMAccount(0);
  v117 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v115 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for PMMoveAccountToGroupPicker(0);
  MEMORY[0x28223BE20](v135);
  v122 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v121 = &v106 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9510, &qword_21CBCB7D8);
  MEMORY[0x28223BE20](v26 - 8);
  v127 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v125 = &v106 - v29;
  v30 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v30);
  v114 = (&v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v32);
  v34 = (&v106 - v33);
  MEMORY[0x28223BE20](v35);
  v37 = (&v106 - v36);
  v38 = type metadata accessor for PMSignInWithAppleAccountDetailsView(0);
  v39 = v2 + *(v38 + 52);
  v123 = v21;
  v40 = *(v21 + 24);
  v41 = v39;
  sub_21CB38794(v39 + v40, v37, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719900(v37, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v42 = *v37;
    v43 = [v42 userIsNeverSaveMarker];

    if (v43)
    {
      v44 = 1;
      return (*(v136 + 56))(a1, v44, 1, v137);
    }
  }

  v134 = a1;
  swift_getKeyPath(byte_21CBCB7E0);
  swift_getKeyPath(byte_21CBCB808);
  sub_21CB81DB4();

  v45 = *(v139 + 16);

  if (!v45)
  {
    v44 = 1;
    a1 = v134;
    return (*(v136 + 56))(a1, v44, 1, v137);
  }

  sub_21CB38794(v41 + v40, v34, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = sub_21C719900(v34, type metadata accessor for PMAccount.Storage);
    v47 = v131;
  }

  else
  {
    v48 = *v34;
    v49 = [v48 isCurrentUserOriginalContributor];

    v47 = v131;
    if (v49)
    {
      v50 = (v2 + *(v38 + 40));
      v51 = *v50;
      v52 = *(v50 + 1);
      LOBYTE(v139) = v51;
      v140 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
      v46 = sub_21CB84D54();
      if ((v138 & 1) == 0)
      {
        v108 = v41;
        v67 = v115;
        sub_21CB38794(v41, v115, type metadata accessor for PMAccount);
        sub_21CB81014();
        v68 = v111;
        sub_21CB81014();
        v107 = sub_21CB80FF4();
        v106 = v69;
        v70 = *(v112 + 8);
        v71 = v68;
        v72 = v113;
        v70(v71, v113);
        v70(v20, v72);
        v73 = v135;
        v74 = v122;
        v75 = &v122[*(v135 + 32)];
        if (qword_27CDEA4C0 != -1)
        {
          swift_once();
        }

        sub_21CB86544();
        sub_21C7072A8(KeyPath, v139);

        type metadata accessor for PMAccountsState(0);
        sub_21CB3917C(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
        v77 = sub_21CB82674();
        v79 = v78;

        *v75 = v77;
        v75[1] = v79;
        v80 = (v74 + v73[9]);
        v81 = swift_getKeyPath(byte_21CBCB4B0);
        sub_21CB86544();
        sub_21C7073E8(v81, v139);

        type metadata accessor for PMGroupsStore(0);
        sub_21CB3917C(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
        v82 = sub_21CB82674();
        v84 = v83;

        *v80 = v82;
        v80[1] = v84;
        v85 = (v74 + v73[12]);
        v138 = sub_21CB12DEC(MEMORY[0x277D84F90]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D0, &unk_21CBA25B0);
        sub_21CB84D44();
        v86 = v140;
        *v85 = v139;
        v85[1] = v86;
        v87 = v74 + v73[13];
        LOBYTE(v138) = 0;
        sub_21CB84D44();
        v88 = v140;
        *v87 = v139;
        *(v87 + 8) = v88;
        sub_21CB38794(v67, v74, type metadata accessor for PMAccount);
        v89 = (v74 + v73[5]);
        v90 = v106;
        *v89 = v107;
        v89[1] = v90;
        v91 = v114;
        sub_21CB38794(v67 + *(v123 + 24), v114, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21C719900(v67, type metadata accessor for PMAccount);
          v92 = v110;
          sub_21CB3910C(v91, v110, type metadata accessor for PMAccount.MockData);
          v93 = v116;
          sub_21C6EDBAC(v92 + *(v109 + 72), v116, &unk_27CDF20B0, &unk_21CBA0090);
          v94 = type metadata accessor for PMAccount.MockData;
          v95 = v92;
        }

        else
        {
          v96 = *v91;
          v93 = v116;
          sub_21CB85B94();

          v94 = type metadata accessor for PMAccount;
          v95 = v67;
        }

        sub_21C719900(v95, v94);
        a1 = v134;
        v55 = v129;
        v54 = v130;
        v53 = v128;
        v56 = v125;
        v97 = v118;
        sub_21C716934(v93, v118, &unk_27CDF20B0, &unk_21CBA0090);
        (*(v119 + 56))(v97, 0, 2, v120);
        v98 = v135;
        v99 = v122;
        v100 = &v122[*(v135 + 40)];
        *(v100 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D8, &qword_21CBB1F30) + 28)) = 0;
        sub_21CB3910C(v97, v100, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
        v101 = &v99[v98[11]];
        v102 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
        (*(*(v102 - 8) + 56))(v101, 1, 1, v102);
        v103 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0);
        (*(v117 + 56))(&v101[*(v103 + 20)], 1, 1, v123);
        type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage(0);
        swift_storeEnumTagMultiPayload();
        *&v101[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7E0, &qword_21CBA25C0) + 28)] = 0;
        v99[v98[6]] = 1;
        v99[v98[7]] = 0;
        v104 = v99;
        v105 = v121;
        sub_21CB3910C(v104, v121, type metadata accessor for PMMoveAccountToGroupPicker);
        sub_21CB38794(v105, v126, type metadata accessor for PMMoveAccountToGroupPicker);
        swift_storeEnumTagMultiPayload();
        sub_21CB3917C(&qword_27CDEC910, type metadata accessor for PMMoveAccountToGroupPicker, &unk_21CBC22FC);
        sub_21C831C64();
        sub_21CB83494();
        sub_21C719900(v105, type metadata accessor for PMMoveAccountToGroupPicker);
        goto LABEL_12;
      }
    }
  }

  MEMORY[0x28223BE20](v46);
  *(&v106 - 2) = v2;
  v53 = v128;
  sub_21CB825D4();
  v55 = v129;
  v54 = v130;
  (*(v129 + 16))(v126, v53, v130);
  swift_storeEnumTagMultiPayload();
  sub_21CB3917C(&qword_27CDEC910, type metadata accessor for PMMoveAccountToGroupPicker, &unk_21CBC22FC);
  sub_21C831C64();
  v56 = v125;
  sub_21CB83494();
  (*(v55 + 8))(v53, v54);
  a1 = v134;
LABEL_12:
  v57 = sub_21C7CBA64();
  if (v58)
  {
    MEMORY[0x28223BE20](v57);
    *(&v106 - 2) = v59;
    *(&v106 - 1) = v60;
    sub_21CB825D4();

    (*(v55 + 32))(v47, v53, v54);
    v61 = 0;
  }

  else
  {
    v61 = 1;
  }

  (*(v55 + 56))(v47, v61, 1, v54);
  v62 = v127;
  sub_21C6EDBAC(v56, v127, &qword_27CDF9510, &qword_21CBCB7D8);
  v63 = v132;
  sub_21C6EDBAC(v47, v132, &qword_27CDF9500, &unk_21CBCB7B8);
  v64 = v133;
  sub_21C6EDBAC(v62, v133, &qword_27CDF9510, &qword_21CBCB7D8);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF9518, &qword_21CBCB828);
  sub_21C6EDBAC(v63, v64 + *(v65 + 48), &qword_27CDF9500, &unk_21CBCB7B8);
  sub_21C6EA794(v47, &qword_27CDF9500, &unk_21CBCB7B8);
  sub_21C6EA794(v56, &qword_27CDF9510, &qword_21CBCB7D8);
  sub_21C6EA794(v63, &qword_27CDF9500, &unk_21CBCB7B8);
  sub_21C6EA794(v62, &qword_27CDF9510, &qword_21CBCB7D8);
  sub_21C716934(v64, a1, &qword_27CDF94F8, &qword_21CBCB7B0);
  v44 = 0;
  return (*(v136 + 56))(a1, v44, 1, v137);
}