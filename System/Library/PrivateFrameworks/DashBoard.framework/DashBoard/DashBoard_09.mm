void sub_2482F532C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_2483810B0();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_2482F539C(void *a1, uint64_t a2)
{
  v5 = sub_2483837A0();
  v86 = *(v5 - 8);
  v87 = v5;
  MEMORY[0x28223BE20](v5);
  v84 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_2483837E0();
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v82 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_248382A90();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v74 - v13;
  v15 = sub_24814A31C();
  v16 = *(v9 + 16);
  v79 = v15;
  v80 = v9 + 16;
  v78 = v16;
  (v16)(v14);
  v17 = v2;
  v18 = sub_248382A80();
  v19 = sub_248383DC0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v76 = v19;
    v21 = v20;
    v77 = swift_slowAlloc();
    aBlock[0] = v77;
    *v21 = 136446466;
    v22 = [v17 vehicleID];
    v75 = v18;
    v23 = v22;
    v24 = v17;
    v25 = a1;
    v26 = v11;
    v27 = v9;
    v28 = a2;
    v29 = sub_248383960();
    v81 = v8;
    v31 = v30;

    v32 = v29;
    a2 = v28;
    v9 = v27;
    v11 = v26;
    a1 = v25;
    v17 = v24;
    v33 = sub_24814A378(v32, v31, aBlock);

    *(v21 + 4) = v33;
    *(v21 + 12) = 2082;
    v34 = 0x6E776F6E6B6E55;
    if (a2 == 1)
    {
      v34 = 0x79616C50726143;
    }

    if (a2)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0x73676E6974746553;
    }

    if (a2)
    {
      v36 = 0xE700000000000000;
    }

    else
    {
      v36 = 0xE800000000000000;
    }

    v37 = sub_24814A378(v35, v36, aBlock);
    v8 = v81;

    *(v21 + 14) = v37;
    v38 = v75;
    _os_log_impl(&dword_248146000, v75, v76, "Setting widget state for vehicle ID: %{public}s from source: %{public}s", v21, 0x16u);
    v39 = v77;
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v39, -1, -1);
    MEMORY[0x24C1CD5F0](v21, -1, -1);
  }

  else
  {
  }

  v40 = *(v9 + 8);
  v40(v14, v8);
  v41 = [v17 cachedWidgetState];
  if (!v41)
  {
    goto LABEL_25;
  }

  v42 = v41;
  sub_24814FB28(0, &qword_27EE92190, 0x277D82BB8);
  if ((sub_248384030() & 1) == 0)
  {

LABEL_25:
    [a1 copy];
    sub_248384230();
    swift_unknownObjectRelease();
    sub_24814FB28(0, &qword_27EE932D8, 0x277CF9040);
    if (swift_dynamicCast())
    {
      v62 = aBlock[6];
    }

    else
    {
      v62 = 0;
    }

    [v17 setCachedWidgetState_];

    sub_2482F46A0(a1);
    sub_24814FB28(0, &qword_27EE90280, 0x277D85C78);
    v63 = sub_248383E50();
    v64 = [v17 iconLayoutService];
    v65 = [v17 vehicleID];
    v66 = sub_248383960();
    v68 = v67;

    v69 = swift_allocObject();
    v69[2] = a2;
    v69[3] = v64;
    v69[4] = v66;
    v69[5] = v68;
    aBlock[4] = sub_2482FAF10;
    aBlock[5] = v69;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24814C01C;
    aBlock[3] = &block_descriptor_18;
    v70 = _Block_copy(aBlock);

    v71 = v82;
    sub_2483837C0();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2482FAFD0(&qword_27EE91EB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90290, &qword_24839D4E0);
    sub_24822D648(&qword_27EE91EC0, &unk_27EE90290, &qword_24839D4E0, MEMORY[0x277D83970]);
    v72 = v84;
    v73 = v87;
    sub_2483842D0();
    MEMORY[0x24C1CB440](0, v71, v72, v70);
    _Block_release(v70);

    v86[1](v72, v73);
    return (*(v83 + 8))(v71, v85);
  }

  v87 = v9;
  v78(v11, v79, v8);
  v43 = v17;
  v44 = v8;
  v45 = sub_248382A80();
  v46 = sub_248383DC0();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v81 = v44;
    v48 = v47;
    v49 = swift_slowAlloc();
    aBlock[0] = v49;
    *v48 = 136446466;
    v50 = [v43 vehicleID];
    v51 = sub_248383960();
    v86 = v11;
    v52 = a2;
    v53 = v51;
    v55 = v54;

    v56 = sub_24814A378(v53, v55, aBlock);

    *(v48 + 4) = v56;
    *(v48 + 12) = 2082;
    v57 = 0x6E776F6E6B6E55;
    if (v52 == 1)
    {
      v57 = 0x79616C50726143;
    }

    if (v52)
    {
      v58 = v57;
    }

    else
    {
      v58 = 0x73676E6974746553;
    }

    if (v52)
    {
      v59 = 0xE700000000000000;
    }

    else
    {
      v59 = 0xE800000000000000;
    }

    v60 = sub_24814A378(v58, v59, aBlock);

    *(v48 + 14) = v60;
    _os_log_impl(&dword_248146000, v45, v46, "Skipping setting identical widget state for vehicle ID: %{public}s from source: %{public}s", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v49, -1, -1);
    MEMORY[0x24C1CD5F0](v48, -1, -1);

    return (v40)(v86, v81);
  }

  else
  {

    return (v40)(v11, v44);
  }
}

Swift::Void __swiftcall DBWidgetLayoutVehicleDataProvider.resetWidgetState()()
{
  v46[1] = *MEMORY[0x277D85DE8];
  v1 = sub_248382A90();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - v6;
  v8 = sub_24814A31C();
  v44 = *(v2 + 16);
  v45 = v8;
  v44(v7);
  v9 = v0;
  v10 = sub_248382A80();
  v11 = sub_248383DC0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v43 = v1;
    v13 = v12;
    v41 = swift_slowAlloc();
    v42 = v2;
    v46[0] = v41;
    *v13 = 136446210;
    v14 = [v9 vehicleID];
    v15 = v9;
    v16 = v4;
    v17 = sub_248383960();
    v19 = v18;

    v20 = v17;
    v4 = v16;
    v9 = v15;
    v21 = sub_24814A378(v20, v19, v46);

    *(v13 + 4) = v21;
    _os_log_impl(&dword_248146000, v10, v11, "Resetting widget state for vehicle ID: %{public}s", v13, 0xCu);
    v22 = v41;
    __swift_destroy_boxed_opaque_existential_0(v41);
    v2 = v42;
    MEMORY[0x24C1CD5F0](v22, -1, -1);
    v23 = v13;
    v1 = v43;
    MEMORY[0x24C1CD5F0](v23, -1, -1);
  }

  v24 = *(v2 + 8);
  v24(v7, v1);
  v25 = [objc_opt_self() defaultManager];
  v26 = [*&v9[OBJC_IVAR___DBWidgetLayoutVehicleDataProvider_persistenceURL] path];
  if (!v26)
  {
    __break(1u);
  }

  v27 = v26;
  v46[0] = 0;
  v28 = [v25 removeItemAtPath:v26 error:v46];

  if (v28)
  {
    v29 = v46[0];
    [v9 setCachedWidgetState_];
  }

  else
  {
    v30 = v46[0];
    v31 = sub_2483810C0();

    swift_willThrow();
    (v44)(v4, v45, v1);
    v32 = v31;
    v33 = sub_248382A80();
    v34 = sub_248383DA0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = v4;
      v37 = swift_slowAlloc();
      *v35 = 138543362;
      v38 = v31;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v39;
      *v37 = v39;
      _os_log_impl(&dword_248146000, v33, v34, "Failed to reset widget state: %{public}@", v35, 0xCu);
      sub_24822D578(v37, &qword_27EE8FE40, &unk_24839C5A0);
      v40 = v37;
      v4 = v36;
      MEMORY[0x24C1CD5F0](v40, -1, -1);
      MEMORY[0x24C1CD5F0](v35, -1, -1);
    }

    else
    {
    }

    v24(v4, v1);
  }
}

id DBWidgetLayoutVehicleDataProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_2482F629C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_248382A90();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2482F6394, 0, 0);
}

uint64_t sub_2482F6394()
{
  v1 = [*(v0 + 24) cachedWidgetState];
  if (v1)
  {
LABEL_4:

    v8 = *(v0 + 8);

    return v8(v1);
  }

  v2 = *(v0 + 24);
  v3 = objc_opt_self();
  v4 = *(v2 + OBJC_IVAR___DBWidgetLayoutVehicleDataProvider_persistenceURL);
  *(v0 + 16) = 0;
  v5 = [v3 loadFromURL:v4 error:v0 + 16];
  v6 = *(v0 + 16);
  if (v5)
  {
    v1 = v5;
    v7 = v6;
    goto LABEL_4;
  }

  v10 = v6;
  v11 = sub_2483810C0();
  *(v0 + 72) = v11;

  swift_willThrow();
  v12 = sub_2483810B0();
  v13 = [v12 domain];

  v14 = sub_248383960();
  v16 = v15;

  if (v14 == sub_248383960() && v16 == v17)
  {
  }

  else
  {
    v18 = sub_248384680();

    if ((v18 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v19 = sub_2483810B0();
  v20 = [v19 code];

  if (v20 != 260)
  {
LABEL_14:
    v22 = (v0 + 56);
    v29 = *(v0 + 56);
    v30 = *(v0 + 40);
    v31 = *(v0 + 48);
    v32 = sub_24814A31C();
    (*(v31 + 16))(v29, v32, v30);
    v33 = v11;
    v26 = sub_248382A80();
    v34 = sub_248383DA0();

    if (os_log_type_enabled(v26, v34))
    {
      v28 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v28 = 138543362;
      v36 = v11;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_248146000, v26, v34, "Failed to load widget state: %{public}@", v28, 0xCu);
      sub_24822D578(v35, &qword_27EE8FE40, &unk_24839C5A0);
      MEMORY[0x24C1CD5F0](v35, -1, -1);
      goto LABEL_16;
    }

LABEL_17:
    v38 = *v22;
    goto LABEL_18;
  }

  v22 = (v0 + 64);
  v21 = *(v0 + 64);
  v23 = *(v0 + 40);
  v24 = *(v0 + 48);
  v25 = sub_24814A31C();
  (*(v24 + 16))(v21, v25, v23);
  v26 = sub_248382A80();
  v27 = sub_248383DA0();
  if (!os_log_type_enabled(v26, v27))
  {
    goto LABEL_17;
  }

  v28 = swift_slowAlloc();
  *v28 = 0;
  _os_log_impl(&dword_248146000, v26, v27, "No persisted widget state found.", v28, 2u);
LABEL_16:
  v38 = *v22;
  MEMORY[0x24C1CD5F0](v28, -1, -1);
LABEL_18:
  v39 = *(v0 + 40);
  v40 = *(v0 + 48);
  v41 = *(v0 + 24);
  v42 = *(v0 + 32);

  (*(v40 + 8))(v38, v39);
  *v42 = 1;
  v43 = [v41 viewAreas];
  type metadata accessor for CGRect(0);
  v44 = sub_248383B10();
  *(v0 + 80) = v44;

  v45 = swift_task_alloc();
  *(v0 + 88) = v45;
  *v45 = v0;
  v45[1] = sub_2482F6828;

  return sub_2482FD23C(v44);
}

uint64_t sub_2482F6828(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_2482F6A30;
  }

  else
  {

    *(v4 + 104) = a1;
    v5 = sub_2482F6980;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2482F6980()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2482F6A30()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_2482F6AE4()
{
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE932F8, &qword_2483A08A8);
  v1 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v112 = v81 - v4;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93300, &qword_2483A08B0);
  v5 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v103 = v81 - v6;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93408, &qword_2483A0C60);
  MEMORY[0x28223BE20](v118);
  v8 = v81 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93308, &qword_2483A08B8);
  MEMORY[0x28223BE20](v9 - 8);
  v110 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v81 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v81 - v15;
  v95 = sub_248381210();
  v17 = *(v95 - 8);
  *&v18 = MEMORY[0x28223BE20](v95).n128_u64[0];
  v101 = v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v0;
  v20 = [v0 widgetStackRows];
  v81[1] = sub_248383E00();
  v21 = sub_248383B10();

  v87 = v21;
  if (v21 >> 62)
  {
    goto LABEL_62;
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    goto LABEL_63;
  }

  while (2)
  {
    v135 = MEMORY[0x277D84F90];
    v86 = v22;
    result = sub_2483844C0();
    if (v86 < 0)
    {
      goto LABEL_65;
    }

    result = 0;
    v85 = v87 & 0xC000000000000001;
    v84 = v87 & 0xFFFFFFFFFFFFFF8;
    v83 = v87 + 32;
    v117 = "chedWidgetState";
    v116 = (v5 + 56);
    v124 = (v5 + 48);
    v102 = (v5 + 32);
    v109 = (v5 + 8);
    v107 = (v1 + 16);
    v106 = "com.apple.Health.Sleep";
    v105 = (v1 + 8);
    v104 = 0x80000002483B1620;
    v94 = (v17 + 8);
    v24 = &selRef__eventStoreDidChange_;
    v25 = &qword_2483A08B8;
    v115 = v8;
    v114 = v13;
    while (1)
    {
      if (__OFADD__(result, 1))
      {
        goto LABEL_60;
      }

      v90 = result + 1;
      if (v85)
      {
        v28 = MEMORY[0x24C1CBA50]();
      }

      else
      {
        if (result >= *(v84 + 16))
        {
          __break(1u);
LABEL_65:
          __break(1u);
          return result;
        }

        v28 = *(v83 + 8 * result);
      }

      v89 = v28;
      v29 = [v28 stacks];
      v88 = sub_248383DD0();
      v30 = sub_248383B10();

      v93 = v30;
      if (v30 >> 62)
      {
        break;
      }

      v1 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v1)
      {
        goto LABEL_13;
      }

LABEL_5:

      v26 = objc_allocWithZone(MEMORY[0x277CF9050]);
      v27 = sub_248383B00();

      v1 = [v26 initWithStacks_];

      sub_2483844A0();
      v17 = *(v135 + 16);
      sub_2483844D0();
      sub_2483844E0();
      sub_2483844B0();
      result = v90;
      if (v90 == v86)
      {
        goto LABEL_63;
      }
    }

    v1 = sub_248384360();
    if (!v1)
    {
      goto LABEL_5;
    }

LABEL_13:
    v134 = MEMORY[0x277D84F90];
    sub_2483844C0();
    if (v1 < 0)
    {
LABEL_61:
      __break(1u);
LABEL_62:
      v22 = sub_248384360();
      if (!v22)
      {
        goto LABEL_63;
      }

      continue;
    }

    break;
  }

  v31 = 0;
  v97 = v93 & 0xC000000000000001;
  v92 = v93 & 0xFFFFFFFFFFFFFF8;
  v91 = v93 + 32;
  v96 = v1;
  while (2)
  {
    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v100 = v31 + 1;
    if (v97)
    {
      v34 = MEMORY[0x24C1CBA50]();
    }

    else
    {
      v17 = 0xD000000000000010;
      if (v31 >= *(v92 + 16))
      {
        goto LABEL_59;
      }

      v34 = *(v91 + 8 * v31);
    }

    v35 = [v34 id];
    sub_2483811F0();

    v99 = v34;
    v36 = [v34 widgets];
    v98 = sub_248384160();
    v37 = sub_248383B10();

    v133 = MEMORY[0x277D84F90];
    if (!(v37 >> 62))
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v38)
      {
        break;
      }

      goto LABEL_15;
    }

    v38 = sub_248384360();
    if (!v38)
    {
LABEL_15:

      v127 = objc_allocWithZone(MEMORY[0x277CF9048]);
      v32 = v101;
      v33 = sub_2483811E0();
      v17 = sub_248383B00();

      [v127 initWithID:v33 widgets:v17];

      (*v94)(v32, v95);
      sub_2483844A0();
      v5 = *(v134 + 16);
      sub_2483844D0();
      sub_2483844E0();
      sub_2483844B0();
      v31 = v100;
      v1 = v96;
      if (v100 == v96)
      {
        goto LABEL_5;
      }

      continue;
    }

    break;
  }

  v39 = 0;
  v122 = v37 & 0xC000000000000001;
  v121 = v37 & 0xFFFFFFFFFFFFFF8;
  v120 = v37;
  v119 = v38;
  while (2)
  {
    if (v122)
    {
      v40 = MEMORY[0x24C1CBA50](v39, v37);
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_55;
      }

LABEL_29:
      v125 = v40;
      v126 = v41;
      v42 = [v40 chsWidget];
      v43 = v24[382];
      v127 = v42;
      v44 = [v42 v43];
      v45 = *MEMORY[0x277CFA130];
      swift_beginAccess();
      sub_248232C78(v44 + v45, v16, &qword_27EE93308, v25);

      sub_248382780();
      v46 = v25;
      v47 = v128;
      (*v116)(v13, 0, 1, v128);
      v48 = *(v118 + 48);
      sub_248232C78(v16, v8, &qword_27EE93308, v46);
      sub_248232C78(v13, &v8[v48], &qword_27EE93308, v46);
      v49 = v47;
      v50 = *v124;
      v51 = (*v124)(v8, 1, v49);
      v123 = v50;
      if (v51 == 1)
      {
        sub_24822D578(v13, &qword_27EE93308, v46);
        sub_24822D578(v16, &qword_27EE93308, v46);
        v52 = v50(&v8[v48], 1, v128);
        v25 = v46;
        if (v52 == 1)
        {
          sub_24822D578(v8, &qword_27EE93308, v46);
          v53 = v127;
LABEL_39:
          v61 = [v53 v24[382]];
          v62 = *MEMORY[0x277CFA138];
          swift_beginAccess();
          (*v107)(v112, &v61[v62], v113);

          sub_248382780();
          sub_24822D648(&qword_27EE93410, &qword_27EE932F8, &qword_2483A08A8, MEMORY[0x277CF9FB8]);
          sub_248383AE0();
          sub_248383AE0();
          if (v131 == v129 && v132 == v130)
          {
            v63 = *v105;
            v64 = v113;
            (*v105)(v111, v113);
            v65 = v64;
            v53 = v127;
            v63(v112, v65);

            v24 = &selRef__eventStoreDidChange_;
            v25 = &qword_2483A08B8;
            goto LABEL_43;
          }

          v66 = sub_248384680();
          v67 = *v105;
          v68 = v113;
          (*v105)(v111, v113);
          v67(v112, v68);

          v24 = &selRef__eventStoreDidChange_;
          v25 = &qword_2483A08B8;
          if (v66)
          {
LABEL_43:
            v69 = objc_opt_self();
            v70 = sub_248383930();

            v71 = [v69 applicationWithBundleIdentifier_];

            if ([v71 isHidden])
            {

              v8 = v115;
              v13 = v114;
              goto LABEL_25;
            }

            v72 = [v71 isLocked];

            if (v72)
            {

LABEL_47:
              v8 = v115;
              v13 = v114;
LABEL_25:
              ++v39;
              v37 = v120;
              if (v126 == v119)
              {
                goto LABEL_15;
              }

              continue;
            }

LABEL_46:
            sub_2483844A0();
            sub_2483844D0();
            sub_2483844E0();
            sub_2483844B0();
            goto LABEL_47;
          }

LABEL_35:
          v55 = [v53 v24[382]];
          v56 = *MEMORY[0x277CFA130];
          swift_beginAccess();
          if (v123(&v55[v56], 1, v128))
          {
            swift_endAccess();

            goto LABEL_46;
          }

          sub_2483827A0();
          swift_endAccess();

          goto LABEL_43;
        }
      }

      else
      {
        v54 = v110;
        sub_248232C78(v8, v110, &qword_27EE93308, v46);
        if (v50(&v8[v48], 1, v128) != 1)
        {
          v57 = &v8[v48];
          v58 = v103;
          v59 = v128;
          (*v102)(v103, v57, v128);
          sub_24822D648(&qword_27EE93418, &qword_27EE93300, &qword_2483A08B0, MEMORY[0x277CF9FB0]);
          v108 = sub_248383910();
          v60 = *v109;
          (*v109)(v58, v59);
          sub_24822D578(v13, &qword_27EE93308, &qword_2483A08B8);
          sub_24822D578(v16, &qword_27EE93308, &qword_2483A08B8);
          v60(v54, v59);
          v25 = &qword_2483A08B8;
          sub_24822D578(v8, &qword_27EE93308, &qword_2483A08B8);
          v24 = &selRef__eventStoreDidChange_;
          v53 = v127;
          if ((v108 & 1) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_39;
        }

        v25 = v46;
        sub_24822D578(v13, &qword_27EE93308, v46);
        sub_24822D578(v16, &qword_27EE93308, v46);
        (*v109)(v54, v128);
        v24 = &selRef__eventStoreDidChange_;
      }

      sub_24822D578(v8, &qword_27EE93408, &qword_2483A0C60);
      v53 = v127;
      goto LABEL_35;
    }

    break;
  }

  if (v39 >= *(v121 + 16))
  {
    goto LABEL_56;
  }

  v40 = *(v37 + 8 * v39 + 32);
  v41 = v39 + 1;
  if (!__OFADD__(v39, 1))
  {
    goto LABEL_29;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_63:

  v73 = v82;
  v74 = [v82 showWidgets];
  v75 = [v73 showWallpaper];
  v76 = [v73 showSuggestions];
  v77 = [v73 smartRotate];
  v78 = objc_allocWithZone(MEMORY[0x277CF9040]);
  v79 = sub_248383B00();

  v80 = [v78 initWithShowWidgets:v74 showWallpaper:v75 showSuggestions:v76 smartRotate:v77 widgetStackRows:v79];

  return v80;
}

uint64_t sub_2482F7BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_248382A90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 3) < 0xFFFFFFFFFFFFFFFELL || (a2 - 4) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    v8 = sub_24814A31C();
    (*(v5 + 16))(v7, v8, v4);
    v9 = sub_248382A80();
    v10 = sub_248383DA0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134349312;
      *(v11 + 4) = a1;
      *(v11 + 12) = 2050;
      *(v11 + 14) = a2;
      _os_log_impl(&dword_248146000, v9, v10, "Invalid stacks configuration: (%{public}ld, %{public}ld)", v11, 0x16u);
      MEMORY[0x24C1CD5F0](v11, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }

  if (a1 <= 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

id sub_2482F7D74(void *a1)
{
  v3 = sub_248382A90();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_248381210();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 smallDefaultStack];
  if (v12)
  {
    v13 = v12;
    v46 = v1;
    sub_24814FB28(0, &unk_27EE932E0, 0x277CEB5A8);
    v14 = sub_248383B10();

    sub_248381200();
    v45 = sub_2483811E0();
    v15 = *(v8 + 8);
    v41 = v11;
    v42 = v8 + 8;
    v43 = v7;
    v40 = v15;
    v15(v11, v7);
    v48 = MEMORY[0x277D84F90];
    if (v14 >> 62)
    {
LABEL_24:
      v16 = sub_248384360();
      v47 = a1;
      if (v16)
      {
LABEL_4:
        v17 = 0;
        a1 = (v14 & 0xC000000000000001);
        v18 = MEMORY[0x277D84F90];
        do
        {
          v44 = v18;
          v19 = v17;
          while (1)
          {
            if (a1)
            {
              v20 = MEMORY[0x24C1CBA50](v19, v14);
            }

            else
            {
              if (v19 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_23;
              }

              v20 = *(v14 + 8 * v19 + 32);
            }

            v21 = v20;
            v17 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              __break(1u);
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

            sub_24814FB28(0, &qword_27EE90608, 0x277CFA358);
            v22 = v21;
            v23 = sub_2482F9D68(v22);
            if (v23)
            {
              break;
            }

            ++v19;
            if (v17 == v16)
            {
              goto LABEL_25;
            }
          }

          v24 = v23;
          v44 = objc_allocWithZone(MEMORY[0x277CF9038]);
          v25 = v41;
          sub_248381200();
          v26 = sub_2483811E0();
          v40(v25, v43);
          v44 = [v44 initWithID:v26 chsWidget:v24 suggestionSource:2];

          MEMORY[0x24C1CB0D0]();
          if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_248383B50();
          }

          sub_248383B70();
          v18 = v48;
        }

        while (v17 != v16);
      }
    }

    else
    {
      v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v47 = a1;
      if (v16)
      {
        goto LABEL_4;
      }
    }

LABEL_25:

    v35 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_248384160();
    v36 = sub_248383B00();

    v37 = v45;
    v34 = [v35 initWithID:v45 widgets:v36];

    return v34;
  }

  v27 = sub_24814A31C();
  (*(v4 + 16))(v6, v27, v3);
  v28 = a1;
  v29 = sub_248382A80();
  v30 = sub_248383DA0();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138543362;
    *(v31 + 4) = v28;
    *v32 = v28;
    v33 = v28;
    _os_log_impl(&dword_248146000, v29, v30, "Invalid stack: %{public}@", v31, 0xCu);
    sub_24822D578(v32, &qword_27EE8FE40, &unk_24839C5A0);
    MEMORY[0x24C1CD5F0](v32, -1, -1);
    MEMORY[0x24C1CD5F0](v31, -1, -1);
  }

  else
  {
    v33 = v29;
    v29 = v28;
  }

  (*(v4 + 8))(v6, v3);
  return 0;
}

uint64_t sub_2482F826C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    sub_2483844C0();
    v4 = objc_opt_self();
    v5 = (a1 + 56);
    do
    {
      v6 = [v4 valueWithRect_];
      sub_2483844A0();
      sub_2483844D0();
      sub_2483844E0();
      sub_2483844B0();
      v5 += 4;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_2482F8348(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_248382A90();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v91 - v15;
  v17 = sub_24814A31C();
  v18 = *(v11 + 16);
  v18(v16, v17, v10);
  v19 = sub_248382A80();
  v20 = sub_248383DC0();
  v21 = os_log_type_enabled(v19, v20);
  v95 = v13;
  v96 = v11;
  v93 = v17;
  v92 = v18;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = v10;
    v24 = swift_slowAlloc();
    v98 = v24;
    *v22 = 136446210;
    v97.origin.x = a1;
    v97.origin.y = a2;
    v97.size.width = a3;
    v97.size.height = a4;
    type metadata accessor for CGRect(0);
    v25 = sub_2483839A0();
    v27 = sub_24814A378(v25, v26, &v98);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_248146000, v19, v20, "Requesting widget stack rows for viewArea %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v28 = v24;
    v10 = v23;
    v11 = v96;
    MEMORY[0x24C1CD5F0](v28, -1, -1);
    MEMORY[0x24C1CD5F0](v22, -1, -1);
  }

  v94 = *(v11 + 8);
  v94(v16, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE932F0, &qword_24839E4D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24839C7F0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a3;
  *(inited + 56) = a4;
  v30 = sub_2482F4034(inited);
  v32 = v31;
  swift_setDeallocating();
  v33 = &selRef__eventStoreDidChange_;
  v34 = [v5 widgetStackRows];
  sub_248383E00();
  v35 = sub_248383B10();

  if (v35 >> 62)
  {
    v36 = sub_248384360();
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v36 < v30 || CRSWidgetLayoutState.maxColumns.getter() < v32)
  {
    v37 = v95;
    v92(v95, v93, v10);
    v38 = v5;
    v39 = sub_248382A80();
    v40 = v10;
    v10 = sub_248383DA0();
    if (os_log_type_enabled(v39, v10))
    {
      v91 = v40;
      v93 = v5;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v98 = v42;
      *v41 = 136447234;
      v99.origin.x = a1;
      v99.origin.y = a2;
      v99.size.width = a3;
      v99.size.height = a4;
      v97 = CGRectIntegral(v99);
      type metadata accessor for CGRect(0);
      v43 = sub_2483839A0();
      v45 = sub_24814A378(v43, v44, &v98);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2048;
      *(v41 + 14) = v30;
      *(v41 + 22) = 2048;
      v92 = v32;
      *(v41 + 24) = v32;
      *(v41 + 32) = 2048;
      v46 = [v38 widgetStackRows];
      v47 = sub_248383B10();

      if (v47 >> 62)
      {
        v48 = sub_248384360();
      }

      else
      {
        v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v49 = v95;

      *(v41 + 34) = v48;

      *(v41 + 42) = 2050;
      v50 = CRSWidgetLayoutState.maxColumns.getter();

      *(v41 + 44) = v50;
      _os_log_impl(&dword_248146000, v39, v10, "viewArea %{public}s needs more stacks than available: maxRows: %ld, maxColumns: %ld, current maxRows: %ld, current maxColumns: %{public}ld", v41, 0x34u);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x24C1CD5F0](v42, -1, -1);
      MEMORY[0x24C1CD5F0](v41, -1, -1);

      v94(v49, v91);
      v5 = v93;
      v33 = &selRef__eventStoreDidChange_;
      v32 = v92;
    }

    else
    {

      v94(v37, v40);
    }
  }

  v51 = [v5 v33[363]];
  v52 = sub_248383B10();

  if (v52 >> 62)
  {
    v53 = sub_248384360();
  }

  else
  {
    v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v53 < v30)
  {
    __break(1u);
  }

  else
  {
    x = MEMORY[0x277D84F90];
    *&v97.origin.x = MEMORY[0x277D84F90];
    if (v30 < 2)
    {
      goto LABEL_35;
    }

    v55 = [v5 v33[363]];
    v56 = sub_248383B10();

    if (!(v56 >> 62))
    {
      v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_18;
    }
  }

  v57 = sub_248384360();
LABEL_18:

  if (v57 < v30)
  {
LABEL_34:
    x = MEMORY[0x277D84F90];
    goto LABEL_35;
  }

  v58 = [v5 v33[363]];
  v59 = sub_248383B10();

  if (v59 >> 62)
  {
    result = sub_248384360();
    if (result)
    {
      goto LABEL_21;
    }

    goto LABEL_33;
  }

  result = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_33:

    goto LABEL_34;
  }

LABEL_21:
  if ((v59 & 0xC000000000000001) != 0)
  {
    v61 = MEMORY[0x24C1CBA50](0, v59);
  }

  else
  {
    if (!*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_94;
    }

    v61 = *(v59 + 32);
  }

  v62 = v61;

  v63 = v62;
  MEMORY[0x24C1CB0D0]();
  if (*((*&v97.origin.x & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v97.origin.x & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v10 = v32;
    sub_248383B50();
  }

  sub_248383B70();

  x = v97.origin.x;
LABEL_35:
  v64 = [v5 v33[363]];
  v65 = sub_248383B10();

  if (!(v65 >> 62))
  {
    v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v66)
    {
      goto LABEL_37;
    }

LABEL_71:

    return *&x;
  }

  v66 = sub_248384360();
  if (!v66)
  {
    goto LABEL_71;
  }

LABEL_37:
  v67 = __OFSUB__(v66, 1);
  v68 = v66 - 1;
  if (v67)
  {
    __break(1u);
    goto LABEL_74;
  }

  if ((v65 & 0xC000000000000001) != 0)
  {
LABEL_74:
    v69 = MEMORY[0x24C1CBA50](v68, v65);
LABEL_42:
    v70 = v69;

    v71 = [v70 stacks];

    sub_248383DD0();
    v64 = sub_248383B10();

    if ((v32 & 0x8000000000000000) == 0)
    {
      v10 = v32;
      v32 = v64 >> 62;
      if (!(v64 >> 62))
      {
        v72 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v72 >= v10)
        {
          v73 = v10;
        }

        else
        {
          v73 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v10)
        {
          v74 = v73;
        }

        else
        {
          v74 = 0;
        }

        if (v72 >= v74)
        {
          goto LABEL_51;
        }

        goto LABEL_88;
      }

      goto LABEL_78;
    }

    goto LABEL_76;
  }

  if ((v68 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (v68 < *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v69 = *(v65 + 8 * v68 + 32);
    goto LABEL_42;
  }

LABEL_77:
  __break(1u);
LABEL_78:
  v89 = sub_248384360();
  result = sub_248384360();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v89 >= v10)
    {
      v90 = v10;
    }

    else
    {
      v90 = v89;
    }

    if (v89 < 0)
    {
      v90 = v10;
    }

    if (v10)
    {
      v74 = v90;
    }

    else
    {
      v74 = 0;
    }

    if (sub_248384360() >= v74)
    {
LABEL_51:
      if ((v64 & 0xC000000000000001) != 0)
      {

        if (v74)
        {
          v75 = 0;
          do
          {
            v76 = v75 + 1;
            sub_248384460();
            v75 = v76;
          }

          while (v74 != v76);
        }
      }

      else
      {
      }

      if (v32)
      {
        v78 = sub_2483845B0();
        v79 = v81;
        v77 = v82;
        v80 = v83;

        if ((v80 & 1) == 0)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v77 = 0;
        v78 = v64 & 0xFFFFFFFFFFFFFF8;
        v79 = (v64 & 0xFFFFFFFFFFFFFF8) + 32;
        v80 = (2 * v74) | 1;
        if ((v80 & 1) == 0)
        {
          goto LABEL_61;
        }
      }

      sub_2483846B0();
      swift_unknownObjectRetain_n();
      v84 = swift_dynamicCastClass();
      if (!v84)
      {
        swift_unknownObjectRelease();
        v84 = MEMORY[0x277D84F90];
      }

      v85 = *(v84 + 16);

      if (__OFSUB__(v80 >> 1, v77))
      {
        __break(1u);
      }

      else if (v85 == (v80 >> 1) - v77)
      {
        v86 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (v86)
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      }

      swift_unknownObjectRelease_n();
LABEL_61:
      sub_2482FA840(v78, v79, v77, v80, MEMORY[0x277CF8F88]);
LABEL_67:
      swift_unknownObjectRelease();
LABEL_68:
      v87 = objc_allocWithZone(MEMORY[0x277CF9050]);
      v88 = sub_248383B00();

      [v87 initWithStacks_];

      MEMORY[0x24C1CB0D0]();
      if (*((*&v97.origin.x & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*&v97.origin.x & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_69:
        sub_248383B70();
        x = v97.origin.x;
        return *&x;
      }

LABEL_89:
      sub_248383B50();
      goto LABEL_69;
    }

LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

LABEL_94:
  __break(1u);
  return result;
}

void sub_2482F8DE4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  if (__OFSUB__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = v4 - 1;
  }
}

Swift::Int __swiftcall CRSWidgetLayoutState.index(before:)(Swift::Int before)
{
  result = before - 1;
  if (__OFSUB__(before, 1))
  {
    __break(1u);
  }

  return result;
}

void sub_2482F8E84(uint64_t *a1)
{
  v3 = *v1;
  v4 = *a1;

  if (__OFSUB__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *a1 = v4 - 1;
  }
}

void sub_2482F8ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [v3 widgetStackRows];
  sub_248383E00();
  v8 = sub_248383B10();

  if (v8 >> 62)
  {
    v9 = sub_248384360();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 < 0 || v9 < a1)
  {
    __break(1u);
    goto LABEL_24;
  }

  v10 = [v3 widgetStackRows];
  v11 = sub_248383B10();

  if (v11 >> 62)
  {
LABEL_24:
    v12 = sub_248384360();
    goto LABEL_7;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:

  if (a3 < 0 || v12 < a3)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v13 = a3 - a1;
  if (a2 < 1)
  {
    if (v13 <= 0 && v13 > a2)
    {
      return;
    }
  }

  else if ((v13 & 0x8000000000000000) == 0 && v13 < a2)
  {
    return;
  }

  v14 = __OFADD__(a1, a2);
  a2 += a1;
  if (v14)
  {
    goto LABEL_26;
  }

  v15 = [v3 widgetStackRows];
  v16 = sub_248383B10();

  if (v16 >> 62)
  {
LABEL_27:
    v17 = sub_248384360();
    goto LABEL_19;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:

  if (a2 < 0 || v17 < a2)
  {
    __break(1u);
  }
}

void sub_2482F9168(uint64_t *a1@<X8>)
{
  v3 = [*v1 widgetStackRows];
  sub_248383E00();
  v4 = sub_248383B10();

  if (v4 >> 62)
  {
    v5 = sub_248384360();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *a1 = v5;
}

uint64_t _sSo20CRSWidgetLayoutStateC9DashBoardE7maxRowsSivg_0()
{
  v1 = [v0 widgetStackRows];
  sub_248383E00();
  v2 = sub_248383B10();

  if (v2 >> 62)
  {
    v3 = sub_248384360();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3;
}

void (*sub_2482F9284(uint64_t *a1, unint64_t *a2))(uint64_t a1)
{
  CRSWidgetLayoutState.subscript.getter(*a2);
  *a1 = v3;
  a1[1] = v3;
  return sub_2482F92D0;
}

void sub_2482F92D8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v10 = *v2;

  v6 = [v10 widgetStackRows];
  sub_248383E00();
  v7 = sub_248383B10();

  if (v7 >> 62)
  {
    v8 = sub_248384360();

    if (v8 < 0)
    {
      __break(1u);
      goto LABEL_10;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v8 < v4)
  {
LABEL_11:
    __break(1u);
    return;
  }

  *a2 = v5;
  a2[1] = v4;
  a2[2] = v10;

  v9 = v10;
}

void sub_2482F93D4(void *a1@<X8>)
{
  v3 = *v1;

  v4 = [v3 widgetStackRows];
  sub_248383E00();
  v5 = sub_248383B10();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

LABEL_3:
    *a1 = 0;
    a1[1] = v6;
    return;
  }

  v6 = sub_248384360();

  if ((v6 & 0x8000000000000000) == 0)
  {
    goto LABEL_3;
  }

  __break(1u);
}

uint64_t *sub_2482F9498(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_2482F94B4(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_2482F94D0(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void sub_2482F94EC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = v4 + 1;
  }
}

Swift::Int __swiftcall CRSWidgetLayoutState.index(after:)(Swift::Int after)
{
  result = after + 1;
  if (__OFADD__(after, 1))
  {
    __break(1u);
  }

  return result;
}

void sub_2482F958C(uint64_t *a1)
{
  v3 = *v1;
  v4 = *a1;

  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *a1 = v4 + 1;
  }
}

void sub_2482F95DC(void *a1@<X8>)
{
  v3 = *v1;

  *a1 = v3;
  a1[1] = 0;
}

uint64_t sub_2482F9620(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_2482F9674()
{
  v1 = *v0;
  sub_2482FA594(*v0);
  v3 = v2;

  return v3;
}

void sub_2482F96CC(void *a1, uint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_19;
  }

  if (!a3)
  {
LABEL_19:
    *a1 = v3;
    a1[1] = a3;
    return;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

  v7 = 0;
  while (1)
  {
    v8 = [v3 widgetStackRows];
    sub_248383E00();
    v9 = sub_248383B10();

    if (v9 >> 62)
    {
      v10 = sub_248384360();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7 == v10)
    {
      a3 = v7;
      goto LABEL_19;
    }

    v11 = [v3 widgetStackRows];
    v12 = sub_248383B10();

    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x24C1CBA50](v7, v12);
      goto LABEL_11;
    }

    if (v7 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v13 = *(v12 + 8 * v7 + 32);
LABEL_11:
    v14 = v13;

    *(a2 + 8 * v7) = v14;
    if (a3 - 1 == v7)
    {
      goto LABEL_19;
    }

    if (__OFADD__(++v7, 1))
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

void CRSWidgetLayoutState.subscript.getter(unint64_t a1)
{
  v3 = [v1 widgetStackRows];
  sub_248383E00();
  v4 = sub_248383B10();

  if ((v4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x24C1CBA50](a1, v4);
    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v5 = *(v4 + 8 * a1 + 32);
LABEL_5:

    return;
  }

  __break(1u);
}

void sub_2482F99A0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1 + a2;
  if (__OFADD__(*a1, a2))
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = *v3;

  v7 = [v6 widgetStackRows];
  sub_248383E00();
  v8 = sub_248383B10();

  if (v8 >> 62)
  {
LABEL_8:
    v9 = sub_248384360();
    goto LABEL_4;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (v5 < 0 || v9 < v5)
  {
    __break(1u);
  }

  else
  {
    *a3 = v5;
  }
}

void sub_2482F9A70(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  sub_2482F8ED4(*a1, a2, *a3);
  *a4 = v5;
  *(a4 + 8) = v6 & 1;
}

void sub_2482F9AAC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;

  v6 = [v5 widgetStackRows];
  sub_248383E00();
  v7 = sub_248383B10();

  if (v7 >> 62)
  {
    v8 = sub_248384360();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 < 0 || v8 < v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v9 = [v5 widgetStackRows];
  v10 = sub_248383B10();

  if (v10 >> 62)
  {
LABEL_12:
    v11 = sub_248384360();
    goto LABEL_7;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:

  if (v4 < 0 || v11 < v4)
  {
    __break(1u);
  }
}

id sub_2482F9C04(void *a1)
{
  v2 = sub_248381210();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24814FB28(0, &qword_27EE90608, 0x277CFA358);
  v6 = a1;
  v7 = sub_2482F9D68(v6);
  if (v7)
  {
    v8 = v7;
    v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_248381200();
    v10 = sub_2483811E0();
    (*(v3 + 8))(v5, v2);
    v11 = [v9 initWithID:v10 chsWidget:v8 suggestionSource:2];
  }

  else
  {

    return 0;
  }

  return v11;
}

id sub_2482F9D68(void *a1)
{
  v2 = sub_248382A90();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 avocadoDescriptor];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 extensionIdentity];
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE932F8, &qword_2483A08A8);
    v10 = sub_2483827A0();
    v12 = v11;
    swift_endAccess();

    v13 = [v8 extensionIdentity];
    v14 = *MEMORY[0x277CFA130];
    swift_beginAccess();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93300, &qword_2483A08B0);
    v16 = 0;
    v17 = 0;
    if (!(*(*(v15 - 8) + 48))(&v13[v14], 1, v15))
    {
      v16 = sub_2483827A0();
      v17 = v18;
    }

    swift_endAccess();

    v19 = [a1 widgetKind];
    v20 = sub_248383960();
    v22 = v21;

    v23 = sub_2482FA0DC(v10, v12, v16, v17, v20, v22);
  }

  else
  {
    v24 = sub_24814A31C();
    (*(v3 + 16))(v6, v24, v2);
    v25 = a1;
    v26 = sub_248382A80();
    v27 = sub_248383DA0();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138543362;
      *(v28 + 4) = v25;
      *v29 = v25;
      v30 = v25;
      _os_log_impl(&dword_248146000, v26, v27, "Invalid descriptor: %{public}@", v28, 0xCu);
      sub_24822D578(v29, &qword_27EE8FE40, &unk_24839C5A0);
      MEMORY[0x24C1CD5F0](v29, -1, -1);
      MEMORY[0x24C1CD5F0](v28, -1, -1);
    }

    else
    {
      v30 = v26;
      v26 = v25;
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return v23;
}

id sub_2482FA0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93308, &qword_2483A08B8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE932F8, &qword_2483A08A8);
  MEMORY[0x28223BE20](v10 - 8);
  sub_248382780();
  if (a4)
  {
    sub_248382780();
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93300, &qword_2483A08B0);
  (*(*(v12 - 8) + 56))(v9, v11, 1, v12);
  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_248383EC0();
  v14 = sub_248383EB0();
  v15 = sub_248383930();

  v16 = [v13 initWithExtensionIdentity:v14 kind:v15 family:1 intent:0 activityIdentifier:0];

  return v16;
}

uint64_t sub_2482FA2D8@<X0>(uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (a2)
  {
    sub_248382780();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_2483827B0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a4, v5, 1, v6);
}

uint64_t CRSWidgetStateUpdateSource.description.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E55;
  if (a1 == 1)
  {
    v1 = 0x79616C50726143;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x73676E6974746553;
  }
}

uint64_t sub_2482FA3C8()
{
  v1 = 0x6E776F6E6B6E55;
  if (*v0 == 1)
  {
    v1 = 0x79616C50726143;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73676E6974746553;
  }
}

void *sub_2482FA424(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91CA0, &unk_24839D8A0);
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

uint64_t sub_2482FA4A8()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24825ED28;

  return sub_2482F2398(v6, v7, v8, v2, v3, v5, v4);
}

void *sub_2482FA554(void *a1, int64_t a2, char a3)
{
  result = sub_2482E69DC(a1, a2, a3, *v3, &unk_27EE93468, &unk_2483A0C90, &qword_27EE93450, &qword_2483A0C80);
  *v3 = result;
  return result;
}

void sub_2482FA594(void *a1)
{
  v2 = [a1 widgetStackRows];
  sub_248383E00();
  v3 = sub_248383B10();

  if (v3 >> 62)
  {
    v4 = sub_248384360();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = [a1 widgetStackRows];
  v6 = sub_248383B10();

  if (v6 >> 62)
  {
    v14 = sub_248384360();

    if (v14 < 0)
    {
      __break(1u);
LABEL_15:
      v9 = sub_248384360();

      if (v4 < 0)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    }
  }

  else
  {
  }

  v7 = [a1 widgetStackRows];
  v8 = sub_248383B10();

  if (v8 >> 62)
  {
    goto LABEL_15;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v4 < 0)
  {
LABEL_16:
    __break(1u);
    return;
  }

LABEL_7:
  if (v9 < v4)
  {
    goto LABEL_16;
  }

  if (v4)
  {
    v10 = sub_2482A8190(v4, 0);
    v11 = a1;
    sub_2482F96CC(v15, (v10 + 4), v4);
    v13 = v12;

    if (v13 != v4)
    {
      __break(1u);
    }
  }
}

void *sub_2482FA7A4(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_2482A8190(v2, 0);

    MEMORY[0x24C1CBA30](v3 + 4, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_248384360();
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void sub_2482FA840(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0, &unk_24839DA80);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_2482FA92C(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_2482FAA84(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_248384360();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_248384360();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24822D648(&qword_27EE93488, &qword_27EE93430, &qword_2483A0140, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93430, &qword_2483A0140);
            v9 = sub_2482AB398(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_248383DD0();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2482FAC28(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, __n128))
{
  v3 = sub_2482FAC8C(a1);
  v4 = v3[2];

  return (a2)(v3 + 4, v4);
}

void *sub_2482FAC8C(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_2482FA7A4(a1);

      objc_setAssociatedObject(v2, MEMORY[0x277D84F90], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

unint64_t sub_2482FAD48()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_24814D854(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2482FADAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    if (result)
    {
      sub_248383E00();
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2482FAE14()
{
  result = qword_27EE932C8;
  if (!qword_27EE932C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE932C8);
  }

  return result;
}

uint64_t sub_2482FAE68()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24825ED28;

  return sub_2482F4D68(v5, v6, v7, v2, v3, v4);
}

void sub_2482FAF10()
{
  v1 = *(v0 + 16);
  if (v1 == 1)
  {
    v2 = *(v0 + 24);
    v3 = sub_248383930();
    [v2 refreshWidgetStateForVehicleID_];
  }

  else
  {
    if (v1)
    {
      return;
    }

    v3 = [objc_opt_self() defaultCenter];
    [v3 postNotificationName:@"DBWidgetLayoutStateChangedNotification" object:0];
  }
}

uint64_t sub_2482FAFD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2482FB04C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_24814FB28(255, &qword_27EE932D8, 0x277CF9040);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2482FB0D4()
{
  result = qword_27EE93328;
  if (!qword_27EE93328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE93328);
  }

  return result;
}

uint64_t sub_2482FB2DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE93320, &qword_2483A0900);
    sub_2482FB0D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2482FB3A4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE93338, qword_2483A0908);
    sub_2482FB04C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2482FB4A0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24823DDD0;

  return sub_2482F4D68(v5, v6, v7, v2, v3, v4);
}

double sub_2482FB548(unint64_t a1, void *a2, void (**a3)(const void *, void *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480, &qword_24839D5D0);
  MEMORY[0x28223BE20](v6 - 8);
  v69 = &v61 - v7;
  v8 = sub_248382A90();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v68 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v61 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  v66 = a3;
  _Block_copy(a3);
  v15 = sub_24814A31C();
  v62 = *(v9 + 16);
  v63 = v15;
  v62(v13);
  v16 = a2;

  v17 = sub_248382A80();
  v18 = sub_248383DC0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v67 = v16;
    v20 = v19;
    v21 = swift_slowAlloc();
    v65 = v8;
    v22 = v21;
    v70 = v21;
    *v20 = 136446466;
    v23 = [v67 vehicleID];
    v24 = sub_248383960();
    v64 = v9;
    v25 = v24;
    v61 = v14;
    v27 = v26;

    v28 = sub_24814A378(v25, v27, &v70);

    *(v20 + 4) = v28;
    *(v20 + 12) = 2082;
    v29 = sub_24814FB28(0, &unk_27EE90E00, 0x277CCAE60);
    v30 = MEMORY[0x24C1CB100](a1, v29);
    v32 = sub_24814A378(v30, v31, &v70);
    v14 = v61;

    *(v20 + 14) = v32;
    v9 = v64;
    _os_log_impl(&dword_248146000, v17, v18, "Updating provider view areas for vehicle ID: %{public}s: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    v33 = v22;
    v8 = v65;
    MEMORY[0x24C1CD5F0](v33, -1, -1);
    v34 = v20;
    v16 = v67;
    MEMORY[0x24C1CD5F0](v34, -1, -1);
  }

  v35 = *(v9 + 8);
  v35(v13, v8);
  if (a1 >> 62)
  {
    if (sub_248384360())
    {
      goto LABEL_5;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    v36 = sub_248383BE0();
    v37 = v69;
    (*(*(v36 - 8) + 56))(v69, 1, 1, v36);
    sub_248383BB0();
    v38 = v16;

    v39 = sub_248383BA0();
    v40 = swift_allocObject();
    v41 = MEMORY[0x277D85700];
    v40[2] = v39;
    v40[3] = v41;
    v40[4] = v38;
    v40[5] = a1;
    v40[6] = sub_2482FBB54;
    v40[7] = v14;
    sub_2482E9E44(0, 0, v37, 0, 0, &unk_2483A0C40, v40);

    sub_24822D578(v37, &qword_27EE90480, &qword_24839D5D0);
    goto LABEL_11;
  }

  v42 = v68;
  (v62)(v68, v63, v8);
  v43 = v16;
  v44 = sub_248382A80();
  v45 = sub_248383DA0();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v65 = v8;
    v48 = v47;
    v70 = v47;
    *v46 = 136446210;
    v49 = [v43 vehicleID];
    v50 = sub_248383960();
    v64 = v9;
    v52 = v51;

    v53 = sub_24814A378(v50, v52, &v70);

    *(v46 + 4) = v53;
    _os_log_impl(&dword_248146000, v44, v45, "Invalid empty view areas provided for vehicle ID: %{public}s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x24C1CD5F0](v48, -1, -1);
    MEMORY[0x24C1CD5F0](v46, -1, -1);

    v54 = v65;
    v55 = v68;
  }

  else
  {

    v55 = v42;
    v54 = v8;
  }

  v35(v55, v54);
  v56 = Array<A>.rectValues.getter(a1);
  sub_2482FAE14();
  v57 = swift_allocError();
  *v58 = v56;
  v59 = sub_2483810B0();
  v66[2](v66, v59);

LABEL_11:

  return result;
}

uint64_t objectdestroyTm_2()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2482FBBAC(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v3 = sub_248382A90();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2482FBC84, 0, 0);
}

uint64_t sub_2482FBC84()
{
  v98 = v0;
  v0[18] = MEMORY[0x277D84F90];
  v1 = v0 + 18;
  v2 = v0[28];
  v3 = v0[25];
  v4 = sub_2482F7BC4(v0[22], v0[23]);
  v6 = v5;
  v7 = sub_24814A31C();
  v0[29] = v7;
  v8 = *(v3 + 16);
  v0[30] = v8;
  v0[31] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v92 = v7;
  v91 = v8;
  (v8)(v2);
  v9 = sub_248382A80();
  v10 = sub_248383DC0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134349312;
    *(v11 + 4) = v4;
    *(v11 + 12) = 2050;
    *(v11 + 14) = v6;
    _os_log_impl(&dword_248146000, v9, v10, "Fetching default stacks for configuration: (%{public}ld, %{public}ld)", v11, 0x16u);
    MEMORY[0x24C1CD5F0](v11, -1, -1);
  }

  v12 = v0[28];
  v13 = v0[24];
  v14 = v0[25];

  v15 = *(v14 + 8);
  v0[32] = v15;
  v0[33] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v93 = v15;
  v15(v12, v13);
  if (v4 != 2)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0, &unk_24839DA80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24839C700;
  v17 = sub_2482617D4();
  v18 = *v17;
  *(v16 + 32) = *v17;
  v19 = objc_allocWithZone(MEMORY[0x277CF9050]);
  sub_248383DD0();
  v20 = v18;
  v21 = sub_248383B00();

  [v19 initWithStacks_];

  MEMORY[0x24C1CB0D0]();
  if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_77;
  }

  while (1)
  {
    sub_248383B70();
    v22 = *v1;
LABEL_7:
    v0[34] = v22;
    v23 = [objc_allocWithZone(MEMORY[0x277CEB990]) initWithClientSessionIdentifier:0 widgetClient:2];
    v24 = [objc_allocWithZone(MEMORY[0x277CEB9B8]) initWithClientIdentity_];
    v0[35] = v24;

    v96 = v24;
    [v24 setSmartStackVariant_];
    if (v6 < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v6 > 0x7FFFFFFF)
    {
      goto LABEL_34;
    }

    v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
    [v96 setNumberOfStacks_];

    sub_24814FB28(0, &qword_27EE90740, 0x277CCABB0);
    v26 = sub_248384010();
    [v96 setMaximumWidgetsPerStack_];

    if (!(v22 >> 62))
    {
      v27 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }

LABEL_35:
    v27 = sub_248384360();
LABEL_11:
    v28 = MEMORY[0x277D84F90];
    v94 = v1;
    v95 = v0;
    if (v27)
    {
      v97 = MEMORY[0x277D84F90];
      sub_2482E665C(0, v27 & ~(v27 >> 63), 0);
      if (v27 < 0)
      {
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v29 = 0;
      v30 = v97;
      do
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x24C1CBA50](v29, v22);
        }

        else
        {
          v31 = *(v22 + 8 * v29 + 32);
        }

        v32 = v31;
        v33 = [v32 stacks];
        sub_248383DD0();
        v34 = sub_248383B10();

        v97 = v30;
        v36 = *(v30 + 16);
        v35 = *(v30 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_2482E665C((v35 > 1), v36 + 1, 1);
          v30 = v97;
        }

        ++v29;
        *(v30 + 16) = v36 + 1;
        *(v30 + 8 * v36 + 32) = v34;
      }

      while (v27 != v29);
      v1 = v94;
      v0 = v95;
      v28 = MEMORY[0x277D84F90];
    }

    else
    {
      v30 = MEMORY[0x277D84F90];
    }

    v1[1] = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92C40, &qword_2483A0138);
    v37 = MEMORY[0x277D83970];
    sub_24822D648(&unk_27EE93420, &unk_27EE92C40, &qword_2483A0138, MEMORY[0x277D83970]);
    sub_24822D648(&unk_27EE92C50, &qword_27EE93430, &qword_2483A0140, v37);
    v38 = sub_248383AB0();

    if (v38 >> 62)
    {
      v6 = sub_248384360();
      if (!v6)
      {
LABEL_37:

        v40 = MEMORY[0x277D84F90];
        goto LABEL_38;
      }
    }

    else
    {
      v6 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_37;
      }
    }

    v97 = v28;
    sub_2482FA554(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      goto LABEL_74;
    }

    v39 = 0;
    v40 = v97;
    do
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x24C1CBA50](v39, v38);
      }

      else
      {
        v41 = *(v38 + 8 * v39 + 32);
      }

      v42 = v41;
      v43 = [v42 widgets];
      sub_248384160();
      v44 = sub_248383B10();

      v97 = v40;
      v46 = *(v40 + 16);
      v45 = *(v40 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_2482FA554((v45 > 1), v46 + 1, 1);
        v40 = v97;
      }

      ++v39;
      *(v40 + 16) = v46 + 1;
      *(v40 + 8 * v46 + 32) = v44;
    }

    while (v6 != v39);

    v1 = v94;
    v0 = v95;
    v28 = MEMORY[0x277D84F90];
LABEL_38:
    v1[2] = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93438, &qword_2483A0C78);
    v6 = MEMORY[0x277D83970];
    sub_24822D648(&qword_27EE93440, &qword_27EE93438, &qword_2483A0C78, MEMORY[0x277D83970]);
    sub_24822D648(&qword_27EE93448, &qword_27EE93450, &qword_2483A0C80, v6);
    v47 = sub_248383AB0();

    if (v47 >> 62)
    {
      v48 = sub_248384360();
      if (!v48)
      {
LABEL_61:

        v53 = MEMORY[0x277D84F90];
        if (!(MEMORY[0x277D84F90] >> 62))
        {
          goto LABEL_47;
        }

        goto LABEL_62;
      }
    }

    else
    {
      v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v48)
      {
        goto LABEL_61;
      }
    }

    v97 = v28;
    sub_2483844C0();
    if (v48 < 0)
    {
      goto LABEL_75;
    }

    v49 = 0;
    v1 = (v47 & 0xC000000000000001);
    do
    {
      if (v1)
      {
        v50 = MEMORY[0x24C1CBA50](v49, v47);
      }

      else
      {
        v50 = *(v47 + 8 * v49 + 32);
      }

      v51 = v50;
      ++v49;
      v52 = [v50 chsWidget];

      sub_2483844A0();
      v6 = *(v97 + 16);
      sub_2483844D0();
      sub_2483844E0();
      sub_2483844B0();
    }

    while (v48 != v49);

    v53 = v97;
    v28 = MEMORY[0x277D84F90];
    if (!(v97 >> 62))
    {
LABEL_47:
      v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v54)
      {
        goto LABEL_63;
      }

      goto LABEL_48;
    }

LABEL_62:
    v54 = sub_248384360();
    if (!v54)
    {
LABEL_63:

      v55 = MEMORY[0x277D84F90];
      goto LABEL_64;
    }

LABEL_48:
    v97 = v28;
    sub_24822C8F0(0, v54 & ~(v54 >> 63), 0);
    if ((v54 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_76:
    __break(1u);
LABEL_77:
    sub_248383B50();
  }

  v55 = v97;
  if ((v53 & 0xC000000000000001) != 0)
  {
    v56 = 0;
    do
    {
      MEMORY[0x24C1CBA50](v56, v53);
      v57 = sub_248384150();
      v59 = v58;
      swift_unknownObjectRelease();
      v97 = v55;
      v61 = *(v55 + 16);
      v60 = *(v55 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_24822C8F0((v60 > 1), v61 + 1, 1);
        v55 = v97;
      }

      ++v56;
      *(v55 + 16) = v61 + 1;
      v62 = v55 + 16 * v61;
      *(v62 + 32) = v57;
      *(v62 + 40) = v59;
    }

    while (v54 != v56);
  }

  else
  {
    v63 = 32;
    do
    {
      v64 = *(v53 + v63);
      v65 = sub_248384150();
      v67 = v66;

      v97 = v55;
      v69 = *(v55 + 16);
      v68 = *(v55 + 24);
      if (v69 >= v68 >> 1)
      {
        sub_24822C8F0((v68 > 1), v69 + 1, 1);
        v55 = v97;
      }

      *(v55 + 16) = v69 + 1;
      v70 = v55 + 16 * v69;
      *(v70 + 32) = v65;
      *(v70 + 40) = v67;
      v63 += 8;
      --v54;
    }

    while (v54);
  }

  v0 = v95;
LABEL_64:
  v71 = [objc_opt_self() sharedInstance];
  v72 = [v71 widgetDenyListExtensions];

  v73 = sub_248383C80();
  v74 = *(v73 + 16);
  if (v74)
  {
    v75 = sub_2482FA424(*(v73 + 16), 0);
    v76 = sub_2482FA92C(&v97, v75 + 4, v74, v73);
    sub_248167908(v97);
    if (v76 != v74)
    {
      __break(1u);
      goto LABEL_67;
    }
  }

  else
  {
LABEL_67:

    v75 = MEMORY[0x277D84F90];
  }

  v77 = v0[27];
  v78 = v0[24];
  v97 = v75;
  sub_2482BE51C(v55);
  v79 = sub_248383B00();

  [v96 setDenyListOfExtensions_];

  v91(v77, v92, v78);
  v80 = v96;
  v81 = sub_248382A80();
  v82 = sub_248383DC0();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    *v83 = 138543362;
    *(v83 + 4) = v80;
    *v84 = v80;
    v85 = v80;
    _os_log_impl(&dword_248146000, v81, v82, "Fetching default stacks: %{public}@", v83, 0xCu);
    sub_24822D578(v84, &qword_27EE8FE40, &unk_24839C5A0);
    MEMORY[0x24C1CD5F0](v84, -1, -1);
    MEMORY[0x24C1CD5F0](v83, -1, -1);
  }

  v86 = v0[27];
  v87 = v0[24];

  v93(v86, v87);
  v88 = [objc_opt_self() sharedInstance];
  v0[36] = v88;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_2482FC8E8;
  v89 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93458, &qword_2483A0C88);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2482D8B9C;
  v0[13] = &block_descriptor_40;
  v0[14] = v89;
  [v88 fetchWidgetSmartStackWithRequest:v80 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2482FC8E8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 296) = v1;
  if (v1)
  {

    v2 = sub_2482FD194;
  }

  else
  {
    v2 = sub_2482FCA00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2482FCA00()
{
  v1 = *(v0 + 168);
  (*(v0 + 240))(*(v0 + 208), *(v0 + 232), *(v0 + 192));
  v2 = v1;
  v3 = sub_248382A80();
  v4 = sub_248383DC0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_248146000, v3, v4, "Fetched default stacks: %{public}@", v5, 0xCu);
    sub_24822D578(v6, &qword_27EE8FE40, &unk_24839C5A0);
    MEMORY[0x24C1CD5F0](v6, -1, -1);
    MEMORY[0x24C1CD5F0](v5, -1, -1);
  }

  v8 = *(v0 + 256);
  v9 = *(v0 + 208);
  v56 = v0;
  v10 = *(v0 + 192);

  v8(v9, v10);
  v11 = [v2 stacks];
  sub_24814FB28(0, &qword_27EE93460, 0x277CEB470);
  v12 = sub_248383B10();

  v59 = MEMORY[0x277D84F90];
  v55 = v2;
  i = v12 & 0xFFFFFFFFFFFFFF8;
  if (v12 >> 62)
  {
LABEL_90:
    v14 = sub_248384360();
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  while (v14 != v15)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x24C1CBA50](v15, v12);
    }

    else
    {
      if (v15 >= *(i + 16))
      {
        goto LABEL_84;
      }

      v17 = *(v12 + 8 * v15 + 32);
    }

    v18 = v17;
    v19 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    sub_248383DD0();
    ++v15;
    if (sub_2482F7D74(v18))
    {
      MEMORY[0x24C1CB0D0]();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_248383B50();
      }

      sub_248383B70();
      v16 = v59;
      v15 = v19;
    }
  }

  if (!(v16 >> 62))
  {
    v20 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = v20 == 1;
    if (v20 >= 1)
    {
      goto LABEL_18;
    }

LABEL_92:
    __break(1u);
LABEL_93:
    sub_248383B50();
    goto LABEL_21;
  }

  v20 = sub_248384360();
  v21 = v20 == 1;
  if (v20 < 1)
  {
    goto LABEL_92;
  }

LABEL_18:
  if (!v21)
  {
    v28 = 1 - v20;
    for (i = 5; v28 + i != 5; ++i)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x24C1CBA50](i - 4, v16);
      }

      else
      {
        if ((i - 4) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_86;
        }

        v29 = *(v16 + 8 * i);
      }

      v30 = v29;
      v31 = [v29 widgets];
      sub_248384160();
      v12 = sub_248383B10();

      if (v12 >> 62)
      {
        v53 = sub_248384360();
        if (sub_248384360() < 0)
        {
          goto LABEL_85;
        }

        if (v53 >= 3)
        {
          v54 = 3;
        }

        else
        {
          v54 = v53;
        }

        if (v53 >= 0)
        {
          v33 = v54;
        }

        else
        {
          v33 = 3;
        }

        if (sub_248384360() < v33)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v32 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v32 >= 3)
        {
          v33 = 3;
        }

        else
        {
          v33 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v32 < v33)
        {
          goto LABEL_87;
        }
      }

      if ((v12 & 0xC000000000000001) != 0)
      {

        if (v33)
        {
          sub_248384460();
          if (v33 != 1)
          {
            sub_248384460();
            if (v33 != 2)
            {
              sub_248384460();
            }
          }
        }
      }

      else
      {
      }

      v58 = v30;

      if (v12 >> 62)
      {
        sub_2483845B0();
        v34 = v43;
        v45 = v44;

        v36 = v45 >> 1;
        if ((v45 & 1) == 0)
        {
LABEL_50:
          v12 = v36 - v34;
          v46 = __OFSUB__(v36, v34);
          swift_unknownObjectRetain();
          if (v46)
          {
LABEL_82:
            __break(1u);
            goto LABEL_83;
          }

          goto LABEL_54;
        }
      }

      else
      {
        v34 = 0;
        v35 = (2 * v33) | 1;
        v36 = v35 >> 1;
        if ((v35 & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      v57 = v16;
      v37 = v28;
      sub_2483846B0();
      swift_unknownObjectRetain_n();
      v38 = swift_dynamicCastClass();
      if (!v38)
      {
        swift_unknownObjectRelease();
        v38 = MEMORY[0x277D84F90];
      }

      v39 = *(v38 + 16);

      v12 = v36 - v34;
      v40 = __OFSUB__(v36, v34);
      if (__OFSUB__(v36, v34))
      {
        goto LABEL_89;
      }

      if (v39 != v12)
      {
        swift_unknownObjectRelease();
        v28 = v37;
        v16 = v57;
        if (v40)
        {
          goto LABEL_82;
        }

LABEL_54:
        if (v12)
        {
          if (v12 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0, &unk_24839DA80);
            v47 = swift_allocObject();
            v48 = _swift_stdlib_malloc_size(v47);
            v49 = v48 - 32;
            if (v48 < 32)
            {
              v49 = v48 - 25;
            }

            v47[2] = v12;
            v47[3] = (2 * (v49 >> 3)) | 1;
          }

          swift_unknownObjectRelease();
          if (v34 == v36)
          {
            swift_unknownObjectRelease();
            __break(1u);
            return;
          }

          swift_arrayInitWithCopy();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v42 = v58;
        v12 = i - 4;
LABEL_63:
        swift_unknownObjectRelease();
        goto LABEL_64;
      }

      v41 = swift_dynamicCastClass();
      swift_unknownObjectRelease_n();
      v28 = v37;
      v16 = v57;
      v42 = v58;
      v12 = i - 4;
      if (!v41)
      {
        goto LABEL_63;
      }

LABEL_64:
      v50 = sub_248383B00();

      [v42 replacingWidgets_];

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v16 & 0x8000000000000000) != 0 || (v16 & 0x4000000000000000) != 0)
      {
        v16 = sub_24814D854(v16);
      }

      v51 = v16 & 0xFFFFFFFFFFFFFF8;
      if (v12 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_88;
      }

      v52 = *(v51 + 8 * i);
      *(v51 + 8 * i) = v42;
    }
  }

  v22 = objc_allocWithZone(MEMORY[0x277CF9050]);
  sub_248383DD0();
  v23 = sub_248383B00();
  [v22 initWithStacks_];

  i = v56;
  MEMORY[0x24C1CB0D0]();
  if (*((*(v56 + 144) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v56 + 144) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_93;
  }

LABEL_21:
  v24 = *(i + 280);
  v25 = *(i + 288);
  sub_248383B70();

  v26 = *(i + 144);

  v27 = *(i + 8);

  v27(v26);
}

uint64_t sub_2482FD194(uint64_t a1)
{
  v2 = v1[36];
  v3 = v1[35];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_2482FD23C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_248382A90();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2482FD2FC, 0, 0);
}

uint64_t sub_2482FD2FC()
{
  v24 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_24814A31C();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_248382A80();
  v6 = sub_248383DC0();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];
  if (v7)
  {
    v11 = v0[2];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136446210;
    type metadata accessor for CGRect(0);
    v15 = MEMORY[0x24C1CB100](v11, v14);
    v17 = sub_24814A378(v15, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_248146000, v5, v6, "Loading default widget state for: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C1CD5F0](v13, -1, -1);
    MEMORY[0x24C1CD5F0](v12, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v18 = sub_2482F4034(v0[2]);
  v20 = v19;
  v21 = swift_task_alloc();
  v0[6] = v21;
  *v21 = v0;
  v21[1] = sub_2482FD4EC;

  return sub_2482FBBAC(v18, v20);
}

uint64_t sub_2482FD4EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x2822009F8](sub_2482FD640, 0, 0);
  }
}

uint64_t sub_2482FD640()
{
  v1 = objc_allocWithZone(MEMORY[0x277CF9040]);
  sub_248383E00();
  v2 = sub_248383B00();

  v3 = [v1 initWithShowWidgets:1 showWallpaper:1 showSuggestions:1 smartRotate:1 widgetStackRows:v2];

  v4 = *(v0 + 8);

  return v4(v3);
}

void sub_2482FD72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_248383E00();
  v13 = swift_arrayDestroy();
  v14 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v5[2];
    v16 = v15 - v7;
    if (!__OFSUB__(v15, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_25:
  v20 = sub_248384360();
  v16 = v20 - v7;
  if (__OFSUB__(v20, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v17 = (v6 + 8 * v8);
  v18 = &v9[v7];
  if (v17 != v18 || v17 >= &v18[8 * v16])
  {
    memmove(v17, v18, 8 * v16);
  }

  if (v10)
  {
    v13 = sub_248384360();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_28;
  }

  v5[2] = v13 + v11;
LABEL_17:
  if (v8 < 1)
  {
    return;
  }

  MEMORY[0x28223BE20](v13);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_29:
    sub_2482FAC28(v4, sub_2482FDB88);
    return;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
  }

  else
  {
    __break(1u);
  }
}

void sub_2482FD8C4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  if (sub_248384360() < v6)
  {
    goto LABEL_16;
  }

LABEL_4:
  v10 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!(v4 >> 62))
  {
    v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFSUB__(v11, v10);
    v13 = v11 - v10;
    if (!v12)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

LABEL_18:
  v11 = sub_248384360();
  v12 = __OFSUB__(v11, v10);
  v13 = v11 - v10;
  if (v12)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v9)
  {
    v14 = sub_248384360();
  }

  else
  {
    v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (v12)
  {
    goto LABEL_21;
  }

  sub_248156154(v15, 1);

  sub_2482FD72C(v7, v6, v11, v4);
}

uint64_t sub_2482FD9D8(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
LABEL_30:
    v11 = result;
    v5 = sub_248384360();
    result = v11;
    v6 = -v5;
    if (!__OFSUB__(0, v5))
    {
      goto LABEL_4;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v3 = a2;
  v4 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_30;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = -v5;
  if (__OFSUB__(0, v5))
  {
    goto LABEL_32;
  }

LABEL_4:
  v7 = -result;
  if (v6 > 0 || v6 <= v7)
  {
    v8 = v5 - result;
    if (__OFADD__(v5, v7))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v5 < v8)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v5 < 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v8 = 0;
    if (!v4)
    {
LABEL_8:
      result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_13;
    }
  }

  result = sub_248384360();
LABEL_13:
  if (result < v8)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v8 < 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v4)
  {
    result = sub_248384360();
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v5)
  {
    goto LABEL_35;
  }

  if (v5 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if ((v3 & 0xC000000000000001) == 0 || v8 == v5)
  {

    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }

    goto LABEL_28;
  }

  if (v8 < v5)
  {
    sub_248383DD0();

    v9 = v8;
    do
    {
      v10 = v9 + 1;
      sub_248384460();
      v9 = v10;
    }

    while (v5 != v10);
    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }

LABEL_28:

    return sub_2483845B0();
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2482FDBB8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93490, &unk_2483A0CF0);
    sub_24822D648(&qword_27EE934B8, &qword_27EE93490, &unk_2483A0CF0, MEMORY[0x277CBCE48]);
    v1 = sub_248382F10();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_2482FDC7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93490, &unk_2483A0CF0);
  swift_allocObject();
  return sub_248382E20();
}

void *sub_2482FDCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_2482FE4F4(a1, a2, a3);

  return v6;
}

void *sub_2482FDD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2482FE4F4(a1, a2, a3);

  return v3;
}

void sub_2482FDD6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91308, &qword_24839E860);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13[-v3];
  v5 = sub_2483820C0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2482FE8EC(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_24822D578(v4, &qword_27EE91308, &qword_24839E860);
    v13[15] = 2;

    sub_248382E10();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);

    v9 = sub_248382080();
    v11 = sub_2482FDF6C(v9, v10);

    if (v11)
    {
      v12 = sub_2483820B0();
    }

    else
    {
      v12 = 0;
    }

    v13[14] = v12 & 1;
    sub_248382E10();

    (*(v6 + 8))(v8, v5);
  }
}

BOOL sub_2482FDF6C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0, &qword_24839D660);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_248381170();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248381140();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_24822D578(v4, &qword_27EE904C0, &qword_24839D660);
    return 0;
  }

  (*(v6 + 32))(v8, v4, v5);
  v10 = sub_248381130();
  v12 = v11;
  v13 = sub_248383960();
  if (!v12)
  {
    (*(v6 + 8))(v8, v5);

    return 0;
  }

  if (v10 != v13 || v12 != v14)
  {
    v16 = sub_248384680();

    (*(v6 + 8))(v8, v5);
    return (v16 & 1) != 0;
  }

  (*(v6 + 8))(v8, v5);
  return 1;
}

uint64_t sub_2482FE1B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93498, &unk_2483A0D00);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  v6[1] = sub_2482FDBB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC80, &qword_24839C930);
  sub_24822D648(&qword_27EE8FC88, &qword_27EE8FC80, &qword_24839C930, MEMORY[0x277CBCD90]);
  sub_2482FE84C();
  sub_248382FD0();

  sub_24822D648(&qword_27EE934B0, &qword_27EE93498, &unk_2483A0D00, MEMORY[0x277CBCBE0]);
  v4 = sub_248382F10();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_2482FE350()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93498, &unk_2483A0D00);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  v6[1] = sub_2482FDBB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC80, &qword_24839C930);
  sub_24822D648(&qword_27EE8FC88, &qword_27EE8FC80, &qword_24839C930, MEMORY[0x277CBCD90]);
  sub_2482FE84C();
  sub_248382FD0();

  sub_24822D648(&qword_27EE934B0, &qword_27EE93498, &unk_2483A0D00, MEMORY[0x277CBCBE0]);
  v4 = sub_248382F10();
  (*(v1 + 8))(v3, v0);
  return v4;
}

void *sub_2482FE4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE912D0, &qword_24839E830);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;

  v3[2] = 0;
  LOBYTE(v15) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93490, &unk_2483A0CF0);
  swift_allocObject();
  v3[3] = sub_248382E20();
  v3[4] = MEMORY[0x277D84FA0];
  v3[5] = a1;

  v15 = sub_248382B00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91300, &unk_2483A0DA0);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91308, &qword_24839E860) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24839C7F0;
  v12 = sub_2483820C0();
  (*(*(v12 - 8) + 56))(v11 + v10, 1, 1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91310, &qword_24839E868);
  sub_24822D648(&qword_27EE91318, &qword_27EE91310, &qword_24839E868, MEMORY[0x277CBCD90]);
  sub_248382F90();

  swift_allocObject();
  swift_weakInit();
  sub_24822D648(&qword_27EE91328, &qword_27EE912D0, &qword_24839E830, MEMORY[0x277CBCB40]);
  sub_248383000();

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  sub_248382DB0();
  swift_endAccess();

  return v3;
}

unint64_t sub_2482FE84C()
{
  result = qword_27EE934A0;
  if (!qword_27EE934A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE934A8, qword_2483A0D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE934A0);
  }

  return result;
}

uint64_t sub_2482FE8EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91308, &qword_24839E860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_2482FE95C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2482FDD6C(a1);
  }

  return result;
}

uint64_t sub_2482FE9DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE934E0, &qword_2483A0DD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24839EA80;
  v1 = objc_opt_self();
  *(inited + 32) = [v1 traitCollectionWithUserInterfaceStyle_];
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000002483B1720;
  *(inited + 56) = [v1 traitCollectionWithUserInterfaceStyle_];
  *(inited + 64) = 0xD000000000000011;
  *(inited + 72) = 0x80000002483B1700;
  *(inited + 80) = [v1 traitCollectionWithUserInterfaceStyle_];
  *(inited + 88) = 0xD000000000000010;
  *(inited + 96) = 0x80000002483B1720;
  v2 = sub_2482FF10C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE934E8, &qword_2483A0DE0);
  result = swift_arrayDestroy();
  qword_27EE99020 = v2;
  return result;
}

uint64_t *sub_2482FEB1C()
{
  if (qword_27EE97870 != -1)
  {
    swift_once();
  }

  return &qword_27EE99020;
}

void sub_2482FEB84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard22DBDashboardPlatterView_materialView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void DBDashboardPlatterView.platterCornerRadius.setter(double a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard22DBDashboardPlatterView_platterCornerRadius;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_24815B6EC();
}

void (*DBDashboardPlatterView.platterCornerRadius.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC9DashBoard22DBDashboardPlatterView_platterCornerRadius;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_2482FED6C;
}

void sub_2482FED6C(uint64_t a1)
{
  v1 = *a1;
  *(*(*a1 + 32) + *(*a1 + 40)) = *(*a1 + 24);
  sub_24815B6EC();

  free(v1);
}

id DBDashboardPlatterView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_2482FEE2C()
{
  *(v0 + OBJC_IVAR____TtC9DashBoard22DBDashboardPlatterView_materialView) = 0;
  sub_248384580();
  __break(1u);
}

id DBDashboardPlatterView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DBDashboardPlatterView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBDashboardPlatterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2482FEFF4(uint64_t a1)
{
  v2 = sub_248384020();

  return sub_2482FF038(a1, v2);
}

unint64_t sub_2482FF038(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_24814FB28(0, &qword_27EE8FD88, 0x277D75C80);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_248384030();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2482FF10C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE934F0, &qword_2483A0DE8);
    v3 = sub_2483845F0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_2482FEFF4(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2482FF20C(void *a1)
{
  swift_allocObject();
  v2 = sub_2482FF314(a1);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_2482FF258(void *a1)
{
  v1 = sub_2482FF314(a1);
  swift_unknownObjectRelease();
  return v1;
}

void *sub_2482FF28C()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_2482FF2DC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2482FF314(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = [a1 environmentConfiguration];
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277D663B0]) init];
  v5 = [v4 iconAccessoryVisualConfiguration];
  [v5 setSize_];

  v6 = [v4 iconAccessoryVisualConfiguration];
  [v6 setOffset_];

  if (v3)
  {
    [v4 setNumberOfPortraitRows_];
    [v4 setNumberOfPortraitColumns_];
    [v3 pointScale];
  }

  else
  {
    [v4 setNumberOfPortraitRows_];
    [v4 setNumberOfPortraitColumns_];
    v7 = [objc_opt_self() mainScreen];
    [v7 scale];
  }

  type metadata accessor for DBIconImage();
  [v4 setIconImageInfo_];
  v8 = [objc_allocWithZone(MEMORY[0x277D663A0]) initWithLayoutConfiguration_];

  *(v2 + 16) = v8;
  return v2;
}

char *DBIconLayoutVehicleDataProvider.init(vehicleID:iconImageCache:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 allApplications];

  sub_24814FB28(0, &qword_27EE91E40, off_278EFED38);
  v10 = sub_248383B10();

  *&v4[OBJC_IVAR____TtC9DashBoard31DBIconLayoutVehicleDataProvider_allApps] = v10;
  v11 = &v4[OBJC_IVAR____TtC9DashBoard31DBIconLayoutVehicleDataProvider_vehicleID];
  *v11 = a1;
  *(v11 + 1) = a2;
  *&v4[OBJC_IVAR____TtC9DashBoard31DBIconLayoutVehicleDataProvider_iconImageCache] = a3;
  type metadata accessor for DBIconManager();

  v12 = a3;
  *&v4[OBJC_IVAR____TtC9DashBoard31DBIconLayoutVehicleDataProvider_iconManager] = DBIconManager.__allocating_init(environment:)(0);
  v13 = objc_allocWithZone(DBIconModelStore);
  v14 = sub_248383930();

  v15 = [v13 initWithVehicleId_];

  type metadata accessor for DBIconModel();
  v16 = v15;
  *&v4[OBJC_IVAR____TtC9DashBoard31DBIconLayoutVehicleDataProvider_iconModel] = DBIconModel.__allocating_init(store:carApplicationDataSource:)(v16, 0);
  v32.receiver = v4;
  v32.super_class = type metadata accessor for DBIconLayoutVehicleDataProvider();
  v17 = objc_msgSendSuper2(&v32, sel_init);
  v18 = OBJC_IVAR____TtC9DashBoard31DBIconLayoutVehicleDataProvider_iconManager;
  v19 = *&v17[OBJC_IVAR____TtC9DashBoard31DBIconLayoutVehicleDataProvider_iconManager];
  v20 = v17;
  [v19 setDelegate_];
  v21 = OBJC_IVAR____TtC9DashBoard31DBIconLayoutVehicleDataProvider_iconModel;
  v22 = *&v20[OBJC_IVAR____TtC9DashBoard31DBIconLayoutVehicleDataProvider_iconModel];
  v23 = MEMORY[0x277D85000];
  v24 = *((*MEMORY[0x277D85000] & *v22) + 0x100);
  v25 = v22;
  v24(v17);

  v26 = *&v20[v21];
  type metadata accessor for DBIconImage();
  v27 = objc_opt_self();
  v28 = v26;
  v29 = [v27 mainScreen];
  [v29 scale];

  v30 = static DBIconImage.iconImageInfo(for:)();
  (*((*v23 & *v28) + 0xB8))(v30);

  [*&v20[v21] layout];
  [*&v20[v21] reloadIcons];
  [*&v20[v21] layout];
  [*&v17[v18] setIconModel_];

  return v20;
}

id DBIconLayoutVehicleDataProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBIconLayoutVehicleDataProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBIconLayoutVehicleDataProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DBIconLayoutVehicleDataProvider.allApplicationIcons.getter()
{
  v5 = MEMORY[0x277D84F90];

  sub_2482FFC60(v1, &v5);

  type metadata accessor for DBNowPlayingIcon();
  DBNowPlayingIcon.__allocating_init()();
  MEMORY[0x24C1CB0D0]();
  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_248383B50();
  }

  v2 = sub_248383B70();
  v3 = v5;
  if ((*((*MEMORY[0x277D85000] & **(v0 + OBJC_IVAR____TtC9DashBoard31DBIconLayoutVehicleDataProvider_iconModel)) + 0x210))(v2))
  {
    type metadata accessor for DBOEMIcon();
    DBOEMIcon.__allocating_init(sessionConfiguration:)(0);
    MEMORY[0x24C1CB0D0]();
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_248383B50();
    }

    sub_248383B70();
    return v5;
  }

  return v3;
}

void sub_2482FFC60(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_248384360())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1CBA50](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v9 = objc_opt_self();
      v10 = v7;
      v11 = [v9 sharedInstance];
      v12 = [v11 calendarApplication];

      if (!v12)
      {

LABEL_12:
        type metadata accessor for DBLeafIcon();
        v14 = DBLeafIcon.__allocating_init(with:drawBorder:)(v10);
        goto LABEL_13;
      }

      sub_24814FB28(0, &qword_27EE91E40, off_278EFED38);
      v13 = sub_248384030();

      if ((v13 & 1) == 0)
      {
        goto LABEL_12;
      }

      type metadata accessor for DBCalendarLeafIcon();
      v14 = DBCalendarLeafIcon.__allocating_init(with:drawBorder:)(v10);
LABEL_13:
      v15 = v14;
      MEMORY[0x24C1CB0D0]();
      if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_248383B50();
      }

      sub_248383B70();

      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }
}

void DBIconLayoutVehicleDataProvider.getIconState(completion:)(void (*a1)(id, void))
{
  v3 = (*((*MEMORY[0x277D85000] & **(v1 + OBJC_IVAR____TtC9DashBoard31DBIconLayoutVehicleDataProvider_iconModel)) + 0x228))();
  a1(v3, 0);
}

void DBIconLayoutVehicleDataProvider.setIconState(_:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9DashBoard31DBIconLayoutVehicleDataProvider_iconModel);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93580, &qword_2483A0E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24839CCA0;
  sub_248383960();
  sub_2483843E0();
  v5 = [a1 iconOrder];
  v6 = sub_248383B10();

  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93588, &qword_2483A0E38);
  *(inited + 72) = v6;
  sub_248383960();
  sub_2483843E0();
  v7 = [a1 hiddenIcons];
  sub_24814FB28(0, &unk_27EE93590, 0x277CF8FF8);
  v8 = sub_248383B10();

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = inited;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_13:

    v11 = MEMORY[0x277D84F90];
LABEL_14:
    *(v22 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93AB0, &unk_2483A0E40);
    *(v22 + 144) = v11;
    v21 = sub_2482653C4(v22);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE935A0, &unk_24839D9A0);
    swift_arrayDestroy();
    (*((*MEMORY[0x277D85000] & *v3) + 0x240))(v21);

    return;
  }

  v9 = sub_248384360();
  v22 = inited;
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_3:
  v23 = MEMORY[0x277D84F90];
  sub_24822C8F0(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = v23;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C1CBA50](v10, v8);
      }

      else
      {
        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = [v13 bundleIdentifier];
      v15 = sub_248383960();
      v17 = v16;

      v19 = *(v23 + 16);
      v18 = *(v23 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_24822C8F0((v18 > 1), v19 + 1, 1);
      }

      ++v10;
      *(v23 + 16) = v19 + 1;
      v20 = v23 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
    }

    while (v9 != v10);

    goto LABEL_14;
  }

  __break(1u);
}

void DBIconLayoutVehicleDataProvider.getApplicationIconInformation(forBundleID:drawBorder:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(id, void), uint64_t a5)
{
  v6 = v5;
  v51[1] = a5;
  v52 = a4;
  v9 = sub_248382A90();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24827C6F0();
  (*(v10 + 16))(v12, v13, v9);

  v14 = sub_248382A80();
  v15 = sub_248383D80();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v51[0] = v6;
    v18 = v17;
    v53 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_24814A378(a1, a2, &v53);
    _os_log_impl(&dword_248146000, v14, v15, "ILVDP: Application icon info requested for %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v6 = v51[0];
    MEMORY[0x24C1CD5F0](v18, -1, -1);
    MEMORY[0x24C1CD5F0](v16, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  if (sub_248383960() == a1 && v19 == a2)
  {

    goto LABEL_10;
  }

  v21 = sub_248384680();

  if (v21)
  {
LABEL_10:
    v22 = [objc_opt_self() sharedInstance];
    v23 = [v22 calendarApplication];

    if (v23)
    {
      type metadata accessor for DBCalendarLeafIcon();
      v24 = v23;
      v25 = DBCalendarLeafIcon.__allocating_init(with:drawBorder:)(v24);
      type metadata accessor for DBIconImage();
      v26 = [objc_opt_self() mainScreen];
      [v26 scale];

      v27 = [v25 iconImageWithInfo:0 traitCollection:1 options:static DBIconImage.iconImageInfo(for:)()];
      if (v27)
      {
        goto LABEL_18;
      }
    }
  }

  v28 = *(v6 + OBJC_IVAR____TtC9DashBoard31DBIconLayoutVehicleDataProvider_iconImageCache);
  v29 = sub_248383930();
  v30 = sub_248383930();
  v27 = [v28 iconImageForBundleIdentifier:v29 inVehicle:v30];

  if (v27)
  {
    goto LABEL_18;
  }

  if (sub_248383960() == a1 && v31 == a2)
  {
    goto LABEL_15;
  }

  v32 = sub_248384680();

  if (v32)
  {
    goto LABEL_17;
  }

  if (sub_248383960() == a1 && v47 == a2)
  {
LABEL_15:

LABEL_17:
    v27 = 0;
    goto LABEL_18;
  }

  v48 = sub_248384680();

  if (v48)
  {
    goto LABEL_17;
  }

  v49 = sub_248383930();
  type metadata accessor for DBIconImage();
  v50 = [objc_opt_self() mainScreen];
  [v50 scale];

  static DBIconImage.iconImageInfo(for:)();
  v27 = SBHGetApplicationIconImage();

LABEL_18:
  sub_248300A84(a1, a2);
  v34 = v33;
  v35 = objc_allocWithZone(MEMORY[0x277CF8FF8]);
  v36 = sub_248383930();
  v37 = [v35 initWithBundleIdentifier_];

  if (v27)
  {
    v38 = v27;
    v39 = UIImagePNGRepresentation(v38);
    if (v39)
    {
      v40 = v39;
      v41 = sub_2483811B0();
      v43 = v42;

      v44 = sub_2483811A0();
      sub_24823BD70(v41, v43);
    }

    else
    {
      v44 = 0;
    }

    [v37 setIconImageData_];

    [(UIImage *)v38 scale];
    [v37 setIconImageScale_];
  }

  if (v34)
  {
    v45 = sub_248383930();
  }

  else
  {
    v45 = 0;
  }

  [v37 setLocalizedDisplayName_];

  v46 = v37;
  v52(v37, 0);
}

uint64_t sub_248300A84(uint64_t a1, unint64_t a2)
{
  v4 = sub_248382A90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_248383960() == a1 && v8 == a2)
  {

    goto LABEL_23;
  }

  v10 = sub_248384680();

  if (v10)
  {
    goto LABEL_23;
  }

  if (sub_248383960() == a1 && v11 == a2)
  {
    goto LABEL_22;
  }

  v13 = sub_248384680();

  if (v13)
  {
LABEL_23:
    v31[0] = 0;
    v31[1] = 0xE000000000000000;
    sub_248384440();

    strcpy(v31, "LAUNCHER_NAME-");
    HIBYTE(v31[1]) = -18;
    MEMORY[0x24C1CAFD0](a1, a2);
    sub_24814FB28(0, &qword_27EE8FD80, off_278EFF1E8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v26 = [objc_opt_self() bundleForClass_];
    v24 = sub_2483810A0();

LABEL_24:

    return v24;
  }

  if (sub_248383960() == a1 && v14 == a2)
  {
LABEL_22:

    goto LABEL_23;
  }

  v16 = sub_248384680();

  if (v16)
  {
    goto LABEL_23;
  }

  v17 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v18 = sub_248301504(a1, a2, 0);
  if (v18)
  {
    v28 = v18;
    v29 = [v18 db_localizedCarName];
    if (!v29)
    {
      v29 = [v28 localizedName];
    }

    v26 = v29;
    v24 = sub_248383960();

    goto LABEL_24;
  }

  v19 = sub_24827C6F0();
  (*(v5 + 16))(v7, v19, v4);

  v20 = sub_248382A80();
  v21 = sub_248383D80();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v31[0] = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_24814A378(a1, a2, v31);
    _os_log_impl(&dword_248146000, v20, v21, "ILVDP: Unable to fetch displayName for %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x24C1CD5F0](v23, -1, -1);
    MEMORY[0x24C1CD5F0](v22, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return 0;
}

unint64_t static DBIconLayoutVehicleDataProvider.defaultIconState.getter()
{
  v25 = sub_248382A90();
  v0 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_248381170();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_248383930();
  v13 = sub_248383930();
  v14 = [v11 URLForResource:v12 withExtension:v13];

  if (!v14 || (sub_248381120(), v14, (*(v4 + 16))(v6, v9, v3), v15 = objc_allocWithZone(MEMORY[0x277CBEAC0]), v23 = sub_2483015E0(v6), (*(v4 + 8))(v9, v3), v26 = 0, sub_248383890(), v23, (v21 = v26) == 0))
  {
    v16 = sub_24827C6F0();
    v17 = v25;
    (*(v0 + 16))(v2, v16, v25);
    v18 = sub_248382A80();
    v19 = sub_248383DA0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_248146000, v18, v19, "ILVDP: Unable to get default icon state.", v20, 2u);
      MEMORY[0x24C1CD5F0](v20, -1, -1);
    }

    (*(v0 + 8))(v2, v17);
    v21 = sub_2482653C4(MEMORY[0x277D84F90]);
  }

  return v21;
}

id sub_248301504(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_248383930();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_2483810C0();

    swift_willThrow();
  }

  return v6;
}

id sub_2483015E0(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2483810F0();
  v13[0] = 0;
  v5 = [v2 initWithContentsOfURL:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_248381170();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_2483810C0();

    swift_willThrow();
    v11 = sub_248381170();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

void sub_24830172C(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v52 = a5;
  v51[3] = a3;
  v8 = sub_248382A90();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24827C6F0();
  (*(v9 + 16))(v11, v12, v8);

  v13 = sub_248382A80();
  v14 = sub_248383D80();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v53 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_24814A378(a1, a2, &v53);
    _os_log_impl(&dword_248146000, v13, v14, "ILVDP: Application icon info requested for %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C1CD5F0](v16, -1, -1);
    MEMORY[0x24C1CD5F0](v15, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  if (sub_248383960() == a1 && v17 == a2)
  {

    goto LABEL_10;
  }

  v19 = sub_248384680();

  if (v19)
  {
LABEL_10:
    v20 = [objc_opt_self() sharedInstance];
    v21 = [v20 calendarApplication];

    if (v21)
    {
      type metadata accessor for DBCalendarLeafIcon();
      v22 = v21;
      v23 = DBCalendarLeafIcon.__allocating_init(with:drawBorder:)(v22);
      type metadata accessor for DBIconImage();
      v24 = [objc_opt_self() mainScreen];
      [v24 scale];

      v25 = [v23 iconImageWithInfo:0 traitCollection:1 options:static DBIconImage.iconImageInfo(for:)()];
      if (v25)
      {
        goto LABEL_18;
      }
    }
  }

  v26 = *(a4 + OBJC_IVAR____TtC9DashBoard31DBIconLayoutVehicleDataProvider_iconImageCache);
  v27 = sub_248383930();
  v28 = sub_248383930();
  v25 = [v26 iconImageForBundleIdentifier:v27 inVehicle:v28];

  if (v25)
  {
    goto LABEL_18;
  }

  if (sub_248383960() == a1 && v29 == a2)
  {
    goto LABEL_15;
  }

  v30 = sub_248384680();

  if (v30)
  {
    goto LABEL_17;
  }

  if (sub_248383960() == a1 && v47 == a2)
  {
LABEL_15:

LABEL_17:
    v25 = 0;
    goto LABEL_18;
  }

  v48 = sub_248384680();

  if (v48)
  {
    goto LABEL_17;
  }

  v49 = sub_248383930();
  type metadata accessor for DBIconImage();
  v50 = [objc_opt_self() mainScreen];
  [v50 scale];

  static DBIconImage.iconImageInfo(for:)();
  v25 = SBHGetApplicationIconImage();

LABEL_18:
  sub_248300A84(a1, a2);
  v32 = v31;
  v33 = objc_allocWithZone(MEMORY[0x277CF8FF8]);
  v34 = sub_248383930();
  v35 = [v33 initWithBundleIdentifier_];

  if (v25)
  {
    v36 = v25;
    v37 = UIImagePNGRepresentation(v36);
    if (v37)
    {
      v38 = v37;
      v39 = sub_2483811B0();
      v41 = v40;

      v42 = sub_2483811A0();
      sub_24823BD70(v39, v41);
    }

    else
    {
      v42 = 0;
    }

    [v35 setIconImageData_];

    [(UIImage *)v36 scale];
    [v35 setIconImageScale_];
  }

  if (v32)
  {
    v43 = sub_248383930();
  }

  else
  {
    v43 = 0;
  }

  [v35 setLocalizedDisplayName_];

  v44 = v52;
  v45 = *(v52 + 16);
  v46 = v35;
  v45(v44, v46, 0);
}

id DBFromStackedAppAnimationSettings.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBFromStackedAppAnimationSettings.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBFromStackedAppAnimationSettings();
  return objc_msgSendSuper2(&v2, sel_init);
}

id static DBFromStackedAppAnimation.animation(with:)(uint64_t (*a1)(void))
{
  v2 = [objc_allocWithZone(type metadata accessor for DBFromStackedAppAnimationSettings()) init];
  a1();
  v3 = objc_allocWithZone(type metadata accessor for DBFromStackedAppAnimation());
  return DBDashboardAnimation.init(settings:)(v2);
}

void DBFromStackedAppAnimation.startAnimation(completion:)(void (*a1)(void), uint64_t a2)
{
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v2) + 0x88))();
  if (v6)
  {
    v7 = v6;
    v8 = (*((*v5 & *v2) + 0xA0))();
    if (v8)
    {
      v9 = v8;
      v10 = (*((*v5 & *v2) + 0x100))();
      if (v10)
      {
        v11 = v10;
        [v7 addSubview_];
        v19 = objc_opt_self();
        v12 = swift_allocObject();
        v12[2] = v11;
        v12[3] = v2;
        v12[4] = v7;
        v24 = sub_248302288;
        v25 = v12;
        aBlock = MEMORY[0x277D85DD0];
        v21 = 1107296256;
        v22 = sub_24814C01C;
        v23 = &block_descriptor_19;
        v13 = _Block_copy(&aBlock);
        v14 = v11;
        v15 = v2;
        v16 = v7;

        v17 = swift_allocObject();
        *(v17 + 16) = a1;
        *(v17 + 24) = a2;
        v24 = sub_248260F70;
        v25 = v17;
        aBlock = MEMORY[0x277D85DD0];
        v21 = 1107296256;
        v22 = sub_24824BBE0;
        v23 = &block_descriptor_6_2;
        v18 = _Block_copy(&aBlock);
        sub_248167910(a1, a2);

        [v19 animateWithDuration:v13 animations:v18 completion:0.5];
        _Block_release(v18);
        _Block_release(v13);

        return;
      }

      v7 = v9;
    }
  }

  if (a1)
  {
    a1();
  }
}

id sub_248302288()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x118))();
  [v1 setBackgroundColor_];

  return [v2 setAlpha_];
}

id sub_248302370(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id DBInstrumentClusterWindow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBInstrumentClusterWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_248302518(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_248302584(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_248234424;
}

uint64_t sub_248302624()
{
  v1 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_isSliding;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_248302668(char a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_isSliding;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_isSliding;
  v5 = swift_beginAccess();
  v6 = *(v1 + v4);
  v7 = MEMORY[0x277D85000];
  if (v6 == 1)
  {
    v8 = (*((*MEMORY[0x277D85000] & *v1) + 0x110))(v5);
    v9 = (*((*v7 & *v1) + 0xE0))();
    v12 = v11;
    if (v8)
    {
      if (!v9)
      {
        return result;
      }

      ObjectType = swift_getObjectType();
      (*(v12 + 32))(ObjectType, v12);
    }

    else
    {
      if (!v9)
      {
        return result;
      }

      v17 = swift_getObjectType();
      (*(v12 + 16))(v17, v12);
    }
  }

  else
  {
    if (!(*((*MEMORY[0x277D85000] & *v1) + 0xE0))(v5))
    {
      return result;
    }

    v15 = v14;
    v16 = swift_getObjectType();
    (*(v15 + 24))(v16, v15);
  }

  swift_unknownObjectRelease();
  return result;
}

uint64_t (*sub_2483027F4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_isSliding;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_24830287C;
}

void sub_24830287C(void *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = MEMORY[0x277D85000];
    if (*(v5 + v3[4]) == 1)
    {
      v7 = (*((*MEMORY[0x277D85000] & *v5) + 0x110))(v4);
      v8 = (*((*v6 & *v5) + 0xE0))();
      v10 = v9;
      if (v7)
      {
        if (!v8)
        {
          goto LABEL_11;
        }

        ObjectType = swift_getObjectType();
        v12 = v10 + 4;
      }

      else
      {
        if (!v8)
        {
          goto LABEL_11;
        }

        ObjectType = swift_getObjectType();
        v12 = v10 + 2;
      }
    }

    else
    {
      if (!(*((*MEMORY[0x277D85000] & *v5) + 0xE0))(v4))
      {
        goto LABEL_11;
      }

      v10 = v13;
      ObjectType = swift_getObjectType();
      v12 = v10 + 3;
    }

    (*v12)(ObjectType, v10);
    swift_unknownObjectRelease();
  }

LABEL_11:

  free(v3);
}

uint64_t *sub_2483029D8()
{
  if (qword_27EE97878 != -1)
  {
    swift_once();
  }

  return &qword_27EE99028;
}

uint64_t sub_248302A28()
{
  v1 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_isMuted;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_248302A6C(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_isMuted;
  result = swift_beginAccess();
  if (v1[v4] != v3)
  {
    v6 = *&v1[OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_symbolView];
    if (a1)
    {
      if (qword_27EE97878 != -1)
      {
        v9 = *&v1[OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_symbolView];
        swift_once();
        v6 = v9;
      }

      v7 = qword_27EE99028;
      [v6 setImage_];
      [*&v1[OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_symbolMaskView] setImage_];
    }

    else
    {
      v8 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_symbolImage;
      [v6 setImage_];
      [*&v1[OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_symbolMaskView] setImage_];
    }

    result = [v1 setInoperative_];
  }

  v1[v4] = v3;
  return result;
}

void (*sub_248302B94(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_isMuted;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_248302C28;
}

void sub_248302C28(uint64_t a1)
{
  v1 = *a1;
  sub_248302A6C(*(*a1 + 32));

  free(v1);
}

id sub_248302C68()
{
  v1 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider____lazy_storage___maskWidthConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC9DashBoard14DBVolumeSlider____lazy_storage___maskWidthConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9DashBoard14DBVolumeSlider____lazy_storage___maskWidthConstraint);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_progressMaskView) widthAnchor];
    v5 = [v4 constraintEqualToConstant_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_248302D10()
{
  v1 = v0;
  v2 = [v0 presentationValue];
  v4 = v3;
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v0) + 0x170);
  v7 = (v6)(v2);
  v8 = *((*v5 & *v0) + 0x158);
  v9 = v7 - v8();
  if ((v9 & 0xFFFFFF00) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = roundf((v4 * v9) + v8());
  v11 = v8();
  v12 = v6();
  if (v10 < v12)
  {
    v12 = v10;
  }

  if (v12 < v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = sub_248383DC0();
  sub_24814FB28(0, &qword_27EE90950, 0x277D86200);
  v15 = sub_2483841B0();
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    *v16 = 134349312;
    *(v16 + 4) = v13;
    *(v16 + 12) = 2050;
    [v1 presentationValue];
    *(v16 + 14) = v17;
    _os_log_impl(&dword_248146000, v15, v14, "Audio notification get progress value: %{public}f, with presentationValue: %{public}f", v16, 0x16u);
    MEMORY[0x24C1CD5F0](v16, -1, -1);
  }

  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_14;
  }

  if (v13 <= -1.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v13 >= 256.0)
  {
LABEL_16:
    __break(1u);
  }
}

id sub_248302F54(unsigned __int8 a1)
{
  v3 = a1;
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x158);
  v6 = v5();
  v7 = *((*v4 & *v1) + 0x170);
  v8 = v7();
  if (v8 >= v3)
  {
    v8 = v3;
  }

  if (v8 > v6)
  {
    v6 = v8;
  }

  v9 = v7();
  result = (v5)();
  if (v9 < result)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v9 != result)
  {
    v15 = 0.0;
    if ((*((*v4 & *v1) + 0x110))())
    {
LABEL_13:
      v18 = sub_248383DC0();
      sub_24814FB28(0, &qword_27EE90950, 0x277D86200);
      v13 = sub_2483841B0();
      if (!os_log_type_enabled(v13, v18))
      {
        goto LABEL_18;
      }

      v23 = a1;
      v19 = v6;
      v20 = swift_slowAlloc();
      *v20 = 134350080;
      *(v20 + 4) = v15;
      *(v20 + 12) = 2050;
      result = (v5)();
      if (((v19 - result) & 0xFFFFFF00) == 0)
      {
        *(v20 + 14) = (v19 - result);
        *(v20 + 22) = 2050;
        v21 = v7();
        result = (v5)();
        if (((v21 - result) & 0xFFFFFF00) == 0)
        {
          *(v20 + 24) = (v21 - result);
          *(v20 + 32) = 258;
          *(v20 + 34) = v23;
          *(v20 + 35) = 258;
          *(v20 + 37) = v19;
          _os_log_impl(&dword_248146000, v13, v18, "Audio notification new progress value: %{public}f with range progression: %{public}f, interval: %{public}f, original value: %{public}hhu, clamped value: %{public}hhu", v20, 0x26u);
          MEMORY[0x24C1CD5F0](v20, -1, -1);
          goto LABEL_18;
        }

LABEL_25:
        __break(1u);
        return result;
      }

      goto LABEL_23;
    }

    result = (v5)();
    v16 = v6 - result;
    if ((v16 & 0xFFFFFF00) == 0)
    {
      v17 = v7();
      result = (v5)();
      if (((v17 - result) & 0xFFFFFF00) != 0)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v15 = v16 / (v17 - result);
      goto LABEL_13;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = sub_248383DC0();
  sub_24814FB28(0, &qword_27EE90950, 0x277D86200);
  v12 = v1;
  v13 = sub_2483841B0();
  if (os_log_type_enabled(v13, v11))
  {
    v14 = swift_slowAlloc();
    *v14 = 16908800;
    *(v14 + 4) = v5();
    *(v14 + 5) = 258;
    *(v14 + 7) = v7();

    _os_log_impl(&dword_248146000, v13, v11, "Audio notification progress setter: interval is zero, min: %{public}hhu, max: %{public}hhu", v14, 8u);
    MEMORY[0x24C1CD5F0](v14, -1, -1);
    v15 = 0.0;
  }

  else
  {

    v15 = 0.0;
    v13 = v12;
  }

LABEL_18:

  *&v22 = v15;

  return [v1 setValue:0 animated:v22];
}

id (*sub_248303340(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  sub_248302D10();
  *(a1 + 8) = v3;
  return sub_248303388;
}

void sub_2483033B0(uint64_t a1, float a2)
{
  v3 = a1;
  v26.receiver = v2;
  v26.super_class = type metadata accessor for DBVolumeSlider();
  *&v5 = a2;
  objc_msgSendSuper2(&v26, sel_setValue_animated_, v3 & 1, v5);
  v6 = sub_248383DC0();
  sub_24814FB28(0, &qword_27EE90950, 0x277D86200);
  v7 = sub_2483841B0();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *(v8 + 12) = 2082;
    v10 = *MEMORY[0x277D85000] & *v2;
    v25 = v9;
    *v8 = 134349314;
    *(v8 + 4) = a2;
    v11 = (*(v10 + 496))();
    [v11 frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v27.origin.x = v13;
    v27.origin.y = v15;
    v27.size.width = v17;
    v27.size.height = v19;
    v20 = NSStringFromCGRect(v27);
    v21 = sub_248383960();
    v23 = v22;

    v24 = sub_24814A378(v21, v23, &v25);

    *(v8 + 14) = v24;
    _os_log_impl(&dword_248146000, v7, v6, "Audio notification setValue: %{public}f, fillView %{public}s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C1CD5F0](v9, -1, -1);
    MEMORY[0x24C1CD5F0](v8, -1, -1);
  }
}

uint64_t sub_248303614()
{
  v1 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_minValue;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_248303664(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_minValue;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_248307370;
}

uint64_t sub_248303700()
{
  v1 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_maxValue;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_248303750(unsigned __int8 a1, uint64_t *a2)
{
  v4 = *a2;
  result = swift_beginAccess();
  v6 = v2[v4];
  v2[v4] = a1;
  if (v6 != a1)
  {
    return [v2 setNeedsDisplay];
  }

  return result;
}

uint64_t (*sub_2483037B8(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_maxValue;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_24830384C;
}

void sub_248303850(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = v3[v4];
  v3[v4] = v2;
  if (v2 != v5)
  {
    [v1[3] setNeedsDisplay];
  }

  free(v1);
}

double sub_2483038B0()
{
  v1 = (v0 + OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_text);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v0 + OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_label);

  v5 = [v4 text];
  if (!v5)
  {
    if (!v2)
    {
      return result;
    }

    goto LABEL_14;
  }

  v7 = v5;
  v8 = sub_248383960();
  v10 = v9;

  if (!v2)
  {
    if (!v10)
    {
      return result;
    }

LABEL_14:

    if (v1[1])
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!v10)
  {
    goto LABEL_14;
  }

  if (v3 == v8 && v2 == v10)
  {

    return result;
  }

  v12 = sub_248384680();

  if ((v12 & 1) == 0)
  {
    if (v1[1])
    {
LABEL_10:

      v13 = sub_248383930();

LABEL_16:
      [v4 setText_];

      v14 = *(v0 + OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_labelMaskView);
      if (v1[1])
      {

        v15 = sub_248383930();
      }

      else
      {
        v15 = 0;
      }

      [v14 setText_];

      return result;
    }

LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  return result;
}

uint64_t (*sub_248303A98(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_248303AFC;
}

id sub_248303B14()
{
  v1 = v0 + OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_symbolName;
  result = swift_beginAccess();
  if (*(v1 + 1))
  {

    v3 = sub_248383930();

    v4 = [objc_opt_self() _systemImageNamed_];

    if (v4)
    {
      v5 = [objc_opt_self() configurationWithTextStyle_];
      v6 = [v4 imageWithSymbolConfiguration_];
    }

    else
    {
      v6 = 0;
    }

    v7 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_symbolImage;
    v8 = *(v0 + OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_symbolImage);
    *(v0 + OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_symbolImage) = v6;

    v9 = (*((*MEMORY[0x277D85000] & *v0) + 0x110))();
    v10 = *(v0 + OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_symbolView);
    if (v9)
    {
      if (qword_27EE97878 != -1)
      {
        v12 = *(v0 + OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_symbolView);
        swift_once();
        v10 = v12;
      }

      v11 = qword_27EE99028;
      [v10 setImage_];
      return [*(v0 + OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_symbolMaskView) setImage_];
    }

    else
    {
      [v10 setImage_];
      return [*(v0 + OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_symbolMaskView) setImage_];
    }
  }

  return result;
}

uint64_t sub_248303D30(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_248303DA4(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  *v8 = a1;
  v8[1] = a2;

  return a4(v9);
}

uint64_t (*sub_248303E14(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_248303E78;
}

uint64_t sub_248303E90(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_248303ED4()
{
  v1 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_isDisabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_248303F18(char a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_isDisabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = [v1 setEnabled_];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x1F0))(v4);
  v6 = [v1 isEnabled];
  v7 = 0.3;
  if (v6)
  {
    v7 = 1.0;
  }

  [v5 setAlpha_];
}

uint64_t (*sub_248304008(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_isDisabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_248304090;
}

void sub_248304090(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = [v4 setEnabled_];
    v6 = (*((*MEMORY[0x277D85000] & *v4) + 0x1F0))(v5);
    v7 = [v4 isEnabled];
    v8 = 0.3;
    if (v7)
    {
      v8 = 1.0;
    }

    [v6 setAlpha_];
  }

  free(v3);
}

id sub_248304184()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  return v0;
}

id sub_248304210()
{
  v0 = sub_248306FF8();
  v1 = [v0 layer];
  v2 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  [v1 setCompositingFilter_];

  v3 = [v0 layer];
  LODWORD(v4) = 0.75;
  [v3 setOpacity_];

  v5 = [objc_opt_self() blackColor];
  [v0 setTextColor_];

  return v0;
}

id sub_24830431C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v0 setContentMode_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [v0 layer];
  [v1 setDoubleSided_];

  v2 = [v0 layer];
  [v2 setSortsSublayers_];

  v3 = [objc_opt_self() blackColor];
  [v0 setTintColor_];

  v4 = [v0 layer];
  v5 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  [v4 setCompositingFilter_];

  v6 = [v0 layer];
  LODWORD(v7) = 0.75;
  [v6 setOpacity_];

  return v0;
}

id sub_2483044BC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v0 setContentMode_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [v0 layer];
  [v1 setDoubleSided_];

  v2 = [v0 layer];
  [v2 setSortsSublayers_];

  v3 = [objc_opt_self() whiteColor];
  [v0 setTintColor_];

  v4 = [v0 layer];
  v5 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  [v4 setCompositingFilter_];

  v6 = [v0 layer];
  LODWORD(v7) = 1061997773;
  [v6 setOpacity_];

  v8 = [v0 layer];
  [v8 setAllowsEdgeAntialiasing_];

  v9 = [v0 layer];
  [v9 setAllowsGroupOpacity_];

  v10 = [v0 layer];
  [v10 setAllowsGroupBlending_];

  return v0;
}

id sub_2483046E8()
{
  v0 = sub_248306FF8();
  v1 = [v0 layer];
  v2 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  [v1 setCompositingFilter_];

  v3 = [v0 layer];
  LODWORD(v4) = 1061997773;
  [v3 setOpacity_];

  v5 = [objc_opt_self() whiteColor];
  [v0 setTextColor_];

  v6 = [v0 layer];
  [v6 setAllowsEdgeAntialiasing_];

  v7 = [v0 layer];
  [v7 setAllowsGroupOpacity_];

  v8 = [v0 layer];
  [v8 setAllowsGroupBlending_];

  return v0;
}

id sub_248304880()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9E08]) init];
  [v0 setDoubleSided_];
  [v0 setSortsSublayers_];
  [v0 setEnabled_];
  v1 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v2 = sub_248383CC0();
  v3 = sub_248383930();
  [v1 setValue:v2 forKey:v3];

  v4 = sub_248383B80();
  v5 = sub_248383930();
  [v1 setValue:v4 forKey:v5];

  v6 = sub_248383B80();
  v7 = sub_248383930();
  [v1 setValue:v6 forKey:v7];

  v8 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v9 = sub_248381440();
  v10 = sub_248383930();
  [v8 setValue:v9 forKey:v10];

  v11 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v12 = sub_248381440();
  v13 = sub_248383930();
  [v11 setValue:v12 forKey:v13];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92CF0, &qword_2483A01A0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24839EA80;
  v15 = sub_24814FB28(0, &qword_27EE90600, 0x277CD9EA0);
  *(v14 + 32) = v1;
  *(v14 + 56) = v15;
  *(v14 + 64) = v8;
  *(v14 + 120) = v15;
  *(v14 + 88) = v15;
  *(v14 + 96) = v11;
  v16 = v1;
  v17 = v8;
  v18 = v11;
  v19 = sub_248383B00();

  [v0 setFilters_];

  return v0;
}

id sub_248304BCC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9E08]) init];
  [v0 setDoubleSided_];
  [v0 setSortsSublayers_];
  [v0 setEnabled_];
  [v0 setAllowsInPlaceFiltering_];
  v1 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.1333 green:0.1333 blue:0.1451 alpha:0.7];
  v2 = [v1 CGColor];

  [v0 setBackgroundColor_];
  return v0;
}

id sub_248304CD8()
{
  result = [objc_opt_self() _lightFillMaterialView];
  if (result)
  {
    v1 = result;
    [result setTranslatesAutoresizingMaskIntoConstraints_];
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_248304D34()
{
  v1 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_fillView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_248304D88(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_fillView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_248304E40()
{
  *&v0[OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_isSliding] = 0;
  v0[OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_isMuted] = 0;
  *&v0[OBJC_IVAR____TtC9DashBoard14DBVolumeSlider____lazy_storage___maskWidthConstraint] = 0;
  v0[OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_minValue] = 0;
  v0[OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_maxValue] = 100;
  v1 = &v0[OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_text];
  *v1 = 0;
  v1[1] = 0;
  *&v0[OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_symbolImage] = 0;
  v2 = &v0[OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_symbolName];
  *v2 = 0;
  v2[1] = 0;
  v0[OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_isDisabled] = 0;
  v3 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_progressMaskView;
  v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v140 = objc_opt_self();
  v5 = [v140 clearColor];
  [v4 setBackgroundColor_];

  *&v0[v3] = v4;
  v6 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_labelMaskView;
  *&v0[v6] = sub_248304210();
  v7 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_symbolMaskView;
  *&v0[v7] = sub_24830431C();
  v8 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_symbolView;
  *&v0[v8] = sub_2483044BC();
  v9 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_label;
  *&v0[v9] = sub_2483046E8();
  v10 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_backgroundLayer;
  *&v0[v10] = sub_248304880();
  v11 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_backdropLayer;
  *&v0[v11] = sub_248304BCC();
  v12 = [objc_opt_self() _lightFillMaterialView];
  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = v12;
  v14 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_fillView;
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v14] = v13;
  v146.receiver = v0;
  v146.super_class = type metadata accessor for DBVolumeSlider();
  v15 = objc_msgSendSuper2(&v146, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v16 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_progressMaskView;
  v17 = *&v15[OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_progressMaskView];
  v18 = v15;
  [v17 setClipsToBounds_];
  v19 = [v18 glyphContainerView];
  [v19 setHidden_];

  v20 = [v18 elasticContentView];
  [v20 ccui_applyClearGlass];

  v21 = [v18 elasticContentBoundaryView];
  [v21 addSubview_];

  v22 = [v18 elasticContentBoundaryView];
  [v22 addSubview_];

  v23 = [v18 elasticContentBoundaryView];
  v24 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_fillView;
  swift_beginAccess();
  [v23 addSubview_];

  v25 = [v18 elasticContentBoundaryView];
  [v25 addSubview_];

  v26 = [v18 elasticContentView];
  [v26 configureBackgroundAsVolumeSlider];

  [*&v15[v16] addSubview_];
  [*&v15[v16] addSubview_];
  v27 = [v18 elasticContentView];
  [v27 setClipsToBounds_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0, &unk_24839DA80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24839D8B0;
  v29 = *&v18[OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_symbolView];
  *(inited + 32) = v29;
  v30 = *&v18[OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_symbolMaskView];
  *(inited + 40) = v30;
  v31 = v29;
  v32 = v30;
  v141 = v31;
  if ((inited & 0xC000000000000001) != 0)
  {
    v33 = MEMORY[0x24C1CBA50](0, inited);
  }

  else
  {
    v33 = v31;
  }

  v34 = v33;
  v35 = objc_opt_self();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_24839CCB0;
  v37 = v34;
  v38 = [v37 leadingAnchor];
  v39 = [v18 leadingAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v36 + 32) = v40;
  v41 = [v37 centerYAnchor];
  v42 = [v18 centerYAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  *(v36 + 40) = v43;
  v44 = [v37 widthAnchor];
  v45 = [v44 constraintEqualToConstant_];

  *(v36 + 48) = v45;
  v46 = [v37 heightAnchor];

  v47 = [v46 constraintEqualToConstant_];
  *(v36 + 56) = v47;
  sub_24814FB28(0, &qword_27EE8FE90, 0x277CCAAD0);
  v48 = sub_248383B00();

  v144 = v35;
  [v35 activateConstraints_];

  if ((inited & 0xC000000000000001) != 0)
  {
    v49 = MEMORY[0x24C1CBA50](1, inited);
    v50 = &qword_27EE93000;
LABEL_8:

    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_24839CCB0;
    v52 = v49;
    v53 = [v52 leadingAnchor];
    v54 = [v18 leadingAnchor];
    v55 = [v53 constraintEqualToAnchor_];

    *(v51 + 32) = v55;
    v56 = [v52 centerYAnchor];
    v57 = [v18 centerYAnchor];
    v58 = [v56 constraintEqualToAnchor_];

    *(v51 + 40) = v58;
    v59 = [v52 widthAnchor];
    v60 = [v59 constraintEqualToConstant_];

    *(v51 + 48) = v60;
    v61 = [v52 heightAnchor];

    v62 = [v61 constraintEqualToConstant_];
    *(v51 + 56) = v62;
    v63 = sub_248383B00();

    [v144 activateConstraints_];

    v64 = swift_initStackObject();
    *(v64 + 16) = xmmword_24839D8B0;
    v65 = *&v18[v50[197]];
    *(v64 + 32) = v65;
    v66 = *&v18[OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_labelMaskView];
    *(v64 + 40) = v66;
    v67 = v65;
    v68 = v66;
    if ((v64 & 0xC000000000000001) != 0)
    {
      v69 = MEMORY[0x24C1CBA50](0, v64);
    }

    else
    {
      v69 = v67;
    }

    v70 = v69;
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_24839D8C0;
    v72 = v70;
    v73 = [v72 leadingAnchor];
    v74 = [v141 trailingAnchor];
    v75 = [v73 constraintEqualToAnchor:v74 constant:8.0];

    *(v71 + 32) = v75;
    v76 = [v72 trailingAnchor];
    v77 = [v18 trailingAnchor];
    v78 = [v76 constraintEqualToAnchor:v77 constant:-8.0];

    *(v71 + 40) = v78;
    v79 = [v72 centerYAnchor];

    v80 = [v18 centerYAnchor];
    v81 = [v79 constraintEqualToAnchor_];

    *(v71 + 48) = v81;
    v82 = sub_248383B00();

    [v144 activateConstraints_];

    if ((v64 & 0xC000000000000001) != 0)
    {
      v83 = MEMORY[0x24C1CBA50](1, v64);
LABEL_14:
      v84 = v83;

      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_24839D8C0;
      v86 = v84;
      v87 = [v86 leadingAnchor];
      v88 = [v141 trailingAnchor];
      v89 = [v87 constraintEqualToAnchor:v88 constant:8.0];

      *(v85 + 32) = v89;
      v90 = [v86 trailingAnchor];
      v91 = [v18 trailingAnchor];
      v92 = [v90 constraintEqualToAnchor:v91 constant:-8.0];

      *(v85 + 40) = v92;
      v93 = [v86 centerYAnchor];

      v94 = [v18 centerYAnchor];
      v95 = [v93 constraintEqualToAnchor_];

      *(v85 + 48) = v95;
      v96 = sub_248383B00();

      [v144 activateConstraints_];

      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_24839CCB0;
      v98 = *&v18[OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_progressMaskView];
      v99 = [v98 leadingAnchor];
      v100 = [v18 leadingAnchor];
      v101 = [v99 constraintEqualToAnchor_];

      *(v97 + 32) = v101;
      v102 = [v98 topAnchor];
      v103 = [v18 &selRef_supportsWirelessCarPlay];
      v104 = [v102 constraintEqualToAnchor_];

      *(v97 + 40) = v104;
      v105 = [v98 bottomAnchor];
      v106 = [v18 &selRef_assetVersion + 5];
      v107 = [v105 constraintEqualToAnchor_];

      *(v97 + 48) = v107;
      *(v97 + 56) = sub_248302C68();
      v108 = sub_248383B00();

      [v144 activateConstraints_];

      v109 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
      [v109 setTranslatesAutoresizingMaskIntoConstraints_];
      v110 = objc_allocWithZone(MEMORY[0x277D75B80]);
      v111 = v18;
      v145 = [v110 initWithTarget:v111 action:sel_plusViewTapped];
      [v109 addGestureRecognizer_];
      v112 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
      [v112 setTranslatesAutoresizingMaskIntoConstraints_];
      v143 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v111 action:sel_minusViewTapped];

      [v112 addGestureRecognizer_];
      [v111 addSubview_];
      [v111 addSubview_];
      v142 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0, &unk_24839DA80);
      v113 = swift_allocObject();
      *(v113 + 16) = xmmword_24839FA10;
      v114 = [v112 leadingAnchor];
      v115 = [v111 leadingAnchor];
      v116 = [v114 constraintEqualToAnchor_];

      *(v113 + 32) = v116;
      v117 = [v112 topAnchor];
      v118 = [v111 topAnchor];
      v119 = [v117 constraintEqualToAnchor_];

      *(v113 + 40) = v119;
      v120 = [v112 bottomAnchor];
      v121 = [v111 bottomAnchor];
      v122 = [v120 constraintEqualToAnchor_];

      *(v113 + 48) = v122;
      v123 = [v112 trailingAnchor];
      v124 = [v111 centerXAnchor];
      v125 = [v123 constraintEqualToAnchor_];

      *(v113 + 56) = v125;
      v126 = [v109 leadingAnchor];
      v127 = [v111 centerXAnchor];
      v128 = [v126 constraintEqualToAnchor_];

      *(v113 + 64) = v128;
      v129 = [v109 topAnchor];
      v130 = [v111 topAnchor];
      v131 = [v129 constraintEqualToAnchor_];

      *(v113 + 72) = v131;
      v132 = [v109 bottomAnchor];
      v133 = [v111 bottomAnchor];
      v134 = [v132 constraintEqualToAnchor_];

      *(v113 + 80) = v134;
      v135 = [v109 trailingAnchor];
      v136 = [v111 trailingAnchor];
      v137 = [v135 constraintEqualToAnchor_];

      *(v113 + 88) = v137;
      v138 = sub_248383B00();

      [v142 activateConstraints_];

      v139 = [v140 clearColor];
      [v111 setBackgroundColor_];

      [v111 setTranslatesAutoresizingMaskIntoConstraints_];
      [v111 setAxis_];

      return;
    }

    if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v83 = *(v64 + 40);
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  v50 = &qword_27EE93000;
  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v49 = *(inited + 40);
    goto LABEL_8;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_24830611C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *((*MEMORY[0x277D85000] & *a1) + 0x100);
  v7 = a1;
  v6(a5);
}

id sub_248306210(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DBVolumeSlider();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_2483063C0(const char *a1, char a2)
{
  v5 = v2;
  v6 = sub_248383DC0();
  sub_24814FB28(0, &qword_27EE90950, 0x277D86200);
  v7 = sub_2483841B0();
  sub_248382A40(v6, &dword_248146000, v7, a1, 32, 2, MEMORY[0x277D84F90]);

  v8 = MEMORY[0x277D85000];
  LOBYTE(a1) = (*((*MEMORY[0x277D85000] & *v5) + 0x110))();
  v9 = (*((*v8 & *v5) + 0xE0))();
  v12 = v11;
  if (a1)
  {
    if (!v9)
    {
      return result;
    }

    ObjectType = swift_getObjectType();
    (*(v12 + 32))(ObjectType, v12);
  }

  else
  {
    if (!v9)
    {
      return result;
    }

    v14 = swift_getObjectType();
    (*(v12 + 8))(a2 & 1, v14, v12);
  }

  swift_unknownObjectRelease();
  return result;
}

id sub_248306604(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DBVolumeSlider();
  return objc_msgSendSuper2(&v3, sel_continuousSliderCornerRadius);
}

void sub_2483066D8(uint64_t a1, double a2)
{
  v5.receiver = v2;
  v5.super_class = type metadata accessor for DBVolumeSlider();
  objc_msgSendSuper2(&v5, sel_setContinuousSliderCornerRadius_, a2);
  v4 = [v2 elasticContentView];
  [v2 continuousSliderCornerRadius];
  [v4 _setContinuousCornerRadius_];
}

void sub_248306764(uint64_t a1)
{
  v2 = v1;
  v3 = sub_248383DC0();
  sub_24814FB28(0, &qword_27EE90950, 0x277D86200);
  v4 = sub_2483841B0();
  v5 = MEMORY[0x277D84F90];
  sub_248382A40(v3, &dword_248146000, v4, "Audio notification layoutElasticContentView", 43, 2, MEMORY[0x277D84F90]);

  v70.receiver = v2;
  v70.super_class = type metadata accessor for DBVolumeSlider();
  objc_msgSendSuper2(&v70, sel_layoutElasticContentViews);
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setDisableActions_];
  v7 = sub_248383DC0();
  v8 = sub_2483841B0();
  sub_248382A40(v7, &dword_248146000, v8, "Audio notification layoutElasticContentView layer updates without animation", 75, 2, v5);

  v9 = [v2 elasticContentView];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v71.origin.x = v11;
  v71.origin.y = v13;
  v71.size.width = v15;
  v71.size.height = v17;
  Width = CGRectGetWidth(v71);
  [v2 presentationLayoutValue];
  v20 = v19;
  v21 = Width * v19;
  if ([v2 effectiveUserInterfaceLayoutDirection] == 1)
  {
    v22 = -(Width * v20);
  }

  else
  {
    v22 = v21;
  }

  [v2 bounds];
  Height = CGRectGetHeight(v72);
  v24 = 0.0;
  if ([v2 effectiveUserInterfaceLayoutDirection] == 1)
  {
    v25 = [v2 elasticContentView];
    [v25 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v73.origin.x = v27;
    v73.origin.y = v29;
    v73.size.width = v31;
    v73.size.height = v33;
    v24 = CGRectGetWidth(v73);
  }

  v34 = *((*MEMORY[0x277D85000] & *v2) + 0x1F0);
  v35 = v34();
  [v35 setFrame_];

  v36 = sub_248383DC0();
  v37 = sub_2483841B0();
  if (os_log_type_enabled(v37, v36))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v69 = v39;
    *v38 = 136446466;
    v40 = v34();
    [v40 frame];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;

    v74.origin.x = v42;
    v74.origin.y = v44;
    v74.size.width = v46;
    v74.size.height = v48;
    v49 = NSStringFromCGRect(v74);
    v50 = sub_248383960();
    v52 = v51;

    v53 = sub_24814A378(v50, v52, &v69);

    *(v38 + 4) = v53;
    *(v38 + 12) = 2082;
    v54 = [v2 elasticContentView];
    [v54 frame];
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;

    v75.origin.x = v56;
    v75.origin.y = v58;
    v75.size.width = v60;
    v75.size.height = v62;
    v63 = NSStringFromCGRect(v75);
    v64 = sub_248383960();
    v66 = v65;

    v67 = sub_24814A378(v64, v66, &v69);

    *(v38 + 14) = v67;
    _os_log_impl(&dword_248146000, v37, v36, "Audio notification layoutElasticContentView fillView %{public}s. elasticContentView %{public}s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v39, -1, -1);
    MEMORY[0x24C1CD5F0](v38, -1, -1);
  }

  [v6 commit];
  v68 = sub_248302C68();
  [v68 setConstant_];
}

void *sub_248306C58(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v15.receiver = v3;
  v15.super_class = type metadata accessor for DBVolumeSlider();
  v7 = objc_msgSendSuper2(&v15, sel_hitTest_withEvent_, a1, a2, a3);
  if (((*((*MEMORY[0x277D85000] & *v3) + 0x1D8))() & 1) != 0 && ([v3 bounds], v16.x = a2, v16.y = a3, CGRectContainsPoint(v17, v16)))
  {

    v8 = v3;
    return v3;
  }

  else if (!v7 || (sub_24814FB28(0, &qword_27EE8FFC0, 0x277D75D18), v9 = v3, v10 = v7, v11 = sub_248384030(), v10, v9, (v11 & 1) == 0))
  {
    v12 = sub_248383DC0();
    sub_24814FB28(0, &qword_27EE90950, 0x277D86200);
    v13 = sub_2483841B0();
    sub_248382A40(v12, &dword_248146000, v13, "Audio notification hitTest calling endEditing", 45, 2, MEMORY[0x277D84F90]);
  }

  return v7;
}

void sub_248306E88()
{
  v0 = sub_248383930();
  v1 = [objc_opt_self() _systemImageNamed_];

  if (v1)
  {
    v2 = *MEMORY[0x277D76A28];
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 configurationWithTextStyle_];

    v6 = [v1 imageWithSymbolConfiguration_];
    qword_27EE99028 = v6;
  }

  else
  {
    __break(1u);
  }
}

id sub_248306F78()
{
  if (qword_27EE97878 != -1)
  {
    swift_once();
  }

  v1 = qword_27EE99028;

  return v1;
}

id sub_248306FF8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setNumberOfLines_];
  [v0 setAdjustsFontSizeToFitWidth_];
  [v0 setMinimumScaleFactor_];
  v1 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  [v0 setFont_];

  v2 = [v0 layer];
  [v2 setDoubleSided_];

  v3 = [v0 layer];
  [v3 setSortsSublayers_];

  return v0;
}

void sub_24830714C()
{
  *(v0 + OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_isSliding) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_isMuted) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard14DBVolumeSlider____lazy_storage___maskWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_minValue) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_maxValue) = 100;
  v1 = (v0 + OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_text);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_symbolImage) = 0;
  v2 = (v0 + OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_symbolName);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_isDisabled) = 0;
  v3 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_progressMaskView;
  v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor_];

  *(v0 + v3) = v4;
  v6 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_labelMaskView;
  *(v0 + v6) = sub_248304210();
  v7 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_symbolMaskView;
  *(v0 + v7) = sub_24830431C();
  v8 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_symbolView;
  *(v0 + v8) = sub_2483044BC();
  v9 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_label;
  *(v0 + v9) = sub_2483046E8();
  v10 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_backgroundLayer;
  *(v0 + v10) = sub_248304880();
  v11 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_backdropLayer;
  *(v0 + v11) = sub_248304BCC();
  v12 = [objc_opt_self() _lightFillMaterialView];
  if (!v12)
  {
    __break(1u);
  }

  v13 = OBJC_IVAR____TtC9DashBoard14DBVolumeSlider_fillView;
  v14 = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v13) = v14;
  sub_248384580();
  __break(1u);
}

uint64_t sub_248307380()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  if ((v1)() == 2 && ([v0 sceneIsActive] & 1) == 0 && _AXSCommandAndControlCarPlayEnabled())
  {
    v3[4] = sub_248307C4C;
    v3[5] = 0;
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 1107296256;
    v3[2] = sub_24827E2DC;
    v3[3] = &block_descriptor_4;
    v1 = _Block_copy(v3);

    [v0 performSceneUpdateWithBlock:v1 completion:0];
    _Block_release(v1);
    result = swift_isEscapingClosureAtFileLocation();
    if ((result & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  result = [v0 sceneIsActive];
  if (result)
  {
    if (!_AXSCommandAndControlCarPlayEnabled() || (result = (v1)(), result != 2))
    {

      return [v0 deactivateScene];
    }
  }

  return result;
}

uint64_t DBVoiceControlViewController.lockoutState.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard28DBVoiceControlViewController_lockoutState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DBVoiceControlViewController.lockoutState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard28DBVoiceControlViewController_lockoutState;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_248307380();
}

uint64_t (*DBVoiceControlViewController.lockoutState.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_248307610;
}

uint64_t sub_248307610(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_248307380();
  }

  return result;
}

id sub_248307688(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC9DashBoard28DBVoiceControlViewController_lockoutState] = 0;
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 voiceControlApplication];

  if (v6)
  {
    v9.receiver = v2;
    v9.super_class = type metadata accessor for DBVoiceControlViewController();
    v7 = objc_msgSendSuper2(&v9, sel_initWithScene_application_environment_, a1, v6, a2);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    type metadata accessor for DBVoiceControlViewController();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v7;
}

void sub_2483077FC()
{
  *(v0 + OBJC_IVAR____TtC9DashBoard28DBVoiceControlViewController_lockoutState) = 0;
  sub_248384580();
  __break(1u);
}

id DBVoiceControlViewController.__deallocating_deinit()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v1, v0);

  v3.receiver = v0;
  v3.super_class = type metadata accessor for DBVoiceControlViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::Void __swiftcall DBVoiceControlViewController.viewDidLoad()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DBVoiceControlViewController();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  if (*MEMORY[0x277D81C88])
  {
    v2 = v1;
    v3 = *MEMORY[0x277D81C88];
    CFNotificationCenterAddObserver(v2, v0, sub_248307A08, v3, 0, CFNotificationSuspensionBehaviorCoalesce);

    sub_248307380();
  }

  else
  {
    __break(1u);
  }
}

id DBVoiceControlViewController.__allocating_init(scene:application:environment:)(void *a1, void *a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(v3) initWithScene:a1 application:a2 environment:a3];

  swift_unknownObjectRelease();
  return v6;
}

id DBVoiceControlViewController.__allocating_init(scene:application:proxyApplication:environment:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(v4) initWithScene:a1 application:a2 proxyApplication:a3 environment:a4];

  swift_unknownObjectRelease();
  return v8;
}

uint64_t DBVoiceControlViewController.deactivationPolicy.getter(uint64_t a1, uint64_t a2)
{
  if (_AXSCommandAndControlCarPlayEnabled())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void type metadata accessor for DBLockoutState()
{
  if (!qword_27EE93648)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EE93648);
    }
  }
}

uint64_t sub_248307C4C(void *a1)
{
  [a1 setDeactivationReasons_];
  [a1 setForeground_];
  return 1;
}

double sub_248307C94(uint64_t a1)
{
  v2 = sub_2483837A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2483837E0();
  v7 = *(v6 - 8);
  *&result = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    type metadata accessor for DBVoiceControlViewController();
    swift_unknownObjectRetain();
    if (swift_dynamicCastClass())
    {
      sub_248297394();
      v15 = sub_248383E50();
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_248307F7C;
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24814C01C;
      aBlock[3] = &block_descriptor_20;
      v12 = _Block_copy(aBlock);

      sub_2483837C0();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_24815C970();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90290, &qword_24839D4E0);
      sub_24815C9C8();
      sub_2483842D0();
      v13 = v15;
      MEMORY[0x24C1CB440](0, v10, v5, v12);
      _Block_release(v12);
      swift_unknownObjectRelease();

      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v10, v6);
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_248307F7C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_248307380();
  }
}

uint64_t LiveActivityEditorConfiguration.liveActivityName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard31LiveActivityEditorConfiguration_liveActivityName);

  return v1;
}

uint64_t LiveActivityEditorConfiguration.clearLiveActivityAction.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard31LiveActivityEditorConfiguration_clearLiveActivityAction);

  return v1;
}

id sub_2483080D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = (a1 + *a3);
  v5 = v4[1];
  v8[4] = *v4;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_24814C01C;
  v8[3] = a4;
  v6 = _Block_copy(v8);

  return v6;
}

uint64_t LiveActivityEditorConfiguration.turnOffInCarPlayAction.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard31LiveActivityEditorConfiguration_turnOffInCarPlayAction);

  return v1;
}

id LiveActivityEditorConfiguration.__allocating_init(liveActivityName:clearLiveActivityAction:turnOffInCarPlayAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR____TtC9DashBoard31LiveActivityEditorConfiguration_liveActivityName];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v13[OBJC_IVAR____TtC9DashBoard31LiveActivityEditorConfiguration_clearLiveActivityAction];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v13[OBJC_IVAR____TtC9DashBoard31LiveActivityEditorConfiguration_turnOffInCarPlayAction];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v13;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, sel_init);
}

id LiveActivityEditorConfiguration.init(liveActivityName:clearLiveActivityAction:turnOffInCarPlayAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = &v6[OBJC_IVAR____TtC9DashBoard31LiveActivityEditorConfiguration_liveActivityName];
  *v7 = a1;
  *(v7 + 1) = a2;
  v8 = &v6[OBJC_IVAR____TtC9DashBoard31LiveActivityEditorConfiguration_clearLiveActivityAction];
  *v8 = a3;
  *(v8 + 1) = a4;
  v9 = &v6[OBJC_IVAR____TtC9DashBoard31LiveActivityEditorConfiguration_turnOffInCarPlayAction];
  *v9 = a5;
  *(v9 + 1) = a6;
  v11.receiver = v6;
  v11.super_class = type metadata accessor for LiveActivityEditorConfiguration();
  return objc_msgSendSuper2(&v11, sel_init);
}

id LiveActivityEditorConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveActivityEditorConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id variable initialization expression of DBLiveActivityMonitor.observers()
{
  v0 = [objc_opt_self() hashTableWithOptions_];

  return v0;
}

id DBLiveActivityMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *DBLiveActivityMonitor.init()()
{
  v1 = sub_248382A90();
  v38 = *(v1 - 8);
  v39 = v1;
  MEMORY[0x28223BE20](v1);
  v2 = sub_248381380();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93668, &qword_2483A1000);
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93670, &qword_2483A1008);
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x28223BE20](v9);
  v30 = &v29 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93678, &unk_2483A1010);
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x28223BE20](v11);
  v35 = &v29 - v12;
  *&v0[OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_cancellable] = 0;
  v13 = OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_observers;
  *&v0[v13] = [objc_opt_self() hashTableWithOptions_];
  *&v0[OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_descriptors] = MEMORY[0x277D84F90];
  v14 = [objc_allocWithZone(MEMORY[0x277CE9568]) init];
  *&v0[OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_alertClient] = v14;
  v15 = [objc_opt_self() liveActivitiesDisabled];
  v16 = [v15 valueBool];

  v0[OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_liveActivitiesEnabled] = v16 ^ 1;
  v17 = type metadata accessor for DBLiveActivityMonitor();
  v42.receiver = v0;
  v42.super_class = v17;
  v18 = objc_msgSendSuper2(&v42, sel_init);
  [*&v18[OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_alertClient] setDelegate_];
  v19 = CFNotificationCenterGetDarwinNotifyCenter();
  v20 = sub_248383930();
  CFNotificationCenterAddObserver(v19, v18, sub_248308D74, v20, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  sub_248381360();
  sub_248381350();
  sub_248381370();
  v21 = sub_248381340();
  (*(v3 + 8))(v5, v2);

  v41 = v21;
  v40 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE936B0, &qword_2483A1020);
  sub_24822D648(&qword_27EE936B8, &qword_27EE936B0, &qword_2483A1020, MEMORY[0x277CBCD90]);
  sub_248382F40();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE936C0, &qword_2483A1028);
  sub_24822D648(&qword_27EE936C8, &qword_27EE93668, &qword_2483A1000, MEMORY[0x277CBCB78]);
  v22 = v30;
  v23 = v32;
  sub_248382F20();
  (*(v31 + 8))(v8, v23);
  sub_24822D648(&qword_27EE936D0, &qword_27EE93670, &qword_2483A1008, MEMORY[0x277CBCB10]);
  sub_24830AC18();
  v24 = v34;
  v25 = v35;
  sub_248382FD0();
  (*(v33 + 8))(v22, v24);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_24822D648(&qword_27EE936E8, &qword_27EE93678, &unk_2483A1010, MEMORY[0x277CBCBE0]);
  v26 = v37;
  v27 = sub_248383000();

  (*(v36 + 8))(v25, v26);
  *&v18[OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_cancellable] = v27;

  return v18;
}

double DBLiveActivityMonitor.addObserver(_:)(void *a1)
{
  v3 = sub_248382A90();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(v1 + OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_observers) addObject_];
  if (*(v1 + OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_liveActivitiesEnabled) == 1)
  {
    (*((*MEMORY[0x277D85000] & *v1) + 0x140))(v8);
    if ([a1 respondsToSelector_])
    {
      sub_2483812C0();
      v16 = sub_248383B00();

      [a1 didUpdateLiveActivitiesWithActivityDescriptors_];
      v9 = v16;
    }

    else
    {
    }
  }

  else
  {
    v11 = sub_248160784();
    (*(v4 + 16))(v7, v11, v3);
    v12 = sub_248382A80();
    v13 = sub_248383DC0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_248146000, v12, v13, "Live activities disabled, will not update new observer", v14, 2u);
      MEMORY[0x24C1CD5F0](v14, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }

  return result;
}

double DBLiveActivityMonitor.clearLiveActivity(with:)()
{
  sub_248381360();
  sub_248381350();
  sub_2483812A0();
  sub_248381330();

  return result;
}

uint64_t DBLiveActivityMonitor.liveActivityIdentifier(with:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE936F0, &unk_2483A1030);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12[-v4];
  v6 = OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_descriptors;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v13 = a1;

  sub_2483093F0(sub_24830ACCC, v7, v5);

  v8 = sub_2483812C0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v5, 1, v8) == 1)
  {
    sub_24822D578(v5, &qword_27EE936F0, &unk_2483A1030);
    return 0;
  }

  else
  {
    v11 = sub_2483812A0();
    (*(v9 + 8))(v5, v8);
    return v11;
  }
}

uint64_t sub_2483093F0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_2483812C0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6, v8);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

uint64_t DBLiveActivityMonitor.liveActivityBundleIdentifer(with:)(uint64_t a1)
{
  v3 = sub_2483813B0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE936F0, &unk_2483A1030);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16[-v8];
  v10 = OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_descriptors;
  swift_beginAccess();
  v11 = *(v1 + v10);
  v17 = a1;

  sub_2483093F0(sub_24830AD64, v11, v9);

  v12 = sub_2483812C0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) == 1)
  {
    sub_24822D578(v9, &qword_27EE936F0, &unk_2483A1030);
    return 0;
  }

  else
  {
    sub_2483812B0();
    (*(v13 + 8))(v9, v12);
    v15 = sub_2483813A0();
    (*(v4 + 8))(v6, v3);
    return v15;
  }
}

id sub_248309828(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = sub_2483812C0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24830B210(&qword_27EE91780, MEMORY[0x277CB92E0], MEMORY[0x277CB92D8]);
  sub_2483813C0();
  v10 = a1;
  a4(v9);
  v12 = v11;

  (*(v7 + 8))(v9, v6);
  if (v12)
  {
    v13 = sub_248383930();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t DBLiveActivityMonitor.liveActivityName(with:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE936F0, &unk_2483A1030);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14[-v4];
  v6 = OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_descriptors;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v15 = a1;

  sub_2483093F0(sub_24830B3EC, v7, v5);

  v8 = sub_2483812C0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v5, 1, v8) == 1)
  {
    sub_24822D578(v5, &qword_27EE936F0, &unk_2483A1030);
  }

  else
  {
    v10 = sub_248381280();
    v12 = v11;
    (*(v9 + 8))(v5, v8);
    if (v12)
    {
      return v10;
    }
  }

  return 0x6E776F6E6B6E55;
}

void sub_248309BE4()
{
  *(v0 + OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_cancellable) = 0;
  v1 = OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_observers;
  *(v0 + v1) = [objc_opt_self() hashTableWithOptions_];
  *(v0 + OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_descriptors) = MEMORY[0x277D84F90];
  sub_248384580();
  __break(1u);
}

id DBLiveActivityMonitor.__deallocating_deinit()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v1, v0);

  v3.receiver = v0;
  v3.super_class = type metadata accessor for DBLiveActivityMonitor();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_248309DB8(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v4 = v3;
  v27 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93770, &qword_2483A10A8);
  MEMORY[0x28223BE20](v26);
  v8 = &v25 - v7;
  v9 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  v28 = a3;

  v15 = 0;
  while (v12)
  {
    v29 = v4;
LABEL_10:
    v17 = __clz(__rbit64(v12)) | (v15 << 6);
    v18 = v28;
    v19 = *(v28 + 48);
    v20 = sub_248381300();
    (*(*(v20 - 8) + 16))(v8, v19 + *(*(v20 - 8) + 72) * v17, v20);
    v21 = *(v18 + 56);
    v22 = sub_248381390();
    sub_24830B328(v21 + *(*(v22 - 8) + 72) * v17, &v8[*(v26 + 48)]);
    v23 = v29;
    v24 = v27(v8);
    v4 = v23;
    result = sub_24822D578(v8, &qword_27EE93770, &qword_2483A10A8);
    if (v23)
    {
      goto LABEL_14;
    }

    v12 &= v12 - 1;
    if (v24)
    {
      a2 = 1;
LABEL_14:

      return a2 & 1;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      a2 = 0;
      goto LABEL_14;
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v29 = v4;
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_248309FFC()
{
  v33 = sub_2483813B0();
  v1 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2483812C0();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v8 = OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_descriptors;
  swift_beginAccess();
  v9 = *(*(v0 + v8) + 16);

  v39 = v9;
  if (v9)
  {
    v11 = 0;
    v37 = v3 + 16;
    v29 = (v3 + 32);
    v30 = (v1 + 8);
    v35 = (v3 + 8);
    v34 = MEMORY[0x277D84F90];
    v12 = v36;
    v38 = result;
    while (v11 < *(result + 16))
    {
      v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v14 = *(v3 + 72);
      (*(v3 + 16))(v7, result + v13 + v14 * v11, v12);
      v15 = sub_248381270();
      MEMORY[0x28223BE20](v15);
      *(&v29 - 2) = v7;
      v16 = sub_248309DB8(sub_24830AD94, (&v29 - 4), v15);

      if ((v16 & 1) != 0 || (v17 = [objc_opt_self() sharedInstance], v18 = v32, sub_2483812B0(), sub_2483813A0(), v19 = v18, v12 = v36, (*v30)(v19, v33), v20 = sub_248383930(), , v21 = objc_msgSend(v17, sel_supportsLiveActivityForBundleIdentifier_, v20), v17, v20, !v21))
      {
        (*v35)(v7, v12);
      }

      else
      {
        v22 = *v29;
        (*v29)(v31, v7, v12);
        v23 = v34;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if (isUniquelyReferenced_nonNull_native)
        {
          v25 = v23;
        }

        else
        {
          sub_248160168(0, *(v23 + 16) + 1, 1);
          v25 = v40;
        }

        v27 = *(v25 + 16);
        v26 = *(v25 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_248160168((v26 > 1), v27 + 1, 1);
          v25 = v40;
        }

        *(v25 + 16) = v27 + 1;
        v34 = v25;
        v28 = v25 + v13 + v27 * v14;
        v12 = v36;
        v22(v28, v31, v36);
      }

      ++v11;
      result = v38;
      if (v39 == v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
LABEL_15:

    return v34;
  }

  return result;
}

BOOL sub_24830A404(uint64_t a1, uint64_t a2)
{
  v4 = sub_2483813B0();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x28223BE20](v4);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2483812C0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_248382A90();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93770, &qword_2483A10A8);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  sub_248232C78(a1, &v30 - v15, &qword_27EE93770, &qword_2483A10A8);
  v17 = *(v14 + 56);
  sub_248381390();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_24830B38C(&v16[v17]);
  v19 = sub_248381300();
  (*(*(v19 - 8) + 8))(v16, v19);
  if (EnumCaseMultiPayload == 1)
  {
    v20 = sub_248160784();
    (*(v35 + 16))(v12, v20, v36);
    (*(v7 + 16))(v9, a2, v6);
    v21 = sub_248382A80();
    v22 = sub_248383DC0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v37 = v31;
      *v23 = 136315138;
      v24 = v32;
      sub_2483812B0();
      v30 = sub_2483813A0();
      v26 = v25;
      (*(v33 + 8))(v24, v34);
      (*(v7 + 8))(v9, v6);
      v27 = sub_24814A378(v30, v26, &v37);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_248146000, v21, v22, "%s has a custom target. Denying.", v23, 0xCu);
      v28 = v31;
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x24C1CD5F0](v28, -1, -1);
      MEMORY[0x24C1CD5F0](v23, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    (*(v35 + 8))(v12, v36);
  }

  return EnumCaseMultiPayload == 1;
}

uint64_t sub_24830A82C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2483812C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_24830B210(&qword_27EE93768, MEMORY[0x277CB92E0], MEMORY[0x277CB92E8]);
    v22 = sub_248383910();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

void *sub_24830AA40(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93760, &unk_2483A1098);
  v10 = *(sub_2483812C0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_2483812C0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_24830AC18()
{
  result = qword_27EE936D8;
  if (!qword_27EE936D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE936C0, &qword_2483A1028);
    sub_24830B210(&qword_27EE936E0, MEMORY[0x277CB93B0], MEMORY[0x277CB93B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE936D8);
  }

  return result;
}

uint64_t sub_24830ACCC(uint64_t a1)
{
  v1 = sub_2483812A0();
  v3 = v2;
  if (v1 == sub_2483812A0() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_248384680();
  }

  return v6 & 1;
}

void sub_24830ADD8(void *a1)
{
  v2 = sub_248382A90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  if (!a1)
  {
    __break(1u);
    return;
  }

  v26 = a1;
  v9 = [objc_opt_self() liveActivitiesDisabled];
  v10 = [v9 valueBool];

  v11 = v26;
  if (v10 == v26[OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_liveActivitiesEnabled])
  {
    v12 = v10 ^ 1;
    v26[OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_liveActivitiesEnabled] = v12;
    v13 = sub_248160784();
    v14 = v3[2];
    if (v12)
    {
LABEL_21:
      (v14)(v5, v13, v2);
      v22 = sub_248382A80();
      v23 = sub_248383DC0();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_248146000, v22, v23, "Live activities enabled, updating", v24, 2u);
        MEMORY[0x24C1CD5F0](v24, -1, -1);
      }

      (v3[1])(v5, v2);
      (*((*MEMORY[0x277D85000] & *v26) + 0x148))();
    }

    else
    {
      (v14)(v8, v13, v2);
      v15 = sub_248382A80();
      v16 = sub_248383DC0();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_248146000, v15, v16, "Live activities disabled, dismissing all", v17, 2u);
        MEMORY[0x24C1CD5F0](v17, -1, -1);
      }

      (v3[1])(v8, v2);
      v18 = [*&v26[OBJC_IVAR____TtC9DashBoard21DBLiveActivityMonitor_observers] allObjects];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE936F8, &qword_2483A1040);
      v2 = sub_248383B10();

      if (v2 >> 62)
      {
LABEL_25:
        v5 = sub_248384360();
        if (v5)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v5)
        {
LABEL_11:
          v19 = 0;
          v3 = &selRef__eventStoreDidChange_;
          do
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              v20 = MEMORY[0x24C1CBA50](v19, v2);
              v21 = (v19 + 1);
              if (__OFADD__(v19, 1))
              {
LABEL_20:
                __break(1u);
                goto LABEL_21;
              }
            }

            else
            {
              if (v19 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_25;
              }

              v20 = *(v2 + 8 * v19 + 32);
              swift_unknownObjectRetain();
              v21 = (v19 + 1);
              if (__OFADD__(v19, 1))
              {
                goto LABEL_20;
              }
            }

            if ([v20 respondsToSelector_])
            {
              [v20 disabledLiveActivities];
            }

            swift_unknownObjectRelease();
            ++v19;
          }

          while (v21 != v5);
        }
      }
    }

    return;
  }
}

uint64_t sub_24830B210(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24830B258(id *a1)
{
  v1 = *a1;
  if ([*a1 respondsToSelector_])
  {
    sub_2483812C0();
    sub_24830B210(&qword_27EE91780, MEMORY[0x277CB92E0], MEMORY[0x277CB92D8]);
    swift_unknownObjectRetain();
    v2 = sub_2483813D0();
    [v1 didUpdateAlertingLiveActivityWithActivityDescriptor_];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_24830B328(uint64_t a1, uint64_t a2)
{
  v4 = sub_248381390();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24830B38C(uint64_t a1)
{
  v2 = sub_248381390();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double static DBIconImage.iconImageInfo(for:)()
{
  v0 = [objc_opt_self() imageDescriptorNamed_];
  [v0 size];
  v2 = v1;

  return v2;
}

id DBIconImage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBIconImage.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DBIconImage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DBAutomakerOverlayStateMonitor.lockOut.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard30DBAutomakerOverlayStateMonitor_lockOut;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24830B768(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC9DashBoard30DBAutomakerOverlayStateMonitor_lockOut;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_24830D2D4(sub_24830B944, v7);
  }

  return result;
}

uint64_t sub_24830B81C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result & 1;
  return result;
}

void sub_24830B8A4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [a1 automakerOverlayStateMonitor:Strong didUpdateLockOut:(*((*MEMORY[0x277D85000] & *Strong) + 0x78))() & 1];
  }
}

double sub_24830BAC8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard30DBAutomakerOverlayStateMonitor_overlays;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_24830BBF8(v4);

  return result;
}

uint64_t sub_24830BB2C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

double sub_24830BB88(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9DashBoard30DBAutomakerOverlayStateMonitor_overlays;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  sub_24830BBF8(v5);

  return result;
}

void sub_24830BBF8(unint64_t a1)
{
  v2 = v1;
  v39 = sub_248381210();
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v38 = v11;
  if (a1 >> 62)
  {
    v12 = sub_248384360();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x277D84F90];
  v36 = v1;
  if (v12)
  {
    v41[0] = MEMORY[0x277D84F90];
    sub_24830E1B4(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      goto LABEL_34;
    }

    v13 = v41[0];
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v12; ++i)
      {
        MEMORY[0x24C1CBA50](i, a1);
        v15 = [swift_unknownObjectRetain() uniqueIdentifier];
        sub_2483811F0();
        swift_unknownObjectRelease_n();

        v41[0] = v13;
        v17 = *(v13 + 16);
        v16 = *(v13 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_24830E1B4((v16 > 1), v17 + 1, 1);
          v13 = v41[0];
        }

        *(v13 + 16) = v17 + 1;
        (*(v4 + 32))(v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17, v10, v39);
      }
    }

    else
    {
      v18 = a1 + 32;
      do
      {
        v19 = [swift_unknownObjectRetain_n() uniqueIdentifier];
        sub_2483811F0();
        swift_unknownObjectRelease_n();

        v41[0] = v13;
        v21 = *(v13 + 16);
        v20 = *(v13 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_24830E1B4((v20 > 1), v21 + 1, 1);
          v13 = v41[0];
        }

        *(v13 + 16) = v21 + 1;
        (*(v4 + 32))(v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v21, v6, v39);
        v18 += 8;
        --v12;
      }

      while (v12);
    }

    v2 = v36;
  }

  v22 = OBJC_IVAR____TtC9DashBoard30DBAutomakerOverlayStateMonitor_overlays;
  swift_beginAccess();
  v23 = *(v2 + v22);
  if (v23 >> 62)
  {
    v35 = *(v2 + v22);
    v24 = sub_248384360();
    v23 = v35;
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v40 = MEMORY[0x277D84F90];
    v26 = v23;

    sub_24830E1B4(0, v24 & ~(v24 >> 63), 0);
    if ((v24 & 0x8000000000000000) == 0)
    {
      v27 = 0;
      v25 = v40;
      v37 = v26 & 0xC000000000000001;
      v28 = v24;
      do
      {
        if (v37)
        {
          MEMORY[0x24C1CBA50](v27);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        v29 = [swift_unknownObjectRetain() uniqueIdentifier];
        v30 = v38;
        sub_2483811F0();
        swift_unknownObjectRelease_n();

        v40 = v25;
        v32 = *(v25 + 16);
        v31 = *(v25 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_24830E1B4((v31 > 1), v32 + 1, 1);
          v25 = v40;
        }

        ++v27;
        *(v25 + 16) = v32 + 1;
        (*(v4 + 32))(v25 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v32, v30, v39);
      }

      while (v28 != v27);

      goto LABEL_28;
    }

LABEL_34:
    __break(1u);
    return;
  }

LABEL_28:
  v33 = sub_24830DE68(v13, v25);

  if ((v33 & 1) == 0)
  {
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_24830D2D4(sub_24830E6D8, v34);
  }
}

uint64_t variable initialization expression of DBAutomakerOverlayStateMonitor.observerQueue()
{
  v7 = sub_248383E40();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_248383E20();
  MEMORY[0x28223BE20](v3);
  v4 = sub_2483837E0();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_24814FB28(0, &qword_27EE90280, 0x277D85C78);
  sub_2483837C0();
  v8 = MEMORY[0x277D84F90];
  sub_24814BF98(&unk_27EE92360, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93790, &unk_24839EC20);
  sub_2482BE1DC(&qword_27EE92370, &unk_27EE93790, &unk_24839EC20);
  sub_2483842D0();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  return sub_248383E70();
}

id variable initialization expression of DBAutomakerOverlayStateMonitor.observers()
{
  v0 = [objc_opt_self() hashTableWithOptions_];

  return v0;
}

id variable initialization expression of DBAutomakerOverlayStateMonitor.carManager()
{
  v0 = [DBApp carManager];

  return v0;
}

uint64_t sub_24830C3D8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9DashBoard30DBAutomakerOverlayStateMonitor_carManager) currentCar];
  if (v1 && (v2 = v1, v3 = [v1 automakerOverlays], v2, v3))
  {
    v4 = [v3 overlayViews];
    if (v4)
    {
      v5 = v4;
      sub_24814FB28(0, &qword_27EE938E8, 0x277CF8568);
      v6 = sub_248383B10();

      v3 = v5;
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    if (v6 >> 62)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
LABEL_10:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE938E0, &unk_2483A2CC0);
      v7 = sub_248384590();

      goto LABEL_7;
    }
  }

  sub_2483846A0();
  v7 = v6;
LABEL_7:

  return v7;
}

uint64_t sub_24830C520()
{
  v0 = sub_24830C3D8();
  v1 = v0;
  v8 = MEMORY[0x277D84F90];
  if (v0 >> 62)
  {
LABEL_16:
    v2 = sub_248384360();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x24C1CBA50](v3, v1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v6 = v8;
            goto LABEL_18;
          }
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v4 = *(v1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_13;
          }
        }

        if ([v4 on])
        {
          sub_2483844A0();
          sub_2483844D0();
          sub_2483844E0();
          sub_2483844B0();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v3;
        if (v5 == v2)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_18:

  return v6;
}

id DBAutomakerOverlayStateMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *DBAutomakerOverlayStateMonitor.init()()
{
  v1 = v0;
  v26 = sub_248383E40();
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_248383E20();
  MEMORY[0x28223BE20](v5);
  v6 = sub_2483837E0();
  MEMORY[0x28223BE20](v6 - 8);
  v0[OBJC_IVAR____TtC9DashBoard30DBAutomakerOverlayStateMonitor_lockOut] = 0;
  v7 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC9DashBoard30DBAutomakerOverlayStateMonitor_overlays] = MEMORY[0x277D84F90];
  v25 = OBJC_IVAR____TtC9DashBoard30DBAutomakerOverlayStateMonitor_observerQueue;
  v8 = sub_24814FB28(0, &qword_27EE90280, 0x277D85C78);
  v24[1] = "={CGSize=dd}dd}24@0:8d16";
  v24[2] = v8;
  sub_2483837C0();
  v28 = v7;
  sub_24814BF98(&unk_27EE92360, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93790, &unk_24839EC20);
  sub_2482BE1DC(&qword_27EE92370, &unk_27EE93790, &unk_24839EC20);
  sub_2483842D0();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v26);
  *&v0[v25] = sub_248383E70();
  v9 = OBJC_IVAR____TtC9DashBoard30DBAutomakerOverlayStateMonitor_observers;
  *&v0[v9] = [objc_opt_self() hashTableWithOptions_];
  v10 = OBJC_IVAR____TtC9DashBoard30DBAutomakerOverlayStateMonitor_carManager;
  *&v0[v10] = [DBApp carManager];
  v11 = sub_248383D90();
  v12 = *sub_24827C280();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_24814A378(0x292874696E69, 0xE600000000000000, &v28);
    _os_log_impl(&dword_248146000, v13, v11, "%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x24C1CD5F0](v15, -1, -1);
    MEMORY[0x24C1CD5F0](v14, -1, -1);
  }

  v16 = type metadata accessor for DBAutomakerOverlayStateMonitor();
  v27.receiver = v1;
  v27.super_class = v16;
  v17 = objc_msgSendSuper2(&v27, sel_init);
  v18 = OBJC_IVAR____TtC9DashBoard30DBAutomakerOverlayStateMonitor_carManager;
  v19 = *&v17[OBJC_IVAR____TtC9DashBoard30DBAutomakerOverlayStateMonitor_carManager];
  v20 = v17;
  [v19 registerObserver_];
  v21 = *&v17[v18];
  v22 = [v21 currentCar];
  [v20 carManager:v21 didUpdateCurrentCar:v22];

  return v20;
}

id DBAutomakerOverlayStateMonitor.__deallocating_deinit(__n128 a1)
{
  v2 = sub_248383D90();
  v3 = *sub_24827C280();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = v3;
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_24814A378(0x74696E696564, 0xE600000000000000, &v9);
    _os_log_impl(&dword_248146000, v4, v2, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1CD5F0](v6, -1, -1);
    MEMORY[0x24C1CD5F0](v5, -1, -1);
  }

  v7 = type metadata accessor for DBAutomakerOverlayStateMonitor();
  v10.receiver = v1;
  v10.super_class = v7;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

void DBAutomakerOverlayStateMonitor.register(_:)(uint64_t a1)
{
  v3 = sub_2483837A0();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v21 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2483837E0();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[OBJC_IVAR____TtC9DashBoard30DBAutomakerOverlayStateMonitor_observerQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_24830E07C;
  *(v9 + 24) = v8;
  v29 = sub_248271D98;
  v30 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_248271DC0;
  v28 = &block_descriptor_22;
  v10 = _Block_copy(&aBlock);
  v11 = v1;
  swift_unknownObjectRetain();

  dispatch_sync(v7, v10);
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_24814FB28(0, &qword_27EE90280, 0x277D85C78);
    v13 = sub_248383E50();
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = v11;
    v29 = sub_24830E098;
    v30 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_24814C01C;
    v28 = &block_descriptor_12_1;
    v15 = _Block_copy(&aBlock);
    v16 = v11;
    swift_unknownObjectRetain();

    sub_2483837C0();
    aBlock = MEMORY[0x277D84F90];
    sub_24814BF98(&qword_27EE91EB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90290, &qword_24839D4E0);
    sub_2482BE1DC(&qword_27EE91EC0, &unk_27EE90290, &qword_24839D4E0);
    v17 = v21;
    v18 = v24;
    sub_2483842D0();
    MEMORY[0x24C1CB440](0, v6, v17, v15);
    _Block_release(v15);

    (*(v23 + 8))(v17, v18);
    (*(v20 + 8))(v6, v22);
  }
}

void sub_24830D0DC(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC9DashBoard30DBAutomakerOverlayStateMonitor_observerQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_24830E198;
  *(v5 + 24) = v4;
  v9[4] = sub_24830E7FC;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_248271DC0;
  v9[3] = &block_descriptor_22_0;
  v6 = _Block_copy(v9);
  v7 = v1;
  swift_unknownObjectRetain();

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_24830D25C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

double sub_24830D2D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2483837A0();
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2483837E0();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + OBJC_IVAR____TtC9DashBoard30DBAutomakerOverlayStateMonitor_observerQueue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_24830E7B0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24814C01C;
  aBlock[3] = &block_descriptor_38;
  v14 = _Block_copy(aBlock);

  sub_2483837C0();
  v19 = MEMORY[0x277D84F90];
  sub_24814BF98(&qword_27EE91EB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90290, &qword_24839D4E0);
  sub_2482BE1DC(&qword_27EE91EC0, &unk_27EE90290, &qword_24839D4E0);
  sub_2483842D0();
  MEMORY[0x24C1CB440](0, v11, v8, v14);
  _Block_release(v14);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);

  return result;
}

void sub_24830D604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v30 = sub_2483837A0();
  v3 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2483837E0();
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v9 = [*&Strong[OBJC_IVAR____TtC9DashBoard30DBAutomakerOverlayStateMonitor_observers] allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE938F8, qword_2483A1120);
    v10 = sub_248383B10();

    if (v10 >> 62)
    {
      v11 = sub_248384360();
      if (v11)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
LABEL_4:
        v27 = sub_24814FB28(0, &qword_27EE90280, 0x277D85C78);
        if (v11 < 1)
        {
          __break(1u);
          return;
        }

        v12 = 0;
        v23 = v34;
        v24 = v10 & 0xC000000000000001;
        v22 = (v3 + 8);
        v13 = (v5 + 8);
        v25 = v11;
        v26 = v10;
        do
        {
          if (v24)
          {
            v14 = MEMORY[0x24C1CBA50](v12, v10);
          }

          else
          {
            v14 = *(v10 + 8 * v12 + 32);
            swift_unknownObjectRetain();
          }

          ++v12;
          v15 = sub_248383E50();
          v16 = swift_allocObject();
          v17 = v32;
          v16[2] = v31;
          v16[3] = v17;
          v16[4] = v14;
          v34[2] = sub_24830E7BC;
          v34[3] = v16;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          v34[0] = sub_24814C01C;
          v34[1] = &block_descriptor_44;
          v18 = _Block_copy(aBlock);

          swift_unknownObjectRetain();

          sub_2483837C0();
          aBlock[0] = MEMORY[0x277D84F90];
          sub_24814BF98(&qword_27EE91EB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90290, &qword_24839D4E0);
          sub_2482BE1DC(&qword_27EE91EC0, &unk_27EE90290, &qword_24839D4E0);
          v19 = v29;
          v20 = v30;
          sub_2483842D0();
          MEMORY[0x24C1CB440](0, v7, v19, v18);
          _Block_release(v18);
          swift_unknownObjectRelease();

          (*v22)(v19, v20);
          (*v13)(v7, v28);
          v10 = v26;
        }

        while (v25 != v12);
      }
    }
  }
}

uint64_t sub_24830DA44()
{
  v1 = sub_24830C520();
  v2 = OBJC_IVAR____TtC9DashBoard30DBAutomakerOverlayStateMonitor_overlays;
  swift_beginAccess();
  v3 = *(v0 + v2);
  *(v0 + v2) = v1;
  sub_24830BBF8(v3);

  v4 = sub_24830C520();
  if (v4 >> 62)
  {
    v5 = sub_248384360();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = v5 != 0;
  v7 = OBJC_IVAR____TtC9DashBoard30DBAutomakerOverlayStateMonitor_lockOut;
  result = swift_beginAccess();
  v9 = *(v0 + v7);
  *(v0 + v7) = v6;
  if (v6 != v9)
  {
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_24830D2D4(sub_24830E810, v10);
  }

  return result;
}

uint64_t DBAutomakerOverlayStateMonitor.overlayViewService(_:didUpdateOn:)(void *a1, char a2, __n128 a3)
{
  v5 = sub_248383D90();
  v6 = *sub_24827C280();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = v6;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v8 = 136315650;
    *(v8 + 4) = sub_24814A378(0xD000000000000022, 0x80000002483B2180, &v13);
    *(v8 + 12) = 2112;
    *(v8 + 14) = a1;
    *v9 = a1;
    *(v8 + 22) = 1024;
    *(v8 + 24) = a2 & 1;
    v11 = a1;
    _os_log_impl(&dword_248146000, v7, v5, "%s service=%@ on=%{BOOL}d", v8, 0x1Cu);
    sub_24827B684(v9);
    MEMORY[0x24C1CD5F0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C1CD5F0](v10, -1, -1);
    MEMORY[0x24C1CD5F0](v8, -1, -1);
  }

  return sub_24830DA44();
}