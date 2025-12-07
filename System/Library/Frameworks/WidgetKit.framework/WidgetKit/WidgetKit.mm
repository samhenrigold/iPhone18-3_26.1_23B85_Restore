void *sub_19202A47C()
{
  type metadata accessor for WidgetCenter();
  v0 = swift_allocObject();
  result = sub_19202A4B8();
  qword_1ED749B30 = v0;
  return result;
}

void *sub_19202A4B8()
{
  v1 = v0;
  v12 = sub_192228070();
  v2 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_192228050();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_192227790();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);
  v11[0] = "urationRecommendations()";
  v11[1] = v7;
  sub_192227760();
  v13 = MEMORY[0x1E69E7CC0];
  sub_19202A7F0(&qword_1ED74C5D8, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF22E0, &qword_19222B820);
  sub_19202A880(&unk_1ED74C5E0, &unk_1EADF22E0, &qword_19222B820);
  sub_1922282F0();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8098], v12);
  *(v0 + 16) = sub_1922280A0();
  type metadata accessor for UnfairLock();
  v8 = swift_allocObject();
  v9 = swift_slowAlloc();
  *v9 = 0;
  *(v8 + 16) = v9;
  *(v1 + 24) = v8;
  *(v1 + 32) = 0;
  return v1;
}

uint64_t static WidgetCenter.shared.getter()
{
  if (qword_1ED749B28 != -1)
  {
    swift_once();
  }
}

uint64_t sub_19202A7A8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_19202A7F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19202A838(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19202A880(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_19202A98C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
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

uint64_t sub_19202AB80(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_19202ABC8()
{
  [objc_opt_self() interfaceWithProtocol_];
  sub_19202AE2C();
  inited = swift_initStackObject();
  *(inited + 32) = sub_19202A7A8(0, &qword_1ED74C6A0, 0x1E695DEC8);
  *(inited + 40) = sub_19202A7A8(0, &qword_1ED74BB40, 0x1E6994370);
  v1 = [objc_allocWithZone(MEMORY[0x1E695DFA8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF2B20, &unk_192234AF0);
  [v1 addObject_];
  swift_unknownObjectRelease();
  [v1 addObject_];
  swift_unknownObjectRelease();
  v2 = v1;
  sub_192227D50();

  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t sub_19202AE2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF2B20, &unk_192234AF0);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1EADF2BA0;
    v3 = &unk_1922474C8;
  }

  else
  {
    v2 = &qword_1EADEEBD8;
    v3 = &qword_19222CAF0;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

void sub_19202AEA4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_19202AF90(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(v3 + 24);
  os_unfair_lock_lock(*(v7 + 16));
  a3(v3, a1, a2);
  v8 = *(v7 + 16);

  os_unfair_lock_unlock(v8);
}

uint64_t sub_19202B020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_19202B38C();
  v22 = sub_192125B00;
  v23 = 0;
  v18 = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1921BBB98;
  v21 = &block_descriptor_109;
  v6 = _Block_copy(&v18);
  v7 = [v5 remoteObjectProxyWithErrorHandler_];
  _Block_release(v6);

  sub_1922282B0();
  swift_unknownObjectRelease();
  sub_19202A98C(v24, &v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0538, &unk_192234A88);
  if (swift_dynamicCast())
  {
    v8 = v24[5];
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;

    v10 = sub_192227930();
    v22 = sub_19202AF1C;
    v23 = v9;
    v18 = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    v20 = sub_19202AF14;
    v21 = &block_descriptor_115;
    v11 = _Block_copy(&v18);

    [v8 _reloadTimelinesOfKind_completion_];
    _Block_release(v11);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v12 = sub_1922258B0();
    __swift_project_value_buffer(v12, qword_1ED74CCC8);
    v13 = sub_192225890();
    v14 = sub_192227F90();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_19202B8CC(0xD000000000000018, 0x800000019224B430, &v18);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x193B0C7F0](v16, -1, -1);
      MEMORY[0x193B0C7F0](v15, -1, -1);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_19202B354()
{

  return swift_deallocObject();
}

id sub_19202B38C()
{
  v1 = v0;
  os_unfair_lock_assert_owner(*(*(v0 + 24) + 16));
  v2 = *(v0 + 32);
  if (v2)
  {

    return v2;
  }

  else
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v4 = sub_1922258B0();
    __swift_project_value_buffer(v4, qword_1ED74CCC8);
    v5 = sub_192225890();
    v6 = sub_192227FB0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_192028000, v5, v6, "Creating WidgetCenter connection.", v7, 2u);
      MEMORY[0x193B0C7F0](v7, -1, -1);
    }

    v8 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
    v9 = sub_192227930();
    v10 = [v8 initWithMachServiceName:v9 options:0];

    v11 = sub_19202ABC8();
    [v10 setRemoteObjectInterface_];

    v12 = [objc_opt_self() interfaceWithProtocol_];
    [v10 setExportedInterface_];

    v13 = swift_allocObject();
    swift_weakInit();
    v23 = sub_19212AD48;
    v24 = v13;
    v19 = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    v21 = sub_19202AB80;
    v22 = &block_descriptor_34;
    v14 = _Block_copy(&v19);

    [v10 setInterruptionHandler_];
    _Block_release(v14);
    v15 = swift_allocObject();
    swift_weakInit();
    v23 = sub_19212AD6C;
    v24 = v15;
    v19 = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    v21 = sub_19202AB80;
    v22 = &block_descriptor_38;
    v16 = _Block_copy(&v19);

    [v10 setInvalidationHandler_];
    _Block_release(v16);
    [v10 resume];
    v17 = *(v1 + 32);
    *(v1 + 32) = v10;
    v18 = v10;

    return v18;
  }
}

uint64_t sub_19202B6E8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_19202B720(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1922258B0();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1922258A0();
}

uint64_t static DataProtectionLevel.systemDefault.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ED74B5B8;
  return result;
}

unint64_t sub_19202B8CC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_19202B998(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_19202A98C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_19202B998(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_192078810(a5, a6);
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
    result = sub_1922284E0();
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

void sub_19202BAA4(NSObject *a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    v6 = a1;
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v7 = sub_1922258B0();
    __swift_project_value_buffer(v7, qword_1ED74CCC8);
    v8 = a1;

    v9 = sub_192225890();
    v10 = sub_192227F90();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v11 = 136446722;
      *(v11 + 4) = sub_19202B8CC(0xD000000000000018, 0x800000019224B430, &v22);
      *(v11 + 12) = 2082;
      *(v11 + 14) = sub_19202B8CC(a2, a3, &v22);
      *(v11 + 22) = 2114;
      v14 = a1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 24) = v15;
      *v12 = v15;
      _os_log_impl(&dword_192028000, v9, v10, "%{public}s - error reloading timelines of kind '%{public}s': %{public}@", v11, 0x20u);
      sub_192033970(v12, &qword_1EADEEDF0, &qword_1922319C0);
      MEMORY[0x193B0C7F0](v12, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v13, -1, -1);
      MEMORY[0x193B0C7F0](v11, -1, -1);

      return;
    }

    v20 = a1;
  }

  else
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v16 = sub_1922258B0();
    __swift_project_value_buffer(v16, qword_1ED74CCC8);

    oslog = sub_192225890();
    v17 = sub_192227FB0();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136446466;
      *(v18 + 4) = sub_19202B8CC(0xD000000000000018, 0x800000019224B430, &v22);
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_19202B8CC(a2, a3, &v22);
      _os_log_impl(&dword_192028000, oslog, v17, "%{public}s - reloaded timelines of kind '%{public}s'", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v19, -1, -1);
      MEMORY[0x193B0C7F0](v18, -1, -1);

      return;
    }

    v20 = oslog;
  }
}

unint64_t sub_19202BE60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A20, &qword_192236238);
    v3 = sub_1922286C0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1920440AC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void static WidgetExtensionSessionFactory.makeSessionAsync(for:preferredLanguages:options:watchdogTimeoutProvider:completion:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v139 = a6;
  v140 = a7;
  v138 = a3;
  v126 = a2;
  v136 = sub_192225670();
  v128 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v130 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1922256D0();
  v13 = *(v12 - 8);
  v133 = v12;
  v134 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v124 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v115 - v16;
  v125 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v129 = &v115 - v20;
  v21 = sub_192227730();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1922251B0();
  v132 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v135 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v131 = &v115 - v27;
  if (a4)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = a4;
    *(v28 + 24) = a5;
    v29 = sub_1921C62A0;
  }

  else
  {
    v29 = sub_1920327C8;
    v28 = 0;
  }

  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = v28;
  v31 = v30;
  sub_19202CFFC(a1, &aBlock, &unk_1EADEF330, &unk_19222CD40);
  if (!*(&v142 + 1))
  {
    sub_19202D088(a4, a5);
    sub_192033970(&aBlock, &unk_1EADEF330, &unk_19222CD40);
    goto LABEL_18;
  }

  sub_19202D088(a4, a5);
  sub_19202A7A8(0, &qword_1EADECA68, 0x1E6966CB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    sub_19202CFFC(a1, &aBlock, &unk_1EADEF330, &unk_19222CD40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF330, &unk_19222CD40);
    v67 = sub_192227990();
    v69 = v68;
    if (qword_1EADECEC0 != -1)
    {
      swift_once();
    }

    v70 = sub_1922258B0();
    __swift_project_value_buffer(v70, qword_1EAE00728);

    v71 = sub_192225890();
    v72 = sub_192227FB0();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *&aBlock = v74;
      *v73 = 136446210;
      v75 = sub_19202B8CC(v67, v69, &aBlock);

      *(v73 + 4) = v75;
      _os_log_impl(&dword_192028000, v71, v72, "Unable to create new WidgetExtensionSession: extension was not an _EXExtensionIdentity - %{public}s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x193B0C7F0](v74, -1, -1);
      MEMORY[0x193B0C7F0](v73, -1, -1);
    }

    else
    {
    }

    v139(0);
    goto LABEL_33;
  }

  v120 = v31;
  v121 = v7;
  v32 = v145;
  v33 = [v145 bundleIdentifier];
  v123 = sub_192227960();
  v35 = v34;

  LODWORD(v122) = *v138;
  v36 = swift_allocObject();
  v36[2] = v32;
  v36[3] = 0x402E000000000000;
  v37 = v140;
  v36[4] = v139;
  v36[5] = v37;
  type metadata accessor for WidgetExtensionSessionWatchdog();
  v38 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v39 = swift_allocObject();
  v117 = v32;

  v40 = swift_slowAlloc();
  *v40 = 0;
  *(v39 + 16) = v40;
  v38[4] = v39;
  v41 = v131;
  sub_1922251A0();
  sub_192225160();
  v42 = *(v132 + 8);
  v119 = v132 + 8;
  v118 = v42;
  v42(v41, v137);
  v43 = objc_allocWithZone(MEMORY[0x1E698E660]);
  v44 = sub_192227930();

  v45 = [v43 initWithIdentifier_];

  v38[5] = v45;
  v38[6] = sub_1921C6288;
  v38[7] = v36;
  v38[2] = v123;
  v38[3] = v35;
  v46 = MEMORY[0x1E69E7F98];
  if (v122 >= 3)
  {
    v46 = MEMORY[0x1E69E7F88];
  }

  (*(v22 + 104))(v24, *v46, v21);
  sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);

  v47 = sub_1922280B0();
  (*(v22 + 8))(v24, v21);
  v38[8] = v47;
  v48 = v38[5];
  if (v48)
  {
    v49 = v48;

    v50 = v38[8];
    *&v143 = sub_1921C6298;
    *(&v143 + 1) = v38;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v142 = sub_192037950;
    *(&v142 + 1) = &block_descriptor_6;
    v51 = _Block_copy(&aBlock);
    v52 = v50;

    [v49 scheduleWithFireInterval:v52 leewayInterval:v51 queue:15.0 handler:0.0];
    _Block_release(v51);

    if (qword_1EADECEC0 != -1)
    {
      swift_once();
    }

    v53 = sub_1922258B0();
    v54 = __swift_project_value_buffer(v53, qword_1EAE00728);
    v55 = v117;
    v115 = v54;
    v56 = sub_192225890();
    v57 = sub_192227FB0();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&aBlock = v59;
      *v58 = 136446210;
      v60 = [v55 bundleIdentifier];
      v61 = sub_192227960();
      v63 = v62;

      v64 = sub_19202B8CC(v61, v63, &aBlock);

      *(v58 + 4) = v64;
      _os_log_impl(&dword_192028000, v56, v57, "[%{public}s] Creating session...", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x193B0C7F0](v59, -1, -1);
      MEMORY[0x193B0C7F0](v58, -1, -1);
    }

    v65 = v138[48];
    v116 = v38;
    if (v65)
    {
      if (qword_1EADECBA8 != -1)
      {
        swift_once();
      }

      v66 = &qword_1EADECBB0;
    }

    else
    {
      if (qword_1EADECBC0 != -1)
      {
        swift_once();
      }

      v66 = &qword_1EADECBC8;
    }

    v76 = *v66;
    sub_1922251A0();
    v77 = v55;
    v78 = v129;
    v117 = v77;
    sub_1922256E0();
    v123 = swift_allocBox();
    v80 = v79;
    v81 = v133;
    v82 = v134;
    v83 = *(v134 + 16);
    v83(v17, v78, v133);
    sub_1922255F0();
    v122 = v76;
    sub_192225620();

    sub_192225630();
    sub_192225640();
    v84 = v138;

    sub_192225660();
    v83(v17, v78, v81);
    v85 = (*(v82 + 80) + 16) & ~*(v82 + 80);
    v86 = swift_allocObject();
    (*(v82 + 32))(v86 + v85, v17, v81);
    sub_192225610();
    *(&v142 + 1) = &type metadata for FeatureFlags.Widgets;
    *&v143 = sub_19202DBA4();
    LOBYTE(aBlock) = 18;
    v87 = sub_192225420();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    if (v87)
    {
      v88 = v124;
      v83(v124, v78, v81);
      v89 = sub_192225890();
      v90 = sub_192227FB0();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        *&aBlock = v92;
        *v91 = 136446210;
        v93 = sub_1922256C0();
        v95 = v94;
        (*(v134 + 8))(v88, v133);
        v96 = sub_19202B8CC(v93, v95, &aBlock);

        *(v91 + 4) = v96;
        _os_log_impl(&dword_192028000, v89, v90, "Overriding assertion attributes in launch case: %{public}s", v91, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v92);
        v97 = v92;
        v84 = v138;
        MEMORY[0x193B0C7F0](v97, -1, -1);
        MEMORY[0x193B0C7F0](v91, -1, -1);
      }

      else
      {

        (*(v134 + 8))(v88, v81);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD8, &qword_19222CAF0);
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_19222C680;
      LOBYTE(aBlock) = *v84;
      *(v98 + 32) = sub_1921C549C(&aBlock);
      sub_192225650();
    }

    v99 = v128;
    (*(v128 + 16))(v130, v80, v136);
    sub_19202D29C(v84, &aBlock);
    v100 = v131;
    v101 = v132;
    (*(v132 + 16))(v131, v135, v137);
    v102 = (*(v101 + 80) + 144) & ~*(v101 + 80);
    v103 = swift_allocObject();
    v104 = v117;
    v105 = v116;
    *(v103 + 16) = v117;
    *(v103 + 24) = v105;
    v106 = v140;
    *(v103 + 32) = v139;
    *(v103 + 40) = v106;
    v107 = v123;
    *(v103 + 48) = v121;
    *(v103 + 56) = v107;
    v108 = v142;
    *(v103 + 64) = aBlock;
    *(v103 + 80) = v108;
    v109 = v144;
    *(v103 + 96) = v143;
    *(v103 + 112) = v109;
    v110 = v120;
    *(v103 + 128) = sub_1920327F8;
    *(v103 + 136) = v110;
    v111 = v100;
    v112 = v137;
    (*(v101 + 32))(v103 + v102, v111, v137);
    v113 = v104;

    v114 = v130;
    sub_1922256A0();

    (*(v99 + 8))(v114, v136);
    (*(v134 + 8))(v129, v133);
    v118(v135, v112);
LABEL_33:

    return;
  }

  __break(1u);
}

uint64_t sub_19202CE7C()
{

  return swift_deallocObject();
}

uint64_t sub_19202CEB4()
{

  return swift_deallocObject();
}

uint64_t sub_19202CEF4()
{
  v1 = sub_1922251B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);

  if (*(v0 + 96))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  }

  (*(v2 + 8))(v0 + ((v3 + 144) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_19202CFFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_19202D088(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

const char *sub_19202D0B8(char a1)
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

uint64_t get_enum_tag_for_layout_string_9WidgetKit0A35ExtensionSessionSuspensionObserving_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_19202D2EC(uint64_t a1, void *a2, char *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11)
{
  v77 = a8;
  v72 = a7;
  v79 = a5;
  v80 = a4;
  v83 = a3;
  v78 = a2;
  v12 = sub_1922256D0();
  v74 = *(v12 - 8);
  v75 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_192225670();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1922251B0();
  v76 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v81 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1922256B0();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v82 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v70 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BF0, &unk_192240600);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v70 - v25);
  sub_19202CFFC(a1, &v70 - v25, &qword_1EADF1BF0, &unk_192240600);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v26;
    if (qword_1EADECEC0 != -1)
    {
      swift_once();
    }

    v28 = sub_1922258B0();
    __swift_project_value_buffer(v28, qword_1EAE00728);
    v29 = v78;
    v30 = v27;
    v31 = sub_192225890();
    v32 = sub_192227FB0();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v85[0] = v35;
      *v33 = 136446466;
      v36 = [v29 bundleIdentifier];
      v37 = sub_192227960();
      v39 = v38;

      v40 = sub_19202B8CC(v37, v39, v85);

      *(v33 + 4) = v40;
      *(v33 + 12) = 2112;
      *(v33 + 14) = v30;
      *v34 = v30;
      v41 = v30;
      _os_log_impl(&dword_192028000, v31, v32, "[%{public}s] Failed to launch extension with error: %@.", v33, 0x16u);
      sub_192033970(v34, &qword_1EADEEDF0, &qword_1922319C0);
      MEMORY[0x193B0C7F0](v34, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x193B0C7F0](v35, -1, -1);
      MEMORY[0x193B0C7F0](v33, -1, -1);
    }

    v42 = v83;
    if (sub_19202DC80())
    {

      v43 = sub_192225890();
      v44 = sub_192227FB0();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v85[0] = v46;
        *v45 = 136446210;
        *(v45 + 4) = sub_19202B8CC(*(v42 + 2), *(v42 + 3), v85);
        _os_log_impl(&dword_192028000, v43, v44, "[%{public}s] Original request finally completed, but it had already watchdogged.", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v46);
        MEMORY[0x193B0C7F0](v46, -1, -1);
        MEMORY[0x193B0C7F0](v45, -1, -1);
      }
    }

    else
    {
      v80(0);
    }
  }

  else
  {
    (*(v19 + 32))(v23, v26, v18);
    (*(v19 + 16))(v82, v23, v18);
    sub_19202D29C(v77, v85);
    v47 = v76;
    (*(v76 + 16))(v81, a11, v16);
    v48 = v83;
    v49 = v18;
    v50 = v19;
    v51 = v16;
    if (sub_19202DC80())
    {
      v52 = v48;
      if (qword_1EADECEC0 != -1)
      {
        swift_once();
      }

      v53 = sub_1922258B0();
      __swift_project_value_buffer(v53, qword_1EAE00728);

      v54 = sub_192225890();
      v55 = sub_192227FB0();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v84[0] = v57;
        *v56 = 136446210;
        *(v56 + 4) = sub_19202B8CC(*(v52 + 2), *(v52 + 3), v84);
        _os_log_impl(&dword_192028000, v54, v55, "[%{public}s] Original request finally completed, but it had already watchdogged. Skipping session creation.", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v57);
        MEMORY[0x193B0C7F0](v57, -1, -1);
        MEMORY[0x193B0C7F0](v56, -1, -1);
      }

      (*(v47 + 8))(v81, v51);
      sub_1920313E8(v85);
      v58 = *(v50 + 8);
      v58(v82, v49);
      v58(v23, v49);
    }

    else
    {
      v59 = v47;
      v78 = a10;
      v83 = v23;
      v60 = swift_projectBox();
      swift_beginAccess();
      v61 = v49;
      v62 = v70;
      v63 = v51;
      v64 = v71;
      (*(v70 + 16))(v15, v60, v71);
      v65 = v73;
      sub_192225600();
      (*(v62 + 8))(v15, v64);
      v66 = v82;
      v67 = v81;
      v68 = sub_192032834(v65, v82, v85, a9, v78, v81);
      (*(v74 + 8))(v65, v75);
      v80(v68);
      swift_unknownObjectRelease();
      (*(v59 + 8))(v67, v63);
      sub_1920313E8(v85);
      v69 = *(v50 + 8);
      v69(v66, v61);
      v69(v83, v61);
    }
  }
}

unint64_t sub_19202DBA4()
{
  result = qword_1ED74A178;
  if (!qword_1ED74A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A178);
  }

  return result;
}

BOOL sub_19202DC80()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(v0 + 40);
  if (v2)
  {
    v3 = v2;
    [v3 cancel];
    [v3 invalidate];

    v4 = *(v0 + 40);
    *(v0 + 40) = 0;
  }

  os_unfair_lock_unlock(*(v1 + 16));
  return v2 == 0;
}

uint64_t static ControlCenter.shared.getter()
{
  if (qword_1EADED188 != -1)
  {
    swift_once();
  }
}

uint64_t sub_19202DD80()
{
  type metadata accessor for ControlCenterClient();
  v0 = swift_allocObject();
  result = sub_19202DF3C();
  qword_1EAE00778 = v0;
  return result;
}

uint64_t sub_19202DDBC()
{
  if (qword_1EADED118 != -1)
  {
    swift_once();
  }

  v0 = qword_1EAE00778;
  v1 = type metadata accessor for ControlCenterClient();
  v11[3] = v1;
  v11[4] = &off_1F06B72C0;
  v11[0] = v0;
  type metadata accessor for ControlCenter();
  v2 = swift_allocObject();
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v11, v1);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = (&v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6, v4);
  v8 = *v6;
  v2[5] = v1;
  v2[6] = &off_1F06B72C0;
  v2[2] = v8;

  result = __swift_destroy_boxed_opaque_existential_1(v11);
  qword_1EADED190 = v2;
  return result;
}

uint64_t sub_19202DF3C()
{
  v9 = sub_192228070();
  v1 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_192228050();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_192227790();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);
  v8[0] = "rviceConnectionContext>8";
  v8[1] = v6;
  sub_192227750();
  v10 = MEMORY[0x1E69E7CC0];
  sub_19202A838(&qword_1ED74C5D8, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF22E0, &qword_19222B820);
  sub_19202A880(&unk_1ED74C5E0, &unk_1EADF22E0, &qword_19222B820);
  sub_1922282F0();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8098], v9);
  *(v0 + 16) = sub_1922280A0();
  *(v0 + 24) = 0;
  return v0;
}

void sub_19202E1A0(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v97 = a1;
  v109 = type metadata accessor for ViewableTimelineEntry(0);
  v105 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v99 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v108 = &v94 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v94 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v94 - v16;
  v107 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v97;
    if (!*v97)
    {
      goto LABEL_135;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v89 = a4;
    }

    else
    {
LABEL_129:
      v89 = sub_1920C4474(a4);
    }

    v110 = v89;
    a4 = *(v89 + 2);
    if (a4 >= 2)
    {
      while (*v107)
      {
        v90 = *&v89[16 * a4];
        v91 = v89;
        v92 = *&v89[16 * a4 + 24];
        sub_19209B588(*v107 + *(v105 + 72) * v90, *v107 + *(v105 + 72) * *&v89[16 * a4 + 16], *v107 + *(v105 + 72) * v92, v5);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v92 < v90)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_1920C4474(v91);
        }

        if (a4 - 2 >= *(v91 + 2))
        {
          goto LABEL_123;
        }

        v93 = &v91[16 * a4];
        *v93 = v90;
        *(v93 + 1) = v92;
        v110 = v91;
        sub_19202F018(a4 - 1);
        v89 = v110;
        a4 = *(v110 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v96 = a4;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v100 = v20;
    if (v22 >= v18)
    {
      v28 = v22;
    }

    else
    {
      v23 = *(v105 + 72);
      v5 = *v107 + v23 * v22;
      v103 = *v107;
      v24 = v103;
      sub_19204E6EC(v103 + v23 * v22, v17, type metadata accessor for ViewableTimelineEntry);
      sub_19204E6EC(v24 + v23 * v21, v14, type metadata accessor for ViewableTimelineEntry);
      LODWORD(v104) = sub_192225100();
      sub_192046EE8(v14, type metadata accessor for ViewableTimelineEntry);
      sub_192046EE8(v17, type metadata accessor for ViewableTimelineEntry);
      v95 = v21;
      v25 = v21 + 2;
      v106 = v23;
      v26 = v103 + v23 * (v21 + 2);
      while (v18 != v25)
      {
        sub_19204E6EC(v26, v17, type metadata accessor for ViewableTimelineEntry);
        sub_19204E6EC(v5, v14, type metadata accessor for ViewableTimelineEntry);
        v27 = sub_192225100() & 1;
        sub_192046EE8(v14, type metadata accessor for ViewableTimelineEntry);
        sub_192046EE8(v17, type metadata accessor for ViewableTimelineEntry);
        ++v25;
        v26 += v106;
        v5 += v106;
        if ((v104 & 1) != v27)
        {
          v28 = v25 - 1;
          goto LABEL_11;
        }
      }

      v28 = v18;
LABEL_11:
      v21 = v95;
      a4 = v96;
      if (v104)
      {
        if (v28 < v95)
        {
          goto LABEL_126;
        }

        if (v95 < v28)
        {
          v94 = v6;
          v29 = v106 * (v28 - 1);
          v30 = v28 * v106;
          v104 = v28;
          v31 = v28;
          v32 = v95 * v106;
          do
          {
            if (v21 != --v31)
            {
              v33 = *v107;
              if (!*v107)
              {
                goto LABEL_132;
              }

              v5 = v33 + v32;
              sub_19203CFC0(v33 + v32, v99, type metadata accessor for ViewableTimelineEntry);
              if (v32 < v29 || v5 >= v33 + v30)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v32 != v29)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_19203CFC0(v99, v33 + v29, type metadata accessor for ViewableTimelineEntry);
            }

            ++v21;
            v29 -= v106;
            v30 -= v106;
            v32 += v106;
          }

          while (v21 < v31);
          v6 = v94;
          v21 = v95;
          a4 = v96;
          v28 = v104;
        }
      }
    }

    v34 = v107[1];
    if (v28 < v34)
    {
      if (__OFSUB__(v28, v21))
      {
        goto LABEL_125;
      }

      if (v28 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_127;
        }

        if ((v21 + a4) >= v34)
        {
          v35 = v107[1];
        }

        else
        {
          v35 = v21 + a4;
        }

        if (v35 < v21)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v28 != v35)
        {
          break;
        }
      }
    }

    v36 = v28;
    if (v28 < v21)
    {
      goto LABEL_124;
    }

LABEL_35:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v100;
    }

    else
    {
      v20 = sub_1920C2D78(0, *(v100 + 2) + 1, 1, v100);
    }

    a4 = *(v20 + 2);
    v37 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v37 >> 1)
    {
      v20 = sub_1920C2D78((v37 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v38 = &v20[16 * a4];
    *(v38 + 4) = v21;
    *(v38 + 5) = v36;
    v39 = *v97;
    if (!*v97)
    {
      goto LABEL_134;
    }

    v101 = v36;
    if (a4)
    {
      while (1)
      {
        v40 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v41 = *(v20 + 4);
          v42 = *(v20 + 5);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_54:
          if (v44)
          {
            goto LABEL_113;
          }

          v57 = &v20[16 * v5];
          v59 = *v57;
          v58 = *(v57 + 1);
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_116;
          }

          v63 = &v20[16 * v40 + 32];
          v65 = *v63;
          v64 = *(v63 + 1);
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_120;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v5 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v67 = &v20[16 * v5];
        v69 = *v67;
        v68 = *(v67 + 1);
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_68:
        if (v62)
        {
          goto LABEL_115;
        }

        v70 = &v20[16 * v40];
        v72 = *(v70 + 4);
        v71 = *(v70 + 5);
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_118;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v40 - 1;
        if (v40 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
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
          goto LABEL_128;
        }

        if (!*v107)
        {
          goto LABEL_131;
        }

        v78 = v20;
        v79 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v40 + 40];
        sub_19209B588(*v107 + *(v105 + 72) * v79, *v107 + *(v105 + 72) * *&v20[16 * v40 + 32], *v107 + *(v105 + 72) * v5, v39);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v79)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = sub_1920C4474(v78);
        }

        if (a4 >= *(v78 + 2))
        {
          goto LABEL_110;
        }

        v80 = &v78[16 * a4];
        *(v80 + 4) = v79;
        *(v80 + 5) = v5;
        v110 = v78;
        sub_19202F018(v40);
        v20 = v110;
        v5 = *(v110 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v45 = &v20[16 * v5 + 32];
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_111;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_112;
      }

      v52 = &v20[16 * v5];
      v54 = *v52;
      v53 = *(v52 + 1);
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_114;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_117;
      }

      if (v56 >= v48)
      {
        v74 = &v20[16 * v40 + 32];
        v76 = *v74;
        v75 = *(v74 + 1);
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_121;
        }

        if (v43 < v77)
        {
          v40 = v5 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v18 = v107[1];
    v19 = v101;
    a4 = v96;
    if (v101 >= v18)
    {
      goto LABEL_96;
    }
  }

  v94 = v6;
  v95 = v21;
  v81 = *v107;
  v82 = *(v105 + 72);
  v83 = *v107 + v82 * (v28 - 1);
  v84 = -v82;
  v85 = v21 - v28;
  v98 = v82;
  v5 = v81 + v28 * v82;
  v101 = v35;
LABEL_86:
  v103 = v85;
  v104 = v28;
  v102 = v5;
  v86 = v85;
  v106 = v83;
  while (1)
  {
    sub_19204E6EC(v5, v17, type metadata accessor for ViewableTimelineEntry);
    sub_19204E6EC(v83, v14, type metadata accessor for ViewableTimelineEntry);
    a4 = sub_192225100();
    sub_192046EE8(v14, type metadata accessor for ViewableTimelineEntry);
    sub_192046EE8(v17, type metadata accessor for ViewableTimelineEntry);
    if ((a4 & 1) == 0)
    {
LABEL_85:
      v28 = v104 + 1;
      v83 = v106 + v98;
      v85 = v103 - 1;
      v36 = v101;
      v5 = v102 + v98;
      if (v104 + 1 != v101)
      {
        goto LABEL_86;
      }

      v6 = v94;
      v21 = v95;
      if (v101 < v95)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!v81)
    {
      break;
    }

    a4 = type metadata accessor for ViewableTimelineEntry;
    v87 = v108;
    sub_19203CFC0(v5, v108, type metadata accessor for ViewableTimelineEntry);
    swift_arrayInitWithTakeFrontToBack();
    sub_19203CFC0(v87, v83, type metadata accessor for ViewableTimelineEntry);
    v83 += v84;
    v5 += v84;
    if (__CFADD__(v86++, 1))
    {
      goto LABEL_85;
    }
  }

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
}

void *sub_19202EAC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEC80, &qword_19222B070);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v39 = &v29 - v3;
  v4 = sub_192225A40();
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v29 - v8;
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    swift_beginAccess();
    v9 = sub_192046E20(a1, off_1ED74BF08);
    v10 = swift_endAccess();
    if (!v9)
    {
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_192228400();
      MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
      v40 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEC88, &qword_19222B078);
      sub_1922285A0();
      result = sub_192228620();
      __break(1u);
      return result;
    }

    (*(**(v9 + 16) + 80))(v10);
    v13 = sub_1920702EC(v11, v12);

    if (!v13)
    {

      return 0;
    }

    v14 = v13 & 0xFFFFFFFFFFFFFF8;
    if (!(v13 >> 62))
    {
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v37 = v9;
      if (!v15)
      {
        break;
      }

      goto LABEL_6;
    }

    v15 = sub_192228340();
    v37 = v9;
    if (!v15)
    {
      break;
    }

LABEL_6:
    v16 = 0;
    a1 = 0;
    v35 = (v31 + 56);
    v36 = v13 & 0xC000000000000001;
    v33 = (v31 + 32);
    v34 = (v31 + 48);
    v38 = MEMORY[0x1E69E7CC0];
    v29 = v6;
    v32 = v15;
    while (v36)
    {
      v17 = MEMORY[0x193B0B410](v16, v13);
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      v19 = v13;
      (*(**(v37 + 16) + 120))(*(v17 + 24), v4, v4);
      v20 = v39;
      (*v35)(v39, 0, 1, v4);

      if ((*v34)(v20, 1, v4) == 1)
      {
        sub_192033970(v20, &qword_1EADEEC80, &qword_19222B070);
      }

      else
      {
        v21 = *v33;
        v22 = v20;
        v23 = v30;
        (*v33)(v30, v22, v4);
        v21(v6, v23, v4);
        v24 = v38;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1920C339C(0, v24[2] + 1, 1, v24);
        }

        v26 = v24[2];
        v25 = v24[3];
        v38 = v24;
        if (v26 >= v25 >> 1)
        {
          v38 = sub_1920C339C((v25 > 1), v26 + 1, 1, v38);
        }

        v27 = v38;
        v38[2] = v26 + 1;
        v6 = v29;
        v21(&v27[((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26], v29, v4);
      }

      v13 = v19;
      ++v16;
      if (v18 == v32)
      {
        goto LABEL_27;
      }
    }

    if (v16 >= *(v14 + 16))
    {
      goto LABEL_23;
    }

    v17 = *(v13 + 8 * v16 + 32);

    v18 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      goto LABEL_12;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v38 = MEMORY[0x1E69E7CC0];
LABEL_27:

  return v38;
}

uint64_t sub_19202F018(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1920C4474(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetBackgroundStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetBackgroundStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t View.widgetAccentable(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v38 = a3;
  LODWORD(v34) = a1;
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v11 = sub_192225C70();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  v18 = sub_1922266F0();
  v36 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v33 - v20;
  if (v34)
  {
    v34 = v18;
    v22 = v38;
    MEMORY[0x193B0A190](v19);
    v39 = v22;
    v40 = MEMORY[0x1E69808F8];
    WitnessTable = swift_getWitnessTable();
    v23 = *(v12 + 16);
    v23(v17, v14, v11);
    v24 = *(v12 + 8);
    v24(v14, v11);
    v23(v14, v17, v11);
    v25 = v22;
    v18 = v34;
    sub_19202F62C(v14, v11, a2, WitnessTable, v25);
    v24(v14, v11);
    v24(v17, v11);
  }

  else
  {
    v26 = *(v5 + 16);
    v26(v10, WitnessTable, a2, v19);
    (v26)(v7, v10, a2);
    v27 = v38;
    v45 = v38;
    v46 = MEMORY[0x1E69808F8];
    v28 = swift_getWitnessTable();
    sub_1921BAB5C(v7, v11, a2, v28, v27);
    v29 = *(v5 + 8);
    v29(v7, a2);
    v29(v10, a2);
  }

  v30 = v38;
  v43 = v38;
  v44 = MEMORY[0x1E69808F8];
  v41 = swift_getWitnessTable();
  v42 = v30;
  swift_getWitnessTable();
  v31 = v36;
  (*(v36 + 16))(v37, v21, v18);
  return (*(v31 + 8))(v21, v18);
}

uint64_t sub_19202F62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1922266D0();
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return sub_1922266E0();
}

void *sub_19202F724@<X0>(_BYTE *a1@<X8>)
{
  sub_19202F774();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

unint64_t sub_19202F774()
{
  result = qword_1ED74B5C0;
  if (!qword_1ED74B5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B5C0);
  }

  return result;
}

void *EnvironmentValues.widgetRenderingMode.getter()
{
  sub_19202F774();

  return sub_1922261E0();
}

void sub_19202F84C(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v3 = sub_1922258B0();
    __swift_project_value_buffer(v3, qword_1ED74CCC8);
    v4 = a1;
    v5 = sub_192225890();
    v6 = sub_192227F90();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v7 = 136446466;
      *(v7 + 4) = sub_19202B8CC(0xD000000000000014, 0x800000019224B390, &v18);
      *(v7 + 12) = 2114;
      v10 = a1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v11;
      *v8 = v11;
      _os_log_impl(&dword_192028000, v5, v6, "%{public}s - error reloading all timelines: %{public}@", v7, 0x16u);
      sub_192033970(v8, &qword_1EADEEDF0, &qword_1922319C0);
      MEMORY[0x193B0C7F0](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x193B0C7F0](v9, -1, -1);
      MEMORY[0x193B0C7F0](v7, -1, -1);

      return;
    }

    v16 = a1;
  }

  else
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v12 = sub_1922258B0();
    __swift_project_value_buffer(v12, qword_1ED74CCC8);
    oslog = sub_192225890();
    v13 = sub_192227FB0();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_19202B8CC(0xD000000000000014, 0x800000019224B390, &v18);
      _os_log_impl(&dword_192028000, oslog, v13, "%{public}s - reloaded all timelines", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x193B0C7F0](v15, -1, -1);
      MEMORY[0x193B0C7F0](v14, -1, -1);

      return;
    }

    v16 = oslog;
  }
}

uint64_t sub_19202FB90(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v25 - v6;
  v8 = sub_19202B38C();
  aBlock[4] = sub_1921275BC;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1921BBB98;
  aBlock[3] = &block_descriptor_63;
  v9 = _Block_copy(aBlock);
  v10 = [v8 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);

  sub_1922282B0();
  swift_unknownObjectRelease();
  sub_19202A98C(aBlock, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0538, &unk_192234A88);
  if (swift_dynamicCast())
  {
    v11 = aBlock[7];
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v12 = sub_1922258B0();
    __swift_project_value_buffer(v12, qword_1ED74CCC8);

    v13 = sub_192225890();
    v14 = sub_192227FB0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25[0] = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_19202B8CC(a2, a3, v25);
      _os_log_impl(&dword_192028000, v13, v14, "Invalidate widget relevances for %{public}s.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x193B0C7F0](v16, -1, -1);
      MEMORY[0x193B0C7F0](v15, -1, -1);
    }

    v17 = sub_192227CF0();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v11;
    v18[5] = a2;
    v18[6] = a3;

    swift_unknownObjectRetain();
    sub_19211CA04(0, 0, v7, &unk_192234AC0, v18);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v19 = sub_1922258B0();
    __swift_project_value_buffer(v19, qword_1ED74CCC8);
    v20 = sub_192225890();
    v21 = sub_192227F90();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v25[0] = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_19202B8CC(0xD00000000000001DLL, 0x800000019224B370, v25);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x193B0C7F0](v23, -1, -1);
      MEMORY[0x193B0C7F0](v22, -1, -1);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

double sub_1920300A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_192227710();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_192227790();
  v10 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v3 + 16);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_19203040C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19202AB80;
  aBlock[3] = &block_descriptor_46;
  v14 = _Block_copy(aBlock);

  sub_192227740();
  v18 = MEMORY[0x1E69E7CC0];
  sub_19202A838(&qword_1ED74C620, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
  sub_1922282F0();
  MEMORY[0x193B0B040](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);

  return result;
}

void *sub_192030384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_192030418();
  if (result)
  {
    v4 = result;
    v5 = sub_192227930();
    [v4 reloadControlsOfKind_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_192030418()
{
  BSDispatchQueueAssert();
  sub_192030664();
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = v1;
    if ([v2 remoteTarget])
    {
      sub_1922282B0();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    v14[0] = v12;
    v14[1] = v13;
    if (*(&v13 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF22D8, &unk_192243A70);
      if (swift_dynamicCast())
      {

        return v11;
      }
    }

    else
    {
      sub_192030F04(v14);
    }

    if (qword_1EADED330 != -1)
    {
      swift_once();
    }

    v7 = sub_1922258B0();
    __swift_project_value_buffer(v7, qword_1EAE00788);
    v8 = sub_192225890();
    v9 = sub_192227FA0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_192028000, v8, v9, "Failed to cast connection to server interface protocol", v10, 2u);
      MEMORY[0x193B0C7F0](v10, -1, -1);
    }
  }

  else
  {
    if (qword_1EADED330 != -1)
    {
      swift_once();
    }

    v3 = sub_1922258B0();
    __swift_project_value_buffer(v3, qword_1EAE00788);
    v2 = sub_192225890();
    v4 = sub_192227FA0();
    if (os_log_type_enabled(v2, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_192028000, v2, v4, "Failed to establish a connection", v5, 2u);
      MEMORY[0x193B0C7F0](v5, -1, -1);
    }
  }

  return 0;
}

void sub_192030664()
{
  BSDispatchQueueAssert();
  sub_1920307C0();
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = v1;
    if ([v2 remoteTarget])
    {
      sub_1922282B0();
      swift_unknownObjectRelease();

      sub_192030F04(v7);
    }

    else
    {
      memset(v7, 0, sizeof(v7));
      sub_192030F04(v7);
      if (qword_1EADED330 != -1)
      {
        swift_once();
      }

      v3 = sub_1922258B0();
      __swift_project_value_buffer(v3, qword_1EAE00788);
      v4 = sub_192225890();
      v5 = sub_192227FB0();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_192028000, v4, v5, "Activating client connection.", v6, 2u);
        MEMORY[0x193B0C7F0](v6, -1, -1);
      }

      [v2 activate];
    }
  }
}

void sub_1920307C0()
{
  BSDispatchQueueAssert();
  if (*(v0 + 24))
  {
    return;
  }

  v1 = "expirationHandler";
  v2 = sub_192227930();
  v3 = sub_192227930();
  v12 = [objc_opt_self() endpointForMachName:v2 service:v3 instance:0];

  if (!v12)
  {
    goto LABEL_7;
  }

  v4 = [objc_opt_self() connectionWithEndpoint_];
  if (v4)
  {
    v5 = *(v0 + 24);
    *(v0 + 24) = v4;
    v6 = v4;

    v7 = swift_allocObject();
    *(v7 + 16) = sub_192030B60;
    *(v7 + 24) = v0;
    aBlock[4] = sub_192030B68;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_192030B0C;
    aBlock[3] = &block_descriptor_25;
    v1 = _Block_copy(aBlock);

    [v6 configureConnection_];

    _Block_release(v1);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if ((v6 & 1) == 0)
    {
      return;
    }

    __break(1u);
LABEL_7:
    if (qword_1EADED330 != -1)
    {
      swift_once();
    }

    v8 = sub_1922258B0();
    __swift_project_value_buffer(v8, qword_1EAE00788);
    v12 = sub_192225890();
    v9 = sub_192227FA0();
    if (os_log_type_enabled(v12, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      aBlock[0] = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_19202B8CC(0xD00000000000001ELL, v1 | 0x8000000000000000, aBlock);
      _os_log_impl(&dword_192028000, v12, v9, "Unable to get endpoint for mach-service: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x193B0C7F0](v11, -1, -1);
      MEMORY[0x193B0C7F0](v10, -1, -1);

      return;
    }
  }
}

uint64_t sub_192030B0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

void sub_192030B90(void *a1, uint64_t a2)
{
  v4 = sub_192227930();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  if (qword_1EADED6C0 != -1)
  {
    swift_once();
  }

  v6 = qword_1EADED6C8;
  v7 = objc_opt_self();
  v8 = [v7 protocolForProtocol_];
  [v5 setClient_];

  if (qword_1EADED6A8 != -1)
  {
    swift_once();
  }

  v9 = [v7 protocolForProtocol_];
  [v5 setServer_];

  if (qword_1EADED690 != -1)
  {
    swift_once();
  }

  [a1 setServiceQuality_];
  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  v17 = sub_1920311D0;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1921EC5C0;
  v16 = &block_descriptor_28;
  v10 = _Block_copy(&v13);
  [a1 setActivationHandler_];
  _Block_release(v10);
  v17 = sub_1921EC628;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1921EC5C0;
  v16 = &block_descriptor_31;
  v11 = _Block_copy(&v13);
  [a1 setInterruptionHandler_];
  _Block_release(v11);
  v17 = sub_1921EC634;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1921EC5C0;
  v16 = &block_descriptor_34_0;
  v12 = _Block_copy(&v13);
  [a1 setInvalidationHandler_];
  _Block_release(v12);
}

uint64_t sub_192030F04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF330, &unk_19222CD40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_36Tm()
{

  return swift_deallocObject();
}

id sub_192030FF0()
{
  result = [objc_opt_self() userInteractive];
  qword_1EADED698 = result;
  return result;
}

uint64_t sub_19203103C()
{
  v0 = sub_1922258B0();
  __swift_allocate_value_buffer(v0, qword_1EAE00788);
  __swift_project_value_buffer(v0, qword_1EAE00788);
  return sub_1922258A0();
}

id sub_1920310BC(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

void sub_192031164(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1920311DC(uint64_t a1, const char *a2)
{
  if (qword_1EADED330 != -1)
  {
    swift_once();
  }

  v3 = sub_1922258B0();
  __swift_project_value_buffer(v3, qword_1EAE00788);
  oslog = sub_192225890();
  v4 = sub_192227FB0();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_192028000, oslog, v4, a2, v5, 2u);
    MEMORY[0x193B0C7F0](v5, -1, -1);
  }
}

id sub_1920312CC(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

unint64_t sub_192031330()
{
  result = qword_1EADECA98;
  if (!qword_1EADECA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECA98);
  }

  return result;
}

unint64_t sub_192031384()
{
  result = qword_1EADECA30;
  if (!qword_1EADECA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1378, qword_19223AA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECA30);
  }

  return result;
}

double sub_192031418(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v42 = a4;
  v43 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1B98, &unk_1922404F0);
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v41 - v11;
  v46 = *a1;
  v12 = *(a1 + 8);
  if (qword_1EADECEC0 != -1)
  {
    swift_once();
  }

  v13 = sub_1922258B0();
  __swift_project_value_buffer(v13, qword_1EAE00728);

  v14 = sub_192225890();
  v15 = sub_192227FB0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = v12;
    v18 = swift_slowAlloc();
    v48[0] = v18;
    *v16 = 136446466;
    v19 = sub_19203418C();
    v21 = a2;
    v22 = sub_19202B8CC(v19, v20, v48);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v49[1] = v46;
    v50 = v17;
    v23 = WidgetExtensionSessionOperation.description.getter();
    v25 = sub_19202B8CC(v23, v24, v48);

    *(v16 + 14) = v25;
    a2 = v21;
    swift_arrayDestroy();
    v26 = v18;
    v12 = v17;
    MEMORY[0x193B0C7F0](v26, -1, -1);
    MEMORY[0x193B0C7F0](v16, -1, -1);
  }

  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  v28 = swift_allocObject();
  v29 = v46;
  *(v28 + 16) = v6;
  *(v28 + 24) = v29;
  *(v28 + 32) = v12;
  *(v28 + 40) = v27;
  *(v28 + 48) = a2;
  *(v28 + 56) = a3;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1920327B4;
  *(v30 + 24) = v28;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BA0, &qword_192240500);
  sub_192031E74(&qword_1EADECEA0, &qword_1EADF1BA0, &qword_192240500, MEMORY[0x1E695C038]);
  sub_192225920();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = v27;
  *(v33 + 32) = v29;
  *(v33 + 40) = v12;
  v34 = v43;
  *(v33 + 48) = v42;
  *(v33 + 56) = v34;
  *(v33 + 64) = v31;
  v35 = swift_allocObject();
  *(v35 + 16) = v6;
  *(v35 + 24) = v29;
  *(v35 + 32) = v12;
  sub_192031E74(&qword_1EADECE98, &qword_1EADF1B98, &unk_1922404F0, MEMORY[0x1E695C058]);

  v36 = v45;
  v37 = sub_192225970();

  swift_beginAccess();
  *(v31 + 16) = v37;

  v38 = *(v6 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_lock);
  os_unfair_lock_lock(*(v38 + 16));
  v39 = *(v31 + 16);
  if (v39)
  {
    swift_beginAccess();
    swift_retain_n();
    sub_192035074(v49, v39);
    swift_endAccess();
  }

  os_unfair_lock_unlock(*(v38 + 16));

  (*(v44 + 8))(v47, v36);

  return result;
}

uint64_t sub_192031984()
{

  return swift_deallocObject();
}

uint64_t sub_1920319BC()
{

  return swift_deallocObject();
}

uint64_t sub_192031A04()
{

  return swift_deallocObject();
}

uint64_t sub_192031A3C()
{

  return swift_deallocObject();
}

uint64_t sub_192031A8C()
{

  return swift_deallocObject();
}

unint64_t WidgetExtensionSessionOperation.description.getter()
{
  v1 = *(v0 + 8);
  if (v1 <= 1)
  {
    if (*(v0 + 8))
    {
      sub_192228400();

      v3 = 0xD000000000000010;
    }

    else
    {
      sub_192228400();

      v3 = 0xD000000000000014;
    }

    v6 = v3;
    goto LABEL_13;
  }

  if (v1 == 2)
  {
    sub_192228400();

    v2 = 0x6C656D6954746567;
    goto LABEL_8;
  }

  if (v1 == 3)
  {
    sub_192228400();

    v2 = 0x7669746341746567;
LABEL_8:
    v6 = v2;
LABEL_13:
    v5 = sub_192228910();
    MEMORY[0x193B0A990](v5);

    MEMORY[0x193B0A990](41, 0xE100000000000000);
    return v6;
  }

  result = 0x7263736544746567;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x72746E6F43746567;
      break;
    case 3:
      result = 0x72746E6F43746573;
      break;
    case 4:
      result = 0x546C6F72746E6F63;
      break;
    case 5:
      result = 0x6563616C50746567;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x6C656D6954746567;
      break;
    case 9:
      result = 0xD000000000000020;
      break;
    case 0xALL:
      result = 0x68737550646E6573;
      break;
    case 0xBLL:
      result = 0x754D656C646E6168;
      break;
    case 0xCLL:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_192031E74(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_192031EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BA0, &qword_192240500);
  swift_allocObject();

  result = sub_192225910();
  *a3 = result;
  return result;
}

uint64_t sub_192031F68(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t), uint64_t a8)
{
  v78 = a8;
  v79 = a7;
  v75 = a6;
  v82 = a5;
  v81 = a4;
  v74 = sub_192225150();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v71 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v70 - v13;
  if (qword_1EADECEC0 != -1)
  {
    swift_once();
  }

  v14 = sub_1922258B0();
  __swift_project_value_buffer(v14, qword_1EAE00728);

  v15 = sub_192225890();
  v16 = sub_192227FB0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v89[0] = v18;
    *v17 = 136446466;
    v19 = sub_19203418C();
    v21 = sub_19202B8CC(v19, v20, v89);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    aBlock = v81;
    LOBYTE(v84) = v82;
    v22 = WidgetExtensionSessionOperation.description.getter();
    v24 = sub_19202B8CC(v22, v23, v89);

    *(v17 + 14) = v24;
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v18, -1, -1);
    MEMORY[0x193B0C7F0](v17, -1, -1);
  }

  v25 = swift_allocObject();
  v80 = a1;
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  v77 = a2;

  v76 = sub_192038344(sub_1921C8AB0, v25);

  v26 = sub_1922255D0();
  LODWORD(v25) = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = HIDWORD(v26);
  v34 = HIDWORD(v27);
  v35 = HIDWORD(v29);
  v36 = HIDWORD(v31);
  v37 = objc_allocWithZone(MEMORY[0x1E698E620]);
  aBlock = __PAIR64__(v33, v25);
  v84 = __PAIR64__(v34, v28);
  v85 = __PAIR64__(v35, v30);
  v86 = __PAIR64__(v36, v32);
  v38 = [v37 initWithAuditToken_];
  [v38 pid];

  if (BSPIDIsBeingDebugged())
  {

    v39 = sub_192225890();
    v40 = sub_192227FB0();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v89[0] = v42;
      *v41 = 136446466;
      v43 = sub_19203418C();
      v45 = sub_19202B8CC(v43, v44, v89);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2082;
      aBlock = v81;
      LOBYTE(v84) = v82;
      v46 = WidgetExtensionSessionOperation.description.getter();
      v48 = sub_19202B8CC(v46, v47, v89);

      *(v41 + 14) = v48;
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v42, -1, -1);
      MEMORY[0x193B0C7F0](v41, -1, -1);
    }

    v49 = v77;
  }

  else
  {
    v50 = *(a3 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_watchdogTimeoutProvider);
    aBlock = v81;
    LOBYTE(v84) = v82;
    v50(&aBlock);
    v49 = v77;
    if ((v51 & 1) == 0)
    {
      aBlock = 0;
      v84 = 0xE000000000000000;
      sub_192228400();

      aBlock = 0x5B6E6F6973736553;
      v84 = 0xE800000000000000;
      sub_1922251B0();
      sub_192034F00(&qword_1EADED368, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v52 = sub_192228910();
      MEMORY[0x193B0A990](v52);

      MEMORY[0x193B0A990](0xD000000000000010, 0x800000019224DC40);
      v53 = objc_allocWithZone(MEMORY[0x1E698E7A0]);
      v54 = sub_192227930();

      v55 = [v53 initWithIdentifier_];

      v56 = v75;
      swift_beginAccess();
      v57 = *(v56 + 16);
      *(v56 + 16) = v55;

      swift_beginAccess();
      v58 = *(v56 + 16);
      if (v58)
      {
        v59 = v58;
        v60 = v71;
        _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
        v61 = v72;
        sub_1922250E0();
        v62 = *(v73 + 8);
        v63 = v74;
        v62(v60, v74);
        v64 = sub_1922250F0();
        v62(v61, v63);
        v65 = *(a3 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_watchdogTimeoutQueue);
        v66 = swift_allocObject();
        v67 = v81;
        *(v66 + 16) = a3;
        *(v66 + 24) = v67;
        *(v66 + 32) = v82;
        *(v66 + 40) = v80;
        *(v66 + 48) = v49;
        v87 = sub_1921C8B20;
        v88 = v66;
        aBlock = MEMORY[0x1E69E9820];
        v84 = 1107296256;
        v85 = sub_192037950;
        v86 = &block_descriptor_143_0;
        v68 = _Block_copy(&aBlock);

        [v59 scheduleForDate:v64 leewayInterval:v65 queue:v68 handler:1.0];
        _Block_release(v68);
      }
    }
  }

  v79(v76, v80, v49);
  return swift_unknownObjectRelease();
}

double sub_19203271C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(), uint64_t))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  a3(sub_1920394B0, v6);

  return result;
}

void sub_1920327C8(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_1921BBD34(a2);
  *a1 = v3;
  *(a1 + 8) = v4 & 1;
}

uint64_t sub_192032834(_BYTE *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v120 = a6;
  v119 = a5;
  v118 = a4;
  v117 = a3;
  v129 = a1;
  v126 = sub_1922256B0();
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v127 = &v107[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1922251B0();
  v124 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v107[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v107[-v12];
  v14 = sub_1922256D0();
  v128 = *(v14 - 8);
  v15 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v123 = &v107[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v107[-v17];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v107[-v20];
  MEMORY[0x1EEE9AC00](v22);
  v116 = &v107[-v23];
  v24 = a2;
  v25 = sub_192225690();
  v109 = v21;
  v110 = v13;
  v112 = v24;
  v121 = v18;
  v115 = v10;
  v123 = v8;
  v113 = [type metadata accessor for _WidgetExtensionBaseContext() _extensionAuxiliaryVendorProtocol];
  [v25 setRemoteObjectInterface_];
  [v25 resume];
  v26 = v128;
  v27 = v128 + 16;
  v122 = *(v128 + 16);
  v28 = v116;
  v122(v116, v129, v14);
  v29 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v30 = v25;
  v31 = swift_allocObject();
  v111 = *(v26 + 32);
  v111(v31 + v29, v28, v14);
  v139 = sub_1921C9388;
  v140 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v136 = 1107296256;
  v137 = sub_19202AB80;
  v138 = &block_descriptor_457;
  v32 = _Block_copy(&aBlock);

  [v30 setInterruptionHandler_];
  _Block_release(v32);
  v114 = v27;
  v122(v28, v129, v14);
  v33 = v14;
  v34 = swift_allocObject();
  v111(v34 + v29, v28, v14);
  v35 = v125;
  v139 = sub_19203A8B4;
  v140 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v136 = 1107296256;
  v36 = v127;
  v137 = sub_19202AB80;
  v138 = &block_descriptor_463;
  v37 = _Block_copy(&aBlock);

  v116 = v30;
  [v30 setInvalidationHandler_];
  _Block_release(v37);
  v38 = v117;
  v39 = v126;
  v40 = v124;
  v41 = v120;
  if (*v117 >= 3u)
  {
    if (qword_1EADECEC0 != -1)
    {
      swift_once();
    }

    v42 = sub_1922258B0();
    __swift_project_value_buffer(v42, qword_1EAE00728);
    v43 = v109;
    v122(v109, v129, v14);
    v44 = v110;
    v45 = v123;
    (*(v40 + 16))(v110, v41, v123);
    v46 = sub_192225890();
    v47 = sub_192227FB0();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      aBlock = v111;
      *v48 = 136446466;
      v108 = v47;
      v49 = sub_1922256C0();
      v50 = v38;
      v52 = v51;
      (*(v128 + 8))(v43, v33);
      v53 = sub_19202B8CC(v49, v52, &aBlock);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2082;
      sub_192034F00(&qword_1EADED368, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v54 = sub_192228910();
      v56 = v55;
      (*(v124 + 8))(v44, v45);
      v57 = sub_19202B8CC(v54, v56, &aBlock);
      v38 = v50;
      v41 = v120;

      *(v48 + 14) = v57;
      _os_log_impl(&dword_192028000, v46, v108, "[%{public}s-%{public}s] Created a new WidgetExtensionSession at user interactive priority.", v48, 0x16u);
      v58 = v111;
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v58, -1, -1);
      v59 = v48;
      v40 = v124;
      MEMORY[0x193B0C7F0](v59, -1, -1);
    }

    else
    {

      (*(v40 + 8))(v44, v45);
      (*(v128 + 8))(v43, v33);
    }

    v35 = v125;
    v36 = v127;
  }

  v122(v121, v129, v33);
  v60 = *(v35 + 16);
  v60(v36, v112, v39);
  v61 = *(v40 + 16);
  v61(v115, v41, v123);
  if (qword_1EADECB90 != -1)
  {
    swift_once();
  }

  v62 = v33;
  v117 = qword_1EADECB98;
  if (qword_1EADECAD0 != -1)
  {
    swift_once();
  }

  v63 = qword_1EAE006B0;
  sub_19202CFFC((v38 + 8), &aBlock, &qword_1EADF1B88, qword_192240150);
  LODWORD(v111) = v38[49];
  LODWORD(v112) = *v38;
  v64 = type metadata accessor for _RunningBoardInterface();
  v134[3] = v64;
  v134[4] = &off_1F06B4A90;
  v134[0] = v63;
  type metadata accessor for _WidgetExtensionSession(0);
  v65 = swift_allocObject();
  v66 = __swift_mutable_project_boxed_opaque_existential_1(v134, v64);
  v129 = v107;
  v67 = MEMORY[0x1EEE9AC00](v66);
  v69 = &v107[-((v68 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v70 + 16))(v69, v67);
  v71 = *v69;
  v133[3] = v64;
  v133[4] = &off_1F06B4A90;
  v133[0] = v71;
  v72 = (v65 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession____lazy_storage___loggingIdentifier);
  *v72 = 0;
  v72[1] = 0;
  v73 = OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_lock;
  type metadata accessor for UnfairLock();
  v74 = swift_allocObject();
  v120 = v63;
  swift_retain_n();
  v75 = swift_slowAlloc();
  *v75 = 0;
  *(v74 + 16) = v75;
  *(v65 + v73) = v74;
  *(v65 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_subscriptions) = MEMORY[0x1E69E7CD0];
  *(v65 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_widgetExtensionAssertion) = 0;
  *(v65 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_boostedWidgetExtensionAssertion) = 0;
  *(v65 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_boostToForegroundPriority) = 0;
  *(v65 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_lock_invalidated) = 0;
  v76 = v62;
  v122((v65 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession__exExtensionIdentity), v121, v62);
  v60((v65 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession__exExtensionProcess), v127, v126);
  v77 = v115;
  v61((v65 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_sessionUUID), v115, v123);
  v78 = v116;
  *(v65 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_connection) = v116;
  v79 = v117;
  *(v65 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_watchdogTimeoutQueue) = v117;
  v80 = (v65 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_watchdogTimeoutProvider);
  v81 = v119;
  *v80 = v118;
  v80[1] = v81;
  sub_192033A64(v133, v65 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_rbsInterface);
  sub_19202CFFC(&aBlock, v65 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_suspensionObserver, &qword_1EADF1B88, qword_192240150);
  v82 = v111;
  *(v65 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_shouldTakeExtensionAssertion) = v111;
  v131 = &type metadata for FeatureFlags.Widgets;
  v83 = sub_19202DBA4();
  v132 = v83;
  LOBYTE(v130[0]) = 18;
  v84 = v78;
  v85 = v79;

  LOBYTE(v81) = sub_192225420();
  __swift_destroy_boxed_opaque_existential_1(v130);
  v86 = (v81 & 1) == 0;
  v87 = v112;
  if (v86)
  {
    v88 = 2;
  }

  else
  {
    v88 = v112;
  }

  *(v65 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_schedulingPriority) = v88;
  if (v82 == 1)
  {
    v131 = &type metadata for FeatureFlags.Widgets;
    v132 = v83;
    LOBYTE(v130[0]) = 18;
    v89 = sub_192225420();
    __swift_destroy_boxed_opaque_existential_1(v130);
    if (v89)
    {
      if (v87 < 2)
      {
        v93 = "WidgetExtensionRun-QOS-Utility";
        goto LABEL_22;
      }

      if (v87 - 3 < 2)
      {
        v91 = "WaitForWidgetSuspension";
        v92 = 0xD000000000000024;
        goto LABEL_23;
      }
    }

    v93 = "WidgetExtensionRun-QOS-Default";
LABEL_22:
    v91 = v93 - 32;
    v92 = 0xD00000000000001ELL;
LABEL_23:
    v94 = sub_192033AC8(v92, v91 | 0x8000000000000000, 0xD000000000000011, 0x800000019224D340, v90);

    v77 = v115;
    if (v94)
    {
      *(v65 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_widgetExtensionAssertion) = v94;
      swift_unknownObjectRelease();
    }
  }

  if (qword_1EADECEC0 != -1)
  {
    swift_once();
  }

  v95 = sub_1922258B0();
  __swift_project_value_buffer(v95, qword_1EAE00728);

  v96 = sub_192225890();
  v97 = sub_192227FB0();

  v98 = os_log_type_enabled(v96, v97);
  v99 = v127;
  if (v98)
  {
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v130[0] = v101;
    *v100 = 136446210;
    v102 = sub_19203418C();
    v104 = sub_19202B8CC(v102, v103, v130);
    v122 = v76;
    v105 = v104;

    *(v100 + 4) = v105;
    _os_log_impl(&dword_192028000, v96, v97, "%{public}s Session initialized", v100, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v101);
    MEMORY[0x193B0C7F0](v101, -1, -1);
    MEMORY[0x193B0C7F0](v100, -1, -1);

    sub_192033970(&aBlock, &qword_1EADF1B88, qword_192240150);
    (*(v124 + 8))(v77, v123);
    (*(v125 + 8))(v99, v126);
    (*(v128 + 8))(v121, v122);
  }

  else
  {

    sub_192033970(&aBlock, &qword_1EADF1B88, qword_192240150);
    (*(v124 + 8))(v77, v123);
    (*(v125 + 8))(v99, v126);
    (*(v128 + 8))(v121, v76);
  }

  __swift_destroy_boxed_opaque_existential_1(v133);
  __swift_destroy_boxed_opaque_existential_1(v134);
  return v65;
}

uint64_t sub_192033970(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for _WidgetExtensionSession(uint64_t a1)
{
  result = qword_1EADECCB0;
  if (!qword_1EADECCB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_192033A64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_192033AC8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v79 = *MEMORY[0x1E69E9840];
  v6 = v5;
  v72 = sub_1922255D0();
  v73 = v7;
  v74 = v8;
  v75 = v9;
  v76 = v10;
  v77 = v11;
  v78 = v12;
  v13 = [objc_allocWithZone(MEMORY[0x1E698E620]) initWithAuditToken_];
  v14 = [v13 pid];

  if (v14 < 1)
  {
    return 0;
  }

  v66 = v6;
  v15 = sub_1922255D0();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = HIDWORD(v15);
  v24 = HIDWORD(v17);
  v25 = HIDWORD(v19);
  v26 = HIDWORD(v21);
  v27 = objc_allocWithZone(MEMORY[0x1E698E620]);
  v72 = __PAIR64__(v23, v16);
  v73 = v18;
  v74 = v24;
  v75 = v20;
  v76 = v25;
  v77 = v22;
  v78 = v26;
  v28 = [v27 initWithAuditToken_];
  v29 = [v28 pid];

  v30 = [objc_opt_self() targetWithPid_];
  v31 = sub_192227930();
  v32 = sub_192227930();
  v33 = [objc_opt_self() attributeWithDomain:v31 name:v32];

  sub_19203418C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD8, &qword_19222CAF0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_19222C680;
  *(v34 + 32) = v33;
  v35 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v36 = v30;
  v37 = v33;
  v38 = sub_192227930();

  sub_19202A7A8(0, &qword_1ED748560, 0x1E69C7550);
  v39 = sub_192227B60();

  v40 = [v35 initWithExplanation:v38 target:v36 attributes:v39];

  v72 = 0;
  if (![v40 acquireWithError_])
  {
    v70 = v37;
    v51 = v72;
    v52 = sub_192224F90();

    swift_willThrow();
    if (qword_1EADECEC0 != -1)
    {
      swift_once();
    }

    v53 = sub_1922258B0();
    __swift_project_value_buffer(v53, qword_1EAE00728);

    v54 = v52;
    v55 = sub_192225890();
    v56 = sub_192227F90();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v68 = v36;
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v72 = v59;
      *v57 = 136446722;
      v60 = *(v6 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession____lazy_storage___loggingIdentifier);
      v61 = *(v6 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession____lazy_storage___loggingIdentifier + 8);

      v62 = sub_19202B8CC(v60, v61, &v72);

      *(v57 + 4) = v62;
      *(v57 + 12) = 2082;
      *(v57 + 14) = sub_19202B8CC(a1, a2, &v72);
      *(v57 + 22) = 2114;
      v63 = v52;
      v64 = _swift_stdlib_bridgeErrorToNSError();
      *(v57 + 24) = v64;
      *v58 = v64;
      _os_log_impl(&dword_192028000, v55, v56, "%{public}s unable to acquire %{public}s error: %{public}@", v57, 0x20u);
      sub_192033970(v58, &qword_1EADEEDF0, &qword_1922319C0);
      MEMORY[0x193B0C7F0](v58, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v59, -1, -1);
      MEMORY[0x193B0C7F0](v57, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v41 = qword_1EADECEC0;
  v42 = v72;
  if (v41 != -1)
  {
    swift_once();
  }

  v43 = sub_1922258B0();
  __swift_project_value_buffer(v43, qword_1EAE00728);

  v44 = sub_192225890();
  v45 = sub_192227FB0();

  if (os_log_type_enabled(v44, v45))
  {
    v67 = v36;
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v72 = v47;
    *v46 = 136446466;
    v48 = *(v66 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession____lazy_storage___loggingIdentifier);
    v49 = *(v66 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession____lazy_storage___loggingIdentifier + 8);

    v50 = sub_19202B8CC(v48, v49, &v72);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2082;
    *(v46 + 14) = sub_19202B8CC(a1, a2, &v72);
    _os_log_impl(&dword_192028000, v44, v45, "%{public}s acquired %{public}s", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v47, -1, -1);
    MEMORY[0x193B0C7F0](v46, -1, -1);
  }

  else
  {
  }

  return v40;
}

uint64_t sub_19203418C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - v3;
  v5 = (v0 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession____lazy_storage___loggingIdentifier);
  if (*(v0 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession____lazy_storage___loggingIdentifier + 8))
  {
    v6 = *v5;
  }

  else
  {
    v7 = OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_sessionUUID;
    sub_1922256C0();
    sub_192225500();
    v6 = static WidgetExtensionSession.makeLoggingIdentifier(sessionIdentifier:extensionBundleIdentifier:deviceIdentifier:)(v0 + v7, v4, 0, 0);
    v9 = v8;
    (*(v2 + 8))(v4, v1);
    *v5 = v6;
    v5[1] = v9;
  }

  return v6;
}

uint64_t static WidgetExtensionSession.makeLoggingIdentifier(sessionIdentifier:extensionBundleIdentifier:deviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_192034664();
    sub_192227E10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1378, qword_19223AA30);
    sub_192031384();
    sub_192031330();
    v14 = sub_192227AF0();
    v5 = v4;
  }

  else
  {
    v14 = 0;
    v5 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  sub_192225510();
  sub_192034664();
  sub_192227E10();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1378, qword_19223AA30);
  sub_192031384();
  sub_192031330();
  v6 = sub_192227AF0();
  v8 = v7;

  sub_192225160();
  sub_192227E10();

  v9 = sub_192227AF0();
  v11 = v10;

  if (v5)
  {
    MEMORY[0x193B0A990](45, 0xE100000000000000);
    v12 = v14;
  }

  else
  {
    v12 = 0;
    v5 = 0xE000000000000000;
  }

  MEMORY[0x193B0A990](v12, v5);

  MEMORY[0x193B0A990](v6, v8);

  MEMORY[0x193B0A990](45, 0xE100000000000000);
  MEMORY[0x193B0A990](v9, v11);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  return 91;
}

unint64_t sub_192034664()
{
  result = qword_1EADECAB8;
  if (!qword_1EADECAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECAB8);
  }

  return result;
}

uint64_t sub_1920346B8()
{
  sub_19202DC80();

  return swift_deallocClassInstance();
}

uint64_t sub_192034714()
{
  MEMORY[0x193B0C7F0](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

double sub_19203476C(uint64_t a1, int a2, void *aBlock, void (*a4)(uint64_t, void *))
{
  v5 = _Block_copy(aBlock);
  _Block_copy(v5);

  a4(v6, v5);
  _Block_release(v5);
  _Block_release(v5);

  return result;
}

void sub_1920347E0(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v26 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  _Block_copy(a2);
  sub_1922256C0();
  sub_192225500();
  if (qword_1EADECB58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_192033A64(&qword_1EADECB60, &v28);
  v8 = v29;
  v9 = v30;
  __swift_project_boxed_opaque_existential_1(&v28, v29);
  v10 = (*(v9 + 8))(v6, v8, v9);
  (*(v4 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_1(&v28);
  if (v10)
  {
    v21 = sub_192034C60(v10);
    *&v28 = 1;
    BYTE8(v28) = 4;
    v22 = swift_allocObject();
    v22[2] = v10;
    v22[3] = v21;
    v22[4] = sub_1920396F0;
    v22[5] = v7;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1920396F0;
    *(v23 + 24) = v7;
    swift_retain_n();
    v24 = v10;
    v25 = v21;
    sub_192031418(&v28, sub_192034F48, v22, sub_1921C9410, v23);
  }

  else
  {
    v11 = *MEMORY[0x1E69941E8];
    v12 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v13 = sub_192227960();
    v15 = v14;
    v29 = MEMORY[0x1E69E6158];
    *&v28 = 0xD000000000000011;
    *(&v28 + 1) = 0x800000019224B830;
    sub_19203BEDC(&v28, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26[1] = v12;
    sub_19213DB28(v27, v13, v15, isUniquelyReferenced_nonNull_native);

    v17 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v18 = sub_192227830();

    v19 = [v17 initWithDomain:v11 code:1300 userInfo:v18];

    v20 = sub_192224F80();
    (a2)[2](a2, 0, v20);
  }
}

uint64_t sub_192034C1C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

id sub_192034C60(uint64_t a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v2 = sub_192225510();
  v4 = v3;
  swift_endAccess();
  v5 = objc_allocWithZone(MEMORY[0x1E69635D0]);
  result = sub_192034E34(v2, v4);
  if (!v1 && !result)
  {
    v7 = *MEMORY[0x1E69941E8];
    v8 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v9 = sub_192227960();
    v11 = v10;
    v17 = MEMORY[0x1E69E6158];
    *&v16 = 0xD000000000000011;
    *(&v16 + 1) = 0x800000019224B830;
    sub_19203BEDC(&v16, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = v8;
    sub_19213DB28(v15, v9, v11, isUniquelyReferenced_nonNull_native);

    v13 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v14 = sub_192227830();

    [v13 initWithDomain:v7 code:1300 userInfo:v14];

    swift_willThrow();
    return 0;
  }

  return result;
}

id sub_192034E34(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = sub_192227930();

  v8[0] = 0;
  v4 = [v2 initWithBundleIdentifier:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_192224F90();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_192034F00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_192034F54(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a2;
  v14[5] = a3;
  v14[6] = a6;
  v14[7] = a7;
  v18[4] = sub_192037A3C;
  v18[5] = v14;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_192037950;
  v18[3] = &block_descriptor_416;
  v15 = _Block_copy(v18);
  v16 = a4;
  v17 = a5;

  [a1 getAllCurrentDescriptorsWithCompletion_];
  _Block_release(v15);
}

uint64_t sub_192035074(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_192228350();

    if (v8)
    {

      sub_1922258F0();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_192228340();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1921C2580(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_1921C2EB0(v17 + 1);
    }

    sub_1921C34DC(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_1922258F0();
  sub_192034F00(&unk_1EADECEB0, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
  v10 = sub_192227880();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_192035314(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_192034F00(&qword_1EADECEA8, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
  while ((sub_192227910() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

void sub_192035314(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1921C2EB0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1921C3CDC(&qword_1EADF1BA8, &qword_192240508);
      goto LABEL_12;
    }

    sub_19203550C(v6 + 1);
  }

  v8 = *v3;
  sub_1922258F0();
  sub_192034F00(&unk_1EADECEB0, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
  v9 = sub_192227880();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_192034F00(&qword_1EADECEA8, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
    while ((sub_192227910() & 1) == 0)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_192228A30();
  __break(1u);
}

void sub_19203550C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BA8, &qword_192240508);
  v4 = sub_1922283C0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v27 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1922258F0();
      sub_192034F00(&unk_1EADECEB0, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);

      v18 = sub_192227880();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v26;
      v10 = v27;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v27 = (v16 - 1) & v16;
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
    *v2 = v5;
  }
}

id sub_192035854(void *a1)
{
  v13 = sub_192228070();
  v3 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_192228050();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_192227790();
  MEMORY[0x1EEE9AC00](v7 - 8);
  *&v1[OBJC_IVAR____TtCC9WidgetKit24WidgetExtensionXPCServer14ExportedObject_previewAgent] = 0;
  *&v1[OBJC_IVAR____TtCC9WidgetKit24WidgetExtensionXPCServer14ExportedObject_urlHandlers] = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR____TtCC9WidgetKit24WidgetExtensionXPCServer14ExportedObject_xpcConnection] = a1;
  v8 = sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);
  v12[0] = "ptors(completion:)";
  v12[1] = v8;
  v9 = a1;
  sub_192227770();
  v15 = MEMORY[0x1E69E7CC0];
  sub_192035B0C(&qword_1ED74C5D8, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF22E0, &qword_19222B820);
  sub_19202A880(&unk_1ED74C5E0, &unk_1EADF22E0, &qword_19222B820);
  sub_1922282F0();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8098], v13);
  *&v1[OBJC_IVAR____TtCC9WidgetKit24WidgetExtensionXPCServer14ExportedObject__queue] = sub_1922280A0();
  v10 = type metadata accessor for WidgetExtensionXPCServer.ExportedObject();
  v14.receiver = v1;
  v14.super_class = v10;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_192035B0C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_192035B88()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

double sub_192035BC4(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);

  return result;
}

uint64_t sub_192035C54(uint64_t a1, uint64_t a2)
{
  v4 = sub_192227710();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_192227790();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1922252A0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v12 = sub_1922258B0();
  __swift_project_value_buffer(v12, qword_1ED74CCC8);
  v13 = sub_192225890();
  v14 = sub_192227FB0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v32 = a2;
    v17 = v16;
    aBlock[0] = v16;
    *v15 = 136446466;
    *(v15 + 4) = sub_19202B8CC(0xD000000000000025, 0x80000001922492F0, aBlock);
    *(v15 + 12) = 2082;
    sub_192225240();
    sub_192035B0C(&unk_1ED74C4F0, 255, MEMORY[0x1E6969770], MEMORY[0x1E6969798]);
    v18 = sub_192228910();
    v19 = v9;
    v20 = v7;
    v21 = a1;
    v23 = v22;
    (*(v19 + 8))(v11, v8);
    v24 = sub_19202B8CC(v18, v23, aBlock);
    a1 = v21;
    v7 = v20;

    *(v15 + 14) = v24;
    _os_log_impl(&dword_192028000, v13, v14, "=+= %{public}s - locale: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    v25 = v17;
    a2 = v32;
    MEMORY[0x193B0C7F0](v25, -1, -1);
    MEMORY[0x193B0C7F0](v15, -1, -1);
  }

  sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);
  v26 = sub_192228080();
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  *(v27 + 24) = a2;
  aBlock[4] = sub_192036270;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19202AB80;
  aBlock[3] = &block_descriptor_220;
  v28 = _Block_copy(aBlock);

  sub_192227740();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_192035B0C(&qword_1ED74C620, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
  v29 = v34;
  v30 = v37;
  sub_1922282F0();
  MEMORY[0x193B0B040](0, v7, v29, v28);
  _Block_release(v28);

  (*(v36 + 8))(v29, v30);
  return (*(v33 + 8))(v7, v35);
}

uint64_t sub_192036194()
{

  return swift_deallocObject();
}

void sub_1920361CC(void (*a1)(void))
{
  if (xmmword_1ED74CC80)
  {
    v2 = (*(qword_1ED74CC90 + 32))(*xmmword_1ED74CC80);
    a1();
  }

  else
  {
    __break(1u);
  }
}

id sub_192036278()
{
  sub_192036354();
  v1 = v0;
  sub_19203850C();
  v3 = v2;
  sub_192036A80();
  v5 = v4;
  v6 = type metadata accessor for DescriptorFetchResult();
  v7 = objc_allocWithZone(v6);
  v9 = sub_192036D98(v1, v8);

  *&v7[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors] = v9;
  *&v7[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_activityDescriptors] = v5;
  *&v7[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors] = v3;
  v11.receiver = v7;
  v11.super_class = v6;
  return objc_msgSendSuper2(&v11, sel_init);
}

void sub_192036354()
{
  v1 = v0;
  v2 = type metadata accessor for WidgetDescriptor(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    v11 = sub_192227960();
    v13 = v12;

    v14 = sub_192036694();
    v15 = v14[2];
    if (v15)
    {
      v26 = MEMORY[0x1E69E7CC0];
      sub_192228520();
      v16 = sub_19202A7A8(0, &qword_1ED749A50, 0x1E6994310);
      v17 = *(v1 + 24);
      v24 = *(v1 + 16);
      v25 = v16;
      v18 = v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v19 = *(v3 + 72);
      v22 = v14;
      v23 = v19;
      do
      {
        sub_192036754(v18, v8, type metadata accessor for WidgetDescriptor);
        sub_192036754(v8, v5, type metadata accessor for WidgetDescriptor);

        v20 = v24;
        sub_1920367C8(v24, v17);
        v21 = sub_1921ADC0C(v5, v11, v13, v20, v17);
        [v21 copy];
        sub_1922282B0();

        swift_unknownObjectRelease();
        sub_192036A20(v8, type metadata accessor for WidgetDescriptor);
        sub_19202A7A8(0, &qword_1ED74C500, 0x1E6994388);
        swift_dynamicCast();
        sub_1922284F0();
        sub_192228530();
        sub_192228540();
        sub_192228500();
        v18 += v23;
        --v15;
      }

      while (v15);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_19203665C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_192036694()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v1 = sub_192081CBC();
    *(v0 + 40) = v1;
  }

  return v1;
}

void *sub_1920366F4()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v1 = sub_1921ABC08();
    *(v0 + 56) = v1;
  }

  return v1;
}

uint64_t sub_192036754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1920367C8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

double sub_19203683C@<D0>(__int128 *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_192038FB8(v2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v10 = v6[3];
      a1[2] = v6[2];
      a1[3] = v10;
      a1[4] = v6[4];
      *(a1 + 73) = *(v6 + 73);
      v9 = *v6;
      v11 = v6[1];
      *a1 = *v6;
      a1[1] = v11;
      return *&v9;
    }

LABEL_6:
    sub_19207D1F8(v6, type metadata accessor for ViewSource);
    *&v9 = 0;
    *a1 = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    a1[4] = 0u;
    *(a1 + 73) = 0u;
    return *&v9;
  }

  if (!EnumCaseMultiPayload)
  {
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0);

  v8 = sub_1922253B0();
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  *(a1 + 73) = 0u;
  (*(*(v8 - 8) + 8))(v6, v8);
  return *&v9;
}

uint64_t sub_1920369C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_192036A20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_192036A80()
{
  v1 = v0;
  v2 = type metadata accessor for WidgetDescriptor(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    v11 = sub_192227960();
    v13 = v12;

    v14 = sub_192039194();
    v15 = v14[2];
    if (v15)
    {
      v27 = MEMORY[0x1E69E7CC0];
      sub_192228520();
      v16 = sub_19202A7A8(0, qword_1EADEE810, 0x1E6994308);
      v17 = *(v1 + 24);
      v25 = *(v1 + 16);
      v26 = v16;
      v18 = v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v19 = *(v3 + 72);
      v23 = v14;
      v24 = v19;
      do
      {
        sub_192036754(v18, v8, type metadata accessor for WidgetDescriptor);
        sub_192036754(v8, v5, type metadata accessor for WidgetDescriptor);

        v20 = v25;
        sub_1920367C8(v25, v17);
        v21 = sub_1921AF35C(v5, v11, v13, v20, v17);
        v22 = sub_192039140(v20, v17);
        [v21 copy];
        sub_1922282B0();

        swift_unknownObjectRelease();
        sub_192036A20(v8, type metadata accessor for WidgetDescriptor);
        sub_19202A7A8(0, &qword_1ED749D10, 0x1E6994358);
        swift_dynamicCast();
        sub_1922284F0();
        sub_192228530();
        sub_192228540();
        sub_192228500();
        v18 += v24;
        --v15;
      }

      while (v15);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_192036D98(unint64_t a1, __n128 a2)
{
  v2 = a1;
  v35 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_192228340())
  {
    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v6 = v2 & 0xFFFFFFFFFFFFFF8;
    v7 = &property descriptor for StorageBackedControlArchive.state;
    v31 = i;
    v32 = v2;
    v30 = v2 & 0xC000000000000001;
    v33 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v5)
      {
        v8 = MEMORY[0x193B0B410](v4, v2);
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_19;
        }

        v8 = *(v2 + 8 * v4 + 32);
      }

      v9 = v8;
      v10 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v8 v7[392]])
      {
        sub_1922284F0();
        sub_192228530();
        sub_192228540();
        sub_192228500();
      }

      else
      {
        if (qword_1ED74C6B0 != -1)
        {
          swift_once();
        }

        v11 = sub_1922258B0();
        __swift_project_value_buffer(v11, qword_1ED74CCC8);
        v12 = v9;
        v13 = sub_192225890();
        v14 = sub_192227FB0();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v34 = v16;
          *v15 = 136315394;
          v17 = [v12 kind];
          v18 = sub_192227960();
          v20 = v19;

          v21 = sub_19202B8CC(v18, v20, &v34);

          *(v15 + 4) = v21;
          *(v15 + 12) = 2082;
          v22 = [v12 extensionBundleIdentifier];
          v23 = sub_192227960();
          v25 = v24;

          v26 = v23;
          v2 = v32;
          v27 = sub_19202B8CC(v26, v25, &v34);
          i = v31;

          *(v15 + 14) = v27;
          _os_log_impl(&dword_192028000, v13, v14, "Descriptor for %s from %{public}s has no supportedFamilies", v15, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x193B0C7F0](v16, -1, -1);
          v28 = v15;
          v5 = v30;
          MEMORY[0x193B0C7F0](v28, -1, -1);
        }

        v6 = v33;
        v7 = &property descriptor for StorageBackedControlArchive.state;
      }

      ++v4;
      if (v10 == i)
      {
        return v35;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_192037168(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1920B3B44;

  return sub_192037220(a1, v4);
}

uint64_t sub_192037220(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_192120F00;

  return v6(a1);
}

uint64_t sub_192037318(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1920B3B44;

  return sub_1920373E0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1920373E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  return MEMORY[0x1EEE6DFA0](sub_192037404, 0, 0);
}

uint64_t sub_192037404()
{
  v1 = v0[18];
  v2 = sub_192227930();
  v0[21] = v2;
  v0[2] = v0;
  v0[3] = sub_192127778;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0548, &qword_192234AB0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_192127CAC;
  v0[13] = &block_descriptor_70;
  v0[14] = v3;
  [v1 invalidateRelevancesOfKind:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

id DescriptorFetchResult.init(coder:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADEFAE0, &unk_19222FF10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_19222B490;
  v3 = sub_19202A7A8(0, &qword_1ED74C6A0, 0x1E695DEC8);
  *(v2 + 32) = v3;
  *(v2 + 40) = sub_19202A7A8(0, &qword_1ED74C500, 0x1E6994388);
  sub_192228150();

  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF0420, &qword_192233BB0);
    if (swift_dynamicCast())
    {
      v4 = v17;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    sub_192030F04(v19);
    v4 = 0;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_19222B490;
  *(v5 + 32) = v3;
  *(v5 + 40) = sub_19202A7A8(0, &qword_1ED749A58, 0x1E6994248);
  sub_192228150();

  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0418, &qword_192233BA8);
    if (swift_dynamicCast())
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    sub_192030F04(v19);
    v6 = 0;
  }

  v7 = sub_192227930();
  v8 = [a1 containsValueForKey_];

  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_19222B490;
    *(v9 + 32) = v3;
    *(v9 + 40) = sub_19202A7A8(0, &qword_1ED749D10, 0x1E6994358);
    sub_192228150();

    if (!v20)
    {

      sub_192030F04(v19);
      goto LABEL_22;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0410, &qword_192233BA0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_22;
    }

    v10 = v17;
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    if (!v6)
    {
LABEL_15:

      goto LABEL_22;
    }
  }

  if (v4)
  {
    v11 = type metadata accessor for DescriptorFetchResult();
    v12 = objc_allocWithZone(v11);
    v14 = sub_192036D98(v4, v13);

    *&v12[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors] = v14;
    *&v12[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_activityDescriptors] = v10;
    *&v12[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors] = v6;
    v18.receiver = v12;
    v18.super_class = v11;
    v15 = objc_msgSendSuper2(&v18, sel_init);

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v15;
  }

LABEL_22:
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

double sub_19203795C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t (*)(), void *, void), uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  v11 = sub_192037A54(a2, a3, a8);
  v12 = swift_allocObject();
  v12[2] = a6;
  v12[3] = a7;
  v12[4] = v11;

  v13 = v11;
  a4(sub_1920396BC, v12, 0);

  return result;
}

id sub_192037A54(uint64_t a1, void *a2, __n128 a3)
{
  v4 = v3;
  v7 = *(v3 + OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors);
  if (v7 >> 62)
  {
    v8 = sub_192228340();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v32 = MEMORY[0x1E69E7CC0];
    result = sub_192228520();
    if (v8 < 0)
    {
      __break(1u);
      goto LABEL_36;
    }

    v11 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x193B0B410](v11, v7);
      }

      else
      {
        v12 = *(v7 + 8 * v11 + 32);
      }

      v13 = v12;
      ++v11;
      sub_1921BD21C(a1, a2);

      sub_1922284F0();
      sub_192228530();
      sub_192228540();
      sub_192228500();
    }

    while (v8 != v11);
    v9 = v32;
  }

  v30 = v9;
  v14 = *(v4 + OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors);
  if (v14 >> 62)
  {
    v15 = sub_192228340();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v32 = MEMORY[0x1E69E7CC0];
    result = sub_192228520();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v17 = 0;
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x193B0B410](v17, v14);
        }

        else
        {
          v18 = *(v14 + 8 * v17 + 32);
        }

        v19 = v18;
        ++v17;
        sub_192037DC4(a1, a2);

        sub_1922284F0();
        sub_192228530();
        sub_192228540();
        sub_192228500();
      }

      while (v15 != v17);
      v16 = v32;
      goto LABEL_21;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_21:
  v20 = *(v4 + OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_activityDescriptors);
  if (v20 >> 62)
  {
    v21 = sub_192228340();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = MEMORY[0x1E69E7CC0];
  if (!v21)
  {
LABEL_31:
    v26 = type metadata accessor for DescriptorFetchResult();
    v27 = objc_allocWithZone(v26);
    v29 = sub_192036D98(v30, v28);

    *&v27[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors] = v29;
    *&v27[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_activityDescriptors] = v22;
    *&v27[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors] = v16;
    v31.receiver = v27;
    v31.super_class = v26;
    return objc_msgSendSuper2(&v31, sel_init);
  }

  v32 = MEMORY[0x1E69E7CC0];
  result = sub_192228520();
  if ((v21 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x193B0B410](v23, v20);
      }

      else
      {
        v24 = *(v20 + 8 * v23 + 32);
      }

      v25 = v24;
      ++v23;
      sub_1921C18FC(a1, a2);

      sub_1922284F0();
      sub_192228530();
      sub_192228540();
      sub_192228500();
    }

    while (v21 != v23);
    v22 = v32;
    goto LABEL_31;
  }

LABEL_37:
  __break(1u);
  return result;
}

id sub_192037DC4(uint64_t a1, void *a2)
{
  [v2 mutableCopy];
  sub_1922282B0();
  swift_unknownObjectRelease();
  sub_19202A7A8(0, qword_1ED7491A8, 0x1E69942E0);
  swift_dynamicCast();
  v5 = v28[0];
  [v28[0] setExtensionIdentity_];
  v6 = *MEMORY[0x1E69941B0];
  swift_beginAccess();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1998, &unk_19223E680);
  v8 = *(*(v7 - 8) + 48);
  v9 = &property descriptor for StorageBackedControlArchive.state;
  if (v8(a1 + v6, 1, v7))
  {
    swift_endAccess();
    v10 = 0;
LABEL_5:
    [v28[0] setHiddenControl_];
    [v28[0] setSupportsForwardingToRemoteDevices_];
    goto LABEL_6;
  }

  v11 = sub_192225510();
  v13 = v12;
  swift_endAccess();
  sub_19202A7A8(0, &qword_1EADECA88, 0x1E6963620);
  v14 = sub_1920393C8(v11, v13, 1);
  v10 = v14;
  if (!v14)
  {
    v9 = &property descriptor for StorageBackedControlArchive.state;
    goto LABEL_5;
  }

  v9 = &property descriptor for StorageBackedControlArchive.state;
  if ([v14 developerType] != 1)
  {
    goto LABEL_5;
  }

  v26 = [a2 infoDictionary];
  v23 = sub_192227930();
  sub_19202A7A8(0, &qword_1ED74BC20, 0x1E696AEC0);
  v24 = [v26 objectForKey:v23 ofClass:swift_getObjCClassFromMetadata()];

  if (v24)
  {
    sub_1922282B0();
    swift_unknownObjectRelease();
  }

  else
  {
    *v28 = 0u;
    v29 = 0u;
  }

  v30 = *v28;
  v31 = v29;
  v9 = &property descriptor for StorageBackedControlArchive.state;
  if (*(&v29 + 1))
  {
    if (swift_dynamicCast())
    {
      goto LABEL_34;
    }
  }

  else
  {
    sub_192033970(&v30, &unk_1EADEF330, &unk_19222CD40);
  }

  swift_beginAccess();
  if (!v8(a1 + v6, 1, v7))
  {
    sub_192225510();
    swift_endAccess();
LABEL_34:
    v25 = sub_192227930();

    v9 = &property descriptor for StorageBackedControlArchive.state;
    goto LABEL_35;
  }

  swift_endAccess();
  v25 = 0;
LABEL_35:
  [v5 setNativeContainerBundleIdentifier_];

LABEL_6:
  v15 = [a2 entitlements];
  v16 = sub_192227930();
  sub_19202A7A8(0, &qword_1ED74BC20, 0x1E696AEC0);
  v17 = [v15 v9[452]];

  if (v17)
  {
    sub_1922282B0();
    swift_unknownObjectRelease();
  }

  else
  {
    *v28 = 0u;
    v29 = 0u;
  }

  v30 = *v28;
  v31 = v29;
  if (!*(&v29 + 1))
  {
    sub_192033970(&v30, &unk_1EADEF330, &unk_19222CD40);
LABEL_20:
    v18 = 0;
    v21 = 2;
    goto LABEL_21;
  }

  type metadata accessor for FileProtectionType(0);
  if ((swift_dynamicCast() & 1) == 0 || !v27)
  {
    goto LABEL_20;
  }

  v18 = v27;
  DataProtectionLevel.init(_:)(v18);
  v19 = 2;
  v20 = 3;
  if (v30 != 3)
  {
    v20 = 2;
  }

  if (v30 != 2)
  {
    v19 = v20;
  }

  if (v30 <= 1u)
  {
    v21 = v30 != 0;
  }

  else
  {
    v21 = v19;
  }

LABEL_21:
  [v5 setRequestedDataProtection_];
  [v5 copy];
  sub_1922282B0();

  swift_unknownObjectRelease();
  sub_19202A7A8(0, &qword_1ED749A58, 0x1E6994248);
  swift_dynamicCast();
  return v28[0];
}

double sub_19203831C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_19203832C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_192038344(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_connection);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  aBlock[4] = sub_1921C8B30;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1921BBB98;
  aBlock[3] = &block_descriptor_150;
  v9 = _Block_copy(aBlock);

  v10 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_1922282B0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BB8, &qword_192240520);
  swift_dynamicCast();
  return v12;
}

uint64_t sub_1920384BC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_19203850C()
{
  v1 = v0;
  v2 = type metadata accessor for WidgetDescriptor(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    v11 = sub_192227960();
    v13 = v12;

    v14 = sub_1920366F4();
    v15 = v14[2];
    if (v15)
    {
      v27 = MEMORY[0x1E69E7CC0];
      sub_192228520();
      v16 = sub_19202A7A8(0, qword_1ED7491A8, 0x1E69942E0);
      v17 = *(v1 + 24);
      v25 = *(v1 + 16);
      v26 = v16;
      v18 = v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v19 = *(v3 + 72);
      v23 = v14;
      v24 = v19;
      do
      {
        sub_192036754(v18, v8, type metadata accessor for WidgetDescriptor);
        sub_192036754(v8, v5, type metadata accessor for WidgetDescriptor);

        v20 = v25;
        sub_1920367C8(v25, v17);
        v21 = sub_192038824(v5, v11, v13, v20, v17);
        v22 = sub_192039140(v20, v17);
        [v21 copy];
        sub_1922282B0();

        swift_unknownObjectRelease();
        sub_192036A20(v8, type metadata accessor for WidgetDescriptor);
        sub_19202A7A8(0, &qword_1ED749A58, 0x1E6994248);
        swift_dynamicCast();
        sub_1922284F0();
        sub_192228530();
        sub_192228540();
        sub_192228500();
        v18 += v24;
        --v15;
      }

      while (v15);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_192038824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40[1] = a5;
  v6 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1988, &unk_1922404E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  MEMORY[0x1EEE9AC00](v12 - 8);
  sub_19203683C(v41);
  if (!*(&v41[0] + 1))
  {
    sub_192033970(v41, &qword_1EADF1990, &qword_192243230);
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_192228400();

    *&v43 = 0xD00000000000002BLL;
    *(&v43 + 1) = 0x800000019224D510;
    sub_192036754(a1, v8, type metadata accessor for ViewSource);
    v39 = sub_192227990();
    MEMORY[0x193B0A990](v39);

    result = sub_192228620();
    __break(1u);
    return result;
  }

  v45 = v41[2];
  v46 = v41[3];
  v47[0] = v42[0];
  *(v47 + 9) = *(v42 + 9);
  v43 = v41[0];
  v44 = v41[1];
  sub_192228100();
  sub_192225500();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1998, &unk_19223E680);
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = sub_1922280F0();
  v15 = sub_192227930();
  v16 = *(&v44 + 1);
  v17 = v45;
  if (*(&v44 + 1))
  {
    swift_bridgeObjectRetain_n();
    v18 = sub_192227930();
  }

  else
  {
    v18 = 0;
  }

  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithExtensionIdentity:v14 kind:v15 controlType:v17 intentType:v18];

  v20 = type metadata accessor for WidgetDescriptor(0);
  v21 = *(a1 + v20[11]);
  v22 = v19;
  [v22 setEnablement_];
  if (*(a1 + v20[5] + 8))
  {
    v23 = sub_192227930();
  }

  else
  {
    v23 = 0;
  }

  [v22 setDisplayName_];

  if (*(a1 + v20[6] + 8))
  {
    v24 = sub_192227930();
  }

  else
  {
    v24 = 0;
  }

  [v22 setWidgetDescription_];

  if (*(a1 + v20[14] + 8))
  {
    v25 = sub_192227930();
  }

  else
  {
    v25 = 0;
  }

  [v22 setEventMachServiceName_];

  v26 = sub_192225050();
  [v22 setLocaleToken_];

  v27 = sub_192227930();
  [v22 setSdkVersion_];

  [v22 setHiddenBySensitiveUI_];
  [v22 setActionMetadata_];
  [v22 setDisfavoredLocations_];

  if (*(a1 + v20[32]) == 1)
  {
    v28 = *(a1 + v20[33]) ^ 1;
  }

  else if (*(a1 + v20[30]) == 1)
  {
    v28 = *(a1 + v20[31]);
  }

  else
  {
    v28 = 1;
  }

  [v22 setHiddenControl_];
  if (*(a1 + v20[34]) == 1)
  {
    v29 = *(a1 + v20[35]);
  }

  else
  {
    v29 = 0;
  }

  v30 = v22;
  [v30 setSupportsForwardingToRemoteDevices_];
  [v30 setDisablesControlStateCaching_];
  [v30 setShowsContextualMenu_];
  [v30 setPreferredControlSize_];
  if (v16)
  {

    v31 = *(a1 + v20[23]);
  }

  else
  {
    v31 = 0;
  }

  [v30 setPromptsForUserConfiguration_];
  [v30 setSupportsPush_];

  v33 = *(a1 + v20[41]);
  if (!v33)
  {
    v34 = 0;
    goto LABEL_29;
  }

  if (sub_1921AEF0C(v33, v32))
  {
    sub_19202A7A8(0, &qword_1EADF19A0, 0x1E6994298);
    v34 = sub_192227B60();

LABEL_29:
    [v30 setRequiredFeatureFlags_];
  }

  v35 = [objc_opt_self() mainBundle];
  v36 = [v35 bundlePath];

  sub_192227960();
  LOBYTE(v35) = sub_192227A10();

  [v30 setVisibility_];
  if (qword_1EADEE920 != -1)
  {
    swift_once();
  }

  v37 = qword_1EAE00888;
  [v30 setConfigurationBackgroundColor_];
  [v30 setConfigurationAccentColor_];

  sub_1920390EC(&v43);
  sub_192036A20(a1, type metadata accessor for WidgetDescriptor);
  return v30;
}

uint64_t sub_192038FB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19203901C()
{
  v0 = sub_1920369B8();
  if (sub_1920369B8())
  {
    v1 = v0 & 1 | 2;
  }

  else
  {
    v1 = v0 & 1;
  }

  if (sub_1920369B8())
  {
    v1 |= 4uLL;
  }

  if (sub_1920369B8())
  {
    v1 |= 8uLL;
  }

  if (sub_1920369B8())
  {
    v1 |= 0x40uLL;
  }

  if (sub_1920369B8())
  {
    v1 |= 0x10uLL;
  }

  if (sub_1920369B8())
  {
    return v1 | 0x20;
  }

  else
  {
    return v1;
  }
}

double sub_192039140(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

void *sub_192039194()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v1 = sub_1921AB8BC();
    *(v0 + 48) = v1;
  }

  return v1;
}

void sub_19203922C(void *a1)
{
  sub_19202A7A8(0, &qword_1ED74C500, 0x1E6994388);
  v2 = sub_192227B60();
  v3 = sub_192227930();
  [a1 encodeObject:v2 forKey:v3];

  sub_19202A7A8(0, &qword_1ED749A58, 0x1E6994248);
  v4 = sub_192227B60();
  v5 = sub_192227930();
  [a1 encodeObject:v4 forKey:v5];

  sub_19202A7A8(0, &qword_1ED749D10, 0x1E6994358);
  v6 = sub_192227B60();
  v7 = sub_192227930();
  [a1 encodeObject:v6 forKey:v7];
}

id sub_1920393C8(uint64_t a1, uint64_t a2, char a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = sub_192227930();

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_192224F90();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1920394B0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 1;
  return v4(v6);
}

uint64_t sub_1920394FC(uint64_t (**a1)(void), uint64_t a2)
{
  v2 = *a1;
  if (qword_1EADECEC0 != -1)
  {
    swift_once();
  }

  v3 = sub_1922258B0();
  __swift_project_value_buffer(v3, qword_1EAE00728);

  v4 = sub_192225890();
  v5 = sub_192227FB0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446466;
    v8 = sub_19203418C();
    v10 = sub_19202B8CC(v8, v9, &v15);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    v11 = WidgetExtensionSessionOperation.description.getter();
    v13 = sub_19202B8CC(v11, v12, &v15);

    *(v6 + 14) = v13;
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v7, -1, -1);
    MEMORY[0x193B0C7F0](v6, -1, -1);
  }

  return v2();
}

void sub_19203970C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_192224F80();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_19203977C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_lock);
  os_unfair_lock_lock(*(v1 + 16));
  sub_19203988C(v0, v5);
  os_unfair_lock_unlock(*(v1 + 16));
  if (v5[0])
  {
    v2 = *(v0 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_connection);
    v3 = [v2 remoteObjectProxy];
    sub_1922282B0();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BB8, &qword_192240520);
    if (swift_dynamicCast())
    {
      [v4 invalidate];
      swift_unknownObjectRelease();
    }

    [v2 invalidate];
  }
}

void sub_19203988C(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_lock_invalidated;
  if (*(a1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_lock_invalidated))
  {
    v4 = 0;
  }

  else
  {
    sub_19202CFFC(a1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_suspensionObserver, &v50, &qword_1EADF1B88, qword_192240150);
    if (v51)
    {
      sub_19203832C(&v50, v53);
      v7 = sub_192033AC8(0xD000000000000017, 0x800000019224DCB0, 0xD000000000000011, 0x800000019224D340, v6);
      if (v7)
      {
        v8 = v7;
        v9 = v54;
        v10 = v55;
        __swift_project_boxed_opaque_existential_1(v53, v54);
        v51 = sub_19202A7A8(0, &qword_1EADECA90, 0x1E69C7548);
        v52 = &protocol witness table for RBSAssertion;
        *&v50 = v8;
        v11 = v8;
        v12 = sub_1922256C0();
        (*(v10 + 8))(&v50, v12, v13, v9, v10);

        __swift_destroy_boxed_opaque_existential_1(&v50);
      }

      __swift_destroy_boxed_opaque_existential_1(v53);
    }

    else
    {
      sub_192033970(&v50, &qword_1EADF1B88, qword_192240150);
    }

    if (*(a1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_widgetExtensionAssertion))
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = v14;
        if (qword_1EADECEC0 != -1)
        {
          swift_once();
        }

        v16 = sub_1922258B0();
        __swift_project_value_buffer(v16, qword_1EAE00728);

        v17 = sub_192225890();
        v18 = sub_192227FB0();

        if (os_log_type_enabled(v17, v18))
        {
          v48 = v3;
          v19 = swift_slowAlloc();
          v46 = a2;
          v20 = swift_slowAlloc();
          v53[0] = v20;
          *v19 = 136446210;
          v21 = sub_19203418C();
          v23 = sub_19202B8CC(v21, v22, v53);

          *(v19 + 4) = v23;
          _os_log_impl(&dword_192028000, v17, v18, "%{public}s WidgetExtensionAssertion invalidated", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v20);
          v24 = v20;
          a2 = v46;
          MEMORY[0x193B0C7F0](v24, -1, -1);
          v25 = v19;
          v3 = v48;
          MEMORY[0x193B0C7F0](v25, -1, -1);
        }

        [v15 invalidate];
      }

      swift_unknownObjectRelease();
    }

    if (*(a1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_boostedWidgetExtensionAssertion))
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (v26)
      {
        v27 = v26;
        if (qword_1EADECEC0 != -1)
        {
          swift_once();
        }

        v28 = sub_1922258B0();
        __swift_project_value_buffer(v28, qword_1EAE00728);

        v29 = sub_192225890();
        v30 = sub_192227FB0();

        if (os_log_type_enabled(v29, v30))
        {
          v49 = v3;
          v31 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v53[0] = v47;
          *v31 = 136446210;
          v32 = sub_19203418C();
          v34 = v27;
          v35 = a2;
          v36 = sub_19202B8CC(v32, v33, v53);

          *(v31 + 4) = v36;
          a2 = v35;
          v27 = v34;
          _os_log_impl(&dword_192028000, v29, v30, "%{public}s Foreground boost assertion invalidated", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v47);
          MEMORY[0x193B0C7F0](v47, -1, -1);
          v37 = v31;
          v3 = v49;
          MEMORY[0x193B0C7F0](v37, -1, -1);
        }

        [v27 invalidate];
      }

      swift_unknownObjectRelease();
    }

    if (qword_1EADECEC0 != -1)
    {
      swift_once();
    }

    v38 = sub_1922258B0();
    __swift_project_value_buffer(v38, qword_1EAE00728);

    v39 = sub_192225890();
    v40 = sub_192227FB0();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v53[0] = v42;
      *v41 = 136446210;
      v43 = sub_19203418C();
      v45 = sub_19202B8CC(v43, v44, v53);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_192028000, v39, v40, "%{public}s Session invalidated", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x193B0C7F0](v42, -1, -1);
      MEMORY[0x193B0C7F0](v41, -1, -1);
    }

    v4 = 1;
    *(a1 + v3) = 1;
  }

  *a2 = v4;
}

id DescriptorFetchResult.__allocating_init(widgetDescriptors:activityDescriptors:controlDescriptors:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v9 = sub_192036D98(a1, v8);

  *&v7[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors] = v9;
  *&v7[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_activityDescriptors] = a2;
  *&v7[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors] = a3;
  v11.receiver = v7;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, sel_init);
}

void sub_192039F54(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(void), uint64_t a7, uint64_t a8)
{
  v14 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v16 = Strong;
  swift_beginAccess();
  v17 = *(a3 + 16);
  if (v17)
  {
    [v17 cancel];
  }

  swift_beginAccess();
  v18 = *(a3 + 16);
  if (v18)
  {
    [v18 invalidate];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BB0, &unk_192240510);
  if (v14)
  {
    v53 = a4;
    v56 = v14;
    v19 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF420, &unk_19222D820);
    sub_19202A7A8(0, &qword_1ED74C6A8, 0x1E696ABC0);
    if (!swift_dynamicCast())
    {
      sub_192228990();
      __break(1u);
      return;
    }

    v54 = a5;
    if (qword_1EADECEC0 != -1)
    {
      swift_once();
    }

    v20 = sub_1922258B0();
    __swift_project_value_buffer(v20, qword_1EAE00728);

    v21 = v59;
    v22 = sub_192225890();
    v23 = sub_192227FB0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v52 = a7;
      v25 = swift_slowAlloc();
      v51 = a6;
      v26 = swift_slowAlloc();
      v55 = v26;
      *v24 = 136446722;
      v27 = sub_19203418C();
      v29 = sub_19202B8CC(v27, v28, &v55);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2082;
      v57 = v53;
      v58 = v54;
      v30 = WidgetExtensionSessionOperation.description.getter();
      v32 = sub_19202B8CC(v30, v31, &v55);

      *(v24 + 14) = v32;
      *(v24 + 22) = 2114;
      *(v24 + 24) = v21;
      *v25 = v21;
      v33 = v21;
      sub_192033970(v25, &qword_1EADEEDF0, &qword_1922319C0);
      v34 = v25;
      a7 = v52;
      MEMORY[0x193B0C7F0](v34, -1, -1);
      swift_arrayDestroy();
      v35 = v26;
      a6 = v51;
      MEMORY[0x193B0C7F0](v35, -1, -1);
      MEMORY[0x193B0C7F0](v24, -1, -1);
    }

    v36 = [v21 domain];
    v37 = sub_192227960();
    v39 = v38;

    if (v37 == sub_192227960() && v39 == v40)
    {
    }

    else
    {
      v41 = sub_1922289A0();

      if ((v41 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if ([v21 code] == 1001)
    {
      v57 = v53;
      v58 = v54;
      v42 = WidgetExtensionSessionOperation.description.getter();
      v44 = v43;
      v45 = swift_allocObject();
      v45[2] = a6;
      v45[3] = a7;
      v45[4] = v21;
      v46 = v21;

      sub_1921C02D0(v42, v44, sub_19212AE98, v45);

LABEL_19:
      goto LABEL_20;
    }

LABEL_18:
    v47 = v21;
    a6(v21);

    goto LABEL_19;
  }

LABEL_20:
  v48 = *(v16 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_lock);
  v49 = *(v48 + 16);

  os_unfair_lock_lock(v49);
  swift_beginAccess();
  v50 = *(a8 + 16);
  if (v50)
  {

    sub_1922258E0();
    swift_beginAccess();
    sub_19203A4B8(v50);
    swift_endAccess();
  }

  swift_beginAccess();
  *(a8 + 16) = 0;

  os_unfair_lock_unlock(*(v48 + 16));
}

uint64_t sub_19203A4B8(uint64_t a1)
{
  v2 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_192228370();

    if (v5)
    {
      v6 = sub_1921C4C50(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_1922258F0();
  sub_192034F00(&unk_1EADECEB0, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
  v8 = sub_192227880();
  v9 = -1 << *(v2 + 32);
  v10 = v8 & ~v9;
  if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_192034F00(&qword_1EADECEA8, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
  while ((sub_192227910() & 1) == 0)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1921C3CDC(&qword_1EADF1BA8, &qword_192240508);
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_19203A6C8(v10);
  result = v14;
  *v1 = v15;
  return result;
}

void sub_19203A6C8(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_192228310();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      sub_1922258F0();
      sub_192034F00(&unk_1EADECEB0, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
      do
      {
        v10 = sub_192227880() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_16:
            v13 = *(v3 + 48);
            v14 = (v13 + 8 * v2);
            v15 = (v13 + 8 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }
}

void sub_19203A924(uint64_t a1, const char *a2)
{
  v4 = sub_1922256D0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EADECEC0 != -1)
  {
    swift_once();
  }

  v8 = sub_1922258B0();
  __swift_project_value_buffer(v8, qword_1EAE00728);
  (*(v5 + 16))(v7, a1, v4);
  v9 = sub_192225890();
  v10 = sub_192227FB0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    v13 = sub_1922256C0();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_19202B8CC(v13, v15, &v18);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_192028000, v9, v10, a2, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x193B0C7F0](v12, -1, -1);
    MEMORY[0x193B0C7F0](v11, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t objectdestroy_5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for ActivityConfiguration(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = sub_1922253B0();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_0()
{
  v1 = sub_1922256D0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_19203ACFC()
{
  sub_19203AD54();

  return swift_deallocClassInstance();
}

uint64_t sub_19203AD54()
{
  v1 = v0;
  if (qword_1EADECEC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1922258B0();
  __swift_project_value_buffer(v2, qword_1EAE00728);

  v3 = sub_192225890();
  v4 = sub_192227FB0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136446210;
    v7 = sub_19203418C();
    v9 = sub_19202B8CC(v7, v8, &v19);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_192028000, v3, v4, "%{public}s Session deinit", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x193B0C7F0](v6, -1, -1);
    MEMORY[0x193B0C7F0](v5, -1, -1);
  }

  v10 = *(v0 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_lock);
  v11 = *(v10 + 16);

  os_unfair_lock_lock(v11);
  os_unfair_lock_unlock(*(v10 + 16));

  v12 = OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession__exExtensionIdentity;
  v13 = sub_1922256D0();
  (*(*(v13 - 8) + 8))(v1 + v12, v13);
  v14 = OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession__exExtensionProcess;
  v15 = sub_1922256B0();
  (*(*(v15 - 8) + 8))(v1 + v14, v15);
  v16 = OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_sessionUUID;
  v17 = sub_1922251B0();
  (*(*(v17 - 8) + 8))(v1 + v16, v17);

  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_rbsInterface));
  sub_192033970(v1 + OBJC_IVAR____TtC9WidgetKit23_WidgetExtensionSession_suspensionObserver, &qword_1EADF1B88, qword_192240150);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v1;
}

uint64_t getEnumTagSinglePayload for DataProtectionLevel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DataProtectionLevel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_19203B234()
{
  result = qword_1ED74AA28;
  if (!qword_1ED74AA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AA28);
  }

  return result;
}

uint64_t type metadata accessor for WidgetViewMetadata(uint64_t a1)
{
  result = qword_1ED74A348;
  if (!qword_1ED74A348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void *sub_19203B300@<X0>(_BYTE *a1@<X8>)
{
  sub_19203B36C();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

unint64_t sub_19203B36C()
{
  result = qword_1ED74BC30;
  if (!qword_1ED74BC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BC30);
  }

  return result;
}

unint64_t sub_19203B3CC()
{
  result = qword_1ED74BC00;
  if (!qword_1ED74BC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BC00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InternalWidgetFamily(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void *sub_19203B4B0@<X0>(void *a1@<X8>)
{
  sub_19203B3CC();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

id sub_19203B500@<X0>(void *a1@<X8>)
{
  if (qword_1ED74BB90 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1ED74CBF0;
  *a1 = qword_1ED74CBF0;

  return v2;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for ArchiveURLAttributes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArchiveURLAttributes(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void sub_19203B718(void *a1)
{
  v32[1] = *MEMORY[0x1E69E9840];
  if (a1[3])
  {
    v3 = a1[4];
    v4 = __OFADD__(v3, 1);
    v5 = v3 + 1;
    if (!v4)
    {
      a1[4] = v5;
      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  v6 = a1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD8, &qword_19222CAF0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_19222C680;
  v8 = a1[6];
  *(v7 + 32) = v8;
  v9 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v10 = v8;
  v11 = sub_192227930();
  sub_19202A7A8(0, &qword_1ED748560, 0x1E69C7550);
  v12 = sub_192227B60();

  v13 = [v9 initWithExplanation:v11 target:v6 attributes:v12];

  v32[0] = 0;
  v14 = [v13 acquireWithError_];
  v15 = v32[0];
  if (v14)
  {
    v16 = a1[3];
    a1[3] = v13;
    v17 = v15;
    v1 = v13;

    a1[4] = 1;
    if (qword_1ED749B40 == -1)
    {
LABEL_6:
      v18 = sub_1922258B0();
      __swift_project_value_buffer(v18, qword_1ED74C788);
      v19 = sub_192225890();
      v20 = sub_192227FB0();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_192028000, v19, v20, "Acquired runtime assertion for WidgetArchiver.unarchive", v21, 2u);
        MEMORY[0x193B0C7F0](v21, -1, -1);
      }

      return;
    }

LABEL_15:
    swift_once();
    goto LABEL_6;
  }

  v22 = v32[0];
  v23 = sub_192224F90();

  swift_willThrow();
  if (qword_1ED749B40 != -1)
  {
    swift_once();
  }

  v24 = sub_1922258B0();
  __swift_project_value_buffer(v24, qword_1ED74C788);
  v25 = v23;
  v26 = sub_192225890();
  v27 = sub_192227F90();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138543362;
    v30 = v23;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 4) = v31;
    *v29 = v31;
    _os_log_impl(&dword_192028000, v26, v27, "Unable to acquire runtime assertion for WidgetArchiver.unarchive - error: %{public}@", v28, 0xCu);
    sub_1920FB918(v29);
    MEMORY[0x193B0C7F0](v29, -1, -1);
    MEMORY[0x193B0C7F0](v28, -1, -1);
  }

  else
  {
  }
}

uint64_t static WidgetArchiver.unarchive(from:validationOptions:)(uint64_t a1, __int128 *a2)
{
  v3 = a2[1];
  v9[0] = *a2;
  v9[1] = v3;
  if (qword_1EADED258 != -1)
  {
    swift_once();
  }

  v4 = qword_1EAE00780;
  v8[3] = type metadata accessor for WidgetArchiverAssertionTracker();
  v8[4] = &off_1F06B3350;
  v8[0] = v4;

  sub_19203BB68(a1, v9, v8);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

void sub_19203BB68(uint64_t a1, __int128 *a2, void *a3)
{
  v28 = a1;
  v5 = sub_192225020();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1922266C0();
  v26 = *(v9 - 8);
  v27 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v24 = a2[1];
  v25 = v12;
  v13 = a3[3];
  v23 = a3;
  v14 = __swift_project_boxed_opaque_existential_1(a3, v13);
  v15 = *v14;
  v16 = *(*v14 + 16);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_19203B5A8;
  *(v17 + 24) = v15;
  v32 = sub_19203BE8C;
  v33 = v17;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v31 = sub_19203B6F0;
  *(&v31 + 1) = &block_descriptor_5;
  v18 = _Block_copy(&aBlock);
  v19 = v16;

  dispatch_sync(v19, v18);

  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 16))(v8, v28, v5);
    v20 = v29;
    sub_192226640();
    if (!v20)
    {
      aBlock = v25;
      v31 = v24;
      v34 = 3;
      sub_19203BEEC(v11, &v34, &aBlock);
      __swift_project_boxed_opaque_existential_1(v23, v23[3]);
      v21 = sub_192055808();
      (*(v26 + 8))(v11, v27, v21);
    }
  }
}

_OWORD *sub_19203BEDC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_BYTE *sub_19203BEEC(uint64_t a1, unsigned __int8 *a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0CD8, &unk_192237800);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v38 = &v36 - v7;
  v8 = type metadata accessor for WidgetArchivableMetadata(0);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v36 - v11;
  v12 = sub_1922285D0();
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *a2;
  v16 = *a3;
  v40 = *(a3 + 1);
  v17 = a3[3];
  v36 = a1;
  v42 = sub_192226660();
  if (v18 >> 60 == 15)
  {
    v19 = sub_1922284A0();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0);
    *v21 = v8;
    sub_192228480();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6B08], v19);
    swift_willThrow();
  }

  else
  {
    v22 = v18;
    sub_192224F30();
    swift_allocObject();
    sub_192224F20();
    if (qword_1ED7485C8 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v12, qword_1ED74C6B8);
    (*(v13 + 16))(v15, v23, v12);
    v44[3] = &type metadata for WidgetArchiver.ValidationOptions;
    v24 = swift_allocObject();
    v44[0] = v24;
    *(v24 + 16) = v16;
    *(v24 + 24) = v40;
    *(v24 + 40) = v17;

    v12 = v43;
    v25 = sub_192224F10();
    sub_19203C888(v44, v15);
    v25(v43, 0);
    sub_19203D21C();
    v26 = v45;
    v28 = v41;
    v27 = v42;
    sub_192224F00();
    if (v28)
    {

      sub_192046ED4(v27, v22);
    }

    else
    {
      sub_1920557A4(v26, v39);
      v29 = sub_1922266C0();
      v30 = *(v29 - 8);
      v31 = v38;
      (*(v30 + 16))(v38, v36, v29);
      v41 = *(v30 + 56);
      v41(v31, 0, 1, v29);
      type metadata accessor for _TimelineArchivedViewCollection(0);
      v12 = swift_allocObject();
      swift_beginAccess();
      v12[16] = byte_1ED74B5B8;

      sub_192046ED4(v27, v22);
      sub_192055674(v45, type metadata accessor for WidgetArchivableMetadata);
      v32 = OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection____lazy_storage___dateRange;
      v33 = sub_192224E00();
      (*(*(v33 - 8) + 56))(&v12[v32], 1, 1, v33);
      v34 = OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_archivedStates;
      v41(&v12[OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_archivedStates], 1, 1, v29);
      sub_19205573C(v39, &v12[OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata], type metadata accessor for WidgetArchivableMetadata);
      swift_beginAccess();
      sub_19214D94C(v31, &v12[v34]);
      swift_endAccess();
      sub_192033970(v31, &qword_1EADF0CD8, &unk_192237800);
      swift_beginAccess();
      v12[16] = v37;
      *(v12 + 3) = MEMORY[0x1E69E7CD0];
    }
  }

  return v12;
}

uint64_t sub_19203C4A8()
{

  return swift_deallocObject();
}

void sub_19203C4E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1922285D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A28, &qword_192236240);
  v40 = v4;
  v10 = sub_1922286A0();
  v11 = v10;
  if (*(v9 + 16))
  {
    v43 = v8;
    v44 = v5;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v6 + 72);
      v25 = v24 + v42 * v23;
      if (v40)
      {
        (*v41)(v43, v25, v44);
        sub_19203BEDC((*(v9 + 56) + 32 * v23), v45);
      }

      else
      {
        (*v37)(v43, v25, v44);
        sub_19202A98C(*(v9 + 56) + 32 * v23, v45);
      }

      v26 = sub_192227880();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v6 = v38;
        v9 = v39;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v6 = v38;
      v9 = v39;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v42 * v19), v43, v44);
      sub_19203BEDC(v45, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

uint64_t sub_19203C888(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_19203BEDC(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_19203C9A4(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_1922285D0();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_192033970(a1, &qword_1EADEF478, &qword_19222D868);
    sub_1921E0D38(a2, v9);
    v7 = sub_1922285D0();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_192033970(v9, &qword_1EADEF478, &qword_19222D868);
  }

  return result;
}

_OWORD *sub_19203C9A4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1922285D0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_19203CB7C(a2);
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
      sub_19213FBB0();
      goto LABEL_7;
    }

    sub_19203C4E8(v17, a3 & 1);
    v23 = sub_19203CB7C(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_19203CD78(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_192228A40();
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
  v21 = (v20[7] + 32 * v14);
  __swift_destroy_boxed_opaque_existential_1(v21);

  return sub_19203BEDC(a1, v21);
}

unint64_t sub_19203CB7C(uint64_t a1)
{
  sub_1922285D0();
  v2 = sub_192227880();

  return sub_19203CBE0(a1, v2);
}

unint64_t sub_19203CBE0(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_1922285D0();
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4, v6);
      v18 = sub_192227910();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

_OWORD *sub_19203CD78(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1922285D0();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_19203BEDC(a3, (a4[7] + 32 * a1));
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

uint64_t getEnumTagSinglePayload for WidgetFamily(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_19203CEF8()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_19203CF50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_19203CFC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19203D028(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19203D090(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19203D0F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19203D160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_19203D1C8()
{
  result = qword_1ED74BB28;
  if (!qword_1ED74BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BB28);
  }

  return result;
}

unint64_t sub_19203D21C()
{
  result = qword_1ED7485D0;
  if (!qword_1ED7485D0)
  {
    type metadata accessor for WidgetArchivableMetadata(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7485D0);
  }

  return result;
}

unint64_t sub_19203D274()
{
  result = qword_1ED74B090;
  if (!qword_1ED74B090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B090);
  }

  return result;
}

void BundleStub.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF16B8, &qword_19223CA30);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v23 = type metadata accessor for BundleStub(0);
  MEMORY[0x1EEE9AC00](v23);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_192225020();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19203EE38();
  sub_192228B70();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_192033970(v11, &qword_1EADEEE10, &unk_19222B630);
  }

  else
  {
    v13 = v21;
    v27 = 0;
    sub_19203D6FC(qword_1ED7488E8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_192228750();
    sub_19203CF50(v6, v11);
    sub_192228100();
    v26 = 1;
    sub_19203D6FC(&qword_1ED748700, MEMORY[0x1E69941C0], MEMORY[0x1E69941D0]);
    sub_1922287C0();
    v14 = v23;
    *&v11[*(v23 + 20)] = v24;
    v25 = 2;
    v15 = sub_192228760();
    v17 = v16;
    (*(v13 + 8))(v9, v22);
    v18 = &v11[*(v14 + 24)];
    *v18 = v15;
    v18[1] = v17;
    sub_19203D744(v11, v20);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_19203D7A8(v11);
  }
}

uint64_t sub_19203D6B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19203D6FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19203D744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleStub(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19203D7A8(uint64_t a1)
{
  v2 = type metadata accessor for BundleStub(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19203D804(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6E6F697461657263;
    v6 = 0x746567646977;
    if (a1 != 2)
    {
      v6 = 0x74654D7972746E65;
    }

    if (a1)
    {
      v5 = 0x6D6E6F7269766E65;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x5665766968637261;
    v2 = 0x6F69736E65747865;
    if (a1 != 7)
    {
      v2 = 0x65566D6574737973;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6174654D77656976;
    if (a1 != 4)
    {
      v3 = 0x6F5064616F6C6572;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t storeEnumTagSinglePayload for WidgetFamily(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for BundleStub(uint64_t a1)
{
  result = qword_1ED74BB50;
  if (!qword_1ED74BB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19203DA88(void *a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v114 = sub_192228490();
  v109 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v108 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for TimelineReloadPolicy(0);
  MEMORY[0x1EEE9AC00](v103);
  v104 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_192225150();
  v107 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for BundleStub(0);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1922285D0();
  v8 = *(v7 - 8);
  v112 = v7;
  v113 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF9F0, &qword_19222F588);
  v12 = *(v11 - 8);
  v115 = v11;
  v116 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v96 - v13;
  v15 = type metadata accessor for WidgetArchivableMetadata(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_19203D274();
  v19 = v117;
  sub_192228B70();
  if (v19)
  {
    v20 = a1;
LABEL_16:
    __swift_destroy_boxed_opaque_existential_1(v20);
    return;
  }

  v99 = v10;
  v21 = v112;
  v96 = v18;
  v117 = 0;
  v101 = v14;
  v97 = v17;
  v98 = v15;
  v22 = a1[3];
  v100 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v23 = sub_192228B60();
  if (qword_1ED7485C8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v21, qword_1ED74C6B8);
  v25 = v113;
  v26 = v99;
  (*(v113 + 16))(v99, v24, v21);
  v27 = v114;
  v28 = v115;
  v29 = v101;
  if (*(v23 + 16) && (v30 = sub_19203CB7C(v26), (v31 & 1) != 0))
  {
    sub_19202A98C(*(v23 + 56) + 32 * v30, v124);
    (*(v25 + 8))(v26, v21);

    if (swift_dynamicCast())
    {
      v33 = v118;
      v32 = v119;
      v35 = v120;
      v34 = v121;
      goto LABEL_13;
    }
  }

  else
  {

    (*(v25 + 8))(v26, v21);
  }

  if (qword_1EADEE998 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v32 = *(&xmmword_1EADF1B10 + 1);
  v33 = xmmword_1EADF1B10;
  v35 = qword_1EADF1B20;
  v34 = qword_1EADF1B28;

LABEL_13:
  LOBYTE(v118) = 6;
  v36 = v117;
  v37 = sub_1922287A0();
  if (v36)
  {
    (*(v116 + 8))(v29, v28);

LABEL_15:
    v20 = v100;
    goto LABEL_16;
  }

  v113 = v34;
  if (v37 < 1)
  {
    v118 = 0;
    v119 = 0xE000000000000000;
    v39 = v37;
    sub_192228400();
    MEMORY[0x193B0A990](0xD000000000000024, 0x800000019224A0D0);
    v122[0] = v39;
    v40 = sub_192228910();
    v112 = v32;
    MEMORY[0x193B0A990](v40);

    MEMORY[0x193B0A990](0x746365707865202CLL, 0xEB00000000206465);
    v122[0] = 1;
    v41 = sub_192228910();
    MEMORY[0x193B0A990](v41);

    MEMORY[0x193B0A990](46, 0xE100000000000000);
    v42 = v108;
    sub_192228480();
    v43 = sub_1922284A0();
    swift_allocError();
    v45 = v44;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0) + 48);
    *v45 = v98;
    v47 = v109;
    (*(v109 + 16))(v45 + v46, v42, v27);
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrow();

    (*(v47 + 8))(v42, v27);
    (*(v116 + 8))(v29, v28);
    goto LABEL_15;
  }

  LOBYTE(v118) = 7;
  sub_19203EDF0(qword_1ED748740, type metadata accessor for BundleStub, &protocol conformance descriptor for BundleStub);
  v38 = v110;
  sub_1922287C0();
  v48 = v38;
  v49 = v97;
  v50 = v97 + v98[6];
  sub_19203D090(v48, v50, type metadata accessor for BundleStub);
  LOBYTE(v122[0]) = 8;
  sub_19203EE8C();
  sub_1922287C0();
  v112 = v32;
  v117 = 0;
  *v49 = v118;
  v51 = *(v50 + *(v111 + 20)) + *MEMORY[0x1E69941A8];
  swift_beginAccess();
  v52 = *(v51 + 8);
  v53 = v107;
  if (!v52)
  {
    v122[0] = *v97;
    v54 = v33(v122);
    if (v55)
    {
      v122[0] = v54 | 0x8000000000000000;
      sub_192050F58();
      swift_willThrowTypedImpl();
      v56 = v122[0];
      swift_allocError();
      *v57 = v56;

LABEL_25:

      (*(v116 + 8))(v29, v28);
      v62 = v100;
      v63 = v98;
      v64 = v97;
LABEL_28:
      __swift_destroy_boxed_opaque_existential_1(v62);
      sub_192046FA8(&v64[v63[6]], type metadata accessor for BundleStub);
      return;
    }
  }

  v58 = v35(v50);
  if (v59)
  {
    v122[0] = v58;
    sub_192050F58();
    swift_willThrowTypedImpl();
    v60 = v122[0];
    swift_allocError();
    *v61 = v60;

    goto LABEL_25;
  }

  v65 = v53;
  LOBYTE(v122[0]) = 0;
  sub_19203EDF0(qword_1ED748810, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v66 = v105;
  v67 = v106;
  v68 = v117;
  sub_1922287C0();
  v63 = v98;
  v64 = v97;
  if (v68)
  {
    (*(v116 + 8))(v29, v28);

    v62 = v100;
    goto LABEL_28;
  }

  (*(v65 + 32))(v97 + v98[5], v66, v67);
  v123 = 1;
  sub_192044634();
  sub_1922287C0();
  v122[0] = v125;
  WidgetEnvironment.filterForArchiving()();
  *&v64[v63[7]] = v122[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF9F8, &qword_19222F590);
  LOBYTE(v125) = 3;
  sub_19204D670(&qword_1ED748568, qword_1ED7485D8, &unk_19222F500, MEMORY[0x1E69E6330]);
  sub_1922287C0();
  v117 = 0;
  *&v64[v63[9]] = v122[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA00, &qword_19222F598);
  LOBYTE(v125) = 4;
  sub_19204D760(&qword_1ED748570, &qword_1ED748698, &protocol conformance descriptor for WidgetViewMetadata, MEMORY[0x1E69E6330]);
  v69 = v117;
  sub_1922287C0();
  v117 = v69;
  if (v69)
  {
    (*(v116 + 8))(v29, v28);

    v70 = 0;
    v71 = 0;
  }

  else
  {
    *&v64[v63[10]] = v122[0];
    LOBYTE(v122[0]) = 5;
    sub_19203EDF0(&qword_1ED7485B8, type metadata accessor for TimelineReloadPolicy, &protocol conformance descriptor for TimelineReloadPolicy);
    v72 = v104;
    v73 = v117;
    sub_1922287C0();
    v117 = v73;
    if (v73)
    {
      (*(v116 + 8))(v29, v28);

      v71 = 0;
      v70 = 1;
    }

    else
    {
      sub_19203D090(v72, &v64[v63[11]], type metadata accessor for TimelineReloadPolicy);
      LOBYTE(v125) = 2;
      sub_192047340();
      v74 = v117;
      sub_1922287C0();
      v117 = v74;
      if (v74)
      {
        (*(v116 + 8))(v101, v115);
      }

      else
      {
        v75 = v122[0];
        v76 = v122[1];
        sub_19202A7A8(0, &qword_1ED749280, 0x1E696ACD0);
        v77 = sub_19202A7A8(0, &qword_1ED74BB40, 0x1E6994370);
        v114 = v75;
        v111 = v76;
        v78 = v117;
        v79 = sub_192228010();
        if (v78)
        {
          v80 = *MEMORY[0x1E69E6B08];
          v81 = v78;
        }

        else
        {
          v89 = v79;
          if (v79)
          {
            (*(v116 + 8))(v101, v115);
            sub_192039140(v114, v111);

            v90 = v97;
            *(v97 + v98[8]) = v89;
            sub_19204CC18(v90, v102, type metadata accessor for WidgetArchivableMetadata);
            __swift_destroy_boxed_opaque_existential_1(v100);
            sub_192046FA8(v90, type metadata accessor for WidgetArchivableMetadata);
            return;
          }

          v91 = sub_1922284A0();
          v81 = swift_allocError();
          v93 = v92;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0);
          *v93 = v77;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
          v94 = swift_allocObject();
          *(v94 + 16) = xmmword_19222B480;
          v95 = v96;
          *(v94 + 56) = &type metadata for WidgetArchivableMetadata.CodingKeys;
          *(v94 + 64) = v95;
          *(v94 + 32) = 2;
          sub_192228480();
          v80 = *MEMORY[0x1E69E6B08];
          (*(*(v91 - 8) + 104))(v93, v80, v91);
          swift_willThrow();
        }

        v82 = sub_1922284A0();
        v83 = swift_allocError();
        v85 = v84;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0);
        *v85 = v77;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
        v86 = swift_allocObject();
        *(v86 + 16) = xmmword_19222B480;
        v87 = v96;
        *(v86 + 56) = &type metadata for WidgetArchivableMetadata.CodingKeys;
        *(v86 + 64) = v87;
        *(v86 + 32) = 2;
        v88 = v81;
        sub_192228480();
        (*(*(v82 - 8) + 104))(v85, v80, v82);
        v117 = v83;
        swift_willThrow();

        sub_192039140(v114, v111);

        (*(v116 + 8))(v101, v115);
      }

      v70 = 1;
      v71 = 1;
      v63 = v98;
      v64 = v97;
      v67 = v106;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v100);
  (*(v107 + 8))(&v64[v63[5]], v67);
  sub_192046FA8(&v64[v63[6]], type metadata accessor for BundleStub);

  if ((v70 & 1) == 0)
  {
    if (!v71)
    {
      return;
    }

    goto LABEL_41;
  }

  if (v71)
  {
LABEL_41:
    sub_192046FA8(&v64[v63[11]], type metadata accessor for TimelineReloadPolicy);
  }
}

uint64_t type metadata accessor for TimelineReloadPolicy(uint64_t a1)
{
  result = qword_1ED74B7C8;
  if (!qword_1ED74B7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19203EDF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_19203EE38()
{
  result = qword_1ED74AB68;
  if (!qword_1ED74AB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AB68);
  }

  return result;
}

unint64_t sub_19203EE8C()
{
  result = qword_1ED748738;
  if (!qword_1ED748738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748738);
  }

  return result;
}

uint64_t SystemVersion.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF200, &qword_19222C270);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19203D1C8();
  sub_192228B70();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_1922287E0();
    v13 = 1;
    v10 = sub_1922287E0();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_19203F080()
{
  if (*v0)
  {
    return 7038067;
  }

  else
  {
    return 0x6D726F6674616C70;
  }
}

uint64_t sub_19203F0B4(uint64_t a1)
{
  if (dyld_program_sdk_at_least())
  {
    return 0;
  }

  sub_1921BAABC();
  result = swift_allocError();
  *v2 = 0xD00000000000001FLL;
  v2[1] = 0x800000019224D7F0;
  return result;
}

id BundleStub.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for BundleStub(0) + 20));

  return v1;
}

unint64_t sub_19203F180()
{
  result = qword_1ED74A1B0;
  if (!qword_1ED74A1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A1B0);
  }

  return result;
}

unint64_t sub_19203F1D8()
{
  result = qword_1ED74A1C0;
  if (!qword_1ED74A1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1850, &qword_19223D498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A1C0);
  }

  return result;
}

unint64_t sub_19203F23C()
{
  result = qword_1EADED260;
  if (!qword_1EADED260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED260);
  }

  return result;
}

void *sub_19203F290@<X0>(_BYTE *a1@<X8>)
{
  sub_19203F2E0();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

unint64_t sub_19203F2E0()
{
  result = qword_1EADED268;
  if (!qword_1EADED268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED268);
  }

  return result;
}

uint64_t sub_19203F334@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADF1240;
  return result;
}

void sub_19203F380(uint64_t a1)
{
  sub_192102390(319);
  if (v1 <= 0x3F)
  {
    sub_19202A7A8(319, &qword_1ED74BB40, 0x1E6994370);
    if (v2 <= 0x3F)
    {
      sub_19202A7A8(319, &qword_1ED74BD10, 0x1E69943F0);
      if (v3 <= 0x3F)
      {
        sub_19203F454(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_19203F454(uint64_t a1)
{
  if (!qword_1ED74B560)
  {
    sub_1922261D0();
    v1 = sub_192228240();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED74B560);
    }
  }
}

unint64_t sub_19203F4DC()
{
  result = qword_1ED74A1C8;
  if (!qword_1ED74A1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1858, qword_19223D5E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1850, &qword_19223D498);
    sub_19203F1D8();
    sub_19203F180();
    swift_getOpaqueTypeConformance2();
    sub_192225D60();
    sub_19203F6FC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A1C8);
  }

  return result;
}

uint64_t type metadata accessor for CommonServerEnvironmentModifier(uint64_t a1)
{
  result = qword_1EADECF60;
  if (!qword_1EADECF60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for InternalWidgetFamily(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_19203F6FC()
{
  result = qword_1ED74B850;
  if (!qword_1ED74B850)
  {
    sub_192225D60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B850);
  }

  return result;
}

uint64_t sub_19203F754@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADF1248;
  return result;
}

void sub_19203F7F4(uint64_t a1)
{
  if (!qword_1ED74C4C0)
  {
    sub_192225020();
    v1 = sub_192228240();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED74C4C0);
    }
  }
}

uint64_t sub_19203F924(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_19203F9A0(uint64_t a1)
{
  sub_19203F7F4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_19203FA0C()
{
  result = qword_1ED74A190;
  if (!qword_1ED74A190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A190);
  }

  return result;
}

uint64_t static WidgetKitRenderer.inWidgetRenderer.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EADED1A0 = a1;
  return result;
}

unint64_t sub_19203FACC()
{
  result = qword_1ED74A198;
  if (!qword_1ED74A198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A198);
  }

  return result;
}

unint64_t sub_19203FB24()
{
  result = qword_1ED74A1A8;
  if (!qword_1ED74A1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A1A8);
  }

  return result;
}

void sub_19203FB78(uint64_t a1)
{
  sub_19203FF1C(319, &qword_1EADEDFB8, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_19203FEB8(319, &qword_1EADEDE88, &qword_1EADF0EE0, &qword_192238430, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_19203FEB8(319, &unk_1EADEDFC0, &qword_1EADEED10, &unk_19222B0F0, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_19203FEB8(319, &unk_1EADEDEA0, &qword_1EADEECD0, &qword_1922363D0, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_19203FEB8(319, &qword_1EADEDE80, &qword_1EADF0838, &qword_192235400, MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_19203FEB8(319, &qword_1EADEDE90, &qword_1EADF0F98, &qword_1922385E0, MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              sub_19203FF6C(319, &qword_1ED748800, MEMORY[0x1E6981790]);
              if (v7 <= 0x3F)
              {
                sub_19203FEB8(319, &qword_1EADEDCD0, &qword_1EADEECD0, &qword_1922363D0, MEMORY[0x1E6981790]);
                if (v8 <= 0x3F)
                {
                  sub_19203FF1C(319, &qword_1EADEDCC8, MEMORY[0x1E69E7668], MEMORY[0x1E6981790]);
                  if (v9 <= 0x3F)
                  {
                    sub_19203FEB8(319, &qword_1EADF0FA0, &qword_1EADF0FA8, &qword_1922385E8, MEMORY[0x1E6981790]);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for DatePublisher(319);
                      if (v11 <= 0x3F)
                      {
                        sub_192225300();
                        if (v12 <= 0x3F)
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
        }
      }
    }
  }
}

void sub_19203FEB8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_19203FF1C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_19203FF6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_192225150();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_19203FFCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1920400EC()
{
  result = qword_1EADEDF18;
  if (!qword_1EADEDF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDF18);
  }

  return result;
}

unint64_t sub_192040140()
{
  result = qword_1EADEDF20;
  if (!qword_1EADEDF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDF20);
  }

  return result;
}

unint64_t sub_192040194()
{
  result = qword_1EADED078;
  if (!qword_1EADED078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED078);
  }

  return result;
}

unint64_t sub_1920401E8()
{
  result = qword_1EADED088;
  if (!qword_1EADED088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED088);
  }

  return result;
}

uint64_t sub_19204023C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  MEMORY[0x193B0BA90](v2);
  return sub_192228B30();
}

uint64_t storeEnumTagSinglePayload for WidgetRenderScheme(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t WidgetRenderScheme.description.getter()
{
  v1 = *v0;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000023, 0x800000019224C140);
  v2 = 0xE800000000000000;
  v3 = 0x6465746E65636361;
  if (v1 != 1)
  {
    v3 = 0x746E6172626976;
    v2 = 0xE700000000000000;
  }

  if (v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6F6C6F436C6C7566;
  }

  if (v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xE900000000000072;
  }

  MEMORY[0x193B0A990](v4, v5);

  MEMORY[0x193B0A990](0xD000000000000017, 0x800000019224C170);
  v6 = NSStringFromCHSWidgetBackgroundViewPolicy();
  v7 = sub_192227960();
  v9 = v8;

  MEMORY[0x193B0A990](v7, v9);

  MEMORY[0x193B0A990](62, 0xE100000000000000);
  return 0;
}

uint64_t type metadata accessor for ViewableTimelineEntry(uint64_t a1)
{
  result = qword_1ED74B7E8;
  if (!qword_1ED74B7E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19204048C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_192225150();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE60, &unk_192246DC0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

unint64_t sub_1920405C0()
{
  result = qword_1ED74A570;
  if (!qword_1ED74A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A570);
  }

  return result;
}

void *EnvironmentValues._preferredSystemWidgetBackgroundStyle.getter()
{
  sub_1920405C0();

  return sub_1922261E0();
}

void sub_19204069C(uint64_t a1)
{
  sub_192225150();
  if (v1 <= 0x3F)
  {
    sub_192040778(319, qword_1ED74A3B8, &type metadata for TimelineEntryRelevance);
    if (v2 <= 0x3F)
    {
      sub_192040814(319);
      if (v3 <= 0x3F)
      {
        sub_192040778(319, &qword_1ED74A2D0, MEMORY[0x1E6969080]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_192040778(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_192228240();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1920407C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_192040814(uint64_t a1)
{
  if (!qword_1ED74A340)
  {
    type metadata accessor for WidgetViewMetadata(255);
    v1 = sub_192228240();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED74A340);
    }
  }
}

void sub_19204086C(uint64_t a1)
{
  sub_19204095C();
  if (v1 <= 0x3F)
  {
    sub_1920409AC(319, &qword_1ED74C4C0, MEMORY[0x1E6968FB0]);
    if (v2 <= 0x3F)
    {
      sub_1920409AC(319, &qword_1ED74B538, MEMORY[0x1E697CB40]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_19204095C()
{
  if (!qword_1ED74B550)
  {
    v0 = sub_192228240();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED74B550);
    }
  }
}

void sub_1920409AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_192228240();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_192040A00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_192228240();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_192040A54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_192228240();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_192040AB0()
{
  result = qword_1ED7488D8;
  if (!qword_1ED7488D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7488D8);
  }

  return result;
}

unint64_t sub_192040B60()
{
  result = qword_1ED749528;
  if (!qword_1ED749528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749528);
  }

  return result;
}

unint64_t sub_192040BB8()
{
  result = qword_1ED749530;
  if (!qword_1ED749530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749530);
  }

  return result;
}

unint64_t sub_192040C10()
{
  result = qword_1ED749538;
  if (!qword_1ED749538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749538);
  }

  return result;
}

unint64_t sub_192040C78()
{
  result = qword_1EADEE6F0;
  if (!qword_1EADEE6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE6F0);
  }

  return result;
}

unint64_t sub_192040CD0()
{
  result = qword_1ED749270;
  if (!qword_1ED749270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749270);
  }

  return result;
}

unint64_t sub_192040D40()
{
  result = qword_1EADEDF28;
  if (!qword_1EADEDF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDF28);
  }

  return result;
}

unint64_t sub_192040D94()
{
  result = qword_1EADEE6F8;
  if (!qword_1EADEE6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE6F8);
  }

  return result;
}

unint64_t sub_192040DEC()
{
  result = qword_1EADED080;
  if (!qword_1EADED080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED080);
  }

  return result;
}

void sub_192040E44()
{
  *&xmmword_1ED7486D8 = sub_19203F0B4;
  *(&xmmword_1ED7486D8 + 1) = 0;
  qword_1ED7486E8 = sub_19207E4F4;
  qword_1ED7486F0 = 0;
}

id sub_192040E78()
{
  result = [objc_allocWithZone(MEMORY[0x1E69943A0]) initWithScale:1 colorGamut:2.0];
  qword_1ED74A900 = result;
  return result;
}

id sub_192040EB8@<X0>(void *a1@<X8>)
{
  if (qword_1ED74A8F8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1ED74A900;
  *a1 = qword_1ED74A900;

  return v2;
}

uint64_t EnvironmentValues._widgetDisplayProperties.getter()
{
  sub_192040FB0();
  sub_1922261E0();
  return v1;
}

unint64_t sub_192040FB0()
{
  result = qword_1ED74A8E8;
  if (!qword_1ED74A8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A8E8);
  }

  return result;
}

uint64_t sub_19204100C(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_1922261E0();
  return v3;
}

unint64_t sub_192041074()
{
  result = qword_1ED748C78;
  if (!qword_1ED748C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748C78);
  }

  return result;
}

unint64_t sub_192041180()
{
  result = qword_1ED74B5A0;
  if (!qword_1ED74B5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B5A0);
  }

  return result;
}

uint64_t EnvironmentValues._widgetRenderScheme.setter(uint64_t a1, uint64_t a2)
{
  sub_192041274();
  sub_1922261F0();
  sub_1920412C8();
  sub_1922261F0();
  sub_19202F774();
  return sub_1922261F0();
}

unint64_t sub_192041274()
{
  result = qword_1ED74A580;
  if (!qword_1ED74A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A580);
  }

  return result;
}

unint64_t sub_1920412C8()
{
  result = qword_1ED74A750;
  if (!qword_1ED74A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A750);
  }

  return result;
}

void EnvironmentValues._widgetDisplayProperties.setter(void *a1)
{
  v2 = sub_192225A40();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = a1;
  sub_192040FB0();
  v6 = a1;
  sub_1922261F0();
  [v6 scale];
  sub_192225EB0();
  v7 = [v6 colorGamut];
  v8 = MEMORY[0x1E697DE28];
  if (v7)
  {
    v8 = MEMORY[0x1E697DE20];
  }

  (*(v3 + 104))(v5, *v8, v2);
  sub_192225E90();
}