uint64_t sub_227360268(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2273602B0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_22735FAE4(a1, v1);
}

uint64_t sub_22736034C(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22735FE28(a1, v1);
}

void sub_22736041C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = [a3 acknowledgePrivacy];
  v8 = swift_allocObject();
  *(v8 + 16) = sub_226EB496C;
  *(v8 + 24) = v6;
  v10[4] = sub_227362E00;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_227360548;
  v10[3] = &block_descriptor_26;
  v9 = _Block_copy(v10);

  [v7 addFinishBlock_];
  _Block_release(v9);
}

void sub_227360548(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_2273605C0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = [a3 rejectPrivacy];
  v8 = swift_allocObject();
  *(v8 + 16) = sub_227362FCC;
  *(v8 + 24) = v6;
  v10[4] = sub_227362E24;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_227360548;
  v10[3] = &block_descriptor_79;
  v9 = _Block_copy(v10);

  [v7 addFinishBlock_];
  _Block_release(v9);
}

void sub_2273606EC(char a1, void *a2, void (*a3)(void, void), uint64_t a4, const char *a5)
{
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v13 = sub_22766B380();
  v14 = sub_22766C8B0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = a3;
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = a1 & 1;
    _os_log_impl(&dword_226E8E000, v13, v14, a5, v16, 8u);
    v17 = v16;
    a3 = v15;
    MEMORY[0x22AA9A450](v17, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v21[1] = a2;
  v18 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  sub_22766D420();
  v19 = v22;
  v20 = v23;
  a3(v22, v23);
  sub_226EB4548(v19, v20);
}

uint64_t sub_2273608C4()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  v1 = OBJC_IVAR____TtC15SeymourServices27PrivacyPreferenceDataSource__forceNeedsNoticePrivacyAcknowledgement;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrivacyPreferenceDataSource(uint64_t a1)
{
  result = qword_28139E498;
  if (!qword_28139E498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2273609D0(uint64_t a1)
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_227360A74@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = sub_227666C80();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v26[1] = v3;
  v27 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v28 = v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v26 - v15;
  sub_22766A730();
  sub_22766B370();
  v17 = *(v11 + 8);
  v17(v16, v10);
  (*(v7 + 16))(v9, v26[0] + OBJC_IVAR____TtC15SeymourServices27PrivacyPreferenceDataSource__forceNeedsNoticePrivacyAcknowledgement, v6);
  sub_227669730();
  (*(v7 + 8))(v9, v6);
  if (v30 == 1)
  {
    sub_22766A730();
    v18 = sub_22766B380();
    v19 = sub_22766C8B0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_226E8E000, v18, v19, "forceNeedsNoticePrivacyAcknowledgement", v20, 2u);
      MEMORY[0x22AA9A450](v20, -1, -1);
    }

    v17(v13, v10);
  }

  else
  {
    sub_227106188();
  }

  sub_227666C70();
  v21 = v28;
  sub_227666C50();
  v22 = v27;
  (*(v2 + 16))(v27, v21, v1);
  v23 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v24 = swift_allocObject();
  (*(v2 + 32))(v24 + v23, v22, v1);
  sub_227669280();
  return (*(v2 + 8))(v21, v1);
}

void sub_227360EBC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v66 = sub_227666C80();
  v3 = *(v66 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v66);
  v65 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v60 = *(v64 - 8);
  v5 = *(v60 + 64);
  MEMORY[0x28223BE20](v64);
  v61 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v62 = &v56 - v7;
  v8 = sub_227665270();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v13 + 8))(v15, v12);
  v16 = *MEMORY[0x277D51590];
  v67 = v9;
  v68 = v8;
  (*(v9 + 104))(v11, v16, v8);
  v72 = sub_227666C60();
  v73 = v17 & 1;
  v70 = 1;
  v71 = 1;
  sub_226FFD9B0();
  sub_226FFDA04();
  if (sub_227663B20())
  {
    sub_227665260();
    v18 = objc_allocWithZone(MEMORY[0x277CEE3D0]);
    v19 = sub_22766BFD0();

    v20 = [v18 initWithPrivacyIdentifier_];

    *(swift_allocObject() + 16) = v20;
    v21 = v62;
    sub_227669270();
    v22 = v65;
    v23 = v66;
    (*(v3 + 16))(v65, a1, v66);
    v24 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v63;
    (*(v3 + 32))(v25 + v24, v22, v23);
    v26 = swift_allocObject();
    *(v26 + 16) = sub_227362FBC;
    *(v26 + 24) = v25;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_226F5B0EC;
    *(v27 + 24) = v26;
    v28 = v60;
    v29 = v61;
    v30 = v64;
    (*(v60 + 16))(v61, v21, v64);
    v31 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v32 = swift_allocObject();
    (*(v28 + 32))(v32 + v31, v29, v30);
    v33 = (v32 + ((v5 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v33 = sub_226F32FEC;
    v33[1] = v27;

    sub_227669270();
    (*(v28 + 8))(v21, v30);
    (*(v67 + 8))(v11, v68);
  }

  else
  {
    v58 = v4;
    v59 = v5;
    v35 = v65;
    v34 = v66;
    v72 = sub_227666C60();
    v73 = v36 & 1;
    v70 = 0;
    v71 = 1;
    if (sub_227663B20())
    {
      v57 = v11;
      sub_227665260();
      v37 = objc_allocWithZone(MEMORY[0x277CEE3D0]);
      v38 = sub_22766BFD0();

      v39 = [v37 initWithPrivacyIdentifier_];

      *(swift_allocObject() + 16) = v39;
      v40 = v62;
      sub_227669270();
      (*(v3 + 16))(v35, a1, v34);
      v41 = (*(v3 + 80) + 24) & ~*(v3 + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = v63;
      (*(v3 + 32))(v42 + v41, v35, v34);
      v43 = swift_allocObject();
      *(v43 + 16) = sub_227362E48;
      *(v43 + 24) = v42;
      v44 = swift_allocObject();
      *(v44 + 16) = sub_226F5B0EC;
      *(v44 + 24) = v43;
      v46 = v60;
      v45 = v61;
      v47 = v64;
      (*(v60 + 16))(v61, v40, v64);
      v48 = (*(v46 + 80) + 16) & ~*(v46 + 80);
      v49 = (v59 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
      v50 = swift_allocObject();
      (*(v46 + 32))(v50 + v48, v45, v47);
      v51 = (v50 + v49);
      *v51 = sub_226F32FEC;
      v51[1] = v44;

      sub_227669270();
      (*(v46 + 8))(v40, v47);
      (*(v67 + 8))(v57, v68);
    }

    else
    {
      v52 = sub_227666720();
      sub_227362CF8();
      v53 = swift_allocError();
      (*(*(v52 - 8) + 104))(v54, *MEMORY[0x277D52598], v52);
      *(swift_allocObject() + 16) = v53;
      v55 = v53;
      sub_227669280();
      (*(v67 + 8))(v11, v68);
    }
  }
}

void sub_2273617E0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = sub_2276666A0();
  v65 = *(v3 - 8);
  v66 = v3;
  v4 = *(v65 + 64);
  MEMORY[0x28223BE20](v3);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v61 = *(v64 - 8);
  v5 = *(v61 + 64);
  MEMORY[0x28223BE20](v64);
  v62 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v70 = &v57 - v7;
  v8 = sub_227665270();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v13 + 8))(v15, v12);
  v16 = *MEMORY[0x277D515A0];
  v67 = v9;
  v68 = v8;
  (*(v9 + 104))(v11, v16, v8);
  v73 = sub_227666680();
  v74 = v17 & 1;
  v71 = 1;
  v72 = 1;
  sub_227033D54();
  sub_227033DA8();
  if (sub_227663B20())
  {
    sub_227665260();
    v18 = objc_allocWithZone(MEMORY[0x277CEE3D0]);
    v19 = sub_22766BFD0();

    v20 = [v18 initWithPrivacyIdentifier_];

    *(swift_allocObject() + 16) = v20;
    sub_227669270();
    v22 = v65;
    v21 = v66;
    (*(v65 + 16))(&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v66);
    v23 = (*(v22 + 80) + 24) & ~*(v22 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v63;
    (*(v22 + 32))(v24 + v23, &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
    v25 = swift_allocObject();
    *(v25 + 16) = sub_227362FB8;
    *(v25 + 24) = v24;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_226F5B0EC;
    *(v26 + 24) = v25;
    v28 = v61;
    v27 = v62;
    v29 = v70;
    v30 = v64;
    (*(v61 + 16))(v62, v70, v64);
    v31 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v32 = swift_allocObject();
    (*(v28 + 32))(v32 + v31, v27, v30);
    v33 = (v32 + ((v5 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v33 = sub_226F32FEC;
    v33[1] = v26;

    sub_227669270();
    (*(v28 + 8))(v29, v30);
    (*(v67 + 8))(v11, v68);
  }

  else
  {
    v59 = v4;
    v60 = v5;
    v34 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = v65;
    v36 = v66;
    v73 = sub_227666680();
    v74 = v37 & 1;
    v71 = 2;
    v72 = 1;
    if (sub_227663B20())
    {
      v58 = v11;
      sub_227665260();
      v38 = objc_allocWithZone(MEMORY[0x277CEE3D0]);
      v39 = sub_22766BFD0();

      v40 = [v38 initWithPrivacyIdentifier_];

      *(swift_allocObject() + 16) = v40;
      v41 = v70;
      sub_227669270();
      (*(v35 + 16))(v34, a1, v36);
      v42 = (*(v35 + 80) + 24) & ~*(v35 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = v63;
      (*(v35 + 32))(v43 + v42, v34, v36);
      v44 = swift_allocObject();
      *(v44 + 16) = sub_227362D58;
      *(v44 + 24) = v43;
      v45 = swift_allocObject();
      *(v45 + 16) = sub_226EB4A28;
      *(v45 + 24) = v44;
      v47 = v61;
      v46 = v62;
      v48 = v64;
      (*(v61 + 16))(v62, v41, v64);
      v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
      v50 = (v60 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
      v51 = swift_allocObject();
      (*(v47 + 32))(v51 + v49, v46, v48);
      v52 = (v51 + v50);
      *v52 = sub_226EBFB9C;
      v52[1] = v45;

      sub_227669270();
      (*(v47 + 8))(v41, v48);
      (*(v67 + 8))(v58, v68);
    }

    else
    {
      v53 = sub_227666720();
      sub_227362CF8();
      v54 = swift_allocError();
      (*(*(v53 - 8) + 104))(v55, *MEMORY[0x277D52598], v53);
      *(swift_allocObject() + 16) = v54;
      v56 = v54;
      sub_227669280();
      (*(v67 + 8))(v11, v68);
    }
  }
}

uint64_t sub_22736210C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), void (*a5)(char *), uint64_t a6)
{
  v18[0] = a5;
  v18[1] = a6;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v18 - v11;
  v13 = (a4)(0, v10);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v18 - v15;
  swift_getObjectType();
  (*(v9 + 16))(v12, a2, v8);
  (v18[0])(v12);
  sub_2276699D0();
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_2273622C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCEA0, &qword_227681E30);
  v9 = swift_allocObject();
  v10 = v5;
  v11 = v6;

  sub_22766A070();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  v12 = sub_2272394F8(100);
  if (v2)
  {
    swift_setDeallocating();

    v13 = qword_2813B2078;
    v14 = sub_22766A100();
    (*(*(v14 - 8) + 8))(v9 + v13, v14);
    return swift_deallocClassInstance();
  }

  else
  {
    v16 = v12;
    swift_setDeallocating();

    v17 = qword_2813B2078;
    v18 = sub_22766A100();
    (*(*(v18 - 8) + 8))(v9 + v17, v18);
    result = swift_deallocClassInstance();
    *a2 = v16;
  }

  return result;
}

uint64_t sub_2273624D8(uint64_t a1, void *a2)
{
  v4 = sub_227668A00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v17 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766A5F0();
  v18 = *(v7 - 8);
  v19 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0F0, &qword_227679A60);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_227670CD0;
  v13 = *(v5 + 16);
  v13(v12 + v11, a1, v4);
  v14 = v21;
  sub_22755FC9C(v12, v10[1], *(v10 + 16), v10[3]);

  if (!v14)
  {
    v21 = *(v20 + 24);
    swift_getObjectType();
    v13(v17, a1, v4);
    sub_22766A5E0();
    v16 = v19;
    sub_2276699D0();
    return (*(v18 + 8))(v9, v16);
  }

  return result;
}

uint64_t sub_227362748@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCE90, &unk_227681DF0);
  v8 = swift_allocObject();
  v9 = v4;
  v10 = v5;

  sub_22766A070();
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  swift_getKeyPath();
  sub_2276689D0();
  v11 = sub_2276689E0();
  v13 = v12;
  v34[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v34[0] = v11;
  v34[1] = v13;
  sub_226F06498();

  v14 = sub_22766C820();
  sub_226ED25F8(v34, v32);
  v15 = v33;
  if (v33)
  {
    v16 = __swift_project_boxed_opaque_existential_0(v32, v33);
    v35 = a2;
    v17 = *(v15 - 8);
    v18 = MEMORY[0x28223BE20](v16);
    v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20, v18);
    v21 = sub_22766D170();
    (*(v17 + 8))(v20, v15);
    a2 = v35;
    __swift_destroy_boxed_opaque_existential_0(v32);
  }

  else
  {
    v21 = 0;
  }

  v22 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v23 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCE98 &qword_227681E28))];

  sub_226EBC888(v34);
  swift_beginAccess();
  v24 = v23;
  v25 = sub_22766A080();
  v27 = v26;
  MEMORY[0x22AA985C0]();
  if (*((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v25(v34, 0);
  swift_endAccess();

  v28 = MEMORY[0x22AA99A00]();
  sub_22754473C(a2);
  objc_autoreleasePoolPop(v28);
  swift_setDeallocating();

  v29 = qword_2813B2078;
  v30 = sub_22766A100();
  (*(*(v30 - 8) + 8))(v8 + v29, v30);
  return swift_deallocClassInstance();
}

id sub_227362B4C()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isDiagnosticSubmissionAllowed];

    *(swift_allocObject() + 16) = v2 ^ 1;

    return sub_227669280();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroy_19Tm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

unint64_t sub_227362CF8()
{
  result = qword_27D7BCEA8;
  if (!qword_27D7BCEA8)
  {
    sub_227666720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCEA8);
  }

  return result;
}

uint64_t objectdestroy_35Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_227363018(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  v4 = sub_2273630D4();
  v5 = sub_226FD00D8();

  return a3(a1, v4, v5);
}

unint64_t sub_227363080()
{
  result = qword_27D7BCEB0;
  if (!qword_27D7BCEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCEB0);
  }

  return result;
}

unint64_t sub_2273630D4()
{
  result = qword_27D7BCEB8;
  if (!qword_27D7BCEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCEB8);
  }

  return result;
}

uint64_t sub_227363128(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_226E92AB8(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_22736960C(v9, a2, isUniquelyReferenced_nonNull_native, sub_226FEFED4, sub_226FE1688, sub_226F19770, sub_226F19770);
    v5 = sub_2276694E0();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_226E97D1C(a1, &qword_27D7B8450, &qword_227682050);
    sub_227366AD8(a2, sub_226F19770, sub_226FEFED4, v9);
    v7 = sub_2276694E0();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_226E97D1C(v9, &qword_27D7B8450, &qword_227682050);
  }

  return result;
}

uint64_t sub_2273632AC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_226E92AB8(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_22736960C(v9, a2, isUniquelyReferenced_nonNull_native, sub_226FF0450, sub_226FE2794, sub_226F19770, sub_226F19770);
    v5 = sub_2276694E0();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_226E97D1C(a1, &qword_27D7BCEF0, &qword_227682048);
    sub_227366AD8(a2, sub_226F19770, sub_226FF0450, v9);
    v7 = sub_2276694E0();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_226E97D1C(v9, &qword_27D7BCEF0, &qword_227682048);
  }

  return result;
}

uint64_t sub_227363430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;
    sub_227369F50(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
    v11 = sub_2276639B0();
    result = (*(*(v11 - 8) + 8))(a4, v11);
    *v4 = v24;
  }

  else
  {
    v13 = sub_226F3AA2C(a4);
    if (v14)
    {
      v15 = v13;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v4;
      v25 = *v5;
      if (!v16)
      {
        sub_226FF15B8();
        v17 = v25;
      }

      v18 = *(v17 + 48);
      v19 = sub_2276639B0();
      v20 = *(v19 - 8);
      v21 = *(v20 + 8);
      v21(v18 + *(v20 + 72) * v15, v19);

      sub_227367968(v15, v17);
      result = (v21)(a4, v19);
      *v5 = v17;
    }

    else
    {
      v22 = sub_2276639B0();
      v23 = *(*(v22 - 8) + 8);

      return v23(a4, v22);
    }
  }

  return result;
}

uint64_t sub_227363610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v5;
    sub_22736A2BC(a1, a2, a3, a4, a5 & 1, isUniquelyReferenced_nonNull_native);
    result = sub_226EB2DFC(a3, a4, a5 & 1);
    *v5 = v19;
  }

  else
  {
    v14 = sub_226F3AB00(a2, a3, a4, a5 & 1);
    v16 = v15;
    result = sub_226EB2DFC(a3, a4, a5 & 1);
    if (v16)
    {
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v6;
      v20 = *v6;
      if (!v17)
      {
        sub_226FF1B80();
        v18 = v20;
      }

      sub_226EB2DFC(*(*(v18 + 48) + 32 * v14 + 8), *(*(v18 + 48) + 32 * v14 + 16), *(*(v18 + 48) + 32 * v14 + 24));

      result = sub_227367C8C(v14, v18);
      *v6 = v18;
    }
  }

  return result;
}

uint64_t sub_22736373C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_226F04970(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_22736A46C(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_226E97D1C(a1, &unk_27D7BC990, &qword_227670A30);
    sub_227366BD4(a2, a3, v9);

    return sub_226E97D1C(v9, &unk_27D7BC990, &qword_227670A30);
  }

  return result;
}

uint64_t sub_22736384C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_22736AC04(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_226E92000(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_226FF129C();
        v16 = v18;
      }

      result = sub_227368064(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_227363954(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9648, &unk_227674880);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_227663CD0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_226E97D1C(a1, &qword_27D7B9648, &unk_227674880);
    sub_227366C78(a2, v7);
    v13 = sub_2276624A0();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_226E97D1C(v7, &qword_27D7B9648, &unk_227674880);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_22736AD8C(v12, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_2276624A0();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

void sub_227363B80(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_22736B130(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v14;
  }

  else
  {
    v8 = sub_226F3B1C0(a3);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      v15 = *v4;
      if (!v11)
      {
        sub_226FF3860();
        v12 = v15;
      }

      sub_227368A28(v10, v12);

      *v4 = v12;
    }

    else
    {
    }
  }
}

uint64_t sub_227363C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_22736AFB8(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_226E92000(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_226FF384C();
        v14 = v16;
      }

      result = sub_227368878(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

void sub_227363D88(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB560, &qword_227682040);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_226E97D1C(a1, &qword_27D7BB560, &qword_227682040);
    sub_227366E18(a2, v7);

    sub_226E97D1C(v7, &qword_27D7BB560, &qword_227682040);
  }

  else
  {
    sub_22714C150(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_22736B2B4(v11, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v15;
  }
}

void sub_227363F34(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_2276638D0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_226E97D1C(a1, &unk_27D7BB920, &unk_227672480);
    sub_227366F84(a2, v7);

    sub_226E97D1C(v7, &unk_27D7BB920, &unk_227672480);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_2273698B8(v12, a2, isUniquelyReferenced_nonNull_native, sub_226FF41D0, sub_226FEB7B4, MEMORY[0x277D50180], MEMORY[0x277D50180]);

    *v2 = v15;
  }
}

uint64_t sub_227364148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_22736B864(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_226E92000(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_226FF437C();
        v14 = v16;
      }

      swift_unknownObjectRelease();
      result = sub_227368878(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_227364280(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t, void), void (*a6)(void))
{
  v7 = v6;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v6;
    sub_22736BFFC(a1, a2, a3, isUniquelyReferenced_nonNull_native, a4, a5);

    *v6 = v21;
  }

  else
  {
    v16 = sub_226E92000(a2, a3);
    v18 = v17;

    if (v18)
    {
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v7;
      v22 = *v7;
      if (!v19)
      {
        a6();
        v20 = v22;
      }

      result = sub_227368878(v16, v20);
      *v7 = v20;
    }
  }

  return result;
}

uint64_t sub_227364398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCED0, &qword_227682020);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_227667DE0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    sub_226E97D1C(a1, &qword_27D7BCED0, &qword_227682020);
    sub_227367198(a2, a3, MEMORY[0x277D53330], MEMORY[0x277D53330], sub_226FF5064, v9);

    return sub_226E97D1C(v9, &qword_27D7BCED0, &qword_227682020);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_226E9202C(v14, a2, a3, isUniquelyReferenced_nonNull_native, sub_226FF5064, sub_226FEDC14, MEMORY[0x277D53330], MEMORY[0x277D53330]);

    *v3 = v18;
  }

  return result;
}

void sub_22736461C(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE640, &unk_227682010);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for AssetMediaStreamLoader.TaskResult(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_226E97D1C(a1, &unk_27D7BE640, &unk_227682010);
    sub_22736732C(a2, v7);

    sub_226E97D1C(v7, &unk_27D7BE640, &unk_227682010);
  }

  else
  {
    sub_226FF6688(a1, v11, type metadata accessor for AssetMediaStreamLoader.TaskResult);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_22736C574(v11, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v15;
  }
}

uint64_t sub_2273647D4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCED8, &qword_227682028);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_226E97D1C(a1, &qword_27D7BCED8, &qword_227682028);
    sub_2273674A8(a2, v7);
    v13 = sub_227668BB0();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_226E97D1C(v7, &qword_27D7BCED8, &qword_227682028);
  }

  else
  {
    sub_226FF6688(a1, v11, type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_22736C6E0(v11, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_227668BB0();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t UserNotificationContext.header.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UserNotificationContext.message.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t UserNotificationContext.lockScreenHeader.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t UserNotificationContext.lockScreenMessage.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t UserNotificationContext.defaultButton.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t UserNotificationContext.alternateButton.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

void __swiftcall UserNotificationContext.init(header:message:lockScreenHeader:lockScreenMessage:defaultButton:alternateButton:)(SeymourServices::UserNotificationContext *__return_ptr retstr, Swift::String header, Swift::String message, Swift::String_optional lockScreenHeader, Swift::String_optional lockScreenMessage, Swift::String defaultButton, Swift::String alternateButton)
{
  retstr->header = header;
  retstr->message = message;
  retstr->lockScreenHeader = lockScreenHeader;
  retstr->lockScreenMessage = lockScreenMessage;
  retstr->defaultButton = defaultButton;
  retstr->alternateButton = alternateButton;
}

unint64_t sub_227364B38()
{
  result = sub_22714B5A8(MEMORY[0x277D84F90]);
  qword_27D7BCEC0 = result;
  return result;
}

uint64_t UserNotificationCoordinator.UserNotificationResponse.hashValue.getter(char a1)
{
  sub_22766D370();
  MEMORY[0x22AA996B0](a1 & 1);
  return sub_22766D3F0();
}

uint64_t sub_227364BE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_227364CC8();
  }

  return result;
}

void sub_227364C38(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + 24);
    if (v4)
    {
      CFRunLoopSourceInvalidate(v4);
      v5 = *(v3 + 24);
      *(v3 + 24) = 0;
    }

    v6 = *(v3 + 16);
    if (v6)
    {
      CFUserNotificationCancel(v6);
      v7 = *(v3 + 16);
      *(v3 + 16) = 0;
    }

    else
    {
    }
  }
}

uint64_t sub_227364CC8()
{
  v1 = v0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCEE0, &unk_227682030);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v27 = &v24 - v2;
  type metadata accessor for SeymourServicesLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass_];
  v26 = sub_2276621B0();
  v25 = v6;

  v7 = [v4 bundleForClass_];
  v8 = sub_2276621B0();
  v10 = v9;

  v11 = [v4 bundleForClass_];
  v12 = sub_2276621B0();
  v14 = v13;

  v15 = [v4 bundleForClass_];
  v16 = sub_2276621B0();
  v18 = v17;

  *&v31 = v26;
  *(&v31 + 1) = v25;
  *&v32 = v8;
  *(&v32 + 1) = v10;
  v33 = 0u;
  v34 = 0u;
  *&v35 = v12;
  *(&v35 + 1) = v14;
  *&v36 = v16;
  *(&v36 + 1) = v18;
  memset(&v30[2], 0, 32);
  v30[4] = v35;
  v30[5] = v36;
  v30[0] = v31;
  v30[1] = v32;
  v19 = v27;
  sub_227365CFC(v30);
  sub_22736CAEC(&v31);

  v20 = v28;
  v21 = sub_227669290();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_22736CB1C;
  *(v22 + 24) = v1;

  v21(sub_226E9F768, v22);

  return (*(v29 + 8))(v19, v20);
}

uint64_t sub_2273650BC(int *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  if (a1[2])
  {
    __swift_project_boxed_opaque_existential_0((a2 + 40), *(a2 + 64));
    v8 = off_283AB6110[0];
    v9 = type metadata accessor for RemoteBrowsingConfirmationCoordinator();
    v8(v9, &off_283AB60F8);
    v10 = sub_226E9F7B0;
  }

  else
  {
    v11 = *a1;
    __swift_project_boxed_opaque_existential_0((a2 + 40), *(a2 + 64));
    v12 = type metadata accessor for RemoteBrowsingConfirmationCoordinator();
    if (v11)
    {
      (off_283AB6110[0])(v12, &off_283AB60F8);
    }

    else
    {
      (off_283AB6108[0])(v12, &off_283AB60F8);
    }

    v10 = sub_226EB4544;
  }

  v13 = sub_227669290();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v13(v10, v14);

  return (*(v5 + 8))(v7, v4);
}

void sub_2273652D4(void (*a1)(void **), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = sub_22766B3B0();
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B3F0();
  v27 = *(v10 - 8);
  v28 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  error = 0;

  v14 = sub_22766BE90();
  v15 = CFUserNotificationCreate(0, 0.0, 0, &error, v14);

  v16 = *(a3 + 16);
  *(a3 + 16) = v15;
  v17 = v15;

  if (!v17)
  {
    goto LABEL_4;
  }

  if (error)
  {

LABEL_4:

    sub_22736CB94();
    v18 = swift_allocError();
    *v19 = 0;
    aBlock = v18;
    LOBYTE(v33) = 1;
    a1(&aBlock);

    return;
  }

  RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v17, sub_2273657C8, 0);
  v21 = *(a3 + 24);
  *(a3 + 24) = RunLoopSource;

  if (qword_27D7B7F00 != -1)
  {
    swift_once();
  }

  v22 = swift_allocObject();
  v22[2] = sub_226E9F728;
  v22[3] = v13;
  v22[4] = a3;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = qword_27D7BCEC0;
  qword_27D7BCEC0 = 0x8000000000000000;
  sub_22736BC60(sub_22736CBE8, v22, v17, isUniquelyReferenced_nonNull_native);
  qword_27D7BCEC0 = v30;
  swift_endAccess();
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v24 = sub_22766C950();
  v25 = swift_allocObject();
  v25[2] = a3;
  v25[3] = sub_226E9F728;
  v25[4] = v13;
  v36 = sub_22736CBF4;
  v37 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_226E9D72C;
  v35 = &block_descriptor_27;
  v26 = _Block_copy(&aBlock);

  sub_22766B3D0();
  v30 = MEMORY[0x277D84F90];
  sub_22736CC08(&qword_2813A5870, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v12, v9, v26);
  _Block_release(v26);

  (*(v29 + 8))(v9, v7);
  (*(v27 + 8))(v12, v28);
}

void sub_2273657C8(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a1;
  sub_22736581C(a1, v2);
}

void sub_22736581C(void *a1, char a2)
{
  if (a1)
  {
    v3 = qword_27D7B7F00;
    v4 = a1;
    if (v3 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v5 = sub_227367104(v4);
    v7 = v6;
    swift_endAccess();
    if (v5)
    {
      v8[0] = a2 & 3;
      v5(v8);
      sub_226EA9E3C(v5, v7);
    }
  }
}

uint64_t sub_2273658E8(void *a1, void (*a2)(BOOL, void), uint64_t a3, uint64_t a4)
{
  v7 = sub_22766B3B0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B3F0();
  v12 = *(v11 - 8);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v11);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (a2)(*a1 != 0, 0, v13);
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v16 = sub_22766C950();
  aBlock[4] = sub_22736CC00;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_47;
  v17 = _Block_copy(aBlock);

  sub_22766B3D0();
  v19[1] = MEMORY[0x277D84F90];
  sub_22736CC08(&qword_2813A5870, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v15, v10, v17);
  _Block_release(v17);

  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v15, v11);
}

void sub_227365BB8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRunLoopSourceInvalidate(v2);
    v3 = *(a1 + 24);
    *(a1 + 24) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFUserNotificationCancel(v4);
    v5 = *(a1 + 16);
    *(a1 + 16) = 0;
  }
}

void sub_227365C20(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = v2;
    v8 = CFRunLoopGetCurrent();
    CFRunLoopAddSource(v8, v3, *MEMORY[0x277CBF048]);

    v4 = v8;
  }

  else
  {
    sub_22736CB94();
    v6 = swift_allocError();
    *v7 = 1;
    a2(v6, 1);
    v4 = v6;
  }
}

void sub_227365CFC(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v28 = a1[4];
  v29 = a1[6];
  v30 = a1[5];
  v31 = a1[7];
  v7 = a1[8];
  v8 = a1[9];
  v9 = a1[10];
  v10 = a1[11];
  v32 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227681E90;
  if (!*MEMORY[0x277CBF188])
  {
    __break(1u);
    goto LABEL_12;
  }

  *(inited + 32) = sub_22766C000();
  *(inited + 40) = v12;
  v13 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  if (!*MEMORY[0x277CBF198])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(inited + 80) = sub_22766C000();
  *(inited + 88) = v14;
  *(inited + 120) = v13;
  *(inited + 96) = v5;
  *(inited + 104) = v6;
  if (!*MEMORY[0x277CBF1E8])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(inited + 128) = sub_22766C000();
  *(inited + 136) = v15;
  *(inited + 168) = v13;
  *(inited + 144) = v7;
  *(inited + 152) = v8;
  if (!*MEMORY[0x277CBF1C0])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(inited + 176) = sub_22766C000();
  *(inited + 184) = v16;
  *(inited + 216) = v13;
  *(inited + 192) = v9;
  *(inited + 200) = v10;
  if (!*MEMORY[0x277CBF1B0])
  {
LABEL_15:
    __break(1u);
    return;
  }

  *(inited + 224) = sub_22766C000();
  *(inited + 232) = v17;
  v18 = MEMORY[0x277D839B0];
  *(inited + 240) = 1;
  *(inited + 264) = v18;
  *(inited + 272) = 0xD00000000000002CLL;
  *(inited + 280) = 0x800000022769E5E0;
  *(inited + 288) = 0;
  *(inited + 312) = v18;
  *(inited + 320) = 0xD000000000000025;
  *(inited + 328) = 0x800000022769E610;
  *(inited + 336) = 1;
  *(inited + 360) = v18;
  *(inited + 368) = 0xD000000000000022;
  *(inited + 376) = 0x800000022769E640;
  *(inited + 384) = 1;
  *(inited + 408) = v18;
  *(inited + 416) = 0xD00000000000002DLL;
  *(inited + 424) = 0x800000022769E670;
  *(inited + 432) = 0;
  *(inited + 456) = v18;
  strcpy((inited + 464), "DismissOnLock");
  *(inited + 478) = -4864;
  *(inited + 480) = 0;
  *(inited + 504) = v18;
  *(inited + 512) = 0xD00000000000001DLL;
  *(inited + 520) = 0x800000022769E6A0;
  *(inited + 552) = v18;
  *(inited + 528) = 1;
  *(inited + 560) = 0xD00000000000002ALL;
  *(inited + 568) = 0x800000022769E6C0;
  *(inited + 600) = v18;
  *(inited + 576) = 1;
  *(inited + 608) = 0xD000000000000032;
  *(inited + 616) = 0x800000022769E6F0;
  *(inited + 648) = MEMORY[0x277D83B88];
  *(inited + 624) = 2;

  v19 = sub_227149264(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5C0, &qword_22767D1D0);
  swift_arrayDestroy();
  if (v30)
  {
    v36 = v13;
    *&v35 = v28;
    *(&v35 + 1) = v30;
    sub_226F04970(&v35, v34);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22736A46C(v34, 0xD000000000000027, 0x800000022769E7D0, isUniquelyReferenced_nonNull_native);
  }

  if (v31)
  {
    v36 = v13;
    *&v35 = v29;
    *(&v35 + 1) = v31;
    sub_226F04970(&v35, v34);

    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_22736A46C(v34, 0xD000000000000028, 0x800000022769E7A0, v21);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9120, &qword_227681EA0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_227670CD0;
  *(v22 + 32) = 0xD000000000000021;
  *(v22 + 40) = 0x800000022769E730;
  *(v22 + 88) = v13;
  *(v22 + 56) = v13;
  *(v22 + 64) = 0xD000000000000011;
  *(v22 + 72) = 0x800000022769D220;
  v23 = sub_226E99364(0, &qword_28139D2B0, 0x277CBEAC0);
  v24 = sub_22766C800();
  v36 = v23;
  *&v35 = v24;
  sub_226F04970(&v35, v34);
  v25 = v24;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_22736A46C(v34, 0xD000000000000030, 0x800000022769E760, v26);
  v27 = swift_allocObject();
  v27[2] = v33;
  v27[3] = v19;
  v27[4] = v32;

  sub_227669270();
}

uint64_t UserNotificationCoordinator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_227366268(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_2276694E0();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = a5(a3, a4[7] + 40 * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_227366334(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = sub_2276639B0();
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = (a6[7] + 24 * a1);
  *v15 = a3;
  v15[1] = a4;
  v15[2] = a5;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

_OWORD *sub_227366408(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_226F04970(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_227366484(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_226F04970(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_2273664F0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_227366538(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_22736657C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  result = sub_22714C150(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_22736661C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = a5(0);
  (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a2, v12);
  v13 = a4[7];
  v14 = a6(0);
  result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * a1, a3, v14);
  v16 = a4[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v18;
  }

  return result;
}

uint64_t sub_22736671C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2276638D0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_2273667D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

uint64_t sub_227366888(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for AssetMediaStreamLoader.TaskResult(0);
  result = sub_226FF6688(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for AssetMediaStreamLoader.TaskResult);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_227366930(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v13 = a4[6];
  v14 = a5(0);
  (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * a1, a2, v14);
  v15 = a4[7];
  v16 = a6(0);
  result = sub_226FF6688(a3, v15 + *(*(v16 - 8) + 72) * a1, a7);
  v18 = a4[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v20;
  }

  return result;
}

uint64_t sub_227366A28(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v8 = a4[7];
  v9 = a5(0);
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a3, v9);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

double sub_227366AD8@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v9 = sub_226F39E30(a1);
  if (v10)
  {
    v11 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v4;
    v17 = *v7;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a3();
      v13 = v17;
    }

    v14 = *(v13 + 48);
    v15 = sub_2276694E0();
    (*(*(v15 - 8) + 8))(v14 + *(*(v15 - 8) + 72) * v11, v15);
    a2(*(v13 + 56) + 40 * v11, a4);
    sub_227367644(v11, v13);
    *v7 = v13;
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

double sub_227366BD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_226E92000(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_226FF1414();
      v10 = v12;
    }

    sub_226F04970((*(v10 + 56) + 32 * v8), a3);
    sub_227367EB4(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_227366C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_226F3B058(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_226FF3640();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_2276624A0();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_227663CD0();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_227368214(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_227663CD0();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_227366E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_226F3B1C0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_226FF39D8();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
    v18 = *(v11 - 8);
    sub_22714C150(v10 + *(v18 + 72) * v7, a2);
    sub_227368BB4(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_227366F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_226F3A030(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_226FF41D0();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = sub_2276638D0();
    v18 = *(v11 - 8);
    (*(v18 + 32))(a2, v10 + *(v18 + 72) * v7, v11);
    sub_2273690F8(v7, v9, MEMORY[0x277D50180]);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = sub_2276638D0();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_227367104(uint64_t a1)
{
  v2 = v1;
  v3 = sub_226E923A0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_226FF4ADC();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 16 * v5);
  sub_227368D94(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_227367198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = sub_226E92000(a1, a2);
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v6;
    v26 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v16 = v26;
    }

    v17 = *(v16 + 56);
    v18 = a3(0);
    v25 = *(v18 - 8);
    (*(v25 + 32))(a6, v17 + *(v25 + 72) * v14, v18);
    sub_227368F04(v14, v16, a4);
    *v10 = v16;
    v19 = *(v25 + 56);
    v20 = a6;
    v21 = 0;
    v22 = v18;
  }

  else
  {
    v23 = a3(0);
    v19 = *(*(v23 - 8) + 56);
    v22 = v23;
    v20 = a6;
    v21 = 1;
  }

  return v19(v20, v21, 1, v22);
}

uint64_t sub_22736732C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_226F3B23C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_226FF5AB8();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for AssetMediaStreamLoader.TaskResult(0);
    v18 = *(v11 - 8);
    sub_226FF6688(v10 + *(v18 + 72) * v7, a2, type metadata accessor for AssetMediaStreamLoader.TaskResult);
    sub_2273690F8(v7, v9, type metadata accessor for AssetMediaStreamLoader.TaskResult);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for AssetMediaStreamLoader.TaskResult(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_2273674A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_226F3B28C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_226FF5E68();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_227668BB0();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification(0);
    v20 = *(v13 - 8);
    sub_226FF6688(v12 + *(v20 + 72) * v7, a2, type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification);
    sub_2273692C8(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

void sub_227367644(int64_t a1, uint64_t a2)
{
  v40 = sub_2276694E0();
  v4 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v41 = v5;
    v11 = sub_22766CCA0();
    v12 = v40;
    v5 = v41;
    v13 = v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v37 = (v11 + 1) & v10;
    v38 = v15;
    v16 = *(v14 + 56);
    v35 = (v14 - 8);
    v36 = a2 + 64;
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v39;
      v20 = v13;
      v21 = v14;
      v38(v39, *(v5 + 48) + v16 * v9, v12);
      sub_22736CC08(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
      v22 = sub_22766BF50();
      (*v35)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v37)
      {
        if (v23 >= v37 && a1 >= v23)
        {
LABEL_15:
          v5 = v41;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v41;
            v16 = v17;
            v13 = v20;
            v7 = v36;
          }

          else
          {
            v7 = v36;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v41;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = v26 + 40 * a1;
          v28 = (v26 + 40 * v9);
          if (a1 != v9 || v27 >= v28 + 40)
          {
            v29 = *v28;
            v30 = v28[1];
            *(v27 + 32) = *(v28 + 4);
            *v27 = v29;
            *(v27 + 16) = v30;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v37 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v36;
      v16 = v17;
      v5 = v41;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v5 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v33;
    ++*(v5 + 36);
  }
}

void sub_227367968(int64_t a1, uint64_t a2)
{
  v39 = sub_2276639B0();
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v40 = v5;
    v11 = sub_22766CCA0();
    v12 = v39;
    v5 = v40;
    v13 = v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v36 = (v11 + 1) & v10;
    v37 = v15;
    v16 = *(v14 + 56);
    v34 = (v14 - 8);
    v35 = a2 + 64;
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v38;
      v20 = v13;
      v21 = v14;
      v37(v38, *(v5 + 48) + v16 * v9, v12);
      sub_22736CC08(&qword_28139BCA8, MEMORY[0x277D501C8], MEMORY[0x277D501D0]);
      v22 = sub_22766BF50();
      (*v34)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v40;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v40 + 48) + v17 * a1 >= (*(v40 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v40;
            v16 = v17;
            v13 = v20;
            v7 = v35;
          }

          else
          {
            v7 = v35;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v40;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = v26 + 24 * a1;
          v28 = (v26 + 24 * v9);
          if (a1 != v9 || v27 >= v28 + 24)
          {
            v29 = *v28;
            *(v27 + 16) = *(v28 + 2);
            *v27 = v29;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v35;
      v16 = v17;
      v5 = v40;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v30 = *(v5 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v32;
    ++*(v5 + 36);
  }
}

uint64_t sub_227367C8C(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22766CCA0() + 1) & ~v5;
    v30 = v4;
    do
    {
      v9 = 32 * v6;
      v10 = v2;
      v11 = *(v2 + 48) + 32 * v6;
      v12 = v7;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
      v16 = v8;
      sub_22766D370();
      sub_226EB396C(v13, v14, v15);
      sub_226F48338();
      sub_22766BF60();
      v17 = sub_22766D3F0();
      v18 = v13;
      v7 = v12;
      result = sub_226EB2DFC(v18, v14, v15);
      v8 = v16;
      v19 = v17 & v12;
      if (v3 >= v16)
      {
        if (v19 < v16)
        {
          v4 = v30;
          v2 = v10;
        }

        else
        {
          v4 = v30;
          v2 = v10;
          if (v3 >= v19)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v30;
        v2 = v10;
        if (v19 >= v8 || v3 >= v19)
        {
LABEL_11:
          v20 = *(v2 + 48);
          v21 = (v20 + 32 * v3);
          v22 = (v20 + v9);
          if (32 * v3 != v9 || v21 >= v22 + 2)
          {
            v23 = v22[1];
            *v21 = *v22;
            v21[1] = v23;
          }

          v24 = *(v2 + 56);
          v25 = (v24 + 8 * v3);
          v26 = (v24 + 8 * v6);
          if (v3 != v6 || v25 >= v26 + 1)
          {
            *v25 = *v26;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v12;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v27 = *(v2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v29;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_227367EB4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22766CCA0() + 1) & ~v5;
    do
    {
      sub_22766D370();

      sub_22766C100();
      v10 = sub_22766D3F0();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_227368064(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22766CCA0() + 1) & ~v5;
    do
    {
      sub_22766D370();

      sub_22766C100();
      v9 = sub_22766D3F0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_227368214(int64_t a1, uint64_t a2)
{
  v4 = sub_2276624A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_22766CCA0();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_22736CC08(&qword_28139BDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      v21 = sub_22766BF50();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(sub_227663CD0() - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

void sub_227368558(int64_t a1, uint64_t a2)
{
  v38 = sub_2276624A0();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_22766CCA0();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_22736CC08(&qword_28139BDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      v22 = sub_22766BF50();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

uint64_t sub_227368878(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22766CCA0() + 1) & ~v5;
    do
    {
      sub_22766D370();

      sub_22766C100();
      v9 = sub_22766D3F0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_227368A28(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22766CCA0() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_22766CB20();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 16 * v3);
          v19 = (v17 + 16 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_227368BB4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22766CCA0() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_22766CB20();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = *(a2 + 48);
      v15 = (v14 + 8 * v3);
      v16 = (v14 + 8 * v6);
      if (v3 != v6 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860) - 8) + 72);
      v19 = v18 * v3;
      v20 = v17 + v18 * v3;
      v21 = v18 * v6;
      v22 = v17 + v18 * v6 + v18;
      if (v19 < v21 || v20 >= v22)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v21)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }
}

uint64_t sub_227368D94(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22766CCA0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_22766D360();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_227368F04(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_22766CCA0() + 1) & ~v6;
    while (1)
    {
      sub_22766D370();

      sub_22766C100();
      v11 = sub_22766D3F0();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_2273690F8(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_22766CCA0() + 1) & ~v6;
    do
    {
      v11 = *(*(a2 + 48) + 8 * v7);
      v12 = sub_22766CB20();

      v13 = v12 & v9;
      if (v4 >= v10)
      {
        if (v13 < v10 || v4 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v10 && v4 < v13)
      {
        goto LABEL_5;
      }

      v16 = *(a2 + 48);
      v17 = (v16 + 8 * v4);
      v18 = (v16 + 8 * v7);
      if (v4 != v7 || v17 >= v18 + 1)
      {
        *v17 = *v18;
      }

      v19 = *(a2 + 56);
      v20 = *(*(a3(0) - 8) + 72);
      v21 = v20 * v4;
      v22 = v19 + v20 * v4;
      v23 = v20 * v7;
      v24 = v19 + v20 * v7 + v20;
      if (v21 < v23 || v22 >= v24)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v21 == v23)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

void sub_2273692C8(int64_t a1, uint64_t a2)
{
  v4 = sub_227668BB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_22766CCA0();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_22736CC08(&qword_27D7B8730, MEMORY[0x277D537B0], MEMORY[0x277D537B8]);
      v21 = sub_22766BF50();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification(0) - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

uint64_t sub_22736960C(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t, void *), uint64_t (*a7)(uint64_t, uint64_t))
{
  v32 = a6;
  v33 = a7;
  v30 = a4;
  v31 = a5;
  v8 = v7;
  v12 = sub_2276694E0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v7;
  v18 = sub_226F39E30(a2);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v30();
      goto LABEL_7;
    }

    v31();
    v28 = sub_226F39E30(a2);
    if ((v22 & 1) == (v29 & 1))
    {
      v18 = v28;
      v24 = *v8;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v13 + 16))(v15, a2, v12);
      return sub_227366268(v18, v15, a1, v24, v33);
    }

LABEL_15:
    result = sub_22766D220();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v8;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = (v24[7] + 40 * v18);
  __swift_destroy_boxed_opaque_existential_0(v25);
  v26 = v32;

  return v26(a1, v25);
}

id sub_2273698B8(uint64_t a1, void *a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v12 = v7;
  v15 = *v7;
  v17 = sub_226F3A030(a2);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      a4();
      goto LABEL_7;
    }

    a5();
    v31 = sub_226F3A030(a2);
    if ((v21 & 1) == (v32 & 1))
    {
      v17 = v31;
      v23 = *v12;
      if (v21)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    result = sub_22766D220();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v12;
  if (v21)
  {
LABEL_8:
    v24 = v23[7];
    v25 = a6(0);
    v26 = *(v25 - 8);
    v27 = *(v26 + 40);
    v28 = v25;
    v29 = v24 + *(v26 + 72) * v17;

    return v27(v29, a1, v28);
  }

LABEL_13:
  sub_227366A28(v17, a2, a1, v23, a7);

  return a2;
}

unint64_t sub_227369A70(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_226F3A978(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_226FE3888(v14, a3 & 1);
      result = sub_226F3A978(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_22766D220();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_226FF0DD4();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    v22 = v19[7] + 40 * result;
    v23 = *(a1 + 16);
    *v22 = *a1;
    *(v22 + 16) = v23;
    *(v22 + 32) = *(a1 + 32);
    v24 = v19[2];
    v13 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v13)
    {
      v19[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 40 * result;
  v21 = *(a1 + 16);
  *v20 = *a1;
  *(v20 + 16) = v21;
  *(v20 + 32) = *(a1 + 32);
  swift_unknownObjectRelease();
}

void sub_227369C3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_226E92000(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_226FE2228(v16, a4 & 1);
      v11 = sub_226E92000(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_22766D220();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_226FF016C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void sub_227369DA0(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_226E92000(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_226FE24C8(v16, a3 & 1);
      v11 = sub_226E92000(a1, a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_22766D220();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_226FF02D4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a4;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 8 * v11) = a4;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_227369F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v29 = a1;
  v30 = a2;
  v10 = sub_2276639B0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_226F3AA2C(a4);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a5 & 1) == 0)
  {
    if (v21 >= v19 && (a5 & 1) == 0)
    {
      sub_226FF15B8();
      goto LABEL_9;
    }

    sub_226FE510C(v19, a5 & 1);
    v22 = sub_226F3AA2C(a4);
    if ((v20 & 1) == (v23 & 1))
    {
      v16 = v22;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_22766D220();
    __break(1u);
    return result;
  }

LABEL_9:
  v24 = v30;
  v25 = *v6;
  if (v20)
  {
    v26 = (v25[7] + 24 * v16);
    v27 = v26[2];
    *v26 = v29;
    v26[1] = v24;
    v26[2] = a3;
  }

  else
  {
    (*(v11 + 16))(v13, a4, v10);
    return sub_227366334(v16, v13, v29, v24, a3, v25);
  }
}

uint64_t sub_22736A144(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_226F3ABA4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_226FE57E0(v14, a3 & 1);
      v9 = sub_226F3ABA4(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_22766D220();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_226FF19D4();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    v21 = v19[6] + 40 * v9;
    v22 = *a2;
    v23 = *(a2 + 16);
    *(v21 + 32) = *(a2 + 32);
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v19[7] + 8 * v9) = a1;
    v24 = v19[2];
    v13 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v13)
    {
      v19[2] = v25;
      return sub_227019388(a2, v26);
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

uint64_t sub_22736A2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_226F3AB00(a2, a3, a4, a5 & 1);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_226FE5AF0(v20, a6 & 1);
      v15 = sub_226F3AB00(a2, a3, a4, a5 & 1);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_22766D220();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_226FF1B80();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = v25[6] + 32 * v15;
  *v27 = a2;
  *(v27 + 8) = a3;
  *(v27 + 16) = a4;
  *(v27 + 24) = a5 & 1;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;

  return sub_226EB396C(a3, a4, a5 & 1);
}

void sub_22736A46C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_226E92000(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_226FF1414();
      v11 = v19;
      goto LABEL_8;
    }

    sub_226FE4910(v16, a4 & 1);
    v11 = sub_226E92000(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_22766D220();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    sub_226F04970(a1, v22);
  }

  else
  {
    sub_227366484(v11, a2, a3, a1, v21);
  }
}

void sub_22736A5BC(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_226E92000(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_226FE636C(v16, a4 & 1);
      v11 = sub_226E92000(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_22766D220();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_226FF2024();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    sub_227333460(a1, v22);
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  v24 = v21[7] + 40 * v11;
  v25 = *a1;
  v26 = a1[1];
  *(v24 + 32) = *(a1 + 4);
  *v24 = v25;
  *(v24 + 16) = v26;
  v27 = v21[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v28;
}

unint64_t sub_22736A74C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_226F491D4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_226FE69BC(v14, a3 & 1);
      result = sub_226F491D4(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_22766D220();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_226FF23B0();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

void sub_22736A898(uint64_t a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_226F3ACCC(a1);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a2 & 1) == 0)
  {
    if (v18 < v16 || (a2 & 1) != 0)
    {
      sub_226FE7DD4(v16, a2 & 1);
      v11 = sub_226F3ACCC(a1);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFD0, &unk_227679A90);
        sub_22766D220();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_226FF2C6C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a3;
    v22[1] = a4;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  *(v21[6] + 8 * v11) = a1;
  v23 = (v21[7] + 16 * v11);
  *v23 = a3;
  v23[1] = a4;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v25;
}

void sub_22736AA00(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_226F3ACCC(a1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 < v14 || (a2 & 1) != 0)
    {
      sub_226FE8110(v14, a2 & 1);
      v9 = sub_226F3ACCC(a1);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFD0, &unk_227679A90);
        sub_22766D220();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_226FF2DCC();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a3;
    return;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a1;
  *(v19[7] + 8 * v9) = a3;
  v20 = v19[2];
  v13 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19[2] = v21;
}

void sub_22736AC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_226E92000(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_226FE4E4C(v18, a5 & 1);
      v13 = sub_226E92000(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_22766D220();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_226FF129C();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

uint64_t sub_22736AD8C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2276624A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_226F3B058(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_226FF3640();
      goto LABEL_7;
    }

    sub_226FE9350(v17, a3 & 1);
    v28 = sub_226F3B058(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_22736661C(v14, v11, a1, v20, MEMORY[0x277CC9260], MEMORY[0x277D50430]);
    }

LABEL_15:
    result = sub_22766D220();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_227663CD0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

void sub_22736AFB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_226E92000(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_226FEA188(v16, a4 & 1);
      v11 = sub_226E92000(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_22766D220();
        __break(1u);
_objc_release_x1:
        MEMORY[0x2821F96F8]();
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_226FF384C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    goto _objc_release_x1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_22736B130(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_226F3B1C0(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_226FEA19C(v15, a4 & 1);
      v10 = sub_226F3B1C0(a3);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_18:
        sub_226E99364(0, &qword_281398AE8, 0x277CCAD50);
        sub_22766D220();
        __break(1u);
        return MEMORY[0x2821F9840]();
      }
    }

    else
    {
      v18 = v10;
      sub_226FF3860();
      v10 = v18;
    }
  }

  v20 = *v5;
  if ((v16 & 1) == 0)
  {
    v20[(v10 >> 6) + 8] |= 1 << v10;
    *(v20[6] + 8 * v10) = a3;
    v23 = (v20[7] + 16 * v10);
    *v23 = a1;
    v23[1] = a2;
    v24 = v20[2];
    v14 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v14)
    {
      v20[2] = v25;

      return MEMORY[0x2821F9840]();
    }

    goto LABEL_17;
  }

  v21 = (v20[7] + 16 * v10);
  *v21 = a1;
  v21[1] = a2;
}

id sub_22736B2B4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_226F3B1C0(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      sub_226FF39D8();
      goto LABEL_7;
    }

    sub_226FEA410(v12, a3 & 1);
    v19 = sub_226F3B1C0(a2);
    if ((v13 & 1) == (v20 & 1))
    {
      v9 = v19;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_226E99364(0, &qword_281398AE8, 0x277CCAD50);
    result = sub_22766D220();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = v16 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860) - 8) + 72) * v9;

    return sub_22736CB24(a1, v17);
  }

LABEL_13:
  sub_22736657C(v9, a2, a1, v15);

  return a2;
}

uint64_t sub_22736B424(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2276638D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_226F3B3E8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_226FF3DE8();
      goto LABEL_7;
    }

    sub_226FEAEF4(v17, a3 & 1);
    v28 = sub_226F3B3E8(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_22736661C(v14, v11, a1, v20, MEMORY[0x277D50180], MEMORY[0x277D518F8]);
    }

LABEL_15:
    result = sub_22766D220();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_227665750();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_22736B650(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2276638D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_226F3B3E8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_226FF4180();
      goto LABEL_7;
    }

    sub_226FEB3B0(v17, a3 & 1);
    v22 = sub_226F3B3E8(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_22736671C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_22766D220();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

void sub_22736B864(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_226E92000(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_226FEBAA0(v16, a4 & 1);
      v11 = sub_226E92000(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_22766D220();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_226FF437C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    swift_unknownObjectRelease();
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

unint64_t sub_22736BA9C(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), void (*a5)(void), void (*a6)(uint64_t, void), unint64_t a7)
{
  v11 = v7;
  v15 = *v7;
  result = a4(a2);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = v17;
  v23 = *(v15 + 24);
  if (v23 >= v21 && (a3 & 1) != 0)
  {
LABEL_8:
    v26 = *v11;
    if (v22)
    {
      *(v26[7] + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v26[(result >> 6) + 8] |= 1 << result;
    *(v26[6] + result) = a2;
    *(v26[7] + 8 * result) = a1;
    v27 = v26[2];
    v20 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v20)
    {
      v26[2] = v28;
      return result;
    }

    goto LABEL_15;
  }

  if (v23 >= v21 && (a3 & 1) == 0)
  {
    v24 = result;
    a5();
    result = v24;
    goto LABEL_8;
  }

  a6(v21, a3 & 1);
  result = a4(a2);
  if ((v22 & 1) == (v25 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_22766D220();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

unint64_t sub_22736BC60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_226E923A0(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_226FECE20(v16, a4 & 1);
      result = sub_226E923A0(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_22766D220();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_226FF4ADC();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

uint64_t sub_22736BDC0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_227663480();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_226F3BA10(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for AssetBundleHandler.DownloadedAssetBundle(0);
      return sub_22736CC50(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for AssetBundleHandler.DownloadedAssetBundle);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_226FF533C();
    goto LABEL_7;
  }

  sub_226FEDFE8(v17, a3 & 1);
  v24 = sub_226F3BA10(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_22766D220();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_227366930(v14, v11, a1, v20, MEMORY[0x277D4FF88], type metadata accessor for AssetBundleHandler.DownloadedAssetBundle, type metadata accessor for AssetBundleHandler.DownloadedAssetBundle);
}

void sub_22736BFFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_226E92000(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_226E92000(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_22766D220();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

unint64_t sub_22736C230(uint64_t a1, char a2, uint64_t (*a3)(uint64_t), void (*a4)(void), uint64_t (*a5)(uint64_t, void), unint64_t a6)
{
  v10 = v6;
  v13 = *v6;
  result = (a3)();
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 >= v19 && (a2 & 1) != 0)
  {
LABEL_8:
    v25 = *v10;
    if (v20)
    {
      *(*(v25 + 56) + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    *(v25 + 8 * (result >> 6) + 64) |= 1 << result;
    *(*(v25 + 56) + 8 * result) = a1;
    v26 = *(v25 + 16);
    v18 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v18)
    {
      *(v25 + 16) = v27;
      return result;
    }

    goto LABEL_15;
  }

  if (v21 >= v19 && (a2 & 1) == 0)
  {
    v22 = result;
    a4();
    result = v22;
    goto LABEL_8;
  }

  v23 = a5(v19, a2 & 1);
  result = a3(v23);
  if ((v20 & 1) == (v24 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_22766D220();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

unint64_t sub_22736C3E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t), void (*a6)(void), void (*a7)(uint64_t, void), uint64_t a8)
{
  v12 = v8;
  v17 = *v8;
  result = a5(a3);
  v20 = *(v17 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v24 = v19;
  v25 = *(v17 + 24);
  if (v25 < v23 || (a4 & 1) == 0)
  {
    if (v25 < v23 || (a4 & 1) != 0)
    {
      a7(v23, a4 & 1);
      result = a5(a3);
      if ((v24 & 1) != (v27 & 1))
      {
LABEL_16:
        result = sub_22766D220();
        __break(1u);
        return result;
      }
    }

    else
    {
      v26 = result;
      a6();
      result = v26;
    }
  }

  v28 = *v12;
  if ((v24 & 1) == 0)
  {
    v28[(result >> 6) + 8] |= 1 << result;
    *(v28[6] + result) = a3;
    v30 = (v28[7] + 16 * result);
    *v30 = a1;
    v30[1] = a2;
    v31 = v28[2];
    v22 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (!v22)
    {
      v28[2] = v32;
      return result;
    }

    goto LABEL_15;
  }

  v29 = (v28[7] + 16 * result);
  *v29 = a1;
  v29[1] = a2;
}

id sub_22736C574(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_226F3B23C(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 >= v12 && (a3 & 1) != 0)
  {
LABEL_7:
    v15 = *v4;
    if (v13)
    {
LABEL_8:
      v16 = v15[7];
      v17 = type metadata accessor for AssetMediaStreamLoader.TaskResult(0);
      return sub_22736CC50(a1, v16 + *(*(v17 - 8) + 72) * v9, type metadata accessor for AssetMediaStreamLoader.TaskResult);
    }

    goto LABEL_11;
  }

  if (v14 >= v12 && (a3 & 1) == 0)
  {
    sub_226FF5AB8();
    goto LABEL_7;
  }

  sub_226FEECA0(v12, a3 & 1);
  v19 = sub_226F3B23C(a2);
  if ((v13 & 1) != (v20 & 1))
  {
LABEL_15:
    sub_226E99364(0, &qword_27D7B8670, 0x277CE63F0);
    result = sub_22766D220();
    __break(1u);
    return result;
  }

  v9 = v19;
  v15 = *v4;
  if (v13)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_227366888(v9, a2, a1, v15);

  return a2;
}

uint64_t sub_22736C6E0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_227668BB0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_226F3B28C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification(0);
      return sub_22736CC50(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_226FF5E68();
    goto LABEL_7;
  }

  sub_226FEF2E4(v17, a3 & 1);
  v24 = sub_226F3B28C(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_22766D220();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_227366930(v14, v11, a1, v20, MEMORY[0x277D537B0], type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification, type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification);
}

unint64_t sub_22736C954()
{
  result = qword_27D7BCEC8;
  if (!qword_27D7BCEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCEC8);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_22736C9C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_22736CA0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22736CB24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_22736CB94()
{
  result = qword_27D7BCEE8;
  if (!qword_27D7BCEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCEE8);
  }

  return result;
}

uint64_t sub_22736CC08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22736CC50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_22736CCC4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_227662750();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  v15 = [a1 identifier];
  if (v15)
  {
    v37 = a2;
    v16 = v15;
    v17 = sub_22766C000();
    v35 = v18;
    v36 = v17;

    v19 = [a1 notificationID];
    if (v19)
    {
      v20 = v19;
      v21 = sub_22766C000();
      v33 = v22;
      v34 = v21;
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    v25 = [a1 marketingItemID];
    if (v25)
    {
      v26 = v25;
      sub_22766C000();
      v32 = v27;
    }

    else
    {
      v32 = 0;
    }

    v28 = [a1 receivedDate];
    if (v28)
    {
      v29 = v28;
      sub_227662710();

      v31 = a1;
      v30 = *(v8 + 32);
      v30(v6, v10, v7);
      (*(v8 + 56))(v6, 0, 1, v7);
      v30(v14, v6, v7);
      a1 = v31;
    }

    else
    {
      (*(v8 + 56))(v6, 1, 1, v7);
      sub_2276625C0();
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        sub_226EDDD40(v6);
      }
    }

    (*(v8 + 16))(v10, v14, v7);
    sub_227664680();

    (*(v8 + 8))(v14, v7);
  }

  else
  {
    v23 = sub_227664DD0();
    sub_22736D4E8(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51028], v23);
    swift_willThrow();
  }
}

uint64_t static EngagementBadge.representativeSamples()()
{
  v0 = sub_227662750();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2276646D0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22766C090();
  v6 = *(v5 + 16);
  if (v6)
  {
    v13 = MEMORY[0x277D84F90];
    sub_226F1F688(0, v6, 0);
    v7 = v13;
    v12 = v5;
    v8 = v5 + 40;
    do
    {

      sub_227662740();
      sub_227664680();
      v13 = v7;
      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_226F1F688((v9 > 1), v10 + 1, 1);
        v7 = v13;
      }

      *(v7 + 16) = v10 + 1;
      (*(v2 + 32))(v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v10, v4, v1);
      v8 += 16;
      --v6;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v7;
}

uint64_t sub_22736D2E8(uint64_t a1)
{
  result = sub_22736D4E8(&unk_28139B968, MEMORY[0x277D50B18], &protocol conformance descriptor for EngagementBadge);
  *(a1 + 8) = result;
  return result;
}

void sub_22736D340(void *a1)
{
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227664690();
  v6 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_2276646B0();
  if (v7)
  {
    v8 = sub_22766BFD0();
  }

  else
  {
    v8 = 0;
  }

  [a1 setNotificationID_];

  sub_2276646C0();
  if (v9)
  {
    v10 = sub_22766BFD0();
  }

  else
  {
    v10 = 0;
  }

  [a1 setMarketingItemID_];

  sub_2276646A0();
  v11 = sub_2276626A0();
  (*(v3 + 8))(v5, v2);
  [a1 setReceivedDate_];
}

uint64_t sub_22736D4E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22736D530(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2276666C0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22736D5F0, 0, 0);
}

uint64_t sub_22736D5F0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D524F0])
  {
    v5 = v0[6];
    (*(v0[5] + 96))(v5, v0[4]);
    v6 = *v5;
    v7 = v5[1];

    v8 = v0[1];

    return v8(v6, v7);
  }

  else if (v4 == *MEMORY[0x277D524E8])
  {
    v10 = swift_task_alloc();
    v0[7] = v10;
    *v10 = v0;
    v10[1] = sub_22736D798;

    return sub_2273CF184(0xD000000000000028, 0x800000022769E950);
  }

  else
  {
    v11 = v0[4];

    return MEMORY[0x2821FDEB8](v11, v11);
  }
}

uint64_t sub_22736D798(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {

    v7 = sub_22736D940;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v7 = sub_22736D8D0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22736D8D0()
{
  v1 = v0[8];
  v2 = v0[9];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_22736D940()
{
  v1 = sub_227665E90();
  sub_227215894();
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, *MEMORY[0x277D51F20], v1);
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22736DA24@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  sub_22766A740();
  sub_22766B370();
  v9 = *(v3 + 8);
  v9(v8, v2);
  v10 = [objc_opt_self() standardUserDefaults];
  sub_227664840();
  v11 = sub_22766BFD0();

  v12 = [v10 BOOLForKey_];

  if (v12)
  {
    sub_22766A740();
    v13 = sub_22766B380();
    v14 = sub_22766C8B0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_226E8E000, v13, v14, "Metrics reporting is disabled", v15, 2u);
      MEMORY[0x22AA9A450](v15, -1, -1);
    }

    v9(v5, v2);
    v16 = type metadata accessor for NullMetricRecorder();
    result = swift_allocObject();
    v18 = result;
    v19 = &off_283AADA38;
  }

  else
  {
    v18 = sub_22736DC9C();
    result = type metadata accessor for JetMetricsRecorder(0);
    v16 = result;
    v19 = &off_283A9CB28;
  }

  a1[3] = v16;
  a1[4] = v19;
  *a1 = v18;
  return result;
}

uint64_t sub_22736DC9C()
{
  v1 = sub_22766B880();
  v122 = *(v1 - 8);
  v123 = v1;
  MEMORY[0x28223BE20](v1);
  v120 = &v106 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_22766B850();
  v119 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v118 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v116 = &v106 - v5;
  MEMORY[0x28223BE20](v6);
  v121 = &v106 - v7;
  v8 = sub_227669A90();
  v112 = *(v8 - 8);
  v113 = v8;
  MEMORY[0x28223BE20](v8);
  v111 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766BCB0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v114 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v129 = &v106 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v106 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v106 - v19;
  v115 = v0;
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  sub_226E9EF44();
  sub_22766BC70();
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCEF8, &qword_2276821B0);
  v124 = v11;
  v21 = *(v11 + 16);
  (v21)(v17, v20, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF00, &qword_2276821B8);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_227670CD0;
  *(v22 + 56) = &type metadata for HardwareModelFieldRemovalLinterRule;
  *(v22 + 64) = sub_22736ED78();
  v128 = sub_22766BB60();
  v106 = sub_22766BB00();
  v127 = v10;
  (v21)(v17, v20, v10);
  v108 = v21;
  v109 = v11 + 16;
  v23 = sub_2276636C0();
  v24 = sub_227090024(v23);
  v110 = 0;

  v25 = sub_226F3E6A8(v24);

  v26 = MEMORY[0x22AA97E10](v17, 0, 0xE000000000000000, v25);
  v126 = v26;
  v117 = v20;
  (v21)(v129, v20, v10);
  v27 = v115;
  sub_226E91B50(v115 + 56, v156);
  sub_226E91B50(v27 + 16, v155);
  sub_226E91B50(v27 + 96, v154);
  sub_226E91B50(v27 + 136, v153);
  sub_226E91B50(v27 + 176, v152);
  sub_226FB68A4(v27 + 216, v151);
  LODWORD(v115) = sub_2276693D0();
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v156, v156[3]);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v31, v29);
  v33 = __swift_mutable_project_boxed_opaque_existential_1(v155, v155[3]);
  v34 = MEMORY[0x28223BE20](v33);
  v36 = (&v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))(v36, v34);
  v38 = __swift_mutable_project_boxed_opaque_existential_1(v153, v153[3]);
  v39 = MEMORY[0x28223BE20](v38);
  v41 = (&v106 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41, v39);
  v43 = __swift_mutable_project_boxed_opaque_existential_1(v152, v152[3]);
  v44 = MEMORY[0x28223BE20](v43);
  v46 = (&v106 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v47 + 16))(v46, v44);
  v48 = *v36;
  v49 = *v41;
  v50 = *v46;
  v150[3] = &type metadata for MetricEventSequenceNumberProvider;
  v150[4] = &off_283A9A9A8;
  v51 = swift_allocObject();
  v150[0] = v51;
  v52 = *(v31 + 1);
  *(v51 + 16) = *v31;
  *(v51 + 32) = v52;
  *(v51 + 48) = *(v31 + 4);
  v149[3] = v107;
  v149[4] = sub_22736EDCC();
  v149[0] = v128;
  v148[4] = MEMORY[0x277D221A8];
  v148[3] = v106;
  v148[0] = v26;
  v53 = type metadata accessor for BagConsumer();
  v147[3] = v53;
  v147[4] = &off_283A9F810;
  v147[0] = v48;
  v54 = type metadata accessor for PrivacyPreferenceDataSource(0);
  v145 = v54;
  v146 = &off_283AB2760;
  v144[0] = v49;
  v55 = type metadata accessor for ServiceSubscriptionProviderBroker(0);
  v142 = v55;
  v143 = &off_283ACB2B8;
  v141[0] = v50;
  v107 = type metadata accessor for JetMetricsRecorder(0);
  v56 = swift_allocObject();
  v57 = __swift_mutable_project_boxed_opaque_existential_1(v150, &type metadata for MetricEventSequenceNumberProvider);
  v58 = MEMORY[0x28223BE20](v57);
  v60 = &v106 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v61 + 16))(v60, v58);
  v62 = __swift_mutable_project_boxed_opaque_existential_1(v147, v53);
  v63 = MEMORY[0x28223BE20](v62);
  v65 = (&v106 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v66 + 16))(v65, v63);
  v67 = __swift_mutable_project_boxed_opaque_existential_1(v144, v145);
  v68 = MEMORY[0x28223BE20](v67);
  v70 = (&v106 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v71 + 16))(v70, v68);
  v72 = __swift_mutable_project_boxed_opaque_existential_1(v141, v142);
  v73 = MEMORY[0x28223BE20](v72);
  v75 = (&v106 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v76 + 16))(v75, v73);
  v77 = *v65;
  v78 = *v70;
  v79 = *v75;
  v140[3] = &type metadata for MetricEventSequenceNumberProvider;
  v140[4] = &off_283A9A9A8;
  v80 = swift_allocObject();
  v140[0] = v80;
  v81 = *(v60 + 1);
  *(v80 + 16) = *v60;
  *(v80 + 32) = v81;
  *(v80 + 48) = *(v60 + 4);
  v138 = v53;
  v139 = &off_283A9F810;
  v137[0] = v77;
  v135 = v54;
  v136 = &off_283AB2760;
  *&v134 = v78;
  v132 = v55;
  v133 = &off_283ACB2B8;
  *&v131 = v79;
  v82 = OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder__metricsEventDefaultRoutingBehavior;
  (*(v112 + 104))(v111, *MEMORY[0x277D4F038], v113);
  v130[0] = 0;

  v113 = v82;
  sub_227669760();
  v83 = OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_referrerURL;
  v84 = sub_2276624A0();
  (*(*(v84 - 8) + 56))(v56 + v83, 1, 1, v84);
  v85 = (v56 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_sourceApplication);
  *v85 = 0;
  v85[1] = 0;
  v112 = OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_bag;
  v86 = v108;
  (v108)(v56 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_bag, v129, v127);
  v87 = OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_healthStore;
  sub_226FB68A4(v151, v56 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_healthStore);
  v88 = OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_eventSequenceNumberProvider;
  sub_226E91B50(v140, v56 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_eventSequenceNumberProvider);
  v89 = OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_recorder;
  sub_226E91B50(v148, v56 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_recorder);
  v86();
  sub_226E91B50(v149, v130);
  v90 = sub_2276636C0();
  v91 = v110;
  v92 = sub_227090024(v90);
  if (v91)
  {
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    (*(*(v105 - 8) + 8))(v56 + v113, v105);
    __swift_destroy_boxed_opaque_existential_0((v56 + v89));
    __swift_destroy_boxed_opaque_existential_0((v56 + v88));
    (*(v124 + 8))(v56 + v112, v127);
    __swift_destroy_boxed_opaque_existential_0((v56 + v87));
    sub_226FB1188(v56 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_referrerURL);

    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  else
  {
    v93 = v92;

    sub_226F3E6A8(v93);

    v94 = v116;
    sub_22766B840();
    v95 = v121;
    sub_22766B830();
    v96 = v119;
    v97 = *(v119 + 8);
    v98 = v125;
    v97(v94, v125);
    (*(v96 + 16))(v118, v95, v98);
    v99 = v120;
    sub_22766B860();
    (*(v122 + 32))(v56 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_metricsPipeline, v99, v123);
    __swift_project_boxed_opaque_existential_0(v137, v138);
    v100 = [objc_allocWithZone(MEMORY[0x277CEE498]) initWithBag_];

    swift_unknownObjectRelease();
    v97(v95, v98);
    __swift_destroy_boxed_opaque_existential_0(v151);
    v101 = *(v124 + 8);
    v102 = v127;
    v101(v129, v127);
    v101(v117, v102);
    __swift_destroy_boxed_opaque_existential_0(v148);
    __swift_destroy_boxed_opaque_existential_0(v149);
    __swift_destroy_boxed_opaque_existential_0(v140);
    *(v56 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_amsEngagement) = v100;
    sub_226E92AB8(v154, v56 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_identifierStore);
    *(v56 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_platform) = v115;
    v103 = v56 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_recordingContextBuilder;
    sub_226E92AB8(&v134, v56 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_recordingContextBuilder);
    sub_226E92AB8(&v131, v103 + 40);
    __swift_destroy_boxed_opaque_existential_0(v137);
    __swift_destroy_boxed_opaque_existential_0(v141);
    __swift_destroy_boxed_opaque_existential_0(v144);
    __swift_destroy_boxed_opaque_existential_0(v147);
    __swift_destroy_boxed_opaque_existential_0(v150);
    __swift_destroy_boxed_opaque_existential_0(v152);
    __swift_destroy_boxed_opaque_existential_0(v153);
    __swift_destroy_boxed_opaque_existential_0(v155);
    __swift_destroy_boxed_opaque_existential_0(v156);
    return v56;
  }

  return result;
}

uint64_t sub_22736EBEC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  sub_22736EE30((v0 + 35));

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_15SeymourServices20MetricRecorderBrokerC5StateO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22736EC90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22736ECE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_22736ED3C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

unint64_t sub_22736ED78()
{
  result = qword_281399988[0];
  if (!qword_281399988[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281399988);
  }

  return result;
}

unint64_t sub_22736EDCC()
{
  result = qword_2813991D0;
  if (!qword_2813991D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BCEF8, &qword_2276821B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813991D0);
  }

  return result;
}

uint64_t sub_22736EEA0(uint64_t a1)
{
  v36 = sub_227662750();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_227666330();
  v5 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v28[1] = v1;
    v40 = MEMORY[0x277D84F90];
    sub_226F1F888(0, v7, 0);
    v39 = v40;
    v9 = a1 + 56;
    result = sub_22766CC90();
    v10 = result;
    v11 = 0;
    v32 = v5 + 32;
    v33 = (v3 + 8);
    v29 = a1 + 64;
    v30 = v7;
    v31 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v9 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_23;
      }

      v38 = *(a1 + 36);
      v14 = a1;
      swift_bridgeObjectRetain_n();
      v15 = v35;
      sub_227662660();
      sub_2276625D0();
      (*v33)(v15, v36);
      v16 = v37;
      sub_227666300();

      v17 = v39;
      v40 = v39;
      v19 = *(v39 + 16);
      v18 = *(v39 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_226F1F888((v18 > 1), v19 + 1, 1);
        v16 = v37;
        v17 = v40;
      }

      *(v17 + 16) = v19 + 1;
      v20 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v39 = v17;
      result = (*(v5 + 32))(v17 + v20 + *(v5 + 72) * v19, v16, v34);
      v12 = 1 << *(v14 + 32);
      if (v10 >= v12)
      {
        goto LABEL_24;
      }

      v9 = v31;
      v21 = *(v31 + 8 * v13);
      if ((v21 & (1 << v10)) == 0)
      {
        goto LABEL_25;
      }

      a1 = v14;
      if (v38 != *(v14 + 36))
      {
        goto LABEL_26;
      }

      v22 = v21 & (-2 << (v10 & 0x3F));
      if (v22)
      {
        v12 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v13 << 6;
        v24 = v13 + 1;
        v25 = (v29 + 8 * v13);
        while (v24 < (v12 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_226EB526C(v10, v38, 0);
            v12 = __clz(__rbit64(v26)) + v23;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v10, v38, 0);
LABEL_19:
        a1 = v14;
      }

      ++v11;
      v10 = v12;
      if (v11 == v30)
      {
        return v39;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_22736F27C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v37 = a3;
  v36 = a2(0);
  v5 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = v29 - v6;
  v7 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v29[1] = v3;
    v42 = MEMORY[0x277D84F90];
    sub_226F1EF90();
    v40 = a1 + 56;
    v41 = v42;
    result = sub_22766CC90();
    v9 = result;
    v10 = 0;
    v33 = v5 + 8;
    v34 = v5 + 16;
    v30 = a1 + 64;
    v31 = v7;
    v32 = v5;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v40 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v35;
      v15 = v36;
      v16 = (*(v5 + 16))(v35, *(a1 + 48) + *(v5 + 72) * v9, v36);
      v39 = v37(v16);
      v18 = v17;
      result = (*(v5 + 8))(v14, v15);
      v19 = v41;
      v42 = v41;
      v20 = *(v41 + 16);
      if (v20 >= *(v41 + 24) >> 1)
      {
        result = sub_226F1EF90();
        v19 = v42;
      }

      *(v19 + 16) = v20 + 1;
      v21 = v19 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v18;
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v22 = *(v40 + 8 * v13);
      if ((v22 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v41 = v19;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v9 & 0x3F));
      if (v23)
      {
        v11 = __clz(__rbit64(v23)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v12 = v31;
        v5 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v12 = v31;
        v26 = (v30 + 8 * v13);
        v5 = v32;
        while (v25 < (v11 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_226EB526C(v9, v38, 0);
            v11 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v9, v38, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v12)
      {
        return v41;
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
  }

  return result;
}

unint64_t sub_22736F58C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v80 = a5;
  v77 = a2;
  v75 = sub_227662750();
  v78 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v70 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF28, &qword_2276823E8);
  MEMORY[0x28223BE20](v72);
  v73 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0);
  MEMORY[0x28223BE20](v9 - 8);
  v71 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v76 = &v62 - v12;
  MEMORY[0x28223BE20](v13);
  v74 = &v62 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v62 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v62 - v25;
  __swift_project_boxed_opaque_existential_0(a4, a4[3]);
  v27 = sub_227664230();
  v28 = v79;
  sub_2270765A0(v27, v29, v80, v17);
  if (v28)
  {
    goto LABEL_7;
  }

  v68 = a4;
  v69 = v26;
  v64 = v20;
  v30 = v75;
  v66 = v23;
  v67 = a1;
  v79 = 0;

  v31 = v74;
  sub_226E93170(v17, v74, &unk_27D7BD3F0, &unk_2276823F0);
  v32 = sub_227663480();
  v33 = *(v32 - 8);
  v65 = *(v33 + 48);
  v34 = v65(v31, 1, v32);
  v63 = v33;
  if (v34 == 1)
  {
    sub_226E97D1C(v17, &unk_27D7BD3F0, &unk_2276823F0);
    sub_226E97D1C(v31, &unk_27D7BD3F0, &unk_2276823F0);
    v35 = 1;
    v36 = v69;
  }

  else
  {
    v36 = v69;
    sub_227663400();
    sub_226E97D1C(v17, &unk_27D7BD3F0, &unk_2276823F0);
    (*(v33 + 8))(v31, v32);
    v35 = 0;
  }

  v37 = v30;
  v38 = *(v78 + 56);
  v38(v36, v35, 1, v30);
  __swift_project_boxed_opaque_existential_0(v68, v68[3]);
  v39 = sub_227664230();
  v20 = v76;
  v40 = v79;
  sub_2270765A0(v39, v41, v80, v76);
  if (!v40)
  {
    v79 = 0;

    v43 = v71;
    sub_226E93170(v20, v71, &unk_27D7BD3F0, &unk_2276823F0);
    if (v65(v43, 1, v32) == 1)
    {
      sub_226E97D1C(v20, &unk_27D7BD3F0, &unk_2276823F0);
      sub_226E97D1C(v43, &unk_27D7BD3F0, &unk_2276823F0);
      v44 = 1;
      v45 = v66;
    }

    else
    {
      v45 = v66;
      sub_227663400();
      sub_226E97D1C(v20, &unk_27D7BD3F0, &unk_2276823F0);
      (*(v63 + 8))(v43, v32);
      v44 = 0;
    }

    v46 = v69;
    v47 = v78;
    v48 = v72;
    v38(v45, v44, 1, v37);
    v49 = *(v48 + 48);
    v50 = v73;
    sub_226E93170(v46, v73, &qword_27D7B9690, qword_227670B50);
    sub_226E93170(v45, v50 + v49, &qword_27D7B9690, qword_227670B50);
    v51 = *(v47 + 48);
    if (v51(v50, 1, v37) == 1)
    {
      if (v51(v50 + v49, 1, v37) == 1)
      {
        sub_226E97D1C(v50, &qword_27D7B9690, qword_227670B50);
        goto LABEL_20;
      }
    }

    else
    {
      v52 = v64;
      sub_226E93170(v50, v64, &qword_27D7B9690, qword_227670B50);
      if (v51(v50 + v49, 1, v37) != 1)
      {
        v53 = v50 + v49;
        v54 = v70;
        (*(v47 + 32))(v70, v53, v37);
        sub_227390744(&qword_28139BDB8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
        v55 = sub_22766BFB0();
        v56 = *(v47 + 8);
        v56(v54, v37);
        v56(v52, v37);
        sub_226E97D1C(v50, &qword_27D7B9690, qword_227670B50);
        if (v55)
        {
LABEL_20:
          v57 = sub_2276642B0();
          if (v57 == sub_2276642B0())
          {
            v58 = sub_227664230();
            v60 = v59;
            if (v58 == sub_227664230() && v60 == v61)
            {

              LOBYTE(v20) = 0;
            }

            else
            {
              LOBYTE(v20) = sub_22766D190();
            }
          }

          else
          {
            v20 = sub_2276642B0();
            LOBYTE(v20) = sub_2276642B0() < v20;
          }

          goto LABEL_26;
        }

LABEL_18:
        LOBYTE(v20) = sub_2273707B4(v46, v45);
LABEL_26:
        sub_226E97D1C(v45, &qword_27D7B9690, qword_227670B50);
        sub_226E97D1C(v46, &qword_27D7B9690, qword_227670B50);
        return v20 & 1;
      }

      (*(v47 + 8))(v52, v37);
    }

    sub_226E97D1C(v50, &qword_27D7BCF28, &qword_2276823E8);
    goto LABEL_18;
  }

  sub_226E97D1C(v36, &qword_27D7B9690, qword_227670B50);
LABEL_7:

  return v20 & 1;
}

unint64_t sub_22736FDBC(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void *a5)
{
  v94 = a5;
  v89 = a2;
  v8 = sub_227662750();
  v91 = *(v8 - 8);
  v92 = v8;
  MEMORY[0x28223BE20](v8);
  v80 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF28, &qword_2276823E8);
  MEMORY[0x28223BE20](v83);
  v84 = &v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0);
  MEMORY[0x28223BE20](v11 - 8);
  v82 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v90 = &v72 - v14;
  MEMORY[0x28223BE20](v15);
  v87 = &v72 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v72 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v20 - 8);
  v81 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v85 = &v72 - v23;
  MEMORY[0x28223BE20](v24);
  v93 = &v72 - v25;
  swift_beginAccess();
  v26 = *(a3 + 16);
  v27 = *(a3 + 24);
  v28 = *(a3 + 32);
  v29 = a4[3];
  v88 = a4;
  __swift_project_boxed_opaque_existential_0(a4, v29);

  v86 = a1;
  v30 = sub_227666A50();
  v31 = v95;
  sub_2270765A0(v30, v32, v94, v19);
  v95 = v31;
  if (!v31)
  {
    v76 = v28;
    v77 = v27;
    v78 = v26;
    v79 = a3;

    v33 = v87;
    sub_226E93170(v19, v87, &unk_27D7BD3F0, &unk_2276823F0);
    v34 = sub_227663480();
    v35 = *(v34 - 8);
    v36 = *(v35 + 48);
    v74 = v35 + 48;
    v73 = v36;
    v37 = v36(v33, 1, v34);
    v75 = v34;
    v72 = v35;
    if (v37 == 1)
    {

      sub_226E97D1C(v19, &unk_27D7BD3F0, &unk_2276823F0);
      sub_226E97D1C(v33, &unk_27D7BD3F0, &unk_2276823F0);
      v38 = 1;
      v39 = v93;
    }

    else
    {
      v39 = v93;
      sub_227663400();

      sub_226E97D1C(v19, &unk_27D7BD3F0, &unk_2276823F0);
      (*(v35 + 8))(v33, v34);
      v38 = 0;
    }

    v40 = v88;
    v41 = v79;
    v42 = (v91 + 56);
    v88 = *(v91 + 56);
    (v88)(v39, v38, 1, v92);
    swift_beginAccess();
    a3 = *(v41 + 16);
    __swift_project_boxed_opaque_existential_0(v40, v40[3]);

    v43 = sub_227666A50();
    v44 = v90;
    v45 = v95;
    sub_2270765A0(v43, v46, v94, v90);
    v95 = v45;
    if (v45)
    {

      sub_226E97D1C(v93, &qword_27D7B9690, qword_227670B50);
      return a3 & 1;
    }

    v94 = v42;
    v48 = v88;

    v49 = v82;
    sub_226E93170(v44, v82, &unk_27D7BD3F0, &unk_2276823F0);
    v50 = v75;
    if (v73(v49, 1, v75) == 1)
    {

      sub_226E97D1C(v44, &unk_27D7BD3F0, &unk_2276823F0);
      sub_226E97D1C(v49, &unk_27D7BD3F0, &unk_2276823F0);
      v51 = 1;
      v52 = v93;
      v53 = v85;
    }

    else
    {
      v54 = v85;
      sub_227663400();

      sub_226E97D1C(v90, &unk_27D7BD3F0, &unk_2276823F0);
      v55 = v50;
      v53 = v54;
      (*(v72 + 8))(v49, v55);
      v51 = 0;
      v52 = v93;
    }

    v56 = v83;
    v57 = v92;
    v48(v53, v51, 1, v92);
    v58 = *(v56 + 48);
    v59 = v84;
    sub_226E93170(v52, v84, &qword_27D7B9690, qword_227670B50);
    sub_226E93170(v53, v59 + v58, &qword_27D7B9690, qword_227670B50);
    v60 = v91;
    v61 = *(v91 + 48);
    if (v61(v59, 1, v57) == 1)
    {
      if (v61(v59 + v58, 1, v57) == 1)
      {
        sub_226E97D1C(v59, &qword_27D7B9690, qword_227670B50);
        goto LABEL_20;
      }
    }

    else
    {
      v62 = v81;
      sub_226E93170(v59, v81, &qword_27D7B9690, qword_227670B50);
      if (v61(v59 + v58, 1, v57) != 1)
      {
        v63 = v59 + v58;
        v64 = v80;
        (*(v60 + 32))(v80, v63, v57);
        sub_227390744(&qword_28139BDB8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
        v65 = sub_22766BFB0();
        v66 = *(v60 + 8);
        v66(v64, v57);
        v66(v62, v57);
        sub_226E97D1C(v59, &qword_27D7B9690, qword_227670B50);
        v52 = v93;
        if (v65)
        {
LABEL_20:
          v67 = sub_227666B30();
          if (v67 == sub_227666B30())
          {
            v68 = sub_227666A50();
            v70 = v69;
            if (v68 == sub_227666A50() && v70 == v71)
            {

              LOBYTE(a3) = 0;
            }

            else
            {
              LOBYTE(a3) = sub_22766D190();
            }
          }

          else
          {
            a3 = sub_227666B30();
            LOBYTE(a3) = sub_227666B30() < a3;
          }

          goto LABEL_26;
        }

LABEL_18:
        LOBYTE(a3) = sub_2273707B4(v52, v53);
LABEL_26:
        sub_226E97D1C(v53, &qword_27D7B9690, qword_227670B50);
        sub_226E97D1C(v52, &qword_27D7B9690, qword_227670B50);
        return a3 & 1;
      }

      (*(v60 + 8))(v62, v57);
      v52 = v93;
    }

    sub_226E97D1C(v59, &qword_27D7BCF28, &qword_2276823E8);
    goto LABEL_18;
  }

  return a3 & 1;
}

uint64_t sub_2273707B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = sub_227662750();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  sub_226E93170(a2, v9, &qword_27D7B9690, qword_227670B50);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_226E97D1C(v9, &qword_27D7B9690, qword_227670B50);
    v18 = 1;
  }

  else
  {
    v19 = v9;
    v20 = *(v11 + 32);
    v20(v16, v19, v10);
    sub_226E93170(a1, v6, &qword_27D7B9690, qword_227670B50);
    if (v17(v6, 1, v10) == 1)
    {
      (*(v11 + 8))(v16, v10);
      sub_226E97D1C(v6, &qword_27D7B9690, qword_227670B50);
      v18 = 0;
    }

    else
    {
      v20(v13, v6, v10);
      sub_227390744(&qword_28139BDC0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v18 = sub_22766BF80();
      v21 = *(v11 + 8);
      v21(v13, v10);
      v21(v16, v10);
    }
  }

  return v18 & 1;
}

uint64_t sub_227370A94(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(double), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v48 = a6;
  v51 = a5;
  v57 = a2;
  v8 = sub_227662750();
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x28223BE20](v8);
  v49 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF28, &qword_2276823E8) - 8;
  MEMORY[0x28223BE20](v53);
  v54 = &v48 - v10;
  v11 = sub_227662190();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v15 - 8);
  v52 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v48 - v22;
  v50 = a1;
  a4(v21);
  sub_2276628D0();
  v24 = *(v12 + 8);
  v25 = v24(v14, v11);
  (a4)(v25);
  sub_2276628D0();
  v26 = v14;
  v28 = v55;
  v27 = v56;
  v24(v26, v11);
  v29 = v54;
  v30 = v23;
  v31 = *(v53 + 56);
  sub_226E93170(v23, v54, &qword_27D7B9690, qword_227670B50);
  sub_226E93170(v19, v29 + v31, &qword_27D7B9690, qword_227670B50);
  v32 = *(v28 + 48);
  if (v32(v29, 1, v27) == 1)
  {
    if (v32(v29 + v31, 1, v27) == 1)
    {
      v33 = sub_226E97D1C(v29, &qword_27D7B9690, qword_227670B50);
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v34 = v52;
  sub_226E93170(v29, v52, &qword_27D7B9690, qword_227670B50);
  if (v32(v29 + v31, 1, v27) == 1)
  {
    (*(v28 + 8))(v34, v27);
LABEL_6:
    sub_226E97D1C(v29, &qword_27D7BCF28, &qword_2276823E8);
LABEL_7:
    v35 = sub_2273707B4(v19, v30);
    goto LABEL_15;
  }

  v36 = v49;
  (*(v28 + 32))(v49, v29 + v31, v27);
  sub_227390744(&qword_28139BDB8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v37 = sub_22766BFB0();
  v38 = *(v28 + 8);
  v38(v36, v27);
  v38(v34, v27);
  v33 = sub_226E97D1C(v29, &qword_27D7B9690, qword_227670B50);
  if ((v37 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v39 = v51;
  v40 = (v51)(v33);
  if (v40 == v39())
  {
    v41 = v48;
    v42 = v48();
    v44 = v43;
    if (v41() == v42 && v45 == v44)
    {

      v35 = 0;
    }

    else
    {
      v35 = sub_22766D190();
    }
  }

  else
  {
    v46 = v39();
    v35 = v39() < v46;
  }

LABEL_15:
  sub_226E97D1C(v19, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(v30, &qword_27D7B9690, qword_227670B50);
  return v35 & 1;
}

BOOL sub_2273710D4(uint64_t a1, uint64_t a2, double (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v8 = a3();
  v9 = a3();
  if (v8 != v9)
  {
    return v8 < v9;
  }

  v10 = a4();
  if (v10 == a4())
  {
    v11 = a5();
    v13 = v12;
    if (v11 == a5() && v13 == v14)
    {

      return 0;
    }

    else
    {
      v17 = sub_22766D190();

      return v17 & 1;
    }
  }

  else
  {
    v16 = a4();
    return a4() < v16;
  }
}

uint64_t sub_22737121C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2276645D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276642C0();
  v7 = sub_2276645C0();
  v9 = v8;
  v10 = *(v4 + 8);
  v10(v6, v3);
  v23[1] = a2;
  sub_2276642C0();
  v11 = sub_2276645C0();
  v13 = v12;
  v10(v6, v3);
  v14 = v7 == v11 && v9 == v13;
  if (!v14 && (sub_22766D190() & 1) == 0)
  {
    goto LABEL_11;
  }

  v15 = sub_2276642B0();
  if (v15 != sub_2276642B0())
  {
    v21 = sub_2276642B0();
    v20 = sub_2276642B0() < v21;
    return v20 & 1;
  }

  v16 = sub_227664230();
  v18 = v17;
  if (v16 != sub_227664230() || v18 != v19)
  {
LABEL_11:
    v20 = sub_22766D190();

    return v20 & 1;
  }

  v20 = 0;
  return v20 & 1;
}

unint64_t sub_22737145C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v6 = a3[3];
  v7 = a3[5];

  v8 = sub_2274E5858(a1, v6);
  v10 = v9;

  if (!v3)
  {
    swift_beginAccess();
    v11 = a3[3];

    v12 = sub_2274E5858(a2, v11);
    v14 = v13;

    if (v10)
    {
      if (!v14)
      {

        LOBYTE(v7) = 1;
        return v7 & 1;
      }

      if ((v8 != v12 || v10 != v14) && (sub_22766D190() & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (v14)
    {
LABEL_15:

      LOBYTE(v7) = 0;
      return v7 & 1;
    }

    v16 = sub_227666B30();
    if (v16 != sub_227666B30())
    {
      v7 = sub_227666B30();
      LOBYTE(v7) = sub_227666B30() < v7;
      return v7 & 1;
    }

    v17 = sub_227666A50();
    v19 = v18;
    if (v17 == sub_227666A50() && v19 == v20)
    {

      goto LABEL_15;
    }

LABEL_18:
    LOBYTE(v7) = sub_22766D190();
  }

  return v7 & 1;
}

unint64_t sub_227371710(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v7 = a3[4];
  v6 = a3[5];

  v8 = sub_2274E5C0C(a1, v7);
  v10 = v9;

  if (!v3)
  {
    swift_beginAccess();
    v11 = a3[4];

    v12 = sub_2274E5C0C(a2, v11);
    v14 = v13;

    if (v10)
    {
      if (!v14)
      {

        LOBYTE(v6) = 1;
        return v6 & 1;
      }

      if ((v8 != v12 || v10 != v14) && (sub_22766D190() & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (v14)
    {
LABEL_15:

      LOBYTE(v6) = 0;
      return v6 & 1;
    }

    v16 = sub_227666B30();
    if (v16 != sub_227666B30())
    {
      v6 = sub_227666B30();
      LOBYTE(v6) = sub_227666B30() < v6;
      return v6 & 1;
    }

    v17 = sub_227666A50();
    v19 = v18;
    if (v17 == sub_227666A50() && v19 == v20)
    {

      goto LABEL_15;
    }

LABEL_18:
    LOBYTE(v6) = sub_22766D190();
  }

  return v6 & 1;
}

unint64_t sub_2273719C4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v6 = a3[2];
  v7 = a3[5];

  v8 = sub_2274E5C68(a1, v6);
  v10 = v9;

  if (!v3)
  {
    swift_beginAccess();
    v11 = a3[2];

    v12 = sub_2274E5C68(a2, v11);
    v14 = v13;

    if (v10)
    {
      if (!v14)
      {

        LOBYTE(v7) = 1;
        return v7 & 1;
      }

      if ((v8 != v12 || v10 != v14) && (sub_22766D190() & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (v14)
    {
LABEL_15:

      LOBYTE(v7) = 0;
      return v7 & 1;
    }

    v16 = sub_227666B30();
    if (v16 != sub_227666B30())
    {
      v7 = sub_227666B30();
      LOBYTE(v7) = sub_227666B30() < v7;
      return v7 & 1;
    }

    v17 = sub_227666A50();
    v19 = v18;
    if (v17 == sub_227666A50() && v19 == v20)
    {

      goto LABEL_15;
    }

LABEL_18:
    LOBYTE(v7) = sub_22766D190();
  }

  return v7 & 1;
}

uint64_t sub_227371C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(double), uint64_t (*a6)(uint64_t))
{
  v37[3] = a2;
  v9 = (a4)(0, a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v37 - v15;
  v37[0] = a1;
  v17 = a5(v14);
  if (*(v17 + 16))
  {
    (*(v10 + 16))(v16, v17 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);

    v19 = a6(v18);
    v21 = v20;
    v22 = (*(v10 + 8))(v16, v9);
  }

  else
  {

    v19 = 0;
    v21 = 0;
  }

  v23 = (a5)(v22);
  if (*(v23 + 16))
  {
    (*(v10 + 16))(v12, v23 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);

    v25 = a6(v24);
    v27 = v26;
    (*(v10 + 8))(v12, v9);
    if (!v21)
    {
      if (v27)
      {
LABEL_20:

        v29 = 0;
        return v29 & 1;
      }

      goto LABEL_16;
    }

    if (v27)
    {
      v28 = v19 == v25 && v21 == v27;
      if (!v28 && (sub_22766D190() & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_16:
      v30 = sub_2276642B0();
      if (v30 != sub_2276642B0())
      {
        v35 = sub_2276642B0();
        v29 = sub_2276642B0() < v35;
        return v29 & 1;
      }

      v31 = sub_227664230();
      v33 = v32;
      if (v31 == sub_227664230() && v33 == v34)
      {

        goto LABEL_20;
      }

LABEL_22:
      v29 = sub_22766D190();

      return v29 & 1;
    }
  }

  else
  {

    if (!v21)
    {
      goto LABEL_16;
    }
  }

  v29 = 1;
  return v29 & 1;
}

unint64_t sub_227371FAC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v6 = a3[5];

  v7 = sub_2274E5CC4(a1, v6);
  v9 = v8;

  if (!v3)
  {
    swift_beginAccess();
    v10 = a3[5];

    v11 = sub_2274E5CC4(a2, v10);
    v13 = v12;

    if (v9)
    {
      if (!v13)
      {

        LOBYTE(v6) = 1;
        return v6 & 1;
      }

      if ((v7 != v11 || v9 != v13) && (sub_22766D190() & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (v13)
    {
LABEL_15:

      LOBYTE(v6) = 0;
      return v6 & 1;
    }

    v15 = sub_227666B30();
    if (v15 != sub_227666B30())
    {
      v6 = sub_227666B30();
      LOBYTE(v6) = sub_227666B30() < v6;
      return v6 & 1;
    }

    v16 = sub_227666A50();
    v18 = v17;
    if (v16 == sub_227666A50() && v18 == v19)
    {

      goto LABEL_15;
    }

LABEL_18:
    LOBYTE(v6) = sub_22766D190();
  }

  return v6 & 1;
}

uint64_t sub_227372260(uint64_t a1)
{
  v47 = sub_2276650A0();
  v2 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v42 = &v40 - v5;
  MEMORY[0x28223BE20](v6);
  v41 = &v40 - v7;
  v8 = *(a1 + 16);
  v52 = MEMORY[0x277D84F90];
  sub_226F1EF90();
  v9 = a1 + 56;
  v10 = v52;
  v11 = -1;
  v12 = -1 << *(a1 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(a1 + 56);
  v14 = (63 - v12) >> 6;
  v48 = a1;
  v49 = v2;
  v45 = v8;
  if (v8)
  {
    v43 = v2 + 8;
    v44 = v2 + 16;

    v15 = 0;
    v16 = 0;
    while (v13)
    {
      v17 = v10;
LABEL_11:
      v19 = v49;
      v20 = *(a1 + 48) + *(v49 + 72) * (__clz(__rbit64(v13)) | (v16 << 6));
      v21 = v46;
      v22 = v47;
      (*(v49 + 16))(v46, v20, v47);
      v23 = sub_227665060();
      v50 = v24;
      v51 = v23;
      (*(v19 + 8))(v21, v22);
      v10 = v17;
      v52 = v17;
      v25 = *(v17 + 16);
      if (v25 >= *(v17 + 24) >> 1)
      {
        sub_226F1EF90();
        v10 = v52;
      }

      ++v15;
      v13 &= v13 - 1;
      *(v10 + 16) = v25 + 1;
      v26 = v10 + 16 * v25;
      v27 = v50;
      *(v26 + 32) = v51;
      *(v26 + 40) = v27;
      a1 = v48;
      if (v15 == v45)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v14)
      {
        goto LABEL_29;
      }

      v13 = *(v9 + 8 * v18);
      ++v16;
      if (v13)
      {
        v17 = v10;
        v16 = v18;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v16 = 0;
LABEL_16:
    v28 = v49;
    v50 = v49 + 16;
    v45 = v49 + 8;
    v46 = (v49 + 32);
    if (!v13)
    {
      goto LABEL_18;
    }

    do
    {
      v51 = v10;
LABEL_22:
      v30 = *(a1 + 48) + *(v28 + 72) * (__clz(__rbit64(v13)) | (v16 << 6));
      v31 = v42;
      v32 = v47;
      (*(v28 + 16))(v42, v30, v47);
      v33 = v41;
      (*(v28 + 32))(v41, v31, v32);
      v34 = sub_227665060();
      v36 = v35;
      (*(v28 + 8))(v33, v32);
      v10 = v51;
      v52 = v51;
      v37 = *(v51 + 16);
      if (v37 >= *(v51 + 24) >> 1)
      {
        sub_226F1EF90();
        v10 = v52;
      }

      v13 &= v13 - 1;
      *(v10 + 16) = v37 + 1;
      v38 = v10 + 16 * v37;
      *(v38 + 32) = v34;
      *(v38 + 40) = v36;
      a1 = v48;
      v28 = v49;
    }

    while (v13);
LABEL_18:
    while (1)
    {
      v29 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v29 >= v14)
      {

        return v10;
      }

      v13 = *(v9 + 8 * v29);
      ++v16;
      if (v13)
      {
        v51 = v10;
        v16 = v29;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
LABEL_29:

  __break(1u);
  return result;
}

uint64_t sub_227372644(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC490, &qword_22767DB28);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = sub_227284754(a1);
  if (!v2)
  {
    v26 = v5;
    v27 = 0;
    v12 = v11;
    v25 = *(v1 + 16);
    sub_2272764F8(v25);
    if (v13)
    {
      v14 = sub_22766C2B0();
    }

    else
    {
      v14 = 0;
    }

    [v12 setRelationshipKeyPathsForPrefetching_];

    v15 = v27;
    v16 = sub_227284754(a1);
    if (v15)
    {
    }

    else
    {
      v17 = v16;
      (*(v26 + 104))(v7, *MEMORY[0x277D4F000], v4);
      v29 = 1;
      v18 = v25;
      sub_227669760();
      *&v10[*(v8 + 28)] = v17;
      *&v10[*(v8 + 32)] = v18;
      v19 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
      v20 = sub_227669730();
      if (v28 == 1)
      {
        sub_2272681EC(MEMORY[0x277D84F90], sub_22711E2EC, 0);
        v1 = v21;
      }

      else
      {
        v22 = MEMORY[0x22AA99A00](v20);
        v1 = sub_22725FE40(v10, MEMORY[0x277D84F90], sub_22711E2EC, 0);
        objc_autoreleasePoolPop(v22);
      }

      sub_226E97D1C(v10, &qword_27D7BC490, &qword_22767DB28);
    }
  }

  return v1;
}

uint64_t sub_227372974()
{
  v0 = sub_227669A90();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF08, &qword_227682248);
  __swift_allocate_value_buffer(v4, qword_28139B0A0);
  __swift_project_value_buffer(v4, qword_28139B0A0);
  (*(v1 + 104))(v3, *MEMORY[0x277D4EE90], v0);
  v6 = 0;
  v7 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C38, &unk_227682250);
  sub_22738F79C(&qword_281398BA8, MEMORY[0x277D4FA18], MEMORY[0x277D4FA50]);
  sub_22738F79C(&qword_281398BA0, MEMORY[0x277D83BA8], MEMORY[0x277D84F50]);
  return sub_227669760();
}

uint64_t sub_227372B10(uint64_t *a1, uint64_t a2)
{
  v44 = a2;
  v3 = sub_22766A1F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2276650A0();
  v7 = *(v6 - 8);
  v48 = v6;
  v49 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_22766B390();
  v10 = *(v47 - 1);
  MEMORY[0x28223BE20](v47);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[2];
  sub_22766A730();
  v16 = sub_22766B380();
  v17 = sub_22766C8B0();
  v18 = os_log_type_enabled(v16, v17);
  v45 = v3;
  if (v18)
  {
    v19 = v4;
    v20 = v13;
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_226E8E000, v16, v17, "[CatalogSystem] Received SyncablesUpdated<CatalogTipJournal>", v21, 2u);
    v22 = v21;
    v13 = v20;
    v4 = v19;
    v3 = v45;
    MEMORY[0x22AA9A450](v22, -1, -1);
  }

  (*(v10 + 8))(v12, v47);
  v51 = v13;
  v52 = v14;
  v53 = v15;
  v23 = MEMORY[0x277D84F90];
  v50[0] = MEMORY[0x277D84F90];
  swift_bridgeObjectRetain_n();

  sub_2274616DC(v13);

  sub_2274616DC(v24);

  sub_2274616DC(v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEB70, &qword_227682598);
  swift_arrayDestroy();
  v26 = v50[0];
  v27 = *(v50[0] + 16);
  if (v27)
  {
    v42 = v4;
    v50[0] = v23;
    sub_226F1EF90();
    v28 = v50[0];
    v29 = *(v49 + 16);
    v30 = *(v49 + 80);
    v41 = v26;
    v31 = v26 + ((v30 + 32) & ~v30);
    v46 = *(v49 + 72);
    v47 = v29;
    v49 += 16;
    v32 = (v49 - 8);
    do
    {
      v33 = v48;
      v47(v9, v31, v48);
      v34 = sub_227665050();
      v36 = v35;
      (*v32)(v9, v33);
      v50[0] = v28;
      v37 = *(v28 + 16);
      if (v37 >= *(v28 + 24) >> 1)
      {
        sub_226F1EF90();
        v28 = v50[0];
      }

      *(v28 + 16) = v37 + 1;
      v38 = v28 + 16 * v37;
      *(v38 + 32) = v34;
      *(v38 + 40) = v36;
      v31 += v46;
      --v27;
    }

    while (v27);

    v3 = v45;
    v4 = v42;
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
  }

  swift_unknownObjectRetain();

  swift_getObjectType();
  sub_226F3E6A8(v28);

  v39 = v43;
  sub_22766A1D0();
  sub_2276699D0();
  swift_unknownObjectRelease();
  return (*(v4 + 8))(v39, v3);
}

uint64_t sub_227372FBC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v7, v4);
    v10 = sub_22766C4B0();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    sub_227389594(0, 0, v3, &unk_227682590, v11);
  }

  return result;
}

uint64_t sub_2273731BC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_227373214();
  }

  return result;
}

uint64_t sub_227373214()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA410, &qword_227678AB0);
  v24 = *(v0 - 8);
  v25 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v22 - v1;
  v3 = sub_22766A8A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  sub_22766A730();
  sub_22766B370();
  v23 = *(v8 + 8);
  v23(v13, v7);
  v14 = sub_2276693C0();
  (*(v4 + 104))(v6, *MEMORY[0x277D4F980], v3);
  LOBYTE(v13) = sub_226EC9A38(v6, v14);

  (*(v4 + 8))(v6, v3);
  if (v13)
  {
    sub_227385880(&unk_283A94430, 1, v2);
    v15 = v25;
    v16 = sub_227669290();
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    v16(sub_226E937DC, v17);

    return (*(v24 + 8))(v2, v15);
  }

  else
  {
    sub_22766A730();
    v19 = sub_22766B380();
    v20 = sub_22766C8B0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_226E8E000, v19, v20, "Current platform does not support background workout metadata refreshing", v21, 2u);
      MEMORY[0x22AA9A450](v21, -1, -1);
    }

    return (v23)(v10, v7);
  }
}

uint64_t sub_2273735E4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_22766A730();
    sub_22766B370();
    (*(v5 + 8))(v7, v4);
    v10 = sub_22766C4B0();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    sub_227389594(0, 0, v3, &unk_227682580, v11);
  }

  return result;
}

uint64_t sub_2273737E4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - v3;
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22766A730();
    sub_22766B370();
    (*(v6 + 8))(v8, v5);
    sub_227375CDC(v4);
    v10 = sub_227669290();
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    v10(sub_226E9F7B0, v11);

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_227373A28(uint64_t a1, uint64_t a2)
{
  v3 = sub_227669910();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v11 = sub_22766B380();
  v12 = sub_22766C8B0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v16[1] = a1;
    v14 = v13;
    *v13 = 0;
    _os_log_impl(&dword_226E8E000, v11, v12, "[CatalogSystem] Received CatalogDeleted", v13, 2u);
    MEMORY[0x22AA9A450](v14, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  swift_getObjectType();
  (*(v4 + 104))(v6, *MEMORY[0x277D4E030], v3);
  sub_227669660();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_227373C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_227669910();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_22766B390();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227373D80, 0, 0);
}

uint64_t sub_227373D80(uint64_t a1)
{
  sub_22766A730();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "[CatalogSystem] Received CatalogUpdated", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v6 = *(v1 + 104);
  v5 = *(v1 + 112);
  v7 = *(v1 + 96);

  (*(v6 + 8))(v5, v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v1 + 120) = Strong;
  if (Strong)
  {
    v9 = sub_2276698C0();
    v10 = swift_task_alloc();
    *(v1 + 128) = v10;
    *v10 = v1;
    v10[1] = sub_227373FE4;

    return sub_227374218(v9);
  }

  else
  {
    v13 = *(v1 + 80);
    v12 = *(v1 + 88);
    v14 = *(v1 + 72);
    swift_getObjectType();
    (*(v13 + 104))(v12, *MEMORY[0x277D4E038], v14);
    *(v1 + 136) = sub_2276698C0();
    sub_227669650();
    (*(v13 + 8))(v12, v14);

    v15 = *(v1 + 8);

    return v15();
  }
}

uint64_t sub_227373FE4()
{

  return MEMORY[0x2822009F8](sub_2273740FC, 0, 0);
}

uint64_t sub_2273740FC()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  swift_getObjectType();
  (*(v2 + 104))(v1, *MEMORY[0x277D4E038], v3);
  *(v0 + 136) = sub_2276698C0();
  sub_227669650();
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_227374218(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 120) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA410, &qword_227678AB0);
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF50, &unk_227682568);
  *(v2 + 48) = swift_task_alloc();
  v4 = sub_22766B390();
  *(v2 + 56) = v4;
  *(v2 + 64) = *(v4 - 8);
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227374394, 0, 0);
}

uint64_t sub_227374394(uint64_t a1)
{
  v2 = v1[11];
  v3 = v1[7];
  v4 = v1[8];
  sub_22766A730();
  sub_22766B370();
  v5 = *(v4 + 8);
  v5(v2, v3);
  sub_227666340();
  v6 = sub_227666360();
  v8 = v7;
  if (v6 == sub_227666360() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_22766D190();

    if ((v11 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if ((sub_227389030() & 1) == 0)
  {
LABEL_14:
    sub_22766A730();
    v22 = sub_22766B380();
    v23 = sub_22766C8B0();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v1[9];
    v26 = v1[7];
    if (v24)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_226E8E000, v22, v23, "[CatalogSystem] skipping workout metadata refresh after catalog update", v27, 2u);
      MEMORY[0x22AA9A450](v27, -1, -1);
    }

    v5(v25, v26);

    v28 = v1[1];

    return v28();
  }

  sub_22766A730();
  v12 = sub_22766B380();
  v13 = sub_22766C8B0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_226E8E000, v12, v13, "[CatalogSystem] refreshing workout metadata after catalog update", v14, 2u);
    MEMORY[0x22AA9A450](v14, -1, -1);
  }

  v15 = v1[10];
  v16 = v1[7];
  v17 = v1[5];

  v5(v15, v16);
  sub_227385880(&unk_283A94458, 0, v17);
  v18 = swift_task_alloc();
  v1[12] = v18;
  *(v18 + 16) = "SeymourServices/CatalogSystem.swift";
  *(v18 + 24) = 35;
  *(v18 + 32) = 2;
  *(v18 + 40) = 939;
  *(v18 + 48) = v17;
  v19 = swift_task_alloc();
  v1[13] = v19;
  v20 = sub_227668CE0();
  v1[14] = v20;
  *v19 = v1;
  v19[1] = sub_227374744;
  v21 = v1[6];

  return MEMORY[0x2822008A0](v21, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_227391BDC, v18, v20);
}

uint64_t sub_227374744()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_227374994;
  }

  else
  {
    v5 = v2[4];
    v4 = v2[5];
    v6 = v2[3];

    (*(v5 + 8))(v4, v6);
    v3 = sub_2273748B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2273748B0()
{
  v1 = v0[6];
  (*(*(v0[14] - 8) + 56))(v1, 0, 1);
  sub_226E97D1C(v1, &qword_27D7BCF50, &unk_227682568);

  v2 = v0[1];

  return v2();
}

uint64_t sub_227374994()
{
  (*(v0[4] + 8))(v0[5], v0[3]);
  v1 = v0[6];
  (*(*(v0[14] - 8) + 56))(v1, 1, 1);
  sub_226E97D1C(v1, &qword_27D7BCF50, &unk_227682568);

  v2 = v0[1];

  return v2();
}

uint64_t sub_227374A90(uint64_t a1, uint64_t a2)
{
  v2 = sub_227669910();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v3 + 104))(v5, *MEMORY[0x277D4E098], v2);
  sub_227669660();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_227374B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_227669910();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v4 + 104))(v6, *MEMORY[0x277D4E100], v3);
  v8[1] = sub_22766A1E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  sub_226FA712C();
  sub_226FA71B0();
  sub_227669650();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_227374D0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_227664F60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_227669980();
    sub_227374E18(v5);

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_227374E18(uint64_t a1)
{
  v2 = v1;
  v54 = a1;
  v3 = sub_227664F60();
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = v4;
  v55 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD7B0, &unk_227682270);
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  v58 = v6;
  v59 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v60 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA410, &qword_227678AB0);
  v64 = *(v9 - 8);
  v65 = v9;
  MEMORY[0x28223BE20](v9);
  v61 = &v53 - v10;
  v11 = sub_22766A8A0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22766B390();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v53 - v20;
  sub_22766A730();
  sub_22766B370();
  v22 = *(v16 + 8);
  v22(v21, v15);
  v23 = v2;
  v24 = sub_2276693C0();
  (*(v12 + 104))(v14, *MEMORY[0x277D4F980], v11);
  LOBYTE(v2) = sub_226EC9A38(v14, v24);

  (*(v12 + 8))(v14, v11);
  if (v2)
  {
    v25 = v23;
    v27 = *(v23 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
    v26 = *(v23 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
    __swift_project_boxed_opaque_existential_0((v23 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v27);
    v29 = v55;
    v28 = v56;
    v30 = v57;
    (*(v56 + 16))(v55, v54, v57);
    v31 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v32 = (v53 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    (*(v28 + 32))(v33 + v31, v29, v30);
    *(v33 + v32) = v25;
    v34 = sub_2276690A0();

    v35 = v60;
    sub_226ECF5D8(sub_227391A20, v33, v27, v34, v26, v60);

    v36 = *__swift_project_boxed_opaque_existential_0((v25 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(v25 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
    v67[3] = type metadata accessor for CatalogScriptClient();
    v67[4] = &off_283AC6368;
    v67[0] = v36;
    sub_226E91B50(v67, v66);
    v37 = swift_allocObject();
    sub_226E92AB8(v66, v37 + 16);

    __swift_destroy_boxed_opaque_existential_0(v67);
    v39 = v62;
    v38 = v63;
    v40 = v59;
    (*(v62 + 16))(v59, v35, v63);
    v41 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v42 = (v58 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    (*(v39 + 32))(v43 + v41, v40, v38);
    v44 = (v43 + v42);
    *v44 = sub_227391D74;
    v44[1] = v37;
    sub_227668CE0();
    v45 = v61;
    sub_227669270();
    (*(v39 + 8))(v35, v38);
    v46 = v65;
    v47 = sub_227669290();
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    *(v48 + 24) = 0;
    v47(sub_226E93814, v48);

    return (*(v64 + 8))(v45, v46);
  }

  else
  {
    sub_22766A730();
    v50 = sub_22766B380();
    v51 = sub_22766C8B0();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_226E8E000, v50, v51, "Current platform does not support background workout metadata refreshing", v52, 2u);
      MEMORY[0x22AA9A450](v52, -1, -1);
    }

    return (v22)(v18, v15);
  }
}

char *sub_22737553C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v1 = OBJC_IVAR____TtC15SeymourServices13CatalogSystem_calendar;
  v2 = sub_227662940();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  __swift_destroy_boxed_opaque_existential_0(&v0[OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogDataStore]);
  __swift_destroy_boxed_opaque_existential_0(&v0[OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder]);
  __swift_destroy_boxed_opaque_existential_0(&v0[OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient]);
  __swift_destroy_boxed_opaque_existential_0(&v0[OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogSyncCoordinator]);
  __swift_destroy_boxed_opaque_existential_0(&v0[OBJC_IVAR____TtC15SeymourServices13CatalogSystem_configurationDataStore]);
  __swift_destroy_boxed_opaque_existential_0(&v0[OBJC_IVAR____TtC15SeymourServices13CatalogSystem_contentRestrictionObserver]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(&v0[OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore]);
  __swift_destroy_boxed_opaque_existential_0(&v0[OBJC_IVAR____TtC15SeymourServices13CatalogSystem_serviceSubscriptionProviderBroker]);
  __swift_destroy_boxed_opaque_existential_0(&v0[OBJC_IVAR____TtC15SeymourServices13CatalogSystem_storefrontObserver]);
  __swift_destroy_boxed_opaque_existential_0(&v0[OBJC_IVAR____TtC15SeymourServices13CatalogSystem_syncCoordinator]);

  __swift_destroy_boxed_opaque_existential_0(&v0[OBJC_IVAR____TtC15SeymourServices13CatalogSystem_transactionCoordinator]);
  return v0;
}

uint64_t sub_22737568C()
{
  sub_22737553C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CatalogSystem(uint64_t a1)
{
  result = qword_2813A4548;
  if (!qword_2813A4548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227375738(uint64_t a1)
{
  result = sub_227662940();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_227375878@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v11 + 8))(v13, v10);
  v14 = *(v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
  v15 = *(v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
  __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v14);

  sub_226ECF5D8(sub_227391928, v2, v14, MEMORY[0x277D84F78] + 8, v15, v9);

  v16 = swift_allocObject();
  *(v16 + 16) = sub_227391944;
  *(v16 + 24) = v2;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_226EB4A28;
  *(v17 + 24) = v16;
  (*(v4 + 16))(v6, v9, v3);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  (*(v4 + 32))(v19 + v18, v6, v3);
  v20 = (v19 + ((v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_226F32FEC;
  v20[1] = v17;

  sub_227669270();
  return (*(v4 + 8))(v9, v3);
}

char *sub_227375BC0(void *a1, uint64_t a2)
{
  result = sub_226F88F0C(a1);
  if (!v2)
  {
    v6 = result;
    sub_226F90470(a1);
    __swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_syncCoordinator), *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_syncCoordinator + 24));
    v7 = sub_227372260(v6);

    sub_2272D7EE4(1, v7, a1);
  }

  return result;
}

uint64_t sub_227375CDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v11 + 8))(v13, v10);
  v14 = *(v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 24);
  v15 = *(v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore + 32);
  __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_persistenceStore), v14);

  sub_226ECF5D8(sub_2273918F4, v2, v14, MEMORY[0x277D84F78] + 8, v15, v9);

  v16 = swift_allocObject();
  *(v16 + 16) = sub_22739190C;
  *(v16 + 24) = v2;
  (*(v4 + 16))(v6, v9, v3);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = (v5 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v4 + 32))(v19 + v17, v6, v3);
  v20 = (v19 + v18);
  *v20 = sub_226F32FEC;
  v20[1] = v16;

  sub_227669270();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_227375FFC(uint64_t a1, uint64_t a2)
{
  v2 = sub_2276698B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_2276698A0();
  sub_2276699D0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_227376128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v42 = a1;
  v49 = a3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v45);
  v43 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD900, &unk_22767E580);
  v11 = *(v48 - 8);
  v47 = *(v11 + 64);
  MEMORY[0x28223BE20](v48);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v46 = &v40 - v15;
  v16 = sub_22766B390();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v17 + 8))(v19, v16);
  v20 = __swift_project_boxed_opaque_existential_0((v4 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(v4 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  v41 = *__swift_project_boxed_opaque_existential_0((*v20 + 16), *(*v20 + 40));
  v21 = *(v41 + 16);
  v22 = swift_allocObject();
  *(v22 + 16) = v42;
  *(v22 + 24) = a2;

  v40 = v10;
  sub_227669280();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = 5;
  v24 = v43;
  v25 = v45;
  (*(v6 + 16))(v43, v10, v45);
  v26 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v27 = (v7 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  (*(v6 + 32))(v28 + v26, v24, v25);
  v29 = (v28 + v27);
  *v29 = sub_227391510;
  v29[1] = v23;
  sub_227669080();
  v30 = v21;
  sub_227669270();
  (*(v6 + 8))(v40, v25);
  v31 = v46;
  sub_2272AAF14(v13, v46);
  v32 = *(v11 + 8);
  v33 = v48;
  v32(v13, v48);
  (*(v11 + 16))(v13, v31, v33);
  v34 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v35 = (v47 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v11 + 32))(v36 + v34, v13, v33);
  v37 = (v36 + v35);
  v38 = v44;
  *v37 = sub_227391588;
  v37[1] = v38;
  sub_227668930();

  sub_227669270();
  return (v32)(v31, v33);
}

uint64_t sub_227376638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a1;
  v32 = a3;
  v30 = sub_227669080();
  v4 = *(v30 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD7D0, &unk_227682450);
  v6 = *(v31 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v31);
  v29 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = sub_227669060();
  v12 = __swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder), *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder + 24));
  sub_22745016C(v11);
  v14 = sub_2273D1B98(v13);

  v15 = *v12;
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = "SeymourServices/CatalogLockupBuilderProtocol.swift";
  *(v17 + 24) = 50;
  *(v17 + 32) = 2;
  *(v17 + 40) = 32;
  *(v17 + 48) = &unk_227682540;
  *(v17 + 56) = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC288, &qword_2276823D0);
  sub_227669270();
  v18 = v30;
  (*(v4 + 16))(&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v30);
  v19 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v11;
  (*(v4 + 32))(v20 + v19, &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  v21 = v29;
  v22 = v31;
  (*(v6 + 16))(v29, v10, v31);
  v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = swift_allocObject();
  (*(v6 + 32))(v24 + v23, v21, v22);
  v25 = (v24 + ((v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_2273916B0;
  v25[1] = v20;
  sub_227668930();
  sub_227669270();
  return (*(v6 + 8))(v10, v22);
}

uint64_t sub_2273769D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[1] = a3;
  v5 = sub_227667790();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF48, &unk_227682548);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_227668930();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v17 - v12;
  sub_22732DBF8(*a1, a2);
  sub_227669070();
  sub_227669050();
  sub_227668920();
  (*(v8 + 16))(v10, v13, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v10, v7);
  sub_227669280();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_227376C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v21[0] = a2;
  v21[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8D0, &unk_22767E570);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v21 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  sub_227376ED0(a1, v21[0], v12);
  (*(v7 + 16))(v9, v12, v6);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v17, v9, v6);
  v19 = (v18 + ((v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = sub_2273910F4;
  v19[1] = v4;
  sub_2276660B0();

  sub_227669270();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_227376ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8D0, &unk_22767E570);
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x28223BE20](v11);
  v32 = &v30 - v12;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = __swift_project_boxed_opaque_existential_0((v31 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(v31 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  v18 = *(*__swift_project_boxed_opaque_existential_0((*v17 + 16), *(*v17 + 40)) + 16);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;

  v20 = v10;
  sub_227669280();
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = 9;
  v22 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v22, v20, v5);
  v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = (v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v6 + 32))(v25 + v23, v22, v5);
  v26 = (v25 + v24);
  *v26 = sub_22739125C;
  v26[1] = v21;
  sub_2276645D0();
  v27 = v18;
  v28 = v32;
  sub_227669270();
  (*(v6 + 8))(v20, v5);
  sub_2272AB448(v28, v35);
  return (*(v33 + 8))(v28, v34);
}

uint64_t sub_2273772C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[1] = a3;
  v5 = sub_2276645D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD8F0, &qword_227682520);
  v8 = *(v23[0] - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v23[0]);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  v14 = __swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  __swift_project_boxed_opaque_existential_0((*v14 + 16), *(*v14 + 40));
  sub_2272B1550(1, a1, v13);
  (*(v6 + 16))(v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + v15, v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_227391124;
  *(v17 + 24) = v16;
  v18 = v23[0];
  (*(v8 + 16))(v10, v13, v23[0]);
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = swift_allocObject();
  (*(v8 + 32))(v20 + v19, v10, v18);
  v21 = (v20 + ((v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_22739122C;
  v21[1] = v17;
  sub_2276660B0();
  sub_227669270();
  return (*(v8 + 8))(v13, v18);
}

uint64_t sub_2273775C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v21[0] = a2;
  v21[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD8A0, &unk_22767E560);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v21 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  sub_227377870(a1, v21[0], v12);
  (*(v7 + 16))(v9, v12, v6);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v17, v9, v6);
  v19 = (v18 + ((v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = sub_227391014;
  v19[1] = v4;
  sub_227665CF0();

  sub_227669270();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_227377870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD8A0, &unk_22767E560);
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x28223BE20](v11);
  v32 = &v30 - v12;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = __swift_project_boxed_opaque_existential_0((v31 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(v31 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  v18 = *(*__swift_project_boxed_opaque_existential_0((*v17 + 16), *(*v17 + 40)) + 16);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;

  v20 = v10;
  sub_227669280();
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = 8;
  v22 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v22, v20, v5);
  v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = (v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v6 + 32))(v25 + v23, v22, v5);
  v26 = (v25 + v24);
  *v26 = sub_2273910B4;
  v26[1] = v21;
  sub_227664220();
  v27 = v18;
  v28 = v32;
  sub_227669270();
  (*(v6 + 8))(v20, v5);
  sub_2272AB97C(v28, v35);
  return (*(v33 + 8))(v28, v34);
}

uint64_t sub_227377C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[1] = a3;
  v5 = sub_227664220();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8C0, &unk_227682510);
  v8 = *(v23[0] - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v23[0]);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  v14 = __swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  __swift_project_boxed_opaque_existential_0((*v14 + 16), *(*v14 + 40));
  sub_2272B190C(2, a1, v13);
  (*(v6 + 16))(v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + v15, v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_227391044;
  *(v17 + 24) = v16;
  v18 = v23[0];
  (*(v8 + 16))(v10, v13, v23[0]);
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = swift_allocObject();
  (*(v8 + 32))(v20 + v19, v10, v18);
  v21 = (v20 + ((v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_227391084;
  v21[1] = v17;
  sub_227665CF0();
  sub_227669270();
  return (*(v8 + 8))(v13, v18);
}

uint64_t sub_227377F64(uint64_t a1, uint64_t a2)
{
  v3 = sub_227664220();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227664EF0();
  MEMORY[0x28223BE20](v7 - 8);
  sub_2276684B0();
  sub_227668490();
  (*(v4 + 16))(v6, a2, v3);
  sub_2276684A0();
  sub_2276684C0();
  return sub_227665CE0();
}

uint64_t sub_2273780C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v31 = sub_227667B60();
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v31);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD440, &unk_227684B60);
  v6 = *(v32 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v32);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v12 + 8))(v14, v11);
  v15 = sub_227667B40();
  v16 = v30;
  sub_227378474(v15, v17, v10);

  v18 = v31;
  (*(v3 + 16))(v5, a1, v31);
  v19 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  (*(v3 + 32))(v20 + v19, v5, v18);
  v21 = v29;
  v22 = v32;
  (*(v6 + 16))(v29, v10, v32);
  v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = (v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v6 + 32))(v25 + v23, v21, v22);
  v26 = (v25 + v24);
  *v26 = sub_227390E20;
  v26[1] = v20;
  sub_227665D90();

  sub_227669270();
  return (*(v6 + 8))(v10, v22);
}

uint64_t sub_227378474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD440, &unk_227684B60);
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x28223BE20](v11);
  v32 = &v30 - v12;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = __swift_project_boxed_opaque_existential_0((v31 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(v31 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  v18 = *(*__swift_project_boxed_opaque_existential_0((*v17 + 16), *(*v17 + 40)) + 16);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;

  v20 = v10;
  sub_227669280();
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = 6;
  v22 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v22, v20, v5);
  v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = (v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v6 + 32))(v25 + v23, v22, v5);
  v26 = (v25 + v24);
  *v26 = sub_227390FD4;
  v26[1] = v21;
  sub_2276642E0();
  v27 = v18;
  v28 = v32;
  sub_227669270();
  (*(v6 + 8))(v20, v5);
  sub_2272ABEB0(v28, v35);
  return (*(v33 + 8))(v28, v34);
}

uint64_t sub_227378868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v21[0] = a2;
  v21[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6E0, &unk_227684E20);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v21 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  sub_227378B18(a1, v21[0], v12);
  (*(v7 + 16))(v9, v12, v6);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v17, v9, v6);
  v19 = (v18 + ((v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = sub_22739078C;
  v19[1] = v4;
  sub_227664160();

  sub_227669270();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_227378B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6E0, &unk_227684E20);
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x28223BE20](v11);
  v32 = &v30 - v12;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v14 + 8))(v16, v13);
  v17 = __swift_project_boxed_opaque_existential_0((v31 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(v31 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  v18 = *(*__swift_project_boxed_opaque_existential_0((*v17 + 16), *(*v17 + 40)) + 16);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;

  v20 = v10;
  sub_227669280();
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = 12;
  v22 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v22, v20, v5);
  v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = (v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v6 + 32))(v25 + v23, v22, v5);
  v26 = (v25 + v24);
  *v26 = sub_227390854;
  v26[1] = v21;
  sub_2276692D0();
  v27 = v18;
  v28 = v32;
  sub_227669270();
  (*(v6 + 8))(v20, v5);
  sub_2272AD8E4(v28, v35);
  return (*(v33 + 8))(v28, v34);
}

uint64_t sub_227378F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[1] = a3;
  v5 = sub_2276692D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6D8, &unk_22767E510);
  v8 = *(v23[0] - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v23[0]);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  v14 = __swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  __swift_project_boxed_opaque_existential_0((*v14 + 16), *(*v14 + 40));
  sub_2272B1CC8(4, a1, v13);
  (*(v6 + 16))(v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + v15, v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_2273907BC;
  *(v17 + 24) = v16;
  v18 = v23[0];
  (*(v8 + 16))(v10, v13, v23[0]);
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = swift_allocObject();
  (*(v8 + 32))(v20 + v19, v10, v18);
  v21 = (v20 + ((v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_227390824;
  v21[1] = v17;
  sub_227664160();
  sub_227669270();
  return (*(v8 + 8))(v13, v18);
}

uint64_t sub_22737920C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(double), uint64_t (*a5)(char *, char *))
{
  v17 = a5;
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  v11 = sub_227664EF0();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4(v12);
  (*(v8 + 16))(v10, a2, v7);
  return v17(v14, v10);
}

uint64_t sub_227379364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v93 = a1;
  v90 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v98 = *(v4 - 8);
  v99 = v4;
  v85 = *(v98 + 64);
  MEMORY[0x28223BE20](v4);
  v83 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v97 = &v70 - v7;
  v100 = sub_227662750();
  v89 = *(v100 - 8);
  v88 = *(v89 + 64);
  MEMORY[0x28223BE20](v100);
  v87 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v101 = &v70 - v10;
  v78 = sub_22766B360();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B340();
  MEMORY[0x28223BE20](v13 - 8);
  v76 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD7D0, &unk_227682450);
  v95 = *(v15 - 8);
  v96 = v15;
  v16 = v95[8];
  MEMORY[0x28223BE20](v15);
  v94 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v79 = &v70 - v18;
  MEMORY[0x28223BE20](v19);
  v91 = &v70 - v20;
  v21 = sub_2276654E0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v70 - v26;
  v86 = sub_227669890();
  v84 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v92 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A810();
  v29 = *(v22 + 16);
  v82 = v27;
  v29(v27, v93, v21);
  v30 = *__swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder), *(v3 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder + 24));
  v80 = v21;
  v29(v24, v27, v21);
  v81 = v22;
  v31 = (*(v22 + 80) + 24) & ~*(v22 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  (*(v22 + 32))(v32 + v31, v24, v21);
  v33 = swift_allocObject();
  *(v33 + 16) = "SeymourServices/CatalogLockupBuilderProtocol.swift";
  *(v33 + 24) = 50;
  *(v33 + 32) = 2;
  *(v33 + 40) = 28;
  *(v33 + 48) = &unk_227682530;
  *(v33 + 56) = v32;

  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC288, &qword_2276823D0);
  v34 = v91;
  sub_227669270();
  sub_2276697A0();
  swift_allocObject();
  v35 = sub_227669770();
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v77 + 8))(v12, v78);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v36 = sub_22766A8F0();
  v78 = v36;
  v102 = v35;
  v37 = sub_22766C060();
  v77 = v37;
  v39 = v38;
  sub_227662720();
  v40 = swift_allocObject();
  v75 = v35;
  *(v40 + 16) = v35;
  *(v40 + 24) = v36;
  *(v40 + 32) = v37;
  *(v40 + 40) = v39;
  v76 = v39;
  *(v40 + 48) = "CatalogSystem::fetchRemoteCatalogLockups";
  *(v40 + 56) = 40;
  *(v40 + 64) = 2;

  v41 = v97;
  sub_227669270();
  v42 = v95;
  v74 = v95[2];
  v43 = v94;
  v44 = v34;
  v45 = v96;
  v74(v94, v44, v96);
  v73 = *(v42 + 80);
  v70 = ((v73 + 16) & ~v73) + v16;
  v46 = (v73 + 16) & ~v73;
  v72 = v46;
  v47 = swift_allocObject();
  v71 = v42[4];
  v71(v47 + v46, v43, v45);
  v48 = v98;
  v49 = v99;
  v50 = v83;
  (*(v98 + 16))(v83, v41, v99);
  v51 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v52 = (v85 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  (*(v48 + 32))(v53 + v51, v50, v49);
  v54 = (v53 + v52);
  *v54 = sub_227391388;
  v54[1] = v47;
  v55 = v79;
  sub_227669270();
  v56 = v89;
  v57 = v87;
  v58 = v100;
  (*(v89 + 16))(v87, v101, v100);
  v59 = (*(v56 + 80) + 49) & ~*(v56 + 80);
  v60 = (v88 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v62 = v76;
  *(v61 + 16) = v77;
  *(v61 + 24) = v62;
  *(v61 + 32) = "CatalogSystem::fetchRemoteCatalogLockups";
  *(v61 + 40) = 40;
  *(v61 + 48) = 2;
  (*(v56 + 32))(v61 + v59, v57, v58);
  *(v61 + v60) = v78;
  *(v61 + ((v60 + 15) & 0xFFFFFFFFFFFFFFF8)) = v75;
  v63 = v94;
  v64 = v96;
  v74(v94, v55, v96);
  v65 = (v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  v71(v66 + v72, v63, v64);
  v67 = (v66 + v65);
  *v67 = sub_227391430;
  v67[1] = v61;

  sub_227669270();
  v68 = v95[1];
  v68(v55, v64);
  (*(v98 + 8))(v97, v99);
  (*(v56 + 8))(v101, v100);
  v68(v91, v64);
  (*(v81 + 8))(v82, v80);
  (*(v84 + 8))(v92, v86);
}

uint64_t sub_227379E14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA340, &unk_22767E480);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v11 + 8))(v13, v10);
  v14 = __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(v2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  __swift_project_boxed_opaque_existential_0((*v14 + 16), *(*v14 + 40));
  sub_2272858E0(11, 0, 0, v6);
  sub_2272A1748(v6, v9);
  v15 = *(v4 + 8);
  v15(v6, v3);
  (*(v4 + 16))(v6, v9, v3);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  (*(v4 + 32))(v17 + v16, v6, v3);
  v18 = (v17 + ((v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_227390E18;
  v18[1] = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC298, &qword_22767D518);
  sub_227669270();
  return (v15)(v9, v3);
}

uint64_t sub_22737A118@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD7D0, &unk_227682450);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v26 - v10;
  v12 = *a1;
  v13 = __swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder), *(a2 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogLockupBuilder + 24));
  sub_22745016C(v12);
  v15 = sub_2273D1B98(v14);

  v16 = *v13;
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  v18 = swift_allocObject();
  *(v18 + 16) = "SeymourServices/CatalogLockupBuilderProtocol.swift";
  *(v18 + 24) = 50;
  *(v18 + 32) = 2;
  *(v18 + 40) = 32;
  *(v18 + 48) = &unk_2276824F0;
  *(v18 + 56) = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC288, &qword_2276823D0);
  sub_227669270();
  v19 = swift_allocObject();
  *(v19 + 16) = v12;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_227391D98;
  *(v20 + 24) = v19;
  (*(v6 + 16))(v8, v11, v5);
  v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v22 = (v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v6 + 32))(v23 + v21, v8, v5);
  v24 = (v23 + v22);
  *v24 = sub_227391D54;
  v24[1] = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC298, &qword_22767D518);
  sub_227669270();
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_22737A418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v21[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD880, &unk_22767E540);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v21 - v10;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v13 + 8))(v15, v12);
  v16 = __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient), *(v3 + OBJC_IVAR____TtC15SeymourServices13CatalogSystem_catalogScriptClient + 24));
  __swift_project_boxed_opaque_existential_0((*v16 + 16), *(*v16 + 40));
  sub_227322234(15, a1, v11);
  (*(v6 + 16))(v8, v11, v5);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  (*(v6 + 32))(v18 + v17, v8, v5);
  v19 = (v18 + ((v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = sub_227390D00;
  v19[1] = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2A0, &qword_2276824E0);
  sub_227669270();
  return (*(v6 + 8))(v11, v5);
}