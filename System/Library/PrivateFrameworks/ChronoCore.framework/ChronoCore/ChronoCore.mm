uint64_t sub_224A32080(void *a1)
{
  v2 = v1;
  if (qword_2813514B8 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281364E50);
  v5 = a1;
  v6 = sub_224DAB228();
  v7 = sub_224DAF2A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_224A2F000, v6, v7, "[WidgetCenter] Incoming XPC Connection: %{public}@", v8, 0xCu);
    sub_224A3311C(v9, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v9, -1, -1);
    MEMORY[0x22AA5EED0](v8, -1, -1);
  }

  sub_224DAE668();
  v11 = MEMORY[0x22AA5C9C0]();
  [v5 setExportedInterface_];
  v12 = [objc_opt_self() interfaceWithProtocol_];
  [v5 setRemoteObjectInterface_];

  v13 = objc_opt_self();
  v14 = sub_224DAEDE8();
  v15 = [v13 serialQueueTargetingSharedWorkloop_];

  [v5 _setQueue_];
  sub_224A3317C(v2 + OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__extensionManager, v37);
  sub_224A3317C(v2 + OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__timelineService, v36);
  sub_224A3317C(v2 + OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__descriptorService, v35);
  sub_224A3317C(v2 + OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__pushService, v34);
  sub_224A3796C(v2 + OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__widgetRelevanceService, v32, &unk_27D6F4FB0, &unk_224DBADC8);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v34, v34[3]);
  MEMORY[0x28223BE20](v16, v16);
  v18 = (v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  v21 = type metadata accessor for PushService();
  v31[4] = &off_283828B40;
  v31[3] = v21;
  v31[0] = v20;
  type metadata accessor for WidgetCenterServerClient();
  v22 = swift_allocObject();
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v31, v21);
  MEMORY[0x28223BE20](v23, v23);
  v25 = (v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v25;
  *(v22 + 168) = v21;
  *(v22 + 176) = &off_283828B40;
  *(v22 + 144) = v27;
  *(v22 + 16) = v5;
  sub_224A36F98(v37, v22 + 24);
  sub_224A36F98(v36, v22 + 64);
  sub_224A36F98(v35, v22 + 104);
  v28 = v32[1];
  *(v22 + 184) = v32[0];
  *(v22 + 200) = v28;
  *(v22 + 216) = v33;
  v29 = v5;
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v34);
  [v29 setExportedObject_];

  [v29 resume];

  return 1;
}

void sub_224A32548(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v29 = a2;
  v30 = a4;
  v27[2] = a1;
  v5 = sub_224DACB98();
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = (v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v27 - v16;
  v18 = a3[2];
  v19 = sub_224DAF2C8();
  if (v20)
  {
    sub_224A32920(v19, v20, 1, v12);

    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      (*(v14 + 32))(v17, v12, v13);
      v21 = a3[11];
      v27[1] = a3[12];
      __swift_project_boxed_opaque_existential_1(a3 + 8, v21);
      v22 = swift_allocObject();
      v22[2] = [objc_opt_self() processHandleForNSXPCConnection_];
      v22[3] = 0xD000000000000012;
      v22[4] = 0x8000000224DBC070;
      *v8 = v22;
      v23 = v28;
      (*(v28 + 104))(v8, *MEMORY[0x277CF9B90], v5);
      sub_224DAC728();
      (*(v23 + 8))(v8, v5);
      (*(v30 + 16))(v30, 0);
      (*(v14 + 8))(v17, v13);
      return;
    }
  }

  else
  {
    (*(v14 + 56))(v12, 1, 1, v13);
  }

  sub_224A3311C(v12, &unk_27D6F5060, &qword_224DB5620);
  sub_224BFD554();
  v24 = swift_allocError();
  *v25 = 26;
  v26 = sub_224DA9518();
  (*(v30 + 16))(v30, v26);
}

uint64_t sub_224A328E0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224A32920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v31 = a1;
  v33 = a4;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v6 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v7);
  v9 = &v27 - v8;
  v10 = v4[6];
  v30 = v4[7];
  v29 = __swift_project_boxed_opaque_existential_1(v4 + 3, v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  sub_224A33088(&qword_281351920, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9F98]);
  sub_224A33088(&qword_2813518E0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC0]);
  sub_224A33088(&unk_281351910, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FA0]);
  v11 = a2;
  v12 = v31;
  sub_224A33088(&unk_281351900, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FA8]);
  sub_224DAA208();
  sub_224DAC6C8();
  (*(v6 + 8))(v9, v32);
  if (v35)
  {
    sub_224A36F98(&v34, v36);
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    sub_224DAE328();
    v13 = v33;
    sub_224DA9FF8();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v16 = v28;
  v17 = v33;
  sub_224A3311C(&v34, &unk_27D6F4700, &unk_224DB3A10);
  v18 = objc_allocWithZone(MEMORY[0x277CC1E50]);

  v19 = sub_224A33224(v12, v11);
  if (v19)
  {
    v22 = v19;
    v23 = [v19 containingBundleRecord];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 bundleIdentifier];
      if (v25)
      {
        v26 = v25;
        sub_224DAEE18();

        goto LABEL_6;
      }
    }

    else
    {
    }
  }

  if (v16)
  {

LABEL_6:
    sub_224DA9FF8();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    return (*(*(v20 - 8) + 56))(v17, 0, 1, v20);
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  return (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
}

uint64_t sub_224A32D68(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v32 = a5;
  v43 = a4(0);
  v10 = MEMORY[0x28223BE20](v43, v9);
  v40 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10, v12);
  v42 = &v32 - v15;
  v39 = *(a3 + 16);
  if (v39)
  {
    v16 = 0;
    v36 = (v14 + 8);
    v37 = (v14 + 32);
    v38 = v14 + 16;
    v41 = MEMORY[0x277D84F90];
    v34 = a2;
    v35 = a3;
    v33 = a1;
    while (v16 < *(a3 + 16))
    {
      v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v18 = *(v14 + 72);
      v19 = a3;
      v20 = a3 + v17 + v18 * v16;
      v21 = v14;
      v22 = a1;
      v23 = v42;
      (*(v14 + 16))(v42, v20, v43);
      v24 = v23;
      a1 = v22;
      v25 = v22(v24);
      if (v5)
      {
        (*v36)(v42, v43);
        v31 = v41;

        return v31;
      }

      if (v25)
      {
        v26 = *v37;
        (*v37)(v40, v42, v43);
        v27 = v41;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v32(0, *(v27 + 16) + 1, 1);
          v27 = v44;
        }

        v30 = *(v27 + 16);
        v29 = *(v27 + 24);
        if (v30 >= v29 >> 1)
        {
          v32(v29 > 1, v30 + 1, 1);
          v27 = v44;
        }

        *(v27 + 16) = v30 + 1;
        v41 = v27;
        result = (v26)(v27 + v17 + v30 * v18, v40, v43);
        a3 = v35;
        a1 = v33;
      }

      else
      {
        result = (*v36)(v42, v43);
        a3 = v19;
      }

      ++v16;
      v14 = v21;
      if (v39 == v16)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
LABEL_14:

    return v41;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_224A33088(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_224A3311C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_224A3317C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_224A33224(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = sub_224DAEDE8();

  v8[0] = 0;
  v4 = [v2 initWithBundleIdentifier:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_224DA9528();

    swift_willThrow();
  }

  return v4;
}

void sub_224A332F0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, v8, v9);
}

void sub_224A33390(void *a1, void *a2)
{
  v32 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v29 - v12;
  v14 = [a2 bundle];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 identifier];

    if (v16)
    {
      v31 = v5;
      sub_224DAEE18();

      v30 = *(v2 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
      os_unfair_lock_lock(*(v30 + 16));

      sub_224DA9FF8();
      sub_224DA9FF8();
      v17 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_knownExtensionBundleIdentifiers;
      swift_beginAccess();
      v18 = *(v2 + v17);

      v19 = sub_224A336F4(v13, v18);

      if (v19)
      {
        v20 = sub_224DA9FE8();
        v21 = v32;
        sub_224A33948(v32, a2, v20, v22);

        v23 = sub_224DA9FE8();
        sub_224A8EBB8(v21, v23, v24);

        v25 = v31;
      }

      else
      {
        v26 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_knownApplicationBundleIdentifiers;
        swift_beginAccess();
        v27 = *(v2 + v26);

        v28 = sub_224A33924(v8, v27);

        v25 = v31;
        if (v28)
        {
          sub_224A34040(v32, a2, v8);
        }
      }

      (*(v25 + 8))(v8, v4);
      (*(v10 + 8))(v13, v9);
      os_unfair_lock_unlock(*(v30 + 16));
    }
  }
}

uint64_t sub_224A33718(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  v32 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v27 - v14;
  if (*(a2 + 16) && (sub_224A33088(a5, a3, a4, MEMORY[0x277CF9FA8]), v16 = sub_224DAED88(), v17 = -1 << *(a2 + 32), v18 = v16 & ~v17, v31 = a2 + 56, ((*(a2 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0))
  {
    v29 = a1;
    v30 = a3;
    v19 = a2;
    v28 = ~v17;
    v22 = *(v12 + 16);
    v21 = v12 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    v24 = (v21 - 8);
    do
    {
      v20(v15, *(v19 + 48) + v23 * v18, v11);
      sub_224A33088(v32, v30, a4, MEMORY[0x277CF9FB0]);
      v25 = sub_224DAEDD8();
      (*v24)(v15, v11);
      if (v25)
      {
        break;
      }

      v18 = (v18 + 1) & v28;
    }

    while (((*(v31 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

void sub_224A33948(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v9 = [a1 state];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 isRunning];
    v12 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersToPIDs;
    if (!v11)
    {
      swift_beginAccess();
      v22 = sub_224B0D3F4(a3, a4);
      swift_endAccess();
      if ((v22 & 0x100000000) == 0)
      {
        if (qword_281351610 != -1)
        {
          swift_once();
        }

        v23 = sub_224DAB258();
        __swift_project_value_buffer(v23, qword_281364FD0);

        v24 = sub_224DAB228();
        v25 = sub_224DAF2A8();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v36[0] = v27;
          *v26 = 136446210;
          *(v26 + 4) = sub_224A33F74(a3, a4, v36);
          _os_log_impl(&dword_224A2F000, v24, v25, "Observed %{public}s ceased running", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v27);
          MEMORY[0x22AA5EED0](v27, -1, -1);
          MEMORY[0x22AA5EED0](v26, -1, -1);
        }
      }

      goto LABEL_23;
    }

    swift_beginAccess();
    v13 = *(v4 + v12);
    if (*(v13 + 16))
    {

      v14 = sub_224A3A40C(a3, a4);
      if (v15)
      {
        v16 = *(*(v13 + 56) + 4 * v14);

        if ([a2 pid] == v16)
        {
LABEL_23:

          return;
        }

        if (qword_281351610 != -1)
        {
          swift_once();
        }

        v17 = sub_224DAB258();
        __swift_project_value_buffer(v17, qword_281364FD0);

        v18 = sub_224DAB228();
        v19 = sub_224DAF2A8();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v35[0] = v21;
          *v20 = 136446210;
          *(v20 + 4) = sub_224A33F74(a3, a4, v35);
          _os_log_impl(&dword_224A2F000, v18, v19, "Observed %{public}s changed running pid", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v21);
          MEMORY[0x22AA5EED0](v21, -1, -1);
          MEMORY[0x22AA5EED0](v20, -1, -1);
        }

LABEL_22:

        v32 = [a2 pid];
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = *(v5 + v12);
        *(v5 + v12) = 0x8000000000000000;
        sub_224A3587C(v32, a3, a4, isUniquelyReferenced_nonNull_native);
        *(v5 + v12) = v34;
        swift_endAccess();
        goto LABEL_23;
      }
    }

    if (qword_281351610 != -1)
    {
      swift_once();
    }

    v28 = sub_224DAB258();
    __swift_project_value_buffer(v28, qword_281364FD0);

    v18 = sub_224DAB228();
    v29 = sub_224DAF2A8();

    if (os_log_type_enabled(v18, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v35[0] = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_224A33F74(a3, a4, v35);
      _os_log_impl(&dword_224A2F000, v18, v29, "Observed %{public}s began running", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x22AA5EED0](v31, -1, -1);
      MEMORY[0x22AA5EED0](v30, -1, -1);
    }

    goto LABEL_22;
  }
}

uint64_t sub_224A33E0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_224A33E68(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_224A3CAC0(a5, a6);
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
    result = sub_224DAF998();
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

unint64_t sub_224A33F74(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_224A33E68(v11, 0, 0, 1, a1, a2);
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
    sub_224A33E0C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

void sub_224A34040(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v206 = sub_224DAC378();
  v205 = *(v206 - 8);
  MEMORY[0x28223BE20](v206, v8);
  v203 = &v197[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v209 = &v197[-v12];
  v13 = sub_224DAB7B8();
  v214 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v211 = &v197[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v213 = sub_224DAB848();
  v212 = *(v213 - 8);
  MEMORY[0x28223BE20](v213, v16);
  v210 = &v197[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v204 = &v197[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v218 = *(v21 - 8);
  v22 = *(v218 + 64);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v25 = &v197[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v197[-v28];
  v31 = MEMORY[0x28223BE20](v27, v30);
  v217 = &v197[-v32];
  MEMORY[0x28223BE20](v31, v33);
  v35 = &v197[-v34];
  v36 = [a1 state];
  if (!v36)
  {
    return;
  }

  v202 = v13;
  v216 = v36;
  v215 = a3;
  v37 = sub_224DA9FE8();
  sub_224A33948(a1, a2, v37, v38);

  v208 = a1;
  v39 = [a1 previousState];
  v207 = v4;
  if (!v39)
  {
    goto LABEL_7;
  }

  v40 = v39;
  if ([v39 taskState] != 4 || (v41 = objc_msgSend(v40, sel_endowmentNamespaces)) == 0)
  {

LABEL_7:
    v46 = 0;
    goto LABEL_8;
  }

  v42 = v41;
  v43 = sub_224DAF1B8();

  v44 = sub_224DAEE18();
  v46 = sub_224A3A53C(v44, v45, v43);

LABEL_8:
  v47 = v216;
  if ([v216 taskState] != 4 || (v48 = objc_msgSend(v47, sel_endowmentNamespaces)) == 0)
  {
    if ((v46 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_17:
    if (qword_281351610 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_136;
  }

  v49 = v48;
  v50 = sub_224DAF1B8();

  v51 = sub_224DAEE18();
  v53 = sub_224A3A53C(v51, v52, v50);

  if (((v46 ^ v53) & 1) == 0)
  {
    goto LABEL_25;
  }

  if ((v53 & 1) == 0)
  {
    goto LABEL_17;
  }

  if (qword_281351610 != -1)
  {
    swift_once();
  }

  v54 = sub_224DAB258();
  __swift_project_value_buffer(v54, qword_281364FD0);
  v55 = v218;
  v56 = v218 + 16;
  v57 = v215;
  v203 = *(v218 + 16);
  (v203)(v35, v215, v21);
  v58 = sub_224DAB228();
  v59 = sub_224DAF2A8();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v199 = v60;
    v61 = swift_slowAlloc();
    aBlock = v61;
    *v60 = 136446210;
    sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FC8]);
    v198 = v59;
    v62 = sub_224DAFD28();
    v64 = v63;
    v65 = *(v55 + 8);
    v201 = ((v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v209 = v65;
    v65(v35, v21);
    v66 = sub_224A33F74(v62, v64, &aBlock);
    v57 = v215;

    v67 = v199;
    *(v199 + 1) = v66;
    v68 = v67;
    _os_log_impl(&dword_224A2F000, v58, v198, "Observed %{public}s began running visibly", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v61);
    MEMORY[0x22AA5EED0](v61, -1, -1);
    MEMORY[0x22AA5EED0](v68, -1, -1);
  }

  else
  {

    v186 = *(v55 + 8);
    v201 = ((v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v209 = v186;
    v186(v35, v21);
  }

  v187 = v203;
  (v203)(v29, v57, v21);
  v200 = v56;
  v25 = v207;
  swift_beginAccess();
  v188 = v217;
  sub_224A3A634(v217, v29);
  v209(v188, v21);
  swift_endAccess();
  v187(v188, v57, v21);
  v189 = v187;
  v190 = v204;
  (*(v205 + 56))(v204, 1, 1, v206);
  swift_beginAccess();
  sub_224A3A918(v190, v188);
  swift_endAccess();
  v191 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_observers;
  swift_beginAccess();
  v192 = *(v25 + v191);
  v189(v188, v57, v21);
  v193 = v218;
  v194 = (*(v218 + 80) + 32) & ~*(v218 + 80);
  v195 = swift_allocObject();
  *(v195 + 16) = v192;
  *(v195 + 24) = v25;
  (*(v193 + 32))(v195 + v194, v188, v21);
  v223 = sub_224A3B870;
  v224 = v195;
  aBlock = MEMORY[0x277D85DD0];
  v220 = 1107296256;
  v221 = sub_224A39F40;
  v222 = &block_descriptor_125;
  v98 = _Block_copy(&aBlock);

  v196 = v25;
  while (1)
  {
    v100 = v210;
    sub_224DAB7E8();
    v229 = MEMORY[0x277D84F90];
    sub_224A3AF98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    v101 = v211;
    v102 = v202;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v100, v101, v98);
    _Block_release(v98);
    (*(v214 + 8))(v101, v102);
    (*(v212 + 8))(v100, v213);

    sub_224A3AFF0();
    v47 = v216;
LABEL_25:
    v103 = MEMORY[0x277D84F90];
    v104 = sub_224A3B690(MEMORY[0x277D84F90]);
    v105 = sub_224A3B690(v103);
    v106 = [v208 previousState];
    if (!v106)
    {
      break;
    }

    v107 = v106;
    v108 = [v106 assertions];
    if (!v108)
    {
      goto LABEL_69;
    }

    v109 = v108;
    v110 = sub_224A3B79C(0, &qword_281350940, 0x277D46F10);
    sub_224A3B758(&qword_281350938, &qword_281350940, 0x277D46F10, MEMORY[0x277D85378]);
    v111 = sub_224DAF1B8();

    v213 = v107;
    v214 = v110;
    if ((v111 & 0xC000000000000001) != 0)
    {
      sub_224DAF7E8();
      sub_224DAF1F8();
      v111 = v229;
      v112 = v230;
      v113 = v231;
      v114 = v232;
      v115 = v233;
    }

    else
    {
      v114 = 0;
      v116 = -1 << *(v111 + 32);
      v112 = v111 + 56;
      v113 = ~v116;
      v117 = -v116;
      if (v117 < 64)
      {
        v118 = ~(-1 << v117);
      }

      else
      {
        v118 = -1;
      }

      v115 = v118 & *(v111 + 56);
    }

    v212 = v113;
    v119 = (v113 + 64) >> 6;
    v211 = 0x8000000224DC69F0;
    v217 = v111;
    if (v111 < 0)
    {
LABEL_34:
      v120 = sub_224DAF878();
      if (v120)
      {
        v227 = v120;
        swift_dynamicCast();
        v21 = aBlock;
        v25 = v114;
        v218 = v115;
        if (aBlock)
        {
          goto LABEL_42;
        }
      }

LABEL_68:
      sub_224A3B7E4(v217);
      v47 = v216;
      v107 = v213;
LABEL_69:

      break;
    }

    while (1)
    {
      v121 = v114;
      v122 = v115;
      v25 = v114;
      if (!v115)
      {
        break;
      }

LABEL_41:
      v218 = (v122 - 1) & v122;
      v21 = *(*(v111 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v122)))));
      if (!v21)
      {
        goto LABEL_68;
      }

LABEL_42:
      if ([v21 type] == 3 && objc_msgSend(v21, sel_reason) == 2)
      {
        v123 = 1;
        if (*(v105 + 16))
        {
          goto LABEL_53;
        }

        goto LABEL_55;
      }

      v124 = [v21 explanation];
      if (v124)
      {
        v125 = v124;
        v126 = sub_224DAEE18();
        v128 = v127;

        if ([v21 type] == 3 && objc_msgSend(v21, sel_reason) == 7)
        {
          aBlock = v126;
          v220 = v128;
          v227 = 0xD000000000000024;
          v228 = v211;
          sub_224AFC154();
          v123 = sub_224DAF748();

          if (*(v105 + 16))
          {
            goto LABEL_53;
          }

          goto LABEL_55;
        }
      }

      v123 = 0;
      if (*(v105 + 16))
      {
LABEL_53:
        v129 = sub_224AA3CDC();
        if (v130)
        {
          v123 |= *(*(v105 + 56) + v129);
        }
      }

LABEL_55:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v105;
      v133 = sub_224AA3CDC();
      v134 = v105;
      v135 = *(v105 + 16);
      v136 = (v132 & 1) == 0;
      v137 = v135 + v136;
      if (__OFADD__(v135, v136))
      {
        goto LABEL_133;
      }

      v138 = v132;
      if (*(v134 + 24) >= v137)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v141 = aBlock;
          if ((v132 & 1) == 0)
          {
            goto LABEL_59;
          }
        }

        else
        {
          sub_224B2655C();
          v141 = aBlock;
          if ((v138 & 1) == 0)
          {
            goto LABEL_59;
          }
        }

LABEL_64:
        *(*(v141 + 56) + v133) = v123 & 1;

        v114 = v25;
        v111 = v217;
        v115 = v218;
        v105 = v141;
        if (v217 < 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        sub_224AA3D14(v137, isUniquelyReferenced_nonNull_native);
        v139 = sub_224AA3CDC();
        if ((v138 & 1) != (v140 & 1))
        {
LABEL_137:
          sub_224DAFDD8();
          __break(1u);
          return;
        }

        v133 = v139;
        v141 = aBlock;
        if (v138)
        {
          goto LABEL_64;
        }

LABEL_59:
        *(v141 + 8 * (v133 >> 6) + 64) |= 1 << v133;
        *(*(v141 + 56) + v133) = v123 & 1;

        v142 = *(v141 + 16);
        v143 = __OFADD__(v142, 1);
        v144 = v142 + 1;
        if (v143)
        {
          goto LABEL_135;
        }

        v105 = v141;
        *(v141 + 16) = v144;
        v114 = v25;
        v111 = v217;
        v115 = v218;
        if (v217 < 0)
        {
          goto LABEL_34;
        }
      }
    }

    while (1)
    {
      v25 = (v121 + 1);
      if (__OFADD__(v121, 1))
      {
        break;
      }

      if (v25 >= v119)
      {
        goto LABEL_68;
      }

      v122 = *(v112 + 8 * v25);
      ++v121;
      if (v122)
      {
        goto LABEL_41;
      }
    }

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
    swift_once();
LABEL_18:
    v69 = sub_224DAB258();
    __swift_project_value_buffer(v69, qword_281364FD0);
    v70 = v218;
    v71 = *(v218 + 16);
    v71(v25, v215, v21);
    v72 = sub_224DAB228();
    v73 = sub_224DAF2A8();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v201 = swift_slowAlloc();
      aBlock = v201;
      *v74 = 136446210;
      sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FC8]);
      v75 = sub_224DAFD28();
      v76 = v71;
      v78 = v77;
      (*(v218 + 8))(v25, v21);
      v79 = sub_224A33F74(v75, v78, &aBlock);
      v71 = v76;

      *(v74 + 4) = v79;
      _os_log_impl(&dword_224A2F000, v72, v73, "Observed %{public}s ceased running visibly", v74, 0xCu);
      v80 = v201;
      __swift_destroy_boxed_opaque_existential_1(v201);
      MEMORY[0x22AA5EED0](v80, -1, -1);
      MEMORY[0x22AA5EED0](v74, -1, -1);
    }

    else
    {

      (*(v70 + 8))(v25, v21);
    }

    v25 = v207;
    swift_beginAccess();
    v81 = v209;
    v82 = v215;
    sub_224A9DCC8(v215, v209);
    sub_224A3311C(v81, &unk_27D6F5060, &qword_224DB5620);
    swift_endAccess();
    v83 = sub_224DA9FE8();
    v85 = sub_224A9E29C(0x6C7070612E6D6F63, 0xEA00000000002E65, v83, v84);

    if (v85)
    {
      v86 = v217;
      v71(v217, v82, v21);
      v87 = v203;
      sub_224DAC338();
      v88 = v204;
      sub_224DAC358();
      v89 = v205;
      v90 = v87;
      v91 = v206;
      (*(v205 + 8))(v90, v206);
      (*(v89 + 56))(v88, 0, 1, v91);
      swift_beginAccess();
      sub_224A3A918(v88, v86);
      swift_endAccess();
    }

    v92 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_observers;
    swift_beginAccess();
    v93 = *(v25 + v92);
    v94 = v217;
    v71(v217, v82, v21);
    v95 = v218;
    v96 = (*(v218 + 80) + 32) & ~*(v218 + 80);
    v97 = swift_allocObject();
    *(v97 + 16) = v93;
    *(v97 + 24) = v25;
    (*(v95 + 32))(v97 + v96, v94, v21);
    v223 = sub_224AA2ED0;
    v224 = v97;
    aBlock = MEMORY[0x277D85DD0];
    v220 = 1107296256;
    v221 = sub_224A39F40;
    v222 = &block_descriptor_119;
    v98 = _Block_copy(&aBlock);
    v99 = v25;
  }

  v145 = [v47 assertions];
  if (!v145)
  {
    v153 = v215;
    if (v104[2])
    {
      goto LABEL_116;
    }

    goto LABEL_119;
  }

  v146 = v145;
  v147 = sub_224A3B79C(0, &qword_281350940, 0x277D46F10);
  sub_224A3B758(&qword_281350938, &qword_281350940, 0x277D46F10, MEMORY[0x277D85378]);
  v148 = sub_224DAF1B8();

  v213 = v105;
  v214 = v147;
  if ((v148 & 0xC000000000000001) != 0)
  {
    sub_224DAF7E8();
    sub_224DAF1F8();
    v148 = aBlock;
    v149 = v220;
    v150 = v221;
    v151 = v222;
    v152 = v223;
  }

  else
  {
    v151 = 0;
    v154 = -1 << *(v148 + 32);
    v149 = v148 + 56;
    v150 = ~v154;
    v155 = -v154;
    if (v155 < 64)
    {
      v156 = ~(-1 << v155);
    }

    else
    {
      v156 = -1;
    }

    v152 = v156 & *(v148 + 56);
  }

  v212 = v150;
  v157 = (v150 + 64) >> 6;
  v211 = 0x8000000224DC69F0;
  v217 = v148;
  while (2)
  {
    if (v148 < 0)
    {
      v160 = sub_224DAF878();
      if (!v160)
      {
        goto LABEL_115;
      }

      v225 = v160;
      swift_dynamicCast();
      v25 = v227;
      v21 = v151;
      v218 = v152;
      if (!v227)
      {
        goto LABEL_115;
      }

LABEL_91:
      if ([v25 type] == 3 && objc_msgSend(v25, sel_reason) == 2)
      {
        v161 = 1;
        if (!v104[2])
        {
          goto LABEL_104;
        }
      }

      else
      {
        v162 = [v25 explanation];
        if (v162)
        {
          v163 = v162;
          v164 = sub_224DAEE18();
          v166 = v165;

          if ([v25 type] == 3 && objc_msgSend(v25, sel_reason) == 7)
          {
            v227 = v164;
            v228 = v166;
            v225 = 0xD000000000000024;
            v226 = v211;
            sub_224AFC154();
            v161 = sub_224DAF748();

            if (!v104[2])
            {
              goto LABEL_104;
            }

            goto LABEL_102;
          }
        }

        v161 = 0;
        if (!v104[2])
        {
          goto LABEL_104;
        }
      }

LABEL_102:
      v167 = sub_224AA3CDC();
      if (v168)
      {
        v161 |= *(v104[7] + v167);
      }

LABEL_104:
      v169 = swift_isUniquelyReferenced_nonNull_native();
      v227 = v104;
      v171 = sub_224AA3CDC();
      v172 = v104[2];
      v173 = (v170 & 1) == 0;
      v174 = v172 + v173;
      if (__OFADD__(v172, v173))
      {
        goto LABEL_132;
      }

      v175 = v170;
      if (v104[3] < v174)
      {
        sub_224AA3D14(v174, v169);
        v176 = sub_224AA3CDC();
        if ((v175 & 1) != (v177 & 1))
        {
          goto LABEL_137;
        }

        v171 = v176;
        v104 = v227;
        if ((v175 & 1) == 0)
        {
          goto LABEL_111;
        }

LABEL_80:
        *(v104[7] + v171) = v161 & 1;

LABEL_81:
        v151 = v21;
        v148 = v217;
        v152 = v218;
        continue;
      }

      if (v169)
      {
        v104 = v227;
        if (v170)
        {
          goto LABEL_80;
        }
      }

      else
      {
        sub_224B2655C();
        v104 = v227;
        if (v175)
        {
          goto LABEL_80;
        }
      }

LABEL_111:
      v104[(v171 >> 6) + 8] |= 1 << v171;
      *(v104[7] + v171) = v161 & 1;

      v178 = v104[2];
      v143 = __OFADD__(v178, 1);
      v179 = v178 + 1;
      if (v143)
      {
        goto LABEL_134;
      }

      v104[2] = v179;
      goto LABEL_81;
    }

    break;
  }

  v158 = v151;
  v159 = v152;
  v21 = v151;
  if (!v152)
  {
    while (1)
    {
      v21 = v158 + 1;
      if (__OFADD__(v158, 1))
      {
        break;
      }

      if (v21 >= v157)
      {
        goto LABEL_115;
      }

      v159 = *(v149 + 8 * v21);
      ++v158;
      if (v159)
      {
        goto LABEL_87;
      }
    }

    __break(1u);
    goto LABEL_131;
  }

LABEL_87:
  v218 = (v159 - 1) & v159;
  v25 = *(*(v148 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v159)))));
  if (v25)
  {
    goto LABEL_91;
  }

LABEL_115:
  sub_224A3B7E4(v148);
  v153 = v215;
  v47 = v216;
  v105 = v213;
  if (!v104[2])
  {
    goto LABEL_119;
  }

LABEL_116:
  v180 = sub_224AA3CDC();
  if ((v181 & 1) == 0)
  {
LABEL_119:
    v182 = 0;
    if (!*(v105 + 16))
    {
      goto LABEL_124;
    }

    goto LABEL_120;
  }

  v182 = *(v104[7] + v180);
  if (!*(v105 + 16))
  {
LABEL_124:

    if (v182)
    {
LABEL_125:
      sub_224B46028(v153, 1);
    }

    goto LABEL_126;
  }

LABEL_120:
  v183 = sub_224AA3CDC();
  if ((v184 & 1) == 0)
  {
    goto LABEL_124;
  }

  v185 = *(*(v105 + 56) + v183);

  if (v182 != v185)
  {
    if (v182)
    {
      goto LABEL_125;
    }

    sub_224B46934(v153, 1);
  }

LABEL_126:
}

unint64_t sub_224A3587C(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_224A3A40C(a2, a3);
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
      sub_224B112DC(v16, a4 & 1);
      result = sub_224A3A40C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_224DAFDD8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_224B263F4();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 4 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 4 * result) = a1;
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

uint64_t sub_224A35A14()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A35A50(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = sub_224DAEE18();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = a1;
  a7(v11, v13, a6, v14);
}

uint64_t sub_224A35B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v15[-1] - v10;
  BSDispatchQueueAssert();
  sub_224A3317C(v4 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_descriptorService, v15);
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);

  sub_224DA9FF8();
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;

  sub_224DACA78();

  (*(v8 + 8))(v11, v7);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_224A35CCC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224A35D2C(uint64_t a1, int a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v67 = a6;
  v61 = a5;
  v69 = a3;
  v59 = a2;
  v68 = sub_224DAB7B8();
  v9 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v10);
  v64 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_224DAB848();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v12);
  v62 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = v58 - v17;
  v70 = v6;
  __swift_project_boxed_opaque_existential_1(&v6[OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager], *&v6[OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 24]);
  v19 = sub_224DAC668();
  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v20 = sub_224DAB258();
  __swift_project_value_buffer(v20, qword_281365168);
  (*(v15 + 16))(v18, a1, v14);

  v21 = sub_224DAB228();
  v22 = sub_224DAF2A8();

  v23 = os_log_type_enabled(v21, v22);
  v24 = a4;
  v66 = v9;
  if (v23)
  {
    v25 = v19;
    v26 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    aBlock[0] = v60;
    *v26 = 134349570;
    *(v26 + 4) = *(v25 + 16);

    *(v26 + 12) = 2082;
    sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FC8]);
    v27 = sub_224DAFD28();
    v29 = v28;
    (*(v15 + 8))(v18, v14);
    v30 = sub_224A33F74(v27, v29, aBlock);
    v24 = a4;

    *(v26 + 14) = v30;
    *(v26 + 22) = 2082;
    v31 = v69;
    *(v26 + 24) = sub_224A33F74(v69, v24, aBlock);
    _os_log_impl(&dword_224A2F000, v21, v22, "Reloading descriptors for %{public}ld extensions in container %{public}s with reason: %{public}s", v26, 0x20u);
    v32 = v60;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v32, -1, -1);
    v33 = v26;
    v19 = v25;
    MEMORY[0x22AA5EED0](v33, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v18, v14);
    v31 = v69;
  }

  v34 = v70;
  v35 = v68;
  v36 = dispatch_group_create();
  v37 = swift_allocObject();
  v38 = MEMORY[0x277D84F98];
  *(v37 + 16) = MEMORY[0x277D84F98];
  v39 = swift_allocObject();
  *(v39 + 16) = v38;
  v40 = v39;
  v41 = *(v19 + 16);
  v42 = v67;
  if (v41)
  {
    v58[1] = v19;
    v43 = v19 + 32;
    v69 = v24;
    v44 = v31;
    v45 = v59;
    v46 = v39;
    do
    {
      sub_224A3317C(v43, aBlock);
      __swift_project_boxed_opaque_existential_1(aBlock, v73);
      v47 = sub_224DAE338();
      dispatch_group_enter(v36);
      v48 = swift_allocObject();
      v48[2] = v36;
      v48[3] = v37;
      v48[4] = v47;
      v48[5] = v46;
      v49 = v36;

      v50 = v47;

      sub_224A365A0(aBlock, v45 & 1, v44, v69, sub_224A59188, v48);

      __swift_destroy_boxed_opaque_existential_1(aBlock);
      v43 += 40;
      --v41;
    }

    while (v41);

    v42 = v67;
    v35 = v68;
    v34 = v70;
    v40 = v46;
  }

  else
  {
  }

  v69 = *&v34[OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue];
  v51 = swift_allocObject();
  v51[2] = v34;
  v51[3] = v40;
  v60 = v40;
  v52 = v61;
  v51[4] = v37;
  v51[5] = v52;
  v51[6] = v42;
  v74 = sub_224A59580;
  v75 = v51;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  v73 = &block_descriptor_193;
  v53 = _Block_copy(aBlock);

  v54 = v34;
  sub_224A364AC(v52, v42);
  v55 = v62;
  sub_224DAB7E8();
  v71 = MEMORY[0x277D84F90];
  sub_224A39EF8(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  v56 = v64;
  sub_224DAF788();
  sub_224DAF308();
  _Block_release(v53);

  (*(v66 + 8))(v56, v35);
  (*(v63 + 8))(v55, v65);
}

uint64_t sub_224A364AC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_224A364BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A364F4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224A36544()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_224A365A0(void *a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(void, void *), uint64_t a6)
{
  v7 = v6;
  v69 = a6;
  v70 = a5;
  v68 = a4;
  v67 = a3;
  v10 = sub_224DAB7B8();
  v66 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v64 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_224DAB848();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v13);
  v62 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DAD448();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v20 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v23 = (&v57 - v22);
  v24 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
  swift_beginAccess();
  sub_224A3796C(&v7[v24], aBlock, &qword_27D6F6C28, &qword_224DC1A38);
  if (v73)
  {
    sub_224A36F98(aBlock, &v78);
    if (a2)
    {
      v61 = v10;
      (*(v16 + 104))(v23, *MEMORY[0x277CF9CD0], v15);
LABEL_10:
      v60 = v23;
      sub_224A3317C(a1, v77);
      (*(v16 + 16))(v20, v23, v15);
      v32 = *(v16 + 80);
      v59 = v15;
      v33 = (v32 + 64) & ~v32;
      v34 = (v17 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = swift_allocObject();
      *(v35 + 16) = v7;
      sub_224A36F98(v77, v35 + 24);
      (*(v16 + 32))(v35 + v33, v20, v15);
      v36 = (v35 + v34);
      v37 = v70;
      v38 = v69;
      *v36 = v70;
      v36[1] = v38;
      v58 = (v7[OBJC_IVAR____TtC10ChronoCore17DescriptorService__test_noRetries] & 1) == 0;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v39 = v7;
      sub_224A364AC(v37, v38);
      v40 = sub_224DAE338();
      v70 = *&v39[OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue];
      sub_224A3317C(a1, v76);
      v41 = swift_allocObject();
      *(v41 + 16) = v39;
      *(v41 + 24) = v40;
      *(v41 + 32) = sub_224D5C33C;
      *(v41 + 40) = v35;
      v42 = v68;
      *(v41 + 48) = v67;
      *(v41 + 56) = v42;
      sub_224A36F98(v76, v41 + 64);
      *(v41 + 104) = v58;
      *(v41 + 112) = 0;
      v74 = sub_224D5C2B4;
      v75 = v41;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_224A39F40;
      v73 = &block_descriptor_182;
      v43 = _Block_copy(aBlock);

      v44 = v39;
      v45 = v40;

      v46 = v62;
      sub_224DAB7E8();
      v71 = MEMORY[0x277D84F90];
      sub_224A39EF8(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
      sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
      v47 = v64;
      v48 = v61;
      sub_224DAF788();
      MEMORY[0x22AA5D760](0, v46, v47, v43);
      _Block_release(v43);

      (*(v66 + 8))(v47, v48);
      (*(v63 + 8))(v46, v65);
      (*(v16 + 8))(v60, v59);
      __swift_destroy_boxed_opaque_existential_1(&v78);

      return;
    }

    if (sub_224D4E3B4(a1, &v78))
    {
      v61 = v10;
      v31 = v68;
      *v23 = v67;
      v23[1] = v31;
      (*(v16 + 104))(v23, *MEMORY[0x277CF9CE0], v15);

      goto LABEL_10;
    }

    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v50 = sub_224DAB258();
    __swift_project_value_buffer(v50, qword_281365168);
    sub_224A3317C(a1, aBlock);
    v51 = sub_224DAB228();
    v52 = sub_224DAF2A8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138543362;
      __swift_project_boxed_opaque_existential_1(aBlock, v73);
      v55 = sub_224DAE338();
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      *(v53 + 4) = v55;
      *v54 = v55;
      _os_log_impl(&dword_224A2F000, v51, v52, "Ignoring descriptor discovery for %{public}@ because it's restricted before first launch.", v53, 0xCu);
      sub_224A3311C(v54, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v54, -1, -1);
      MEMORY[0x22AA5EED0](v53, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(aBlock);
    }

    if (v70)
    {
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      v56 = sub_224CBC42C(11, 0, 0);
      v70(0, v56);
    }

    __swift_destroy_boxed_opaque_existential_1(&v78);
  }

  else
  {
    sub_224A3311C(aBlock, &qword_27D6F6C28, &qword_224DC1A38);
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v25 = sub_224DAB258();
    __swift_project_value_buffer(v25, qword_281365168);
    sub_224A3317C(a1, aBlock);
    v26 = sub_224DAB228();
    v27 = sub_224DAF288();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138543362;
      __swift_project_boxed_opaque_existential_1(aBlock, v73);
      v30 = sub_224DAE338();
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      *(v28 + 4) = v30;
      *v29 = v30;
      _os_log_impl(&dword_224A2F000, v26, v27, "Ignoring descriptor discovery for %{public}@: waiting for descriptor cache", v28, 0xCu);
      sub_224A3311C(v29, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v29, -1, -1);
      MEMORY[0x22AA5EED0](v28, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(aBlock);
    }

    if (v70)
    {
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      v49 = sub_224CBC42C(11, 0, 0);
      v70(0, v49);
    }
  }
}

uint64_t sub_224A36F98(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_224A37578(uint64_t *a1, void *a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_224DAF858();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v35;
    }

    else
    {
      result = sub_224DAF838();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_224ADD400(v15, result + 1, a4, a5, a6);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_224A5B698(v28 + 1, a4, a5);
        }

        v29 = v16;
        sub_224AE1A40(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = sub_224DAF698();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_224DAF6A8();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *v11;
      v26 = a2;
      sub_224A377DC(v26, v21, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v36;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

void sub_224A377DC(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_224A5B698(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_224A4A5EC(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_224A3DCC0(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = sub_224DAF698();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_224DAF6A8();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_224DAFDC8();
  __break(1u);
}

uint64_t sub_224A3796C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_224A37A68(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__services];
  v5 = *&v2[OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__queue];
  v6 = [a1 remoteProcess];
  v7 = type metadata accessor for ControlCenterClient();
  v8 = objc_allocWithZone(v7);
  swift_unknownObjectWeakInit();
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__subscriptions] = MEMORY[0x277D84FA0];
  swift_unknownObjectWeakAssign();
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__queue] = v5;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__queue_connection] = a1;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__services] = v4;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__processHandle] = v6;
  v9 = v5;
  v10 = a1;

  v11 = v6;
  sub_224DAF938();

  LODWORD(v22) = [v11 pid];
  v12 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v12);

  MEMORY[0x22AA5D210](93, 0xE100000000000000);
  v13 = &v8[OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__logIdentifier];
  *v13 = 0xD000000000000014;
  *(v13 + 1) = 0x8000000224DCECA0;
  v24.receiver = v8;
  v24.super_class = v7;
  v14 = objc_msgSendSuper2(&v24, sel_init);

  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_224A37E8C;
  *(v16 + 24) = v15;
  aBlock[4] = sub_224A37E94;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A37E38;
  aBlock[3] = &block_descriptor_52;
  v17 = _Block_copy(aBlock);
  v18 = v2;
  v19 = v14;

  [v10 configureConnection_];
  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
  }

  else
  {
    v20 = *&v18[OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__clientsSetLock];
    os_unfair_lock_lock(*(v20 + 16));
    swift_beginAccess();
    v21 = v19;
    sub_224A38340(&v22, v21);
    swift_endAccess();

    os_unfair_lock_unlock(*(v20 + 16));
    [v10 activate];
  }
}

uint64_t sub_224A37DC4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224A37E38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

void sub_224A37EBC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_224DAEBB8();
  v6 = sub_224DAEDE8();

  v7 = [objc_opt_self() interfaceWithIdentifier_];

  v8 = sub_224DAEBC8();
  v9 = objc_opt_self();
  v10 = [v9 protocolForProtocol_];

  [v7 setClient_];
  v11 = sub_224DAEBD8();
  v12 = [v9 protocolForProtocol_];

  [v7 setServer_];
  v13 = sub_224DAEBE8();
  [a1 setServiceQuality_];

  [a1 setTargetQueue_];
  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v30 = sub_224A383E4;
  v31 = v16;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_224A3837C;
  v29 = &block_descriptor_45_1;
  v17 = _Block_copy(&v26);

  [a1 setActivationHandler_];
  _Block_release(v17);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v19;
  v30 = sub_224D2422C;
  v31 = v20;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_224A3837C;
  v29 = &block_descriptor_53_1;
  v21 = _Block_copy(&v26);

  [a1 setInterruptionHandler_];
  _Block_release(v21);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = v23;
  v30 = sub_224D24234;
  v31 = v24;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_224A3837C;
  v29 = &block_descriptor_61_1;
  v25 = _Block_copy(&v26);

  [a1 setInvalidationHandler_];
  _Block_release(v25);
}

uint64_t sub_224A382E0()
{
  MEMORY[0x22AA5EFB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_224A3837C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_224A383EC(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_2813515C0 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281364F28);
  v5 = a1;
  v6 = sub_224DAB228();
  v7 = sub_224DAF2A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21[0] = v9;
    *v8 = 136446210;
    v10 = [v5 remoteProcess];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 description];

      v13 = sub_224DAEE18();
      v15 = v14;
    }

    else
    {
      v15 = 0x8000000224DC7B00;
      v13 = 0xD00000000000001ALL;
    }

    v16 = sub_224A33F74(v13, v15, v21);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_224A2F000, v6, v7, "Chrono ControlCenter connection from %{public}s activated", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x22AA5EED0](v9, -1, -1);
    MEMORY[0x22AA5EED0](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      BSDispatchQueueAssert();
      BSDispatchQueueAssert();

      v18 = v20;
    }
  }
}

uint64_t sub_224A3869C(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v4 = sub_224DACB98();
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v28 - v15;
  BSDispatchQueueAssert();
  BSDispatchQueueAssert();
  v17 = [*(v2 + OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__queue_connection) remoteProcess];
  v18 = [v17 bundleIdentifier];

  if (!v18)
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    return sub_224A3311C(v11, &unk_27D6F5060, &qword_224DB5620);
  }

  v28 = a2;
  v19 = sub_224DAEE18();
  v21 = v20;

  sub_224A38AB0(v19, v21, 1, v11);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_224A3311C(v11, &unk_27D6F5060, &qword_224DB5620);
  }

  (*(v13 + 32))(v16, v11, v12);
  sub_224A3317C(*(v2 + OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__services) + 16, v31);
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  v22 = swift_allocObject();
  v23 = [objc_opt_self() currentContext];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 remoteProcess];
  }

  else
  {
    v25 = 0;
  }

  v22[2] = v25;
  v22[3] = 0xD00000000000001DLL;
  v22[4] = 0x8000000224DCEC60;
  *v7 = v22;
  v27 = v29;
  (*(v29 + 104))(v7, *MEMORY[0x277CF9B90], v4);
  sub_224C7F6A4(v16, v30, v28, v7);
  (*(v27 + 8))(v7, v4);
  (*(v13 + 8))(v16, v12);
  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t sub_224A38A70()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224A38AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  HIDWORD(v25) = a3;
  v29 = a4;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v7 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v8);
  v10 = &v25 - v9;
  sub_224A3317C(*(v4 + OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__services) + 56, v32);
  v27 = v32[4];
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  sub_224D24194(&qword_281351920, MEMORY[0x277CF9F98]);
  sub_224D24194(&qword_2813518E0, MEMORY[0x277CF9FC0]);
  sub_224D24194(&unk_281351910, MEMORY[0x277CF9FA0]);
  sub_224D24194(&unk_281351900, MEMORY[0x277CF9FA8]);
  v26 = a1;
  sub_224DAA208();
  sub_224DAC6C8();
  (*(v7 + 8))(v10, v28);
  if (v31)
  {
    sub_224A36F98(&v30, v33);
    __swift_destroy_boxed_opaque_existential_1(v32);
    __swift_project_boxed_opaque_existential_1(v33, v33[3]);
    sub_224DAE328();
    v11 = v29;
    sub_224DA9FF8();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  v14 = BYTE4(v25);
  v15 = v29;
  sub_224A3311C(&v30, &unk_27D6F4700, &unk_224DB3A10);
  __swift_destroy_boxed_opaque_existential_1(v32);
  v16 = objc_allocWithZone(MEMORY[0x277CC1E50]);

  v17 = sub_224A33224(v26, a2);
  if (v17)
  {
    v20 = v17;
    v21 = [v17 containingBundleRecord];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 bundleIdentifier];
      if (v23)
      {
        v24 = v23;
        sub_224DAEE18();

        goto LABEL_6;
      }
    }

    else
    {
    }
  }

  if (v14)
  {

LABEL_6:
    sub_224DA9FF8();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    return (*(*(v18 - 8) + 56))(v15, 0, 1, v18);
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  return (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
}

uint64_t sub_224A38FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v35 = a4;
  v6 = sub_224DACB98();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v32 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DACB08();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v29 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_224DACB28();
  v12 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_224DACC88();
  v16 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v21 = sub_224AE8AF4(inited);
  swift_setDeallocating();
  sub_224BCA6B4(inited + 32);
  v22 = v30;
  sub_224D84200(v30, v21);

  v23 = sub_224DAC108();
  v37 = v22;
  v38 = a1;
  v39 = a2;
  v24 = sub_224A392FC(sub_224D8E708, v36, v23);
  (*(v12 + 104))(v15, *MEMORY[0x277CF9B50], v28);
  v25 = v35;
  sub_224DACB68();
  (*(v33 + 16))(v32, v25, v34);
  sub_224DACC48();
  sub_224DACC38();
  sub_224A3933C(v24, v19);

  return (*(v16 + 8))(v19, v31);
}

uint64_t sub_224A3933C(uint64_t a1, uint64_t a2)
{
  v89 = sub_224DACC88();
  v97 = *(v89 - 8);
  MEMORY[0x28223BE20](v89, v4);
  v92 = v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_224DACB98();
  v6 = *(v82 - 8);
  v8 = MEMORY[0x28223BE20](v82, v7);
  v81 = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v80 = v72 - v11;
  v103 = sub_224DAC268();
  v95 = *(v103 - 8);
  MEMORY[0x28223BE20](v103, v12);
  v102 = v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F0, &unk_224DB7850);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v18 = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v99 = v72 - v20;
  v21 = sub_224DABE18();
  v22 = *(v21 - 8);
  result = MEMORY[0x28223BE20](v21, v23);
  v26 = v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *(a1 + 16);
  if (!v84)
  {
    return result;
  }

  v27 = 0;
  v78 = OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadFilters;
  v29 = *(v22 + 16);
  v28 = v22 + 16;
  v87 = v29;
  v86 = a1 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
  v93 = v95 + 16;
  v101 = (v95 + 32);
  v30 = *(v100 + 232);
  v98 = (v95 + 8);
  v77 = *MEMORY[0x277CF9BE8];
  v76 = (v6 + 104);
  v75 = (v6 + 8);
  v74 = (v97 + 16);
  v72[0] = v97 + 8;
  v83 = (v28 - 8);
  v85 = *(v28 + 56);
  v94 = v18;
  v79 = a2;
  v73 = v21;
  v72[2] = v28;
  v91 = v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72[1] = v30;
  v29(v26, v86, v21);
  while (1)
  {
    v31 = sub_224DAC168();
    if (!v31)
    {
      result = (*v83)(v26, v21);
      goto LABEL_4;
    }

    v88 = v27;
    v32 = 0;
    v97 = v31;
    v34 = *(v31 + 64);
    result = v31 + 64;
    v33 = v34;
    v90 = result;
    v35 = 1 << *(result - 32);
    v36 = v35 < 64 ? ~(-1 << v35) : -1;
    v37 = v36 & v33;
    v38 = (v35 + 63) >> 6;
    v96 = v38;
    if ((v36 & v33) == 0)
    {
      break;
    }

    while (1)
    {
      v39 = v32;
LABEL_19:
      v42 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v43 = v42 | (v39 << 6);
      v44 = v97;
      v45 = v95;
      v46 = v102;
      v47 = v103;
      (*(v95 + 16))(v102, *(v97 + 48) + *(v95 + 72) * v43, v103);
      v48 = *(*(v44 + 56) + 8 * v43);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
      v50 = *(v49 + 48);
      v51 = *(v45 + 32);
      v18 = v94;
      v51(v94, v46, v47);
      *&v18[v50] = v48;
      (*(*(v49 - 8) + 56))(v18, 0, 1, v49);
      v52 = v48;
      v41 = v39;
      v38 = v96;
LABEL_20:
      v53 = v99;
      sub_224A44E4C(v18, v99, &qword_27D6F47F0, &unk_224DB7850);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
      if ((*(*(v54 - 8) + 48))(v53, 1, v54) == 1)
      {
        break;
      }

      v55 = v102;
      v56 = v103;
      (*v101)(v102, v53, v103);
      swift_getObjectType();
      sub_224DAC468();
      result = (*v98)(v55, v56);
      v32 = v41;
      if (!v37)
      {
        goto LABEL_12;
      }
    }

    v58 = v80;
    v59 = v82;
    (*v76)(v80, v77, v82);
    v60 = v81;
    v61 = v79;
    sub_224DACC68();
    v62 = sub_224DACB88();
    v63 = *v75;
    (*v75)(v60, v59);
    v63(v58, v59);
    if (v62)
    {
      sub_224DAB348();
    }

    (*v74)(v92, v61, v89);
    v64 = *(v100 + v78);
    result = v64 + 32;
    v65 = -*(v64 + 16);
    v66 = -1;
    while (v65 + v66 != -1)
    {
      if (++v66 >= *(v64 + 16))
      {
        goto LABEL_34;
      }

      v67 = result + 40;
      sub_224A3317C(result, &v104);
      v69 = v105;
      v68 = v106;
      __swift_project_boxed_opaque_existential_1(&v104, v105);
      v70 = (*(v68 + 8))(v91, v92, v69, v68);
      __swift_destroy_boxed_opaque_existential_1(&v104);
      result = v67;
      if ((v70 & 1) == 0)
      {
        (*v72[0])(v92, v89);
        v26 = v91;
        v21 = v73;
        result = (*v83)(v91, v73);
        v27 = v88;
        goto LABEL_4;
      }
    }

    v26 = v91;
    v71 = v92;
    sub_224DAC138();
    (*v72[0])(v71, v89);
    v21 = v73;
    result = (*v83)(v26, v73);
    v27 = v88;
LABEL_4:
    if (++v27 == v84)
    {
      return result;
    }

    v87(v26, v86 + v85 * v27, v21);
  }

LABEL_12:
  if (v38 <= v32 + 1)
  {
    v40 = v32 + 1;
  }

  else
  {
    v40 = v38;
  }

  v41 = v40 - 1;
  while (1)
  {
    v39 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v39 >= v38)
    {
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
      (*(*(v57 - 8) + 56))(v18, 1, 1, v57);
      v37 = 0;
      goto LABEL_20;
    }

    v37 = *(v90 + 8 * v39);
    ++v32;
    if (v37)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_224A39C6C(uint64_t a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, uint64_t, uint64_t, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = sub_224DAEE18();
  v10 = v9;
  _Block_copy(v7);

  a5(v8, v10, a1, v7);
  _Block_release(v7);
  _Block_release(v7);
}

uint64_t sub_224A39EA8()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224A39EF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224A39F40(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_224A39FC4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, char a9)
{
  v17 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_currentExtensionsAndCompletionsBeingFetched;
  swift_beginAccess();
  if (*(*(a1 + v17) + 16) && (, sub_224A3E7EC(a2), v19 = v18, , (v19 & 1) != 0))
  {
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v20 = sub_224DAB258();
    __swift_project_value_buffer(v20, qword_281365168);
    v21 = a2;

    v22 = sub_224DAB228();
    v23 = sub_224DAF2A8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v41 = a6;
      v25 = swift_slowAlloc();
      v26 = a1;
      v27 = a5;
      v28 = swift_slowAlloc();
      v42[0] = v28;
      *v24 = 138543618;
      *(v24 + 4) = v21;
      *v25 = v21;
      *(v24 + 12) = 2082;
      v29 = v21;
      v30 = v27;
      a1 = v26;
      *(v24 + 14) = sub_224A33F74(v30, v41, v42);
      _os_log_impl(&dword_224A2F000, v22, v23, "[%{public}@] ignoring request to fetch descriptor for already pending descriptor query (saving completion) - reason: %{public}s", v24, 0x16u);
      sub_224A3311C(v25, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x22AA5EED0](v28, -1, -1);
      MEMORY[0x22AA5EED0](v24, -1, -1);
    }

    return sub_224A3E210(a1, v21, a3, a4);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_224DB2780;
    *(inited + 32) = a2;
    v33 = a1 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_preferences;
    swift_beginAccess();
    v39 = a8;
    v40 = a5;
    v34 = *(v33 + 24);
    v35 = *(v33 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
    v38 = a7;
    v36 = *(v35 + 32);
    v37 = a2;
    v36(inited, v34, v35);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_endAccess();
    sub_224A3E210(a1, v37, a3, a4);
    return sub_224A3E908(v38, v39, v40, a6, a9 & 1);
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void sub_224A3A38C(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v5 = *(v2 + 24);
  os_unfair_lock_lock(*(v5 + 16));
  a2(v2, a1);
  v6 = *(v5 + 16);

  os_unfair_lock_unlock(v6);
}

unint64_t sub_224A3A40C(uint64_t a1, uint64_t a2)
{
  sub_224DAFE68();
  sub_224DAEE78();
  v4 = sub_224DAFEA8();

  return sub_224A3A484(a1, a2, v4);
}

unint64_t sub_224A3A484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_224DAFD88())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_224A3A53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_224DAFE68();
  sub_224DAEE78();
  v6 = sub_224DAFEA8();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_224DAFD88() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_224A3A634(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v25 - v9;
  v11 = *v2;
  sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA8]);
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
      sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FB0]);
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
    sub_224AE21D4(v10, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v33;
    (*(v7 + 32))(a1, v23, v6);
    return 1;
  }
}

uint64_t sub_224A3A918(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v18 - v7;
  v9 = sub_224DAC378();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_224A3311C(a1, &qword_27D6F3948, &qword_224DB5C10);
    sub_224A3AB5C(a2, v8);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_224A3311C(v8, &qword_27D6F3948, &qword_224DB5C10);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_224A9E3F8(v13, a2, isUniquelyReferenced_nonNull_native);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    result = (*(*(v17 - 8) + 8))(a2, v17);
    *v2 = v19;
  }

  return result;
}

uint64_t sub_224A3AB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_224A3AD28(a1, &qword_27D6F3900, &unk_224DB4640, &qword_281351970, &unk_281351960);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_224B2669C();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_224DAC378();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_224B1C614(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_224DAC378();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

unint64_t sub_224A3AD28(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_224A33088(a4, a2, a3, MEMORY[0x277CF9FA8]);
  v10 = sub_224DAED88();
  return sub_224A3ADF0(a1, v10, a2, a3, a5, MEMORY[0x277CF9FB0]);
}

unint64_t sub_224A3ADF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v24 = a1;
  v26 = a3;
  v27 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v22 - v11;
  v25 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v23 = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v16 = v9 + 16;
    v17 = v18;
    v19 = *(v16 + 56);
    do
    {
      v17(v12, *(v25 + 48) + v19 * v14, v8);
      sub_224A33088(v28, v26, v27, v29);
      v20 = sub_224DAEDD8();
      (*(v16 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v23 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_224A3AF98()
{
  result = qword_281350ED0;
  if (!qword_281350ED0)
  {
    sub_224DAB7B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350ED0);
  }

  return result;
}

uint64_t sub_224A3AFF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v17 - v3;
  v5 = sub_224DAC378();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_formerlyVisibleApplicationsGraceExpirationTimer;
  if (*(v0 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_formerlyVisibleApplicationsGraceExpirationTimer))
  {

    sub_224DAC5F8();

    *(v0 + v14) = 0;
  }

  swift_beginAccess();

  sub_224A3B2AC(v15, v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_224A3311C(v4, &qword_27D6F3948, &qword_224DB5C10);
  }

  (*(v6 + 32))(v13, v4, v5);
  sub_224DAC648();
  (*(v6 + 16))(v10, v13, v5);
  sub_224DAC618();
  *(v0 + v14) = sub_224DAC608();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_224DAC638();

  (*(v6 + 8))(v13, v5);
}

uint64_t sub_224A3B2AC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_224DAC378();
  v6 = MEMORY[0x28223BE20](v4, v5);
  v48 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v43 - v10;
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v43 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v50 = &v43 - v18;
  v19 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a1 + 64);
  if (v22)
  {
    v43 = a2;
    v23 = 0;
    v24 = __clz(__rbit64(v22));
    v25 = (v22 - 1) & v22;
    v26 = (v20 + 63) >> 6;
LABEL_9:
    v29 = v17[9];
    v30 = *(a1 + 56) + v29 * v24;
    v31 = v17[2];
    v44 = v17;
    v45 = v31;
    v46 = v17 + 2;
    v47 = v29;
    v31(v15, v30, v4);
    v33 = v44 + 4;
    v32 = v44[4];
    v32(v50, v15, v4);
    v49 = a1;

    if (v25)
    {
      goto LABEL_12;
    }

LABEL_13:
    while (1)
    {
      v35 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v35 >= v26)
      {

        v41 = v43;
        v32(v43, v50, v4);
        return (v44[7])(v41, 0, 1, v4);
      }

      v25 = *(v19 + 8 * v35);
      ++v23;
      if (v25)
      {
        while (1)
        {
          v36 = __clz(__rbit64(v25));
          v25 &= v25 - 1;
          v37 = v48;
          v45(v48, *(v49 + 56) + (v36 | (v35 << 6)) * v47, v4);
          v32(v11, v37, v4);
          sub_224CE3D8C(&qword_281350DF0, MEMORY[0x277CF9A10], MEMORY[0x277CF9A18]);
          v38 = v50;
          v39 = sub_224DAEDB8();
          v40 = *(v33 - 3);
          if (v39)
          {
            v40(v38, v4);
            result = (v32)(v38, v11, v4);
            v23 = v35;
            if (!v25)
            {
              goto LABEL_13;
            }
          }

          else
          {
            result = (v40)(v11, v4);
            v23 = v35;
            if (!v25)
            {
              goto LABEL_13;
            }
          }

LABEL_12:
          v35 = v23;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v27 = 0;
    v26 = (v20 + 63) >> 6;
    while (v26 - 1 != v22)
    {
      v23 = v22 + 1;
      v28 = *(a1 + 72 + 8 * v22);
      v27 -= 64;
      ++v22;
      if (v28)
      {
        v43 = a2;
        v25 = (v28 - 1) & v28;
        v24 = __clz(__rbit64(v28)) - v27;
        goto LABEL_9;
      }
    }

    v42 = v17[7];

    return v42(a2, 1, 1, v4);
  }

  return result;
}

unint64_t sub_224A3B690(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F7110, &qword_224DB4998);
    v3 = sub_224DAFBB8();
    for (i = (a1 + 32); ; ++i)
    {
      v5 = *i;
      result = sub_224AA3CDC();
      if (v7)
      {
        break;
      }

      *(v3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v3 + 56) + result) = v5;
      v8 = *(v3 + 16);
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      *(v3 + 16) = v10;
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

uint64_t sub_224A3B758(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_224A3B79C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_224A3B79C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_224A3B7EC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640) - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

unint64_t sub_224A3B888(unint64_t result, void *a2, uint64_t a3)
{
  v4 = result;
  if (result >> 62)
  {
    result = sub_224DAF838();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AA5DCC0](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v7 + 24);
        ObjectType = swift_getObjectType();
        v12[3] = type metadata accessor for ProcessMonitor(0);
        v12[4] = &off_28382AA58;
        v10 = a2;

        v12[0] = v10;
        (*(v8 + 24))(v12, a3, ObjectType, v8);
        swift_unknownObjectRelease();
        result = __swift_destroy_boxed_opaque_existential_1(v12);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t objectdestroy_103Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t type metadata accessor for ProcessMonitor(uint64_t a1)
{
  result = qword_28135B6F8;
  if (!qword_28135B6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224A3BB44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_224ACFF60;

  return sub_224A3BBFC(a1, v4);
}

uint64_t sub_224A3BBFC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_224C51C58;

  return v6(a1);
}

uint64_t sub_224A3BCF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224A48A18(a1, v4, v5, v6);
}

uint64_t sub_224A3BDC0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_224ACFF60;

  return sub_224A3BE74(v2, v3, v4);
}

uint64_t sub_224A3BE74(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = sub_224DAEE18();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_224C4FCE0;

  return sub_224A3BF48(v4, v6);
}

uint64_t sub_224A3BF48(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v3[5] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224A3C8D0, 0, 0);
}

uint64_t sub_224A3C050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  v7 = sub_224DADE98();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224A3C180, 0, 0);
}

uint64_t sub_224A3C180()
{
  v54 = v0;
  sub_224A3796C(*(v0 + 136) + 184, v0 + 56, &unk_27D6F4FB0, &unk_224DBADC8);
  if (!*(v0 + 80))
  {
    sub_224A3311C(v0 + 56, &unk_27D6F4FB0, &unk_224DBADC8);

    v22 = *(v0 + 8);
LABEL_28:

    return v22();
  }

  v1 = (v0 + 16);
  v2 = *(v0 + 128);
  v3 = *(v0 + 120);
  sub_224A36F98((v0 + 56), v0 + 16);
  v4 = sub_224A47CD8(v3, v2);
  v5 = v4;
  *(v0 + 192) = v4;
  if (v6)
  {
    v7 = v4;
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v8 = sub_224DAB258();
    __swift_project_value_buffer(v8, qword_281364E50);

    v9 = sub_224DAB228();
    v10 = sub_224DAF288();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = v5;
      v13 = *(v0 + 120);
      v12 = *(v0 + 128);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v53[0] = v15;
      *v14 = 136446466;
      *(v14 + 4) = sub_224A33F74(v13, v12, v53);
      *(v14 + 12) = 2082;
      v16 = [objc_opt_self() currentConnection];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 description];

        v19 = sub_224DAEE18();
        v21 = v20;
      }

      else
      {
        v19 = 0x6E776F6E6B6E75;
        v21 = 0xE700000000000000;
      }

      v36 = sub_224A33F74(v19, v21, v53);

      *(v14 + 14) = v36;
      _os_log_impl(&dword_224A2F000, v9, v10, "[WidgetCenter] %{public}s invalidate widget relevances from %{public}s - not authorized", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v15, -1, -1);
      MEMORY[0x22AA5EED0](v14, -1, -1);

      v5 = v11;
      v1 = (v0 + 16);
    }

    else
    {
    }

LABEL_27:
    swift_willThrow();
    sub_224C54434(v5);
    __swift_destroy_boxed_opaque_existential_1(v1);

    v22 = *(v0 + 8);
    goto LABEL_28;
  }

  v52 = v4;
  if (qword_2813514B8 != -1)
  {
    swift_once();
  }

  v23 = sub_224DAB258();
  __swift_project_value_buffer(v23, qword_281364E50);

  v24 = sub_224DAB228();
  v25 = sub_224DAF2A8();

  if (os_log_type_enabled(v24, v25))
  {
    v27 = *(v0 + 120);
    v26 = *(v0 + 128);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v53[0] = v29;
    *v28 = 136446466;
    *(v28 + 4) = sub_224A33F74(v27, v26, v53);
    *(v28 + 12) = 2082;
    v30 = [objc_opt_self() currentConnection];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 description];

      v33 = sub_224DAEE18();
      v35 = v34;
    }

    else
    {
      v33 = 0x6E776F6E6B6E75;
      v35 = 0xE700000000000000;
    }

    v37 = sub_224A33F74(v33, v35, v53);

    *(v28 + 14) = v37;
    _os_log_impl(&dword_224A2F000, v24, v25, "[WidgetCenter] %{public}s invalidate widget relevances from %{public}s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v29, -1, -1);
    MEMORY[0x22AA5EED0](v28, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((*(v0 + 136) + 104), *(*(v0 + 136) + 128));
  if (!sub_224DADA38() || (v39 = *(v0 + 176), v38 = *(v0 + 184), v40 = *(v0 + 160), v41 = *(v0 + 152), v50 = *(v0 + 144), v51 = *(v0 + 168), , sub_224DA9FF8(), sub_224DACA08(), (*(v41 + 8))(v40, v50), sub_224DACF08(), , (*(v39 + 8))(v38, v51), v42 = *(v0 + 96), (*(v0 + 200) = v42) == 0))
  {
    v45 = sub_224DAB228();
    v46 = sub_224DAF288();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_224A2F000, v45, v46, "No matching descriptors found", v47, 2u);
      MEMORY[0x22AA5EED0](v47, -1, -1);
    }

    sub_224BFD554();
    swift_allocError();
    *v48 = 1;
    v5 = v52;
    v1 = (v0 + 16);
    goto LABEL_27;
  }

  v43 = swift_task_alloc();
  *(v0 + 208) = v43;
  *(v43 + 16) = v0 + 16;
  *(v43 + 24) = v42;
  v44 = swift_task_alloc();
  *(v0 + 216) = v44;
  *v44 = v0;
  v44[1] = sub_224C4FA98;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_224A3C8D0(uint64_t a1)
{
  v2 = sub_224DAF2C8();
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[5];
  if (v3)
  {
    sub_224A32920(v2, v3, 1, v1[5]);

    if ((*(v5 + 48))(v6, 1, v4) != 1)
    {
      (*(v1[7] + 32))(v1[8], v1[5], v1[6]);
      v7 = sub_224DA9FE8();
      v9 = v8;
      v1[9] = v8;
      v10 = swift_task_alloc();
      v1[10] = v10;
      *v10 = v1;
      v10[1] = sub_224C4F858;
      v11 = v1[3];
      v12 = v1[2];

      return sub_224A3C050(v12, v11, v7, v9);
    }
  }

  else
  {
    (*(v5 + 56))(v1[5], 1, 1, v1[6]);
  }

  sub_224A3311C(v1[5], &unk_27D6F5060, &qword_224DB5620);
  sub_224BFD554();
  swift_allocError();
  *v14 = 9;
  swift_willThrow();

  v15 = v1[1];

  return v15();
}

void *sub_224A3CAC0(uint64_t a1, unint64_t a2)
{
  v3 = sub_224A3CB80(a1, a2);
  sub_224A3CCB0(&unk_283827CC0);
  return v3;
}

void *sub_224A3CB0C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3450, &unk_224DB38A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_224A3CB80(uint64_t a1, unint64_t a2)
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

  v6 = sub_224A3CB0C(v5, 0);
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

  result = sub_224DAF998();
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
        v10 = sub_224DAEED8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_224A3CB0C(v10, 0);
        result = sub_224DAF928();
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

uint64_t sub_224A3CCB0(uint64_t result)
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

  result = sub_224AD5E84(result, v11, 1, v3);
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

uint64_t sub_224A3CD9C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_224ACFF60;

  return v6();
}

uint64_t sub_224A3CE84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224A3CECC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224A3CF14(uint64_t a1, unint64_t a2)
{
  result = sub_224A3D04C();
  v12 = result;
  if (!(a2 >> 62))
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_224CB93B4(v12);
    v10 = v9;

    v11 = v10;

    sub_224DA9E98();
  }

  result = sub_224DAF838();
  v4 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        v6 = MEMORY[0x22AA5DCC0](i, a2);
        sub_224A3DC84(&v11, v6);
      }
    }

    else
    {
      v7 = (a2 + 32);
      do
      {
        v8 = *v7++;
        sub_224A3DC84(&v11, v8);

        --v4;
      }

      while (v4);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_224A3D04C()
{

  sub_224DA9E88();

  v1 = 0;
  v2 = v8;
  v3 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  v4 = *(v2 + 16);
LABEL_2:
  v5 = v2 + 40 + 16 * v1;
  while (1)
  {
    if (v4 == v1)
    {

      v7 = sub_224A3DADC(v3);

      return v7;
    }

    if (v1 >= *(v2 + 16))
    {
      break;
    }

    ++v1;
    v6 = v5 + 16;
    sub_224DAF538();

    result = sub_224DAF4F8();
    v5 = v6;
    if (result)
    {
      MEMORY[0x22AA5D350]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_224DAF038();
      }

      result = sub_224DAF078();
      v3 = v9;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224A3D19C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_224DAEE98();

    return sub_224DAEF28();
  }

  return result;
}

uint64_t sub_224A3D238(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224A3D298(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224A3D2F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224A3D358(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224A3D3B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224A3D418(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *sub_224A3D428(uint64_t a1)
{
  v41 = a1;
  v40 = type metadata accessor for ExtensionTask.Identifier(0);
  MEMORY[0x28223BE20](v40, v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D85000];
  os_unfair_lock_assert_owner(*(*(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x88)) + 16));
  v6 = *((*v5 & *v1) + 0xB8);
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v39 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier;
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F98];
  while (1)
  {
    v14 = v12;
    if (!v10)
    {
      break;
    }

LABEL_8:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v7 + 48) + 2 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v7 + 56) + 8 * v16);
    if (v18)
    {
      sub_224A414C4(v41 + v39, v4, type metadata accessor for ExtensionTask.Identifier);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);
        v37 = *&v4[*(v21 + 48)];
        v38 = v21;

        v22 = sub_224DABE18();
        (*(*(v22 - 8) + 8))(v4, v22);
        goto LABEL_15;
      }

      sub_224A48F3C(v4);
      if ((v19 & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_11:
      v19 = 1;
LABEL_15:
      LODWORD(v38) = swift_isUniquelyReferenced_nonNull_native();
      v42 = v13;
      LODWORD(v37) = v19 & 1;
      if (v19)
      {
        v23 = 256;
      }

      else
      {
        v23 = 0;
      }

      v24 = sub_224A48FA0(v23 | v18);
      v26 = v13[2];
      v27 = (v25 & 1) == 0;
      v28 = __OFADD__(v26, v27);
      v29 = v26 + v27;
      if (v28)
      {
        goto LABEL_30;
      }

      if (v13[3] >= v29)
      {
        if (v38)
        {
          goto LABEL_23;
        }

        v38 = v24;
        v31 = v25;
        sub_224B2625C();
        v24 = v38;
        v13 = v42;
        if ((v31 & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_24:
        *(v13[7] + 8 * v24) = v20;
      }

      else
      {
        HIDWORD(v36) = v25;
        sub_224A3D7F0(v29, v38);
        v24 = sub_224A48FA0(v23 | v18);
        v30 = v25 & 1;
        LOBYTE(v25) = BYTE4(v36);
        if ((BYTE4(v36) & 1) != v30)
        {
          goto LABEL_32;
        }

LABEL_23:
        v13 = v42;
        if (v25)
        {
          goto LABEL_24;
        }

LABEL_26:
        v13[(v24 >> 6) + 8] |= 1 << v24;
        v32 = (v13[6] + 2 * v24);
        *v32 = v18;
        v32[1] = v37;
        *(v13[7] + 8 * v24) = v20;
        v33 = v13[2];
        v28 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v28)
        {
          goto LABEL_31;
        }

        v13[2] = v34;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_11;
      }

LABEL_13:
    }
  }

  while (1)
  {
    v12 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return v13;
    }

    v10 = *(v7 + 64 + 8 * v12);
    ++v14;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

uint64_t sub_224A3D7F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F38D0, &qword_224DB4708);
  v34 = v4;
  result = sub_224DAFB98();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 2 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_224DAFE68();
      sub_224DAFE88();
      sub_224DAFE88();
      result = sub_224DAFEA8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 2 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_224A3DAA0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_224A3DADC(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224DAF838())
  {
    v4 = sub_224DAF538();
    v5 = sub_224A3CE84(&unk_2813509A0, MEMORY[0x277CFA140], MEMORY[0x277D85378]);
    result = MEMORY[0x22AA5D540](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x22AA5DCC0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_224A37578(&v11, v9, MEMORY[0x277CFA140], &qword_27D6F3510, &qword_224DB3AA8, MEMORY[0x277CFA140]);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_224DAF838();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_224A3DCC0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_224DAF8F8();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_224DAF698();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }

  return result;
}

char *sub_224A3DECC(char *result, int64_t a2, char a3, char *a4)
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

char *sub_224A3DFD8(char *a1, int64_t a2, char a3)
{
  result = sub_224A3DECC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_224A3DFF8(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x22AA5DBD0](a1, a2, v9);
      a5(0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    a5(0);
    if (sub_224DAF818() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_224DAF828();
    swift_dynamicCast();
    v5 = v17;
    v10 = sub_224DAF698();
    v11 = -1 << *(a4 + 32);
    v8 = v10 & ~v11;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(a4 + 48) + 8 * v8);
        v14 = sub_224DAF6A8();

        if (v14)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v12;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v15 = *(*(a4 + 48) + 8 * v8);

  v16 = v15;
}

uint64_t sub_224A3E204(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_224A3E210(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_currentExtensionsAndCompletionsBeingFetched;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (!*(v9 + 16))
  {
LABEL_6:
    v12 = MEMORY[0x277D84F90];
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v10 = sub_224A3E7EC(a2);
  if ((v11 & 1) == 0)
  {

    goto LABEL_6;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  if (!a3)
  {
    goto LABEL_12;
  }

LABEL_7:
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_224A3E50C(0, v12[2] + 1, 1, v12);
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_224A3E50C((v14 > 1), v15 + 1, 1, v12);
  }

  v12[2] = v15 + 1;
  v16 = &v12[2 * v15];
  v16[4] = sub_224A58DCC;
  v16[5] = v13;
LABEL_12:
  swift_beginAccess();

  sub_224A3E520(v12, a2);
  swift_endAccess();
}

uint64_t sub_224A3E3A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_224A3E3E0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3578, &unk_224DB3B30);
    swift_arrayInitWithCopy();
  }

  return v12;
}

void sub_224A3E534(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    sub_224A3E65C(a1, a2, isUniquelyReferenced_nonNull_native, a3, a4);

    *v4 = v16;
  }

  else
  {
    v10 = sub_224A3E7EC(a2);
    if (v11)
    {
      v12 = v10;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v17 = *v7;
      if (!v13)
      {
        sub_224B2AC58(a3, a4);
        v14 = v17;
      }

      sub_224A58C3C(v12, v14);

      *v7 = v14;
    }

    else
    {
    }
  }
}

id sub_224A3E65C(uint64_t a1, void *a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v11 = *v5;
  v12 = sub_224A3E7EC(a2);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 < v17 || (a3 & 1) != 0)
    {
      sub_224A6FB90(v17, a3 & 1, a4, a5);
      v12 = sub_224A3E7EC(a2);
      if ((v18 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_224DAF538();
        result = sub_224DAFDD8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = v12;
      sub_224B2AC58(a4, a5);
      v12 = v20;
    }
  }

  v22 = *v8;
  if (v18)
  {
    *(v22[7] + 8 * v12) = a1;
  }

  v22[(v12 >> 6) + 8] |= 1 << v12;
  *(v22[6] + 8 * v12) = a2;
  *(v22[7] + 8 * v12) = a1;
  v24 = v22[2];
  v16 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v25;

  return a2;
}

unint64_t sub_224A3E840(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    a3(0);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_224DAF6A8();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_224A3E908(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v112) = a5;
  v107 = a3;
  v108 = a4;
  v109 = a2;
  v116 = *MEMORY[0x277D85DE8];
  v6 = sub_224DAE918();
  v105 = *(v6 - 8);
  v106 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v104 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_224DA9908();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102, v9);
  v111 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_224DA9878();
  v98 = *(v99 - 1);
  MEMORY[0x28223BE20](v99, v11);
  v97 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v110 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for ExtensionTask.Identifier(0);
  MEMORY[0x28223BE20](v96, v16);
  v18 = (&v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for ExtensionTask.SchedulingOption(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = sub_224DAE338();
  BSDispatchQueueAssert();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5070, &unk_224DB3670);
  v25 = *(v20 + 72);
  v26 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v27 = v26 + v25;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_224DB3100;
  v29 = sub_224DAE8B8();
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v31(v28 + v26, 3, 5, v29);
  v32 = MEMORY[0x277CE3D30];
  if ((v112 & 1) == 0)
  {
    v32 = MEMORY[0x277CE3D18];
  }

  (*(v30 + 104))(v23, *v32, v29);
  v31(v23, 0, 5, v29);
  v33 = sub_224AD946C(1, 2, 1, v28);
  v33[2] = 2;
  sub_224B442EC(v23, v33 + v27);
  v34 = v18;
  *v18 = v24;
  v95 = v18;
  swift_storeEnumTagMultiPayload();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  v36 = v110;
  (*(*(v35 - 8) + 56))(v110, 1, 1, v35);
  v96 = type metadata accessor for ExtensionTask(0);
  v37 = objc_allocWithZone(v96);
  v38 = v24;
  sub_224DAE908();
  v39 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
  *&v37[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions] = MEMORY[0x277D84F90];
  v40 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
  v41 = sub_224DAC938();
  (*(*(v41 - 8) + 56))(&v37[v40], 1, 1, v41);
  v42 = &v37[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_syncWorkItem];
  *v42 = 0;
  v42[1] = 0;
  v43 = &v37[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
  *v43 = 0;
  v43[1] = 0;
  v44 = &v37[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem];
  *v44 = 0;
  v44[1] = 0;
  v45 = &v37[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
  *v45 = 0;
  v45[1] = 0;
  v46 = v97;
  sub_224DA9868();
  v98[4](&v37[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_creationDate], v46, v99);
  *&v37[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_target] = v24;
  v99 = type metadata accessor for ExtensionTask.SchedulingConfiguration;
  sub_224A3F63C(v36, &v37[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration], type metadata accessor for ExtensionTask.SchedulingConfiguration);
  swift_beginAccess();
  *&v37[v39] = v33;
  v98 = v38;

  v47 = &v37[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_cost];
  *v47 = 0;
  v47[8] = 1;
  sub_224A3F63C(v34, &v37[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier], type metadata accessor for ExtensionTask.Identifier);
  v48 = v111;
  sub_224DA98F8();
  v49 = v101;
  v50 = v102;
  (*(v101 + 16))(&v37[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier], v48, v102);
  *&v114 = sub_224DA98E8();
  sub_224A3F6A4();
  v51 = sub_224DAEF18();
  v53 = sub_224A3D19C(8, v51, v52);
  v55 = v54;
  v57 = v56;
  v59 = v58;

  v60 = MEMORY[0x22AA5D1C0](v53, v55, v57, v59);
  v62 = v61;
  v63 = v100;

  v64 = &v37[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
  *v64 = v60;
  v64[1] = v62;
  v37[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_allowCostOverride] = 1;
  v113.receiver = v37;
  v113.super_class = v96;
  v65 = objc_msgSendSuper2(&v113, sel_init);
  v66 = v98;

  (*(v49 + 8))(v111, v50);
  sub_224A3D238(v110, v99);
  sub_224A3D238(v95, type metadata accessor for ExtensionTask.Identifier);
  v67 = swift_allocObject();
  *(v67 + 16) = 0;
  v69 = v104;
  v68 = v105;
  v70 = v106;
  (*(v105 + 104))(v104, *MEMORY[0x277CE3D68], v106);
  v71 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_requiredDataProtectionLevel;
  swift_beginAccess();
  (*(v68 + 40))(&v65[v71], v69, v70);
  swift_endAccess();
  sub_224A3317C(v63, &v114);
  v72 = swift_allocObject();
  v73 = v107;
  v74 = v108;
  *(v72 + 2) = v66;
  *(v72 + 3) = v73;
  *(v72 + 4) = v74;
  *(v72 + 5) = v67;
  v75 = v103;
  *(v72 + 6) = v103;
  sub_224A36F98(&v114, v72 + 56);
  v76 = &v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
  v77 = *&v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
  v78 = *&v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem + 8];
  *v76 = sub_224A4E848;
  v76[1] = v72;
  v79 = v66;

  v80 = v75;
  sub_224A3D418(v77, v78);
  sub_224A3317C(v63, &v114);
  v81 = swift_allocObject();
  *(v81 + 16) = v80;
  *(v81 + 24) = v79;
  sub_224A36F98(&v114, v81 + 32);
  *(v81 + 72) = v73;
  *(v81 + 80) = v74;
  *(v81 + 88) = v109;
  *(v81 + 96) = v112;
  *(v81 + 104) = v67;
  v82 = &v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
  v83 = *&v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
  v84 = *&v65[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion + 8];
  *v82 = sub_224A50220;
  v82[1] = v81;
  v112 = v79;

  v85 = v80;
  sub_224A3D418(v83, v84);
  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v86 = sub_224DAB258();
  __swift_project_value_buffer(v86, qword_281365168);
  sub_224A3317C(v63, &v114);
  v87 = sub_224DAB228();
  v88 = sub_224DAF2A8();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *v89 = 138543362;
    __swift_project_boxed_opaque_existential_1(&v114, v115);
    v91 = sub_224DAE338();
    __swift_destroy_boxed_opaque_existential_1(&v114);
    *(v89 + 4) = v91;
    *v90 = v91;
    _os_log_impl(&dword_224A2F000, v87, v88, "[%{public}@] scheduling query", v89, 0xCu);
    sub_224A3311C(v90, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v90, -1, -1);
    MEMORY[0x22AA5EED0](v89, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v114);
  }

  v92 = *&v85[OBJC_IVAR____TtC10ChronoCore17DescriptorService_taskService + 24];
  v93 = *&v85[OBJC_IVAR____TtC10ChronoCore17DescriptorService_taskService + 32];
  __swift_project_boxed_opaque_existential_1(&v85[OBJC_IVAR____TtC10ChronoCore17DescriptorService_taskService], v92);
  (*(v93 + 16))(v65, v92, v93);
}

uint64_t sub_224A3F4BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A3F4F4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_224A3F54C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_224A3F5C4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224A3F63C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_224A3F6A4()
{
  result = qword_281350BE0;
  if (!qword_281350BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350BE0);
  }

  return result;
}

uint64_t sub_224A3F71C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v145 = a7;
  v163 = a6;
  v164 = a5;
  v162 = a4;
  v161 = a3;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v144 = *(v146 - 8);
  MEMORY[0x28223BE20](v146, v9);
  v143 = &v141 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v153 = &v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v156 = &v141 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v157 = &v141 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v149 = &v141 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v150 = &v141 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v160 = &v141 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v159 = &v141 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v36 = &v141 - v35;
  MEMORY[0x28223BE20](v34, v37);
  v39 = &v141 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v41 = *(v40 - 8);
  v43 = MEMORY[0x28223BE20](v40, v42);
  v147 = &v141 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v43, v45);
  v154 = &v141 - v47;
  v49 = MEMORY[0x28223BE20](v46, v48);
  v151 = &v141 - v50;
  v52 = MEMORY[0x28223BE20](v49, v51);
  v148 = &v141 - v53;
  v55 = MEMORY[0x28223BE20](v52, v54);
  v155 = &v141 - v56;
  v58 = MEMORY[0x28223BE20](v55, v57);
  v152 = &v141 - v59;
  v61 = MEMORY[0x28223BE20](v58, v60);
  v158 = &v141 - v62;
  v64 = MEMORY[0x28223BE20](v61, v63);
  v66 = &v141 - v65;
  MEMORY[0x28223BE20](v64, v67);
  v69 = &v141 - v68;
  swift_beginAccess();
  v70 = v40;

  v165 = sub_224A42C84(v71);
  v166 = a2;
  sub_224A3796C(a2, v39, &unk_27D6F5060, &qword_224DB5620);
  v72 = *(v41 + 48);
  v168 = v41 + 48;
  v167 = v72;
  if (v72(v39, 1, v40) == 1)
  {
    v73 = a1;
    sub_224A3311C(v39, &unk_27D6F5060, &qword_224DB5620);
    v74 = v162;
  }

  else
  {
    (*(v41 + 32))(v69, v39, v40);
    v75 = v41;
    v76 = v40;
    v77 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithVisibleScenes;
    swift_beginAccess();
    v73 = a1;
    v78 = *(a1 + v77);

    LOBYTE(v77) = sub_224A33924(v69, v78);

    if (v77)
    {

      result = (*(v75 + 8))(v69, v76);
      v80 = 1;
      v74 = v162;
      v81 = v161;
      v82 = v163;
      v70 = v76;
      v41 = v75;
LABEL_45:
      *v81 = v80;
      *(v81 + 8) = 0;
      *v74 = 1;
LABEL_46:
      if ((*(v81 + 8) & 1) != 0 || *v81 != 1)
      {
        goto LABEL_52;
      }

      goto LABEL_48;
    }

    (*(v75 + 8))(v69, v76);
    v74 = v162;
    v70 = v76;
    v41 = v75;
  }

  sub_224A3796C(v166, v36, &unk_27D6F5060, &qword_224DB5620);
  v83 = v167(v36, 1, v70);
  v81 = v161;
  v84 = v160;
  if (v83 == 1)
  {
    sub_224A3311C(v36, &unk_27D6F5060, &qword_224DB5620);
  }

  else
  {
    (*(v41 + 32))(v66, v36, v70);
    if (sub_224A33924(v66, v165))
    {

      result = (*(v41 + 8))(v66, v70);
      v80 = 1;
      a1 = v73;
LABEL_44:
      v82 = v163;
      goto LABEL_45;
    }

    (*(v41 + 8))(v66, v70);
  }

  a1 = v73;
  v85 = v159;
  sub_224A3796C(v164, v159, &unk_27D6F5060, &qword_224DB5620);
  v86 = v167(v85, 1, v70);
  v82 = v163;
  v87 = v158;
  if (v86 == 1)
  {
    sub_224A3311C(v85, &unk_27D6F5060, &qword_224DB5620);
    v88 = v155;
  }

  else
  {
    (*(v41 + 32))(v158, v85, v70);
    v89 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithVisibleScenes;
    swift_beginAccess();
    v90 = *(a1 + v89);

    v91 = sub_224A33924(v87, v90);

    if (v91)
    {
      goto LABEL_20;
    }

    (*(v41 + 8))(v87, v70);
    v88 = v155;
    v84 = v160;
  }

  sub_224A3796C(v164, v84, &unk_27D6F5060, &qword_224DB5620);
  if (v167(v84, 1, v70) != 1)
  {
    v87 = v152;
    (*(v41 + 32))(v152, v84, v70);
    if ((sub_224A33924(v87, v165) & 1) == 0)
    {
      (*(v41 + 8))(v87, v70);
      if (v82)
      {
        goto LABEL_17;
      }

LABEL_22:

      goto LABEL_23;
    }

LABEL_20:

    result = (*(v41 + 8))(v87, v70);
    v80 = 1;
    goto LABEL_45;
  }

  sub_224A3311C(v84, &unk_27D6F5060, &qword_224DB5620);
  if (!v82)
  {
    goto LABEL_22;
  }

LABEL_17:
  v92 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithVisibleScenes;
  swift_beginAccess();
  v93 = *(a1 + v92);

  v94 = *(sub_224A42EF0(v82, v93) + 2);

  if (v94)
  {

    v80 = 1;
    goto LABEL_45;
  }

  v96 = *(sub_224A42EF0(v82, v165) + 2);

  if (v96)
  {
    v80 = 1;
    goto LABEL_45;
  }

  swift_beginAccess();

  v110 = sub_224A44EB4(v109, v82);

  v111 = *(v110 + 16);
  v88 = v155;

  if (v111)
  {
    v80 = 2;
    goto LABEL_45;
  }

LABEL_23:
  v95 = v150;
  sub_224A3796C(v166, v150, &unk_27D6F5060, &qword_224DB5620);
  if (v167(v95, 1, v70) == 1)
  {
    sub_224A3311C(v95, &unk_27D6F5060, &qword_224DB5620);
  }

  else
  {
    (*(v41 + 32))(v88, v95, v70);
    v97 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithSessionExemptions;
    swift_beginAccess();
    if (*(*(a1 + v97) + 16))
    {

      sub_224A89A08(v88);
      v99 = v98;

      if (v99)
      {
        result = (*(v41 + 8))(v88, v70);
        v80 = 2;
        goto LABEL_45;
      }
    }

    (*(v41 + 8))(v88, v70);
  }

  v100 = v149;
  sub_224A3796C(v166, v149, &unk_27D6F5060, &qword_224DB5620);
  v101 = v167(v100, 1, v70);
  v142 = v70;
  v141 = v41;
  if (v101 == 1)
  {
    sub_224A3311C(v100, &unk_27D6F5060, &qword_224DB5620);
    goto LABEL_42;
  }

  (*(v41 + 32))(v148, v100, v70);
  v102 = sub_224DA9FE8();
  v104 = v103;
  v105 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersToPIDs;
  swift_beginAccess();
  if (*(*(a1 + v105) + 16))
  {
    v106 = v41;

    sub_224A3A40C(v102, v104);
    v108 = v107;

    if (v108)
    {

      v41 = v106;
      if (BSPIDIsBeingDebugged())
      {
        v70 = v142;
        result = (*(v106 + 8))(v148, v142);
        v80 = 4;
        goto LABEL_44;
      }
    }

    else
    {

      v41 = v106;
    }
  }

  else
  {
  }

  (*(v41 + 8))(v148, v142);
LABEL_42:
  sub_224A3317C(a1 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__keepAliveAssertionProvider, &v169);
  v112 = v170;
  v113 = v171;
  __swift_project_boxed_opaque_existential_1(&v169, v170);
  v114 = v143;
  sub_224DAF528();
  LOBYTE(v112) = (*(v113 + 16))(v114, v112, v113);
  (*(v144 + 8))(v114, v146);
  result = __swift_destroy_boxed_opaque_existential_1(&v169);
  if (v112)
  {
    v80 = 8;
    v70 = v142;
    v41 = v141;
    goto LABEL_44;
  }

  v70 = v142;
  v41 = v141;
  v82 = v163;
  if (*v74)
  {
    goto LABEL_46;
  }

LABEL_48:
  v115 = v157;
  sub_224A3796C(v166, v157, &unk_27D6F5060, &qword_224DB5620);
  if (v167(v115, 1, v70) == 1)
  {
    result = sub_224A3311C(v157, &unk_27D6F5060, &qword_224DB5620);
  }

  else
  {
    v116 = v151;
    (*(v41 + 32))(v151, v157, v70);
    v117 = [objc_allocWithZone(MEMORY[0x277D23B10]) init];
    sub_224DA9FE8();
    v118 = sub_224DAEDE8();
    v165 = a1;
    v119 = v74;
    v120 = v82;
    v121 = v41;
    v122 = v70;
    v123 = v118;

    sub_224DA9E78();
    sub_224DA9E68();
    sub_224DA9DA8();
    v125 = v124;

    v126 = [v117 queryAppIntentActivityForBundleIdentifier:v123 sinceSeconds:v125];

    v70 = v122;
    v41 = v121;
    v82 = v120;
    v74 = v119;
    a1 = v165;
    result = (*(v41 + 8))(v116, v70);
    if (v126)
    {
      v127 = 32;
LABEL_62:
      *v81 = v127;
      *(v81 + 8) = 0;
      *v74 = 1;
      return result;
    }
  }

LABEL_52:
  if (*v74)
  {
    return result;
  }

  v128 = v156;
  sub_224A3796C(v166, v156, &unk_27D6F5060, &qword_224DB5620);
  if (v167(v128, 1, v70) == 1)
  {
    sub_224A3311C(v128, &unk_27D6F5060, &qword_224DB5620);
  }

  else
  {
    v129 = v74;
    v130 = v82;
    v131 = v154;
    (*(v41 + 32))(v154, v128, v70);
    v132 = *(a1 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_sceneBackedActivityBundleIdentifiers);

    v133 = sub_224A33924(v131, v132);

    v134 = v131;
    v82 = v130;
    v74 = v129;
    result = (*(v41 + 8))(v134, v70);
    if (v133)
    {
LABEL_61:
      v127 = 16;
      goto LABEL_62;
    }
  }

  if (v82)
  {
    v135 = *(a1 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_sceneBackedActivityBundleIdentifiers);

    v136 = *(sub_224A42EF0(v82, v135) + 2);

    if (v136)
    {
      goto LABEL_61;
    }
  }

  v137 = v153;
  sub_224A3796C(v164, v153, &unk_27D6F5060, &qword_224DB5620);
  if (v167(v137, 1, v70) == 1)
  {
    return sub_224A3311C(v137, &unk_27D6F5060, &qword_224DB5620);
  }

  v138 = v147;
  (*(v41 + 32))(v147, v137, v70);
  v139 = *(a1 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_sceneBackedActivityBundleIdentifiers);

  v140 = sub_224A33924(v138, v139);

  result = (*(v41 + 8))(v138, v70);
  if (v140)
  {
    goto LABEL_61;
  }

  return result;
}

uint64_t sub_224A40890(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v22 = a3;
  v6 = sub_224DAB7B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_224DAB848();
  v11 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277D85000];
  os_unfair_lock_assert_owner(*(*(v4 + *((*MEMORY[0x277D85000] & *v4) + 0x88)) + 16));
  v16 = sub_224A3D428(a1);
  v23 = *(v4 + *((*v15 & *v4) + 0xC0));
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a1;
  aBlock[4] = v22;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = v24;
  v18 = _Block_copy(aBlock);
  v19 = a1;
  sub_224DAB7E8();
  v26 = MEMORY[0x277D84F90];
  sub_224A43A04(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v14, v10, v18);
  _Block_release(v18);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v25);
}

uint64_t sub_224A40BAC(char *a1)
{
  v3 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x88));
  os_unfair_lock_assert_not_owner(*(v3 + 16));
  os_unfair_lock_lock(*(v3 + 16));
  sub_224A431A0(v1, a1, &v5);
  os_unfair_lock_unlock(*(v3 + 16));
  return v5;
}

uint64_t sub_224A40C80()
{
  v1 = sub_224DABCC8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v7 = *(v6 - 8);
  v78 = v6;
  v79 = v7;
  MEMORY[0x28223BE20](v6, v8);
  v10 = v72 - v9;
  v11 = sub_224DABE18();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v75 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v18 = v72 - v17;
  v19 = type metadata accessor for ExtensionTask.Identifier(0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = (v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_224A415FC(v0, v22, type metadata accessor for ExtensionTask.Identifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v27 = *v22;
      if (EnumCaseMultiPayload)
      {
      }

      v81 = sub_224CF8254();
      v82 = v37;
      MEMORY[0x22AA5D210](60, 0xE100000000000000);
      v29 = [v27 description];
      goto LABEL_16;
    }

LABEL_7:
    v27 = *v22;
    v81 = sub_224CF8254();
    v82 = v28;
    MEMORY[0x22AA5D210](60, 0xE100000000000000);
    v29 = [v27 description];
LABEL_16:
    v40 = v29;
    v41 = sub_224DAEE18();
    v43 = v42;

    MEMORY[0x22AA5D210](v41, v43);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        (*(v12 + 32))(v18, v22, v11);
        v81 = sub_224CF8254();
        v82 = v24;
        MEMORY[0x22AA5D210](60, 0xE100000000000000);
        v25 = sub_224DABD98();
        MEMORY[0x22AA5D210](v25);

        MEMORY[0x22AA5D210](62, 0xE100000000000000);
        v26 = v81;
        (*(v12 + 8))(v18, v11);
      }

      else
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);

        v46 = *(v22 + *(v45 + 64));
        v74 = v12;
        (*(v12 + 32))(v75, v22, v11);
        v81 = sub_224CF8254();
        v82 = v47;
        MEMORY[0x22AA5D210](60, 0xE100000000000000);
        v48 = *(v46 + 16);
        if (v48)
        {
          v73 = v11;
          v80 = MEMORY[0x277D84F90];
          sub_224A3DFD8(0, v48, 0);
          v49 = v80;
          v50 = *(v79 + 16);
          v51 = *(v79 + 80);
          v72[1] = v46;
          v52 = v46 + ((v51 + 32) & ~v51);
          v76 = *(v79 + 72);
          v77 = v50;
          v79 += 16;
          v53 = (v79 - 8);
          do
          {
            v54 = v78;
            v77(v10, v52, v78);
            v55 = sub_224DAA1C8();
            v57 = v56;
            (*v53)(v10, v54);
            v80 = v49;
            v59 = *(v49 + 16);
            v58 = *(v49 + 24);
            if (v59 >= v58 >> 1)
            {
              sub_224A3DFD8((v58 > 1), v59 + 1, 1);
              v49 = v80;
            }

            *(v49 + 16) = v59 + 1;
            v60 = v49 + 16 * v59;
            *(v60 + 32) = v55;
            *(v60 + 40) = v57;
            v52 += v76;
            --v48;
          }

          while (v48);

          v11 = v73;
        }

        else
        {

          v49 = MEMORY[0x277D84F90];
        }

        v80 = v49;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
        sub_224A6B84C();
        v67 = sub_224DAEDA8();
        v69 = v68;

        MEMORY[0x22AA5D210](v67, v69);

        MEMORY[0x22AA5D210](14906, 0xE200000000000000);
        v70 = v75;
        v71 = sub_224DABD98();
        MEMORY[0x22AA5D210](v71);

        MEMORY[0x22AA5D210](62, 0xE100000000000000);
        v26 = v81;
        (*(v74 + 8))(v70, v11);
      }

      return v26;
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 8)
  {
    if (EnumCaseMultiPayload != 9)
    {
      v61 = *v22;
      v81 = sub_224CF8254();
      v82 = v62;
      MEMORY[0x22AA5D210](60, 0xE100000000000000);
      v63 = [v61 description];
      v64 = sub_224DAEE18();
      v66 = v65;

      MEMORY[0x22AA5D210](v64, v66);

      return v81;
    }

    v27 = *v22;
    v30 = v22[1];
    v31 = v22[2];
    v81 = sub_224CF8254();
    v82 = v32;
    MEMORY[0x22AA5D210](60, 0xE100000000000000);
    v33 = [v27 description];
    v34 = sub_224DAEE18();
    v36 = v35;

    MEMORY[0x22AA5D210](v34, v36);

    MEMORY[0x22AA5D210](14906, 0xE200000000000000);
    MEMORY[0x22AA5D210](v30, v31);
LABEL_17:

    MEMORY[0x22AA5D210](62, 0xE100000000000000);

    return v81;
  }

  (*(v2 + 32))(v5, v22, v1);
  v81 = sub_224CF8254();
  v82 = v38;
  MEMORY[0x22AA5D210](60, 0xE100000000000000);
  v39 = sub_224DABC88();
  MEMORY[0x22AA5D210](v39);

  MEMORY[0x22AA5D210](62, 0xE100000000000000);
  v26 = v81;
  (*(v2 + 8))(v5, v1);
  return v26;
}

uint64_t sub_224A414C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224A4152C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224A41594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224A415FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224A41664(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a2;
  v70 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v79 = (v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = v65 - v13;
  v16 = MEMORY[0x28223BE20](v12, v15);
  v80 = (v65 - v17);
  result = MEMORY[0x28223BE20](v16, v18);
  v69 = v65 - v20;
  v21 = *(a3 + 16);
  v22 = *(a4 + 16);
  v81 = v7 + 16;
  v77 = a4;
  v78 = a3;
  v73 = v7;
  if (v22 >= v21)
  {
    v46 = 0;
    v47 = *(a3 + 56);
    v68 = a3 + 56;
    v48 = 1 << *(a3 + 32);
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    else
    {
      v49 = -1;
    }

    v50 = v49 & v47;
    v51 = (v48 + 63) >> 6;
    v76 = a4 + 56;
    v80 = (v7 + 8);
    j = v51;
    v72 = 0;
    if (v50)
    {
      goto LABEL_30;
    }

LABEL_31:
    v53 = v46;
    while (1)
    {
      v46 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (v46 >= v51)
      {
LABEL_44:

        return sub_224A41D48(v70, v66, v72, a3);
      }

      v54 = *(v68 + 8 * v46);
      ++v53;
      if (v54)
      {
        v52 = __clz(__rbit64(v54));
        for (i = ((v54 - 1) & v54); ; i = ((v50 - 1) & v50))
        {
          v55 = v52 | (v46 << 6);
          v56 = *(a3 + 48);
          v57 = *(v7 + 72);
          v74 = v55;
          v58 = *(v7 + 16);
          v58(v79, v56 + v57 * v55, v6);
          sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA8]);
          v59 = sub_224DAED88();
          v60 = -1 << *(a4 + 32);
          v61 = v59 & ~v60;
          if ((*(v76 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61))
          {
            v69 = (v80 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v62 = ~v60;
            while (1)
            {
              v58(v14, *(v77 + 48) + v61 * v57, v6);
              sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FB0]);
              v63 = sub_224DAEDD8();
              v64 = *v80;
              (*v80)(v14, v6);
              if (v63)
              {
                break;
              }

              v61 = (v61 + 1) & v62;
              if (((*(v76 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
              {
                a4 = v77;
                goto LABEL_42;
              }
            }

            result = (v64)(v79, v6);
            v7 = v73;
            *(v70 + ((v74 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v74;
            v51 = j;
            v31 = __OFADD__(v72++, 1);
            a4 = v77;
            a3 = v78;
            v50 = i;
            if (v31)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v64 = *v80;
LABEL_42:
            result = (v64)(v79, v6);
            a3 = v78;
            v7 = v73;
            v51 = j;
            v50 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v52 = __clz(__rbit64(v50));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v72 = 0;
    v23 = a4;
    v24 = 0;
    v26 = v23 + 56;
    v25 = *(v23 + 56);
    v65[0] = v26;
    v27 = 1 << *(v26 - 24);
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v28 & v25;
    v30 = (v27 + 63) >> 6;
    v67 = v7 + 32;
    v68 = v30;
    v74 = a3 + 56;
    v79 = (v7 + 8);
    if (v29)
    {
      goto LABEL_9;
    }

LABEL_10:
    v33 = v24;
    while (1)
    {
      v24 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v24 >= v30)
      {
        goto LABEL_44;
      }

      v34 = *(v65[0] + 8 * v24);
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        for (j = (v34 - 1) & v34; ; j = (v29 - 1) & v29)
        {
          v35 = *(v7 + 72);
          v36 = *(v77 + 48) + v35 * (v32 | (v24 << 6));
          v37 = v69;
          i = *(v7 + 16);
          v76 = v35;
          i(v69, v36, v6);
          (*(v7 + 32))(v80, v37, v6);
          sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA8]);
          v38 = sub_224DAED88();
          v39 = -1 << *(a3 + 32);
          v40 = v38 & ~v39;
          v41 = v40 >> 6;
          v42 = 1 << v40;
          if (((1 << v40) & *(v74 + 8 * (v40 >> 6))) != 0)
          {
            v65[1] = v79 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v43 = ~v39;
            while (1)
            {
              i(v14, *(v78 + 48) + v40 * v76, v6);
              sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FB0]);
              v44 = sub_224DAEDD8();
              v45 = *v79;
              (*v79)(v14, v6);
              if (v44)
              {
                break;
              }

              v40 = (v40 + 1) & v43;
              v41 = v40 >> 6;
              v42 = 1 << v40;
              if (((1 << v40) & *(v74 + 8 * (v40 >> 6))) == 0)
              {
                a3 = v78;
                goto LABEL_21;
              }
            }

            result = (v45)(v80, v6);
            v29 = j;
            v70[v41] |= v42;
            v7 = v73;
            v31 = __OFADD__(v72++, 1);
            a3 = v78;
            v30 = v68;
            if (v31)
            {
              goto LABEL_48;
            }

            if (!v29)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v45 = *v79;
LABEL_21:
            result = (v45)(v80, v6);
            v7 = v73;
            v30 = v68;
            v29 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v32 = __clz(__rbit64(v29));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_224A41D48(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v8 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v9);
  v35 = &v29 - v10;
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3708, &qword_224DB3CE0);
  result = sub_224DAF918();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v8 + 32);
  v32 = v8 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v8 + 72);
    (*(v8 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), v36);
    sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA8]);
    result = sub_224DAED88();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, v36);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_224A42074(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v44 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v52 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v60 = &v41 - v12;
  MEMORY[0x28223BE20](v11, v13);
  v50 = &v41 - v15;
  v16 = a3 + 64;
  v17 = 1 << *(a3 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(a3 + 64);
  v20 = (v17 + 63) >> 6;
  v57 = v14 + 16;
  v58 = a4;
  v49 = v14 + 32;
  v54 = a4 + 56;
  v51 = v14;
  v59 = (v14 + 8);

  v43 = 0;
  v22 = 0;
  v47 = v20;
  v48 = a3 + 64;
  v45 = a3;
  while (v19)
  {
LABEL_12:
    v25 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v27 = v50;
    v26 = v51;
    v28 = *(v51 + 72);
    v29 = *(a3 + 48) + v28 * (v25 | (v22 << 6));
    v55 = *(v51 + 16);
    v56 = v28;
    v55(v50, v29, v6);
    (*(v26 + 32))(v60, v27, v6);
    v30 = v58;
    sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA8]);
    v31 = sub_224DAED88();
    v32 = -1 << *(v30 + 32);
    v33 = v31 & ~v32;
    v34 = v33 >> 6;
    v35 = 1 << v33;
    if (((1 << v33) & *(v54 + 8 * (v33 >> 6))) != 0)
    {
      v46 = v59 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v53 = ~v32;
      while (1)
      {
        v36 = v52;
        v55(v52, *(v58 + 48) + v33 * v56, v6);
        sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FB0]);
        v37 = sub_224DAEDD8();
        v23 = *v59;
        (*v59)(v36, v6);
        if (v37)
        {
          break;
        }

        v33 = (v33 + 1) & v53;
        v34 = v33 >> 6;
        v35 = 1 << v33;
        if (((1 << v33) & *(v54 + 8 * (v33 >> 6))) == 0)
        {
          a3 = v45;
          goto LABEL_6;
        }
      }

      result = (v23)(v60, v6);
      a3 = v45;
      v38 = v44[v34];
      v44[v34] = v38 | v35;
      v20 = v47;
      v16 = v48;
      if ((v38 & v35) == 0 && __OFADD__(v43++, 1))
      {
        __break(1u);
LABEL_21:

        v40 = v58;

        return sub_224A41D48(v44, v42, v43, v40);
      }
    }

    else
    {
      v23 = *v59;
LABEL_6:
      v20 = v47;
      result = (v23)(v60, v6);
      v16 = v48;
    }
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v20)
    {
      goto LABEL_21;
    }

    v19 = *(v16 + 8 * v24);
    ++v22;
    if (v19)
    {
      v22 = v24;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224A42478(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224A424D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224A42538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_224A42660(char *a1, uint64_t a2)
{
  v5 = sub_224DACE38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v41 - v17;
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v41 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v41 - v24;
  if (([a1 isRemote] & 1) == 0)
  {
    v42 = v6;
    v43 = v14;
    v44 = v18;
    v45 = v2;
    v46 = a2;
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__extensionManager), *(v2 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__extensionManager + 24));
    sub_224DAC6D8();
    v26 = *MEMORY[0x277CFA130];
    swift_beginAccess();
    v47 = a1;
    sub_224A3796C(&a1[v26], v22, &unk_27D6F5060, &qword_224DB5620);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    v28 = *(v27 - 8);
    v29 = *(v28 + 48);
    if ((v29)(v22, 1, v27) == 1)
    {
      sub_224A3796C(v51, v49, &unk_27D6F4700, &unk_224DB3A10);
      if (v50)
      {
        v41 = v5;
        __swift_project_boxed_opaque_existential_1(v49, v50);
        v5 = v41;
        v30 = sub_224DAE338();
        v31 = *MEMORY[0x277CFA130];
        swift_beginAccess();
        sub_224A3796C(v30 + v31, v25, &unk_27D6F5060, &qword_224DB5620);

        __swift_destroy_boxed_opaque_existential_1(v49);
      }

      else
      {
        sub_224A3311C(v49, &unk_27D6F4700, &unk_224DB3A10);
        (*(v28 + 56))(v25, 1, 1, v27);
      }

      if ((v29)(v22, 1, v27) != 1)
      {
        sub_224A3311C(v22, &unk_27D6F5060, &qword_224DB5620);
      }
    }

    else
    {
      (*(v28 + 32))(v25, v22, v27);
      (*(v28 + 56))(v25, 0, 1, v27);
    }

    if (!v52)
    {
      v33 = 0;
LABEL_13:
      v48 = 0;
      sub_224A3796C(v51, v49, &unk_27D6F4700, &unk_224DB3A10);
      if (v50)
      {
        __swift_project_boxed_opaque_existential_1(v49, v50);
        sub_224DAE228();
        v35 = v34;
        __swift_destroy_boxed_opaque_existential_1(v49);
        if (v35)
        {
          v36 = v43;
          sub_224DA9FF8();
          v37 = 0;
LABEL_18:
          (*(v28 + 56))(v36, v37, 1, v27);
          v38 = v44;
          sub_224A44E4C(v36, v44, &unk_27D6F5060, &qword_224DB5620);
          v39 = v45;
          v40 = *(v45 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
          os_unfair_lock_lock(*(v40 + 16));
          sub_224A3F71C(v39, v25, v46, &v48, v38, v33, v47);

          os_unfair_lock_unlock(*(v40 + 16));
          sub_224A3311C(v38, &unk_27D6F5060, &qword_224DB5620);
          sub_224A3311C(v25, &unk_27D6F5060, &qword_224DB5620);
          sub_224A3311C(v51, &unk_27D6F4700, &unk_224DB3A10);
          return;
        }
      }

      else
      {
        sub_224A3311C(v49, &unk_27D6F4700, &unk_224DB3A10);
      }

      v37 = 1;
      v36 = v43;
      goto LABEL_18;
    }

    sub_224A3796C(v51, v49, &unk_27D6F4700, &unk_224DB3A10);
    if (v50)
    {
      __swift_project_boxed_opaque_existential_1(v49, v50);
      sub_224DAE388();
      v32 = sub_224DACDE8();
      (*(v42 + 8))(v9, v5);
      v33 = sub_224A40C50(v32);

      __swift_destroy_boxed_opaque_existential_1(v49);
      goto LABEL_13;
    }

    __break(1u);

    os_unfair_lock_unlock(*(v29 + 16));
    __break(1u);
  }
}

uint64_t sub_224A42C84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = v26 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = v26 - v13;
  v15 = *(a1 + 16);
  v16 = sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA8]);
  result = MEMORY[0x22AA5D540](v15, v2, v16);
  v18 = 0;
  v27 = a1;
  v28 = result;
  v19 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a1 + 64);
  v23 = (v20 + 63) >> 6;
  v26[2] = v3 + 32;
  v26[3] = v3 + 16;
  for (v26[1] = v3 + 8; v22; result = (*(v3 + 8))(v11, v2))
  {
    v24 = v18;
LABEL_9:
    v25 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    (*(v3 + 16))(v14, *(v27 + 48) + *(v3 + 72) * (v25 | (v24 << 6)), v2);
    (*(v3 + 32))(v7, v14, v2);
    sub_224A3A634(v11, v7);
  }

  while (1)
  {
    v24 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return v28;
    }

    v22 = *(v19 + 8 * v24);
    ++v18;
    if (v22)
    {
      v18 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_224A42EF0(uint64_t a1, uint64_t a2)
{

  return sub_224CF71F8(a1, a2, sub_224A41664, sub_224A41664);
}

id sub_224A42F60(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (*(v3 + 16))
  {

    v4 = sub_224B0B830(a1);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);

      v7 = [v6 isValid];

      return v7;
    }
  }

  return 0;
}

unint64_t sub_224A43000(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_224A439BC(v24, v25, v26);
      v20 = sub_224DAEDD8();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t sub_224A431A0@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v46 = a3;
  v5 = MEMORY[0x277D85000];
  v6 = *a1;
  v7 = *MEMORY[0x277D85000];
  v45 = *MEMORY[0x277D85000] & *a1;
  v8 = sub_224DA9908();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v43 = v11;
  v44 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier;
  v13 = *((v7 & v6) + 0x90);
  swift_beginAccess();
  v14 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = *(a1 + v13);
  *(a1 + v13) = 0x8000000000000000;
  sub_224A436D0(v14, &a2[v12], isUniquelyReferenced_nonNull_native);
  *(a1 + v13) = v48;
  swift_endAccess();
  if (qword_2813516B8 != -1)
  {
    swift_once();
  }

  v16 = sub_224DAB258();
  __swift_project_value_buffer(v16, qword_281365108);
  v17 = v14;
  v18 = sub_224DAB228();
  v19 = sub_224DAF2A8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v41 = v12;
    v21 = v20;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v42 = a2;
    v24 = v23;
    v47[0] = v23;
    *v21 = 136446466;
    *(v21 + 4) = sub_224A33F74(*&v17[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest], *&v17[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest + 8], v47);
    *(v21 + 12) = 2114;
    *(v21 + 14) = v17;
    *v22 = v17;
    v25 = v17;
    _os_log_impl(&dword_224A2F000, v18, v19, "[%{public}s]: task submitted %{public}@", v21, 0x16u);
    sub_224A3311C(v22, &unk_27D6F69F0, &unk_224DB3900);
    v26 = v22;
    v5 = MEMORY[0x277D85000];
    MEMORY[0x22AA5EED0](v26, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v27 = v24;
    a2 = v42;
    MEMORY[0x22AA5EED0](v27, -1, -1);
    v28 = v21;
    v12 = v41;
    MEMORY[0x22AA5EED0](v28, -1, -1);
  }

  v29 = sub_224A43B94(v17);
  v42 = v29;
  v30 = (a1 + *((*v5 & *a1) + 0xA8));
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  sub_224A45384(v29);
  v31 = *&v17[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest + 8];
  v41 = *&v17[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = &a2[v12];
  v34 = v44;
  (*(v9 + 16))(v44, v33, v8);
  v35 = v8;
  v36 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v37 = swift_allocObject();
  v38 = v45;
  *(v37 + 2) = *(v45 + 80);
  *(v37 + 3) = *(v38 + 88);
  *(v37 + 4) = v32;
  (*(v9 + 32))(&v37[v36], v34, v35);

  sub_224A47CA8(v17);

  v40 = v46;
  *v46 = v41;
  v40[1] = v31;
  v40[2] = sub_224A8A868;
  v40[3] = v37;
  return result;
}

uint64_t sub_224A435D4()
{
  MEMORY[0x22AA5EFB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A4360C()
{
  v1 = sub_224DA9908();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_224A436E4(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a4;
  v29 = a5;
  v6 = v5;
  v10 = sub_224DA9908();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_224A438E8(a2);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      sub_224B2832C(MEMORY[0x277CC95F0], v28, v29);
      goto LABEL_7;
    }

    sub_224B14750(v20, a3 & 1, v28, v29);
    v26 = sub_224A438E8(a2);
    if ((v21 & 1) == (v27 & 1))
    {
      v17 = v26;
      v23 = *v6;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v14, a2, v10);
      sub_224A43AD8(v17, v14, a1, v23, MEMORY[0x277CC95F0]);
      return;
    }

LABEL_15:
    sub_224DAFDD8();
    __break(1u);
    return;
  }

LABEL_7:
  v23 = *v6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7];
  v25 = *(v24 + 8 * v17);
  *(v24 + 8 * v17) = a1;
}

unint64_t sub_224A438E8(uint64_t a1)
{
  sub_224DA9908();
  v2 = MEMORY[0x277CC95F0];
  sub_224A439BC(&qword_281351A18, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_224DAED88();
  return sub_224A43000(a1, v3, MEMORY[0x277CC95F0], &qword_281351A10, v2, MEMORY[0x277CC9610]);
}

uint64_t sub_224A439BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224A43A04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224A43A4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224A43A94(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_224DA9908();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_224A43AD8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_224A43B94(char *a1)
{
  v2 = v1;
  v138 = 1701147238;
  v4 = *v1;
  v5 = *MEMORY[0x277D85000];
  v6 = sub_224DAE918();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v145 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4020, &qword_224DB5618);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v148 = &v129 - v11;
  v12 = type metadata accessor for ExtensionTask.SchedulingOption(0);
  v140 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v139 = (&v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14, v16);
  v136 = &v129 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v144 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v129 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4028, &qword_224DB5628);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v143 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v129 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4030, &unk_224DB5630);
  v34 = MEMORY[0x28223BE20](v32 - 8, v33);
  v142 = &v129 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v36);
  v38 = &v129 - v37;
  os_unfair_lock_assert_owner(*(*(v1 + *((v5 & v4) + 0x88)) + 16));
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  v40[2] = *((v5 & v4) + 0x50);
  v40[3] = *((v5 & v4) + 0x58);
  v40[4] = v39;
  v141 = v40;
  v40[5] = a1;
  v41 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
  swift_beginAccess();
  v146 = v38;
  sub_224A3796C(&a1[v41], v38, &qword_27D6F4030, &unk_224DB5630);
  v42 = a1[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_cost + 8];
  v43 = sub_224DAC928();
  v44 = *(v43 - 8);
  v45 = *(v44 + 104);
  v46 = MEMORY[0x277CF9AC0];
  if (v42)
  {
    v46 = MEMORY[0x277CF9AB8];
  }

  v45(v31, *v46, v43);
  v47 = *(v44 + 56);
  v147 = v31;
  v137 = v47;
  v47(v31, 0, 1, v43);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v49 = *(*(v48 - 8) + 56);
  v149 = v24;
  v49(v24, 1, 1, v48);
  v50 = *&a1[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_target];
  if (!v50 || (a1[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_allowCostOverride] & 1) == 0)
  {
    v62 = a1;
    v63 = v148;
    v64 = v149;
    if ((v42 & 1) == 0)
    {
LABEL_49:
      v83 = v144;
      sub_224A3796C(v64, v144, &unk_27D6F5060, &qword_224DB5620);
      v120 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
      (*(*(v120 - 8) + 56))(v63, 1, 1, v120);
      v85 = 0;
      v86 = v63;
      goto LABEL_50;
    }

    v65 = 0xE400000000000000;
    v66 = v140;
    v67 = v139;
LABEL_11:
    v68 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
    swift_beginAccess();
    v69 = *&a1[v68];
    goto LABEL_12;
  }

  v134 = v45;
  v152 = 0;
  v153 = 1;
  sub_224B44674(v2 + *((*MEMORY[0x277D85000] & *v2) + 0x68), v150);
  __swift_project_boxed_opaque_existential_1(v150, v151);
  v131 = a1;
  v51 = v50;
  sub_224A42660(v51, &v152);
  v53 = v52;
  __swift_destroy_boxed_opaque_existential_1(v150);
  if (v53)
  {
    v54 = v147;
    sub_224A3311C(v147, &qword_27D6F4028, &qword_224DB5628);
    v134(v54, *MEMORY[0x277CF9AB8], v43);
    v42 = 1;
    v137(v54, 0, 1, v43);
    v135 = 0x8000000224DC6500;
    if ((v153 & 1) == 0)
    {
      v55 = v152;
      v56 = v51;
      v57 = v146;
      sub_224A3311C(v146, &qword_27D6F4030, &unk_224DB5630);
      sub_224B401D4(v55, v57);
      v58 = sub_224DAC938();
      v59 = v57;
      v51 = v56;
      (*(*(v58 - 8) + 56))(v59, 0, 1, v58);
    }

    v60 = 0xD000000000000019;
    v61 = &v155;
  }

  else
  {
    v60 = 0xE400000000000000;
    v61 = &v154;
  }

  *(v61 - 32) = v60;
  sub_224B44674(v2 + *((*MEMORY[0x277D85000] & *v2) + 0x68), v150);
  __swift_project_boxed_opaque_existential_1(v150, v151);
  v87 = sub_224A4507C(v51);
  __swift_destroy_boxed_opaque_existential_1(v150);
  v132 = v87;
  if (v87)
  {

    v135 = 0x8000000224DC64E0;
    v130 = v51;
    v88 = v147;
    sub_224A3311C(v147, &qword_27D6F4028, &qword_224DB5628);
    v89 = v146;
    sub_224A3311C(v146, &qword_27D6F4030, &unk_224DB5630);
    v90 = *MEMORY[0x277CF9AF8];
    v91 = sub_224DAC938();
    v92 = *(v91 - 8);
    (*(v92 + 104))(v89, v90, v91);
    v93 = *(v92 + 56);
    v133 = 1;
    v93(v89, 0, 1, v91);
    v134(v88, *MEMORY[0x277CF9AB8], v43);
    v94 = v88;
    v51 = v130;
    v137(v94, 0, 1, v43);
    v138 = 0xD000000000000013;
  }

  else
  {
    v133 = v42;
  }

  v66 = v140;
  sub_224DA9E78();
  sub_224DA9E68();
  v95 = sub_224DA9E08();

  if ((v95 & 1) == 0)
  {

LABEL_35:
    v65 = v135;
    goto LABEL_36;
  }

  v96 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x70));
  __swift_project_boxed_opaque_existential_1(v96, v96[3]);
  sub_224DAC6D8();
  if (!v151)
  {

    sub_224A3311C(v150, &unk_27D6F4700, &unk_224DB3A10);
    goto LABEL_35;
  }

  __swift_project_boxed_opaque_existential_1(v150, v151);
  v97 = sub_224DAE218();
  __swift_destroy_boxed_opaque_existential_1(v150);

  v65 = v135;
  if (v97)
  {

    v135 = 0x8000000224DC64A0;
    v98 = v147;
    sub_224A3311C(v147, &qword_27D6F4028, &qword_224DB5628);
    v99 = v146;
    sub_224A3311C(v146, &qword_27D6F4030, &unk_224DB5630);
    v100 = *MEMORY[0x277CF9AD8];
    v101 = sub_224DAC938();
    v102 = *(v101 - 8);
    (*(v102 + 104))(v99, v100, v101);
    v103 = *(v102 + 56);
    v133 = 1;
    v103(v99, 0, 1, v101);
    v134(v98, *MEMORY[0x277CF9AB8], v43);
    v137(v98, 0, 1, v43);
    v104 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
    v105 = v131;
    swift_beginAccess();
    v69 = *&v105[v104];
    v138 = 0xD000000000000034;
    if (v132)
    {
      v64 = v149;
      v67 = v139;
      v65 = v135;
      v106 = v136;
      goto LABEL_38;
    }

    v64 = v149;
    v67 = v139;
    v65 = v135;
LABEL_12:

LABEL_13:
    v70 = sub_224DAE8B8();
    (*(*(v70 - 8) + 56))(v67, 4, 5, v70);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v69 = sub_224AD946C(0, v69[2] + 1, 1, v69);
    }

    v72 = v69[2];
    v71 = v69[3];
    if (v72 >= v71 >> 1)
    {
      v69 = sub_224AD946C((v71 > 1), v72 + 1, 1, v69);
    }

    v69[2] = v72 + 1;
    sub_224B442EC(v67, v69 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + v66[9] * v72);
    if (qword_2813516B8 != -1)
    {
      swift_once();
    }

    v140 = v69;
    v73 = sub_224DAB258();
    __swift_project_value_buffer(v73, qword_281365108);
    v74 = a1;

    v75 = sub_224DAB228();
    v76 = sub_224DAF2A8();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v152 = v79;
      *v77 = 136446722;
      *(v77 + 4) = sub_224A33F74(*&v74[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest], *&v74[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest + 8], &v152);
      *(v77 + 12) = 2114;
      *(v77 + 14) = v74;
      *v78 = v74;
      *(v77 + 22) = 2082;
      v80 = v74;
      v81 = sub_224A33F74(v138, v65, &v152);

      *(v77 + 24) = v81;
      _os_log_impl(&dword_224A2F000, v75, v76, "[%{public}s]: %{public}@ overridden for budget exempt reason: %{public}s", v77, 0x20u);
      sub_224A3311C(v78, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v78, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v79, -1, -1);
      MEMORY[0x22AA5EED0](v77, -1, -1);
    }

    else
    {
    }

    v82 = v148;
    goto LABEL_23;
  }

LABEL_36:
  v106 = v136;
  if ((v132 & 1) == 0)
  {
    v63 = v148;
    v64 = v149;
    v67 = v139;
    if ((v133 & 1) == 0)
    {

      goto LABEL_49;
    }

    goto LABEL_11;
  }

  v107 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
  v105 = v131;
  swift_beginAccess();
  v69 = *&v105[v107];
  v64 = v149;
  v67 = v139;
LABEL_38:
  v108 = sub_224DAE8B8();
  (*(*(v108 - 8) + 56))(v106, 5, 5, v108);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v69 = sub_224AD946C(0, v69[2] + 1, 1, v69);
  }

  v110 = v69[2];
  v109 = v69[3];
  if (v110 >= v109 >> 1)
  {
    v69 = sub_224AD946C((v109 > 1), v110 + 1, 1, v69);
  }

  v69[2] = v110 + 1;
  v111 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v140 = v69;
  sub_224B442EC(v106, v69 + v111 + v66[9] * v110);
  if (qword_2813516B8 != -1)
  {
    swift_once();
  }

  v112 = sub_224DAB258();
  __swift_project_value_buffer(v112, qword_281365108);
  v113 = v105;
  v114 = sub_224DAB228();
  v115 = sub_224DAF2A8();

  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v152 = v139;
    *v116 = 136446466;
    *(v116 + 4) = sub_224A33F74(*&v113[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest], *&v113[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest + 8], &v152);
    *(v116 + 12) = 2114;
    *(v116 + 14) = v113;
    *v117 = v113;
    v118 = v113;
    _os_log_impl(&dword_224A2F000, v114, v115, "[%{public}s]: %{public}@ debugging; overridden for immediate execution", v116, 0x16u);
    sub_224A3311C(v117, &unk_27D6F69F0, &unk_224DB3900);
    v82 = v148;
    MEMORY[0x22AA5EED0](v117, -1, -1);
    v119 = v139;
    __swift_destroy_boxed_opaque_existential_1(v139);
    MEMORY[0x22AA5EED0](v119, -1, -1);
    MEMORY[0x22AA5EED0](v116, -1, -1);

    if (v133)
    {
LABEL_46:
      v69 = v140;
      goto LABEL_13;
    }
  }

  else
  {

    v82 = v148;
    if (v133)
    {
      goto LABEL_46;
    }
  }

LABEL_23:
  v83 = v144;
  sub_224A3796C(v64, v144, &unk_27D6F5060, &qword_224DB5620);
  v84 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  (*(*(v84 - 8) + 56))(v82, 1, 1, v84);
  v85 = v140;
  v86 = v82;
LABEL_50:
  v121 = v146;
  v122 = v142;
  sub_224A3796C(v146, v142, &qword_27D6F4030, &unk_224DB5630);
  v123 = v147;
  v124 = v143;
  sub_224A3796C(v147, v143, &qword_27D6F4028, &qword_224DB5628);
  v125 = v145;
  sub_224DAE908();
  type metadata accessor for TaskActivity(0);
  swift_allocObject();
  v126 = a1;
  v127 = sub_224B6C374(v126, v83, v86, v85, sub_224A49BA0, v141, v122, v124, v125);

  sub_224A3311C(v149, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3311C(v123, &qword_27D6F4028, &qword_224DB5628);
  sub_224A3311C(v121, &qword_27D6F4030, &unk_224DB5630);
  return v127;
}

uint64_t sub_224A44E0C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224A44E4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_224A44EB4(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), v8 = v13, (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe, v8);
    v10 = &v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    v11 = sub_224A42074(v10, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_224B4871C(v15, v7, v18);
    v11 = v18[0];

    MEMORY[0x22AA5EED0](v15, -1, -1);
  }

  return v11;
}

uint64_t sub_224A4507C(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
  os_unfair_lock_lock(*(v3 + 16));
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v4 = sub_224DA9FE8();
  v6 = v5;
  swift_endAccess();
  v7 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersToPIDs;
  swift_beginAccess();
  if (*(*(v2 + v7) + 16) && (, sub_224A3A40C(v4, v6), v9 = v8, , (v9 & 1) != 0))
  {

    v10 = BSPIDIsBeingDebugged();
  }

  else
  {

    v10 = 0;
  }

  os_unfair_lock_unlock(*(v3 + 16));
  return v10;
}

uint64_t sub_224A451BC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t type metadata accessor for TaskActivity(uint64_t a1)
{
  result = qword_28135C130;
  if (!qword_28135C130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224A452A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_224A45320(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224A45384(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProvider + 24);
  v4 = *(v1 + OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProvider + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProvider), v3);
  v5 = *(v1 + OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProviderQueue);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = *(v4 + 8);

  v7(v11, a1, v5, sub_224AD3A68, v6, v3, v4);

  sub_224A3317C(v11, v10);
  type metadata accessor for TaskActivityMetadata();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = a1;
  sub_224A36F98(v10, v8 + 32);
  *(v8 + 16) = 1;

  sub_224A46028(v8);

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_224A454D4()
{
  MEMORY[0x22AA5EFB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_224A4550C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v41 = a3;
  v40 = a1;
  v39 = a5;
  sub_224A3317C(v5 + 56, v51);
  sub_224A3796C(v5 + 16, v45, &qword_27D6F4900, &unk_224DB8640);
  v8 = v46;
  if (v46)
  {
    v9 = v47;
    v10 = __swift_project_boxed_opaque_existential_1(v45, v46);
    *(&v49 + 1) = v8;
    v50 = v9[2];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v48);
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
    __swift_destroy_boxed_opaque_existential_1(v45);
  }

  else
  {
    sub_224A3311C(v45, &qword_27D6F4900, &unk_224DB8640);
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
  }

  v12 = __swift_mutable_project_boxed_opaque_existential_1(v51, v51[3]);
  v38 = &v38;
  MEMORY[0x28223BE20](v12, v12);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v17 = type metadata accessor for DuetWidgetConfigurationManager();
  v46 = v17;
  v47 = &off_2838320A0;
  v45[0] = v16;
  sub_224A3317C(v45, v44);
  sub_224A3796C(&v48, v43, &qword_27D6F5590, &qword_224DBEC00);
  result = [objc_opt_self() sharedScheduler];
  if (result)
  {
    v19 = result;
    v20 = [objc_opt_self() sharedScheduler];
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v44, v44[3]);
    MEMORY[0x28223BE20](v21, v21);
    v23 = (&v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23);
    v25 = *v23;
    v42[4] = &off_2838320A0;
    v42[3] = v17;
    v42[0] = v25;
    v26 = type metadata accessor for DuetTaskActivityContext(0);
    v27 = swift_allocObject();
    v28 = __swift_mutable_project_boxed_opaque_existential_1(v42, v17);
    MEMORY[0x28223BE20](v28, v28);
    v30 = (&v38 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v31 + 16))(v30);
    v32 = *v30;
    v33 = a4;

    v34 = a2;
    v35 = v40;

    v36 = sub_224BCAAA4(v32, v35, v34, v43, v41, v33, v19, v20, v27);
    sub_224A3311C(&v48, &qword_27D6F5590, &qword_224DBEC00);
    __swift_destroy_boxed_opaque_existential_1(v45);
    __swift_destroy_boxed_opaque_existential_1(v42);
    __swift_destroy_boxed_opaque_existential_1(v44);
    result = __swift_destroy_boxed_opaque_existential_1(v51);
    v37 = v39;
    v39[3] = v26;
    v37[4] = &off_283830D68;
    *v37 = v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t type metadata accessor for DuetTaskActivityContext(uint64_t a1)
{
  result = qword_281356A60;
  if (!qword_281356A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224A45A60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_224A45AC4(uint64_t a1)
{
  v2 = sub_224DAE918();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  LODWORD(result) = (*(v3 + 88))(v6, v2);
  if (result == *MEMORY[0x277CE3D50])
  {
    result = [objc_opt_self() complete];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  if (result == *MEMORY[0x277CE3D58])
  {
    result = [objc_opt_self() completeUnlessOpen];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  if (result != *MEMORY[0x277CE3D60])
  {
    if (result == *MEMORY[0x277CE3D68])
    {
      result = [objc_opt_self() none];
      if (result)
      {
        return result;
      }

      __break(1u);
    }

    (*(v3 + 8))(v6, v2);
  }

  result = [objc_opt_self() completeUntilFirstUserAuthentication];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

BOOL sub_224A45CAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DA9878();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F63A8, &qword_224DBFEA0);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v27 - v16;
  v18 = &v27 + *(v15 + 56) - v16;
  sub_224A415FC(a1, &v27 - v16, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  sub_224A415FC(a2, v18, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  v20 = *(*(v19 - 8) + 48);
  if (v20(v17, 1, v19) == 1)
  {
    if (v20(v18, 1, v19) == 1)
    {
      sub_224A42538(v17, type metadata accessor for ExtensionTask.SchedulingConfiguration);
      return 1;
    }

    goto LABEL_6;
  }

  sub_224A415FC(v17, v12, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  v22 = *(v19 + 48);
  v23 = *&v12[v22];
  if (v20(v18, 1, v19) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_6:
    sub_224A3311C(v17, &qword_27D6F63A8, &qword_224DBFEA0);
    return 0;
  }

  v24 = *&v18[v22];
  (*(v5 + 32))(v8, v18, v4);
  v25 = sub_224DA97E8();
  v26 = *(v5 + 8);
  v26(v8, v4);
  v26(v12, v4);
  if ((v25 & 1) == 0)
  {
    sub_224A42538(v17, type metadata accessor for ExtensionTask.SchedulingConfiguration);
    return 0;
  }

  sub_224A42538(v17, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  return v23 == v24;
}

uint64_t sub_224A46028(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DA9908();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v8, *(a1 + 24) + OBJC_IVAR____TtC10ChronoCore12TaskActivity_identifier, v4);
  *(a1 + 16) = 2;
  v9 = *&v2[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock];
  os_unfair_lock_lock(*(v9 + 16));
  sub_224A46174(v2, v8, a1);
  os_unfair_lock_unlock(*(v9 + 16));
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_224A46174(char *a1, NSObject *a2, uint64_t a3)
{
  v6 = sub_224DA9908();
  v95 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v90 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v93 = &v80 - v12;
  v89 = v13;
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v80 - v15;
  v17 = OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_activityStore;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v97 = *&a1[v17];
  *&a1[v17] = 0x8000000000000000;
  v92 = a3;
  sub_224A46934(a3, a2, isUniquelyReferenced_nonNull_native);
  *&a1[v17] = v97;
  swift_endAccess();
  if (qword_2813515F0 != -1)
  {
    swift_once();
  }

  v19 = sub_224DAB258();
  v20 = __swift_project_value_buffer(v19, qword_281364F88);
  v21 = (v95 + 16);
  v22 = *(v95 + 16);
  (v22)(v16, a2, v6);
  v88 = v20;
  v23 = sub_224DAB228();
  LODWORD(v87) = sub_224DAF2A8();
  v24 = os_log_type_enabled(v23, v87);
  v94 = a1;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v82 = v25;
    v84 = swift_slowAlloc();
    v96[0] = v84;
    *v25 = 136446210;
    v81 = v16;
    v83 = v23;
    v97 = sub_224DA98E8();
    sub_224A3F6A4();
    v26 = sub_224DAEF18();
    v28 = sub_224A3D19C(8, v26, v27);
    v85 = v22;
    v86 = v21;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v91 = v6;
    v35 = v34;

    v22 = v85;
    a1 = v94;
    v36 = MEMORY[0x22AA5D1C0](v29, v31, v33, v35);
    v38 = v37;
    v6 = v91;

    v39 = *(v95 + 8);
    (v39)(v81, v6);
    v40 = sub_224A33F74(v36, v38, v96);

    v41 = v82;
    v42 = v83;
    *(v82 + 1) = v40;
    _os_log_impl(&dword_224A2F000, v42, v87, "[%{public}s]: activity added", v41, 0xCu);
    v43 = v84;
    __swift_destroy_boxed_opaque_existential_1(v84);
    MEMORY[0x22AA5EED0](v43, -1, -1);
    MEMORY[0x22AA5EED0](v41, -1, -1);
  }

  else
  {

    v44 = v16;
    v39 = *(v95 + 8);
    (v39)(v44, v6);
  }

  if (a1[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_completedMigration] == 1)
  {
    return sub_224A46B4C(v92, a1, a2);
  }

  (v22)(v93, a2, v6);
  v46 = sub_224DAB228();
  LODWORD(v88) = sub_224DAF2A8();
  if (os_log_type_enabled(v46, v88))
  {
    v47 = swift_slowAlloc();
    v84 = v47;
    v86 = swift_slowAlloc();
    v96[0] = v86;
    *v47 = 136446210;
    v85 = v46;
    v97 = sub_224DA98E8();
    sub_224A3F6A4();
    v48 = sub_224DAEF18();
    v50 = sub_224A3D19C(8, v48, v49);
    v87 = a2;
    v91 = v6;
    v51 = v50;
    v53 = v52;
    v83 = v39;
    v55 = v54;
    v56 = v22;
    v58 = v57;

    v59 = MEMORY[0x22AA5D1C0](v51, v53, v55, v58);
    v61 = v60;
    v22 = v56;

    (v83)(v93, v91);
    v62 = sub_224A33F74(v59, v61, v96);
    v6 = v91;
    a2 = v87;

    v63 = v84;
    v64 = v85;
    *(v84 + 4) = v62;
    v65 = v63;
    _os_log_impl(&dword_224A2F000, v64, v88, "[%{public}s]: queued waiting for migration", v63, 0xCu);
    v66 = v86;
    __swift_destroy_boxed_opaque_existential_1(v86);
    MEMORY[0x22AA5EED0](v66, -1, -1);
    a1 = v94;
    MEMORY[0x22AA5EED0](v65, -1, -1);
  }

  else
  {

    (v39)(v93, v6);
  }

  v67 = v90;
  (v22)(v90, a2, v6);
  v68 = v95;
  v69 = (*(v95 + 80) + 24) & ~*(v95 + 80);
  v70 = v6;
  v71 = (v89 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  *(v72 + 16) = a1;
  (*(v68 + 32))(v72 + v69, v67, v70);
  *(v72 + v71) = v92;
  v73 = OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_enqueueActivityBlocksWaitingForMigration;
  swift_beginAccess();
  v74 = *&a1[v73];

  v75 = a1;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  *&a1[v73] = v74;
  if ((v76 & 1) == 0)
  {
    v74 = sub_224AD940C(0, v74[2] + 1, 1, v74);
    *&a1[v73] = v74;
  }

  v78 = v74[2];
  v77 = v74[3];
  if (v78 >= v77 >> 1)
  {
    v74 = sub_224AD940C((v77 > 1), v78 + 1, 1, v74);
  }

  v74[2] = v78 + 1;
  v79 = &v74[2 * v78];
  v79[4] = sub_224AD39C8;
  v79[5] = v72;
  *&v94[v73] = v74;
  return swift_endAccess();
}

uint64_t sub_224A4685C()
{
  v1 = sub_224DA9908();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_224A46948(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a4;
  v28 = a5;
  v6 = v5;
  v10 = sub_224DA9908();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_224A438E8(a2);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      sub_224B2ADD4(MEMORY[0x277CC95F0], v27, v28);
      goto LABEL_7;
    }

    sub_224B134A8(v20, a3 & 1, v27, v28);
    v25 = sub_224A438E8(a2);
    if ((v21 & 1) == (v26 & 1))
    {
      v17 = v25;
      v23 = *v6;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v14, a2, v10);
      return sub_224A43AD8(v17, v14, a1, v23, MEMORY[0x277CC95F0]);
    }

LABEL_15:
    result = sub_224DAFDD8();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v23[7] + 8 * v17) = a1;
}

uint64_t sub_224A46B4C(uint64_t a1, char *a2, NSObject *a3)
{
  v169 = a3;
  v172 = a2;
  v155 = sub_224DA9878();
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155, v4);
  v153 = &v152 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAB7B8();
  v167 = *(v6 - 8);
  v168 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v165 = &v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_224DAB848();
  v164 = *(v166 - 8);
  MEMORY[0x28223BE20](v166, v9);
  v163 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DA9908();
  v170 = *(v11 - 8);
  v171 = v11;
  v13 = MEMORY[0x28223BE20](v11, v12);
  v157 = (&v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13, v15);
  v158 = &v152 - v16;
  v17 = sub_224DAE918();
  v175 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = &v152 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v174 = &v152 - v23;
  v24 = type metadata accessor for ExtensionTask.SchedulingOption(0);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = &v152 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v30 = MEMORY[0x28223BE20](v28 - 8, v29);
  v32 = &v152 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v152 - v34;
  v173 = a1;
  v36 = *(a1 + 24);
  sub_224A45A60(v36 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_schedulingConfiguration, &v152 - v34);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  v38 = 1;
  (*(*(v37 - 8) + 56))(v32, 1, 1, v37);
  LOBYTE(a1) = sub_224A45CAC(v35, v32);
  sub_224A3D298(v32, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  sub_224A3D298(v35, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  if (a1)
  {
    v39 = *(v36 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_schedulingOptions);
    v40 = sub_224DAE8B8();
    (*(*(v40 - 8) + 56))(v27, 3, 5, v40);

    v41 = sub_224D41D20(v27, v39);

    sub_224A3D298(v27, type metadata accessor for ExtensionTask.SchedulingOption);
    v38 = v41 ^ 1;
  }

  v42 = v172;
  v43 = &v172[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__dataProtectionMonitor];
  __swift_project_boxed_opaque_existential_1(&v172[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__dataProtectionMonitor], *&v172[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__dataProtectionMonitor + 24]);
  v44 = v174;
  sub_224DAD6E8();
  v45 = v175;
  v46 = *(v175 + 16);
  v159 = OBJC_IVAR____TtC10ChronoCore12TaskActivity_requiredDataProtectionLevel;
  v161 = v175 + 16;
  v160 = v46;
  v46(v21, v36 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_requiredDataProtectionLevel, v17);
  sub_224A47C10(&qword_281350C30, MEMORY[0x277CE3D70], MEMORY[0x277CE3D78]);
  v47 = sub_224DAEDB8();
  v49 = *(v45 + 8);
  v48 = v45 + 8;
  v49(v21, v17);
  v162 = v49;
  v49(v44, v17);
  v50 = v36;
  if (v38 & 1) != 0 || (v47)
  {
    v88 = v173;
    v90 = v170;
    v89 = v171;
    if (qword_2813515F0 != -1)
    {
      swift_once();
    }

    v91 = sub_224DAB258();
    __swift_project_value_buffer(v91, qword_281364F88);
    v92 = v157;
    (*(v90 + 16))(v157, v169, v89);

    v93 = sub_224DAB228();
    v94 = sub_224DAF2A8();

    if (os_log_type_enabled(v93, v94))
    {
      LODWORD(v168) = v94;
      v169 = v93;
      v156 = v50;
      v175 = v48;
      v95 = v90;
      v96 = swift_slowAlloc();
      v166 = v96;
      v167 = swift_slowAlloc();
      aBlock[0] = v167;
      *v96 = 136446978;
      v177 = sub_224DA98E8();
      sub_224A3F6A4();
      v97 = sub_224DAEF18();
      v99 = sub_224A3D19C(8, v97, v98);
      v100 = v88;
      v102 = v101;
      v104 = v103;
      v105 = v92;
      v107 = v106;

      v108 = MEMORY[0x22AA5D1C0](v99, v102, v104, v107);
      v110 = v109;

      v111 = v105;
      v112 = v100;
      v113 = v166;
      (*(v95 + 8))(v111, v89);
      v114 = sub_224A33F74(v108, v110, aBlock);

      *(v113 + 4) = v114;
      *(v113 + 12) = 2082;
      v115 = v112[7];
      v116 = v112[8];
      __swift_project_boxed_opaque_existential_1(v112 + 4, v115);
      v117 = v153;
      (*(v116 + 8))(v115, v116);
      if (qword_281351A50 != -1)
      {
        swift_once();
      }

      v118 = qword_281351A58;
      v119 = sub_224DA9778();
      v120 = [v118 stringFromDate_];

      v121 = sub_224DAEE18();
      v123 = v122;

      v124 = *(v154 + 8);
      v125 = v155;
      v124(v117, v155);
      v126 = sub_224A33F74(v121, v123, aBlock);

      *(v113 + 14) = v126;
      *(v113 + 22) = 2082;
      v127 = v112[7];
      v128 = v112[8];
      __swift_project_boxed_opaque_existential_1(v112 + 4, v127);
      (*(v128 + 16))(v127, v128);
      v129 = qword_281351A58;
      v130 = sub_224DA9778();
      v131 = [v129 stringFromDate_];

      v132 = sub_224DAEE18();
      v134 = v133;

      v124(v117, v125);
      v135 = sub_224A33F74(v132, v134, aBlock);

      *(v113 + 24) = v135;
      *(v113 + 32) = 2080;
      v136 = v174;
      v160(v174, v156 + v159, v17);
      sub_224A47C10(&qword_281350C28, MEMORY[0x277CE3D70], MEMORY[0x277CE3D80]);
      v137 = sub_224DAFD28();
      v139 = v138;
      v162(v136, v17);
      v140 = sub_224A33F74(v137, v139, aBlock);

      *(v113 + 34) = v140;
      v141 = v169;
      _os_log_impl(&dword_224A2F000, v169, v168, "[%{public}s]: scheduled activity enqueued after: %{public}s before: %{public}s with data class (%s)", v113, 0x2Au);
      v142 = v167;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v142, -1, -1);
      MEMORY[0x22AA5EED0](v113, -1, -1);

      v88 = v112;
      v42 = v172;
    }

    else
    {

      (*(v90 + 8))(v92, v89);
    }

    v143 = *&v42[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProvider + 24];
    v144 = *&v42[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProvider + 32];
    __swift_project_boxed_opaque_existential_1(&v42[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProvider], v143);
    return (*(v144 + 24))(v88, v143, v144);
  }

  else
  {
    v156 = v36;
    v51 = v173;
    v53 = v170;
    v52 = v171;
    if (qword_2813515F0 != -1)
    {
      swift_once();
    }

    v54 = sub_224DAB258();
    __swift_project_value_buffer(v54, qword_281364F88);
    v55 = v158;
    (*(v53 + 16))(v158, v169, v52);
    v56 = v42;

    v57 = sub_224DAB228();
    v58 = sub_224DAF2A8();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v172 = v56;
      v60 = v59;
      v169 = swift_slowAlloc();
      aBlock[0] = v169;
      *v60 = 136446722;
      v157 = v57;
      v177 = sub_224DA98E8();
      sub_224A3F6A4();
      v61 = sub_224DAEF18();
      v175 = v48;
      v63 = sub_224A3D19C(8, v61, v62);
      v65 = v64;
      LODWORD(v155) = v58;
      v67 = v66;
      v68 = v55;
      v70 = v69;

      v71 = MEMORY[0x22AA5D1C0](v63, v65, v67, v70);
      v73 = v72;

      (*(v53 + 8))(v68, v171);
      v74 = sub_224A33F74(v71, v73, aBlock);

      *(v60 + 4) = v74;
      *(v60 + 12) = 2082;
      __swift_project_boxed_opaque_existential_1(v43, *(v43 + 3));
      v75 = v174;
      sub_224DAD6E8();
      sub_224A47C10(&qword_281350C28, MEMORY[0x277CE3D70], MEMORY[0x277CE3D80]);
      v76 = sub_224DAFD28();
      v78 = v77;
      v79 = v162;
      v162(v75, v17);
      v80 = sub_224A33F74(v76, v78, aBlock);
      v51 = v173;

      *(v60 + 14) = v80;
      *(v60 + 22) = 2082;
      v160(v75, v156 + v159, v17);
      v81 = sub_224DAFD28();
      v83 = v82;
      v79(v75, v17);
      v84 = sub_224A33F74(v81, v83, aBlock);

      *(v60 + 24) = v84;
      v85 = v157;
      _os_log_impl(&dword_224A2F000, v157, v155, "[%{public}s]: immediate activity enqueued (%{public}s >= %{public}s)", v60, 0x20u);
      v86 = v169;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v86, -1, -1);
      v87 = v60;
      v56 = v172;
      MEMORY[0x22AA5EED0](v87, -1, -1);
    }

    else
    {

      (*(v53 + 8))(v55, v52);
    }

    v146 = swift_allocObject();
    *(v146 + 16) = v56;
    *(v146 + 24) = v51;
    aBlock[4] = sub_224A48F98;
    aBlock[5] = v146;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_44;
    v147 = _Block_copy(aBlock);
    v148 = v56;

    v149 = v163;
    sub_224DAB7E8();
    v177 = MEMORY[0x277D84F90];
    sub_224A47C10(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    v150 = v165;
    v151 = v168;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v149, v150, v147);
    _Block_release(v147);
    (*(v167 + 8))(v150, v151);
    (*(v164 + 8))(v149, v166);
  }
}

uint64_t sub_224A47BD0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224A47C10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224A47C58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_224A47CD8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v23 - v8;
  sub_224A32920(a1, a2, 1, &v23 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_224A3311C(v9, &unk_27D6F5060, &qword_224DB5620);
  }

  else
  {
    v12 = sub_224DA9FE8();
    v14 = v13;
    (*(v11 + 8))(v9, v10);
    v15 = *(v3 + 16);
    LOBYTE(v12) = sub_224A47FAC(v15, v12, v14);

    if (v12)
    {
      return v15;
    }
  }

  sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
  v16 = sub_224CBC42C(3, 0, 0);
  if (qword_2813514B8 != -1)
  {
    swift_once();
  }

  v17 = sub_224DAB258();
  __swift_project_value_buffer(v17, qword_281364E50);

  v18 = sub_224DAB228();
  v19 = sub_224DAF288();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_224A33F74(a1, a2, &v24);
    _os_log_impl(&dword_224A2F000, v18, v19, "[WidgetCenter] Connection error for %{public}s: Not authorized", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x22AA5EED0](v21, -1, -1);
    MEMORY[0x22AA5EED0](v20, -1, -1);
  }

  return v16;
}

uint64_t sub_224A47FAC(void *a1, uint64_t a2, unint64_t a3)
{
  v46[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v45[-v8];
  [a1 auditToken];
  v10 = sub_224DAEDE8();
  HasEntitlement = BSAuditTokenTaskHasEntitlement();

  if (HasEntitlement)
  {
    if (qword_281351460 != -1)
    {
      swift_once();
    }

    v12 = sub_224DAB258();
    __swift_project_value_buffer(v12, qword_281364DC0);
    v13 = sub_224DAB228();
    v14 = sub_224DAF278();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_224A2F000, v13, v14, "isRequestorAuthorized - ENTITLED", v15, 2u);
      MEMORY[0x22AA5EED0](v15, -1, -1);
    }

    return 1;
  }

  v16 = sub_224DAF2C8();
  v18 = v16;
  v19 = v17;
  if (v17 && (v16 == a2 && v17 == a3 || (sub_224DAFD88() & 1) != 0))
  {

    if (qword_281351460 != -1)
    {
      swift_once();
    }

    v20 = sub_224DAB258();
    __swift_project_value_buffer(v20, qword_281364DC0);

    v21 = sub_224DAB228();
    v22 = sub_224DAF278();

    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_42;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v46[0] = v24;
    *v23 = 136446210;
    *(v23 + 4) = sub_224A33F74(a2, a3, v46);
    v25 = "isRequestorAuthorized - SOURCE IS THE CONTAINER: %{public}s";
LABEL_41:
    _os_log_impl(&dword_224A2F000, v21, v22, v25, v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x22AA5EED0](v24, -1, -1);
    MEMORY[0x22AA5EED0](v23, -1, -1);
LABEL_42:

    return 1;
  }

  v26 = sub_224DAF2C8();
  if (!v27)
  {
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    (*(*(v35 - 8) + 56))(v9, 1, 1, v35);
    goto LABEL_24;
  }

  sub_224A32920(v26, v27, 0, v9);

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v9, 1, v28) == 1)
  {
LABEL_24:
    sub_224A3311C(v9, &unk_27D6F5060, &qword_224DB5620);
    goto LABEL_25;
  }

  v30 = sub_224DA9FE8();
  v32 = v31;
  (*(v29 + 8))(v9, v28);
  if (v30 == a2 && v32 == a3)
  {

LABEL_37:

    if (qword_281351460 != -1)
    {
      swift_once();
    }

    v44 = sub_224DAB258();
    __swift_project_value_buffer(v44, qword_281364DC0);

    v21 = sub_224DAB228();
    v22 = sub_224DAF278();

    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_42;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v46[0] = v24;
    *v23 = 136446210;
    *(v23 + 4) = sub_224A33F74(a2, a3, v46);
    v25 = "isRequestorAuthorized - SOURCE IS IN THE CONTAINER BUNDLE: %{public}s";
    goto LABEL_41;
  }

  v34 = sub_224DAFD88();

  if (v34)
  {
    goto LABEL_37;
  }

LABEL_25:
  if (qword_281351460 != -1)
  {
    swift_once();
  }

  v36 = sub_224DAB258();
  __swift_project_value_buffer(v36, qword_281364DC0);

  v37 = sub_224DAB228();
  v38 = sub_224DAF278();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v46[0] = v40;
    *v39 = 136446210;
    if (v19)
    {
      v41 = v18;
    }

    else
    {
      v41 = 7104878;
    }

    if (!v19)
    {
      v19 = 0xE300000000000000;
    }

    v42 = sub_224A33F74(v41, v19, v46);

    *(v39 + 4) = v42;
    _os_log_impl(&dword_224A2F000, v37, v38, "isRequestorAuthorized - NOT AUTHORIZED: %{public}s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x22AA5EED0](v40, -1, -1);
    MEMORY[0x22AA5EED0](v39, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_224A48648()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5AB8, &qword_224DC1B30);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6CD8, &qword_224DC1B38);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v21 - v7;
  sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
  sub_224DAD8F8();
  v9 = *(v1 + 104);
  v9(v4, *MEMORY[0x277CF9DF8], v0);
  sub_224DAD8E8();
  v10 = *(v1 + 8);
  v10(v4, v0);
  sub_224DA9E78();
  sub_224DA9E68();
  v11 = sub_224DA9D48();

  if ((v11 & 1) == 0)
  {
    v9(v4, *MEMORY[0x277CF9E00], v0);
    sub_224DAD8E8();
    v10(v4, v0);
  }

  v12 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
  v13 = v21;
  swift_beginAccess();
  sub_224A3796C(v13 + v12, v23, &qword_27D6F6C28, &qword_224DC1A38);
  v14 = v24;
  if (v24)
  {
    v15 = __swift_project_boxed_opaque_existential_1(v23, v24);
    v16 = *(v14 - 8);
    MEMORY[0x28223BE20](v15, v15);
    v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v18);
    sub_224A3311C(v23, &qword_27D6F6C28, &qword_224DC1A38);
    sub_224DAD5A8();
    (*(v16 + 8))(v18, v14);
    v19 = sub_224DACFA8();

    (*(v22 + 8))(v8, v5);
  }

  else
  {
    (*(v22 + 8))(v8, v5);
    sub_224A3311C(v23, &qword_27D6F6C28, &qword_224DC1A38);
    return 0;
  }

  return v19;
}

uint64_t sub_224A48A18(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_224ACED1C;

  return v7();
}

uint64_t sub_224A48B00()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_224ACFF60;

  return sub_224A3CD9C(v2, v3, v4);
}

uint64_t objectdestroyTm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_3(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroyTm_4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroyTm_5()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm_6()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm_7()
{
  if (*(v0 + 32))
  {
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_224A48F3C(uint64_t a1)
{
  v2 = type metadata accessor for ExtensionTask.Identifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_224A48FA0(__int16 a1)
{
  sub_224DAFE68();
  sub_224DAFE88();
  sub_224DAFE88();
  v2 = sub_224DAFEA8();

  return sub_224A49904(a1 & 0x101, v2);
}

uint64_t sub_224A4901C(uint64_t a1, uint64_t a2)
{
  v3 = sub_224DA9908();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, *(a2 + 24) + OBJC_IVAR____TtC10ChronoCore12TaskActivity_identifier, v3);
  sub_224A49120(v7, 0);
  return (*(v4 + 8))(v7, v3);
}