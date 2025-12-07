uint64_t sub_224A77C90()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A77CC8(uint64_t a1, uint64_t a2)
{
  v5 = sub_224DAB7B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_224DAB848();
  v10 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v2[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_224A73B80;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_45;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  sub_224DAB7E8();
  v20 = MEMORY[0x277D84F90];
  sub_224A7940C(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);
}

uint64_t sub_224A77FD0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_224A78024(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_224A78078(char *a1, id a2, uint64_t a3, id a4)
{
  v96 = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v85 - v12;
  v14 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_runningAssertion;
  if (*&a1[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_runningAssertion])
  {
    goto LABEL_2;
  }

  v87 = v11;
  v88 = a2;
  v15 = __swift_project_boxed_opaque_existential_1((*&a1[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__services] + 408), *(*&a1[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__services] + 432));
  v16 = *&a1[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__processHandle];
  v17 = *v15;
  v18 = *(*v15 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
  os_unfair_lock_lock(*(v18 + 16));
  v19 = [v16 bundleIdentifier];
  v89 = a3;
  if (v19)
  {
    v86 = a1;
    v20 = v19;
    sub_224DAEE18();

    v21 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithVisibleScenes;
    swift_beginAccess();
    v22 = *(v17 + v21);

    sub_224DA9FF8();
    v23 = sub_224A33924(v13, v22);
    a1 = v86;

    (*(v9 + 8))(v13, v87);
    os_unfair_lock_unlock(*(v18 + 16));
    a2 = v88;
    if (v23)
    {
LABEL_2:
      (a2)(a4);
      return;
    }
  }

  else
  {
    os_unfair_lock_unlock(*(v18 + 16));
    a2 = v88;
  }

  v24 = [objc_opt_self() targetWithPid_];
  v25 = sub_224DAEDE8();
  v26 = sub_224DAEDE8();
  v27 = [objc_opt_self() attributeWithDomain:v25 name:v26];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_224DB2780;
  *(v28 + 32) = v27;
  v29 = objc_allocWithZone(MEMORY[0x277D46DB8]);
  v30 = v24;
  v31 = v27;
  v32 = sub_224DAEDE8();
  sub_224A3B79C(0, &qword_281350B00, 0x277D46DD8);
  v33 = sub_224DAEFF8();

  v34 = [v29 initWithExplanation:v32 target:v30 attributes:v33];

  aBlock = 0;
  v35 = [v34 acquireWithError_];
  v36 = aBlock;
  if (v35)
  {
    v88 = v31;
    v37 = *&a1[v85];
    *&a1[v85] = v34;
    v38 = v36;
    v39 = v34;

    aBlock = 0;
    v91 = 0xE000000000000000;
    sub_224DAF938();

    aBlock = 0x705B746567726154;
    v91 = 0xEB000000003D6469;
    v40 = [v30 description];
    v41 = sub_224DAEE18();
    v43 = v42;

    MEMORY[0x22AA5D210](v41, v43);

    MEMORY[0x22AA5D210](0xD000000000000018, 0x8000000224DCDAB0);
    v44 = objc_allocWithZone(MEMORY[0x277CF0BD8]);
    v45 = sub_224DAEDE8();

    v46 = [v44 initWithIdentifier_];

    v47 = *&a1[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue];
    v48 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    *(v49 + 24) = v30;
    v94 = sub_224CCBBD0;
    v95 = v49;
    aBlock = MEMORY[0x277D85DD0];
    v91 = 1107296256;
    v92 = sub_224A3837C;
    v93 = &block_descriptor_57;
    v50 = _Block_copy(&aBlock);
    v51 = v30;

    [v46 scheduleWithFireInterval:v47 leewayInterval:v50 queue:10.0 handler:1.0];
    _Block_release(v50);
    v52 = *&a1[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_runningAssertionExpirationTimer];
    *&a1[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_runningAssertionExpirationTimer] = v46;
    v53 = v46;

    if (qword_281351580 != -1)
    {
      swift_once();
    }

    v54 = sub_224DAB258();
    __swift_project_value_buffer(v54, qword_281364EC8);
    v55 = v51;
    v56 = a1;
    v57 = sub_224DAB228();
    v58 = sub_224DAF2A8();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v87 = v39;
      v60 = a4;
      v61 = v59;
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      aBlock = v63;
      *v61 = 136446466;
      *(v61 + 4) = sub_224A33F74(*&v56[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier], *&v56[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier + 8], &aBlock);
      *(v61 + 12) = 2114;
      *(v61 + 14) = v55;
      *v62 = v55;
      v64 = v55;
      _os_log_impl(&dword_224A2F000, v57, v58, "[%{public}s] Acquired runtime assertion for target: %{public}@", v61, 0x16u);
      sub_224A3311C(v62, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v62, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x22AA5EED0](v63, -1, -1);
      v65 = v61;
      a4 = v60;
      v39 = v87;
      MEMORY[0x22AA5EED0](v65, -1, -1);
    }

    (a2)(a4);
  }

  else
  {
    v66 = a1;
    v67 = aBlock;
    v68 = sub_224DA9528();

    swift_willThrow();
    if (qword_281351580 != -1)
    {
      swift_once();
    }

    v69 = sub_224DAB258();
    __swift_project_value_buffer(v69, qword_281364EC8);
    v70 = v30;
    v71 = v66;
    v72 = v68;
    v73 = sub_224DAB228();
    v74 = sub_224DAF288();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v87 = a4;
      v76 = v75;
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v88 = v31;
      v79 = v78;
      aBlock = v78;
      *v76 = 136446722;
      *(v76 + 4) = sub_224A33F74(*&v71[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier], *&v71[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier + 8], &aBlock);
      *(v76 + 12) = 2114;
      *(v76 + 14) = v70;
      *v77 = v70;
      *(v76 + 22) = 2114;
      v80 = v70;
      v81 = v68;
      v82 = _swift_stdlib_bridgeErrorToNSError();
      *(v76 + 24) = v82;
      v77[1] = v82;
      _os_log_impl(&dword_224A2F000, v73, v74, "[%{public}s] Unable to acquire runtime assertion for target: %{public}@ - error: %{public}@", v76, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F69F0, &unk_224DB3900);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v77, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v79);
      v83 = v79;
      v31 = v88;
      MEMORY[0x22AA5EED0](v83, -1, -1);
      v84 = v76;
      a4 = v87;
      MEMORY[0x22AA5EED0](v84, -1, -1);
    }

    (a2)(a4);
  }
}

uint64_t sub_224A78A08()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224A78A48(void *a1, uint64_t a2)
{
  v4 = sub_224DAE4F8();
  v82 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  isUniquelyReferenced_nonNull_native = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAB728();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v81 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v77 - v14;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
  v17 = MEMORY[0x28223BE20](v91, v16);
  v95 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v90 = &v77 - v21;
  MEMORY[0x28223BE20](v20, v22);
  v96 = &v77 - v23;
  v24 = *(a2 + OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__services);
  sub_224A3317C(v24 + 96, v103);
  __swift_project_boxed_opaque_existential_1(v103, v104);
  v25 = sub_224DACA48();
  if (v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = MEMORY[0x277D84FA0];
  }

  __swift_destroy_boxed_opaque_existential_1(v103);
  sub_224A7E76C(v26, v27);
  v80 = v28;

  v79 = v24;
  sub_224A3317C(v24 + 136, v100);
  v29 = v101;
  v30 = v102;
  __swift_project_boxed_opaque_existential_1(v100, v101);
  (*(v30 + 32))(v103, 769, v29, v30);
  v83 = a1;
  if (!v105)
  {
    __swift_destroy_boxed_opaque_existential_1(v100);
    sub_224A3311C(v103, &qword_27D6F50E0, &qword_224DB41A0);
    goto LABEL_29;
  }

  v31 = sub_224A86CAC();
  sub_224A699F0(v103);
  if (!v31)
  {
    __swift_destroy_boxed_opaque_existential_1(v100);
LABEL_29:
    sub_224A876C0(MEMORY[0x277D84F90]);
LABEL_30:
    sub_224A3317C(v79 + 56, v103);
    __swift_project_boxed_opaque_existential_1(v103, v104);
    sub_224DADA68();
    __swift_project_boxed_opaque_existential_1(v100, v101);
    sub_224DAD168();
    __swift_destroy_boxed_opaque_existential_1(v100);
    __swift_destroy_boxed_opaque_existential_1(v103);
    sub_224DA9508();
    swift_allocObject();
    sub_224DA94F8();
    (*(v9 + 16))(v81, v15, v8);
    sub_224DAE4D8();
    sub_224A7940C(&qword_281350C60, MEMORY[0x277CE3AB8], MEMORY[0x277CE3AC0]);
    v68 = sub_224DA94E8();
    v70 = v69;
    (*(v82 + 8))(isUniquelyReferenced_nonNull_native, v4);

    v71 = objc_allocWithZone(MEMORY[0x277D7BC18]);
    sub_224A77FD0(v68, v70);
    sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
    sub_224A87A80();
    v72 = sub_224DAF1A8();

    sub_224A3B79C(0, &qword_281350958, 0x277CFA360);
    v73 = sub_224DAECC8();

    v74 = sub_224DA96B8();
    v75 = [v71 initWithExtensions:v72 configurations:v73 systemEnvironment:v74];

    sub_224A78024(v68, v70);
    [v83 initializeConnection_];

    sub_224A78024(v68, v70);
    return (*(v9 + 8))(v15, v8);
  }

  v77 = v9;
  v78 = v8;
  v32 = sub_224A876C0(MEMORY[0x277D84F90]);
  v33 = v31 + 8;
  v34 = 1 << *(v31 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v31[8];
  v37 = (v34 + 63) >> 6;

  v38 = 0;
  v88 = v15;
  v87 = v4;
  v89 = isUniquelyReferenced_nonNull_native;
  v85 = v31 + 8;
  v84 = v37;
  v86 = v31;
  while (v36)
  {
    v94 = v32;
LABEL_17:
    v42 = __clz(__rbit64(v36)) | (v38 << 6);
    v43 = v31[6];
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    v45 = *(v44 - 8);
    v46 = v96;
    (*(v45 + 16))(v96, v43 + *(v45 + 72) * v42, v44);
    v47 = *(v31[7] + 8 * v42);
    v48 = v91;
    *(v46 + *(v91 + 48)) = v47;
    v49 = v90;
    sub_224A3796C(v46, v90, &qword_27D6F38A8, &unk_224DB4650);
    v50 = *(v49 + *(v48 + 48));
    v51 = v47;

    sub_224A33088(&qword_281351868, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA028]);
    sub_224DAEFA8();
    v52 = v98;
    v4 = v99;
    v92 = *(v45 + 8);
    v92(v49, v44);
    v53 = v95;
    sub_224A3796C(v46, v95, &qword_27D6F38A8, &unk_224DB4650);
    v93 = *(v53 + *(v48 + 48));
    v54 = v94;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v97 = v54;
    v56 = sub_224A3A40C(v52, v4);
    v57 = v54[2];
    v58 = (v55 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      goto LABEL_32;
    }

    v60 = v55;
    if (v54[3] >= v59)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_224B28008();
      }
    }

    else
    {
      sub_224A87A6C(v59, isUniquelyReferenced_nonNull_native);
      v61 = sub_224A3A40C(v52, v4);
      if ((v60 & 1) != (v62 & 1))
      {
        goto LABEL_34;
      }

      v56 = v61;
    }

    isUniquelyReferenced_nonNull_native = v89;
    if (v60)
    {

      v32 = v97;
      v39 = v97[7];
      v40 = *(v39 + 8 * v56);
      *(v39 + 8 * v56) = v93;

      sub_224A3311C(v96, &qword_27D6F38A8, &unk_224DB4650);
    }

    else
    {
      v63 = v96;
      v32 = v97;
      v97[(v56 >> 6) + 8] |= 1 << v56;
      v64 = (v32[6] + 16 * v56);
      *v64 = v52;
      v64[1] = v4;
      *(v32[7] + 8 * v56) = v93;
      sub_224A3311C(v63, &qword_27D6F38A8, &unk_224DB4650);
      v65 = v32[2];
      v66 = __OFADD__(v65, 1);
      v67 = v65 + 1;
      if (v66)
      {
        goto LABEL_33;
      }

      v32[2] = v67;
    }

    v36 &= v36 - 1;
    v92(v95, v44);
    v15 = v88;
    v4 = v87;
    v31 = v86;
    v33 = v85;
    v37 = v84;
  }

  while (1)
  {
    v41 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v41 >= v37)
    {

      __swift_destroy_boxed_opaque_existential_1(v100);
      v8 = v78;
      v9 = v77;
      goto LABEL_30;
    }

    v36 = v33[v41];
    ++v38;
    if (v36)
    {
      v94 = v32;
      v38 = v41;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  sub_224DAFDD8();
  __break(1u);
  (*(v82 + 8))(isUniquelyReferenced_nonNull_native, v4);

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_224A7940C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224A79454(uint64_t a1, _BYTE *a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v105 = a5;
  v106 = a4;
  v98 = a3;
  v102 = sub_224DAE6C8();
  v101 = *(v102 - 1);
  MEMORY[0x28223BE20](v102, v7);
  v100 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_224DAC268();
  v109 = *(v116 - 8);
  v10 = MEMORY[0x28223BE20](v116, v9);
  v99 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v95 - v14;
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v95 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v103 = &v95 - v21;
  v22 = sub_224DAB258();
  v107 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22, v23);
  v26 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = &v95 - v29;
  MEMORY[0x28223BE20](v28, v31);
  v104 = &v95 - v32;
  v33 = a1;
  swift_getObjectType();
  v34 = v108;
  sub_224DAC418();
  if (!v34)
  {
    v95 = v19;
    v96 = v30;
    v97 = v26;
    v103 = v15;
    v51 = v107;
    v104 = 0;
    sub_224A36F98(&v112, v115);
    __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_extensionManager), *(a1 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_extensionManager + 24));
    v105 = a2;
    v52 = sub_224DAC248();
    v53 = [v52 extensionIdentity];

    sub_224DAC6D8();
    if (v111)
    {
      sub_224A36F98(&v110, &v112);
      __swift_project_boxed_opaque_existential_1(v115, v115[3]);
      v54 = v100;
      sub_224DAEAA8();
      v55 = sub_224DAE6B8();
      v57 = v56;
      (*(v101 + 8))(v54, v102);
      __swift_project_boxed_opaque_existential_1(&v112, *(&v113 + 1));
      v58 = sub_224DAE398();
      v60 = v109;
      if (v55 == v58 && v57 == v59)
      {

        v61 = v51;
LABEL_12:
        v65 = *(v61 + 16);
        v66 = v96;
        v108 = v22;
        v65(v96, v33 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v22);
        v67 = v95;
        v68 = v116;
        v107 = *(v60 + 16);
        (v107)(v95, v105, v116);
        v69 = sub_224DAB228();
        v70 = sub_224DAF268();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = v67;
          v106 = swift_slowAlloc();
          *&v110 = v106;
          *v71 = 136446210;
          sub_224A79F60(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
          v73 = sub_224DAFD28();
          v74 = v61;
          v76 = v75;
          (*(v60 + 8))(v72, v116);
          v77 = sub_224A33F74(v73, v76, &v110);

          *(v71 + 4) = v77;
          _os_log_impl(&dword_224A2F000, v69, v70, "%{public}s Cache hit", v71, 0xCu);
          v78 = v106;
          __swift_destroy_boxed_opaque_existential_1(v106);
          MEMORY[0x22AA5EED0](v78, -1, -1);
          v79 = v71;
          v68 = v116;
          MEMORY[0x22AA5EED0](v79, -1, -1);

          (*(v74 + 8))(v96, v108);
        }

        else
        {

          (*(v60 + 8))(v67, v68);
          (*(v61 + 8))(v66, v108);
        }

        v80 = v103;
        (v107)(v103, v105, v68);
        sub_224A3317C(v115, &v110);
        sub_224A61F30(&v110, v80);
        __swift_destroy_boxed_opaque_existential_1(&v112);
        return __swift_destroy_boxed_opaque_existential_1(v115);
      }

      v64 = sub_224DAFD88();

      v61 = v51;
      if (v64)
      {
        goto LABEL_12;
      }

      __swift_destroy_boxed_opaque_existential_1(&v112);
      v63 = v116;
    }

    else
    {
      sub_224A3311C(&v110, &unk_27D6F4700, &unk_224DB3A10);
      v61 = v51;
      v63 = v116;
      v60 = v109;
    }

    v81 = v97;
    (*(v61 + 16))(v97, v33 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v22);
    v82 = v99;
    (*(v60 + 16))(v99, v105, v63);
    v83 = sub_224DAB228();
    v84 = sub_224DAF2A8();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v108 = v22;
      v86 = v63;
      v87 = v85;
      v88 = swift_slowAlloc();
      *&v112 = v88;
      *v87 = 136446210;
      sub_224A79F60(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
      v89 = sub_224DAFD28();
      v90 = v82;
      v91 = v61;
      v93 = v92;
      (*(v60 + 8))(v90, v86);
      v94 = sub_224A33F74(v89, v93, &v112);

      *(v87 + 4) = v94;
      _os_log_impl(&dword_224A2F000, v83, v84, "%{public}s Cache miss for extension bundle version difference (or extension didn't exist)", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v88);
      MEMORY[0x22AA5EED0](v88, -1, -1);
      MEMORY[0x22AA5EED0](v87, -1, -1);

      (*(v91 + 8))(v97, v108);
    }

    else
    {

      (*(v60 + 8))(v82, v63);
      (*(v61 + 8))(v81, v22);
    }

    *v106 = 1;
    return __swift_destroy_boxed_opaque_existential_1(v115);
  }

  v114 = 0;
  v112 = 0u;
  v113 = 0u;
  sub_224A3311C(&v112, &unk_27D6F3CB0, &unk_224DB7860);
  v35 = v107;
  v36 = v104;
  (*(v107 + 16))(v104, a1 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v22);
  v37 = v109;
  v38 = v103;
  v39 = v116;
  (*(v109 + 16))(v103, a2, v116);
  v40 = sub_224DAB228();
  v41 = sub_224DAF268();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = v39;
    v43 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v115[0] = v102;
    *v43 = 136446210;
    sub_224A79F60(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
    LODWORD(v101) = v41;
    v44 = sub_224DAFD28();
    v108 = v22;
    v45 = v35;
    v47 = v46;
    (*(v37 + 8))(v38, v42);
    v48 = sub_224A33F74(v44, v47, v115);

    *(v43 + 4) = v48;
    _os_log_impl(&dword_224A2F000, v40, v101, "%{public}s Cache miss", v43, 0xCu);
    v49 = v102;
    __swift_destroy_boxed_opaque_existential_1(v102);
    MEMORY[0x22AA5EED0](v49, -1, -1);
    MEMORY[0x22AA5EED0](v43, -1, -1);

    result = (*(v45 + 8))(v36, v108);
  }

  else
  {

    (*(v37 + 8))(v38, v39);
    result = (*(v35 + 8))(v36, v22);
  }

  v62 = v105;
  *v106 = 1;
  *v62 = 1;
  return result;
}

uint64_t sub_224A79F60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224A79FA8(uint64_t a1)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F34A0, &unk_224DB3A20);
  v3 = MEMORY[0x28223BE20](v57, v2);
  v56 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v55 = &v50 - v6;
  v7 = *(a1 + 64);
  v52 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v7;
  v51 = (v8 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  v54 = a1;
  while (v10)
  {
    v14 = v13;
LABEL_11:
    v62 = v10;
    v16 = __clz(__rbit64(v10)) | (v12 << 6);
    v17 = *(a1 + 48);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    v19 = *(v18 - 8);
    v20 = v55;
    (*(v19 + 16))(v55, v17 + *(v19 + 72) * v16, v18);
    v21 = *(*(a1 + 56) + 8 * v16);
    v23 = v56;
    v22 = v57;
    *(v20 + *(v57 + 48)) = v21;
    sub_224A7B960(v20, v23);
    v24 = *(v23 + *(v22 + 48));
    v25 = *(v24 + *(*v24 + 104));

    v26 = v25;

    v27 = [v26 containerDescriptors];

    v59 = sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
    v28 = sub_224DAF008();

    v29 = v28;
    (*(v19 + 8))(v23, v18);
    sub_224A3311C(v20, &qword_27D6F34A0, &unk_224DB3A20);
    v30 = v28 >> 62;
    v31 = v29;
    if (v30)
    {
      v32 = sub_224DAF838();
    }

    else
    {
      v32 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v14;
    v33 = v14 >> 62;
    v34 = v62;
    if (v14 >> 62)
    {
      result = sub_224DAF838();
    }

    else
    {
      result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v60 = v32;
    v35 = __OFADD__(result, v32);
    v36 = result + v32;
    if (v35)
    {
      goto LABEL_41;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v33)
      {
LABEL_22:
        sub_224DAF838();
        v38 = v31;
      }

      else
      {
        v38 = v31;
      }

LABEL_23:
      result = sub_224DAF968();
      v13 = result;
      v37 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_24;
    }

    if (v33)
    {
      goto LABEL_22;
    }

    v37 = v14 & 0xFFFFFFFFFFFFFF8;
    v38 = v31;
    if (v36 > *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_23;
    }

LABEL_24:
    v39 = *(v37 + 16);
    v40 = *(v37 + 24);
    if (v30)
    {
      v42 = v37;
      result = sub_224DAF838();
      v37 = v42;
      v41 = result;
    }

    else
    {
      v41 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = (v34 - 1) & v34;
    if (v41)
    {
      if (((v40 >> 1) - v39) < v60)
      {
        goto LABEL_43;
      }

      v43 = v37 + 8 * v39 + 32;
      v58 = v13;
      v62 = v10;
      v53 = v37;
      if (v30)
      {
        if (v41 < 1)
        {
          goto LABEL_45;
        }

        sub_224A33088(&qword_281350B60, &qword_27D6F34A8, &qword_224DB3A30, MEMORY[0x277D83988]);
        for (i = 0; i != v41; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F34A8, &qword_224DB3A30);
          v45 = sub_224A6996C(v61, i, v38);
          v47 = *v46;
          (v45)(v61, 0);
          *(v43 + 8 * i) = v47;
        }
      }

      else
      {
        swift_arrayInitWithCopy();
      }

      a1 = v54;
      v13 = v58;
      v10 = v62;
      if (v60 >= 1)
      {
        v48 = *(v53 + 16);
        v35 = __OFADD__(v48, v60);
        v49 = v48 + v60;
        if (v35)
        {
          goto LABEL_44;
        }

        *(v53 + 16) = v49;
      }
    }

    else
    {

      a1 = v54;
      if (v60 > 0)
      {
        goto LABEL_42;
      }
    }
  }

  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v15 >= v51)
    {

      return v13;
    }

    v10 = *(v52 + 8 * v15);
    ++v12;
    if (v10)
    {
      v14 = v13;
      v12 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

void *sub_224A7A514(unsigned int a1)
{
  v2 = a1;
  v3 = a1 >> 8;
  v4 = *(v1 + qword_28135C9F0);
  os_unfair_lock_lock(*(v4 + 16));
  swift_beginAccess();
  v12 = v1;
  v13 = v2;
  v14 = v3;

  v6 = sub_224A7A628(v5, sub_224A7A9FC, &v11);

  if (v6[2])
  {
    v7 = sub_224A7AA1C(v6);

    v8 = sub_224A7B1DC(v7);
    os_unfair_lock_unlock(*(v4 + 16));
    if (v8)
    {
      v9 = sub_224A7AE9C(v8);

      return v9;
    }
  }

  else
  {

    os_unfair_lock_unlock(*(v4 + 16));
  }

  return 0;
}

void *sub_224A7A628(uint64_t a1, uint64_t (*a2)(char *, uint64_t), uint64_t a3)
{
  v4 = v3;
  v6 = a1;
  v19[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = (1 << v7) + 63;
  v10 = v9 >> 6;
  v11 = 8 * (v9 >> 6);
  if (v8 <= 0xD)
  {
    goto LABEL_2;
  }

  v15 = 8 * (v9 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v11 = v15;
LABEL_2:
    MEMORY[0x28223BE20](a1, v11);
    v13 = v19 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = sub_224A7A7A8(v13, v10, v6, a2);
    if (v4)
    {
      return swift_willThrow();
    }

    return result;
  }

  v16 = swift_slowAlloc();
  v17 = v4;
  v18 = sub_224CB34D4(v16, v10, v6, a2);
  result = MEMORY[0x22AA5EED0](v16, -1, -1);
  if (!v17)
  {
    return v18;
  }

  return result;
}

uint64_t sub_224A7A7A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t))
{
  v26 = a2;
  v35 = a4;
  v27 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  result = MEMORY[0x28223BE20](v34, v5);
  v32 = &v26 - v8;
  v33 = v7;
  v9 = 0;
  v36 = a3;
  v10 = *(a3 + 64);
  v28 = 0;
  v29 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v30 = v7 + 8;
  v31 = v7 + 16;
  v15 = v32;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v37 = (v13 - 1) & v13;
LABEL_11:
    v19 = v16 | (v9 << 6);
    v20 = v36;
    v21 = v33;
    v22 = v34;
    (*(v33 + 16))(v15, v36[6] + *(v33 + 72) * v19, v34);
    v23 = v19;
    v24 = *(v20[7] + 8 * v19);

    LOBYTE(v19) = v35(v15, v24);

    result = (*(v21 + 8))(v15, v22);
    v13 = v37;
    if (v19)
    {
      *(v27 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
        return sub_224A7AA08(v27, v26, v28, v36);
      }
    }
  }

  v17 = v9;
  while (1)
  {
    v9 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      return sub_224A7AA08(v27, v26, v28, v36);
    }

    v18 = *(v29 + 8 * v9);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v37 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224A7AA1C(uint64_t a1)
{
  v48 = sub_224DAA428();
  v3 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v4);
  v47 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v6 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v7);
  v45 = &v36 - v8;
  v9 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v36 = v1;
    v51 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v11 = a1 + 64;
    result = sub_224DAF798();
    v12 = result;
    v13 = 0;
    v50 = *(a1 + 36);
    v42 = (v3 + 16);
    v43 = (v6 + 16);
    v40 = (v3 + 32);
    v41 = (v6 + 32);
    v37 = a1 + 72;
    v38 = a1 + 64;
    v44 = a1;
    v39 = v9;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v11 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_21;
      }

      if (v50 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v49 = v13;
      v16 = *(*(a1 + 56) + 8 * v12);
      v18 = v45;
      v17 = v46;
      (*v43)(v45, v16 + qword_281365430, v46);
      v19 = *(*v16 + 104);
      swift_beginAccess();
      v20 = *(v16 + v19);
      v21 = *(*v16 + 112);
      swift_beginAccess();
      v22 = v16 + v21;
      v23 = v47;
      v24 = v48;
      (*v42)(v47, v22, v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F40A8, &qword_224DB5688);
      v25 = swift_allocObject();
      v26 = v17;
      a1 = v44;
      (*v41)(v25 + qword_281365418, v18, v26);
      *(v25 + *(*v25 + 104)) = v20;
      (*v40)(v25 + *(*v25 + 112), v23, v24);
      v27 = v20;
      sub_224DAF9B8();
      sub_224DAF9F8();
      sub_224DAFA08();
      result = sub_224DAF9C8();
      v14 = 1 << *(a1 + 32);
      if (v12 >= v14)
      {
        goto LABEL_23;
      }

      v11 = v38;
      v28 = v39;
      v29 = *(v38 + 8 * v15);
      if ((v29 & (1 << v12)) == 0)
      {
        goto LABEL_24;
      }

      if (v50 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v30 = v29 & (-2 << (v12 & 0x3F));
      if (v30)
      {
        v14 = __clz(__rbit64(v30)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v31 = v15 << 6;
        v32 = v15 + 1;
        v33 = (v37 + 8 * v15);
        while (v32 < (v14 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            result = sub_224A3E204(v12, v50, 0);
            v14 = __clz(__rbit64(v34)) + v31;
            goto LABEL_4;
          }
        }

        result = sub_224A3E204(v12, v50, 0);
      }

LABEL_4:
      v13 = v49 + 1;
      v12 = v14;
      if (v49 + 1 == v28)
      {
        return v51;
      }
    }

    __break(1u);
LABEL_21:
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

void *sub_224A7AE9C(unint64_t a1)
{
  isUniquelyReferenced_nonNull_native = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v30 = *(isUniquelyReferenced_nonNull_native - 8);
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native, v3);
  v35 = &v29 - v4;
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
  {
    v6 = 0;
    v29 = a1 & 0xFFFFFFFFFFFFFF8;
    v33 = a1 & 0xC000000000000001;
    v34 = (v30 + 16);
    v32 = (v30 + 8);
    v7 = MEMORY[0x277D84F98];
    v31 = a1;
    while (v33)
    {
      v8 = MEMORY[0x22AA5DCC0](v6, a1);
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_21;
      }

LABEL_12:
      v10 = v35;
      a1 = *v34;
      v11 = isUniquelyReferenced_nonNull_native;
      (*v34)(v35, v8 + qword_281365418, isUniquelyReferenced_nonNull_native);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v7;
      v12 = sub_224A683FC(v10);
      v14 = v7[2];
      v15 = (v13 & 1) == 0;
      v16 = __OFADD__(v14, v15);
      v17 = v14 + v15;
      if (v16)
      {
        goto LABEL_22;
      }

      v18 = v13;
      if (v7[3] >= v17)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v27 = v12;
          sub_224B250B4();
          v12 = v27;
        }
      }

      else
      {
        sub_224A7B1F4(v17, isUniquelyReferenced_nonNull_native);
        v12 = sub_224A683FC(v35);
        if ((v18 & 1) != (v19 & 1))
        {
          result = sub_224DAFDD8();
          __break(1u);
          return result;
        }
      }

      isUniquelyReferenced_nonNull_native = v11;
      v7 = v36;
      if (v18)
      {
        *(v36[7] + 8 * v12) = v8;

        (*v32)(v35, v11);
      }

      else
      {
        v36[(v12 >> 6) + 8] |= 1 << v12;
        v20 = v30;
        v21 = v12;
        v22 = isUniquelyReferenced_nonNull_native;
        v23 = v35;
        (a1)(v7[6] + *(v30 + 72) * v12, v35, v22);
        *(v7[7] + 8 * v21) = v8;

        v24 = v23;
        isUniquelyReferenced_nonNull_native = v22;
        (*(v20 + 8))(v24, v22);
        v25 = v7[2];
        v16 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v16)
        {
          goto LABEL_23;
        }

        v7[2] = v26;
      }

      ++v6;
      a1 = v31;
      if (v9 == i)
      {
        return v7;
      }
    }

    if (v6 >= *(v29 + 16))
    {
      goto LABEL_24;
    }

    v8 = *(a1 + 8 * v6 + 32);

    v9 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_12;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  return MEMORY[0x277D84F98];
}

uint64_t sub_224A7B208(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v39 = v6;
  v40 = v2;
  v37 = result;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v10 >= v6)
        {
          goto LABEL_38;
        }

        v5 = *(v2 + 8 * v10);
        ++v8;
        if (v5)
        {
          v8 = v10;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      return result;
    }

LABEL_10:
    v11 = *(*(v1 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    v12 = *(v11 + *(*v11 + 104));

    v13 = [v12 controlItems];
    sub_224DAF5D8();
    v14 = sub_224DAF008();

    v15 = v14 >> 62;
    v16 = v14;
    v17 = v14 >> 62 ? sub_224DAF838() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = v9 >> 62;
    if (v9 >> 62)
    {
      break;
    }

    v19 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v19 + v17;
    if (__OFADD__(v19, v17))
    {
      goto LABEL_37;
    }

LABEL_14:
    v42 = v17;
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v18)
      {
        v21 = v9 & 0xFFFFFFFFFFFFFF8;
        if (v20 <= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v41 = v9;
          v22 = v16;
          v23 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v24 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (!v15)
          {
            goto LABEL_23;
          }

          goto LABEL_18;
        }

LABEL_20:
        v22 = v16;
        goto LABEL_22;
      }
    }

    else if (!v18)
    {
      goto LABEL_20;
    }

    sub_224DAF838();
    v22 = v16;
LABEL_22:
    v41 = sub_224DAF968();
    v21 = v41 & 0xFFFFFFFFFFFFFF8;
    v23 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (!v15)
    {
LABEL_23:
      result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_24;
    }

LABEL_18:
    v25 = v21;
    result = sub_224DAF838();
    v21 = v25;
LABEL_24:
    v5 &= v5 - 1;
    if (result)
    {
      if (((v24 >> 1) - v23) < v42)
      {
        goto LABEL_41;
      }

      v26 = v21 + 8 * v23 + 32;
      v38 = v21;
      if (v15)
      {
        if (result < 1)
        {
          goto LABEL_43;
        }

        v44 = result;
        sub_224A33088(&qword_27D6F4068, &qword_27D6F4060, &unk_224DC1AA0, MEMORY[0x277D83988]);
        v27 = 0;
        v28 = v16;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4060, &unk_224DC1AA0);
          v29 = sub_224A6996C(v43, v27, v28);
          v31 = *v30;
          (v29)(v43, 0);
          *(v26 + 8 * v27++) = v31;
        }

        while (v44 != v27);
      }

      else
      {
        swift_arrayInitWithCopy();
      }

      v9 = v41;
      v1 = v37;
      v6 = v39;
      v2 = v40;
      if (v42 >= 1)
      {
        v32 = *(v38 + 16);
        v33 = __OFADD__(v32, v42);
        v34 = v32 + v42;
        if (v33)
        {
          goto LABEL_42;
        }

        *(v38 + 16) = v34;
      }
    }

    else
    {

      v9 = v41;
      v6 = v39;
      v2 = v40;
      if (v42 > 0)
      {
        goto LABEL_40;
      }
    }
  }

  v35 = v17;
  v36 = sub_224DAF838();
  v17 = v35;
  v33 = __OFADD__(v36, v35);
  v20 = v36 + v35;
  if (!v33)
  {
    goto LABEL_14;
  }

LABEL_37:
  __break(1u);
LABEL_38:

  return v9;
}

unint64_t sub_224A7B5CC(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AA5DCC0](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject widgets];
      sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
      v8 = sub_224DAF008();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_224DAF838();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF838();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_224DAF838();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF968();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF838();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_224A33088(&qword_281350B68, &qword_27D6F4040, &qword_224DB8D20, MEMORY[0x277D83988]);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4040, &qword_224DB8D20);
              v19 = sub_224A6996C(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_224DAF838();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_224A7B960(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F34A0, &unk_224DB3A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_224A7B9D0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v44 = a3;
  v7 = sub_224DAB258();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v39 - v14;
  LOBYTE(v47) = 0;
  v16 = *(v8 + 16);
  v42 = OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger;
  v43 = v16;
  v16(&v39 - v14, v4 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v7);
  v17 = a1;
  v18 = sub_224DAB228();
  v19 = sub_224DAF268();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v41 = v12;
    v21 = v20;
    v22 = swift_slowAlloc();
    v40 = a2;
    v23 = v22;
    *v21 = 138543362;
    *(v21 + 4) = v17;
    *v22 = v17;
    v24 = v17;
    _os_log_impl(&dword_224A2F000, v18, v19, "%{public}@ Trying cache", v21, 0xCu);
    sub_224A3311C(v23, &unk_27D6F69F0, &unk_224DB3900);
    v25 = v23;
    a2 = v40;
    MEMORY[0x22AA5EED0](v25, -1, -1);
    v26 = v21;
    v12 = v41;
    MEMORY[0x22AA5EED0](v26, -1, -1);
  }

  v27 = *(v8 + 8);
  v27(v15, v7);
  v46 = sub_224A60D5C(MEMORY[0x277D84F90]);
  if (sub_224A87AE8(v17, v44))
  {
    v28 = *(a2 + 16);
    if (v28)
    {
      v29 = *(sub_224DAC268() - 8);
      v30 = (a2 + ((*(v29 + 80) + 32) & ~*(v29 + 80)));
      v31 = *(v29 + 72);
      v32 = v28 - 1;
      do
      {
        v33 = v32;
        v45 = 0;
        v34 = MEMORY[0x22AA5E4C0]();
        sub_224A79454(v4, v30, &v46, &v47, &v45);
        objc_autoreleasePoolPop(v34);
        if (v45)
        {
          break;
        }

        v32 = v33 - 1;
        v30 += v31;
      }

      while (v33);
    }
  }

  else
  {
    LOBYTE(v47) = 1;
    v43(v12, v4 + v42, v7);
    v35 = sub_224DAB228();
    v36 = sub_224DAF268();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_224A2F000, v35, v36, "Cache should not be consulted", v37, 2u);
      MEMORY[0x22AA5EED0](v37, -1, -1);
    }

    v27(v12, v7);
  }

  return (v47 & 1) == 0;
}

uint64_t sub_224A7BD70(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v83 = a4;
  v84 = a5;
  v85 = a3;
  v8 = sub_224DAE6E8();
  v78 = *(v8 - 8);
  v79 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v77 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DACB98();
  v75 = *(v11 - 8);
  v76 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v74 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DACC88();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v82 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_224DAB258();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v73 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v68 - v24;
  v26 = *(a2 + 16);
  if (v26)
  {
    v69 = v5;
    v70 = a1;
    v71 = v15;
    v27 = v14;
    v80 = &v68 - v24;
    v81 = v18;
    v72 = v19;
    v28 = sub_224A61A78(v26, 0);
    v29 = *(sub_224DAC268() - 8);
    v30 = sub_224A61B9C(&v86, &v28[(*(v29 + 80) + 32) & ~*(v29 + 80)], v26, a2);
    v31 = v86;

    result = sub_224A3B7E4(v31);
    if (v30 != v26)
    {
      __break(1u);
      return result;
    }

    v25 = v80;
    v18 = v81;
    v15 = v71;
    v19 = v72;
    v14 = v27;
    a1 = v70;
    v5 = v69;
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  v33 = v85;
  v34 = sub_224A7B9D0(a1, v28, v85);
  v36 = v82;
  if (v34)
  {
    v79 = v35;

    (*(v19 + 16))(v25, v5 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v18);
    (*(v15 + 16))(v36, v33, v14);
    v37 = a1;
    v38 = v25;
    v39 = sub_224DAB228();
    v40 = sub_224DAF268();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v81 = v18;
      v42 = v41;
      v43 = swift_slowAlloc();
      v78 = v43;
      v85 = swift_slowAlloc();
      v86 = v85;
      *v42 = 138543618;
      *(v42 + 4) = v37;
      *v43 = v37;
      *(v42 + 12) = 2082;
      v44 = v37;
      v45 = v74;
      v80 = v38;
      LODWORD(v77) = v40;
      sub_224DACC68();
      sub_224A79F60(&unk_281350D28, MEMORY[0x277CF9BF8], MEMORY[0x277CF9C00]);
      v46 = v14;
      v47 = v36;
      v48 = v76;
      v49 = sub_224DAFD28();
      v50 = v19;
      v52 = v51;
      (*(v75 + 8))(v45, v48);
      (*(v15 + 8))(v47, v46);
      v53 = sub_224A33F74(v49, v52, &v86);

      *(v42 + 14) = v53;
      _os_log_impl(&dword_224A2F000, v39, v77, "%{public}@ Fetched from cache for %{public}s", v42, 0x16u);
      v54 = v78;
      sub_224A3311C(v78, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v54, -1, -1);
      v55 = v85;
      __swift_destroy_boxed_opaque_existential_1(v85);
      MEMORY[0x22AA5EED0](v55, -1, -1);
      MEMORY[0x22AA5EED0](v42, -1, -1);

      (*(v50 + 8))(v80, v81);
    }

    else
    {

      (*(v15 + 8))(v36, v14);
      (*(v19 + 8))(v38, v18);
    }

    v83(v79, 0);

    return 0;
  }

  if ([a1 isRemote])
  {

    v56 = v19;
    v57 = v73;
    (*(v19 + 16))(v73, v5 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v18);
    v58 = a1;
    v59 = sub_224DAB228();
    v60 = sub_224DAF268();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = v18;
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138543362;
      *(v62 + 4) = v58;
      *v63 = v58;
      v64 = v58;
      _os_log_impl(&dword_224A2F000, v59, v60, "%{public}@ Failed to fetch from cache", v62, 0xCu);
      sub_224A3311C(v63, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v63, -1, -1);
      v65 = v62;
      v18 = v61;
      MEMORY[0x22AA5EED0](v65, -1, -1);
    }

    (*(v56 + 8))(v57, v18);
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (v78[13])(v77, *MEMORY[0x277CE3BF0], v79);
    v66 = sub_224DAF638();
    v83(v66, 1);

    return 0;
  }

  v67 = (*(*v5 + 176))(a1, v28, v85, v83, v84);

  return v67;
}

void sub_224A7C56C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock);
  os_unfair_lock_lock(v1 + 4);
  sub_224A7D63C();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_224A7C5F0(uint64_t a1@<X0>, void *a2@<X1>, void (**a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v138 = a4;
  v144 = a3;
  v136 = a5;
  v119 = sub_224DACB08();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119, v7);
  v120 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_224DACB28();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126, v9);
  v127 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F61E0, &unk_224DBE988);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v117 = &v109 - v13;
  v133 = sub_224DAE4F8();
  v141 = *(v133 - 8);
  MEMORY[0x28223BE20](v133, v14);
  v132 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_224DAB728();
  v140 = *(v131 - 8);
  MEMORY[0x28223BE20](v131, v16);
  v130 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_224DAE928();
  v135 = *(v150 - 8);
  v19 = MEMORY[0x28223BE20](v150, v18);
  v143 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v145 = &v109 - v22;
  v23 = sub_224DACB98();
  v24 = *(v23 - 8);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v116 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v109 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  MEMORY[0x28223BE20](v31 - 8, v32);
  v34 = &v109 - v33;
  swift_beginAccess();
  sub_224A7D664(a2);
  swift_endAccess();
  swift_beginAccess();
  v114 = a1;
  v113 = a2;
  sub_224B0E020(a2, v34);
  sub_224A3311C(v34, &qword_27D6F3948, &qword_224DB5C10);
  swift_endAccess();
  v35 = sub_224DACC88();
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v115 = v35;
  v122 = v37;
  v121 = v36 + 56;
  (v37)(v136, 1, 1);
  sub_224DACC68();
  LODWORD(a1) = (*(v24 + 88))(v30, v23);
  v38 = *MEMORY[0x277CF9BF0];
  v123 = v24;
  v39 = *(v24 + 8);
  v124 = v23;
  v39(v30, v23);
  if (a1 != v38)
  {
    return;
  }

  v40 = v138;
  v41 = v138 + 64;
  v42 = 1 << *(v138 + 32);
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  else
  {
    v43 = -1;
  }

  v44 = v43 & *(v138 + 64);
  v45 = (v42 + 63) >> 6;
  v129 = *MEMORY[0x277CE3D90];
  v46 = v135;
  v128 = (v135 + 104);
  v142 = v135 + 16;
  v144 = (v135 + 8);
  v112 = (v140 + 8);
  v111 = (v141 + 8);

  v47 = 0;
  v48 = v150;
  v110 = v41;
  v109 = v45;
  while (v44)
  {
LABEL_11:
    v50 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    v51 = *(*(v40 + 56) + ((v47 << 9) | (8 * v50)));
    sub_224DABE68();
    if (v147)
    {
      sub_224A39D14(&v146, &v148);
      __swift_project_boxed_opaque_existential_1(&v148, v149);
      v52 = sub_224DAEA98();
      v53 = v145;
      (*v128)(v145, v129, v48);
      v54 = *(v52 + 16);
      v134 = v51;
      if (v54)
      {
        sub_224CFEA04(&qword_281350C20, MEMORY[0x277CE3DA0], MEMORY[0x277CE3DA8]);
        v55 = sub_224DAED88();
        v56 = -1 << *(v52 + 32);
        v57 = v55 & ~v56;
        v141 = v52 + 56;
        if ((*(v52 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
        {
          v139 = ~v56;
          v140 = *(v46 + 72);
          v58 = *(v46 + 16);
          while (1)
          {
            v59 = v52;
            v60 = *(v52 + 48) + v140 * v57;
            v61 = v143;
            v62 = v150;
            v58(v143, v60, v150);
            sub_224CFEA04(&qword_281350C18, MEMORY[0x277CE3DA0], MEMORY[0x277CE3DB0]);
            v63 = sub_224DAEDD8();
            v64 = *v144;
            (*v144)(v61, v62);
            if (v63)
            {
              break;
            }

            v57 = (v57 + 1) & v139;
            v53 = v145;
            v52 = v59;
            if (((*(v141 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          v64(v145, v150);
          v89 = v113;
          v90 = sub_224DAB228();
          v91 = sub_224DAF2A8();

          if (os_log_type_enabled(v90, v91))
          {
            v92 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            *v92 = 138543362;
            *(v92 + 4) = v89;
            *v93 = v89;
            v94 = v89;
            _os_log_impl(&dword_224A2F000, v90, v91, "%{public}@ Placeholder will reload since it is stale", v92, 0xCu);
            sub_224A3311C(v93, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v93, -1, -1);
            MEMORY[0x22AA5EED0](v92, -1, -1);
          }

          v95 = v136;
          goto LABEL_63;
        }
      }

LABEL_17:

      v48 = v150;
      (*v144)(v53, v150);
      v65 = v134;
      sub_224DABE38();
      __swift_project_boxed_opaque_existential_1(&v146, v147);
      v66 = v130;
      sub_224DAD168();
      v140 = sub_224DAB668();
      v141 = v67;
      (*v112)(v66, v131);
      __swift_destroy_boxed_opaque_existential_1(&v146);
      __swift_project_boxed_opaque_existential_1(&v148, v149);
      v68 = v132;
      sub_224DAEA78();
      swift_getKeyPath();
      v69 = sub_224DAE4A8();

      (*v111)(v68, v133);
      if (v69)
      {
        if (v69[2])
        {
          v71 = v69[4];
          v70 = v69[5];
          sub_224A77FD0(v71, v70);
        }

        else
        {
          v71 = 0;
          v70 = 0xF000000000000000;
        }

        v72 = v141;

        v40 = v138;
      }

      else
      {
        v71 = 0;
        v70 = 0xF000000000000000;
        v40 = v138;
        v72 = v141;
      }

      v73 = v140;
      if (v72 >> 60 != 15)
      {
        if (v70 >> 60 == 15)
        {
LABEL_65:
          sub_224A77FD0(v140, v72);
          sub_224AECAB0(v71, v70);
          sub_224AC1D9C(v73, v72);
          v102 = v71;
          v103 = v70;
          goto LABEL_67;
        }

        v76 = v72 >> 62;
        v77 = v70 >> 62;
        if (v72 >> 62 == 3)
        {
          v78 = 0;
          if (!v140 && v72 == 0xC000000000000000 && v70 >> 62 == 3)
          {
            v78 = 0;
            if (!v71 && v70 == 0xC000000000000000)
            {
              v79 = 0;
              sub_224A77FD0(0, 0xC000000000000000);
              sub_224AECAB0(0, 0xC000000000000000);
              v80 = 0;
              v81 = 0xC000000000000000;
              goto LABEL_56;
            }
          }
        }

        else if (v76)
        {
          if (v76 == 1)
          {
            LODWORD(v78) = HIDWORD(v140) - v140;
            if (__OFSUB__(HIDWORD(v140), v140))
            {
              goto LABEL_74;
            }

            v78 = v78;
          }

          else
          {
            v83 = *(v140 + 16);
            v82 = *(v140 + 24);
            v84 = __OFSUB__(v82, v83);
            v78 = v82 - v83;
            if (v84)
            {
              goto LABEL_75;
            }
          }
        }

        else
        {
          v78 = BYTE6(v72);
        }

        if (v77 > 1)
        {
          if (v77 == 2)
          {
            v87 = *(v71 + 16);
            v86 = *(v71 + 24);
            v84 = __OFSUB__(v86, v87);
            v85 = v86 - v87;
            if (v84)
            {
              goto LABEL_72;
            }

            goto LABEL_50;
          }

          if (v78)
          {
LABEL_66:
            sub_224A77FD0(v140, v72);
            sub_224AECAB0(v71, v70);
            sub_224AC1D9C(v71, v70);
            v102 = v73;
            v103 = v72;
LABEL_67:
            sub_224AC1D9C(v102, v103);
LABEL_68:
            v104 = v113;
            v90 = sub_224DAB228();
            v105 = sub_224DAF2A8();

            if (os_log_type_enabled(v90, v105))
            {
              v106 = swift_slowAlloc();
              v107 = swift_slowAlloc();
              *v106 = 138543362;
              *(v106 + 4) = v104;
              *v107 = v104;
              v108 = v104;
              _os_log_impl(&dword_224A2F000, v90, v105, "%{public}@ Placeholder will reload since its locale token is out of date", v106, 0xCu);
              sub_224A3311C(v107, &unk_27D6F69F0, &unk_224DB3900);
              MEMORY[0x22AA5EED0](v107, -1, -1);
              MEMORY[0x22AA5EED0](v106, -1, -1);
            }

            sub_224A78024(v140, v141);
            sub_224AC1D9C(v71, v70);
            v95 = v136;
LABEL_63:
            v96 = v120;
            v97 = v119;
            v98 = v118;
            v99 = v117;
            v100 = v116;
            v101 = v115;

            (*(v125 + 104))(v127, *MEMORY[0x277CF9B50], v126);
            (*(v98 + 104))(v96, *MEMORY[0x277CF9B40], v97);
            (*(v123 + 104))(v100, *MEMORY[0x277CF9BE8], v124);
            sub_224DACC48();
            sub_224DACC38();

            sub_224A3311C(v95, &qword_27D6F61E0, &unk_224DBE988);
            v122(v99, 0, 1, v101);
            sub_224A64134(v99, v95);
            __swift_destroy_boxed_opaque_existential_1(&v148);
            return;
          }
        }

        else
        {
          if (v77)
          {
            LODWORD(v85) = HIDWORD(v71) - v71;
            if (__OFSUB__(HIDWORD(v71), v71))
            {
              goto LABEL_73;
            }

            v85 = v85;
          }

          else
          {
            v85 = BYTE6(v70);
          }

LABEL_50:
          if (v78 != v85)
          {
            goto LABEL_66;
          }

          if (v78 >= 1)
          {
            sub_224A77FD0(v140, v72);
            sub_224A77FD0(v73, v72);
            sub_224AECAB0(v71, v70);
            sub_224AECAB0(v71, v70);
            v88 = v137;
            LODWORD(v139) = sub_224CFE41C(v73, v72, v71, v70);
            v137 = v88;
            sub_224A78024(v73, v72);
            sub_224AC1D9C(v71, v70);
            sub_224AC1D9C(v73, v72);
            if ((v139 & 1) == 0)
            {
              goto LABEL_68;
            }

            goto LABEL_57;
          }
        }

        sub_224A77FD0(v140, v72);
        sub_224AECAB0(v71, v70);
        v79 = v71;
        v80 = v71;
        v81 = v70;
LABEL_56:
        sub_224AC1D9C(v80, v81);
        sub_224AC1D9C(v73, v72);
        v71 = v79;
        v40 = v138;
LABEL_57:

        sub_224A78024(v73, v72);
        v74 = v71;
        v75 = v70;
        goto LABEL_58;
      }

      if (v70 >> 60 != 15)
      {
        goto LABEL_65;
      }

      v74 = v73;
      v75 = v72;
LABEL_58:
      sub_224AC1D9C(v74, v75);
      __swift_destroy_boxed_opaque_existential_1(&v148);
      v46 = v135;
      v41 = v110;
      v45 = v109;
    }

    else
    {

      sub_224A3311C(&v146, &unk_27D6F3CB0, &unk_224DB7860);
    }
  }

  while (1)
  {
    v49 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v49 >= v45)
    {

      return;
    }

    v44 = *(v41 + 8 * v49);
    ++v47;
    if (v44)
    {
      v47 = v49;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
}

uint64_t sub_224A7D5AC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_224DAB668();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_224A7D664(uint64_t a1)
{
  v2 = v1;
  v3 = sub_224A3E7EC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_224B2993C();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 8 * v5);
  sub_224A58C3C(v5, v7);
  *v2 = v7;
  return v8;
}

uint64_t sub_224A7D70C@<X0>(void *a1@<X0>, void *a2@<X1>, const char *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_224DAC378();
  v15 = *(v14 - 8);
  v97 = v14;
  v98 = v15;
  MEMORY[0x28223BE20](v14, v16);
  v95 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6938, &qword_224DC0A70);
  MEMORY[0x28223BE20](v96, v18);
  v20 = &v87 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v23 = MEMORY[0x28223BE20](v21 - 8, v22);
  v25 = MEMORY[0x28223BE20](v23, v24);
  v27 = MEMORY[0x28223BE20](v25, v26);
  v29 = MEMORY[0x28223BE20](v27, v28);
  v99 = &v87 - v30;
  v32 = MEMORY[0x28223BE20](v29, v31);
  v100 = &v87 - v33;
  result = MEMORY[0x28223BE20](v32, v34);
  if (*(a1 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated))
  {
    *(a7 + 32) = 0;
    *a7 = 0u;
    *(a7 + 16) = 0u;
    return result;
  }

  v90 = &v87 - v36;
  v91 = v39;
  v87 = v38;
  v88 = v37;
  v92 = a5;
  v93 = a6;
  v94 = a7;
  if (qword_281351430 != -1)
  {
    swift_once();
  }

  v40 = sub_224DAB258();
  v41 = __swift_project_value_buffer(v40, qword_281364D60);
  v42 = a2;
  v89 = v41;
  v43 = sub_224DAB228();
  v44 = sub_224DAF278();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138543362;
    *(v45 + 4) = v42;
    *v46 = v42;
    v47 = v42;
    _os_log_impl(&dword_224A2F000, v43, v44, a3, v45, 0xCu);
    sub_224A3311C(v46, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v46, -1, -1);
    MEMORY[0x22AA5EED0](v45, -1, -1);
  }

  v48 = OBJC_IVAR____TtC10ChronoCore15LocationService_extInfoByIdentifier;
  swift_beginAccess();
  v49 = sub_224A71E2C(v42, *(a1 + v48), sub_224A3E7EC, type metadata accessor for ExtensionInfo);
  if (v49)
  {
    swift_endAccess();
    v50 = v49;
    goto LABEL_19;
  }

  swift_endAccess();
  v51 = v90;
  (*(v98 + 56))(v90, 1, 1, v97);
  type metadata accessor for ExtensionInfo(0);
  swift_allocObject();
  v52 = v42;

  v50 = sub_224D2EC44(v52, a1, v51);

  v53 = *(v50 + 16);
  swift_beginAccess();
  v54 = *(a1 + v48);
  if ((v54 & 0xC000000000000001) == 0)
  {
    swift_retain_n();
    v57 = v53;
    goto LABEL_16;
  }

  if (v54 < 0)
  {
    v55 = *(a1 + v48);
  }

  else
  {
    v55 = v54 & 0xFFFFFFFFFFFFFF8;
  }

  swift_retain_n();
  v56 = v53;
  result = sub_224DAF838();
  if (!__OFADD__(result, 1))
  {
    *(a1 + v48) = sub_224D2CDF0(v55, result + 1, &qword_27D6F3940, &qword_224DB4740, type metadata accessor for ExtensionInfo, sub_224B19B38);
LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101 = *(a1 + v48);
    sub_224B237E0(v50, v53, isUniquelyReferenced_nonNull_native);
    *(a1 + v48) = v101;

    swift_endAccess();

    v59 = sub_224DAB228();
    v60 = sub_224DAF2A8();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138543362;
      v63 = *(v50 + 16);
      *(v61 + 4) = v63;
      *v62 = v63;
      v64 = v63;
      _os_log_impl(&dword_224A2F000, v59, v60, "[ext:%{public}@] started tracking", v61, 0xCu);
      sub_224A3311C(v62, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v62, -1, -1);
      MEMORY[0x22AA5EED0](v61, -1, -1);
    }

LABEL_19:
    v65 = v99;

    sub_224A71B08(v65);
    *(v50 + 32) = 0;
    sub_224A7F4C8(v50, a1, a4);
    v66 = *(v50 + 32);
    *(v50 + 32) = 2;
    if ((v66 & 1) == 0)
    {

      v71 = v100;
      sub_224A71DBC(v65, v100);
      goto LABEL_28;
    }

    sub_224A6FDF8();
    v67 = v91;
    sub_224A71B08(v91);
    sub_224A3796C(v67, v100, &qword_27D6F3948, &qword_224DB5C10);
    v68 = *(v96 + 12);
    sub_224A3796C(v65, v20, &qword_27D6F3948, &qword_224DB5C10);
    sub_224A3796C(v67, &v20[v68], &qword_27D6F3948, &qword_224DB5C10);
    v69 = v97;
    v70 = *(v98 + 48);
    if (v70(v20, 1, v97) == 1)
    {

      sub_224A3311C(v67, &qword_27D6F3948, &qword_224DB5C10);
      sub_224A3311C(v65, &qword_27D6F3948, &qword_224DB5C10);
      if (v70(&v20[v68], 1, v69) == 1)
      {
        sub_224A3311C(v20, &qword_27D6F3948, &qword_224DB5C10);
        v71 = v100;
LABEL_28:
        v75 = sub_224DAC198();
        v76 = swift_allocObject();
        swift_weakInit();
        v77 = swift_allocObject();
        *(v77 + 16) = v76;
        *(v77 + 24) = v50;

        v78 = sub_224DAC1A8();
        v79 = MEMORY[0x277CF9950];
        v80 = v94;
        *(v94 + 24) = v75;
        v80[4] = v79;

        *v80 = v78;
        return sub_224A3311C(v71, &qword_27D6F3948, &qword_224DB5C10);
      }
    }

    else
    {
      v72 = v87;
      sub_224A3796C(v20, v87, &qword_27D6F3948, &qword_224DB5C10);
      if (v70(&v20[v68], 1, v69) != 1)
      {
        v81 = v98;
        v82 = v95;
        (*(v98 + 32))(v95, &v20[v68], v69);
        sub_224A83A44(&unk_281350DE0, MEMORY[0x277CF9A10], MEMORY[0x277CF9A20]);
        v96 = v20;
        v83 = v72;
        v84 = v69;
        v85 = sub_224DAEDD8();

        v86 = *(v81 + 8);
        v86(v82, v84);
        sub_224A3311C(v91, &qword_27D6F3948, &qword_224DB5C10);
        sub_224A3311C(v99, &qword_27D6F3948, &qword_224DB5C10);
        v86(v83, v84);
        sub_224A3311C(v96, &qword_27D6F3948, &qword_224DB5C10);
        v71 = v100;
        if (v85)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      sub_224A3311C(v91, &qword_27D6F3948, &qword_224DB5C10);
      sub_224A3311C(v99, &qword_27D6F3948, &qword_224DB5C10);
      (*(v98 + 8))(v72, v69);
    }

    sub_224A3311C(v20, &qword_27D6F6938, &qword_224DC0A70);
    v71 = v100;
LABEL_27:
    v100 = *(v50 + 16);
    v73 = v90;
    sub_224A3796C(v71, v90, &qword_27D6F3948, &qword_224DB5C10);
    v74 = v88;
    sub_224A3796C(v73, v88, &qword_27D6F3948, &qword_224DB5C10);
    swift_beginAccess();

    sub_224A83A8C(v74, v100);
    swift_endAccess();

    sub_224A3311C(v73, &qword_27D6F3948, &qword_224DB5C10);
    sub_224A83EBC();
    sub_224A843F0();
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t sub_224A7E1D0(void *a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  LODWORD(v5) = a5;
  v10 = sub_224DAD158();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281351528 != -1)
  {
    swift_once();
  }

  v15 = sub_224DAB258();
  __swift_project_value_buffer(v15, qword_281364EB0);
  v16 = a1;
  v17 = sub_224DAB228();
  v18 = sub_224DAF2A8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v48 = v5;
    v5 = v19;
    v20 = swift_slowAlloc();
    v47 = a3;
    v21 = v20;
    *v5 = 138543362;
    *(v5 + 4) = v16;
    *v20 = v16;
    v22 = v16;
    _os_log_impl(&dword_224A2F000, v17, v18, "[%{public}@] Initialized", v5, 0xCu);
    sub_224A3311C(v21, &unk_27D6F69F0, &unk_224DB3900);
    v23 = v21;
    a3 = v47;
    MEMORY[0x22AA5EED0](v23, -1, -1);
    v24 = v5;
    LOBYTE(v5) = v48;
    MEMORY[0x22AA5EED0](v24, -1, -1);
  }

  (*(v11 + 16))(v14, a3, v10);
  v25 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_environmentModifiers;
  swift_beginAccess();
  (*(v11 + 24))(a2 + v25, v14, v10);
  swift_endAccess();
  sub_224A81084();
  (*(v11 + 8))(v14, v10);
  v26 = [v16 widget];
  v27 = [v26 extensionIdentity];

  sub_224A3317C((a4 + 46), &v51);
  v28 = a4[38];
  v29 = a4[40];
  v30 = __swift_project_boxed_opaque_existential_1(a4 + 35, v28);
  *(&v55 + 1) = v28;
  v56 = *(v29 + 24);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v54);
  (*(*(v28 - 8) + 16))(boxed_opaque_existential_1, v30, v28);
  type metadata accessor for ExtensionVisibilityAssertion();
  v32 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v33 = swift_allocObject();
  v34 = swift_slowAlloc();
  *v34 = 0;
  *(v33 + 16) = v34;
  *(v32 + 168) = 0u;
  *(v32 + 184) = 0u;
  *(v32 + 200) = 0u;
  *(v32 + 216) = 0u;
  *(v32 + 232) = 0u;
  *(v32 + 248) = 0u;
  *(v32 + 152) = 0u;
  *(v32 + 257) = 0u;
  *(v32 + 16) = v27;
  v35 = v52;
  *(v32 + 24) = v51;
  *(v32 + 40) = v35;
  *(v32 + 56) = v53;
  *(v32 + 96) = v56;
  v36 = v55;
  *(v32 + 64) = v54;
  *(v32 + 80) = v36;
  *(v32 + 104) = 0u;
  *(v32 + 120) = 0u;
  *(v32 + 136) = 0;
  *(v32 + 144) = v33;
  *(a2 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession__visibilityAssertion) = v32;

  v37 = *(v32 + 144);
  os_unfair_lock_lock(*(v37 + 16));
  sub_224A71EF0(v32, v5 & 1);
  os_unfair_lock_unlock(*(v37 + 16));

  sub_224B44674(*(a2 + 16) + 232, &v51);
  __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
  v38 = *(a2 + 40);
  v39 = *(a2 + 32);
  v40 = v38;
  sub_224DAD7C8();

  __swift_destroy_boxed_opaque_existential_1(&v51);
  sub_224A816F0(v50);
  __swift_project_boxed_opaque_existential_1(v50, v50[3]);
  v41 = *(a2 + 40);
  v42 = *(a2 + 32);
  v43 = v41;
  sub_224DAD7C8();

  __swift_project_boxed_opaque_existential_1(v49, v49[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3690, &qword_224DB3C68);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_224DB3100;
  sub_224A3317C(&v54, v44 + 32);
  sub_224DAE208();

  __swift_destroy_boxed_opaque_existential_1(&v54);
  v45 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession__lifetimeAssertion;
  swift_beginAccess();
  sub_224A71D4C(&v51, a2 + v45);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v49);
  return __swift_destroy_boxed_opaque_existential_1(v50);
}

void sub_224A7E76C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v15[1] = MEMORY[0x277D84FA0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
    sub_224A87A80();
    sub_224DAF1F8();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));

    v5 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_20:
      sub_224A3B7E4(v2);
      return;
    }

    while (1)
    {
      if (qword_2813589F8 != -1)
      {
        swift_once();
      }

      sub_224A5EAA4(v15, [v14 copyFilteredToOptions_]);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_224DAF878())
      {
        sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_224A7E9B8(uint64_t a1, char *a2, _BYTE *a3, void (**a4)(void, void, id))
{
  v62 = a4;
  v60 = a3;
  v5 = sub_224DA9F08();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v61 = &v53 - v11;
  v12 = sub_224DAD158();
  v57 = *(v12 - 8);
  v58 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DAA818();
  v17 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock_sessions;
  swift_beginAccess();
  v18 = *&a2[v17];

  v19 = sub_224A71D20(v16, v18);

  if (v19)
  {

    if (qword_281351580 != -1)
    {
      swift_once();
    }

    v20 = sub_224DAB258();
    __swift_project_value_buffer(v20, qword_281364EC8);
    v21 = v16;
    v22 = a2;
    v23 = sub_224DAB228();
    v24 = sub_224DAF288();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v63[0] = v27;
      *v25 = 136446466;
      *(v25 + 4) = sub_224A33F74(*&v22[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier], *&v22[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier + 8], v63);
      *(v25 + 12) = 2114;
      *(v25 + 14) = v21;
      *v26 = v21;
      v28 = v21;
      _os_log_impl(&dword_224A2F000, v23, v24, "[%{public}s] Error subscribing to session: Cannot stomp an existing session: %{public}@", v25, 0x16u);
      sub_224A3311C(v26, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v26, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x22AA5EED0](v27, -1, -1);
      MEMORY[0x22AA5EED0](v25, -1, -1);
    }

    *v60 = 1;
    v29 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v30 = sub_224DAEDE8();
    v31 = [v29 initWithDomain:v30 code:23 userInfo:0];

    v32 = sub_224DA9518();
    v33 = v62;
    v62[2](v62, 0, v32);

    goto LABEL_15;
  }

  v54 = *&a2[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__services];
  v34 = v16;
  v60 = sub_224DAA828();
  sub_224DAA848();
  v56 = sub_224DAA838();
  type metadata accessor for WidgetRendererSession(0);
  v35 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v36 = swift_allocObject();
  v37 = swift_slowAlloc();
  *v37 = 0;
  *(v36 + 16) = v37;
  *(v35 + 6) = v36;
  v38 = *MEMORY[0x277CF9F28];
  v39 = *(v6 + 104);
  v55 = v5;
  v39(&v35[OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_taskPriority], v38, v5);
  v40 = &v35[OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession__lifetimeAssertion];
  *v40 = 0u;
  *(v40 + 1) = 0u;
  *(v40 + 4) = 0;
  *&v35[OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession__visibilityAssertion] = 0;
  v35[OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_visiblySettled] = 0;
  *&v35[OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession__environmentModifierAssertion] = 0;
  sub_224DAD148();
  v41 = v54;
  *(v35 + 2) = v54;

  *(v35 + 4) = [v34 widget];
  *(v35 + 5) = [v34 metrics];
  *(v35 + 3) = v34;
  *&v35[OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_contentType] = v60;
  LODWORD(v36) = v56 & 1;
  v35[OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_visiblySettled] = v36;
  v32 = v34;
  sub_224A7E1D0(v32, v35, v15, v41, v36);

  (*(v57 + 8))(v15, v58);
  v42 = v61;
  sub_224DAA858();
  v43 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_taskPriority;
  swift_beginAccess();
  v44 = v59;
  v45 = v55;
  (*(v6 + 16))(v59, &v35[v43], v55);
  swift_beginAccess();
  (*(v6 + 24))(&v35[v43], v42, v45);
  swift_endAccess();
  sub_224A7F0A8(v44);
  v46 = *(v6 + 8);
  v46(v44, v45);
  v46(v61, v45);
  swift_beginAccess();
  v47 = *&a2[v17];
  if ((v47 & 0xC000000000000001) == 0)
  {
    v51 = v32;

    goto LABEL_14;
  }

  if (v47 < 0)
  {
    v48 = *&a2[v17];
  }

  else
  {
    v48 = v47 & 0xFFFFFFFFFFFFFF8;
  }

  v49 = v32;

  v50 = sub_224DAF838();
  if (!__OFADD__(v50, 1))
  {
    *&a2[v17] = sub_224D2D01C(v48, v50 + 1);
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = *&a2[v17];
    sub_224A73070(v35, v32, isUniquelyReferenced_nonNull_native);
    *&a2[v17] = v64;

    swift_endAccess();

    v33 = v62;
LABEL_15:

    _Block_release(v33);
    return;
  }

  __break(1u);
}

uint64_t sub_224A7F0A8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_224DA9F08();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_taskPriority;
  swift_beginAccess();
  v9 = *(v4 + 16);
  v9(v7, v1 + v8, v3);
  sub_224A80F48(&qword_2813519D8, MEMORY[0x277CF9F40], MEMORY[0x277CF9F50]);
  v10 = sub_224DAEDD8();
  v11 = *(v4 + 8);
  result = v11(v7, v3);
  if ((v10 & 1) == 0)
  {
    v38 = v11;
    if (qword_281351528 != -1)
    {
      swift_once();
    }

    v13 = sub_224DAB258();
    __swift_project_value_buffer(v13, qword_281364EB0);

    v14 = sub_224DAB228();
    v15 = sub_224DAF2A8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v37 = v9;
      v17 = v16;
      v18 = swift_slowAlloc();
      v35 = v18;
      v36 = swift_slowAlloc();
      v40[0] = v36;
      *v17 = 138543618;
      v34 = v14;
      v19 = *(v2 + 24);
      *(v17 + 4) = v19;
      *v18 = v19;
      *(v17 + 12) = 2082;
      v37(v7, v2 + v8, v3);
      v20 = v19;
      v21 = sub_224DA9EC8();
      v23 = v22;
      v38(v7, v3);
      v24 = sub_224A33F74(v21, v23, v40);

      *(v17 + 14) = v24;
      v14 = v34;
      _os_log_impl(&dword_224A2F000, v34, v15, "[%{public}@] Task priority did change: %{public}s", v17, 0x16u);
      v25 = v35;
      sub_224A3311C(v35, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v25, -1, -1);
      v26 = v36;
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x22AA5EED0](v26, -1, -1);
      v27 = v17;
      v9 = v37;
      MEMORY[0x22AA5EED0](v27, -1, -1);
    }

    sub_224A3317C(*(v2 + 16) + 16, v40);
    v28 = v41;
    v29 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v9(v7, v2 + v8, v3);
    v30 = *(v2 + 24);
    v39[3] = sub_224A3B79C(0, &qword_2813508E8, 0x277D7BC20);
    v39[4] = sub_224A3B758(&unk_2813508F0, &qword_2813508E8, 0x277D7BC20, &unk_224DB99AC);
    v39[0] = v30;
    v31 = *(v29 + 8);
    v32 = *(v31 + 8);
    v33 = v30;
    v32(v7, v39, v28, v31);
    v38(v7, v3);
    __swift_destroy_boxed_opaque_existential_1(v39);
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  return result;
}

uint64_t sub_224A7F4C8(uint64_t a1, void *a2, void *a3)
{
  v6 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
  swift_beginAccess();
  sub_224A3796C(a1 + v6, v15, &unk_27D6F4700, &unk_224DB3A10);
  v7 = v15[3];
  result = sub_224A3311C(v15, &unk_27D6F4700, &unk_224DB3A10);
  if (!v7)
  {
    __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
    sub_224DAC6D8();
    if (v14)
    {
      sub_224A36F98(&v13, v15);
      sub_224A3317C(v15, &v13);
      sub_224A3796C(a1 + v6, v12, &unk_27D6F4700, &unk_224DB3A10);
      swift_beginAccess();
      sub_224C4D398(&v13, a1 + v6, &unk_27D6F4700, &unk_224DB3A10);
      swift_endAccess();
      sub_224D25314(v12);
      sub_224A3311C(v12, &unk_27D6F4700, &unk_224DB3A10);
      sub_224A3311C(&v13, &unk_27D6F4700, &unk_224DB3A10);
      result = __swift_destroy_boxed_opaque_existential_1(v15);
    }

    else
    {
      result = sub_224A3311C(&v13, &unk_27D6F4700, &unk_224DB3A10);
    }
  }

  v9 = *(a1 + *a3);
  v10 = __CFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a1 + *a3) = v11;
    if (*(a1 + 32) == 2)
    {
      return sub_224A6FDF8();
    }

    else if (v11 == 1)
    {
      *(a1 + 32) = 1;
    }
  }

  return result;
}

uint64_t sub_224A7F6A8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v24[1] = a3;
  v7 = sub_224DABE18();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DAC268();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = v24 - v19;
  v21 = a1;
  v22 = a2;
  sub_224DAC238();
  (*(v13 + 16))(v17, v20, v12);
  sub_224DABD88();
  sub_224DAD288();
  v25 = v11;
  v26 = v20;
  v27 = v4;
  sub_224DAC128();
  (*(v8 + 8))(v11, v7);
  return (*(v13 + 8))(v20, v12);
}

void sub_224A7F8C0(uint64_t a1, void *a2)
{
  v5 = *(v2 + *((*MEMORY[0x277D85000] & *v2) + 0x88));
  os_unfair_lock_lock(*(v5 + 16));
  sub_224A7F964(v2, a2, a1);
  v6 = *(v5 + 16);

  os_unfair_lock_unlock(v6);
}

void sub_224A7F964(void *a1, void *a2, uint64_t a3)
{
  v7 = MEMORY[0x277D85000];
  v8 = *MEMORY[0x277D85000] & *a1;
  v9 = sub_224DA9F08();
  v42 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[3] = &type metadata for FeatureFlags.Widgets;
  v44[4] = sub_224A80FFC();
  LOBYTE(v44[0]) = 18;
  v13 = sub_224DA9C98();
  __swift_destroy_boxed_opaque_existential_1(v44);
  if (v13)
  {
    v14 = *((*v7 & *a1) + 0xA0);
    swift_beginAccess();
    v39 = a1;
    v15 = *(a1 + v14);
    sub_224DA9908();
    v17 = *(v8 + 80);
    v16 = *(v8 + 88);
    type metadata accessor for TaskSession(0, v17, v16, v18);
    v41 = a3;
    v19 = sub_224A43A04(&qword_281351A18, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v38 = &v35;
    v45 = v15;
    MEMORY[0x28223BE20](v19, v20);
    v35 = v16;
    v36 = v17;
    *(&v35 - 4) = v17;
    *(&v35 - 3) = v16;
    v37 = a2;
    *(&v35 - 2) = a2;
    sub_224DAED38();

    swift_getWitnessTable();
    v21 = sub_224DAEF68();
    v40 = v3;
    v22 = *MEMORY[0x277CF9F30];
    v23 = v42;
    v38 = *(v42 + 104);
    (v38)(v12, v22, v9);
    sub_224A43A04(&unk_2813519C8, MEMORY[0x277CF9F40], MEMORY[0x277CF9F58]);
    sub_224DAEFA8();
    sub_224DAEFA8();
    v24 = *(v23 + 8);
    v42 = v23 + 8;
    v24(v12, v9);
    if (v45 == v43 || ((v38)(v12, *MEMORY[0x277CF9F38], v9), sub_224DAEFA8(), sub_224DAEFA8(), v25 = (v24)(v12, v9), v45 == v43))
    {
      v27 = 1;
    }

    else
    {
      v45 = v21;
      MEMORY[0x28223BE20](v25, v26);
      v28 = v35;
      *(&v35 - 2) = v36;
      *(&v35 - 1) = v28;
      sub_224DAF0B8();
      swift_getWitnessTable();
      v29 = v40;
      v27 = sub_224DAEF88();
      v40 = v29;
    }

    if (sub_224DAF088())
    {
      v30 = 4;
      do
      {
        v31 = v30 - 4;
        v32 = sub_224DAF068();
        sub_224DAF028();
        if (v32)
        {

          v33 = __OFADD__(v31, 1);
          v34 = v30 - 3;
          if (v33)
          {
            goto LABEL_14;
          }
        }

        else
        {
          sub_224DAF948();
          v33 = __OFADD__(v31, 1);
          v34 = v30 - 3;
          if (v33)
          {
LABEL_14:
            __break(1u);
            break;
          }
        }

        sub_224D42810(v27 & 1);

        ++v30;
      }

      while (v34 != sub_224DAF088());
    }

    a3 = v41;
    a2 = v37;
  }

  sub_224A72D60(a3, a2);
}

const char *sub_224A7FEB4(char a1)
{
  result = "BackgroundAbsentCheck";
  switch(a1)
  {
    case 1:
      result = "AnimatedTransition";
      break;
    case 2:
      result = "InteractiveWidgets";
      break;
    case 3:
      result = "PrefetchRemoteSnapshots2";
      break;
    case 4:
      result = "InteractiveSystemSmall";
      break;
    case 5:
      result = "FirstPartyContentMargins";
      break;
    case 6:
      result = "InteractiveWatchOS";
      break;
    case 7:
      result = "AnimatedTransitionWatchOS";
      break;
    case 8:
      result = "RelevanceDuringTimelineReload";
      break;
    case 9:
      result = "ContextualWidgets";
      break;
    case 10:
      result = "ControlsBuildAndRunHack";
      break;
    case 11:
      result = "IntelligentWidgets";
      break;
    case 12:
      result = "RemoteControls";
      break;
    case 13:
      result = "ReverseRemoteWidgetSource";
      break;
    case 14:
      result = "FFGatedWidgets";
      break;
    case 15:
      result = "CorrectDominoContentMargins";
      break;
    case 16:
      result = "ForceLayerSeparation";
      break;
    case 17:
      result = "GlassPrototype";
      break;
    case 18:
      result = "WidgetExtensionRunQOSUtility";
      break;
    case 19:
      result = "UIIntelligence";
      break;
    default:
      return result;
  }

  return result;
}

void sub_224A80094(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v115 = a4;
  v103 = sub_224DACB98();
  v101 = *(v103 - 8);
  MEMORY[0x28223BE20](v103, v7);
  v102 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_224DACB08();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99, v9);
  v100 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_224DACB28();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95, v11);
  v96 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_224DACC88();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105, v13);
  v113 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D8, &unk_224DB7630);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v93 = &v81 - v17;
  v114 = sub_224DAE918();
  v112 = *(v114 - 8);
  v19 = MEMORY[0x28223BE20](v114, v18);
  v97 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v81 - v22;
  v111 = sub_224DAC268();
  v110 = *(v111 - 8);
  v25 = MEMORY[0x28223BE20](v111, v24);
  v27 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v28);
  v109 = &v81 - v29;
  v108 = sub_224DABE18();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108, v30);
  v106 = &v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_224DAB258();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v32);
  v34 = &v81 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224DAD3D8();
  if (v120)
  {

    return;
  }

  v86 = v27;
  v90 = v23;
  v87 = a1;
  v35 = v91;
  v36 = v34;
  v37 = v92;
  (*(v91 + 16))(v34, v115 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_logger, v92);
  v38 = a2;
  (*(v107 + 16))(v106, a2, v108);
  v39 = *(v110 + 2);
  v89 = a3;
  v40 = v111;
  v85 = v110 + 16;
  v84 = v39;
  v39(v109, a3, v111);
  v41 = sub_224DAB228();
  v42 = sub_224DAF2A8();
  v43 = os_log_type_enabled(v41, v42);
  v88 = v38;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v82 = v42;
    v45 = v44;
    v83 = swift_slowAlloc();
    v119[0] = v83;
    *v45 = 136446466;
    sub_224A94F2C(&qword_281350E70, MEMORY[0x277CF98E0], MEMORY[0x277CF98F8]);
    v81 = v41;
    v46 = v106;
    v47 = v108;
    v48 = sub_224DAFD28();
    v50 = v49;
    (*(v107 + 8))(v46, v47);
    v51 = sub_224A33F74(v48, v50, v119);

    *(v45 + 4) = v51;
    *(v45 + 12) = 2082;
    sub_224A94F2C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
    v52 = v109;
    v53 = sub_224DAFD28();
    v55 = v54;
    (*(v110 + 1))(v52, v40);
    v56 = sub_224A33F74(v53, v55, v119);

    *(v45 + 14) = v56;
    v57 = v81;
    _os_log_impl(&dword_224A2F000, v81, v82, "%{public}s:%{public}s Creating entry", v45, 0x16u);
    v58 = v83;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v58, -1, -1);
    MEMORY[0x22AA5EED0](v45, -1, -1);
  }

  else
  {

    (*(v110 + 1))(v109, v40);
    (*(v107 + 8))(v106, v108);
  }

  (*(v35 + 8))(v36, v37);
  v59 = v100;
  v60 = v93;
  v61 = sub_224DAC248();
  v62 = [v61 extensionIdentity];

  v63 = v115;
  sub_224A3317C(v115 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_protectionLevelProvider, v119);
  __swift_project_boxed_opaque_existential_1(v119, v119[3]);
  v110 = v62;
  v64 = v116;
  sub_224DADBE8();
  v65 = v98;
  if (v64)
  {

    __swift_destroy_boxed_opaque_existential_1(v119);
    v66 = v112;
    v67 = v114;
    (*(v112 + 56))(v60, 1, 1, v114);
    v116 = 0;
    v68 = v90;
    v69 = v101;
    v70 = v97;
    goto LABEL_10;
  }

  v116 = 0;
  v66 = v112;
  v67 = v114;
  (*(v112 + 56))(v60, 0, 1, v114);
  __swift_destroy_boxed_opaque_existential_1(v119);
  v71 = (*(v66 + 48))(v60, 1, v67);
  v69 = v101;
  v70 = v97;
  if (v71 == 1)
  {
    v68 = v90;
LABEL_10:
    (*(v66 + 104))(v68, *MEMORY[0x277CE3D50], v67);
    if ((*(v66 + 48))(v60, 1, v67) != 1)
    {
      sub_224A3311C(v60, &qword_27D6F46D8, &unk_224DB7630);
    }

    goto LABEL_13;
  }

  (*(v66 + 32))(v90, v60, v67);
LABEL_13:
  v72 = v103;
  v73 = v102;
  (*(v94 + 104))(v96, *MEMORY[0x277CF9B50], v95);
  (*(v65 + 104))(v59, *MEMORY[0x277CF9B40], v99);
  (*(v69 + 104))(v73, *MEMORY[0x277CF9BF0], v72);
  sub_224DACC48();
  sub_224DACC38();
  __swift_project_boxed_opaque_existential_1(v63 + 24, v63[27]);
  v74 = sub_224DABDB8();
  sub_224DADA58();

  sub_224DABE88();
  v84(v86, v89, v111);
  v75 = v112;
  v76 = v70;
  v77 = v90;
  (*(v112 + 16))(v76, v90, v114);
  sub_224A3317C(v119, &v118);
  sub_224A3317C(v115 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_descriptorObserver, v117);
  v78 = sub_224DABE48();
  v79 = v87;
  __swift_project_boxed_opaque_existential_1(v87, v87[3]);
  v118 = v78;
  sub_224DAD3B8();
  __swift_project_boxed_opaque_existential_1(v79, v79[3]);
  v80 = v113;
  sub_224DAD3E8();

  __swift_destroy_boxed_opaque_existential_1(v119);
  (*(v104 + 8))(v80, v105);
  (*(v75 + 8))(v77, v114);
}

uint64_t sub_224A80D98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224A80DE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224A80E28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224A80E70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224A80EB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224A80F00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224A80F48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224A80F90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_224A80FFC()
{
  result = qword_28135C2F0;
  if (!qword_28135C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135C2F0);
  }

  return result;
}

uint64_t sub_224A81084()
{
  v1 = v0;
  v52 = sub_224DAC268();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_224DAD158();
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v5);
  v48 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281351528 != -1)
  {
    swift_once();
  }

  v7 = sub_224DAB258();
  __swift_project_value_buffer(v7, qword_281364EB0);

  v8 = sub_224DAB228();
  v9 = sub_224DAF2A8();

  v10 = os_log_type_enabled(v8, v9);
  v53 = v4;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v46 = v12;
    v47 = swift_slowAlloc();
    v54 = v47;
    *v11 = 138543618;
    v13 = *(v0 + 24);
    *(v11 + 4) = v13;
    *v12 = v13;
    *(v11 + 12) = 2082;
    v14 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_environmentModifiers;
    swift_beginAccess();
    v15 = v49;
    v16 = v0 + v14;
    v17 = v48;
    v18 = v50;
    (*(v49 + 16))(v48, v16, v50);
    v19 = v13;
    v20 = sub_224DAD008();
    v22 = v21;
    (*(v15 + 8))(v17, v18);
    v23 = sub_224A33F74(v20, v22, &v54);

    *(v11 + 14) = v23;
    _os_log_impl(&dword_224A2F000, v8, v9, "[%{public}@] Environment modifiers did change: %{public}s", v11, 0x16u);
    v24 = v46;
    sub_224A3311C(v46, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v24, -1, -1);
    v25 = v47;
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x22AA5EED0](v25, -1, -1);
    MEMORY[0x22AA5EED0](v11, -1, -1);
  }

  v26 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession__environmentModifierAssertion;
  v27 = *(v1 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession__environmentModifierAssertion);
  v28 = *(v1 + 24);

  v29 = [v28 widget];
  v30 = [v28 metrics];
  sub_224DAC238();
  v54 = 0;
  v55 = 0xE000000000000000;
  sub_224DAF938();

  v54 = 0x6552746567646957;
  v55 = 0xEF2D72657265646ELL;
  v31 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_contentType;
  v32 = NSStringFromCHSWidgetContentType();
  v33 = sub_224DAEE18();
  v35 = v34;

  MEMORY[0x22AA5D210](v33, v35);

  MEMORY[0x22AA5D210](45, 0xE100000000000000);
  v36 = [v28 identifier];
  v37 = sub_224DAEE18();
  v39 = v38;

  MEMORY[0x22AA5D210](v37, v39);

  sub_224A816F0(v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4AE0, &qword_224DB9A88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4AE8, &qword_224DB9A90);
  if (swift_dynamicCast())
  {
    sub_224A36F98(v57, &v54);
    __swift_project_boxed_opaque_existential_1(&v54, v56);
    v40 = sub_224DAE068();

    *(v1 + v26) = v40;

    v41 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_environmentModifiers;
    swift_beginAccess();
    (*(v49 + 16))(v48, v1 + v41, v50);
    sub_224DADCB8();

    __swift_destroy_boxed_opaque_existential_1(&v54);
    if (*(v1 + v31))
    {
      goto LABEL_10;
    }
  }

  else
  {

    v58 = 0;
    memset(v57, 0, sizeof(v57));
    sub_224A3311C(v57, &qword_27D6F4AF0, &qword_224DB9A98);
    if (*(v1 + v31))
    {
      goto LABEL_10;
    }
  }

  sub_224B44674(*(v1 + 16) + 280, &v54);
  __swift_project_boxed_opaque_existential_1(&v54, v56);
  v42 = *(v1 + 32);
  sub_224DAC7E8();

  __swift_destroy_boxed_opaque_existential_1(&v54);
LABEL_10:
  v43 = v53;
  if (v27)
  {

    sub_224DADCC8();
  }

  return (*(v51 + 8))(v43, v52);
}

uint64_t sub_224A816F0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_contentType);
  v4 = *(v1 + 16);
  if (v3 == 2)
  {
    v5 = v4[32];
    v8 = v4[34];
    v9 = v4 + 29;
  }

  else
  {
    if (v3 != 1)
    {
      v5 = v4[38];
      v6 = v4[40];
      v7 = __swift_project_boxed_opaque_existential_1(v4 + 35, v5);
      a1[3] = v5;
      a1[4] = *(v6 + 64);
      goto LABEL_7;
    }

    v5 = v4[25];
    v8 = v4[27];
    v9 = v4 + 22;
  }

  v7 = __swift_project_boxed_opaque_existential_1(v9, v5);
  a1[3] = v5;
  a1[4] = v8;
LABEL_7:
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v11 = *(*(v5 - 8) + 16);

  return v11(boxed_opaque_existential_1, v7, v5);
}

uint64_t sub_224A817D0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3 = sub_224DADDD8();

  return v3;
}

uint64_t sub_224A81838(void *a1)
{
  v2 = sub_224DABE18();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1;
  sub_224DABDE8();
  sub_224DAC0F8();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_224A8193C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v48 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v49 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v43 - v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v43 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v43 - v23;
  v25 = sub_224DAC268();
  v51 = *(v25 - 8);
  v52 = v25;
  MEMORY[0x28223BE20](v25, v26);
  v50 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v7 + 56);
  v28(v24, 1, 1, v6);
  v29 = [a1 intentReference];
  if (v29)
  {

    v30 = [a1 widgetByReplacingIntent_];
  }

  else
  {
    v30 = a1;
  }

  v31 = v30;
  v28(v21, 1, 1, v6);
  sub_224A3796C(v24, v17, &qword_27D6F56C0, &unk_224DB3580);
  if ((*(v7 + 48))(v17, 1, v6) == 1)
  {
    v32 = v31;
    sub_224A3311C(v17, &qword_27D6F56C0, &unk_224DB3580);
  }

  else
  {
    v45 = v28;
    v46 = a2;
    v47 = v3;
    v33 = v48;
    v44 = *(v7 + 32);
    v44(v48, v17, v6);
    v34 = v31;
    sub_224DAA1F8();
    v35 = sub_224DAA048();

    if (v35)
    {
      sub_224A3311C(v21, &qword_27D6F56C0, &unk_224DB3580);
      v44(v21, v33, v6);
      v45(v21, 0, 1, v6);
    }

    else
    {
      (*(v7 + 8))(v33, v6);
    }

    a2 = v46;
    v3 = v47;
  }

  sub_224A3796C(v21, v49, &qword_27D6F56C0, &unk_224DB3580);
  v36 = a2;
  v37 = v50;
  sub_224DAC228();

  sub_224A3311C(v21, &qword_27D6F56C0, &unk_224DB3580);
  v38 = sub_224A3311C(v24, &qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v38, v39);
  *(&v43 - 2) = v3;
  *(&v43 - 1) = v37;
  v41 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3698, &qword_224DB3C70);
  sub_224DAF3E8();

  return (*(v51 + 8))(v37, v52);
}

uint64_t sub_224A81E14@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v59 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v53 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v54 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v55 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v49 - v14;
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v49 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v49 - v21;
  v23 = sub_224DAC268();
  v57 = *(v23 - 8);
  v58 = v23;
  MEMORY[0x28223BE20](v23, v24);
  v56 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_224DAB8C8();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v30 = (&v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = *(v3 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue);
  *v30 = v31;
  (*(v27 + 104))(v30, *MEMORY[0x277D85200], v26);
  v32 = v31;
  LOBYTE(v31) = sub_224DAB8F8();
  result = (*(v27 + 8))(v30, v26);
  if (v31)
  {
    v34 = sub_224DAC248();
    v51 = sub_224DAC258();
    sub_224DAC218();
    v35 = [v34 intentReference];
    v60 = v22;
    v52 = v34;
    if (v35)
    {

      v36 = [v34 widgetByReplacingIntent_];
    }

    else
    {
      v36 = v34;
    }

    v37 = v36;
    v39 = v53;
    v38 = v54;
    v40 = *(v53 + 56);
    v40(v19, 1, 1, v5);
    sub_224A3796C(v60, v15, &qword_27D6F56C0, &unk_224DB3580);
    if ((*(v39 + 48))(v15, 1, v5) == 1)
    {
      v41 = v37;
      sub_224A3311C(v15, &qword_27D6F56C0, &unk_224DB3580);
    }

    else
    {
      v53 = v3;
      v54 = a1;
      v50 = *(v39 + 32);
      v50(v38, v15, v5);
      v42 = v37;
      sub_224DAA1F8();
      v43 = sub_224DAA048();

      if (v43)
      {
        sub_224A3311C(v19, &qword_27D6F56C0, &unk_224DB3580);
        v50(v19, v38, v5);
        v40(v19, 0, 1, v5);
      }

      else
      {
        (*(v39 + 8))(v38, v5);
      }

      v3 = v53;
      a1 = v54;
    }

    sub_224A3796C(v19, v55, &qword_27D6F56C0, &unk_224DB3580);
    v44 = v56;
    sub_224DAC228();

    sub_224A3311C(v19, &qword_27D6F56C0, &unk_224DB3580);
    sub_224A3311C(v60, &qword_27D6F56C0, &unk_224DB3580);

    v45 = sub_224DAC248();
    v46 = [v45 extensionIdentity];

    v61 = v46;
    v47 = sub_224DAD288();
    MEMORY[0x28223BE20](v47, v48);
    *(&v49 - 4) = v46;
    *(&v49 - 3) = v44;
    *(&v49 - 2) = v3;
    *(&v49 - 1) = a1;
    sub_224DAC128();

    return (*(v57 + 8))(v44, v58);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_224A82414()
{
  v1 = *(*v0 + OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock);
  os_unfair_lock_lock(v1 + 4);
  sub_224A828D4(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_224A82494@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v36 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v34 - v7;
  v9 = sub_224DAC378();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v34 - v16;
  v18 = OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock_badExtensionDates;
  result = swift_beginAccess();
  v20 = *(a1 + v18);
  if (*(v20 + 16))
  {

    v21 = sub_224A3E7EC(a2);
    if (v22)
    {
      v35 = a2;
      (*(v10 + 16))(v17, *(v20 + 56) + *(v10 + 72) * v21, v9);

      sub_224DAC2F8();
      sub_224CFEA04(&qword_281350DF0, MEMORY[0x277CF9A10], MEMORY[0x277CF9A18]);
      v23 = sub_224DAEDB8();
      v24 = *(v10 + 8);
      v24(v14, v9);
      if (v23)
      {
        v25 = v24;
        v26 = v35;
        v27 = sub_224DAB228();
        v28 = sub_224DAF2A8();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *v29 = 138543362;
          *(v29 + 4) = v26;
          *v30 = v26;
          v31 = v26;
          _os_log_impl(&dword_224A2F000, v27, v28, "%{public}@ Disallowing reload due to bad extension", v29, 0xCu);
          sub_224A3311C(v30, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v30, -1, -1);
          MEMORY[0x22AA5EED0](v29, -1, -1);
        }

        result = v25(v17, v9);
        v32 = 0;
      }

      else
      {
        v33 = *(v10 + 56);
        v34[1] = v10 + 8;
        v32 = 1;
        v33(v8, 1, 1, v9);
        swift_beginAccess();
        sub_224A83A8C(v8, v35);
        swift_endAccess();
        result = (v24)(v17, v9);
      }
    }

    else
    {

      v32 = 1;
    }
  }

  else
  {
    v32 = 1;
  }

  *v36 = v32;
  return result;
}

void *sub_224A82874@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_224A828F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_224A8295C(void *a1)
{
  v2 = v1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
  v5 = MEMORY[0x28223BE20](v46, v4);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v45 = &v40 - v9;
  MEMORY[0x28223BE20](v8, v10);
  v43 = &v40 - v11;
  __swift_project_boxed_opaque_existential_1((*&v1[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__services] + 232), *(*&v1[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__services] + 256));
  v12 = sub_224A83048(a1);
  if (v12)
  {
    v13 = v12;
    if (*(v12 + 16))
    {
      *v50 = 0;
      v14 = *&v1[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock];
      os_unfair_lock_lock(*(v14 + 16));
      sub_224A830AC(v2, a1, &v50[1], v50);
      os_unfair_lock_unlock(*(v14 + 16));
      if (qword_281351580 != -1)
      {
LABEL_28:
        swift_once();
      }

      v15 = sub_224DAB258();
      __swift_project_value_buffer(v15, qword_281364EC8);
      v16 = v2;
      v17 = a1;
      v18 = sub_224DAB228();
      v19 = sub_224DAF278();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v49[0] = v22;
        *v20 = 136446978;
        *(v20 + 4) = sub_224A33F74(*&v16[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier], *&v16[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier + 8], v49);
        *(v20 + 12) = 2114;
        *(v20 + 14) = v17;
        *v21 = v17;
        *(v20 + 22) = 1026;
        swift_beginAccess();
        *(v20 + 24) = v50[1];
        *(v20 + 28) = 1026;
        swift_beginAccess();
        *(v20 + 30) = v50[0];
        v23 = v17;
        _os_log_impl(&dword_224A2F000, v18, v19, "[%{public}s]: Placeholder reload detected - key[%{public}@]: matchesSession=%{BOOL,public}d, matchesConfiguration=%{BOOL,public}d", v20, 0x22u);
        sub_224A3311C(v21, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v21, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v22);
        MEMORY[0x22AA5EED0](v22, -1, -1);
        MEMORY[0x22AA5EED0](v20, -1, -1);
      }

      swift_beginAccess();
      if ((v50[1] & 1) != 0 || (swift_beginAccess(), v50[0] == 1))
      {
        v24 = *(v13 + 16);
        if (v24)
        {
          v40 = v16;
          v48 = MEMORY[0x277D84F90];
          sub_224DAF9E8();
          v25 = sub_224DAF798();
          v42 = v13;
          v41 = v13 + 64;
          do
          {
            v47 = v24;
            a1 = *(v13 + 36);
            v26 = v43;
            v27 = sub_224A837F0(v43, v25, *(v13 + 36), 0, v13);
            v28 = sub_224DAC268();
            v29 = *(v28 - 8);
            v30 = v45;
            (*(v29 + 32))(v45, v26, v28);
            v31 = v46;
            *(v30 + *(v46 + 48)) = v27;
            v32 = v44;
            sub_224A3796C(v30, v44, &qword_27D6F47F8, &unk_224DC2000);

            v33 = sub_224DAC248();
            v34 = *(v29 + 8);
            v34(v32, v28);
            v35 = [v33 widgetByReplacingIntent_];

            sub_224A3796C(v30, v32, &qword_27D6F47F8, &unk_224DC2000);
            v36 = sub_224DAC258();
            v34(v32, v28);
            [objc_allocWithZone(MEMORY[0x277CFA3D8]) initWithWidget:v35 metrics:v36];

            v37 = v30;
            v13 = v42;
            sub_224A3311C(v37, &qword_27D6F47F8, &unk_224DC2000);
            sub_224DAF9B8();
            v2 = *(v48 + 16);
            sub_224DAF9F8();
            sub_224DAFA08();
            sub_224DAF9C8();
            if (v25 < 0 || v25 >= -(-1 << *(v13 + 32)))
            {
              __break(1u);
LABEL_26:
              __break(1u);
LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

            if (((*(v41 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
              goto LABEL_26;
            }

            if (a1 != *(v13 + 36))
            {
              goto LABEL_27;
            }

            v25 = sub_224DAF7B8();
            v24 = v47 - 1;
          }

          while (v47 != 1);

          v38 = v48;
          if (v48 >> 62)
          {
            goto LABEL_22;
          }

LABEL_16:
          if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_17:
            v39 = swift_allocObject();
            *(v39 + 16) = v38;
            sub_224A77CC8(sub_224A73980, v39);

            return;
          }

          goto LABEL_23;
        }

        v38 = MEMORY[0x277D84F90];
        if (!(MEMORY[0x277D84F90] >> 62))
        {
          goto LABEL_16;
        }

LABEL_22:
        if (sub_224DAF838())
        {
          goto LABEL_17;
        }
      }

LABEL_23:

      return;
    }
  }
}

uint64_t sub_224A8300C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A83048(uint64_t a1)
{
  v2 = sub_224DAC148();
  if (*(v2 + 16) && (v3 = sub_224A3E7EC(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_224A830AC(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v52 = a4;
  v59 = a3;
  v69 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v5);
  v57 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D0, &unk_224DBD6D0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v52 - v9;
  v11 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock_sessions;
  swift_beginAccess();
  v56 = a1;
  v12 = *(a1 + v11);
  v55 = v10;
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = sub_224DAFA68();
    v61 = 0;
    v14 = 0;
    v15 = 0;
    v16 = v13 | 0x8000000000000000;
  }

  else
  {
    v17 = -1 << *(v12 + 32);
    v14 = ~v17;
    v18 = *(v12 + 64);
    v61 = v12 + 64;
    v19 = -v17;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v15 = v20 & v18;
    v16 = v12;
  }

  v21 = 0;
  v58 = v14;
  v60 = (v14 + 64) >> 6;
  while (1)
  {
    if ((v16 & 0x8000000000000000) == 0)
    {
      v28 = v21;
      v29 = v15;
      if (!v15)
      {
        while (1)
        {
          v21 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v21 >= v60)
          {
            goto LABEL_18;
          }

          v29 = *(v61 + 8 * v21);
          ++v28;
          if (v29)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_31;
      }

LABEL_8:
      v22 = (v29 - 1) & v29;
      v23 = *(*(v16 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v29)))));

      if (!v23)
      {
        break;
      }

      goto LABEL_9;
    }

    v30 = sub_224DAFB18();
    if (!v30)
    {
      break;
    }

    v32 = v31;
    *&v62[0] = v30;
    sub_224A3B79C(0, &qword_2813508E8, 0x277D7BC20);
    swift_dynamicCast();
    v23 = *&v67[0];
    *&v62[0] = v32;
    type metadata accessor for WidgetRendererSession(0);
    swift_dynamicCast();
    v22 = v15;
    if (!v23)
    {
      break;
    }

LABEL_9:

    sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
    v15 = v22;
    v24 = [v23 widget];
    v25 = v16;
    v26 = [v24 extensionIdentity];

    v27 = sub_224DAF6A8();
    v16 = v25;

    if (v27)
    {
      result = sub_224A3B7E4(v25);
      v51 = &v70;
      goto LABEL_27;
    }
  }

LABEL_18:
  result = sub_224A3B7E4(v16);
  if (*v59)
  {
    return result;
  }

  sub_224A3317C(*(v56 + OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__services) + 136, v64);
  v34 = v65;
  v35 = v66;
  __swift_project_boxed_opaque_existential_1(v64, v65);
  (*(v35 + 32))(v62, 257, v34, v35);
  if (!*(&v63 + 1))
  {
    sub_224A3311C(v62, &qword_27D6F50E0, &qword_224DB41A0);
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  v67[0] = v62[0];
  v67[1] = v62[1];
  v67[2] = v63;
  __swift_destroy_boxed_opaque_existential_1(v64);
  v36 = *MEMORY[0x277CFA138];
  v37 = v69;
  swift_beginAccess();
  v38 = v53;
  v39 = v54;
  (*(v53 + 16))(v57, v37 + v36, v54);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v15 = v55;
  (*(*(v40 - 8) + 56))(v55, 1, 1, v40);
  v41 = type metadata accessor for HostDescriptorPredicate(0);
  *(v15 + v41[5]) = 3;
  *(v15 + v41[6]) = 3;
  v42 = v41[7];
  v43 = *(v38 + 56);
  v43(v15 + v42, 1, 1, v39);
  v44 = v41[8];
  v45 = sub_224DABE18();
  (*(*(v45 - 8) + 56))(v15 + v44, 1, 1, v45);
  v46 = v41[9];
  v47 = sub_224DAC268();
  (*(*(v47 - 8) + 56))(v15 + v46, 1, 1, v47);
  v48 = v15 + v41[10];
  *v48 = 0;
  *(v48 + 8) = 1;
  sub_224A3311C(v15 + v42, &unk_27D6F6140, qword_224DBB6B0);
  (*(v38 + 32))(v15 + v42, v57, v39);
  v43(v15 + v42, 0, 1, v39);
  (*(*(v41 - 1) + 56))(v15, 0, 1, v41);
  v49 = sub_224A6BAF8(v15);
  if (v49)
  {
    if (!(v49 >> 62))
    {
      v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_23;
    }

LABEL_31:
    v50 = sub_224DAF838();
LABEL_23:

    sub_224A699F0(v67);
    result = sub_224A3311C(v15, &qword_27D6F46D0, &unk_224DBD6D0);
    if (!v50)
    {
      return result;
    }

    v51 = &v68;
LABEL_27:
    **(v51 - 32) = 1;
    return result;
  }

  sub_224A699F0(v67);
  return sub_224A3311C(v15, &qword_27D6F46D0, &unk_224DBD6D0);
}

id sub_224A837F0(id result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = *(a5 + 48);
  v9 = sub_224DAC268();
  (*(*(v9 - 8) + 16))(v7, v8 + *(*(v9 - 8) + 72) * a2, v9);
  v10 = *(*(a5 + 56) + 8 * a2);

  return v10;
}

uint64_t sub_224A838C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

id sub_224A8392C()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  sub_224DA9FE8();
  v1 = sub_224DAEDE8();

  v2 = sub_224DAEDE8();
  v3 = [ObjCClassFromMetadata newAssertionForBundleIdentifier:v1 withReason:v2 level:2];

  return v3;
}

uint64_t sub_224A839FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224A83A44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_224A83A8C(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = sub_224DAC378();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_224A3311C(a1, &qword_27D6F3948, &qword_224DB5C10);
    sub_224B0E020(a2, v8);

    sub_224A3311C(v8, &qword_27D6F3948, &qword_224DB5C10);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_224B22D18(v13, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v16;
  }
}

void sub_224A83C50(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v37 = a1(0);
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v7);
  v36 = v34 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = sub_224DAFB88();
  v11 = v10;
  if (*(v9 + 16))
  {
    v34[0] = v6;
    v12 = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || v12 >= v9 + 64 + 8 * v14)
    {
      memmove(v12, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v38 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    v34[1] = v39 + 32;
    v34[2] = v39 + 16;
    for (i = v9; v20; v9 = i)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = v22 | (v16 << 6);
      v26 = *(v9 + 56);
      v27 = *(*(v9 + 48) + 8 * v25);
      v28 = v39;
      v29 = *(v39 + 72) * v25;
      v31 = v36;
      v30 = v37;
      (*(v39 + 16))(v36, v26 + v29, v37);
      v32 = v38;
      *(*(v38 + 48) + 8 * v25) = v27;
      (*(v28 + 32))(*(v32 + 56) + v29, v31, v30);
      v33 = v27;
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v34[0];
        v11 = v38;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }
}

double sub_224A83EBC()
{
  v1 = v0;
  v2 = sub_224DAB7B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAB848();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DAB878();
  v36 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = v29 - v18;
  os_unfair_lock_assert_owner(*(*(v1 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock) + 16));
  if (*(v1 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated))
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v35 = v2;
  v2 = v12;
  v12 = OBJC_IVAR____TtC10ChronoCore15LocationService_graceStoreFlushPending;
  if (*(v1 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceStoreFlushPending))
  {
    return result;
  }

  v32 = v8;
  v34 = v3;
  if (qword_281351430 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v31 = v6;
  v33 = v7;
  v21 = sub_224DAB258();
  __swift_project_value_buffer(v21, qword_281364D60);
  v22 = sub_224DAB228();
  v23 = sub_224DAF278();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_224A2F000, v22, v23, "[service] enqueueing graceStore flush", v24, 2u);
    MEMORY[0x22AA5EED0](v24, -1, -1);
  }

  *(v1 + v12) = 1;
  v29[1] = *(v1 + OBJC_IVAR____TtC10ChronoCore15LocationService_serialProcessingQueue);
  sub_224DAB858();
  MEMORY[0x22AA59C40](v16, v1 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceStoreFlushInterval);
  v36 = *(v36 + 8);
  v30 = v2;
  (v36)(v16, v2);
  v25 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_224A8CF8C;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_53;
  v26 = _Block_copy(aBlock);

  sub_224DAB7E8();
  v37 = MEMORY[0x277D84F90];
  sub_224A83A44(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  v27 = v31;
  v28 = v35;
  sub_224DAF788();
  MEMORY[0x22AA5D6A0](v19, v11, v27, v26);
  _Block_release(v26);
  (*(v34 + 8))(v27, v28);
  (*(v32 + 8))(v11, v33);
  (v36)(v19, v30);

  return result;
}

uint64_t sub_224A843B8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_224A843F0()
{
  v2 = sub_224DAC378();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6938, &qword_224DC0A70);
  MEMORY[0x28223BE20](v7, v8);
  v97 = &v87 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v88 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v87 - v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  v89 = &v87 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v87 - v23;
  v26 = MEMORY[0x28223BE20](v22, v25);
  v100 = &v87 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v101 = &v87 - v30;
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v87 - v32;
  os_unfair_lock_assert_owner(*(*(v0 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock) + 16));
  if (*(v0 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated))
  {
LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
    goto LABEL_31;
  }

  v94 = v7;
  v87 = v6;
  v90 = v17;
  v95 = v2;
  v96 = v24;
  v34 = *(v3 + 56);
  v102 = v33;
  v92 = v34;
  v93 = v3 + 56;
  v34(v33, 1, 1, v2);
  v35 = OBJC_IVAR____TtC10ChronoCore15LocationService_extInfoByIdentifier;
  swift_beginAccess();
  v36 = *(v0 + v35);
  v98 = v0;
  v99 = v3;
  if ((v36 & 0xC000000000000001) != 0)
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v7 = sub_224DAFA68() | 0x8000000000000000;
  }

  else
  {
    v40 = -1 << *(v36 + 32);
    v38 = ~v40;
    v37 = v36 + 64;
    v41 = -v40;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    else
    {
      v42 = -1;
    }

    v39 = v42 & *(v36 + 64);
    v7 = v36;
  }

  v43 = 0;
  v91 = v38;
  v1 = (v38 + 64) >> 6;
  if (v7 < 0)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v44 = v43;
    v45 = v39;
    v6 = v43;
    if (!v39)
    {
      while (1)
      {
        v6 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          break;
        }

        if (v6 >= v1)
        {
          goto LABEL_19;
        }

        v45 = *(v37 + 8 * v6);
        ++v44;
        if (v45)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_53;
    }

LABEL_13:
    v46 = (v45 - 1) & v45;
    v47 = (v6 << 9) | (8 * __clz(__rbit64(v45)));
    v48 = *(*(v7 + 56) + v47);
    v49 = *(*(v7 + 48) + v47);

    if (!v49)
    {
      break;
    }

    while (1)
    {

      v53 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
      swift_beginAccess();
      v103 = v46;
      v54 = v37;
      v55 = v7;
      v56 = v100;
      sub_224A3796C(v48 + v53, v100, &qword_27D6F3948, &qword_224DB5C10);
      v58 = v101;
      v57 = v102;
      sub_224DAF718();

      v59 = v56;
      v7 = v55;
      v37 = v54;
      sub_224A3311C(v59, &qword_27D6F3948, &qword_224DB5C10);
      sub_224A3311C(v57, &qword_27D6F3948, &qword_224DB5C10);
      sub_224A71DBC(v58, v57);
      v43 = v6;
      v39 = v103;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_15:
      v50 = sub_224DAFB18();
      if (v50)
      {
        v52 = v51;
        v104 = v50;
        sub_224DAF538();
        swift_dynamicCast();
        v49 = v105;
        v104 = v52;
        type metadata accessor for ExtensionInfo(0);
        swift_dynamicCast();
        v48 = v105;
        v6 = v43;
        v46 = v39;
        if (v49)
        {
          continue;
        }
      }

      goto LABEL_19;
    }
  }

LABEL_19:
  sub_224A3B7E4(v7);
  v6 = v98;
  v103 = OBJC_IVAR____TtC10ChronoCore15LocationService_graceTimer;
  if (*(v98 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceTimer))
  {

    v7 = v96;
    sub_224DAC628();

    v60 = 0;
  }

  else
  {
    v60 = 1;
    v7 = v96;
  }

  v1 = v102;
  v61 = v95;
  v62 = v99;
  v92(v7, v60, 1, v95);
  v63 = *(v94 + 48);
  v64 = v97;
  sub_224A3796C(v1, v97, &qword_27D6F3948, &qword_224DB5C10);
  v65 = v64;
  sub_224A3796C(v7, v64 + v63, &qword_27D6F3948, &qword_224DB5C10);
  v66 = *(v62 + 48);
  if (v66(v65, 1, v61) == 1)
  {
    if (v66(v65 + v63, 1, v61) == 1)
    {
      sub_224A3311C(v65, &qword_27D6F3948, &qword_224DB5C10);
LABEL_41:
      sub_224A3311C(v1, &qword_27D6F3948, &qword_224DB5C10);
      sub_224A3311C(v7, &qword_27D6F3948, &qword_224DB5C10);
      return;
    }

    goto LABEL_27;
  }

  v67 = v89;
  sub_224A3796C(v65, v89, &qword_27D6F3948, &qword_224DB5C10);
  if (v66(v65 + v63, 1, v61) == 1)
  {
    (*(v99 + 8))(v67, v61);
LABEL_27:
    sub_224A3311C(v65, &qword_27D6F6938, &qword_224DC0A70);
    goto LABEL_28;
  }

  v80 = v99;
  v81 = v87;
  (*(v99 + 32))(v87, v65 + v63, v61);
  sub_224A83A44(&unk_281350DE0, MEMORY[0x277CF9A10], MEMORY[0x277CF9A20]);
  v82 = v65;
  v83 = sub_224DAEDD8();
  v84 = *(v80 + 8);
  v84(v81, v61);
  v84(v67, v61);
  v6 = v98;
  v1 = v102;
  sub_224A3311C(v82, &qword_27D6F3948, &qword_224DB5C10);
  if (v83)
  {
    goto LABEL_41;
  }

LABEL_28:
  v68 = v90;
  sub_224A3796C(v1, v90, &qword_27D6F3948, &qword_224DB5C10);
  v69 = v66(v68, 1, v61);
  sub_224A3311C(v68, &qword_27D6F3948, &qword_224DB5C10);
  v70 = v66(v7, 1, v61);
  if (v69 != 1)
  {
    if (v70 == 1)
    {
      if (qword_281351430 != -1)
      {
        swift_once();
      }

      v75 = sub_224DAB258();
      __swift_project_value_buffer(v75, qword_281364D60);
      v76 = sub_224DAB228();
      v77 = sub_224DAF278();
      if (!os_log_type_enabled(v76, v77))
      {
        goto LABEL_47;
      }

      v78 = swift_slowAlloc();
      *v78 = 0;
      v79 = "[service] scheduling timeout";
    }

    else
    {
      if (qword_281351430 != -1)
      {
        swift_once();
      }

      v85 = sub_224DAB258();
      __swift_project_value_buffer(v85, qword_281364D60);
      v76 = sub_224DAB228();
      v77 = sub_224DAF278();
      if (!os_log_type_enabled(v76, v77))
      {
        goto LABEL_47;
      }

      v78 = swift_slowAlloc();
      *v78 = 0;
      v79 = "[service] rescheduling timeout";
    }

    _os_log_impl(&dword_224A2F000, v76, v77, v79, v78, 2u);
    MEMORY[0x22AA5EED0](v78, -1, -1);
LABEL_47:

    if (*(v6 + v103))
    {

      sub_224DAC5F8();
    }

    v86 = v88;
    sub_224A3796C(v1, v88, &qword_27D6F3948, &qword_224DB5C10);
    if (v66(v86, 1, v61) != 1)
    {
      sub_224DAC648();
      sub_224DAC618();
      *(v6 + v103) = sub_224DAC608();

      swift_allocObject();
      swift_weakInit();

      sub_224DAC638();

      sub_224A3311C(v1, &qword_27D6F3948, &qword_224DB5C10);
      sub_224A3311C(v7, &qword_27D6F3948, &qword_224DB5C10);
      goto LABEL_51;
    }

    __break(1u);
    goto LABEL_56;
  }

  if (v70 == 1)
  {
    goto LABEL_41;
  }

  if (qword_281351430 != -1)
  {
    goto LABEL_54;
  }

LABEL_31:
  v71 = sub_224DAB258();
  __swift_project_value_buffer(v71, qword_281364D60);
  v72 = sub_224DAB228();
  v73 = sub_224DAF278();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_224A2F000, v72, v73, "[service] cancelling timeout", v74, 2u);
    MEMORY[0x22AA5EED0](v74, -1, -1);
  }

  if (!*(v6 + v103))
  {
LABEL_56:
    __break(1u);
    return;
  }

  sub_224DAC5F8();

  sub_224A3311C(v1, &qword_27D6F3948, &qword_224DB5C10);
  sub_224A3311C(v7, &qword_27D6F3948, &qword_224DB5C10);
  *(v6 + v103) = 0;
LABEL_51:
}

void sub_224A85004(void *a1, void *a2)
{
  BSDispatchQueueAssert();
  v5 = [a2 unsignedIntegerValue];
  if (qword_281351580 != -1)
  {
    swift_once();
  }

  v6 = sub_224DAB258();
  __swift_project_value_buffer(v6, qword_281364EC8);
  v7 = v2;
  v8 = a1;
  v9 = sub_224DAB228();
  v10 = sub_224DAF278();

  v24 = v5;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25[0] = v13;
    *v11 = 136446722;
    *(v11 + 4) = sub_224A33F74(*&v7[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier], *&v7[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier + 8], v25);
    *(v11 + 12) = 2114;
    *(v11 + 14) = v8;
    *v12 = v8;
    *(v11 + 22) = 2082;
    v14 = v8;
    v15 = NSStringFromWRReloadReason();
    v16 = sub_224DAEE18();
    v18 = v17;

    v19 = sub_224A33F74(v16, v18, v25);

    *(v11 + 24) = v19;
    _os_log_impl(&dword_224A2F000, v9, v10, "[%{public}s] Received message to reload %{public}@ for reason: %{public}s", v11, 0x20u);
    sub_224A3311C(v12, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v13, -1, -1);
    MEMORY[0x22AA5EED0](v11, -1, -1);
  }

  v20 = *&v7[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock];
  os_unfair_lock_lock(*(v20 + 16));
  v21 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock_sessions;
  swift_beginAccess();
  v22 = *&v7[v21];

  v23 = sub_224A71D20(v8, v22);

  if (v23)
  {
    sub_224A852B0(v24);
  }

  os_unfair_lock_unlock(*(v20 + 16));
}

void sub_224A852B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DAC268();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281351528 != -1)
  {
    swift_once();
  }

  v9 = sub_224DAB258();
  __swift_project_value_buffer(v9, qword_281364EB0);

  v10 = sub_224DAB228();
  v11 = sub_224DAF2A8();

  v12 = os_log_type_enabled(v10, v11);
  v39 = a1;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v38 = v4;
    v14 = v13;
    v15 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v5;
    v43[0] = v36;
    *v14 = 138543618;
    v16 = *(v2 + 24);
    *(v14 + 4) = v16;
    *v15 = v16;
    *(v14 + 12) = 2082;
    v17 = v16;
    v18 = NSStringFromWRReloadReason();
    v19 = sub_224DAEE18();
    v21 = v20;

    v22 = sub_224A33F74(v19, v21, v43);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_224A2F000, v10, v11, "[%{public}@] Reload widget for reason: %{public}s", v14, 0x16u);
    sub_224A3311C(v15, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v15, -1, -1);
    v23 = v36;
    __swift_destroy_boxed_opaque_existential_1(v36);
    v5 = v37;
    MEMORY[0x22AA5EED0](v23, -1, -1);
    v24 = v14;
    v4 = v38;
    MEMORY[0x22AA5EED0](v24, -1, -1);
  }

  sub_224A816F0(v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4AE0, &qword_224DB9A88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B08, &qword_224DB9AC0);
  if (swift_dynamicCast())
  {
    sub_224A36F98(v40, v43);
    v25 = v44;
    v26 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    v27 = *(v2 + 40);
    v28 = *(v2 + 32);
    v29 = v27;
    sub_224DAC238();
    (*(v26 + 24))(v8, v39, v25, v26);
    (*(v5 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    v41 = 0;
    memset(v40, 0, sizeof(v40));
    sub_224A3311C(v40, &qword_27D6F4B10, &qword_224DB9AC8);

    v30 = sub_224DAB228();
    v31 = sub_224DAF2A8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138543362;
      v34 = *(v2 + 24);
      *(v32 + 4) = v34;
      *v33 = v34;
      v35 = v34;
      _os_log_impl(&dword_224A2F000, v30, v31, "[%{public}@] Reload widget ignored because service doesn't support reloading.", v32, 0xCu);
      sub_224A3311C(v33, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v33, -1, -1);
      MEMORY[0x22AA5EED0](v32, -1, -1);
    }
  }
}

uint64_t sub_224A8571C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v23[0] = sub_224DACB08();
  v3 = *(v23[0] - 8);
  MEMORY[0x28223BE20](v23[0], v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DACB28();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DACB98();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = v23 - v19;
  sub_224A859B0(a1, (v23 - v19));
  if (a1 > 3)
  {
    v21 = MEMORY[0x277CF9B48];
  }

  else
  {
    v21 = qword_27853F208[a1];
  }

  (*(v8 + 104))(v11, *MEMORY[0x277CF9B50], v7);
  (*(v3 + 104))(v6, *v21, v23[0]);
  (*(v13 + 16))(v17, v20, v12);
  sub_224DACC48();
  sub_224DACC38();
  return (*(v13 + 8))(v20, v12);
}

uint64_t sub_224A859B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v7 = *MEMORY[0x277CF9BE8];
      goto LABEL_16;
    }

    if (a1 == 1)
    {
      v4 = swift_allocObject();
      v5 = 0x8000000224DD0530;
      v6 = 0xD000000000000016;
LABEL_13:
      *(v4 + 16) = v6;
      *(v4 + 24) = v5;
      goto LABEL_14;
    }

LABEL_12:
    v4 = swift_allocObject();
    v5 = 0x8000000224DD0510;
    v6 = 0xD00000000000001ALL;
    goto LABEL_13;
  }

  if (a1 == 4)
  {
    v4 = swift_allocObject();
    strcpy((v4 + 16), "metricsChanged");
    *(v4 + 31) = -18;
LABEL_14:
    *a2 = v4;
    v3 = MEMORY[0x277CF9B70];
    goto LABEL_15;
  }

  if (a1 == 3)
  {
    v3 = MEMORY[0x277CF9BB0];
    goto LABEL_15;
  }

  if (a1 != 2)
  {
    goto LABEL_12;
  }

  v3 = MEMORY[0x277CF9B88];
LABEL_15:
  v7 = *v3;
LABEL_16:
  v8 = sub_224DACB98();
  v9 = *(*(v8 - 8) + 104);

  return v9(a2, v7, v8);
}

uint64_t sub_224A85B1C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224A85B7C(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
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

uint64_t sub_224A85C9C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v25 - v9;
  v11 = *v2;
  sub_224A33088(&unk_281351900, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FA8]);
  v32 = a2;
  v12 = sub_224DAED88();
  v30 = v11 + 56;
  v31 = v11;
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v27 = v2;
    v28 = a1;
    v29 = ~v13;
    v26 = v7;
    v16 = v7 + 16;
    v15 = *(v7 + 16);
    v17 = (v7 + 8);
    v18 = *(v16 + 56);
    v25[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v19 = v15;
      v15(v10, *(v31 + 48) + v18 * v14, v6);
      sub_224A33088(&unk_2813518F0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FB0]);
      v20 = sub_224DAEDD8();
      v21 = *v17;
      (*v17)(v10, v6);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v29;
      v15 = v19;
      if (((*(v30 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v27;
        a1 = v28;
        v7 = v26;
        goto LABEL_7;
      }
    }

    v21(v32, v6);
    v19(v28, *(v31 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v32;
    v15(v10, v32, v6);
    v33 = *v3;
    sub_224AE2B44(v10, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v33;
    (*(v7 + 32))(a1, v23, v6);
    return 1;
  }
}

void sub_224A85FA4(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(char *, char *))
{
  v29 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = v28 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = v28 - v16;
  v18 = 0;
  v30 = a1;
  v21 = *(a1 + 56);
  v20 = a1 + 56;
  v19 = v21;
  v22 = 1 << *(v20 - 24);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v28[2] = v6 + 32;
  v28[3] = v6 + 16;
  v28[1] = v6 + 8;
  if ((v23 & v19) != 0)
  {
    do
    {
      v26 = v18;
LABEL_9:
      v27 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      (*(v6 + 16))(v17, *(v30 + 48) + *(v6 + 72) * (v27 | (v26 << 6)), v5);
      (*(v6 + 32))(v10, v17, v5);
      v29(v14, v10);
      (*(v6 + 8))(v14, v5);
    }

    while (v24);
  }

  while (1)
  {
    v26 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v26 >= v25)
    {

      return;
    }

    v24 = *(v20 + 8 * v26);
    ++v18;
    if (v24)
    {
      v18 = v26;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_224A861C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v6);
  v38 = &v31 - v7;
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v31 = v3;
    v43 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v8, 0);
    v42 = v43;
    v10 = a1 + 56;
    result = sub_224DAF798();
    v11 = result;
    v12 = 0;
    v36 = v5 + 8;
    v37 = v5 + 16;
    v32 = a1 + 64;
    v33 = v8;
    v34 = v5;
    v35 = a1 + 56;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v14 = v11 >> 6;
      if ((*(v10 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      v40 = *(a1 + 36);
      v15 = v38;
      v16 = v39;
      (*(v5 + 16))(v38, *(a1 + 48) + *(v5 + 72) * v11, v39);
      v17 = sub_224DA9FE8();
      v41 = v18;
      result = (*(v5 + 8))(v15, v16);
      v19 = v42;
      v43 = v42;
      v21 = *(v42 + 16);
      v20 = *(v42 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_224A3DFD8((v20 > 1), v21 + 1, 1);
        v19 = v43;
      }

      *(v19 + 16) = v21 + 1;
      v22 = v19 + 16 * v21;
      v23 = v41;
      *(v22 + 32) = v17;
      *(v22 + 40) = v23;
      v13 = 1 << *(a1 + 32);
      if (v11 >= v13)
      {
        goto LABEL_23;
      }

      v10 = v35;
      v24 = *(v35 + 8 * v14);
      if ((v24 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v42 = v19;
      if (v40 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v25 = v24 & (-2 << (v11 & 0x3F));
      if (v25)
      {
        v13 = __clz(__rbit64(v25)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v5 = v34;
      }

      else
      {
        v26 = v14 << 6;
        v27 = v14 + 1;
        v28 = (v32 + 8 * v14);
        v5 = v34;
        while (v27 < (v13 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_224A3E204(v11, v40, 0);
            v13 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = sub_224A3E204(v11, v40, 0);
      }

LABEL_4:
      ++v12;
      v11 = v13;
      if (v12 == v33)
      {
        return v42;
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

uint64_t sub_224A864D0(uint64_t result)
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

  result = sub_224A865C4(result, v10, 1, v3);
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

char *sub_224A865C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
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

void sub_224A866D0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_224A867F4;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_224A37E38;
  v8[3] = &block_descriptor_134;
  v7 = _Block_copy(v8);

  [v5 updateConfiguration_];
  _Block_release(v7);

  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

void sub_224A867F8(void *a1, void *a2)
{

  sub_224A869EC(v3);

  sub_224A3B79C(0, &qword_2813509C0, 0x277D46FA0);
  v4 = sub_224DAEFF8();

  [a1 setPredicates_];
}

char *sub_224A8689C(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_224DAF838();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_224A3B7E4(v8);
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

void *sub_224A8695C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
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

uint64_t *sub_224A86A34(uint64_t *result, uint64_t **a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
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

  sub_224DAF7E8();
  sub_224A3B79C(0, a5, a6);
  sub_224A5D644(a7, a5, a6);
  result = sub_224DAF1F8();
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
      if (!sub_224DAF878())
      {
        goto LABEL_30;
      }

      sub_224A3B79C(0, v28, v29);
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

uint64_t sub_224A86C64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_224A86CAC()
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F34A0, &unk_224DB3A20);
  v2 = MEMORY[0x28223BE20](v50, v1);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v56 = &v46 - v7;
  MEMORY[0x28223BE20](v6, v8);
  v55 = &v46 - v9;
  v10 = *(v0 + 40);
  if (!*(v10 + 16))
  {
    return 0;
  }

  v11 = sub_224A870EC(MEMORY[0x277D84F90]);
  v12 = v10 + 64;
  v13 = 1 << *(v10 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v10 + 64);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  v47 = v16;
  v48 = v10 + 64;
  v54 = v4;
  v49 = v10;
  while (v15)
  {
LABEL_12:
    v22 = __clz(__rbit64(v15)) | (v17 << 6);
    v23 = *(v10 + 48);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    v25 = *(v24 - 8);
    v51 = v25[9];
    v26 = v55;
    v52 = v25[2];
    v53 = v24;
    v52(v55, v23 + v51 * v22);
    v27 = v50;
    *(v26 + *(v50 + 48)) = *(*(v10 + 56) + 8 * v22);
    v28 = v56;
    sub_224A3796C(v26, v56, &qword_27D6F34A0, &unk_224DB3A20);

    v29 = v54;
    sub_224A3796C(v26, v54, &qword_27D6F34A0, &unk_224DB3A20);
    v30 = *(v29 + *(v27 + 48));
    v31 = *(v30 + *(*v30 + 104));

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v11;
    v34 = sub_224A683FC(v28);
    v35 = v11[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_27;
    }

    v38 = v33;
    if (v11[3] >= v37)
    {
      v41 = v53;
      if (isUniquelyReferenced_nonNull_native)
      {
        v11 = v57;
        if (v33)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_224B25EF4();
        v11 = v57;
        if (v38)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_224A872E0(v37, isUniquelyReferenced_nonNull_native);
      v39 = sub_224A683FC(v56);
      v41 = v53;
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_29;
      }

      v34 = v39;
      v11 = v57;
      if (v38)
      {
LABEL_5:
        v18 = v11[7];
        v19 = *(v18 + 8 * v34);
        *(v18 + 8 * v34) = v31;

        sub_224A3311C(v55, &qword_27D6F34A0, &unk_224DB3A20);
        goto LABEL_6;
      }
    }

    v11[(v34 >> 6) + 8] |= 1 << v34;
    (v52)(v11[6] + v34 * v51, v56, v41);
    *(v11[7] + 8 * v34) = v31;
    sub_224A3311C(v55, &qword_27D6F34A0, &unk_224DB3A20);
    v42 = v11[2];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_28;
    }

    v11[2] = v44;
LABEL_6:
    v15 &= v15 - 1;
    v20 = v25[1];
    v20(v56, v41);
    v20(v54, v41);
    v12 = v48;
    v10 = v49;
    v16 = v47;
  }

  while (1)
  {
    v21 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v21 >= v16)
    {

      return v11;
    }

    v15 = *(v12 + 8 * v21);
    ++v17;
    if (v15)
    {
      v17 = v21;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

unint64_t sub_224A870EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6FC0, &qword_224DC3B68);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F39B0, &unk_224DC3B70);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &qword_27D6F6FC0, &qword_224DC3B68);
      result = sub_224A683FC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

void sub_224A872E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v36 - v8;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F39B0, &unk_224DC3B70);
  v41 = v4;
  v11 = sub_224DAFB98();
  v12 = v11;
  if (*(v10 + 16))
  {
    v45 = v9;
    v37 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v10;
    v40 = v6;
    v42 = (v6 + 32);
    v19 = v11 + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v44 = *(v40 + 72);
      v26 = v25 + v44 * v24;
      if (v41)
      {
        (*v42)(v45, v26, v5);
        v43 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v38)(v45, v26, v5);
        v43 = *(*(v10 + 56) + 8 * v24);
      }

      sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA018]);
      v27 = sub_224DAED88();
      v28 = -1 << *(v12 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v19 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v19 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v19 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v42)((*(v12 + 48) + v44 * v20), v45, v5);
      *(*(v12 + 56) + 8 * v20) = v43;
      ++*(v12 + 16);
      v10 = v39;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v10 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero(v14, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v35;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

unint64_t sub_224A876D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_224DAFBB8();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_224A3A40C(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

void sub_224A877D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v38 = v6;
  v8 = sub_224DAFB98();
  v9 = v8;
  if (*(v7 + 16))
  {
    v37 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v38 & 1) == 0)
      {

        v27 = v26;
      }

      sub_224DAFE68();
      sub_224DAEE78();
      v28 = sub_224DAFEA8();
      v29 = -1 << *(v9 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v4;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

unint64_t sub_224A87A80()
{
  result = qword_281350A30;
  if (!qword_281350A30)
  {
    sub_224A3B79C(255, &qword_281350A40, 0x277CFA3A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350A30);
  }

  return result;
}

uint64_t sub_224A87AE8(void *a1, uint64_t a2)
{
  v82 = a1;
  v83 = sub_224DACC88();
  v79 = *(v83 - 8);
  v4 = MEMORY[0x28223BE20](v83, v3);
  v76 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v78 = &v75 - v7;
  v8 = sub_224DAB258();
  v84 = *(v8 - 8);
  v85 = v8;
  v10 = MEMORY[0x28223BE20](v8, v9);
  v77 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v75 = &v75 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v17 = (&v75 - v16);
  v18 = sub_224DACB98();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v75 - v25;
  sub_224DACC68();
  v27 = *(v19 + 104);
  v27(v23, *MEMORY[0x277CF9BF0], v18);
  v28 = sub_224DACB88();
  v29 = *(v19 + 8);
  v29(v23, v18);
  v80 = v29;
  v29(v26, v18);
  if (v28 & 1) != 0 || (sub_224DACC68(), v27(v23, *MEMORY[0x277CF9B60], v18), v30 = sub_224DACB88(), v31 = v23, v32 = v80, v80(v31, v18), v32(v26, v18), (v30))
  {
    v33 = v84;
    (*(v84 + 16))(v17, &v81[OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger], v85);
    v35 = v78;
    v34 = v79;
    v36 = v83;
    (*(v79 + 16))(v78, a2, v83);
    v37 = v82;
    v82 = v17;
    v38 = sub_224DAB228();
    v39 = sub_224DAF2A8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v86 = v81;
      *v40 = 138543618;
      *(v40 + 4) = v37;
      *v41 = v37;
      *(v40 + 12) = 2082;
      v42 = v37;
      LODWORD(v77) = v39;
      sub_224DACC68();
      sub_224A79F60(&unk_281350D28, MEMORY[0x277CF9BF8], MEMORY[0x277CF9C00]);
      v43 = sub_224DAFD28();
      v45 = v44;
      v80(v26, v18);
      (*(v34 + 8))(v35, v83);
      v46 = sub_224A33F74(v43, v45, &v86);

      *(v40 + 14) = v46;
      _os_log_impl(&dword_224A2F000, v38, v77, "%{public}@ Checking cache because config reason is %{public}s", v40, 0x16u);
      sub_224A3311C(v41, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v41, -1, -1);
      v47 = v81;
      __swift_destroy_boxed_opaque_existential_1(v81);
      MEMORY[0x22AA5EED0](v47, -1, -1);
      MEMORY[0x22AA5EED0](v40, -1, -1);

      (*(v84 + 8))(v82, v85);
    }

    else
    {

      (*(v34 + 8))(v35, v36);
      (*(v33 + 8))(v82, v85);
    }

    return 1;
  }

  v48 = v82;
  v49 = [v82 isRemote];
  v50 = *(v84 + 16);
  if (v49)
  {
    v51 = v75;
    v52 = v85;
    v50(v75, &v81[OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger], v85);
    v53 = v48;
    v54 = sub_224DAB228();
    v55 = sub_224DAF2A8();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138543362;
      *(v56 + 4) = v53;
      *v57 = v53;
      v58 = v53;
      _os_log_impl(&dword_224A2F000, v54, v55, "%{public}@ Checking cache because extension is remote", v56, 0xCu);
      sub_224A3311C(v57, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v57, -1, -1);
      MEMORY[0x22AA5EED0](v56, -1, -1);
    }

    (*(v84 + 8))(v51, v52);
    return 1;
  }

  v60 = v77;
  v50(v77, &v81[OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger], v85);
  v61 = v79;
  v62 = v76;
  v63 = v83;
  (*(v79 + 16))(v76, a2, v83);
  v64 = v48;
  v65 = sub_224DAB228();
  v66 = sub_224DAF2A8();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v86 = v82;
    *v67 = 138543618;
    *(v67 + 4) = v64;
    *v68 = v64;
    *(v67 + 12) = 2082;
    v69 = v64;
    LODWORD(v81) = v66;
    sub_224DACC68();
    sub_224A79F60(&unk_281350D28, MEMORY[0x277CF9BF8], MEMORY[0x277CF9C00]);
    v70 = sub_224DAFD28();
    v72 = v71;
    v80(v26, v18);
    (*(v61 + 8))(v62, v83);
    v73 = sub_224A33F74(v70, v72, &v86);

    *(v67 + 14) = v73;
    _os_log_impl(&dword_224A2F000, v65, v81, "%{public}@ Not checking cache (%{public}s)", v67, 0x16u);
    sub_224A3311C(v68, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v68, -1, -1);
    v74 = v82;
    __swift_destroy_boxed_opaque_existential_1(v82);
    MEMORY[0x22AA5EED0](v74, -1, -1);
    MEMORY[0x22AA5EED0](v67, -1, -1);

    (*(v84 + 8))(v77, v85);
  }

  else
  {

    (*(v61 + 8))(v62, v63);
    (*(v84 + 8))(v60, v85);
  }

  return 0;
}

uint64_t sub_224A883DC@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = *(v3 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
  os_unfair_lock_lock(*(v8 + 16));
  sub_224A8850C(v4, a1, a2 & 1, &v14);
  os_unfair_lock_unlock(*(v8 + 16));
  v9 = v14;
  if ((v16 & 1) != 0 || v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_224DB2780;
    *(v10 + 32) = a1;
    v14 = v10;
    v11 = a1;
    sub_224DAB348();
  }

  result = 0;
  if (v9)
  {
    result = sub_224DAC198();
    v13 = MEMORY[0x277CF9950];
  }

  else
  {
    v13 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  *a3 = v9;
  a3[3] = result;
  a3[4] = v13;
  return result;
}

void sub_224A8850C(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v136 = &v120 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v120 - v14;
  v16 = sub_224DAC378();
  v134 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6938, &qword_224DC0A70);
  MEMORY[0x28223BE20](v132, v20);
  v135 = &v120 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v24 = MEMORY[0x28223BE20](v22 - 8, v23);
  v26 = MEMORY[0x28223BE20](v24, v25);
  v28 = MEMORY[0x28223BE20](v26, v27);
  v30 = &v120 - v29;
  v32 = MEMORY[0x28223BE20](v28, v31);
  v34 = MEMORY[0x28223BE20](v32, v33);
  v137 = &v120 - v35;
  MEMORY[0x28223BE20](v34, v36);
  v140 = a1;
  if (*(a1 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated))
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    return;
  }

  v126 = v30;
  v131 = v40;
  v121 = v39;
  v125 = &v120 - v37;
  v122 = v38;
  v124 = v15;
  v129 = a4;
  if (qword_281351430 != -1)
  {
    swift_once();
  }

  v41 = sub_224DAB258();
  __swift_project_value_buffer(v41, qword_281364D60);
  v42 = a2;
  v43 = sub_224DAB228();
  v44 = sub_224DAF278();

  v45 = os_log_type_enabled(v43, v44);
  v133 = v12;
  v130 = v11;
  v127 = v16;
  v120 = v19;
  v128 = a3;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v139[0] = v48;
    *v46 = 138543618;
    *(v46 + 4) = v42;
    *v47 = v42;
    *(v46 + 12) = 2082;
    v49 = (a3 & 1) == 0;
    if (a3)
    {
      v50 = 0x7465736572;
    }

    else
    {
      v50 = 1701736302;
    }

    if (v49)
    {
      v51 = 0xE400000000000000;
    }

    else
    {
      v51 = 0xE500000000000000;
    }

    v52 = v42;
    v53 = sub_224A33F74(v50, v51, v139);

    *(v46 + 14) = v53;
    _os_log_impl(&dword_224A2F000, v43, v44, "[ext:%{public}@] new assertion marking visible with grace policy %{public}s", v46, 0x16u);
    sub_224A3311C(v47, &unk_27D6F69F0, &unk_224DB3900);
    v54 = v47;
    v11 = v130;
    MEMORY[0x22AA5EED0](v54, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x22AA5EED0](v48, -1, -1);
    MEMORY[0x22AA5EED0](v46, -1, -1);
  }

  v55 = OBJC_IVAR____TtC10ChronoCore15LocationService_extInfoByIdentifier;
  v56 = v140;
  swift_beginAccess();
  v57 = sub_224A71E2C(v42, *(v56 + v55), sub_224A3E7EC, type metadata accessor for ExtensionInfo);
  if (v57)
  {
    swift_endAccess();
    v58 = v57;
    goto LABEL_25;
  }

  swift_endAccess();
  v59 = v125;
  (*(v134 + 56))(v125, 1, 1, v127);
  type metadata accessor for ExtensionInfo(0);
  swift_allocObject();
  v60 = v42;
  v61 = v140;

  v58 = sub_224D2EC44(v60, v61, v59);

  v62 = *(v58 + 16);
  swift_beginAccess();
  v63 = *(v61 + v55);
  if ((v63 & 0xC000000000000001) == 0)
  {
    swift_retain_n();
    v68 = v62;
    goto LABEL_22;
  }

  if (v63 < 0)
  {
    v64 = *(v61 + v55);
  }

  else
  {
    v64 = v63 & 0xFFFFFFFFFFFFFF8;
  }

  swift_retain_n();
  v65 = v62;
  v66 = sub_224DAF838();
  if (!__OFADD__(v66, 1))
  {
    v67 = sub_224D2CDF0(v64, v66 + 1, &qword_27D6F3940, &qword_224DB4740, type metadata accessor for ExtensionInfo, sub_224B19B38);
    *(v140 + v55) = v67;
LABEL_22:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v140;
    v138 = *(v140 + v55);
    sub_224B237E0(v58, v62, isUniquelyReferenced_nonNull_native);
    *(v70 + v55) = v138;

    swift_endAccess();

    v71 = sub_224DAB228();
    v72 = sub_224DAF2A8();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v123 = v42;
      v75 = v11;
      v76 = v74;
      *v73 = 138543362;
      v77 = *(v58 + 16);
      *(v73 + 4) = v77;
      *v74 = v77;
      v78 = v77;
      _os_log_impl(&dword_224A2F000, v71, v72, "[ext:%{public}@] started tracking", v73, 0xCu);
      sub_224A3311C(v76, &unk_27D6F69F0, &unk_224DB3900);
      v79 = v76;
      v11 = v75;
      v42 = v123;
      MEMORY[0x22AA5EED0](v79, -1, -1);
      MEMORY[0x22AA5EED0](v73, -1, -1);
    }

LABEL_25:
    v80 = v133;

    v81 = v131;
    sub_224A71B08(v131);
    *(v58 + 32) = 0;
    LODWORD(v82) = v128 & 1;
    sub_224A8935C(v58, v140, v42, v128 & 1);
    v83 = *(v58 + 32);
    *(v58 + 32) = 2;
    if ((v83 & 1) == 0)
    {

      sub_224A71DBC(v81, v137);
      goto LABEL_34;
    }

    v128 = v82;
    v123 = v42;
    sub_224A6FDF8();
    v82 = v126;
    sub_224A71B08(v126);
    sub_224A3796C(v82, v137, &qword_27D6F3948, &qword_224DB5C10);
    v84 = *(v132 + 48);
    v85 = v135;
    sub_224A3796C(v81, v135, &qword_27D6F3948, &qword_224DB5C10);
    sub_224A3796C(v82, v85 + v84, &qword_27D6F3948, &qword_224DB5C10);
    v86 = *(v134 + 48);
    v87 = v127;
    if (v86(v85, 1, v127) == 1)
    {

      sub_224A3311C(v82, &qword_27D6F3948, &qword_224DB5C10);
      sub_224A3311C(v81, &qword_27D6F3948, &qword_224DB5C10);
      v88 = v86(v135 + v84, 1, v87);
      v11 = v130;
      v80 = v133;
      LOBYTE(v82) = v128;
      if (v88 == 1)
      {
        sub_224A3311C(v135, &qword_27D6F3948, &qword_224DB5C10);
        v42 = v123;
        goto LABEL_34;
      }
    }

    else
    {
      v89 = v135;
      v82 = v121;
      sub_224A3796C(v135, v121, &qword_27D6F3948, &qword_224DB5C10);
      if (v86(v89 + v84, 1, v87) != 1)
      {
        v109 = v134;
        v110 = v135;
        v111 = v120;
        (*(v134 + 32))(v120, v135 + v84, v87);
        sub_224A83A44(&unk_281350DE0, MEMORY[0x277CF9A10], MEMORY[0x277CF9A20]);
        v112 = sub_224DAEDD8();

        v113 = *(v109 + 8);
        v113(v111, v87);
        sub_224A3311C(v126, &qword_27D6F3948, &qword_224DB5C10);
        sub_224A3311C(v131, &qword_27D6F3948, &qword_224DB5C10);
        v113(v82, v87);
        sub_224A3311C(v110, &qword_27D6F3948, &qword_224DB5C10);
        v11 = v130;
        v80 = v133;
        v42 = v123;
        LOBYTE(v82) = v128;
        if (v112)
        {
LABEL_34:
          v95 = *MEMORY[0x277CFA130];
          swift_beginAccess();
          v96 = v42 + v95;
          v97 = v136;
          sub_224A3796C(v96, v136, &unk_27D6F5060, &qword_224DB5620);
          if ((*(v80 + 48))(v97, 1, v11) == 1)
          {
            sub_224A3311C(v136, &unk_27D6F5060, &qword_224DB5620);
          }

          else
          {
            v98 = v124;
            (*(v80 + 32))(v124, v136, v11);
            v99 = OBJC_IVAR____TtC10ChronoCore15LocationService_authMonitorByIdentifier;
            v100 = v140;
            swift_beginAccess();
            v101 = *(v100 + v99);
            if (*(v101 + 16) && (v102 = sub_224A89A08(v98), (v103 & 1) != 0))
            {
              v104 = *(*(v101 + 56) + 8 * v102);
              swift_endAccess();
              v105 = *&v104[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_lock];
              v106 = *(v105 + 16);
              v107 = v104;
              os_unfair_lock_lock(v106);
              v108 = v107[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_status];
              if (v108 == 2)
              {
                os_unfair_lock_unlock(*(v105 + 16));
              }

              else
              {
                os_unfair_lock_unlock(*(v105 + 16));
                if (v108)
                {
                  v114 = sub_224D27494(0x697620796C77656ELL, 0xED0000656C626973);

                  (*(v133 + 8))(v124, v11);
LABEL_47:
                  v115 = sub_224A89A2C(0x697620796C77656ELL, 0xED0000656C626973);
                  sub_224DAC198();
                  v116 = swift_allocObject();
                  swift_weakInit();
                  v117 = swift_allocObject();
                  *(v117 + 16) = v116;
                  *(v117 + 24) = v58;
                  *(v117 + 32) = v82;

                  v118 = sub_224DAC1A8();
                  sub_224A3311C(v137, &qword_27D6F3948, &qword_224DB5C10);

                  v119 = v129;
                  *v129 = v118;
                  *(v119 + 8) = v114 & 1;
                  *(v119 + 9) = v115 & 1;
                  return;
                }
              }

              (*(v133 + 8))(v124, v11);
            }

            else
            {
              swift_endAccess();
              (*(v80 + 8))(v98, v11);
            }
          }

          v114 = 0;
          goto LABEL_47;
        }

LABEL_33:
        v90 = *(v58 + 16);
        v91 = v125;
        sub_224A3796C(v137, v125, &qword_27D6F3948, &qword_224DB5C10);
        v92 = v122;
        sub_224A3796C(v91, v122, &qword_27D6F3948, &qword_224DB5C10);
        swift_beginAccess();

        v93 = v90;
        v94 = v92;
        v42 = v123;
        sub_224A83A8C(v94, v93);
        swift_endAccess();

        v80 = v133;
        sub_224A3311C(v91, &qword_27D6F3948, &qword_224DB5C10);
        sub_224A83EBC();
        LOBYTE(v82) = v128;
        sub_224A843F0();
        goto LABEL_34;
      }

      sub_224A3311C(v126, &qword_27D6F3948, &qword_224DB5C10);
      sub_224A3311C(v131, &qword_27D6F3948, &qword_224DB5C10);
      (*(v134 + 8))(v82, v87);
      v11 = v130;
    }

    sub_224A3311C(v135, &qword_27D6F6938, &qword_224DC0A70);
    goto LABEL_33;
  }

  __break(1u);
}

void sub_224A8935C(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
  swift_beginAccess();
  sub_224A3796C(a1 + v7, v12, &unk_27D6F4700, &unk_224DB3A10);
  v8 = v12[3];
  sub_224A3311C(v12, &unk_27D6F4700, &unk_224DB3A10);
  if (!v8)
  {
    __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
    sub_224DAC6D8();
    if (v11)
    {
      sub_224A36F98(&v10, v12);
      sub_224A3317C(v12, &v10);
      sub_224A3796C(a1 + v7, v9, &unk_27D6F4700, &unk_224DB3A10);
      swift_beginAccess();
      sub_224C4D398(&v10, a1 + v7, &unk_27D6F4700, &unk_224DB3A10);
      swift_endAccess();
      sub_224D25314(v9);
      sub_224A3311C(v9, &unk_27D6F4700, &unk_224DB3A10);
      sub_224A3311C(&v10, &unk_27D6F4700, &unk_224DB3A10);
      __swift_destroy_boxed_opaque_existential_1(v12);
    }

    else
    {
      sub_224A3311C(&v10, &unk_27D6F4700, &unk_224DB3A10);
    }
  }

  sub_224A89504(a4 & 1);
}

void sub_224A89504(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v35[-v9];
  if (*(v1 + 32) == 2)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = *(v1 + 40);
  if (!v11 || (*(v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_refreshVisibility) & 1) == 0)
  {
    *(v1 + 32) = 1;
  }

  v12 = __CFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    goto LABEL_25;
  }

  *(v1 + 40) = v13;
  *(v1 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_refreshVisibility) = 1;
  if (a1)
  {
    if (!*(v1 + 48))
    {
      v14 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
      swift_beginAccess();
      sub_224A3796C(v1 + v14, &v36, &unk_27D6F4700, &unk_224DB3A10);
      if (!v37)
      {
        sub_224A3311C(&v36, &unk_27D6F4700, &unk_224DB3A10);
        if (qword_281351430 == -1)
        {
          goto LABEL_18;
        }

        goto LABEL_27;
      }

      sub_224A36F98(&v36, v38);
      __swift_project_boxed_opaque_existential_1(v38, v38[3]);
      if (sub_224DAE278())
      {
        v15 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
        swift_beginAccess();
        sub_224A3796C(v1 + v15, v10, &qword_27D6F3948, &qword_224DB5C10);
        v16 = sub_224DAC378();
        v17 = *(v16 - 8);
        v18 = (*(v17 + 48))(v10, 1, v16);
        sub_224A3311C(v10, &qword_27D6F3948, &qword_224DB5C10);
        if (v18 != 1)
        {
          if (qword_281351430 != -1)
          {
            swift_once();
          }

          v19 = sub_224DAB258();
          __swift_project_value_buffer(v19, qword_281364D60);

          v20 = sub_224DAB228();
          v21 = sub_224DAF2A8();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            *v22 = 138543362;
            v24 = *(v1 + 16);
            *(v22 + 4) = v24;
            *v23 = v24;
            v25 = v24;
            _os_log_impl(&dword_224A2F000, v20, v21, "[ext:%{public}@] resetting grace period", v22, 0xCu);
            sub_224A3311C(v23, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v23, -1, -1);
            MEMORY[0x22AA5EED0](v22, -1, -1);
          }

          (*(v17 + 56))(v7, 1, 1, v16);
          swift_beginAccess();
          sub_224A838C0(v7, v1 + v15, &qword_27D6F3948, &qword_224DB5C10);
          swift_endAccess();
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v38);
    }

    while (1)
    {
      v33 = *(v1 + 48);
      v12 = __CFADD__(v33, 1);
      v34 = v33 + 1;
      if (!v12)
      {
        break;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      swift_once();
LABEL_18:
      v26 = sub_224DAB258();
      __swift_project_value_buffer(v26, qword_281364D60);

      v27 = sub_224DAB228();
      v28 = sub_224DAF2A8();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138543362;
        v31 = *(v1 + 16);
        *(v29 + 4) = v31;
        *v30 = v31;
        v32 = v31;
        _os_log_impl(&dword_224A2F000, v27, v28, "[ext:%{public}@] not resetting grace period because wantsLocation is ambiguous", v29, 0xCu);
        sub_224A3311C(v30, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v30, -1, -1);
        MEMORY[0x22AA5EED0](v29, -1, -1);
      }
    }

    *(v1 + 48) = v34;
  }
}

uint64_t sub_224A89A48(uint64_t a1, unint64_t a2, uint64_t *a3, const char *a4, const char *a5)
{
  if (!*(v5 + 40))
  {
    return 0;
  }

  v6 = *a3;
  if (*(v5 + *a3) != 1)
  {
    return 0;
  }

  v11 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
  swift_beginAccess();
  sub_224A3796C(v5 + v11, &v30, &unk_27D6F4700, &unk_224DB3A10);
  if (!v31)
  {
    sub_224A3311C(&v30, &unk_27D6F4700, &unk_224DB3A10);
    if (qword_281351430 != -1)
    {
      swift_once();
    }

    v21 = sub_224DAB258();
    __swift_project_value_buffer(v21, qword_281364D60);

    v22 = v5;
    v23 = sub_224DAB228();
    v24 = sub_224DAF2A8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v32[0] = v27;
      *v25 = 138543618;
      v28 = *(v22 + 16);
      *(v25 + 4) = v28;
      *v26 = v28;
      *(v25 + 12) = 2082;
      v29 = v28;
      *(v25 + 14) = sub_224A33F74(a1, a2, v32);
      _os_log_impl(&dword_224A2F000, v23, v24, a5, v25, 0x16u);
      sub_224A3311C(v26, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v26, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x22AA5EED0](v27, -1, -1);
      MEMORY[0x22AA5EED0](v25, -1, -1);
    }

    return 0;
  }

  sub_224A36F98(&v30, v32);
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  if ((sub_224DAE278() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v32);
    return 0;
  }

  if (qword_281351430 != -1)
  {
    swift_once();
  }

  v12 = sub_224DAB258();
  __swift_project_value_buffer(v12, qword_281364D60);

  v13 = sub_224DAB228();
  v14 = sub_224DAF2A8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v30 = v17;
    *v15 = 138543618;
    v18 = *(v5 + 16);
    *(v15 + 4) = v18;
    *v16 = v18;
    *(v15 + 12) = 2082;
    v19 = v18;
    *(v15 + 14) = sub_224A33F74(a1, a2, &v30);
    _os_log_impl(&dword_224A2F000, v13, v14, a4, v15, 0x16u);
    sub_224A3311C(v16, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x22AA5EED0](v17, -1, -1);
    MEMORY[0x22AA5EED0](v15, -1, -1);
  }

  *(v5 + v6) = 0;
  __swift_destroy_boxed_opaque_existential_1(v32);
  return 1;
}

void sub_224A89E40(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = *(v5 + 240);
  os_unfair_lock_lock(*(v6 + 16));
  sub_224A89EC4(v5, a1, a2);
  v7 = *(v6 + 16);

  os_unfair_lock_unlock(v7);
}

uint64_t sub_224A89EC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_lock_visibilityAssertionCount;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (*(v7 + 16) && (v8 = sub_224A3E7EC(a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    v10 = 0;
  }

  result = swift_endAccess();
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(a1 + v6);
    *(a1 + v6) = 0x8000000000000000;
    sub_224A8A0B0(v10 + 1, a2, isUniquelyReferenced_nonNull_native);
    *(a1 + v6) = v18;
    swift_endAccess();
    v13 = sub_224DAC198();
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a2;
    v16 = a2;
    result = sub_224DAC1A8();
    v17 = MEMORY[0x277CF9950];
    a3[3] = v13;
    a3[4] = v17;
    *a3 = result;
  }

  return result;
}

uint64_t sub_224A8A038()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A8A070()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_224A8A0B0(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_224A3E7EC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_224B180DC(v13, a3 & 1);
      result = sub_224A3E7EC(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_16:
        sub_224DAF538();
        result = sub_224DAFDD8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_224B2993C();
      result = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * result) = a1;
    return result;
  }

  v18[(result >> 6) + 8] |= 1 << result;
  *(v18[6] + 8 * result) = a2;
  *(v18[7] + 8 * result) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18[2] = v20;

  return a2;
}

uint64_t sub_224A8A208(uint64_t a1)
{
  v2 = sub_224DABE18();
  v44 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2, v3);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v41 - v7;
  v9 = sub_224DACB98();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v41 - v16;
  v18 = sub_224DABDB8();
  v19 = &v18[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v20 = *(v19 + 1);

  if (!v20)
  {
    return 1;
  }

  sub_224DACC68();
  (*(v10 + 32))(v14, v17, v9);
  v21 = (*(v10 + 88))(v14, v9);
  v22 = v21 == *MEMORY[0x277CF9BF0] || v21 == *MEMORY[0x277CF9B68];
  if (v22 || v21 == *MEMORY[0x277CF9B60])
  {
    return 1;
  }

  (*(v10 + 8))(v14, v9);
  if (qword_27D6F2C80 != -1)
  {
    swift_once();
  }

  v25 = sub_224DAB258();
  __swift_project_value_buffer(v25, qword_27D6F3478);
  v26 = v44;
  v27 = *(v44 + 16);
  v27(v8, a1, v2);
  v28 = v43;
  v27(v43, a1, v2);
  v29 = sub_224DAB228();
  v30 = sub_224DAF2A8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v45 = v42;
    *v31 = 138543618;
    v33 = sub_224DABDB8();
    v34 = *(v26 + 8);
    v34(v8, v2);
    *(v31 + 4) = v33;
    *v32 = v33;
    *(v31 + 12) = 2082;
    v35 = sub_224DABDD8();
    v37 = v36;
    v34(v28, v2);
    v38 = sub_224A33F74(v35, v37, &v45);

    *(v31 + 14) = v38;
    _os_log_impl(&dword_224A2F000, v29, v30, "Forbidding reload of remote widget %{public}@:%{public}s.", v31, 0x16u);
    sub_224AD68CC(v32);
    MEMORY[0x22AA5EED0](v32, -1, -1);
    v39 = v42;
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x22AA5EED0](v39, -1, -1);
    MEMORY[0x22AA5EED0](v31, -1, -1);
  }

  else
  {

    v40 = *(v26 + 8);
    v40(v28, v2);
    v40(v8, v2);
  }

  return 0;
}

uint64_t sub_224A8A6B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void *))
{
  v5 = v3;
  v8 = sub_224DACB98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DACC68();
  if ((*(v9 + 88))(v12, v8) == *MEMORY[0x277CF9B90])
  {
    (*(v9 + 96))(v12, v8);
    v13 = *(*v12 + 16);
    v14 = v13;

    v15 = *(v5 + qword_2813548C0);
    os_unfair_lock_lock(*(v15 + 16));
    v16 = a3(a1, a2, v13);
    os_unfair_lock_unlock(*(v15 + 16));
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    v16 = 1;
  }

  return v16 & 1;
}

void sub_224A8A868()
{
  v1 = *(sub_224DA9908() - 8);
  v2 = *(v0 + 32);
  v3 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_224A8A8E8(v2, v3);
}

void sub_224A8A8E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_224A8A944(a2);
  }
}

void sub_224A8A944(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = *(v2 + *((*MEMORY[0x277D85000] & *v2) + 0x88));
  os_unfair_lock_assert_not_owner(*(v5 + 16));
  os_unfair_lock_lock(*(v5 + 16));
  sub_224A8AC8C(a1, &v25);
  os_unfair_lock_unlock(*(v5 + 16));
  v6 = v25;
  if (v25)
  {
    v7 = qword_2813516B8;
    v8 = v25;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_224DAB258();
    __swift_project_value_buffer(v9, qword_281365108);
    v24 = v8;
    v10 = sub_224DAB228();
    v11 = sub_224DAF2A8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v12 = 136446466;
      v15 = *&v24[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
      v16 = *&v24[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest + 8];

      v17 = sub_224A33F74(v15, v16, &v25);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2114;
      *(v12 + 14) = v24;
      *v13 = v6;
      v18 = v24;
      _os_log_impl(&dword_224A2F000, v10, v11, "[%{public}s]: cancelling %{public}@", v12, 0x16u);
      sub_224A3311C(v13, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x22AA5EED0](v14, -1, -1);
      MEMORY[0x22AA5EED0](v12, -1, -1);
    }

    v19 = *&v24[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
    if (v19)
    {
      v20 = *&v24[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion + 8];
      sub_224A8B22C();
      v21 = swift_allocError();
      *v22 = 0;

      v19(0, 1, v21);

      sub_224A8B340(v19, v20);
    }

    v23 = (v2 + *((*v4 & *v2) + 0xA8));
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    sub_224A8B344(&v24[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier]);
  }
}

void sub_224A8AC8C(uint64_t a2@<X1>, void *a3@<X8>)
{

  v5 = sub_224A4B0F4(a2);

  if (v5)
  {
    sub_224A57680(v5);
    sub_224B3EEC4();
  }

  else
  {
    swift_beginAccess();
    v5 = sub_224A49CC8(a2, sub_224A438E8, MEMORY[0x277CC95F0], sub_224A4ADF4, sub_224B263CC);
    swift_endAccess();
    if (v5)
    {
      sub_224A57680(v5);
    }
  }

  *a3 = v5;
}

id CHDCreateATXInfoTimelineEntries(void *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v1;
  v3 = [obj countByEnumeratingWithState:&v20 objects:v33 count:16];
  if (v3)
  {
    v4 = *v21;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v20 + 1) + 8 * i);
        if ([v6 hasRelevance])
        {
          v29 = 0;
          v30 = &v29;
          v31 = 0x2050000000;
          v7 = getATXInfoTimelineEntryRelevanceClass_softClass;
          v32 = getATXInfoTimelineEntryRelevanceClass_softClass;
          if (!getATXInfoTimelineEntryRelevanceClass_softClass)
          {
            v24 = MEMORY[0x277D85DD0];
            v25 = 3221225472;
            v26 = __getATXInfoTimelineEntryRelevanceClass_block_invoke;
            v27 = &unk_27853F118;
            v28 = &v29;
            __getATXInfoTimelineEntryRelevanceClass_block_invoke(&v24);
            v7 = v30[3];
          }

          v8 = v7;
          _Block_object_dispose(&v29, 8);
          [v6 score];
          v10 = v9;
          [v6 duration];
          v12 = [v7 relevanceWithScore:v10 duration:v11];
        }

        else
        {
          v12 = 0;
        }

        v29 = 0;
        v30 = &v29;
        v31 = 0x2050000000;
        v13 = getATXInfoTimelineEntryClass_softClass;
        v32 = getATXInfoTimelineEntryClass_softClass;
        if (!getATXInfoTimelineEntryClass_softClass)
        {
          v24 = MEMORY[0x277D85DD0];
          v25 = 3221225472;
          v26 = __getATXInfoTimelineEntryClass_block_invoke;
          v27 = &unk_27853F118;
          v28 = &v29;
          __getATXInfoTimelineEntryClass_block_invoke(&v24);
          v13 = v30[3];
        }

        v14 = v13;
        _Block_object_dispose(&v29, 8);
        v15 = [v13 alloc];
        v16 = [v6 date];
        v17 = [v15 initWithDate:v16 relevance:v12];

        if (v17)
        {
          [v2 addObject:v17];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v20 objects:v33 count:16];
    }

    while (v3);
  }

  return v2;
}

void sub_224A8B0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_224A8B0FC()
{
  result = qword_28135B210;
  if (!qword_28135B210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135B210);
  }

  return result;
}

unint64_t sub_224A8B150()
{
  v1 = *v0;
  v2 = v0[1];
  sub_224DAF938();

  MEMORY[0x22AA5D210](v1, v2);
  MEMORY[0x22AA5D210](62, 0xE100000000000000);
  return 0xD000000000000026;
}

unint64_t sub_224A8B22C()
{
  result = qword_281351B30[0];
  if (!qword_281351B30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281351B30);
  }

  return result;
}

void sub_224A8B290(int a1, int a2, id a3, void (*a4)(id, uint64_t), uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v8 = a3;
    a4(a3, 1);
  }

  else
  {
    swift_beginAccess();

    a4(v9, 0);
  }
}

double sub_224A8B344(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DA9908();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock);
  os_unfair_lock_lock(*(v9 + 16));
  swift_beginAccess();
  v10 = sub_224A55124(a1);
  swift_endAccess();
  os_unfair_lock_unlock(*(v9 + 16));
  if (v10)
  {
    if (qword_2813515F0 != -1)
    {
      swift_once();
    }

    v12 = sub_224DAB258();
    __swift_project_value_buffer(v12, qword_281364F88);
    (*(v5 + 16))(v8, a1, v4);
    v13 = sub_224DAB228();
    v14 = sub_224DAF2A8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v38 = v15;
      v40 = swift_slowAlloc();
      v42[0] = v40;
      *v15 = 136446210;
      v39 = v13;
      v41 = sub_224DA98E8();
      sub_224A3F6A4();
      v16 = sub_224DAEF18();
      v18 = sub_224A3D19C(8, v16, v17);
      v20 = v19;
      v22 = v21;
      HIDWORD(v37) = v14;
      v23 = v10;
      v25 = v24;

      v26 = MEMORY[0x22AA5D1C0](v18, v20, v22, v25);
      v28 = v27;
      v10 = v23;

      (*(v5 + 8))(v8, v4);
      v29 = sub_224A33F74(v26, v28, v42);

      v30 = v38;
      v31 = v39;
      *(v38 + 1) = v29;
      v32 = v30;
      _os_log_impl(&dword_224A2F000, v31, BYTE4(v37), "[%{public}s]: activity cancelled", v30, 0xCu);
      v33 = v40;
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x22AA5EED0](v33, -1, -1);
      MEMORY[0x22AA5EED0](v32, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v34 = (v2 + OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProvider);
    v35 = *(v2 + OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProvider + 24);
    v36 = v34[4];
    __swift_project_boxed_opaque_existential_1(v34, v35);
    (*(v36 + 40))(v10, v35, v36);
  }

  return result;
}

void sub_224A8B6B8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock;
  v3 = *(v0 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  os_unfair_lock_assert_owner(*(*(v1 + v2) + 16));
  v5 = *(v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_budgetedDASActivity);
  if (v5)
  {
    v35 = nullsub_1;
    v36 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = sub_224C6F8A4;
    v34 = &block_descriptor_37;
    v6 = _Block_copy(&aBlock);
    v7 = v5;
    [v7 setStartHandler_];
    _Block_release(v6);
    v8 = *(v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 24);
    v9 = *(v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler), v8);
    (*(v9 + 24))(v7, v8, v9);
  }

  v10 = *(v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_fallbackDASActivity);
  if (v10)
  {
    v35 = nullsub_1;
    v36 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = sub_224C6F8A4;
    v34 = &block_descriptor_34_0;
    v11 = _Block_copy(&aBlock);
    v12 = v10;
    [v12 setStartHandler_];
    _Block_release(v11);
    v13 = *(v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 24);
    v14 = *(v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler), v13);
    (*(v14 + 24))(v12, v13, v14);
  }

  v15 = OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_rateLimitedDASActivitiesByIdentifier;
  swift_beginAccess();
  v16 = *(v1 + v15);
  if (v16)
  {
    v29 = v3;
    v17 = 1 << *(v16 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v16 + 64);
    v30 = (v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler);
    v20 = (v17 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v21 = 0;
    while (v19)
    {
      v22 = v21;
LABEL_14:
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v24 = *(*(v16 + 56) + 8 * (v23 | (v22 << 6)));
      v35 = nullsub_1;
      v36 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v32 = 1107296256;
      v33 = sub_224C6F8A4;
      v34 = &block_descriptor_32;
      v25 = _Block_copy(&aBlock);

      v26 = v24;
      [v26 setStartHandler_];
      _Block_release(v25);
      v27 = v30[3];
      v28 = v30[4];
      __swift_project_boxed_opaque_existential_1(v30, v27);
      (*(v28 + 24))(v26, v27, v28);
    }

    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v20)
      {

        v3 = v29;
        goto LABEL_17;
      }

      v19 = *(v16 + 64 + 8 * v22);
      ++v21;
      if (v19)
      {
        v21 = v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    os_unfair_lock_unlock(*(v3 + 16));
  }
}

void sub_224A8BA9C(uint64_t a1)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v2 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v3);
  v56 = &v51 - v4;
  v66 = sub_224DAC268();
  v60 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v5);
  v64 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F0, &unk_224DB7850);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v65 = &v51 - v13;
  v61 = sub_224DAC168();
  if (v61)
  {
    __swift_project_boxed_opaque_existential_1((v1 + 152), *(v1 + 176));
    v14 = sub_224DABDB8();
    sub_224DAC6D8();

    if (v68)
    {
      v63 = v11;
      __swift_project_boxed_opaque_existential_1(v67, v68);
      v54 = sub_224DAE328();
      v55 = v15;
      __swift_destroy_boxed_opaque_existential_1(v67);
      v16 = 0;
      v17 = *(v61 + 64);
      v52 = v61 + 64;
      v18 = 1 << *(v61 + 32);
      v19 = -1;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      v20 = v19 & v17;
      v21 = (v18 + 63) >> 6;
      v58 = v60 + 32;
      v59 = v60 + 16;
      v62 = (v60 + 8);
      v53 = (v2 + 8);
      v22 = v65;
      if ((v19 & v17) == 0)
      {
        goto LABEL_9;
      }

      do
      {
        while (1)
        {
          v32 = v16;
LABEL_16:
          v36 = __clz(__rbit64(v20));
          v20 &= v20 - 1;
          v37 = v36 | (v32 << 6);
          v39 = v60;
          v38 = v61;
          v40 = v64;
          v41 = v66;
          (*(v60 + 16))(v64, *(v61 + 48) + *(v60 + 72) * v37, v66);
          v42 = *(*(v38 + 56) + 8 * v37);
          v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
          v44 = *(v43 + 48);
          v45 = *(v39 + 32);
          v35 = v63;
          v45(v63, v40, v41);
          *(v35 + v44) = v42;
          (*(*(v43 - 8) + 56))(v35, 0, 1, v43);
          v46 = v42;
          v34 = v32;
          v22 = v65;
LABEL_17:
          sub_224A44E4C(v35, v22, &qword_27D6F47F0, &unk_224DB7850);
          v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
          if ((*(*(v47 - 8) + 48))(v22, 1, v47) == 1)
          {

            return;
          }

          v48 = *(v22 + *(v47 + 48));
          sub_224DABE68();
          v49 = v68;
          if (!v68)
          {
            break;
          }

          v23 = __swift_project_boxed_opaque_existential_1(v67, v68);
          v24 = *(v49 - 8);
          MEMORY[0x28223BE20](v23, v23);
          v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v24 + 16))(v26);
          sub_224A3311C(v67, &unk_27D6F3CB0, &unk_224DB7860);
          v27 = sub_224DAEAC8();
          (*(v24 + 8))(v26, v49);
          v28 = v64;
          sub_224DABE58();
          v29 = sub_224DAC248();
          v30 = *v62;
          (*v62)(v28, v66);

          v31 = v56;
          sub_224DA9FF8();
          sub_224A8C164(v29, v31, v27);
          v22 = v65;

          (*v53)(v31, v57);
          v30(v22, v66);
          v16 = v34;
          if (!v20)
          {
            goto LABEL_9;
          }
        }

        sub_224A3311C(v67, &unk_27D6F3CB0, &unk_224DB7860);
        (*v62)(v22, v66);
        v16 = v34;
      }

      while (v20);
LABEL_9:
      if (v21 <= v16 + 1)
      {
        v33 = v16 + 1;
      }

      else
      {
        v33 = v21;
      }

      v34 = v33 - 1;
      v35 = v63;
      while (1)
      {
        v32 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v32 >= v21)
        {
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
          (*(*(v50 - 8) + 56))(v35, 1, 1, v50);
          v20 = 0;
          goto LABEL_17;
        }

        v20 = *(v52 + 8 * v32);
        ++v16;
        if (v20)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {

      sub_224A3311C(v67, &unk_27D6F4700, &unk_224DB3A10);
    }
  }
}

void sub_224A8C164(void *a1, uint64_t a2, uint64_t a3)
{
  v45 = sub_224DA9878();
  v6 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v7);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F50E8, &qword_224DBAE38);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = v39 - v12;
  v44 = sub_224DAEA68();
  v14 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v15);
  v42 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a3 + 16);
  if (v17)
  {
    v39[0] = a1;
    v39[1] = a2;
    v48 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v18 = a3 + 32;
    v19 = (v14 + 48);
    v43 = (v6 + 8);
    v40 = (v14 + 8);
    v41 = (v14 + 32);
    v20 = v44;
    do
    {
      sub_224A3317C(v18, v46);
      __swift_project_boxed_opaque_existential_1(v46, v47);
      sub_224DAE788();
      if ((*v19)(v13, 1, v20) == 1)
      {
        sub_224A3311C(v13, &unk_27D6F50E8, &qword_224DBAE38);
        __swift_project_boxed_opaque_existential_1(v46, v47);
        sub_224DAE778();
        v21 = objc_allocWithZone(CHDProactiveEntry);
        v22 = sub_224DA9778();
        [v21 initWithDate_];

        (*v43)(v9, v45);
      }

      else
      {
        v23 = v42;
        (*v41)(v42, v13, v20);
        __swift_project_boxed_opaque_existential_1(v46, v47);
        sub_224DAE778();
        sub_224DAEA48();
        v25 = v24;
        sub_224DAEA58();
        v27 = v26;
        v28 = objc_allocWithZone(CHDProactiveEntry);
        v29 = sub_224DA9778();
        [v28 initWithDate:v29 score:v25 duration:v27];

        (*v43)(v9, v45);
        (*v40)(v23, v20);
      }

      __swift_destroy_boxed_opaque_existential_1(v46);
      sub_224DAF9B8();
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      v18 += 40;
      --v17;
    }

    while (v17);
    a1 = v39[0];
  }

  if (qword_281351480 != -1)
  {
    swift_once();
  }

  v30 = sub_224DAB258();
  __swift_project_value_buffer(v30, qword_281364DF0);
  v31 = a1;
  v32 = sub_224DAB228();
  v33 = sub_224DAF268();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138543362;
    v36 = [v31 extensionIdentity];
    *(v34 + 4) = v36;
    *v35 = v36;
    _os_log_impl(&dword_224A2F000, v32, v33, "Forwarding timeline entries to proactive for widget with identifier: %{public}@", v34, 0xCu);
    sub_224A3311C(v35, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v35, -1, -1);
    MEMORY[0x22AA5EED0](v34, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  sub_224DA9FE8();
  v37 = sub_224DAEDE8();

  sub_224A8C6BC();
  v38 = sub_224DAEFF8();

  CHDForwardEntriesToProactive(v31, v37, v38);
}

unint64_t sub_224A8C6BC()
{
  result = qword_281350A98;
  if (!qword_281350A98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281350A98);
  }

  return result;
}

id sub_224A8C708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_224AFD000;
  v9[3] = &block_descriptor_6;
  v6 = _Block_copy(v9);

  v7 = [v5 createRefreshActivityWithWidgetParameters:a1 refreshHandler:v6];
  _Block_release(v6);

  return v7;
}

void CHDForwardEntriesToProactive(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = CHDCreateATXInfoTimelineEntries(v7);
  if ([v8 count])
  {
    v9 = MEMORY[0x277D86220];
    v10 = os_signpost_id_make_with_pointer(MEMORY[0x277D86220], v5);
    v11 = v9;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
    {
      *buf = 138543618;
      *&buf[4] = v6;
      *&buf[12] = 2050;
      *&buf[14] = [v8 count];
      _os_signpost_emit_with_name_impl(&dword_224A2F000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, v10, "ProactiveReporting", "Reporting Timeline Change to Proactive. <containingBundleID>=%{public}@, <entries.count>=%{public}lu", buf, 0x16u);
    }

    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v12 = getATXInfoTimelineDonationClientClass_softClass;
    v19 = getATXInfoTimelineDonationClientClass_softClass;
    if (!getATXInfoTimelineDonationClientClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getATXInfoTimelineDonationClientClass_block_invoke;
      v21 = &unk_27853F118;
      v22 = &v16;
      __getATXInfoTimelineDonationClientClass_block_invoke(buf);
      v12 = v17[3];
    }

    v13 = v12;
    _Block_object_dispose(&v16, 8);
    v14 = [v12 sharedInstance];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __CHDForwardEntriesToProactive_block_invoke;
    v15[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v15[4] = v10;
    [v14 timelineDidReloadForWidget:v5 parentApp:v6 withEntries:v8 completion:v15];
  }
}

void sub_224A8CA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_224A8CA4C@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = sub_224DA9878();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

double sub_224A8CADC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_224A3317C(a1 + 32, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4970, qword_224DB8EF0);
  type metadata accessor for DuetTaskActivityContext(0);
  if (swift_dynamicCast())
  {
    a4();
  }

  return result;
}

void sub_224A8CB78()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock;
  v3 = *(v0 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  os_unfair_lock_assert_owner(*(*(v1 + v2) + 16));
  v5 = *(v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_budgetedDASActivity);
  if (v5)
  {
    v6 = *(v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler), *(v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 24));
    v7 = *(v6 + 8);
    v8 = v5;
    v7();
  }

  v9 = *(v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_fallbackDASActivity);
  if (v9)
  {
    v10 = *(v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler), *(v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 24));
    v11 = *(v10 + 8);
    v12 = v9;
    v11();
  }

  v13 = OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_rateLimitedDASActivitiesByIdentifier;
  swift_beginAccess();
  v14 = *(v1 + v13);
  if (v14)
  {
    v15 = v14 + 64;
    v16 = 1 << *(v14 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v14 + 64);
    v27 = v3;
    v28 = (v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler);
    v19 = (v16 + 63) >> 6;
    v29 = v14;
    swift_bridgeObjectRetain_n();
    v20 = 0;
    while (v18)
    {
      v21 = v20;
      v22 = v29;
LABEL_15:
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v24 = *(*(v22 + 56) + 8 * (v23 | (v21 << 6)));
      v25 = v28[4];
      __swift_project_boxed_opaque_existential_1(v28, v28[3]);
      v30 = *(v25 + 8);

      v26 = v24;
      v30();
    }

    v22 = v29;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        v3 = v27;
        goto LABEL_18;
      }

      v18 = *(v15 + 8 * v21);
      ++v20;
      if (v18)
      {
        v20 = v21;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    os_unfair_lock_unlock(*(v3 + 16));
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_224A8CDE8(void *a1)
{
  v3 = *(v1 + 32);
  os_unfair_lock_lock(*(v3 + 16));
  v4 = sub_224A8B1DC(v7);
  if (*v5)
  {
    sub_224A4A564(&v8, a1);
    (v4)(v7, 0);
  }

  else
  {
    (v4)(v7, 0);
  }

  os_unfair_lock_unlock(*(v3 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  sub_224A8CEE8(&qword_281350EF0, MEMORY[0x277CBCE18]);
  return sub_224DAB398();
}

uint64_t sub_224A8CEE8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F4A10, &unk_224DB4000);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_58Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

double sub_224A8CF94(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_281351430 != -1)
    {
      swift_once();
    }

    v4 = sub_224DAB258();
    __swift_project_value_buffer(v4, qword_281364D60);
    v5 = sub_224DAB228();
    v6 = sub_224DAF278();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_224A2F000, v5, v6, "[service] flushing graceStore", v7, 2u);
      MEMORY[0x22AA5EED0](v7, -1, -1);
    }

    v8 = *(v3 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
    v9 = *(v8 + 16);

    os_unfair_lock_lock(v9);
    sub_224A8D0FC(v3);
    os_unfair_lock_unlock(*(v8 + 16));
  }

  return result;
}

double sub_224A8D0FC(uint64_t a1)
{
  if ((*(a1 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated) & 1) == 0)
  {
    *(a1 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceStoreFlushPending) = 0;
    v1 = *(a1 + 64);
    v2 = *(a1 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceState);
    swift_beginAccess();
    if (*(*(v2 + 16) + 16))
    {
    }

    else
    {
      v2 = 0;
    }

    [*(v1 + 16) setData_];
  }

  return result;
}

uint64_t sub_224A8D314(uint64_t a1)
{
  sub_224A4B83C(a1, v7);
  if (!v8)
  {
    sub_224A3311C(v7, &qword_27D6F4760, &unk_224DB3680);
    goto LABEL_5;
  }

  type metadata accessor for LocationGraceRegistry();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v4 = 0;
    return v4 & 1;
  }

  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_beginAccess();
  v3 = *(v6 + 16);

  v4 = sub_224A8D408(v2, v3);

  return v4 & 1;
}

uint64_t sub_224A8D408(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAC378();
  v62 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v61 = &v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E70, &qword_224DBDFA8);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  result = MEMORY[0x28223BE20](v13, v14);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v56 = (&v51 - v16);
  v57 = v17;
  v55 = v8;
  v18 = 0;
  v53 = a1;
  v19 = *(a1 + 64);
  v52 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v58 = v62 + 16;
  v59 = (v62 + 32);
  v54 = (v62 + 8);
  while (1)
  {
    v24 = v57;
    if (!v22)
    {
      break;
    }

    v60 = (v22 - 1) & v22;
    v25 = __clz(__rbit64(v22)) | (v18 << 6);
LABEL_16:
    v30 = *(*(v53 + 48) + 8 * v25);
    v32 = v61;
    v31 = v62;
    (*(v62 + 16))(v61, *(v53 + 56) + *(v62 + 72) * v25, v4);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E78, &qword_224DBDFB0);
    v34 = *(v33 + 48);
    *v24 = v30;
    (*(v31 + 32))(&v24[v34], v32, v4);
    (*(*(v33 - 8) + 56))(v24, 0, 1, v33);
    v35 = v30;
LABEL_17:
    v36 = v56;
    sub_224A44E4C(v24, v56, &qword_27D6F5E70, &qword_224DBDFA8);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E78, &qword_224DBDFB0);
    v38 = (*(*(v37 - 8) + 48))(v36, 1, v37);
    v39 = v38 == 1;
    if (v38 == 1)
    {
      return v39;
    }

    v40 = a2;
    v41 = *v36;
    v42 = v55;
    (*v59)(v55, v36 + *(v37 + 48), v4);
    v43 = sub_224A3E7EC(v41);
    v45 = v44;

    if ((v45 & 1) == 0)
    {
      (*v54)(v42, v4);
      return 0;
    }

    v47 = v61;
    v46 = v62;
    (*(v62 + 16))(v61, *(v40 + 56) + *(v62 + 72) * v43, v4);
    sub_224A839FC(&unk_281350DE0, MEMORY[0x277CF9A10], MEMORY[0x277CF9A20]);
    v48 = sub_224DAEDD8();
    v49 = *(v46 + 8);
    v49(v47, v4);
    result = (v49)(v42, v4);
    a2 = v40;
    v22 = v60;
    if ((v48 & 1) == 0)
    {
      return v39;
    }
  }

  if (v23 <= v18 + 1)
  {
    v26 = v18 + 1;
  }

  else
  {
    v26 = v23;
  }

  v27 = v26 - 1;
  while (1)
  {
    v28 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v28 >= v23)
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E78, &qword_224DBDFB0);
      (*(*(v50 - 8) + 56))(v24, 1, 1, v50);
      v60 = 0;
      v18 = v27;
      goto LABEL_17;
    }

    v29 = *(v52 + 8 * v28);
    ++v18;
    if (v29)
    {
      v60 = (v29 - 1) & v29;
      v25 = __clz(__rbit64(v29)) | (v28 << 6);
      v18 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224A8D908()
{

  return swift_deallocClassInstance();
}

void sub_224A8D940()
{
  v54 = sub_224DAC378();
  v1 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v2);
  v52 = v3;
  v48 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E70, &qword_224DBDFA8);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = (v46 - v10);
  swift_beginAccess();
  v12 = *(v0 + 16);
  v13 = *(v12 + 64);
  v46[0] = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v46[1] = v1 + 32;
  v46[2] = v1 + 16;
  v49 = v1;
  v50 = v12;
  v51 = (v1 + 8);

  v18 = 0;
  v19 = 0;
  v47 = v8;
  v53 = v11;
  if (v16)
  {
    while (1)
    {
      v20 = v19;
LABEL_12:
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v24 = v23 | (v20 << 6);
      v25 = v49;
      v26 = *(*(v50 + 48) + 8 * v24);
      v27 = v48;
      v28 = v54;
      (*(v49 + 16))(v48, *(v50 + 56) + *(v49 + 72) * v24, v54);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E78, &qword_224DBDFB0);
      v30 = *(v29 + 48);
      v31 = v47;
      *v47 = v26;
      v32 = v27;
      v8 = v31;
      (*(v25 + 32))(&v31[v30], v32, v28);
      (*(*(v29 - 8) + 56))(v8, 0, 1, v29);
      v33 = v26;
      v22 = v20;
      v11 = v53;
LABEL_13:
      sub_224A44E4C(v8, v11, &qword_27D6F5E70, &qword_224DBDFA8);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E78, &qword_224DBDFB0);
      if ((*(*(v34 - 8) + 48))(v11, 1, v34) == 1)
      {
        break;
      }

      v35 = v22;
      v36 = *v11;
      v37 = [*v11 tokenString];
      v38 = sub_224DAEE18();
      v40 = v39;

      if ((v40 & 0x1000000000000000) != 0)
      {
        v41 = sub_224DAEED8();
      }

      else
      {

        if ((v40 & 0x2000000000000000) != 0)
        {
          v41 = HIBYTE(v40) & 0xF;
        }

        else
        {
          v41 = v38 & 0xFFFFFFFFFFFFLL;
        }
      }

      v42 = v41 + 8;
      if (__OFADD__(v41, 8))
      {
        goto LABEL_27;
      }

      v43 = __OFADD__(v42, v52);
      v44 = v42 + v52;
      if (v43)
      {
        goto LABEL_28;
      }

      v43 = __OFADD__(v18, v44);
      v18 += v44;
      if (v43)
      {
        goto LABEL_29;
      }

      v11 = v53;
      (*v51)(v53 + *(v34 + 48), v54);
      v19 = v35;
      if (!v16)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v17 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    else
    {
      v21 = v17;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E78, &qword_224DBDFB0);
        (*(*(v45 - 8) + 56))(v8, 1, 1, v45);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v46[0] + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

BOOL sub_224A8DE4C(uint64_t a1, uint64_t a2)
{
  v75 = *MEMORY[0x277D85DE8];
  v4 = sub_224DAC378();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v8;
  MEMORY[0x28223BE20](v7, v10);
  v63 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E70, &qword_224DBDFA8);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v70 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v18 = (&v57 - v17);
  swift_beginAccess();
  v19 = *(a1 + 16);
  v20 = *(v19 + 64);
  v59 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v58 = (v21 + 63) >> 6;
  v60 = v5 + 16;
  v72 = (v5 + 32);
  v64 = v5;
  v67 = (v5 + 8);
  v68 = a2 + 16;
  v66 = v19;

  v24 = 0;
  v61 = v18;
  v62 = a2;
  v69 = v9;
  if (!v23)
  {
    goto LABEL_5;
  }

LABEL_4:
  v25 = v24;
LABEL_11:
  v27 = __clz(__rbit64(v23));
  v23 &= v23 - 1;
  v28 = v27 | (v25 << 6);
  v29 = *(*(v66 + 48) + 8 * v28);
  v30 = v63;
  v31 = v64;
  (*(v64 + 16))(v63, *(v66 + 56) + *(v64 + 72) * v28, v4);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E78, &qword_224DBDFB0);
  v33 = *(v32 + 48);
  v34 = v70;
  *v70 = v29;
  v35 = *(v31 + 32);
  v36 = v4;
  v35(&v34[v33], v30, v4);
  (*(*(v32 - 8) + 56))(v34, 0, 1, v32);
  v37 = v29;
  v71 = v25;
  v38 = v34;
  v18 = v61;
  a2 = v62;
  while (1)
  {
    sub_224A44E4C(v38, v18, &qword_27D6F5E70, &qword_224DBDFA8);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E78, &qword_224DBDFB0);
    v40 = (*(*(v39 - 8) + 48))(v18, 1, v39);
    if (v40 == 1)
    {

      return v40 == 1;
    }

    v41 = v9;
    v42 = v36;
    v43 = *v18;
    v44 = v42;
    (*v72)(v41, v18 + *(v39 + 48));
    v45 = [v43 tokenString];
    v46 = sub_224DAEE18();
    v48 = v47;

    if ((v48 & 0x1000000000000000) != 0)
    {
      v49 = sub_224DAEED8();
    }

    else if ((v48 & 0x2000000000000000) != 0)
    {
      v49 = HIBYTE(v48) & 0xF;
    }

    else
    {
      v49 = v46 & 0xFFFFFFFFFFFFLL;
    }

    v74 = v49;

    if (!(*(a2 + 16))(a2, &v74, 8))
    {

      swift_bridgeObjectRelease_n();
      (*v67)(v69, v44);
      return v40 == 1;
    }

    if ((v48 & 0x1000000000000000) != 0)
    {

      swift_bridgeObjectRelease_n();
      v4 = v44;
      v9 = v69;

      goto LABEL_37;
    }

    if ((v48 & 0x2000000000000000) != 0)
    {

      v73[0] = v46;
      v73[1] = v48 & 0xFFFFFFFFFFFFFFLL;
      v52 = (*(a2 + 16))(a2, v73, v74);
      v4 = v44;
      v9 = v69;
      if ((v52 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if ((v46 & 0x1000000000000000) != 0)
      {
        v50 = (v48 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v4 = v44;
      }

      else
      {
        v50 = sub_224DAF998();
        v4 = v44;
        if (!v50)
        {

          v9 = v69;
LABEL_32:

          goto LABEL_37;
        }
      }

      v51 = (*(a2 + 16))(a2, v50, v74);

      v9 = v69;
      if ((v51 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    v53 = (*(a2 + 16))(a2, v9, v65);

    if ((v53 & 1) == 0)
    {
      break;
    }

    (*v67)(v9, v4);
    v24 = v71;
    if (v23)
    {
      goto LABEL_4;
    }

LABEL_5:
    if (v58 <= v24 + 1)
    {
      v26 = v24 + 1;
    }

    else
    {
      v26 = v58;
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
      }

      if (v25 >= v58)
      {
        break;
      }

      v23 = *(v59 + 8 * v25);
      ++v24;
      if (v23)
      {
        goto LABEL_11;
      }
    }

    v71 = v26 - 1;
    v36 = v4;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E78, &qword_224DBDFB0);
    v55 = v70;
    (*(*(v54 - 8) + 56))(v70, 1, 1, v54);
    v38 = v55;
    v23 = 0;
  }

LABEL_37:
  (*v67)(v9, v4);
  return v40 == 1;
}