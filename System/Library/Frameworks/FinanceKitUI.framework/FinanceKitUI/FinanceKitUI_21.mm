uint64_t sub_23866ED80()
{
  v103 = v0;
  v102[2] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 240);

  sub_23875C180();
  v2 = v1;
  v3 = sub_23875C1B0();
  v4 = sub_23875EFE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 240);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2383F8000, v3, v4, "Failed to process remote changes with error: %@", v7, 0xCu);
    sub_238455DD4(v8);
    MEMORY[0x23EE64DF0](v8, -1, -1);
    MEMORY[0x23EE64DF0](v7, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 128) + 8))(*(v0 + 144), *(v0 + 120));
  v11 = [*(v0 + 80) persistentStoreCoordinator];
  if (v11 && (v12 = v11, v13 = sub_23875B860(), v14 = [v12 managedObjectIDForURIRepresentation_], v13, v12, v14))
  {
    v15 = *(v0 + 80);
    *(v0 + 32) = 0;
    v16 = [v15 existingObjectWithID:v14 error:v0 + 32];
    v17 = *(v0 + 32);
    if (v16)
    {
      v18 = v16;
      sub_238757DF0();
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        v20 = v19;
        v21 = v17;

        swift_getKeyPath(aP_17);
        swift_getKeyPath(aP_18);
        v22 = v18;
        sub_23875C2D0();

        v23 = *(v0 + 64);
        OrderNavigationModel.navigate(to:fulfillmentIdentifier:sourceApplication:)(v20, 0, 0, 0, 0);
      }

      else
      {
        sub_238759C20();
        v64 = swift_dynamicCastClass();
        v65 = v17;
        if (v64)
        {
          v66 = *(v0 + 192);
          v67 = *(v0 + 168);
          v68 = *(v0 + 176);
          sub_238759BF0();
          v69 = (*(v68 + 88))(v66, v67);
          if (v69 == *MEMORY[0x277CC7C50])
          {
            v70 = *(v0 + 192);
            v71 = *(v0 + 168);
            v72 = *(v0 + 176);

            (*(v72 + 96))(v70, v71);
            v73 = *v70;
            swift_getKeyPath(aP_17);
            swift_getKeyPath(aP_18);
            sub_23875C2D0();

            v74 = *(v0 + 56);
            OrderNavigationModel.navigate(to:fulfillmentIdentifier:sourceApplication:)(v73, 0, 0, 0, 0);
          }

          else
          {
            v82 = *(v0 + 168);
            v83 = *(v0 + 176);
            if (v69 != *MEMORY[0x277CC7C58])
            {
              v94 = *(v0 + 184);
              v102[0] = 0;
              v102[1] = 0xE000000000000000;
              sub_23875F470();
              *(v0 + 16) = 0;
              *(v0 + 24) = 0xE000000000000000;
              MEMORY[0x23EE63650](0xD00000000000001BLL, 0x80000002387896F0);
              sub_238759BF0();
              sub_23875F510();
              (*(v83 + 8))(v94, v82);
              return sub_23875F520();
            }

            v84 = *(v0 + 192);

            (*(v83 + 96))(v84, v82);
            v85 = *v84;
            swift_getKeyPath(aP_17);
            swift_getKeyPath(aP_18);
            sub_23875C2D0();

            v86 = [v85 trackedOrderIdentifier];
            v87 = sub_23875EA80();
            v89 = v88;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12BD0, &unk_238777400);
            v90 = *(type metadata accessor for OrderNavigationDestination(0) - 8);
            v91 = (*(v90 + 80) + 32) & ~*(v90 + 80);
            v92 = swift_allocObject();
            *(v92 + 16) = xmmword_2387632F0;
            v93 = (v92 + v91);
            *v93 = v87;
            v93[1] = v89;
            v93[2] = 0;
            v93[3] = 0;
            swift_storeEnumTagMultiPayload();
            swift_getKeyPath(a0_11);
            swift_getKeyPath(byte_23877BC88);
            *(v0 + 48) = v92;
            sub_23875C2E0();
          }
        }

        else
        {

          sub_23875C180();
          v75 = sub_23875C1B0();
          v76 = sub_23875EFE0();
          v77 = os_log_type_enabled(v75, v76);
          v78 = *(v0 + 160);
          v79 = *(v0 + 120);
          v80 = *(v0 + 128);
          if (v77)
          {
            v81 = swift_slowAlloc();
            *v81 = 0;
            _os_log_impl(&dword_2383F8000, v75, v76, "Unexpected object type", v81, 2u);
            MEMORY[0x23EE64DF0](v81, -1, -1);
          }

          else
          {
          }

          (*(v80 + 8))(v78, v79);
        }
      }
    }

    else
    {
      v45 = v17;

      v46 = sub_23875B730();

      swift_willThrow();
      sub_23875C180();
      v47 = v14;
      v48 = v46;
      v49 = sub_23875C1B0();
      v50 = sub_23875EFE0();

      v51 = os_log_type_enabled(v49, v50);
      v53 = *(v0 + 128);
      v52 = *(v0 + 136);
      v54 = *(v0 + 120);
      if (v51)
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v102[0] = v95;
        *v55 = 136315394;
        v101 = v52;
        v57 = [v47 debugDescription];
        v97 = v47;
        v99 = v54;
        v58 = sub_23875EA80();
        v60 = v59;

        v61 = sub_2384615AC(v58, v60, v102);

        *(v55 + 4) = v61;
        *(v55 + 12) = 2112;
        v62 = v46;
        v63 = _swift_stdlib_bridgeErrorToNSError();
        *(v55 + 14) = v63;
        *v56 = v63;
        _os_log_impl(&dword_2383F8000, v49, v50, "Failed to fetch order for %s with error: %@", v55, 0x16u);
        sub_238455DD4(v56);
        MEMORY[0x23EE64DF0](v56, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v95);
        MEMORY[0x23EE64DF0](v95, -1, -1);
        MEMORY[0x23EE64DF0](v55, -1, -1);

        (*(v53 + 8))(v101, v99);
      }

      else
      {

        (*(v53 + 8))(v52, v54);
      }
    }
  }

  else
  {
    v25 = *(v0 + 104);
    v24 = *(v0 + 112);
    v27 = *(v0 + 88);
    v26 = *(v0 + 96);

    sub_23875C180();
    (*(v25 + 16))(v24, v27, v26);
    v28 = sub_23875C1B0();
    v29 = sub_23875EFE0();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 152);
    v33 = *(v0 + 120);
    v32 = *(v0 + 128);
    v35 = *(v0 + 104);
    v34 = *(v0 + 112);
    v36 = *(v0 + 96);
    if (v30)
    {
      v100 = *(v0 + 120);
      v37 = swift_slowAlloc();
      v96 = v29;
      v38 = swift_slowAlloc();
      v102[0] = v38;
      *v37 = 136315138;
      v39 = sub_23875B800();
      v98 = v31;
      v41 = v40;
      (*(v35 + 8))(v34, v36);
      v42 = sub_2384615AC(v39, v41, v102);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_2383F8000, v28, v96, "Could not create object ID for %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x23EE64DF0](v38, -1, -1);
      MEMORY[0x23EE64DF0](v37, -1, -1);

      (*(v32 + 8))(v98, v100);
    }

    else
    {

      (*(v35 + 8))(v34, v36);
      (*(v32 + 8))(v31, v33);
    }
  }

  v43 = *(v0 + 8);

  return v43();
}

void sub_23866F8A8(uint64_t a1)
{
  v2 = v1;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v4 = sub_23875B940();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875C1E0();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x28223BE20](v7);
  v40 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
  v41 = 0;
  v10 = sub_23875B860();
  v11 = swift_allocObject();
  *(v11 + 16) = &v41;
  *(v11 + 24) = v2;
  v12 = swift_allocObject();
  v12[2] = sub_238671CF8;
  v12[3] = v11;
  aBlock[4] = sub_238671D00;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_238670C54;
  aBlock[3] = &block_descriptor_14;
  v13 = _Block_copy(aBlock);
  v2;

  aBlock[0] = 0;
  [v9 coordinateReadingItemAtURL:v10 options:0 error:aBlock byAccessor:v13];
  _Block_release(v13);

  v14 = aBlock[0];
  v15 = aBlock[0];
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  if (v41)
  {

LABEL_7:

LABEL_9:
    return;
  }

  if (!v15)
  {

    goto LABEL_9;
  }

  v15 = v15;
  if ([v15 code] == 3072)
  {

    goto LABEL_7;
  }

  swift_getKeyPath(asc_23877BC20);
  swift_getKeyPath(asc_23877BC48);
  aBlock[0] = 0x8000000000000000;

  sub_23875C2E0();
  v16 = v40;
  sub_23875C180();
  v18 = v38;
  v17 = v39;
  (*(v38 + 16))(v6, a1, v39);
  v19 = v15;
  v20 = sub_23875C1B0();
  v21 = sub_23875EFE0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v22 = 136315394;
    sub_2386729C4(&qword_27DF0D3A8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v33 = v20;
    v23 = sub_23875F600();
    v24 = v17;
    v25 = v23;
    v27 = v26;
    (*(v18 + 8))(v6, v24);
    v28 = sub_2384615AC(v25, v27, aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2112;
    *(v22 + 14) = v19;
    v29 = v34;
    *v34 = v14;
    v30 = v19;
    v31 = v33;
    _os_log_impl(&dword_2383F8000, v33, v21, "Failed to load order from URL %s with error: %@", v22, 0x16u);
    sub_238455DD4(v29);
    MEMORY[0x23EE64DF0](v29, -1, -1);
    v32 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x23EE64DF0](v32, -1, -1);
    MEMORY[0x23EE64DF0](v22, -1, -1);

    (*(v36 + 8))(v40, v37);
  }

  else
  {

    (*(v18 + 8))(v6, v17);
    (*(v36 + 8))(v16, v37);
  }
}

double sub_23866FE4C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v70 = a3;
  v71 = a1;
  v4 = sub_23875C1E0();
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x28223BE20](v4);
  v69 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v61 = &v45 - v7;
  v8 = sub_23875A620();
  v67 = *(v8 - 8);
  v68 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23875BC40();
  v54 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v53 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v52 = &v45 - v14;
  v51 = sub_238758FA0();
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23875A710();
  v55 = *(v17 - 8);
  v56 = v17;
  MEMORY[0x28223BE20](v17);
  v57 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_238758700();
  v59 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v58 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_23875B940();
  v72 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  v60 = &v45 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v45 - v24;
  sub_23875ED50();
  v66 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = 1;
  (*(v72 + 16))(v25, v71, v20);
  v26 = sub_23875B8C0();
  v27 = sub_23875B950();
  v29 = sub_2386620B4(v27, v28);
  v45 = v16;
  v49 = v29;
  v46 = v11;
  v47 = v10;
  if (v26)
  {
    sub_23875B8A0();
  }

  v63 = *(v72 + 8);
  v63(v25, v20);
  v73 = *(v70 + qword_27DF12AC8);
  sub_238758890();
  v30 = sub_238758A30();
  (*(v59 + 16))(v58, &v49[OBJC_IVAR____TtCC12FinanceKitUI20OrderManagementModel16ConfirmationData_content], v62);
  sub_2387586C0();
  sub_238757DF0();
  v48 = v30;
  v31 = sub_238757D50();
  v33 = v48;
  v34 = v62;
  if (v31)
  {
    v35 = v45;
    v36 = v31;
    sub_238757D90();
    v37 = v52;
    sub_238758F80();
    (*(v50 + 8))(v35, v51);
    v38 = v53;
    v39 = v58;
    sub_2387586F0();
    sub_2386729C4(&unk_27DF12BC0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v40 = v46;
    LOBYTE(v35) = sub_23875E9B0();
    v41 = *(v54 + 8);
    v41(v38, v40);
    v41(v37, v40);
    v42 = v59;
    v43 = v57;
    if (v35)
    {
      swift_getKeyPath(aP_17);
      swift_getKeyPath(aP_18);
      sub_23875C2D0();

      v44 = v73;
      OrderNavigationModel.navigate(to:fulfillmentIdentifier:sourceApplication:)(v36, 0, 0, 0, 0);
    }

    else
    {
      sub_238661324(v49);
    }

    (*(v55 + 8))(v43, v56);
    (*(v42 + 8))(v39, v34);
  }

  else
  {
    swift_getKeyPath(asc_23877BC20);
    swift_getKeyPath(asc_23877BC48);
    v73 = v49;

    sub_23875C2E0();

    (*(v55 + 8))(v57, v56);
    (*(v59 + 8))(v58, v34);
  }

  return result;
}

uint64_t sub_238670C54(uint64_t a1, uint64_t a2)
{
  v3 = sub_23875B940();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_23875B8B0();
  v7(v6);
  return (*(v4 + 8))(v6, v3);
}

double sub_238670D54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v7 = sub_23875B940();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875B8B0();
  v11 = a1;
  a5(v10);

  (*(v8 + 8))(v10, v7);

  return result;
}

double OrderManagementView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v23 = v1[3];
  type metadata accessor for OrderManagementModel(0);
  sub_2386729C4(&qword_27DF12A40, type metadata accessor for OrderManagementModel, &protocol conformance descriptor for OrderManagementModel);
  sub_23875C7B0();
  swift_getKeyPath(aP_17);
  sub_23875C7C0();

  swift_getKeyPath(a0_11);
  v28 = v31;
  v29 = v32;
  v30 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12A48, &qword_23877B9A0);
  sub_23875E300();

  v24[6] = v26;
  v25 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12A50, &qword_23877B9A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12A58, &qword_23877B9B0);
  sub_23843A3E8(&qword_27DF12A60, &qword_27DF12A50, &qword_23877B9A8, MEMORY[0x277D83960]);
  sub_23843A3E8(&qword_27DF12A68, &qword_27DF12A50, &qword_23877B9A8, MEMORY[0x277D83980]);
  sub_23843A3E8(&qword_27DF12A70, &qword_27DF12A50, &qword_23877B9A8, MEMORY[0x277D83990]);
  v4 = type metadata accessor for OrderNavigationDestination(255);
  v5 = type metadata accessor for OrderNavigationDestinationView(255);
  sub_2386715C8(v5, v6, v7);
  v8 = sub_2386729C4(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination, &protocol conformance descriptor for OrderNavigationDestination);
  v24[1] = v4;
  v24[2] = v5;
  v24[5] = sub_2386729C4(&qword_27DF12A88, type metadata accessor for OrderNavigationDestinationView, &protocol conformance descriptor for OrderNavigationDestinationView);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23875C8E0();
  KeyPath = swift_getKeyPath(byte_23877B9B8, OpaqueTypeConformance2, v8);
  v24[3] = sub_238758890();
  v24[4] = MEMORY[0x277CC70D0];
  v24[0] = v3;
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12A90, &qword_23877B9E0) + 36));
  sub_23845C998(v24, (v10 + 1));
  *v10 = KeyPath;

  __swift_destroy_boxed_opaque_existential_1(v24);
  v11 = swift_getKeyPath(byte_23877B9E8);
  v24[0] = v3;
  v12 = sub_238758A30();
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12A98, &qword_23877BA18) + 36));
  *v13 = v11;
  v13[1] = v12;
  v14 = swift_getKeyPath(byte_23877BA20);
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12AA0, &unk_23877BA48) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD0, qword_238764B90);
  sub_23875C180();
  *v15 = v14;
  v16 = swift_getKeyPath(aP_19);
  swift_getKeyPath(aP_17);
  swift_getKeyPath(aP_18);

  sub_23875C2D0();

  v17 = v24[0];
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12AB0, &qword_23877BAA0) + 36));
  *v18 = v16;
  v18[1] = v17;
  v19 = swift_getKeyPath(a0_12);
  v20 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12AB8, &qword_23877BAD0) + 36));
  *v20 = v19;
  v20[1] = v23;

  return result;
}

double sub_238671390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  KeyPath = swift_getKeyPath(byte_23877B9E8);
  type metadata accessor for OrderManagementModel(0);
  sub_2386729C4(&qword_27DF12A40, type metadata accessor for OrderManagementModel, &protocol conformance descriptor for OrderManagementModel);

  sub_23875C7A0();
  type metadata accessor for OrderNavigationDestination(0);
  v4 = type metadata accessor for OrderNavigationDestinationView(0);
  sub_2386715C8(v4, v5, v6);
  sub_2386729C4(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination, &protocol conformance descriptor for OrderNavigationDestination);
  sub_2386729C4(&qword_27DF12A88, type metadata accessor for OrderNavigationDestinationView, &protocol conformance descriptor for OrderNavigationDestinationView);
  sub_23875DDD0();
  sub_2383FC164(sub_2385DFF3C, 0);

  sub_2384B4E98(KeyPath, 0);

  return result;
}

unint64_t sub_2386715C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF12A78;
  if (!qword_27DF12A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12A78);
  }

  return result;
}

double sub_23867161C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238672958(a1, a2);

  return result;
}

void *sub_2386716C8@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_238672904(a2, a3, a4);
  result = sub_23875CDC0();
  *a1 = v6;
  return result;
}

uint64_t sub_238671718(id *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  sub_238672904(a1, a2, a3);
  v4 = v3;
  return sub_23875CDD0();
}

unint64_t sub_238671838()
{
  result = qword_27DF12B58;
  if (!qword_27DF12B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF12AB8, &qword_23877BAD0);
    sub_2386718F0();
    sub_23843A3E8(&qword_27DF12BA8, &unk_27DF12BB0, &qword_23877BC18, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12B58);
  }

  return result;
}

unint64_t sub_2386718F0()
{
  result = qword_27DF12B60;
  if (!qword_27DF12B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12AB0, &qword_23877BAA0);
    sub_2386719A8();
    sub_23843A3E8(&qword_27DF12B98, &qword_27DF12BA0, &qword_23877BC10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12B60);
  }

  return result;
}

unint64_t sub_2386719A8()
{
  result = qword_27DF12B68;
  if (!qword_27DF12B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF12AA0, &unk_23877BA48);
    sub_238671A60();
    sub_23843A3E8(&qword_27DF09E70, &qword_27DF09DD0, qword_238764B90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12B68);
  }

  return result;
}

unint64_t sub_238671A60()
{
  result = qword_27DF12B70;
  if (!qword_27DF12B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12A98, &qword_23877BA18);
    sub_238671B18();
    sub_23843A3E8(&qword_2814F0920, &qword_27DF09E68, &unk_23876A070, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12B70);
  }

  return result;
}

unint64_t sub_238671B18()
{
  result = qword_27DF12B78;
  if (!qword_27DF12B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12A90, &qword_23877B9E0);
    sub_23843A3E8(&qword_27DF12B80, &unk_27DF12B88, &qword_23877BC08, MEMORY[0x277CDDA18]);
    sub_23843A3E8(&qword_27DF09E50, &unk_27DF09E58, &unk_238764C10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12B78);
  }

  return result;
}

void sub_238671BFC(void *a2@<X8>)
{
  swift_getKeyPath(asc_23877BC20);
  swift_getKeyPath(asc_23877BC48);
  sub_23875C2D0();

  *a2 = v3;
}

uint64_t sub_238671C7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath(asc_23877BC20);
  swift_getKeyPath(asc_23877BC48);
  sub_238671D40(v2);

  return sub_23875C2E0();
}

double block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_238671D40(uint64_t result)
{
  if ((~result & 0xF000000000000004) != 0)
  {
    return sub_238671D58(result);
  }

  return v1;
}

double sub_238671D58(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t sub_238671D64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12BF0, &qword_23877B250);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12898, &qword_23877B240);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - v10;
  v21[3] = sub_238759370();
  v21[4] = MEMORY[0x277CC78A8];
  v21[0] = a1;
  *(a2 + 16) = 0;
  v12 = OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel__navigation;
  v20[0] = [objc_allocWithZone(type metadata accessor for OrderNavigationModel(0)) init];
  sub_23875C290();
  (*(v9 + 32))(a2 + v12, v11, v8);
  v13 = OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel__importState;
  v20[0] = 0xF000000000000004;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12C00, &qword_23877B440);
  sub_23875C290();
  (*(v5 + 32))(a2 + v13, v7, v4);
  if (MEMORY[0x277D84F90] >> 62 && sub_23875F3A0())
  {
    v14 = sub_23844CE88(MEMORY[0x277D84F90]);
  }

  else
  {
    v14 = MEMORY[0x277D84FA0];
  }

  *(a2 + OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel_cancellableSet) = v14;
  sub_23845C998(v21, a2 + OBJC_IVAR____TtC12FinanceKitUI20OrderManagementModel_analyticsProvider);
  swift_getKeyPath(aP_17);
  swift_getKeyPath(aP_18);
  sub_23875C2D0();

  v15 = v20[0];
  sub_2386729C4(&qword_27DF128F8, type metadata accessor for OrderNavigationModel, &protocol conformance descriptor for OrderNavigationModel);
  v16 = sub_23875C260();

  v20[0] = v16;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_2386639DC;
  *(v18 + 24) = v17;
  sub_23875C280();
  sub_23875C360();

  swift_beginAccess();
  sub_23875C210();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v21);
  return a2;
}

uint64_t sub_238672138(uint64_t a1)
{
  v4 = *(sub_23875B940() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2384494A4;

  return sub_23866DF48(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_23867223C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v36 = a5;
  v37 = a6;
  v34 = a1;
  v35 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - v9;
  v33 = &v31 - v9;
  v11 = sub_23875A710();
  v32 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  v38 = *&v6[qword_27DF12AC8];
  sub_238758890();
  v17 = sub_238758A30();

  sub_23875A6E0();
  v18 = sub_23875ED80();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  v19 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v19, v16, v11);
  sub_23875ED50();
  v20 = v7;
  v21 = v17;

  v22 = sub_23875ED40();
  v23 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  *(v25 + 2) = v22;
  *(v25 + 3) = v26;
  *(v25 + 4) = v20;
  v27 = v32;
  (*(v12 + 32))(&v25[v23], v19, v32);
  *&v25[v24] = v21;
  v28 = &v25[(v24 + 15) & 0xFFFFFFFFFFFFFFF8];
  v29 = v37;
  *v28 = v36;
  v28[1] = v29;
  sub_2386C3BA4(0, 0, v33, &unk_23877BCB0, v25);

  return (*(v12 + 8))(v16, v27);
}

uint64_t sub_238672530(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_23875A710() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v7);
  v12 = v1[4];
  v13 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_238449A7C;

  return sub_23866D140(a1, v9, v10, v12, v1 + v6, v11, v13, v14);
}

uint64_t sub_238672684(uint64_t a1)
{
  v3 = *(sub_23875A710() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[3];
  v14 = v1[2];
  v8 = v1[4];
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_238449A7C;

  return sub_23866C66C(a1, v14, v7, v8, v1 + v4, v9, v10, v11);
}

uint64_t sub_2386727F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_238449A7C;

  return sub_23866BE04(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_238672904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF12C10;
  if (!qword_27DF12C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12C10);
  }

  return result;
}

uint64_t sub_238672958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderNavigationDestination(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386729C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_238672A14(uint64_t a1, uint64_t a2)
{
  sub_2387580D0();
  sub_2387581B0();
  sub_23867467C(&qword_27DF0BBA8, MEMORY[0x277CC6E00], MEMORY[0x277CC6E08]);
  sub_23867467C(&qword_27DF0BBB0, MEMORY[0x277CC6E68], MEMORY[0x277CC6E70]);

  return sub_23875AC60();
}

uint64_t sub_238672AF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v69 = a1;
  v3 = sub_23875C880();
  v67 = *(v3 - 8);
  v68 = v3;
  MEMORY[0x28223BE20](v3);
  v66 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v65 = v59 - v6;
  v7 = sub_23875D990();
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x28223BE20](v7);
  v62 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OrderDetailsStatusLabel(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23875BE40();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_23875BE20();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_23875BD20();
  MEMORY[0x28223BE20](v15 - 8);
  v60 = _s19ShippingFulfillmentO15StatusFormatterVMa(0);
  MEMORY[0x28223BE20](v60);
  v17 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ExtractedOrderDetailsNoFulfillments.ViewModel(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = _s19ShippingFulfillmentO12StatusValuesVMa(0);
  v22 = (v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238674498(v2, v20);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  (*(*(v25 - 8) + 32))(v24, v20, v25);
  v26 = v22[7];
  v27 = sub_238757FA0();
  (*(*(v27 - 8) + 56))(&v24[v26], 1, 1, v27);
  v28 = v22[8];
  v29 = sub_238757F70();
  (*(*(v29 - 8) + 56))(&v24[v28], 1, 1, v29);
  v30 = v22[9];
  v31 = sub_238757F90();
  v32 = *(*(v31 - 8) + 56);
  v61 = v24;
  v32(&v24[v30], 1, 1, v31);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_23867467C(&qword_27DF09310, _s19ShippingFulfillmentO15StatusFormatterVMa, &unk_238777678);
  sub_238759950();
  sub_2386744FC(v17, _s19ShippingFulfillmentO15StatusFormatterVMa);
  v34 = v71;
  v33 = v72;
  v36 = v73;
  v35 = v74;
  v37 = v10[9];
  v38 = type metadata accessor for OrderDetailsNote(0);
  (*(*(v38 - 8) + 56))(&v12[v37], 1, 1, v38);
  *v12 = v34;
  *(v12 + 1) = v33;
  v59[1] = v33;
  v60 = v35;
  *(v12 + 2) = v36;
  *(v12 + 3) = v35;
  v12[32] = 3;
  v39 = &v12[v10[10]];
  *v39 = 2;
  *(v39 + 1) = 0;
  v39[24] = 0;
  *(v39 + 2) = 0;
  v40 = &v12[v10[11]];
  v70 = 0;

  sub_23875E1A0();
  v41 = v72;
  *v40 = v71;
  *(v40 + 1) = v41;
  v42 = &v12[v10[12]];
  *v42 = swift_getKeyPath(byte_23877BD98);
  v42[8] = 0;
  v71 = 0x403F000000000000;
  v43 = *MEMORY[0x277CE0A50];
  v44 = v62;
  v45 = *(v63 + 104);
  v46 = v64;
  v47 = v45(v62, v43, v64);
  sub_23857414C(v47, v48, v49);
  sub_23875C540();
  v71 = 0x403C000000000000;
  v45(v44, v43, v46);
  sub_23875C540();
  v71 = 0x4018000000000000;
  v45(v44, v43, v46);
  sub_23875C540();

  type metadata accessor for ExtractedOrderDetailsNoFulfillments(0);
  v50 = v65;
  sub_2384D5138(v65);
  v52 = v66;
  v51 = v67;
  v53 = v68;
  (*(v67 + 104))(v66, *MEMORY[0x277CDF9D8], v68);
  LOBYTE(v35) = sub_23875C870();
  v54 = *(v51 + 8);
  v54(v52, v53);
  v54(v50, v53);
  sub_2386744FC(v61, _s19ShippingFulfillmentO12StatusValuesVMa);
  if (v35)
  {
    v55 = 0x4028000000000000;
  }

  else
  {
    v55 = 0x4030000000000000;
  }

  v56 = v69;
  sub_23867455C(v12, v69);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12C40, &unk_23877BDC0);
  v58 = v56 + *(result + 36);
  *v58 = 0x4028000000000000;
  *(v58 + 8) = v55;
  *(v58 + 16) = 0x4028000000000000;
  *(v58 + 24) = v55;
  *(v58 + 32) = 0;
  return result;
}

uint64_t sub_2386732AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = sub_2387581B0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v66 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875BC40();
  v71 = *(v6 - 8);
  v72 = v6;
  MEMORY[0x28223BE20](v6);
  v67 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v65 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB68, &unk_2387774E0);
  MEMORY[0x28223BE20](v14 - 8);
  v68 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v65 - v17;
  v19 = sub_2387580D0();
  v78 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v76 = *(v25 - 8);
  v77 = v25;
  MEMORY[0x28223BE20](v25);
  v65 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v75 = &v65 - v28;
  v30 = MEMORY[0x28223BE20](v29);
  v74 = &v65 - v31;
  v32 = [a1 orderContent];
  v79 = v24;
  sub_23875A5B0();

  v69 = v4;
  v70 = v3;
  v33 = *(v4 + 56);
  v34 = 1;
  v80 = v18;
  v33(v18, 1, 1, v3);
  v35 = [a1 isMarkedAsComplete];
  v73 = a1;
  v36 = [a1 isMarkedAsCompleteModificationDate];
  if (v36)
  {
    v37 = v36;
    sub_23875BBE0();

    v34 = 0;
  }

  v38 = v71;
  v39 = v34;
  v40 = v72;
  (*(v71 + 56))(v13, v39, 1, v72);
  v41 = v81;
  v42 = v79;
  if (v35)
  {
    sub_23843981C(v13, v10, &qword_27DF12E00, &unk_238763FC0);
    v43 = (*(v38 + 48))(v10, 1, v40);
    v44 = v80;
    if (v43 != 1)
    {

      sub_238439884(v13, &qword_27DF12E00, &unk_238763FC0);
      sub_238439884(v44, &qword_27DF0BB68, &unk_2387774E0);
      (*(v78 + 8))(v42, v19);
      v56 = *(v38 + 32);
      v57 = v67;
      v56(v67, v10, v40);
      v49 = v75;
      v56(v75, v57, v40);
      v59 = v76;
      v58 = v77;
      (*(v76 + 104))(v49, *MEMORY[0x277CC83B0], v77);
      goto LABEL_16;
    }

    sub_238439884(v10, &qword_27DF12E00, &unk_238763FC0);
  }

  v72 = v13;
  v45 = *MEMORY[0x277CC6DF8];
  v46 = v78;
  v47 = *(v78 + 104);
  v47(v21, v45, v19);
  sub_23867467C(&qword_27DF0BB70, MEMORY[0x277CC6E00], MEMORY[0x277CC6E10]);
  sub_23875EC40();
  sub_23875EC40();
  v48 = *(v46 + 8);
  v48(v21, v19);
  if (v85 == v84)
  {

    sub_238439884(v72, &qword_27DF12E00, &unk_238763FC0);
    sub_238439884(v80, &qword_27DF0BB68, &unk_2387774E0);
    v48(v42, v19);
    v49 = v75;
    v47(v75, v45, v19);
    v50 = MEMORY[0x277CC83B8];
LABEL_13:
    v59 = v76;
    v58 = v77;
    (*(v76 + 104))(v49, *v50, v77);
    v41 = v81;
    goto LABEL_16;
  }

  v51 = v68;
  sub_23843981C(v80, v68, &qword_27DF0BB68, &unk_2387774E0);
  v53 = v69;
  v52 = v70;
  if ((*(v69 + 48))(v51, 1, v70) != 1)
  {

    sub_238439884(v72, &qword_27DF12E00, &unk_238763FC0);
    sub_238439884(v80, &qword_27DF0BB68, &unk_2387774E0);
    v48(v79, v19);
    v60 = *(v53 + 32);
    v61 = v66;
    v60(v66, v51, v52);
    v49 = v75;
    v60(v75, v61, v52);
    v50 = MEMORY[0x277CC83A8];
    goto LABEL_13;
  }

  sub_238439884(v51, &qword_27DF0BB68, &unk_2387774E0);
  v47(v21, *MEMORY[0x277CC6DF0], v19);
  v54 = v79;
  sub_23875EC40();
  sub_23875EC40();

  v48(v21, v19);
  sub_238439884(v72, &qword_27DF12E00, &unk_238763FC0);
  sub_238439884(v80, &qword_27DF0BB68, &unk_2387774E0);
  if (v83 == v82)
  {
    v48(v54, v19);
    v55 = v65;
    v47(v65, *MEMORY[0x277CC6DE0], v19);
  }

  else
  {
    v55 = v65;
    (*(v78 + 32))(v65, v54, v19);
  }

  v41 = v81;
  v49 = v75;
  v59 = v76;
  v58 = v77;
  (*(v76 + 104))(v55, *MEMORY[0x277CC83B8], v77);
  (*(v59 + 32))(v49, v55, v58);
LABEL_16:
  v62 = *(v59 + 32);
  v63 = v74;
  v62(v74, v49, v58);
  return (v62)(v41, v63, v58);
}

void sub_238673C5C(uint64_t a1)
{
  sub_2384C5F0C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_238673CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_2387581B0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB68, &unk_2387774E0);
  MEMORY[0x28223BE20](v10 - 8);
  v48 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  v15 = sub_2387580D0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v42 - v20;
  v50 = a1;
  sub_2387580F0();
  v46 = v3;
  v47 = v4;
  v22 = *(v4 + 56);
  v51 = v14;
  v22(v14, 1, 1, v3);
  v23 = *MEMORY[0x277CC6DF8];
  v24 = *(v16 + 104);
  v24(v18, v23, v15);
  sub_23867467C(&qword_27DF0BB70, MEMORY[0x277CC6E00], MEMORY[0x277CC6E10]);
  sub_23875EC40();
  sub_23875EC40();
  v43 = v16;
  v25 = *(v16 + 8);
  v25(v18, v15);
  if (v58 == v57)
  {
    v26 = sub_238758270();
    (*(*(v26 - 8) + 8))(v50, v26);
    sub_238439884(v51, &qword_27DF0BB68, &unk_2387774E0);
    v25(v21, v15);
    v27 = v49;
    v24(v49, v23, v15);
    v29 = v52;
    v28 = v53;
    (*(v52 + 104))(v27, *MEMORY[0x277CC83B8], v53);
    v30 = v27;
  }

  else
  {
    v31 = v24;
    v32 = v51;
    v33 = v48;
    sub_23843981C(v51, v48, &qword_27DF0BB68, &unk_2387774E0);
    v34 = v33;
    v35 = v46;
    if ((*(v47 + 48))(v34, 1, v46) == 1)
    {
      sub_238439884(v48, &qword_27DF0BB68, &unk_2387774E0);
      v31(v18, *MEMORY[0x277CC6DF0], v15);
      sub_23875EC40();
      sub_23875EC40();
      v36 = sub_238758270();
      (*(*(v36 - 8) + 8))(v50, v36);
      v25(v18, v15);
      sub_238439884(v32, &qword_27DF0BB68, &unk_2387774E0);
      if (v56 == v55)
      {
        v25(v21, v15);
        v37 = v45;
        v31(v45, *MEMORY[0x277CC6DE0], v15);
      }

      else
      {
        v37 = v45;
        (*(v43 + 32))(v45, v21, v15);
      }

      v29 = v52;
      v28 = v53;
      v30 = v49;
      (*(v52 + 104))(v37, *MEMORY[0x277CC83B8], v53);
      (*(v29 + 32))(v30, v37, v28);
    }

    else
    {
      v38 = sub_238758270();
      (*(*(v38 - 8) + 8))(v50, v38);
      sub_238439884(v32, &qword_27DF0BB68, &unk_2387774E0);
      v25(v21, v15);
      v39 = *(v47 + 32);
      v40 = v44;
      v39(v44, v48, v35);
      v30 = v49;
      v39(v49, v40, v35);
      v29 = v52;
      v28 = v53;
      (*(v52 + 104))(v30, *MEMORY[0x277CC83A8], v53);
    }
  }

  return (*(v29 + 32))(v54, v30, v28);
}

void sub_2386743F8(uint64_t a1)
{
  type metadata accessor for ExtractedOrderDetailsNoFulfillments.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2384BEA74(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_238674498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrderDetailsNoFulfillments.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386744FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23867455C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsStatusLabel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2386745C0()
{
  result = qword_27DF12C48;
  if (!qword_27DF12C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12C40, &unk_23877BDC0);
    sub_23867467C(&qword_27DF0EE18, type metadata accessor for OrderDetailsStatusLabel, &unk_23877366C);
    sub_2386746C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12C48);
  }

  return result;
}

uint64_t sub_23867467C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2386746C4()
{
  result = qword_27DF0C528;
  if (!qword_27DF0C528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C530, &qword_2387704A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C528);
  }

  return result;
}

uint64_t sub_238674728()
{
  swift_getKeyPath(a0_13);
  swift_getKeyPath(byte_23877C198);
  sub_23875C2D0();

  return v1;
}

double sub_23867479C()
{
  swift_getKeyPath(aH_13);
  swift_getKeyPath(aH_14);
  sub_23875C2D0();

  return result;
}

uint64_t sub_238674814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_23875C1E0();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  sub_23875ED50();
  v4[8] = sub_23875ED40();
  v7 = sub_23875ECE0();
  v4[9] = v7;
  v4[10] = v6;

  return MEMORY[0x2822009F8](sub_23867494C, v7, v6);
}

uint64_t sub_23867494C()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_bankConnectService + 24);
  v3 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_bankConnectService + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_bankConnectService), v2);
  v4 = v1 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_termsAndConditionsID;
  v5 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_termsAndConditionsID);
  v6 = *(v4 + 8);
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_238674A34;
  v8 = v0[7];

  return MEMORY[0x28211A948](v8, v5, v6, v2, v3);
}

uint64_t sub_238674A34()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_238674C7C;
  }

  else
  {
    v5 = sub_238674B70;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_238674B70()
{
  v1 = v0[7];
  v2 = v0[6];

  swift_getKeyPath(aH_13);
  swift_getKeyPath(aH_14);
  sub_23843981C(v1, v2, &qword_27DF0D040, &qword_2387676A0);

  sub_23875C2E0();
  sub_238439884(v1, &qword_27DF0D040, &qword_2387676A0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_238674C7C()
{
  v1 = v0[12];

  sub_23875C120();
  v2 = v1;
  v3 = sub_23875C1B0();
  v4 = sub_23875EFE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2383F8000, v3, v4, "Failed to load T&Cs URL with error: %@", v6, 0xCu);
    sub_238439884(v7, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v7, -1, -1);
    MEMORY[0x23EE64DF0](v6, -1, -1);
  }

  v10 = v0[12];
  v12 = v0[4];
  v11 = v0[5];
  v14 = v0[2];
  v13 = v0[3];

  (*(v12 + 8))(v11, v13);
  v15 = v10;
  sub_23875E510();
  v16 = swift_task_alloc();
  *(v16 + 16) = v14;
  *(v16 + 24) = v10;
  sub_23875C6F0();

  v17 = v0[1];

  return v17();
}

void sub_238674E8C(uint64_t a1, uint64_t a2)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath(a0_13);
  swift_getKeyPath(byte_23877C198);

  sub_23875C2E0();
}

uint64_t sub_238674F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_23875C1E0();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_23875BC40();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  sub_23875ED50();
  v4[9] = sub_23875ED40();
  v8 = sub_23875ECE0();
  v4[10] = v8;
  v4[11] = v7;

  return MEMORY[0x2822009F8](sub_2386750CC, v8, v7);
}

uint64_t sub_2386750CC()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_bankConnectService + 24);
  v3 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_bankConnectService + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_bankConnectService), v2);
  v4 = v1 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_termsAndConditionsID;
  v5 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_termsAndConditionsID);
  v6 = *(v4 + 8);
  sub_23875BBF0();
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_2386751C0;
  v8 = v0[8];

  return MEMORY[0x28211A950](v5, v6, v8, v2, v3);
}

uint64_t sub_2386751C0()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  v3 = v2[11];
  v4 = v2[10];
  if (v0)
  {
    v5 = sub_2386753E0;
  }

  else
  {
    v5 = sub_238675348;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_238675348()
{
  v1 = *(v0 + 16);

  v3 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_completionHandler);
  if (v3)
  {
    v3(v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2386753E0()
{
  v1 = v0[13];

  sub_23875C120();
  v2 = v1;
  v3 = sub_23875C1B0();
  v4 = sub_23875EFE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[13];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2383F8000, v3, v4, "Failed to update T&Cs with error: %@", v6, 0xCu);
    sub_238439884(v7, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v7, -1, -1);
    MEMORY[0x23EE64DF0](v6, -1, -1);
  }

  v10 = v0[13];
  v12 = v0[4];
  v11 = v0[5];
  v14 = v0[2];
  v13 = v0[3];

  (*(v12 + 8))(v11, v13);
  v15 = v10;
  sub_23875E510();
  v16 = swift_task_alloc();
  *(v16 + 16) = v14;
  *(v16 + 24) = v10;
  sub_23875C6F0();

  v17 = v0[1];

  return v17();
}

uint64_t sub_2386755E8()
{
  v1 = OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12F28, &unk_23877C298);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel__url;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12F30, &qword_23876D080);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_bankConnectService));
  sub_2384348A8(*(v0 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_completionHandler), *(v0 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_completionHandler + 8));

  return swift_deallocClassInstance();
}

void sub_23867573C(uint64_t a1)
{
  sub_23867582C();
  if (v1 <= 0x3F)
  {
    sub_23867587C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_23867582C()
{
  if (!qword_27DF12C78)
  {
    v0 = sub_23875C2F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF12C78);
    }
  }
}

void sub_23867587C(uint64_t a1)
{
  if (!qword_27DF12C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D040, &qword_2387676A0);
    v1 = sub_23875C2F0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF12C80);
    }
  }
}

uint64_t sub_2386758E0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for BankConnectTermsAndConditionsWebViewModel(0);
  result = sub_23875C260();
  *a2 = result;
  return result;
}

uint64_t sub_238675920()
{
  type metadata accessor for BankConnectTermsAndConditionsWebViewModel(0);
  sub_23867AA94(&qword_27DF12D40, type metadata accessor for BankConnectTermsAndConditionsWebViewModel, &unk_23877C020);
  sub_23875C490();
  swift_getKeyPath(a0_13);
  swift_getKeyPath(byte_23877C198);
  sub_23875C2D0();

  if (v3 == 1)
  {
    v0 = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_isDeclinable);

    v1 = v0 ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_238675A54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = type metadata accessor for BankConnectTermsAndConditionsWebView(0);
  v58 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v59 = v4;
  v60 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_23875CE00();
  v48 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12D88, &qword_23877C0C8);
  MEMORY[0x28223BE20](v47);
  v7 = (&v47 - v6);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12D80, &qword_23877C0C0);
  v50 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12D78, &qword_23877C0B8);
  v55 = *(v10 - 8);
  v56 = v10;
  MEMORY[0x28223BE20](v10);
  v53 = &v47 - v11;
  sub_23875ED50();
  v57 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v7 = sub_23875E4A0();
  v7[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12DE8, &qword_23877C0F8);
  sub_238676154(a1, v7 + *(v13 + 44));
  MEMORY[0x28223BE20](v14);
  *(&v47 - 2) = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12D90, &qword_23877C0D0);
  v51 = a1;
  v16 = sub_23843A3E8(&qword_27DF12D98, &qword_27DF12D88, &qword_23877C0C8, MEMORY[0x277CE11A8]);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12DA0, &qword_23877C0D8);
  v18 = sub_23867AD84();
  v64 = v17;
  v65 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v47;
  sub_23875DEF0();
  sub_238439884(v7, &qword_27DF12D88, &qword_23877C0C8);
  v21 = v48;
  v22 = v49;
  v23 = v52;
  (*(v48 + 104))(v49, *MEMORY[0x277CDDDC0], v52);
  v64 = v20;
  v65 = v15;
  v66 = v16;
  v67 = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeConformance2();
  v26 = v53;
  v25 = v54;
  sub_23875DE50();
  (*(v21 + 8))(v22, v23);
  (*(v50 + 8))(v9, v25);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v27 = qword_2814F1B90;
  v28 = sub_23875EA50();
  v29 = sub_23875EA50();
  v30 = sub_23875EA50();
  v31 = [v27 localizedStringForKey:v28 value:v29 table:v30];

  v32 = sub_23875EA80();
  v34 = v33;

  v64 = v32;
  v65 = v34;
  v62 = v25;
  v63 = v24;
  v35 = swift_getOpaqueTypeConformance2();
  sub_2384397A8(v35, v36, v37);
  v38 = v61;
  v39 = v56;
  sub_23875DC70();

  (*(v55 + 8))(v26, v39);
  LOBYTE(v31) = sub_23875D7A0();
  v40 = sub_23875C900();
  v41 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12D70, &qword_23877C0B0) + 36);
  *v41 = v40;
  *(v41 + 8) = v31;
  v42 = v60;
  sub_23867C220(v51, v60, type metadata accessor for BankConnectTermsAndConditionsWebView);
  v43 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v44 = swift_allocObject();
  sub_23867BE94(v42, v44 + v43, type metadata accessor for BankConnectTermsAndConditionsWebView);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12D58, &qword_23877C0A8);
  v46 = (v38 + *(result + 36));
  *v46 = sub_23867AF70;
  v46[1] = v44;
  v46[2] = 0;
  v46[3] = 0;
  return result;
}

void sub_238676154(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E48, &qword_23877C1F8);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v63 = (v48 - v6);
  v7 = type metadata accessor for BankConnectTermsAndConditionsWebView(0);
  v52 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v54 = v8;
  v51 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for BankConnectWebViewContent(0);
  MEMORY[0x28223BE20](v53);
  v57 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E50, &qword_23877C200);
  v61 = *(v10 - 8);
  v62 = v10;
  MEMORY[0x28223BE20](v10);
  v56 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v55 = v48 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v48 - v15;
  v66 = sub_23875B940();
  v17 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v19 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E58, &qword_23877C208);
  MEMORY[0x28223BE20](v20 - 8);
  v60 = v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v58 = v48 - v23;
  sub_23875ED50();
  v59 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = *a1;
  v25 = *(a1 + 16);
  type metadata accessor for BankConnectTermsAndConditionsWebViewModel(0);
  sub_23867AA94(&qword_27DF12D40, type metadata accessor for BankConnectTermsAndConditionsWebViewModel, &unk_23877C020);
  v50 = v24;
  v49 = v25;
  sub_23875C490();
  swift_getKeyPath(aH_13);
  swift_getKeyPath(aH_14);
  v26 = a1;
  sub_23875C2D0();

  v27 = v17;
  v28 = v66;
  if ((*(v17 + 48))(v16, 1, v66) == 1)
  {
    sub_238439884(v16, &qword_27DF0D040, &qword_2387676A0);
    v29 = 1;
    v30 = v62;
    v31 = v58;
  }

  else
  {
    (*(v17 + 32))(v19, v16, v28);
    v32 = v57;
    (*(v17 + 16))(v57, v19, v28);
    v48[1] = v26;
    v33 = v51;
    sub_23867C220(v26, v51, type metadata accessor for BankConnectTermsAndConditionsWebView);
    v34 = v52[80];
    v52 = v19;
    v35 = v27;
    v36 = (v34 + 16) & ~v34;
    v37 = swift_allocObject();
    sub_23867BE94(v33, v37 + v36, type metadata accessor for BankConnectTermsAndConditionsWebView);
    v38 = (v32 + *(v53 + 20));
    *v38 = sub_23867BE24;
    v38[1] = v37;
    sub_23875C490();
    swift_getKeyPath(a0_13);
    swift_getKeyPath(byte_23877C198);
    sub_23875C2D0();

    (*(v35 + 8))(v52, v66);
    if (v67 == 1)
    {
      v39 = 1.0;
    }

    else
    {
      v39 = 0.0;
    }

    v40 = v56;
    sub_23867BE94(v32, v56, type metadata accessor for BankConnectWebViewContent);
    v30 = v62;
    *(v40 + *(v62 + 36)) = v39;
    v41 = v40;
    v42 = v55;
    sub_23867BEFC(v41, v55);
    v31 = v58;
    sub_23867BEFC(v42, v58);
    v29 = 0;
  }

  (*(v61 + 56))(v31, v29, 1, v30);
  v43 = v63;
  sub_2386769F4(v63);
  v44 = v60;
  sub_23843981C(v31, v60, &qword_27DF12E58, &qword_23877C208);
  v45 = v65;
  sub_23843981C(v43, v65, &qword_27DF12E48, &qword_23877C1F8);
  v46 = v64;
  sub_23843981C(v44, v64, &qword_27DF12E58, &qword_23877C208);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E60, &qword_23877C210);
  sub_23843981C(v45, v46 + *(v47 + 48), &qword_27DF12E48, &qword_23877C1F8);
  sub_238439884(v43, &qword_27DF12E48, &qword_23877C1F8);
  sub_238439884(v31, &qword_27DF12E58, &qword_23877C208);
  sub_238439884(v45, &qword_27DF12E48, &qword_23877C1F8);
  sub_238439884(v44, &qword_27DF12E58, &qword_23877C208);
}

double sub_238676910(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for BankConnectTermsAndConditionsWebViewModel(0);
  sub_23867AA94(&qword_27DF12D40, type metadata accessor for BankConnectTermsAndConditionsWebViewModel, &unk_23877C020);
  sub_23875C490();
  sub_23875E510();
  sub_23875C6F0();

  return result;
}

void *sub_2386769F4@<X0>(void *a1@<X8>)
{
  v54 = a1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E68, &qword_23877C218);
  MEMORY[0x28223BE20](v52);
  v53 = &v47 - v1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E70, &qword_23877C220);
  MEMORY[0x28223BE20](v49);
  v3 = (&v47 - v2);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E78, &qword_23877C228);
  MEMORY[0x28223BE20](v51);
  v50 = &v47 - v4;
  v5 = sub_23875CE20();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v47 - v10;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E80, &unk_23876A2C0);
  MEMORY[0x28223BE20](v48);
  v13 = &v47 - v12;
  type metadata accessor for BankConnectTermsAndConditionsWebViewModel(0);
  sub_23867AA94(&qword_27DF12D40, type metadata accessor for BankConnectTermsAndConditionsWebViewModel, &unk_23877C020);
  sub_23875C490();
  swift_getKeyPath(a0_13);
  swift_getKeyPath(byte_23877C198);
  sub_23875C2D0();

  if (v56)
  {
    if (v56 == 1)
    {
      swift_storeEnumTagMultiPayload();
      sub_23867BF6C();
      return sub_23875D1B0();
    }

    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v20 = qword_2814F1B90;
    v21 = sub_23875EA50();
    v22 = sub_23875EA50();
    v23 = sub_23875EA50();
    v24 = [v20 localizedStringForKey:v21 value:v22 table:v23];

    v25 = sub_23875EA80();
    v27 = v26;

    *&v56 = v25;
    *(&v56 + 1) = v27;
    sub_2384397A8(v28, v29, v30);
    v31 = sub_23875DAA0();
    v33 = v32;
    LOBYTE(v27) = v34;
    v36 = v35;
    KeyPath = swift_getKeyPath(asc_23877C250);
    v38 = sub_23875D440();
    v39 = sub_23875D770();
    sub_23875C3D0();
    v55[0] = 0;
    *&v56 = v31;
    *(&v56 + 1) = v33;
    LOBYTE(v57) = v27 & 1;
    *(&v57 + 1) = v36;
    *&v58 = KeyPath;
    BYTE8(v58) = 1;
    HIDWORD(v58) = v38;
    LOBYTE(v59) = v39;
    *(&v59 + 1) = v40;
    *v60 = v41;
    *&v60[8] = v42;
    *&v60[16] = v43;
    v60[24] = 0;
    v44 = v59;
    v3[2] = v58;
    v3[3] = v44;
    v3[4] = *v60;
    *(v3 + 73) = *&v60[9];
    v45 = v57;
    *v3 = v56;
    v3[1] = v45;
    swift_storeEnumTagMultiPayload();
    sub_23843981C(&v56, v55, &qword_27DF12EC0, &qword_23877C238);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12EC0, &qword_23877C238);
    sub_23867BFF8();
    sub_23867C0DC();
    v46 = v50;
    sub_23875D1B0();
    sub_23843981C(v46, v53, &qword_27DF12E78, &qword_23877C228);
    swift_storeEnumTagMultiPayload();
    sub_23867BF6C();
    sub_23875D1B0();
    sub_238439884(&v56, &qword_27DF12EC0, &qword_23877C238);
    v17 = v46;
    v18 = &qword_27DF12E78;
    v19 = &qword_23877C228;
  }

  else
  {
    sub_23875C530();
    sub_23875CE10();
    (*(v6 + 16))(v8, v11, v5);
    sub_23867AA94(&unk_27DF0C340, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
    v15 = sub_23875C5E0();
    (*(v6 + 8))(v11, v5);
    *&v13[*(v48 + 36)] = v15;
    sub_23843981C(v13, v3, &qword_27DF12E80, &unk_23876A2C0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12EC0, &qword_23877C238);
    sub_23867BFF8();
    sub_23867C0DC();
    v16 = v50;
    sub_23875D1B0();
    sub_23843981C(v16, v53, &qword_27DF12E78, &qword_23877C228);
    swift_storeEnumTagMultiPayload();
    sub_23867BF6C();
    sub_23875D1B0();
    sub_238439884(v16, &qword_27DF12E78, &qword_23877C228);
    v17 = v13;
    v18 = &qword_27DF12E80;
    v19 = &unk_23876A2C0;
  }

  return sub_238439884(v17, v18, v19);
}

double sub_238677198@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E08, &qword_23877C1B8);
  v51 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v50 = &v44 - v3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12DD0, &qword_2387687F0);
  v49 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v48 = &v44 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12E10, &qword_23877C1C0);
  v47 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v46 = &v44 - v5;
  v6 = sub_23875D2A0();
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12DC0, &unk_23877C0E8);
  v45 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v44 = &v44 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12DA0, &qword_23877C0D8);
  MEMORY[0x28223BE20](v59);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v44 - v12;
  sub_23875ED50();
  v57 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for BankConnectTermsAndConditionsWebViewModel(0);
  sub_23867AA94(&qword_27DF12D40, type metadata accessor for BankConnectTermsAndConditionsWebViewModel, &unk_23877C020);
  sub_23875C490();
  swift_getKeyPath(a0_13);
  swift_getKeyPath(byte_23877C198);
  sub_23875C2D0();

  if (v61 == 1 && (v13 = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_isDeclinable), , v13 == 1))
  {
    v14 = sub_23875D280();
    MEMORY[0x28223BE20](v14);
    *(&v44 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E20, &unk_23877C1C8);
    sub_23843A3E8(&qword_27DF12E28, &qword_27DF12E20, &unk_23877C1C8, MEMORY[0x277CE14C0]);
    v15 = v44;
    sub_23875C990();
    v16 = sub_23843A3E8(&qword_27DF12DC8, &qword_27DF12DC0, &unk_23877C0E8, MEMORY[0x277CDDB60]);
    v17 = v46;
    v18 = v53;
    MEMORY[0x23EE61E80](v15, v53, v16);
    v61 = v18;
    v62 = v16;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v20 = sub_23843A3E8(&unk_27DF12DD8, &qword_27DF12DD0, &qword_2387687F0, MEMORY[0x277CDD7A8]);
    v61 = v55;
    v62 = v20;
    v21 = swift_getOpaqueTypeConformance2();
    v22 = v54;
    MEMORY[0x23EE61E90](v17, v54, v56, OpaqueTypeConformance2, v21);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12DB8, &qword_23877C0E0);
    (*(*(v23 - 8) + 56))(v10, 0, 1, v23);
    v24 = sub_23867AE08();
    v25 = v58;
    MEMORY[0x23EE61EB0](v10, v23, v24);
    sub_238426E58(v10);
    (*(v47 + 8))(v17, v22);
    (*(v45 + 8))(v15, v18);
  }

  else if (sub_238675920())
  {
    v26 = sub_23875D250();
    MEMORY[0x28223BE20](v26);
    *(&v44 - 2) = a1;
    sub_2384B5A24(v27, v28, v29);
    v30 = v48;
    sub_23875C4D0();
    v31 = sub_23843A3E8(&unk_27DF12DD8, &qword_27DF12DD0, &qword_2387687F0, MEMORY[0x277CDD7A8]);
    v32 = v50;
    v33 = v55;
    MEMORY[0x23EE61E80](v30, v55, v31);
    v34 = sub_23843A3E8(&qword_27DF12DC8, &qword_27DF12DC0, &unk_23877C0E8, MEMORY[0x277CDDB60]);
    v61 = v53;
    v62 = v34;
    v35 = swift_getOpaqueTypeConformance2();
    v61 = v33;
    v62 = v31;
    v36 = swift_getOpaqueTypeConformance2();
    v37 = v56;
    MEMORY[0x23EE61EA0](v32, v54, v56, v35, v36);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12DB8, &qword_23877C0E0);
    (*(*(v38 - 8) + 56))(v10, 0, 1, v38);
    v39 = sub_23867AE08();
    v25 = v58;
    MEMORY[0x23EE61EB0](v10, v38, v39);
    sub_238426E58(v10);
    (*(v51 + 8))(v32, v37);
    (*(v49 + 8))(v30, v33);
  }

  else
  {
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12DB8, &qword_23877C0E0);
    (*(*(v40 - 8) + 56))(v10, 1, 1, v40);
    v41 = sub_23867AE08();
    v25 = v58;
    MEMORY[0x23EE61EB0](v10, v40, v41);
    sub_238426E58(v10);
  }

  v42 = sub_23867AD84();
  MEMORY[0x23EE61E80](v25, v59, v42);
  sub_238426E58(v25);

  return result;
}

double sub_238677AF0@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v27 = a1;
  v29 = a2;
  v2 = type metadata accessor for BankConnectTermsAndConditionsWebView(0);
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  sub_23875ED50();
  v28 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = v27;
  sub_238677E94();
  sub_23867C220(v17, &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankConnectTermsAndConditionsWebView);
  v18 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v19 = swift_allocObject();
  sub_23867BE94(&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for BankConnectTermsAndConditionsWebView);
  sub_23875E200();
  v20 = *(v5 + 16);
  v20(v10, v16, v4);
  v20(v7, v13, v4);
  v21 = v29;
  v20(v29, v10, v4);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12E38, &qword_23877C1D8);
  v23 = &v21[*(v22 + 48)];
  *v23 = 0;
  v23[8] = 1;
  v20(&v21[*(v22 + 64)], v7, v4);
  v24 = *(v5 + 8);
  v24(v13, v4);
  v24(v16, v4);
  v24(v7, v4);
  v24(v10, v4);

  return result;
}

uint64_t sub_238677E94()
{
  v1 = type metadata accessor for BankConnectTermsAndConditionsWebView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v4 = qword_2814F1B90;
  v5 = sub_23875EA50();
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = [v4 localizedStringForKey:v5 value:v6 table:v7];

  v9 = sub_23875EA80();
  v11 = v10;

  v18[0] = v9;
  v18[1] = v11;
  sub_23867C220(v0, v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankConnectTermsAndConditionsWebView);
  v12 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v13 = swift_allocObject();
  v14 = sub_23867BE94(v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for BankConnectTermsAndConditionsWebView);
  sub_2384397A8(v14, v15, v16);
  return sub_23875E230();
}

void sub_2386780A8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for BankConnectTermsAndConditionsWebView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v7 = qword_2814F1B90;
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  v12 = sub_23875EA80();
  v14 = v13;

  sub_23867C220(a1, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankConnectTermsAndConditionsWebView);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_23867BE94(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for BankConnectTermsAndConditionsWebView);

  *a2 = v12;
  a2[1] = v14;
  a2[2] = sub_23867BE0C;
  a2[3] = v16;
}

double sub_2386782F8(uint64_t *a1)
{
  v1 = sub_23875A820();
  v21 = *(v1 - 8);
  v22 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  sub_23875ED50();
  v20 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for BankConnectTermsAndConditionsWebViewModel(0);
  sub_23867AA94(&qword_27DF12D40, type metadata accessor for BankConnectTermsAndConditionsWebViewModel, &unk_23877C020);
  v7 = sub_23875C490();
  v8 = sub_23875ED80();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);

  v9 = sub_23875ED40();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = MEMORY[0x277D85700];
  v10[4] = v7;
  sub_2386C3BA4(0, 0, v6, &unk_23877C118, v10);

  v11 = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_flowType);

  v12 = MEMORY[0x277D38550];
  if (!v11)
  {
    v12 = MEMORY[0x277D38560];
  }

  v13 = *v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  sub_23875A7E0();
  v15 = sub_23867B330(v3);
  v17 = v16;
  (*(v21 + 8))(v3, v22);
  *(inited + 40) = v15;
  *(inited + 48) = v17;
  v18 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  sub_23844C218(v13, 15, v18);

  return result;
}

double sub_238678690(uint64_t *a1)
{
  v33 = sub_23875C600();
  v32 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v3 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23875A820();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v31[2] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for BankConnectTermsAndConditionsWebViewModel(0);
  sub_23867AA94(&qword_27DF12D40, type metadata accessor for BankConnectTermsAndConditionsWebViewModel, &unk_23877C020);
  v8 = sub_23875C490();
  v31[1] = a1;
  v9 = *(v8 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_flowType);

  v10 = MEMORY[0x277D38550];
  if (!v9)
  {
    v10 = MEMORY[0x277D38560];
  }

  v31[0] = *v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  sub_23875A7E0();
  v12 = sub_23867B330(v7);
  v14 = v13;
  (*(v5 + 8))(v7, v4);
  *(inited + 40) = v12;
  *(inited + 48) = v14;
  v15 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_238763300;
  v17 = *MEMORY[0x277D383D8];
  *(v16 + 32) = *MEMORY[0x277D383D8];
  *(v16 + 40) = sub_23875EA80();
  *(v16 + 48) = v18;
  v19 = *MEMORY[0x277D38390];
  *(v16 + 56) = *MEMORY[0x277D38390];
  *(v16 + 64) = 0x6565726761736964;
  v20 = *MEMORY[0x277D384B8];
  *(v16 + 72) = 0xE800000000000000;
  *(v16 + 80) = v20;
  *(v16 + 88) = 0xD000000000000012;
  *(v16 + 96) = 0x8000000238784F80;
  v21 = v17;
  v22 = v19;
  v23 = v20;
  v24 = sub_23854B138(v16);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v24;
  sub_2385C33E4(v15, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v34);

  v26 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23867AA94(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v27 = sub_23875E910();

  v28 = v26;
  v29 = v31[0];
  [v28 subject:v31[0] sendEvent:v27];

  type metadata accessor for BankConnectTermsAndConditionsWebView(0);
  sub_2384D53C8(v3);
  sub_23875C5F0();
  (*(v32 + 8))(v3, v33);

  return result;
}

double sub_238678BA4(uint64_t *a1)
{
  v51 = sub_23875C600();
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = v42 - v4;
  v5 = sub_23875A820();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875ED50();
  v47 = sub_23875ED40();
  v46 = v9;
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *a1;
  v11 = a1[1];
  v12 = *(a1 + 16);
  v13 = type metadata accessor for BankConnectTermsAndConditionsWebViewModel(0);
  v14 = sub_23867AA94(&qword_27DF12D40, type metadata accessor for BankConnectTermsAndConditionsWebViewModel, &unk_23877C020);
  v45 = v10;
  v44 = v11;
  v43 = v12;
  v42[3] = v13;
  v42[1] = v14;
  LODWORD(v10) = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_flowType);

  v15 = MEMORY[0x277D38550];
  if (!v10)
  {
    v15 = MEMORY[0x277D38560];
  }

  v16 = *v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  sub_23875A7E0();
  v18 = sub_23867B330(v8);
  v42[2] = a1;
  v19 = v18;
  v21 = v20;
  (*(v6 + 8))(v8, v5);
  *(inited + 40) = v19;
  *(inited + 48) = v21;
  v22 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_238763300;
  v24 = *MEMORY[0x277D383D8];
  *(v23 + 32) = *MEMORY[0x277D383D8];
  *(v23 + 40) = sub_23875EA80();
  *(v23 + 48) = v25;
  v26 = *MEMORY[0x277D38390];
  *(v23 + 56) = *MEMORY[0x277D38390];
  *(v23 + 64) = 0x6565726761;
  v27 = *MEMORY[0x277D384B8];
  *(v23 + 72) = 0xE500000000000000;
  *(v23 + 80) = v27;
  *(v23 + 88) = 0xD000000000000012;
  *(v23 + 96) = 0x8000000238784F80;
  v28 = v24;
  v29 = v26;
  v30 = v27;
  v31 = sub_23854B138(v23);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = v31;
  sub_2385C33E4(v22, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v52);

  v33 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23867AA94(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v34 = sub_23875E910();

  [v33 subject:v16 sendEvent:v34];

  v35 = sub_23875C490();
  v36 = sub_23875ED80();
  v37 = v48;
  (*(*(v36 - 8) + 56))(v48, 1, 1, v36);

  v38 = sub_23875ED40();
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = MEMORY[0x277D85700];
  v39[4] = v35;
  sub_2386C3BA4(0, 0, v37, &unk_23877C1E8, v39);

  type metadata accessor for BankConnectTermsAndConditionsWebView(0);
  v40 = v49;
  sub_2384D53C8(v49);
  sub_23875C5F0();
  (*(v50 + 8))(v40, v51);

  return result;
}

void sub_238679224(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8(v7, v8, v9);
  v10 = sub_23875DAA0();
  v12 = v11;
  LOBYTE(v4) = v13;
  v14 = sub_23875DA50();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_2384397FC(v10, v12, v4 & 1);

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
}

uint64_t sub_238679400(uint64_t *a1)
{
  v48 = sub_23875C600();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v45 = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = v40 - v4;
  v5 = sub_23875A820();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v47 = a1;
  LODWORD(a1) = *(a1 + 16);
  v11 = type metadata accessor for BankConnectTermsAndConditionsWebViewModel(0);
  v12 = sub_23867AA94(&qword_27DF12D40, type metadata accessor for BankConnectTermsAndConditionsWebViewModel, &unk_23877C020);
  v43 = v9;
  v42 = v10;
  v41 = a1;
  v40[2] = v11;
  v40[1] = v12;
  LODWORD(a1) = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_flowType);

  v13 = MEMORY[0x277D38550];
  if (!a1)
  {
    v13 = MEMORY[0x277D38560];
  }

  v14 = *v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  sub_23875A7E0();
  v16 = sub_23867B330(v8);
  v18 = v17;
  (*(v6 + 8))(v8, v5);
  *(inited + 40) = v16;
  *(inited + 48) = v18;
  v19 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_238763300;
  v21 = *MEMORY[0x277D383D8];
  *(v20 + 32) = *MEMORY[0x277D383D8];
  *(v20 + 40) = sub_23875EA80();
  *(v20 + 48) = v22;
  v23 = *MEMORY[0x277D38390];
  *(v20 + 56) = *MEMORY[0x277D38390];
  *(v20 + 64) = 1701736292;
  v24 = *MEMORY[0x277D384B8];
  *(v20 + 72) = 0xE400000000000000;
  *(v20 + 80) = v24;
  *(v20 + 88) = 0xD000000000000012;
  *(v20 + 96) = 0x8000000238784F80;
  v25 = v21;
  v26 = v23;
  v27 = v24;
  v28 = sub_23854B138(v20);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = v28;
  sub_2385C33E4(v19, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v49);

  v30 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23867AA94(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
  v31 = sub_23875E910();

  [v30 subject:v14 sendEvent:v31];

  v32 = sub_23875C490();
  v33 = sub_23875ED80();
  v34 = v44;
  (*(*(v33 - 8) + 56))(v44, 1, 1, v33);
  sub_23875ED50();

  v35 = sub_23875ED40();
  v36 = swift_allocObject();
  v37 = MEMORY[0x277D85700];
  v36[2] = v35;
  v36[3] = v37;
  v36[4] = v32;
  sub_2386C3BA4(0, 0, v34, &unk_23877C1F0, v36);

  type metadata accessor for BankConnectTermsAndConditionsWebView(0);
  v38 = v45;
  sub_2384D53C8(v45);
  sub_23875C5F0();
  return (*(v46 + 8))(v38, v48);
}

uint64_t sub_238679A0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12D58, &qword_23877C0A8);
  sub_23867AB00();
  return sub_23875C8F0();
}

id sub_238679A7C()
{
  v1 = v0;
  v2 = sub_23875B940();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875B410();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277CE3858]) init];
  v11 = [objc_allocWithZone(MEMORY[0x277CE3850]) initWithFrame:v10 configuration:{0.0, 0.0, 0.0, 0.0}];
  [v11 setNavigationDelegate_];
  v12 = OBJC_IVAR____TtCV12FinanceKitUIP33_A64F0A24CC9AF1F8A1FFE13B9BBB3DBE25BankConnectWebViewContent11Coordinator_parent;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v12, v2);
  sub_23875B400();
  v13 = sub_23875B3F0();
  (*(v7 + 8))(v9, v6);
  v14 = [v11 loadRequest_];

  v15 = *(v1 + OBJC_IVAR____TtCV12FinanceKitUIP33_A64F0A24CC9AF1F8A1FFE13B9BBB3DBE25BankConnectWebViewContent11Coordinator_initialNavigation);
  *(v1 + OBJC_IVAR____TtCV12FinanceKitUIP33_A64F0A24CC9AF1F8A1FFE13B9BBB3DBE25BankConnectWebViewContent11Coordinator_initialNavigation) = v14;

  return v11;
}

void sub_238679DBC(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a3;
  v11 = a4;
  v13 = a5;
  v12 = a1;
  sub_23867C4E8(a4, v13);
}

uint64_t sub_23867A04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = sub_23875ED50();
  v3[5] = sub_23875ED40();
  v5 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_23867A0E8, v5, v4);
}

uint64_t sub_23867A0E8()
{
  v2 = v0[2];
  v1 = v0[3];

  v0[6] = _Block_copy(v1);
  v3 = v2;
  v0[7] = sub_23875ED40();
  v5 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_23867A194, v5, v4);
}

uint64_t sub_23867A194()
{
  v1 = *(v0 + 16);

  v2 = [v1 navigationType];
  v3 = *(v0 + 16);
  if (v2 == -1)
  {

    v5 = 1;
  }

  else
  {
    v4 = [*(v0 + 16) navigationType];

    v5 = v4 == 3;
  }

  v6 = *(v0 + 48);
  v6[2](v6, v5);
  _Block_release(v6);
  v7 = *(v0 + 8);

  return v7();
}

id sub_23867A2E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectWebViewContent.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23867A390(uint64_t a1, double a2)
{
  result = type metadata accessor for BankConnectWebViewContent(319);
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23867A520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_23867A5B0(uint64_t a1)
{
  if (!qword_27DF12D38)
  {
    type metadata accessor for BankConnectTermsAndConditionsWebViewModel(255);
    sub_23867AA94(&qword_27DF12D40, type metadata accessor for BankConnectTermsAndConditionsWebViewModel, &unk_23877C020);
    v1 = sub_23875C4B0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF12D38);
    }
  }
}

unint64_t sub_23867A648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF12D48;
  if (!qword_27DF12D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12D48);
  }

  return result;
}

id sub_23867A69C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12F10, &qword_23877C280);
  sub_23875D600();
  v0 = sub_238679A7C();

  return v0;
}

void sub_23867A6F4(uint64_t a1)
{
  v2 = v1;
  MEMORY[0x28223BE20](a1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12F10, &qword_23877C280);
  sub_23875D600();
  v5 = v8;
  sub_23867C220(v2, v4, type metadata accessor for BankConnectWebViewContent);
  v6 = OBJC_IVAR____TtCV12FinanceKitUIP33_A64F0A24CC9AF1F8A1FFE13B9BBB3DBE25BankConnectWebViewContent11Coordinator_parent;
  swift_beginAccess();
  sub_23867C2E4(v4, v5 + v6);
  swift_endAccess();
}

uint64_t sub_23867A7D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23867C220(v2, v5, type metadata accessor for BankConnectWebViewContent);
  v6 = type metadata accessor for BankConnectWebViewContent.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtCV12FinanceKitUIP33_A64F0A24CC9AF1F8A1FFE13B9BBB3DBE25BankConnectWebViewContent11Coordinator_initialNavigation] = 0;
  sub_23867C220(v5, &v7[OBJC_IVAR____TtCV12FinanceKitUIP33_A64F0A24CC9AF1F8A1FFE13B9BBB3DBE25BankConnectWebViewContent11Coordinator_parent], type metadata accessor for BankConnectWebViewContent);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = sub_23867C288(v5);
  *a2 = v8;
  return result;
}

uint64_t sub_23867A8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23867AA94(&qword_27DF12F18, type metadata accessor for BankConnectWebViewContent, &unk_23877BF90);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23867A960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23867AA94(&qword_27DF12F18, type metadata accessor for BankConnectWebViewContent, &unk_23877BF90);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23867A9F4(uint64_t a1)
{
  sub_23867AA94(&qword_27DF12F18, type metadata accessor for BankConnectWebViewContent, &unk_23877BF90);
  sub_23875D120();
  __break(1u);
}

uint64_t sub_23867AA94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23867AB00()
{
  result = qword_27DF12D60;
  if (!qword_27DF12D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12D58, &qword_23877C0A8);
    sub_23867AB8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12D60);
  }

  return result;
}

unint64_t sub_23867AB8C()
{
  result = qword_27DF12D68;
  if (!qword_27DF12D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12D70, &qword_23877C0B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12D78, &qword_23877C0B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12D80, &qword_23877C0C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12D88, &qword_23877C0C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12D90, &qword_23877C0D0);
    sub_23843A3E8(&qword_27DF12D98, &qword_27DF12D88, &qword_23877C0C8, MEMORY[0x277CE11A8]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12DA0, &qword_23877C0D8);
    sub_23867AD84();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_2384397A8(OpaqueTypeConformance2, v2, v3);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12D68);
  }

  return result;
}

unint64_t sub_23867AD84()
{
  result = qword_27DF12DA8;
  if (!qword_27DF12DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12DA0, &qword_23877C0D8);
    sub_23867AE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12DA8);
  }

  return result;
}

unint64_t sub_23867AE08()
{
  result = qword_27DF12DB0;
  if (!qword_27DF12DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12DB8, &qword_23877C0E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12DC0, &unk_23877C0E8);
    sub_23843A3E8(&qword_27DF12DC8, &qword_27DF12DC0, &unk_23877C0E8, MEMORY[0x277CDDB60]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12DD0, &qword_2387687F0);
    sub_23843A3E8(&unk_27DF12DD8, &qword_27DF12DD0, &qword_2387687F0, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12DB0);
  }

  return result;
}

uint64_t sub_23867AF88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238449A7C;

  return sub_238674814(a1, v4, v5, v6);
}

void sub_23867B03C(_BYTE *a2@<X8>)
{
  swift_getKeyPath(a0_13);
  swift_getKeyPath(byte_23877C198);
  sub_23875C2D0();

  *a2 = v3;
}

uint64_t sub_23867B0BC(char *a1, uint64_t *a2)
{
  swift_getKeyPath(a0_13);
  swift_getKeyPath(byte_23877C198);

  return sub_23875C2E0();
}

double sub_23867B130()
{
  swift_getKeyPath(aH_13);
  swift_getKeyPath(aH_14);
  sub_23875C2D0();

  return result;
}

uint64_t sub_23867B1AC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_23843981C(a1, &v10 - v7, &qword_27DF0D040, &qword_2387676A0);
  swift_getKeyPath(aH_13);
  swift_getKeyPath(aH_14);
  sub_23843981C(v8, v5, &qword_27DF0D040, &qword_2387676A0);

  sub_23875C2E0();
  return sub_238439884(v8, &qword_27DF0D040, &qword_2387676A0);
}

uint64_t sub_23867B2DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23875CBF0();
  *a1 = result;
  return result;
}

uint64_t sub_23867B330(uint64_t a1)
{
  v2 = sub_23875C1E0();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x28223BE20](v2);
  v38 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23875BC40();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = sub_23875A820();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, v16, v18);

  sub_2387594D0();

  if (v45)
  {
    v21 = swift_dynamicCast();
    (*(v5 + 56))(v15, v21 ^ 1u, 1, v4);
  }

  else
  {
    sub_238439884(v44, &qword_27DF0A4A8, &qword_238767840);
    (*(v5 + 56))(v15, 1, 1, v4);
  }

  sub_23843981C(v15, v12, &qword_27DF12E00, &unk_238763FC0);
  if ((*(v5 + 48))(v12, 1, v4) != 1)
  {
    v37 = v17;
    v23 = v41;
    (*(v5 + 32))(v41, v12, v4);
    sub_23875BBF0();
    sub_23875BAF0();
    v25 = v24;
    v26 = *(v5 + 8);
    v26(v7, v4);
    if (v25 <= 300.0)
    {
      if (!qword_27DF098B0)
      {

        sub_2387594D0();

        if (v45)
        {
          v27 = swift_dynamicCast();
          v28 = v42;
          v29 = v43;
          if (!v27)
          {
            v28 = 0;
            v29 = 0;
          }
        }

        else
        {
          sub_238439884(v44, &qword_27DF0A4A8, &qword_238767840);
          v28 = 0;
          v29 = 0;
        }

        qword_27DF098A8 = v28;
        qword_27DF098B0 = v29;

        if (!qword_27DF098B0)
        {
          v32 = v38;
          sub_23875C120();
          v33 = sub_23875C1B0();
          v34 = sub_23875EFE0();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            *v35 = 0;
            _os_log_impl(&dword_2383F8000, v33, v34, "Failed to retrieve existing Bank Connect analytics session, creating a new one.", v35, 2u);
            MEMORY[0x23EE64DF0](v35, -1, -1);
          }

          (*(v39 + 8))(v32, v40);
          v22 = sub_23867B910(v20);
          v30 = v41;
          goto LABEL_16;
        }
      }

      v22 = qword_27DF098A8;
    }

    else
    {
      v22 = sub_23867B910(v20);
    }

    v30 = v23;
LABEL_16:
    v26(v30, v4);
    v17 = v37;
    goto LABEL_17;
  }

  sub_238439884(v12, &qword_27DF12E00, &unk_238763FC0);
  v22 = sub_23867B910(v20);
LABEL_17:
  (*(v17 + 8))(v20, v16);
  sub_238439884(v15, &qword_27DF12E00, &unk_238763FC0);
  return v22;
}

uint64_t sub_23867B910(uint64_t a1)
{
  v2 = sub_23875BCB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875A820();
  v16 = v6;
  v17 = MEMORY[0x277CC7F70];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, a1, v6);
  sub_23875BCA0();
  v8 = sub_23875BC50();
  v10 = v9;
  (*(v3 + 8))(v5, v2);
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v14 = sub_23875BC40();
  __swift_allocate_boxed_opaque_existential_1(v13);
  sub_23875BBF0();

  sub_2387594C0();

  sub_238439884(v13, &qword_27DF0A4A8, &qword_238767840);
  v14 = MEMORY[0x277D837D0];
  v13[0] = v8;
  v13[1] = v10;

  sub_2387594C0();

  sub_238439884(v13, &qword_27DF0A4A8, &qword_238767840);
  qword_27DF098A8 = v8;
  qword_27DF098B0 = v10;

  __swift_destroy_boxed_opaque_existential_1(v15);
  return v8;
}

uint64_t objectdestroyTm_28()
{
  v1 = (type metadata accessor for BankConnectTermsAndConditionsWebView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (v2 + 16) & ~v2;
  sub_2383FC164(*(v0 + v4), *(v0 + v4 + 8));
  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23875C600();
    (*(*(v6 - 8) + 8))(v0 + v4 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_23867BCCC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for BankConnectTermsAndConditionsWebView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_23867BD40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238449A7C;

  return sub_238674F7C(a1, v4, v5, v6);
}

double sub_23867BE24(uint64_t a1)
{
  v3 = *(type metadata accessor for BankConnectTermsAndConditionsWebView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_238676910(a1, v4);
}

uint64_t sub_23867BE94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23867BEFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E50, &qword_23877C200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23867BF6C()
{
  result = qword_27DF12E88;
  if (!qword_27DF12E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12E78, &qword_23877C228);
    sub_23867BFF8();
    sub_23867C0DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12E88);
  }

  return result;
}

unint64_t sub_23867BFF8()
{
  result = qword_27DF12E90;
  if (!qword_27DF12E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12E80, &unk_23876A2C0);
    sub_23843A3E8(&qword_27DF09690, &qword_27DF12EA0, &qword_238775F70, MEMORY[0x277CDD7F8]);
    sub_23843A3E8(&qword_27DF12EA8, &qword_27DF12EB0, &qword_23877C230, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12E90);
  }

  return result;
}

unint64_t sub_23867C0DC()
{
  result = qword_27DF12EB8;
  if (!qword_27DF12EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12EC0, &qword_23877C238);
    sub_23867C168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12EB8);
  }

  return result;
}

unint64_t sub_23867C168()
{
  result = qword_27DF12EC8;
  if (!qword_27DF12EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF12ED0, &unk_23877C240);
    sub_2384D0E10();
    sub_23843A3E8(&qword_2814F0930, &unk_27DF12F00, &unk_238769090, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12EC8);
  }

  return result;
}

uint64_t sub_23867C220(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23867C288(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectWebViewContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23867C2E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectWebViewContent(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23867C348()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2384494A4;

  return sub_23867A04C(v2, v3, v4);
}

void sub_23867C408(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v3 = *(v1 + OBJC_IVAR____TtCV12FinanceKitUIP33_A64F0A24CC9AF1F8A1FFE13B9BBB3DBE25BankConnectWebViewContent11Coordinator_initialNavigation);
    if (v3)
    {
      v4 = a1;
      sub_23867C5CC();
      v5 = v4;
      v6 = v3;
      LOBYTE(v4) = sub_23875F1B0();

      if (v4)
      {
        v7 = v2 + OBJC_IVAR____TtCV12FinanceKitUIP33_A64F0A24CC9AF1F8A1FFE13B9BBB3DBE25BankConnectWebViewContent11Coordinator_parent;
        swift_beginAccess();
        v8 = *(v7 + *(type metadata accessor for BankConnectWebViewContent(0) + 20));

        v8(0);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_23867C4E8(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = v2;
    v4 = *(v2 + OBJC_IVAR____TtCV12FinanceKitUIP33_A64F0A24CC9AF1F8A1FFE13B9BBB3DBE25BankConnectWebViewContent11Coordinator_initialNavigation);
    if (v4)
    {
      v6 = a1;
      sub_23867C5CC();
      v7 = v6;
      v8 = v4;
      LOBYTE(v6) = sub_23875F1B0();

      if (v6)
      {
        v9 = v3 + OBJC_IVAR____TtCV12FinanceKitUIP33_A64F0A24CC9AF1F8A1FFE13B9BBB3DBE25BankConnectWebViewContent11Coordinator_parent;
        swift_beginAccess();
        v10 = *(v9 + *(type metadata accessor for BankConnectWebViewContent(0) + 20));

        v10(a2);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_23867C5CC()
{
  result = qword_27DF12F20;
  if (!qword_27DF12F20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF12F20);
  }

  return result;
}

uint64_t sub_23867C630@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v13 = *v1;
  type metadata accessor for TransactionTypeTokenProvider(0);

  v12 = sub_238758770();
  v5 = v4;
  v6 = sub_23875E030();
  sub_2384B6AB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2387632F0;
  v8 = sub_238758790();
  v9 = MEMORY[0x277D849A0];
  *(v7 + 56) = MEMORY[0x277D84958];
  *(v7 + 64) = v9;
  *(v7 + 32) = v8;
  v10 = sub_23875EF80();
  a1[2] = v12;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = 0x6163746964657263;
  a1[7] = 1701869908;
  a1[8] = 0xE400000000000000;
  a1[6] = 0xEA00000000006472;
  *a1 = v13;
  a1[1] = v3;
  result = swift_allocObject();
  *(result + 16) = v10;
  a1[9] = &unk_2387654B0;
  a1[10] = result;
  return result;
}

void sub_23867C7A0()
{
  v0 = sub_2387587A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v21 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = v21 - v8;
  v10 = sub_238758780();
  v29 = *(v10 + 16);
  if (v29)
  {
    v28 = v3;
    v11 = 0;
    v26 = v1 + 16;
    v25 = *MEMORY[0x277CC7028];
    v23 = (v1 + 32);
    v24 = v1 + 104;
    v12 = MEMORY[0x277D84F90];
    v21[1] = v1 + 8;
    v22 = v6;
    v27 = v10;
    while (v11 < *(v10 + 16))
    {
      v30 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v13 = *(v1 + 72);
      (*(v1 + 16))(v9, v10 + v30 + v13 * v11, v0);
      (*(v1 + 104))(v6, v25, v0);
      sub_23867CA98();
      v14 = v9;
      v15 = sub_23875E9E0();
      v16 = *(v1 + 8);
      v16(v6, v0);
      if (v15)
      {
        v16(v14, v0);
        v9 = v14;
      }

      else
      {
        v17 = *v23;
        (*v23)(v28, v14, v0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v12;
        v9 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2385FE9E0(0, *(v12 + 16) + 1, 1);
          v9 = v14;
          v12 = v31;
        }

        v20 = *(v12 + 16);
        v19 = *(v12 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_2385FE9E0((v19 > 1), v20 + 1, 1);
          v12 = v31;
        }

        *(v12 + 16) = v20 + 1;
        v17((v12 + v30 + v20 * v13), v28, v0);
        v6 = v22;
      }

      ++v11;
      v10 = v27;
      if (v29 == v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
LABEL_13:

    qword_27DF2F8D8 = v12;
  }
}

unint64_t sub_23867CA98()
{
  result = qword_27DF12F50;
  if (!qword_27DF12F50)
  {
    sub_2387587A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12F50);
  }

  return result;
}

uint64_t sub_23867CAF4(uint64_t a1, uint64_t a2)
{
  v3 = sub_23867CC40(a1, a2);
  v4 = *(v2 + 8);

  return v4(v3);
}

uint64_t type metadata accessor for TransactionTypeTokenProvider(uint64_t a1)
{
  result = qword_27DF12F58;
  if (!qword_27DF12F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23867CBC4(uint64_t a1)
{
  result = sub_2387587A0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23867CC40(uint64_t a1, uint64_t a2)
{
  v78 = type metadata accessor for TransactionTypeTokenProvider(0);
  v74 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v72 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v75 = (&v64 - v6);
  v76 = sub_2387587A0();
  v7 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v71 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v64 - v10;
  *&v77 = a1;
  *(&v77 + 1) = a2;
  if (sub_23875EB40() < 2)
  {
    return MEMORY[0x277D84F90];
  }

  if (qword_27DF08D48 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v12 = qword_27DF2F8D8;
    v13 = v76;
    v70 = *(qword_27DF2F8D8 + 16);
    if (!v70)
    {
      break;
    }

    v14 = 0;
    v68 = v7 + 16;
    v65 = (v7 + 8);
    v67 = (v7 + 32);
    v73 = MEMORY[0x277D84F90];
    v69 = qword_27DF2F8D8;
    v66 = v7;
    while (v14 < *(v12 + 16))
    {
      v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v16 = *(v7 + 72);
      (*(v7 + 16))(v11, v12 + v15 + v16 * v14, v13);
      v17 = v13;
      sub_238758770();
      v18 = sub_23875EAE0();
      v20 = v19;

      *&v79 = v18;
      *(&v79 + 1) = v20;
      v83 = v77;
      sub_2384397A8(v21, v22, v23);
      v81 = sub_23875F240();
      v82 = v24;
      v26 = sub_2384688CC(v81, v24, v25);
      sub_238468920(v26, v27, v28);
      v29 = sub_23875E970();

      if (v29)
      {
        v30 = *v67;
        (*v67)(v71, v11, v17);
        v31 = v73;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v31;
        v84 = v31;
        if (isUniquelyReferenced_nonNull_native)
        {
          v13 = v17;
        }

        else
        {
          sub_2385FE9E0(0, *(v31 + 16) + 1, 1);
          v13 = v76;
          v33 = v84;
        }

        v7 = v66;
        v35 = *(v33 + 16);
        v34 = *(v33 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_2385FE9E0((v34 > 1), v35 + 1, 1);
          v13 = v76;
          v33 = v84;
        }

        *(v33 + 16) = v35 + 1;
        v73 = v33;
        v30((v33 + v15 + v35 * v16), v71, v13);
      }

      else
      {
        (*v65)(v11, v17);
        v13 = v17;
        v7 = v66;
      }

      ++v14;
      v12 = v69;
      if (v70 == v14)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

  v73 = MEMORY[0x277D84F90];
LABEL_16:
  v36 = *(v73 + 16);
  if (v36)
  {
    v37 = v73;
    *&v83 = MEMORY[0x277D84F90];
    sub_2385FEA24(0, v36, 0);
    v38 = v83;
    v41 = *(v7 + 16);
    v40 = v7 + 16;
    v39 = v41;
    v42 = v37 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v43 = *(v40 + 56);
    v44 = v75;
    do
    {
      v45 = v39(v44 + *(v78 + 20), v42, v76);
      v79 = v77;
      sub_2384397A8(v45, v46, v47);
      v48 = sub_23875F250();
      v44 = v75;
      *v75 = v48;
      *(v44 + 8) = v49;
      *&v83 = v38;
      v51 = *(v38 + 16);
      v50 = *(v38 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_2385FEA24((v50 > 1), v51 + 1, 1);
        v44 = v75;
        v38 = v83;
      }

      *(v38 + 16) = v51 + 1;
      sub_23867D294(v44, v38 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v51);
      v42 += v43;
      --v36;
    }

    while (v36);

    v52 = *(v38 + 16);
    if (v52)
    {
      goto LABEL_22;
    }

    goto LABEL_28;
  }

  v38 = MEMORY[0x277D84F90];
  v52 = *(MEMORY[0x277D84F90] + 16);
  if (!v52)
  {
LABEL_28:

    return MEMORY[0x277D84F90];
  }

LABEL_22:
  *&v83 = MEMORY[0x277D84F90];
  sub_2385FE78C(0, v52, 0);
  v53 = v83;
  v54 = v38 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
  v55 = *(v74 + 72);
  do
  {
    v56 = v72;
    sub_23867D2F8(v54, v72);
    *&v80[8] = v78;
    *&v80[16] = &off_284B2E950;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v79);
    sub_23867D294(v56, boxed_opaque_existential_1);
    v80[24] = 1;
    *&v83 = v53;
    v59 = *(v53 + 16);
    v58 = *(v53 + 24);
    if (v59 >= v58 >> 1)
    {
      sub_2385FE78C((v58 > 1), v59 + 1, 1);
      v53 = v83;
    }

    *(v53 + 16) = v59 + 1;
    v60 = (v53 + 48 * v59);
    v61 = v79;
    v62 = *v80;
    *(v60 + 57) = *&v80[9];
    v60[2] = v61;
    v60[3] = v62;
    v54 += v55;
    --v52;
  }

  while (v52);

  return v53;
}

uint64_t sub_23867D294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionTypeTokenProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23867D2F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionTypeTokenProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OrderNavigationModel.navigateToOrder(with:fulfillmentIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12BD0, &unk_238777400);
  v7 = *(type metadata accessor for OrderNavigationDestination(0) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2387632F0;
  v10 = v9 + v8;
  v11 = sub_23875A710();
  (*(*(v11 - 8) + 16))(v10, a1, v11);
  v12 = (v10 + *(type metadata accessor for FetchedOrderDetailsDestination(0) + 20));
  *v12 = a2;
  v12[1] = a3;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath(byte_23877C2F8);
  swift_getKeyPath(byte_23877C320);

  v13 = v3;
  return sub_23875C2E0();
}

Swift::Void __swiftcall OrderNavigationModel.navigateToDashboard()()
{
  swift_getKeyPath(byte_23877C2F8);
  swift_getKeyPath(byte_23877C320);
  v1 = v0;
  sub_23875C2E0();
}

Swift::Void __swiftcall OrderNavigationModel.navigateToExtractedOrder(trackedOrderIdentifier:fulfillmentIdentifier:)(Swift::String trackedOrderIdentifier, Swift::String_optional fulfillmentIdentifier)
{
  object = fulfillmentIdentifier.value._object;
  countAndFlagsBits = fulfillmentIdentifier.value._countAndFlagsBits;
  v5 = trackedOrderIdentifier._object;
  v6 = trackedOrderIdentifier._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12BD0, &unk_238777400);
  v7 = *(type metadata accessor for OrderNavigationDestination(0) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2387632F0;
  v10 = (v9 + v8);
  *v10 = v6;
  v10[1] = v5;
  v10[2] = countAndFlagsBits;
  v10[3] = object;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath(byte_23877C2F8);
  swift_getKeyPath(byte_23877C320);

  v11 = v2;

  sub_23875C2E0();
}

uint64_t OrderNavigationModel.navigate(to:fulfillmentIdentifier:sourceApplication:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12BD0, &unk_238777400);
  v11 = *(type metadata accessor for OrderNavigationDestination(0) - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2387632F0;
  v14 = (v13 + v12);
  *v14 = a1;
  v14[1] = a2;
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath(byte_23877C2F8);
  swift_getKeyPath(byte_23877C320);

  v15 = a1;
  v16 = v5;

  return sub_23875C2E0();
}

uint64_t OrderNavigationModel.navigate(to:returnIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875A710();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12BD0, &unk_238777400);
  v10 = *(type metadata accessor for OrderNavigationDestination(0) - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2387632F0;
  v13 = v12 + v11;
  sub_238757D40();
  (*(v7 + 32))(v13, v9, v6);
  v14 = (v13 + *(type metadata accessor for ReturnDetailsDestination(0) + 20));
  *v14 = a2;
  v14[1] = a3;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath(byte_23877C2F8);
  swift_getKeyPath(byte_23877C320);
  v17[1] = v12;

  v15 = v3;
  return sub_23875C2E0();
}

uint64_t OrderNavigationModel.path.getter()
{
  swift_getKeyPath(byte_23877C2F8);
  swift_getKeyPath(byte_23877C320);
  sub_23875C2D0();

  return v1;
}

void sub_23867DA8C(void *a2@<X8>)
{
  swift_getKeyPath(byte_23877C2F8);
  swift_getKeyPath(byte_23877C320);
  sub_23875C2D0();

  *a2 = v3;
}

uint64_t sub_23867DB0C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath(byte_23877C2F8);
  swift_getKeyPath(byte_23877C320);

  v3 = v2;
  return sub_23875C2E0();
}

uint64_t OrderNavigationModel.path.setter(uint64_t a1)
{
  swift_getKeyPath(byte_23877C2F8);
  swift_getKeyPath(byte_23877C320);
  v2 = v1;
  return sub_23875C2E0();
}

uint64_t EnvironmentValues.orderNavigation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_238672904(a1, a2, a3);
  sub_23875CDC0();
  return v4;
}

void (*OrderNavigationModel.path.modify(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = swift_getKeyPath(byte_23877C2F8);
  *(v3 + 40) = swift_getKeyPath(byte_23877C320);
  *(v3 + 48) = sub_23875C2C0();
  return sub_2386608B0;
}

uint64_t OrderNavigationModel.$path.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12F98, &qword_23877C340);
  sub_23875C2A0();
  return swift_endAccess();
}

uint64_t sub_23867DD80(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12F98, &qword_23877C340);
  sub_23875C2A0();
  return swift_endAccess();
}

uint64_t sub_23867DDF8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12FA0, &qword_23877C348);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12F98, &qword_23877C340);
  sub_23875C2B0();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t OrderNavigationModel.$path.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12FA0, &qword_23877C348);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12F98, &qword_23877C340);
  sub_23875C2B0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*OrderNavigationModel.$path.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12FA0, &qword_23877C348);
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

  v10 = OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel__path;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12F98, &qword_23877C340);
  sub_23875C2A0();
  swift_endAccess();
  return sub_238660E30;
}

char *sub_23867E224()
{
  ObjectType = swift_getObjectType();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13048, &qword_23877C450);
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v2 = &ObjectType - v1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13050, &qword_23877C458);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &ObjectType - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12FA0, &qword_23877C348);
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &ObjectType - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12F98, &qword_23877C340);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &ObjectType - v10;
  v12 = OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel__path;
  v13 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12A50, &qword_23877B9A8);
  sub_23875C290();
  (*(v9 + 32))(&v0[v12], v11, v8);
  *&v0[OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel_context] = 0;
  *&v0[OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel_fetchController] = 0;
  if (v13 >> 62 && sub_23875F3A0())
  {
    v14 = sub_23844CE88(MEMORY[0x277D84F90]);
  }

  else
  {
    v14 = MEMORY[0x277D84FA0];
  }

  *&v0[OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel_cancellableSet] = v14;
  v33.receiver = v0;
  v33.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v33, sel_init, ObjectType);
  swift_beginAccess();
  v16 = v15;
  sub_23875C2A0();
  swift_endAccess();
  v31 = 0;
  v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13058, &qword_23877C460);
  sub_23843A3E8(&qword_27DF13060, &qword_27DF12FA0, &qword_23877C348, MEMORY[0x277CBCEC8]);
  v17 = v26;
  sub_23875C330();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13068, &qword_23877C468);
  sub_23843A3E8(&qword_27DF13070, &qword_27DF13048, &qword_23877C450, MEMORY[0x277CBCC28]);
  v18 = v30;
  sub_23875C310();
  (*(v28 + 8))(v2, v18);
  sub_23843A3E8(&qword_27DF13078, &qword_27DF13050, &qword_23877C458, MEMORY[0x277CBCB10]);
  v19 = v29;
  v20 = sub_23875C300();
  (*(v27 + 8))(v4, v19);
  (*(v25 + 8))(v7, v17);
  v31 = v20;
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_238681590;
  *(v22 + 24) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13080, qword_23877C470);
  sub_23843A3E8(&qword_27DF13088, &qword_27DF13080, qword_23877C470, MEMORY[0x277CBCD90]);
  sub_23875C360();

  swift_beginAccess();
  sub_23875C210();
  swift_endAccess();

  return v16;
}

double sub_23867E818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_23867E930(a2);
  }

  if (a1 && (swift_beginAccess(), (v7 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v8 = v7;
    sub_23868009C(a1, a2);
  }

  else
  {
  }

  return result;
}

void sub_23867E930(uint64_t a1)
{
  v2 = v1;
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = sub_23875C1E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel_context);
  if (!v9)
  {
    return;
  }

  if (*(a1 + 16))
  {
    v10 = v6;
    sub_238759C20();
    v11 = v9;
    v27 = sub_238759C00();
    v12 = sub_23867F9D0(a1);
    [v27 setPredicate_];

    sub_238449184(0, &qword_27DF09960, 0x277CCAC98);
    v13 = sub_23875EC60();
    [v27 setSortDescriptors_];

    v14 = objc_allocWithZone(MEMORY[0x277CBE430]);
    v15 = [v14 initWithFetchRequest:v27 managedObjectContext:v11 sectionNameKeyPath:0 cacheName:0];
    v16 = OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel_fetchController;
    v17 = *(v2 + OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel_fetchController);
    *(v2 + OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel_fetchController) = v15;

    v18 = *(v2 + v16);
    if (v18)
    {
      [v18 setDelegate_];
      v19 = *(v2 + v16);
      if (v19)
      {
        v28[0] = 0;
        if ([v19 performFetch_])
        {
          v20 = v28[0];
        }

        else
        {
          v22 = v28[0];
          v23 = sub_23875B730();

          swift_willThrow();
          sub_23875C180();
          v24 = sub_23875C1B0();
          v25 = sub_23875EFE0();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 0;
            _os_log_impl(&dword_2383F8000, v24, v25, "Failed to fetch updates for order", v26, 2u);
            MEMORY[0x23EE64DF0](v26, -1, -1);
          }

          else
          {
          }

          (*(v5 + 8))(v8, v10);
        }

        return;
      }
    }

    v21 = v27;
  }

  else
  {
    v21 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel_fetchController);
    *(v1 + OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel_fetchController) = 0;
  }
}

id OrderNavigationModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23867EE10@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_23875C260();
  *a2 = result;
  return result;
}

uint64_t sub_23867EE64(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v29 = type metadata accessor for OrderPaymentDestination(0);
  MEMORY[0x28223BE20](v29);
  v30 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ReturnDetailsDestination(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FetchedOrderDetailsDestination(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23875A710();
  v28 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OrderNavigationDestination(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23875ED50();
  v32 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238672958(a1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v21 = v33;
    if (EnumCaseMultiPayload == 3)
    {
      sub_238681720(v15, v6, type metadata accessor for ReturnDetailsDestination);
      sub_238757DF0();
      v18 = sub_238757DD0();
      v19 = type metadata accessor for ReturnDetailsDestination;
      v20 = v6;
LABEL_16:
      sub_238681638(v20, v19);

      return v18 & 1;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v22 = v30;
      sub_238681720(v15, v30, type metadata accessor for OrderPaymentDestination);
      v18 = sub_238757DF0();
      v23 = sub_238757DD0();
      if (!v21)
      {
        v18 = v23;
      }

      sub_238681638(v22, type metadata accessor for OrderPaymentDestination);
    }

    else
    {

      v18 = 1;
    }
  }

  else
  {
    v17 = v33;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_238759480();
        v18 = sub_238759430();

        return v18 & 1;
      }

      sub_238681720(v15, v9, type metadata accessor for FetchedOrderDetailsDestination);
      sub_238757DF0();
      v18 = sub_238757DD0();
      v19 = type metadata accessor for FetchedOrderDetailsDestination;
      v20 = v9;
      goto LABEL_16;
    }

    v24 = *v15;
    sub_238757D40();
    v18 = sub_238757DF0();
    v25 = sub_238757DD0();
    if (!v17)
    {
      v18 = v25;
    }

    (*(v28 + 8))(v12, v10);
  }

  return v18 & 1;
}

id sub_23867F628()
{
  result = [objc_allocWithZone(type metadata accessor for OrderNavigationModel(0)) init];
  qword_27DF12F70 = result;
  return result;
}

id sub_23867F65C()
{
  if (qword_27DF08D50 != -1)
  {
    swift_once();
  }

  v1 = qword_27DF12F70;
  qword_27DF12F78 = qword_27DF12F70;

  return v1;
}

id static OrderNavigationKey.defaultValue.getter()
{
  if (qword_27DF08D58 != -1)
  {
    swift_once();
  }

  v1 = qword_27DF12F78;

  return v1;
}

void sub_23867F71C(void *a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27DF08D58 != -1)
  {
    swift_once();
  }

  v2 = qword_27DF12F78;

  *a1 = v2;
}

uint64_t sub_23867F7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2386816D8(qword_27DF130C0, type metadata accessor for OrderNavigationModel, MEMORY[0x277D85380]);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.orderNavigation.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  a1[2] = v3;
  a1[3] = sub_238672904(a1, a2, a3);
  sub_23875CDC0();
  return sub_23867F8DC;
}

void sub_23867F8DC(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  if (a2)
  {
    v4 = v2;
    sub_23875CDD0();
    v5 = *a1;
  }

  else
  {
    sub_23875CDD0();
  }
}

double sub_23867F970@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  if (v4)
  {
  }

  *a3 = v4;
  a3[1] = v5;

  return result;
}

double sub_23867F9B8@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2)
  {
    v4 = *a1;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  a2[1] = v2;
  return sub_238681698(v3, v2);
}

id sub_23867F9D0(uint64_t a1)
{
  v44 = type metadata accessor for OrderPaymentDestination(0);
  MEMORY[0x28223BE20](v44);
  v43 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ReturnDetailsDestination(0);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FetchedOrderDetailsDestination(0);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_23875A710();
  v7 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for OrderNavigationDestination(0);
  v9 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v15 = *(a1 + 16);
  if (v15)
  {
    v49 = MEMORY[0x277D84F90];
    sub_23875F4E0();
    v16 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v17 = *(v9 + 72);
    v37 = "dashboardItemMonth.year = %d";
    v38 = "year == %d AND month < %d";
    v35 = (v7 + 8);
    v36 = "dashboardItemMonth.month = %d";
    v34 = xmmword_2387632E0;
    v46 = xmmword_2387632F0;
    v47 = v17;
    do
    {
      sub_238672958(v16, v14);
      sub_238672958(v14, v11);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          v18 = v42;
          sub_238681720(v11, v42, type metadata accessor for ReturnDetailsDestination);
          sub_238759C20();
          MEMORY[0x23EE5E690](v18);
          v19 = type metadata accessor for ReturnDetailsDestination;
        }

        else
        {
          if (EnumCaseMultiPayload != 4)
          {
            v23 = *v11;
            v45 = v11[1];
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
            v24 = swift_allocObject();
            *(v24 + 16) = v34;
            sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
            v25 = swift_allocObject();
            *(v25 + 16) = v46;
            v26 = MEMORY[0x277D84958];
            *(v25 + 56) = MEMORY[0x277D84958];
            v27 = MEMORY[0x277D849A0];
            *(v25 + 64) = MEMORY[0x277D849A0];
            *(v25 + 32) = v23;
            *(v24 + 32) = sub_23875EF80();
            v28 = swift_allocObject();
            *(v28 + 16) = v46;
            *(v28 + 56) = v26;
            *(v28 + 64) = v27;
            *(v28 + 32) = v45;
            v17 = v47;
            *(v24 + 40) = sub_23875EF80();
            *(v24 + 48) = sub_23875EF80();
            v29 = sub_23875EC60();

            v30 = [objc_opt_self() andPredicateWithSubpredicates_];

            goto LABEL_5;
          }

          v18 = v43;
          sub_238681720(v11, v43, type metadata accessor for OrderPaymentDestination);
          sub_238759C20();
          MEMORY[0x23EE5E690](v18 + *(v44 + 20));
          v19 = type metadata accessor for OrderPaymentDestination;
        }
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          v21 = *v11;
          sub_238759C20();
          v22 = v39;
          sub_238757D40();
          MEMORY[0x23EE5E690](v22);

          v17 = v47;
          (*v35)(v22, v40);
          goto LABEL_5;
        }

        if (EnumCaseMultiPayload != 1)
        {
          sub_238759C20();
          sub_238759BC0();

          goto LABEL_5;
        }

        v18 = v41;
        sub_238681720(v11, v41, type metadata accessor for FetchedOrderDetailsDestination);
        sub_238759C20();
        MEMORY[0x23EE5E690](v18);
        v19 = type metadata accessor for FetchedOrderDetailsDestination;
      }

      sub_238681638(v18, v19);
LABEL_5:
      sub_238681638(v14, type metadata accessor for OrderNavigationDestination);
      sub_23875F4C0();
      sub_23875F4F0();
      sub_23875F500();
      sub_23875F4D0();
      v16 += v17;
      --v15;
    }

    while (v15);
  }

  sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
  v31 = sub_23875EC60();

  v32 = [objc_opt_self() orPredicateWithSubpredicates_];

  return v32;
}

void sub_23868009C(uint64_t a1, uint64_t a2)
{
  v108 = type metadata accessor for OrderNavigationDestination(0);
  v4 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v107 = &v104 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v104 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  MEMORY[0x28223BE20](v11 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v104 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v104 - v16;
  v21 = MEMORY[0x28223BE20](v18);
  v22 = &v104 - v19;
  v23 = *(a1 + 16);
  v24 = *(a2 + 16);
  if (!v23)
  {
    if (!v24)
    {
      (*(v4 + 56))(&v104 - v19, 1, 1, v108, v21);
      sub_238439884(v22, &unk_27DF13090, &qword_23876C690);
      return;
    }

    sub_238672958(a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * (v24 - 1), &v104 - v19);
    (*(v4 + 56))(v22, 0, 1, v108);
    sub_2386815C8(v22, v17);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      v42 = sub_23854B138(MEMORY[0x277D84F90]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_238763300;
      v44 = *MEMORY[0x277D383D8];
      *(inited + 32) = *MEMORY[0x277D383D8];
      *(inited + 40) = sub_23875EA80();
      *(inited + 48) = v82;
      v46 = *MEMORY[0x277D38390];
      v47 = 0x8000000238785D10;
      *(inited + 56) = *MEMORY[0x277D38390];
      *(inited + 64) = 0xD000000000000013;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v64 = v17;
        goto LABEL_26;
      }

      sub_238681638(v17, type metadata accessor for OrderNavigationDestination);
      v42 = sub_23854B138(MEMORY[0x277D84F90]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_238763300;
      v44 = *MEMORY[0x277D383D8];
      *(inited + 32) = *MEMORY[0x277D383D8];
      *(inited + 40) = sub_23875EA80();
      *(inited + 48) = v45;
      v46 = *MEMORY[0x277D38390];
      *(inited + 56) = *MEMORY[0x277D38390];
      *(inited + 64) = 0x6C6954726564726FLL;
      v47 = 0xE900000000000065;
    }

    v83 = *MEMORY[0x277D384B8];
    *(inited + 72) = v47;
    *(inited + 80) = v83;
    strcpy((inited + 88), "orderDashboard");
    *(inited + 103) = -18;
    v84 = v44;
    v85 = v46;
    v86 = v83;
    v87 = sub_23854B138(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
    swift_arrayDestroy();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109 = v87;
    sub_2385C33E4(v42, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v109);

    v89 = *MEMORY[0x277D38548];
    v90 = objc_opt_self();
    type metadata accessor for PKAnalyticsKey(0);
    sub_2386816D8(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
    v91 = sub_23875E910();

    [v90 subject:v89 sendEvent:v91];

    return;
  }

  v105 = v20;
  if (v23 < v24)
  {
    v104 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v25 = *(v4 + 72);
    sub_238672958(a1 + v104 + v25 * (v23 - 1), v10);
    v26 = swift_getEnumCaseMultiPayload();
    sub_238681638(v10, type metadata accessor for OrderNavigationDestination);
    if (!v26)
    {
      sub_238672958(a2 + v104 + v25 * (v24 - 1), v14);
      (*(v4 + 56))(v14, 0, 1, v108);
      v65 = v105;
      sub_2386815C8(v14, v105);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v66 = sub_23854B138(MEMORY[0x277D84F90]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
        v67 = swift_initStackObject();
        *(v67 + 16) = xmmword_238763300;
        v68 = *MEMORY[0x277D383D8];
        *(v67 + 32) = *MEMORY[0x277D383D8];
        v69 = sub_23875EA80();
        v70 = MEMORY[0x277D38390];
        *(v67 + 40) = v69;
        *(v67 + 48) = v71;
        v72 = *v70;
        *(v67 + 56) = *v70;
        *(v67 + 64) = 0xD000000000000012;
        v73 = *MEMORY[0x277D384B8];
        *(v67 + 72) = 0x8000000238784F20;
        *(v67 + 80) = v73;
        strcpy((v67 + 88), "orderDetails");
        *(v67 + 101) = 0;
        *(v67 + 102) = -5120;
        v74 = v68;
        v75 = v72;
        v76 = v73;
        v77 = sub_23854B138(v67);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
        swift_arrayDestroy();
        v78 = swift_isUniquelyReferenced_nonNull_native();
        v109 = v77;
        sub_2385C33E4(v66, sub_2386E31DC, 0, v78, &v109);

        v79 = *MEMORY[0x277D38548];
        v80 = objc_opt_self();
        type metadata accessor for PKAnalyticsKey(0);
        sub_2386816D8(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
        v81 = sub_23875E910();

        [v80 subject:v79 sendEvent:v81];

        v64 = v105;
      }

      else
      {
        v64 = v65;
      }

      goto LABEL_26;
    }
  }

  if (v24 >= v23)
  {
    return;
  }

  v27 = v107;
  sub_238672958(a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * (v23 - 1), v107);
  v28 = v106;
  sub_238672958(v27, v106);
  v29 = swift_getEnumCaseMultiPayload();
  if (v29 <= 2)
  {
    if (v29 >= 2)
    {
      sub_238681638(v28, type metadata accessor for OrderNavigationDestination);
      v30 = sub_23854B138(MEMORY[0x277D84F90]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
      v92 = swift_initStackObject();
      *(v92 + 16) = xmmword_238763300;
      v93 = *MEMORY[0x277D383D8];
      *(v92 + 32) = *MEMORY[0x277D383D8];
      *(v92 + 40) = sub_23875EA80();
      *(v92 + 48) = v94;
      v95 = *MEMORY[0x277D38390];
      *(v92 + 56) = *MEMORY[0x277D38390];
      *(v92 + 64) = 1801675106;
      v96 = *MEMORY[0x277D384B8];
      *(v92 + 72) = 0xE400000000000000;
      *(v92 + 80) = v96;
      *(v92 + 88) = 0xD000000000000015;
      *(v92 + 96) = 0x80000002387850E0;
      v97 = v93;
      v98 = v95;
      v99 = v96;
      v100 = sub_23854B138(v92);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
      swift_arrayDestroy();
      v40 = swift_isUniquelyReferenced_nonNull_native();
      v109 = v100;
    }

    else
    {
      sub_238681638(v28, type metadata accessor for OrderNavigationDestination);
      v30 = sub_23854B138(MEMORY[0x277D84F90]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
      v31 = swift_initStackObject();
      *(v31 + 16) = xmmword_238763300;
      v32 = *MEMORY[0x277D383D8];
      *(v31 + 32) = *MEMORY[0x277D383D8];
      *(v31 + 40) = sub_23875EA80();
      *(v31 + 48) = v33;
      v34 = *MEMORY[0x277D38390];
      *(v31 + 56) = *MEMORY[0x277D38390];
      *(v31 + 64) = 1801675106;
      v35 = *MEMORY[0x277D384B8];
      *(v31 + 72) = 0xE400000000000000;
      *(v31 + 80) = v35;
      strcpy((v31 + 88), "orderDetails");
      *(v31 + 101) = 0;
      *(v31 + 102) = -5120;
      v36 = v32;
      v37 = v34;
      v38 = v35;
      v39 = sub_23854B138(v31);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
      swift_arrayDestroy();
      v40 = swift_isUniquelyReferenced_nonNull_native();
      v109 = v39;
    }

    sub_2385C33E4(v30, sub_2386E31DC, 0, v40, &v109);

    v101 = *MEMORY[0x277D38548];
    v102 = objc_opt_self();
    type metadata accessor for PKAnalyticsKey(0);
    sub_2386816D8(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
    v103 = sub_23875E910();

    [v102 subject:v101 sendEvent:v103];

    goto LABEL_25;
  }

  if (v29 != 3)
  {
    if (v29 != 4)
    {
LABEL_25:
      v64 = v27;
      goto LABEL_26;
    }

    v48 = sub_23854B138(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
    v49 = swift_initStackObject();
    *(v49 + 16) = xmmword_238763300;
    v50 = *MEMORY[0x277D383D8];
    *(v49 + 32) = *MEMORY[0x277D383D8];
    v51 = sub_23875EA80();
    v52 = MEMORY[0x277D38390];
    *(v49 + 40) = v51;
    *(v49 + 48) = v53;
    v54 = *v52;
    *(v49 + 56) = *v52;
    *(v49 + 64) = 1801675106;
    v55 = *MEMORY[0x277D384B8];
    *(v49 + 72) = 0xE400000000000000;
    *(v49 + 80) = v55;
    *(v49 + 88) = 0xD000000000000012;
    *(v49 + 96) = 0x8000000238784F20;
    v56 = v50;
    v57 = v54;
    v58 = v55;
    v59 = sub_23854B138(v49);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
    swift_arrayDestroy();
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v109 = v59;
    sub_2385C33E4(v48, sub_2386E31DC, 0, v60, &v109);

    v61 = *MEMORY[0x277D38548];
    v62 = objc_opt_self();
    type metadata accessor for PKAnalyticsKey(0);
    sub_2386816D8(&qword_27DF09090, type metadata accessor for PKAnalyticsKey, &unk_238762110);
    v63 = sub_23875E910();

    [v62 subject:v61 sendEvent:v63];
  }

  sub_238681638(v27, type metadata accessor for OrderNavigationDestination);
  v64 = v28;
LABEL_26:
  sub_238681638(v64, type metadata accessor for OrderNavigationDestination);
}

void sub_238680E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23875C1E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OrderNavigationDestination(0) - 8;
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  v17 = *&v3[OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel_context];
  if (v17)
  {
    v18 = a3 == 2;
  }

  else
  {
    v18 = 0;
  }

  if (!v18)
  {
    return;
  }

  v39 = v14;
  sub_238453DB4(a1, &v41);
  sub_238759C20();
  v19 = v17;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:

    return;
  }

  v20 = *&v3[OBJC_IVAR____TtC12FinanceKitUI20OrderNavigationModel_fetchController];
  if (!v20)
  {
    goto LABEL_26;
  }

  v21 = [v20 fetchedObjects];
  if (!v21)
  {
    goto LABEL_26;
  }

  v22 = v21;
  v23 = sub_23875EC80();

  if (v23 >> 62)
  {
    goto LABEL_25;
  }

  v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v24)
  {
LABEL_26:
    swift_getKeyPath(byte_23877C2F8, v32, v33, v34);
    swift_getKeyPath(byte_23877C320);
    v41 = MEMORY[0x277D84F90];
    v31 = v3;
    sub_23875C2E0();
    goto LABEL_27;
  }

  while (1)
  {
    v38 = v19;
    swift_getKeyPath(byte_23877C2F8, v32, v33, v34);
    swift_getKeyPath(byte_23877C320);
    sub_23875C2D0();

    v25 = v41;
    v37 = *(v41 + 2);
    if (!v37)
    {
      break;
    }

    v32 = v9;
    v33 = v7;
    v34 = v6;
    v19 = 0;
    v9 = MEMORY[0x277D84F90];
    v35 = v3;
    v36 = v41;
    while (v19 < *(v25 + 2))
    {
      v26 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v6 = *(v39 + 72);
      sub_238672958(&v25[v26 + v6 * v19], v16);
      if ((sub_23867EE64(v16, v38) & 1) == 0)
      {
        sub_238681638(v16, type metadata accessor for OrderNavigationDestination);
        goto LABEL_23;
      }

      sub_238681720(v16, v12, type metadata accessor for OrderNavigationDestination);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2385FEF5C(0, *(v9 + 2) + 1, 1);
        v3 = v35;
        v9 = v41;
      }

      v7 = *(v9 + 2);
      v28 = *(v9 + 3);
      if (v7 >= v28 >> 1)
      {
        sub_2385FEF5C((v28 > 1), v7 + 1, 1);
        v3 = v35;
        v9 = v41;
      }

      ++v19;
      *(v9 + 2) = v7 + 1;
      sub_238681720(v12, &v9[v26 + v7 * v6], type metadata accessor for OrderNavigationDestination);
      v25 = v36;
      if (v37 == v19)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    v30 = sub_23875F3A0();

    if (!v30)
    {
      goto LABEL_26;
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_23:

  swift_getKeyPath(byte_23877C2F8);
  swift_getKeyPath(byte_23877C320);
  v41 = v9;
  v29 = v3;
  sub_23875C2E0();
}

uint64_t type metadata accessor for OrderNavigationModel(uint64_t a1)
{
  result = qword_27DF12FC0;
  if (!qword_27DF12FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238681474(uint64_t a1)
{
  sub_23868151C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23868151C(uint64_t a1)
{
  if (!qword_27DF12FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12A50, &qword_23877B9A8);
    v1 = sub_23875C2F0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF12FD0);
    }
  }
}

uint64_t sub_2386815C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238681638(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_238681698(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2386816D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_238681720(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_238681788(uint64_t a1)
{
  result = sub_23875F1F0();
  if (v2 <= 0x3F)
  {
    result = sub_23875BED0();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23868187C@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v29 = a4;
  v28 = a1;
  v25 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v6, v19);
  v23 = 1;
  if ((*(v14 + 48))(v21, 1, v13) != 1)
  {
    (*(v14 + 32))(v17, v21, v13);
    v28(v17, v11);
    (*(v14 + 8))(v17, v13);
    if (v7)
    {
      return (*(v25 + 32))(v26, v11, a3);
    }

    v23 = 0;
  }

  return (*(*(v29 - 8) + 56))(a6, v23, 1);
}

uint64_t sub_238681B24@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v47 = *v1;
  v4 = *(v47 + 88);
  v49 = sub_23875F1F0();
  v5 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  v13 = *(v4 - 8);
  MEMORY[0x28223BE20](v14);
  v46 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  sub_238681F98(v12);
  v19 = *(v13 + 48);
  if (v19(v12, 1, v4) == 1)
  {
    v45 = a1;
    v20 = v12;
    v21 = v49;
    v42 = *(v5 + 8);
    v42(v20, v49);
    v22 = *(*v1 + 112);
    swift_beginAccess();
    v43 = v22;
    v44 = v5;
    v24 = *(v5 + 16);
    v23 = (v5 + 16);
    v25 = v21;
    v26 = v24;
    v24(v9, &v1[v22], v25);
    if (v19(v9, 1, v4) == 1)
    {
      v27 = v49;
      v28 = (v42)(v9, v49);
      v29 = *(*v1 + 120);
      v46 = v23;
      v50 = *&v1[v29];
      v30 = v50;
      *&v31 = MEMORY[0x28223BE20](v28);
      *(&v41 - 4) = *(v47 + 80);
      *(&v41 - 3) = v4;
      *(&v41 - 1) = v31;
      sub_23875F1F0();
      v32 = v30;
      v33 = v48;
      sub_23868187C(sub_238682548, (&v41 - 6), MEMORY[0x277D84A98], v4, v34, v48);

      v35 = v43;
      swift_beginAccess();
      (*(v44 + 40))(&v2[v35], v33, v27);
      swift_endAccess();
      return v26(v45, &v2[v35], v27);
    }

    else
    {
      v38 = *(v13 + 32);
      v39 = v46;
      v38(v46, v9, v4);
      v40 = v45;
      v38(v45, v39, v4);
      return (*(v13 + 56))(v40, 0, 1, v4);
    }
  }

  else
  {
    v37 = *(v13 + 32);
    v37(v18, v12, v4);
    v37(a1, v18, v4);
    return (*(v13 + 56))(a1, 0, 1, v4);
  }
}

uint64_t sub_238681F98@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v10[0] = *(*v1 + 80);
  v10[1] = *(v3 + 88);
  KeyPath = swift_getKeyPath(byte_23877C528, v10);
  sub_2386820CC(KeyPath, v5, v6);

  v7 = *(*v1 + 104);
  swift_beginAccess();
  v8 = sub_23875F1F0();
  return (*(*(v8 - 8) + 16))(a1, v1 + v7, v8);
}

uint64_t sub_23868216C(char *a1, uint64_t a2)
{
  v4 = *(*a1 + 104);
  swift_beginAccess();
  v5 = sub_23875F1F0();
  (*(*(v5 - 8) + 24))(&a1[v4], a2, v5);
  return swift_endAccess();
}

char *sub_23868230C()
{

  v1 = *(*v0 + 104);
  v2 = sub_23875F1F0();
  v3 = *(*(v2 - 8) + 8);
  v3(&v0[v1], v2);
  v3(&v0[*(*v0 + 112)], v2);

  v4 = *v0;
  v5 = &v0[*(*v0 + 128)];
  if (*v5)
  {
    v6 = *(v5 + 1);
    v11[0] = *v5;
    v11[1] = v6;
    v12 = *(v5 + 4);
    __swift_project_boxed_opaque_existential_1(v11 + 1, v12);
    v7 = *&v11[0];
    [v7 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v11 + 1);
    v4 = *v0;
  }

  v8 = *(v4 + 136);
  v9 = sub_23875BED0();
  (*(*(v9 - 8) + 8))(&v0[v8], v9);
  return v0;
}

uint64_t sub_2386824D8()
{
  sub_23868230C();

  return swift_deallocClassInstance();
}

double sub_23868257C(uint64_t a1)
{
  v8 = *(*v1 + 80);
  KeyPath = swift_getKeyPath(byte_23877C528, &v8);
  v6 = v1;
  v7 = a1;
  sub_238682234(KeyPath, sub_238682624, &v5, MEMORY[0x277D84F78] + 8);

  return result;
}

void sub_238682688(uint64_t a1)
{
  sub_238758680();
  if (v1 <= 0x3F)
  {
    sub_238464EC8(319);
    if (v2 <= 0x3F)
    {
      sub_238682724(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_238682724(uint64_t a1)
{
  if (!qword_27DF13168)
  {
    sub_23875A230();
    v1 = sub_23875D360();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF13168);
    }
  }
}

uint64_t sub_2386827A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13238, &qword_23877C708);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13240, &unk_23877C710);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v29 = sub_23875A9F0();
  v10 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AccountConsentManagementAllDataView(0);
  v27 = a2;
  v28 = v13;
  v14 = a2 + *(v13 + 20);
  *v14 = swift_getKeyPath(byte_23877C640);
  *(v14 + 40) = 0;
  v15 = sub_238758680();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v25 = a1;
  v17(a2, a1, v15);
  KeyPath = swift_getKeyPath(byte_23877C720);
  sub_23875A230();
  v18 = swift_getKeyPath(aX_17);
  v24 = MEMORY[0x23EE5ECA0](0, v18);

  sub_238758530();
  v19 = sub_23875B500();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  v20 = *MEMORY[0x277CC71E8];
  v21 = sub_238758AB0();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v6, v20, v21);
  (*(v22 + 56))(v6, 0, 1, v21);
  MEMORY[0x23EE5EC60](v12, 0, v9, v6);
  sub_238439884(v6, &qword_27DF13238, &qword_23877C708);
  sub_238439884(v9, &qword_27DF13240, &unk_23877C710);
  (*(v10 + 8))(v12, v29);
  sub_23875D350();
  return (*(v16 + 8))(v25, v15);
}

uint64_t sub_238682B40@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13170, &qword_23877C5F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13178, &qword_23877C5F8);
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v31 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13180, &qword_23877C600);
  sub_23843A3E8(&qword_27DF13188, &qword_27DF13180, &qword_23877C600, MEMORY[0x277CE14C0]);
  sub_23875D9C0();
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v9 = qword_2814F1B90;
  v10 = sub_23875EA50();
  v11 = sub_23875EA50();
  v12 = sub_23875EA50();
  v13 = [v9 localizedStringForKey:v10 value:v11 table:v12];

  v14 = sub_23875EA80();
  v16 = v15;

  v32 = v14;
  v33 = v16;
  sub_2384397A8(v17, v18, v19);
  v20 = sub_23875DAA0();
  v22 = v21;
  LOBYTE(v12) = v23;
  v24 = sub_23843A3E8(&qword_27DF13190, &qword_27DF13170, &qword_23877C5F0, MEMORY[0x277CDE5A0]);
  sub_23875DC60();
  sub_2384397FC(v20, v22, v12 & 1);

  (*(v3 + 8))(v5, v2);
  v32 = v2;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v29;
  sub_23875DE00();
  return (*(v28 + 8))(v8, v25);
}

double sub_238682EF0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v50 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13198, &qword_23877C608);
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x28223BE20](v2);
  v49 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v48 = &v43 - v5;
  v6 = sub_23875B7C0();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_23875BD20();
  MEMORY[0x28223BE20](v7 - 8);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF131A0, &unk_23877C610);
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v9 = (&v43 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A7F0, &qword_238765E38);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v43 - v11;
  v13 = sub_238759660();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF131A8, &qword_23877C620);
  MEMORY[0x28223BE20](v17 - 8);
  v44 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v43 - v20;
  sub_23875ED50();
  v46 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = v53;
  sub_2387585E0();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_238439884(v12, &qword_27DF0A7F0, &qword_238765E38);
    v23 = 1;
    v24 = v47;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v25 = type metadata accessor for BalanceSection(0);
    sub_238759650();
    sub_238758530();
    sub_238758590();
    sub_23875BCC0();
    sub_23875B7B0();
    v26 = objc_allocWithZone(sub_238759550());
    *v9 = sub_238759540();
    v27 = v9 + *(v25 + 32);
    *v27 = swift_getKeyPath(byte_23877C640);
    v27[40] = 0;
    KeyPath = swift_getKeyPath(aP_20);
    type metadata accessor for AccountConsentManagementAllDataView(0);
    sub_2384D51D8(v54);
    __swift_project_boxed_opaque_existential_1(v54, v54[3]);
    v22 = v53;
    v29 = sub_238758A10();
    (*(v14 + 8))(v16, v13);
    v24 = v47;
    v30 = (v9 + *(v47 + 36));
    *v30 = KeyPath;
    v30[1] = v29;
    __swift_destroy_boxed_opaque_existential_1(v54);
    sub_2384396E4(v9, v21, &qword_27DF131A0, &unk_23877C610);
    v23 = 0;
  }

  v31 = (*(v45 + 56))(v21, v23, 1, v24);
  MEMORY[0x28223BE20](v31);
  v43 = v21;
  *(&v43 - 2) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF131B0, &qword_23877C628);
  sub_238684518();
  v32 = v48;
  sub_23875E3D0();
  v33 = v21;
  v34 = v44;
  sub_23843981C(v33, v44, &qword_27DF131A8, &qword_23877C620);
  v36 = v51;
  v35 = v52;
  v37 = *(v51 + 16);
  v38 = v49;
  v37(v49, v32, v52);
  v39 = v50;
  sub_23843981C(v34, v50, &qword_27DF131A8, &qword_23877C620);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF131D0, &qword_23877C638);
  v37((v39 + *(v40 + 48)), v38, v35);
  v41 = *(v36 + 8);
  v41(v32, v35);
  sub_238439884(v43, &qword_27DF131A8, &qword_23877C620);
  v41(v38, v35);
  sub_238439884(v34, &qword_27DF131A8, &qword_23877C620);

  return result;
}

double sub_2386835AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10[1] = a2;
  v3 = type metadata accessor for AccountConsentManagementAllDataView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF131D8, &unk_23877C698);
  MEMORY[0x28223BE20](v6);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13150, &unk_23877C560);
  sub_23875D340();
  sub_238686574(a1, v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccountConsentManagementAllDataView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_238686380(v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF131C8, &qword_23877C630);
  sub_23843A3E8(&qword_27DF131E0, &qword_27DF131D8, &unk_23877C698, MEMORY[0x277CDE110]);
  sub_23843A3E8(&qword_27DF131C0, &qword_27DF131C8, &qword_23877C630, MEMORY[0x277CDD938]);
  sub_23843A3E8(&qword_27DF131E8, &qword_27DF0F628, &unk_238772DC0, MEMORY[0x277CDE108]);
  sub_23875E380();

  return result;
}

double sub_238683890@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF131F0, &qword_23877C6A8);
  MEMORY[0x28223BE20](v5);
  v7 = &v16[-1] - v6;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v15 - 2) = a2;
  *(&v15 - 1) = a1;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F628, &unk_238772DC0);
  (*(*(v9 - 8) + 16))(v7, a1, v9);
  v10 = &v7[*(type metadata accessor for AccountConsentManagementTransactionHistoryView(0) + 20)];
  *v10 = swift_getKeyPath(byte_23877C640, v15);
  v10[40] = 0;
  KeyPath = swift_getKeyPath(aP_20);
  type metadata accessor for AccountConsentManagementAllDataView(0);
  sub_2384D51D8(v16);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v12 = sub_238758A10();
  v13 = &v7[*(v5 + 36)];
  *v13 = KeyPath;
  v13[1] = v12;
  __swift_destroy_boxed_opaque_existential_1(v16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF131F8, &unk_23877C6B0);
  sub_23843A3E8(&qword_27DF13200, &qword_27DF131F8, &unk_23877C6B0, MEMORY[0x277CE1138]);
  sub_23868646C();
  sub_23875C750();

  return result;
}

double sub_238683B68@<D0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F628, &unk_238772DC0);
  sub_23875D370();
  sub_23843A3E8(&qword_27DF13218, &qword_27DF0F628, &unk_238772DC0, MEMORY[0x277CDE100]);
  sub_23875EED0();
  sub_23875EF00();
  v2 = sub_23875EEF0();
  *a1 = sub_23875CE60();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13220, &qword_23877C6C0);
  sub_238683CDC(v2, a1 + *(v3 + 44));

  return result;
}

double sub_238683CDC@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for TransactionRowIcon(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v20[-v9];
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v10 = swift_getKeyPath(byte_23877C6C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  v11 = sub_23875D030();
  LOBYTE(v24[0]) = 1;
  sub_238683F70(a2, v21);
  *&v20[7] = v21[0];
  *&v20[23] = v21[1];
  *&v20[39] = v21[2];
  *&v20[55] = v21[3];
  v12 = v24[0];
  sub_238686574(v10, v7, type metadata accessor for TransactionRowIcon);
  sub_238686574(v7, a3, type metadata accessor for TransactionRowIcon);
  v13 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13228, &qword_23877C700) + 48);
  v22[0] = v11;
  v22[1] = 0;
  v23[0] = v12;
  *&v23[1] = *v20;
  *&v23[17] = *&v20[16];
  *&v23[33] = *&v20[32];
  *&v23[49] = *&v20[48];
  v14 = *&v20[63];
  *&v23[64] = *&v20[63];
  v15 = *v23;
  *v13 = v11;
  *(v13 + 16) = v15;
  v16 = *&v23[16];
  v17 = *&v23[32];
  v18 = *&v23[48];
  *(v13 + 80) = v14;
  *(v13 + 48) = v17;
  *(v13 + 64) = v18;
  *(v13 + 32) = v16;
  sub_23843981C(v22, v24, &qword_27DF0BA70, &unk_238769590);
  sub_2386865DC(v10);
  v24[0] = v11;
  v24[1] = 0;
  v25 = v12;
  v27 = *&v20[16];
  v28 = *&v20[32];
  *v29 = *&v20[48];
  *&v29[15] = *&v20[63];
  v26 = *v20;
  sub_238439884(v24, &qword_27DF0BA70, &unk_238769590);
  sub_2386865DC(v7);

  return result;
}

double sub_238683F70@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  sub_238686638(isCurrentExecutor, v6, v7);
  v44 = sub_23875F2D0();
  sub_2384397A8(v44, v8, v9);
  v10 = sub_23875DAA0();
  v41 = v11;
  v42 = v10;
  v40 = v12;
  v43 = v13;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v14 = qword_2814F1B90;
  v15 = sub_23875EA50();
  v16 = sub_23875EA50();
  v17 = sub_23875EA50();
  v18 = [v14 localizedStringForKey:v15 value:v16 table:v17];

  sub_23875EA80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D83B88];
  *(v19 + 16) = xmmword_2387632F0;
  v21 = MEMORY[0x277D83C10];
  *(v19 + 56) = v20;
  *(v19 + 64) = v21;
  *(v19 + 32) = a2;
  sub_23875EAB0();

  v22 = sub_23875DAA0();
  v24 = v23;
  v26 = v25;
  sub_23875D7F0();
  v27 = sub_23875DA60();
  v29 = v28;
  v31 = v30;

  sub_2384397FC(v22, v24, v26 & 1);

  sub_23875D440();
  v32 = sub_23875DA20();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_2384397FC(v27, v29, v31 & 1);

  *a3 = v42;
  *(a3 + 8) = v41;
  *(a3 + 16) = v40 & 1;
  *(a3 + 24) = v43;
  *(a3 + 32) = v32;
  *(a3 + 40) = v34;
  *(a3 + 48) = v36 & 1;
  *(a3 + 56) = v38;
  sub_23843980C(v42, v41, v40 & 1);

  sub_23843980C(v32, v34, v36 & 1);

  sub_2384397FC(v32, v34, v36 & 1);

  sub_2384397FC(v42, v41, v40 & 1);

  return result;
}

uint64_t sub_238684304@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23875CDB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23843981C(v2, &v14 - v9, &qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C450();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_23875EFF0();
    v13 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

unint64_t sub_238684518()
{
  result = qword_27DF131B8;
  if (!qword_27DF131B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF131B0, &qword_23877C628);
    sub_23843A3E8(&qword_27DF131C0, &qword_27DF131C8, &qword_23877C630, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF131B8);
  }

  return result;
}

uint64_t sub_2386845E8@<X0>(uint64_t a1@<X8>)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13278, &qword_23877C880);
  MEMORY[0x28223BE20](v46);
  v4 = &v42 - v3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13280, &qword_23877C888);
  MEMORY[0x28223BE20](v55);
  v56 = &v42 - v5;
  v6 = sub_23875C450();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v54 = sub_23875E0D0();
  sub_23875E4A0();
  sub_23875C5C0();
  v50 = v60;
  v49 = v62;
  v48 = v64;
  v47 = v65;
  v51 = v63;
  v52 = v61;
  v59 = v61;
  v58 = v63;
  v57 = 1;
  v53 = v1;
  sub_238684304(v12);
  v13 = *(v7 + 104);
  v44 = *MEMORY[0x277CDF3D0];
  v43 = v13;
  v13(v9);
  v14 = sub_23875C440();
  v15 = *(v7 + 8);
  v15(v9, v6);
  v15(v12, v6);
  v16 = v4;
  if (v14)
  {
    v17 = sub_23875E040();
  }

  else
  {
    v17 = sub_23875E010();
  }

  v45 = v17;
  v18 = *(sub_23875C980() + 20);
  v19 = *MEMORY[0x277CE0118];
  v20 = sub_23875CF50();
  v21 = v16 + v18;
  v22 = v16;
  (*(*(v20 - 8) + 104))(v21, v19, v20);
  __asm { FMOV            V0.2D, #6.0 }

  *v16 = _Q0;
  sub_23875E4A0();
  sub_23875C5C0();
  v28 = (v16 + *(v46 + 36));
  v29 = v67;
  *v28 = v66;
  v28[1] = v29;
  v28[2] = v68;
  sub_238684304(v12);
  v43(v9, v44, v6);
  v30 = sub_23875C440();
  v15(v9, v6);
  v15(v12, v6);
  if (v30)
  {
    v31 = sub_23875E010();
  }

  else
  {
    v31 = sub_23875E040();
  }

  v32 = v31;
  v33 = v56;
  sub_2384396E4(v22, v56, &qword_27DF13278, &qword_23877C880);
  *(v33 + *(v55 + 36)) = v32;
  v34 = sub_23875E4A0();
  v36 = v35;
  v37 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13288, &qword_23877C890) + 36);
  sub_2384396E4(v33, v37, &qword_27DF13280, &qword_23877C888);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13290, &qword_23877C898);
  v39 = (v37 + *(result + 36));
  *v39 = v34;
  v39[1] = v36;
  v40 = v50;
  *a1 = v54;
  *(a1 + 8) = v40;
  *(a1 + 16) = v52;
  *(a1 + 24) = v49;
  *(a1 + 32) = v51;
  v41 = v47;
  *(a1 + 40) = v48;
  *(a1 + 48) = v41;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 65) = 1;
  *(a1 + 72) = v45;
  return result;
}

double sub_238684AC0@<D0>(uint64_t a5@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  sub_2384397A8(isCurrentExecutor, v7, v8);

  v9 = sub_23875DAA0();
  v11 = v10;
  v13 = v12;
  sub_23875D7F0();
  v14 = sub_23875DA60();
  v16 = v15;
  v18 = v17;

  sub_2384397FC(v9, v11, v13 & 1);

  sub_23875D440();
  v19 = sub_23875DA20();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_2384397FC(v14, v16, v18 & 1);

  v26 = sub_23875DAA0();
  v28 = v27;
  v29 = v23 & 1;
  v34 = v23 & 1;
  v31 = v30 & 1;
  *a5 = v19;
  *(a5 + 8) = v21;
  *(a5 + 16) = v29;
  *(a5 + 24) = v25;
  *(a5 + 32) = v26;
  *(a5 + 40) = v27;
  *(a5 + 48) = v30 & 1;
  *(a5 + 56) = v32;
  sub_23843980C(v19, v21, v29);

  sub_23843980C(v26, v28, v31);

  sub_2384397FC(v26, v28, v31);

  sub_2384397FC(v19, v21, v34);

  return result;
}

__n128 sub_238684D10@<Q0>(uint64_t a2@<X8>)
{
  v3 = sub_23875D030();
  sub_238684AC0(v6);
  *&v5[55] = v6[3];
  *&v5[39] = v6[2];
  *&v5[23] = v6[1];
  *&v5[7] = v6[0];
  *(a2 + 33) = *&v5[16];
  result = *&v5[32];
  *(a2 + 49) = *&v5[32];
  *(a2 + 65) = *&v5[48];
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 80) = *&v5[63];
  *(a2 + 17) = *v5;
  return result;
}

void sub_238684DBC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF132A8, &qword_23877C8A8);
  MEMORY[0x28223BE20](v52);
  v51 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF132B0, &unk_23877C8B0);
  v55 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v54 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v53 = &v45 - v7;
  v56 = sub_238758B40();
  v8 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v45 - v11;
  v13 = sub_238758B60();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v50 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = type metadata accessor for BalanceSection(0);
  v18 = v57;
  (*(v14 + 16))(v16, v57 + *(v17 + 20), v13);
  v19 = (*(v14 + 88))(v16, v13);
  if (v19 == *MEMORY[0x277CC7250])
  {
    (*(v14 + 96))(v16, v13);
    v20 = v56;
    (*(v8 + 32))(v12, v16, v56);
    sub_23868567C(v12, &v66);
    v58 = v66;
    v59 = v67;
    v60[0] = 0;
LABEL_7:
    sub_238686998(v21, v22, v23);
    sub_23875D1B0();
    v72 = v68;
    v71 = 0;
    v58 = v66;
    v59 = v67;
    v60[0] = v68;
    *&v60[1] = v61;
    *&v60[17] = v62;
    v60[33] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF132C8, &qword_23877C8C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF132D0, &qword_23877C8D0);
    sub_238686914();
    sub_2386869EC();
    sub_23875D1B0();
    (*(v8 + 8))(v12, v20);
    v75 = v68;
    v76 = v69;
    v77 = v70;
    v73 = v66;
    v74 = v67;
LABEL_10:
    sub_238685E08(v18, v51);
    sub_238686AA4();
    v35 = v53;
    sub_23875C750();
    v37 = v54;
    v36 = v55;
    v38 = *(v55 + 16);
    v38(v54, v35, v4);
    v39 = v76;
    *v60 = v75;
    *&v60[16] = v76;
    v40 = v77;
    *&v60[32] = v77;
    v42 = v73;
    v41 = v74;
    v58 = v73;
    v59 = v74;
    *(a2 + 32) = v75;
    *(a2 + 48) = v39;
    *(a2 + 64) = v40;
    *a2 = v42;
    *(a2 + 16) = v41;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13300, &qword_23877C8D8);
    v38((a2 + *(v43 + 48)), v37, v4);
    sub_23843981C(&v58, &v66, &qword_27DF13308, &qword_23877C8E0);
    v44 = *(v36 + 8);
    v44(v35, v4);
    v44(v37, v4);
    v68 = v75;
    v69 = v76;
    v70 = v77;
    v66 = v73;
    v67 = v74;
    sub_238439884(&v66, &qword_27DF13308, &qword_23877C8E0);

    return;
  }

  if (v19 == *MEMORY[0x277CC7248])
  {
    (*(v14 + 96))(v16, v13);
    v20 = v56;
    (*(v8 + 32))(v12, v16, v56);
    sub_238685A44(v12, &v66);
    v58 = v66;
    v59 = v67;
    v60[0] = 1;
    goto LABEL_7;
  }

  v47 = a2;
  v48 = v4;
  if (v19 == *MEMORY[0x277CC7240])
  {
    (*(v14 + 96))(v16, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D9D0, &qword_23876DB58);
    v24 = *(v8 + 32);
    (v24)(v12, v16, v56);
    v25 = v12;
    v46 = v12;
    v26 = v49;
    v24();
    v27 = v57;
    sub_23868567C(v25, &v66);
    v28 = v66;
    v30 = *(&v67 + 1);
    v29 = v67;
    sub_238685A44(v26, &v66);
    v45 = v66;
    v32 = *(&v67 + 1);
    v31 = v67;

    v71 = 0;
    v66 = v28;
    v67 = __PAIR128__(v30, v29);
    v18 = v27;
    v68 = v45;
    v69 = __PAIR128__(v32, v31);
    LOBYTE(v70) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF132B8, &qword_23877C8C0);
    sub_23843A3E8(&qword_27DF132C0, &qword_27DF132B8, &qword_23877C8C0, MEMORY[0x277CE14C0]);
    sub_23875D1B0();
    *v60 = v63;
    *&v60[16] = v64;
    v60[32] = v65;
    v58 = v61;
    v59 = v62;
    v72 = 1;
    v60[33] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF132C8, &qword_23877C8C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF132D0, &qword_23877C8D0);
    sub_238686914();
    sub_2386869EC();
    sub_23875D1B0();
    v33 = *(v8 + 8);
    v34 = v56;
    v33(v26, v56);
    v33(v46, v34);
    v75 = v68;
    v76 = v69;
    v77 = v70;
    v73 = v66;
    v74 = v67;
    a2 = v47;
    v4 = v48;
    goto LABEL_10;
  }

  sub_23875F520();
  __break(1u);
}

void sub_23868567C(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v28 = a1;
  v30 = a3;
  v29 = sub_2387591B0();
  v3 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_238758090();
  v6 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_238757AD0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277CC6B50], v9, v11);
  sub_238686B8C(&qword_27DF0A228, MEMORY[0x277CC6B60], MEMORY[0x277CC6B78]);
  sub_23875EC40();
  sub_23875EC40();
  (*(v10 + 8))(v13, v9);
  sub_238758B30();
  sub_238758B20();
  v14 = sub_238759530();
  v16 = v15;
  (*(v3 + 8))(v5, v29);
  (*(v6 + 8))(v8, v27);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v17 = qword_2814F1B90;
  v18 = sub_23875EA50();

  v19 = sub_23875EA50();
  v20 = sub_23875EA50();
  v21 = [v17 localizedStringForKey:v18 value:v19 table:v20];

  v22 = sub_23875EA80();
  v24 = v23;

  v25 = v30;
  *v30 = v22;
  v25[1] = v24;
  v25[2] = v14;
  v25[3] = v16;
}

void sub_238685A44(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v28 = a1;
  v30 = a3;
  v29 = sub_2387591B0();
  v3 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_238758090();
  v6 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_238757AD0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277CC6B50], v9, v11);
  sub_238686B8C(&qword_27DF0A228, MEMORY[0x277CC6B60], MEMORY[0x277CC6B78]);
  sub_23875EC40();
  sub_23875EC40();
  (*(v10 + 8))(v13, v9);
  sub_238758B30();
  sub_238758B20();
  v14 = sub_238759520();
  v16 = v15;
  (*(v3 + 8))(v5, v29);
  (*(v6 + 8))(v8, v27);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v17 = qword_2814F1B90;
  v18 = sub_23875EA50();

  v19 = sub_23875EA50();
  v20 = sub_23875EA50();
  v21 = [v17 localizedStringForKey:v18 value:v19 table:v20];

  v22 = sub_23875EA80();
  v24 = v23;

  v25 = v30;
  *v30 = v22;
  v25[1] = v24;
  v25[2] = v14;
  v25[3] = v16;
}

double sub_238685E08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875B7C0();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_23875BD20();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_23875A9F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v24 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = type metadata accessor for BalanceSection(0);
  (*(v7 + 16))(v9, a1 + *(v10 + 24), v6);
  v11 = *(v10 + 28);
  v12 = type metadata accessor for AccountConsentManagementBalanceHistoryView(0);
  v23 = v6;
  v13 = a1;
  v14 = *(v12 + 24);
  v15 = sub_238757AD0();
  (*(*(v15 - 8) + 16))(a2 + v14, v13 + v11, v15);
  *a2 = swift_getKeyPath(byte_23877C640);
  *(a2 + 40) = 0;
  v16 = *(v12 + 28);
  sub_23875BCC0();
  sub_23875B7B0();
  v17 = objc_allocWithZone(sub_238759550());
  *(a2 + v16) = sub_238759540();
  sub_23875A7A0();
  sub_23875A730();
  sub_23875C4F0();
  (*(v7 + 8))(v9, v23);
  KeyPath = swift_getKeyPath(aP_20);
  sub_2384D51D8(v25);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v19 = sub_238758A10();
  v20 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF132A8, &qword_23877C8A8) + 36));
  *v20 = KeyPath;
  v20[1] = v19;
  __swift_destroy_boxed_opaque_existential_1(v25);

  return result;
}

void sub_238686134(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8(v7, v8, v9);
  v10 = sub_23875DAA0();
  v12 = v11;
  LOBYTE(v4) = v13;
  v15 = v14;

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v15;
}

uint64_t sub_2386862DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13298, &qword_23877C8A0);
  sub_23843A3E8(&qword_27DF132A0, &qword_27DF13298, &qword_23877C8A0, MEMORY[0x277CE14C0]);
  return sub_23875E3D0();
}

uint64_t sub_238686380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountConsentManagementAllDataView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_2386863E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AccountConsentManagementAllDataView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_238683890(a1, v6, a2);
}

unint64_t sub_23868646C()
{
  result = qword_27DF13208;
  if (!qword_27DF13208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF131F0, &qword_23877C6A8);
    sub_238686B8C(&qword_27DF13210, type metadata accessor for AccountConsentManagementTransactionHistoryView, &unk_238772E08);
    sub_23843A3E8(&qword_2814F0920, &qword_27DF09E68, &unk_23876A070, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13208);
  }

  return result;
}

uint64_t sub_238686574(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2386865DC(uint64_t a1)
{
  v2 = type metadata accessor for TransactionRowIcon(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_238686638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF13230;
  if (!qword_27DF13230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13230);
  }

  return result;
}

void sub_2386866DC(uint64_t a1)
{
  sub_238759550();
  if (v1 <= 0x3F)
  {
    sub_238758B60();
    if (v2 <= 0x3F)
    {
      sub_23875A9F0();
      if (v3 <= 0x3F)
      {
        sub_238757AD0();
        if (v4 <= 0x3F)
        {
          sub_238464EC8(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_2386867A8()
{
  result = qword_27DF13268;
  if (!qword_27DF13268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13270, qword_23877C7D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13170, &qword_23877C5F0);
    sub_23843A3E8(&qword_27DF13190, &qword_27DF13170, &qword_23877C5F0, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    sub_238686B8C(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13268);
  }

  return result;
}

unint64_t sub_238686914()
{
  result = qword_27DF132D8;
  if (!qword_27DF132D8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF132C8, &qword_23877C8C8);
    sub_238686998(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF132D8);
  }

  return result;
}

unint64_t sub_238686998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF132E0;
  if (!qword_27DF132E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF132E0);
  }

  return result;
}

unint64_t sub_2386869EC()
{
  result = qword_27DF132E8;
  if (!qword_27DF132E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF132D0, &qword_23877C8D0);
    sub_23843A3E8(&qword_27DF132C0, &qword_27DF132B8, &qword_23877C8C0, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF132E8);
  }

  return result;
}

unint64_t sub_238686AA4()
{
  result = qword_27DF132F0;
  if (!qword_27DF132F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF132A8, &qword_23877C8A8);
    sub_238686B8C(&qword_27DF132F8, type metadata accessor for AccountConsentManagementBalanceHistoryView, &unk_238765218);
    sub_23843A3E8(&qword_2814F0920, &qword_27DF09E68, &unk_23876A070, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF132F0);
  }

  return result;
}

uint64_t sub_238686B8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_238686BE4()
{
  result = qword_27DF13310;
  if (!qword_27DF13310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13288, &qword_23877C890);
    sub_238686C9C();
    sub_23843A3E8(&qword_27DF13330, &qword_27DF13290, &qword_23877C898, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13310);
  }

  return result;
}

unint64_t sub_238686C9C()
{
  result = qword_27DF13318;
  if (!qword_27DF13318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13320, &unk_23877C920);
    sub_238686D54();
    sub_23843A3E8(&qword_27DF0A490, &qword_27DF0A498, &qword_23876AB20, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13318);
  }

  return result;
}

unint64_t sub_238686D54()
{
  result = qword_27DF13328;
  if (!qword_27DF13328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0ABD0, &qword_238766990);
    sub_238449688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13328);
  }

  return result;
}

unint64_t sub_238686DE0()
{
  result = qword_27DF13338;
  if (!qword_27DF13338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13340, &qword_23877C930);
    sub_23843A3E8(&qword_27DF132A0, &qword_27DF13298, &qword_23877C8A0, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13338);
  }

  return result;
}

double sub_238686EB8()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return result;
}

uint64_t sub_238686F48@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A890, &qword_238766090);
  MEMORY[0x28223BE20](v34);
  v32 = (&v31 - v3);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13370, &qword_23877CA98);
  MEMORY[0x28223BE20](v33);
  v5 = (&v31 - v4);
  v6 = sub_23875E0E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1[1];
  v31 = *v1;
  *&v38 = v31;
  *(&v38 + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13378, &qword_23877CAA0);
  sub_23875E1B0();
  v11 = v36[0];
  swift_getKeyPath(byte_23877CAA8);
  *&v38 = v11;
  sub_2386889D8(&qword_27DF13380, type metadata accessor for AppIconImage.Loader, &unk_23877CA24);
  sub_23875BE90();

  v12 = *(v11 + 16);
  v13 = v12;

  if (v12)
  {
    v14 = v13;
    sub_23875E0C0();
    (*(v7 + 104))(v9, *MEMORY[0x277CE0FE0], v6);
    v15 = sub_23875E150();

    (*(v7 + 8))(v9, v6);
    sub_23875E4A0();
    sub_23875C5C0();
    *&v37[22] = v39[5];
    *&v37[38] = v40;
    *&v37[6] = v39[4];
    v38 = v15;
    LOWORD(v39[0]) = 1;
    *&v39[3] = *(&v40 + 1);
    *(v39 + 2) = *v37;
    *(&v39[1] + 2) = *&v37[16];
    *(&v39[2] + 2) = *&v37[32];
    WORD4(v39[3]) = 257;
    BYTE10(v39[3]) = 1;
    v16 = v39[0];
    *(v5 + 59) = *(&v39[2] + 11);
    v17 = v39[2];
    v5[2] = v39[1];
    v5[3] = v17;
    *v5 = v15;
    v5[1] = v16;
    swift_storeEnumTagMultiPayload();
    sub_23843981C(&v38, v36, &qword_27DF13390, &qword_23877CB10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13390, &qword_23877CB10);
    sub_2386888C0();
    sub_23847E1BC();
    sub_23875D1B0();

    v18 = &v38;
    v19 = &qword_27DF13390;
    v20 = &qword_23877CB10;
  }

  else
  {
    v21 = sub_23875E020();
    KeyPath = swift_getKeyPath(byte_23877CAD0);
    v36[0] = v10;
    v23 = swift_allocObject();
    v24 = *(v2 + 1);
    *(v23 + 16) = *v2;
    *(v23 + 32) = v24;
    *(v23 + 48) = v2[4];
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A880, &qword_238766080);
    v26 = v32;
    v27 = v32 + *(v25 + 36);
    sub_23875C6E0();

    sub_23843981C(v36, &v38, &qword_27DF13388, &qword_238784A00);
    sub_23875ED60();
    *v27 = &unk_23877CB08;
    *(v27 + 1) = v23;
    *v26 = KeyPath;
    v26[1] = v21;
    sub_23875E4A0();
    sub_23875C5C0();
    v28 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A888, &qword_238766088) + 36));
    v29 = v39[0];
    *v28 = v38;
    v28[1] = v29;
    v28[2] = v39[1];
    *(v26 + *(v34 + 36)) = 257;
    sub_23843981C(v26, v5, &qword_27DF0A890, &qword_238766090);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13390, &qword_23877CB10);
    sub_2386888C0();
    sub_23847E1BC();
    sub_23875D1B0();
    v18 = v26;
    v19 = &qword_27DF0A890;
    v20 = &qword_238766090;
  }

  return sub_238439884(v18, v19, v20);
}

void *sub_238687498()
{
  swift_getKeyPath(byte_23877CAA8);
  sub_2386889D8(&qword_27DF13380, type metadata accessor for AppIconImage.Loader, &unk_23877CA24);
  sub_23875BE90();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_238687540(uint64_t a1)
{
  v1[5] = a1;
  sub_23875ED50();
  v1[6] = sub_23875ED40();
  v3 = sub_23875ECE0();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_2386875D8, v3, v2);
}

uint64_t sub_2386875D8()
{
  *(v0 + 16) = **(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13378, &qword_23877CAA0);
  sub_23875E1B0();
  *(v0 + 72) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_238687698;

  return sub_2386877DC();
}

uint64_t sub_238687698()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_2384E8448, v3, v2);
}

uint64_t sub_2386877DC()
{
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13368, &qword_23877CA40);
  v1[4] = swift_task_alloc();
  v1[5] = sub_23875ED50();
  v1[6] = sub_23875ED40();
  v3 = sub_23875ECE0();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_2386878B0, v3, v2);
}

uint64_t sub_2386878B0()
{
  v1 = v0[4];
  sub_23843981C(v0[3] + OBJC_IVAR____TtCV12FinanceKitUI12AppIconImage6Loader_bundleIdentifier, v1, &qword_27DF13368, &qword_23877CA40);
  v2 = sub_238758850();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[4];

    sub_238439884(v4, &qword_27DF13368, &qword_23877CA40);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[4];
    v8 = v0[3];
    v9 = sub_238758840();
    v11 = v10;
    v0[9] = v10;
    (*(v3 + 8))(v7, v2);
    v12 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:*(v8 + 24) scale:{*(v8 + 32), *(v8 + OBJC_IVAR____TtCV12FinanceKitUI12AppIconImage6Loader_scale)}];
    v13 = v12;
    v0[10] = v12;
    if (*(v8 + OBJC_IVAR____TtCV12FinanceKitUI12AppIconImage6Loader_isAppClip))
    {
      v14 = 5;
    }

    else
    {
      v14 = 1;
    }

    [v12 setShape_];
    v15 = sub_23875ED40();
    v0[11] = v15;
    v16 = swift_task_alloc();
    v0[12] = v16;
    v16[2] = v9;
    v16[3] = v11;
    v16[4] = v13;
    v16[5] = v8;
    v17 = swift_task_alloc();
    v0[13] = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
    *v17 = v0;
    v17[1] = sub_238687B5C;
    v19 = MEMORY[0x277D85700];

    return MEMORY[0x2822007B8](v0 + 2, v15, v19, 0x292864616F6CLL, 0xE600000000000000, sub_238688A20, v16, v18);
  }
}

uint64_t sub_238687B5C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_238687CE0, v3, v2);
}

uint64_t sub_238687CE0()
{
  v1 = *(v0 + 80);

  sub_238687E14(*(v0 + 16));

  v2 = *(v0 + 8);

  return v2();
}

id sub_238687D5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_23877CAA8);
  sub_2386889D8(&qword_27DF13380, type metadata accessor for AppIconImage.Loader, &unk_23877CA24);
  sub_23875BE90();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_238687E14(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath(byte_23877CAA8);
    MEMORY[0x28223BE20](KeyPath);
    sub_2386889D8(&qword_27DF13380, type metadata accessor for AppIconImage.Loader, &unk_23877CA24);
    sub_23875BE80();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_238688A2C();
  v5 = v4;
  v6 = a1;
  v7 = sub_23875F1B0();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

void sub_238687F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a1;
  v17 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D420, &qword_23876D150);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v11 = sub_23875EA50();
  v12 = [v10 initWithBundleIdentifier_];

  (*(v7 + 16))(v9, v16, v6);
  v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  (*(v7 + 32))(v14 + v13, v9, v6);
  aBlock[4] = sub_238688A78;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23851854C;
  aBlock[3] = &block_descriptor_15;
  v15 = _Block_copy(aBlock);

  [v12 getCGImageForImageDescriptor:v17 completion:v15];
  _Block_release(v15);
}

void sub_238688208(void *a1)
{
  if (a1)
  {
    v2 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v3 = a1;
    [v2 initWithCGImage:v3 scale:0 orientation:1.0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D420, &qword_23876D150);
    sub_23875ED10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D420, &qword_23876D150);
    sub_23875ED10();
  }
}

uint64_t sub_2386882C4()
{
  sub_238439884(v0 + OBJC_IVAR____TtCV12FinanceKitUI12AppIconImage6Loader_bundleIdentifier, &qword_27DF13368, &qword_23877CA40);
  v1 = OBJC_IVAR____TtCV12FinanceKitUI12AppIconImage6Loader___observationRegistrar;
  v2 = sub_23875BED0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppIconImage.Loader(uint64_t a1)
{
  result = qword_27DF13350;
  if (!qword_27DF13350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2386883DC(uint64_t a1)
{
  sub_2386884D0(319);
  if (v1 <= 0x3F)
  {
    sub_23875BED0();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2386884D0(uint64_t a1)
{
  if (!qword_27DF13360)
  {
    sub_238758850();
    v1 = sub_23875F1F0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF13360);
    }
  }
}

uint64_t sub_23868852C@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13368, &qword_23877CA40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = sub_2387588A0();
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15 && (v16 = [v15 appClipMetadata]) != 0)
  {

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = [a1 bundleIdentifier];
  if (v18)
  {
    v19 = v18;
    sub_23875EA80();

    sub_238758830();
    v20 = sub_238758850();
    (*(*(v20 - 8) + 56))(v13, 0, 1, v20);
  }

  else
  {
    v21 = sub_238758850();
    (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  }

  sub_23843981C(v13, v10, &qword_27DF13368, &qword_23877CA40);
  type metadata accessor for AppIconImage.Loader(0);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  sub_23875BEC0();
  sub_238439884(v13, &qword_27DF13368, &qword_23877CA40);
  *(v22 + 24) = a3;
  *(v22 + 32) = a4;
  result = sub_238688790(v10, v22 + OBJC_IVAR____TtCV12FinanceKitUI12AppIconImage6Loader_bundleIdentifier);
  *(v22 + OBJC_IVAR____TtCV12FinanceKitUI12AppIconImage6Loader_isAppClip) = v17;
  *(v22 + OBJC_IVAR____TtCV12FinanceKitUI12AppIconImage6Loader_scale) = v14;
  *a2 = v22;
  *(a2 + 8) = 0;
  *(a2 + 16) = a3;
  *(a2 + 24) = a4;
  *(a2 + 32) = v14;
  return result;
}

uint64_t sub_238688790(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13368, &qword_23877CA40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23868882C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2384494A4;

  return sub_238687540(v0 + 16);
}

unint64_t sub_2386888C0()
{
  result = qword_27DF13398;
  if (!qword_27DF13398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13390, &qword_23877CB10);
    v3 = sub_23868894C();
    sub_23844970C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13398);
  }

  return result;
}

unint64_t sub_23868894C()
{
  result = qword_27DF133A0;
  if (!qword_27DF133A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF133A8, &qword_23877CB18);
    sub_238464B48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF133A0);
  }

  return result;
}

uint64_t sub_2386889D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_238688A2C()
{
  result = qword_27DF0A940;
  if (!qword_27DF0A940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF0A940);
  }

  return result;
}

void sub_238688A78(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D420, &qword_23876D150);

  sub_238688208(a1);
}

double block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_238688B10()
{
  result = qword_27DF133B0;
  if (!qword_27DF133B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF133B8, &qword_23877CB28);
    sub_2386888C0();
    sub_23847E1BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF133B0);
  }

  return result;
}

uint64_t static FKExtractedOrderSuggestionsBannerProvider.walletLogo.getter()
{
  if (qword_27DF08CC8 != -1)
  {
    swift_once();
  }

  v0 = qword_27DF0AE88;
  v1 = qword_27DF0AE88;
  return v0;
}

uint64_t static FKExtractedOrderSuggestionsBannerProvider.makePreviewController(withMessageID:orderNumber:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_238758890();

  sub_238758880();
  sub_238758A30();

  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF133C0, &qword_23877CB30));

  return sub_23875D080();
}

void sub_238688F48(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_23875B720();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

FKExtractedOrderSuggestionsBannerProvider __swiftcall FKExtractedOrderSuggestionsBannerProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for FKExtractedOrderSuggestionsBannerProvider()
{
  result = qword_27DF133C8;
  if (!qword_27DF133C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF133C8);
  }

  return result;
}

uint64_t type metadata accessor for BankConnectConnectionHeaderView(uint64_t a1)
{
  result = qword_27DF133D0;
  if (!qword_27DF133D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2386891A4(uint64_t a1)
{
  result = sub_238757B60();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_23868923C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BadgedErrorInstitutionLogo(0);
  MEMORY[0x28223BE20](v4);
  v23 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  sub_23875ED50();
  v22 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = *(type metadata accessor for BankConnectConnectionHeaderView(0) + 24);
  v10 = sub_238757B60();
  (*(*(v10 - 8) + 16))(v8, a1 + v9, v10);
  v8[*(v4 + 20)] = 3;
  v11 = sub_23875D030();
  v37 = 0;
  sub_2386895F0(&v33);
  v38 = v33;
  v39 = *v34;
  v40 = *&v34[16];
  v41 = *&v34[32];
  v42[0] = v33;
  v42[1] = *v34;
  v42[2] = *&v34[16];
  v42[3] = *&v34[32];
  sub_23843981C(&v38, &v31, &qword_27DF0B360, &qword_23877AE40);
  sub_238439884(v42, &qword_27DF0B360, &qword_23877AE40);
  *&v36[7] = v38;
  *&v36[23] = v39;
  *&v36[39] = v40;
  *&v36[55] = v41;
  LOBYTE(v9) = v37;
  sub_23875E4B0();
  sub_23875C9C0();
  v12 = v23;
  sub_2386897E8(v8, v23);
  sub_2386897E8(v12, a2);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF133E8, &unk_23877CBC0) + 48);
  *&v32[17] = *&v36[16];
  *&v32[33] = *&v36[32];
  v14 = a2 + v13;
  v31 = v11;
  v32[0] = v9;
  *&v32[49] = *&v36[48];
  *&v32[64] = *&v36[63];
  *&v32[1] = *v36;
  *&v32[72] = v24;
  *&v32[88] = v25;
  *&v32[104] = v26;
  *&v32[120] = v27;
  *&v32[136] = v28;
  *&v32[152] = v29;
  *&v32[168] = v30;
  v15 = *&v32[96];
  *(v14 + 96) = *&v32[80];
  *(v14 + 112) = v15;
  v16 = *&v32[128];
  *(v14 + 128) = *&v32[112];
  *(v14 + 144) = v16;
  v17 = *&v32[160];
  *(v14 + 160) = *&v32[144];
  *(v14 + 176) = v17;
  v18 = *&v32[64];
  *(v14 + 64) = *&v32[48];
  *(v14 + 80) = v18;
  v19 = *&v32[32];
  *(v14 + 32) = *&v32[16];
  *(v14 + 48) = v19;
  *(v14 + 192) = *&v32[176];
  v20 = *v32;
  *v14 = v31;
  *(v14 + 16) = v20;
  sub_23843981C(&v31, &v33, &qword_27DF133F0, &unk_2387849C0);
  sub_23868984C(v8);
  v33 = v11;
  v34[0] = v9;
  *&v34[17] = *&v36[16];
  *&v34[33] = *&v36[32];
  *v35 = *&v36[48];
  *&v35[15] = *&v36[63];
  *&v34[1] = *v36;
  *&v35[23] = v24;
  *&v35[39] = v25;
  *&v35[55] = v26;
  *&v35[119] = v30;
  *&v35[103] = v29;
  *&v35[87] = v28;
  *&v35[71] = v27;
  sub_238439884(&v33, &qword_27DF133F0, &unk_2387849C0);
  sub_23868984C(v12);

  return result;
}

double sub_2386895F0@<D0>(uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  sub_2384397A8(isCurrentExecutor, v4, v5);

  v6 = sub_23875DAA0();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = sub_23875DAA0();
  v15 = v14;
  v16 = v10 & 1;
  v21 = v10 & 1;
  v18 = v17 & 1;
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v16;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  *(a2 + 48) = v17 & 1;
  *(a2 + 56) = v19;
  sub_23843980C(v6, v8, v16);

  sub_23843980C(v13, v15, v18);

  sub_2384397FC(v13, v15, v18);

  sub_2384397FC(v6, v8, v21);

  return result;
}

double sub_238689794@<D0>(uint64_t a2@<X8>)
{
  *a2 = sub_23875D020();
  *(a2 + 8) = 0x4034000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF133E0, &unk_23877CBB0);
  return sub_23868923C(v2, a2 + *(v4 + 44));
}

uint64_t sub_2386897E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BadgedErrorInstitutionLogo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23868984C(uint64_t a1)
{
  v2 = type metadata accessor for BadgedErrorInstitutionLogo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2386898A8()
{
  result = qword_27DF133F8;
  if (!qword_27DF133F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13400, &qword_23877CBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF133F8);
  }

  return result;
}

void sub_238689954(uint64_t a1)
{
  sub_23875AD40();
  if (v1 <= 0x3F)
  {
    sub_23868C214(319, &qword_2814F1158, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23875A710();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_238689A30(uint64_t a1)
{
  v1 = sub_23875B7F0();
  MEMORY[0x28223BE20](v1 - 8);
  v36 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23875BE40();
  MEMORY[0x28223BE20](v3 - 8);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875BE20();
  MEMORY[0x28223BE20](v5 - 8);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875BD20();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09980, &unk_2387640E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09988, &unk_2387675D0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - v12;
  v14 = sub_23875BAD0();
  v32 = *(v14 - 8);
  v33 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2387591F0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_23875BD70())
  {
    (*(v18 + 104))(v20, *MEMORY[0x277CC77C8], v17);
  }

  else
  {
    v31 = v17;
    if ((sub_23875BD90() & 1) == 0)
    {
      sub_23875BA30();
      v22 = sub_23875BA40();
      (*(*(v22 - 8) + 56))(v13, 0, 1, v22);
      v23 = sub_23875BA10();
      (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
      sub_23875BCC0();
      sub_23875BDB0();
      sub_23875BE30();
      sub_23875B7E0();
      sub_23875BA50();
      v24 = sub_23875BAC0();
      v26 = v25;
      (*(v32 + 8))(v16, v33);
      v17 = v31;
      (*(v18 + 104))(v20, *MEMORY[0x277CC77C8], v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_2387632F0;
      *(v27 + 56) = MEMORY[0x277D837D0];
      *(v27 + 64) = sub_238448C58(v27, v28, v29);
      *(v27 + 32) = v24;
      *(v27 + 40) = v26;
      v21 = sub_238758A50();

      goto LABEL_7;
    }

    v17 = v31;
    (*(v18 + 104))(v20, *MEMORY[0x277CC77C8], v31);
  }

  v21 = sub_238758A40();
LABEL_7:
  (*(v18 + 8))(v20, v17);
  return v21;
}

uint64_t sub_238689FAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_23875C8A0();
  v33 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2387591F0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OrderDetailsReturn.ViewModel(0);
  v15 = v13;
  v16 = *(v3 + *(v13 + 20));
  if (v16 <= 0)
  {
    return sub_23868C2DC(v3, a2, v3 + *(v13 + 24), v14);
  }

  v30 = v6;
  v31 = a1;
  (*(v10 + 104))(v12, *MEMORY[0x277CC77C8], v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D83B88];
  *(v17 + 16) = xmmword_2387632F0;
  v19 = MEMORY[0x277D83C10];
  *(v17 + 56) = v18;
  *(v17 + 64) = v19;
  *(v17 + 32) = v16;
  v32 = sub_238758A50();
  v21 = v20;

  v22 = (*(v10 + 8))(v12, v9);
  result = sub_23868C2DC(v3, a2, v3 + *(v15 + 24), v22);
  if (v21)
  {
    if (!v24)
    {
      return v32;
    }

    v25 = result;
    v26 = v24;
    v27 = v33;
    v28 = v30;
    (*(v33 + 16))(v8, v31, v30);
    v29 = (*(v27 + 88))(v8, v28);
    if (v29 == *MEMORY[0x277CDFA88])
    {
      v34 = v32;
      v35 = v21;

      MEMORY[0x23EE63650](0x20A280E220, 0xA500000000000000);

      MEMORY[0x23EE63650](v25, v26);
    }

    else
    {
      if (v29 != *MEMORY[0x277CDFA90])
      {
        v34 = 0;
        v35 = 0xE000000000000000;
        sub_23875F470();
        MEMORY[0x23EE63650](0xD000000000000021, 0x800000023878F780);
        sub_23875F510();
        result = sub_23875F520();
        __break(1u);
        return result;
      }

      v34 = v25;
      v35 = v26;

      MEMORY[0x23EE63650](0x20A280E220, 0xA500000000000000);

      MEMORY[0x23EE63650](v32, v21);
    }

    return v34;
  }

  return result;
}

uint64_t sub_23868A3D0@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13428, &qword_23877CC90);
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v50 = &v46 - v7;
  v8 = type metadata accessor for OrderNavigationDestination(0);
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23875CDB0();
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13430, &qword_23877CC98);
  MEMORY[0x28223BE20](v14 - 8);
  v53 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - v17;
  v56 = sub_23875CE60();
  v62 = 1;
  sub_23868AC3C(&v59);
  v71 = v60[7];
  v72 = v60[8];
  v67 = v60[3];
  v68 = v60[4];
  v69 = v60[5];
  v70 = v60[6];
  v63 = v59;
  v64 = v60[0];
  v65 = v60[1];
  v66 = v60[2];
  v74[8] = v60[7];
  v74[9] = v60[8];
  v74[4] = v60[3];
  v74[5] = v60[4];
  v74[6] = v60[5];
  v74[7] = v60[6];
  v74[0] = v59;
  v74[1] = v60[0];
  v73 = *&v60[9];
  v75 = *&v60[9];
  v74[2] = v60[1];
  v74[3] = v60[2];
  sub_23843981C(&v63, &v57, &qword_27DF13438, &qword_23877CCA0);
  sub_238439884(v74, &qword_27DF13438, &qword_23877CCA0);
  *(&v61[7] + 7) = v70;
  *(&v61[8] + 7) = v71;
  *(&v61[9] + 7) = v72;
  *(&v61[3] + 7) = v66;
  *(&v61[4] + 7) = v67;
  *(&v61[5] + 7) = v68;
  *(&v61[6] + 7) = v69;
  *(v61 + 7) = v63;
  *(&v61[1] + 7) = v64;
  *(&v61[10] + 7) = v73;
  *(&v61[2] + 7) = v65;
  v52 = v62;
  v19 = v2 + *(type metadata accessor for OrderDetailsReturn(0) + 28);
  v20 = *v19;
  if (*(v19 + 8) != 1)
  {

    sub_23875EFF0();
    v24 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v20, 0);
    (*(v46 + 8))(v13, v47);
    if (v59)
    {
      goto LABEL_3;
    }

LABEL_5:
    v25 = type metadata accessor for OrderDetailsReturn.ViewModel(0);
    v26 = *(v25 + 28);
    v27 = sub_23875A710();
    (*(*(v27 - 8) + 16))(v10, v2 + v26, v27);
    v28 = (v2 + *(v25 + 32));
    v30 = *v28;
    v29 = v28[1];
    v31 = &v10[*(type metadata accessor for ReturnDetailsDestination(0) + 20)];
    *v31 = v30;
    *(v31 + 1) = v29;
    v32 = v49;
    swift_storeEnumTagMultiPayload();
    v33 = v51;
    sub_238672958(v10, v51);
    (*(v48 + 56))(v33, 0, 1, v32);
    sub_23868C294(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination, &protocol conformance descriptor for OrderNavigationDestination);

    v34 = v50;
    sub_23875C760();
    sub_23868C638(v10, type metadata accessor for OrderNavigationDestination);
    v23 = v54;
    v22 = v55;
    (*(v54 + 32))(v18, v34, v55);
    v21 = 0;
    goto LABEL_6;
  }

  if ((v20 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v21 = 1;
  v23 = v54;
  v22 = v55;
LABEL_6:
  (*(v23 + 56))(v18, v21, 1, v22);
  v35 = v53;
  sub_23843981C(v18, v53, &qword_27DF13430, &qword_23877CC98);
  *(&v58[7] + 1) = v61[7];
  *(&v58[8] + 1) = v61[8];
  *(&v58[9] + 1) = v61[9];
  v58[10] = *(&v61[9] + 15);
  *(&v58[3] + 1) = v61[3];
  *(&v58[4] + 1) = v61[4];
  *(&v58[5] + 1) = v61[5];
  *(&v58[6] + 1) = v61[6];
  *(v58 + 1) = v61[0];
  v36 = v56;
  v57 = v56;
  v37 = v52;
  LOBYTE(v58[0]) = v52;
  *(&v58[1] + 1) = v61[1];
  *(&v58[2] + 1) = v61[2];
  v38 = v58[8];
  a1[8] = v58[7];
  a1[9] = v38;
  v39 = v58[10];
  a1[10] = v58[9];
  a1[11] = v39;
  v40 = v58[4];
  a1[4] = v58[3];
  a1[5] = v40;
  v41 = v58[6];
  a1[6] = v58[5];
  a1[7] = v41;
  v42 = v58[0];
  *a1 = v57;
  a1[1] = v42;
  v43 = v58[2];
  a1[2] = v58[1];
  a1[3] = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13440, &qword_23877CCA8);
  sub_23843981C(v35, a1 + *(v44 + 48), &qword_27DF13430, &qword_23877CC98);
  sub_23843981C(&v57, &v59, &qword_27DF13448, &unk_23877CCB0);
  sub_238439884(v18, &qword_27DF13430, &qword_23877CC98);
  sub_238439884(v35, &qword_27DF13430, &qword_23877CC98);
  *(&v60[7] + 1) = v61[7];
  *(&v60[8] + 1) = v61[8];
  *(&v60[9] + 1) = v61[9];
  v60[10] = *(&v61[9] + 15);
  *(&v60[3] + 1) = v61[3];
  *(&v60[4] + 1) = v61[4];
  *(&v60[5] + 1) = v61[5];
  *(&v60[6] + 1) = v61[6];
  *(v60 + 1) = v61[0];
  *(&v60[1] + 1) = v61[1];
  v59 = v36;
  LOBYTE(v60[0]) = v37;
  *(&v60[2] + 1) = v61[2];
  return sub_238439884(&v59, &qword_27DF13448, &unk_23877CCB0);
}

void sub_23868AC3C(uint64_t a2@<X8>)
{
  v3 = sub_23875DFD0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v28 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27 = sub_23875D030();
  LOBYTE(v40[0]) = 1;
  sub_23868B070(v32);
  *&v31[7] = v32[0];
  *&v31[23] = v32[1];
  *&v31[39] = v32[2];
  *&v31[55] = v32[3];
  HIDWORD(v26) = LOBYTE(v40[0]);
  v7 = sub_23875E0D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ADA8, &unk_23876B470);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_238763B60;
  v9 = *MEMORY[0x277CE0EE0];
  v10 = *(v4 + 104);
  v10(v6, v9, v3);
  *(v8 + 32) = sub_23875E090();
  v10(v6, v9, v3);
  *(v8 + 40) = sub_23875E090();
  sub_23875E560();
  sub_23875E580();
  MEMORY[0x23EE62F40](v8);
  sub_23875C740();
  v11 = v46;
  v12 = v47;
  v13 = v48;
  v14 = v49;
  v15 = v50;
  v16 = sub_23875D7E0();
  KeyPath = swift_getKeyPath(aP_21);
  v18 = v27;
  v33[0] = v27;
  v33[1] = 0;
  LOBYTE(v8) = BYTE4(v26);
  v34[0] = BYTE4(v26);
  *&v34[17] = *&v31[16];
  *&v34[33] = *&v31[32];
  *&v34[49] = *&v31[48];
  *&v34[64] = *&v31[63];
  *&v35 = v7;
  *&v34[1] = *v31;
  v30 = 1;
  *(&v35 + 1) = v11;
  *&v36 = v12;
  *(&v36 + 1) = v13;
  *&v37 = v14;
  *(&v37 + 1) = v15;
  *&v38 = KeyPath;
  *(&v38 + 1) = v16;
  *&v29[7] = v35;
  *&v29[23] = v36;
  *&v29[39] = v37;
  *&v29[55] = v38;
  v19 = *v34;
  *a2 = v27;
  *(a2 + 16) = v19;
  v20 = *&v34[16];
  v21 = *&v34[48];
  v22 = *&v34[64];
  *(a2 + 48) = *&v34[32];
  *(a2 + 64) = v21;
  *(a2 + 32) = v20;
  *(a2 + 80) = v22;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  v23 = *&v29[16];
  *(a2 + 97) = *v29;
  v24 = *&v29[32];
  v25 = *&v29[48];
  *(a2 + 160) = *&v29[63];
  *(a2 + 145) = v25;
  *(a2 + 129) = v24;
  *(a2 + 113) = v23;
  v39[0] = v7;
  v39[1] = v11;
  v39[2] = v12;
  v39[3] = v13;
  v39[4] = v14;
  v39[5] = v15;
  v39[6] = KeyPath;
  v39[7] = v16;
  sub_23843981C(v33, v40, &qword_27DF0B3F8, &unk_238768110);
  sub_23843981C(&v35, v40, &qword_27DF0C7F8, &qword_238773800);
  sub_238439884(v39, &qword_27DF0C7F8, &qword_238773800);
  v40[0] = v18;
  v40[1] = 0;
  v41 = v8;
  v43 = *&v31[16];
  v44 = *&v31[32];
  *v45 = *&v31[48];
  *&v45[15] = *&v31[63];
  v42 = *v31;
  sub_238439884(v40, &qword_27DF0B3F8, &unk_238768110);
}

double sub_23868B070@<D0>(uint64_t *a1@<X8>)
{
  v58 = a1;
  v1 = sub_23875BE20();
  v55 = *(v1 - 8);
  v56 = v1;
  MEMORY[0x28223BE20](v1);
  v54 = v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23875C8A0();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v51 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v57 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v59 = sub_23875AD20();
  v60 = v5;
  v50[1] = sub_2384397A8(v59, v5, v6);
  v7 = sub_23875DAA0();
  v9 = v8;
  v11 = v10;
  sub_23875D8E0();
  v12 = sub_23875DA60();
  v14 = v13;
  v16 = v15;

  sub_2384397FC(v7, v9, v11 & 1);

  sub_23875D890();
  v17 = sub_23875D9E0();
  v19 = v18;
  LODWORD(v21) = v20;
  v23 = v22;
  sub_2384397FC(v12, v14, v16 & 1);

  type metadata accessor for OrderDetailsReturn(0);
  v24 = v51;
  sub_2384D5200(v51);
  v25 = v54;
  sub_2384D5588(v54);
  v26 = sub_238689FAC(v24, v25);
  v28 = v27;
  (*(v55 + 8))(v25, v56);
  (*(v52 + 8))(v24, v53);
  if (v28)
  {
    v59 = v26;
    v60 = v28;
    v29 = sub_23875DAA0();
    v31 = v30;
    v33 = v32;
    sub_23875D7F0();
    v34 = sub_23875DA60();
    LODWORD(v54) = v21;
    v21 = v35;
    v55 = v19;
    v56 = v17;
    v36 = v23;
    v38 = v37;

    sub_2384397FC(v29, v31, v33 & 1);

    sub_23875E070();
    v39 = sub_23875DA10();
    v41 = v40;
    v43 = v42;
    v45 = v44;

    v46 = v38 & 1;
    v23 = v36;
    v19 = v55;
    v47 = v21;
    LOBYTE(v21) = v54;
    sub_2384397FC(v34, v47, v46);
    v17 = v56;

    v28 = v43 & 1;
    sub_23843980C(v39, v41, v28);
  }

  else
  {
    v39 = 0;
    v41 = 0;
    v45 = 0;
  }

  sub_23843980C(v17, v19, v21 & 1);

  sub_238476F5C(v39, v41, v28, v45);
  sub_238476FA0(v39, v41, v28, v45);
  LOBYTE(v59) = v21 & 1;
  v48 = v58;
  *v58 = v17;
  v48[1] = v19;
  *(v48 + 16) = v21 & 1;
  v48[3] = v23;
  v48[4] = v39;
  v48[5] = v41;
  v48[6] = v28;
  v48[7] = v45;
  sub_238476FA0(v39, v41, v28, v45);
  sub_2384397FC(v17, v19, v21 & 1);

  return result;
}

void sub_23868B4F0(uint64_t a1@<X8>)
{
  v2 = sub_2387591F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v3 + 104))(v5, *MEMORY[0x277CC77C8], v2);
  v6 = sub_238758A40();
  v8 = v7;
  v9 = (*(v3 + 8))(v5, v2);
  v18[0] = v6;
  v18[1] = v8;
  sub_2384397A8(v9, v10, v11);
  v12 = sub_23875DAA0();
  v14 = v13;
  LOBYTE(v6) = v15;
  v17 = v16;

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v17;
}

uint64_t sub_23868B6AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_23875BE20();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v22 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13490, &qword_23877CE20);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for DropOffByFormatStyle(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23868C844(v12, v13, v14);
  sub_23875F780();
  if (!v2)
  {
    v15 = v19;
    v16 = v21;
    sub_23868C294(&qword_27DF0DD18, MEMORY[0x277CC99E8], MEMORY[0x277CC9A00]);
    sub_23875F5B0();
    (*(v20 + 8))(v8, v6);
    (*(v15 + 32))(v11, v22, v4);
    sub_23868C898(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23868B938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23868C844(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23868B974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23868C844(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_23868B9B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_238689A30(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23868B9F0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF134A0, &qword_23877CE28);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23868C844(v6, v7, v8);
  sub_23875F790();
  sub_23875BE20();
  sub_23868C294(&qword_27DF0DD28, MEMORY[0x277CC99E8], MEMORY[0x277CC99F0]);
  sub_23875F5C0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_23868BB68()
{
  sub_23875F700();
  sub_23875BE20();
  sub_23868C294(&qword_27DF0DD30, MEMORY[0x277CC99E8], MEMORY[0x277CC99F8]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_23868BBF0(uint64_t a1)
{
  sub_23875BE20();
  sub_23868C294(&qword_27DF0DD30, MEMORY[0x277CC99E8], MEMORY[0x277CC99F8]);

  return sub_23875E960();
}

uint64_t sub_23868BC74()
{
  sub_23875F700();
  sub_23875BE20();
  sub_23868C294(&qword_27DF0DD30, MEMORY[0x277CC99E8], MEMORY[0x277CC99F8]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_23868BCFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875BC40();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC30, &unk_23876E260);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  if ((sub_23875AD30() & 1) == 0)
  {
    goto LABEL_14;
  }

  v14 = type metadata accessor for OrderDetailsReturn.ViewModel(0);
  if (*(a1 + *(v14 + 20)) != *(a2 + *(v14 + 20)))
  {
    goto LABEL_14;
  }

  v30 = v14;
  v15 = *(v14 + 24);
  v16 = *(v11 + 48);
  sub_23843981C(a1 + v15, v13, &qword_27DF12E00, &unk_238763FC0);
  v17 = a2 + v15;
  v18 = v5;
  sub_23843981C(v17, &v13[v16], &qword_27DF12E00, &unk_238763FC0);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v16], 1, v4) == 1)
    {
      sub_238439884(v13, &qword_27DF12E00, &unk_238763FC0);
      goto LABEL_10;
    }

LABEL_8:
    sub_238439884(v13, &qword_27DF0DC30, &unk_23876E260);
    v20 = 0;
    return v20 & 1;
  }

  sub_23843981C(v13, v10, &qword_27DF12E00, &unk_238763FC0);
  if (v19(&v13[v16], 1, v4) == 1)
  {
    (*(v18 + 8))(v10, v4);
    goto LABEL_8;
  }

  (*(v18 + 32))(v7, &v13[v16], v4);
  sub_23868C294(&qword_27DF0DC38, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v21 = sub_23875E9E0();
  v22 = *(v18 + 8);
  v22(v7, v4);
  v22(v10, v4);
  sub_238439884(v13, &qword_27DF12E00, &unk_238763FC0);
  if ((v21 & 1) == 0)
  {
LABEL_14:
    v20 = 0;
    return v20 & 1;
  }

LABEL_10:
  v23 = v30;
  if ((MEMORY[0x23EE5F1E0](a1 + *(v30 + 28), a2 + *(v30 + 28)) & 1) == 0)
  {
    goto LABEL_14;
  }

  v24 = *(v23 + 32);
  v25 = *(a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  if (v25 == *v27 && v26 == v27[1])
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_23875F630();
  }

  return v20 & 1;
}

void sub_23868C100(uint64_t a1)
{
  type metadata accessor for OrderDetailsReturn.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_23868C214(319, &qword_27DF0B940, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_23868C214(319, &qword_27DF0DC58, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_238566280();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23868C214(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23868C294(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23868C2DC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v25 = a2;
  v5 = type metadata accessor for DropOffByFormatStyle(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_23875BC40();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23875AD40();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v19, *MEMORY[0x277CC8410], v15, v17);
  v20 = sub_23875AD30();
  (*(v16 + 8))(v19, v15);
  result = 0;
  if (v20)
  {
    sub_23843981C(a3, v10, &qword_27DF12E00, &unk_238763FC0);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_238439884(v10, &qword_27DF12E00, &unk_238763FC0);
      return 0;
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      v22 = sub_23875BE20();
      (*(*(v22 - 8) + 16))(v7, v25, v22);
      v23 = sub_238689A30(v14);
      sub_23868C638(v7, type metadata accessor for DropOffByFormatStyle);
      (*(v12 + 8))(v14, v11);
      return v23;
    }
  }

  return result;
}

uint64_t sub_23868C638(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23868C6C0()
{
  result = qword_27DF13460;
  if (!qword_27DF13460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13468, &qword_23877CD08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13460);
  }

  return result;
}

unint64_t sub_23868C844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF13498;
  if (!qword_27DF13498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13498);
  }

  return result;
}

uint64_t sub_23868C898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DropOffByFormatStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23868C910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF134A8;
  if (!qword_27DF134A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF134A8);
  }

  return result;
}

unint64_t sub_23868C968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF134B0;
  if (!qword_27DF134B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF134B0);
  }

  return result;
}

unint64_t sub_23868C9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF134B8;
  if (!qword_27DF134B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF134B8);
  }

  return result;
}

void sub_23868CA5C(uint64_t a1)
{
  sub_2385BF2CC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ProductImage.ViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23868CAF8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v41 = type metadata accessor for ProductImage.ViewModel(0);
  MEMORY[0x28223BE20](v41);
  v43 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875AF90();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v42 = &v35 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v35 - v14;
  v16 = [a1 title];
  v17 = sub_2387586A0();
  v37 = v18;
  v38 = v17;

  sub_238759200();
  v36 = [a1 quantity];
  v39 = a1;
  v19 = [a1 image];
  if (v19)
  {
    v20 = v19;
    v35 = sub_23875EA80();
    v22 = v21;
  }

  else
  {
    v35 = 0;
    v22 = 0;
  }

  v23 = *(v8 + 16);
  v24 = v42;
  v40 = a2;
  v23(v42, a2, v7);
  v25 = type metadata accessor for OrderDetailsLargeLineItem.ViewModel(0);
  v26 = v25[5];
  v27 = sub_238758090();
  (*(*(v27 - 8) + 56))(&a3[v26], 1, 1, v27);
  v28 = v37;
  *a3 = v38;
  *(a3 + 1) = v28;
  sub_23853098C(v15, &a3[v26]);
  *&a3[v25[6]] = v36;
  v23(v44, v24, v7);
  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_2387632F0;
    *(v29 + 32) = v35;
    *(v29 + 40) = v22;
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  v23(v43, v44, v7);
  if (*(v29 + 16) >= 5uLL)
  {
    sub_23852EE64(v29, v29 + 32, 0, 9uLL);
    v31 = v30;

    v29 = v31;
  }

  v32 = *(v8 + 8);
  v32(v40, v7);
  v32(v44, v7);
  v32(v42, v7);
  sub_238439884(v15, &unk_27DF0B080, &unk_2387662A0);
  v33 = v43;
  *&v43[*(v41 + 20)] = v29;
  return sub_23856F65C(v33, &a3[v25[7]]);
}

uint64_t sub_23868CEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_23875D570();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875D3F0();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875D5F0();
  v33 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF134E0, &qword_23877D0B8);
  v32 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF134E8, &qword_23877D0C0);
  v34 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF134F0, &qword_23877D0C8);
  v39 = *(v15 - 8);
  v40 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  sub_23875D740();
  v44 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF134F8, &unk_23877D0D0);
  sub_23843A3E8(&qword_27DF13500, &qword_27DF134F8, &unk_23877D0D0, MEMORY[0x277CDF330]);
  sub_23875C410();
  sub_23875D5E0();
  v18 = sub_23843A3E8(&qword_27DF13508, &qword_27DF134E0, &qword_23877D0B8, MEMORY[0x277CDD6E0]);
  v19 = MEMORY[0x277CDE3A8];
  sub_23875DDA0();
  (*(v33 + 8))(v9, v7);
  (*(v32 + 8))(v12, v10);
  v20 = sub_23875D770();
  v21 = v35;
  sub_23875D3E0();
  v45 = v10;
  v46 = v7;
  v47 = v18;
  v48 = v19;
  v22 = v36;
  v23 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x23EE62710](v20, 0x4034000000000000, 0, v21, v23, OpaqueTypeConformance2);
  (*(v37 + 8))(v21, v38);
  (*(v34 + 8))(v14, v23);
  sub_23875D560();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10560, &qword_2387758C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763B60;
  v26 = sub_23875D760();
  *(inited + 32) = v26;
  v27 = sub_23875D740();
  *(inited + 33) = v27;
  sub_23875D750();
  sub_23875D750();
  if (sub_23875D750() != v26)
  {
    sub_23875D750();
  }

  sub_23875D750();
  if (sub_23875D750() != v27)
  {
    sub_23875D750();
  }

  v45 = v23;
  v46 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v28 = v40;
  sub_23875DCB0();
  (*(v42 + 8))(v22, v43);
  return (*(v39 + 8))(v17, v28);
}

double sub_23868D4F8(uint64_t a1)
{
  v2 = sub_23875D320();
  MEMORY[0x28223BE20](v2);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23852FB48(0, a1);
  MEMORY[0x28223BE20](v3);
  *&v6[-4] = v4;
  sub_23875CE60();
  v6[3] = 0;
  sub_23868EDFC(&qword_27DF0F1E0, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_23875F7C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13510, &qword_23877D0E0);
  sub_23868EE44();
  sub_23875C3E0();

  return result;
}

double sub_23868D6E4(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath(byte_23877D0E8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13528, &qword_23877D108);
  type metadata accessor for OrderDetailsLargeLineItem(0);
  sub_23843A3E8(&qword_27DF13530, &qword_27DF13528, &qword_23877D108, MEMORY[0x277D83980]);
  sub_23868EDFC(&qword_27DF13520, type metadata accessor for OrderDetailsLargeLineItem, &unk_23877D014);
  sub_23875E370();

  return result;
}

double sub_23868D870@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D680, &qword_23876D760) + 48);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23868F0A4(a1 + v4, a2, type metadata accessor for OrderDetailsLargeLineItem.ViewModel);

  return result;
}

uint64_t sub_23868D950()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2387632F0;
  v1 = type metadata accessor for OrderDetailsLargeLineItem.ViewModel(0);
  sub_23856F608(v1, v2, v3);
  v4 = sub_23875F2C0();
  v6 = v5;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_238448C58(v4, v5, v7);
  *(v0 + 32) = v4;
  *(v0 + 40) = v6;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v8 = qword_2814F1B90;
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = sub_23875EA50();
  v12 = [v8 localizedStringForKey:v9 value:v10 table:v11];

  sub_23875EA80();
  v13 = sub_23875EAA0();

  return v13;
}

uint64_t sub_23868DB04()
{
  v32 = sub_23875BD20();
  v1 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v3 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v31 - v5;
  v7 = sub_238758090();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OrderDetailsLargeLineItem.ViewModel(0);
  sub_23843981C(v0 + *(v11 + 20), v6, &unk_27DF0B080, &unk_2387662A0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_238439884(v6, &unk_27DF0B080, &unk_2387662A0);
    return sub_23868D950();
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v31[1] = "FinanceKitUI/LineItemView.swift";
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_238763B60;
    v33 = *(v0 + *(v11 + 24));
    sub_23856F608(v13, v14, v15);
    v16 = sub_23875F2C0();
    v18 = v17;
    v19 = MEMORY[0x277D837D0];
    *(v13 + 56) = MEMORY[0x277D837D0];
    v21 = sub_238448C58(v16, v17, v20);
    *(v13 + 64) = v21;
    *(v13 + 32) = v16;
    *(v13 + 40) = v18;
    sub_23875BCC0();
    v22 = sub_238758080();
    v24 = v23;
    (*(v1 + 8))(v3, v32);
    *(v13 + 96) = v19;
    *(v13 + 104) = v21;
    *(v13 + 72) = v22;
    *(v13 + 80) = v24;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v25 = qword_2814F1B90;
    v26 = sub_23875EA50();
    v27 = sub_23875EA50();
    v28 = sub_23875EA50();
    v29 = [v25 localizedStringForKey:v26 value:v27 table:v28];

    sub_23875EA80();
    v30 = sub_23875EAA0();

    (*(v8 + 8))(v10, v7);
    return v30;
  }
}

void sub_23868DF28(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v44 = a2;
  v42 = sub_23875DFD0();
  v2 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E618, &unk_2387766D0);
  MEMORY[0x28223BE20](v5);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  sub_23875ED50();
  v45 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = type metadata accessor for OrderDetailsLargeLineItem.ViewModel(0);
  sub_23868F0A4(v43 + *(v10 + 28), v9, type metadata accessor for ProductImage.ViewModel);
  v11 = *(type metadata accessor for ProductImage(0) + 20);
  *&v9[v11] = swift_getKeyPath(byte_23877D198);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  v12 = v9;
  v41 = v9;
  swift_storeEnumTagMultiPayload();
  (*(v2 + 104))(v4, *MEMORY[0x277CE0EE0], v42);
  v13 = sub_23875E090();
  KeyPath = swift_getKeyPath(byte_23877D1D0);
  v15 = &v12[*(v5 + 36)];
  v16 = type metadata accessor for OrderImageStyleModifier(0);
  *&v15[*(v16 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v15[*(v16 + 40)] = swift_getKeyPath(byte_23877D198);
  swift_storeEnumTagMultiPayload();
  *v15 = xmmword_23877CF50;
  *(v15 + 2) = 0x3FF0000000000000;
  v15[24] = 0;
  *(v15 + 4) = v13;
  v15[40] = 1;
  v42 = sub_23875D030();
  v48 = 1;
  sub_23868E5F8(&v66);
  v55 = *&v67[80];
  v56 = *&v67[96];
  v57[0] = *&v67[112];
  *(v57 + 12) = *&v67[124];
  v51 = *&v67[16];
  v52 = *&v67[32];
  v53 = *&v67[48];
  v54 = *&v67[64];
  v49 = v66;
  v50 = *v67;
  v58[6] = *&v67[80];
  v58[7] = *&v67[96];
  v59[0] = *&v67[112];
  *(v59 + 12) = *&v67[124];
  v58[2] = *&v67[16];
  v58[3] = *&v67[32];
  v58[4] = *&v67[48];
  v58[5] = *&v67[64];
  v58[0] = v66;
  v58[1] = *v67;
  sub_23843981C(&v49, &v61, &qword_27DF13560, &qword_23877D208);
  sub_238439884(v58, &qword_27DF13560, &qword_23877D208);
  *&v47[103] = v55;
  *&v47[119] = v56;
  *&v47[135] = v57[0];
  *&v47[147] = *(v57 + 12);
  *&v47[39] = v51;
  *&v47[55] = v52;
  *&v47[71] = v53;
  *&v47[87] = v54;
  *&v47[7] = v49;
  *&v47[23] = v50;
  LOBYTE(KeyPath) = v48;
  v17 = sub_23875D770();
  sub_23875C3D0();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = v41;
  v27 = v46;
  sub_23843981C(v41, v46, &qword_27DF0E618, &unk_2387766D0);
  v28 = v27;
  v29 = v44;
  sub_23843981C(v28, v44, &qword_27DF0E618, &unk_2387766D0);
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13568, &qword_23877D210) + 48);
  *(&v62[7] + 1) = *&v47[112];
  *(&v62[8] + 1) = *&v47[128];
  *(&v62[9] + 1) = *&v47[144];
  *(&v62[3] + 1) = *&v47[48];
  *(&v62[4] + 1) = *&v47[64];
  *(&v62[5] + 1) = *&v47[80];
  *(&v62[6] + 1) = *&v47[96];
  *(&v62[1] + 1) = *&v47[16];
  v31 = v29 + v30;
  v32 = v42;
  v61 = v42;
  LOBYTE(v62[0]) = KeyPath;
  LODWORD(v62[10]) = *&v47[159];
  *(&v62[2] + 1) = *&v47[32];
  *(v62 + 1) = *v47;
  BYTE8(v62[10]) = v17;
  *(&v62[10] + 9) = *v60;
  HIDWORD(v62[10]) = *&v60[3];
  *&v63 = v19;
  *(&v63 + 1) = v21;
  *&v64 = v23;
  *(&v64 + 1) = v25;
  v65 = 0;
  *(v31 + 224) = 0;
  v33 = v62[8];
  *(v31 + 128) = v62[7];
  *(v31 + 144) = v33;
  v34 = v62[4];
  *(v31 + 64) = v62[3];
  *(v31 + 80) = v34;
  v35 = v62[6];
  *(v31 + 96) = v62[5];
  *(v31 + 112) = v35;
  v36 = v62[0];
  *v31 = v61;
  *(v31 + 16) = v36;
  v37 = v62[2];
  *(v31 + 32) = v62[1];
  *(v31 + 48) = v37;
  v38 = v64;
  *(v31 + 192) = v63;
  *(v31 + 208) = v38;
  v39 = v62[10];
  *(v31 + 160) = v62[9];
  *(v31 + 176) = v39;
  sub_23843981C(&v61, &v66, &qword_27DF13570, &qword_23877D218);
  sub_238439884(v26, &qword_27DF0E618, &unk_2387766D0);
  *&v67[113] = *&v47[112];
  *&v67[129] = *&v47[128];
  *v68 = *&v47[144];
  *&v67[49] = *&v47[48];
  *&v67[65] = *&v47[64];
  *&v67[81] = *&v47[80];
  *&v67[97] = *&v47[96];
  *&v67[1] = *v47;
  *&v67[17] = *&v47[16];
  v66 = v32;
  v67[0] = KeyPath;
  *&v68[15] = *&v47[159];
  *&v67[33] = *&v47[32];
  v69 = v17;
  *v70 = *v60;
  *&v70[3] = *&v60[3];
  v71 = v19;
  v72 = v21;
  v73 = v23;
  v74 = v25;
  v75 = 0;
  sub_238439884(&v66, &qword_27DF13570, &qword_23877D218);
  sub_238439884(v46, &qword_27DF0E618, &unk_2387766D0);
}

double sub_23868E5F8@<D0>(_OWORD *a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  sub_2384397A8(isCurrentExecutor, v4, v5);

  v31 = sub_23875DAA0();
  v28 = v6;
  v8 = v7;
  v32 = v9;
  KeyPath = swift_getKeyPath(byte_23877D220);
  v27 = sub_23875D820();
  v10 = swift_getKeyPath(aX_18);
  v11 = v8 & 1;
  v29 = v8 & 1;
  v12 = sub_23875D420();
  v56 = sub_23868DB04();
  v57 = v13;
  v14 = sub_23875DAA0();
  v25 = v16;
  v26 = v15;
  v18 = v17;
  v19 = swift_getKeyPath(byte_23877D220);
  v24 = sub_23875D7F0();
  v23 = swift_getKeyPath(aX_18);
  LOBYTE(v56) = v18 & 1;
  v20 = sub_23875D440();
  *&v39 = v31;
  *(&v39 + 1) = v28;
  LOBYTE(v40) = v11;
  *(&v40 + 1) = v32;
  *&v41 = KeyPath;
  *(&v41 + 1) = 1;
  v42[0] = 0;
  *&v42[8] = v10;
  *&v42[16] = v27;
  *&v42[24] = v12;
  v33 = v41;
  *v34 = *v42;
  *&v34[12] = *&v42[12];
  *&v43 = v14;
  *(&v43 + 1) = v26;
  LOBYTE(v44) = v18 & 1;
  *(&v44 + 1) = v25;
  *&v45 = v19;
  *(&v45 + 1) = 1;
  v46[0] = 0;
  *&v46[8] = v23;
  *&v46[16] = v24;
  *&v46[24] = v20;
  *&v38[12] = *&v46[12];
  v37 = v45;
  *v38 = *v46;
  v35 = v43;
  v36 = v44;
  v21 = v40;
  *a2 = v39;
  a2[1] = v21;
  a2[4] = *&v34[16];
  a2[5] = v35;
  a2[2] = v33;
  a2[3] = *v34;
  *(a2 + 140) = *&v38[12];
  a2[7] = v37;
  a2[8] = *v38;
  a2[6] = v36;
  v47[0] = v14;
  v47[1] = v26;
  v48 = v18 & 1;
  v49 = v25;
  v50 = v19;
  v51 = 1;
  v52 = 0;
  v53 = v23;
  v54 = v24;
  v55 = v20;
  sub_23843981C(&v39, &v56, &qword_27DF09318, &unk_23877D280);
  sub_23843981C(&v43, &v56, &qword_27DF09318, &unk_23877D280);
  sub_238439884(v47, &qword_27DF09318, &unk_23877D280);
  v56 = v31;
  v57 = v28;
  v58 = v29;
  v59 = v32;
  v60 = KeyPath;
  v61 = 1;
  v62 = 0;
  v63 = v10;
  v64 = v27;
  v65 = v12;
  sub_238439884(&v56, &qword_27DF09318, &unk_23877D280);

  return result;
}

double sub_23868E8EC@<D0>(uint64_t a2@<X8>)
{
  *a2 = sub_23875D030();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13550, &qword_23877D180);
  sub_23868DF28(v2, a2 + *(v4 + 44));
  sub_23875E4A0();
  sub_23875C5C0();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13558, &unk_23877D188) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

uint64_t sub_23868E99C(void *a1, void *a2)
{
  v4 = sub_238758090();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC88, &qword_23876D250);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  if (*a1 != *a2 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v26 = v7;
  v27 = type metadata accessor for OrderDetailsLargeLineItem.ViewModel(0);
  v14 = v27[5];
  v15 = *(v11 + 48);
  sub_23843981C(a1 + v14, v13, &unk_27DF0B080, &unk_2387662A0);
  sub_23843981C(a2 + v14, &v13[v15], &unk_27DF0B080, &unk_2387662A0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_23843981C(v13, v10, &unk_27DF0B080, &unk_2387662A0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v17 = &v13[v15];
      v18 = v26;
      (*(v5 + 32))(v26, v17, v4);
      sub_23868EDFC(&qword_27DF0BC90, MEMORY[0x277CC6DC0], MEMORY[0x277CC6DD0]);
      v19 = sub_23875E9E0();
      v20 = *(v5 + 8);
      v20(v18, v4);
      v20(v10, v4);
      sub_238439884(v13, &unk_27DF0B080, &unk_2387662A0);
      if ((v19 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v5 + 8))(v10, v4);
LABEL_8:
    sub_238439884(v13, &qword_27DF0BC88, &qword_23876D250);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_238439884(v13, &unk_27DF0B080, &unk_2387662A0);
LABEL_10:
  if (*(a1 + v27[6]) == *(a2 + v27[6]))
  {
    v21 = v27[7];
    v22 = a1 + v21;
    v23 = a2 + v21;
    if (MEMORY[0x23EE5FA60](a1 + v21, v23))
    {
      v24 = type metadata accessor for ProductImage.ViewModel(0);
      if (sub_238518C1C(*&v22[*(v24 + 20)], *&v23[*(v24 + 20)]))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_23868EDFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23868EE44()
{
  result = qword_27DF13518;
  if (!qword_27DF13518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13510, &qword_23877D0E0);
    sub_23868EDFC(&qword_27DF13520, type metadata accessor for OrderDetailsLargeLineItem, &unk_23877D014);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13518);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm_2(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsLargeLineItem.ViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_9Tm_2(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsLargeLineItem.ViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23868F01C(uint64_t a1)
{
  result = type metadata accessor for OrderDetailsLargeLineItem.ViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23868F0A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_23868F10C()
{
  result = qword_27DF13578;
  if (!qword_27DF13578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13558, &unk_23877D188);
    sub_23843A3E8(&qword_27DF13580, &qword_27DF13588, &unk_23877D290, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13578);
  }

  return result;
}

uint64_t sub_23868F1EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3D0, &unk_238771220);
  MEMORY[0x28223BE20](v23);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF135C0, &qword_23877D3E0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF135C8, &qword_23877D3E8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  sub_23868F5E0(v2, v11);
  sub_2387576E0();
  v16 = sub_23875B940();
  (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  v17 = sub_238690F40();
  sub_23875DAC0();
  sub_238439884(v8, &qword_27DF0D040, &qword_2387676A0);
  sub_238439884(v11, &qword_27DF135C0, &qword_23877D3E0);
  v18 = *MEMORY[0x277CDFA00];
  v19 = sub_23875C880();
  (*(*(v19 - 8) + 104))(v5, v18, v19);
  sub_2386916FC(&qword_2814F0998, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_23875E9E0();
  if (result)
  {
    v24 = v9;
    v25 = v17;
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_2814F0870, &qword_27DF0A3D0, &unk_238771220, MEMORY[0x277D84470]);
    sub_23875DC50();
    sub_238439884(v5, &qword_27DF0A3D0, &unk_238771220);
    (*(v13 + 8))(v15, v12);
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF135E8, &qword_23877D408) + 36);
    *(a1 + v21) = swift_getKeyPath(byte_23877D410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_23868F5E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v50 = _s5LargeVMa(0);
  MEMORY[0x28223BE20](v50);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = _s6MediumVMa(0);
  MEMORY[0x28223BE20](v44);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF135F0, &qword_23877D448);
  MEMORY[0x28223BE20](v46);
  v48 = &v40 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF135F8, &qword_23877D450);
  MEMORY[0x28223BE20](v42);
  v8 = &v40 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF135E0, &qword_23877D400);
  MEMORY[0x28223BE20](v47);
  v45 = &v40 - v9;
  v43 = _s5SmallVMa(0);
  MEMORY[0x28223BE20](v43);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23875E7D0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF135D8, &qword_23877D3F8);
  MEMORY[0x28223BE20](v56);
  v49 = &v40 - v16;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13600, &qword_23877D458);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - v17;
  v55 = _s5EmptyVMa(0);
  MEMORY[0x28223BE20](v55);
  v19 = (&v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF135D0, &qword_23877D3F0);
  MEMORY[0x28223BE20](v20 - 8);
  v54 = &v40 - v21;
  sub_23875ED50();
  v53 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(*a1 + 16))
  {
    type metadata accessor for OrderTrackingWidgetEntryView(0);
    sub_2384D4E60(v15);
    v22 = (*(v13 + 88))(v15, v12);
    if (v22 == *MEMORY[0x277CE3B68])
    {
      sub_238691490(a1, v11, type metadata accessor for OrderWidgetTimelineEntry);
      v23 = v43;
      v24 = *(v43 + 20);
      *&v11[v24] = swift_getKeyPath(aX_19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
      swift_storeEnumTagMultiPayload();
      v25 = *(v23 + 24);
      *&v11[v25] = swift_getKeyPath(asc_23877D4C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC68, &unk_23876A220);
      swift_storeEnumTagMultiPayload();
      sub_238691490(v11, v8, _s5SmallVMa);
      swift_storeEnumTagMultiPayload();
      sub_2386916FC(qword_2814F1018, _s5SmallVMa, &unk_238766B10);
      sub_2386916FC(qword_2814F0F78, _s6MediumVMa, &unk_238784440);
      v26 = v45;
      sub_23875D1B0();
      sub_23843981C(v26, v48, &qword_27DF135E0, &qword_23877D400);
      swift_storeEnumTagMultiPayload();
      sub_23869113C();
      sub_2386916FC(qword_2814F10B8, _s5LargeVMa, &unk_2387835B0);
      v27 = v49;
      sub_23875D1B0();
      sub_238439884(v26, &qword_27DF135E0, &qword_23877D400);
      sub_2386914F8(v11, _s5SmallVMa);
    }

    else if (v22 == *MEMORY[0x277CE3B70])
    {
      v29 = v41;
      sub_238691490(a1, v41, type metadata accessor for OrderWidgetTimelineEntry);
      v30 = v44;
      v31 = *(v44 + 20);
      *(v29 + v31) = swift_getKeyPath(aX_19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
      swift_storeEnumTagMultiPayload();
      v32 = v29 + *(v30 + 24);
      *v32 = swift_getKeyPath(aH_15);
      *(v32 + 8) = 0;
      v33 = *(v30 + 28);
      *(v29 + v33) = swift_getKeyPath(asc_23877D4C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC68, &unk_23876A220);
      swift_storeEnumTagMultiPayload();
      sub_238691490(v29, v8, _s6MediumVMa);
      swift_storeEnumTagMultiPayload();
      sub_2386916FC(qword_2814F1018, _s5SmallVMa, &unk_238766B10);
      sub_2386916FC(qword_2814F0F78, _s6MediumVMa, &unk_238784440);
      v34 = v45;
      sub_23875D1B0();
      sub_23843981C(v34, v48, &qword_27DF135E0, &qword_23877D400);
      swift_storeEnumTagMultiPayload();
      sub_23869113C();
      sub_2386916FC(qword_2814F10B8, _s5LargeVMa, &unk_2387835B0);
      v27 = v49;
      sub_23875D1B0();
      sub_238439884(v34, &qword_27DF135E0, &qword_23877D400);
      sub_2386914F8(v29, _s6MediumVMa);
    }

    else
    {
      sub_238691490(a1, v4, type metadata accessor for OrderWidgetTimelineEntry);
      v35 = v50;
      v36 = *(v50 + 20);
      *&v4[v36] = swift_getKeyPath(aX_19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
      swift_storeEnumTagMultiPayload();
      v37 = &v4[*(v35 + 24)];
      *v37 = swift_getKeyPath(aH_15);
      v37[8] = 0;
      v38 = *(v35 + 28);
      *&v4[v38] = swift_getKeyPath(asc_23877D4C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC68, &unk_23876A220);
      swift_storeEnumTagMultiPayload();
      sub_238691490(v4, v48, _s5LargeVMa);
      swift_storeEnumTagMultiPayload();
      sub_23869113C();
      sub_2386916FC(qword_2814F10B8, _s5LargeVMa, &unk_2387835B0);
      v27 = v49;
      sub_23875D1B0();
      sub_2386914F8(v4, _s5LargeVMa);
      (*(v13 + 8))(v15, v12);
    }

    sub_23843981C(v27, v51, &qword_27DF135D8, &qword_23877D3F8);
    swift_storeEnumTagMultiPayload();
    sub_2386916FC(&qword_2814F1150, _s5EmptyVMa, &unk_238763190);
    sub_238691080();
    v28 = v54;
    sub_23875D1B0();
    sub_238439884(v27, &qword_27DF135D8, &qword_23877D3F8);
  }

  else
  {
    *v19 = swift_getKeyPath(byte_23877D4F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2C0, &qword_23876A1A0);
    swift_storeEnumTagMultiPayload();
    sub_238691490(v19, v51, _s5EmptyVMa);
    swift_storeEnumTagMultiPayload();
    sub_2386916FC(&qword_2814F1150, _s5EmptyVMa, &unk_238763190);
    sub_238691080();
    v28 = v54;
    sub_23875D1B0();
    sub_2386914F8(v19, _s5EmptyVMa);
  }

  sub_238691420(v28, v57);

  return result;
}

FinanceKitUI::OrderTrackingWidget __swiftcall OrderTrackingWidget.init()()
{
  *v0 = 0xD000000000000013;
  v0[1] = 0x800000023877D280;
  return result;
}

uint64_t OrderTrackingWidget.body.getter@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v1 = sub_2387591F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13590, &qword_23877D2B8);
  v6 = *(v5 - 8);
  v63 = v5;
  v64 = v6;
  MEMORY[0x28223BE20](v5);
  v60 = &v59 - v7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13598, &qword_23877D2C0);
  v65 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v62 = &v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF135A0, &qword_23877D2C8);
  v10 = *(v9 - 8);
  v67 = v9;
  v68 = v10;
  MEMORY[0x28223BE20](v9);
  *&v75 = &v59 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF135A8, &qword_23877D2D0);
  v13 = *(v12 - 8);
  v69 = v12;
  v70 = v13;
  MEMORY[0x28223BE20](v12);
  v66 = &v59 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF135B0, &qword_23877D2D8);
  v16 = *(v15 - 8);
  v71 = v15;
  v72 = v16;
  MEMORY[0x28223BE20](v15);
  v76 = &v59 - v17;
  sub_238758890();

  v77 = sub_238758880();
  v18 = sub_238758A30();

  v77 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF135B8, &unk_23877D2E0);
  v19 = sub_238690CA0();
  sub_238690DD4(v19, v20, v21);
  sub_23875E840();
  v22 = *MEMORY[0x277CC77B0];
  v61 = *(v2 + 104);
  v23 = v1;
  v61(v4, v22, v1);
  v24 = sub_238758A40();
  v26 = v25;
  v27 = *(v2 + 8);
  v59 = v2 + 8;
  v27(v4, v23);
  v77 = v24;
  v78 = v26;
  v28 = sub_23843A3E8(&qword_2814F08E8, &qword_27DF13590, &qword_23877D2B8, MEMORY[0x277CE3D88]);
  v31 = sub_2384397A8(v28, v29, v30);
  v32 = v63;
  v33 = v60;
  sub_23875D180();

  (*(v64 + 8))(v33, v32);
  v61(v4, v22, v23);
  v34 = sub_238758A40();
  v36 = v35;
  v27(v4, v23);
  v81 = v34;
  v82 = v36;
  v77 = v32;
  v78 = MEMORY[0x277D837D0];
  v79 = v28;
  v80 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v74;
  v39 = v62;
  sub_23875D150();

  (*(v65 + 8))(v39, v38);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2A0, &unk_23877D2F0);
  v40 = sub_23875E7D0();
  v41 = *(v40 - 8);
  v42 = *(v41 + 72);
  v63 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v43 = v63;
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_238763300;
  v45 = v44 + v43;
  LODWORD(v64) = *MEMORY[0x277CE3B68];
  v46 = *(v41 + 104);
  v46(v44 + v43);
  (v46)(v45 + v42, *MEMORY[0x277CE3B70], v40);
  (v46)(v45 + 2 * v42, *MEMORY[0x277CE3B60], v40);
  v77 = v74;
  v78 = MEMORY[0x277D837D0];
  v79 = OpaqueTypeConformance2;
  v80 = v31;
  v47 = swift_getOpaqueTypeConformance2();
  v49 = v66;
  v48 = v67;
  v50 = v75;
  sub_23875D160();

  (*(v68 + 8))(v50, v48);
  v77 = v48;
  v78 = v47;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v69;
  sub_23875D190();
  (*(v70 + 8))(v49, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2A8, &qword_23876A080);
  sub_23875E800();
  v53 = swift_allocObject();
  v75 = xmmword_2387632F0;
  *(v53 + 16) = xmmword_2387632F0;
  sub_23875E7E0();
  v54 = v63;
  v55 = swift_allocObject();
  *(v55 + 16) = v75;
  (v46)(v55 + v54, v64, v40);
  v77 = v52;
  v78 = v51;
  swift_getOpaqueTypeConformance2();
  v56 = v71;
  v57 = v76;
  sub_23875D170();

  return (*(v72 + 8))(v57, v56);
}

uint64_t sub_238690B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238691490(a1, a2, type metadata accessor for OrderWidgetTimelineEntry);
  v4 = *(type metadata accessor for OrderTrackingWidgetEntryView(0) + 20);
  *(a2 + v4) = swift_getKeyPath(byte_23877D4F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2C0, &qword_23876A1A0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath(byte_23877D530);
  sub_238758890();
  sub_238758880();
  v6 = sub_238758A30();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF135B8, &unk_23877D2E0);
  v8 = (a2 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = v6;
  return result;
}