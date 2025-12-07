void type metadata accessor for AIDAServiceType()
{
  if (!qword_2809F8E38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2809F8E38);
    }
  }
}

uint64_t sub_27556269C()
{
  v0 = sub_275565B9C();
  v1 = MEMORY[0x277C7BC80](v0);

  return v1;
}

uint64_t sub_2755626D8(uint64_t a1)
{
  sub_275565B9C();
  sub_275565BAC();
}

uint64_t sub_27556272C(uint64_t a1)
{
  sub_275565B9C();
  sub_275565C9C();
  sub_275565BAC();
  v1 = sub_275565CAC();

  return v1;
}

uint64_t sub_2755627A8(uint64_t a1, id *a2)
{
  result = sub_275565B7C();
  *a2 = 0;
  return result;
}

uint64_t sub_275562820(uint64_t a1, id *a2)
{
  v3 = sub_275565B8C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2755628A0@<X0>(uint64_t *a2@<X8>)
{
  sub_275565B9C();
  v3 = sub_275565B6C();

  *a2 = v3;
  return result;
}

uint64_t sub_2755628E4(void *a1, uint64_t *a2)
{
  v2 = sub_275565B9C();
  v4 = v3;
  if (v2 == sub_275565B9C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_275565C7C();
  }

  return v7 & 1;
}

uint64_t sub_27556296C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_275565B6C();

  *a2 = v3;
  return result;
}

uint64_t sub_2755629B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_275565B9C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2755629E0(uint64_t a1)
{
  v2 = sub_275562B14(&qword_2809F8F00, &unk_275566464);
  v3 = sub_275562B14(&unk_2809F8E60, &unk_2755663C4);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_275562B14(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AIDAServiceType();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_275562B58()
{
  v0 = sub_275565B3C();
  __swift_allocate_value_buffer(v0, qword_2809F9280);
  __swift_project_value_buffer(v0, qword_2809F9280);
  return sub_275565B2C();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_275562C74()
{
  v1 = OBJC_IVAR___iCloudMailUnifiedSettingsProvider____lazy_storage___serviceOwnersManager;
  v2 = *(v0 + OBJC_IVAR___iCloudMailUnifiedSettingsProvider____lazy_storage___serviceOwnersManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___iCloudMailUnifiedSettingsProvider____lazy_storage___serviceOwnersManager);
LABEL_5:
    v8 = v2;
    return v3;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v5 = result;
    v6 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id iCloudMailUnifiedSettingsProvider.__allocating_init(accountManager:presenter:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___iCloudMailUnifiedSettingsProvider_mailSettingsProvider] = 0;
  *&v5[OBJC_IVAR___iCloudMailUnifiedSettingsProvider____lazy_storage___serviceOwnersManager] = 0;
  *&v5[OBJC_IVAR___iCloudMailUnifiedSettingsProvider_accountManager] = a1;
  *&v5[OBJC_IVAR___iCloudMailUnifiedSettingsProvider_presenter] = a2;
  v10.receiver = v5;
  v10.super_class = v2;
  v6 = a1;
  v7 = a2;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  sub_2755656D8();

  return v8;
}

id iCloudMailUnifiedSettingsProvider.init(accountManager:presenter:)(void *a1, void *a2)
{
  *&v2[OBJC_IVAR___iCloudMailUnifiedSettingsProvider_mailSettingsProvider] = 0;
  *&v2[OBJC_IVAR___iCloudMailUnifiedSettingsProvider____lazy_storage___serviceOwnersManager] = 0;
  *&v2[OBJC_IVAR___iCloudMailUnifiedSettingsProvider_accountManager] = a1;
  *&v2[OBJC_IVAR___iCloudMailUnifiedSettingsProvider_presenter] = a2;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for iCloudMailUnifiedSettingsProvider();
  v5 = a1;
  v6 = a2;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_2755656D8();

  return v7;
}

NSObject *iCloudMailUnifiedSettingsProvider.init(presenter:)(void *a1)
{
  v3 = sub_275565B3C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR___iCloudMailUnifiedSettingsProvider_mailSettingsProvider] = 0;
  *&v1[OBJC_IVAR___iCloudMailUnifiedSettingsProvider____lazy_storage___serviceOwnersManager] = 0;
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v8 = result;
    v9 = [objc_allocWithZone(MEMORY[0x277CED1D0]) initWithAccountStore_];

    *&v1[OBJC_IVAR___iCloudMailUnifiedSettingsProvider_accountManager] = v9;
    *&v1[OBJC_IVAR___iCloudMailUnifiedSettingsProvider_presenter] = a1;
    v10 = type metadata accessor for iCloudMailUnifiedSettingsProvider();
    v29.receiver = v1;
    v29.super_class = v10;
    v11 = a1;
    v12 = objc_msgSendSuper2(&v29, sel_init);
    v13 = OBJC_IVAR___iCloudMailUnifiedSettingsProvider_accountManager;
    v14 = *&v12[OBJC_IVAR___iCloudMailUnifiedSettingsProvider_accountManager];
    v15 = v12;
    [v14 setDelegate_];
    if (qword_2809F8DD0 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v3, qword_2809F9280);
    (*(v4 + 16))(v6, v16, v3);
    v17 = v15;
    v18 = sub_275565B1C();
    v19 = sub_275565C0C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v11;
      v22 = v21;
      *v20 = 138412546;
      *(v20 + 4) = v17;
      *v21 = v12;
      *(v20 + 12) = 2112;
      v23 = *&v12[v13];
      *(v20 + 14) = v23;
      v21[1] = v23;
      v24 = v17;
      v25 = v23;
      _os_log_impl(&dword_275561000, v18, v19, "Setting delegage %@ to %@", v20, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F8EF0, &unk_2755664D0);
      swift_arrayDestroy();
      MEMORY[0x277C7C140](v22, -1, -1);
      MEMORY[0x277C7C140](v20, -1, -1);
      v26 = v28;
      v11 = v24;
    }

    else
    {
      v26 = v18;
      v18 = v17;
    }

    (*(v4 + 8))(v6, v3);
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2755632AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v56 = a1;
  v57 = a2;
  v4 = sub_275565B3C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v58 = &v54 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v54 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v54 - v14;
  if (qword_2809F8DD0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v4, qword_2809F9280);
  v17 = *(v5 + 16);
  v59 = v16;
  v60 = v17;
  (v17)(v15);
  v18 = sub_275565B1C();
  v19 = sub_275565C0C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_275561000, v18, v19, "Navigate to iCloud Mail Settings", v20, 2u);
    MEMORY[0x277C7C140](v20, -1, -1);
  }

  v23 = *(v5 + 8);
  v22 = v5 + 8;
  v21 = v23;
  v23(v15, v4);
  sub_2755656D8();
  v24 = sub_275565B6C();
  v25 = NSClassFromString(v24);

  if (v25)
  {
    swift_getObjCClassMetadata();
    v61 = &unk_28842F918;
    if (swift_dynamicCastTypeToObjCProtocolConditional())
    {
      v55 = v21;
      v60(v13, v59, v4);
      v26 = v3;
      v27 = sub_275565B1C();
      v28 = sub_275565C0C();

      v29 = os_log_type_enabled(v27, v28);
      v30 = 0x2809F8000;
      v31 = 0x2809F8000;
      v54 = v22;
      if (v29)
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412546;
        v34 = *&v26[OBJC_IVAR___iCloudMailUnifiedSettingsProvider_accountManager];
        *(v32 + 4) = v34;
        *v33 = v34;
        *(v32 + 12) = 2112;
        v35 = *&v26[OBJC_IVAR___iCloudMailUnifiedSettingsProvider_presenter];
        *(v32 + 14) = v35;
        v33[1] = v35;
        v36 = v34;
        v37 = v35;
        _os_log_impl(&dword_275561000, v27, v28, "navigateToiCloudMailSettings, accountManager: %@, presenter: %@", v32, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F8EF0, &unk_2755664D0);
        swift_arrayDestroy();
        v38 = v33;
        v31 = 0x2809F8000uLL;
        MEMORY[0x277C7C140](v38, -1, -1);
        v39 = v32;
        v30 = 0x2809F8000uLL;
        MEMORY[0x277C7C140](v39, -1, -1);
      }

      v55(v13, v4);
      v40 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v41 = *&v26[*(v30 + 3808)];
      v42 = [v40 initWithManager:v41 presenter:*&v26[*(v31 + 3816)]];
      *&v26[OBJC_IVAR___iCloudMailUnifiedSettingsProvider_mailSettingsProvider] = v42;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      if (v57)
      {
        v43 = sub_275565B6C();
      }

      else
      {
        v43 = 0;
      }

      v47 = v58;
      [v42 onMailTapWithDeeplink_];

      swift_unknownObjectRelease();
      v60(v47, v59, v4);
      v48 = v26;
      v44 = sub_275565B1C();
      v49 = sub_275565C0C();

      if (!os_log_type_enabled(v44, v49))
      {
        v21 = v55;
        goto LABEL_19;
      }

      v46 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v46 = 138412546;
      *(v46 + 4) = v48;
      *(v46 + 12) = 2112;
      *(v46 + 14) = v41;
      *v50 = v48;
      v50[1] = v41;
      v51 = v48;
      v52 = v41;
      _os_log_impl(&dword_275561000, v44, v49, "Delegate %@ to %@", v46, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F8EF0, &unk_2755664D0);
      swift_arrayDestroy();
      MEMORY[0x277C7C140](v50, -1, -1);
      v21 = v55;
      goto LABEL_17;
    }
  }

  v60(v8, v59, v4);
  v44 = sub_275565B1C();
  v45 = sub_275565BFC();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_275561000, v44, v45, "[iCloudMailSettingsProvider] Unable to find MailSettingsSpecifierProvider", v46, 2u);
    v47 = v8;
LABEL_17:
    MEMORY[0x277C7C140](v46, -1, -1);
    goto LABEL_19;
  }

  v47 = v8;
LABEL_19:

  return (v21)(v47, v4);
}

id iCloudMailUnifiedSettingsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id iCloudMailUnifiedSettingsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for iCloudMailUnifiedSettingsProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *iCloudMailUnifiedSettingsProvider.accounts(for:)(void *a1)
{
  v2 = v1;
  v4 = sub_275565B3C();
  v5 = *(v4 - 1);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v82 = v78 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = v78 - v11;
  if (qword_2809F8DD0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, qword_2809F9280);
  v14 = v5 + 16;
  v84 = *(v5 + 16);
  v85 = v13;
  v84(v12);
  v15 = a1;
  v16 = sub_275565B1C();
  v17 = sub_275565C0C();
  v87 = v15;

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    v20 = v87;
    *(v18 + 4) = v87;
    *v19 = v20;
    v21 = v20;
    _os_log_impl(&dword_275561000, v16, v17, "AIDAAccountManagerDelegate.accounts with %@", v18, 0xCu);
    sub_2755659AC(v19);
    v22 = v19;
    v14 = v5 + 16;
    MEMORY[0x277C7C140](v22, -1, -1);
    MEMORY[0x277C7C140](v18, -1, -1);
  }

  v86 = *(v5 + 8);
  v86(v12, v4);
  v89 = MEMORY[0x277D84F98];
  v23 = sub_275562C74();
  v24 = *MEMORY[0x277CED1A0];
  v25 = [v23 accountForService_];

  v83 = v5 + 8;
  v81 = v8;
  if (v25)
  {
    v78[1] = v14;
    (v84)(v82, v85, v4);
    v26 = v87;
    v79 = v2;
    v27 = v2;
    v28 = v25;
    v29 = sub_275565B1C();
    v30 = sub_275565C0C();

    v80 = v27;
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412802;
      *(v31 + 4) = v26;
      *v32 = v26;
      *(v31 + 12) = 2112;
      v33 = v4;
      v34 = *&v80[OBJC_IVAR___iCloudMailUnifiedSettingsProvider____lazy_storage___serviceOwnersManager];
      *(v31 + 14) = v34;
      *(v31 + 22) = 2112;
      *(v31 + 24) = v28;
      v32[1] = v34;
      v32[2] = v25;
      v35 = v26;
      v36 = v28;
      v37 = v34;
      v4 = v33;
      _os_log_impl(&dword_275561000, v29, v30, "AIDAAccountManagerDelegate.accounts: %@ and %@ has appleAccount - %@", v31, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F8EF0, &unk_2755664D0);
      swift_arrayDestroy();
      MEMORY[0x277C7C140](v32, -1, -1);
      MEMORY[0x277C7C140](v31, -1, -1);
    }

    v86(v82, v4);
    v38 = v28;
    v39 = v24;
    v40 = v89;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88[0] = v40;
    sub_27556530C(v38, v39, isUniquelyReferenced_nonNull_native);

    v89 = v88[0];
    v42 = OBJC_IVAR___iCloudMailUnifiedSettingsProvider____lazy_storage___serviceOwnersManager;
    v43 = v80;
    v44 = [*&v80[OBJC_IVAR___iCloudMailUnifiedSettingsProvider____lazy_storage___serviceOwnersManager] altDSIDForAccount:v38 service:v39];
    v2 = v79;
    if (v44)
    {
      v45 = v44;
      v46 = sub_275565B9C();
      v48 = v47;

      v49 = [*&v43[v42] DSIDForAccount:v38 service:v39];
      if (v49)
      {
        v50 = v49;
        v51 = sub_275565B9C();
        v53 = v52;

        v54 = *MEMORY[0x277CED1B0];
        v55 = sub_2755642D0(*MEMORY[0x277CED1B0], v46, v48, v51, v53);

        if (v55)
        {
          v56 = v55;
          sub_2755641CC(v55, v54);
        }
      }

      else
      {
      }
    }

    v8 = v81;
  }

  v57 = OBJC_IVAR___iCloudMailUnifiedSettingsProvider____lazy_storage___serviceOwnersManager;
  v58 = *MEMORY[0x277CED1C0];
  v59 = [*&v2[OBJC_IVAR___iCloudMailUnifiedSettingsProvider____lazy_storage___serviceOwnersManager] accountForService_];
  if (v59)
  {
    sub_2755641CC(v59, v58);
  }

  (v84)(v8, v85, v4);
  v60 = v87;
  v61 = v2;
  v62 = sub_275565B1C();
  v63 = sub_275565C0C();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v87 = v4;
    v66 = v65;
    v85 = swift_slowAlloc();
    v88[0] = v85;
    *v64 = 138412802;
    *(v64 + 4) = v60;
    v67 = *&v2[v57];
    *(v64 + 12) = 2112;
    *(v64 + 14) = v67;
    *v66 = v60;
    v66[1] = v67;
    *(v64 + 22) = 2080;
    swift_beginAccess();
    type metadata accessor for AIDAServiceType();
    sub_2755658BC();
    sub_275565908();
    v68 = v60;
    v69 = v67;

    v70 = sub_275565B5C();
    v72 = v71;

    v73 = sub_275564844(v70, v72, v88);

    *(v64 + 24) = v73;
    _os_log_impl(&dword_275561000, v62, v63, "AIDAAccountManagerDelegate.accounts: %@ and %@ has accounts - %s", v64, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F8EF0, &unk_2755664D0);
    swift_arrayDestroy();
    MEMORY[0x277C7C140](v66, -1, -1);
    v74 = v85;
    __swift_destroy_boxed_opaque_existential_0(v85);
    MEMORY[0x277C7C140](v74, -1, -1);
    MEMORY[0x277C7C140](v64, -1, -1);

    v75 = v81;
    v76 = v87;
  }

  else
  {

    v75 = v8;
    v76 = v4;
  }

  v86(v75, v76);
  swift_beginAccess();
  return v89;
}

void sub_2755641CC(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_27556530C(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_275564DEC(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_275565578();
        v10 = v13;
      }

      sub_275565144(v8, v10);
      *v3 = v10;
    }

    else
    {
    }
  }
}

id sub_2755642D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = a4;
  v61 = a5;
  v9 = sub_275565B3C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v57 - v14;
  v16 = sub_275562C74();
  v17 = [v16 accountForService_];

  if (!v17)
  {
    if (qword_2809F8DD0 != -1)
    {
      swift_once();
    }

    v46 = __swift_project_value_buffer(v9, qword_2809F9280);
    (*(v10 + 16))(v13, v46, v9);
    v47 = a1;
    v48 = sub_275565B1C();
    v49 = sub_275565BFC();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = v10;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v62 = v52;
      *v51 = 136315138;
      v53 = sub_275565B9C();
      v55 = sub_275564844(v53, v54, &v62);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_275561000, v48, v49, "No account exist for serviceType: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x277C7C140](v52, -1, -1);
      MEMORY[0x277C7C140](v51, -1, -1);

      (*(v50 + 8))(v13, v9);
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }

    return 0;
  }

  v58 = v15;
  v59 = v10;
  v18 = v9;
  v19 = OBJC_IVAR___iCloudMailUnifiedSettingsProvider____lazy_storage___serviceOwnersManager;
  v20 = [*(v5 + OBJC_IVAR___iCloudMailUnifiedSettingsProvider____lazy_storage___serviceOwnersManager) altDSIDForAccount:v17 service:a1];
  if (v20)
  {
    v21 = v20;
    v22 = sub_275565B9C();
    v24 = v23;

    if (v22 == a2 && v24 == a3)
    {
LABEL_23:

      return v17;
    }

    v26 = sub_275565C7C();

    if (v26)
    {
      return v17;
    }
  }

  v27 = [*(v5 + v19) DSIDForAccount:v17 service:a1];
  v28 = v18;
  v30 = v58;
  v29 = v59;
  if (!v27)
  {
LABEL_14:
    if (qword_2809F8DD0 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v28, qword_2809F9280);
    (*(v29 + 16))(v30, v37, v28);
    v38 = a1;
    v39 = sub_275565B1C();
    v40 = sub_275565BFC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v62 = v42;
      *v41 = 136315138;
      v43 = sub_275565B9C();
      v45 = sub_275564844(v43, v44, &v62);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_275561000, v39, v40, "No matching account found for serviceType: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x277C7C140](v42, -1, -1);
      MEMORY[0x277C7C140](v41, -1, -1);
    }

    (*(v29 + 8))(v30, v28);
    return 0;
  }

  v31 = v27;
  v32 = sub_275565B9C();
  v34 = v33;

  if (v32 == v60 && v34 == v61)
  {
    goto LABEL_23;
  }

  v36 = sub_275565C7C();

  if ((v36 & 1) == 0)
  {
    goto LABEL_14;
  }

  return v17;
}

unint64_t sub_275564844(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_275564910(v11, 0, 0, 1, a1, a2);
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
    sub_275565ABC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_275564910(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_275564A1C(a5, a6);
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
    result = sub_275565C3C();
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

void *sub_275564A1C(uint64_t a1, unint64_t a2)
{
  v3 = sub_275564A68(a1, a2);
  sub_275564B98(&unk_28842DC50);
  return v3;
}

void *sub_275564A68(uint64_t a1, unint64_t a2)
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

  v6 = sub_275564C84(v5, 0);
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

  result = sub_275565C3C();
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
        v10 = sub_275565BCC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_275564C84(v10, 0);
        result = sub_275565C2C();
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

uint64_t sub_275564B98(uint64_t result)
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

  result = sub_275564CF8(result, v11, 1, v3);
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

void *sub_275564C84(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F8F78, &qword_275566550);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_275564CF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F8F78, &qword_275566550);
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

unint64_t sub_275564DEC(uint64_t a1)
{
  sub_275565B9C();
  sub_275565C9C();
  sub_275565BAC();
  v2 = sub_275565CAC();

  return sub_275565474(a1, v2);
}

uint64_t sub_275564E80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F8F70, &qword_275566548);
  v36 = v4;
  result = sub_275565C5C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v37 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v36 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      sub_275565B9C();
      sub_275565C9C();
      sub_275565BAC();
      v25 = sub_275565CAC();

      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_275565144(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_275565C1C() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_275565B9C();
      sub_275565C9C();
      v10 = v9;
      sub_275565BAC();
      v11 = sub_275565CAC();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

uint64_t sub_27556530C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_275564DEC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_275564E80(v13, a3 & 1);
      v8 = sub_275564DEC(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for AIDAServiceType();
        sub_275565C8C();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v16 = v8;
      sub_275565578();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return MEMORY[0x2821F9840]();
}

unint64_t sub_275565474(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_275565B9C();
      v8 = v7;
      if (v6 == sub_275565B9C() && v8 == v9)
      {
        break;
      }

      v11 = sub_275565C7C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

id sub_275565578()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F8F70, &qword_275566548);
  v2 = *v0;
  v3 = sub_275565C4C();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void sub_2755656D8()
{
  v0 = NSOpenStepRootDirectory();
  sub_275565B9C();

  sub_275565BEC();
  sub_275565BBC();
  v5 = sub_275565BEC();
  v6 = v1;
  sub_275565BBC();
  v2 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v3 = sub_275565B6C();

  v4 = [v2 initWithPath_];

  if (!v4 || ([v4 isLoaded] & 1) == 0)
  {
    [v4 load];
  }
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

unint64_t sub_2755658BC()
{
  result = qword_2809F8EF8;
  if (!qword_2809F8EF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809F8EF8);
  }

  return result;
}

unint64_t sub_275565908()
{
  result = qword_2809F8F00;
  if (!qword_2809F8F00)
  {
    type metadata accessor for AIDAServiceType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F8F00);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_2755659AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F8EF0, &unk_2755664D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275565ABC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}