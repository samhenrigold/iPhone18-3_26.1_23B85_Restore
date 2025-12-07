uint64_t DiscoveryController.obtainSFVisibleDevicesProto()()
{
  v1 = sub_22A4DBB4C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR___HMDDiscoveryController_visibleSFDevices);

  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);

  os_unfair_lock_unlock((v5 + 24));

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = sub_229714F94(*(v6 + 16), 0, &qword_27D87D4D0, &unk_22A580DC0, MEMORY[0x277D0EFA8]);
    v9 = sub_22971528C(&v27, &v8[(*(v2 + 80) + 32) & ~*(v2 + 80)], v7, v6);
    sub_22953EE84(v27);
    if (v9 == v7)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v8 = MEMORY[0x277D84F90];
LABEL_5:
  v27 = MEMORY[0x277D84F90];
  v10 = *(v8 + 2);
  if (v10)
  {
    v12 = *(v2 + 16);
    v11 = v2 + 16;
    v25[1] = v8;
    v26 = v12;
    v13 = &v8[(*(v11 + 64) + 32) & ~*(v11 + 64)];
    v14 = MEMORY[0x277D84F90];
    v15 = (v11 - 8);
    v16 = *(v11 + 56);
    v12(v4, v13, v1);
    while (1)
    {
      v17 = [objc_allocWithZone(MEMORY[0x277CD16D8]) init];
      if (v17)
      {
        v18 = v17;
        v19 = v11;
        sub_22A4DBB2C();
        v20 = sub_22A4DD5AC();

        [v18 setIdsIdentifierString_];

        sub_22A4DBB3C();
        if (v21)
        {
          v22 = sub_22A4DD5AC();

          [v18 setMediaRouteIdString_];
        }

        v23 = (*v15)(v4, v1);
        MEMORY[0x22AAD09E0](v23);
        v11 = v19;
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22A4DD85C();
          v11 = v19;
        }

        sub_22A4DD87C();
        v14 = v27;
      }

      else
      {
        (*v15)(v4, v1);
      }

      v13 += v16;
      if (!--v10)
      {
        break;
      }

      v26(v4, v13, v1);
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v14;
}

id sub_2297127D8(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  sub_229562F68(0, &qword_27D87D790, 0x277CD16D8);
  v5 = sub_22A4DD81C();

  return v5;
}

uint64_t sub_229712854()
{
  v1 = sub_22A4DD2FC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR___HMDDiscoveryController_queue];
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_22A4DD31C();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (v0[OBJC_IVAR___HMDDiscoveryController_discoveryNeedsAssertion] != 1 || v0[OBJC_IVAR___HMDDiscoveryController_isDiscoveryAsserted] == 1)
    {
      v8 = *&v0[OBJC_IVAR___HMDDiscoveryController_sfDiscoveryClient + 8];
      ObjectType = swift_getObjectType();
      v10 = swift_allocObject();
      *(v10 + 16) = v0;
      v11 = *(v8 + 176);
      swift_unknownObjectRetain();
      v12 = v0;
      v11(sub_229715F24, v10, ObjectType, v8);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_229712A20(NSObject *a1)
{
  if (!a1)
  {
    oslog = sub_22A4DD05C();
    v8 = sub_22A4DDCCC();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_229538000, oslog, v8, "Started sfDiscovery", v9, 2u);
      MEMORY[0x22AAD4E50](v9, -1, -1);
    }

    goto LABEL_6;
  }

  v2 = a1;
  oslog = sub_22A4DD05C();
  v3 = sub_22A4DDCEC();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = a1;
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v7;
    *v5 = v7;
    _os_log_impl(&dword_229538000, oslog, v3, "Unable to start sfDiscovery %@", v4, 0xCu);
    sub_22953EAE4(v5, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v5, -1, -1);
    MEMORY[0x22AAD4E50](v4, -1, -1);

LABEL_6:
    v10 = oslog;

    goto LABEL_8;
  }

  v10 = a1;

LABEL_8:
}

uint64_t sub_229712BEC()
{
  v1 = sub_22A4DD2FC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR___HMDDiscoveryController_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  v7 = sub_22A4DD31C();
  result = (*(v2 + 8))(v4, v1);
  if (v7)
  {
    v9 = (v0 + OBJC_IVAR___HMDDiscoveryController_sfDiscoveryClient);
    v10 = *(v0 + OBJC_IVAR___HMDDiscoveryController_sfDiscoveryClient + 8);
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 184);
    swift_unknownObjectRetain();
    v12(ObjectType, v10);
    v13 = swift_unknownObjectRelease();
    v14 = (*(v0 + OBJC_IVAR___HMDDiscoveryController_sharingDiscoveryClientFactory))(v13);
    v16 = v15;
    v17 = swift_getObjectType();
    (*(v16 + 16))(v6, v17, v16);
    (*(v16 + 88))(1, v17, v16);
    *v9 = v14;
    v9[1] = v16;
    swift_unknownObjectRelease();
    return sub_2297115D8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_229712DDC(unsigned __int8 a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882100, &unk_22A580DB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28[-v6];
  v8 = sub_22A4DD2FC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v2 + OBJC_IVAR___HMDDiscoveryController_queue);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v13 = v12;
  LOBYTE(v12) = sub_22A4DD31C();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    result = [a2 idsIdentifier];
    if (result)
    {
      v15 = a1;
      v16 = result;
      v17 = sub_22A4DD5EC();
      v19 = v18;

      v20 = [a2 mediaRouteID];
      if (v20)
      {
        v21 = v20;
        v22 = sub_22A4DD5EC();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      if ((v15 - 1) > 1)
      {

        v27 = *(v2 + OBJC_IVAR___HMDDiscoveryController_visibleSFDevices);
        MEMORY[0x28223BE20](v26);
        *&v28[-16] = v17;
        *&v28[-8] = v19;

        os_unfair_lock_lock((v27 + 24));
        sub_229715EE8((v27 + 16), v7);
        os_unfair_lock_unlock((v27 + 24));

        sub_22953EAE4(v7, &qword_27D882100, &unk_22A580DB0);
      }

      else
      {
        v25 = *(v2 + OBJC_IVAR___HMDDiscoveryController_visibleSFDevices);
        MEMORY[0x28223BE20](v20);
        *&v28[-32] = v17;
        *&v28[-24] = v19;
        *&v28[-16] = v22;
        *&v28[-8] = v24;

        os_unfair_lock_lock(v25 + 6);
        sub_229715F04(&v25[4]);
        os_unfair_lock_unlock(v25 + 6);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2297130C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_229543DBC(a2, a3);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *a1;
    v16 = *a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_229898834();
      v10 = v16;
    }

    v11 = *(v10 + 56);
    v12 = sub_22A4DBB4C();
    v13 = *(v12 - 8);
    (*(v13 + 32))(a4, v11 + *(v13 + 72) * v8, v12);
    sub_2297FE0FC(v8, v10);
    *a1 = v10;
    return (*(v13 + 56))(a4, 0, 1, v12);
  }

  else
  {
    v15 = sub_22A4DBB4C();
    return (*(*(v15 - 8) + 56))(a4, 1, 1, v15);
  }
}

uint64_t sub_229713248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882100, &unk_22A580DB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - v8;

  swift_bridgeObjectRetain_n();
  sub_22A4DBB1C();
  v10 = sub_22A4DBB4C();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  return sub_229891494(v9, a2, a3);
}

uint64_t sub_229713368(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880138, &qword_22A580D98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = sub_22A4DD2FC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v3 + OBJC_IVAR___HMDDiscoveryController_queue);
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v16 = v15;
  LOBYTE(v15) = sub_22A4DD31C();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    if (*(v3 + OBJC_IVAR___HMDDiscoveryController_discoveryNeedsAssertion) != 1 || *(v3 + OBJC_IVAR___HMDDiscoveryController_isDiscoveryAsserted) == 1)
    {
      v31 = v5;
      swift_unknownObjectRetain();
      v18 = sub_22A4DD05C();
      v19 = sub_22A4DDCCC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 134217984;
        ObjectType = swift_getObjectType();
        v22 = v33;
        *(v20 + 4) = (*(v33 + 32))(ObjectType, v33);
        swift_unknownObjectRelease();
        _os_log_impl(&dword_229538000, v18, v19, "Set up the companion link client, controlFlags = %llu", v20, 0xCu);
        MEMORY[0x22AAD4E50](v20, -1, -1);
      }

      else
      {

        swift_unknownObjectRelease();
        v22 = v33;
      }

      v33 = swift_getObjectType();
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34[0] = a1;
      v34[1] = v22;
      swift_unknownObjectRetain();
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880140, &unk_22A580DA0);
      MEMORY[0x22AACEC10](v34, v24);
      v26 = v31;
      v25 = v32;
      (*(v6 + 16))(v32, v10, v31);
      v27 = (*(v6 + 80) + 24) & ~*(v6 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = v23;
      (*(v6 + 32))(v28 + v27, v25, v26);
      v29 = *(v22 + 184);

      v29(sub_229715E68, v28, v33, v22);

      (*(v6 + 8))(v10, v26);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_229713770(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      v5 = a1;
      v6 = sub_22A4DD05C();
      v7 = sub_22A4DDCEC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138412290;
        v10 = a1;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v11;
        *v9 = v11;
        _os_log_impl(&dword_229538000, v6, v7, "Error activating RPClient: '%@'", v8, 0xCu);
        sub_22953EAE4(v9, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v9, -1, -1);
        MEMORY[0x22AAD4E50](v8, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880138, &qword_22A580D98);
      sub_22A4DBA4C();
      sub_229713980(120.0, v15, v16);

      swift_unknownObjectRelease();
    }

    else
    {
      v12 = sub_22A4DD05C();
      v13 = sub_22A4DDCCC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_229538000, v12, v13, "RPClient activated successfully", v14, 2u);
        MEMORY[0x22AAD4E50](v14, -1, -1);
      }
    }
  }
}

uint64_t sub_229713980(double a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v39 = sub_22A4DD26C();
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_22A4DD29C();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880138, &qword_22A580D98);
  v7 = *(v42 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v42);
  v10 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v13 = sub_22A4DD2CC();
  v36 = v13;
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - v18;
  v33 = *(v3 + OBJC_IVAR___HMDDiscoveryController_queue);
  sub_22A4DD2AC();
  sub_22A4DD30C();
  v35 = *(v14 + 8);
  v35(v17, v13);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock = a2;
  v45 = v32;
  swift_unknownObjectRetain();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880140, &unk_22A580DA0);
  v31 = v12;
  MEMORY[0x22AACEC10](&aBlock, v21);
  v22 = v12;
  v23 = v42;
  (*(v7 + 16))(v10, v22, v42);
  v24 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v20;
  (*(v7 + 32))(v25 + v24, v10, v23);
  v48 = sub_229715D28;
  v49 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_22953E640;
  v47 = &block_descriptor_90;
  v26 = _Block_copy(&aBlock);

  v27 = v34;
  sub_22A4DD28C();
  v43 = MEMORY[0x277D84F90];
  sub_22953E1D0(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
  v28 = v37;
  v29 = v39;
  sub_22A4DE03C();
  MEMORY[0x22AAD0F40](v19, v27, v28, v26);
  _Block_release(v26);
  (*(v41 + 8))(v28, v29);
  (*(v38 + 8))(v27, v40);
  (*(v7 + 8))(v31, v42);
  v35(v19, v36);
}

void sub_229713ECC(uint64_t a1)
{
  v1 = sub_22A4DD2FC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_22A4DD05C();
    v8 = sub_22A4DDCCC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_229538000, v7, v8, "Restarting RPDevice discovery", v9, 2u);
      MEMORY[0x22AAD4E50](v9, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880138, &qword_22A580D98);
    sub_22A4DBA4C();
    v10 = v15;
    v11 = *&v6[OBJC_IVAR___HMDDiscoveryController_queue];
    *v4 = v11;
    (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
    v12 = v11;
    LOBYTE(v11) = sub_22A4DD31C();
    (*(v2 + 8))(v4, v1);
    if (v11)
    {
      ObjectType = swift_getObjectType();
      (*(v10 + 192))(ObjectType, v10);
      swift_unknownObjectRelease();
      sub_22A4DBA4C();
      sub_229713368(v14[1], v15);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_229714138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22A4DD26C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22A4DD29C();
  v10 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v3[OBJC_IVAR___HMDDiscoveryController_queue];
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  sub_22A4DD28C();
  v19 = MEMORY[0x277D84F90];
  sub_22953E1D0(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
  sub_22A4DE03C();
  MEMORY[0x22AAD0F80](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

void sub_2297143E4(uint64_t a1)
{
  v2 = sub_22A4DD2FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDD0C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_229538000, v6, v7, "Became asserted", v8, 2u);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  *(a1 + OBJC_IVAR___HMDDiscoveryController_isDiscoveryAsserted) = 1;
  if (*(a1 + OBJC_IVAR___HMDDiscoveryController_discoveryNeedsAssertion) == 1)
  {
    v9 = *(a1 + OBJC_IVAR___HMDDiscoveryController_queue);
    *v5 = v9;
    (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
    v10 = v9;
    LOBYTE(v9) = sub_22A4DD31C();
    (*(v3 + 8))(v5, v2);
    if (v9)
    {
      v11 = a1 + OBJC_IVAR___HMDDiscoveryController_rpInfraWifiDiscoveryClient;
      swift_beginAccess();
      v12 = *(v11 + 8);
      v13 = swift_unknownObjectRetain();
      sub_229713368(v13, v12);
      swift_unknownObjectRelease();
      sub_229712854();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2297145E4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_22A4DD26C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22A4DD29C();
  v6 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *&v0[OBJC_IVAR___HMDDiscoveryController_queue];
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  *(v9 + 24) = ObjectType;
  aBlock[4] = sub_229716280;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_147;
  v10 = _Block_copy(aBlock);
  v11 = v0;
  sub_22A4DD28C();
  v15 = MEMORY[0x277D84F90];
  sub_22953E1D0(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
  sub_22A4DE03C();
  MEMORY[0x22AAD0F80](0, v8, v5, v10);
  _Block_release(v10);
  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v14);
}

void sub_2297148AC(uint64_t a1)
{
  v2 = sub_22A4DD2FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDD0C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_229538000, v6, v7, "No more assertions", v8, 2u);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  *(a1 + OBJC_IVAR___HMDDiscoveryController_isDiscoveryAsserted) = 0;
  if (*(a1 + OBJC_IVAR___HMDDiscoveryController_discoveryNeedsAssertion) == 1)
  {
    sub_229712BEC();
    v9 = (a1 + OBJC_IVAR___HMDDiscoveryController_rpInfraWifiDiscoveryClient);
    swift_beginAccess();
    v10 = v9[1];
    v11 = *(a1 + OBJC_IVAR___HMDDiscoveryController_queue);
    *v5 = v11;
    (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
    swift_unknownObjectRetain();
    v12 = v11;
    v13 = sub_22A4DD31C();
    (*(v3 + 8))(v5, v2);
    if (v13)
    {
      ObjectType = swift_getObjectType();
      (*(v10 + 192))(ObjectType, v10);
      v15 = swift_unknownObjectRelease();
      v16 = (*(a1 + OBJC_IVAR___HMDDiscoveryController_rapportDiscoveryClientFactory))(v15);
      v18 = v17;
      v19 = swift_getObjectType();
      (*(v18 + 16))(v12, v19, v18);
      (*(v18 + 40))(0x60000400004, v19, v18);
      *v9 = v16;
      v9[1] = v18;
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_229714B60(uint64_t a1, const char *a2, ...)
{

  oslog = sub_22A4DD05C();
  v4 = sub_22A4DDCDC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2295A3E30(*(a1 + OBJC_IVAR____TtCC13HomeKitDaemon15AssertionHandle9Assertion_reason), *(a1 + OBJC_IVAR____TtCC13HomeKitDaemon15AssertionHandle9Assertion_reason + 8), &v11);
    *(v5 + 12) = 2080;
    sub_22A4DB7DC();
    sub_22953E1D0(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v7 = sub_22A4DE5CC();
    v9 = sub_2295A3E30(v7, v8, &v11);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_229538000, oslog, v4, a2, v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v6, -1, -1);
    MEMORY[0x22AAD4E50](v5, -1, -1);
  }
}

id DiscoveryController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DiscoveryController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiscoveryController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_229714EC0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814D0, &unk_22A578030);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
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

void *sub_229714F94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_229715090(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_229715134(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22971528C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_22A4DBB4C();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_22971557C(uint64_t a1)
{
  result = sub_22A4DB7DC();
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

uint64_t sub_22971561C(uint64_t a1)
{
  result = sub_22A4DD07C();
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

uint64_t sub_22971573C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for HomeDeviceEntity(0);
  v32 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  v15 = a4 + 7;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & a4[7];
  if (!a2)
  {
LABEL_18:
    v19 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v19 = 0;
    v29 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      a1 = a4;
      v25 = a4[6];
      v26 = *(v32 + 72);
      sub_22959E67C(v25 + v26 * (v24 | (v19 << 6)), v11);
      sub_22959E73C(v11, v14);
      sub_22959E73C(v14, a2);
      if (v21 == v31)
      {
        a4 = a1;
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += v26;
      result = v21;
      v27 = __OFADD__(v21++, 1);
      a4 = a1;
      if (v27)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = v15[v23];
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v28 = v19 + 1;
    }

    else
    {
      v28 = v20;
    }

    v19 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v16 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_229715980(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t *sub_229715AF0(uint64_t *result, uint64_t **a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_22A4DE09C();
  sub_229562F68(0, a5, a6);
  sub_22959E62C(a7, a5, a6);
  result = sub_22A4DDBAC();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_22A4DE12C())
      {
        goto LABEL_30;
      }

      sub_229562F68(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

void sub_229715D28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880138, &qword_22A580D98);
  v1 = *(v0 + 16);

  sub_229713ECC(v1);
}

uint64_t objectdestroy_86Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880138, &qword_22A580D98);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_229715E68(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880138, &qword_22A580D98);
  v3 = *(v1 + 16);

  sub_229713770(a1, v3);
}

uint64_t sub_229715F74(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  ObjectType = swift_getObjectType();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 24) = v2;
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = v2[12];

  v7(sub_229716220, v6, ObjectType, v2);

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = v2[9];

  v9(sub_229716228, v8, ObjectType, v2);

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = v2[15];

  v11(sub_229716230, v10, ObjectType, v2);

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = v2[18];

  v13(sub_229716254, v12, ObjectType, v2);

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = v2[21];

  v15(sub_229716278, v14, ObjectType, v2);
}

char *sub_229716318(void (*a1)(void *__return_ptr, void), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v7 = 0;
    v17 = MEMORY[0x277D84F90];
    v16 = a1;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x22AAD13F0](v7, a3);
      }

      else
      {
        if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(a3 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v19 = v8;
      a1(&v18, &v19);
      if (v3)
      {

        return v17;
      }

      v11 = i;

      v12 = v18;
      if (v18 != 2)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_22958B0B0(0, *(v17 + 2) + 1, 1, v17);
        }

        v14 = *(v17 + 2);
        v13 = *(v17 + 3);
        if (v14 >= v13 >> 1)
        {
          v17 = sub_22958B0B0((v13 > 1), v14 + 1, 1, v17);
        }

        *(v17 + 2) = v14 + 1;
        v17[v14 + 32] = v12 & 1;
        a1 = v16;
      }

      ++v7;
      i = v11;
      if (v10 == v11)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return MEMORY[0x277D84F90];
}

void sub_229716544(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3, unint64_t *a4, void *a5, unint64_t *a6)
{
  v7 = v6;
  v8 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_229562F68(0, a4, a5);
    sub_22959E62C(a6, a4, a5);
    sub_22A4DDBAC();
    v8 = v34[1];
    v12 = v34[2];
    v13 = v34[3];
    v14 = v34[4];
    v15 = v34[5];
  }

  else
  {
    v16 = -1 << *(a3 + 32);
    v12 = a3 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a3 + 56);

    v14 = 0;
  }

  v32 = v8;
  v33 = MEMORY[0x277D84F90];
  while (v8 < 0)
  {
    v24 = sub_22A4DE12C();
    if (!v24 || (v34[0] = v24, sub_229562F68(0, a4, a5), swift_dynamicCast(), v23 = v35, v21 = v14, v22 = v15, !v35))
    {
LABEL_27:
      v8 = v32;
LABEL_28:
      sub_22953EE84(v8);
      return;
    }

LABEL_19:
    v35 = v23;
    a1(v34, &v35);
    if (v7)
    {

      sub_22953EE84(v32);

      return;
    }

    v25 = v34[0];
    if (LOBYTE(v34[0]) == 2)
    {
      v8 = v32;
    }

    else
    {
      v26 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_22958B0B0(0, *(v33 + 2) + 1, 1, v33);
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      v8 = v32;
      if (v28 >= v27 >> 1)
      {
        v8 = v32;
        v26 = sub_22958B0B0((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v33 = v26;
      v26[v28 + 32] = v25 & 1;
    }

    v14 = v21;
    v15 = v22;
  }

  v19 = v14;
  v20 = v15;
  v21 = v14;
  if (v15)
  {
LABEL_15:
    v22 = (v20 - 1) & v20;
    v23 = *(*(v8 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v23)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= ((v13 + 64) >> 6))
    {
      goto LABEL_28;
    }

    v20 = *(v12 + 8 * v21);
    ++v19;
    if (v20)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_22971682C(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v28 = sub_22A4DB7DC();
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  v25 = v5 + 16;
  v27 = (v5 + 8);
  v29 = a3;

  v13 = 0;
  v24 = MEMORY[0x277D84F90];
  while (v11)
  {
    v14 = v28;
LABEL_11:
    (*(v5 + 16))(v7, *(v29 + 48) + *(v5 + 72) * (__clz(__rbit64(v11)) | (v13 << 6)), v14);
    v26(&v30, v7);
    if (v3)
    {
      (*v27)(v7, v14);

LABEL_19:

      return;
    }

    v11 &= v11 - 1;
    (*v27)(v7, v14);
    v16 = v30;
    if (v30 != 2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_22958B0B0(0, *(v24 + 2) + 1, 1, v24);
      }

      v18 = *(v24 + 2);
      v17 = *(v24 + 3);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v22 = *(v24 + 2);
        v23 = v18 + 1;
        v21 = sub_22958B0B0((v17 > 1), v18 + 1, 1, v24);
        v18 = v22;
        v19 = v23;
        v24 = v21;
      }

      v20 = v24;
      *(v24 + 2) = v19;
      v20[v18 + 32] = v16 & 1;
    }
  }

  v14 = v28;
  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_19;
    }

    v11 = *(v8 + 8 * v15);
    ++v13;
    if (v11)
    {
      v13 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

char *sub_229716AC4(void (*a1)(void *__return_ptr, void), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v15 = a1;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x22AAD13F0](v7, a3);
      }

      else
      {
        if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v9 = *(a3 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v20 = v9;
      a1(__src, &v20);
      if (v3)
      {

        return v8;
      }

      memcpy(v18, __src, sizeof(v18));
      if (get_enum_tag_for_layout_string_13HomeKitDaemon23ExpectedUpdatePassErrorO_0(v18) == 1)
      {
        memcpy(__dst, __src, sizeof(__dst));
        sub_22953EAE4(__dst, &qword_27D880158, &qword_22A580E40);
      }

      else
      {
        memcpy(__dst, __src, sizeof(__dst));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22958B68C(0, *(v8 + 2) + 1, 1, v8);
        }

        v13 = *(v8 + 2);
        v12 = *(v8 + 3);
        if (v13 >= v12 >> 1)
        {
          v8 = sub_22958B68C((v12 > 1), v13 + 1, 1, v8);
        }

        memcpy(v16, __dst, sizeof(v16));
        *(v8 + 2) = v13 + 1;
        memcpy(&v8[272 * v13 + 32], v16, 0x110uLL);
        a1 = v15;
      }

      ++v7;
      if (v11 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_229716CE4(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v6 = 0;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AAD13F0](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        MEMORY[0x22AAD09E0]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22A4DD85C();
        }

        sub_22A4DD87C();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_229716E90(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = sub_22A4DB74C();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v17, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      v13 = v17;
      if (v17)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22958A770(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v15 = v8[2];
    v14 = v8[3];
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      result = sub_22958A770((v14 > 1), v15 + 1, 1, v8);
      v16 = v15 + 1;
      v8 = result;
    }

    v8[2] = v16;
    v8[v15 + 4] = v13;
  }

  while (v7 != v4);
  return v8;
}

char *sub_229717020(uint64_t a1, uint64_t a2)
{
  v4 = sub_22A4DB49C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22A4DB57C();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v45 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v42 - v17;
  MEMORY[0x28223BE20](v16);
  v46 = &v42 - v19;
  v20 = MEMORY[0x277D84F90];
  v52 = MEMORY[0x277D84F90];
  v21 = a1 + *(type metadata accessor for HomePassState(0) + 48);
  v22 = type metadata accessor for HomePassData(0);
  v23 = (v21 + v22[14]);
  v24 = v23[1];
  if (v24 && *(v21 + v22[19]) == 1 && *(a2 + 40) == 1)
  {
    v25 = *v23;
    if (*(v21 + v22[11]) == 1 && *(v21 + v22[10]) != 5)
    {
      sub_22A4DB54C();
      v38 = v49;
      sub_22A4DBD4C();
      v20 = v38;
      sub_22953EAE4(v15, &qword_27D880180, &unk_22A586590);
      if (v38)
      {
        return v20;
      }

      v42 = v25;
      v49 = 0;
      v50 = sub_22A4DB76C();
      v51 = v39;
      v41 = v43;
      v40 = v44;
      (*(v43 + 104))(v6, *MEMORY[0x277CC91D8], v44);
      sub_22962F254();
      sub_22A4DB56C();
      (*(v41 + 8))(v6, v40);

      v26 = v47;
      v28 = v48;
      (*(v47 + 8))(v9, v48);
      (*(v26 + 56))(v18, 0, 1, v28);
      v27 = v46;
      sub_2297193E8(v18, v46);
    }

    else
    {
      v42 = *v23;
      v27 = v46;
      v26 = v47;
      v28 = v48;
      (*(v47 + 56))(v46, 1, 1, v48);
    }

    v20 = sub_22958A53C(0, 1, 1, MEMORY[0x277D84F90]);
    v30 = *(v20 + 2);
    v29 = *(v20 + 3);
    if (v30 >= v29 >> 1)
    {
      v20 = sub_22958A53C((v29 > 1), v30 + 1, 1, v20);
    }

    *(v20 + 2) = v30 + 1;
    v31 = &v20[16 * v30];
    *(v31 + 4) = 0xD000000000000028;
    *(v31 + 5) = 0x800000022A593BB0;
    v32 = sub_229717AE8(v42, v24, v27);
    sub_2296F0AA0(v32);
    v33 = v45;
    sub_229719378(v27, v45);
    if ((*(v26 + 48))(v33, 1, v28) == 1)
    {
      sub_22953EAE4(v27, &qword_27D880180, &unk_22A586590);
      sub_22953EAE4(v33, &qword_27D880180, &unk_22A586590);
    }

    else
    {
      sub_22953EAE4(v33, &qword_27D880180, &unk_22A586590);
      v35 = *(v20 + 2);
      v34 = *(v20 + 3);
      if (v35 >= v34 >> 1)
      {
        v20 = sub_22958A53C((v34 > 1), v35 + 1, 1, v20);
      }

      sub_22953EAE4(v27, &qword_27D880180, &unk_22A586590);
      *(v20 + 2) = v35 + 1;
      v36 = &v20[16 * v35];
      *(v36 + 4) = 0xD00000000000002ELL;
      *(v36 + 5) = 0x800000022A593BE0;
    }
  }

  return v20;
}

id sub_2297175BC@<X0>(void *a1@<X0>, uint64_t *a2@<X2>, void *a3@<X8>, uint64_t a4@<X1>)
{
  sub_229717DE4(a1, a4, a2, __dst);
  v50 = a2;
  v7 = *(&__dst[7] + 1);
  v8 = *&__dst[8];
  __src[17] = __dst[0];
  v57[0] = __dst[1];
  v57[1] = __dst[2];
  v57[2] = __dst[3];
  v57[3] = __dst[4];
  v57[4] = __dst[5];
  v57[5] = __dst[6];
  v58 = __dst[7];
  v59 = *(&__dst[7] + 1);
  v60 = __dst[8];
  v61 = __dst[9];
  v65 = *(&v57[3] + 8);
  v66 = __dst[0];
  v63 = *(&v57[1] + 8);
  v64 = *(&v57[2] + 8);
  v62 = *(v57 + 8);
  if (!*&__dst[1])
  {

    sub_229718F54(__src);

    memcpy(__dst, __src, 0x110uLL);
    return memcpy(a3, __dst, 0x110uLL);
  }

  v40 = __dst[7];
  v41 = *(&__dst[5] + 1);
  v42 = *&__dst[1];
  v43 = *(&__dst[8] + 1);
  v47 = *(&__dst[6] + 1);
  v48 = *&__dst[6];
  v49 = __dst[9];
  [a1 paymentType];
  result = PKPaymentMethodTypeToString();
  if (result)
  {
    v10 = result;
    v45 = v8;
    v39 = sub_22A4DD5EC();
    v12 = v11;

    v38 = v50[5];
    v13 = [a1 secureElementIdentifier];
    v46 = a3;
    v44 = v7;
    if (v13)
    {
      v14 = v13;
      v15 = sub_22A4DD5EC();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    *&__dst[0] = v15;
    *(&__dst[0] + 1) = v17;
    v36 = MEMORY[0x277D837D0];
    sub_22A4DBD4C();

    v18 = [a1 applicationIdentifier];
    if (v18)
    {
      v19 = v18;
      sub_22A4DD5EC();
    }

    v37 = MEMORY[0x277D837D0];
    sub_22A4DBD4C();

    v20 = v12;
    v21 = *v50;
    v22 = v50[1];
    swift_bridgeObjectRetain_n();
    v23 = sub_2297192BC(4uLL, v21, v22);
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v30 = MEMORY[0x22AAD0860](v23, v25, v27, v29);
    v32 = v31;

    v33 = [a1 paymentNetworkIdentifier];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880168, &qword_22A580E50);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_22A576180;
    __src[11] = v66;
    *(&__src[12] + 8) = v62;
    *(&__src[13] + 8) = v63;
    v35 = v65;
    *(&__src[14] + 8) = v64;
    *(v34 + 32) = v41;
    *(v34 + 40) = v48;
    *(v34 + 48) = v47;
    *(v34 + 56) = v40;
    *(v34 + 64) = v44;
    *(v34 + 72) = v45;
    *(&__src[15] + 8) = v35;
    *&__src[0] = v39;
    *(&__src[0] + 1) = v20;
    *&__src[1] = v38;
    *(&__src[1] + 1) = v54;
    *&__src[2] = v55;
    *(&__src[2] + 1) = v52;
    *&__src[3] = v53;
    *(&__src[3] + 1) = v21;
    *&__src[4] = v22;
    *(&__src[4] + 1) = v30;
    *&__src[5] = v32;
    *(&__src[5] + 8) = xmmword_22A57E210;
    *(&__src[6] + 1) = v33;
    *&__src[7] = 1701670728;
    *(&__src[7] + 1) = 0xE400000000000000;
    LOBYTE(__src[8]) = 0;
    *(&__src[8] + 1) = *v51;
    DWORD1(__src[8]) = *&v51[3];
    *(&__src[8] + 1) = 1;
    *&__src[9] = MEMORY[0x277D84F90];
    *(&__src[9] + 1) = v43;
    *&__src[10] = v49;
    *(&__src[10] + 1) = v34;
    *&__src[12] = v42;
    *(&__src[16] + 1) = *(&v49 + 1);
    nullsub_1();
    memcpy(__dst, __src, 0x110uLL);
    a3 = v46;
    return memcpy(a3, __dst, 0x110uLL);
  }

  __break(1u);
  return result;
}

char *sub_229717AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_22A4DB57C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D3B0, &unk_22A578530);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22A576180;
  *(v13 + 32) = 0xD000000000000028;
  *(v13 + 40) = 0x800000022A593BB0;
  *(v13 + 48) = xmmword_22A580DE0;
  *(v13 + 64) = a1;
  *(v13 + 72) = a2;
  *(v13 + 80) = 0;
  *(v13 + 88) = 0;
  sub_229719378(a3, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_22953EAE4(v8, &qword_27D880180, &unk_22A586590);
    v14 = *(v13 + 16);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);

    v15 = sub_22A4DB4BC();
    v17 = v16;
    v14 = 2;
    v13 = sub_22958B580(1, 2, 1, v13);
    (*(v10 + 8))(v12, v9);
    *(v13 + 16) = 2;
    *(v13 + 96) = 0xD00000000000002ELL;
    *(v13 + 104) = 0x800000022A593BE0;
    *(v13 + 112) = 0;
    *(v13 + 120) = 0;
    *(v13 + 128) = 0xD000000000000019;
    *(v13 + 136) = 0x800000022A593D10;
    *(v13 + 144) = v15;
    *(v13 + 152) = v17;
  }

  v18 = *(v13 + 24);
  if (v14 >= v18 >> 1)
  {
    v13 = sub_22958B580((v18 > 1), v14 + 1, 1, v13);
  }

  *(v13 + 16) = v14 + 1;
  v19 = (v13 + (v14 << 6));
  v19[4] = 0xD00000000000002DLL;
  v19[5] = 0x800000022A589110;
  v19[6] = 0xD000000000000011;
  v19[7] = 0x800000022A593C70;
  v19[8] = 0;
  v19[9] = 0;
  v19[10] = 0xD000000000000076;
  v19[11] = 0x800000022A593C90;
  return v13;
}

uint64_t sub_229717DE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = [a1 paymentNetworkIdentifier];
  if (v8 == 139)
  {
    sub_2297182F8(a1, a2, a3, v35);
    v29 = v35[0];
    v30 = v35[1];
    v27 = v35[2];
    v28 = v35[3];
    v9 = v36;
    v10 = v37;
    v11 = v38;
    sub_229718F80(a2, v39);
    type metadata accessor for HomePassState(0);
    type metadata accessor for HomePassData(0);
    v23 = sub_22A4DB61C();
    v24 = [v23 hmf_hexadecimalRepresentation];

    v14 = sub_22A4DD5EC();
    v16 = v25;

    result = sub_2297187D0(a2);
    v17 = v41;
    v18 = v40;
    v19 = v39[1];
    v22 = v39[2];
    v20 = v39[0];
    goto LABEL_5;
  }

  if (v8 == 133)
  {
    sub_229718044(a1, a3, v31);
    v29 = v31[0];
    v30 = v31[1];
    v27 = v31[2];
    v28 = v31[3];
    v9 = v32;
    v10 = v33;
    v11 = v34;
    type metadata accessor for HomePassState(0);
    type metadata accessor for HomePassData(0);
    v12 = sub_22A4DB61C();
    v13 = [v12 hmf_hexadecimalRepresentation];

    v14 = sub_22A4DD5EC();
    v16 = v15;

    v17 = 0uLL;
    v18 = 1;
    v19 = 0xE900000000000069;
    v20 = 0x63742E322E706365;
    result = MEMORY[0x277D84F90];
    v22 = &unk_283CDBBC8;
LABEL_5:
    *a4 = v29;
    *(a4 + 16) = v30;
    *(a4 + 32) = v27;
    *(a4 + 48) = v28;
    *(a4 + 64) = v9;
    *(a4 + 72) = v10;
    *(a4 + 80) = v11;
    *(a4 + 88) = v20;
    *(a4 + 96) = v19;
    *(a4 + 104) = v22;
    *(a4 + 112) = v18;
    *(a4 + 120) = v17;
    *(a4 + 136) = v14;
    *(a4 + 144) = v16;
    *(a4 + 152) = result;
    return result;
  }

  sub_22962F2A8();
  swift_allocError();
  *v26 = 0xD000000000000018;
  *(v26 + 8) = 0x800000022A593B30;
  *(v26 + 16) = 0;
  return swift_willThrow();
}

void sub_229718044(void *a1@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = [a1 subcredentials];
  if (v6)
  {
    v7 = v6;
    sub_229562F68(0, &qword_27D87E250, 0x277D37D48);
    sub_22959E62C(&qword_27D87E258, &qword_27D87E250, 0x277D37D48);
    sub_22A4DDB6C();
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880170, &qword_22A580E58);
  sub_22A4DBD4C();

  v10 = sub_22962D638(v24);

  if (v10)
  {
    v11 = [v10 identifier];

    if (v11)
    {
      v10 = sub_22A4DD5EC();
      v13 = v12;

      v14 = *(a3 + 40);
      type metadata accessor for HomePassState(0);
      type metadata accessor for HomePassData(0);
      v15 = sub_22A4DB61C();
      v16 = [v15 hmf_hexadecimalRepresentation];

      v17 = sub_22A4DD5EC();
      v19 = v18;

      v20 = sub_22A4DB61C();
      v21 = [v20 hmf_hexadecimalRepresentation];

      v11 = sub_22A4DD5EC();
      v8 = v22;

      v9 = 1;
      goto LABEL_5;
    }

    v14 = 0;
    v10 = 0;
    v13 = 0;
    v17 = 0;
    v19 = 0;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v17 = 0;
    v19 = 0;
    v11 = 0;
  }

  v8 = 0;
  v9 = 0;
LABEL_5:
  *a4 = v14;
  a4[1] = v10;
  a4[2] = v13;
  a4[3] = v17;
  a4[4] = v19;
  a4[5] = v11;
  a4[6] = v8;
  a4[7] = v9;
  a4[9] = 0;
  a4[10] = 0;
  a4[8] = 0;
}

void sub_2297182F8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = [a1 subcredentials];
  if (v7)
  {
    v8 = v7;
    sub_229562F68(0, &qword_27D87E250, 0x277D37D48);
    sub_22959E62C(&qword_27D87E258, &qword_27D87E250, 0x277D37D48);
    sub_22A4DDB6C();
  }

  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880170, &qword_22A580E58);
  sub_22A4DBD4C();

  v9 = sub_22962D638(v63);

  v10 = 0uLL;
  if (v9)
  {
    v11 = [v9 identifier];

    if (v11)
    {
      v12 = sub_22A4DD5EC();
      v14 = v13;

      v15 = a2 + *(type metadata accessor for HomePassState(0) + 48);
      v16 = type metadata accessor for HomePassData(0);
      v17 = *(v15 + *(v16 + 72));
      if (v17 == 2 || (v17 & 1) == 0)
      {
        v18 = 1;
      }

      else
      {
        v18 = 3;
      }

      v59 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814D0, &unk_22A578030);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_22A576180;
      v25 = sub_22A4DB61C();
      v26 = [v25 hmf_hexadecimalRepresentation];

      v27 = sub_22A4DD5EC();
      v29 = v28;

      *(v24 + 32) = v27;
      *(v24 + 40) = v29;
      v58 = v24;
      v30 = *(v15 + *(v16 + 64));
      v31 = *(v30 + 16);
      v32 = MEMORY[0x277D84F90];
      if (v31)
      {
        v54 = v14;
        v55 = v12;
        v56 = a3;
        v57 = a4;
        v62 = MEMORY[0x277D84F90];
        sub_229583334(0, v31, 0);
        v32 = v62;
        v33 = (v30 + 40);
        do
        {
          v61 = v32;
          v35 = *(v33 - 1);
          v34 = *v33;
          v37 = v33[1];
          v36 = v33[2];
          v38 = v33[3];
          v39 = v33[4];
          sub_22956C148(v35, *v33);
          sub_22956C148(v37, v36);
          sub_22956C148(v38, v39);
          v40 = sub_22A4DB61C();
          v41 = [v40 hmf_hexadecimalRepresentation];

          v42 = sub_22A4DD5EC();
          v60 = v43;

          sub_2295798D4(v35, v34);
          sub_2295798D4(v37, v36);
          sub_2295798D4(v38, v39);
          v32 = v61;
          v45 = *(v61 + 16);
          v44 = *(v61 + 24);
          if (v45 >= v44 >> 1)
          {
            sub_229583334((v44 > 1), v45 + 1, 1);
            v32 = v61;
          }

          v33 += 6;
          *(v32 + 16) = v45 + 1;
          v46 = v32 + 16 * v45;
          *(v46 + 32) = v42;
          *(v46 + 40) = v60;
          --v31;
        }

        while (v31);
        a3 = v56;
        a4 = v57;
        v14 = v54;
        v12 = v55;
      }

      sub_2296F0858(v32);
      v9 = v58;
      v19 = *(a3 + 40);
      v47 = sub_22A4DB61C();
      v48 = [v47 hmf_hexadecimalRepresentation];

      v20 = sub_22A4DD5EC();
      v11 = v49;

      v50 = sub_22A4DB61C();
      v51 = [v50 hmf_hexadecimalRepresentation];

      v21 = sub_22A4DD5EC();
      v22 = v52;

      v10 = xmmword_22A580DF0;
      v23 = v59;
    }

    else
    {
      v19 = 0;
      v12 = 0;
      v14 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v9 = 0;
      v10 = 0uLL;
    }
  }

  else
  {
    v19 = 0;
    v12 = 0;
    v14 = 0;
    v20 = 0;
    v11 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  *a4 = v19;
  *(a4 + 8) = v12;
  *(a4 + 16) = v14;
  *(a4 + 24) = v20;
  *(a4 + 32) = v11;
  *(a4 + 40) = v21;
  *(a4 + 48) = v22;
  *(a4 + 56) = v23;
  *(a4 + 64) = v10;
  *(a4 + 80) = v9;
}

uint64_t sub_2297187D0(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for HomePassState(0) + 48);
  v2 = *(v1 + *(type metadata accessor for HomePassData(0) + 64));
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v31 = MEMORY[0x277D84F90];
    sub_229583A00(0, v3, 0);
    v4 = v31;
    v5 = (v2 + 40);
    do
    {
      v30 = v3;
      v6 = *(v5 - 1);
      v7 = *v5;
      v8 = v5[1];
      v9 = v5[2];
      v10 = v5[3];
      v11 = v5[4];
      v26 = v11;
      v27 = v10;
      sub_22956C148(v6, *v5);
      sub_22956C148(v8, v9);
      sub_22956C148(v10, v11);
      v12 = sub_22A4DB61C();
      v13 = [v12 hmf_hexadecimalRepresentation];

      v14 = sub_22A4DD5EC();
      v28 = v15;
      v29 = v14;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880178, &qword_22A580E60);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_22A576180;
      v17 = sub_22A4DB61C();
      v18 = [v17 hmf_hexadecimalRepresentation];

      v19 = sub_22A4DD5EC();
      v21 = v20;

      *(v16 + 32) = 0x31762E6F72696C61;
      *(v16 + 40) = 0xE800000000000000;
      *(v16 + 48) = v19;
      *(v16 + 56) = v21;
      sub_2295798D4(v6, v7);
      sub_2295798D4(v8, v9);
      sub_2295798D4(v27, v26);
      v23 = *(v31 + 16);
      v22 = *(v31 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_229583A00((v22 > 1), v23 + 1, 1);
      }

      v5 += 6;
      *(v31 + 16) = v23 + 1;
      v24 = (v31 + 24 * v23);
      v24[4] = v29;
      v24[5] = v28;
      v24[6] = v16;
      v3 = v30 - 1;
    }

    while (v30 != 1);
  }

  return v4;
}

double sub_2297189F4@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_229717020(a1, a2);
  if (v4)
  {
    return result;
  }

  v12 = v9;
  v13 = v10;
  MEMORY[0x28223BE20](v9);
  v35[2] = a1;
  v35[3] = a2;
  v14 = sub_229716AC4(sub_229718EFC, v35, a3);
  if (!*(v14 + 2))
  {

    sub_22962F2A8();
    swift_allocError();
    *v23 = xmmword_22A580E20;
    *(v23 + 16) = 3;
    swift_willThrow();
    return result;
  }

  v42 = 0;
  v15 = a1 + *(type metadata accessor for HomePassState(0) + 48);
  v16 = type metadata accessor for HomePassData(0);
  v17 = (v15 + v16[22]);
  v18 = v17[1];
  if (v18)
  {
    v19 = *v17;
  }

  else
  {
    v19 = 0;
  }

  v40 = v19;
  v20 = (v15 + v16[9]);
  v21 = v20[1];
  v43 = *v20;
  v22 = *(v15 + v16[13]);
  if (v22 <= 14935010)
  {
    if (v22)
    {
      goto LABEL_13;
    }

    v24 = "rgb(137, 136, 136)";
    v38 = 0x6B63616C62;
    v26 = 0xE500000000000000;
LABEL_17:
    v39 = v26;
    goto LABEL_18;
  }

  if (v22 == 14935011)
  {
    v24 = "rgb(141, 125, 100)";
    v38 = 0x7265766C6973;
    v26 = 0xE600000000000000;
    goto LABEL_17;
  }

  if (v22 != 15521450)
  {
LABEL_13:
    v24 = "v16@?0@SFDevice8";
    v39 = 0xE300000000000000;
    v25 = 7233908;
    goto LABEL_14;
  }

  v24 = "rgb(118, 112, 104)";
  v39 = 0xE400000000000000;
  v25 = 1684828007;
LABEL_14:
  v38 = v25;
LABEL_18:
  v27 = *a2;
  v28 = a2[1];
  v36 = a2[6] & 1;
  v37 = v24 | 0x8000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880148, &qword_22A580E30);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_22A576180;
  *(v29 + 32) = 0x656D614E656D6F68;
  *(v29 + 40) = 0xE800000000000000;
  *(v29 + 48) = v43;
  *(v29 + 56) = v21;
  if (*(v13 + 16))
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    swift_bridgeObjectRetain_n();

    v13 = 0;
  }

  v41 = v18;
  if (*(v12 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880150, &qword_22A580E38);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_22A5761A0;
    *(v30 + 32) = &unk_283CDBB40;
    *(v30 + 40) = 0;
    *(v30 + 48) = 1;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    *(v30 + 72) = v12;
    *(v30 + 80) = 1;
    *(v30 + 88) = 0;
    *(v30 + 96) = xmmword_22A580E00;
  }

  else
  {

    v30 = 0;
  }

  *a4 = sub_22A4DD5EC();
  *(a4 + 8) = v31;
  *(a4 + 16) = v27;
  *(a4 + 24) = v28;
  strcpy((a4 + 32), "appleHomeKey");
  *(a4 + 45) = 0;
  *(a4 + 46) = -5120;
  *(a4 + 48) = v43;
  *(a4 + 56) = v21;
  v32 = v39;
  *(a4 + 64) = v38;
  *(a4 + 72) = v32;
  *(a4 + 80) = v36;
  *&result = 1;
  *(a4 + 88) = xmmword_22A580E10;
  *(a4 + 104) = 0xE400000000000000;
  *(a4 + 112) = 0x504B393539593835;
  *(a4 + 120) = 0xEA00000000004554;
  *(a4 + 128) = 0xD000000000000030;
  *(a4 + 136) = 0x800000022A589290;
  *(a4 + 144) = 1127498050;
  *(a4 + 152) = 0xE400000000000000;
  *(a4 + 160) = &unk_283CDBB70;
  *(a4 + 168) = 0xD000000000000010;
  *(a4 + 176) = 0x800000022A5892D0;
  *(a4 + 184) = 0xD000000000000012;
  *(a4 + 192) = v37;
  *(a4 + 200) = 0xD000000000000010;
  *(a4 + 208) = 0x800000022A5892F0;
  *(a4 + 216) = 1701670728;
  *(a4 + 224) = 0xE400000000000000;
  *(a4 + 232) = 0;
  *(a4 + 240) = 7105633;
  *(a4 + 248) = 0xE300000000000000;
  *(a4 + 256) = 0xD000000000000033;
  *(a4 + 264) = 0x800000022A589310;
  *(a4 + 272) = 0xD000000000000013;
  *(a4 + 280) = 0x800000022A589350;
  *(a4 + 288) = 0;
  *(a4 + 296) = 0;
  *(a4 + 304) = 0;
  *(a4 + 312) = v29;
  *(a4 + 320) = v13;
  v33 = MEMORY[0x277D84F90];
  *(a4 + 328) = v30;
  *(a4 + 336) = v14;
  *(a4 + 344) = 0;
  *(a4 + 352) = v33;
  *(a4 + 360) = 0;
  *(a4 + 368) = 0x4E746361746E6F63;
  *(a4 + 376) = 0xEB00000000656D61;
  *(a4 + 384) = 0;
  *(a4 + 386) = 0;
  *(a4 + 392) = 0xD000000000000010;
  *(a4 + 400) = 0x800000022A5892D0;
  *(a4 + 408) = 0x737365636341;
  *(a4 + 416) = 0xE600000000000000;
  v34 = v41;
  *(a4 + 424) = v40;
  *(a4 + 432) = v34;
  return result;
}

double sub_229718F54(_OWORD *a1)
{
  result = 0.0;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_229718F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for HomePassState(0) + 48);
  v4 = *(v3 + *(type metadata accessor for HomePassData(0) + 64));
  v5 = *(v4 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v47 = a2;
    v51 = MEMORY[0x277D84F90];
    sub_2295839E0(0, v5, 0);
    v7 = (v4 + 40);
    v6 = v51;
    do
    {
      v50 = v6;
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = v7[1];
      v11 = v7[2];
      v12 = v7[3];
      v13 = v7[4];
      v48 = v10;
      v49 = v13;
      sub_22956C148(v8, *v7);
      sub_22956C148(v10, v11);
      sub_22956C148(v12, v13);
      v14 = sub_22A4DB61C();
      v15 = [v14 hmf_hexadecimalRepresentation];

      sub_22A4DD5EC();
      sub_22A4DD6DC();
      v16 = sub_22A4DD79C();
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v23 = MEMORY[0x22AAD0860](v16, v18, v20, v22);
      v25 = v24;

      v26 = v8;
      v6 = v50;
      sub_2295798D4(v26, v9);
      sub_2295798D4(v48, v11);
      sub_2295798D4(v12, v49);
      v28 = *(v50 + 16);
      v27 = *(v50 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_2295839E0((v27 > 1), v28 + 1, 1);
        v6 = v50;
      }

      v7 += 6;
      *(v6 + 16) = v28 + 1;
      v29 = (v6 + 24 * v28);
      v29[4] = v23;
      v29[5] = v25;
      v29[6] = 1;
      --v5;
    }

    while (v5);
    a2 = v47;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814D0, &unk_22A578030);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_22A576180;
  v31 = sub_22A4DB61C();
  v32 = [v31 hmf_hexadecimalRepresentation];

  v33 = sub_22A4DD5EC();
  v35 = v34;

  v36 = sub_2295ACB54(16, v33, v35);
  v38 = v37;
  v40 = v39;
  v42 = v41;

  v43 = MEMORY[0x22AAD0860](v36, v38, v40, v42);
  v45 = v44;

  *(v30 + 32) = v43;
  *(v30 + 40) = v45;
  *a2 = 0x63742E322E706365;
  *(a2 + 8) = 0xE900000000000069;
  *(a2 + 16) = &unk_283CDBB98;
  *(a2 + 24) = 1;
  *(a2 + 32) = v6;
  *(a2 + 40) = v30;
  return result;
}

unint64_t sub_2297192BC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_22A4DD6DC();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_22A4DD79C();
}

uint64_t sub_229719378(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2297193E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_229719458()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D880188);
  __swift_project_value_buffer(v0, qword_27D880188);
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

void sub_2297194D4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v96 - v4;
  v6 = [v1 home];
  if (!v6)
  {
    if (qword_27D87BA60 != -1)
    {
      swift_once();
    }

    v28 = sub_22A4DD07C();
    __swift_project_value_buffer(v28, qword_27D880188);
    v29 = v1;
    v30 = sub_22A4DD05C();
    v31 = sub_22A4DDCEC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v103 = v33;
      *v32 = 136315394;
      v101 = 91;
      v102 = 0xE100000000000000;
      v34 = [v29 logIdentifier];
      v35 = sub_22A4DD5EC();
      v37 = v36;

      MEMORY[0x22AAD08C0](v35, v37);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v38 = sub_2295A3E30(v101, v102, &v103);

      *(v32 + 4) = v38;
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_2295A3E30(0xD000000000000035, 0x800000022A593F20, &v103);
      _os_log_impl(&dword_229538000, v30, v31, "[%s %s] Invalid home", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v33, -1, -1);
      MEMORY[0x22AAD4E50](v32, -1, -1);
    }

    type metadata accessor for HMError(0);
    v103 = 12;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22958E108();
    sub_22A4DB3CC();
    v39 = v101;
    v40 = sub_22A4DB3DC();

    [a1 respondWithError_];
    goto LABEL_27;
  }

  v7 = v6;
  v8 = [objc_msgSend(v6 dataSource)];
  swift_unknownObjectRelease();
  if (!v8)
  {
    if (qword_27D87BA60 != -1)
    {
      swift_once();
    }

    v41 = sub_22A4DD07C();
    __swift_project_value_buffer(v41, qword_27D880188);
    v42 = v1;
    v43 = sub_22A4DD05C();
    v44 = sub_22A4DDCEC();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v103 = v46;
      *v45 = 136315394;
      v101 = 91;
      v102 = 0xE100000000000000;
      v47 = [v42 logIdentifier];
      v48 = sub_22A4DD5EC();
      v50 = v49;

      MEMORY[0x22AAD08C0](v48, v50);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v51 = sub_2295A3E30(v101, v102, &v103);

      *(v45 + 4) = v51;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_2295A3E30(0xD000000000000035, 0x800000022A593F20, &v103);
      _os_log_impl(&dword_229538000, v43, v44, "[%s %s] Missing bulletinBoard", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v46, -1, -1);
      MEMORY[0x22AAD4E50](v45, -1, -1);
    }

    type metadata accessor for HMError(0);
    v103 = -1;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22958E108();
    sub_22A4DB3CC();
    v52 = v101;
    v40 = sub_22A4DB3DC();

    [a1 respondWithError_];
    goto LABEL_27;
  }

  if ([v1 adaptiveTemperatureAutomationsDisclosureStatus])
  {
    if (qword_27D87BA60 != -1)
    {
      swift_once();
    }

    v9 = sub_22A4DD07C();
    __swift_project_value_buffer(v9, qword_27D880188);
    v10 = v1;
    v11 = sub_22A4DD05C();
    v12 = sub_22A4DDCEC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v103 = v100;
      *v13 = 136315650;
      v101 = 91;
      v102 = 0xE100000000000000;
      v14 = [v10 logIdentifier];
      v15 = v7;
      v16 = v8;
      v17 = a1;
      v18 = sub_22A4DD5EC();
      v20 = v19;

      v21 = v18;
      a1 = v17;
      v8 = v16;
      v7 = v15;
      MEMORY[0x22AAD08C0](v21, v20);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v22 = sub_2295A3E30(v101, v102, &v103);

      *(v13 + 4) = v22;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_2295A3E30(0xD000000000000035, 0x800000022A593F20, &v103);
      *(v13 + 22) = 2080;
      v101 = [v10 adaptiveTemperatureAutomationsDisclosureStatus];
      type metadata accessor for HMDUserAdaptiveTemperatureAutomationsDisclosureStatus(0);
      v23 = sub_22A4DBA6C();
      v25 = sub_2295A3E30(v23, v24, &v103);

      *(v13 + 24) = v25;
      _os_log_impl(&dword_229538000, v11, v12, "[%s %s] Not posting bulletin because user is already notified %s", v13, 0x20u);
      v26 = v100;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v26, -1, -1);
      MEMORY[0x22AAD4E50](v13, -1, -1);
    }

    type metadata accessor for HMError(0);
    v27 = 1;
LABEL_26:
    v103 = v27;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22958E108();
    sub_22A4DB3CC();
    v72 = v101;
    v40 = sub_22A4DB3DC();

    [a1 respondWithError_];
LABEL_27:

    return;
  }

  v100 = v8;
  v53 = [v1 swiftExtensions];
  ObjectType = swift_getObjectType();
  v99 = &_s15SwiftExtensionsPMp;
  v55 = swift_conformsToProtocol2();
  if (v55)
  {
    v56 = (*(v55 + 16))(&v101, ObjectType, v55);
    v58 = v57;
    os_unfair_lock_lock(v57);
    os_unfair_lock_opaque_low = LOBYTE(v58[1]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v58);
    v56(&v101, 0);
    swift_unknownObjectRelease();
    if (os_unfair_lock_opaque_low == 1)
    {
      if (qword_27D87BA60 != -1)
      {
        swift_once();
      }

      v60 = sub_22A4DD07C();
      __swift_project_value_buffer(v60, qword_27D880188);
      v61 = v1;
      v62 = sub_22A4DD05C();
      v63 = sub_22A4DDCEC();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v103 = v65;
        *v64 = 136315394;
        v101 = 91;
        v102 = 0xE100000000000000;
        v66 = [v61 logIdentifier];
        v67 = sub_22A4DD5EC();
        v68 = a1;
        v70 = v69;

        MEMORY[0x22AAD08C0](v67, v70);
        a1 = v68;

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v71 = sub_2295A3E30(v101, v102, &v103);

        *(v64 + 4) = v71;
        *(v64 + 12) = 2080;
        *(v64 + 14) = sub_2295A3E30(0xD000000000000035, 0x800000022A593F20, &v103);
        _os_log_impl(&dword_229538000, v62, v63, "[%s %s] Bulletin posting already in progress", v64, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v65, -1, -1);
        MEMORY[0x22AAD4E50](v64, -1, -1);
      }

      v8 = v100;
      type metadata accessor for HMError(0);
      v27 = 15;
      goto LABEL_26;
    }

    if (qword_27D87BA60 != -1)
    {
      swift_once();
    }

    v73 = sub_22A4DD07C();
    __swift_project_value_buffer(v73, qword_27D880188);
    v74 = v1;
    v75 = sub_22A4DD05C();
    v76 = sub_22A4DDCCC();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v103 = v98;
      *v77 = 136315394;
      v101 = 91;
      v102 = 0xE100000000000000;
      v78 = [v74 logIdentifier];
      v97 = v76;
      v79 = v78;
      v80 = sub_22A4DD5EC();
      v81 = a1;
      v83 = v82;

      MEMORY[0x22AAD08C0](v80, v83);
      a1 = v81;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v84 = sub_2295A3E30(v101, v102, &v103);

      *(v77 + 4) = v84;
      *(v77 + 12) = 2080;
      *(v77 + 14) = sub_2295A3E30(0xD000000000000035, 0x800000022A593F20, &v103);
      _os_log_impl(&dword_229538000, v75, v97, "[%s %s] Handling", v77, 0x16u);
      v85 = v98;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v85, -1, -1);
      MEMORY[0x22AAD4E50](v77, -1, -1);
    }

    v86 = [v74 swiftExtensions];
    v87 = swift_getObjectType();
    v88 = swift_conformsToProtocol2();
    if (v88)
    {
      v89 = (*(v88 + 16))(&v101, v87, v88);
      v91 = v90;
      os_unfair_lock_lock(v90);
      LOBYTE(v91[1]._os_unfair_lock_opaque) = 1;
      os_unfair_lock_unlock(v91);
      v89(&v101, 0);
      swift_unknownObjectRelease();
      v92 = sub_22A4DD9DC();
      (*(*(v92 - 8) + 56))(v5, 1, 1, v92);
      v93 = swift_allocObject();
      v93[2] = 0;
      v93[3] = 0;
      v93[4] = v7;
      v93[5] = v74;
      v93[6] = v100;
      v93[7] = a1;
      v94 = v74;
      v95 = a1;
      sub_22957F3C0(0, 0, v5, &unk_22A580EC8, v93);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_22971A1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v7[26] = v8;
  v7[27] = *(v8 - 8);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22971A2CC, 0, 0);
}

uint64_t sub_22971A2CC()
{
  v1 = *(v0 + 184);
  v2 = [*(v0 + 176) name];
  v3 = sub_22A4DD5EC();
  v5 = v4;

  sub_22955B93C(v3, v5, [v1 dataSource]);
  v6 = *(v0 + 216);
  v7 = *(v0 + 224);
  v8 = *(v0 + 208);
  v13 = *(v0 + 192);
  v14 = *(v0 + 176);
  v9 = sub_22A4DD5AC();
  *(v0 + 232) = v9;
  v10 = sub_22A4DD5AC();
  *(v0 + 240) = v10;

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_22971A850;
  swift_continuation_init();
  *(v0 + 136) = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  sub_22A4DD8DC();
  (*(v6 + 32))(boxed_opaque_existential_1, v7, v8);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_229787290;
  *(v0 + 104) = &block_descriptor_60;
  [v13 insertClimateBulletinForHome:v14 title:v9 body:v10 completion:?];
  (*(v6 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_22971A850()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_22971ABC4;
  }

  else
  {
    v2 = sub_22971A960;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22971A960()
{
  v19 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 184);

  [v2 updateAdaptiveTemperatureAutomationsDisclosureStatus_];
  if (qword_27D87BA60 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 184);
  v4 = sub_22A4DD07C();
  __swift_project_value_buffer(v4, qword_27D880188);
  v5 = v3;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCCC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 184);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136315394;
    v18[1] = 91;
    v18[2] = 0xE100000000000000;
    v11 = [v8 logIdentifier];
    v12 = sub_22A4DD5EC();
    v14 = v13;

    MEMORY[0x22AAD08C0](v12, v14);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v15 = sub_2295A3E30(91, 0xE100000000000000, v18);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2295A3E30(0xD000000000000035, 0x800000022A593F20, v18);
    _os_log_impl(&dword_229538000, v6, v7, "[%s %s] Posted bulletin", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v10, -1, -1);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  [*(v0 + 200) respondWithSuccess];

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_22971ABC4(uint64_t a1)
{
  v31 = v1;
  v2 = *(v1 + 240);
  v3 = *(v1 + 232);
  swift_willThrow();

  v4 = *(v1 + 248);
  if (qword_27D87BA60 != -1)
  {
    swift_once();
  }

  v5 = *(v1 + 184);
  v6 = sub_22A4DD07C();
  __swift_project_value_buffer(v6, qword_27D880188);
  v7 = v5;
  v8 = v4;
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCEC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v1 + 184);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v12 = 136315650;
    v30[0] = v14;
    v30[1] = 91;
    v30[2] = 0xE100000000000000;
    v15 = [v11 logIdentifier];
    v16 = sub_22A4DD5EC();
    v18 = v17;

    MEMORY[0x22AAD08C0](v16, v18);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v19 = sub_2295A3E30(91, 0xE100000000000000, v30);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2295A3E30(0xD000000000000035, 0x800000022A593F20, v30);
    *(v12 + 22) = 2112;
    v20 = v4;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v21;
    *v13 = v21;
    _os_log_impl(&dword_229538000, v9, v10, "[%s %s] Failed to post bulletin with error %@", v12, 0x20u);
    sub_2295A1C40(v13);
    MEMORY[0x22AAD4E50](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v14, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  [*(v1 + 184) swiftExtensions];
  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v24 = *(v1 + 200);
    v25 = (*(result + 16))(v1 + 144, ObjectType, result);
    v27 = v26;
    os_unfair_lock_lock(v26);
    LOBYTE(v27[1]._os_unfair_lock_opaque) = 0;
    os_unfair_lock_unlock(v27);
    v25(v1 + 144, 0);
    swift_unknownObjectRelease();
    v28 = sub_22A4DB3DC();
    [v24 respondWithError_];

    v29 = *(v1 + 8);

    return v29();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22971AFA4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - v4;
  if (![v1 isCurrentUser])
  {
    if (qword_27D87BA60 != -1)
    {
      swift_once();
    }

    v10 = sub_22A4DD07C();
    __swift_project_value_buffer(v10, qword_27D880188);
    v11 = v1;
    v12 = sub_22A4DD05C();
    v13 = sub_22A4DDCEC();

    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_15;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136315394;
    v43 = 91;
    v44 = 0xE100000000000000;
    v45 = v15;
    v16 = [v11 logIdentifier];
    v17 = sub_22A4DD5EC();
    v19 = v18;

    MEMORY[0x22AAD08C0](v17, v19);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v20 = sub_2295A3E30(v43, v44, &v45);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_2295A3E30(0xD000000000000042, 0x800000022A593E80, &v45);
    v21 = "[%s %s] Cannot complete for non-current user";
    goto LABEL_9;
  }

  if ([v1 adaptiveTemperatureAutomationsDisclosureStatus] != 1)
  {
    if (qword_27D87BA60 != -1)
    {
      swift_once();
    }

    v22 = sub_22A4DD07C();
    __swift_project_value_buffer(v22, qword_27D880188);
    v23 = v1;
    v12 = sub_22A4DD05C();
    v24 = sub_22A4DDCEC();

    if (!os_log_type_enabled(v12, v24))
    {
      goto LABEL_15;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136315650;
    v43 = 91;
    v44 = 0xE100000000000000;
    v45 = v15;
    v25 = [v23 logIdentifier];
    v26 = sub_22A4DD5EC();
    v28 = v27;

    MEMORY[0x22AAD08C0](v26, v28);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v29 = sub_2295A3E30(v43, v44, &v45);

    *(v14 + 4) = v29;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_2295A3E30(0xD000000000000042, 0x800000022A593E80, &v45);
    *(v14 + 22) = 2080;
    v43 = [v23 adaptiveTemperatureAutomationsDisclosureStatus];
    type metadata accessor for HMDUserAdaptiveTemperatureAutomationsDisclosureStatus(0);
    v30 = sub_22A4DBA6C();
    v32 = sub_2295A3E30(v30, v31, &v45);

    *(v14 + 24) = v32;
    _os_log_impl(&dword_229538000, v12, v24, "[%s %s] Received request for user that is not notified %s", v14, 0x20u);
    goto LABEL_14;
  }

  if ([v1 updateAdaptiveTemperatureAutomationsDisclosureStatus_])
  {
    v6 = sub_22A4DD9DC();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v1;
    v7[5] = a1;
    v8 = v1;
    v9 = a1;
    sub_22957F3C0(0, 0, v5, &unk_22A580EB0, v7);

    return;
  }

  if (qword_27D87BA60 != -1)
  {
    swift_once();
  }

  v35 = sub_22A4DD07C();
  __swift_project_value_buffer(v35, qword_27D880188);
  v36 = v1;
  v12 = sub_22A4DD05C();
  v13 = sub_22A4DDCEC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136315394;
    v43 = 91;
    v44 = 0xE100000000000000;
    v45 = v15;
    v37 = [v36 logIdentifier];
    v38 = sub_22A4DD5EC();
    v40 = v39;

    MEMORY[0x22AAD08C0](v38, v40);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v41 = sub_2295A3E30(v43, v44, &v45);

    *(v14 + 4) = v41;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_2295A3E30(0xD000000000000042, 0x800000022A593E80, &v45);
    v21 = "[%s %s] Unable to update local status";
LABEL_9:
    _os_log_impl(&dword_229538000, v12, v13, v21, v14, 0x16u);
LABEL_14:
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v15, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);
  }

LABEL_15:

  type metadata accessor for HMError(0);
  v45 = 48;
  sub_22956AD8C(MEMORY[0x277D84F90]);
  sub_22958E108();
  sub_22A4DB3CC();
  v33 = v43;
  v34 = sub_22A4DB3DC();

  [a1 respondWithError_];
}

uint64_t sub_22971B664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = swift_task_alloc();
  v5[4] = v6;
  *v6 = v5;
  v6[1] = sub_22971B6F8;

  return sub_22971BB38();
}

uint64_t sub_22971B6F8()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_22971B874;
  }

  else
  {
    v2 = sub_22971B80C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22971B80C()
{
  [*(v0 + 24) respondWithSuccess];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22971B874()
{
  v26 = v0;
  if (qword_27D87BA60 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[2];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D880188);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[5];
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v10 = 136315650;
    v25[1] = 91;
    v25[2] = 0xE100000000000000;
    v13 = [v9 logIdentifier];
    v14 = sub_22A4DD5EC();
    v16 = v15;

    MEMORY[0x22AAD08C0](v14, v16);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v17 = sub_2295A3E30(91, 0xE100000000000000, v25);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD000000000000042, 0x800000022A593E80, v25);
    *(v10 + 22) = 2112;
    v18 = v8;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v19;
    *v11 = v19;
    _os_log_impl(&dword_229538000, v6, v7, "[%s %s] Failed to complete disclosure with error %@", v10, 0x20u);
    sub_2295A1C40(v11);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  v20 = v0[5];
  v21 = v0[3];
  v22 = sub_22A4DB3DC();
  [v21 respondWithError_];

  v23 = v0[1];

  return v23();
}

uint64_t sub_22971BB38()
{
  v1[4] = v0;
  v2 = sub_22A4DB7DC();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22971BC04, 0, 0);
}

uint64_t sub_22971BC04()
{
  v60 = v0;
  v1 = [*(v0 + 32) home];
  *(v0 + 72) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [*(v0 + 32) messageDispatcher];
    *(v0 + 80) = v3;
    if (v3)
    {
      v4 = v3;
      v6 = *(v0 + 56);
      v5 = *(v0 + 64);
      v8 = *(v0 + 40);
      v7 = *(v0 + 48);
      v9 = [*(v0 + 32) messageTargetUUID];
      sub_22A4DB79C();

      v10 = [v2 uuid];
      sub_22A4DB79C();

      v11 = objc_allocWithZone(HMDRemoteHomeMessageDestination);
      v12 = sub_22A4DB77C();
      v13 = sub_22A4DB77C();
      v14 = [v11 initWithTarget:v12 homeUUID:v13];
      *(v0 + 88) = v14;

      v15 = *(v7 + 8);
      v15(v6, v8);
      v15(v5, v8);
      v16 = objc_opt_self();
      v17 = @"HMDUser.completeDisclosureOfAdaptiveTemperatureAutomationsRemoteMessage";
      sub_22956AC5C(MEMORY[0x277D84F90]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v18 = sub_22A4DD47C();

      v19 = [v16 secureMessageWithName:v17 qualityOfService:-1 destination:v14 messagePayload:v18];
      *(v0 + 96) = v19;

      if (qword_27D87BA60 != -1)
      {
        swift_once();
      }

      v20 = *(v0 + 32);
      v21 = sub_22A4DD07C();
      __swift_project_value_buffer(v21, qword_27D880188);
      v22 = v20;
      v23 = v19;
      v24 = sub_22A4DD05C();
      v25 = sub_22A4DDCCC();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = *(v0 + 32);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v57 = v56;
        *v27 = 136315650;
        v58 = 91;
        v59 = 0xE100000000000000;
        v29 = [v26 logIdentifier];
        v30 = v4;
        v31 = sub_22A4DD5EC();
        v33 = v32;

        v34 = v31;
        v4 = v30;
        MEMORY[0x22AAD08C0](v34, v33);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v35 = sub_2295A3E30(91, 0xE100000000000000, &v57);

        *(v27 + 4) = v35;
        *(v27 + 12) = 2080;
        *(v27 + 14) = sub_2295A3E30(0xD000000000000045, 0x800000022A593ED0, &v57);
        *(v27 + 22) = 2112;
        *(v27 + 24) = v23;
        *v28 = v23;
        v36 = v23;
        _os_log_impl(&dword_229538000, v24, v25, "%s %s Sending disclosure notification device message%@", v27, 0x20u);
        sub_2295A1C40(v28);
        MEMORY[0x22AAD4E50](v28, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v56, -1, -1);
        MEMORY[0x22AAD4E50](v27, -1, -1);
      }

      else
      {
      }

      v52 = *(v0 + 32);
      v53 = swift_task_alloc();
      *(v0 + 104) = v53;
      v53[2] = v23;
      v53[3] = v52;
      v53[4] = v4;
      v54 = swift_task_alloc();
      *(v0 + 112) = v54;
      *v54 = v0;
      v54[1] = sub_22971C350;
      v55 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x2822008A0](v54, 0, 0, 0xD000000000000045, 0x800000022A593ED0, sub_2297212F4, v53, v55);
    }
  }

  if (qword_27D87BA60 != -1)
  {
    swift_once();
  }

  v37 = *(v0 + 32);
  v38 = sub_22A4DD07C();
  __swift_project_value_buffer(v38, qword_27D880188);
  v39 = v37;
  v40 = sub_22A4DD05C();
  v41 = sub_22A4DDCEC();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = *(v0 + 32);
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 136315394;
    v57 = v44;
    v58 = 91;
    v59 = 0xE100000000000000;
    v45 = [v42 logIdentifier];
    v46 = sub_22A4DD5EC();
    v48 = v47;

    MEMORY[0x22AAD08C0](v46, v48);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v49 = sub_2295A3E30(91, 0xE100000000000000, &v57);

    *(v43 + 4) = v49;
    *(v43 + 12) = 2080;
    *(v43 + 14) = sub_2295A3E30(0xD000000000000045, 0x800000022A593ED0, &v57);
    _os_log_impl(&dword_229538000, v40, v41, "%s %s Missing context, failed to save", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v44, -1, -1);
    MEMORY[0x22AAD4E50](v43, -1, -1);
  }

  type metadata accessor for HMError(0);
  *(v0 + 24) = 20;
  sub_22956AD8C(MEMORY[0x277D84F90]);
  sub_22958E108();
  sub_22A4DB3CC();
  swift_willThrow();

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_22971C350()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_22971C504;
  }

  else
  {

    v2 = sub_22971C46C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22971C46C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22971C504()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);

  v4 = *(v0 + 8);

  return v4();
}

void sub_22971C604(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v35 - v4;
  if (qword_27D87BA60 != -1)
  {
    swift_once();
  }

  v6 = sub_22A4DD07C();
  __swift_project_value_buffer(v6, qword_27D880188);
  v7 = v1;
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCCC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35 = a1;
    v12 = v11;
    *v10 = 136315394;
    v36 = 91;
    v37 = 0xE100000000000000;
    v38 = v11;
    v13 = [v7 logIdentifier];
    v14 = sub_22A4DD5EC();
    v16 = v15;

    MEMORY[0x22AAD08C0](v14, v16);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v17 = sub_2295A3E30(v36, v37, &v38);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD000000000000048, 0x800000022A593E30, &v38);
    _os_log_impl(&dword_229538000, v8, v9, "%s %s Handling", v10, 0x16u);
    swift_arrayDestroy();
    v18 = v12;
    a1 = v35;
    MEMORY[0x22AAD4E50](v18, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  if ([v7 updateAdaptiveTemperatureAutomationsDisclosureStatus_])
  {
    v19 = sub_22A4DD9DC();
    (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v7;
    v20[5] = a1;
    v21 = v7;
    v22 = a1;
    sub_22957F3C0(0, 0, v5, &unk_22A580EA0, v20);
  }

  else
  {
    v23 = v7;
    v24 = sub_22A4DD05C();
    v25 = sub_22A4DDCCC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 136315394;
      v36 = 91;
      v37 = 0xE100000000000000;
      v38 = v27;
      v28 = [v23 logIdentifier];
      v29 = sub_22A4DD5EC();
      v31 = v30;

      MEMORY[0x22AAD08C0](v29, v31);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v32 = sub_2295A3E30(v36, v37, &v38);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_2295A3E30(0xD000000000000048, 0x800000022A593E30, &v38);
      _os_log_impl(&dword_229538000, v24, v25, "%s %s Unable to update local status", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v27, -1, -1);
      MEMORY[0x22AAD4E50](v26, -1, -1);
    }

    type metadata accessor for HMError(0);
    v38 = 48;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22958E108();
    sub_22A4DB3CC();
    v33 = v36;
    v34 = sub_22A4DB3DC();

    [a1 respondWithError_];
  }
}

uint64_t sub_22971CAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  return MEMORY[0x2822009F8](sub_22971CAF4, 0, 0);
}

uint64_t sub_22971CAF4()
{
  v1 = [*(v0 + 56) swiftExtensions];
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_22957F1C4(v1 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDUser22DefaultSwiftExtensions_storage, v0 + 16);
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_22971CBF4;

    return sub_2297C8DA8(2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22971CBF4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_22971CD7C;
  }

  else
  {
    v2 = sub_22971CD08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22971CD08()
{
  v1 = v0[8];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  [v1 respondWithSuccess];
  v2 = v0[1];

  return v2();
}

uint64_t sub_22971CD7C()
{
  v26 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_27D87BA60 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D880188);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[10];
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v10 = 136315650;
    v25[1] = 91;
    v25[2] = 0xE100000000000000;
    v13 = [v9 logIdentifier];
    v14 = sub_22A4DD5EC();
    v16 = v15;

    MEMORY[0x22AAD08C0](v14, v16);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v17 = sub_2295A3E30(91, 0xE100000000000000, v25);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD000000000000048, 0x800000022A593E30, v25);
    *(v10 + 22) = 2112;
    v18 = v8;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v19;
    *v11 = v19;
    _os_log_impl(&dword_229538000, v6, v7, "[%s %s] Failed to complete disclosure with error %@", v10, 0x20u);
    sub_2295A1C40(v11);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  v20 = v0[10];
  v21 = v0[8];
  v22 = sub_22A4DB3DC();
  [v21 respondWithError_];

  v23 = v0[1];

  return v23();
}

uint64_t sub_22971D0B0(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_22971D0D0, 0, 0);
}

uint64_t sub_22971D0D0()
{
  v45 = v0;
  if ([*(v0 + 72) adaptiveTemperatureAutomationsDisclosureStatus])
  {
    if (qword_27D87BA60 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 72);
    v2 = sub_22A4DD07C();
    __swift_project_value_buffer(v2, qword_27D880188);
    v3 = v1;
    v4 = sub_22A4DD05C();
    v5 = sub_22A4DDCCC();

    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_7;
    }

    v6 = *(v0 + 72);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315906;
    v43 = 91;
    v44 = 0xE100000000000000;
    v9 = [v6 logIdentifier];
    v10 = sub_22A4DD5EC();
    v12 = v11;

    MEMORY[0x22AAD08C0](v10, v12);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v13 = sub_2295A3E30(91, 0xE100000000000000, &v42);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_2295A3E30(0xD000000000000030, 0x800000022A593D70, &v42);
    *(v7 + 22) = 2080;
    v14 = [v6 shortDescription];
    v15 = sub_22A4DD5EC();
    v17 = v16;

    v18 = sub_2295A3E30(v15, v17, &v42);

    *(v7 + 24) = v18;
    *(v7 + 32) = 2080;
    *(v0 + 56) = [v6 adaptiveTemperatureAutomationsDisclosureStatus];
    type metadata accessor for HMDUserAdaptiveTemperatureAutomationsDisclosureStatus(0);
    v19 = sub_22A4DBA6C();
    v21 = sub_2295A3E30(v19, v20, &v42);

    *(v7 + 34) = v21;
    _os_log_impl(&dword_229538000, v4, v5, "%s %s Not sending disclosure notification for user %s status %s", v7, 0x2Au);
LABEL_6:
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
LABEL_7:

    v22 = *(v0 + 8);

    return v22();
  }

  v24 = *(v0 + 64);
  if (!v24)
  {
    if (qword_27D87BA60 != -1)
    {
      swift_once();
    }

    v32 = *(v0 + 72);
    v33 = sub_22A4DD07C();
    __swift_project_value_buffer(v33, qword_27D880188);
    v34 = v32;
    v4 = sub_22A4DD05C();
    v35 = sub_22A4DDCEC();

    if (!os_log_type_enabled(v4, v35))
    {
      goto LABEL_7;
    }

    v36 = *(v0 + 72);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315394;
    v43 = 91;
    v44 = 0xE100000000000000;
    v37 = [v36 logIdentifier];
    v38 = sub_22A4DD5EC();
    v40 = v39;

    MEMORY[0x22AAD08C0](v38, v40);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v41 = sub_2295A3E30(91, 0xE100000000000000, &v42);

    *(v7 + 4) = v41;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_2295A3E30(0xD000000000000030, 0x800000022A593D70, &v42);
    _os_log_impl(&dword_229538000, v4, v35, "%s %s Missing causing device", v7, 0x16u);
    goto LABEL_6;
  }

  v25 = v24;
  v26 = [v25 version];
  if (!v26 || (v27 = v26, v28 = [objc_opt_self() version13_0], v29 = objc_msgSend(v27, sel_compare_, v28), v27, v28, v29 == -1))
  {
    v31 = swift_task_alloc();
    *(v0 + 96) = v31;
    *v31 = v0;
    v31[1] = sub_22971DB04;

    return sub_22971EF74();
  }

  else
  {
    v30 = swift_task_alloc();
    *(v0 + 80) = v30;
    *v30 = v0;
    v30[1] = sub_22971D6AC;

    return sub_22971E5C8(v25);
  }
}

uint64_t sub_22971D6AC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_22971E058;
  }

  else
  {
    v2 = sub_22971D7C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22971D7C0()
{
  v21 = v0;
  if ([*(v0 + 72) updateAdaptiveTemperatureAutomationsDisclosureStatus_])
  {
    v1 = [*(v0 + 72) swiftExtensions];
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    if (result)
    {
      sub_22957F1C4(v1 + OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDUser22DefaultSwiftExtensions_storage, v0 + 16);
      swift_unknownObjectRelease();
      __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v3 = swift_task_alloc();
      *(v0 + 112) = v3;
      *v3 = v0;
      v3[1] = sub_22971DC18;

      return sub_2297C8DA8(1);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_27D87BA60 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 72);
    v5 = sub_22A4DD07C();
    __swift_project_value_buffer(v5, qword_27D880188);
    v6 = v4;
    v7 = sub_22A4DD05C();
    v8 = sub_22A4DDCEC();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = *(v0 + 64);
      v9 = *(v0 + 72);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 136315394;
      v20[0] = v12;
      v20[1] = 91;
      v20[2] = 0xE100000000000000;
      v13 = [v9 logIdentifier];
      v14 = sub_22A4DD5EC();
      v16 = v15;

      MEMORY[0x22AAD08C0](v14, v16);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v17 = sub_2295A3E30(91, 0xE100000000000000, v20);

      *(v11 + 4) = v17;
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_2295A3E30(0xD000000000000030, 0x800000022A593D70, v20);
      _os_log_impl(&dword_229538000, v7, v8, "[%s %s] Unable to update local status", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v12, -1, -1);
      MEMORY[0x22AAD4E50](v11, -1, -1);
    }

    else
    {
      v18 = *(v0 + 64);
    }

    v19 = *(v0 + 8);

    return v19();
  }

  return result;
}

uint64_t sub_22971DB04()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_22971E310;
  }

  else
  {
    v2 = sub_2297215D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22971DC18()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_22971DD94;
  }

  else
  {
    v2 = sub_22971DD2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22971DD2C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22971DD94()
{
  v26 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_27D87BA60 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[9];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D880188);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[15];
  if (v8)
  {
    v10 = v0[9];
    v24 = v0[8];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v11 = 136315650;
    v25[0] = v13;
    v25[1] = 91;
    v25[2] = 0xE100000000000000;
    v14 = [v10 logIdentifier];
    v15 = sub_22A4DD5EC();
    v17 = v16;

    MEMORY[0x22AAD08C0](v15, v17);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v18 = sub_2295A3E30(91, 0xE100000000000000, v25);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2295A3E30(0xD000000000000030, 0x800000022A593D70, v25);
    *(v11 + 22) = 2112;
    v19 = v9;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v20;
    *v12 = v20;
    _os_log_impl(&dword_229538000, v6, v7, "%s %s Failed to save disclosure status %@", v11, 0x20u);
    sub_2295A1C40(v12);
    MEMORY[0x22AAD4E50](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v13, -1, -1);
    MEMORY[0x22AAD4E50](v11, -1, -1);
  }

  else
  {
    v21 = v0[8];
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_22971E058()
{
  v24 = v0;
  v1 = v0[11];
  if (qword_27D87BA60 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D880188);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[9];
    v22 = v0[8];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v9 = 136315650;
    v23[0] = v11;
    v23[1] = 91;
    v23[2] = 0xE100000000000000;
    v12 = [v8 logIdentifier];
    v13 = sub_22A4DD5EC();
    v15 = v14;

    MEMORY[0x22AAD08C0](v13, v15);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v16 = sub_2295A3E30(91, 0xE100000000000000, v23);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2295A3E30(0xD000000000000030, 0x800000022A593D70, v23);
    *(v9 + 22) = 2112;
    v17 = v1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v18;
    *v10 = v18;
    _os_log_impl(&dword_229538000, v6, v7, "%s %s Request disclosure notification failed with error %@", v9, 0x20u);
    sub_2295A1C40(v10);
    MEMORY[0x22AAD4E50](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  else
  {
    v19 = v0[8];
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_22971E310()
{
  v24 = v0;
  v1 = v0[13];
  if (qword_27D87BA60 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D880188);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[9];
    v22 = v0[8];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v9 = 136315650;
    v23[0] = v11;
    v23[1] = 91;
    v23[2] = 0xE100000000000000;
    v12 = [v8 logIdentifier];
    v13 = sub_22A4DD5EC();
    v15 = v14;

    MEMORY[0x22AAD08C0](v13, v15);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v16 = sub_2295A3E30(91, 0xE100000000000000, v23);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2295A3E30(0xD000000000000030, 0x800000022A593D70, v23);
    *(v9 + 22) = 2112;
    v17 = v1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v18;
    *v10 = v18;
    _os_log_impl(&dword_229538000, v6, v7, "%s %s Request disclosure notification failed with error %@", v9, 0x20u);
    sub_2295A1C40(v10);
    MEMORY[0x22AAD4E50](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  else
  {
    v19 = v0[8];
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_22971E5C8(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_22A4DB7DC();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22971E688, 0, 0);
}

uint64_t sub_22971E688()
{
  v53 = v0;
  v1 = [*(v0 + 40) messageDispatcher];
  *(v0 + 72) = v1;
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v0 + 48);
    v6 = *(v0 + 32);
    v7 = [*(v0 + 40) messageTargetUUID];
    sub_22A4DB79C();

    v8 = objc_allocWithZone(HMDRemoteDeviceMessageDestination);
    v9 = sub_22A4DB77C();
    v10 = [v8 initWithTarget:v9 device:v6];
    *(v0 + 80) = v10;

    (*(v4 + 8))(v3, v5);
    v11 = objc_opt_self();
    v12 = @"HMDUser.requestDisclosureNotificationAccountMessage";
    sub_22956AC5C(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v13 = sub_22A4DD47C();

    v14 = [v11 secureMessageWithName:v12 qualityOfService:-1 destination:v10 messagePayload:v13];
    *(v0 + 88) = v14;

    if (qword_27D87BA60 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 40);
    v16 = sub_22A4DD07C();
    __swift_project_value_buffer(v16, qword_27D880188);
    v17 = v15;
    v18 = v14;
    v19 = sub_22A4DD05C();
    v20 = sub_22A4DDCCC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 40);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = v49;
      *v22 = 136315650;
      v51 = 91;
      v52 = 0xE100000000000000;
      v24 = [v21 logIdentifier];
      v25 = sub_22A4DD5EC();
      v27 = v26;

      MEMORY[0x22AAD08C0](v25, v27);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v28 = sub_2295A3E30(91, 0xE100000000000000, &v50);

      *(v22 + 4) = v28;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A593DB0, &v50);
      *(v22 + 22) = 2112;
      *(v22 + 24) = v18;
      *v23 = v18;
      v29 = v18;
      _os_log_impl(&dword_229538000, v19, v20, "%s %s Sending disclosure notification device message %@", v22, 0x20u);
      sub_2295A1C40(v23);
      MEMORY[0x22AAD4E50](v23, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v49, -1, -1);
      MEMORY[0x22AAD4E50](v22, -1, -1);
    }

    else
    {
    }

    v45 = *(v0 + 40);
    v46 = swift_task_alloc();
    *(v0 + 96) = v46;
    v46[2] = v18;
    v46[3] = v45;
    v46[4] = v2;
    v47 = swift_task_alloc();
    *(v0 + 104) = v47;
    *v47 = v0;
    v47[1] = sub_22971ED50;
    v48 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v47, 0, 0, 0xD000000000000031, 0x800000022A593DB0, sub_229720FA4, v46, v48);
  }

  else
  {
    if (qword_27D87BA60 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 40);
    v31 = sub_22A4DD07C();
    __swift_project_value_buffer(v31, qword_27D880188);
    v32 = v30;
    v33 = sub_22A4DD05C();
    v34 = sub_22A4DDCEC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = *(v0 + 40);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 136315394;
      v50 = v37;
      v51 = 91;
      v52 = 0xE100000000000000;
      v38 = [v35 logIdentifier];
      v39 = sub_22A4DD5EC();
      v41 = v40;

      MEMORY[0x22AAD08C0](v39, v41);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v42 = sub_2295A3E30(91, 0xE100000000000000, &v50);

      *(v36 + 4) = v42;
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A593DB0, &v50);
      _os_log_impl(&dword_229538000, v33, v34, "%s %s Message dispatcher is nil", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v37, -1, -1);
      MEMORY[0x22AAD4E50](v36, -1, -1);
    }

    type metadata accessor for HMError(0);
    *(v0 + 24) = 20;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22958E108();
    sub_22A4DB3CC();
    swift_willThrow();

    v43 = *(v0 + 8);

    return v43();
  }
}

uint64_t sub_22971ED50()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_22971EEEC;
  }

  else
  {

    v2 = sub_22971EE6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22971EE6C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 72);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22971EEEC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22971EF74()
{
  v1[4] = v0;
  v2 = sub_22A4DB7DC();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22971F034, 0, 0);
}

uint64_t sub_22971F034()
{
  v52 = v0;
  v1 = [*(v0 + 32) accountHandle];
  *(v0 + 64) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [*(v0 + 32) messageDispatcher];
    *(v0 + 72) = v3;
    if (v3)
    {
      v4 = v3;
      v6 = *(v0 + 48);
      v5 = *(v0 + 56);
      v7 = *(v0 + 40);
      v8 = [*(v0 + 32) messageTargetUUID];
      sub_22A4DB79C();

      v9 = objc_allocWithZone(HMDRemoteAccountMessageDestination);
      v10 = v2;
      v11 = sub_22A4DB77C();
      v12 = [v9 initWithTarget:v11 handle:v10 multicast:1];
      *(v0 + 80) = v12;

      (*(v6 + 8))(v5, v7);
      v13 = [objc_allocWithZone(HMDRemoteMessage) initWithName:@"HMDUser.requestDisclosureNotificationAccountMessage" qualityOfService:-1 destination:v12 payload:0 type:0 timeout:1 secure:0.0 restriction:-1 sendOptions:2];
      *(v0 + 88) = v13;
      if (qword_27D87BA60 != -1)
      {
        swift_once();
      }

      v14 = *(v0 + 32);
      v15 = sub_22A4DD07C();
      __swift_project_value_buffer(v15, qword_27D880188);
      v16 = v14;
      v17 = v13;
      v18 = sub_22A4DD05C();
      v19 = sub_22A4DDCCC();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = *(v0 + 32);
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v49 = v48;
        *v21 = 136315650;
        v50 = 91;
        v51 = 0xE100000000000000;
        v23 = [v20 logIdentifier];
        v24 = sub_22A4DD5EC();
        v26 = v25;

        MEMORY[0x22AAD08C0](v24, v26);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v27 = sub_2295A3E30(91, 0xE100000000000000, &v49);

        *(v21 + 4) = v27;
        *(v21 + 12) = 2080;
        *(v21 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A593DF0, &v49);
        *(v21 + 22) = 2112;
        *(v21 + 24) = v17;
        *v22 = v17;
        v28 = v17;
        _os_log_impl(&dword_229538000, v18, v19, "%s %s Sending disclosure notification account message %@", v21, 0x20u);
        sub_2295A1C40(v22);
        MEMORY[0x22AAD4E50](v22, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v48, -1, -1);
        MEMORY[0x22AAD4E50](v21, -1, -1);
      }

      else
      {
      }

      v44 = *(v0 + 32);
      v45 = swift_task_alloc();
      *(v0 + 96) = v45;
      v45[2] = v44;
      v45[3] = v17;
      v45[4] = v4;
      v46 = swift_task_alloc();
      *(v0 + 104) = v46;
      *v46 = v0;
      v46[1] = sub_22971F6D8;
      v47 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x2822008A0](v46, 0, 0, 0xD000000000000031, 0x800000022A593DF0, sub_229721000, v45, v47);
    }
  }

  if (qword_27D87BA60 != -1)
  {
    swift_once();
  }

  v29 = *(v0 + 32);
  v30 = sub_22A4DD07C();
  __swift_project_value_buffer(v30, qword_27D880188);
  v31 = v29;
  v32 = sub_22A4DD05C();
  v33 = sub_22A4DDCEC();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = *(v0 + 32);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 136315394;
    v49 = v36;
    v50 = 91;
    v51 = 0xE100000000000000;
    v37 = [v34 logIdentifier];
    v38 = sub_22A4DD5EC();
    v40 = v39;

    MEMORY[0x22AAD08C0](v38, v40);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v41 = sub_2295A3E30(91, 0xE100000000000000, &v49);

    *(v35 + 4) = v41;
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A593DF0, &v49);
    _os_log_impl(&dword_229538000, v32, v33, "%s %s Invalid home", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v36, -1, -1);
    MEMORY[0x22AAD4E50](v35, -1, -1);
  }

  type metadata accessor for HMError(0);
  *(v0 + 24) = 20;
  sub_22956AD8C(MEMORY[0x277D84F90]);
  sub_22958E108();
  sub_22A4DB3CC();
  swift_willThrow();

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_22971F6D8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_22971F87C;
  }

  else
  {

    v2 = sub_22971F7F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22971F7F4()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22971F87C()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22971FA94(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  a3;
  v6 = a1;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_22971FB54;

  return sub_22971D0B0(a1);
}

uint64_t sub_22971FB54()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v5 = *v0;

  if (v2)
  {
    v6 = *(v1 + 32);
    v6[2](v6);
    _Block_release(v6);
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_22971FCB4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_22971FA94(v2, v3, v4);
}

uint64_t sub_22971FD68(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - v10;
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  (*(v9 + 32))(v14 + v13, v11, v8);
  *(v12 + 16) = 0;
  *(v12 + 24) = sub_22972100C;
  *(v12 + 32) = v14;
  v15 = a2;
  aBlock[4] = sub_2297210A4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2297986BC;
  aBlock[3] = &block_descriptor_29;
  v16 = _Block_copy(aBlock);

  [a3 setResponseHandler_];
  _Block_release(v16);
  [a4 sendMessage_];
}

void sub_22971FF88(void **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  if (qword_27D87BA60 != -1)
  {
    swift_once();
  }

  v8 = sub_22A4DD07C();
  __swift_project_value_buffer(v8, qword_27D880188);
  v9 = a3;
  v10 = v6;
  v11 = sub_22A4DD05C();
  v12 = sub_22A4DDCCC();

  if (os_log_type_enabled(v11, v12))
  {
    v59 = v7;
    v60 = a4;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v64 = v15;
    *v13 = 136315650;
    v62 = 91;
    v63 = 0xE100000000000000;
    v16 = [v9 logIdentifier];
    v17 = sub_22A4DD5EC();
    v19 = v18;

    MEMORY[0x22AAD08C0](v17, v19);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v20 = sub_2295A3E30(91, 0xE100000000000000, &v64);

    *(v13 + 4) = v20;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A593DF0, &v64);
    *(v13 + 22) = 2112;
    if (v6)
    {
      v21 = v6;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      v23 = v22;
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    *(v13 + 24) = v22;
    *v14 = v23;
    _os_log_impl(&dword_229538000, v11, v12, "%s %s Received response, error %@", v13, 0x20u);
    sub_2295A1C40(v14);
    MEMORY[0x22AAD4E50](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v15, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);

    a4 = v60;
    v7 = v59;
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (!v6)
    {
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
      sub_22A4DD8FC();
      goto LABEL_21;
    }
  }

  if (!v7)
  {
    v32 = v6;
LABEL_18:
    v34 = v9;
    v35 = sub_22A4DD05C();
    v36 = sub_22A4DDCEC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v64 = v38;
      *v37 = 136315394;
      v62 = 91;
      v63 = 0xE100000000000000;
      v39 = [v34 logIdentifier];
      v40 = sub_22A4DD5EC();
      v42 = v41;

      MEMORY[0x22AAD08C0](v40, v42);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v43 = sub_2295A3E30(v62, v63, &v64);

      *(v37 + 4) = v43;
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A593DF0, &v64);
      _os_log_impl(&dword_229538000, v35, v36, "%s %s Missing kRemoteMessageIsFinalResponseKey from response", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v38, -1, -1);
      MEMORY[0x22AAD4E50](v37, -1, -1);
    }

    type metadata accessor for HMError(0);
    v64 = -1;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22958E108();
    sub_22A4DB3CC();
    v64 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    sub_22A4DD8EC();

    goto LABEL_21;
  }

  v24 = sub_22A4DD5EC();
  v26 = v25;
  if (!*(v7 + 16))
  {
    v33 = v6;

    goto LABEL_18;
  }

  v27 = v24;
  v28 = v6;
  v29 = sub_229543DBC(v27, v26);
  v31 = v30;

  if ((v31 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_2295404B0(*(v7 + 56) + 32 * v29, &v62);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  if (v64)
  {
    v62 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    sub_22A4DD8EC();
LABEL_21:
    v44 = 1;
    goto LABEL_22;
  }

  v45 = v9;
  v46 = v6;
  v47 = sub_22A4DD05C();
  v48 = sub_22A4DDCCC();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v64 = v61;
    *v49 = 136315650;
    v62 = 91;
    v63 = 0xE100000000000000;
    v51 = [v45 logIdentifier];
    v52 = sub_22A4DD5EC();
    v53 = a4;
    v55 = v54;

    MEMORY[0x22AAD08C0](v52, v55);
    a4 = v53;

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v56 = sub_2295A3E30(v62, v63, &v64);

    *(v49 + 4) = v56;
    *(v49 + 12) = 2080;
    *(v49 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A593DF0, &v64);
    *(v49 + 22) = 2112;
    v57 = v6;
    v58 = _swift_stdlib_bridgeErrorToNSError();
    *(v49 + 24) = v58;
    *v50 = v58;
    _os_log_impl(&dword_229538000, v47, v48, "%s %s Received response with error %@, waiting for response from other devices", v49, 0x20u);
    sub_2295A1C40(v50);
    MEMORY[0x22AAD4E50](v50, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v61, -1, -1);
    MEMORY[0x22AAD4E50](v49, -1, -1);
  }

  else
  {
  }

  v44 = 0;
LABEL_22:
  *a4 = v44;
}

void sub_2297206EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a3 + 16));
  v6 = *(a3 + 24);
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = *(a3 + 32);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  sub_2295A1C30(v6, v7);

  if (a2)
  {
    sub_2296F7AE8(a2);
  }

  else
  {
    v9 = 0;
  }

  v13 = v9;
  v14 = a1;
  v6(&v12, &v14, &v13);

  if (v12 == 1)
  {

    sub_2295571A0(v6, v7);
LABEL_7:
    v10 = 0;
    v11 = 0;
    goto LABEL_9;
  }

  sub_2295571A0(v6, v7);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2297210AC;
  *(v11 + 24) = v8;
  v10 = sub_2297210F0;
LABEL_9:
  *(a3 + 24) = v10;
  *(a3 + 32) = v11;

  os_unfair_lock_unlock((a3 + 16));
}

uint64_t sub_229720844(void *a1, uint64_t a2, void *a3)
{
  if (qword_27D87BA60 != -1)
  {
    swift_once();
  }

  v5 = sub_22A4DD07C();
  __swift_project_value_buffer(v5, qword_27D880188);
  v6 = a3;
  v7 = a1;
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCCC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v10 = 136315650;
    v23 = v12;
    v13 = [v6 logIdentifier];
    v14 = sub_22A4DD5EC();
    v16 = v15;

    MEMORY[0x22AAD08C0](v14, v16);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v17 = sub_2295A3E30(91, 0xE100000000000000, &v23);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A593DB0, &v23);
    *(v10 + 22) = 2112;
    if (a1)
    {
      v18 = a1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      v20 = v19;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    *(v10 + 24) = v19;
    *v11 = v20;
    _os_log_impl(&dword_229538000, v8, v9, "%s %s Received response, error %@", v10, 0x20u);
    sub_2295A1C40(v11);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  if (a1)
  {
    v21 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    return sub_22A4DD8EC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    return sub_22A4DD8FC();
  }
}

id sub_229720B0C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - v14;
  (*(v13 + 16))(&v21 - v14, a1, v12);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  (*(v13 + 32))(v17 + v16, v15, v12);
  aBlock[4] = a6;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2297986BC;
  aBlock[3] = a7;
  v18 = _Block_copy(aBlock);
  v19 = a3;

  [a2 setResponseHandler_];
  _Block_release(v18);
  return [v22 sendMessage_];
}

uint64_t sub_229720CDC(void *a1, uint64_t a2, void *a3)
{
  if (qword_27D87BA60 != -1)
  {
    swift_once();
  }

  v5 = sub_22A4DD07C();
  __swift_project_value_buffer(v5, qword_27D880188);
  v6 = a3;
  v7 = a1;
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCCC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v10 = 136315650;
    v23 = v12;
    v13 = [v6 logIdentifier];
    v14 = sub_22A4DD5EC();
    v16 = v15;

    MEMORY[0x22AAD08C0](v14, v16);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v17 = sub_2295A3E30(91, 0xE100000000000000, &v23);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD000000000000045, 0x800000022A593ED0, &v23);
    *(v10 + 22) = 2112;
    if (a1)
    {
      v18 = a1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      v20 = v19;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    *(v10 + 24) = v19;
    *v11 = v20;
    _os_log_impl(&dword_229538000, v8, v9, "%s %s Received disclosure notification response, error: %@", v10, 0x20u);
    sub_2295A1C40(v11);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  if (a1)
  {
    v21 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    return sub_22A4DD8EC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    return sub_22A4DD8FC();
  }
}

void sub_22972100C(void **a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v7 = *(v3 + 16);

  sub_22971FF88(a1, a2, v7, a3);
}

uint64_t sub_2297210AC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6 = a2;
  v7 = a1;
  v3(&v5, &v7, &v6);
  return v5;
}

uint64_t sub_2297210F0@<X0>(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = (*(v3 + 16))(*a1, *a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22972112C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_22971CAD4(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_37Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_229721234(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_22971B664(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_17Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_229721420(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0) - 8);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a3(a1, a2, v7, v8);
}

uint64_t sub_2297214C4(uint64_t a1)
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
  v10[1] = sub_229586D38;

  return sub_22971A1FC(a1, v4, v5, v6, v7, v9, v8);
}

void sub_22972163C(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_2295A7CB0();
  v3 = sub_22A4DD81C();
  [Strong accessoryReachabilityDidChange_];
}

id sub_229721724(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = _s15SwiftExtensionsCMa_0();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_229721870()
{
  v1 = [objc_allocWithZone(_s15SwiftExtensionsCMa_0()) init];
  [v0 setSwiftExtensions_];

  v2 = [v0 _swiftExtensions];
  v3 = [v0 notificationCenter];
  v4 = type metadata accessor for WidgetAccessoryReachabilityMonitor();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  v5[14] = MEMORY[0x277D84F98];
  v5[15] = 0;
  v5[16] = 0;
  v5[17] = v3;
  v12.receiver = v5;
  v12.super_class = v4;
  *&v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo26HMDWidgetTimelineRefresherP33_E4AFB2A25343A8F5063AD1A14CCEA93715SwiftExtensions_reachabilityMonitor] = objc_msgSendSuper2(&v12, sel_init);

  v6 = [v0 _swiftExtensions];
  v7 = _s49WidgetAccessoryReachabilityMonitorDelegateAdaptorCMa();
  v8 = objc_allocWithZone(v7);
  swift_unknownObjectUnownedInit();
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  v10 = *&v6[OBJC_IVAR____TtCE13HomeKitDaemonCSo26HMDWidgetTimelineRefresherP33_E4AFB2A25343A8F5063AD1A14CCEA93715SwiftExtensions_reachabilityMonitorDelegateAdapter];
  *&v6[OBJC_IVAR____TtCE13HomeKitDaemonCSo26HMDWidgetTimelineRefresherP33_E4AFB2A25343A8F5063AD1A14CCEA93715SwiftExtensions_reachabilityMonitorDelegateAdapter] = v9;
}

void sub_229721A24()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = [v0 _swiftExtensions];
  v6 = *&v5[OBJC_IVAR____TtCE13HomeKitDaemonCSo26HMDWidgetTimelineRefresherP33_E4AFB2A25343A8F5063AD1A14CCEA93715SwiftExtensions_reachabilityMonitor];

  if (v6)
  {
    v7 = [v1 _swiftExtensions];
    v8 = *&v7[OBJC_IVAR____TtCE13HomeKitDaemonCSo26HMDWidgetTimelineRefresherP33_E4AFB2A25343A8F5063AD1A14CCEA93715SwiftExtensions_reachabilityMonitorDelegateAdapter];
    v9 = v8;

    if (v8)
    {
      v10 = sub_22A4DD9DC();
      (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
      v11 = swift_allocObject();
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = v6;
      v11[5] = v9;
      v11[6] = &off_283CE2C18;
      sub_22957F3C0(0, 0, v4, &unk_22A580F38, v11);
    }

    else
    {
    }
  }
}

uint64_t sub_229721CB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229569B30;

  return sub_2297CA334(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_229721DA0()
{
  if ([v0 isAccessPolicySet])
  {
    v1 = ([v0 userAccessPolicy] >> 1) & 1;
  }

  else
  {
    v2 = [v0 privilege];
    LODWORD(v1) = 0x13u >> v2;
    if (v2 >= 5)
    {
      LOBYTE(v1) = 0;
    }
  }

  return v1 & 1;
}

void sub_22972206C(void *a1)
{
  v1 = [a1 privilege];
  if (v1)
  {
    v2 = v1;
    sub_22A4DDBEC();
  }
}

id sub_2297220F4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v62 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v62 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v62 - v15;
  v17 = sub_22A4DB7DC();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v24 = v62 - v23;
  if (!*(a1 + 16))
  {

LABEL_13:
    sub_22A4DD5EC();
    sub_22A4DD06C();
    v39 = sub_22A4DD05C();
    v40 = sub_22A4DDCEC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v67[0] = v42;
      *v41 = 136315394;
      v43 = sub_22A4DE8EC();
      v45 = sub_2295A3E30(v43, v44, v67);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      *(v41 + 14) = sub_2295A3E30(0xD000000000000011, 0x800000022A594310, v67);
      _os_log_impl(&dword_229538000, v39, v40, "[%s]%s Missing reducedUsageCount", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v42, -1, -1);
      MEMORY[0x22AAD4E50](v41, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }

  v63 = v22;
  v64 = v4;
  v25 = v21;
  v26 = sub_229543DBC(0xD000000000000011, 0x800000022A58C7F0);
  if ((v27 & 1) == 0 || (v62[1] = v2, sub_2295404B0(*(a1 + 56) + 32 * v26, v67), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90), (swift_dynamicCast() & 1) == 0))
  {

    v4 = v64;
    goto LABEL_13;
  }

  if (!*(a1 + 16) || (v28 = v66, v29 = sub_229543DBC(0x44495555656D6F68, 0xEB0000000079654BLL), (v30 & 1) == 0))
  {

    goto LABEL_18;
  }

  sub_2295404B0(*(a1 + 56) + 32 * v29, v67);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    sub_22A4DD5EC();
    sub_22A4DD06C();
    v47 = sub_22A4DD05C();
    v48 = sub_22A4DDCEC();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v64;
    if (v49)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v67[0] = v52;
      *v51 = 136315394;
      v53 = sub_22A4DE8EC();
      v55 = sub_2295A3E30(v53, v54, v67);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;
      *(v51 + 14) = sub_2295A3E30(0xD000000000000011, 0x800000022A594310, v67);
      _os_log_impl(&dword_229538000, v47, v48, "[%s]%s Missing homeUUID", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v52, -1, -1);
      MEMORY[0x22AAD4E50](v51, -1, -1);
    }

    (*(v5 + 8))(v11, v50);
    return 0;
  }

  sub_22A4DB75C();

  v31 = v63;
  if ((*(v63 + 48))(v16, 1, v25) == 1)
  {
    sub_22970D68C(v16);
    sub_22A4DD5EC();
    sub_22A4DD06C();
    v32 = sub_22A4DD05C();
    v33 = sub_22A4DDCEC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v67[0] = v35;
      *v34 = 136315394;
      v36 = sub_22A4DE8EC();
      v38 = sub_2295A3E30(v36, v37, v67);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      *(v34 + 14) = sub_2295A3E30(0xD000000000000011, 0x800000022A594310, v67);
      _os_log_impl(&dword_229538000, v32, v33, "[%s]%s Unable to parse homeUUID", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v35, -1, -1);
      MEMORY[0x22AAD4E50](v34, -1, -1);
    }

    (*(v5 + 8))(v13, v64);
    return 0;
  }

  (*(v31 + 32))(v24, v16, v25);
  (*(v31 + 16))(v20, v24, v25);
  v56 = type metadata accessor for CleanEnergyAutomationConfigurationLogEvent();
  v57 = objc_allocWithZone(v56);
  v58 = &v57[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_coreAnalyticsEventName];
  *v58 = 0xD000000000000034;
  v58[1] = 0x800000022A58C750;
  *&v57[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_coreAnalyticsEventOptions] = 1;
  *&v57[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_accessoryCount] = 0;
  *&v57[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_cleanEnergyAutomationEnabledCount] = 0;
  v57[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_isHomeConnectedToUtility] = 0;
  v57[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_isHomeElectricityRatesEnabled] = 0;
  *&v57[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_reducedUsageCount] = v28;
  v57[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_containsConfigurationData] = 0;
  v59 = sub_22A4DB77C();
  v65.receiver = v57;
  v65.super_class = v56;
  v60 = objc_msgSendSuper2(&v65, sel_initWithHomeUUID_, v59);

  v61 = *(v31 + 8);
  v61(v20, v25);
  v61(v24, v25);
  return v60;
}

uint64_t sub_229722A50()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v3 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v2, 0x726F737365636361, 0xEE00746E756F4379, isUniquelyReferenced_nonNull_native);
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v5, 0xD000000000000021, 0x800000022A594240, v6);
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v7, 0x6375646552736168, 0xEA00000000006465, v8);
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v9, 0xD000000000000018, 0x800000022A594270, v10);
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v11, 0xD00000000000001DLL, 0x800000022A594290, v12);
  return v3;
}

unint64_t sub_229722C64()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A5761A0;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x800000022A58C7F0;
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v8 = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  *(inited + 48) = v7;
  *(inited + 72) = v8;
  *(inited + 80) = 0x44495555656D6F68;
  *(inited + 88) = 0xEB0000000079654BLL;
  v9 = [v1 homeUUID];
  sub_22A4DB79C();

  v10 = sub_22A4DB76C();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 96) = v10;
  *(inited + 104) = v12;
  v13 = sub_22956AC5C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
  swift_arrayDestroy();
  return v13;
}

uint64_t sub_229722EE0()
{
  swift_getObjectType();
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = 91;
  v12[1] = 0xE100000000000000;
  v5 = sub_22A4DE8EC();
  MEMORY[0x22AAD08C0](v5);

  MEMORY[0x22AAD08C0](47, 0xE100000000000000);
  v6 = [v0 homeUUID];
  sub_22A4DB79C();

  sub_229586A3C();
  v7 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v7);

  (*(v2 + 8))(v4, v1);
  MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
  sub_229722A50();
  sub_229562F68(0, &qword_281401760, 0x277D82BB8);
  v8 = sub_22A4DD4AC();
  v10 = v9;

  MEMORY[0x22AAD08C0](v8, v10);

  return v12[0];
}

id sub_2297231BC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CleanEnergyAutomationConfigurationLogEvent();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_229723228()
{
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_2297232A0(uint64_t a1, unsigned int a2)
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

uint64_t sub_2297232FC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22972336C(uint64_t *a1)
{
  v3 = *a1;
  if (*a1 && v3 != *v1)
  {
    *v1 = v3;
    KeyPath = swift_getKeyPath();
  }

  else
  {
    KeyPath = 0;
  }

  v21[4] = KeyPath;
  v5 = a1[1];
  if (v5 && v5 != *(v1 + 8))
  {
    *(v1 + 8) = v5;
    v6 = swift_getKeyPath();
  }

  else
  {
    v6 = 0;
  }

  v21[5] = v6;
  v7 = a1[2];
  if (v7 && v7 != *(v1 + 16))
  {
    *(v1 + 16) = v7;
    v8 = swift_getKeyPath();
  }

  else
  {
    v8 = 0;
  }

  v21[6] = v8;
  v9 = a1[3];
  if (v9 && v9 != *(v1 + 24))
  {
    *(v1 + 24) = v9;
    v10 = swift_getKeyPath();
  }

  else
  {
    v10 = 0;
  }

  v21[7] = v10;
  if ((*(a1 + 36) & 1) != 0 || (v12 = *(a1 + 8), (*(v1 + 36) & 1) == 0) && *MEMORY[0x277CD1F78] >= vabds_f32(v12, *(v1 + 32)))
  {
    v11 = 0;
  }

  else
  {
    *(v1 + 32) = v12;
    *(v1 + 36) = 0;
    v11 = swift_getKeyPath();
  }

  v21[8] = v11;
  result = sub_2297235B0(a1[5], a1[6]);
  v14 = 0;
  v21[9] = result;
  v15 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
LABEL_23:
  if (v14 <= 6)
  {
    v16 = 6;
  }

  else
  {
    v16 = v14;
  }

  while (1)
  {
    if (v14 == 6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880218, &qword_22A581060);
      swift_arrayDestroy();
      v19 = sub_229672478(v15);

      return v19;
    }

    if (v16 == v14)
    {
      break;
    }

    if (v21[v14++ + 4])
    {

      MEMORY[0x22AAD09E0](v18);
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22A4DD85C();
      }

      result = sub_22A4DD87C();
      v15 = v20;
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2297235B0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v5 = *(v2 + 48);
  if (v5)
  {
    v6 = *(v2 + 40) == a1 && v5 == a2;
    if (v6 || (sub_22A4DE60C() & 1) != 0)
    {
      return 0;
    }
  }

  else
  {
  }

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return swift_getKeyPath();
}

uint64_t sub_229723644()
{
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_22A4DE1FC();
  v23 = 0;
  v24 = 0xE000000000000000;
  MEMORY[0x22AAD08C0](0x6B63616279616C70, 0xEF203A6574617453);
  v1 = *v0;
  if (*v0 <= 2)
  {
    if (!v1)
    {
      v2 = 0xE700000000000000;
      v3 = 0x6E776F6E6B6E55;
      goto LABEL_19;
    }

    if (v1 != 1)
    {
      if (v1 == 2)
      {
        v2 = 0xE600000000000000;
        v3 = 0x646573756150;
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    v2 = 0xE700000000000000;
    v4 = 2036427856;
LABEL_18:
    v3 = v4 | 0x676E6900000000;
    goto LABEL_19;
  }

  if (v1 > 4)
  {
    if (v1 == 5)
    {
      v2 = 0xE700000000000000;
      v4 = 1801807187;
    }

    else
    {
      if (v1 != 6)
      {
LABEL_14:
        v2 = 0xE700000000000000;
        v3 = 0x746C7561666564;
        goto LABEL_19;
      }

      v2 = 0xE700000000000000;
      v4 = 1684107084;
    }

    goto LABEL_18;
  }

  if (v1 != 3)
  {
    if (v1 == 4)
    {
      v2 = 0xEB00000000646574;
      v3 = 0x7075727265746E49;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v2 = 0xE700000000000000;
  v3 = 0x646570706F7453;
LABEL_19:
  MEMORY[0x22AAD08C0](v3, v2);

  MEMORY[0x22AAD08C0](0x656C666675687320, 0xEF203A6574617453);
  v5 = *(v0 + 8);
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        v6 = 0xEB00000000736E6FLL;
        v7 = 0x697463656C6C6F43;
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    v6 = 0xE500000000000000;
    v7 = 0x736D657449;
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v6 = 0xE300000000000000;
        v7 = 6710863;
        goto LABEL_29;
      }

LABEL_26:
      v6 = 0xE700000000000000;
      v7 = 0x746C7561666564;
      goto LABEL_29;
    }

    v6 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E55;
  }

LABEL_29:
  MEMORY[0x22AAD08C0](v7, v6);

  MEMORY[0x22AAD08C0](0x5374616570657220, 0xEE00203A65746174);
  v8 = *(v0 + 16);
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      if (v8 == 3)
      {
        v9 = 0xE300000000000000;
        v10 = 7105601;
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = 0xE300000000000000;
    v10 = 6647375;
  }

  else
  {
    if (v8)
    {
      if (v8 == 1)
      {
        v9 = 0xE300000000000000;
        v10 = 6710863;
        goto LABEL_39;
      }

LABEL_36:
      v9 = 0xE700000000000000;
      v10 = 0x746C7561666564;
      goto LABEL_39;
    }

    v9 = 0xE700000000000000;
    v10 = 0x6E776F6E6B6E55;
  }

LABEL_39:
  MEMORY[0x22AAD08C0](v10, v9);

  MEMORY[0x22AAD08C0](0xD000000000000011, 0x800000022A594330);
  v11 = *(v0 + 24);
  v12 = 0xE500000000000000;
  v13 = 0x656B617741;
  v14 = 0xE700000000000000;
  v15 = 0x746C7561666564;
  if (v11 == 1)
  {
    v15 = 0x7065656C53;
    v14 = 0xE500000000000000;
  }

  if (v11 != 2)
  {
    v13 = v15;
    v12 = v14;
  }

  if (v11)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0x6E776F6E6B6E55;
  }

  if (v11)
  {
    v17 = v12;
  }

  else
  {
    v17 = 0xE700000000000000;
  }

  MEMORY[0x22AAD08C0](v16, v17);

  MEMORY[0x22AAD08C0](0x3A656D756C6F7620, 0xE900000000000020);
  LODWORD(v21[0]) = *(v0 + 32);
  BYTE4(v21[0]) = *(v0 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880210, &unk_22A583B10);
  v18 = sub_22A4DD64C();
  MEMORY[0x22AAD08C0](v18);

  MEMORY[0x22AAD08C0](0xD000000000000018, 0x800000022A594350);
  v22 = *(v0 + 40);
  sub_2295F59D4(v0, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EC90, &unk_22A57CFD0);
  v19 = sub_22A4DD64C();
  MEMORY[0x22AAD08C0](v19);

  return v23;
}

id sub_229723AE0(unint64_t a1)
{
  v2 = v1;
  v196 = a1;
  v212 = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v189 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 appleMediaAccessories];
  v202 = 0;
  v8 = sub_229562F68(0, &qword_281401920, off_278666038);
  v9 = sub_22A4DD83C();

  v10 = sub_2296721D4(v9);

  v11 = MEMORY[0x277D84FA0];
  v197 = v8;
  v192 = v3;
  v191 = v4;
  v190 = v6;
  v195 = v10;
  v203 = v2;
  if ((v10 & 0xC000000000000001) == 0)
  {
    v29 = *(v10 + 32);
    v13 = v29 & 0x3F;
    v30 = ((1 << v29) + 63) >> 6;
    v31 = 8 * v30;

    if (v13 <= 0xD)
    {
      goto LABEL_21;
    }

    goto LABEL_243;
  }

  v207 = MEMORY[0x277D84FA0];

  sub_22A4DE09C();
  v12 = sub_22A4DE12C();
  if (!v12)
  {
    v201 = v11;
LABEL_53:

    v61 = MEMORY[0x277D84FA0];
    v207 = MEMORY[0x277D84FA0];

    sub_22A4DE09C();
    v62 = sub_22A4DE12C();
    if (v62)
    {
      v198 = MEMORY[0x277D84FA0];
      v13 = MEMORY[0x277D84F68];
      do
      {
        v205 = v62;
        swift_dynamicCast();
        v63 = [v206[0] isAppleTV];
        v64 = v206[0];
        if (v63)
        {
          v65 = *(v198 + 16);
          if (*(v198 + 24) <= v65)
          {
            sub_229572BB0(v65 + 1);
          }

          v66 = v207;
          v67 = sub_22A4DDECC();
          v68 = v66 + 56;
          v69 = -1 << *(v66 + 32);
          v70 = v67 & ~v69;
          v71 = v70 >> 6;
          if (((-1 << v70) & ~*(v66 + 56 + 8 * (v70 >> 6))) != 0)
          {
            v72 = __clz(__rbit64((-1 << v70) & ~*(v66 + 56 + 8 * (v70 >> 6)))) | v70 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v73 = 0;
            v74 = (63 - v69) >> 6;
            do
            {
              if (++v71 == v74 && (v73 & 1) != 0)
              {
                goto LABEL_127;
              }

              v75 = v71 == v74;
              if (v71 == v74)
              {
                v71 = 0;
              }

              v73 |= v75;
              v76 = *(v68 + 8 * v71);
            }

            while (v76 == -1);
            v72 = __clz(__rbit64(~v76)) + (v71 << 6);
          }

          *(v68 + ((v72 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v72;
          *(*(v66 + 48) + 8 * v72) = v64;
          v77 = *(v66 + 16) + 1;
          v198 = v66;
          *(v66 + 16) = v77;
        }

        else
        {
        }

        v62 = sub_22A4DE12C();
      }

      while (v62);
    }

    else
    {
      v198 = v61;
    }

    goto LABEL_73;
  }

  v201 = MEMORY[0x277D84FA0];
  v13 = MEMORY[0x277D84F68];
LABEL_6:
  v205 = v12;
  swift_dynamicCast();
  v14 = [v206[0] isHomePod];
  v15 = v206[0];
  if (!v14)
  {

    goto LABEL_5;
  }

  v16 = v201[2];
  if (v201[3] <= v16)
  {
    sub_229572BB0(v16 + 1);
  }

  v17 = v207;
  v18 = sub_22A4DDECC();
  v19 = v17 + 56;
  v201 = v17;
  v20 = -1 << *(v17 + 32);
  v21 = v18 & ~v20;
  v22 = v21 >> 6;
  if (((-1 << v21) & ~*(v17 + 56 + 8 * (v21 >> 6))) != 0)
  {
    v23 = __clz(__rbit64((-1 << v21) & ~*(v17 + 56 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
    goto LABEL_19;
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v19 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
LABEL_19:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v28 = v201;
      *(v201[6] + 8 * v23) = v15;
      ++*(v28 + 16);
LABEL_5:
      v12 = sub_22A4DE12C();
      if (!v12)
      {
        goto LABEL_53;
      }

      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    v80 = sub_22A4DE0EC();
LABEL_76:
    v81 = MEMORY[0x277D84F90];
    if (!v80)
    {
      break;
    }

    v82 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v83 = MEMORY[0x22AAD13F0](v82, v13);
      }

      else
      {
        if (v82 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_130;
        }

        v83 = *(v13 + 8 * v82 + 32);
      }

      v84 = v83;
      v85 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        break;
      }

      v86 = [v83 accessories];
      if (v86 && (v87 = v86, sub_229562F68(0, &qword_281401C30, off_278665FE8), v88 = sub_22A4DD83C(), v87, v89 = sub_22986AD04(v88), , v89))
      {

        sub_22A4DE27C();
        sub_22A4DE2AC();
        sub_22A4DE2BC();
        sub_22A4DE28C();
      }

      else
      {
      }

      ++v82;
      if (v85 == v80)
      {
        v90 = v207;
        goto LABEL_90;
      }
    }
  }

  v90 = MEMORY[0x277D84F90];
LABEL_90:
  v91 = v81;

  v92 = v202;
  v93 = sub_229725110(v90);
  v202 = v92;
  v94 = sub_2296721D4(v93);

  v95 = v201;

  v193 = v94;
  v96 = sub_22974DE8C(v94, v95);
  v206[0] = v91;
  v200 = (v198 & 0xC000000000000001);
  if ((v198 & 0xC000000000000001) != 0)
  {

    sub_22A4DE09C();
    sub_2297270D8();
    sub_22A4DDBAC();
    v97 = v207;
    v13 = v208;
    v99 = v209;
    v98 = v210;
    v100 = v211;
  }

  else
  {
    v101 = -1 << *(v198 + 32);
    v13 = v198 + 56;
    v99 = ~v101;
    v102 = -v101;
    if (v102 < 64)
    {
      v103 = ~(-1 << v102);
    }

    else
    {
      v103 = -1;
    }

    v100 = v103 & *(v198 + 56);
    v97 = v198;

    v98 = 0;
  }

  v194 = v99;
  v104 = (v99 + 64) >> 6;
  v203 = v97;
  while ((v97 & 0x8000000000000000) == 0)
  {
    v105 = v98;
    v106 = v100;
    for (i = v98; !v106; ++v105)
    {
      i = v105 + 1;
      if (__OFADD__(v105, 1))
      {
        goto LABEL_128;
      }

      if (i >= v104)
      {
        goto LABEL_110;
      }

      v106 = *(v13 + 8 * i);
    }

    v108 = (v106 - 1) & v106;
    v109 = *(*(v97 + 48) + ((i << 9) | (8 * __clz(__rbit64(v106)))));
    if (!v109)
    {
      goto LABEL_110;
    }

LABEL_108:
    v111 = [v109 audioDestination];
    if (v111)
    {

      sub_22A4DE27C();
      sub_22A4DE2AC();
      sub_22A4DE2BC();
      sub_22A4DE28C();
      v97 = v203;
    }

    else
    {
    }

    v98 = i;
    v100 = v108;
  }

  v110 = sub_22A4DE12C();
  if (v110)
  {
    v204 = v110;
    swift_dynamicCast();
    v109 = v205;
    i = v98;
    v108 = v100;
    v97 = v203;
    if (!v205)
    {
      goto LABEL_110;
    }

    goto LABEL_108;
  }

  v97 = v203;
LABEL_110:
  sub_22953EE84(v97);
  v10 = v206[0];
  v13 = v198;

  v112 = v13;
  if (v200)
  {
    v113 = sub_22A4DE0EC();
    v112 = sub_229572498(v13, v113);
  }

  v194 = sub_22975E690(v10, v112);
  if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
  {
    v31 = sub_22A4DE0EC();
    if (!v31)
    {
      goto LABEL_137;
    }

LABEL_115:
    v206[0] = MEMORY[0x277D84F90];
    v30 = v206;
    sub_2295836B4(0, v31 & ~(v31 >> 63), 0);
    if ((v31 & 0x8000000000000000) == 0)
    {
      v200 = v90;
      v114 = 0;
      v203 = v206[0];
      while (1)
      {
        v115 = v114 + 1;
        if (__OFADD__(v114, 1))
        {
          goto LABEL_131;
        }

        v13 = v200;
        if ((v10 & 0xC000000000000001) != 0)
        {
          v116 = MEMORY[0x22AAD13F0](v114, v10);
        }

        else
        {
          if (v114 >= *(v10 + 16))
          {
            goto LABEL_134;
          }

          v116 = *(v10 + 8 * v114 + 32);
        }

        v117 = v116;
        v204 = v116;
        v118 = v96;
        v119 = v202;
        sub_2297255B8(&v204, v13, v96, ObjectType, &v205);
        v202 = v119;

        v120 = v205;
        v121 = v203;
        v206[0] = v203;
        v13 = v203[2];
        v122 = v203[3];
        if (v13 >= v122 >> 1)
        {
          sub_2295836B4((v122 > 1), v13 + 1, 1);
          v121 = v206[0];
        }

        v121[2] = v13 + 1;
        v203 = v121;
        v121[v13 + 4] = v120;
        ++v114;
        v96 = v118;
        if (v115 == v31)
        {

          v90 = v200;
          goto LABEL_138;
        }
      }
    }

    goto LABEL_241;
  }

  v31 = *(v10 + 16);
  if (v31)
  {
    goto LABEL_115;
  }

LABEL_137:

  v203 = MEMORY[0x277D84F90];
LABEL_138:
  v206[0] = MEMORY[0x277D84F90];
  if ((v90 & 0x8000000000000000) == 0 && (v90 & 0x4000000000000000) == 0)
  {
    v31 = *(v90 + 16);
    goto LABEL_141;
  }

  while (1)
  {
    v31 = sub_22A4DE0EC();
LABEL_141:
    v201 = v96;
    v123 = MEMORY[0x277D84F90];
    v13 = MEMORY[0x277D84F90];
    if (!v31)
    {
      break;
    }

    v124 = 0;
    v96 = v90 & 0xC000000000000001;
    while (1)
    {
      if (v96)
      {
        v125 = MEMORY[0x22AAD13F0](v124, v90);
      }

      else
      {
        if (v124 >= *(v90 + 16))
        {
          goto LABEL_172;
        }

        v125 = *(v90 + 8 * v124 + 32);
      }

      v126 = v125;
      v127 = v124 + 1;
      if (__OFADD__(v124, 1))
      {
        break;
      }

      v128 = [v125 audioDestination];
      if (v128)
      {
        v129 = v128;
      }

      else
      {
        sub_22A4DE27C();
        sub_22A4DE2AC();
        sub_22A4DE2BC();
        sub_22A4DE28C();
      }

      ++v124;
      if (v127 == v31)
      {
        v130 = v206[0];
        v123 = v13;
        goto LABEL_154;
      }
    }

    __break(1u);
LABEL_172:
    __break(1u);
  }

  v130 = MEMORY[0x277D84F90];
LABEL_154:

  if ((v130 & 0x8000000000000000) != 0 || (v130 & 0x4000000000000000) != 0)
  {
    v10 = sub_22A4DE0EC();
    if (!v10)
    {
      goto LABEL_175;
    }

LABEL_157:
    v206[0] = v123;
    v30 = v206;
    sub_2295836B4(0, v10 & ~(v10 >> 63), 0);
    if (v10 < 0)
    {
      goto LABEL_242;
    }

    v131 = 0;
    v132 = v206[0];
    do
    {
      if ((v130 & 0xC000000000000001) != 0)
      {
        v133 = MEMORY[0x22AAD13F0](v131, v130);
      }

      else
      {
        v133 = *(v130 + 8 * v131 + 32);
      }

      v134 = v133;
      v135 = [v133 accessories];
      if (v135)
      {
        v136 = v135;
        sub_229562F68(0, &qword_281401C30, off_278665FE8);
        v137 = sub_22A4DD83C();

        v138 = sub_22986AD04(v137);

        if (v138)
        {
          v139 = v138;
        }

        else
        {
          v139 = v123;
        }
      }

      else
      {
        v139 = v123;
      }

      v140 = sub_2296721D4(v139);

      v206[0] = v132;
      v142 = v132[2];
      v141 = v132[3];
      if (v142 >= v141 >> 1)
      {
        sub_2295836B4((v141 > 1), v142 + 1, 1);
        v132 = v206[0];
      }

      ++v131;
      v132[2] = v142 + 1;
      v132[v142 + 4] = v140;
      v123 = v13;
    }

    while (v10 != v131);
  }

  else
  {
    v10 = *(v130 + 16);
    if (v10)
    {
      goto LABEL_157;
    }

LABEL_175:

    v132 = MEMORY[0x277D84F90];
  }

  v13 = v196;
  v10 = MEMORY[0x277D84FA0];
  if ((v201 & 0xC000000000000001) != 0)
  {
    v206[0] = MEMORY[0x277D84FA0];
    sub_22A4DE09C();
    for (j = sub_22A4DE12C(); j; j = sub_22A4DE12C())
    {
      v204 = j;
      swift_dynamicCast();
      v144 = [v205 audioDestination];
      if (v144)
      {
      }

      else
      {
        v31 = v205;
        v145 = *(v10 + 16);
        if (*(v10 + 24) <= v145)
        {
          sub_229572BB0(v145 + 1);
        }

        v10 = v206[0];
        v30 = v31;
        v146 = sub_22A4DDECC();
        v147 = v10 + 56;
        v148 = -1 << *(v10 + 32);
        v149 = v146 & ~v148;
        v150 = v149 >> 6;
        if (((-1 << v149) & ~*(v10 + 56 + 8 * (v149 >> 6))) != 0)
        {
          v151 = __clz(__rbit64((-1 << v149) & ~*(v10 + 56 + 8 * (v149 >> 6)))) | v149 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v152 = 0;
          v153 = (63 - v148) >> 6;
          do
          {
            if (++v150 == v153 && (v152 & 1) != 0)
            {
              __break(1u);
              goto LABEL_239;
            }

            v154 = v150 == v153;
            if (v150 == v153)
            {
              v150 = 0;
            }

            v152 |= v154;
            v155 = *(v147 + 8 * v150);
          }

          while (v155 == -1);
          v151 = __clz(__rbit64(~v155)) + (v150 << 6);
        }

        *(v147 + ((v151 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v151;
        *(*(v10 + 48) + 8 * v151) = v31;
        ++*(v10 + 16);
      }
    }
  }

  else
  {
    v156 = v202;
    v10 = sub_229726A9C(v201);
    v202 = v156;
  }

  v157 = sub_22956EBC4(v13, v194);

  v158 = v203;
  if (v157)
  {

    goto LABEL_200;
  }

  v30 = sub_22956EBC4(v13, v10);

  if (v30)
  {
LABEL_200:

    goto LABEL_201;
  }

  v31 = v132[2];
  if (v31)
  {
    v162 = 0;
    v10 = (v132 + 4);
    v201 = v132 + 4;
    while (v162 < v132[2])
    {
      v163 = *(v10 + 8 * v162);
      if ((v163 & 0xC000000000000001) != 0)
      {
        v164 = v13;

        v30 = sub_22A4DE13C();

        if (v30)
        {
          goto LABEL_236;
        }
      }

      else if (*(v163 + 16))
      {

        v30 = v13;
        v165 = sub_22A4DDECC();
        v166 = -1 << *(v163 + 32);
        v167 = v165 & ~v166;
        if ((*(v163 + 56 + ((v167 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v167))
        {
          v168 = ~v166;
          while (1)
          {
            v169 = *(*(v163 + 48) + 8 * v167);
            v30 = sub_22A4DDEDC();

            if (v30)
            {
              break;
            }

            v167 = (v167 + 1) & v168;
            if (((*(v163 + 56 + ((v167 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v167) & 1) == 0)
            {
              goto LABEL_205;
            }
          }

LABEL_236:

LABEL_237:

          v206[0] = sub_22975E05C(v163);
          v184 = v202;
          sub_2297254D4(v206);
          if (!v184)
          {

            return v206[0];
          }

          __break(1u);
          return result;
        }

LABEL_205:

        v13 = v196;
        v158 = v203;
        v10 = v201;
      }

      if (++v162 == v31)
      {
        goto LABEL_217;
      }
    }

LABEL_239:
    __break(1u);
LABEL_240:
    __break(1u);
LABEL_241:
    __break(1u);
LABEL_242:
    __break(1u);
LABEL_243:

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_21:
      v200 = &v189;
      MEMORY[0x28223BE20](v32);
      v33 = &v189 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v33, v31);
      v34 = 0;
      v35 = 0;
      v36 = v10;
      v37 = v10 + 56;
      v38 = 1 << *(v10 + 32);
      v39 = -1;
      if (v38 < 64)
      {
        v39 = ~(-1 << v38);
      }

      v40 = v39 & *(v10 + 56);
      v41 = (v38 + 63) >> 6;
      while (v40)
      {
        v42 = __clz(__rbit64(v40));
        v40 &= v40 - 1;
LABEL_31:
        v13 = v42 | (v35 << 6);
        if ([*(*(v36 + 48) + 8 * v13) isHomePod])
        {
          *&v33[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
          v45 = __OFADD__(v34++, 1);
          if (v45)
          {
            __break(1u);
LABEL_35:
            v10 = v36;
            v201 = sub_22966F34C(v33, v30, v34, v36);
            goto LABEL_36;
          }
        }
      }

      v43 = v35;
      while (1)
      {
        v35 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          goto LABEL_132;
        }

        if (v35 >= v41)
        {
          goto LABEL_35;
        }

        v44 = *(v37 + 8 * v35);
        ++v43;
        if (v44)
        {
          v42 = __clz(__rbit64(v44));
          v40 = (v44 - 1) & v44;
          goto LABEL_31;
        }
      }
    }

    v185 = swift_slowAlloc();
    v186 = v202;
    v201 = sub_229727048(v185, v30, v10, sub_229725550);
    v202 = v186;

    MEMORY[0x22AAD4E50](v185, -1, -1);
LABEL_36:
    v46 = *(v10 + 32);
    v13 = v46 & 0x3F;
    v47 = ((1 << v46) + 63) >> 6;
    v48 = 8 * v47;

    if (v13 > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v187 = swift_slowAlloc();
        v188 = v202;
        v198 = sub_229727048(v187, v47, v10, sub_229725584);
        v202 = v188;

        MEMORY[0x22AAD4E50](v187, -1, -1);
LABEL_73:
        v78 = [v203 mediaSystems];
        if (!v78)
        {
          __break(1u);
        }

        v79 = v78;
        sub_229562F68(0, &qword_27D880220, off_278666288);
        v13 = sub_22A4DD83C();

        v207 = MEMORY[0x277D84F90];
        if (!(v13 >> 62))
        {
          v80 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_76;
        }

        goto LABEL_135;
      }
    }

    MEMORY[0x28223BE20](v49);
    v50 = &v189 - ((v48 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v50, v48);
    v51 = 0;
    v52 = 0;
    v53 = v10 + 56;
    v54 = 1 << *(v10 + 32);
    v55 = -1;
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    v56 = v55 & *(v10 + 56);
    v57 = (v54 + 63) >> 6;
    while (v56)
    {
      v58 = __clz(__rbit64(v56));
      v56 &= v56 - 1;
LABEL_47:
      v13 = v58 | (v52 << 6);
      if ([*(*(v195 + 48) + 8 * v13) isAppleTV])
      {
        *&v50[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        v45 = __OFADD__(v51++, 1);
        if (v45)
        {
          __break(1u);
LABEL_51:
          v198 = sub_22966F34C(v50, v47, v51, v195);
          goto LABEL_73;
        }
      }
    }

    v59 = v52;
    while (1)
    {
      v52 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        goto LABEL_133;
      }

      if (v52 >= v57)
      {
        goto LABEL_51;
      }

      v60 = *(v53 + 8 * v52);
      ++v59;
      if (v60)
      {
        v58 = __clz(__rbit64(v60));
        v56 = (v60 - 1) & v60;
        goto LABEL_47;
      }
    }
  }

LABEL_217:

  v31 = v158[2];
  if (v31)
  {
    v170 = 0;
    v171 = (v158 + 4);
    while (v170 < v158[2])
    {
      v163 = *&v171[8 * v170];
      if ((v163 & 0xC000000000000001) != 0)
      {
        v172 = v13;

        v30 = sub_22A4DE13C();

        if (v30)
        {
          goto LABEL_237;
        }
      }

      else if (*(v163 + 16))
      {

        v30 = v13;
        v173 = sub_22A4DDECC();
        v10 = v163 + 56;
        v174 = -1 << *(v163 + 32);
        v175 = v173 & ~v174;
        if ((*(v163 + 56 + ((v175 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v175))
        {
          v176 = ~v174;
          do
          {
            v177 = *(*(v163 + 48) + 8 * v175);
            v30 = sub_22A4DDEDC();

            if (v30)
            {
              goto LABEL_237;
            }

            v175 = (v175 + 1) & v176;
          }

          while (((*(v10 + ((v175 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v175) & 1) != 0);
        }

        v13 = v196;
        v158 = v203;
      }

      if (++v170 == v31)
      {
        goto LABEL_232;
      }
    }

    goto LABEL_240;
  }

LABEL_232:

  v178 = v190;
  sub_2297A46D4();
  v13 = v13;
  v179 = sub_22A4DD05C();
  v180 = sub_22A4DDCEC();

  if (os_log_type_enabled(v179, v180))
  {
    v181 = swift_slowAlloc();
    v182 = swift_slowAlloc();
    *v181 = 138412290;
    *(v181 + 4) = v13;
    *v182 = v13;
    v183 = v13;
    _os_log_impl(&dword_229538000, v179, v180, "Accessory was not found in the home graph: %@", v181, 0xCu);
    sub_2295A1C40(v182);
    MEMORY[0x22AAD4E50](v182, -1, -1);
    MEMORY[0x22AAD4E50](v181, -1, -1);
  }

  (*(v191 + 8))(v178, v192);
LABEL_201:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v159 = swift_allocObject();
  *(v159 + 16) = xmmword_22A576190;
  *(v159 + 32) = v13;
  v160 = v13;
  return v159;
}

unint64_t sub_229725110(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_53;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v40 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v41 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v36 = isUniquelyReferenced_nonNull_bridgeObject;
    v38 = v1;
    v39 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v41)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v3, v36);
      }

      else
      {
        if (v3 >= *(v40 + 16))
        {
          goto LABEL_48;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v39 + 8 * v3);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v3++, 1);
      if (v7)
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
        v35 = isUniquelyReferenced_nonNull_bridgeObject;
        v1 = sub_22A4DE0EC();
        isUniquelyReferenced_nonNull_bridgeObject = v35;
        goto LABEL_3;
      }

      v8 = [isUniquelyReferenced_nonNull_bridgeObject accessories];
      if (v8)
      {
        v9 = v8;
        sub_229562F68(0, &qword_281401C30, off_278665FE8);
        v10 = sub_22A4DD83C();

        v11 = sub_22986AD04(v10);

        v12 = v11 ? v11 : v2;
      }

      else
      {

        v12 = v2;
      }

      v13 = v12 >> 62;
      v14 = v12 >> 62 ? sub_22A4DE0EC() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v15 = v4 >> 62;
      if (v4 >> 62)
      {
        v33 = sub_22A4DE0EC();
        v17 = v33 + v14;
        if (__OFADD__(v33, v14))
        {
LABEL_44:
          __break(1u);
          return v2;
        }
      }

      else
      {
        v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v17 = v16 + v14;
        if (__OFADD__(v16, v14))
        {
          goto LABEL_44;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        break;
      }

      if (v15)
      {
        goto LABEL_25;
      }

LABEL_26:
      isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v18 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_27:
      v19 = v2;
      v20 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v13)
      {
        v22 = v12;
        v24 = v18;
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v18 = v24;
        v23 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_5:

          v5 = v38;
          v2 = v19;
          if (v14 > 0)
          {
            goto LABEL_49;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v22 = v12;
        v23 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v23)
        {
          goto LABEL_5;
        }
      }

      if (((v21 >> 1) - v20) < v14)
      {
        goto LABEL_50;
      }

      v44 = v14;
      v42 = v3;
      v25 = v18 + 8 * v20 + 32;
      v37 = v18;
      if (v13)
      {
        if (v23 < 1)
        {
          goto LABEL_52;
        }

        sub_229727140();
        v26 = 0;
        v27 = v22;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880228, &unk_22A5810C0);
          v28 = sub_22958C03C(v43, v26, v27);
          v30 = *v29;
          (v28)(v43, 0);
          *(v25 + 8 * v26++) = v30;
        }

        while (v23 != v26);
      }

      else
      {
        sub_229562F68(0, &qword_281401920, off_278666038);
        swift_arrayInitWithCopy();
      }

      v5 = v38;
      v2 = MEMORY[0x277D84F90];
      v3 = v42;
      if (v44 >= 1)
      {
        v31 = *(v37 + 16);
        v7 = __OFADD__(v31, v44);
        v32 = v31 + v44;
        if (v7)
        {
          goto LABEL_51;
        }

        *(v37 + 16) = v32;
      }

LABEL_6:
      if (v3 == v5)
      {
        return v4;
      }
    }

    if (!v15)
    {
      v18 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v17 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_25:
    sub_22A4DE0EC();
    goto LABEL_26;
  }

  return v2;
}

uint64_t sub_2297254D4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_229669DB8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_229725C20(v6);
  return sub_22A4DE28C();
}

uint64_t sub_2297255B8@<X0>(id *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v68 = a3;
  v10 = sub_22A4DD07C();
  v11 = MEMORY[0x28223BE20](v10);
  v69 = *a1;
  v66 = a5;
  v67 = v5;
  v64 = v13;
  v65 = v11;
  v62 = a4;
  v63 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    goto LABEL_45;
  }

  v70 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v14 = &selRef_applicationProxyForIdentifier_;
  if (!v70)
  {
    goto LABEL_16;
  }

  v15 = 0;
  v16 = a2 & 0xC000000000000001;
  v17 = a2 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v16)
    {
      v18 = MEMORY[0x22AAD13F0](v15, a2);
    }

    else
    {
      if (v15 >= *(v17 + 16))
      {
        goto LABEL_44;
      }

      v18 = *(a2 + 8 * v15 + 32);
    }

    v19 = v18;
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_43;
    }

    v21 = a2;
    v22 = [v18 v14[216]];
    if (v22)
    {
      v23 = v22;
      v24 = [v69 v14[216]];
      v25 = [v23 isEqual_];

      v14 = &selRef_applicationProxyForIdentifier_;
      if (v25)
      {
        break;
      }
    }

    ++v15;
    a2 = v21;
    if (v20 == v70)
    {
      goto LABEL_16;
    }
  }

  v26 = [v19 accessories];

  if (!v26 || (sub_229562F68(0, &qword_281401C30, off_278665FE8), v27 = sub_22A4DD83C(), v26, v28 = sub_22986AD04(v27), , !v28))
  {
LABEL_16:
    v29 = v68;
    if ((v68 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_22A4DE09C();
      sub_229562F68(0, &qword_281401920, off_278666038);
      sub_2297270D8();
      sub_22A4DDBAC();
      v29 = v72;
      v30 = v73;
      v31 = v74;
      a2 = v75;
      v32 = v76;
    }

    else
    {
      v33 = -1 << *(v68 + 32);
      v30 = v68 + 56;
      v31 = ~v33;
      v34 = -v33;
      if (v34 < 64)
      {
        v35 = ~(-1 << v34);
      }

      else
      {
        v35 = -1;
      }

      v32 = v35 & *(v68 + 56);

      a2 = 0;
    }

    v61 = v31;
    while (1)
    {
      if (v29 < 0)
      {
        v41 = sub_22A4DE12C();
        if (!v41 || (v71 = v41, sub_229562F68(0, &qword_281401920, off_278666038), swift_dynamicCast(), v40 = v77, v38 = a2, v39 = v32, !v77))
        {
LABEL_39:
          sub_22953EE84(v29);
          v50 = v63;
          sub_2297A46D4();
          v51 = v69;
          v52 = sub_22A4DD05C();
          v53 = sub_22A4DDCEC();

          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            *v54 = 138412290;
            *(v54 + 4) = v51;
            *v55 = v51;
            v56 = v51;
            _os_log_impl(&dword_229538000, v52, v53, "ATV doesn't have an audio destination: %@", v54, 0xCu);
            sub_2295A1C40(v55);
            MEMORY[0x22AAD4E50](v55, -1, -1);
            MEMORY[0x22AAD4E50](v54, -1, -1);
          }

          (*(v64 + 8))(v50, v65);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22A576190;
          *(inited + 32) = v51;
          v58 = v51;
          sub_22965C014(inited);
          v60 = v59;
          swift_setDeallocating();
          result = swift_arrayDestroy();
          *v66 = v60;
          return result;
        }
      }

      else
      {
        v36 = a2;
        v37 = v32;
        v38 = a2;
        if (!v32)
        {
          while (1)
          {
            v38 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              break;
            }

            if (v38 >= ((v31 + 64) >> 6))
            {
              goto LABEL_39;
            }

            v37 = *(v30 + 8 * v38);
            ++v36;
            if (v37)
            {
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          v70 = sub_22A4DE0EC();
          goto LABEL_3;
        }

LABEL_29:
        v39 = (v37 - 1) & v37;
        v40 = *(*(v29 + 48) + ((v38 << 9) | (8 * __clz(__rbit64(v37)))));
        if (!v40)
        {
          goto LABEL_39;
        }
      }

      v68 = a2;
      v70 = v32;
      v42 = [v40 audioDestination];
      if (v42)
      {
        v43 = v42;
        v44 = [v69 audioDestination];
        v45 = [v43 isEqual_];

        if (v45)
        {
          sub_22953EE84(v29);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_22A576190;
          *(v28 + 32) = v40;
          break;
        }
      }

      a2 = v38;
      v32 = v39;
    }
  }

  v77 = v28;
  v46 = v69;
  MEMORY[0x22AAD09E0]();
  v47 = v66;
  if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22A4DD85C();
  }

  sub_22A4DD87C();
  v48 = sub_2296721D4(v77);

  *v47 = v48;
  return result;
}

uint64_t sub_229725C20(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_22A4DE5BC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_229562F68(0, &qword_281401920, off_278666038);
        v6 = sub_22A4DD86C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_229725EB0(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_229725D34(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_229725D34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 identifier];
      v11 = sub_22A4DD5EC();
      v13 = v12;

      v14 = [v9 identifier];
      v15 = sub_22A4DD5EC();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 8;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v19 = sub_22A4DE60C();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v20;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_229725EB0(id **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_107:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = v4;
LABEL_110:
      v4 = *(v107 + 2);
      if (v4 >= 2)
      {
        do
        {
          v108 = *v6;
          if (!*v6)
          {
            goto LABEL_144;
          }

          v6 = (v4 - 1);
          v109 = *&v107[16 * v4];
          v110 = v107;
          v111 = *&v107[16 * v4 + 24];
          sub_2297266B0((v108 + 8 * v109), (v108 + 8 * *&v107[16 * v4 + 16]), (v108 + 8 * v111), v5);
          if (v126)
          {
            break;
          }

          if (v111 < v109)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_229668AF0(v110);
          }

          if (v4 - 2 >= *(v110 + 2))
          {
            goto LABEL_134;
          }

          v112 = &v110[16 * v4];
          *v112 = v109;
          *(v112 + 1) = v111;
          sub_229668A64(v4 - 1);
          v107 = v110;
          v4 = *(v110 + 2);
          v6 = a3;
        }

        while (v4 > 1);
      }

LABEL_118:

      return;
    }

LABEL_140:
    v107 = sub_229668AF0(v4);
    goto LABEL_110;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v122 = v7;
      v114 = v9;
      v116 = v10;
      v4 = *v6;
      v11 = *(*v6 + 8 * v8);
      v12 = *(*v6 + 8 * v10);
      v13 = v11;
      v14 = v12;
      v15 = [v13 identifier];
      v16 = sub_22A4DD5EC();
      v18 = v17;

      v19 = [v14 identifier];
      v20 = sub_22A4DD5EC();
      v5 = v21;

      if (v16 == v20 && v18 == v5)
      {
        v127 = 0;
      }

      else
      {
        v127 = sub_22A4DE60C();
      }

      v10 = v116;
      v8 = v116 + 2;
      if (v116 + 2 >= v122)
      {
        v6 = a3;
      }

      else
      {
        v4 += 8 * v116 + 16;
        do
        {
          v124 = v8;
          v24 = *(v4 - 8);
          v25 = *v4;
          v26 = v24;
          v27 = [v25 identifier];
          v5 = sub_22A4DD5EC();
          v29 = v28;

          v30 = [v26 identifier];
          v31 = sub_22A4DD5EC();
          v33 = v32;

          if (v5 == v31 && v29 == v33)
          {

            v8 = v124;
            if (v127)
            {
              v6 = a3;
              v9 = v114;
              v10 = v116;
              goto LABEL_26;
            }
          }

          else
          {
            v23 = sub_22A4DE60C();

            v8 = v124;
            if ((v127 ^ v23))
            {
              goto LABEL_24;
            }
          }

          ++v8;
          v4 += 8;
        }

        while (v122 != v8);
        v8 = v122;
LABEL_24:
        v6 = a3;
        v10 = v116;
      }

      v9 = v114;
      if (v127)
      {
LABEL_26:
        if (v8 < v10)
        {
          goto LABEL_137;
        }

        if (v10 < v8)
        {
          v35 = 8 * v8 - 8;
          v36 = 8 * v10;
          v37 = v8;
          v38 = v10;
          do
          {
            if (v38 != --v37)
            {
              v39 = *v6;
              if (!*v6)
              {
                goto LABEL_143;
              }

              v40 = *(v39 + v36);
              *(v39 + v36) = *(v39 + v35);
              *(v39 + v35) = v40;
            }

            ++v38;
            v35 -= 8;
            v36 += 8;
          }

          while (v38 < v37);
        }
      }
    }

    v41 = v6[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_136;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_135;
    }

    v60 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v60;
    }

    else
    {
      v9 = sub_22958A414(0, *(v60 + 2) + 1, 1, v60);
    }

    v4 = *(v9 + 2);
    v61 = *(v9 + 3);
    v62 = v4 + 1;
    if (v4 >= v61 >> 1)
    {
      v9 = sub_22958A414((v61 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v62;
    v63 = &v9[16 * v4];
    *(v63 + 4) = v10;
    *(v63 + 5) = v8;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v4)
    {
      while (1)
      {
        v65 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_75:
          if (v69)
          {
            goto LABEL_124;
          }

          v82 = &v9[16 * v62];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_127;
          }

          v88 = &v9[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_131;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v62 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v92 = &v9[16 * v62];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_89:
        if (v87)
        {
          goto LABEL_126;
        }

        v95 = &v9[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_129;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_96:
        v4 = v65 - 1;
        if (v65 - 1 >= v62)
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v6)
        {
          goto LABEL_142;
        }

        v5 = v8;
        v103 = v9;
        v104 = *&v9[16 * v4 + 32];
        v105 = *&v9[16 * v65 + 40];
        sub_2297266B0((*v6 + 8 * v104), (*v6 + 8 * *&v9[16 * v65 + 32]), (*v6 + 8 * v105), v64);
        if (v126)
        {
          goto LABEL_118;
        }

        if (v105 < v104)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_229668AF0(v103);
        }

        if (v4 >= *(v103 + 2))
        {
          goto LABEL_121;
        }

        v106 = &v103[16 * v4];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        sub_229668A64(v65);
        v9 = v103;
        v62 = *(v103 + 2);
        v8 = v5;
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v9[16 * v62 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_122;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_123;
      }

      v77 = &v9[16 * v62];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_125;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_128;
      }

      if (v81 >= v73)
      {
        v99 = &v9[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_132;
        }

        if (v68 < v102)
        {
          v65 = v62 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  v42 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_138;
  }

  if (v42 >= v41)
  {
    v42 = v6[1];
  }

  if (v42 < v10)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v8 == v42)
  {
    goto LABEL_55;
  }

  v115 = v9;
  v117 = v10;
  v128 = *v6;
  v4 = *v6 + 8 * v8 - 8;
  v43 = v10 - v8;
  v120 = v42;
LABEL_44:
  v123 = v4;
  v125 = v8;
  v44 = *(v128 + 8 * v8);
  v121 = v43;
  v45 = v43;
  while (1)
  {
    v46 = *v4;
    v47 = v44;
    v48 = v46;
    v49 = [v47 identifier];
    v5 = sub_22A4DD5EC();
    v51 = v50;

    v52 = [v48 identifier];
    v53 = sub_22A4DD5EC();
    v55 = v54;

    if (v5 == v53 && v51 == v55)
    {

LABEL_43:
      v8 = v125 + 1;
      v4 = v123 + 8;
      v43 = v121 - 1;
      if ((v125 + 1) == v120)
      {
        v8 = v120;
        v6 = a3;
        v9 = v115;
        v10 = v117;
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    v57 = sub_22A4DE60C();

    if ((v57 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v128)
    {
      break;
    }

    v58 = *v4;
    v44 = *(v4 + 8);
    *v4 = v44;
    *(v4 + 8) = v58;
    v4 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

uint64_t sub_2297266B0(void **__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __src || &__src[v12] <= a4)
    {
      v29 = a4;
      memmove(a4, __src, 8 * v12);
      a4 = v29;
    }

    v54 = &a4[v12];
    v13 = a4;
    if (v10 >= 8 && v5 > v6)
    {
      v49 = a4;
      v48 = v6;
LABEL_32:
      v30 = v5 - 1;
      v31 = v4;
      v32 = v54;
      v51 = v5 - 1;
      v53 = v5;
      do
      {
        v33 = *--v32;
        v34 = *v30;
        v35 = v33;
        v36 = v34;
        v37 = [v35 identifier];
        v38 = sub_22A4DD5EC();
        v40 = v39;

        v41 = [v36 identifier];
        v42 = sub_22A4DD5EC();
        v44 = v43;

        if (v38 == v42 && v40 == v44)
        {

          v4 = v31 - 1;
        }

        else
        {
          v46 = sub_22A4DE60C();

          v4 = v31 - 1;
          if (v46)
          {
            v13 = v49;
            if (v31 != v53)
            {
              *v4 = *v51;
            }

            if (v54 <= v49 || (v5 = v51, v51 <= v48))
            {
              v5 = v51;
              goto LABEL_49;
            }

            goto LABEL_32;
          }
        }

        v13 = v49;
        v30 = v51;
        if (v54 != v31)
        {
          *v4 = *v32;
        }

        v54 = v32;
        v31 = v4;
      }

      while (v32 > v49);
      v54 = v32;
      v5 = v53;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v54 = &v13[v9];
    if (v7 >= 8 && v5 < v4)
    {
      v50 = v4;
      while (1)
      {
        v52 = v5;
        v14 = *v13;
        v15 = *v5;
        v16 = v14;
        v17 = [v15 identifier];
        v18 = sub_22A4DD5EC();
        v20 = v19;

        v21 = [v16 identifier];
        v22 = sub_22A4DD5EC();
        v24 = v23;

        v25 = v18 == v22 && v20 == v24;
        if (v25)
        {
          break;
        }

        v26 = sub_22A4DE60C();

        if ((v26 & 1) == 0)
        {
          goto LABEL_20;
        }

        v27 = v52;
        v5 = v52 + 1;
        v28 = v50;
        if (v6 != v52)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v6;
        if (v13 >= v54 || v5 >= v28)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v27 = v13;
      v25 = v6 == v13++;
      v5 = v52;
      v28 = v50;
      if (v25)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v6 = *v27;
      goto LABEL_22;
    }

LABEL_24:
    v5 = v6;
  }

LABEL_49:
  if (v5 != v13 || v5 >= (v13 + ((v54 - v13 + (v54 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * (v54 - v13));
  }

  return 1;
}

void *sub_229726A9C(uint64_t a1)
{
  v2 = a1;
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v22 = v4;
    v23 = v1;
    v21[1] = v21;
    MEMORY[0x28223BE20](a1);
    v6 = v21 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    v24 = 0;
    v7 = 0;
    v8 = 1 << *(v2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v2 + 56);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v4 = v12 | (v7 << 6);
      v15 = *(*(v2 + 48) + 8 * v4);
      v16 = [v15 audioDestination];

      if (v16)
      {
      }

      else
      {
        *&v6[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        if (__OFADD__(v24++, 1))
        {
          __break(1u);
          return sub_22966F34C(v6, v22, v24, v2);
        }
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return sub_22966F34C(v6, v22, v24, v2);
      }

      v14 = *(v2 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v19 = swift_slowAlloc();
  v20 = sub_229726FD0(v19, v4, v2);

  MEMORY[0x22AAD4E50](v19, -1, -1);
  return v20;
}

void sub_229726D04(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v19 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + 8 * v13);
    v15 = [v14 audioDestination];

    if (v15)
    {
    }

    else
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
LABEL_16:

        sub_22966F34C(a1, a2, v19, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_16;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_229726E64(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_22966F34C(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_229726FD0(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_229726D04(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void *sub_229727048(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_229726E64(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t sub_2297270D8()
{
  result = qword_27D87E4D0;
  if (!qword_27D87E4D0)
  {
    sub_229562F68(255, &qword_281401920, off_278666038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E4D0);
  }

  return result;
}

unint64_t sub_229727140()
{
  result = qword_27D880230;
  if (!qword_27D880230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D880228, &unk_22A5810C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880230);
  }

  return result;
}

void sub_2297271A4()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_22A4DD07C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v9 = [objc_opt_self() policyWithEntitlements_];
  v10 = [v0 msgDispatcher];
  if (v10)
  {
    v11 = v10;
    sub_2297A46D4();
    v12 = sub_22A4DD05C();
    v13 = sub_22A4DDCCC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_229538000, v12, v13, "Registering NetworkInfo message handlers", v14, 2u);
      MEMORY[0x22AAD4E50](v14, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    v15 = *MEMORY[0x277CCFFC8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
    v16 = swift_allocObject();
    v28 = xmmword_22A576190;
    *(v16 + 16) = xmmword_22A576190;
    *(v16 + 32) = v9;
    sub_229562F68(0, qword_281401B40, 0x277D0F838);
    v17 = v9;
    v18 = sub_22A4DD81C();

    [v11 registerForMessage:v15 receiver:v1 policies:v18 selector:sel_handleGetPrimaryResidentNetworkInfoWithMessage_];

    v19 = *MEMORY[0x277CCFFA8];
    v20 = swift_allocObject();
    *(v20 + 16) = v28;
    *(v20 + 32) = v17;
    v21 = sub_22A4DD81C();

    [v11 registerForMessage:v19 receiver:v1 policies:v21 selector:sel_handleWiFiInfoFetchWithMessage_];

    v22 = *MEMORY[0x277CCFF60];
    v23 = swift_allocObject();
    *(v23 + 16) = v28;
    *(v23 + 32) = v17;
    v24 = sub_22A4DD81C();

    [v11 registerForMessage:v22 receiver:v1 policies:v24 selector:sel_handleNetworkInfoFetchWithMessage_];
  }

  else
  {
    sub_2297A46D4();
    v25 = sub_22A4DD05C();
    v26 = sub_22A4DDCCC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_229538000, v25, v26, "Message dispatcher is nil", v27, 2u);
      MEMORY[0x22AAD4E50](v27, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v6, v2);
  }
}

void sub_2297275D8(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  sub_2297A46D4();
  v11 = sub_22A4DD05C();
  v12 = sub_22A4DDCCC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_229538000, v11, v12, "Handling get primary resident network info message", v13, 2u);
    MEMORY[0x22AAD4E50](v13, -1, -1);
  }

  v14 = *(v5 + 8);
  v14(v10, v4);
  v15 = [v2 backingStore];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 context];
    v18 = swift_allocObject();
    *(v18 + 16) = v2;
    *(v18 + 24) = a1;
    aBlock[4] = sub_22972EC10;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22953E640;
    aBlock[3] = &block_descriptor_51;
    v19 = _Block_copy(aBlock);
    v20 = v2;
    v21 = a1;

    [v17 performBlock_];
    _Block_release(v19);
  }

  else
  {
    sub_2297A46D4();
    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCEC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_229538000, v22, v23, "backingStore is nil", v24, 2u);
      MEMORY[0x22AAD4E50](v24, -1, -1);
    }

    v14(v8, v4);
  }
}

void sub_2297278DC(void *a1, void *a2)
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = objc_opt_self();
  v9 = [a1 uuid];
  sub_22A4DB79C();

  v10 = sub_22A4DB77C();
  (*(v5 + 8))(v7, v4);
  v11 = [v8 findHomeWithModelID_];

  if (!v11)
  {
    v16 = [objc_opt_self() hmErrorWithCode_];
    v17 = sub_22A4DB3DC();

    [a2 respondWithError_];
    goto LABEL_24;
  }

  v12 = [v11 primaryWiFiSSID];
  if (v12)
  {
    v13 = v12;
    sub_22A4DD5EC();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v18 = [v11 primaryWiFiRequiresPassword];
  if (!v18)
  {
    v20 = 0;
    if (!v15)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v19 = v18;
  v20 = [v18 BOOLValue];

  if (v15)
  {
LABEL_8:
    v21 = objc_allocWithZone(MEMORY[0x277CD1AC8]);
    v22 = sub_22A4DD5AC();

    v15 = [v21 initWithSSID:v22 requiresPassword:v20];
  }

LABEL_9:
  v23 = [v11 primaryIPv4NetworkSignature];
  if (v23)
  {
    v24 = v23;
    v25 = sub_22A4DB62C();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0xF000000000000000;
  }

  v28 = [v11 primaryIPv6NetworkSignature];
  if (v28)
  {
    v29 = v28;
    v30 = sub_22A4DB62C();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0xF000000000000000;
  }

  v33 = v15;
  if (v27 >> 60 == 15)
  {
    v34 = 0;
  }

  else
  {
    v34 = sub_22A4DB61C();
    sub_229590D18(v25, v27);
  }

  if (v32 >> 60 == 15)
  {
    v35 = 0;
  }

  else
  {
    v35 = sub_22A4DB61C();
    sub_229590D18(v30, v32);
  }

  v17 = [objc_allocWithZone(MEMORY[0x277CD1AA0]) initWithIpv4Addresses:0 ipv6Addresses:0 ipv4NetworkSignature:0 ipv6NetworkSignature:0 binaryIPv4NetworkSignature:v34 binaryIPv6NetworkSignature:v35 routerIPV4:0 routerIPV6:0 wiFiInfo:v33];

  v36 = encodeRootObjectForXPC(v17);
  v37 = sub_22A4DB62C();
  v39 = v38;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 72) = MEMORY[0x277CC9318];
  *(inited + 40) = v41;
  *(inited + 48) = v37;
  *(inited + 56) = v39;
  sub_22956C148(v37, v39);
  sub_22956AC5C(inited);
  swift_setDeallocating();
  sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v42 = sub_22A4DD47C();

  [a2 respondWithPayload_];

  sub_2295798D4(v37, v39);
  swift_unknownObjectRelease();

LABEL_24:
}