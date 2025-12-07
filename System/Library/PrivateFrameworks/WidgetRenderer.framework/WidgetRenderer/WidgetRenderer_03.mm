unint64_t sub_1DADB8470()
{
  result = qword_1EE005AC8;
  if (!qword_1EE005AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09100, &unk_1DAED8760);
    sub_1DAD64B94(&qword_1EE0058E0, &qword_1ECC09108, &qword_1DAED8770, MEMORY[0x1E697FDF8]);
    sub_1DAD64B94(&qword_1EE00AB88, &qword_1ECC08FA8, &qword_1DAED8508, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005AC8);
  }

  return result;
}

unint64_t sub_1DADB8554()
{
  result = qword_1EE005700;
  if (!qword_1EE005700)
  {
    sub_1DAED16AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005700);
  }

  return result;
}

uint64_t WidgetRendererSessionSubscriptionRequest.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_priority;
  v2 = sub_1DAECE20C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_environmentModifiers;
  v4 = sub_1DAED10DC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_1DADB870C(uint64_t a1, uint64_t a2, void *a3, char *a4, void *a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_1DADB0000(0, a3, a4, a5, a6, a7);
    swift_beginAccess();
    v16 = *(a8 + 16);
    if (v16)
    {

      sub_1DAECEE2C();
      swift_beginAccess();
      sub_1DADB8820(v16);
      swift_endAccess();
    }

    else
    {
    }
  }
}

uint64_t sub_1DADB8820(uint64_t a1)
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

    v5 = sub_1DAED24CC();

    if (v5)
    {
      v6 = sub_1DAEC50EC(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_1DAECEE3C();
  sub_1DADB7FE4(&qword_1EE005C50, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
  v8 = sub_1DAED1C5C();
  v9 = -1 << *(v2 + 32);
  v10 = v8 & ~v9;
  if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_1DADB7FE4(&qword_1EE005C48, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
  while ((sub_1DAED1CAC() & 1) == 0)
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
    sub_1DAE892B4();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_1DADB802C(v10);
  result = v14;
  *v1 = v15;
  return result;
}

void sub_1DADB8A20(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    BSDispatchQueueAssertMain();
    v4 = [*&v3[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_scene] _FBSScene];
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1DADB8444;
    *(v6 + 24) = v5;
    aBlock[4] = sub_1DADB8C18;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DADB8220;
    aBlock[3] = &block_descriptor_51;
    v7 = _Block_copy(aBlock);
    v8 = v3;

    [v4 updateClientSettings_];

    _Block_release(v7);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }
  }
}

uint64_t sub_1DADB8BDC()
{

  return swift_deallocObject();
}

uint64_t sub_1DADB8C4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DefaultWidgetLiveViewEntry.containsInteractiveControls.getter()
{
  v1 = v0;
  v2 = sub_1DAED19AC();
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088D0, &qword_1DAEDE260);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v48 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088D8, &qword_1DAED72D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  v17 = type metadata accessor for EnvironmentWrappedViewableTimelineEntry(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v48 - v22;
  v24 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DADB6264(v1, v26, type metadata accessor for DefaultWidgetLiveViewEntry);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088E8, &qword_1DAED72E0);
    v31 = *(v30 + 64);
    sub_1DADB62CC(&v26[*(v30 + 48)], v23, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    sub_1DAD7C48C(&v26[v31], v16, &qword_1ECC088D8, &qword_1DAED72D0);
    sub_1DAD6495C(v16, v13, &qword_1ECC088D8, &qword_1DAED72D0);
    if ((*(v18 + 48))(v13, 1, v17) == 1)
    {
      v32 = &qword_1ECC088D8;
      v33 = &qword_1DAED72D0;
      v34 = v13;
    }

    else
    {
      v37 = v52;
      v36 = v53;
      v38 = v50;
      (*(v52 + 16))(v50, &v13[*(v17 + 20)], v53);
      sub_1DADB6334(v13, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      v39 = v51;
      sub_1DAED194C();
      (*(v37 + 8))(v38, v36);
      v40 = sub_1DAED165C();
      v41 = *(v40 - 8);
      v42 = *(v41 + 48);
      if (v42(v39, 1, v40) != 1)
      {
        v44 = sub_1DAED163C();
        v45 = v39;
        v46 = *(v41 + 8);
        v46(v45, v40);
        if (v44 != 2 && (v44 & 1) != 0)
        {
          v47 = v49;
          sub_1DAED194C();
          if (v42(v47, 1, v40) != 1)
          {
            v35 = sub_1DAED163C();
            sub_1DAD64398(v16, &qword_1ECC088D8, &qword_1DAED72D0);
            sub_1DADB6334(v23, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
            v46(v47, v40);
            return v35 & 1;
          }

          sub_1DAD64398(v16, &qword_1ECC088D8, &qword_1DAED72D0);
          sub_1DADB6334(v23, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
          v29 = v47;
          goto LABEL_4;
        }

LABEL_11:
        sub_1DAD64398(v16, &qword_1ECC088D8, &qword_1DAED72D0);
        sub_1DADB6334(v23, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
        goto LABEL_12;
      }

      v32 = &qword_1ECC088D0;
      v33 = &qword_1DAEDE260;
      v34 = v39;
    }

    sub_1DAD64398(v34, v32, v33);
    goto LABEL_11;
  }

  sub_1DADB62CC(v26, v20, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
  sub_1DAED194C();
  v27 = sub_1DAED165C();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v6, 1, v27) == 1)
  {
    sub_1DADB6334(v20, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    v29 = v6;
LABEL_4:
    sub_1DAD64398(v29, &qword_1ECC088D0, &qword_1DAEDE260);
LABEL_12:
    v35 = 0;
    return v35 & 1;
  }

  v35 = sub_1DAED163C();
  sub_1DADB6334(v20, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
  (*(v28 + 8))(v6, v27);
  return v35 & 1;
}

uint64_t sub_1DADB9380(uint64_t a1)
{
  v2 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DADB940C(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v68 = &v46 - v4;
  v62 = sub_1DAED0A7C();
  v5 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = (&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1DAECDCEC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v46 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v46 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v48 = &v46 - v15;
  sub_1DAECDC4C();
  v16 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_storage;
  swift_beginAccess();
  v64 = a1;
  v17 = *(a1 + v16);
  v18 = v7;
  v19 = v17 + 64;
  v20 = 1 << *(v17 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v17 + 64);
  v60 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock;
  v23 = (v20 + 63) >> 6;
  v59 = *MEMORY[0x1E69E8020];
  v57 = (v5 + 8);
  v58 = (v5 + 104);
  v50 = (v8 + 56);
  v65 = (v8 + 48);
  v49 = (v8 + 32);
  v24 = (v8 + 8);
  v63 = v17;

  v25 = 0;
  v51 = v23;
  v53 = (v8 + 8);
  v52 = v19;
  while (v22)
  {
    v26 = v25;
LABEL_11:
    v27 = *(*(v63 + 56) + ((v26 << 9) | (8 * __clz(__rbit64(v22)))));
    swift_beginAccess();
    v28 = *(v27 + 16);
    v29 = *(*(v64 + v60) + 16);

    v30 = v28;
    os_unfair_lock_assert_owner(v29);
    sub_1DAD84C40();
    v31 = sub_1DAED20EC();
    v33 = v61;
    v32 = v62;
    *v61 = v31;
    (*v58)(v33, v59, v32);
    LOBYTE(v29) = sub_1DAED0A8C();
    (*v57)(v33, v32);
    if ((v29 & 1) == 0)
    {
LABEL_31:
      __break(1u);
      return;
    }

    sub_1DAED0B6C();
    if (v67)
    {
      v34 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      sub_1DAED177C();
      (*v50)(v34, 0, 1, v18);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      if ((*v65)(v34, 1, v18) != 1)
      {

        v35 = v54;
        (*v49)(v54, v68, v18);
        goto LABEL_18;
      }
    }

    else
    {
      sub_1DAD64398(v66, &unk_1ECC07DE0, &qword_1DAEDBED0);
      (*v50)(v68, 1, 1, v18);
    }

    v35 = v54;
    sub_1DAECDC4C();

    if ((*v65)(v68, 1, v18) != 1)
    {
      sub_1DAD64398(v68, &qword_1ECC07CE8, &qword_1DAED6F60);
    }

LABEL_18:
    v22 &= v22 - 1;
    v36 = v55;
    sub_1DAECDC4C();
    v37 = sub_1DAECDC6C();
    v24 = v53;
    v38 = *v53;
    (*v53)(v36, v18);
    if (v37)
    {
      sub_1DAD722E0(&qword_1EE00A6F0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v39 = v48;
      v40 = sub_1DAED1C9C();

      if (v40)
      {
        v41 = v39;
      }

      else
      {
        v41 = v35;
      }

      if (v40)
      {
        v42 = v35;
      }

      else
      {
        v42 = v39;
      }

      v38(v41, v18);
      v43 = *v49;
      v44 = v47;
      (*v49)(v47, v42, v18);
      v43(v39, v44, v18);
    }

    else
    {
      v38(v35, v18);
    }

    v25 = v26;
    v19 = v52;
    v23 = v51;
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v26 >= v23)
    {
      break;
    }

    v22 = *(v19 + 8 * v26);
    ++v25;
    if (v22)
    {
      goto LABEL_11;
    }
  }

  sub_1DAD6495C(v64 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__updateTimer, v66, &qword_1ECC087A8, &unk_1DAED71F0);
  if (v67)
  {
    __swift_project_boxed_opaque_existential_1(v66, v67);
    v45 = v48;
    sub_1DAED0F5C();
    (*v24)(v45, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
  }

  else
  {
    (*v24)(v48, v18);
    sub_1DAD64398(v66, &qword_1ECC087A8, &unk_1DAED71F0);
  }
}

double sub_1DADB9B50(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock);
  v5 = *(v4 + 16);

  os_unfair_lock_lock(v5);
  sub_1DADB940C(a1, a2);
  os_unfair_lock_unlock(*(v4 + 16));

  return result;
}

unint64_t sub_1DADB9C08()
{
  result = qword_1EE00BE68;
  if (!qword_1EE00BE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09220, &qword_1DAED91A0);
    sub_1DAD64B94(&qword_1EE00BE38, &qword_1ECC09218, &qword_1DAED9198, MEMORY[0x1E697FDF8]);
    sub_1DAD64B94(&qword_1EE00BE30, &qword_1ECC09228, &qword_1DAED91A8, MEMORY[0x1E6980620]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00BE68);
  }

  return result;
}

uint64_t sub_1DADB9CEC(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080B0, &qword_1DAEDE780);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_1DAED19AC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_1DAD64398(a1, &qword_1ECC080B0, &qword_1DAEDE780);
    sub_1DADC1E34(a2, v7);
    sub_1DADAB9A4(a2);
    return sub_1DAD64398(v7, &qword_1ECC080B0, &qword_1DAEDE780);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_1DADBA084(v12, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1DADAB9A4(a2);
    *v2 = v16;
  }

  return result;
}

unint64_t sub_1DADB9EB8(void *a1)
{
  sub_1DAED294C();
  type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  sub_1DAECDCEC();
  sub_1DAD8E95C(&qword_1EE00A6F8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1DAED1C6C();
  sub_1DAED157C();
  sub_1DAD8E95C(&qword_1EE005720, MEMORY[0x1E6985700], MEMORY[0x1E6985710]);
  sub_1DAED1C6C();
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  (*(v3 + 24))(&v6, v2, v3);
  MEMORY[0x1E127E5D0](v6);
  v4 = sub_1DAED297C();

  return sub_1DADAB1C0(a1, v4);
}

uint64_t sub_1DADBA01C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DADBA084(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1DADB9EB8(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_1DADDB404();
      goto LABEL_7;
    }

    sub_1DADAB3B8(v16, a3 & 1);
    v27 = sub_1DADB9EB8(a2);
    if ((v17 & 1) == (v28 & 1))
    {
      v13 = v27;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1DADAB8DC(a2, v10);
      return sub_1DADBA24C(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_1DAED28FC();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7];
  v21 = sub_1DAED19AC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 40);
  v24 = v21;
  v25 = v20 + *(v22 + 72) * v13;

  return v23(v25, a1, v24);
}

uint64_t sub_1DADBA24C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  sub_1DADAB940(a2, v8 + *(*(v9 - 8) + 72) * a1);
  v10 = a4[7];
  v11 = sub_1DAED19AC();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
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

uint64_t sub_1DADBA358(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = sub_1DAED1E7C();
  v7 = a1;
  a4(v6);
}

uint64_t sub_1DADBA40C(void *a1)
{
  sub_1DAED233C();
  sub_1DAECF2AC();
  sub_1DAED233C();
  sub_1DAED233C();
  sub_1DAECF2AC();
  sub_1DAECF2AC();
  sub_1DAED233C();
  swift_getTupleTypeMetadata2();
  sub_1DAED097C();
  swift_getWitnessTable();
  sub_1DAED086C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC099D8, &qword_1DAEDB218);
  sub_1DAECF2AC();
  swift_getWitnessTable();
  sub_1DAD64B94(&qword_1EE005870, &qword_1ECC099D8, &qword_1DAEDB218, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable();
}

unint64_t sub_1DADBA5B4(uint64_t a1)
{
  result = sub_1DADBA7AC(a1);
  if (!result)
  {
    return result;
  }

  v2 = result;
  if (result >> 62)
  {
    if (sub_1DAED247C())
    {
      goto LABEL_4;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    BSDispatchQueueAssert();
    if (qword_1EE005E90 != -1)
    {
      swift_once();
    }

    v3 = sub_1DAECEDEC();
    __swift_project_value_buffer(v3, qword_1EE0117F0);

    v4 = sub_1DAECEDCC();
    v5 = sub_1DAED200C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136446210;
      v8 = sub_1DAD674D4(0, &unk_1EE005648, 0x1E69943E0);
      v9 = MEMORY[0x1E127DB00](v2, v8);
      v11 = sub_1DAD6482C(v9, v10, &v12);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_1DAD61000, v4, v5, "Received placeholders did change for keys: %{public}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x1E127F100](v7, -1, -1);
      MEMORY[0x1E127F100](v6, -1, -1);
    }

    sub_1DADBA8B8(v2);
  }
}

uint64_t sub_1DADBA7AC(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1DAED25EC();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1DAD642F8(i, v5);
    sub_1DAD674D4(0, &unk_1EE005648, 0x1E69943E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1DAED25CC();
    sub_1DAED25FC();
    sub_1DAED260C();
    sub_1DAED25DC();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

double sub_1DADBA8B8(unint64_t a1)
{
  v18 = a1;
  v2 = sub_1DAED09DC();
  v21 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DAED0A3C();
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssert();
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x1E69E7CC0];
  v9 = *&v1[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock];
  os_unfair_lock_lock(*(v9 + 16));
  swift_beginAccess();

  v11 = sub_1DADBAC6C(v10);

  v12 = sub_1DADBB268(v11);

  sub_1DADBB7D8(v18, v12, (v8 + 16));
  swift_bridgeObjectRelease_n();
  os_unfair_lock_unlock(*(v9 + 16));
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  *(v13 + 24) = v1;
  aBlock[4] = sub_1DAD85A5C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_67;
  v14 = _Block_copy(aBlock);

  v15 = v1;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v7, v4, v14);
  _Block_release(v14);
  (*(v21 + 8))(v4, v2);
  (*(v19 + 8))(v7, v20);

  return result;
}

uint64_t sub_1DADBAC6C(uint64_t a1)
{
  v1 = a1;
  v25 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1DAED247C();
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v30 = MEMORY[0x1E69E7CC0];
    sub_1DAED25EC();
    result = sub_1DAED265C();
    v27 = result;
    v28 = v4;
    v29 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v30 = MEMORY[0x1E69E7CC0];
  sub_1DAED25EC();
  result = sub_1DAED23DC();
  v5 = *(v1 + 36);
  v27 = result;
  v28 = v5;
  v29 = 0;
LABEL_7:
  v6 = 0;
  v24 = v2;
  while (v6 < v2)
  {
    if (__OFADD__(v6, 1))
    {
      goto LABEL_20;
    }

    v14 = v27;
    v15 = v28;
    v16 = v29;
    sub_1DADBAF5C(v27, v28, v29, v1);
    v18 = v17;
    v19 = [v17 widget];
    v20 = v1;
    v21 = [v19 widgetByReplacingIntent_];

    v22 = [v18 metrics];
    [objc_allocWithZone(MEMORY[0x1E69943E0]) initWithWidget:v21 metrics:v22];

    sub_1DAED25CC();
    sub_1DAED25FC();
    sub_1DAED260C();
    result = sub_1DAED25DC();
    if (v25)
    {
      if (!v16)
      {
        goto LABEL_21;
      }

      if (sub_1DAED269C())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v24;
      v13 = v6 + 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A988, &qword_1DAEDF118);
      v23 = sub_1DAED1C2C();
      sub_1DAED272C();
      result = v23(v26, 0);
    }

    else
    {
      sub_1DADBB0EC(v14, v15, v16, v1);
      v8 = v7;
      v10 = v9;
      v12 = v11;
      result = sub_1DADAE050(v14, v15, v16);
      v27 = v8;
      v28 = v10;
      v29 = v12 & 1;
      v1 = v20;
      v2 = v24;
      v13 = v6 + 1;
    }

    ++v6;
    if (v13 == v2)
    {
      sub_1DADAE050(v27, v28, v29);
      return v30;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1DADBAF5C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_1DAED267C();
      sub_1DAD674D4(0, &qword_1EE00AA10, &off_1E85E9AE8);
      swift_dynamicCast();
      return;
    }

    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_1DAED26AC() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_1DAED26BC();
  sub_1DAD674D4(0, &qword_1EE00AA10, &off_1E85E9AE8);
  swift_dynamicCast();
  v5 = sub_1DADA5AD0(v10);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1 = v5;
LABEL_12:
  v8 = *(*(a4 + 48) + 8 * a1);

  v9 = v8;
}

void sub_1DADBB0EC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_1DAED26AC() == *(a4 + 36))
    {
      sub_1DAED26BC();
      sub_1DAD674D4(0, &qword_1EE00AA10, &off_1E85E9AE8);
      swift_dynamicCast();
      sub_1DADA5AD0(v6);
      v5 = v4;

      if (v5)
      {
        sub_1DAED268C();
        sub_1DAED26DC();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_1DAED23FC();
}

uint64_t sub_1DADBB268(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DAED247C())
  {
    v4 = sub_1DAD674D4(0, &unk_1EE005648, 0x1E69943E0);
    v5 = sub_1DAE8A564(&qword_1EE005640, &unk_1EE005648, 0x1E69943E0);
    result = MEMORY[0x1E127DBF0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x1E69943E0uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E127E1F0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_1DAD8C3E4(&v12, v10, &unk_1EE005648, 0x1E69943E0, &unk_1ECC0A308, &qword_1DAEDD860);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1DAED247C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_1DADBB3FC(uint64_t a1)
{
  sub_1DADA657C();
  if (v1 <= 0x3F)
  {
    sub_1DADBB6D4();
    if (v2 <= 0x3F)
    {
      sub_1DADBB724(319, &qword_1EE005838, &qword_1ECC09A18, &unk_1DAEDB490, MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1DADBB724(319, &qword_1EE005850, &qword_1ECC08678, &qword_1DAED6CB8, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          sub_1DADBB788(319, &qword_1EE005820, MEMORY[0x1E69E6448], MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            sub_1DADBB788(319, &qword_1EE005828, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
            if (v6 <= 0x3F)
            {
              sub_1DADBB788(319, &qword_1EE005830, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
              if (v7 <= 0x3F)
              {
                sub_1DADBB724(319, &qword_1EE005BB8, &qword_1ECC09A28, &qword_1DAEDB500, MEMORY[0x1E697BD78]);
                if (v8 <= 0x3F)
                {
                  sub_1DADBB724(319, &qword_1EE005B90, &qword_1ECC09A30, qword_1DAEDB508, MEMORY[0x1E697DCC0]);
                  if (v9 <= 0x3F)
                  {
                    sub_1DADBB788(319, &qword_1EE005B98, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                    if (v10 <= 0x3F)
                    {
                      sub_1DADA6518(319, &qword_1EE005BA0, MEMORY[0x1E697F228], MEMORY[0x1E697DCC0]);
                      if (v11 <= 0x3F)
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

unint64_t sub_1DADBB6D4()
{
  result = qword_1EE005408;
  if (!qword_1EE005408)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE005408);
  }

  return result;
}

void sub_1DADBB724(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1DADBB788(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DADBB7D8(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DAED247C())
  {
    v5 = 0;
    v20 = a2 + 56;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1E127E1F0](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v7 = *(a1 + 32 + 8 * v5);
      }

      v8 = v7;
      if (__OFADD__(v5++, 1))
      {
        break;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v10 = v7;
        v11 = sub_1DAED24CC();

        if (v11)
        {
          goto LABEL_4;
        }
      }

      else if (*(a2 + 16))
      {
        sub_1DAD674D4(0, &unk_1EE005648, 0x1E69943E0);
        v12 = sub_1DAED227C();
        v13 = -1 << *(a2 + 32);
        v14 = v12 & ~v13;
        if ((*(v20 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
        {
          v15 = ~v13;
          while (1)
          {
            v16 = *(*(a2 + 48) + 8 * v14);
            v17 = sub_1DAED228C();

            if (v17)
            {
              break;
            }

            v14 = (v14 + 1) & v15;
            if (((*(v20 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
            {
              goto LABEL_7;
            }
          }

LABEL_4:
          v6 = v8;
          MEMORY[0x1E127DAD0]();
          if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1DAED1E9C();
          }

          sub_1DAED1EBC();
        }
      }

LABEL_7:

      if (v5 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }
}

void sub_1DADBBA24(uint64_t a1)
{
  sub_1DADBBB18();
  if (v1 <= 0x3F)
  {
    sub_1DADBB6D4();
    if (v2 <= 0x3F)
    {
      sub_1DADA6518(319, &qword_1EE005BA0, MEMORY[0x1E697F228], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DADBBB18()
{
  if (!qword_1EE005678)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE005678);
    }
  }
}

unint64_t sub_1DADBBBD4()
{
  result = qword_1EE005920;
  if (!qword_1EE005920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09A38, &qword_1DAEDB520);
    sub_1DADB0964();
    sub_1DAD64B94(qword_1EE008D80, &qword_1ECC099E0, &qword_1DAEDB3D8, &unk_1DAEDB528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005920);
  }

  return result;
}

uint64_t sub_1DADBBC8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v7, a1, v4);
  v8 = sub_1DAED288C();
  if (v8)
  {
    v9 = v8;
    (*(v3 + 8))(v6, a1);
  }

  else
  {
    v9 = swift_allocError();
    (*(v3 + 32))(v10, v6, a1);
  }

  v11 = sub_1DAECDB0C();

  v12 = [v11 debugDescription];
  v13 = sub_1DAED1CEC();

  return v13;
}

uint64_t storeEnumTagSinglePayload for WidgetRendererSessionSubscriptionRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DADBBEE0()
{
  v1 = *v0;
  v2 = 0x4B6E6F6973736573;
  v3 = 0x797469726F697270;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x53796C6269736976;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x54746E65746E6F63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_1DADBBF98(uint64_t a1)
{
  sub_1DADBC208(319);
  if (v1 <= 0x3F)
  {
    sub_1DADBC26C(319, &qword_1EE005758, MEMORY[0x1E6993F18]);
    if (v2 <= 0x3F)
    {
      sub_1DADBC26C(319, &qword_1EE005770, MEMORY[0x1E6993ED0]);
      if (v3 <= 0x3F)
      {
        sub_1DADBC26C(319, &qword_1EE005EB0, MEMORY[0x1E6994460]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for WidgetRendererSessionSubscriptionRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void sub_1DADBC208(uint64_t a1)
{
  if (!qword_1EE00A6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08378, &qword_1DAEDA7F0);
    v1 = sub_1DAED233C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE00A6A0);
    }
  }
}

void sub_1DADBC26C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DAED233C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DADBC2C0(uint64_t a1)
{
  sub_1DAD8D568(319);
  if (v1 <= 0x3F)
  {
    sub_1DAECEDEC();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1DADBC3D8()
{
  v0 = sub_1DADBC424(&unk_1F56AF9D8);
  result = swift_arrayDestroy();
  qword_1EE008AD0 = v0;
  return result;
}

uint64_t sub_1DADBC424(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A300, &qword_1DAEDD858);
    v3 = sub_1DAED254C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1DAED294C();

      sub_1DAED1D9C();
      result = sub_1DAED297C();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1DAED289C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1DADBC5F4(void *a1)
{
  sub_1DAECF2AC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0AB60, &qword_1DAEDFD80);
  sub_1DAECF2AC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0AB68, &qword_1DAEDFD88);
  sub_1DAECF2AC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC090B8, &qword_1DAEDFD90);
  sub_1DAECF2AC();
  sub_1DAED233C();
  swift_getWitnessTable();
  v1 = MEMORY[0x1E6980A18];
  sub_1DAD64B94(&qword_1EE0058A0, &qword_1ECC0AB60, &qword_1DAEDFD80, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  sub_1DAD64B94(&qword_1EE005868, &qword_1ECC0AB68, &qword_1DAEDFD88, v1);
  swift_getWitnessTable();
  sub_1DAD64B94(&qword_1EE00AB80, &qword_1ECC090B8, &qword_1DAEDFD90, v1);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_1DADBC810@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for WidgetRendererSessionSubscriptionRequest(0);
  v5 = swift_allocObject();
  result = WidgetRendererSessionSubscriptionRequest.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void *WidgetRendererSessionSubscriptionRequest.init(from:)(void *a1)
{
  v2 = sub_1DAED10DC();
  v3 = *(v2 - 8);
  v33 = v2;
  v34 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DAECE20C();
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC099A8, &qword_1DAEDACF8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - v11;
  v13 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1DADA64C4();
  v14 = v36;
  sub_1DAED29AC();
  if (v14)
  {
    v15 = v37;
LABEL_6:
    type metadata accessor for WidgetRendererSessionSubscriptionRequest(0);
    swift_deallocPartialClassInstance();
    goto LABEL_7;
  }

  v36 = v8;
  v32 = v6;
  v41 = 0;
  sub_1DADBCF28();
  sub_1DAED280C();
  v16 = v9;
  v18 = v39;
  v17 = v40;
  sub_1DAD674D4(0, &unk_1EE005610, 0x1E696ACD0);
  sub_1DAD674D4(0, &qword_1EE00AA10, &off_1E85E9AE8);
  v19 = sub_1DAED207C();
  v20 = v10;
  v15 = v37;
  v30 = v18;
  v31 = v17;
  if (!v19)
  {
    LOBYTE(v39) = 0;
    sub_1DAED25AC();
    swift_allocError();
    sub_1DAE3D868();
    sub_1DAED259C();
    swift_willThrow();
    v24 = sub_1DAD70BB4(v30, v31);
    (*(v20 + 8))(v12, v16, v24);
    goto LABEL_6;
  }

  *(v37 + 16) = v19;
  LOBYTE(v39) = 1;
  v21 = v19;
  v22 = sub_1DAED27FC();
  v23 = v30;
  v29 = v21;
  *(v15 + 24) = v22;
  LOBYTE(v39) = 2;
  sub_1DADA7FB0(&unk_1EE00A6A8, MEMORY[0x1E6993FA8], MEMORY[0x1E6993FC8]);
  v25 = v36;
  sub_1DAED280C();
  (*(v35 + 32))(v15 + OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_priority, v25, v32);
  LOBYTE(v39) = 3;
  sub_1DADA7FB0(&qword_1EE005788, MEMORY[0x1E6993E88], MEMORY[0x1E6993E98]);
  v27 = v33;
  sub_1DAED280C();
  (*(v34 + 32))(v15 + OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_environmentModifiers, v5, v27);
  LOBYTE(v39) = 4;
  v28 = sub_1DAED27EC();
  (*(v20 + 8))(v12, v16);
  sub_1DAD70BB4(v23, v31);

  *(v15 + OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_visiblySettled) = v28 & 1;
LABEL_7:
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  return v15;
}

unint64_t sub_1DADBCF28()
{
  result = qword_1EE00C280;
  if (!qword_1EE00C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00C280);
  }

  return result;
}

uint64_t sub_1DADBCFE4()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_visiblySettled;
  swift_beginAccess();
  return *(v0 + v1);
}

unint64_t sub_1DADBD048()
{
  result = qword_1EE005950;
  if (!qword_1EE005950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08E08, &qword_1DAED8248);
    sub_1DAD7A754();
    sub_1DAD64B94(&qword_1EE005900, &qword_1ECC08D98, &qword_1DAED81A0, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005950);
  }

  return result;
}

unint64_t sub_1DADBD100()
{
  result = qword_1EE005AE0;
  if (!qword_1EE005AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08DA0, &qword_1DAED81A8);
    sub_1DAD64B94(&qword_1EE005900, &qword_1ECC08D98, &qword_1DAED81A0, MEMORY[0x1E697FDF8]);
    sub_1DAD64B94(&qword_1EE0059C8, &qword_1ECC08DA8, &qword_1DAED81B0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005AE0);
  }

  return result;
}

uint64_t sub_1DADBD22C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor_lock);

  os_unfair_lock_lock(v1 + 4);
  sub_1DADBD394();
  os_unfair_lock_unlock(v1 + 4);

  if (qword_1EE00AC70 != -1)
  {
    swift_once();
  }

  v2 = sub_1DAECEDEC();
  __swift_project_value_buffer(v2, qword_1EE011BA0);
  v3 = sub_1DAECEDCC();
  v4 = sub_1DAED203C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DAD61000, v3, v4, "Application resuming", v5, 2u);
    MEMORY[0x1E127F100](v5, -1, -1);
  }

  return sub_1DAD66680();
}

double sub_1DADBD3C0(uint64_t a1, id *a2, uint64_t a3)
{
  v63 = a1;
  v5 = sub_1DAED0DDC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v58 - v9;
  v11 = sub_1DAED18CC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v60 = (&v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  swift_beginAccess();
  v20 = a2[2];
  sub_1DAED0B9C();

  sub_1DAD722E0(&qword_1EE00AAF0, MEMORY[0x1E69859A8], MEMORY[0x1E69859B8]);
  LOBYTE(v20) = sub_1DAED1C9C();
  v21 = *(v12 + 8);
  v61 = v12 + 8;
  v62 = v21;
  v21(v19, v11);
  if (v20)
  {
    v60 = a2;
    (*(v6 + 16))(v10, v63, v5);
    (*(v12 + 16))(v16, a3, v11);
    v22 = sub_1DAECEDCC();
    v23 = sub_1DAED203C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v5;
      v25 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *&v65 = v64;
      *v25 = 136446466;
      v26 = sub_1DAED0D8C();
      v28 = v27;
      (*(v6 + 8))(v10, v24);
      v29 = sub_1DAD6482C(v26, v28, &v65);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2082;
      sub_1DAD722E0(&unk_1EE00AAD0, MEMORY[0x1E69859A8], MEMORY[0x1E69859D8]);
      v30 = sub_1DAED287C();
      v32 = v31;
      v62(v16, v11);
      v33 = sub_1DAD6482C(v30, v32, &v65);

      *(v25 + 14) = v33;
      _os_log_impl(&dword_1DAD61000, v22, v23, "[%{public}s] Discarding content due to data protection level changing to: %{public}s", v25, 0x16u);
      v34 = v64;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v34, -1, -1);
      MEMORY[0x1E127F100](v25, -1, -1);
    }

    else
    {

      v62(v16, v11);
      (*(v6 + 8))(v10, v5);
    }

    v54 = v60;
    swift_beginAccess();
    *(v54 + 24) = 1;
    v55 = v54[2];
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    v56 = v55;
    sub_1DAED0C6C();

    v57 = v54[2];
    sub_1DAED0BCC();
  }

  else
  {
    v35 = v5;
    v36 = a2[2];
    sub_1DAED0C5C();

    v37 = *(&v66 + 1);
    sub_1DAD64398(&v65, &unk_1ECC08880, &unk_1DAED6F50);
    if (!v37)
    {
      v39 = v59;
      v40 = v63;
      (*(v6 + 16))(v59, v63, v5);
      (*(v12 + 16))(v60, a3, v11);
      v41 = sub_1DAECEDCC();
      v42 = sub_1DAED203C();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *&v65 = v58;
        *v43 = 136446466;
        v44 = sub_1DAED0D8C();
        v46 = v45;
        (*(v6 + 8))(v39, v35);
        v47 = sub_1DAD6482C(v44, v46, &v65);

        *(v43 + 4) = v47;
        *(v43 + 12) = 2082;
        sub_1DAD722E0(&unk_1EE00AAD0, MEMORY[0x1E69859A8], MEMORY[0x1E69859D8]);
        v48 = v60;
        v49 = sub_1DAED287C();
        v51 = v50;
        v62(v48, v11);
        v52 = sub_1DAD6482C(v49, v51, &v65);
        v40 = v63;

        *(v43 + 14) = v52;
        _os_log_impl(&dword_1DAD61000, v41, v42, "[%{public}s] Loading content again due to data protection level being available: %{public}s", v43, 0x16u);
        v53 = v58;
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v53, -1, -1);
        MEMORY[0x1E127F100](v43, -1, -1);
      }

      else
      {

        v62(v60, v11);
        (*(v6 + 8))(v39, v35);
      }

      return sub_1DAD80684(v40);
    }
  }

  return result;
}

unint64_t sub_1DADBDB00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A9A0, qword_1DAEDF120);
    v3 = sub_1DAED279C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1DAD84D0C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

void sub_1DADBDBF8(uint64_t *a1, void **a2)
{
  v3 = *a2;
  if (qword_1EE005E98 != -1)
  {
    swift_once();
  }

  v4 = sub_1DAECEDEC();
  __swift_project_value_buffer(v4, qword_1EE011808);
  v5 = v3;
  v6 = sub_1DAECEDCC();
  v7 = sub_1DAED200C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136446210;
    v10 = [v5 description];
    v11 = sub_1DAED1CEC();
    v13 = v12;

    v14 = sub_1DAD6482C(v11, v13, &v22);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_1DAD61000, v6, v7, "Received initial extension: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E127F100](v9, -1, -1);
    MEMORY[0x1E127F100](v8, -1, -1);
  }

  v15 = [v5 identity];
  v16 = *a1;
  if ((*a1 & 0xC000000000000001) == 0)
  {
    v20 = v5;
    goto LABEL_12;
  }

  if (v16 < 0)
  {
    v17 = *a1;
  }

  else
  {
    v17 = v16 & 0xFFFFFFFFFFFFFF8;
  }

  v18 = v5;
  v19 = sub_1DAED247C();
  if (!__OFADD__(v19, 1))
  {
    *a1 = sub_1DAEB9770(v17, v19 + 1);
LABEL_12:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *a1;
    sub_1DADBDEA4(v5, v15, isUniquelyReferenced_nonNull_native);

    *a1 = v22;
    return;
  }

  __break(1u);
}

uint64_t sub_1DADBDE24()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1EE011808);
  __swift_project_value_buffer(v0, qword_1EE011808);
  return sub_1DAECEDDC();
}

id sub_1DADBDEA4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1DAD84D0C(a2);
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
      sub_1DADBE00C(v13, a3 & 1);
      v8 = sub_1DAD84D0C(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1DAED21EC();
        sub_1DAED28FC();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v16 = v8;
      sub_1DADDC578();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return MEMORY[0x1EEE66BB8]();
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

  return a2;
}

void sub_1DADBE00C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A9A0, qword_1DAEDF120);
  v6 = sub_1DAED277C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      v24 = sub_1DAED227C();
      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
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
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v7;
}

unint64_t sub_1DADBE290()
{
  result = qword_1EE00B468;
  if (!qword_1EE00B468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00B468);
  }

  return result;
}

unint64_t sub_1DADBE2E8()
{
  result = qword_1EE00B470;
  if (!qword_1EE00B470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00B470);
  }

  return result;
}

void sub_1DADBE344(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1DAD648F8(Strong + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client, aBlock);
    v4 = v13;
    __swift_project_boxed_opaque_existential_1(aBlock, v12);
    v5 = *(v4 + 8);
    v6 = *(v3 + 32);
    v7 = v5();

    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v7;
    v13 = sub_1DADC4FB4;
    v14 = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAD751C0;
    v12 = &block_descriptor;
    v9 = _Block_copy(aBlock);
    v10 = v7;

    BSDispatchMain();
    _Block_release(v9);
  }
}

uint64_t sub_1DADBE4BC()
{

  return swift_deallocObject();
}

uint64_t sub_1DADBE4FC(uint64_t a1)
{
  v2 = sub_1DAED11DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A2B0, &qword_1DAEDD828);
    v9 = sub_1DAED254C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1DAD7CB5C(&qword_1EE00AB38, MEMORY[0x1E6993EB8], MEMORY[0x1E6993EC0]);
      v16 = sub_1DAED1C5C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1DAD7CB5C(&unk_1ECC0A2C0, MEMORY[0x1E6993EB8], MEMORY[0x1E6993EC8]);
          v23 = sub_1DAED1CAC();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

double sub_1DADBE824(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = sub_1DADBE900(v2);
    v5 = sub_1DADBEE50(v4);

    sub_1DADBF368(v5);

    sub_1DADBF368(v5);

    sub_1DADBF368(v5);
  }

  return result;
}

uint64_t sub_1DADBE900(uint64_t a1)
{
  v1 = a1;
  v23 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1DAED247C();
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v28 = MEMORY[0x1E69E7CC0];
    sub_1DAED25EC();
    result = sub_1DAED265C();
    v25 = result;
    v26 = v4;
    v27 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v28 = MEMORY[0x1E69E7CC0];
  sub_1DAED25EC();
  result = sub_1DAED23DC();
  v5 = *(v1 + 36);
  v25 = result;
  v26 = v5;
  v27 = 0;
LABEL_7:
  v6 = 0;
  v22 = v2;
  while (v6 < v2)
  {
    v13 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_20;
    }

    v14 = v25;
    v15 = v26;
    v16 = v27;
    sub_1DADBEB7C(v25, v26, v27, v1);
    v18 = v17;
    v19 = [v17 identity];
    v20 = v1;

    sub_1DAED25CC();
    sub_1DAED25FC();
    sub_1DAED260C();
    result = sub_1DAED25DC();
    if (v23)
    {
      if (!v16)
      {
        goto LABEL_21;
      }

      if (sub_1DAED269C())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5E8, &unk_1DAEDDF40);
      v21 = sub_1DAED1C2C();
      sub_1DAED272C();
      result = v21(v24, 0);
    }

    else
    {
      sub_1DADBECFC(v14, v15, v16, v1);
      v8 = v7;
      v10 = v9;
      v12 = v11;
      result = sub_1DADAE050(v14, v15, v16);
      v25 = v8;
      v26 = v10;
      v27 = v12 & 1;
      v1 = v20;
      v2 = v22;
    }

    ++v6;
    if (v13 == v2)
    {
      sub_1DADAE050(v25, v26, v27);
      return v28;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1DADBEB7C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_1DAED26EC();
      sub_1DAD674D4(0, &unk_1EE00BE00, 0x1E69943B8);
      swift_dynamicCast();
      return;
    }

    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_1DAED26AC() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_1DAED26BC();
  sub_1DAED21EC();
  swift_dynamicCast();
  v5 = sub_1DAD84D0C(v10);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1 = v5;
LABEL_12:
  v8 = *(*(a4 + 56) + 8 * a1);

  v9 = v8;
}

void sub_1DADBECFC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_1DAED26AC() == *(a4 + 36))
    {
      sub_1DAED26BC();
      sub_1DAED21EC();
      swift_dynamicCast();
      sub_1DAD84D0C(v6);
      v5 = v4;

      if (v5)
      {
        sub_1DAED268C();
        sub_1DAED26DC();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_1DAED23FC();
}

uint64_t sub_1DADBEE50(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DAED247C())
  {
    v4 = sub_1DAED21EC();
    v5 = sub_1DAD7CB5C(&qword_1EE00AA28, MEMORY[0x1E69941C0], MEMORY[0x1E69E81B8]);
    result = MEMORY[0x1E127DBF0](i, v4, v5);
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
        v9 = MEMORY[0x1E127E1F0](j, a1);
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

      sub_1DADBEFB0(&v11, v9);

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
  v7 = sub_1DAED247C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1DADBEFB0(uint64_t *a1, void *a2)
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

    v8 = a2;

    v9 = sub_1DAED248C();

    if (v9)
    {

      sub_1DAED21EC();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1DAED247C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1DAE8832C(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1DADAAF4C(v20 + 1, &unk_1ECC0A430, qword_1DAEDD8D0);
    }

    v18 = v8;
    sub_1DAE88E64(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1DAED21EC();
  v11 = sub_1DAED227C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1DADBF1D8(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1DAED228C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

void sub_1DADBF1D8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DADAAF4C(v6 + 1, &unk_1ECC0A430, qword_1DAEDD8D0);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1DAE89574(&unk_1ECC0A430, qword_1DAEDD8D0);
      goto LABEL_12;
    }

    sub_1DADA65C8(v6 + 1, &unk_1ECC0A430, qword_1DAEDD8D0);
  }

  v8 = *v3;
  v9 = sub_1DAED227C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1DAED21EC();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1DAED228C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1DAED28EC();
  __break(1u);
}

void sub_1DADBF368(uint64_t a1)
{
  v21 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08788, &qword_1DAED71C8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - v3;
  v5 = *(*(v1 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock) + 16);
  v20 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock);

  os_unfair_lock_lock(v5);
  v6 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_storage;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_9:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = v14 | (v13 << 6);
    v16 = *(v7 + 48);
    v17 = sub_1DAED0DDC();
    (*(*(v17 - 8) + 16))(v4, v16 + *(*(v17 - 8) + 72) * v15, v17);
    v18 = *(*(v7 + 56) + 8 * v15);
    *&v4[*(v2 + 48)] = v18;

    sub_1DADBF57C(v4, v18, v21, v1);
    sub_1DAD64398(v4, &qword_1ECC08788, &qword_1DAED71C8);
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      os_unfair_lock_unlock(*(v20 + 16));

      return;
    }

    v10 = *(v7 + 64 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1DADBF57C(uint64_t a1, id *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087A0, &unk_1DAED71E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - v9;
  v11 = sub_1DAED18CC();
  v37 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v38 = &v33 - v15;
  v16 = sub_1DAED0DBC();
  v17 = [v16 extensionIdentity];

  LOBYTE(v16) = sub_1DADBFA14(v17, a3);
  if (v16)
  {
    v35 = a2;
    v36 = a4;
    __swift_project_boxed_opaque_existential_1((a4 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionProvider), *(a4 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionProvider + 24));
    v34 = a1;
    v18 = sub_1DAED0DBC();
    v19 = [v18 extensionIdentity];

    sub_1DAED134C();
    v20 = v37;
    (*(v37 + 56))(v10, 0, 1, v11);
    v21 = v38;
    (*(v20 + 32))(v38, v10, v11);
    v22 = v35;
    swift_beginAccess();
    v23 = v22[2];
    sub_1DAED0B9C();

    sub_1DAD722E0(&qword_1EE00AAE8, MEMORY[0x1E69859A8], MEMORY[0x1E69859C0]);
    LOBYTE(v19) = sub_1DAED1CAC();
    v24 = *(v20 + 8);
    v24(v13, v11);
    v25 = v36;
    if ((v19 & 1) == 0)
    {
      v26 = v22[2];
      v27 = *(v20 + 16);
      v27(v13, v38, v11);
      v28 = v26;
      sub_1DAED0BAC();

      v29 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_currentDataProtectionLevel;
      swift_beginAccess();
      v27(v13, (v25 + v29), v11);
      v21 = v38;
      v30 = sub_1DADBD3C0(v34, v22, v13);
      (v24)(v13, v11, v30);
    }

    v31 = v22[2];
    sub_1DAED0C5C();

    if (v40)
    {
      v24(v21, v11);
      sub_1DAD64398(v39, &unk_1ECC08880, &unk_1DAED6F50);
    }

    else
    {
      sub_1DAD64398(v39, &unk_1ECC08880, &unk_1DAED6F50);
      v32 = sub_1DAD80684(v34);
      (v24)(v21, v11, v32);
    }
  }
}

void sub_1DADBFA34(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = *(Strong + 32);
  v6 = *(v5 + 16);
  v37 = v5;

  os_unfair_lock_lock(v6);
  v7 = v2 + 64;
  v8 = 1 << *(v2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v2 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v38 = v2;
  v39 = v4;
  while (v10)
  {
LABEL_12:
    v16 = __clz(__rbit64(v10)) | (v12 << 6);
    v17 = *(v2 + 56);
    v18 = (*(v2 + 48) + 16 * v16);
    v20 = *v18;
    v19 = v18[1];
    v21 = *(v17 + 8 * v16);
    swift_beginAccess();
    v22 = v21;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v4 + 40);
    *(v4 + 40) = 0x8000000000000000;
    v25 = sub_1DADBFD3C(v20, v19);
    v27 = v24[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (v24[3] < v30)
    {
      sub_1DADBFE6C(v30, isUniquelyReferenced_nonNull_native);
      v25 = sub_1DADBFD3C(v20, v19);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

LABEL_17:
      if (v31)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

    v36 = v25;
    sub_1DADDBEA0();
    v25 = v36;
    if (v31)
    {
LABEL_5:
      v13 = v24[7];
      v14 = *(v13 + 8 * v25);
      *(v13 + 8 * v25) = v22;

      goto LABEL_6;
    }

LABEL_18:
    v24[(v25 >> 6) + 8] |= 1 << v25;
    v33 = (v24[6] + 16 * v25);
    *v33 = v20;
    v33[1] = v19;
    *(v24[7] + 8 * v25) = v22;
    v34 = v24[2];
    v29 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (v29)
    {
      goto LABEL_26;
    }

    v24[2] = v35;

LABEL_6:
    v10 &= v10 - 1;
    v4 = v39;
    *(v39 + 40) = v24;
    swift_endAccess();

    v2 = v38;
  }

  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v15 >= v11)
    {

      os_unfair_lock_unlock(*(v37 + 16));

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
      sub_1DAD64B94(&qword_1EE00ABD8, &qword_1ECC08D10, &unk_1DAEDD1E0, MEMORY[0x1E695BF80]);
      sub_1DAECEEEC();

      return;
    }

    v10 = *(v7 + 8 * v15);
    ++v12;
    if (v10)
    {
      v12 = v15;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1DAED28FC();
  __break(1u);
}

unint64_t sub_1DADBFD3C(uint64_t a1, uint64_t a2)
{
  sub_1DAED294C();
  sub_1DAED1D9C();
  v4 = sub_1DAED297C();

  return sub_1DADBFDB4(a1, a2, v4);
}

unint64_t sub_1DADBFDB4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1DAED289C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_1DADBFE6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080A8, &qword_1DAED6238);
  v36 = v4;
  v6 = sub_1DAED277C();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1DAED294C();
      sub_1DAED1D9C();
      v26 = sub_1DAED297C();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

double sub_1DADC0148(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1DAD70C08();
  }

  return result;
}

unint64_t sub_1DADC01C4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  swift_beginAccess();
  if (*(*(v0 + 40) + 16))
  {

    v4 = sub_1DADC0260(v3);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(*(v1 + 16));

  return v4;
}

unint64_t sub_1DADC0260(uint64_t a1)
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
  v9 = MEMORY[0x1E69E7CC0];
  v37 = v6;
  v38 = v2;
  v35 = result;
  while (v5)
  {
LABEL_10:
    v11 = *(*(v1 + 56) + 8 * (__clz(__rbit64(v5)) | (v8 << 6)));

    v12 = v11;
    v13 = [v12 containerDescriptors];
    sub_1DAD674D4(0, &qword_1EE0054C8, 0x1E6994230);
    v14 = sub_1DAED1E7C();

    v15 = v14 >> 62;
    v42 = v14;
    if (v14 >> 62)
    {
      v16 = sub_1DAED247C();
    }

    else
    {
      v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v9 >> 62;
    if (v9 >> 62)
    {
      result = sub_1DAED247C();
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v40 = v16;
    v18 = __OFADD__(result, v16);
    v19 = result + v16;
    if (v18)
    {
      goto LABEL_40;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v17)
      {
LABEL_21:
        sub_1DAED247C();
      }

LABEL_22:
      v39 = sub_1DAED258C();
      v20 = v39 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_23;
    }

    if (v17)
    {
      goto LABEL_21;
    }

    v20 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v19 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_22;
    }

    v39 = v9;
LABEL_23:
    v21 = *(v20 + 16);
    v22 = *(v20 + 24);
    result = v42;
    if (v15)
    {
      v24 = v20;
      v25 = sub_1DAED247C();
      v20 = v24;
      v23 = v25;
      result = v42;
    }

    else
    {
      v23 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 &= v5 - 1;
    if (v23)
    {
      if (((v22 >> 1) - v21) < v40)
      {
        goto LABEL_42;
      }

      v26 = v20 + 8 * v21 + 32;
      v36 = v20;
      if (v15)
      {
        if (v23 < 1)
        {
          goto LABEL_44;
        }

        v27 = v23;
        sub_1DAD64B94(&qword_1EE005680, &qword_1ECC08D58, &unk_1DAED7E60, MEMORY[0x1E69E6340]);
        for (i = 0; i != v27; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D58, &unk_1DAED7E60);
          v29 = v26;
          v30 = sub_1DAD8DE4C(v41, i, v42);
          v32 = *v31;
          (v30)(v41, 0);
          v26 = v29;
          *(v29 + 8 * i) = v32;
        }
      }

      else
      {
        swift_arrayInitWithCopy();
      }

      v9 = v39;
      v1 = v35;
      v6 = v37;
      v2 = v38;
      if (v40 >= 1)
      {
        v33 = *(v36 + 16);
        v18 = __OFADD__(v33, v40);
        v34 = v33 + v40;
        if (v18)
        {
          goto LABEL_43;
        }

        *(v36 + 16) = v34;
      }
    }

    else
    {

      v6 = v37;
      v2 = v38;
      v9 = v39;
      if (v40 > 0)
      {
        goto LABEL_41;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v9;
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
LABEL_44:
  __break(1u);
  return result;
}

unint64_t sub_1DADC0624(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
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
    v3 = MEMORY[0x1E69E7CC0];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1E127E1F0](v2, v26);
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
      sub_1DAD674D4(0, &unk_1EE005500, 0x1E6994238);
      v8 = sub_1DAED1E7C();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_1DAED247C();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1DAED247C();
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
        sub_1DAED247C();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1DAED258C();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1DAED247C();
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

            sub_1DAD64B94(&qword_1EE005688, &qword_1ECC0A5C0, &unk_1DAEDDF08, MEMORY[0x1E69E6340]);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5C0, &unk_1DAEDDF08);
              v19 = sub_1DAD8DE4C(v32, i, v8);
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
    v1 = sub_1DAED247C();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1DADC09B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1DAECDCEC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - v11;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v14 = Strong;
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  v15 = *(a3 + 16);
  v16 = a4[3];
  v17 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v16);
  v18 = (*(v17 + 8))(v16, v17);
  swift_beginAccess();
  LOBYTE(v16) = *(v18 + 24);

  swift_beginAccess();
  *(a3 + 16) = v16;
  swift_retain_n();

  v19 = sub_1DAECEDCC();
  v20 = sub_1DAED200C();
  if (os_log_type_enabled(v19, v20))
  {
    v51 = v20;
    v49 = v9;
    v52 = v19;
    v53 = v15;
    v21 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v61 = v50;
    *v21 = 136446978;
    v22 = *(v14 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
    v23 = *(v14 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8);

    v24 = sub_1DAD6482C(v22, v23, &v61);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2082;
    v25 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource;
    sub_1DAD648F8(v14 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v55);
    v54 = v7;
    v27 = v56;
    v26 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    v28 = (*(v26 + 16))(v27, v26);
    sub_1DAED0B4C();

    v29 = (v54 + 56);
    if (v59)
    {
      __swift_project_boxed_opaque_existential_1(v58, v59);
      v30 = v54;
      sub_1DAED177C();
      (*(v30 + 56))(v12, 0, 1, v6);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      if ((*(v30 + 48))(v12, 1, v6) != 1)
      {
        sub_1DAD64398(v12, &qword_1ECC07CE8, &qword_1DAED6F60);
        sub_1DAD648F8(v14 + v25, v58);
        v33 = v59;
        v34 = v60;
        __swift_project_boxed_opaque_existential_1(v58, v59);
        v35 = (*(v34 + 16))(v33, v34);
        sub_1DAED0B4C();

        v36 = v56;
        if (!v56)
        {

          __break(1u);
          return;
        }

        __swift_project_boxed_opaque_existential_1(v55, v36);
        v37 = v49;
        sub_1DAED177C();
        if (qword_1EE00A700 != -1)
        {
          swift_once();
        }

        v38 = qword_1EE00A708;
        v39 = sub_1DAECDC5C();
        v40 = [v38 stringFromDate_];

        v41 = sub_1DAED1CEC();
        v31 = v42;

        (*(v54 + 8))(v37, v6);
        __swift_destroy_boxed_opaque_existential_1Tm(v55);
        __swift_destroy_boxed_opaque_existential_1Tm(v58);
        v32 = v41;
        goto LABEL_13;
      }
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      sub_1DAD64398(v58, &unk_1ECC07DE0, &qword_1DAEDBED0);
      (*v29)(v12, 1, 1, v6);
    }

    sub_1DAD64398(v12, &qword_1ECC07CE8, &qword_1DAED6F60);
    v31 = 0xE900000000000064;
    v32 = 0x6E756F6620746F6ELL;
LABEL_13:
    v15 = v53;
    v43 = v51;
    v44 = sub_1DAD6482C(v32, v31, &v61);

    *(v21 + 14) = v44;
    *(v21 + 22) = 1026;
    *(v21 + 24) = v15;
    *(v21 + 28) = 1026;
    swift_beginAccess();
    v45 = *(a3 + 16);

    *(v21 + 30) = v45;

    v46 = v52;
    _os_log_impl(&dword_1DAD61000, v52, v43, "[%{public}s] new live entry: %{public}s, was data protected: %{BOOL,public}d, is data protected: %{BOOL,public}d.", v21, 0x22u);
    v47 = v50;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v47, -1, -1);
    MEMORY[0x1E127F100](v21, -1, -1);

    goto LABEL_14;
  }

LABEL_14:

  sub_1DADC109C();

  v48 = 3;
  if ((v15 & 1) == 0)
  {
    swift_beginAccess();
    if (*(a3 + 16))
    {
      v48 = 4;
    }

    else
    {
      v48 = 3;
    }
  }

  LOBYTE(v61) = v48;
  sub_1DAD8EC1C(&v61);
}

void sub_1DADC109C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A800, qword_1DAEDEBB0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7[-v2];
  v4 = *(v0 + 24);
  os_unfair_lock_lock(*(v4 + 16));
  swift_beginAccess();
  *(v0 + 32) = MEMORY[0x1E69E7CC8];

  [*(v0 + 40) removeAllObjects];
  v5 = type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest(0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = OBJC_IVAR____TtC14WidgetRenderer33LiveWidgetEntryViewableEntryCache__lock_prewarmRequest;
  swift_beginAccess();
  sub_1DADC11D0(v3, v0 + v6);
  swift_endAccess();
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t sub_1DADC11D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A800, qword_1DAEDEBB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DADC1254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DAECF8EC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

BOOL sub_1DADC1344(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v5 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v7 = LiveWidgetViewChangeReason.rawValue.getter();
    v9 = v8;
    if (v7 == LiveWidgetViewChangeReason.rawValue.getter() && v9 == v10)
    {

      return v5 != 0;
    }

    v4 = sub_1DAED289C();

    ++v3;
  }

  while ((v4 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_1DADC1420@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v41 = a3;
  v5 = sub_1DAED157C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09C58, &qword_1DAEDF470);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07DF0, &qword_1DAED5870);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v40 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31[-v15];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31[-v18];
  v39 = a1;
  sub_1DADC18E0(a1, &v31[-v18]);
  v20 = a2[3];
  v21 = a2[4];
  v34 = __swift_project_boxed_opaque_existential_1(a2, v20);
  v37 = v21;
  v38 = v20;
  sub_1DAED19FC();
  v35 = *(v6 + 56);
  v36 = v6 + 56;
  v35(v16, 0, 1, v5);
  v22 = *(v9 + 56);
  sub_1DADC18E0(v19, v11);
  sub_1DADC18E0(v16, &v11[v22]);
  v23 = *(v6 + 48);
  if (v23(v11, 1, v5) == 1)
  {
    sub_1DAD64398(v16, &qword_1ECC07DF0, &qword_1DAED5870);
    sub_1DAD64398(v19, &qword_1ECC07DF0, &qword_1DAED5870);
    if (v23(&v11[v22], 1, v5) == 1)
    {
      result = sub_1DAD64398(v11, &qword_1ECC07DF0, &qword_1DAED5870);
LABEL_9:
      v26 = 0;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1DADC18E0(v11, v40);
  if (v23(&v11[v22], 1, v5) == 1)
  {
    sub_1DAD64398(v16, &qword_1ECC07DF0, &qword_1DAED5870);
    sub_1DAD64398(v19, &qword_1ECC07DF0, &qword_1DAED5870);
    (*(v6 + 8))(v40, v5);
LABEL_6:
    sub_1DAD64398(v11, &qword_1ECC09C58, &qword_1DAEDF470);
    goto LABEL_7;
  }

  v27 = &v11[v22];
  v28 = v33;
  (*(v6 + 32))(v33, v27, v5);
  sub_1DADA6F60(&qword_1EE00AB28, MEMORY[0x1E6985700], MEMORY[0x1E6985718]);
  v29 = v40;
  v32 = sub_1DAED1CAC();
  v30 = *(v6 + 8);
  v30(v28, v5);
  sub_1DAD64398(v16, &qword_1ECC07DF0, &qword_1DAED5870);
  sub_1DAD64398(v19, &qword_1ECC07DF0, &qword_1DAED5870);
  v30(v29, v5);
  result = sub_1DAD64398(v11, &qword_1ECC07DF0, &qword_1DAED5870);
  if (v32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v25 = v39;
  sub_1DAD64398(v39, &qword_1ECC07DF0, &qword_1DAED5870);
  sub_1DAED19FC();
  v26 = 1;
  result = v35(v25, 0, 1, v5);
LABEL_10:
  *v41 = v26;
  return result;
}

uint64_t sub_1DADC18E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07DF0, &qword_1DAED5870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DADC1978()
{

  return swift_deallocObject();
}

double sub_1DADC19DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v9 = sub_1DAED09DC();
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1DAED0A3C();
  v12 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v5[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock];
  os_unfair_lock_lock(*(v15 + 16));
  if (v5[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_hasReceivedInitialEnvironment])
  {
    os_unfair_lock_unlock(*(v15 + 16));
LABEL_11:
    v28[1] = *&v5[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue];
    v24 = swift_allocObject();
    v24[2] = a1;
    v24[3] = a2;
    v24[4] = v5;
    aBlock[4] = a4;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAD751C0;
    aBlock[3] = v29;
    v25 = _Block_copy(aBlock);
    v26 = a1;
    v27 = v5;
    _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
    v32 = MEMORY[0x1E69E7CC0];
    sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
    sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
    sub_1DAED23CC();
    MEMORY[0x1E127DD70](0, v14, v11, v25);
    _Block_release(v25);
    (v31[1].isa)(v11, v9);
    (*(v12 + 8))(v14, v30);

    return result;
  }

  os_unfair_lock_unlock(*(v15 + 16));
  if (a2 != 3)
  {
    goto LABEL_11;
  }

  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v16 = sub_1DAECEDEC();
  __swift_project_value_buffer(v16, qword_1EE0117F0);
  v17 = a1;
  v31 = sub_1DAECEDCC();
  v18 = sub_1DAED200C();

  if (os_log_type_enabled(v31, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138543362;
    *(v19 + 4) = v17;
    *v20 = v17;
    v21 = v17;
    _os_log_impl(&dword_1DAD61000, v31, v18, "Ignoring environment mismatch request for %{public}@ because we haven't received the server environment yet.", v19, 0xCu);
    sub_1DAD64398(v20, &qword_1ECC07CF0, &qword_1DAED57A0);
    MEMORY[0x1E127F100](v20, -1, -1);
    MEMORY[0x1E127F100](v19, -1, -1);
  }

  v22 = v31;

  return result;
}

uint64_t sub_1DADC1E34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1DADB9EB8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DADDB404();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
    sub_1DADAB9A4(v10 + *(*(v11 - 8) + 72) * v7);
    v12 = *(v9 + 56);
    v13 = sub_1DAED19AC();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_1DADD97F4(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_1DAED19AC();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

void sub_1DADC200C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (!sub_1DADC1344(4, v2))
    {
      goto LABEL_12;
    }

    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v5 = sub_1DAECEDEC();
    __swift_project_value_buffer(v5, qword_1EE011748);
    v4 = v4;
    v6 = sub_1DAECEDCC();
    v7 = sub_1DAED203C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19[0] = v9;
      *v8 = 136446210;
      v10 = *&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
      v11 = *&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

      v12 = sub_1DAD6482C(v10, v11, v19);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1DAD61000, v6, v7, "[%{public}s] Update content synchronously because moving to data protected content.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1E127F100](v9, -1, -1);
      MEMORY[0x1E127F100](v8, -1, -1);
    }

    v13 = *&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
    if (v13)
    {
      v14 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
      swift_beginAccess();
      v15 = *&v13[v14];
      type metadata accessor for SecureHostingController(0);
      sub_1DAE0C958(qword_1EE00AFA0, type metadata accessor for SecureHostingController, MEMORY[0x1E697C600]);
      v16 = v15;
      v17 = v13;
      if (!sub_1DAECF9AC())
      {
LABEL_11:

        return;
      }

      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        [v18 setNeedsSynchronousUpdate_];
        swift_unknownObjectRelease();
        goto LABEL_11;
      }

      swift_unknownObjectRelease();
    }

    else
    {
LABEL_12:
    }
  }
}

void sub_1DADC22AC(uint64_t *a1)
{
  v3 = *(type metadata accessor for LiveWidgetEntryView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1DADC231C(a1, v4);
}

void sub_1DADC231C(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = type metadata accessor for LiveWidgetEntryView(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v16 = *a1;
  sub_1DADC27F8(*a1);
  if (sub_1DADC2BA8(v16))
  {
    sub_1DAD76078(a2, v15);
    sub_1DAD76078(a2, v12);
    v17 = sub_1DAECEDCC();
    v18 = sub_1DAED203C();
    if (os_log_type_enabled(v17, v18))
    {
      v36 = v18;
      v38 = v17;
      v19 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39[0] = v35;
      *v19 = 136446466;
      v20 = *(v15 + 1);

      sub_1DAD760DC(v15, type metadata accessor for LiveWidgetEntryView);
      v22 = *(v20 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
      v21 = *(v20 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8);

      v23 = sub_1DAD6482C(v22, v21, v39);

      *(v19 + 4) = v23;
      v37 = v19;
      *(v19 + 12) = 2082;
      v24 = *(v12 + 1);
      v25 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
      swift_beginAccess();
      sub_1DAD6495C(v24 + v25, v9, &unk_1ECC07D30, &unk_1DAED57E0);
      sub_1DAD6495C(v9, v6, &unk_1ECC07D30, &unk_1DAED57E0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_1DAD64398(v9, &unk_1ECC07D30, &unk_1DAED57E0);
          sub_1DAD760DC(v12, type metadata accessor for LiveWidgetEntryView);
          sub_1DAD64398(v6, &unk_1ECC07D30, &unk_1DAED57E0);
          v27 = 0xEB00000000726564;
          v28 = 0x6C6F686563616C50;
        }

        else
        {
          sub_1DAD64398(v6, &unk_1ECC07D30, &unk_1DAED57E0);
          sub_1DAD64398(v9, &unk_1ECC07D30, &unk_1DAED57E0);
          sub_1DAD760DC(v12, type metadata accessor for LiveWidgetEntryView);
          v27 = 0xE500000000000000;
          v28 = 0x7974706D45;
        }
      }

      else
      {
        sub_1DAD64398(v9, &unk_1ECC07D30, &unk_1DAED57E0);
        sub_1DAD760DC(v12, type metadata accessor for LiveWidgetEntryView);
        sub_1DAD64398(v6, &unk_1ECC07D30, &unk_1DAED57E0);
        v27 = 0xE400000000000000;
        v28 = 1702259020;
      }

      v31 = v37;
      v30 = v38;
      v32 = v35;
      v33 = sub_1DAD6482C(v28, v27, v39);

      *(v31 + 14) = v33;
      _os_log_impl(&dword_1DAD61000, v30, v36, "[%{public}s] Animating pending view change: %{public}s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v32, -1, -1);
      MEMORY[0x1E127F100](v31, -1, -1);
    }

    else
    {

      sub_1DAD760DC(v12, type metadata accessor for LiveWidgetEntryView);
      v29 = sub_1DAD760DC(v15, type metadata accessor for LiveWidgetEntryView);
    }

    MEMORY[0x1EEE9AC00](v29);
    *(&v34 - 2) = a2;

    sub_1DAECF1DC();
  }

  else
  {
    sub_1DAD758B4();
  }
}

void sub_1DADC27F8(uint64_t a1)
{
  v3 = type metadata accessor for LiveWidgetEntryView(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  sub_1DAECE1DC();
  sub_1DAECE1AC();
  v9 = sub_1DAECE06C();

  if (v9)
  {
    sub_1DAD76078(v1, v8);

    v10 = sub_1DAECEDCC();
    v11 = sub_1DAED203C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v32 = v13;
      *v12 = 136446466;
      v14 = *(v8 + 1);

      sub_1DAD760DC(v8, type metadata accessor for LiveWidgetEntryView);
      v15 = *(v14 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
      v16 = *(v14 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8);

      v17 = sub_1DAD6482C(v15, v16, &v32);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2082;
      v18 = MEMORY[0x1E127DB00](a1, &type metadata for LiveWidgetViewChangeReason);
      v20 = sub_1DAD6482C(v18, v19, &v32);

      *(v12 + 14) = v20;
      v21 = v11;
LABEL_6:
      _os_log_impl(&dword_1DAD61000, v10, v21, "[%{public}s] view changed for reasons: %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v13, -1, -1);
      MEMORY[0x1E127F100](v12, -1, -1);

      return;
    }

    v30 = v8;
  }

  else
  {
    sub_1DAD76078(v1, v5);

    v10 = sub_1DAECEDCC();
    v22 = sub_1DAED200C();

    if (os_log_type_enabled(v10, v22))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v32 = v13;
      *v12 = 136446466;
      v23 = *(v5 + 1);

      sub_1DAD760DC(v5, type metadata accessor for LiveWidgetEntryView);
      v24 = *(v23 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
      v25 = *(v23 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8);

      v26 = sub_1DAD6482C(v24, v25, &v32);

      *(v12 + 4) = v26;
      *(v12 + 12) = 2082;
      v27 = MEMORY[0x1E127DB00](a1, &type metadata for LiveWidgetViewChangeReason);
      v29 = sub_1DAD6482C(v27, v28, &v32);

      *(v12 + 14) = v29;
      v21 = v22;
      goto LABEL_6;
    }

    v30 = v5;
  }

  sub_1DAD760DC(v30, type metadata accessor for LiveWidgetEntryView);
}

uint64_t sub_1DADC2BA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  if (sub_1DADC1344(0, a1))
  {
    return 0;
  }

  if (sub_1DADC1344(16, a1) || sub_1DADC1344(17, a1))
  {
    [objc_opt_self() inheritedAnimationDuration];
    v7 = v6;
    v8 = *(v3 + 8);
    v9 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsLowLuminance;
    swift_beginAccess();
    if (*(v8 + v9) == 1 && v7 > 0.0)
    {
      return sub_1DAED095C();
    }
  }

  v10 = a1 + 31;
  v11 = &type metadata for FeatureFlags.Widgets;
  v12 = v2;
  while (1)
  {
    v13 = *(v10 + v12);
    v14 = v13 > 0x17;
    v15 = (1 << v13) & 0xC02008;
    if (!v14 && v15 != 0)
    {
      v30 = v11;
      v31 = sub_1DAD7C1DC();
      LOBYTE(v29[0]) = 1;
      v17 = sub_1DAECDF5C();
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      if (v17)
      {
        v18 = *(v3 + 8);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1DAECEF3C();

        if ((v29[0] & 1) == 0)
        {
          sub_1DAD648F8(v18 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v29);
          v19 = v11;
          v20 = v3;
          v21 = v30;
          v22 = v31;
          __swift_project_boxed_opaque_existential_1(v29, v30);
          v23 = *(v22 + 16);
          v24 = v22;
          v3 = v20;
          v11 = v19;
          v25 = v23(v21, v24);
          v26 = sub_1DAED0B8C();

          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          if (v26)
          {
            v27 = [v26 isLinkedOnOrAfter_];

            if (v27)
            {
              break;
            }
          }

          if (*(v18 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_contentFromXcodePreviews) == 1)
          {
            break;
          }
        }
      }
    }

    if (v12 == 1)
    {
      return 0;
    }

    v28 = v12 - 2;
    --v12;
    if (v28 >= v2)
    {
      __break(1u);
      break;
    }
  }

  if (qword_1EE0071E8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DADC2E5C()
{
  result = sub_1DAED094C();
  qword_1EE0118A0 = result;
  return result;
}

double sub_1DADC2ECC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene);
    v5 = Strong;
    sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = 0;
    *(v6 + 32) = 1;
    *(v6 + 40) = v5;
    v7 = v4;
    v8 = v5;
    sub_1DAED22FC();
  }

  return result;
}

double sub_1DADC2FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  v16 = sub_1DAECDCEC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v48 = v17;
    v49 = v9;
    v50 = v6;
    BSDispatchQueueAssertMain();
    sub_1DAD648F8(a3, v54);

    v23 = sub_1DAECEDCC();
    v24 = sub_1DAED203C();

    if (os_log_type_enabled(v23, v24))
    {
      v46 = v24;
      v47 = v4;
      v25 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v53 = v45;
      *v25 = 136446466;
      v26 = *(v22 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
      v27 = *(v22 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8);

      v28 = sub_1DAD6482C(v26, v27, &v53);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2082;
      v29 = v55;
      v30 = v56;
      __swift_project_boxed_opaque_existential_1(v54, v55);
      v31 = (*(v30 + 16))(v29, v30);
      sub_1DAED0B4C();

      if (v52)
      {
        __swift_project_boxed_opaque_existential_1(v51, v52);
        sub_1DAED177C();
        if (qword_1EE00A700 != -1)
        {
          swift_once();
        }

        v32 = qword_1EE00A708;
        v33 = sub_1DAECDC5C();
        v34 = [v32 stringFromDate_];

        v35 = sub_1DAED1CEC();
        v37 = v36;

        (*(v48 + 8))(v19, v16);
        __swift_destroy_boxed_opaque_existential_1Tm(v51);
      }

      else
      {
        sub_1DAD64398(v51, &unk_1ECC07DE0, &qword_1DAEDBED0);
        v37 = 0xE900000000000064;
        v35 = 0x6E756F6620746F6ELL;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      v38 = sub_1DAD6482C(v35, v37, &v53);

      *(v25 + 14) = v38;
      _os_log_impl(&dword_1DAD61000, v23, v46, "[%{public}s] new placeholder entry: %{public}s", v25, 0x16u);
      v39 = v45;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v39, -1, -1);
      MEMORY[0x1E127F100](v25, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v54);
    }

    v40 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
    swift_beginAccess();
    sub_1DAD6495C(v22 + v40, v15, &unk_1ECC07D30, &unk_1DAED57E0);
    sub_1DAD7C48C(v15, v12, &unk_1ECC07D30, &unk_1DAED57E0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1DAD64398(v12, &unk_1ECC07D30, &unk_1DAED57E0);
    if (EnumCaseMultiPayload == 1 || (v42 = v49, sub_1DAD6495C(v22 + v40, v49, &unk_1ECC07D30, &unk_1DAED57E0), v43 = v50, sub_1DAD7C48C(v42, v50, &unk_1ECC07D30, &unk_1DAED57E0), LODWORD(v42) = swift_getEnumCaseMultiPayload(), sub_1DAD64398(v43, &unk_1ECC07D30, &unk_1DAED57E0), v42 == 2))
    {

      sub_1DADC109C();

      LOBYTE(v51[0]) = 5;
      sub_1DAD8EC1C(v51);
    }
  }

  return result;
}

void sub_1DADC352C()
{
  v0 = sub_1DAECDDEC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  sub_1DAECDDCC();
  v5 = sub_1DAECDDBC();
  (*(v1 + 8))(v3, v0);
  [v4 setTimeZone_];

  qword_1EE00A708 = v4;
}

uint64_t sub_1DADC3638(uint64_t *a1, uint64_t a2)
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

    v8 = sub_1DAED248C();

    if (v8)
    {

      sub_1DAECEE3C();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_1DAED247C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1DAE880D4(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_1DAE88888(v17 + 1);
    }

    sub_1DAE88D7C(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_1DAECEE3C();
  sub_1DAD7CB5C(&qword_1EE005C50, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
  v10 = sub_1DAED1C5C();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_1DADC38D8(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_1DAD7CB5C(&qword_1EE005C48, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
  while ((sub_1DAED1CAC() & 1) == 0)
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

void sub_1DADC38D8(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DAE88888(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1DAE892B4();
      goto LABEL_12;
    }

    sub_1DADC3AC0(v6 + 1);
  }

  v8 = *v3;
  sub_1DAECEE3C();
  sub_1DAD7CB5C(&qword_1EE005C50, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
  v9 = sub_1DAED1C5C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1DAD7CB5C(&qword_1EE005C48, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
    while ((sub_1DAED1CAC() & 1) == 0)
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
  sub_1DAED28EC();
  __break(1u);
}

void sub_1DADC3AC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A420, &qword_1DAEDD8C8);
  v4 = sub_1DAED252C();
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
      sub_1DAECEE3C();
      sub_1DAD7CB5C(&qword_1EE005C50, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);

      v18 = sub_1DAED1C5C();
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

uint64_t sub_1DADC3D40(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = a3;
  v32 = a1;
  v5 = sub_1DAED18CC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v28 - v10;
  v12 = OBJC_IVAR____TtC14WidgetRenderer11AppDelegate_lastDataProtectionValue;
  swift_beginAccess();
  v13 = *(v6 + 16);
  v13(v11, a2 + v12, v5);
  v28[0] = v13;
  v28[1] = v6 + 16;
  v13(v8, a1, v5);
  swift_beginAccess();
  (*(v6 + 40))(a2 + v12, v8, v5);
  swift_endAccess();
  v14 = *MEMORY[0x1E6985988];
  v15 = *(v6 + 104);
  v15(v8, v14, v5);
  sub_1DAD66C2C(&qword_1EE00AAE0, MEMORY[0x1E69859A8], MEMORY[0x1E69859C8]);
  v33 = v11;
  sub_1DAED1E4C();
  sub_1DAED1E4C();
  v30 = v6;
  v16 = v6;
  v17 = v32;
  v18 = *(v16 + 8);
  v18(v8, v5);
  if (v35 == v34 && (v15(v8, v14, v5), v19 = sub_1DAED18BC(), v18(v8, v5), (v19 & 1) != 0) || (v15(v8, v14, v5), v20 = sub_1DAED18BC(), v18(v8, v5), (v20 & 1) != 0) && (v15(v8, v14, v5), sub_1DAED1E4C(), sub_1DAED1E4C(), v18(v8, v5), v35 == v34))
  {
    sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
    (v28[0])(v8, v17, v5);
    v21 = v30;
    v22 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v23 = (v29 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    (*(v21 + 32))(v24 + v22, v8, v5);
    v25 = v31;
    *(v24 + v23) = v31;
    v26 = v25;
    sub_1DAED22FC();
  }

  return (v18)(v33, v5);
}

void sub_1DADC4134(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    BSDispatchQueueAssertMain();
    v6 = *&v5[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel];
    v7 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDate;
    swift_beginAccess();
    sub_1DAD6495C(v6 + v7, v3, &qword_1ECC07CE8, &qword_1DAED6F60);
    v8 = sub_1DAECDCEC();
    if ((*(*(v8 - 8) + 48))(v3, 1, v8) == 1)
    {

      sub_1DAD64398(v3, &qword_1ECC07CE8, &qword_1DAED6F60);
    }

    else
    {
      sub_1DAD64398(v3, &qword_1ECC07CE8, &qword_1DAED6F60);
      if (qword_1EE005DB8 != -1)
      {
        swift_once();
      }

      v9 = sub_1DAECEDEC();
      __swift_project_value_buffer(v9, qword_1EE011640);
      v10 = v5;
      v11 = sub_1DAECEDCC();
      v12 = sub_1DAED200C();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v22 = v14;
        *v13 = 136446210;
        v15 = *&v10[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier];
        v16 = *&v10[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier + 8];

        v17 = sub_1DAD6482C(v15, v16, &v22);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_1DAD61000, v11, v12, "[%{public}s] Invalidating backlight environment for new content.", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v14);
        MEMORY[0x1E127F100](v14, -1, -1);
        MEMORY[0x1E127F100](v13, -1, -1);
      }

      v18 = [*&v10[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_scene] _backlightSceneEnvironment];
      if (v18)
      {
        v19 = v18;
        v20 = sub_1DAED1CBC();
        [v19 invalidateAllTimelinesForReason_];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

double sub_1DADC4460(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__invalidated) & 1) == 0)
    {
      if (qword_1EE005E60 != -1)
      {
        swift_once();
      }

      v5 = sub_1DAECEDEC();
      __swift_project_value_buffer(v5, qword_1EE011778);

      v6 = sub_1DAECEDCC();
      v7 = sub_1DAED203C();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v13 = v9;
        *v8 = 136446210;
        v10 = *(v4 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier);
        v11 = *(v4 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier + 8);

        v12 = sub_1DAD6482C(v10, v11, &v13);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_1DAD61000, v6, v7, "[%{public}s] Content reload detected - evaluating staleness.", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        MEMORY[0x1E127F100](v9, -1, -1);
        MEMORY[0x1E127F100](v8, -1, -1);
      }

      sub_1DAD6CF04();
    }
  }

  return result;
}

double sub_1DADC4624(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    a2(v7);
  }

  swift_beginAccess();
  *(a1 + 16) = 1;
  v8 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__firstEnvironmentUpdateCancellable;
  if (*(a4 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__firstEnvironmentUpdateCancellable))
  {

    sub_1DAECEE2C();
  }

  *(a4 + v8) = 0;

  return result;
}

uint64_t sub_1DADC46E0(uint64_t a1)
{
  v1 = sub_1DAED153C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v63 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1DAED157C();
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v61 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DAECF8EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v54 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    v57 = v2;
    v58 = v1;
    BSDispatchQueueAssertMain();
    v65 = v8;
    v22 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__rawEnvironmentValues;
    swift_beginAccess();
    v23 = v5;
    v24 = *(v6 + 16);
    v24(v19, v21 + v22, v23);
    sub_1DAD648F8(v21 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v70);
    v66 = v19;
    v68 = v11;
    v25 = v6;
    v26 = v71;
    v27 = v72;
    __swift_project_boxed_opaque_existential_1(v70, v71);
    v28 = (*(v27 + 16))(v26, v27);
    sub_1DAED0BEC();

    __swift_project_boxed_opaque_existential_1(v69, v69[3]);
    v29 = v66;
    v30 = v25;
    sub_1DAED10EC();
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    __swift_destroy_boxed_opaque_existential_1Tm(v70);

    sub_1DADC109C();

    v31 = v67;
    v24(v67, v16, v23);
    swift_beginAccess();
    v32 = v21 + v22;
    v33 = v65;
    (*(v30 + 40))(v32, v31, v23);
    swift_endAccess();
    sub_1DAD94FD8();
    v24(v68, v29, v23);
    v60 = v16;
    v59 = v23;
    v24(v33, v16, v23);

    v34 = sub_1DAECEDCC();
    v35 = sub_1DAED203C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v70[0] = v56;
      *v36 = 136446466;
      v55 = v34;
      v37 = *(v21 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
      v38 = *(v21 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8);

      v39 = sub_1DAD6482C(v37, v38, v70);

      v54 = v36;
      *(v36 + 4) = v39;
      *(v36 + 12) = 2082;
      v40 = v68;
      v41 = v59;
      v24(v31, v68, v59);
      v42 = v41;
      v43 = v61;
      sub_1DAED156C();
      sub_1DAED14EC();
      LODWORD(v67) = v35;
      v44 = v63;
      sub_1DAED14FC();
      v45 = sub_1DAED14DC();

      (*(v57 + 8))(v44, v58);
      (*(v62 + 8))(v43, v64);
      v69[0] = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08768, &qword_1DAEDCB70);
      sub_1DAD64B94(&qword_1EE00BE10, &qword_1ECC08768, &qword_1DAEDCB70, MEMORY[0x1E69E6310]);
      v46 = sub_1DAED1C8C();
      v48 = v47;

      v49 = *(v30 + 8);
      v49(v65, v42);
      v49(v40, v42);
      v50 = sub_1DAD6482C(v46, v48, v70);

      v51 = v54;
      *(v54 + 14) = v50;
      v52 = v55;
      _os_log_impl(&dword_1DAD61000, v55, v67, "[%{public}s] environment changed: %{public}s", v51, 0x16u);
      v53 = v56;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v53, -1, -1);
      v29 = v66;
      MEMORY[0x1E127F100](v51, -1, -1);
    }

    else
    {

      v49 = *(v30 + 8);
      v42 = v59;
      v49(v33, v59);
      v49(v68, v42);
    }

    LOBYTE(v70[0]) = 6;
    sub_1DAD8EC1C(v70);

    v49(v60, v42);
    return (v49)(v29, v42);
  }

  return result;
}

BOOL sub_1DADC4E4C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v19 - v10;
  v12 = [a2 contentType];
  v13 = *(a3 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);
  v14 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
  if (v12 == 2)
  {
    v15 = v11;
  }

  else
  {
    v15 = v7;
  }

  v16 = v12 == 2;
  swift_beginAccess();
  sub_1DAD6495C(v13 + v14, v15, &unk_1ECC07D30, &unk_1DAED57E0);
  v17 = swift_getEnumCaseMultiPayload() == v16;
  sub_1DAD64398(v15, &unk_1ECC07D30, &unk_1DAED57E0);
  return v17;
}

void sub_1DADC4FB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + 56);
  *(v1 + 56) = v2;
  v3 = v2;
}

double sub_1DADC5000(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1DAD94D08();
    sub_1DAEA1F7C(v2);
  }

  return result;
}

void sub_1DADC5064(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1DAE09A30();
  }
}

uint64_t sub_1DADC50C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1DAD648F8(result + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configurationModel, v6);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v5 = sub_1DAED11AC();
    sub_1DAE3A88C(v5);

    return __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  return result;
}

double sub_1DADC5180@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1DAED0DDC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 40);
  v8 = *(v1 + 32);
  v9 = v7;
  sub_1DAED0DAC();
  v10 = *(*(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__archiveService) + 56);
  v11 = *(v10 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock);
  v12 = *(v11 + 16);

  os_unfair_lock_lock(v12);
  sub_1DADC52EC(v10, v6, a1);
  os_unfair_lock_unlock(*(v11 + 16));

  (*(v4 + 8))(v6, v3);

  return result;
}

uint64_t sub_1DADC52EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_storage;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_1DAD805B0(a2);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      swift_beginAccess();
      v11 = *(v10 + 16);

      sub_1DAED0C5C();

      v12 = v22;
      if (v22)
      {
        v13 = __swift_project_boxed_opaque_existential_1(v21, v22);
        v14 = *(v12 - 8);
        v15 = MEMORY[0x1EEE9AC00](v13);
        v17 = &v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v14 + 16))(v17, v15);
        sub_1DAD64398(v21, &unk_1ECC08880, &unk_1DAED6F50);
        sub_1DAED1A3C();
        return (*(v14 + 8))(v17, v12);
      }

      sub_1DAD64398(v21, &unk_1ECC08880, &unk_1DAED6F50);
    }

    else
    {
    }
  }

  v19 = sub_1DAECDCEC();
  return (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
}

void sub_1DADC551C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v40[-1] - v5;
  if ((*(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__invalidated) & 1) == 0)
  {
    if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__started) == 1)
    {
      if (qword_1EE005E88 != -1)
      {
        swift_once();
      }

      v7 = sub_1DAECEDEC();
      __swift_project_value_buffer(v7, qword_1EE0117D8);

      v8 = sub_1DAECEDCC();
      v9 = sub_1DAED203C();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v40[0] = v11;
        *v10 = 136446466;
        v12 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
        v13 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

        v14 = sub_1DAD6482C(v12, v13, v40);

        *(v10 + 4) = v14;
        *(v10 + 12) = 2082;
        v15 = NSStringFromWRReloadReason(a1);
        v16 = sub_1DAED1CEC();
        v18 = v17;

        v19 = sub_1DAD6482C(v16, v18, v40);

        *(v10 + 14) = v19;
        _os_log_impl(&dword_1DAD61000, v8, v9, "[%{public}s] Reload widget for reason: %{public}s", v10, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v11, -1, -1);
        MEMORY[0x1E127F100](v10, -1, -1);
      }

      sub_1DAD648F8(v2 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client, v40);
      v20 = v40[4];
      __swift_project_boxed_opaque_existential_1(v40, v40[3]);
      v21 = *(v20 + 112);
      v22 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__sessionID);
      v21();

      __swift_destroy_boxed_opaque_existential_1Tm(v40);
    }

    else if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      if (qword_1EE005E88 != -1)
      {
        swift_once();
      }

      v23 = sub_1DAECEDEC();
      __swift_project_value_buffer(v23, qword_1EE0117D8);

      v24 = sub_1DAECEDCC();
      v25 = sub_1DAED203C();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v40[0] = v27;
        *v26 = 136446466;
        v28 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
        v29 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

        v30 = sub_1DAD6482C(v28, v29, v40);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2082;
        v31 = NSStringFromWRReloadReason(a1);
        v32 = sub_1DAED1CEC();
        v34 = v33;

        v35 = sub_1DAD6482C(v32, v34, v40);

        *(v26 + 14) = v35;
        _os_log_impl(&dword_1DAD61000, v24, v25, "[%{public}s] Reload widget PENDED for reason: %{public}s", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v27, -1, -1);
        MEMORY[0x1E127F100](v26, -1, -1);
      }

      sub_1DAECDCCC();
      v36 = sub_1DAECDCEC();
      (*(*(v36 - 8) + 56))(v6, 0, 1, v36);
      v37 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__catastrophicReloadReasonDate;
      swift_beginAccess();
      sub_1DAD94438(v6, v2 + v37, &qword_1ECC07CE8, &qword_1DAED6F60);
      swift_endAccess();
      v38 = v2 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__catastrophicReloadReason;
      *v38 = a1;
      *(v38 + 8) = 0;
    }
  }
}

__CFString *NSStringFromWRReloadReason(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"stale";
  }

  else
  {
    return off_1E85EB048[a1 - 1];
  }
}

char *sub_1DADC5A30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08688, &unk_1DAED6CC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_1DADC5B84(void *a1, void *a2, void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  if ([a1 isValid])
  {
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v12 = sub_1DAECEDEC();
    __swift_project_value_buffer(v12, qword_1EE011748);
    v13 = a6;
    v14 = a3;
    v15 = a2;

    v16 = sub_1DAECEDCC();
    v17 = sub_1DAED203C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v36 = v34;
      *v18 = 136446722;
      v19 = *&v15[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v19)
      {
        v20 = (v19 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v22 = *v20;
        v21 = v20[1];
      }

      else
      {
        v33 = v13;
        v23 = v14;
        v22 = sub_1DAD8CE78(v23);
        v21 = v24;

        v13 = v33;
      }

      v25 = sub_1DAD6482C(v22, v21, &v36);

      *(v18 + 4) = v25;
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_1DAD6482C(a4, a5, &v36);
      *(v18 + 22) = 2082;
      if (a6)
      {
        v26 = [v13 description];
        v27 = sub_1DAED1CEC();
        v29 = v28;
      }

      else
      {
        v29 = 0x80000001DAEE0EB0;
        v27 = 0xD000000000000012;
      }

      v30 = sub_1DAD6482C(v27, v29, &v36);

      *(v18 + 24) = v30;
      _os_log_impl(&dword_1DAD61000, v16, v17, "[%{public}s] Response to content confirmation action %{public}s: %{public}s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v34, -1, -1);
      MEMORY[0x1E127F100](v18, -1, -1);
    }

    [a1 setNullificationHandler_];
    if (a6)
    {
      v31 = v13;
      v32 = sub_1DAECDB0C();
    }

    else
    {
      v32 = 0;
    }

    v35 = [objc_allocWithZone(MEMORY[0x1E698E600]) initWithInfo:0 error:v32];

    [a1 sendResponse_];
  }
}

void *sub_1DADC5EC0(void *a1, uint64_t a2, uint64_t a3, char *a4, SEL *a5)
{
  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v9 = sub_1DAECEDEC();
  __swift_project_value_buffer(v9, qword_1EE0117F0);
  v10 = a1;
  v11 = sub_1DAECEDCC();
  v12 = sub_1DAED200C();

  v27 = a2;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v13 = 138543618;
    *(v13 + 4) = v10;
    *v14 = v10;
    *(v13 + 12) = 2082;
    v15 = v10;
    v16 = NSStringFromWRReloadReason(a2);
    format = a4;
    v17 = sub_1DAED1CEC();
    v18 = a5;
    v20 = v19;

    v21 = sub_1DAD6482C(v17, v20, &v28);
    a5 = v18;

    *(v13 + 14) = v21;
    _os_log_impl(&dword_1DAD61000, v11, v12, format, v13, 0x16u);
    sub_1DAD64398(v14, &qword_1ECC07CF0, &qword_1DAED57A0);
    MEMORY[0x1E127F100](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1E127F100](v26, -1, -1);
    MEMORY[0x1E127F100](v13, -1, -1);
  }

  result = sub_1DAD6F45C();
  if (result)
  {
    v23 = result;
    v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    [v23 *a5];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1DADC6160(void *a1, uint64_t a2, char a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3 & 1;
  *(v8 + 40) = a4;
  v12[4] = sub_1DAE0C9A0;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DAD751C0;
  v12[3] = &block_descriptor_138;
  v9 = _Block_copy(v12);
  v10 = a1;
  v11 = a4;

  BSRunLoopPerformAfterCACommit();
  _Block_release(v9);
}

uint64_t sub_1DADC62DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DADC63C0(void *a1)
{
  BSDispatchQueueAssertMain();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v42 = a1;
    v5 = [v4 nullableWidget];
    if (v5)
    {

      if (qword_1EE005E48 != -1)
      {
        swift_once();
      }

      v6 = sub_1DAECEDEC();
      __swift_project_value_buffer(v6, qword_1EE011748);
      v7 = v42;
      v8 = v1;
      v9 = sub_1DAECEDCC();
      v10 = sub_1DAED203C();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v43[0] = v12;
        *v11 = 136446210;
        v13 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
        if (v13)
        {
          v14 = (v13 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
          v16 = *v14;
          v15 = v14[1];
        }

        else
        {
          objc_opt_self();
          v17 = swift_dynamicCastObjCClass();
          if (v17)
          {
            v18 = v17;
            v19 = v7;
            v20 = sub_1DAD8CE78(v18);
          }

          else
          {
            v22 = [v7 _FBSScene];
            v19 = [v22 identifier];

            v20 = sub_1DAED1CEC();
          }

          v16 = v20;
          v15 = v21;
        }

        v23 = sub_1DAD6482C(v16, v15, v43);

        *(v11 + 4) = v23;
        _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Did background", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        MEMORY[0x1E127F100](v12, -1, -1);
        MEMORY[0x1E127F100](v11, -1, -1);
      }

      v24 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundScene];
      *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundScene] = 0;

      v25 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection;
      v26 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v26)
      {
        v27 = *(v26 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
        if (v27)
        {
          v28 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_isForeground;
          swift_beginAccess();
          v29 = v27[v28];
          v27[v28] = 0;
          v30 = v27;
          sub_1DADC68E4(v29);
        }
      }

      if (*&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundSceneLimiter])
      {

        sub_1DADC6E74(v4, 0x756F72676B636162, 0xEC0000006465646ELL);
      }

      sub_1DAD83970(v4);
      v31 = *&v8[v25];
      if (v31)
      {
        if (*&v31[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_transaction])
        {
          *&v31[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_transaction] = 0;
          v32 = v31;
        }

        else
        {
          v33 = v31;
        }

        if (qword_1EE008AC0 != -1)
        {
          swift_once();
        }

        v34 = qword_1EE008AD0;
        v35 = [*&v31[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene] widget];
        v36 = [v35 extensionIdentity];

        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08390, &unk_1DAED7DA0);
        v37 = sub_1DAECE26C();
        v39 = v38;
        swift_endAccess();

        LOBYTE(v37) = sub_1DADB410C(v37, v39, v34);

        if (v37)
        {
          sub_1DAE09410(v40);
        }

        else
        {
          v41 = sub_1DAED112C();
          MEMORY[0x1EEE9AC00](v41);
          sub_1DAED110C();
        }
      }

      sub_1DAD6B5EC(v4);
    }

    else
    {
    }
  }
}

uint64_t sub_1DADC68E4(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_1DAECFC7C();
  v53 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v49 - v7;
  v9 = sub_1DAECEDEC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  v16 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_isForeground;
  result = swift_beginAccess();
  v18 = v1[v16];
  if (v18 != v3)
  {
    v51 = v4;
    v19 = *&v2[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel];
    v20 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isForeground;
    swift_beginAccess();
    v21 = *(v19 + v20);
    *(v19 + v20) = v18;
    sub_1DAD9B9DC(v21);
    v22 = *(v10 + 16);
    v23 = v19 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger;
    if (v2[v16] == 1)
    {
      v22(v15, v23, v9);
      v24 = v2;
      v25 = sub_1DAECEDCC();
      v26 = sub_1DAED200C();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v54[0] = v28;
        *v27 = 136446210;
        v29 = v19 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier;
        v50 = v24;
        v31 = *(v19 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
        v30 = *(v29 + 8);

        v32 = sub_1DAD6482C(v31, v30, v54);
        v24 = v50;

        *(v27 + 4) = v32;
        _os_log_impl(&dword_1DAD61000, v25, v26, "[%{public}s] Enabling RenderBox default update interval (if necessary) because foreground.", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        MEMORY[0x1E127F100](v28, -1, -1);
        MEMORY[0x1E127F100](v27, -1, -1);
      }

      (*(v10 + 8))(v15, v9);
      v33 = v51;
      v34 = &v24[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController];
      swift_beginAccess();
    }

    else
    {
      v22(v12, v23, v9);
      v35 = v2;
      v36 = sub_1DAECEDCC();
      v37 = sub_1DAED200C();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v50 = v35;
        v40 = v39;
        v54[0] = v39;
        *v38 = 136446210;
        v41 = v19 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier;
        v43 = *(v19 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
        v42 = *(v41 + 8);

        v44 = sub_1DAD6482C(v43, v42, v54);

        *(v38 + 4) = v44;
        _os_log_impl(&dword_1DAD61000, v36, v37, "[%{public}s] Disabling RenderBox update interval (if necessary) because background.", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v40);
        v45 = v40;
        v35 = v50;
        MEMORY[0x1E127F100](v45, -1, -1);
        MEMORY[0x1E127F100](v38, -1, -1);
      }

      (*(v10 + 8))(v12, v9);
      v33 = v51;
      v34 = &v35[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController];
      swift_beginAccess();
    }

    v46 = *v34;
    type metadata accessor for SecureHostingController(0);
    sub_1DAD730A4(qword_1EE00AFA0, type metadata accessor for SecureHostingController, MEMORY[0x1E697C600]);
    v47 = v46;
    sub_1DAECF9CC();
    sub_1DAECFBDC();
    v48 = v53;
    (*(v53 + 16))(v52, v8, v33);
    sub_1DAECF9DC();

    return (*(v48 + 8))(v8, v33);
  }

  return result;
}

void sub_1DADC6E74(void *a1, uint64_t a2, unint64_t a3)
{
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  v7 = *(v3 + 16);

  v8 = sub_1DAD8DA44(a1, v7);

  if (v8)
  {
    if ([*(v3 + 24) containsObject_] || (objc_msgSend(*(v3 + 32), sel_containsObject_, a1) & 1) != 0)
    {
      swift_beginAccess();
      v9 = v3;
      v10 = sub_1DADC73EC(a1);
      swift_endAccess();

      [*(v9 + 24) removeObject_];
      sub_1DADC75CC(a1, a2, a3);
      sub_1DAD7C75C();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1DADC6F88(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (qword_1EE005E48 != -1)
  {
    swift_once();
  }

  v12 = sub_1DAECEDEC();
  __swift_project_value_buffer(v12, qword_1EE011748);
  v13 = a2;
  v14 = a1;
  v15 = sub_1DAECEDCC();
  v16 = sub_1DAED203C();

  if (os_log_type_enabled(v15, v16))
  {
    v34 = a3;
    v35 = a5;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136446210;
    v19 = *&v14[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (v19)
    {
      v20 = (v19 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
      v21 = *v20;
      v22 = v20[1];
    }

    else
    {
      v33 = a4;
      v23 = v13;
      v21 = sub_1DAD8CE78(v23);
      v22 = v24;

      a4 = v33;
    }

    v25 = sub_1DAD6482C(v21, v22, aBlock);

    *(v17 + 4) = v25;
    _os_log_impl(&dword_1DAD61000, v15, v16, "[%{public}s] Waiting on synchronized commit", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1E127F100](v18, -1, -1);
    MEMORY[0x1E127F100](v17, -1, -1);

    a3 = v34;
    a5 = v35;
  }

  else
  {
  }

  v26 = objc_opt_self();
  v27 = swift_allocObject();
  v27[2] = a3;
  v27[3] = v14;
  v27[4] = v13;
  v27[5] = a4;
  v27[6] = a5;
  v27[7] = a6;
  aBlock[4] = sub_1DADC5B24;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_167;
  v28 = _Block_copy(aBlock);
  v29 = a6;
  v30 = v13;
  v31 = v14;
  v32 = a3;

  [v26 bs:v28 performAfterSynchronizedCommit:?];
  _Block_release(v28);
}

uint64_t sub_1DADC7240(void *a1, unint64_t *a2, void *a3, void (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      v11 = *v5;
    }

    else
    {
      v11 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = a1;
    v13 = sub_1DAED24CC();

    if (v13)
    {
      v14 = sub_1DAEC52C8(v11, v12, a5, a2, a3);

      return v14;
    }

    return 0;
  }

  v17 = v5;
  sub_1DAD674D4(0, a2, a3);
  v18 = sub_1DAED227C();
  v19 = -1 << *(v7 + 32);
  v20 = v18 & ~v19;
  if (((*(v7 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
    return 0;
  }

  v21 = ~v19;
  while (1)
  {
    v22 = *(*(v7 + 48) + 8 * v20);
    v23 = sub_1DAED228C();

    if (v23)
    {
      break;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v7 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v17;
  v27 = *v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4();
    v25 = v27;
  }

  v26 = *(*(v25 + 48) + 8 * v20);
  sub_1DADC7428(v20);
  result = v26;
  *v17 = v27;
  return result;
}

void sub_1DADC7428(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1DAED23EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_1DAED227C();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }
}

void sub_1DADC75CC(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if ([*(v4 + 32) containsObject_])
  {
    if (qword_1EE00AC50 != -1)
    {
      swift_once();
    }

    v8 = sub_1DAECEDEC();
    __swift_project_value_buffer(v8, qword_1EE011B58);

    v9 = a1;
    v10 = sub_1DAECEDCC();
    v11 = sub_1DAED203C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v39[0] = v13;
      *v12 = 136446466;
      *(v12 + 4) = sub_1DAD6482C(a2, a3, v39);
      *(v12 + 12) = 2082;
      v14 = [v9 _FBSScene];
      v15 = [v14 identifier];

      v16 = sub_1DAED1CEC();
      v18 = v17;

      v19 = sub_1DAD6482C(v16, v18, v39);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_1DAD61000, v10, v11, "Removed foreground content for reason %{public}s: %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v13, -1, -1);
      MEMORY[0x1E127F100](v12, -1, -1);
    }

    [*(v4 + 32) removeObject_];
    swift_beginAccess();
    sub_1DADC7B44(0, 1, v9);
    swift_endAccess();
    if (sub_1DAD8DB4C())
    {
      if ([*(v4 + 24) lastObject])
      {
        sub_1DAED238C();
        swift_unknownObjectRelease();
      }

      else
      {
        v37 = 0u;
        v38 = 0u;
      }

      v39[0] = v37;
      v39[1] = v38;
      if (*(&v38 + 1))
      {
        sub_1DAD674D4(0, &qword_1EE005628, 0x1E6994548);
        if (swift_dynamicCast())
        {
          v20 = v36;
          v21 = sub_1DAECEDCC();
          v22 = sub_1DAED203C();

          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            v24 = swift_slowAlloc();
            *&v39[0] = v24;
            *v23 = 136446210;
            v25 = [v20 _FBSScene];
            v26 = [v25 identifier];

            v27 = sub_1DAED1CEC();
            v29 = v28;

            v30 = sub_1DAD6482C(v27, v29, v39);

            *(v23 + 4) = v30;
            _os_log_impl(&dword_1DAD61000, v21, v22, "Making content available for %{public}s", v23, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v24);
            MEMORY[0x1E127F100](v24, -1, -1);
            MEMORY[0x1E127F100](v23, -1, -1);
          }

          [*(v4 + 24) removeObject_];
          v31 = sub_1DAD7CD98(v20);
          v32 = qword_1EE005478;
          v33 = v20;
          if (v32 != -1)
          {
            swift_once();
          }

          v34 = qword_1EE005480;
          v35 = [v34 objectForKey_];

          if (v35)
          {
            swift_getObjectType();
            if (swift_conformsToProtocol2())
            {
              sub_1DADE2530(v31);
            }

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }

      else
      {
        sub_1DAD64398(v39, &qword_1ECC0A3A0, &qword_1DAEDFE30);
      }
    }
  }
}

void sub_1DADC7AC8(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v2 + 16));
  sub_1DADC7DDC(a1);
  v3 = *(v2 + 16);

  os_unfair_lock_unlock(v3);
}

void sub_1DADC7B44(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v5 = sub_1DAD80EFC(a3);
    if (v6)
    {
      v7 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v3;
      v13 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1DADDB87C();
        v9 = v13;
      }

      sub_1DADC7C48(v7, v9);
      *v4 = v9;
    }

    else
    {
    }
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_1DAD80D9C(a3, v11, *&a1);

    *v3 = v14;
  }
}

void sub_1DADC7C48(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DAED23EC() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_1DAED227C();

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
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
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

void sub_1DADC7DDC(uint64_t a1)
{
  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v2 = sub_1DAECEDEC();
  __swift_project_value_buffer(v2, qword_1EE0117F0);
  v3 = sub_1DAECEDCC();
  v4 = sub_1DAED203C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DAD61000, v3, v4, "Now allowing environment mismatch requests.", v5, 2u);
    MEMORY[0x1E127F100](v5, -1, -1);
  }

  *(a1 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_hasReceivedInitialEnvironment) = 1;
}

double sub_1DADC7F00(uint64_t a1, void *a2)
{
  v23 = a2;
  v26 = sub_1DAED09DC();
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1DAED0A3C();
  v25 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DAECE20C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *&v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue];
  (*(v9 + 16))(v12, a1, v8, v11);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v13, v12, v8);
  v16 = v23;
  *(v15 + v14) = v23;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = v2;
  aBlock[4] = sub_1DADC85AC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_157_0;
  v17 = _Block_copy(aBlock);
  v18 = v16;
  v19 = v2;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v29 = MEMORY[0x1E69E7CC0];
  sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
  v20 = v26;
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v7, v5, v17);
  _Block_release(v17);
  (*(v28 + 8))(v5, v20);
  (*(v25 + 8))(v7, v27);

  return result;
}

uint64_t sub_1DADC82CC()
{
  v1 = sub_1DAECE20C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_1DADC83A0(char *a1, void *a2, uint64_t a3)
{
  v5 = sub_1DAED0A3C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&a1[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_snapshotGeneration];
  v10 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    *&a1[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_snapshotGeneration] = v10;
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = v10;
    v12[4] = a1;

    a1;
    _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
    sub_1DADE4448(a2, v8, sub_1DADE6488, v12);

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1DADC8534()
{
  MEMORY[0x1E127F1A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DADC856C()
{

  return swift_deallocObject();
}

void sub_1DADC85AC()
{
  v1 = *(sub_1DAECE20C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1DADC8644(v0 + v2, v4, v5);
}

void sub_1DADC8644(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1DAECE20C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v12 = sub_1DAECEDEC();
  __swift_project_value_buffer(v12, qword_1EE0117F0);
  v43 = *(v7 + 16);
  v43(v11, a1, v6);
  v13 = a2;
  v14 = v6;
  v15 = sub_1DAECEDCC();
  v16 = sub_1DAED200C();

  v17 = os_log_type_enabled(v15, v16);
  v45 = v7;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v41 = a1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v42 = a3;
    v21 = v20;
    v40 = swift_slowAlloc();
    v46[0] = v40;
    *v19 = 136446466;
    sub_1DAD649C4(&qword_1ECC083B8, 255, MEMORY[0x1E6993FA8], MEMORY[0x1E6993FD0]);
    v22 = sub_1DAED287C();
    v23 = v7;
    v25 = v24;
    (*(v23 + 8))(v11, v14);
    v26 = sub_1DAD6482C(v22, v25, v46);

    *(v19 + 4) = v26;
    *(v19 + 12) = 2114;
    *(v19 + 14) = v13;
    *v21 = v13;
    v27 = v13;
    _os_log_impl(&dword_1DAD61000, v15, v16, "Set widget task priority %{public}s for session: %{public}@", v19, 0x16u);
    sub_1DAD64398(v21, &qword_1ECC07CF0, &qword_1DAED57A0);
    v28 = v21;
    a3 = v42;
    MEMORY[0x1E127F100](v28, -1, -1);
    v29 = v40;
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x1E127F100](v29, -1, -1);
    v30 = v19;
    a1 = v41;
    MEMORY[0x1E127F100](v30, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v11, v14);
  }

  v31 = v14;
  v32 = *(a3 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v32 + 16));
  v33 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_subscriptions;
  swift_beginAccess();
  v34 = *(a3 + v33);

  v35 = sub_1DADB7CF0(v13, v34);

  if (v35)
  {
    v36 = v44;
    v43(v44, a1, v31);
    v37 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_priority;
    swift_beginAccess();
    (*(v45 + 40))(v35 + v37, v36, v31);
    swift_endAccess();
  }

  os_unfair_lock_unlock(*(v32 + 16));
  v38 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v39 = sub_1DAD6F45C();
  if (v39)
  {
    [v39 setWidgetTaskPriority:v38 forSession:v13];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1DADC8A98@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v103 = a1;
  v102 = sub_1DAECED2C();
  v106 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v86[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08330, &unk_1DAED6540);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v105 = &v86[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v99 = &v86[-v7];
  v104 = sub_1DAED18CC();
  v100 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v98 = &v86[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = sub_1DAECF32C();
  v96 = *(v97 - 1);
  MEMORY[0x1EEE9AC00](v97);
  v93 = &v86[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v92 = &v86[-v11];
  v95 = sub_1DAECF8EC();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v90 = &v86[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08360, &unk_1DAED6570);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v89 = &v86[-v14];
  v108 = sub_1DAECF0AC();
  v15 = *(v108 - 1);
  MEMORY[0x1EEE9AC00](v108);
  v17 = &v86[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_1DAED0DDC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v86[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = *&v1[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel];
  v91 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource;
  sub_1DAD648F8(&v22[OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource], &v109);
  v23 = v110;
  v24 = v111;
  __swift_project_boxed_opaque_existential_1(&v109, v110);
  v25 = (*(v24 + 16))(v23, v24);
  sub_1DAED0C3C();

  v26 = sub_1DAED0DBC();
  (*(v19 + 8))(v21, v18);
  v27 = v22;
  __swift_destroy_boxed_opaque_existential_1Tm(&v109);
  v28 = [v26 family];

  if (sub_1DAE9BAB0(v28))
  {
    result = [v2 view];
    if (result)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  v30 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v31 = *&v2[v30];
  type metadata accessor for SecureHostingController(0);
  sub_1DAD900A4(qword_1EE00AFA0, type metadata accessor for SecureHostingController, MEMORY[0x1E697C600]);
  v32 = v31;
  v33 = sub_1DAECF9AC();

  if (!v33)
  {
LABEL_8:
    if (qword_1EE005E48 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

  objc_opt_self();
  v107 = swift_dynamicCastObjCClass();
  if (!v107)
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  for (i = 1; ; i = 0)
  {
    v39 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_colorScheme;
    swift_beginAccess();
    v40 = &v27[v39];
    v41 = v108;
    (*(v15 + 2))(v17, v40, v108);
    v42 = (*(v15 + 11))(v17, v41);
    v43 = v42 == *MEMORY[0x1E697DBB8];
    v88 = v2;
    if (!v43)
    {
      if (v42 == *MEMORY[0x1E697DBA8])
      {
        v44 = 0;
        goto LABEL_18;
      }

      (*(v15 + 1))(v17, v41);
    }

    v44 = 1;
LABEL_18:
    v45 = [objc_allocWithZone(MEMORY[0x1E6994300]) init];
    [v45 setColorScheme_];
    v46 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters;
    swift_beginAccess();
    [v45 setTintParameters_];
    v47 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_idealizedDateComponents;
    swift_beginAccess();
    v48 = v89;
    sub_1DAD6495C(&v27[v47], v89, &qword_1ECC08360, &unk_1DAED6570);
    v49 = sub_1DAECDA5C();
    v50 = *(v49 - 8);
    v51 = 0;
    if ((*(v50 + 48))(v48, 1, v49) != 1)
    {
      v51 = sub_1DAECDA3C();
      (*(v50 + 8))(v48, v49);
    }

    [v45 setIdealizedDateComponents_];

    v52 = v90;
    sub_1DADA4A88(v90);
    v53 = v92;
    sub_1DAECF46C();
    v108 = v45;
    v89 = v27;
    v54 = *(v94 + 8);
    v55 = v95;
    v54(v52, v95);
    v56 = v93;
    sub_1DAECF31C();
    sub_1DAD900A4(&qword_1EE00BE58, MEMORY[0x1E697EA58], MEMORY[0x1E697EA78]);
    v57 = v97;
    v58 = sub_1DAED23AC();
    v59 = *(v96 + 8);
    v59(v56, v57);
    v59(v53, v57);
    v60 = v89;
    sub_1DADA4A88(v52);
    LOBYTE(v59) = sub_1DAECF60C();
    v54(v52, v55);
    v61 = v59 & 1u | ((v58 & 1) == 0);
    v62 = v108;
    [v108 setAllowsPrivacySensitiveContent_];
    [v62 setUserWantsWidgetDataWhenPasscodeLocked_];
    v63 = [objc_allocWithZone(MEMORY[0x1E69943E0]) initWithWidget:*&v88[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_widget] metrics:*&v88[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_metrics]];
    v64 = sub_1DADC9838();
    v66 = v65;
    sub_1DAD648F8(&v60[v91], &v109);
    v67 = v110;
    v68 = v111;
    __swift_project_boxed_opaque_existential_1(&v109, v110);
    v69 = (*(v68 + 16))(v67, v68);
    v70 = v98;
    sub_1DAED0B9C();

    __swift_destroy_boxed_opaque_existential_1Tm(&v109);
    v71 = v106;
    v17 = v99;
    v72 = v102;
    (*(v106 + 56))(v99, 1, 1, v102);
    v15 = v103;
    v97 = v63;
    v73 = v108;
    *v103 = v63;
    *(v15 + 1) = v73;
    *(v15 + 2) = v64;
    *(v15 + 3) = v66;
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980);
    v74 = v100;
    v75 = v104;
    (*(v100 + 16))(&v15[v108[9]], v70, v104);
    v76 = v105;
    sub_1DAD6495C(v17, v105, &qword_1ECC08330, &unk_1DAED6540);
    v27 = (v71 + 48);
    v77 = *(v71 + 48);
    if (v77(v76, 1, v72) != 1)
    {
      sub_1DAD64398(v17, &qword_1ECC08330, &unk_1DAED6540);
      (*(v74 + 8))(v70, v75);
      v80 = v101;
      (*(v71 + 32))(v101, v76, v72);
LABEL_27:
      v84 = v108;
      result = (*(v71 + 32))(&v15[v108[10]], v80, v72);
      v85 = &v15[v84[11]];
      *v85 = v107;
      v85[8] = i;
      return result;
    }

    sub_1DAED298C();
    v2 = v107;
    v78 = v97;
    sub_1DAED229C();

    v79 = sub_1DAED296C();
    v80 = v101;
    if ((v79 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

    v81 = __OFSUB__(0, v79);
    result = -v79;
    if (v81)
    {
      break;
    }

    if ((result & 0x8000000000000000) == 0)
    {
LABEL_24:
      sub_1DAECED3C();

      sub_1DAD64398(v17, &qword_1ECC08330, &unk_1DAED6540);
      (*(v74 + 8))(v70, v104);
      v82 = v105;
      v83 = v77(v105, 1, v72);
      v71 = v106;
      if (v83 != 1)
      {
        sub_1DAD64398(v82, &qword_1ECC08330, &unk_1DAED6540);
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_29:
    swift_once();
LABEL_9:
    v34 = sub_1DAECEDEC();
    __swift_project_value_buffer(v34, qword_1EE011748);
    v35 = sub_1DAECEDCC();
    v36 = sub_1DAED202C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1DAD61000, v35, v36, "WidgetContentViewController was not using RenderBox rendering and was not transparent. Contact Perf this is not stable long term.", v37, 2u);
      MEMORY[0x1E127F100](v37, -1, -1);
    }

    result = [v2 view];
    if (!result)
    {
      goto LABEL_31;
    }

LABEL_12:
    v38 = result;
    v107 = [result layer];
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1DADC9838()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v13 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);
  sub_1DAD648F8(v13 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v39);
  v14 = v40;
  v15 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v16 = (*(v15 + 16))(v14, v15);
  sub_1DAED0C5C();

  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  if (v43)
  {
    v37 = v13;
    v38 = v3;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    sub_1DAED1A0C();
    v17 = sub_1DAECDCEC();
    v18 = *(v17 - 8);
    (*(v18 + 56))(v12, 0, 1, v17);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    v19 = *(v18 + 48);
    if (v19(v12, 1, v17) == 1)
    {
      v20 = 0xE300000000000000;
      v21 = 7104878;
    }

    else
    {
      sub_1DAD6495C(v12, v9, &qword_1ECC07CE8, &qword_1DAED6F60);
      result = v19(v9, 1, v17);
      if (result == 1)
      {
        goto LABEL_18;
      }

      if (qword_1EE00A700 != -1)
      {
        swift_once();
      }

      v23 = qword_1EE00A708;
      v24 = sub_1DAECDC5C();
      v25 = [v23 stringFromDate_];

      v21 = sub_1DAED1CEC();
      v20 = v26;

      (*(v18 + 8))(v9, v17);
    }

    v3 = v38;
  }

  else
  {
    sub_1DAD64398(v42, &unk_1ECC08880, &unk_1DAED6F50);
    v17 = sub_1DAECDCEC();
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
    v20 = 0xE300000000000000;
    v21 = 7104878;
  }

  sub_1DADC9D74(v6);
  sub_1DAECDCEC();
  v27 = *(v17 - 8);
  v28 = *(v27 + 48);
  if (v28(v6, 1, v17) == 1)
  {
    v29 = 0xE300000000000000;
    v30 = 7104878;
LABEL_16:
    v42[0] = v21;
    v42[1] = v20;
    MEMORY[0x1E127DA50](45, 0xE100000000000000);
    MEMORY[0x1E127DA50](v30, v29);

    v36 = v42[0];
    sub_1DAD64398(v6, &qword_1ECC07CE8, &qword_1DAED6F60);
    sub_1DAD64398(v12, &qword_1ECC07CE8, &qword_1DAED6F60);
    return v36;
  }

  sub_1DAD6495C(v6, v3, &qword_1ECC07CE8, &qword_1DAED6F60);
  result = (v28)(v3, 1, v17);
  if (result != 1)
  {
    if (qword_1EE00A700 != -1)
    {
      swift_once();
    }

    v31 = qword_1EE00A708;
    v32 = sub_1DAECDC5C();
    v33 = [v31 stringFromDate_];

    v30 = sub_1DAED1CEC();
    v34 = v3;
    v29 = v35;

    (*(v27 + 8))(v34, v17);
    goto LABEL_16;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1DADC9D74@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = type metadata accessor for EnvironmentWrappedViewableTimelineEntry(0);
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1DAED19AC();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088D8, &qword_1DAED72D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  v43 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  MEMORY[0x1EEE9AC00](v43);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  v19 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v19, v18, &unk_1ECC07D30, &unk_1DAED57E0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = sub_1DAECDCEC();
      (*(*(v21 - 8) + 56))(v47, 1, 1, v21);
      return sub_1DAD64398(v18, &unk_1ECC07D30, &unk_1DAED57E0);
    }

    else
    {
      sub_1DAD64398(v18, &unk_1ECC07D30, &unk_1DAED57E0);
      v29 = sub_1DAECDCEC();
      return (*(*(v29 - 8) + 56))(v47, 1, 1, v29);
    }
  }

  else
  {
    v23 = v44;
    v24 = v45;
    v25 = v7;
    v26 = v46;
    sub_1DADB62CC(v18, v15, type metadata accessor for DefaultWidgetLiveViewEntry);
    sub_1DADB6264(v15, v12, type metadata accessor for DefaultWidgetLiveViewEntry);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DADB62CC(v12, v23, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      v27 = v47;
      sub_1DAED195C();
      sub_1DADB6334(v23, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      sub_1DADB6334(v15, type metadata accessor for DefaultWidgetLiveViewEntry);
      v28 = sub_1DAECDCEC();
      return (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
    }

    else
    {

      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088E8, &qword_1DAED72E0);
      v30 = v12;
      v31 = v10;
      sub_1DAD7C48C(&v12[*(v44 + 16)], v10, &qword_1ECC088D8, &qword_1DAED72D0);
      sub_1DAD6495C(v10, v7, &qword_1ECC088D8, &qword_1DAED72D0);
      v32 = (*(v24 + 48))(v7, 1, v26);
      v33 = v47;
      if (v32 == 1)
      {
        sub_1DAD64398(v31, &qword_1ECC088D8, &qword_1DAED72D0);
        sub_1DADB6334(v15, type metadata accessor for DefaultWidgetLiveViewEntry);
        sub_1DAD64398(v7, &qword_1ECC088D8, &qword_1DAED72D0);
        v34 = 1;
      }

      else
      {
        v36 = v40;
        v35 = v41;
        v37 = v42;
        (*(v40 + 16))(v41, v25 + *(v26 + 20), v42);
        sub_1DADB6334(v25, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
        sub_1DAED195C();
        (*(v36 + 8))(v35, v37);
        sub_1DAD64398(v31, &qword_1ECC088D8, &qword_1DAED72D0);
        sub_1DADB6334(v15, type metadata accessor for DefaultWidgetLiveViewEntry);
        v34 = 0;
      }

      v38 = sub_1DAECDCEC();
      (*(*(v38 - 8) + 56))(v33, v34, 1, v38);
      return sub_1DADB6334(&v30[*(v44 + 12)], type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    }
  }
}

uint64_t sub_1DADCA3D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1DADCA440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24 = a3;
  v25 = a4;
  v28 = a2;
  v23 = *v4;
  v7 = sub_1DAED09DC();
  v27 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v22 - v13;
  v26 = v5[7];
  sub_1DAD6495C(a1, &v22 - v13, &qword_1ECC08338, &unk_1DAEDB980);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v5;
  sub_1DAD7C48C(v14, v17 + v15, &qword_1ECC08338, &unk_1DAEDB980);
  v18 = (v17 + v16);
  v19 = v25;
  *v18 = v24;
  v18[1] = v19;
  *(v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8)) = v23;
  aBlock[4] = sub_1DADCA96C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_13;
  v20 = _Block_copy(aBlock);
  v29 = MEMORY[0x1E69E7CC0];
  sub_1DAD8E24C(&qword_1EE00AB70, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DADCA908();
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v28, v9, v20);
  _Block_release(v20);
  (*(v27 + 8))(v9, v7);

  return result;
}

uint64_t sub_1DADCA770()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = (v0 + v2);

  v4 = v1[11];
  v5 = sub_1DAED18CC();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = v1[12];
  v7 = sub_1DAECED2C();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_1DADCA8EC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1DADCA908()
{
  result = qword_1EE00AAA0;
  if (!qword_1EE00AAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC08340, &unk_1DAED6550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00AAA0);
  }

  return result;
}

void sub_1DADCA96C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = v0 + v3;
  v7 = *(v0 + v4);
  v8 = *v6;
  v9 = *(v6 + 8);

  sub_1DADCAA18(v5, v0 + v2, v8, v9, v7);
}

void sub_1DADCAA18(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  v108 = a5;
  v123 = a3;
  v124 = a4;
  v127 = a2;
  v103 = sub_1DAED09DC();
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v100 = &v95[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v101 = sub_1DAED0A3C();
  v99 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v98 = &v95[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09190, &qword_1DAED8D30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v107 = &v95[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v112 = &v95[-v11];
  v113 = sub_1DAECDBFC();
  v125 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v109 = &v95[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v106 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v111 = &v95[-v14];
  v15 = sub_1DAED18CC();
  v120 = *(v15 - 8);
  v121 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v119 = &v95[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980);
  v104 = *(v17 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v110 = &v95[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v105 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v95[-v20];
  v22 = sub_1DAECED2C();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v115 = &v95[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v95[-v26];
  v28 = sub_1DAECED6C();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v95[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = OBJC_IVAR____TtC14WidgetRenderer16LayerSnapshotter_signposter;
  swift_beginAccess();
  v33 = *(v29 + 16);
  v126 = a1;
  v116 = v28;
  v33(v31, a1 + v32, v28);
  v122 = v17;
  v34 = v17[10];
  v117 = v23;
  v35 = *(v23 + 16);
  v36 = v127;
  v118 = v22;
  v114 = v35;
  v35(v27, (v127 + v34), v22);
  sub_1DAD6495C(v36, v21, &qword_1ECC08338, &unk_1DAEDB980);
  v37 = sub_1DAECED5C();
  v38 = sub_1DAED21AC();
  if (sub_1DAED230C())
  {
    v39 = swift_slowAlloc();
    v96 = v38;
    v40 = v39;
    v97 = swift_slowAlloc();
    aBlock = v97;
    *v40 = 136446210;
    v41 = *v21;
    v42 = [*v21 widget];
    v43 = [v41 metrics];
    v44 = [v42 _loggingIdentifierWithMetrics_];

    v45 = sub_1DAED1CEC();
    v47 = v46;

    v48 = v125;
    sub_1DAD64398(v21, &qword_1ECC08338, &unk_1DAEDB980);
    v49 = sub_1DAD6482C(v45, v47, &aBlock);

    *(v40 + 4) = v49;
    v50 = sub_1DAECED0C();
    _os_signpost_emit_with_name_impl(&dword_1DAD61000, v37, v96, v50, "LayerSnapshotting", "<key>=%{public}s", v40, 0xCu);
    v51 = v97;
    __swift_destroy_boxed_opaque_existential_1Tm(v97);
    MEMORY[0x1E127F100](v51, -1, -1);
    MEMORY[0x1E127F100](v40, -1, -1);
  }

  else
  {

    sub_1DAD64398(v21, &qword_1ECC08338, &unk_1DAEDB980);
    v48 = v125;
  }

  v52 = v118;
  v114(v115, v27, v118);
  sub_1DAECEDAC();
  swift_allocObject();
  v53 = sub_1DAECED9C();
  (*(v117 + 8))(v27, v52);
  (*(v29 + 8))(v31, v116);
  v54 = OBJC_IVAR____TtC14WidgetRenderer16LayerSnapshotter_dataProtectionMonitor;
  v55 = v126;
  swift_beginAccess();
  sub_1DAD648F8(v55 + v54, &aBlock);
  __swift_project_boxed_opaque_existential_1(&aBlock, v131);
  v56 = v119;
  sub_1DAED127C();
  v57 = v122;
  sub_1DAD8E24C(&qword_1EE00AAF0, MEMORY[0x1E69859A8], MEMORY[0x1E69859B8]);
  v58 = v127;
  v59 = v121;
  LOBYTE(v54) = sub_1DAED1C9C();
  (*(v120 + 8))(v56, v59);
  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  if (v54)
  {
    v60 = 0x80000001DAEE3C80;
    v61 = 0xD00000000000001ELL;
LABEL_8:
    aBlock = v61;
    v129 = v60;
    LOBYTE(v130) = 2;
    sub_1DAE50204(&aBlock, v55, v53, v123, v124);

    sub_1DADE62C4(aBlock, v129, v130);
    return;
  }

  v62 = v112;
  sub_1DAE4F710(v58, v112);
  v63 = v113;
  if ((*(v48 + 48))(v62, 1, v113) == 1)
  {
    sub_1DAD64398(v62, &unk_1ECC09EC0, &qword_1DAED7970);
    v60 = 0x80000001DAEE3C40;
    v61 = 0xD000000000000019;
    goto LABEL_8;
  }

  v64 = v111;
  v121 = *(v48 + 32);
  v121(v111, v62, v63);
  v65 = sub_1DAE4FAF8(*v58);
  if (v65)
  {
    v66 = v65;
    v119 = v65;
    v120 = v53;
    v67 = v58 + v57[11];
    v68 = *v67;
    if (v67[8])
    {
      sub_1DAD84C40();
      v118 = v68;
      v122 = sub_1DAED20EC();
      sub_1DAD6495C(v58, v110, &qword_1ECC08338, &unk_1DAEDB980);
      (*(v48 + 16))(v109, v64, v63);
      v69 = (*(v104 + 80) + 24) & ~*(v104 + 80);
      v127 = (v105 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
      v70 = (*(v48 + 80) + v127 + 8) & ~*(v48 + 80);
      v71 = (v106 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
      v72 = (v71 + 15) & 0xFFFFFFFFFFFFFFF8;
      v73 = (v72 + 15) & 0xFFFFFFFFFFFFFFF8;
      v74 = swift_allocObject();
      *(v74 + 16) = v55;
      sub_1DAD7C48C(v110, v74 + v69, &qword_1ECC08338, &unk_1DAEDB980);
      v75 = v118;
      *(v74 + v127) = v118;
      v121(v74 + v70, v109, v63);
      v76 = v120;
      *(v74 + v71) = v119;
      *(v74 + v72) = v76;
      v77 = (v74 + v73);
      v78 = v124;
      *v77 = v123;
      v77[1] = v78;
      *(v74 + ((v73 + 23) & 0xFFFFFFFFFFFFFFF8)) = v108;
      v132 = sub_1DAE50820;
      v133 = v74;
      aBlock = MEMORY[0x1E69E9820];
      v129 = 1107296256;
      v130 = sub_1DAD751C0;
      v131 = &block_descriptor_44;
      v79 = _Block_copy(&aBlock);
      v80 = v75;

      v81 = v98;
      _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1DAD8E24C(&qword_1EE00AB70, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
      sub_1DADCA908();
      v82 = v100;
      v83 = v103;
      sub_1DAED23CC();
      v84 = v122;
      MEMORY[0x1E127DD70](0, v81, v82, v79);
      _Block_release(v79);

      (*(v102 + 8))(v82, v83);
      (*(v99 + 8))(v81, v101);
      (*(v125 + 8))(v111, v113);
    }

    else
    {
      v117 = *(v55 + 16);
      v122 = v68;
      sub_1DAE4EC30(v122, &qword_1ECC09190, &qword_1DAED8D30, v107);
      v118 = *(v55 + 56);
      sub_1DAD6495C(v58, v110, &qword_1ECC08338, &unk_1DAEDB980);
      v85 = v109;
      (*(v48 + 16))(v109, v64, v63);
      v86 = (*(v104 + 80) + 56) & ~*(v104 + 80);
      v87 = (v105 + *(v48 + 80) + v86) & ~*(v48 + 80);
      v88 = (v106 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
      v89 = swift_allocObject();
      v89[2] = v66;
      v89[3] = v55;
      v90 = v123;
      v91 = v124;
      v89[4] = v120;
      v89[5] = v90;
      v89[6] = v91;
      sub_1DAD7C48C(v110, v89 + v86, &qword_1ECC08338, &unk_1DAEDB980);
      v121(v89 + v87, v85, v63);
      *(v89 + v88) = v108;
      v92 = *(**(v117 + 16) + 104);

      v93 = v107;
      v94 = v111;
      v92(v107, v111, v118, sub_1DAE50960, v89);

      sub_1DAD64398(v93, &qword_1ECC09190, &qword_1DAED8D30);
      (*(v48 + 8))(v94, v63);
    }
  }

  else
  {
    aBlock = 0xD00000000000001FLL;
    v129 = 0x80000001DAEE3C60;
    LOBYTE(v130) = 2;
    sub_1DAE50204(&aBlock, v55, v53, v123, v124);

    sub_1DADE62C4(aBlock, v129, v130);
    (*(v48 + 8))(v64, v63);
  }
}

uint64_t sub_1DADCB9CC()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = sub_1DAECDBFC();
  v4 = *(v12 - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);

  v6 = (v0 + v2);

  v7 = v1[11];
  v8 = sub_1DAED18CC();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = v1[12];
  v10 = sub_1DAECED2C();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);

  (*(v4 + 8))(v0 + v5, v12);

  return swift_deallocObject();
}

uint64_t sub_1DADCBC1C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DADCBC3C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void *sub_1DADCBC64@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1DADCBCB0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1DADCBD58@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1DADCBD84@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1DADCBE50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1DADCBEC0(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1DADCBE90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAED1CEC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DADCBEC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1DADCBEF8()
{

  return swift_deallocObject();
}

uint64_t sub_1DADCBF40()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADCBF7C()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1DADCBFCC(__n128 a1)
{
  sub_1DADE62C4(*(v1 + 16), *(v1 + 24), *(v1 + 32));

  return swift_deallocObject();
}

uint64_t sub_1DADCC01C()
{

  return swift_deallocObject();
}

uint64_t sub_1DADCC0B0(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08590, &qword_1DAED6968);
  swift_getTupleTypeMetadata3();
  sub_1DAED097C();
  swift_getWitnessTable();
  sub_1DAED07DC();
  sub_1DAECF2AC();
  swift_getTupleTypeMetadata2();
  sub_1DAED097C();
  swift_getWitnessTable();
  sub_1DAED084C();

  return swift_getWitnessTable();
}

uint64_t sub_1DADCC29C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1DADEC6F8(v1, v2);
}

void sub_1DADCC320(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1DADEC2D0(v1);
}

uint64_t sub_1DADCC418()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADCC46C()
{

  return swift_deallocObject();
}

uint64_t sub_1DADCC4B0()
{
  v1 = sub_1DAECDCEC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1DADCC55C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADCC594()
{

  return swift_deallocObject();
}

uint64_t sub_1DADCC5D4(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 24);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1DAED182C();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1DADCC680(uint64_t result, uint64_t a2, int a3, uint64_t a4, __n128 a5)
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_1DAED182C();
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1DADCC734()
{

  return swift_deallocObject();
}

id sub_1DADCC7C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_1DADCC820@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1DADCC868(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_1DADCC8B0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADCC8E8()
{

  return swift_deallocObject();
}

uint64_t sub_1DADCC930@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1DADCC980@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel_visibility;
  swift_beginAccess();
  return sub_1DAD6E2C8(v3 + v4, a2);
}

uint64_t sub_1DADCC9E0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADCCA18()
{

  return swift_deallocObject();
}

uint64_t sub_1DADCCA5C()
{

  return swift_deallocObject();
}

uint64_t sub_1DADCCAE4()
{

  return swift_deallocObject();
}

uint64_t sub_1DADCCB3C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1DADCCB74()
{

  return swift_deallocObject();
}

uint64_t sub_1DADCCBB4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADCCBEC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1DADCCCCC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D68, &unk_1DAED8020) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = type metadata accessor for ActivityContentDidChangeEvent(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v6, 1, v7))
  {
    v8 = sub_1DAED0B1C();
    (*(*(v8 - 8) + 8))(v0 + v6, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_1DADCCE8C()
{
  v2 = *(v0 + 40);
  v7 = *(v0 + 16);
  v1 = v7;
  v8 = *(v0 + 24);
  v6 = v8;
  v9 = v2;
  v3 = (type metadata accessor for CompactLiveActivityView(0, &v7) - 8);
  v4 = v0 + ((*(*v3 + 80) + 48) & ~*(*v3 + 80));
  (*(*(v1 - 8) + 8))(v4, v1);
  (*(*(v6 - 8) + 8))(v4 + v3[15]);
  if (*(v4 + v3[18]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1DADCCFD4(void *a1)
{
  swift_getTupleTypeMetadata3();
  sub_1DAED097C();
  swift_getWitnessTable();
  sub_1DAED07DC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08E10, &unk_1DAED8250);
  sub_1DAECF2AC();
  sub_1DAECF2AC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08E18, &qword_1DAED9270);
  sub_1DAECF2AC();
  swift_getWitnessTable();
  sub_1DAD64B94(&qword_1ECC08E20, &qword_1ECC08E10, &unk_1DAED8250, MEMORY[0x1E697FDC0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1DAD64B94(&qword_1ECC08E28, &qword_1ECC08E18, &qword_1DAED9270, MEMORY[0x1E697FD58]);
  swift_getWitnessTable();
  sub_1DAED07BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08E30, &qword_1DAED8260);
  sub_1DAECF2AC();
  sub_1DAECF2DC();
  swift_getWitnessTable();
  sub_1DAD64B94(&qword_1ECC08E38, &qword_1ECC08E30, &qword_1DAED8260, MEMORY[0x1E697F940]);
  swift_getWitnessTable();
  sub_1DAE183BC();
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_1DADCD294@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_islandSize;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_1DADCD2EC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_islandSize);
  result = swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  return result;
}

double sub_1DADCD344@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_apertureTopEdgeMetric;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_1DADCD39C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_apertureTopEdgeMetric;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1DADCD3F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_isLuminanceReduced;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1DADCD448(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_isLuminanceReduced;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1DADCD49C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_appName);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1DADCD4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DAECF8EC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1DAED1A5C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1DADCD61C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1DAECF8EC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1DAED1A5C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1DADCD748@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF81C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DADCD7B0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_requiresStrictViewFraming;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_1DADCD804@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_inlineTextParameters;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1DADCD87C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_metricsDefineSize;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_1DAE21114();
}

uint64_t sub_1DADCD8E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RBImageSnapshotter.RBImageOptions(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DADCD954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RBImageSnapshotter.RBImageOptions(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DADCD9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1DAECDFCC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1DADCDA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1DAECDFCC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1DADCDAB8()
{
  v1 = *(type metadata accessor for RBImageSnapshotter(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1DAECDBFC();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0 + *(type metadata accessor for RBImageSnapshotter.RBImageOptions(0) + 24);
  v8 = sub_1DAECDFCC();
  (*(*(v8 - 8) + 8))(v7 + v2, v8);
  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_1DADCDC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CAMLSnapshotter.CAMLOptions(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DADCDCE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CAMLSnapshotter.CAMLOptions(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DADCDD88@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DAECF3CC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1DADCDE34(void *a1)
{
  sub_1DAECF2AC();
  sub_1DAECFB2C();
  sub_1DAD71948();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1DADCDF24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC091C0, &qword_1DAED8E80);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DADCDF9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC091C0, &qword_1DAED8E80);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DADCE018(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DAECF1CC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DADCE084(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DAECF1CC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DADCE0F4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1DAECEDEC();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1DADCE1AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_1DAECEDEC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DADCE250(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECC09240, &unk_1DAED9260);
  swift_getTupleTypeMetadata3();
  sub_1DAED097C();
  swift_getWitnessTable();
  sub_1DAED07DC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08E10, &unk_1DAED8250);
  sub_1DAECF2AC();
  sub_1DAECF2AC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08E18, &qword_1DAED9270);
  sub_1DAECF2AC();
  sub_1DAECF2AC();
  swift_getTupleTypeMetadata2();
  sub_1DAED097C();
  swift_getWitnessTable();
  sub_1DAED084C();

  return swift_getWitnessTable();
}

uint64_t sub_1DADCE3DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC09240, &unk_1DAED9260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DADCE44C()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1DADCE48C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09378, &qword_1DAED9478);
  sub_1DAE2B1F8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1DADCE4F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAECF58C();
  *a1 = result;
  return result;
}

uint64_t sub_1DADCE548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DAECFE7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1DADCE610(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DAECFE7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_1DADCE6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DAECFDDC();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1DADCE790(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DAECFDDC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1DADCE858@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAECF41C();
  *a1 = result;
  return result;
}

uint64_t _s14WidgetRenderer33MetadataInlineShrinkToFitModifierVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14WidgetRenderer33MetadataInlineShrinkToFitModifierVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1DADCEAB4(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = sub_1DAECEDEC();
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_13:
    v15 = *(v11 + 48);

    return v15(&a1[v12], a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC094D0, &qword_1DAED9A90);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[6];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC094D8, &qword_1DAED9A98);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v10 = v14;
    v11 = *(v14 - 8);
    v12 = a3[7];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC094E0, &unk_1DAED9AA0);
  v17 = *(*(v16 - 8) + 48);
  v18 = &a1[a3[8]];

  return v17(v18, a2, v16);
}

char *sub_1DADCEC98(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
    return result;
  }

  v8 = sub_1DAECEDEC();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC094D0, &qword_1DAED9A90);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC094D8, &qword_1DAED9A98);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC094E0, &unk_1DAED9AA0);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[8]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1DADCEE74()
{
  v1 = type metadata accessor for InlineDateModifier(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  v3 = v1[5];
  v4 = sub_1DAECEDEC();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[6];
  v6 = sub_1DAECDCEC();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC094D0, &qword_1DAED9A90);

  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC094B0, &qword_1DAED9A48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1DAECDDEC();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  v9 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC094B8, &qword_1DAED9A80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1DAECDDAC();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1DADCF0C0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09568, &qword_1DAED9C08);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09560, &qword_1DAED9C00);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 2147483646)
  {
    v15 = *(a1 + a3[6]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    v16 = v15 - 1;
    if (v16 < 0)
    {
      v16 = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_1DAECEDEC();
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[7];
      goto LABEL_5;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A7B0, &unk_1DAEDE9B0);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[8];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_1DADCF2AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09568, &qword_1DAED9C08);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09560, &qword_1DAED9C00);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6]) = a2;
    return result;
  }

  v16 = sub_1DAECEDEC();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A7B0, &unk_1DAEDE9B0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[8];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1DADCF48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DAECFF0C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1DAECDD3C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1DADCF57C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1DAECFF0C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1DAECDD3C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1DADCF6C0@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DAECF89C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1DADCF730(void *a1)
{
  sub_1DAECF2AC();
  sub_1DAE360E4();
  return swift_getWitnessTable();
}

uint64_t sub_1DADCF794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09678, &qword_1DAED9DF8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1DADCF8C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09678, &qword_1DAED9DF8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1DADCFA00(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 8) = v3;
}

uint64_t sub_1DADCFA44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DAECEDEC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DADCFAF0(void *a1)
{
  sub_1DAECEB0C();
  sub_1DAECFB2C();
  sub_1DAECEB8C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09840, &unk_1DAEDA520);
  sub_1DAECFB2C();
  sub_1DAECFB2C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1DAE39FF8();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1DADCFD28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_visiblySettled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1DADCFD80(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_visiblySettled;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1DADCFDD4()
{

  return swift_deallocObject();
}

uint64_t sub_1DADCFE14()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1DADCFE64()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADCFE9C()
{

  return swift_deallocObject();
}

uint64_t sub_1DADCFEF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF7FC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DADCFF48(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A20, &unk_1DAEDB4A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

void *sub_1DADD0004(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A20, &unk_1DAEDB4A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DADD00B4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A20, &unk_1DAEDB4A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 84);

    return v9(v10, a2, v8);
  }
}

void *sub_1DADD0170(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A20, &unk_1DAEDB4A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 84);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DADD0224(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09A50, &qword_1DAEDB5E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09A48, &qword_1DAEDB5D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08898, &qword_1DAED8240);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09A40, &unk_1DAEDB5C8);
  sub_1DAECF2AC();
  sub_1DAECF2AC();
  sub_1DAECF2AC();
  sub_1DAECFB2C();
  sub_1DAECF2AC();
  sub_1DAECF2AC();
  sub_1DAECF2AC();
  sub_1DAECFB2C();
  sub_1DAECFB2C();
  sub_1DAECFFFC();
  sub_1DAECF2AC();
  sub_1DAECFB2C();
  sub_1DAED072C();
  sub_1DAECF2AC();
  v2 = MEMORY[0x1E695BED8];
  sub_1DAD64B94(&unk_1EE005C90, &qword_1ECC09A40, &unk_1DAEDB5C8, MEMORY[0x1E695BED8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1DAECF34C();
  swift_getWitnessTable();
  sub_1DAECF34C();
  sub_1DAD64B94(&qword_1EE00AC00, &qword_1ECC08898, &qword_1DAED8240, v2);
  swift_getWitnessTable();
  sub_1DAECF34C();
  sub_1DAD64B94(&qword_1EE005C70, &qword_1ECC09A48, &qword_1DAEDB5D8, v2);
  swift_getWitnessTable();
  sub_1DAECF34C();
  sub_1DAD64B94(&qword_1EE005C78, &qword_1ECC09A50, &qword_1DAEDB5E0, v2);
  swift_getWitnessTable();
  sub_1DAECF34C();
  return swift_getWitnessTable();
}

uint64_t sub_1DADD0700(uint64_t *a1)
{
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1DAECF36C();
  sub_1DAECF2AC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1DAECFB2C();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1DADD08C8()
{
  MEMORY[0x1E127F1A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DADD0900()
{
  v1 = sub_1DAECEBAC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1DADD0998()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1DADD09D0()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD0A10@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1E127B070]();
  *a1 = result;
  return result;
}

uint64_t sub_1DADD0A7C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1DADD0B38(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_1DADD0BE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

uint64_t sub_1DADD0D10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer16LayerSnapshotter_dataProtectionMonitor;
  swift_beginAccess();
  return sub_1DAD648F8(v3 + v4, a2);
}

uint64_t sub_1DADD0D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1DAECDFCC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1DADD0DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1DAECDFCC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1DADD0E64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CAMLSnapshotter.CAMLOptions(0);
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

uint64_t sub_1DADD0ED0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for CAMLSnapshotter.CAMLOptions(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1DADD0F50()
{

  return swift_deallocObject();
}