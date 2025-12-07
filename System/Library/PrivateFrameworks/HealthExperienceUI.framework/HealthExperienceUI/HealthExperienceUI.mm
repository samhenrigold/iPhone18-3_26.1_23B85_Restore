id PluginNotificationRouter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1B9F0A388(uint64_t a1)
{
  v2 = type metadata accessor for PlatformNotificationHandlerPluginProvider();
  v15[3] = v2;
  v15[4] = &off_1F3817510;
  v15[0] = a1;
  v3 = type metadata accessor for PluginNotificationRouter();
  v4 = objc_allocWithZone(v3);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v15, v2);
  v6 = MEMORY[0x1EEE9AC00](v5, v5);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8, v6);
  v10 = *v8;
  v14[3] = v2;
  v14[4] = &off_1F3817510;
  v14[0] = v10;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI24PluginNotificationRouter_sceneProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F0A534(v14, &v4[OBJC_IVAR____TtC18HealthExperienceUI24PluginNotificationRouter_pluginProviding]);
  v13.receiver = v4;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v11;
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

uint64_t sub_1B9F0A534(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
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

void sub_1B9F0A630(void *a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC18HealthExperienceUI24PluginNotificationRouter_sceneProvider;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
}

uint64_t static ProfileGradientView.preloadRenderPipelineStateIfNeeded()()
{
  if (qword_1EDC62BC8 != -1)
  {
    swift_once();
  }

  return sub_1B9F0B14C();
}

uint64_t sub_1B9F0A714()
{
  type metadata accessor for GradientLayerPipelineStateLoader();
  v0 = swift_allocObject();
  sub_1B9F0AB98(0);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  sub_1B9F0AC30(0);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 0;
  *(v0 + 24) = result;
  qword_1EDC84B38 = v0;
  return result;
}

void sub_1B9F0A7B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0A814(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0A878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0A8DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0A940(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0A9A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0AA08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0AA6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0AAD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0AB34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0AB98(uint64_t a1)
{
  if (!qword_1EDC5E040)
  {
    sub_1B9F0AA08(255, &qword_1EDC5E378, sub_1B9F0B088, MEMORY[0x1E69E6720]);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1BA4A7EA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5E040);
    }
  }
}

void sub_1B9F0AC30(uint64_t a1)
{
  if (!qword_1EDC5E048)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1BA4A7EA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5E048);
    }
  }
}

unint64_t sub_1B9F0AC90(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1B9F2D100(a5, a6);
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
    result = sub_1BA4A7EB8();
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

uint64_t sub_1B9F0AD9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B9F0ADF8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1B9F0AE40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B9F0AE88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B9F0AED0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B9F0AF18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B9F0AF60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B9F0AFA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B9F0AFF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B9F0B040(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

unint64_t sub_1B9F0B088()
{
  result = qword_1EDC5E380;
  if (!qword_1EDC5E380)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC5E380);
  }

  return result;
}

void sub_1B9F0B100(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1B9F0B14C()
{
  v1 = v0;
  v44 = *v0;
  v2 = sub_1BA4A6478();
  v47 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A72F8();
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v48 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A7288();
  MEMORY[0x1EEE9AC00](v9, v10);
  v46 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A64C8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1BA4A3EA8();
  v17 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v18);
  v20 = v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v1[3];

  os_unfair_lock_lock((v21 + 20));
  if (*(v21 + 16))
  {
    os_unfair_lock_unlock((v21 + 20));
  }

  else
  {
    v38[1] = v9;
    v39 = v16;
    v40 = v13;
    v41 = v1;
    v42 = v12;
    v43 = v5;
    *(v21 + 16) = 1;
    os_unfair_lock_unlock((v21 + 20));

    sub_1BA4A3DD8();
    v23 = sub_1BA4A3E88();
    v24 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136446210;
      v27 = sub_1BA4A85D8();
      v29 = v2;
      v30 = sub_1B9F0B82C(v27, v28, aBlock);

      *(v25 + 4) = v30;
      v2 = v29;
      _os_log_impl(&dword_1B9F07000, v23, v24, "[%{public}s] Dispatching render pipeline state creation", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1BFAF43A0](v26, -1, -1);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
    }

    (*(v17 + 8))(v20, v45);
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
    v31 = v39;
    sub_1BA4A64B8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B9F0AFA8(&unk_1EDC5E480, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    v32 = MEMORY[0x1E69E8030];
    v33 = MEMORY[0x1E69E62F8];
    sub_1B9F0AA08(0, &qword_1EDC5E670, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    sub_1B9F0B95C(&qword_1EDC5E660, &qword_1EDC5E670, v32);
    sub_1BA4A7C38();
    (*(v49 + 104))(v48, *MEMORY[0x1E69E8090], v50);
    v34 = sub_1BA4A7328();
    aBlock[4] = sub_1B9F0B084;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F0B040;
    aBlock[3] = &block_descriptor_64_0;
    v35 = _Block_copy(aBlock);

    sub_1BA4A64A8();
    v51 = MEMORY[0x1E69E7CC0];
    sub_1B9F0AFA8(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v36 = MEMORY[0x1E69E7F60];
    sub_1B9F0AA08(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], v33);
    sub_1B9F0B95C(&qword_1EDC5E6A0, &qword_1EDC5E6B0, v36);
    v37 = v43;
    sub_1BA4A7C38();
    MEMORY[0x1BFAF1D50](0, v31, v37, v35);
    _Block_release(v35);

    (*(v47 + 8))(v37, v2);
    (*(v40 + 8))(v31, v42);
  }
}

unint64_t sub_1B9F0B82C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B9F0AC90(v11, 0, 0, 1, a1, a2);
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
    sub_1B9F0AD9C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_1B9F0B8F8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1B9F22538(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B9F0B95C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1B9F0AA08(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
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

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_62(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_63(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_65(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_66(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_67(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_69(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_72(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_73(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_75(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_76(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_77(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_79(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_81(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_82(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_83(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_85(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_86(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_87(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_89(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_91(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_92(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_93(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_95(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_96(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_97(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_99(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_101(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_102(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_103(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_104(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_105(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_106(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_107(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_109(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_110(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_111(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_112(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_113(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_114(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_115(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_116(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_117(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_118(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_119(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_120(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_121(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_122(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_123(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_124(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_125(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_126(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_127(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_129(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_130(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B9F0C200()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v23 - v7;
  sub_1B9F0E9CC();
  v24 = v9;
  sub_1BA4A3DD8();
  v10 = sub_1BA4A3E88();
  v11 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v2;
    v14 = v13;
    v25 = v13;
    *v12 = 136446210;
    v15 = sub_1BA4A85D8();
    v17 = sub_1B9F0B82C(v15, v16, &v25);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1B9F07000, v10, v11, "[%{public}s] Created render pipeline state", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1BFAF43A0](v14, -1, -1);
    MEMORY[0x1BFAF43A0](v12, -1, -1);

    v18 = (*(v3 + 8))(v8, v23);
  }

  else
  {

    v18 = (*(v3 + 8))(v8, v2);
  }

  v20 = *(v1 + 16);
  MEMORY[0x1EEE9AC00](v18, v19);
  *(&v23 - 2) = v24;

  os_unfair_lock_lock((v20 + 24));
  sub_1B9F0E574((v20 + 16), v21);
  os_unfair_lock_unlock((v20 + 24));
  swift_unknownObjectRelease();
}

uint64_t type metadata accessor for HealthExperienceStoreIncrementalCoreSpotlightOperation(uint64_t a1)
{
  result = qword_1EDC6DE08;
  if (!qword_1EDC6DE08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HealthExperienceStoreIncrementalCoreSpotlightOperation.init(store:)(void *a1)
{
  sub_1B9F0A534(a1, v4);
  v2 = sub_1BA4A3AB8();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_1B9F0C670()
{
  type metadata accessor for HealthExperienceStoreIncrementalCoreSpotlightDelegate(0);
  sub_1BA4A3AA8();
  return sub_1BA4A3A78();
}

uint64_t type metadata accessor for HealthExperienceStoreIncrementalCoreSpotlightDelegate(uint64_t a1)
{
  result = qword_1EDC6DE18;
  if (!qword_1EDC6DE18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *CloudSyncStateObserver.init(healthStore:store:)(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_1B9F0C700(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR____TtC18HealthExperienceUI22CloudSyncStateObserver__cachedFirstRestoreState;
  v11 = sub_1BA4A2D28();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_1B9F0CD84(0, &unk_1EDC6E210, sub_1B9F0C700, MEMORY[0x1E69A3DC0]);
  swift_allocObject();
  *&v3[v10] = sub_1BA4A24F8();
  v12 = &v3[OBJC_IVAR____TtC18HealthExperienceUI22CloudSyncStateObserver_firstRestoreStateChangeHandler];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v3[OBJC_IVAR____TtC18HealthExperienceUI22CloudSyncStateObserver_stateChangeHandler];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI22CloudSyncStateObserver_cloudSyncObserver] = 0;
  v14 = &v3[OBJC_IVAR____TtC18HealthExperienceUI22CloudSyncStateObserver_store];
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0;
  swift_beginAccess();
  sub_1B9F0D8D4(a2, v14);
  swift_endAccess();
  v15 = type metadata accessor for CloudSyncStateObserver();
  v24.receiver = v3;
  v24.super_class = v15;
  v16 = objc_msgSendSuper2(&v24, sel_init);
  v17 = objc_allocWithZone(MEMORY[0x1E696BFE8]);
  v18 = v16;
  v19 = [v17 initWithHealthStore:a1 delegate:v18];
  v20 = *&v18[OBJC_IVAR____TtC18HealthExperienceUI22CloudSyncStateObserver_cloudSyncObserver];
  *&v18[OBJC_IVAR____TtC18HealthExperienceUI22CloudSyncStateObserver_cloudSyncObserver] = v19;

  v23 = a2;

  sub_1BA4A24E8();

  sub_1B9F0E17C(a2);
  return v18;
}

void sub_1B9F0C974(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0C9D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0CA3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0CAA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0CB04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0CB68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0CBCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0CC30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0CC94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_1B9F0CD28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for HealthExperienceStoreIncrementalCoreSpotlightDelegate(0);
  return objc_msgSendSuper2(&v7, sel_initForStoreWithDescription_coordinator_, a3, a4);
}

void sub_1B9F0CD84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0CDE8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1B9F0D950(255, a3, a4);
    v5 = sub_1BA4A7AA8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1B9F0CE40(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1B9F0D9AC(255, a3, a4, 1);
    v5 = sub_1BA4A7AA8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1B9F0CE9C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D9AC(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F0CF08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0CF6C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D950(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F0CFD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F0D028(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0D08C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0D0F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F0D144(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D9AC(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F0D1B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1B9F0D20C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F0D260(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D950(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F0D2C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F0D31C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F0D370(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F0D3C4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D9AC(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F0D430(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F0D484(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F0D4D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1B9F0D534(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0D598(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0D5FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1B9F0D658(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F0D6BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1B9F0D718(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1B9F0D774(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F0D7C8(uint64_t a1)
{
  sub_1BA4A3A88();
  v3 = sub_1BA4A3A98();
  v3(a1);
  v4 = objc_opt_self();
  v5 = [v4 defaultCenter];
  [v5 addObserver:v1 selector:sel_appDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

  v6 = [v4 defaultCenter];
  [v6 addObserver:v1 selector:sel_appWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
}

uint64_t sub_1B9F0D8D4(uint64_t a1, uint64_t a2)
{
  sub_1B9F0CDE8(0, &qword_1EDC6D4C0, qword_1EDC6D4C8, &protocol descriptor for CloudSyncStateStore);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9F0D950(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1B9F0D9AC(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1B9F0DA08(uint64_t a1, uint64_t a2)
{
  sub_1B9F0C700(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0DF80(a1, sub_1B9F0C700);
  sub_1B9F0E100(a2, v13);
  v8 = v14;
  if (v14)
  {
    v9 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v9 + 8))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_1B9F0E17C(v13);
    v10 = sub_1BA4A2D28();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  }

  return sub_1B9F0E1F0(v7, a1);
}

uint64_t sub_1B9F0DB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F0DBB4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1B9F23398(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F0DC10(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1B9F233E4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F0DC80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F0DCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F0DD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F0DDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F0DE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F0DE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F0DEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F0DF20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F0DF80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F0DFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F0E040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F0E0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1B9F0E100(uint64_t a1, uint64_t a2)
{
  sub_1B9F0CDE8(0, &qword_1EDC6D4C0, qword_1EDC6D4C8, &protocol descriptor for CloudSyncStateStore);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9F0E17C(uint64_t a1)
{
  sub_1B9F0CDE8(0, &qword_1EDC6D4C0, qword_1EDC6D4C8, &protocol descriptor for CloudSyncStateStore);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B9F0E1F0(uint64_t a1, uint64_t a2)
{
  sub_1B9F0C700(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9F0E2A8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_1B9F0E310(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id sub_1B9F0E320()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E68();
  v6 = v0;
  v7 = sub_1BA4A3E88();
  v8 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v9 = 136446466;
    v10 = v6;
    v11 = [v10 description];
    v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v19 = v1;
    v14 = v13;

    v15 = sub_1B9F0B82C(v12, v14, &v21);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_1B9F0B82C(0xD00000000000001BLL, 0x80000001BA504EF0, &v21);
    _os_log_impl(&dword_1B9F07000, v7, v8, "%{public}s - %{public}s", v9, 0x16u);
    v16 = v20;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v16, -1, -1);
    MEMORY[0x1BFAF43A0](v9, -1, -1);

    (*(v2 + 8))(v5, v19);
  }

  else
  {

    (*(v2 + 8))(v5, v1);
  }

  result = *&v6[OBJC_IVAR____TtC18HealthExperienceUI22CloudSyncStateObserver_cloudSyncObserver];
  if (result)
  {
    return [result startSyncIfRestoreNotCompleted];
  }

  __break(1u);
  return result;
}

void *sub_1B9F0E574(void *result, uint64_t a2)
{
  if (!*result)
  {
    *result = *(v2 + 16);
    return swift_unknownObjectRetain();
  }

  return result;
}

void sub_1B9F0E9CC()
{
  v34[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MTLCreateSystemDefaultDevice();
  if (v6)
  {
    v7 = v6;
    type metadata accessor for ProfileGradientView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    v34[0] = 0;
    v10 = [v7 newDefaultLibraryWithBundle:v9 error:v34];

    v11 = v34[0];
    if (v10)
    {
      v12 = objc_allocWithZone(MEMORY[0x1E6974148]);
      v13 = v11;
      v14 = [v12 init];
      v15 = sub_1BA4A6758();
      v16 = [v10 newFunctionWithName_];

      [v14 setVertexFunction_];
      swift_unknownObjectRelease();
      v17 = sub_1BA4A6758();
      v18 = [v10 newFunctionWithName_];

      [v14 setFragmentFunction_];
      swift_unknownObjectRelease();
      v19 = [v14 colorAttachments];
      v20 = [v19 objectAtIndexedSubscript_];

      if (v20)
      {
        [v20 setPixelFormat_];

        v34[0] = 0;
        v21 = [v7 newRenderPipelineStateWithDescriptor:v14 error:v34];
        v22 = v34[0];
        if (!v21)
        {
          v32 = v22;
          sub_1BA4A1488();

          swift_willThrow();
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v31 = v34[0];
      sub_1BA4A1488();

      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1BA4A3DD8();
    v23 = sub_1BA4A3E88();
    v24 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v33[1] = v0;
      v26 = v25;
      v27 = swift_slowAlloc();
      v34[0] = v27;
      *v26 = 136446210;
      v28 = sub_1BA4A85D8();
      v30 = sub_1B9F0B82C(v28, v29, v34);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1B9F07000, v23, v24, "[%{public}s] Failed to create Metal device", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
      MEMORY[0x1BFAF43A0](v26, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }
}

void sub_1B9F0EE90(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_delayAnimation] = 0;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_lastAnimate;
  *&v4[v9] = CACurrentMediaTime();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_angle] = 0;
  v10 = &v4[OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_staticAngle];
  *v10 = 0;
  v10[4] = 1;
  v4[OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_displayLinkAdded] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_displayLink] = 0;
  v23.receiver = v4;
  v23.super_class = type metadata accessor for ProfileGradientView();
  v11 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = type metadata accessor for WeakProxy();
  v13 = objc_allocWithZone(v12);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v22.receiver = v13;
  v22.super_class = v12;
  v14 = v11;
  v15 = objc_msgSendSuper2(&v22, sel_init);
  v16 = [objc_opt_self() displayLinkWithTarget:v15 selector:{sel_updateGradient, v22.receiver, v22.super_class}];

  v17 = *&v14[OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_displayLink];
  *&v14[OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_displayLink] = v16;
  v18 = v16;

  if (v18)
  {
    [v18 setPaused_];

    v19 = v14;
    [v19 setOpaque_];
    v20 = [objc_opt_self() effectWithStyle_];
    v21 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

    [v21 setTranslatesAutoresizingMaskIntoConstraints_];
    [v19 addSubview_];
    [v21 hk:v19 alignConstraintsWithView:?];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B9F0F14C(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_1B9F0F1B8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B9F0F208()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 24));
  sub_1B9F0F1EC((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v4;

  return v2;
}

void sub_1B9F0F2FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1B9F0F360()
{
  result = qword_1EDC6E380;
  if (!qword_1EDC6E380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6E380);
  }

  return result;
}

id sub_1B9F0F3F4(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v1[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_usesAdaptiveMargins] = 1;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_collectionViewBackgroundColor] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController____lazy_storage___dataSource] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceAdaptor] = 0;
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC840]) init];
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for CompoundDataSourceCollectionViewController();
  v5 = a1;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCollectionViewLayout_, v4);

  return v6;
}

uint64_t sub_1B9F0F4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B9F0C700(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B9F0DF80(a1, sub_1B9F0C700);
  v10 = sub_1B9F104B4(v19);
  if (*(v9 + 24))
  {
    v11 = v9;
    v12 = sub_1BA4A2D28();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v8, a3, v12);
    (*(v13 + 56))(v8, 0, 1, v12);
    v14 = *(v11 + 24);
    v15 = *(v11 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v11, v14);
    (*(v15 + 16))(v8, v14, v15);
  }

  (v10)(v19, 0);
  v16 = sub_1BA4A2D28();
  v17 = *(v16 - 8);
  (*(v17 + 16))(a1, a3, v16);
  return (*(v17 + 56))(a1, 0, 1, v16);
}

id sub_1B9F0F724()
{
  v1 = v0;
  if (qword_1EDC648D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TapToRadarVisibilityManager(0);
  __swift_project_value_buffer(v2, qword_1EDC648D8);
  if (![objc_opt_self() isAppleInternalInstall])
  {
    return 0;
  }

  sub_1BA243838(0, &qword_1EDC6ADF0, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  sub_1BA4A1CA8();
  if (v7)
  {
    return 0;
  }

  v4 = sub_1BA4A6758();
  v5 = [objc_opt_self() systemImageNamed_];

  v6 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v5 style:0 target:v1 action:sel_ttrButtonTapped];
  return v6;
}

uint64_t sub_1B9F0F880()
{
  v0 = type metadata accessor for TapToRadarVisibilityManager(0);
  __swift_allocate_value_buffer(v0, qword_1EDC648D8);
  __swift_project_value_buffer(v0, qword_1EDC648D8);
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v1 = [objc_opt_self() standardUserDefaults];
  return sub_1BA4A1CC8();
}

uint64_t CloudSyncStateObserver.cloudSyncObserver(_:syncFailedWithError:)(void *a1, void *a2)
{
  v68 = a1;
  v4 = sub_1BA4A2D28();
  v69 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v60 - v10;
  v12 = sub_1BA4A3EA8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E68();
  v17 = v2;
  v18 = a2;
  v19 = sub_1BA4A3E88();
  v20 = sub_1BA4A6FC8();

  v67 = a2;
  v66 = v20;
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v65 = v4;
    v22 = v21;
    v63 = swift_slowAlloc();
    v71 = v63;
    *v22 = 136446722;
    v23 = v17;
    v61 = v19;
    v24 = v23;
    v25 = [v23 description];
    v64 = v12;
    v26 = v25;
    v27 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v62 = v13;
    v28 = v7;
    v29 = v27;
    v31 = v30;

    v32 = v29;
    v7 = v28;
    v33 = sub_1B9F0B82C(v32, v31, &v71);

    *(v22 + 4) = v33;
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_1B9F0B82C(0xD000000000000029, 0x80000001BA504F40, &v71);
    *(v22 + 22) = 2082;
    v70 = v67;
    v34 = v67;
    sub_1B9F0CDE8(0, &qword_1EDC6B3E0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    v35 = sub_1BA4A6808();
    v37 = sub_1B9F0B82C(v35, v36, &v71);

    *(v22 + 24) = v37;
    v38 = v61;
    _os_log_impl(&dword_1B9F07000, v61, v66, "%{public}s - %{public}s, error: %{public}s", v22, 0x20u);
    v39 = v63;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v39, -1, -1);
    v40 = v22;
    v4 = v65;
    MEMORY[0x1BFAF43A0](v40, -1, -1);

    (*(v62 + 8))(v16, v64);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  v41 = [v68 status];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 errorRequiringUserAction];
    if (!v43)
    {
      v53 = (*(v69 + 104))(v11, *MEMORY[0x1E69A32D0], v4);
      MEMORY[0x1EEE9AC00](v53, v54);
      *(&v60 - 2) = v17;
      *(&v60 - 1) = v11;

      sub_1BA4A24E8();

      v56 = (*((*MEMORY[0x1E69E7D40] & *v17) + 0x98))(v55);
      if (v56)
      {
        v58 = v56;
        v59 = v57;
        v56(v11);

        sub_1B9F0E310(v58, v59);
      }

      else
      {
      }

      return (*(v69 + 8))(v11, v4);
    }

    v44 = v43;
  }

  v45 = (*(v69 + 104))(v7, *MEMORY[0x1E69A32E0], v4);
  MEMORY[0x1EEE9AC00](v45, v46);
  *(&v60 - 2) = v17;
  *(&v60 - 1) = v7;

  sub_1BA4A24E8();

  v48 = (*((*MEMORY[0x1E69E7D40] & *v17) + 0x98))(v47);
  if (v48)
  {
    v50 = v48;
    v51 = v49;
    v48(v7);
    sub_1B9F0E310(v50, v51);
  }

  v11 = v7;
  return (*(v69 + 8))(v11, v4);
}

char *ProfileGradientWithFadeView.init(frame:)(double a1, double a2, double a3, double a4)
{
  type metadata accessor for ProfileGradientView();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI27ProfileGradientWithFadeView_gradientView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for FadeView();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI27ProfileGradientWithFadeView_fadeView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v42.receiver = v4;
  v42.super_class = type metadata accessor for ProfileGradientWithFadeView();
  v9 = objc_msgSendSuper2(&v42, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 clearColor];
  [v11 setBackgroundColor_];

  v13 = OBJC_IVAR____TtC18HealthExperienceUI27ProfileGradientWithFadeView_gradientView;
  [*&v11[OBJC_IVAR____TtC18HealthExperienceUI27ProfileGradientWithFadeView_gradientView] setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 addSubview_];
  v14 = OBJC_IVAR____TtC18HealthExperienceUI27ProfileGradientWithFadeView_fadeView;
  [*&v11[OBJC_IVAR____TtC18HealthExperienceUI27ProfileGradientWithFadeView_fadeView] setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 addSubview_];
  v41 = objc_opt_self();
  sub_1B9F109F8();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4BBC90;
  v16 = [*&v11[v13] leadingAnchor];
  v17 = [v11 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v15 + 32) = v18;
  v19 = [*&v11[v13] topAnchor];
  v20 = [v11 topAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v15 + 40) = v21;
  v22 = [*&v11[v13] trailingAnchor];
  v23 = [v11 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v15 + 48) = v24;
  v25 = [*&v11[v13] bottomAnchor];
  v26 = [v11 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v15 + 56) = v27;
  v28 = [*&v11[v14] leadingAnchor];
  v29 = [v11 leadingAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v15 + 64) = v30;
  v31 = [*&v11[v14] bottomAnchor];
  v32 = [v11 bottomAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v15 + 72) = v33;
  v34 = [*&v11[v14] trailingAnchor];
  v35 = [v11 trailingAnchor];

  v36 = [v34 constraintEqualToAnchor_];
  *(v15 + 80) = v36;
  v37 = [*&v11[v14] heightAnchor];
  v38 = [v37 constraintEqualToConstant_];

  *(v15 + 88) = v38;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v39 = sub_1BA4A6AE8();

  [v41 activateConstraints_];

  return v11;
}

char *sub_1B9F10538()
{
  v1 = &v0[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_uniforms];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  *(v1 + 4) = 0u;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_commandQueue] = 0;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_texcoordsBuffer] = 0;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_uniformsBuffer] = 0;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_pipelineState] = 0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for GradientLayer();
  v2 = objc_msgSendSuper2(&v16, sel_init);
  v3 = [v2 device];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 newCommandQueue];
    *&v2[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_commandQueue] = v5;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (v5)
    {
      swift_unknownObjectRelease();
      __asm { FMOV            V1.2S, #1.0 }

      v15[0] = 0x3F80000000000000;
      v15[1] = _D1;
      v15[2] = 0;
      v15[3] = 1065353216;
      v11 = [v4 newBufferWithBytes:v15 length:32 options:0];
      *&v2[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_texcoordsBuffer] = v11;
      swift_unknownObjectRelease();
      v12 = OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_uniforms;
      swift_beginAccess();
      v13 = [v4 newBufferWithBytes:&v2[v12] length:80 options:0];
      swift_endAccess();
      *&v2[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_uniformsBuffer] = v13;
      swift_unknownObjectRelease();
      if (qword_1EDC62BC8 != -1)
      {
        swift_once();
      }

      *&v2[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_pipelineState] = sub_1B9F0F208();
      swift_unknownObjectRelease();
      [v2 setOpaque_];
    }

    swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t sub_1B9F1073C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  v30 = a2;
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    *a4 = *a1;
  }

  else
  {
    sub_1BA4A3DD8();
    v11 = sub_1BA4A3E88();
    v29 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v11, v29))
    {
      v12 = swift_slowAlloc();
      v26 = v12;
      v28 = swift_slowAlloc();
      v32 = v28;
      *v12 = 136446210;
      v13 = sub_1BA4A85D8();
      v15 = sub_1B9F0B82C(v13, v14, &v32);
      v27 = a1;
      v16 = a4;
      v17 = v15;

      v18 = v26;
      *(v26 + 1) = v17;
      a4 = v16;
      v19 = v11;
      v20 = v11;
      v21 = v18;
      _os_log_impl(&dword_1B9F07000, v19, v29, "[%{public}s] No created render pipeline state yet, creating one synchronously", v18, 0xCu);
      v22 = v28;
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1BFAF43A0](v22, -1, -1);
      MEMORY[0x1BFAF43A0](v21, -1, -1);

      a1 = v27;
    }

    else
    {
    }

    (*(v7 + 8))(v10, v6);
    v23 = v31;
    sub_1B9F0E9CC();
    if (v23)
    {

      v24 = 0;
    }

    *a1 = v24;
    *a4 = v24;
    swift_unknownObjectRetain();
  }

  return swift_unknownObjectRetain();
}

void sub_1B9F109F8()
{
  if (!qword_1EDC6B400)
  {
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6B400);
    }
  }
}

uint64_t sub_1B9F10A90(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_delayAnimation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t EmptyGradientColorProvider.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  sub_1B9F10B50(0);
  swift_allocObject();
  result = sub_1BA4A4DF8();
  *a1 = result;
  a1[1] = v2;
  return result;
}

void sub_1B9F10B50(uint64_t a1)
{
  if (!qword_1EDC5F460)
  {
    sub_1B9F0F2FC(255, &unk_1EDC5E650, sub_1B9F0F360, MEMORY[0x1E69E62F8]);
    v1 = sub_1BA4A4DD8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F460);
    }
  }
}

uint64_t sub_1B9F10BE8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider;
  swift_beginAccess();
  sub_1B9F10C48(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1B9F10C48(uint64_t a1, uint64_t a2)
{
  sub_1B9F10CD8(0, &qword_1EDC6BAD0, qword_1EDC6BAE0, &protocol descriptor for CompoundSectionedDataSourceProvider, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1B9F10CD8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D9AC(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

char *sub_1B9F10D68(void *a1, void *a2, void *a3)
{
  v4 = v3;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController____lazy_storage___store) = 0;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_syncObserver;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_syncObserver) = 0;
  v9 = (v4 + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_sidebarSelectionIdentifier);
  *v9 = 0xD000000000000019;
  v9[1] = 0x80000001BA4E3770;
  sub_1B9F0A534(a1, v4 + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_healthExperienceStore);
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_healthStore) = a2;
  sub_1B9F0A534(a3, v4 + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_pinnedContentManager);
  sub_1B9F0ADF8(0, &unk_1EDC5E3E0, 0x1E696BFE8);
  v10 = a2;
  *&v34[0] = sub_1BA4A7438();
  sub_1B9F1146C(0);
  sub_1B9F114D4(&qword_1EDC5F478, sub_1B9F1146C, MEMORY[0x1E695BED8]);
  v11 = sub_1BA4A4F98();

  swift_beginAccess();
  *(v4 + v8) = v11;

  sub_1B9F0A534(a1, v34);
  sub_1B9F0A534(a3, v33);
  v12 = swift_allocObject();
  sub_1B9F1134C(v34, v12 + 16);
  *(v12 + 56) = v10;
  sub_1B9F1134C(v33, v12 + 64);
  v13 = (v4 + OBJC_IVAR____TtC18HealthExperienceUI35PlatformTabCollectionViewController_makeDataSource);
  *v13 = sub_1BA00CD78;
  v13[1] = v12;
  type metadata accessor for CompoundSectionedDataSource(0);
  v14 = v10;

  v15 = CompoundSectionedDataSource.__allocating_init(_:)(MEMORY[0x1E69E7CC0]);
  v16 = CompoundDataSourceCollectionViewController.init(dataSource:)(v15);

  v17 = v16;
  v18 = [v17 navigationItem];
  [v18 setLargeTitleDisplayMode_];

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v19 = sub_1BA4A6758();

  [v17 setTitle_];

  v20 = [v17 navigationItem];
  sub_1BA4A1318();
  v21 = sub_1BA4A6758();

  [v20 setTitle_];

  sub_1BA4A1318();
  v22 = sub_1BA4A6758();
  v23 = [objc_opt_self() systemImageNamed_];

  v24 = objc_allocWithZone(MEMORY[0x1E69DD008]);
  v25 = sub_1BA4A6758();

  v26 = [v24 initWithTitle:v25 image:v23 selectedImage:0];

  [v17 setTabBarItem_];
  v27 = sub_1B9F11914();
  v32 = v27;
  *&v34[0] = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    v28 = v27;
    MEMORY[0x1BFAF1510]();
    if (*((*&v34[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v34[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
  }

  sub_1BA00A89C(&v32, &qword_1EDC5E510, &qword_1EDC6B600, 0x1E69DC708, sub_1B9F6A804);
  v29 = [v17 navigationItem];

  sub_1B9F0ADF8(0, &qword_1EDC6B600, 0x1E69DC708);
  v30 = sub_1BA4A6AE8();

  [v29 setRightBarButtonItems_];

  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v17;
}

uint64_t sub_1B9F1134C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1B9F11364()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

char *SharingOverviewViewController.init(healthExperienceStore:healthStore:pinnedContentManager:)(void *a1, void *a2, void *a3)
{
  v4 = sub_1B9F10D68(a1, a2, a3);

  return v4;
}

void sub_1B9F113DC(uint64_t a1)
{
  if (!qword_1EDC5DB50)
  {
    sub_1B9F0ADF8(255, &qword_1EDC5E2F8, 0x1E696BFF0);
    sub_1B9F0D950(255, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    v1 = sub_1BA4A8508();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5DB50);
    }
  }
}

void sub_1B9F1146C(uint64_t a1)
{
  if (!qword_1EDC5F470)
  {
    sub_1B9F113DC(255);
    v1 = sub_1BA4A4D18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F470);
    }
  }
}

uint64_t sub_1B9F114D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1B9F1153C()
{
  type metadata accessor for DiffableCollectionViewAdaptor(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EDC84A30 = result;
  return result;
}

uint64_t sub_1B9F11594(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B9F115CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F11630(uint64_t a1)
{
  sub_1B9F115CC(319, &qword_1EDC6ADE0, sub_1B9F1174C, MEMORY[0x1E69A3C40]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DiffableCollectionViewAdaptor.DebugState(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B9F1174C()
{
  if (!qword_1EDC6B650)
  {
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6B650);
    }
  }
}

void sub_1B9F117BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void *))
{
  if (!*a2)
  {
    v9[6] = v4;
    v9[7] = v5;
    v9[0] = MEMORY[0x1E69E6158];
    v9[1] = MEMORY[0x1E69E6158];
    v9[2] = a3;
    v9[3] = a3;
    v7 = a4(0, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1B9F11824(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void *))
{
  if (!*a2)
  {
    v9[6] = v4;
    v9[7] = v5;
    v9[0] = MEMORY[0x1E69E6158];
    v9[1] = MEMORY[0x1E69E6158];
    v9[2] = a3;
    v9[3] = a3;
    v7 = a4(0, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1B9F1188C(uint64_t a1)
{
  sub_1B9F11824(319, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t sub_1B9F11954(uint64_t a1)
{
  result = sub_1BA4A3D08();
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

uint64_t sub_1B9F119F8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BA4A3EA8();
  MEMORY[0x1EEE9AC00](v2, v3);
  sub_1BA4A3C48();
  sub_1BA4A3C38();
  v4 = sub_1BA4A3B58();

  v5 = NSBundle.getPluginAppDelegateClass()();

  return v5;
}

uint64_t NSBundle.getPluginAppDelegateClass()()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v39 - v9;
  v11 = sub_1BA4A6758();
  v12 = [v1 objectForInfoDictionaryKey_];

  if (v12)
  {
    sub_1BA4A7BF8();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v42[0] = v40;
  v42[1] = v41;
  if (!*(&v41 + 1))
  {
    sub_1B9F23224(v42);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    sub_1BA4A3E08();
    v21 = v1;
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v22, v23))
    {
      v43 = v2;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v42[0] = v25;
      *v24 = 136446210;
      v26 = [v21 bundleIdentifier];
      if (!v26)
      {
        v26 = [v21 bundlePath];
      }

      v27 = v26;
      v28 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v30 = v29;

      v31 = sub_1B9F0B82C(v28, v30, v42);

      *(v24 + 4) = v31;
      _os_log_impl(&dword_1B9F07000, v22, v23, "Unable to locate PluginAppDelegateClass for %{public}s\n", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v24, -1, -1);

      (*(v3 + 8))(v6, v43);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    v32 = 0;
    goto LABEL_21;
  }

  v14 = v39[0];
  v13 = v39[1];
  v15 = sub_1BA4A6758();
  v16 = NSClassFromString(v15);

  if (v16)
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
    v18 = swift_conformsToProtocol2();
    if (v18)
    {
      if (ObjCClassMetadata)
      {
        v19 = v18;

        return (*(v19 + 8))(ObjCClassMetadata, v19);
      }
    }
  }

  sub_1BA4A3E08();

  v33 = sub_1BA4A3E88();
  v34 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v42[0] = v36;
    *v35 = 136315138;
    v37 = sub_1B9F0B82C(v14, v13, v42);

    *(v35 + 4) = v37;
    _os_log_impl(&dword_1B9F07000, v33, v34, "Class does not conform to PluginAppDelegateProtocol %s\n", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1BFAF43A0](v36, -1, -1);
    MEMORY[0x1BFAF43A0](v35, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v10, v2);
  v32 = 1;
LABEL_21:
  sub_1BA0714F4();
  swift_allocError();
  *v38 = v32;
  return swift_willThrow();
}

uint64_t sub_1B9F12138(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B9F121A0(uint64_t a1)
{
  result = type metadata accessor for SearchDataSource.State(319);
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1B9F12264(uint64_t a1)
{
  sub_1B9F117BC(319, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1B9F12358(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
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

void sub_1B9F12480(uint64_t a1)
{
  sub_1B9F12538();
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_1B9F12538()
{
  if (!qword_1EDC5F8A0)
  {
    v0 = sub_1BA4A45E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F8A0);
    }
  }
}

uint64_t sub_1B9F125E4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for MutableArrayDataSource(uint64_t a1)
{
  result = qword_1EDC67218;
  if (!qword_1EDC67218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B9F126E0(uint64_t a1)
{
  if (!qword_1EDC61B00[0])
  {
    v2 = sub_1BA4A27B8();
    v3 = sub_1B9F15730();
    v5 = type metadata accessor for FetchedResultsControllerDataSource(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_1EDC61B00);
    }
  }
}

unint64_t sub_1B9F12744(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B9F24D7C(0, &qword_1EDC5E000, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    v3 = sub_1BA4A8098();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1B9F24A34(v5, v6);
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

uint64_t sub_1B9F12868(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_1B9F128B4()
{

  return sub_1B9F1290C();
}

id sub_1B9F1290C()
{

  return sub_1B9F12964();
}

id sub_1B9F12964()
{
  v1 = v0;
  v27[4] = *MEMORY[0x1E69E9840];
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_1EDC84AD8;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v27[0] = 0;
  v9 = [v8 performFetch_];
  v10 = v27[0];
  if (v9)
  {

    return v10;
  }

  else
  {
    v26[0] = v27[0];
    v12 = v27[0];
    v13 = sub_1BA4A1488();

    swift_willThrow();
    sub_1BA4A3D88();
    v14 = v13;
    v15 = sub_1BA4A3E88();
    v16 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27[0] = v18;
      *v17 = 136446466;
      v19 = sub_1BA4A85D8();
      v21 = sub_1B9F0B82C(v19, v20, v27);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2082;
      v26[1] = v13;
      v22 = v13;
      sub_1B9FED358();
      v23 = sub_1BA4A6808();
      v25 = sub_1B9F0B82C(v23, v24, v27);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_1B9F07000, v15, v16, "[%{public}s] Failed to perform CoreData fetch: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v18, -1, -1);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
    }

    else
    {
    }

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_1B9F12C70(uint64_t a1)
{
  sub_1B9F12538();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F15B84(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC5E4A0, 0x1E695D630);
  sub_1B9F15C34(&qword_1EDC5E490, &qword_1EDC5E4A0, 0x1E695D630);
  sub_1BA4A45C8();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x120))(v11);
  sub_1B9F17734(v5);
  sub_1B9F13370();
  return (*(v8 + 8))(v11, v7);
}

void sub_1B9F12E40(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1B9F12C70(v7);
}

uint64_t sub_1B9F12EB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1BFAF17D0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1BA0E1C3C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1B9F12F50(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v41 = a1;
  v42 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v43 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v14 = &v30 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v39 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v33 = *(v18 - 8);
  v34 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v30 - v20;
  v22 = sub_1BA4A6E18();
  if (!v22)
  {
    return sub_1BA4A6B88();
  }

  v44 = v22;
  v48 = sub_1BA4A7F48();
  v35 = sub_1BA4A7F58();
  sub_1BA4A7EF8();
  result = sub_1BA4A6DF8();
  if ((v44 & 0x8000000000000000) == 0)
  {
    v30 = v10;
    v31 = a5;
    v24 = 0;
    v36 = (v45 + 16);
    v37 = (v45 + 8);
    v38 = v8;
    while (!__OFADD__(v24, 1))
    {
      v45 = v24 + 1;
      v25 = sub_1BA4A6E88();
      v26 = v14;
      v27 = v14;
      v28 = AssociatedTypeWitness;
      (*v36)(v26);
      v25(v47, 0);
      v29 = v46;
      v41(v27, v43);
      if (v29)
      {
        (*v37)(v27, v28);
        (*(v33 + 8))(v21, v34);

        return (*(v30 + 32))(v32, v43, v31);
      }

      v46 = 0;
      (*v37)(v27, v28);
      sub_1BA4A7F38();
      result = sub_1BA4A6E48();
      ++v24;
      v14 = v27;
      if (v45 == v44)
      {
        (*(v33 + 8))(v21, v34);
        return v48;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9F13370()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1B9F12538();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v15 - v11;
  type metadata accessor for FetchedResultsControllerDataSource(0, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v13);
  SnapshotDataSource.notifyObserversSnapshotDidChange(animated:)(1);
  sub_1B9F13694(v8);
  sub_1B9F177C4(v12);
  (*(v5 + 8))(v8, v4);
  return sub_1B9F17734(v12);
}

Swift::Void __swiftcall SnapshotDataSource.notifyObserversSnapshotDidChange(animated:)(Swift::Bool animated)
{
  v4 = v2;
  v5 = v1;
  v7 = (*(v2 + 40))();
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v4;
  *(v8 + 32) = v3;
  *(v8 + 40) = animated;
  v10[4] = sub_1B9F8A2D4;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1B9F8A254;
  v10[3] = &block_descriptor_14;
  v9 = _Block_copy(v10);
  swift_unknownObjectRetain();

  [v7 notifyObservers_];
  _Block_release(v9);
}

uint64_t sub_1B9F135EC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

id sub_1B9F13624()
{
  v0 = sub_1B9F13650();

  return v0;
}

uint64_t sub_1B9F13650()
{
  v1 = qword_1EBBEA528;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B9F13694@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EDC84AC8;
  swift_beginAccess();
  sub_1B9F12538();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1B9F1374C(uint64_t a1)
{
  v13 = a1;
  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v11, v14);
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v2 = sub_1BA4A2D58();
    v4 = v3;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v5 = sub_1BA4A2E58();
    v7 = v6;
    v8 = qword_1EDC61B88;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v1 + v8);
    *(v1 + v8) = 0x8000000000000000;
    sub_1B9F248E4(v5, v7, v2, v4, isUniquelyReferenced_nonNull_native);

    *(v1 + v8) = v13;
    swift_endAccess();
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    return sub_1B9F7B644(v11);
  }
}

uint64_t sub_1B9F13924(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t FeedItem.reuseIdentifier.getter()
{
  v1 = v0;
  v2 = sub_1BA4A1DD8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v46 - v9;
  v11 = sub_1BA4A2718();
  v13 = v12;
  v15 = v14;
  v16 = sub_1BA4A1D88();
  v18 = v17;
  sub_1B9F244F4(v11, v13, v15);
  v54 = v16;
  v55 = v18;
  v51 = &v54;
  if ((sub_1B9F13ED8(sub_1B9F13F84, v50, &unk_1F37FBC38) & 1) == 0)
  {
    v31 = sub_1BA4A2718();
    HostingCellReusePolicy.init(viewControllerIdentifier:userInterface:)(v16, v18, v31, v32, v33, &v54);
    ObjCClassMetadata = v54;
    v29 = v55;
    v30 = v56;
    LODWORD(v49) = v57;
    goto LABEL_5;
  }

  v47 = v6;
  v48 = v10;
  v19 = [v1 uniqueIdentifier];
  v46 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v49 = v20;

  v21 = sub_1BA4A2718();
  v23 = v22;
  v25 = v24;
  UserInterface.hostCellClassName.getter(v21, v22, v24);
  v26 = sub_1BA4A6758();

  v27 = NSClassFromString(v26);

  if (v27)
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
    sub_1B9F244F4(v21, v23, v25);
    v54 = v16;
    v55 = v18;

    MEMORY[0x1BFAF1350](v46, v49);

    LODWORD(v49) = 0;
    v29 = v54;
    v30 = v55;
    v6 = v47;
    v10 = v48;
LABEL_5:
    sub_1BA4A26F8();
    (*(v3 + 104))(v6, *MEMORY[0x1E69A3C68], v2);
    sub_1B9F13924(&qword_1EDC6ADD8, MEMORY[0x1E69A3C70], MEMORY[0x1E69A3C78]);
    sub_1BA4A6A58();
    sub_1BA4A6A58();
    if (v54 == v52 && v55 == v53)
    {
      v34 = *(v3 + 8);
      v34(v6, v2);
      v34(v10, v2);
    }

    else
    {
      v35 = sub_1BA4A8338();
      v36 = *(v3 + 8);
      v36(v6, v2);
      v36(v10, v2);

      if ((v35 & 1) == 0)
      {
        if (v49)
        {
          return ObjCClassMetadata;
        }

        goto LABEL_13;
      }
    }

    v37 = type metadata accessor for HostViewCell(0);
    v38 = v37;
    if (v49)
    {
      sub_1B9F248D8(ObjCClassMetadata, v29, v30, 1);
      v54 = v38;
      sub_1BA011AF0();
      return sub_1BA4A6808();
    }

    ObjCClassMetadata = v37;
LABEL_13:
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1B9F248CC(ObjCClassMetadata, v29, v30, 0);
    v40 = NSStringFromClass(ObjCClassFromMetadata);
    v41 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v43 = v42;

    v54 = v41;
    v55 = v43;

    MEMORY[0x1BFAF1350](0x5F65737565725FLL, 0xE700000000000000);

    MEMORY[0x1BFAF1350](v29, v30);
    sub_1B9F248D8(ObjCClassMetadata, v29, v30, 0);

    sub_1B9F248D8(ObjCClassMetadata, v29, v30, 0);
    return v54;
  }

  v54 = 0;
  v55 = 0xE000000000000000;
  sub_1BA4A7DF8();

  v54 = UserInterface.hostCellClassName.getter(v21, v23, v25);
  v55 = v45;
  MEMORY[0x1BFAF1350](0xD00000000000001ALL, 0x80000001BA4E3A90);
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

uint64_t sub_1B9F13ED8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1B9F13F84(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BA4A8338() & 1;
  }
}

uint64_t type metadata accessor for TapToRadarVisibilityManager(uint64_t a1)
{
  result = qword_1EDC64898;
  if (!qword_1EDC64898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B9F14048(uint64_t a1)
{
  sub_1B9F140B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B9F140B4()
{
  if (!qword_1EDC6ADF0)
  {
    v0 = sub_1BA4A1CE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6ADF0);
    }
  }
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

char *SearchViewController.__allocating_init(healthExperienceStore:healthStore:pinnedContentManager:enhancedSearchResultProvider:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  type metadata accessor for SearchCoordinator();
  sub_1B9F0A534(a1, v20);
  if (*(a4 + 24))
  {
    sub_1B9F0A534(a4, v18);
  }

  else
  {
    v8 = *(a4 + 16);
    v18[0] = *a4;
    v18[1] = v8;
    v19 = *(a4 + 32);
  }

  v9 = sub_1B9F146F0(v20, a2, v18);
  sub_1B9F0A534(a1, v20);
  sub_1B9F0A534(a3, v18);
  v10 = objc_allocWithZone(type metadata accessor for SearchViewController());
  *&v10[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController____lazy_storage___searchController] = 0;
  *&v10[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthStore] = a2;
  sub_1B9F0A534(v20, &v10[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthExperienceStore]);
  sub_1B9F0A534(v18, &v10[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_pinnedContentManager]);
  *&v10[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_searchCoordinator] = v9;
  sub_1B9F0A534(v20, v17);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  sub_1B9F1134C(v17, v11 + 24);
  v12 = &v10[OBJC_IVAR____TtC18HealthExperienceUI35PlatformTabCollectionViewController_makeDataSource];
  *v12 = sub_1BA3D2124;
  v12[1] = v11;
  type metadata accessor for CompoundSectionedDataSource(0);
  v13 = a2;

  v14 = CompoundSectionedDataSource.__allocating_init(_:)(MEMORY[0x1E69E7CC0]);
  v15 = CompoundDataSourceCollectionViewController.init(dataSource:)(v14);

  if (*(a4 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(a4);
  }

  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v15;
}

void sub_1B9F143D4(uint64_t a1)
{
  sub_1B9F14450();
  if (v1 <= 0x3F)
  {
    sub_1BA2717C8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B9F14450()
{
  if (!qword_1EDC5E728)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5E728);
    }
  }
}

uint64_t sub_1B9F144D4(uint64_t a1)
{
  result = sub_1B9F0ADF8(319, &qword_1EDC6B630, 0x1E696AE18);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DirectSearchResult(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B9F14588(uint64_t a1)
{
  sub_1BA4A1798();
  if (v1 <= 0x3F)
  {
    sub_1B9F14678(319, &qword_1EDC5E6D0, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9F14628(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F14678(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for ArrayDataSourceSection);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B9F146F0(void *a1, void *a2, __int128 *a3)
{
  sub_1B9F0A534(a1, v18);
  if (*(a3 + 3))
  {
    sub_1B9F0A534(a3, &v15);
  }

  else
  {
    v6 = a3[1];
    v15 = *a3;
    v16 = v6;
    v17 = *(a3 + 4);
  }

  sub_1B9F14834(a1, a2, v14);
  v7 = type metadata accessor for PluginSearchResultProvider(0);
  swift_allocObject();
  v12 = v7;
  v13 = &off_1EE902140;
  *&v11 = sub_1B9F14B90(0x655268746C616548, 0xED00007364726F63);
  if (*(a3 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1(a3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  v8 = swift_allocObject();
  *(v8 + 176) = 0;
  sub_1B9F1134C(v18, v8 + 16);
  v9 = v16;
  *(v8 + 56) = v15;
  *(v8 + 72) = v9;
  *(v8 + 88) = v17;
  sub_1B9F1134C(v14, v8 + 96);
  sub_1B9F1134C(&v11, v8 + 136);
  return v8;
}

uint64_t sub_1B9F14834@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1BA4A1C88();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1B9F149E4(a2))
  {
    sub_1B9F0A534(a1, v16);
    v11 = type metadata accessor for SpotlightSearchResultProvider(0);
    v12 = swift_allocObject();
    (*(v7 + 104))(v10, *MEMORY[0x1E69A3C28], v6);
    sub_1BA4A1C78();
    (*(v7 + 8))(v10, v6);
    sub_1BA4A3CE8();
    result = sub_1B9F1134C(v16, v12 + OBJC_IVAR____TtC18HealthExperienceUI29SpotlightSearchResultProvider_healthExperienceStore);
    v14 = &protocol witness table for SpotlightSearchResultProvider;
  }

  else
  {
    sub_1B9F0A534(a1, v16);
    v11 = type metadata accessor for CoreDataFeedItemSearchResultProvider();
    v12 = swift_allocObject();
    result = sub_1B9F1134C(v16, v12 + 16);
    v14 = &protocol witness table for CoreDataFeedItemSearchResultProvider;
  }

  a3[3] = v11;
  a3[4] = v14;
  *a3 = v12;
  return result;
}

uint64_t sub_1B9F149E4(void *a1)
{
  v1 = [a1 profileIdentifier];
  v2 = [v1 type];

  v3 = v2 == 1;
  v4 = [objc_opt_self() standardUserDefaults];
  sub_1BA4A1B08();
  sub_1BA4A1AE8();
  v5 = sub_1BA4A6758();

  LODWORD(v2) = [v4 BOOLForKey_];

  return v3 & (v2 ^ 1);
}

uint64_t type metadata accessor for SpotlightSearchResultProvider(uint64_t a1)
{
  result = qword_1EDC63B28;
  if (!qword_1EDC63B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B9F14AF8(uint64_t a1)
{
  result = sub_1BA4A3D08();
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

void *sub_1B9F14B90(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1BA4A3EA8();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A1C88();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v15, *MEMORY[0x1E69A3C28], v10, v13);
  sub_1BA4A1C78();
  (*(v11 + 8))(v15, v10);
  sub_1BA4A3CE8();
  v16 = (v3 + OBJC_IVAR____TtC18HealthExperienceUI26PluginSearchResultProvider_pluginBundleName);
  *v16 = a1;
  v16[1] = a2;

  v17 = sub_1B9F119F8(a1, a2);
  if (!v17 || (v32 = v17, v33 = v18, sub_1B9F0D9AC(0, qword_1EDC681A8, &protocol descriptor for PluginAppDelegate, 0), sub_1B9F0D9AC(0, qword_1EDC64E28, &protocol descriptor for PluginSearchResultProviding, 1), (swift_dynamicCast() & 1) == 0))
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
  }

  v19 = v3 + OBJC_IVAR____TtC18HealthExperienceUI26PluginSearchResultProvider_searchResultProvider;
  v20 = v35;
  *v19 = v34;
  *(v19 + 16) = v20;
  *(v19 + 32) = v36;
  sub_1B9F12138(v19, &v34, sub_1B9F14FAC);
  if (*(&v35 + 1))
  {

    sub_1B9F15018(&v34, sub_1B9F14FAC);
  }

  else
  {
    sub_1B9F15018(&v34, sub_1B9F14FAC);
    sub_1BA4A3E18();

    v21 = sub_1BA4A3E88();
    v22 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v34 = v24;
      *v23 = 136315394;
      v25 = sub_1BA4A85D8();
      v27 = sub_1B9F0B82C(v25, v26, &v34);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v28 = sub_1B9F0B82C(a1, a2, &v34);

      *(v23 + 14) = v28;
      _os_log_impl(&dword_1B9F07000, v21, v22, "[%s] Could not load plugin with bundle name %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      MEMORY[0x1BFAF43A0](v23, -1, -1);
    }

    else
    {
    }

    (*(v30 + 8))(v9, v31);
  }

  return v3;
}

void sub_1B9F14FAC(uint64_t a1)
{
  if (!qword_1EDC64E20)
  {
    sub_1B9F0D9AC(255, qword_1EDC64E28, &protocol descriptor for PluginSearchResultProviding, 1);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC64E20);
    }
  }
}

uint64_t sub_1B9F15018(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for CompoundSectionedDataSource(uint64_t a1)
{
  result = qword_1EDC65118;
  if (!qword_1EDC65118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1B9F15168(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  sub_1B9F12358(a1, v3 + qword_1EDC84C78, type metadata accessor for SearchDataSource.State);
  v8 = sub_1B9F153AC(a3);
  v9 = qword_1EDC68C00;
  *(v3 + qword_1EDC68C00) = v8;
  type metadata accessor for PluginSearchDataSource(0);
  swift_allocObject();
  v10 = sub_1B9F1A844(0x655268746C616548, 0xED00007364726F63);
  v11 = qword_1EDC68760;
  *(v3 + qword_1EDC68760) = v10;
  v12 = sub_1B9F153AC(a3);
  v13 = qword_1EDC68C08;
  *(v3 + qword_1EDC68C08) = v12;
  sub_1B9F0A534(a3, v21);
  type metadata accessor for SearchDataSource.EmptyStateDataSource();
  swift_allocObject();
  v14 = a2;
  v15 = sub_1B9F1AA20(v14, v21);

  sub_1B9F1DEA0(0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BA4B9FD0;
  *(v16 + 32) = *(v4 + v9);
  *(v16 + 40) = &protocol witness table for MutableArrayDataSource;
  *(v16 + 48) = *(v4 + v11);
  *(v16 + 56) = &protocol witness table for MutableArrayDataSource;
  *(v16 + 64) = *(v4 + v13);
  *(v16 + 72) = &protocol witness table for MutableArrayDataSource;
  type metadata accessor for CompoundSectionedDataSource(0);
  swift_allocObject();

  v17 = CompoundSectionedDataSource.init(_:)(v16);
  v18 = sub_1B9F299CC(v15, v17);

  v19 = *(*v18 + 184);
  swift_retain_n();
  v19(sub_1B9F29C50, v18);

  __swift_destroy_boxed_opaque_existential_1(a3);
  sub_1B9F299EC(a1, type metadata accessor for SearchDataSource.State);
  return v18;
}

uint64_t sub_1B9F153AC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v1 = sub_1BA4A1B68();
  sub_1B9F109F8();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B8B60;
  v3 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v4 = sub_1BA4A6758();
  v5 = [v3 initWithKey:v4 ascending:1];

  *(v2 + 32) = v5;
  v6 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v7 = sub_1BA4A6758();
  v8 = [v6 initWithKey:v7 ascending:0];

  *(v2 + 40) = v8;
  v9 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v10 = sub_1BA4A6758();
  v11 = [v9 initWithKey:v10 ascending:1 selector:sel_localizedStandardCompare_];

  *(v2 + 48) = v11;
  sub_1BA4A27B8();
  v12 = sub_1BA4A25B8();
  v13 = sub_1BA4A7558();

  type metadata accessor for SearchSectionDataSource(0);
  *(swift_allocObject() + qword_1EDC84BF8) = 1;
  sub_1B9F126E0(0);
  v15 = objc_allocWithZone(v14);
  v16 = v13;
  v17 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v16);
  v18 = sub_1B9F17A68(v17, sub_1B9F2860C, 0, 0);

  return v18;
}

void sub_1B9F15648(uint64_t a1)
{
  sub_1B9F117BC(319, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1B9F15730()
{
  result = qword_1EDC6ADA0;
  if (!qword_1EDC6ADA0)
  {
    sub_1BA4A27B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6ADA0);
  }

  return result;
}

char *_s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(void *a1)
{
  v2 = v1;
  v33 = a1;
  sub_1B9F12538();
  v34 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A1798();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = qword_1EBBEA528;
  sub_1B9F15B38();
  v14 = sub_1BA4A7A78();
  v15 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v16 = sub_1BA4A6758();
  v17 = [v15 initWithName:v16 loggingCategory:v14];

  *&v2[v13] = v17;
  v18 = qword_1EDC61B88;
  *&v2[v18] = sub_1B9F12744(MEMORY[0x1E69E7CC0]);
  v19 = &v2[qword_1EDC84AD0];
  v35 = 675500614;
  v36 = 0xE400000000000000;
  v38 = sub_1BA4A27B8();
  sub_1B9F12868(0, &qword_1EDC6AD88, MEMORY[0x1E69A3DD0]);
  v20 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v20);

  MEMORY[0x1BFAF1350](15401, 0xE200000000000000);
  sub_1BA4A1788();
  v21 = sub_1BA4A1748();
  v23 = v22;
  (*(v9 + 8))(v12, v8);
  MEMORY[0x1BFAF1350](v21, v23);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v24 = v36;
  *v19 = v35;
  v19[1] = v24;
  v25 = v33;
  *&v2[qword_1EDC84AD8] = v33;
  v26 = v25;
  sub_1BA4A45D8();
  (*(v4 + 32))(&v2[qword_1EDC84AC8], v7, v34);
  sub_1B9F126E0(0);
  v37.receiver = v2;
  v37.super_class = v27;
  v28 = objc_msgSendSuper2(&v37, sel_init);
  v29 = [v26 fetchRequest];
  [v29 setIncludesPendingChanges_];

  v30 = qword_1EDC84AD8;
  swift_beginAccess();
  v31 = *&v28[v30];
  [v31 setDelegate_];

  sub_1B9F128B4();
  return v28;
}

unint64_t sub_1B9F15B38()
{
  result = qword_1EDC5E090;
  if (!qword_1EDC5E090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC5E090);
  }

  return result;
}

void sub_1B9F15B84(uint64_t a1)
{
  if (!qword_1EDC5F890)
  {
    sub_1B9F0ADF8(255, &qword_1EDC5E4A0, 0x1E695D630);
    sub_1B9F15C34(&qword_1EDC5E490, &qword_1EDC5E4A0, 0x1E695D630);
    v1 = sub_1BA4A45E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F890);
    }
  }
}

uint64_t sub_1B9F15C34(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B9F0ADF8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B9F15C84@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v239 = a2;
  v265 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v4 = *MEMORY[0x1E69E7D40] & *v2;
  v249 = v2;
  v246 = v4;
  v244 = sub_1BA4A3EA8();
  v240 = *(v244 - 8);
  MEMORY[0x1EEE9AC00](v244, v5);
  v7 = &v234 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v242 = &v234 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v243 = &v234 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v235 = &v234 - v16;
  v259 = sub_1BA4A15D8();
  isa = v259[-1].isa;
  MEMORY[0x1EEE9AC00](v259, v18);
  v258 = &v234 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F12538();
  v21 = v20;
  v237 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v234 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A45D8();
  sub_1B9F15B84(0);
  v26 = v25;
  sub_1BA4A4578();
  v250 = v21;
  sub_1BA4A44C8();

  v254 = v26;
  v255 = a1;
  v27 = sub_1BA4A4578();
  v28 = v27;
  v29 = *(v27 + 16);
  v256 = v24;
  v248 = v29;
  v238 = v7;
  v241 = isa;
  if (v29)
  {
    v30 = 0;
    v247 = v27 + 32;
    v31 = (isa + 8);
    v245 = v27;
    do
    {
      if (v30 >= *(v28 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        v69 = v27;
        v52 = sub_1BA4A7CC8();
        v27 = v69;
        if (!v52)
        {
          goto LABEL_32;
        }

LABEL_20:
        v53 = v27;
        v262 = MEMORY[0x1E69E7CC0];
        sub_1B9F1C360(0, v52 & ~(v52 >> 63), 0);
        if ((v52 & 0x8000000000000000) == 0)
        {
          v54 = 0;
          v55 = v262;
          v56 = v53;
          v257 = v53 & 0xC000000000000001;
          v57 = (v241 + 8);
          v58 = v56;
          do
          {
            if (v257)
            {
              v59 = MEMORY[0x1BFAF2860](v54);
            }

            else
            {
              v59 = *(v56 + 8 * v54 + 32);
            }

            v60 = v59;
            v61 = [v59 URIRepresentation];
            v62 = v258;
            sub_1BA4A1588();

            v63 = sub_1BA4A1518();
            v65 = v64;

            (*v57)(v62, v259);
            v262 = v55;
            v67 = v55[2].isa;
            v66 = v55[3].isa;
            if (v67 >= v66 >> 1)
            {
              sub_1B9F1C360((v66 > 1), v67 + 1, 1);
              v55 = v262;
            }

            ++v54;
            v55[2].isa = (v67 + 1);
            v68 = &v55[2 * v67];
            v68[4].isa = v63;
            v68[5].isa = v65;
            v56 = v58;
          }

          while (v52 != v54);

          goto LABEL_33;
        }

        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
      }

      v32 = v247 + 16 * v30;
      v34 = *v32;
      v33 = *(v32 + 8);
      v262 = *v32;
      v263 = v33;

      v35 = sub_1BA4A4528();
      if (v35 >> 62)
      {
        v51 = v35;
        v36 = sub_1BA4A7CC8();
        v35 = v51;
        if (!v36)
        {
LABEL_17:

          goto LABEL_3;
        }
      }

      else
      {
        v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v36)
        {
          goto LABEL_17;
        }
      }

      v257 = v35;
      v262 = MEMORY[0x1E69E7CC0];
      v27 = sub_1B9F1C360(0, v36 & ~(v36 >> 63), 0);
      if (v36 < 0)
      {
        goto LABEL_30;
      }

      v251 = v34;
      *&v252 = v33;
      v253 = v30;
      v37 = 0;
      v38 = v262;
      v39 = v257;
      v40 = v257 & 0xC000000000000001;
      do
      {
        if (v40)
        {
          v41 = MEMORY[0x1BFAF2860](v37);
        }

        else
        {
          v41 = *(v39 + 8 * v37 + 32);
        }

        v42 = v41;
        v43 = [v41 URIRepresentation];
        v44 = v258;
        sub_1BA4A1588();

        v45 = sub_1BA4A1518();
        v47 = v46;

        (*v31)(v44, v259);
        v262 = v38;
        v49 = v38[2].isa;
        v48 = v38[3].isa;
        if (v49 >= v48 >> 1)
        {
          sub_1B9F1C360((v48 > 1), v49 + 1, 1);
          v38 = v262;
        }

        ++v37;
        v38[2].isa = (v49 + 1);
        v50 = &v38[2 * v49];
        v50[4].isa = v45;
        v50[5].isa = v47;
        v39 = v257;
      }

      while (v36 != v37);

      v28 = v245;
      v30 = v253;
      v33 = v252;
      v34 = v251;
LABEL_3:
      ++v30;
      v262 = v34;
      v263 = v33;
      sub_1BA4A4448();
    }

    while (v30 != v248);
  }

  v27 = sub_1BA4A4598();
  if (v27 >> 62)
  {
    goto LABEL_31;
  }

  v52 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v52)
  {
    goto LABEL_20;
  }

LABEL_32:

  v55 = MEMORY[0x1E69E7CC0];
LABEL_33:
  v70 = sub_1BA4A45B8();
  if (v70 >> 62)
  {
    v90 = v70;
    v71 = sub_1BA4A7CC8();
    v70 = v90;
    if (v71)
    {
      goto LABEL_35;
    }

LABEL_45:

    v89 = MEMORY[0x1E69E7CC0];
    goto LABEL_46;
  }

  v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v71)
  {
    goto LABEL_45;
  }

LABEL_35:
  v72 = v70;
  v262 = MEMORY[0x1E69E7CC0];
  sub_1B9F1C360(0, v71 & ~(v71 >> 63), 0);
  if (v71 < 0)
  {
    goto LABEL_102;
  }

  v73 = 0;
  v74 = v262;
  v75 = v72;
  v253 = v72 & 0xC000000000000001;
  v76 = (v241 + 8);
  v257 = v72;
  do
  {
    v77 = v71;
    v78 = v74;
    if (v253)
    {
      v79 = MEMORY[0x1BFAF2860](v73, v75);
    }

    else
    {
      v79 = *(v75 + 8 * v73 + 32);
    }

    v80 = v79;
    v81 = [v79 URIRepresentation];
    v82 = v258;
    sub_1BA4A1588();

    v83 = sub_1BA4A1518();
    v85 = v84;

    (*v76)(v82, v259);
    v74 = v78;
    v262 = v78;
    v86 = v78[2].isa;
    v87 = v74[3].isa;
    if (v86 >= v87 >> 1)
    {
      sub_1B9F1C360((v87 > 1), v86 + 1, 1);
      v74 = v262;
    }

    ++v73;
    v74[2].isa = (v86 + 1);
    v88 = &v74[2 * v86];
    v88[4].isa = v83;
    v88[5].isa = v85;
    v71 = v77;
    v75 = v257;
  }

  while (v77 != v73);
  v89 = v74;

LABEL_46:
  v91 = sub_1B9F12EB8(v55);

  v260 = v91;
  v92 = sub_1BA4A4598();
  v93 = v92;
  if (v92 >> 62)
  {
    goto LABEL_100;
  }

  for (i = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BA4A7CC8())
  {
    if (i)
    {
      if (i < 1)
      {
        goto LABEL_103;
      }

      v95 = 0;
      v253 = 0;
      v257 = v93 & 0xC000000000000001;
      v251 = (v241 + 8);
      *&v252 = v93;
      do
      {
        v98 = v89;
        if (v257)
        {
          v99 = MEMORY[0x1BFAF2860](v95, v93);
        }

        else
        {
          v99 = *(v93 + 8 * v95 + 32);
        }

        v100 = v99;
        v101 = v249;
        v102 = qword_1EDC84AD8;
        swift_beginAccess();
        v103 = [*(v101 + v102) managedObjectContext];
        v262 = 0;
        v104 = [v103 existingObjectWithID:v100 error:&v262];

        v105 = v262;
        if (v104)
        {
          v106 = i;
          v262 = v104;
          sub_1B9F0ADF8(0, &qword_1EDC5E518, 0x1E695D620);
          v107 = v105;
          if (swift_dynamicCast())
          {
            v108 = v264;
            v109 = [v100 URIRepresentation];
            v110 = v258;
            sub_1BA4A1588();

            v111 = sub_1BA4A1518();
            v113 = v112;
            (v251->isa)(v110, v259);
            if (sub_1BA021158(v108))
            {
              sub_1BA021E7C(v111, v113);

              v114 = v98;
              v115 = v111;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v114 = sub_1BA27EE34(0, *(v114 + 2) + 1, 1, v114);
              }

              v117 = *(v114 + 2);
              v116 = *(v114 + 3);
              v89 = v114;
              if (v117 >= v116 >> 1)
              {
                v89 = sub_1BA27EE34((v116 > 1), v117 + 1, 1, v114);
              }

              swift_unknownObjectRelease();

              *(v89 + 2) = v117 + 1;
              v118 = &v89[16 * v117];
              *(v118 + 4) = v115;
              *(v118 + 5) = v113;
            }

            else
            {
              swift_unknownObjectRelease();

              v89 = v98;
            }

            v93 = v252;
          }

          else
          {

            v89 = v98;
          }

          i = v106;
        }

        else
        {
          v96 = v262;
          v97 = sub_1BA4A1488();

          swift_willThrow();
          v253 = 0;
          v89 = v98;
        }

        ++v95;
      }

      while (i != v95);
    }

    else
    {
      v253 = 0;
    }

    v248 = v89;
    sub_1BA4A4558();
    v119 = v260;
    v120 = *(v260 + 16);
    v247 = v260;
    if (v120)
    {
      v121 = sub_1BA021A48(v120, 0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90], sub_1B9F1C094);
      v122 = sub_1BA0238B0(&v262, v121 + 4, v120, v119);
      v123 = v262;

      sub_1B9F52E48(v123);
      if (v122 != v120)
      {
        goto LABEL_104;
      }
    }

    sub_1BA4A4498();

    sub_1BA4A45A8();
    sub_1BA4A4518();

    v124 = qword_1EDC84AD8;
    v125 = v249;
    swift_beginAccess();
    v126 = [*(v125 + v124) fetchedObjects];
    v127 = v253;
    if (v126)
    {
      v128 = v246;
      v129 = *(v246 + 80);
      v130 = v126;
      v131 = sub_1BA4A6B08();

      v262 = v131;
      MEMORY[0x1EEE9AC00](v132, v133);
      v134 = *(v128 + 88);
      *(&v234 - 2) = v129;
      *(&v234 - 1) = v134;
      v135 = sub_1BA4A6BF8();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      WitnessTable = swift_getWitnessTable();
      v139 = sub_1B9F12F50(sub_1B9F1C380, (&v234 - 4), v135, TupleTypeMetadata2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v138);
    }

    else
    {
      v142 = v246;
      v129 = *(v246 + 80);
      swift_getTupleTypeMetadata2();
      v140 = sub_1BA4A6B88();
      v139 = v140;
      v134 = *(v142 + 88);
    }

    v143 = v243;
    v262 = v139;
    MEMORY[0x1EEE9AC00](v140, v141);
    *(&v234 - 2) = v129;
    *(&v234 - 1) = v134;

    v144 = MEMORY[0x1E69E6158];
    v253 = swift_getTupleTypeMetadata2();
    v145 = sub_1BA4A6BF8();
    v146 = swift_getWitnessTable();
    v147 = MEMORY[0x1E69E6168];
    v259 = v146;
    v148 = sub_1BA4A6678();
    MEMORY[0x1EEE9AC00](v148, v149);
    *(&v234 - 2) = v129;
    *(&v234 - 1) = v134;
    MEMORY[0x1EEE9AC00](v150, v151);
    *(&v234 - 4) = v129;
    *(&v234 - 3) = v134;
    v246 = v134;
    *(&v234 - 2) = sub_1B9F1C49C;
    *(&v234 - 1) = v152;
    v153 = sub_1BA4A6658();
    v251 = v127;
    v245 = v145;
    if (MEMORY[0x1BFAF10A0](v153, v144, v145, v147))
    {

      goto LABEL_92;
    }

    v154 = v235;
    sub_1BA4A3D88();
    v155 = sub_1BA4A3E88();
    v156 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v155, v156))
    {
      v157 = swift_slowAlloc();
      *v157 = 0;
      _os_log_impl(&dword_1B9F07000, v155, v156, "Managed objects with duplicate keys:", v157, 2u);
      MEMORY[0x1BFAF43A0](v157, -1, -1);
    }

    v158 = *(v240 + 8);
    v257 = v240 + 8;
    v255 = v158;
    v159 = (v158)(v154, v244);
    v262 = v153;
    MEMORY[0x1EEE9AC00](v159, v160);
    v161 = v246;
    *(&v234 - 2) = v129;
    *(&v234 - 1) = v161;
    MEMORY[0x1EEE9AC00](v162, v163);
    *(&v234 - 4) = v129;
    *(&v234 - 3) = v164;
    *(&v234 - 2) = sub_1BA024CAC;
    *(&v234 - 1) = v165;
    sub_1BA4A6688();
    swift_getWitnessTable();
    v166 = v251;
    v93 = sub_1BA4A6A28();
    v251 = v166;

    v89 = v253;
    if (!sub_1BA4A6BC8())
    {
      break;
    }

    v241 = v139;
    v168 = 0;
    v169 = (v93 + 48);
    *&v167 = 136315138;
    v252 = v167;
    v170 = v242;
    v254 = v93;
    while (1)
    {
      v171 = sub_1BA4A6BA8();
      sub_1BA4A6B48();
      if ((v171 & 1) == 0)
      {
        break;
      }

      if (__OFADD__(v168, 1))
      {
        goto LABEL_99;
      }

      v258 = (v168 + 1);
      v172 = *v169;

      swift_unknownObjectRetain();
      sub_1BA4A3D88();

      swift_unknownObjectRetain();
      v173 = sub_1BA4A3E88();
      v174 = sub_1BA4A6FA8();
      swift_unknownObjectRelease();

      v259 = v173;
      if (os_log_type_enabled(v173, v174))
      {
        v175 = swift_slowAlloc();
        v176 = swift_slowAlloc();
        v262 = v176;
        *v175 = v252;
        v264 = v172;
        swift_unknownObjectRetain();
        v177 = sub_1BA4A6808();
        v179 = sub_1B9F0B82C(v177, v178, &v262);

        *(v175 + 4) = v179;
        v170 = v242;
        v180 = v259;
        _os_log_impl(&dword_1B9F07000, v259, v174, "%s", v175, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v176);
        v181 = v176;
        v143 = v243;
        MEMORY[0x1BFAF43A0](v181, -1, -1);
        v182 = v175;
        v89 = v253;
        MEMORY[0x1BFAF43A0](v182, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      v255(v143, v244);
      v93 = v254;
      ++v168;
      v169 += 3;
      if (v258 == sub_1BA4A6BC8())
      {

        v139 = v241;
        goto LABEL_88;
      }
    }

    sub_1BA4A7E18();
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    ;
  }

  v170 = v242;
LABEL_88:
  sub_1BA4A3D88();

  v183 = sub_1BA4A3E88();
  v184 = sub_1BA4A6FA8();
  v185 = os_log_type_enabled(v183, v184);
  v186 = v246;
  if (v185)
  {
    v187 = swift_slowAlloc();
    v259 = swift_slowAlloc();
    v262 = v259;
    *v187 = 136315650;
    v188 = sub_1BA4A85D8();
    v190 = sub_1B9F0B82C(v188, v189, &v262);

    *(v187 + 4) = v190;
    *(v187 + 12) = 2080;
    v264 = v139;
    MEMORY[0x1EEE9AC00](v191, v192);
    *(&v234 - 2) = v129;
    *(&v234 - 1) = v186;
    v193 = v245;
    v194 = swift_getWitnessTable();
    v195 = MEMORY[0x1E69E6158];
    v196 = v193;
    v197 = v251;
    v199 = sub_1B9F12F50(sub_1B9F1C438, (&v234 - 4), v196, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v194, MEMORY[0x1E69E7410], v198);
    v251 = v197;

    v200 = MEMORY[0x1BFAF1560](v199, v195);
    v202 = v201;

    v203 = sub_1B9F0B82C(v200, v202, &v262);

    *(v187 + 14) = v203;
    *(v187 + 22) = 2080;
    swift_beginAccess();
    v204 = NSDiffableDataSourceSnapshot<>.description.getter();
    v206 = sub_1B9F0B82C(v204, v205, &v262);

    *(v187 + 24) = v206;
    _os_log_impl(&dword_1B9F07000, v183, v184, "[%s] There is a duplicate feed item in the fetchedObjects array with keys: %s. The snapshot is: %s", v187, 0x20u);
    v207 = v259;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v207, -1, -1);
    MEMORY[0x1BFAF43A0](v187, -1, -1);

    v208 = v242;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v208 = v170;
  }

  v255(v208, v244);
LABEL_92:
  v209 = v249;
  v210 = qword_1EDC61B88;
  swift_beginAccess();
  *(v209 + v210) = MEMORY[0x1E69E7CC8];

  v211 = qword_1EDC84AD8;
  swift_beginAccess();
  v212 = [*(v209 + v211) fetchedObjects];
  if (v212)
  {
    v213 = v212;
    v214 = sub_1BA4A6B08();

    v261 = v214;
    MEMORY[0x1EEE9AC00](v215, v216);
    *(&v234 - 2) = v209;
    sub_1BA4A6BF8();
    swift_getWitnessTable();
    sub_1BA4A6A38();
  }

  v217 = v238;
  sub_1BA4A3D88();
  v218 = sub_1BA4A3E88();
  v219 = sub_1BA4A6F88();
  if (os_log_type_enabled(v218, v219))
  {
    v220 = swift_slowAlloc();
    v221 = swift_slowAlloc();
    v261 = v221;
    *v220 = 136315394;
    v222 = sub_1BA4A85D8();
    v224 = sub_1B9F0B82C(v222, v223, &v261);

    *(v220 + 4) = v224;
    *(v220 + 12) = 2080;
    v225 = v256;
    swift_beginAccess();
    v226 = NSDiffableDataSourceSnapshot<>.description.getter();
    v228 = sub_1B9F0B82C(v226, v227, &v261);

    *(v220 + 14) = v228;
    _os_log_impl(&dword_1B9F07000, v218, v219, "[%s] Snapshot built: %s", v220, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v221, -1, -1);
    MEMORY[0x1BFAF43A0](v220, -1, -1);

    (*(v240 + 8))(v217, v244);
    v229 = v239;
    v230 = v237;
  }

  else
  {

    (*(v240 + 8))(v217, v244);
    v229 = v239;
    v230 = v237;
    v225 = v256;
  }

  swift_beginAccess();
  v231 = v229;
  v232 = v250;
  (*(v230 + 16))(v231, v225, v250);
  return (*(v230 + 8))(v225, v232);
}

uint64_t sub_1B9F17734(uint64_t a1)
{
  v3 = qword_1EDC84AC8;
  swift_beginAccess();
  sub_1B9F12538();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1B9F177C4@<X0>(uint64_t a1@<X8>)
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v4 = v3;
  v20 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v19 - v6;
  v8 = *(sub_1BA4A4598() + 16);

  if (v8 || (v9 = *(sub_1BA4A45B8() + 16), , v9) || (v10 = *(sub_1BA4A45A8() + 16), , v10))
  {
    v19 = a1;
    sub_1BA4A45D8();
    v11 = sub_1BA4A4578();
    v12 = *(v11 + 16);
    if (v12)
    {
      sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v13 = (v11 + 40);
      v21 = xmmword_1BA4B5480;
      do
      {
        v15 = *v13;
        v24 = *(v13 - 1);
        v14 = v24;
        v25 = v15;
        v16 = swift_allocObject();
        *(v16 + 16) = v21;
        *(v16 + 32) = v14;
        *(v16 + 40) = v15;
        swift_bridgeObjectRetain_n();
        sub_1BA4A44C8();

        sub_1BA4A4528();

        v22 = 0;
        v23 = 0;
        sub_1BA4A4448();

        v13 += 2;
        --v12;
      }

      while (v12);
    }

    return (*(v20 + 32))(v19, v7, v4);
  }

  else
  {
    v18 = *(v20 + 16);

    return v18(a1, v1, v4);
  }
}

uint64_t sub_1B9F17A68(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  v10 = v5 + qword_1EDC64EB0;
  *v10 = a2;
  *(v10 + 8) = a3;
  *(v10 + 16) = a4;
  *(v5 + qword_1EDC84BB8) = a1;
  *(v5 + *(*v5 + 520)) = 0;
  sub_1B9F17BE8(a2, a3, a4);
  v11 = a1;
  v12 = sub_1B9F17C00(v11, 0, a2, a3, v6);
  sub_1B9F18460(a2, a3, v6);
  v13 = *&v11[qword_1EDC84AD0];
  v14 = *&v11[qword_1EDC84AD0 + 8];

  MEMORY[0x1BFAF1350](v13, v14);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v15 = MutableArrayDataSource.init(arrangedSections:identifier:)(v12, 0x534464657070614DLL, 0xE90000000000003CLL);
  v16 = *(v15 + qword_1EDC84BB8);
  v17 = qword_1EBBEA528;
  swift_beginAccess();
  [*(v16 + v17) registerObserver_];
  return v15;
}

uint64_t sub_1B9F17BE8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1B9F17C00(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4, char a5)
{
  result = sub_1B9F18214();
  v67 = result;
  if (a5)
  {
    if (a5 != 1)
    {
      v44 = a3();

      return v44;
    }

    v66 = *(result + 16);
    if (v66)
    {
      v8 = 0;
      v9 = (result + 72);
      v10 = MEMORY[0x1E69E7CC0];
      while (v8 < *(result + 16))
      {
        v11 = *(v9 - 1);
        v12 = *v9;
        v14 = *(v9 - 3);
        v13 = *(v9 - 2);
        v15 = *(v9 - 4);
        v73[0] = *(v9 - 5);
        v73[1] = v15;
        v73[2] = v14;
        v73[3] = v13;
        v73[4] = v11;
        v73[5] = v12;

        (a3)(v74, v73);

        v16 = v74[0];
        v17 = v74[1];
        v69 = v75;
        v18 = v76;
        v19 = v77;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1B9F21540(0, *(v10 + 2) + 1, 1, v10);
        }

        v21 = *(v10 + 2);
        v20 = *(v10 + 3);
        if (v21 >= v20 >> 1)
        {
          v10 = sub_1B9F21540((v20 > 1), v21 + 1, 1, v10);
        }

        ++v8;
        *(v10 + 2) = v21 + 1;
        v22 = &v10[48 * v21];
        *(v22 + 4) = v16;
        *(v22 + 5) = v17;
        *(v22 + 3) = v69;
        *(v22 + 8) = v18;
        *(v22 + 9) = v19;
        v9 += 6;
        result = v67;
        if (v66 == v8)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_65;
    }

    v10 = MEMORY[0x1E69E7CC0];
LABEL_46:

    v45 = 0;
    v46 = *(v10 + 2);
    v47 = MEMORY[0x1E69E7CC0];
LABEL_47:
    v48 = &v10[48 * v45 + 16];
    while (v46 != v45)
    {
      if (v45 >= *(v10 + 2))
      {
        goto LABEL_64;
      }

      ++v45;
      v49 = (v48 + 48);
      v50 = *(v48 + 32);
      v48 += 48;
      if (*(v50 + 16))
      {
        v51 = *(v49 - 3);
        v68 = *(v49 - 4);
        v52 = *(v49 - 1);
        v53 = *v49;
        v54 = v49[1];

        result = swift_isUniquelyReferenced_nonNull_native();
        v74[0] = v47;
        v72 = v52;
        if ((result & 1) == 0)
        {
          result = sub_1B9F277B0(0, *(v47 + 16) + 1, 1);
          v47 = v74[0];
        }

        v56 = *(v47 + 16);
        v55 = *(v47 + 24);
        if (v56 >= v55 >> 1)
        {
          result = sub_1B9F277B0((v55 > 1), v56 + 1, 1);
          v47 = v74[0];
        }

        *(v47 + 16) = v56 + 1;
        v57 = (v47 + 48 * v56);
        v57[4] = v68;
        v57[5] = v51;
        v57[6] = v50;
        v57[7] = v72;
        v57[8] = v53;
        v57[9] = v54;
        goto LABEL_47;
      }
    }

    v58 = v47;
    goto LABEL_58;
  }

  v63 = *(result + 16);
  if (!v63)
  {
    v58 = MEMORY[0x1E69E7CC0];
LABEL_58:

    return v58;
  }

  v23 = 0;
  v62 = result + 32;
  v58 = MEMORY[0x1E69E7CC0];
  v61 = a2;
  while (1)
  {
    if (v23 >= *(result + 16))
    {
      goto LABEL_66;
    }

    v70 = v23;
    v24 = (v62 + 48 * v23);
    v25 = v24[2];
    v26 = v24[5];
    v59 = v24[4];
    v60 = *v24;
    v27 = *(v25 + 16);
    v65 = v24[1];
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v64 = v26;
    result = swift_bridgeObjectRetain_n();
    if (v27)
    {
      break;
    }

    v30 = MEMORY[0x1E69E7CC0];
LABEL_34:
    v23 = v70 + 1;

    v39 = Array<A>.identifierToIndexDict()(v30);

    if (v30[2] || (v61 & 1) != 0)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_1B9F21540(0, *(v58 + 2) + 1, 1, v58);
      }

      v40 = v58;
      v42 = *(v58 + 2);
      v41 = *(v58 + 3);
      if (v42 >= v41 >> 1)
      {
        v40 = sub_1B9F21540((v41 > 1), v42 + 1, 1, v58);
      }

      *(v40 + 2) = v42 + 1;
      v58 = v40;
      v43 = &v40[48 * v42];
      *(v43 + 4) = v60;
      *(v43 + 5) = v65;
      *(v43 + 6) = v30;
      *(v43 + 7) = v39;
      *(v43 + 8) = v59;
      *(v43 + 9) = v64;
    }

    else
    {

      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
    }

    result = v67;
    if (v23 == v63)
    {
      goto LABEL_58;
    }
  }

  v28 = 0;
  v29 = v25 + 32;
  v30 = MEMORY[0x1E69E7CC0];
  while (v28 < *(v25 + 16))
  {
    sub_1B9F0A534(v29, v74);
    v31 = (a3)(v74);
    result = __swift_destroy_boxed_opaque_existential_1(v74);
    v32 = *(v31 + 16);
    v33 = v30[2];
    v34 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      goto LABEL_60;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) != 0 && v34 <= v30[3] >> 1)
    {
      if (*(v31 + 16))
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v33 <= v34)
      {
        v35 = v33 + v32;
      }

      else
      {
        v35 = v33;
      }

      result = sub_1B9F281E8(result, v35, 1, v30);
      v30 = result;
      if (*(v31 + 16))
      {
LABEL_29:
        if ((v30[3] >> 1) - v30[2] < v32)
        {
          goto LABEL_62;
        }

        sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
        swift_arrayInitWithCopy();

        if (v32)
        {
          v36 = v30[2];
          v37 = __OFADD__(v36, v32);
          v38 = v36 + v32;
          if (v37)
          {
            goto LABEL_63;
          }

          v30[2] = v38;
        }

        goto LABEL_18;
      }
    }

    if (v32)
    {
      goto LABEL_61;
    }

LABEL_18:
    ++v28;
    v29 += 40;
    if (v27 == v28)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_1B9F18234(uint64_t *a1, void (*a2)(__int128 *__return_ptr, uint64_t, uint64_t, uint64_t, _BYTE *))
{
  v30 = a2;
  sub_1B9F12538();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  swift_beginAccess();
  v11 = *(v6 + 16);
  v29 = v2;
  v11(v9, v2 + v10, v5);
  v12 = sub_1BA4A4578();
  (*(v6 + 8))(v9, v5);
  v13 = *(v12 + 16);
  if (v13)
  {
    v36 = MEMORY[0x1E69E7CC0];
    result = sub_1B9F277B0(0, v13, 0);
    v15 = 0;
    v16 = v36;
    v17 = (v12 + 40);
    while (v15 < *(v12 + 16))
    {
      v18 = *(v17 - 1);
      v19 = *v17;

      v30(&v32, v18, v19, v29, v31);

      v20 = v32;
      v21 = v33;
      v23 = v34;
      v22 = v35;
      v36 = v16;
      v25 = *(v16 + 16);
      v24 = *(v16 + 24);
      if (v25 >= v24 >> 1)
      {
        v27 = v33;
        v28 = v32;
        result = sub_1B9F277B0((v24 > 1), v25 + 1, 1);
        v21 = v27;
        v20 = v28;
        v16 = v36;
      }

      ++v15;
      *(v16 + 16) = v25 + 1;
      v26 = v16 + 48 * v25;
      *(v26 + 32) = v20;
      *(v26 + 48) = v21;
      *(v26 + 64) = v23;
      *(v26 + 72) = v22;
      v17 += 2;
      if (v13 == v15)
      {

        return v16;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1B9F18460(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t MutableArrayDataSource.init(arrangedSections:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1B9F0ADF8(0, &qword_1EDC5E090, 0x1E69E9BF8);
  v8 = sub_1BA4A7A78();
  v9 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v10 = sub_1BA4A6758();
  v11 = [v9 initWithName:v10 loggingCategory:v8];

  *(v4 + 16) = v11;
  sub_1BA4A45D8();
  v12 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  v13 = MEMORY[0x1E69E7CC0];
  *(v4 + v12) = sub_1B9F18974(MEMORY[0x1E69E7CC0]);
  v14 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
  *(v4 + v14) = sub_1B9F12744(v13);
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_animateChanges) = 1;
  v15 = (v4 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  *v15 = a2;
  v15[1] = a3;
  sub_1B9F185CC(a1);

  sub_1B9F18D28();
  return v4;
}

uint64_t sub_1B9F185CC(uint64_t a1)
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v3 = v2;
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v30 - v5;
  sub_1BA4A45D8();
  v33 = a1;
  v39 = *(a1 + 16);
  if (v39)
  {
    v38 = v33 + 32;
    sub_1B9F2176C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v37 = v7;
    v8 = 0;
    v36 = xmmword_1BA4B5480;
    v34 = v6;
    v35 = v3;
    do
    {
      v9 = (v38 + 48 * v8);
      v10 = v9[4];
      v11 = v9[5];
      v13 = v9[2];
      v12 = v9[3];
      v14 = v9[1];
      v15 = swift_allocObject();
      *(v15 + 16) = v36;
      *(v15 + 32) = v10;
      *(v15 + 40) = v11;

      swift_bridgeObjectRetain_n();
      sub_1BA4A44C8();

      v16 = *(v13 + 16);
      if (v16)
      {
        v40 = v11;
        v41 = v12;
        v42 = v14;
        v44 = MEMORY[0x1E69E7CC0];
        sub_1B9F1C360(0, v16, 0);
        v17 = v44;
        v18 = v13 + 32;
        do
        {
          sub_1B9F0A534(v18, v43);
          __swift_project_boxed_opaque_existential_1(v43, v43[3]);
          v19 = sub_1BA4A2D58();
          v21 = v20;
          __swift_destroy_boxed_opaque_existential_1(v43);
          v44 = v17;
          v23 = *(v17 + 16);
          v22 = *(v17 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_1B9F1C360((v22 > 1), v23 + 1, 1);
            v17 = v44;
          }

          *(v17 + 16) = v23 + 1;
          v24 = v17 + 16 * v23;
          *(v24 + 32) = v19;
          *(v24 + 40) = v21;
          v18 += 40;
          --v16;
        }

        while (v16);

        v6 = v34;
        v3 = v35;
      }

      else
      {
      }

      ++v8;
      v43[0] = 0;
      v43[1] = 0;
      sub_1BA4A4448();
    }

    while (v8 != v39);
  }

  v44 = sub_1B9F18974(MEMORY[0x1E69E7CC0]);
  sub_1B9F18ADC(v33, &v44);
  v25 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  v26 = v32;
  swift_beginAccess();
  (*(v31 + 40))(v26 + v25, v6, v3);
  swift_endAccess();
  v27 = v44;
  v28 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  swift_beginAccess();
  *(v26 + v28) = v27;
}

unint64_t sub_1B9F18974(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B9F24D7C(0, &unk_1EDC5DFF0, MEMORY[0x1E69E6158], &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6168]);
    v3 = sub_1BA4A8098();

    for (i = (a1 + 48); ; i += 8)
    {
      v20 = v1;
      v5 = *(i - 2);
      v6 = *(i - 1);
      v8 = *i;
      v7 = i[1];
      v9 = i[2];
      v10 = i[3];
      v11 = i[4];
      v12 = i[5];

      result = sub_1B9F24A34(v5, v6);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 16 * result);
      *v15 = v5;
      v15[1] = v6;
      v16 = (v3[7] + 48 * result);
      *v16 = v8;
      v16[1] = v7;
      v16[2] = v9;
      v16[3] = v10;
      v16[4] = v11;
      v16[5] = v12;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
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

uint64_t sub_1B9F18ADC(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  v3 = a2;
  for (i = (result + 72); ; i += 6)
  {
    v28 = v2;
    v6 = *(i - 4);
    v29 = *(i - 5);
    v7 = *(i - 3);
    v8 = *(i - 2);
    v10 = *(i - 1);
    v9 = *i;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v3;
    v30 = *v3;
    *v3 = 0x8000000000000000;
    v13 = sub_1B9F24A34(v10, v9);
    v15 = v12[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v12[3] < v18)
    {
      sub_1B9F1CB18(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_1B9F24A34(v10, v9);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v21 = v30;
      if (v19)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v26 = v13;
    sub_1BA0F1778();
    v13 = v26;
    v21 = v30;
    if (v19)
    {
LABEL_3:
      v5 = (v21[7] + 48 * v13);
      *v5 = v29;
      v5[1] = v6;
      v5[2] = v7;
      v5[3] = v8;
      v5[4] = v10;
      v5[5] = v9;

      goto LABEL_4;
    }

LABEL_11:
    v21[(v13 >> 6) + 8] |= 1 << v13;
    v22 = (v21[6] + 16 * v13);
    *v22 = v10;
    v22[1] = v9;
    v23 = (v21[7] + 48 * v13);
    *v23 = v29;
    v23[1] = v6;
    v23[2] = v7;
    v23[3] = v8;
    v23[4] = v10;
    v23[5] = v9;
    v24 = v21[2];
    v17 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v17)
    {
      goto LABEL_17;
    }

    v21[2] = v25;
LABEL_4:
    v3 = a2;
    *a2 = v21;

    v2 = v28 - 1;
    if (v28 == 1)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1BA4A83B8();
  __break(1u);
  return result;
}

uint64_t sub_1B9F18D28()
{
  v1 = v0;
  v150 = *v0;
  v153 = sub_1BA4A3EA8();
  v152 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153, v2);
  v160 = &v145 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v157 = &v145 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v151 = &v145 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v145 - v14;
  v16 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v17 = *(v6 + 16);
  v156 = v16;
  v155 = v6 + 16;
  v159 = v17;
  v17(v15, &v1[v16], v5);
  v18 = sub_1BA4A4578();
  v19 = *(v6 + 8);
  v162 = v5;
  v161 = v6 + 8;
  v158 = v19;
  v19(v15, v5);
  v20 = *(v18 + 16);
  v164 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  swift_beginAccess();
  v163 = v1;
  if (!v20)
  {
    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v21 = 0;
  v22 = v18 + 40;
  v154 = v20 - 1;
  v23 = MEMORY[0x1E69E7CC0];
  do
  {
    v24 = (v22 + 16 * v21);
    v25 = v21;
    while (1)
    {
      if (v25 >= *(v18 + 16))
      {
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      v26 = *&v1[v164];
      if (*(v26 + 16))
      {
        break;
      }

LABEL_4:
      ++v25;
      v24 += 2;
      if (v20 == v25)
      {
        goto LABEL_16;
      }
    }

    v28 = *(v24 - 1);
    v27 = *v24;

    v29 = sub_1B9F24A34(v28, v27);
    if ((v30 & 1) == 0)
    {

      goto LABEL_4;
    }

    v149 = v22;
    v31 = (*(v26 + 56) + 48 * v29);
    v32 = v31[1];
    v147 = *v31;
    v33 = v31[2];
    v34 = v31[3];
    v35 = v31[5];
    v146 = v31[4];

    v148 = v33;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1B9F21540(0, *(v23 + 2) + 1, 1, v23);
    }

    v37 = *(v23 + 2);
    v36 = *(v23 + 3);
    if (v37 >= v36 >> 1)
    {
      v23 = sub_1B9F21540((v36 > 1), v37 + 1, 1, v23);
    }

    v21 = v25 + 1;
    *(v23 + 2) = v37 + 1;
    v38 = &v23[48 * v37];
    *(v38 + 4) = v147;
    *(v38 + 5) = v32;
    *(v38 + 6) = v148;
    *(v38 + 7) = v34;
    *(v38 + 8) = v146;
    *(v38 + 9) = v35;
    v1 = v163;
    v22 = v149;
  }

  while (v154 != v25);
LABEL_16:

  v39 = *(v23 + 2);
  v40 = MEMORY[0x1E69E7CC0];
  if (v39)
  {
    v41 = 0;
    v42 = v23 + 48;
    do
    {
      if (v41 >= *(v23 + 2))
      {
        goto LABEL_100;
      }

      v43 = *v42;
      v44 = *(*v42 + 16);
      v45 = v40[2];
      v46 = v45 + v44;
      if (__OFADD__(v45, v44))
      {
        goto LABEL_101;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v46 <= v40[3] >> 1)
      {
        if (!*(v43 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v45 <= v46)
        {
          v48 = v45 + v44;
        }

        else
        {
          v48 = v45;
        }

        v40 = sub_1B9F281E8(isUniquelyReferenced_nonNull_native, v48, 1, v40);
        if (!*(v43 + 16))
        {
LABEL_18:

          if (v44)
          {
            goto LABEL_102;
          }

          goto LABEL_19;
        }
      }

      if ((v40[3] >> 1) - v40[2] < v44)
      {
        goto LABEL_106;
      }

      sub_1B9F0D950(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
      swift_arrayInitWithCopy();

      if (v44)
      {
        v49 = v40[2];
        v50 = __OFADD__(v49, v44);
        v51 = v49 + v44;
        if (v50)
        {
          goto LABEL_108;
        }

        v40[2] = v51;
      }

LABEL_19:
      ++v41;
      v42 += 48;
    }

    while (v39 != v41);
  }

  v52 = v40[2];
  if (v52)
  {
    v168[0] = MEMORY[0x1E69E7CC0];
    sub_1B9F1C360(0, v52, 0);
    v53 = v168[0];
    v54 = (v40 + 4);
    v55 = v160;
    do
    {
      sub_1B9F0A534(v54, v170);
      __swift_project_boxed_opaque_existential_1(v170, v170[3]);
      v56 = sub_1BA4A2D58();
      v58 = v57;
      __swift_destroy_boxed_opaque_existential_1(v170);
      v168[0] = v53;
      v60 = *(v53 + 16);
      v59 = *(v53 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_1B9F1C360((v59 > 1), v60 + 1, 1);
        v53 = v168[0];
      }

      *(v53 + 16) = v60 + 1;
      v61 = v53 + 16 * v60;
      *(v61 + 32) = v56;
      *(v61 + 40) = v58;
      v54 += 40;
      --v52;
    }

    while (v52);
  }

  else
  {

    v53 = MEMORY[0x1E69E7CC0];
    v55 = v160;
  }

  v63 = sub_1B9F19D30(v62);

  v64 = sub_1B9F19F78(v63);
  v154 = 0;

  v65 = v163;
  if (v64[2])
  {
    sub_1BA4A3D88();

    v66 = sub_1BA4A3E88();
    v67 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v170[0] = v69;
      *v68 = 136315906;
      v70 = sub_1BA4A85D8();
      v72 = sub_1B9F0B82C(v70, v71, v170);

      *(v68 + 4) = v72;
      *(v68 + 12) = 2080;
      v73 = MEMORY[0x1E69E6158];
      sub_1B9F2176C(0, &qword_1EDC6B670, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      v74 = sub_1BA4A6638();
      v76 = v75;

      v77 = sub_1B9F0B82C(v74, v76, v170);

      *(v68 + 14) = v77;
      *(v68 + 22) = 2080;
      v78 = MEMORY[0x1BFAF1560](v53, v73);
      v80 = v79;

      v81 = sub_1B9F0B82C(v78, v80, v170);

      *(v68 + 24) = v81;
      *(v68 + 32) = 2080;
      v82 = v156;
      v83 = v151;
      v84 = v162;
      v159(v151, v163 + v156, v162);
      v85 = NSDiffableDataSourceSnapshot<>.description.getter();
      v87 = v86;
      v158(v83, v84);
      v88 = sub_1B9F0B82C(v85, v87, v170);

      *(v68 + 34) = v88;
      _os_log_impl(&dword_1B9F07000, v66, v67, "[%s] Duplicate uniqueIdentifiers: %s.\n\nThere is one or more sets of duplicate item in the data source with keys: %s. The snapshot is: %s", v68, 0x2Au);
      swift_arrayDestroy();
      v65 = v163;
      MEMORY[0x1BFAF43A0](v69, -1, -1);
      MEMORY[0x1BFAF43A0](v68, -1, -1);

      (*(v152 + 8))(v160, v153);
      goto LABEL_47;
    }

    (*(v152 + 8))(v55, v153);
  }

  else
  {
  }

  v82 = v156;
LABEL_47:
  v89 = v157;
  v90 = v162;
  v159(v157, &v65[v82], v162);
  v91 = sub_1BA4A4578();
  v158(v89, v90);
  v92 = *(v91 + 16);
  swift_beginAccess();
  if (!v92)
  {
    v96 = MEMORY[0x1E69E7CC0];
    goto LABEL_62;
  }

  v93 = 0;
  v94 = v91 + 40;
  v95 = v92 - 1;
  v96 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v97 = (v94 + 16 * v93);
    v98 = v93;
    while (2)
    {
      if (v98 >= *(v91 + 16))
      {
        goto LABEL_99;
      }

      v99 = *&v65[v164];
      if (!*(v99 + 16))
      {
LABEL_51:
        ++v98;
        v97 += 2;
        v65 = v163;
        if (v92 == v98)
        {
          goto LABEL_62;
        }

        continue;
      }

      break;
    }

    v101 = *(v97 - 1);
    v100 = *v97;

    v102 = sub_1B9F24A34(v101, v100);
    if ((v103 & 1) == 0)
    {

      goto LABEL_51;
    }

    v161 = v95;
    v162 = v94;
    v104 = *(v99 + 56) + 48 * v102;
    v105 = *(v104 + 8);
    v159 = *v104;
    v106 = *(v104 + 16);
    v107 = *(v104 + 24);
    v108 = *(v104 + 40);
    v158 = *(v104 + 32);

    v160 = v106;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v96 = sub_1B9F21540(0, *(v96 + 2) + 1, 1, v96);
    }

    v110 = *(v96 + 2);
    v109 = *(v96 + 3);
    if (v110 >= v109 >> 1)
    {
      v96 = sub_1B9F21540((v109 > 1), v110 + 1, 1, v96);
    }

    v93 = v98 + 1;
    *(v96 + 2) = v110 + 1;
    v111 = &v96[48 * v110];
    *(v111 + 4) = v159;
    *(v111 + 5) = v105;
    *(v111 + 6) = v160;
    *(v111 + 7) = v107;
    *(v111 + 8) = v158;
    *(v111 + 9) = v108;
    v95 = v161;
    v65 = v163;
    v94 = v162;
    if (v161 != v98)
    {
      continue;
    }

    break;
  }

LABEL_62:

  v112 = *(v96 + 2);
  if (v112)
  {
    v113 = 0;
    v114 = MEMORY[0x1E69E7CC0];
    v115 = v96 + 48;
    while (1)
    {
      if (v113 >= *(v96 + 2))
      {
        goto LABEL_103;
      }

      v116 = *v115;
      v117 = *(*v115 + 16);
      v118 = v114[2];
      v119 = v118 + v117;
      if (__OFADD__(v118, v117))
      {
        goto LABEL_104;
      }

      v120 = swift_isUniquelyReferenced_nonNull_native();
      if (v120 && v119 <= v114[3] >> 1)
      {
        if (!*(v116 + 16))
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (v118 <= v119)
        {
          v121 = v118 + v117;
        }

        else
        {
          v121 = v118;
        }

        v114 = sub_1B9F281E8(v120, v121, 1, v114);
        if (!*(v116 + 16))
        {
LABEL_64:

          if (v117)
          {
            goto LABEL_105;
          }

          goto LABEL_65;
        }
      }

      if ((v114[3] >> 1) - v114[2] < v117)
      {
        goto LABEL_107;
      }

      sub_1B9F0D950(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
      swift_arrayInitWithCopy();

      if (v117)
      {
        v122 = v114[2];
        v50 = __OFADD__(v122, v117);
        v123 = v122 + v117;
        if (v50)
        {
          goto LABEL_109;
        }

        v114[2] = v123;
      }

LABEL_65:
      ++v113;
      v115 += 48;
      if (v112 == v113)
      {
        goto LABEL_81;
      }
    }
  }

  v114 = MEMORY[0x1E69E7CC0];
LABEL_81:

  v124 = v114[2];
  if (v124)
  {
    v125 = MEMORY[0x1E69E7CC0];
    v126 = MEMORY[0x1E69A3310];
    v127 = (v114 + 4);
    v128 = MEMORY[0x1E69A3348];
    do
    {
      sub_1B9F0A534(v127, v170);
      sub_1B9F0A534(v170, v167);
      sub_1B9F0D950(0, &qword_1EDC6AD50, v126);
      sub_1B9F0D950(0, &qword_1EDC6E1B0, v128);
      if (swift_dynamicCast())
      {
        sub_1B9F1134C(v165, v168);
        __swift_project_boxed_opaque_existential_1(v168, v169);
        v129 = sub_1BA4A2D58();
        v131 = v130;
        __swift_project_boxed_opaque_existential_1(v168, v169);
        v132 = sub_1BA4A2E58();
        v134 = v133;
        __swift_destroy_boxed_opaque_existential_1(v170);
        __swift_destroy_boxed_opaque_existential_1(v168);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v125 = sub_1B9F28B98(0, v125[2] + 1, 1, v125);
        }

        v136 = v125[2];
        v135 = v125[3];
        if (v136 >= v135 >> 1)
        {
          v125 = sub_1B9F28B98((v135 > 1), v136 + 1, 1, v125);
        }

        v125[2] = v136 + 1;
        v137 = &v125[4 * v136];
        v137[4] = v129;
        v137[5] = v131;
        v137[6] = v132;
        v137[7] = v134;
        v126 = MEMORY[0x1E69A3310];
        v128 = MEMORY[0x1E69A3348];
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v170);
        v166 = 0;
        memset(v165, 0, sizeof(v165));
        sub_1BA0FA9CC(v165, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v128);
      }

      v127 += 40;
      --v124;
    }

    while (v124);
  }

  else
  {

    v125 = MEMORY[0x1E69E7CC0];
  }

  v138 = v163;
  if (v125[2])
  {
    sub_1B9F24D7C(0, &qword_1EDC5E000, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    v139 = sub_1BA4A8098();
  }

  else
  {
    v139 = MEMORY[0x1E69E7CC8];
  }

  v170[0] = v139;

  v141 = v154;
  sub_1B9F1A400(v140, 1, v170);
  if (!v141)
  {

    v142 = v170[0];
    v143 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
    swift_beginAccess();
    *(v138 + v143) = v142;
  }

LABEL_110:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *sub_1B9F19D30(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v27 = MEMORY[0x1E69E7CC8];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  v3 = MEMORY[0x1E69E6158];
  for (i = (a1 + 40); ; i += 2)
  {
    v7 = *(i - 1);
    v6 = *i;
    swift_bridgeObjectRetain_n();
    v9 = sub_1B9F24A34(v7, v6);
    v10 = v1[2];
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      break;
    }

    v13 = v8;
    if (v1[3] < v12)
    {
      sub_1B9F1CE4C(v12, 1, &qword_1EDC5DFE8, &qword_1EDC6B670, v3);
      v1 = v27;
      v14 = sub_1B9F24A34(v7, v6);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_19;
      }

      v9 = v14;
    }

    if (v13)
    {

      v16 = v1[7];
      v17 = *(v16 + 8 * v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v16 + 8 * v9) = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = sub_1BA27EE34(0, *(v17 + 2) + 1, 1, v17);
        *(v16 + 8 * v9) = v17;
      }

      v20 = *(v17 + 2);
      v19 = *(v17 + 3);
      if (v20 >= v19 >> 1)
      {
        v17 = sub_1BA27EE34((v19 > 1), v20 + 1, 1, v17);
        *(v16 + 8 * v9) = v17;
      }

      *(v17 + 2) = v20 + 1;
      v5 = &v17[16 * v20];
      *(v5 + 4) = v7;
      *(v5 + 5) = v6;
      v3 = MEMORY[0x1E69E6158];
    }

    else
    {
      sub_1B9F2176C(0, &qword_1EDC6E330, v3, MEMORY[0x1E69E6F90]);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1BA4B5480;
      *(v21 + 32) = v7;
      *(v21 + 40) = v6;
      v1[(v9 >> 6) + 8] |= 1 << v9;
      v22 = (v1[6] + 16 * v9);
      *v22 = v7;
      v22[1] = v6;
      *(v1[7] + 8 * v9) = v21;
      v23 = v1[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_18;
      }

      v1[2] = v25;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1BA4A83B8();
  __break(1u);
  return result;
}

unint64_t *sub_1B9F19F78(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD)
  {
    goto LABEL_2;
  }

  v12 = 8 * (v6 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v8 = v12;
LABEL_2:
    MEMORY[0x1EEE9AC00](a1, v8);
    v10 = v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_1B9F1A0D8(v10, v7, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v13 = swift_slowAlloc();
  v14 = v2;
  v15 = sub_1BA0F81E8(v13, v7, v3);
  result = MEMORY[0x1BFAF43A0](v13, -1, -1);
  if (!v14)
  {
    return v15;
  }

  return result;
}

unint64_t *sub_1B9F1A0D8(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v11) + 16) >= 2uLL)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1B9F1A1C8(result, a2, v4, a3);
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

    if (v5 >= v9)
    {
      return sub_1B9F1A1C8(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9F1A1C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1BA205764(0);
  result = sub_1BA4A8098();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_1BA4A8488();

    sub_1BA4A68C8();
    result = sub_1BA4A84D8();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

void sub_1B9F1A400(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_1B9F24A34(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1B9F24AAC(v15, v4 & 1);
    v10 = sub_1B9F24A34(v6, v5);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1BA4A83B8();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_1BA0F1474();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    sub_1B9F0D950(0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v6;
  v22[1] = v5;
  v23 = (v21[7] + 16 * v10);
  *v23 = v7;
  v23[1] = v8;
  v24 = v21[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](0xD00000000000001BLL, 0x80000001BA4E68E0);
    sub_1BA4A7FB8();
    MEMORY[0x1BFAF1350](39, 0xE100000000000000);
    sub_1BA4A8018();
    __break(1u);
    return;
  }

  v21[2] = v25;
  if (v39 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v26 = *(v4 - 1);
      v8 = *v4;
      v27 = *a3;

      v28 = sub_1B9F24A34(v6, v5);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_1B9F24AAC(v32, 1);
        v28 = sub_1B9F24A34(v6, v5);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v35 = (v34[6] + 16 * v28);
      *v35 = v6;
      v35[1] = v5;
      v36 = (v34[7] + 16 * v28);
      *v36 = v26;
      v36[1] = v8;
      v37 = v34[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v34[2] = v38;
      v4 += 4;
      if (v39 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t type metadata accessor for PluginSearchDataSource(uint64_t a1)
{
  result = qword_1EDC66FE8;
  if (!qword_1EDC66FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B9F1A844(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BA4A1798();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v3 + OBJC_IVAR____TtC18HealthExperienceUI22PluginSearchDataSource_pluginBundleName);
  *v11 = a1;
  v11[1] = a2;
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_1BA4A7DF8();

  strcpy(v16, "MutableArray<");
  HIWORD(v16[1]) = -4864;
  sub_1BA4A1788();
  v12 = sub_1BA4A1748();
  v14 = v13;
  (*(v7 + 8))(v10, v6);
  MEMORY[0x1BFAF1350](v12, v14);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  return MutableArrayDataSource.init(arrangedSections:identifier:)(MEMORY[0x1E69E7CC0], v16[0], v16[1]);
}

void sub_1B9F1A9BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B9F1AA20(void *a1, void *a2)
{
  sub_1B9F1A9BC(0, &qword_1EDC5DB98, sub_1B9F1ABA4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  *(inited + 32) = 2;
  sub_1B9F0A534(a2, v8);
  type metadata accessor for SearchDataSource.RegularEmptyStateDataSource(0);
  swift_allocObject();
  *(inited + 40) = sub_1B9F1ACE8(a1, v8);
  *(inited + 48) = &protocol witness table for CompoundSectionedDataSource;
  *(inited + 56) = &protocol witness table for CompoundSectionedDataSource;
  *(inited + 64) = 1;
  sub_1B9F0A534(a2, v8);
  type metadata accessor for SearchDataSource.CompactEmptyStateDataSource(0);
  swift_allocObject();
  *(inited + 72) = sub_1B9F271FC(a1, v8);
  *(inited + 80) = &protocol witness table for SearchSectionDataSource;
  *(inited + 88) = &protocol witness table for MutableArrayDataSource;
  v5 = sub_1B9F28D90(inited);
  swift_setDeallocating();
  sub_1B9F1ABA4(0);
  swift_arrayDestroy();
  v6 = sub_1B9F1D348(v5, 0, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v6;
}

void sub_1B9F1ABA4(uint64_t a1)
{
  if (!qword_1EDC5E300)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    sub_1B9F1AC28();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5E300);
    }
  }
}

unint64_t sub_1B9F1AC28()
{
  result = qword_1EDC60EF8[0];
  if (!qword_1EDC60EF8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDC60EF8);
  }

  return result;
}

uint64_t sub_1B9F1ACE8(uint64_t a1, void *a2)
{
  v62 = a2;
  v4 = sub_1BA4A4428();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v59 - v11;
  sub_1B9F1B4AC(0, &qword_1EDC5DC70, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4B9FD0;
  v14 = sub_1B9F1B828(a1, a2, &unk_1F37FC7E0);
  sub_1B9F126E0(0);
  v68 = v15;
  v16 = objc_allocWithZone(v15);
  v17 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v14);
  v18 = sub_1BA4A1D18();
  v20 = v19;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v21 = *(v5 + 16);
  v66 = v5 + 16;
  v67 = v21;
  v21(v8, v12, v4);
  v22 = type metadata accessor for HeaderItem(0);
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v18, v20, 0, 0, 0, 0, v8, 0, 0);
  v24 = v23;
  v61 = *(v5 + 8);
  v65 = v5 + 8;
  v61(v12, v4);
  v71 = v22;
  v64 = sub_1B9F25430(&qword_1EDC69800, type metadata accessor for HeaderItem, &protocol conformance descriptor for HeaderItem);
  v72 = v64;
  v70[0] = v24;
  sub_1B9F0A534(v70, v69);
  v25 = swift_allocObject();
  sub_1B9F25598(v69, v25 + 16);
  sub_1B9F255B4(0);
  v63 = v26;
  v27 = swift_allocObject();
  v27[4] = v17;
  v27[5] = sub_1B9F79BC8;
  v27[6] = v25;
  v28 = *&v17[qword_1EDC84AD0 + 8];
  v27[2] = *&v17[qword_1EDC84AD0];
  v27[3] = v28;

  __swift_destroy_boxed_opaque_existential_1(v70);
  *(v13 + 32) = v27;
  *(v13 + 40) = &protocol witness table for Supplementary<A>;
  v29 = v62;
  v30 = sub_1B9F1B828(a1, v62, &unk_1F37FC808);
  v31 = objc_allocWithZone(v68);
  v32 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v30);
  v33 = sub_1BA4A1D18();
  v35 = v34;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v60 = v4;
  v67(v8, v12, v4);
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v33, v35, 0, 0, 0, 0, v8, 0, 0);
  v37 = v36;
  v38 = v4;
  v39 = v61;
  v61(v12, v38);
  v71 = v22;
  v72 = v64;
  v70[0] = v37;
  sub_1B9F0A534(v70, v69);
  v40 = swift_allocObject();
  sub_1B9F25598(v69, v40 + 16);
  v41 = swift_allocObject();
  v41[4] = v32;
  v41[5] = sub_1BA0590DC;
  v41[6] = v40;
  v42 = *&v32[qword_1EDC84AD0 + 8];
  v41[2] = *&v32[qword_1EDC84AD0];
  v41[3] = v42;

  __swift_destroy_boxed_opaque_existential_1(v70);
  *(v13 + 48) = v41;
  *(v13 + 56) = &protocol witness table for Supplementary<A>;
  v43 = a1;
  v44 = v29;
  v45 = sub_1B9F1B828(v43, v29, &unk_1F37FC830);
  v46 = objc_allocWithZone(v68);
  v47 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v45);
  v48 = sub_1BA4A1D18();
  v50 = v49;
  sub_1BA4A43F8();
  v51 = v60;
  v67(v8, v12, v60);
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v48, v50, 0, 0, 0, 0, v8, 0, 0);
  v53 = v52;
  v39(v12, v51);
  v71 = v22;
  v72 = v64;
  v70[0] = v53;
  sub_1B9F0A534(v70, v69);
  v54 = swift_allocObject();
  sub_1B9F25598(v69, v54 + 16);
  v55 = swift_allocObject();
  v55[4] = v47;
  v55[5] = sub_1BA0590DC;
  v55[6] = v54;
  v56 = *&v47[qword_1EDC84AD0 + 8];
  v55[2] = *&v47[qword_1EDC84AD0];
  v55[3] = v56;

  __swift_destroy_boxed_opaque_existential_1(v70);
  *(v13 + 64) = v55;
  *(v13 + 72) = &protocol witness table for Supplementary<A>;
  v57 = CompoundSectionedDataSource.init(_:)(v13);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v57;
}

uint64_t sub_1B9F1B2D0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1B9F1B310(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D950(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F1B378(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D950(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F1B3E0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D950(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F1B448(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F1B4AC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, char a5)
{
  if (!*a2)
  {
    sub_1B9F0D9AC(255, a3, a4, a5 & 1);
    v6 = sub_1BA4A82E8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1B9F1B50C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A82E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F1B560(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1B9F0D950(255, a3, a4);
    v5 = sub_1BA4A82E8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1B9F1B5B8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D950(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F1B620(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F1B684(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D9AC(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F1B6F0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D950(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F1B758(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D9AC(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F1B7C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B9F1B828(uint64_t a1, void *a2, uint64_t a3)
{
  v46 = a1;
  sub_1B9F1A9BC(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v44 - v7;
  sub_1B9F1B4AC(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], 1);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B5460;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1B9F1BE20();
  *(v9 + 32) = 0xD000000000000015;
  *(v9 + 40) = 0x80000001BA4EC680;
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v47 = MEMORY[0x1E69E7CC0];
    sub_1B9F1BE74(0, v10, 0);
    v11 = v47;
    v12 = a3 + 32;
    do
    {
      ++v12;
      v13 = sub_1BA4A1D28();
      v47 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        LODWORD(v45) = v13;
        sub_1B9F1BE74((v14 > 1), v15 + 1, 1);
        LOWORD(v13) = v45;
        v11 = v47;
      }

      *(v11 + 16) = v15 + 1;
      *(v11 + 2 * v15 + 32) = v13;
      --v10;
    }

    while (v10);
  }

  v45 = sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  sub_1B9F1C094(0, &unk_1EDC5E600, MEMORY[0x1E69E7290], MEMORY[0x1E69E62F8]);
  *(v9 + 96) = v16;
  *(v9 + 104) = sub_1B9F1C134();
  *(v9 + 72) = v11;
  v17 = sub_1BA4A6EE8();
  sub_1BA4A27B8();
  sub_1B9F1A9BC(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v18 = sub_1BA4A1C68();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v44 = xmmword_1BA4B5480;
  *(v21 + 16) = xmmword_1BA4B5480;
  (*(v19 + 104))(v21 + v20, *MEMORY[0x1E69A3BE8], v18);
  v22 = sub_1BA4A0FA8();
  (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
  v23 = MEMORY[0x1E69E6F90];
  sub_1B9F1C094(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58], MEMORY[0x1E69E6F90]);
  v24 = swift_allocObject();
  *(v24 + 16) = v44;
  *(v24 + 32) = sub_1BA4A6F38();
  v25 = MEMORY[0x1BFAED020](v21, 0, v8, v24);

  sub_1B9F1C1B0(v8);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v26 = sub_1BA4A1B68();
  sub_1B9F1C094(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, v23);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BA4B8B60;
  v28 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v29 = sub_1BA4A6758();
  v30 = [v28 initWithKey:v29 ascending:1];

  *(v27 + 32) = v30;
  v31 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v32 = sub_1BA4A6758();
  v33 = [v31 initWithKey:v32 ascending:0];

  *(v27 + 40) = v33;
  v34 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v35 = sub_1BA4A6758();
  v36 = [v34 initWithKey:v35 ascending:1 selector:sel_localizedStandardCompare_];

  *(v27 + 48) = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1BA4B7510;
  *(v37 + 32) = v17;
  *(v37 + 40) = v25;
  v38 = v17;
  v39 = v25;
  v40 = sub_1BA4A6AE8();

  v41 = [objc_opt_self() andPredicateWithSubpredicates_];

  v42 = sub_1BA4A7558();

  return v42;
}

unint64_t sub_1B9F1BE20()
{
  result = qword_1EDC6B6B0;
  if (!qword_1EDC6B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6B6B0);
  }

  return result;
}

char *sub_1B9F1BE74(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B9F1BE94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B9F1BE94(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1BFA8(0, &qword_1EDC5DB68, MEMORY[0x1E69E7290], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void sub_1B9F1BFA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1B9F1BFFC()
{
  result = qword_1EDC6B630;
  if (!qword_1EDC6B630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6B630);
  }

  return result;
}

void sub_1B9F1C048(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1BA4A82E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F1C094(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F1C0E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1B9F1C134()
{
  result = qword_1EDC5E5F8;
  if (!qword_1EDC5E5F8)
  {
    sub_1B9F1C094(255, &unk_1EDC5E600, MEMORY[0x1E69E7290], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E5F8);
  }

  return result;
}

uint64_t sub_1B9F1C1B0(uint64_t a1)
{
  sub_1B9F0C974(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1B9F1C23C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1BFA8(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B9F1C360(char *a1, int64_t a2, char a3)
{
  result = sub_1B9F1C23C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B9F1C380@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *a2 = sub_1BA4A2D58();
  a2[1] = v4;
  a2[2] = v3;
  return swift_unknownObjectRetain();
}

uint64_t sub_1B9F1C3E0()
{
  v1 = [*v0 uniqueIdentifier];
  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  return v2;
}

uint64_t sub_1B9F1C438@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_1B9F1C4F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1B9F1134C(&v12, v10 + 40 * a1 + 32);
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

unint64_t sub_1B9F1C5F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B9F24D7C(0, &qword_1EDC5DFE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6530], MEMORY[0x1E69E6168]);
    v3 = sub_1BA4A8098();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B9F24A34(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1B9F1C700(uint64_t a1)
{
  if (!qword_1EDC5E5D0)
  {
    sub_1B9F0D9AC(255, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5E5D0);
    }
  }
}

uint64_t sub_1B9F1C780(uint64_t a1, uint64_t a2)
{
  sub_1B9F1C700(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B9F1C7E4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, id *, uint64_t *, uint64_t))
{
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_16:

    return;
  }

  v7 = 0;
  v8 = (a1 + 48);
  while (1)
  {
    if (v7 >= *(a1 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:

      sub_1BA4A83B8();
      __break(1u);
      goto LABEL_24;
    }

    v9 = *(v8 - 1);
    v11 = *v8;
    v36 = *(v8 - 2);
    v10 = v36;
    v37 = v9;
    v38 = v11;
    v12 = *a3;

    v13 = sub_1B9F24A34(v10, v9);
    v15 = v12[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      goto LABEL_21;
    }

    v19 = v14;
    if (v12[3] >= v18)
    {
      break;
    }

    sub_1BA0F36C0(v18, a2 & 1);
    v13 = sub_1B9F24A34(v10, v9);
    if ((v19 & 1) != (v20 & 1))
    {
      goto LABEL_23;
    }

LABEL_10:
    if (v19)
    {
      goto LABEL_11;
    }

LABEL_14:
    v24 = *a3;
    *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
    v25 = (v24[6] + 16 * v13);
    *v25 = v10;
    v25[1] = v9;
    *(v24[7] + 8 * v13) = v11;
    v26 = v24[2];
    v17 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v17)
    {
      goto LABEL_22;
    }

    v24[2] = v27;
LABEL_3:
    ++v7;
    v8 += 3;
    a2 = 1;
    if (v31 == v7)
    {
      goto LABEL_16;
    }
  }

  if (a2)
  {
    goto LABEL_10;
  }

  v23 = v13;
  sub_1BA0F15FC();
  v13 = v23;
  if ((v19 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v21 = *a3;
  v22 = v13;
  v35 = *(*(*a3 + 56) + 8 * v13);
  a5(v34, &v35, &v38, a4);
  if (!v32)
  {
    v32 = 0;

    *(v21[7] + 8 * v22) = v34[0];
    goto LABEL_3;
  }

  v35 = v32;
  v28 = v32;
  sub_1B9F0D9AC(0, &qword_1EDC6E310, MEMORY[0x1E69E7280], 1);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_24:
  v34[0] = 0;
  v34[1] = 0xE000000000000000;
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD00000000000001BLL, 0x80000001BA4E68E0);
  sub_1BA4A7FB8();
  MEMORY[0x1BFAF1350](39, 0xE100000000000000);

  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1B9F1CB18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B9F24D7C(0, &unk_1EDC5DFF0, MEMORY[0x1E69E6158], &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6168]);
  v44 = v4;
  result = sub_1BA4A8078();
  v7 = result;
  if (*(v5 + 16))
  {
    v41 = v3;
    v42 = v5;
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
    v43 = result;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v46 = (v12 - 1) & v12;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = v24[1];
      v49 = *v24;
      v26 = (*(v5 + 56) + 48 * v23);
      v27 = v26[1];
      v47 = *v26;
      v29 = v26[2];
      v28 = v26[3];
      v30 = v26[5];
      v45 = v26[4];
      if ((v44 & 1) == 0)
      {
      }

      v48 = v28;
      v31 = v29;
      v32 = v27;
      sub_1BA4A8488();
      sub_1BA4A68C8();
      result = sub_1BA4A84D8();
      v7 = v43;
      v33 = -1 << *(v43 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v16 = v48;
        v17 = v30;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v16 = v48;
      v17 = v30;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = (*(v43 + 48) + 16 * v15);
      *v18 = v49;
      v18[1] = v25;
      v19 = (*(v43 + 56) + 48 * v15);
      v12 = v46;
      *v19 = v47;
      v19[1] = v32;
      v19[2] = v31;
      v19[3] = v16;
      v19[4] = v45;
      v19[5] = v17;
      ++*(v43 + 16);
      v5 = v42;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v46 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_33;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v9, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B9F1CE4C(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  sub_1B9F28B1C(0, a3, a4, a5);
  v37 = v7;
  result = sub_1BA4A8078();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v8 + 56) + 8 * v23);
      if ((v37 & 1) == 0)
      {
      }

      sub_1BA4A8488();
      sub_1BA4A68C8();
      result = sub_1BA4A84D8();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v8 = v36;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_33;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero(v12, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_33:
  *v6 = v10;
  return result;
}

void sub_1B9F1D0F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F1D158(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F1D1BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F1D220(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F1D284()
{
  if (!qword_1EDC5E730)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5E730);
    }
  }
}

unint64_t sub_1B9F1D2E0(uint64_t a1)
{
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](a1);
  v2 = sub_1BA4A84D8();
  return sub_1B9F28FD8(a1, v2);
}

uint64_t sub_1B9F1D348(uint64_t a1, uint64_t a2, _UNKNOWN **a3, _UNKNOWN **a4)
{
  v5 = v4;
  sub_1B9F0ADF8(0, &qword_1EDC5E090, 0x1E69E9BF8);
  v10 = sub_1BA4A7A78();
  v11 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v12 = sub_1BA4A6758();
  v13 = [v11 initWithName:v12 loggingCategory:v10];

  *(v5 + 16) = v13;
  *(v5 + 72) = 0;
  *(v5 + 80) = 1;
  sub_1BA4A7DF8();

  *&v25[0] = 0xD000000000000016;
  *(&v25[0] + 1) = 0x80000001BA508550;

  v15 = sub_1B9F29044(v14);

  *&v24[0] = v15;
  sub_1B9F1D718();
  sub_1B9F1D768();
  v16 = sub_1BA4A66D8();
  v18 = v17;

  MEMORY[0x1BFAF1350](v16, v18);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  *(v5 + 24) = 0xD000000000000016;
  *(v5 + 32) = 0x80000001BA508550;
  *(v5 + 64) = a1;
  if (a2)
  {
    v19 = a2;
  }

  else
  {
    if (qword_1EDC6D268 != -1)
    {
      swift_once();
    }

    v25[4] = xmmword_1EDC6D2B0;
    v25[5] = *&qword_1EDC6D2C0;
    v25[6] = xmmword_1EDC6D2D0;
    v25[7] = unk_1EDC6D2E0;
    v25[0] = xmmword_1EDC6D270;
    v25[1] = *&qword_1EDC6D280;
    v25[2] = xmmword_1EDC6D290;
    v25[3] = *&qword_1EDC6D2A0;
    sub_1B9F0ADF8(0, &qword_1EDC6B530, 0x1E6995580);
    v24[4] = xmmword_1EDC6D2B0;
    v24[5] = *&qword_1EDC6D2C0;
    v24[6] = xmmword_1EDC6D2D0;
    v24[7] = unk_1EDC6D2E0;
    v24[0] = xmmword_1EDC6D270;
    v24[1] = *&qword_1EDC6D280;
    v24[2] = xmmword_1EDC6D290;
    v24[3] = *&qword_1EDC6D2A0;
    sub_1B9F1D9A4(v25, &v23);
    v20 = sub_1B9F293A8(v24);
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    type metadata accessor for MutableArrayDataSourceWithLayout(0);
    swift_allocObject();
    v19 = sub_1B9F1DAFC(MEMORY[0x1E69E7CC0], 1, sub_1BA104830, v21);

    a4 = &protocol witness table for MutableArrayDataSource;
    a3 = &protocol witness table for MutableArrayDataSourceWithLayout;
  }

  *(v5 + 40) = v19;
  *(v5 + 48) = a3;
  *(v5 + 56) = a4;
  *(v5 + 88) = v19;
  *(v5 + 96) = a3;
  *(v5 + 104) = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1B9F1DCEC();
  return v5;
}

uint64_t sub_1B9F1D668()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F1D6A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_identifier);

  return v1;
}

uint64_t sub_1B9F1D6DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);

  return v1;
}

void sub_1B9F1D718()
{
  if (!qword_1EDC6B670)
  {
    v0 = sub_1BA4A6BF8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6B670);
    }
  }
}

unint64_t sub_1B9F1D768()
{
  result = qword_1EDC6B660;
  if (!qword_1EDC6B660)
  {
    sub_1B9F1D7DC(255, &qword_1EDC6B670, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6B660);
  }

  return result;
}

void sub_1B9F1D7DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F1D830(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F1D880(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F1D8D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_1B9F1D92C()
{
  v0 = objc_opt_self();
  v1 = [v0 fractionalWidthDimension_];
  result = [v0 estimatedDimension_];
  qword_1EDC6D4A8 = v1;
  qword_1EDC6D4B0 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI19LayoutConfigurationV25BoundarySupplementaryItemVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1B9F1DA18(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a3)
  {
  }
}

uint64_t sub_1B9F1DAFC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = sub_1BA4A1798();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = v10;
  v17 = (v5 + OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_layoutSectionProvider);
  *v17 = sub_1B9F57054;
  v17[1] = v16;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_collapseEmptySections) = a2;
  v22[0] = 0;
  v22[1] = 0xE000000000000000;

  sub_1BA4A7DF8();

  strcpy(v22, "MutableArray<");
  HIWORD(v22[1]) = -4864;
  sub_1BA4A1788();
  v18 = sub_1BA4A1748();
  v20 = v19;
  (*(v12 + 8))(v15, v11);
  MEMORY[0x1BFAF1350](v18, v20);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  return MutableArrayDataSource.init(arrangedSections:identifier:)(a1, v22[0], v22[1]);
}

void sub_1B9F1DCEC()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 104);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 40);
  swift_unknownObjectRetain();
  v5 = v4(ObjectType, v2);
  swift_unknownObjectRelease();
  [v5 unregisterObserver_];

  swift_beginAccess();
  if (*(v0 + 80) & 1) == 0 && (v6 = *(v0 + 64), *(v6 + 16)) && (v7 = sub_1B9F82C68(v1[9]), (v8))
  {
    v9 = (*(v6 + 56) + 24 * v7);
    v10 = v9 + 1;
    v11 = v9 + 2;
  }

  else
  {
    v9 = v1 + 5;
    v10 = v1 + 6;
    v11 = v1 + 7;
  }

  v12 = *v9;
  v13 = *v10;
  v14 = *v11;
  v1[11] = v12;
  v1[12] = v13;
  v1[13] = v14;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  v15 = swift_getObjectType();
  v16 = (*(v14 + 40))(v15, v14);
  swift_unknownObjectRelease();
  [v16 registerObserver_];
}

id sub_1B9F1DE5C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void sub_1B9F1DEA0(uint64_t a1)
{
  if (!qword_1EDC5DC70)
  {
    sub_1B9F0D9AC(255, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5DC70);
    }
  }
}

uint64_t sub_1B9F1DF0C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1B9F1DFB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

void *sub_1B9F1E038(void *result, int64_t a2, char a3, void *a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    a5(0);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v17 = v16 - 32;
    if (v16 < 32)
    {
      v17 = v16 - 17;
    }

    v15[2] = v13;
    v15[3] = 2 * (v17 >> 4);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[2 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 16 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B9F0D9AC(0, a6, a7, 0);
    swift_arrayInitWithCopy();
  }

  return v15;
}

uint64_t CompoundSectionedDataSource.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  CompoundSectionedDataSource.init(_:)(a1);
  return v2;
}

uint64_t sub_1B9F1E1F0()
{
  v1 = (*(*v0 + 176))();
  swift_beginAccess();
  v2 = v0[7];
  swift_beginAccess();
  v3 = v0[8];
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  LOBYTE(v1) = (v1)(v2, v3);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1 & 1;
}

uint64_t sub_1B9F1E2C4()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v43 - v10;
  v12 = sub_1B9F1E1F0();
  v46 = v2;
  if (v12)
  {
    sub_1BA4A3D88();

    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6F88();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v45 = v3;
      v16 = v15;
      v44 = swift_slowAlloc();
      v47[0] = v44;
      *v16 = 136315394;
      v43 = v2[10];
      v17 = v2[12];
      v18 = sub_1BA4A85D8();
      v20 = sub_1B9F0B82C(v18, v19, v47);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      swift_beginAccess();
      v21 = *(v17 + 8);
      swift_unknownObjectRetain();
      v22 = v21(v43, v17);
      v24 = v23;
      swift_unknownObjectRelease();
      v25 = sub_1B9F0B82C(v22, v24, v47);

      *(v16 + 14) = v25;
      _os_log_impl(&dword_1B9F07000, v13, v14, "%s using primary data source: %s", v16, 0x16u);
      v26 = v44;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v26, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);

      (*(v4 + 8))(v11, v45);
    }

    else
    {

      (*(v4 + 8))(v11, v3);
    }

    v41 = v1 + 7;
    swift_beginAccess();
  }

  else
  {
    sub_1BA4A3D88();

    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6F88();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v45 = v3;
      v30 = v29;
      v44 = swift_slowAlloc();
      v47[0] = v44;
      *v30 = 136315394;
      v43 = v2[11];
      v31 = v2[13];
      v32 = sub_1BA4A85D8();
      v34 = sub_1B9F0B82C(v32, v33, v47);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      swift_beginAccess();
      v35 = *(v31 + 8);
      swift_unknownObjectRetain();
      v36 = v35(v43, v31);
      v38 = v37;
      swift_unknownObjectRelease();
      v39 = sub_1B9F0B82C(v36, v38, v47);

      *(v30 + 14) = v39;
      _os_log_impl(&dword_1B9F07000, v27, v28, "%s using secondary data source: %s", v30, 0x16u);
      v40 = v44;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v40, -1, -1);
      MEMORY[0x1BFAF43A0](v30, -1, -1);

      (*(v4 + 8))(v7, v45);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    v41 = v1 + 8;
    swift_beginAccess();
  }

  return *v41;
}

uint64_t sub_1B9F1E77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for SearchDataSource.State(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v14 - v10;
  v12 = qword_1EDC84C78;
  swift_beginAccess();
  sub_1B9F12358(a3 + v12, v11, type metadata accessor for SearchDataSource.State);
  swift_storeEnumTagMultiPayload();
  LOBYTE(a3) = _s18HealthExperienceUI16SearchDataSourceC5StateO2eeoiySbAE_AEtFZ_0(v11, v7);
  sub_1B9F299EC(v7, type metadata accessor for SearchDataSource.State);
  sub_1B9F299EC(v11, type metadata accessor for SearchDataSource.State);
  return a3 & 1;
}

void sub_1B9F1E8AC(uint64_t a1)
{
  if (!qword_1EDC68620[0])
  {
    type metadata accessor for SearchDataSource.State(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDC68620);
    }
  }
}