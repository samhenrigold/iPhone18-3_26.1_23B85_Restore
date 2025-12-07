void sub_224A49120(uint64_t a1, int a2)
{
  v5 = sub_224DA9908();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v97[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v97[-v13];
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v97[-v16];
  BSDispatchQueueAssert();
  v18 = *(v2 + OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock);
  os_unfair_lock_lock(*(v18 + 16));
  v19 = OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_activityStore;
  swift_beginAccess();
  v20 = *(v2 + v19);
  if (*(v20 + 16))
  {

    v21 = sub_224A438E8(a1);
    if (v22)
    {
      LODWORD(v106) = a2;
      v23 = *(*(v20 + 56) + 8 * v21);

      *(v23 + 16) = 3;
      os_unfair_lock_unlock(*(v18 + 16));
      if (qword_2813515F0 != -1)
      {
        swift_once();
      }

      v24 = sub_224DAB258();
      v25 = __swift_project_value_buffer(v24, qword_281364F88);
      v103 = *(v6 + 16);
      v104 = v6 + 16;
      (v103)(v17, a1, v5);
      v105 = v25;
      v26 = sub_224DAB228();
      v27 = sub_224DAF2A8();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v99 = v28;
        v101 = swift_slowAlloc();
        v108 = v101;
        *v28 = 136446210;
        v100 = v26;
        v107 = sub_224DA98E8();
        sub_224A3F6A4();
        v29 = sub_224DAEF18();
        v31 = v14;
        v32 = v5;
        v33 = sub_224A3D19C(8, v29, v30);
        v35 = v34;
        v98 = v27;
        v37 = v36;
        v102 = a1;
        v38 = v23;
        v39 = v6;
        v41 = v40;

        v42 = v33;
        v5 = v32;
        v14 = v31;
        v43 = MEMORY[0x22AA5D1C0](v42, v35, v37, v41);
        v45 = v44;
        v46 = v39;
        v23 = v38;
        a1 = v102;

        v47 = *(v46 + 8);
        v47(v17, v5);
        v48 = sub_224A33F74(v43, v45, &v108);

        v49 = v99;
        v50 = v100;
        *(v99 + 1) = v48;
        v51 = v49;
        _os_log_impl(&dword_224A2F000, v50, v98, "[%{public}s]: activityHandler began", v49, 0xCu);
        v52 = v101;
        __swift_destroy_boxed_opaque_existential_1(v101);
        MEMORY[0x22AA5EED0](v52, -1, -1);
        MEMORY[0x22AA5EED0](v51, -1, -1);
      }

      else
      {

        v47 = *(v6 + 8);
        v47(v17, v5);
      }

      v74 = *(*(v23 + 24) + OBJC_IVAR____TtC10ChronoCore12TaskActivity_activationHandler);

      v74(v75, v106 & 1);

      (v103)(v14, a1, v5);
      v76 = sub_224DAB228();
      v77 = sub_224DAF2A8();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v103 = v78;
        v106 = swift_slowAlloc();
        v108 = v106;
        *v78 = 136446210;
        LODWORD(v105) = v77;
        v107 = sub_224DA98E8();
        sub_224A3F6A4();
        v79 = sub_224DAEF18();
        v81 = v47;
        v82 = v5;
        v83 = sub_224A3D19C(8, v79, v80);
        v104 = v23;
        v85 = v84;
        v87 = v86;
        v89 = v88;

        v90 = MEMORY[0x22AA5D1C0](v83, v85, v87, v89);
        v92 = v91;

        v81(v14, v82);
        v93 = sub_224A33F74(v90, v92, &v108);

        v94 = v103;
        *(v103 + 1) = v93;
        v95 = v94;
        _os_log_impl(&dword_224A2F000, v76, v105, "[%{public}s]: activityHandler ended", v94, 0xCu);
        v96 = v106;
        __swift_destroy_boxed_opaque_existential_1(v106);
        MEMORY[0x22AA5EED0](v96, -1, -1);
        MEMORY[0x22AA5EED0](v95, -1, -1);
      }

      else
      {

        v47(v14, v5);
      }

      return;
    }
  }

  os_unfair_lock_unlock(*(v18 + 16));
  if (qword_2813515F0 != -1)
  {
    swift_once();
  }

  v53 = sub_224DAB258();
  __swift_project_value_buffer(v53, qword_281364F88);
  (*(v6 + 16))(v10, a1, v5);
  v54 = sub_224DAB228();
  v55 = sub_224DAF288();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v105 = v56;
    v106 = swift_slowAlloc();
    v108 = v106;
    *v56 = 136446210;
    v107 = sub_224DA98E8();
    sub_224A3F6A4();
    v57 = sub_224DAEF18();
    v59 = v5;
    v60 = sub_224A3D19C(8, v57, v58);
    v62 = v61;
    v64 = v63;
    v66 = v65;

    v67 = MEMORY[0x22AA5D1C0](v60, v62, v64, v66);
    v69 = v68;

    (*(v6 + 8))(v10, v59);
    v70 = sub_224A33F74(v67, v69, &v108);

    v71 = v105;
    *(v105 + 1) = v70;
    v72 = v71;
    _os_log_impl(&dword_224A2F000, v54, v55, "[%{public}s]: activityHandler fired without activity", v71, 0xCu);
    v73 = v106;
    __swift_destroy_boxed_opaque_existential_1(v106);
    MEMORY[0x22AA5EED0](v73, -1, -1);
    MEMORY[0x22AA5EED0](v72, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v10, v5);
  }
}

unint64_t sub_224A49904(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + 2 * result) ^ a1 | *(*(v2 + 48) + 2 * result + 1) ^ ((a1 & 0x100) >> 8)) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_224A49988(uint64_t a1, uint64_t a2)
{
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
  v21 = v6;
  for (i = v2; ; v2 = i)
  {
    if (!v5)
    {
      do
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_32;
        }

        if (v9 >= v6)
        {
        }

        v5 = *(v2 + 8 * v9);
        ++v8;
      }

      while (!v5);
      v8 = v9;
    }

    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = (*(a1 + 48) + 2 * v10);
    v27 = *v11;
    v12 = v11[1];
    v13 = *(*(a1 + 56) + 8 * v10);
    v24 = v5;
    v14 = v13 >> 62 ? sub_224DAF838() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v14)
    {
      break;
    }

LABEL_4:
    v5 = (v24 - 1) & v24;

    v6 = v21;
  }

  v15 = 0;
  if (v12)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  v26 = v16;
  while ((v13 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x22AA5DCC0](v15, v13);
    v17 = result;
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_30;
    }

LABEL_21:
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v17 + 24);
      ObjectType = swift_getObjectType();
      (*(v19 + 8))(v26 | v27, a2, ObjectType, v19);
      swift_unknownObjectRelease();
    }

    ++v15;
    if (v18 == v14)
    {
      goto LABEL_4;
    }
  }

  if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

  v17 = *(v13 + 8 * v15 + 32);

  v18 = v15 + 1;
  if (!__OFADD__(v15, 1))
  {
    goto LABEL_21;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_224A49BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_224B44350(a4);
  }
}

uint64_t sub_224A49C20(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(a5 + 8))(a3, a5);
  a1(v8);
  return (*(a5 + 24))(a3, a5);
}

uint64_t sub_224A49CC8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), void (*a4)(uint64_t, uint64_t), void (*a5)(void))
{
  v9 = v5;
  v10 = a2(a1);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v5;
  v19 = *v9;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a5();
    v14 = v19;
  }

  v15 = *(v14 + 48);
  v16 = a3(0);
  (*(*(v16 - 8) + 8))(v15 + *(*(v16 - 8) + 72) * v12, v16);
  v17 = *(*(v14 + 56) + 8 * v12);
  a4(v12, v14);
  *v9 = v14;
  return v17;
}

void sub_224A49DBC(void *a1)
{
  v2 = v1;
  v4 = sub_224A4A248();
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  if (qword_2813516B8 != -1)
  {
    swift_once();
  }

  v6 = sub_224DAB258();
  __swift_project_value_buffer(v6, qword_281365108);
  v7 = a1;
  v8 = sub_224DAB228();
  v9 = sub_224DAF2A8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_224A2F000, v8, v9, "Add pending task: %{public}@", v10, 0xCu);
    sub_224A3311C(v11, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v11, -1, -1);
    MEMORY[0x22AA5EED0](v10, -1, -1);
  }

  v13 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier;
  swift_beginAccess();
  v14 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46[0] = v2[2];
  v2[2] = 0x8000000000000000;
  sub_224A436D0(v14, v7 + v13, isUniquelyReferenced_nonNull_native);
  v2[2] = v46[0];
  swift_endAccess();
  swift_beginAccess();
  v16 = v2[3];
  if (v16[2])
  {

    v17 = sub_224A3E7EC(v5);
    if (v18)
    {
      v19 = *(v16[7] + 8 * v17);

      v47 = v19;
      sub_224A4A564(v46, v14);

      v20 = v47;
      swift_beginAccess();
      v21 = v5;
      v22 = swift_isUniquelyReferenced_nonNull_native();
      v45 = v2[3];
      v2[3] = 0x8000000000000000;
      sub_224A4A72C(v20, v21, v22);

      v23 = v45;
      goto LABEL_11;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB2780;
  *(inited + 32) = v14;
  v25 = v14;
  v21 = sub_224AE93E8(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_beginAccess();
  v26 = v5;
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v47 = v2[3];
  v2[3] = 0x8000000000000000;
  sub_224A4A72C(v21, v26, v27);

  v23 = v47;
LABEL_11:
  v2[3] = v23;
  swift_endAccess();
  v28 = sub_224CF8254();
  v30 = v29;
  swift_beginAccess();
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v47 = v2[5];
  v32 = v47;
  v2[5] = 0x8000000000000000;
  v33 = sub_224A3A40C(v28, v30);
  v35 = v32[2];
  v36 = (v34 & 1) == 0;
  v37 = __OFADD__(v35, v36);
  v38 = v35 + v36;
  if (v37)
  {
    __break(1u);
    goto LABEL_21;
  }

  LOBYTE(v21) = v34;
  if (v32[3] >= v38)
  {
    goto LABEL_15;
  }

  sub_224AA68E4(v38, v31);
  v33 = sub_224A3A40C(v28, v30);
  if ((v21 & 1) != (v39 & 1))
  {
    v33 = sub_224DAFDD8();
    __break(1u);
LABEL_15:
    if ((v31 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  while (1)
  {
LABEL_16:
    v40 = v47;
    v2[5] = v47;
    if ((v21 & 1) == 0)
    {
      v2 = v33;
      sub_224B24668(v33, v28, v30, 0, v40);

      v33 = v2;
    }

    v41 = v40[7];
    v42 = *(v41 + 8 * v33);
    v37 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (!v37)
    {
      break;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    v44 = v33;
    sub_224B2572C();
    v33 = v44;
  }

  *(v41 + 8 * v33) = v43;
  swift_endAccess();
}

id sub_224A4A248()
{
  v1 = v0;
  v2 = sub_224DABCC8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DABE18();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ExtensionTask.Identifier(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_224A415FC(v1, v15, type metadata accessor for ExtensionTask.Identifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        return *v15;
      }

      v20 = *v15;

      v21 = [v20 extensionIdentity];
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        return *v15;
      }

      v20 = *v15;
      v21 = [*v15 extensionIdentity];
    }

    v22 = v21;

    return v22;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      (*(v3 + 32))(v6, v15, v2);
      v19 = sub_224DABCA8();
      (*(v3 + 8))(v6, v2);
    }

    else
    {
      if (EnumCaseMultiPayload != 9)
      {
        return *v15;
      }

      v19 = *v15;
    }

    return v19;
  }

  if (EnumCaseMultiPayload == 5)
  {
    return *v15;
  }

  if (EnumCaseMultiPayload != 6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);
  }

  (*(v8 + 32))(v11, v15, v7);
  v17 = sub_224DABDB8();
  (*(v8 + 8))(v11, v7);
  return v17;
}

id sub_224A4A5EC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_224DAF8E8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_224A4A740(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v41 = a1;
  v42 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v43 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v15 = &v30 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v39 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v33 = *(v18 - 8);
  v34 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v30 - v20;
  v22 = sub_224DAF218();
  if (!v22)
  {
    return sub_224DAF048();
  }

  v44 = v22;
  v48 = sub_224DAFA28();
  v35 = sub_224DAFA38();
  sub_224DAF9D8();
  result = sub_224DAF208();
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
      v25 = sub_224DAF258();
      v26 = v15;
      v27 = v15;
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
      sub_224DAFA18();
      result = sub_224DAF228();
      ++v24;
      v15 = v27;
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

unint64_t sub_224A4AB6C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10ChronoCore20TaskSessionQueuePool__queuePool;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_16:
    swift_endAccess();
    return 0;
  }

  if (!sub_224DAF838())
  {
    goto LABEL_16;
  }

LABEL_3:
  v4 = sub_224A4AD68();
  if (!v4)
  {
    v5 = *&v0[v2];
    if (v5 >> 62)
    {
      v19 = sub_224DAF838();
      v7 = __OFSUB__(v19, 1);
      result = v19 - 1;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v7 = __OFSUB__(v6, 1);
      result = v6 - 1;
      if (!v7)
      {
LABEL_6:
        v4 = sub_224B82C70(result);
        goto LABEL_7;
      }
    }

    __break(1u);
    return result;
  }

LABEL_7:
  v9 = v4;
  swift_endAccess();
  if (qword_2813516B8 != -1)
  {
    swift_once();
  }

  v10 = sub_224DAB258();
  __swift_project_value_buffer(v10, qword_281365108);
  v11 = v0;
  v12 = sub_224DAB228();
  v13 = sub_224DAF268();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134349056;
    v15 = *&v1[v2];
    if (v15 >> 62)
    {
      v18 = v14;
      v16 = sub_224DAF838();
      v14 = v18;
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 4) = v16;
    v17 = v14;

    _os_log_impl(&dword_224A2F000, v12, v13, "queue checked out; queuePool.count = %{public}ld", v17, 0xCu);
    MEMORY[0x22AA5EED0](v17, -1, -1);
  }

  else
  {
  }

  return v9;
}

uint64_t sub_224A4AD80(uint64_t (*a1)(uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = a1(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    v6 = v5 - 1;
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_224A4AE40(int64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v43 = a5;
  v44 = a6;
  v42 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8, v10);
  v13 = &v38 - v12;
  v14 = a2 + 64;
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = sub_224DAF7A8();
    v19 = v17;
    v41 = (v18 + 1) & v17;
    v21 = *(v9 + 16);
    v20 = v9 + 16;
    v45 = *(v20 + 56);
    v39 = (v20 - 8);
    v40 = v21;
    do
    {
      v22 = v45 * v16;
      v23 = v19;
      v24 = v20;
      v40(v13, *(a2 + 48) + v45 * v16, v8);
      sub_224A439BC(v42, v43, v44);
      v25 = sub_224DAED88();
      result = (*v39)(v13, v8);
      v19 = v23;
      v26 = v25 & v23;
      if (a1 >= v41)
      {
        if (v26 >= v41 && a1 >= v26)
        {
LABEL_15:
          v29 = *(a2 + 48);
          result = v29 + v45 * a1;
          v30 = v29 + v22 + v45;
          v31 = v45 * a1 < v22 || result >= v30;
          v20 = v24;
          if (!v31)
          {
            if (v45 * a1 != v22)
            {
              result = swift_arrayInitWithTakeBackToFront();
LABEL_23:
              v19 = v23;
            }

            v32 = *(a2 + 56);
            v33 = (v32 + 8 * a1);
            v34 = (v32 + 8 * v16);
            if (a1 != v16 || v33 >= v34 + 1)
            {
              *v33 = *v34;
              a1 = v16;
            }

            goto LABEL_4;
          }

          result = swift_arrayInitWithTakeFrontToBack();
          goto LABEL_23;
        }
      }

      else if (v26 >= v41 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v20 = v24;
LABEL_4:
      v16 = (v16 + 1) & v19;
    }

    while (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_224A4B0F4(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = sub_224A438E8(a1);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v1[2];
    v41 = v2[2];
    v2[2] = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_224B263CC();
      v8 = v41;
    }

    v9 = *(v8 + 48);
    v10 = sub_224DA9908();
    (*(*(v10 - 8) + 8))(v9 + *(*(v10 - 8) + 72) * v6, v10);
    v11 = *(*(v8 + 56) + 8 * v6);
    sub_224A4ADF4();
    v2[2] = v8;
    swift_endAccess();
    v12 = v11;
    v13 = sub_224A4A248();
    if (v13)
    {
      v14 = v13;
      if (qword_2813516B8 != -1)
      {
        swift_once();
      }

      v15 = sub_224DAB258();
      __swift_project_value_buffer(v15, qword_281365108);
      v16 = v12;
      v17 = sub_224DAB228();
      v18 = sub_224DAF2A8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138543362;
        *(v19 + 4) = v16;
        *v20 = v11;
        v21 = v16;
        _os_log_impl(&dword_224A2F000, v17, v18, "Remove pending task: %{public}@", v19, 0xCu);
        sub_224A3311C(v20, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v20, -1, -1);
        MEMORY[0x22AA5EED0](v19, -1, -1);
      }

      swift_beginAccess();
      v22 = v2[3];
      if (*(v22 + 16))
      {

        v23 = sub_224A3E7EC(v14);
        if (v24)
        {
          v25 = *(*(v22 + 56) + 8 * v23);

          swift_beginAccess();
          v26 = v14;
          v27 = swift_isUniquelyReferenced_nonNull_native();
          v39 = v2[3];
          v2[3] = 0x8000000000000000;
          sub_224A4A72C(v25, v26, v27);

          v2[3] = v39;
          swift_endAccess();
        }

        else
        {
        }
      }

      v28 = sub_224CF8254();
      v30 = v29;
      swift_beginAccess();
      v31 = v2[5];
      if (*(v31 + 16))
      {

        v32 = sub_224A3A40C(v28, v30);
        if (v33)
        {
          v34 = *(*(v31 + 56) + 8 * v32);

          v35 = v34 <= 1;
          v36 = v34 - 1;
          if (!v35)
          {
            swift_beginAccess();
            v37 = swift_isUniquelyReferenced_nonNull_native();
            v40 = v2[5];
            v2[5] = 0x8000000000000000;
            sub_224A9B9CC(v36, v28, v30, v37);

            v2[5] = v40;
            swift_endAccess();
LABEL_21:

            return v11;
          }
        }

        else
        {
        }
      }

      swift_beginAccess();
      sub_224B0D348(v28, v30);
      swift_endAccess();

      goto LABEL_21;
    }
  }

  else
  {
    swift_endAccess();
    return 0;
  }

  return v11;
}

uint64_t sub_224A4B564(void *a1, void (*a2)(void), void (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t), void (*a5)(void))
{
  v7 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      v10 = *v5;
    }

    else
    {
      v10 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = a1;
    v12 = sub_224DAF888();

    if (v12)
    {
      v13 = sub_224B05EA4(v10, v11, a4, a5);

      return v13;
    }

    return 0;
  }

  v16 = v5;
  a2(0);
  v17 = sub_224DAF698();
  v18 = -1 << *(v7 + 32);
  v19 = v17 & ~v18;
  if (((*(v7 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
  {
    return 0;
  }

  v20 = ~v18;
  while (1)
  {
    v21 = *(*(v7 + 48) + 8 * v19);
    v22 = sub_224DAF6A8();

    if (v22)
    {
      break;
    }

    v19 = (v19 + 1) & v20;
    if (((*(v7 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v16;
  v26 = *v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v24 = v26;
  }

  v25 = *(*(v24 + 48) + 8 * v19);
  sub_224A4B8F0(v19);
  result = v25;
  *v16 = v26;
  return result;
}

uint64_t sub_224A4B790(uint64_t a1)
{
  sub_224A4B83C(a1, v4);
  if (!v5)
  {
    sub_224A3311C(v4, &qword_27D6F4760, &unk_224DB3680);
    goto LABEL_5;
  }

  type metadata accessor for ExtensionTask(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v1 = 0;
    return v1 & 1;
  }

  v1 = sub_224DA98D8();

  return v1 & 1;
}

uint64_t sub_224A4B83C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4760, &unk_224DB3680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_224A4B8F0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_224DAF7A8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_224DAF698();

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
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
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

  return result;
}

uint64_t *sub_224A4BA90(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a4;
  type metadata accessor for TaskSession(0, *(v7 + 80), *(v7 + 88), a4);
  swift_allocObject();
  return sub_224A4BB1C(a1, a2, a3, v11, a5, a6, a7);
}

uint64_t *sub_224A4BB1C(void *a1, uint64_t a2, void *a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v41 = a7;
  v42 = a6;
  v40 = a2;
  v12 = *v7;
  v13 = a4;
  v14 = type metadata accessor for ExtensionTask.SchedulingOption(0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 16) = 0;
  v22 = qword_281365420;
  v23 = sub_224DA9878();
  (*(*(v23 - 8) + 56))(v7 + v22, 1, 1, v23);
  sub_224DA9808();
  *(v7 + *(*v7 + 160) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + *(*v7 + 168)) = 0;
  *(v7 + *(*v7 + 176)) = 0;
  v24 = *(*v7 + 184);
  v25 = *(v12 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v7 + v24, 1, 1, AssociatedTypeWitness);
  *(v7 + *(*v7 + 192)) = 0;
  *(v7 + *(*v7 + 200)) = 0;
  v7[3] = a1;
  v7[5] = a3;
  if (v13 == 2)
  {
    v27 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
    (*(*(v28 - 8) + 56))(v21, 1, 1, v28);
    v29 = a1;
    v30 = a3;
    v31 = sub_224A45CAC(a1 + v27, v21);
    sub_224A3D3B8(v21, type metadata accessor for ExtensionTask.SchedulingConfiguration);
    if (v31)
    {
      v32 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
      swift_beginAccess();
      v33 = *&v29[v32];
      v34 = sub_224DAE8B8();
      (*(*(v34 - 8) + 56))(v17, 3, 5, v34);

      v35 = sub_224D41D20(v17, v33);

      sub_224A3D3B8(v17, type metadata accessor for ExtensionTask.SchedulingOption);
    }

    else
    {

      v35 = 0;
    }

    v36 = v35 & 1;
  }

  else
  {
    v36 = a4 & 1;
  }

  *(v7 + 32) = v36;
  (*(*(v25 - 8) + 32))(v7 + *(*v7 + 152), v40, v25);
  v37 = v7 + qword_28135C660;
  v38 = *(a5 + 16);
  *v37 = *a5;
  *(v37 + 16) = v38;
  *(v37 + 32) = *(a5 + 32);
  *(v7 + *(*v7 + 160) + 8) = v41;
  swift_unknownObjectWeakAssign();
  return v7;
}

uint64_t sub_224A4BF74()
{
  v1 = sub_224DAB7B8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAB848();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = sub_224A4C6A4;
  v15 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_20_0;
  v11 = _Block_copy(aBlock);

  sub_224DAB7E8();
  v13[1] = MEMORY[0x277D84F90];
  sub_224D42EB0(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A4C290();
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v10, v5, v11);
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

uint64_t sub_224A4C200(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224A4C248(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_224A4C290()
{
  result = qword_281350BB0;
  if (!qword_281350BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F3460, &unk_224DB36F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350BB0);
  }

  return result;
}

void sub_224A4C2FC(void *a1)
{
  v2 = *a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v28[-1] - v5;
  sub_224DA9808();
  v7 = sub_224DA9878();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = qword_281365420;
  swift_beginAccess();
  sub_224A4C6AC(v6, a1 + v8);
  swift_endAccess();
  if (qword_281351698 != -1)
  {
    swift_once();
  }

  v9 = sub_224DAB258();
  __swift_project_value_buffer(v9, qword_2813516A0);

  v10 = sub_224DAB228();
  v11 = sub_224DAF2A8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28[0] = v14;
    *v12 = 136446722;
    v15 = a1[3];
    v16 = *&v15[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
    v17 = *&v15[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest + 8];

    v18 = sub_224A33F74(v16, v17, v28);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_224A33F74(0x29287472617473, 0xE700000000000000, v28);
    *(v12 + 22) = 2114;
    *(v12 + 24) = v15;
    *v13 = v15;
    v19 = v15;
    _os_log_impl(&dword_224A2F000, v10, v11, "[%{public}s]: %{public}s with task %{public}@", v12, 0x20u);
    sub_224A3311C(v13, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v14, -1, -1);
    MEMORY[0x22AA5EED0](v12, -1, -1);
  }

  v20 = a1 + *(*a1 + 160);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v21 = *(v20 + 1);
    ObjectType = swift_getObjectType();
    (*(v21 + 8))(a1, *(v2 + 80), *(v2 + 88), ObjectType, v21);
    swift_unknownObjectRelease();
  }

  v23 = *(a1[3] + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_target);
  if (v23)
  {
    v24 = *(*a1 + 176);
    v25 = *(a1 + v24);
    *(a1 + v24) = v23;
    v26 = v23;

    sub_224A4C958();
  }

  else
  {
    sub_224A4DA3C();
  }
}

uint64_t sub_224A4C6AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_224A4C720(uint64_t a1)
{
  v2 = v1;
  sub_224DA97B8();
  v5 = v4;
  if (qword_2813516B8 != -1)
  {
    swift_once();
  }

  v6 = sub_224DAB258();
  __swift_project_value_buffer(v6, qword_281365108);

  v7 = sub_224DAB228();
  v8 = sub_224DAF2A8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446466;
    v11 = (*(a1 + 24) + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest);
    v12 = *v11;
    v13 = v11[1];

    v14 = sub_224A33F74(v12, v13, &v17);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2050;
    *(v9 + 14) = -v5;
    _os_log_impl(&dword_224A2F000, v7, v8, "[%{public}s]: task session started. created %{public}fs ago.", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x22AA5EED0](v10, -1, -1);
    MEMORY[0x22AA5EED0](v9, -1, -1);
  }

  v15 = *(v2 + *((*MEMORY[0x277D85000] & *v2) + 0x88));
  os_unfair_lock_lock(*(v15 + 16));
  sub_224A4C91C(*(a1 + 24));
  v16 = *(v15 + 16);

  os_unfair_lock_unlock(v16);
}

void sub_224A4C958()
{
  v1 = v0;
  v41 = *v0;
  v2 = type metadata accessor for ExtensionTask.Identifier(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAE938();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssert();
  v11 = *(v0 + 3);
  v12 = *&v11[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest + 8];
  v42 = *&v11[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
  v13 = qword_281351698;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = sub_224DAB258();
  __swift_project_value_buffer(v14, qword_2813516A0);

  v15 = sub_224DAB228();
  v16 = sub_224DAF2A8();

  v17 = os_log_type_enabled(v15, v16);
  v43 = v10;
  v44 = v6;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v45 = v2;
    v19 = v18;
    v20 = v7;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v46[0] = v22;
    *v19 = 136446722;
    *(v19 + 4) = sub_224A33F74(v42, v12, v46);
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_224A33F74(0xD000000000000012, 0x8000000224DCF920, v46);
    *(v19 + 22) = 2114;
    *(v19 + 24) = v11;
    *v21 = v11;
    v23 = v11;
    _os_log_impl(&dword_224A2F000, v15, v16, "[%{public}s]: %{public}s with task %{public}@", v19, 0x20u);
    sub_224A3311C(v21, &unk_27D6F69F0, &unk_224DB3900);
    v24 = v21;
    v7 = v20;
    v10 = v43;
    MEMORY[0x22AA5EED0](v24, -1, -1);
    swift_arrayDestroy();
    v25 = v22;
    v6 = v44;
    MEMORY[0x22AA5EED0](v25, -1, -1);
    MEMORY[0x22AA5EED0](v19, -1, -1);
  }

  v26 = *&v1[*(*v1 + 176)];
  if (v26)
  {
    sub_224D42D6C(&v11[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier], v5, type metadata accessor for ExtensionTask.Identifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v28 = MEMORY[0x277CE3DC0];
    if (EnumCaseMultiPayload != 8)
    {
      v28 = MEMORY[0x277CE3DB8];
    }

    (*(v7 + 104))(v10, *v28, v6);
    v45 = v26;
    sub_224A3D3B8(v5, type metadata accessor for ExtensionTask.Identifier);
    v39[1] = *(*v1 + 152);
    v29 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
    swift_beginAccess();
    v30 = *&v11[v29];
    v31 = qword_28135C660;
    v32 = swift_allocObject();
    swift_weakInit();
    v33 = swift_allocObject();
    v40 = v7;
    v35 = v41;
    v34 = v42;
    v36 = *(v41 + 80);
    v33[2] = v36;
    v37 = *(v35 + 88);
    v33[3] = v37;
    v33[4] = v32;
    v33[5] = v34;
    v33[6] = v12;
    v38 = *(v37 + 32);

    v42 = v30;
    v38(v45, v30, &v1[v31], v10, sub_224A4D200, v33, v36, v37);
    (*(v40 + 8))(v43, v44);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_224A4CEE0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224A4CF18()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224A4CF60(uint64_t a1, uint64_t a2)
{
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
  v21 = v6;
  for (i = v2; ; v2 = i)
  {
    if (!v5)
    {
      do
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_32;
        }

        if (v9 >= v6)
        {
        }

        v5 = *(v2 + 8 * v9);
        ++v8;
      }

      while (!v5);
      v8 = v9;
    }

    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = (*(a1 + 48) + 2 * v10);
    v27 = *v11;
    v12 = v11[1];
    v13 = *(*(a1 + 56) + 8 * v10);
    v24 = v5;
    v14 = v13 >> 62 ? sub_224DAF838() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v14)
    {
      break;
    }

LABEL_4:
    v5 = (v24 - 1) & v24;

    v6 = v21;
  }

  v15 = 0;
  if (v12)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  v26 = v16;
  while ((v13 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x22AA5DCC0](v15, v13);
    v17 = result;
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_30;
    }

LABEL_21:
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v17 + 24);
      ObjectType = swift_getObjectType();
      (*(v19 + 24))(v26 | v27, a2, ObjectType, v19);
      swift_unknownObjectRelease();
    }

    ++v15;
    if (v18 == v14)
    {
      goto LABEL_4;
    }
  }

  if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

  v17 = *(v13 + 8 * v15 + 32);

  v18 = v15 + 1;
  if (!__OFADD__(v15, 1))
  {
    goto LABEL_21;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_224A4D188(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4FC8, &unk_224DBADE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224A4D210(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void sub_224A4D248(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a4;
  v37 = a1;
  v9 = sub_224DAB7B8();
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DAB848();
  v38 = *(v13 - 8);
  v39 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v17 = sub_224DAF728();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v36 - v20;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v36 = *(Strong + 40);
    v23 = Strong;
    (*(v18 + 16))(v21, v37, v17);
    v24 = (*(v18 + 80) + 40) & ~*(v18 + 80);
    v25 = swift_allocObject();
    *(v25 + 2) = a5;
    *(v25 + 3) = a6;
    *(v25 + 4) = v23;
    (*(v18 + 32))(&v25[v24], v21, v17);
    aBlock[4] = sub_224A4D864;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_17_0;
    v26 = _Block_copy(aBlock);

    sub_224DAB7E8();
    v42 = MEMORY[0x277D84F90];
    sub_224D42EB0(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A4C290();
    v27 = v41;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v16, v12, v26);
    _Block_release(v26);
    (*(v40 + 8))(v12, v27);
    (*(v38 + 8))(v16, v39);
  }

  else
  {
    v28 = v36;
    v29 = a3;
    if (qword_281351698 != -1)
    {
      swift_once();
    }

    v30 = sub_224DAB258();
    __swift_project_value_buffer(v30, qword_2813516A0);
    v31 = v28;

    v32 = sub_224DAB228();
    v33 = sub_224DAF2A8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_224A33F74(v29, v31, aBlock);
      _os_log_impl(&dword_224A2F000, v32, v33, "[%{public}s]: Session deallocated before task context can proceed", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x22AA5EED0](v35, -1, -1);
      MEMORY[0x22AA5EED0](v34, -1, -1);
    }
  }
}

uint64_t sub_224A4D730()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(sub_224DAF728() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(AssociatedTypeWitness - 8);
  if (!(*(v6 + 48))(v0 + v4, 1, AssociatedTypeWitness))
  {
    (*(v6 + 8))(v0 + v4, AssociatedTypeWitness);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_224A4D864()
{
  swift_getAssociatedTypeWitness();
  v1 = *(sub_224DAF728() - 8);
  v2 = *(v0 + 32);
  v3 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_224A4D8E8(v2, v3);
}

void sub_224A4D8E8(char *a1, uint64_t a2)
{
  v4 = *(*a1 + 184);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v5 = sub_224DAF728();
  (*(*(v5 - 8) + 24))(&a1[v4], a2, v5);
  swift_endAccess();
  sub_224A4DA3C();
}

uint64_t sub_224A4D9D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4700, &unk_224DB3A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_224A4DA3C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v56 = &v56 - v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_224DAF728();
  v58 = *(v5 - 8);
  v59 = v5;
  v7 = MEMORY[0x28223BE20](v5, v6);
  v57 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v56 - v10;
  v12 = type metadata accessor for ExtensionTask.Identifier(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DA9908();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssert();
  sub_224DAD198();
  *&v61 = 0x206B7361543CLL;
  *(&v61 + 1) = 0xE600000000000000;
  v21 = v0[3];
  (*(v17 + 16))(v20, &v21[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier], v16);
  sub_224D42EB0(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v22 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v22);

  (*(v17 + 8))(v20, v16);
  MEMORY[0x22AA5D210](8250, 0xE200000000000000);
  sub_224D42D6C(&v21[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier], v15, type metadata accessor for ExtensionTask.Identifier);
  v23 = sub_224A40C80();
  MEMORY[0x22AA5D210](v23);

  sub_224A3D3B8(v15, type metadata accessor for ExtensionTask.Identifier);
  MEMORY[0x22AA5D210](62, 0xE100000000000000);
  *(v0 + *(*v0 + 192)) = sub_224DAD188();

  if (qword_281351698 != -1)
  {
    swift_once();
  }

  v24 = sub_224DAB258();
  __swift_project_value_buffer(v24, qword_2813516A0);

  v25 = sub_224DAB228();
  v26 = sub_224DAF2A8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v61 = v29;
    *v27 = 136446722;
    v31 = *&v21[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
    v30 = *&v21[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest + 8];

    v32 = sub_224A33F74(v31, v30, &v61);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2082;
    *(v27 + 14) = sub_224A33F74(0xD000000000000014, 0x8000000224DCF900, &v61);
    *(v27 + 22) = 2114;
    *(v27 + 24) = v21;
    *v28 = v21;
    v33 = v21;
    _os_log_impl(&dword_224A2F000, v25, v26, "[%{public}s]: %{public}s with task %{public}@", v27, 0x20u);
    sub_224A3311C(v28, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v28, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v29, -1, -1);
    MEMORY[0x22AA5EED0](v27, -1, -1);
  }

  v35 = v59;
  v34 = AssociatedTypeWitness;
  v36 = v58;
  v37 = *&v21[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
  if (v37)
  {
    v38 = *&v21[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem + 8];
    v39 = *(*v1 + 184);
    swift_beginAccess();
    (*(v36 + 16))(v11, v1 + v39, v35);
    v40 = *(v34 - 8);
    if ((*(v40 + 48))(v11, 1, v34) == 1)
    {

      sub_224A364AC(v37, v38);
      (*(v36 + 8))(v11, v35);
      v61 = 0u;
      v62 = 0u;
    }

    else
    {
      *(&v62 + 1) = v34;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v61);
      (*(v40 + 32))(boxed_opaque_existential_1, v11, v34);

      sub_224A364AC(v37, v38);
    }

    v37(&v61, sub_224A4F448, v1);
    sub_224A3D418(v37, v38);

    sub_224A3311C(&v61, &qword_27D6F4760, &unk_224DB3680);
  }

  else
  {
    v41 = *&v21[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_syncWorkItem];
    if (v41)
    {
      v42 = *&v21[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_syncWorkItem + 8];
      v43 = *(*v1 + 184);
      swift_beginAccess();
      v44 = v57;
      (*(v36 + 16))(v57, v1 + v43, v35);
      v45 = *(v34 - 8);
      if ((*(v45 + 48))(v44, 1, v34) == 1)
      {

        sub_224A364AC(v41, v42);
        (*(v36 + 8))(v44, v35);
        v61 = 0u;
        v62 = 0u;
      }

      else
      {
        *(&v62 + 1) = v34;
        v52 = __swift_allocate_boxed_opaque_existential_1(&v61);
        (*(v45 + 32))(v52, v44, v34);

        sub_224A364AC(v41, v42);
      }

      v53 = v41(&v61);
      sub_224A3311C(&v61, &qword_27D6F4760, &unk_224DB3680);
      sub_224A4F450(v53, v1);

      sub_224A3D418(v41, v42);
    }

    else
    {
      v47 = *&v21[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem];
      if (v47)
      {
        v48 = *&v21[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem + 8];
        v49 = sub_224DAF128();
        v50 = v56;
        (*(*(v49 - 8) + 56))(v56, 1, 1, v49);
        v51 = swift_allocObject();
        v51[2] = 0;
        v51[3] = 0;
        v51[4] = v47;
        v51[5] = v48;
        v51[6] = v1;
        v51[7] = sub_224A4F448;
        v51[8] = v1;
        swift_retain_n();
        sub_224A364AC(v47, v48);
        sub_224D8E744(0, 0, v50, &unk_224DC13C0, v51);
      }

      else
      {
        sub_224A8B22C();
        v54 = swift_allocError();
        *v55 = 1;

        sub_224A4F450(v54, v1);
      }
    }
  }
}

uint64_t sub_224A4E3CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

void sub_224A4E41C(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v16 = sub_224DAB258();
  __swift_project_value_buffer(v16, qword_281365168);
  v17 = a4;

  v18 = sub_224DAB228();
  v19 = sub_224DAF2A8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v36 = a7;
    v21 = a2;
    v22 = a3;
    v23 = swift_slowAlloc();
    v35 = a1;
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v20 = 138543618;
    *(v20 + 4) = v17;
    *v23 = v17;
    *(v20 + 12) = 2082;
    v25 = v17;
    *(v20 + 14) = sub_224A33F74(a5, a6, aBlock);
    _os_log_impl(&dword_224A2F000, v18, v19, "[%{public}@] performing query - reason: %{public}s", v20, 0x16u);
    sub_224A3311C(v23, &unk_27D6F69F0, &unk_224DB3900);
    v26 = v23;
    a3 = v22;
    a2 = v21;
    a7 = v36;
    MEMORY[0x22AA5EED0](v26, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v27 = v24;
    a1 = v35;
    MEMORY[0x22AA5EED0](v27, -1, -1);
    MEMORY[0x22AA5EED0](v20, -1, -1);
  }

  sub_224A3796C(a1, aBlock, &qword_27D6F4760, &unk_224DB3680);
  if (v39)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5080, &qword_224DB3690);
    if (swift_dynamicCast())
    {
      v28 = *&v42[0];
      sub_224A3317C(a9, v42);
      v29 = swift_allocObject();
      v29[2] = a2;
      v29[3] = a3;
      v29[4] = v17;
      v29[5] = a7;
      v29[6] = v28;
      v29[7] = a8;
      sub_224A36F98(v42, (v29 + 8));
      v40 = sub_224A4ECB4;
      v41 = v29;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_224A4E888;
      v39 = &block_descriptor_142;
      v30 = _Block_copy(aBlock);
      v31 = v17;

      swift_unknownObjectRetain();
      v32 = a8;

      [v28 getAllCurrentDescriptorsWithCompletion_];
      _Block_release(v30);
      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    sub_224A3311C(aBlock, &qword_27D6F4760, &unk_224DB3680);
  }

  swift_beginAccess();
  v33 = *(a7 + 16);
  *(a7 + 16) = 0;

  sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
  v34 = sub_224CBC42C(6, 0xD000000000000029, 0x8000000224DC7120);
  a2();
}

uint64_t sub_224A4E7E8()
{

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

void sub_224A4E890(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_224A4E91C(void *a1, void *a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v41 = a7;
  v42 = a6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = v39 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = v39 - v21;
  if (a2)
  {
    v23 = a2;
    a3(a2);
  }

  else
  {
    v39[1] = a4;
    v40 = a9;
    v24 = *MEMORY[0x277CFA130];
    swift_beginAccess();
    sub_224A3796C(a5 + v24, v17, &unk_27D6F5060, &qword_224DB5620);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_224A3311C(v17, &unk_27D6F5060, &qword_224DB5620);
      v25 = v42;
      swift_beginAccess();
      v26 = *(v25 + 16);
      *(v25 + 16) = a1;
      v27 = a1;
      v28 = v40;
      v29 = a3;
      v30 = v41;
    }

    else
    {
      (*(v19 + 32))(v22, v17, v18);
      v29 = a3;
      if (a1)
      {
        v31 = sub_224DAE9C8();
        MEMORY[0x28223BE20](v31, v32);
        v39[-2] = v22;
        sub_224A4ECE8(sub_224D5BC58, &v39[-4], v33);
        sub_224DAE9F8();
        sub_224DAE9E8();
        sub_224DAE9D8();
        v34 = sub_224DAE9B8();
      }

      else
      {
        v34 = 0;
      }

      v28 = v40;
      v30 = v41;
      (*(v19 + 8))(v22, v18);
      v25 = v42;
      swift_beginAccess();
      v26 = *(v25 + 16);
      *(v25 + 16) = v34;
    }

    [v30 invalidate];
    swift_beginAccess();
    v35 = *(v25 + 16);
    v36 = v35;
    v37 = sub_224D59E14(v35, v28);

    swift_beginAccess();
    v38 = *(v25 + 16);
    *(v25 + 16) = v37;

    v29(0);
  }
}

uint64_t sub_224A4ED18(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x22AA5DCC0](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_224DAF9B8();
        sub_224DAF9F8();
        v4 = v15;
        sub_224DAFA08();
        sub_224DAF9C8();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

void sub_224A4EEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
  os_unfair_lock_lock(*(v7 + 16));
  sub_224A4EF80(v3, a2, a3, a1);
  v8 = *(v7 + 16);

  os_unfair_lock_unlock(v8);
}

uint64_t sub_224A4EF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_bundleIdentifiersToSuspensionObservers;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (*(v9 + 16))
  {

    v10 = sub_224A3A40C(a2, a3);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  sub_224A3317C(a4, v18);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_224A4F270(0, v12[2] + 1, 1, v12);
  }

  v14 = v12[2];
  v13 = v12[3];
  if (v14 >= v13 >> 1)
  {
    v12 = sub_224A4F270((v13 > 1), v14 + 1, 1, v12);
  }

  v12[2] = v14 + 1;
  sub_224A36F98(v18, &v12[5 * v14 + 4]);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a1 + v8);
  *(a1 + v8) = 0x8000000000000000;
  sub_224A4F434(v12, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + v8) = v17;
  return swift_endAccess();
}

void *sub_224A4F128(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_224A4F294(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_224A3A40C(a2, a3);
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
      sub_224A5A0DC(v20, a4 & 1, a5, a6);
      v15 = sub_224A3A40C(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_224DAFDD8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_224B29544(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a2;
  v27[1] = a3;
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
}

uint64_t sub_224A4F450(void *a1, uint64_t a2)
{
  v4 = sub_224DAB7B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DAB848();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1;
  aBlock[4] = sub_224A4F740;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_55;
  v15 = _Block_copy(aBlock);

  v16 = a1;
  sub_224DAB7E8();
  v18[1] = MEMORY[0x277D84F90];
  sub_224D42EB0(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A4C290();
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v13, v8, v15);
  _Block_release(v15);
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
}

uint64_t sub_224A4F6FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_224A4F748(uint64_t a1, void *a2)
{
  *(a1 + *(*a1 + 192)) = 0;

  v4 = *(*a1 + 168);
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;

  sub_224A4F7C4();
}

void sub_224A4F7C4()
{
  v1 = v0;
  v2 = sub_224DA9878();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v41 - v9;
  BSDispatchQueueAssert();
  if (qword_281351698 != -1)
  {
    swift_once();
  }

  v11 = sub_224DAB258();
  __swift_project_value_buffer(v11, qword_2813516A0);

  v12 = sub_224DAB228();
  v13 = sub_224DAF2A8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v44 = v15;
    *v14 = 136446722;
    v45 = v6;
    v46[0] = v15;
    v16 = *(v1 + 3);
    v42 = v12;
    v17 = v3;
    v18 = v10;
    v19 = v2;
    v21 = *&v16[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
    v20 = *&v16[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest + 8];

    v22 = sub_224A33F74(v21, v20, v46);
    v2 = v19;
    v10 = v18;

    *(v14 + 4) = v22;
    v3 = v17;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_224A33F74(0xD000000000000015, 0x8000000224DCF8E0, v46);
    *(v14 + 22) = 2114;
    *(v14 + 24) = v16;
    v23 = v43;
    *v43 = v16;
    v24 = v16;
    v6 = v45;
    v12 = v42;
    _os_log_impl(&dword_224A2F000, v42, v13, "[%{public}s]: %{public}s with task %{public}@", v14, 0x20u);
    sub_224A3311C(v23, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v23, -1, -1);
    v25 = v44;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v25, -1, -1);
    MEMORY[0x22AA5EED0](v14, -1, -1);
  }

  v26 = *(v1 + 3);
  v27 = *(v26 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion);
  if (v27)
  {
    v28 = *(v26 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion + 8);
    v29 = qword_281365420;
    swift_beginAccess();
    sub_224A4FD50(&v1[v29], v10);
    if ((*(v3 + 48))(v10, 1, v2))
    {

      sub_224A3311C(v10, &qword_27D6F32B0, &qword_224DB3EA0);
      v30 = 1.0;
    }

    else
    {
      (*(v3 + 16))(v6, v10, v2);

      sub_224A3311C(v10, &qword_27D6F32B0, &qword_224DB3EA0);
      sub_224DA97B8();
      v30 = v38;
      (*(v3 + 8))(v6, v2);
    }

    v39 = *&v1[*(*v1 + 168)];
    v40 = v39;
    v27(*&v30 ^ 0x8000000000000000, 0, v39);

    sub_224A3D418(v27, v28);
    sub_224A50268(v1);
  }

  else
  {

    v31 = sub_224DAB228();
    v32 = sub_224DAF288();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46[0] = v34;
      *v33 = 136446210;
      v35 = *(v26 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest);
      v36 = *(v26 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest + 8);

      v37 = sub_224A33F74(v35, v36, v46);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_224A2F000, v31, v32, "[%{public}s]: No task completion found.", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x22AA5EED0](v34, -1, -1);
      MEMORY[0x22AA5EED0](v33, -1, -1);
    }

    sub_224A50268(v1);
  }
}

uint64_t sub_224A4FD50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224A4FDC0(uint64_t a1, uint64_t a2, void *a3, char *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v37 = a11;
  v36 = a10;
  v34 = a5;
  v35 = a9;
  v17 = sub_224DAB7B8();
  v41 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_224DAB848();
  v39 = *(v21 - 8);
  v40 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A3317C(a6, &aBlock);
  v25 = swift_allocObject();
  v25[2] = a4;
  v25[3] = a5;
  sub_224A36F98(&aBlock, (v25 + 4));
  v25[9] = a7;
  v25[10] = a8;
  v38 = *&a4[OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue];
  sub_224A3317C(a6, v48);
  v26 = swift_allocObject();
  v27 = v35;
  *(v26 + 16) = a3;
  *(v26 + 24) = v27;
  sub_224A36F98(v48, v26 + 32);
  *(v26 + 72) = a4;
  *(v26 + 80) = v36;
  *(v26 + 88) = sub_224A58650;
  *(v26 + 96) = v25;
  *(v26 + 104) = v37;
  v46 = sub_224A50900;
  v47 = v26;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v44 = sub_224A39F40;
  v45 = &block_descriptor_127;
  v28 = _Block_copy(&aBlock);
  v29 = a4;
  v30 = v34;

  v31 = a3;

  sub_224DAB7E8();
  v42 = MEMORY[0x277D84F90];
  sub_224A39EF8(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v24, v20, v28);
  _Block_release(v28);

  (*(v41 + 8))(v20, v17);
  (*(v39 + 8))(v24, v40);
}

uint64_t sub_224A50178()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_224A501C8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

void sub_224A50268(char *a1)
{
  v2 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_224DAF728();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - v7;
  v9 = *(v2 + 184);
  swift_beginAccess();
  (*(v5 + 16))(v8, &a1[v9], v4);
  LODWORD(v9) = (*(*(AssociatedTypeWitness - 8) + 48))(v8, 1, AssociatedTypeWitness);
  (*(v5 + 8))(v8, v4);
  if (v9 == 1)
  {
    sub_224A5192C();
  }

  else
  {
    sub_224A5040C();
  }
}

uint64_t sub_224A5040C()
{
  v1 = v0;
  v2 = *(*v0 + 88);
  v37 = *(*v0 + 80);
  v38 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v4);
  v36 = &v35 - v5;
  v42 = sub_224DAF728();
  v45 = *(v42 - 8);
  v7 = MEMORY[0x28223BE20](v42, v6);
  v41 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v35 - v10;
  BSDispatchQueueAssert();
  if (qword_281351698 != -1)
  {
    swift_once();
  }

  v43 = AssociatedTypeWitness;
  v12 = sub_224DAB258();
  __swift_project_value_buffer(v12, qword_2813516A0);

  v13 = sub_224DAB228();
  v14 = sub_224DAF2A8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v46[0] = v17;
    *v15 = 136446722;
    v18 = *(v1 + 3);
    v20 = *&v18[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
    v19 = *&v18[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest + 8];

    v21 = sub_224A33F74(v20, v19, v46);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_224A33F74(0xD000000000000015, 0x8000000224DCF8C0, v46);
    *(v15 + 22) = 2114;
    *(v15 + 24) = v18;
    *v16 = v18;
    v22 = v18;
    _os_log_impl(&dword_224A2F000, v13, v14, "[%{public}s]: %{public}s with task %{public}@", v15, 0x20u);
    sub_224A3311C(v16, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v17, -1, -1);
    MEMORY[0x22AA5EED0](v15, -1, -1);
  }

  v23 = *(*v1 + 184);
  swift_beginAccess();
  v24 = v45;
  v25 = v11;
  v26 = v11;
  v27 = v42;
  v40 = *(v45 + 16);
  v40(v26, &v1[v23], v42);
  v28 = v43;
  v39 = *(v44 + 48);
  v29 = v39(v25, 1, v43);
  v30 = *(v24 + 8);
  v45 = v24 + 8;
  result = v30(v25, v27);
  if (v29 == 1)
  {
    __break(1u);
  }

  else
  {
    v32 = v41;
    v40(v41, &v1[v23], v27);
    if (v39(v32, 1, v28) == 1)
    {
      return v30(v32, v27);
    }

    else
    {
      v33 = v44;
      v34 = v36;
      (*(v44 + 32))(v36, v32, v28);
      (*(v38 + 40))(v34, v37);
      sub_224A5192C();
      return (*(v33 + 8))(v34, v28);
    }
  }

  return result;
}

void sub_224A5091C(void *a1, uint64_t a2, void *a3, char *a4, int a5, void (*a6)(void, void), uint64_t a7, uint64_t a8)
{
  v123 = a7;
  v114 = a5;
  v122 = a4;
  v13 = sub_224DAB7B8();
  v119 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v117 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_224DAB848();
  v116 = *(v118 - 8);
  MEMORY[0x28223BE20](v118, v16);
  v115 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_224DAB798();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = (&v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_224DAB878();
  v25 = MEMORY[0x28223BE20](v23, v24);
  v27 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v25, v28);
  if (a1)
  {
    v112 = &v106 - v30;
    v113 = v31;
    v120 = v29;
    v32 = a1;
    if (a2 < 1)
    {
      if (qword_281351708 != -1)
      {
        swift_once();
      }

      v57 = sub_224DAB258();
      __swift_project_value_buffer(v57, qword_281365168);
      sub_224A3317C(a3, &aBlock);
      v58 = a1;
      v59 = sub_224DAB228();
      v60 = sub_224DAF288();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v109 = a6;
        v63 = v62;
        v64 = swift_slowAlloc();
        *&v129[0] = v64;
        *v61 = 138543618;
        __swift_project_boxed_opaque_existential_1(&aBlock, v126);
        v65 = sub_224DAE338();
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        *(v61 + 4) = v65;
        *v63 = v65;
        *(v61 + 12) = 2082;
        v130 = a1;
        v66 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
        v67 = sub_224DAEE28();
        v69 = sub_224A33F74(v67, v68, v129);

        *(v61 + 14) = v69;
        _os_log_impl(&dword_224A2F000, v59, v60, "[%{public}@] query failed - will try lazy reload later: %{public}s", v61, 0x16u);
        sub_224A3311C(v63, &unk_27D6F69F0, &unk_224DB3900);
        v70 = v63;
        a6 = v109;
        MEMORY[0x22AA5EED0](v70, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v64);
        MEMORY[0x22AA5EED0](v64, -1, -1);
        MEMORY[0x22AA5EED0](v61, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&aBlock);
      }

      v97 = a1;
      a6(0, a1);
    }

    else
    {
      v111 = a2;
      v110 = v13;
      if (qword_281351708 != -1)
      {
        swift_once();
      }

      v33 = sub_224DAB258();
      __swift_project_value_buffer(v33, qword_281365168);
      sub_224A3317C(a3, &aBlock);
      v34 = a1;
      v35 = sub_224DAB228();
      v36 = sub_224DAF288();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v109 = a6;
        v38 = v37;
        v39 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        *&v129[0] = v108;
        *v38 = 138543874;
        v107 = v36;
        v121 = a3;
        __swift_project_boxed_opaque_existential_1(&aBlock, v126);
        v106 = v35;
        v40 = sub_224DAE338();
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        *(v38 + 4) = v40;
        v41 = v39;
        *v39 = v40;
        *(v38 + 12) = 2050;
        *(v38 + 14) = v111;
        *(v38 + 22) = 2082;
        v130 = a1;
        v42 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
        v43 = sub_224DAEE28();
        v45 = sub_224A33F74(v43, v44, v129);
        a3 = v121;

        *(v38 + 24) = v45;
        v46 = v106;
        _os_log_impl(&dword_224A2F000, v106, v107, "[%{public}@] query failed - retrying in 3 seconds (%{public}ld attempts remaining): %{public}s", v38, 0x20u);
        sub_224A3311C(v41, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v41, -1, -1);
        v47 = v108;
        __swift_destroy_boxed_opaque_existential_1(v108);
        MEMORY[0x22AA5EED0](v47, -1, -1);
        v48 = v109;
        MEMORY[0x22AA5EED0](v38, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        v48 = a6;
      }

      v71 = v122;
      v121 = *&v122[OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue];
      sub_224DAB858();
      *v22 = 3;
      (*(v19 + 104))(v22, *MEMORY[0x277D85188], v18);
      v72 = v112;
      sub_224DAB868();
      (*(v19 + 8))(v22, v18);
      v113 = *(v113 + 8);
      (v113)(v27, v120);
      sub_224A3317C(a3, v129);
      v73 = swift_allocObject();
      *(v73 + 16) = v71;
      sub_224A36F98(v129, v73 + 24);
      *(v73 + 64) = v111;
      *(v73 + 72) = v114 & 1;
      v74 = v123;
      *(v73 + 80) = v48;
      *(v73 + 88) = v74;
      *(v73 + 96) = a1;
      v127 = sub_224D5BC3C;
      v128 = v73;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v125 = sub_224A39F40;
      v126 = &block_descriptor_136;
      v75 = _Block_copy(&aBlock);
      v76 = a1;
      v77 = v71;

      v78 = v115;
      sub_224DAB7E8();
      v130 = MEMORY[0x277D84F90];
      sub_224A39EF8(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
      sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
      v79 = v117;
      v80 = v110;
      sub_224DAF788();
      MEMORY[0x22AA5D6A0](v72, v78, v79, v75);
      _Block_release(v75);

      (*(v119 + 8))(v79, v80);
      (*(v116 + 8))(v78, v118);
      (v113)(v72, v120);
    }
  }

  else
  {
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v49 = sub_224DAB258();
    __swift_project_value_buffer(v49, qword_281365168);
    v121 = a3;
    sub_224A3317C(a3, &aBlock);
    v50 = sub_224DAB228();
    v51 = sub_224DAF2A8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = a6;
      v54 = swift_slowAlloc();
      *v52 = 138543362;
      __swift_project_boxed_opaque_existential_1(&aBlock, v126);
      v55 = sub_224DAE338();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      *(v52 + 4) = v55;
      *v54 = v55;
      _os_log_impl(&dword_224A2F000, v50, v51, "[%{public}@] query completed", v52, 0xCu);
      sub_224A3311C(v54, &unk_27D6F69F0, &unk_224DB3900);
      v56 = v54;
      a6 = v53;
      MEMORY[0x22AA5EED0](v56, -1, -1);
      MEMORY[0x22AA5EED0](v52, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    swift_beginAccess();
    v81 = *(a8 + 16);
    if (v81)
    {
      sub_224A3317C(v121, &aBlock);
      v82 = v81;
      v83 = sub_224DAB228();
      v84 = sub_224DAF2A8();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        *v85 = 138543874;
        __swift_project_boxed_opaque_existential_1(&aBlock, v126);
        v87 = sub_224DAE338();
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        *(v85 + 4) = v87;
        *v86 = v87;
        *(v85 + 12) = 2050;
        v88 = sub_224DAE9C8();
        if (v88 >> 62)
        {
          v89 = sub_224DAF838();
        }

        else
        {
          v89 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v85 + 14) = v89;

        *(v85 + 22) = 2050;
        v90 = sub_224DAE9D8();
        if (v90 >> 62)
        {
          v91 = sub_224DAF838();
        }

        else
        {
          v91 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v85 + 24) = v91;

        _os_log_impl(&dword_224A2F000, v83, v84, "[%{public}@] query returned %{public}ld widget descriptors, %{public}ld controls", v85, 0x20u);
        sub_224A3311C(v86, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v86, -1, -1);
        MEMORY[0x22AA5EED0](v85, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&aBlock);
      }

      sub_224A3317C(v121, &aBlock);
      v98 = swift_allocObject();
      sub_224A36F98(&aBlock, (v98 + 2));
      v99 = v122;
      v100 = v123;
      v98[7] = v122;
      v98[8] = a6;
      v98[9] = v100;
      v101 = v99;

      sub_224A51E10(v82, sub_224A54124, v98);
    }

    else
    {
      sub_224A3317C(v121, &aBlock);
      v92 = sub_224DAB228();
      v93 = sub_224DAF298();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *v94 = 138543362;
        __swift_project_boxed_opaque_existential_1(&aBlock, v126);
        v96 = sub_224DAE338();
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        *(v94 + 4) = v96;
        *v95 = v96;
        _os_log_impl(&dword_224A2F000, v92, v93, "[%{public}@] query failed without error", v94, 0xCu);
        sub_224A3311C(v95, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v95, -1, -1);
        MEMORY[0x22AA5EED0](v94, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&aBlock);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_224DB2780;
      __swift_project_boxed_opaque_existential_1(v121, v121[3]);
      *(inited + 32) = sub_224DAE338();
      v103 = &v122[OBJC_IVAR____TtC10ChronoCore17DescriptorService_preferences];
      swift_beginAccess();
      v104 = *(v103 + 24);
      v105 = *(v103 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v103, v104);
      (*(v105 + 40))(inited, v104, v105);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_endAccess();
      a6(0, 0);
    }
  }
}

uint64_t sub_224A51884()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_224A518CC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

void sub_224A5192C()
{
  v1 = v0;
  v2 = *v0;
  BSDispatchQueueAssert();
  v3 = *(*v0 + 200);
  if (*(v0 + v3) == 1)
  {
    if (qword_281351698 != -1)
    {
      swift_once();
    }

    v4 = sub_224DAB258();
    __swift_project_value_buffer(v4, qword_2813516A0);

    oslog = sub_224DAB228();
    v5 = sub_224DAF288();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v29 = v8;
      *v6 = 136446722;
      v9 = v1[3];
      v10 = *&v9[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
      v11 = *&v9[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest + 8];

      v12 = sub_224A33F74(v10, v11, &v29);

      *(v6 + 4) = v12;
      *(v6 + 12) = 2082;
      *(v6 + 14) = sub_224A33F74(0xD000000000000015, 0x8000000224DCF8A0, &v29);
      *(v6 + 22) = 2114;
      *(v6 + 24) = v9;
      *v7 = v9;
      v13 = v9;
      _os_log_impl(&dword_224A2F000, oslog, v5, "[%{public}s]: %{public}s with task %{public}@ has already completed", v6, 0x20u);
      sub_224A3311C(v7, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v7, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v8, -1, -1);
      MEMORY[0x22AA5EED0](v6, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    *(v0 + v3) = 1;
    if (qword_281351698 != -1)
    {
      swift_once();
    }

    v14 = sub_224DAB258();
    __swift_project_value_buffer(v14, qword_2813516A0);

    v15 = sub_224DAB228();
    v16 = sub_224DAF2A8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v17 = 136446722;
      v20 = v1[3];
      v21 = *&v20[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
      v22 = *&v20[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest + 8];

      v23 = sub_224A33F74(v21, v22, &v29);

      *(v17 + 4) = v23;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_224A33F74(0xD000000000000015, 0x8000000224DCF8A0, &v29);
      *(v17 + 22) = 2114;
      *(v17 + 24) = v20;
      *v18 = v20;
      v24 = v20;
      _os_log_impl(&dword_224A2F000, v15, v16, "[%{public}s]: %{public}s with task %{public}@", v17, 0x20u);
      sub_224A3311C(v18, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v18, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v19, -1, -1);
      MEMORY[0x22AA5EED0](v17, -1, -1);
    }

    v25 = v1 + *(*v1 + 160);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v26 = *(v25 + 1);
      ObjectType = swift_getObjectType();
      (*(v26 + 16))(v1, *(v2 + 80), *(v2 + 88), ObjectType, v26);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_224A51E10(void *a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v43 = a2;
  v4 = sub_224DAB7B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAB848();
  v47 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v44 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = dispatch_group_create();
  type metadata accessor for UnfairLock();
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *v13 = 0;
  v14 = v12;
  *(v12 + 16) = v13;
  dispatch_group_enter(v11);
  v15 = swift_allocObject();
  *(v15 + 16) = MEMORY[0x277D84F90];
  v16 = sub_224DAE9C8();
  v17 = v16;
  v48 = v8;
  v49 = v5;
  if (v16 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C38, qword_224DC1A58);
    v40 = sub_224DAFB68();

    v17 = v40;
  }

  else
  {
    v18 = v16 & 0xFFFFFFFFFFFFFF8;

    sub_224DAFD98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C38, qword_224DC1A58);
    if (swift_dynamicCastMetatype() || (v36 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_3:
    }

    else
    {
      v37 = v18 + 32;
      while (1)
      {
        aBlock[7] = &unk_283850EC8;
        if (!swift_dynamicCastObjCProtocolConditional())
        {
          break;
        }

        v37 += 8;
        if (!--v36)
        {
          goto LABEL_3;
        }
      }

      v17 = v18 | 1;
    }
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = v11;

  v20 = v11;
  v21 = v51;
  sub_224A524EC(v17, sub_224A53D14, v19, v51, v14);

  dispatch_group_enter(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = MEMORY[0x277D84F90];
  v23 = sub_224DAE9D8();
  v24 = v23;
  v50 = v4;
  if (v23 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C38, qword_224DC1A58);
    v41 = sub_224DAFB68();

    v24 = v41;
  }

  else
  {
    v25 = v23 & 0xFFFFFFFFFFFFFF8;

    sub_224DAFD98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C38, qword_224DC1A58);
    if (swift_dynamicCastMetatype() || (v38 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
    }

    else
    {
      v39 = v25 + 32;
      while (1)
      {
        aBlock[6] = &unk_283850EC8;
        if (!swift_dynamicCastObjCProtocolConditional())
        {
          break;
        }

        v39 += 8;
        if (!--v38)
        {

          v21 = v51;
          goto LABEL_7;
        }
      }

      v24 = v25 | 1;
      v21 = v51;
    }
  }

LABEL_7:
  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  *(v26 + 24) = v20;
  v51 = v20;

  sub_224A524EC(v24, sub_224A53E7C, v26, v21, v14);

  v42 = *(&v21->isa + OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue);
  v27 = swift_allocObject();
  v27[2] = v15;
  v27[3] = a1;
  v28 = v43;
  v27[4] = v22;
  v27[5] = v28;
  v27[6] = v45;
  aBlock[4] = sub_224A53EA8;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_91_0;
  v29 = _Block_copy(aBlock);

  v30 = a1;

  v31 = v44;
  sub_224DAB7E8();
  v52 = MEMORY[0x277D84F90];
  sub_224A39EF8(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  v32 = v46;
  v33 = v50;
  sub_224DAF788();
  v34 = v51;
  sub_224DAF308();
  _Block_release(v29);

  (*(v49 + 8))(v32, v33);
  (*(v47 + 8))(v31, v48);
}

uint64_t sub_224A52490()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224A524EC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a5;
  v53 = a4;
  v46 = a3;
  v45 = a2;
  v52 = sub_224DAB7B8();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v6);
  v49 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_224DAB848();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v8);
  v47 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = swift_allocObject();
  *(v59 + 16) = a1;

  v66 = dispatch_group_create();
  v68 = a1;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
  {
    v11 = 0;
    v56 = (v53 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_intentResolver);
    v12 = v68 & 0xC000000000000001;
    v67 = v68 & 0xFFFFFFFFFFFFFF8;
    v54 = &v72;
    v13 = &selRef_pairingState;
    v57 = i;
    v55 = v68 & 0xC000000000000001;
    while (1)
    {
      if (v12)
      {
        v16 = MEMORY[0x22AA5DCC0](v11, v68);
      }

      else
      {
        if (v11 >= *(v67 + 16))
        {
          goto LABEL_15;
        }

        v16 = *(v68 + 8 * v11 + 32);
      }

      v15 = v16;
      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v18 = [v16 v13[202]];
      if (v18)
      {
        v14 = v18;

        v15 = v14;
      }

      else
      {
        v19 = [v15 intentType];
        if (v19)
        {
          v20 = v19;
          v65 = sub_224DAEE18();
          v61 = v21;

          dispatch_group_enter(v66);
          v22 = __swift_project_boxed_opaque_existential_1(v56, v56[3]);
          v23 = [v15 extensionIdentity];
          swift_beginAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
          v24 = sub_224DA9FE8();
          v60 = v24;
          v64 = v25;
          swift_endAccess();

          v26 = swift_allocObject();
          v28 = v58;
          v27 = v59;
          v26[2] = v15;
          v26[3] = v28;
          v26[4] = v27;
          v26[5] = v11;
          v26[6] = v66;
          v29 = __swift_project_boxed_opaque_existential_1(v22, v22[3]);
          v30 = swift_allocObject();
          v31 = v61;
          v30[2] = v65;
          v30[3] = v31;
          v30[4] = v24;
          v30[5] = v64;
          v30[6] = sub_224D5BC1C;
          v30[7] = v26;
          v62 = *v29;
          v32 = objc_allocWithZone(MEMORY[0x277D21538]);
          v63 = v15;

          v33 = v66;

          v34 = sub_224DAEDE8();
          v35 = sub_224DAEDE8();
          v15 = [v32 initWithExtensionBundleIdentifier:v34 intentType:v35];

          v74 = sub_224D5BC2C;
          v75 = v30;
          aBlock = MEMORY[0x277D85DD0];
          v71 = 1107296256;
          v72 = sub_224A4E888;
          v73 = &block_descriptor_103;
          v36 = _Block_copy(&aBlock);

          i = v57;
          [v62 provideIntentWithOptions:v15 completionHandler:v36];
          v12 = v55;
          _Block_release(v36);

          v13 = &selRef_pairingState;
        }
      }

      ++v11;
      if (v17 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:
  v37 = swift_allocObject();
  v38 = v46;
  v37[2] = v45;
  v37[3] = v38;
  v37[4] = v59;
  v74 = sub_224A53CA0;
  v75 = v37;
  aBlock = MEMORY[0x277D85DD0];
  v71 = 1107296256;
  v72 = sub_224A39F40;
  v73 = &block_descriptor_109;
  v39 = _Block_copy(&aBlock);

  v40 = v47;
  sub_224DAB7E8();
  v69 = MEMORY[0x277D84F90];
  sub_224A39EF8(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  v41 = v49;
  v42 = v52;
  sub_224DAF788();
  v43 = v66;
  sub_224DAF308();

  _Block_release(v39);
  (*(v51 + 8))(v41, v42);
  (*(v48 + 8))(v40, v50);
}

uint64_t sub_224A52C44()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224A52C94()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224A52CDC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224A52D24(uint64_t a1)
{
  v2 = sub_224DAB7B8();
  v92 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v91 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224DAB848();
  v89 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v88 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAE6E8();
  v9 = *(v8 - 8);
  v104 = v8;
  v105 = v9;
  MEMORY[0x28223BE20](v8, v10);
  v103 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_224DACAE8();
  v96 = *(v94 - 8);
  v13 = MEMORY[0x28223BE20](v94, v12);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v95 = &v81 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v81 - v20;
  v86 = *(a1 + 24);
  v22 = qword_281365420;
  swift_beginAccess();
  v93 = a1;
  sub_224A3796C(a1 + v22, v21, &qword_27D6F32B0, &qword_224DB3EA0);
  v23 = sub_224DA9878();
  v24 = *(v23 - 8);
  v25 = (*(v24 + 48))(v21, 1, v23);
  v102 = v15;
  if (v25 == 1)
  {
    sub_224A3311C(v21, &qword_27D6F32B0, &qword_224DB3EA0);
    v26 = 1.0;
  }

  else
  {
    sub_224DA97B8();
    v26 = v27;
    (*(v24 + 8))(v21, v23);
  }

  sub_224DA97B8();
  v29 = v28;
  v30 = v96 + 104;
  v31 = v95;
  v32 = v94;
  v33 = *(v96 + 104);
  v33(v95, *MEMORY[0x277CF9B28], v94);
  v34 = sub_224A53744();
  v35 = v92;
  v36 = v91;
  v90 = v5;
  if (v34)
  {
    v85 = v2;
    v37 = v34;
    v38 = v34;
    v39 = sub_224DA9518();

    v40 = [v39 code];
    v42 = v104;
    v41 = v105;
    v43 = *(v105 + 104);
    v44 = v31;
    v45 = v103;
    v100 = *MEMORY[0x277CE3C58];
    v98 = v43;
    v99 = v105 + 104;
    v43(v103);
    v46 = sub_224DAE6D8();
    v47 = *(v41 + 8);
    v105 = v41 + 8;
    v97 = v47;
    v47(v45, v42);
    v48 = v96;
    v49 = *(v96 + 8);
    v83 = v96 + 8;
    v82 = v49;
    v49(v44, v32);
    v50 = MEMORY[0x277CF9B30];
    if (v40 == v46)
    {
      v50 = MEMORY[0x277CF9B38];
    }

    v51 = v102;
    v52 = v33;
    v33(v102, *v50, v32);
    (*(v48 + 32))(v44, v51, v32);
    v84 = v39;
    v53 = [v39 underlyingErrors];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
    v54 = sub_224DAF008();

    v55 = sub_224B420E8(v54);

    v56 = v30;
    v57 = v52;
    if (v55 >> 62)
    {
LABEL_22:
      v101 = v55 & 0xFFFFFFFFFFFFFF8;
      v102 = sub_224DAF838();
    }

    else
    {
      v101 = v55 & 0xFFFFFFFFFFFFFF8;
      v102 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v58 = 0;
    v59 = v55 & 0xC000000000000001;
    while (v102 != v58)
    {
      if (v59)
      {
        v60 = MEMORY[0x22AA5DCC0](v58, v55);
      }

      else
      {
        if (v58 >= *(v101 + 16))
        {
          goto LABEL_21;
        }

        v60 = *(v55 + 8 * v58 + 32);
      }

      v61 = v60;
      if (__OFADD__(v58, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v62 = v55;
      v63 = v57;
      v64 = [v60 code];
      v65 = v103;
      v66 = v56;
      v67 = v104;
      v98(v103, v100, v104);
      v68 = sub_224DAE6D8();

      v69 = v67;
      v56 = v66;
      v97(v65, v69);
      ++v58;
      v57 = v63;
      v55 = v62;
      if (v64 == v68)
      {
        v31 = v95;
        v70 = v94;
        v82(v95, v94);

        v57(v31, *MEMORY[0x277CF9B38], v70);
        v2 = v85;
        v35 = v92;
        v36 = v91;
        goto LABEL_19;
      }
    }

    v2 = v85;
    v35 = v92;
    v36 = v91;
    v31 = v95;
  }

LABEL_19:
  v71 = -v26;
  v72 = v86;
  v73 = v87;
  sub_224A53778(v86, v31, v71);
  v105 = *(v73 + *((*MEMORY[0x277D85000] & *v73) + 0xC8));
  v74 = swift_allocObject();
  *(v74 + 16) = v73;
  *(v74 + 24) = v72;
  *(v74 + 32) = v93;
  *(v74 + 40) = v71;
  *(v74 + 48) = -v29;
  aBlock[4] = sub_224A54A1C;
  aBlock[5] = v74;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_8;
  v75 = _Block_copy(aBlock);
  v76 = v73;
  v77 = v72;

  v78 = v88;
  sub_224DAB7E8();
  v106 = MEMORY[0x277D84F90];
  sub_224A43A04(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  v79 = v96;
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v78, v36, v75);
  _Block_release(v75);
  (*(v35 + 8))(v36, v2);
  (*(v89 + 8))(v78, v90);
  (*(v79 + 8))(v95, v94);
}

uint64_t sub_224A536FC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224A53778(uint64_t a1, uint64_t a2, double a3)
{
  v27[0] = a1;
  v6 = *v3;
  v7 = *MEMORY[0x277D85000];
  v30 = sub_224DAB7B8();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v8);
  v28 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_224DAB848();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DACAE8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v27[1] = *(v3 + *((v7 & v6) + 0xD0));
  (*(v14 + 16))(v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v13);
  v17 = (*(v14 + 80) + 56) & ~*(v14 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = *((v7 & v6) + 0x50);
  v19 = *((v7 & v6) + 0x58);
  v20 = v27[0];
  *(v18 + 24) = v19;
  *(v18 + 32) = v20;
  *(v18 + 40) = v3;
  *(v18 + 48) = a3;
  (*(v14 + 32))(v18 + v17, v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  aBlock[4] = sub_224A55F3C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_22;
  v21 = _Block_copy(aBlock);
  v22 = v20;
  v23 = v3;
  sub_224DAB7E8();
  v33 = MEMORY[0x277D84F90];
  sub_224A43A04(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  v24 = v28;
  v25 = v30;
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v12, v24, v21);
  _Block_release(v21);
  (*(v32 + 8))(v24, v25);
  (*(v29 + 8))(v12, v31);
}

uint64_t sub_224A53B8C()
{
  v1 = sub_224DACAE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224A53C60()
{
  MEMORY[0x22AA5EED0](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t sub_224A53CAC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  a1(v4);
}

void sub_224A53D40(unint64_t a1, uint64_t a2, NSObject *a3, unint64_t *a4, void *a5)
{
  v9 = a1;
  if (a1 >> 62)
  {
    sub_224A3B79C(0, a4, a5);

    v13 = sub_224DAFB68();

    v9 = v13;
  }

  else
  {
    v10 = a1 & 0xFFFFFFFFFFFFFF8;

    sub_224DAFD98();
    sub_224A3B79C(0, a4, a5);
    if (!swift_dynamicCastMetatype())
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        v12 = v10 + 32;
        while (1)
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            break;
          }

          v12 += 8;
          if (!--v11)
          {
            goto LABEL_3;
          }
        }

        v9 = v10 | 1;
      }
    }
  }

LABEL_3:
  swift_beginAccess();
  *(a2 + 16) = v9;

  dispatch_group_leave(a3);
}

void sub_224A53ED8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  sub_224DAE9F8();
  swift_beginAccess();

  sub_224DAE9E8();
  swift_beginAccess();

  v7 = sub_224DAE9B8();
  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v8 = sub_224DAB258();
  __swift_project_value_buffer(v8, qword_281365168);

  v9 = sub_224DAB228();
  v10 = sub_224DAF2A8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134349312;
    swift_beginAccess();
    v12 = *(a1 + 16);
    if (v12 >> 62)
    {
      v13 = sub_224DAF838();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 4) = v13;

    *(v11 + 12) = 2050;
    swift_beginAccess();
    v14 = *(a3 + 16);
    if (v14 >> 62)
    {
      v15 = sub_224DAF838();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 14) = v15;

    _os_log_impl(&dword_224A2F000, v9, v10, "Resolved default intents for descriptors: %{public}ld, controls: %{public}ld", v11, 0x16u);
    MEMORY[0x22AA5EED0](v11, -1, -1);
  }

  else
  {
  }

  a4(v7);
}

unint64_t sub_224A54134(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, void))
{
  result = sub_224DAE9C8();
  v6 = result;
  if (result >> 62)
  {
    result = sub_224DAF838();
    v7 = result;
  }

  else
  {
    v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = &unk_281351000;
  v83 = a2;
  if (v7)
  {
    if (v7 < 1)
    {
      __break(1u);
      goto LABEL_55;
    }

    v9 = 0;
    v10 = v6 & 0xC000000000000001;
    v77 = v7;
    v80 = v6;
    v74 = v6 & 0xC000000000000001;
    do
    {
      if (v10)
      {
        v11 = MEMORY[0x22AA5DCC0](v9, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v9 + 32);
      }

      v12 = v11;
      if (v8[225] != -1)
      {
        swift_once();
      }

      v13 = sub_224DAB258();
      __swift_project_value_buffer(v13, qword_281365168);
      sub_224A3317C(a2, v85);
      v14 = v12;
      v15 = sub_224DAB228();
      v16 = sub_224DAF2A8();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v84 = v19;
        *v17 = 138543618;
        __swift_project_boxed_opaque_existential_1(v85, v86);
        v20 = sub_224DAE338();
        __swift_destroy_boxed_opaque_existential_1(v85);
        *(v17 + 4) = v20;
        *v18 = v20;
        *(v17 + 12) = 2082;
        v21 = [v14 succinctDescription];
        if (v21)
        {
          v22 = v21;
          v23 = sub_224DAEE18();
          v25 = v24;
        }

        else
        {
          v25 = 0xE300000000000000;
          v23 = 7104878;
        }

        v26 = sub_224A33F74(v23, v25, &v84);

        *(v17 + 14) = v26;
        _os_log_impl(&dword_224A2F000, v15, v16, "[%{public}@] Found: %{public}s", v17, 0x16u);
        sub_224A3311C(v18, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v18, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x22AA5EED0](v19, -1, -1);
        MEMORY[0x22AA5EED0](v17, -1, -1);

        v6 = v80;
        a2 = v83;
        v8 = &unk_281351000;
        v10 = v74;
        v7 = v77;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v85);
      }

      ++v9;
    }

    while (v7 != v9);
  }

  result = sub_224DAE9D8();
  v27 = result;
  if (result >> 62)
  {
    result = sub_224DAF838();
    v28 = result;
    if (!result)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v28 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v28)
    {
      goto LABEL_36;
    }
  }

  if (v28 < 1)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v29 = 0;
  v30 = v27 & 0xC000000000000001;
  v78 = v28;
  v81 = v27;
  v75 = v27 & 0xC000000000000001;
  do
  {
    if (v30)
    {
      v31 = MEMORY[0x22AA5DCC0](v29, v27);
    }

    else
    {
      v31 = *(v27 + 8 * v29 + 32);
    }

    v32 = v31;
    if (v8[225] != -1)
    {
      swift_once();
    }

    v33 = sub_224DAB258();
    __swift_project_value_buffer(v33, qword_281365168);
    sub_224A3317C(a2, v85);
    v34 = v32;
    v35 = sub_224DAB228();
    v36 = sub_224DAF2A8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v84 = v39;
      *v37 = 138543618;
      __swift_project_boxed_opaque_existential_1(v85, v86);
      v40 = sub_224DAE338();
      __swift_destroy_boxed_opaque_existential_1(v85);
      *(v37 + 4) = v40;
      *v38 = v40;
      *(v37 + 12) = 2082;
      v41 = [v34 succinctDescription];
      if (v41)
      {
        v42 = v41;
        v43 = sub_224DAEE18();
        v45 = v44;
      }

      else
      {
        v45 = 0xE300000000000000;
        v43 = 7104878;
      }

      v46 = sub_224A33F74(v43, v45, &v84);

      *(v37 + 14) = v46;
      _os_log_impl(&dword_224A2F000, v35, v36, "[%{public}@] Found: %{public}s", v37, 0x16u);
      sub_224A3311C(v38, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x22AA5EED0](v39, -1, -1);
      MEMORY[0x22AA5EED0](v37, -1, -1);

      v27 = v81;
      a2 = v83;
      v8 = &unk_281351000;
      v30 = v75;
      v28 = v78;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v85);
    }

    ++v29;
  }

  while (v28 != v29);
LABEL_36:

  result = sub_224DAE9E8();
  v47 = result;
  if (!(result >> 62))
  {
    v48 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v48)
    {
      goto LABEL_38;
    }

LABEL_53:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_224DB2780;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    *(inited + 32) = sub_224DAE338();
    v68 = a3 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_preferences;
    swift_beginAccess();
    v69 = *(v68 + 24);
    v70 = *(v68 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v68, v69);
    (*(v70 + 40))(inited, v69, v70);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_endAccess();
    return a4(a1, 0);
  }

  result = sub_224DAF838();
  v48 = result;
  if (!result)
  {
    goto LABEL_53;
  }

LABEL_38:
  if (v48 >= 1)
  {
    v49 = 0;
    v50 = v47 & 0xC000000000000001;
    v79 = v48;
    v82 = v47;
    v76 = v47 & 0xC000000000000001;
    do
    {
      if (v50)
      {
        v51 = MEMORY[0x22AA5DCC0](v49, v47);
      }

      else
      {
        v51 = *(v47 + 8 * v49 + 32);
      }

      v52 = v51;
      if (v8[225] != -1)
      {
        swift_once();
      }

      v53 = sub_224DAB258();
      __swift_project_value_buffer(v53, qword_281365168);
      sub_224A3317C(a2, v85);
      v54 = v52;
      v55 = sub_224DAB228();
      v56 = sub_224DAF2A8();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v84 = v59;
        *v57 = 138543618;
        __swift_project_boxed_opaque_existential_1(v85, v86);
        v60 = sub_224DAE338();
        __swift_destroy_boxed_opaque_existential_1(v85);
        *(v57 + 4) = v60;
        *v58 = v60;
        *(v57 + 12) = 2082;
        v61 = [v54 succinctDescription];
        if (v61)
        {
          v62 = v61;
          v63 = sub_224DAEE18();
          v65 = v64;
        }

        else
        {
          v65 = 0xE300000000000000;
          v63 = 7104878;
        }

        v66 = sub_224A33F74(v63, v65, &v84);

        *(v57 + 14) = v66;
        _os_log_impl(&dword_224A2F000, v55, v56, "[%{public}@] Found: %{public}s", v57, 0x16u);
        sub_224A3311C(v58, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v58, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v59);
        MEMORY[0x22AA5EED0](v59, -1, -1);
        MEMORY[0x22AA5EED0](v57, -1, -1);

        v47 = v82;
        a2 = v83;
        v8 = &unk_281351000;
        v50 = v76;
        v48 = v79;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v85);
      }

      ++v49;
    }

    while (v48 != v49);
    goto LABEL_53;
  }

LABEL_56:
  __break(1u);
  return result;
}

void sub_224A54A2C(uint64_t *a1, void *a2, uint64_t a3, double a4, double a5)
{
  v10 = *(a1 + *((*MEMORY[0x277D85000] & *a1) + 0x88));
  os_unfair_lock_lock(*(v10 + 16));
  sub_224A54C20(a1, a2, a3);
  os_unfair_lock_unlock(*(v10 + 16));
  if (qword_2813516B8 != -1)
  {
    swift_once();
  }

  v11 = sub_224DAB258();
  __swift_project_value_buffer(v11, qword_281365108);
  v12 = a2;
  v13 = sub_224DAB228();
  v14 = sub_224DAF2A8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = v16;
    *v15 = 136446722;
    *(v15 + 4) = sub_224A33F74(*&v12[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest], *&v12[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest + 8], &v17);
    *(v15 + 12) = 2050;
    *(v15 + 14) = a4;
    *(v15 + 22) = 2050;
    *(v15 + 24) = a5;
    _os_log_impl(&dword_224A2F000, v13, v14, "[%{public}s]: task session completed in %{public}fs. time since creation: %{public}fs", v15, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x22AA5EED0](v16, -1, -1);
    MEMORY[0x22AA5EED0](v15, -1, -1);
  }

  sub_224A57734(*(a3 + 40));
}

uint64_t sub_224A54C20(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *MEMORY[0x277D85000];
  v7 = (a1 + *((*MEMORY[0x277D85000] & *a1) + 0xA8));
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_224A54DB8(a2 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier, *(a3 + 32));
  swift_beginAccess();
  sub_224DA9908();
  type metadata accessor for TaskSession(255, *((v6 & v5) + 0x50), *((v6 & v5) + 0x58), v8);
  sub_224A43A04(&qword_281351A18, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_224DAED48();
  sub_224DAED08();
  swift_endAccess();

  sub_224A57680(a2);
  return sub_224A57704(a2);
}

void sub_224A54DB8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_224DA9908();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock);
  os_unfair_lock_lock(*(v11 + 16));
  swift_beginAccess();
  v12 = sub_224A55124(a1);
  swift_endAccess();
  os_unfair_lock_unlock(*(v11 + 16));
  if (v12)
  {
    if (qword_2813515F0 != -1)
    {
      swift_once();
    }

    v13 = sub_224DAB258();
    __swift_project_value_buffer(v13, qword_281364F88);
    (*(v7 + 16))(v10, a1, v6);
    v14 = sub_224DAB228();
    v15 = sub_224DAF2A8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v43 = v16;
      v45 = swift_slowAlloc();
      v47[0] = v45;
      *v16 = 136446210;
      v44 = v15;
      v46 = sub_224DA98E8();
      sub_224A3F6A4();
      v17 = sub_224DAEF18();
      v19 = sub_224A3D19C(8, v17, v18);
      v41 = v6;
      v42 = v14;
      v20 = v19;
      v22 = v21;
      LOBYTE(v16) = a2;
      v24 = v23;
      v25 = v12;
      v27 = v26;

      v28 = v24;
      a2 = v16;
      v29 = MEMORY[0x22AA5D1C0](v20, v22, v28, v27);
      v31 = v30;
      v12 = v25;

      (*(v7 + 8))(v10, v41);
      v32 = sub_224A33F74(v29, v31, v47);

      v34 = v42;
      v33 = v43;
      *(v43 + 1) = v32;
      v35 = v33;
      _os_log_impl(&dword_224A2F000, v34, v44, "[%{public}s]: activity completed", v33, 0xCu);
      v36 = v45;
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x22AA5EED0](v36, -1, -1);
      MEMORY[0x22AA5EED0](v35, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    v37 = (v3 + OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProvider);
    v38 = *(v3 + OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProvider + 24);
    v39 = *(v3 + OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProvider + 32);
    __swift_project_boxed_opaque_existential_1(v37, v38);
    (*(v39 + 32))(v12, a2 & 1, v38, v39);
  }
}

uint64_t sub_224A55178(uint64_t a1)
{
  sub_224A3317C(a1 + 32, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4970, qword_224DB8EF0);
  type metadata accessor for DuetTaskActivityContext(0);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = *(v4 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock);
    v3 = *(v2 + 16);

    os_unfair_lock_lock(v3);
    sub_224A55250(v4);
    os_unfair_lock_unlock(*(v2 + 16));
  }

  return result;
}

uint64_t sub_224A55250(uint64_t a1)
{
  v3 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v108 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v107 = &v91 - v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v111 = &v91 - v12;
  MEMORY[0x28223BE20](v11, v13);
  v110 = &v91 - v14;
  v113 = sub_224DA9878();
  v116 = *(v113 - 8);
  MEMORY[0x28223BE20](v113, v15);
  v114 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4440, &unk_224DBA100);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v109 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v91 - v22;
  v24 = type metadata accessor for ExtensionTask.Identifier(0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_224DABE18();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v91 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_224A55CF0(v33, a1);

  v34 = *(a1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__activity);
  sub_224A4152C(v34 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_taskIdentifier, v27, type metadata accessor for ExtensionTask.Identifier);
  if (swift_getEnumCaseMultiPayload() != 7)
  {
    return sub_224A42478(v27, type metadata accessor for ExtensionTask.Identifier);
  }

  v106 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);

  (*(v29 + 32))(v32, v27, v28);
  v35 = *(a1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_completedRateLimitIdentifier + 8);
  v102 = *(a1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_completedRateLimitIdentifier);
  v103 = a1;
  v99 = OBJC_IVAR____TtC10ChronoCore12TaskActivity_duetBudgetIdentity;
  sub_224A3796C(v34 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_duetBudgetIdentity, v23, &unk_27D6F4440, &unk_224DBA100);
  v36 = sub_224DAD738();
  v37 = *(v36 - 8);
  v97 = *(v37 + 48);
  v98 = v37 + 48;
  v38 = v97(v23, 1, v36);

  v112 = v34;
  v104 = v29;
  v105 = v28;
  v100 = v36;
  if (v38 == 1)
  {
    sub_224A3311C(v23, &unk_27D6F4440, &unk_224DBA100);
    v101 = 0;
    v39 = 0;
  }

  else
  {
    v101 = sub_224DAD6F8();
    v39 = v41;
    (*(v37 + 8))(v23, v36);
  }

  v42 = v111;
  v111 = v32;
  v43 = sub_224DABDB8();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  sub_224DA9FE8();
  swift_endAccess();

  sub_224DA9868();
  v96 = OBJC_IVAR____TtC10ChronoCore12TaskActivity_schedulingConfiguration;
  v44 = v110;
  sub_224A4152C(v112 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_schedulingConfiguration, v110, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  sub_224A45320(v44, v42);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  v46 = *(v45 - 8);
  v47 = *(v46 + 48);
  v95 = v45;
  v94 = v47;
  v93 = v46 + 48;
  v48 = (v47)(v42, 1);
  v49 = v116;
  v50 = v103;
  if (v48 == 1)
  {
    sub_224A42478(v42, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  }

  else
  {
    (*(v116 + 8))(v42, v113);
  }

  v92 = v37;
  if (!v35)
  {
    v51 = 0;
    if (v39)
    {
      goto LABEL_11;
    }

LABEL_13:
    v52 = 0;
    goto LABEL_14;
  }

  v51 = sub_224DAEDE8();

  if (!v39)
  {
    goto LABEL_13;
  }

LABEL_11:
  v52 = sub_224DAEDE8();

LABEL_14:
  v53 = objc_allocWithZone(MEMORY[0x277D06A40]);
  v54 = sub_224DAEDE8();

  v55 = v114;
  v56 = sub_224DA9778();
  v110 = [v53 initWithRateLimitConfigurationName:v51 budgetID:v52 extensionBundleID:v54 refreshDate:v56 initiatedByDAS:v48 != 1];

  v57 = *(v49 + 8);
  v116 = v49 + 8;
  v57(v55, v113);
  if (qword_2813516B8 != -1)
  {
    swift_once();
  }

  v58 = sub_224DAB258();
  __swift_project_value_buffer(v58, qword_281365108);
  v59 = v50;

  v60 = sub_224DAB228();
  v61 = sub_224DAF2A8();

  v62 = os_log_type_enabled(v60, v61);
  v63 = v112;
  if (v62)
  {
    v64 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v115[0] = v114;
    *v64 = 136446722;
    v66 = *(v63 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_logDigest);
    v65 = *(v63 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_logDigest + 8);

    v67 = sub_224A33F74(v66, v65, v115);

    *(v64 + 4) = v67;
    *(v64 + 12) = 2082;
    v68 = v107;
    sub_224A4152C(v63 + v96, v107, type metadata accessor for ExtensionTask.SchedulingConfiguration);
    v69 = v68;
    v70 = v108;
    sub_224A45320(v69, v108);
    if (v94(v70, 1, v95) == 1)
    {
      sub_224A42478(v70, type metadata accessor for ExtensionTask.SchedulingConfiguration);
      v71 = 0xE800000000000000;
      v72 = 0x3E6D65747379533CLL;
    }

    else
    {
      v57(v70, v113);
      v71 = 0xE500000000000000;
      v72 = 0x3E5341443CLL;
    }

    v74 = v109;
    v75 = sub_224A33F74(v72, v71, v115);

    *(v64 + 14) = v75;
    *(v64 + 22) = 2082;
    sub_224A3796C(v112 + v99, v74, &unk_27D6F4440, &unk_224DBA100);
    v76 = v100;
    v77 = v97(v74, 1, v100);
    v73 = v105;
    if (v77 == 1)
    {
      sub_224A3311C(v74, &unk_27D6F4440, &unk_224DBA100);
      v78 = 0xE300000000000000;
      v79 = 7104878;
    }

    else
    {
      v80 = sub_224DAD6F8();
      v78 = v81;
      (*(v92 + 8))(v74, v76);
      v79 = v80;
    }

    v82 = sub_224A33F74(v79, v78, v115);

    *(v64 + 24) = v82;
    _os_log_impl(&dword_224A2F000, v60, v61, "[%{public}s]: recording %{public}s widget refresh \n\tBudgetID = %{public}s", v64, 0x20u);
    v83 = v114;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v83, -1, -1);
    MEMORY[0x22AA5EED0](v64, -1, -1);
  }

  else
  {

    v73 = v105;
  }

  v84 = (v59 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__refreshScheduler);
  v85 = *(v59 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__refreshScheduler + 24);
  v86 = *(v59 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__refreshScheduler + 32);
  __swift_project_boxed_opaque_existential_1(v84, v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_224DB2780;
  v88 = v110;
  *(v87 + 32) = v110;
  v89 = *(v86 + 8);
  v90 = v88;
  v89(v87, v85, v86);

  return (*(v104 + 8))(v111, v73);
}

uint64_t sub_224A55CF0(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_assert_owner(*(*(a1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock) + 16));
  v4 = *(a1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_budgetedDASActivity);
  if (v4)
  {
    v5 = *(a2 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 32);
    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler), *(a2 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 24));
    v6 = *(v5 + 16);
    v7 = v4;
    v6();
  }

  v8 = *(a1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_fallbackDASActivity);
  if (v8)
  {
    v9 = *(a2 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 32);
    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler), *(a2 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 24));
    v10 = *(v9 + 16);
    v11 = v8;
    v10();
  }

  v12 = OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_rateLimitedDASActivitiesByIdentifier;
  swift_beginAccess();
  result = *(a1 + v12);
  if (result)
  {
    v14 = result + 64;
    v15 = 1 << *(result + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(result + 64);
    v26 = (a2 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler);
    v27 = *(a1 + v12);
    v18 = (v15 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    for (i = 0; v17; result = )
    {
      v20 = i;
      v21 = v27;
LABEL_15:
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v23 = *(*(v21 + 56) + 8 * (v22 | (v20 << 6)));
      v24 = v26[4];
      __swift_project_boxed_opaque_existential_1(v26, v26[3]);
      v28 = *(v24 + 16);

      v25 = v23;
      v28();
    }

    v21 = v27;
    while (1)
    {
      v20 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v20 >= v18)
      {
      }

      v17 = *(v14 + 8 * v20);
      ++i;
      if (v17)
      {
        i = v20;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_224A55F3C()
{
  v1 = *(sub_224DACAE8() - 8);
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = v0[6];
  v5 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  sub_224A55FA4(v2, v3, v5, v4);
}

void sub_224A55FA4(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v135 = a3;
  v138 = a2;
  v5 = sub_224DADCD8();
  v141 = *(v5 - 8);
  v142 = v5;
  v7 = MEMORY[0x28223BE20](v5, v6);
  v140 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v139 = &v113 - v10;
  v145 = sub_224DAD458();
  v11 = *(v145 - 8);
  v13 = MEMORY[0x28223BE20](v145, v12);
  v144 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v113 - v16;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v134 = *(v131 - 8);
  MEMORY[0x28223BE20](v131, v18);
  v143 = (&v113 - v19);
  v116 = sub_224DAD738();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116, v20);
  v117 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4030, &unk_224DB5630);
  v24 = MEMORY[0x28223BE20](v22 - 8, v23);
  v26 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v27);
  v146 = &v113 - v28;
  v122 = sub_224DAC938();
  v121 = *(v122 - 8);
  v30 = MEMORY[0x28223BE20](v122, v29);
  v32 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v33);
  v136 = &v113 - v34;
  v123 = sub_224DAC928();
  v120 = *(v123 - 8);
  v36 = MEMORY[0x28223BE20](v123, v35);
  v38 = &v113 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v36, v39);
  v42 = &v113 - v41;
  v44 = MEMORY[0x28223BE20](v40, v43);
  v46 = &v113 - v45;
  MEMORY[0x28223BE20](v44, v47);
  v137 = &v113 - v48;
  v49 = type metadata accessor for ExtensionTask.Identifier(0);
  MEMORY[0x28223BE20](v49, v50);
  v52 = &v113 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A414C4(a1 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier, v52, type metadata accessor for ExtensionTask.Identifier);
  v130 = v52;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload != 7)
    {
      sub_224A48F3C(v130);
      return;
    }

    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);
    v55 = *&v130[*(v54 + 48)];
    v56 = *&v130[*(v54 + 64)];
    if (!v55)
    {

      goto LABEL_52;
    }

    v132 = v55;
    v133 = v56;
    v57 = a1;
    v58 = v120;
    if (*(a1 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_cost + 8))
    {
      v59 = MEMORY[0x277CF9AB8];
    }

    else
    {
      v59 = MEMORY[0x277CF9AC0];
    }

    v60 = v123;
    (*(v120 + 104))(v46, *v59, v123);
    v61 = v137;
    (*(v58 + 32))(v137, v46, v60);
    v62 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
    swift_beginAccess();
    v63 = v57 + v62;
    v64 = v146;
    sub_224A3796C(v63, v146, &qword_27D6F4030, &unk_224DB5630);
    v65 = v121;
    v66 = v122;
    if ((*(v121 + 48))(v64, 1, v122) == 1)
    {
      (*(v58 + 8))(v61, v60);

      sub_224A3311C(v64, &qword_27D6F4030, &unk_224DB5630);
LABEL_52:
      v106 = sub_224DABE18();
      (*(*(v106 - 8) + 8))(v130, v106);
      return;
    }

    (*(v65 + 32))(v136, v64, v66);
    v74 = v132;

    sub_224DAD708();
    v75 = (v138 + *((*MEMORY[0x277D85000] & *v138) + 0x78));
    v76 = __swift_project_boxed_opaque_existential_1(v75, v75[3]);
    v148 = 0;
    v149 = 1;
    MEMORY[0x28223BE20](v76, v77);
    sub_224C5C2B0(sub_224B444F4);
    v78 = v148;
    if (v149)
    {
      v78 = 0;
    }

    v129 = v78;
    v72 = v133;
    v128 = v133[2];
    if (!v128)
    {

      v104 = v137;
LABEL_51:
      v105 = (v138 + *((*MEMORY[0x277D85000] & *v138) + 0xD8));
      __swift_project_boxed_opaque_existential_1(v105, v105[3]);
      sub_224DAD568();
      (*(v65 + 8))(v136, v66);
      (*(v58 + 8))(v104, v60);
      (*(v115 + 8))(v117, v116);
      goto LABEL_52;
    }

    if (v74 >> 62)
    {
      v79 = sub_224DAF838();
    }

    else
    {
      v79 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v73 = v145;
    v80 = v131;
    v81 = 0;
    v127 = *((*MEMORY[0x277D85000] & *v138) + 0xD8);
    v126 = v72 + ((*(v134 + 80) + 32) & ~*(v134 + 80));
    v125 = v134 + 16;
    v119 = v79 & ~(v79 >> 63);
    v118 = v74 & 0xC000000000000001;
    v114 = (v74 + 32);
    v124 = (v134 + 8);
    v146 = v79;
    while (v81 < v72[2])
    {
      (*(v134 + 16))(v143, &v126[*(v134 + 72) * v81], v80);
      sub_224A3317C(v138 + v127, &v148);
      v58 = v150;
      v139 = v151;
      v140 = __swift_project_boxed_opaque_existential_1(&v148, v150);
      v141 = v58;
      v142 = v81;
      if (v79)
      {
        v147 = MEMORY[0x277D84F90];
        v72 = &v147;
        sub_224ADA458(0, v119, 0);
        if (v79 < 0)
        {
          goto LABEL_59;
        }

        v83 = v147;
        if (v118)
        {
          v84 = 0;
          do
          {
            MEMORY[0x22AA5DCC0](v84, v74);
            sub_224DAF5E8();
            swift_unknownObjectRelease();
            v147 = v83;
            v86 = *(v83 + 16);
            v85 = *(v83 + 24);
            if (v86 >= v85 >> 1)
            {
              sub_224ADA458((v85 > 1), v86 + 1, 1);
              v83 = v147;
            }

            ++v84;
            *(v83 + 16) = v86 + 1;
            (*(v11 + 32))(v83 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v86, v17, v73);
          }

          while (v146 != v84);
        }

        else
        {
          v87 = v114;
          v88 = v79;
          do
          {
            v89 = v17;
            v90 = *v87;
            v91 = v144;
            sub_224DAF5E8();

            v147 = v83;
            v93 = *(v83 + 16);
            v92 = *(v83 + 24);
            if (v93 >= v92 >> 1)
            {
              sub_224ADA458((v92 > 1), v93 + 1, 1);
              v83 = v147;
            }

            *(v83 + 16) = v93 + 1;
            v94 = v83 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v93;
            v73 = v145;
            (*(v11 + 32))(v94, v91, v145);
            ++v87;
            --v88;
            v17 = v89;
          }

          while (v88);
        }

        v80 = v131;
      }

      v82 = v143;
      v58 = v142 + 1;
      sub_224DAA248();
      sub_224DAD558();
      v81 = v58;

      (*v124)(v82, v80);
      __swift_destroy_boxed_opaque_existential_1(&v148);
      v72 = v133;
      v74 = v132;
      v79 = v146;
      if (v58 == v128)
      {

        v66 = v122;
        v65 = v121;
        v60 = v123;
        v104 = v137;
        v58 = v120;
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v144 = v32;
  v145 = v42;
  v11 = v142;
  v67 = *(v130 + 1);

  if (!v67)
  {
    return;
  }

  v58 = v120;
  if (*(a1 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_cost + 8))
  {
    v68 = MEMORY[0x277CF9AB8];
  }

  else
  {
    v68 = MEMORY[0x277CF9AC0];
  }

  v69 = v123;
  (*(v120 + 104))(v38, *v68, v123);
  v70 = v145;
  (*(v58 + 32))(v145, v38, v69);
  v71 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
  swift_beginAccess();
  sub_224A3796C(a1 + v71, v26, &qword_27D6F4030, &unk_224DB5630);
  v72 = v121;
  v73 = v122;
  if ((*(v121 + 48))(v26, 1, v122) == 1)
  {
    (*(v58 + 8))(v70, v69);

    sub_224A3311C(v26, &qword_27D6F4030, &unk_224DB5630);
    return;
  }

  v95 = v67;
  v74 = v144;
  (v72[4])(v144, v26, v73);
  v143 = (v138 + *((*MEMORY[0x277D85000] & *v138) + 0xE0));
  sub_224A3317C(v143, &v148);
  v81 = v150;
  v17 = v151;
  v138 = __swift_project_boxed_opaque_existential_1(&v148, v150);
  v146 = v95;
  if (v95 >> 62)
  {
LABEL_60:
    v96 = sub_224DAF838();
    v97 = v141;
    if (!v96)
    {
      goto LABEL_61;
    }

LABEL_42:
    v141 = v17;
    v147 = MEMORY[0x277D84F90];
    sub_224ADA414(0, v96 & ~(v96 >> 63), 0);
    if (v96 < 0)
    {
      __break(1u);
      return;
    }

    v137 = v81;
    v98 = v147;
    v99 = v140;
    if ((v146 & 0xC000000000000001) != 0)
    {
      v100 = 0;
      v101 = v139;
      do
      {
        MEMORY[0x22AA5DCC0](v100, v146);
        sub_224DAF5C8();
        swift_unknownObjectRelease();
        v147 = v98;
        v103 = *(v98 + 16);
        v102 = *(v98 + 24);
        if (v103 >= v102 >> 1)
        {
          sub_224ADA414((v102 > 1), v103 + 1, 1);
          v98 = v147;
        }

        ++v100;
        *(v98 + 16) = v103 + 1;
        v97[4](v98 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + v97[9] * v103, v101, v11);
      }

      while (v96 != v100);
    }

    else
    {
      v107 = (v146 + 32);
      do
      {
        v108 = *v107;
        sub_224DAF5C8();

        v147 = v98;
        v110 = *(v98 + 16);
        v109 = *(v98 + 24);
        if (v110 >= v109 >> 1)
        {
          sub_224ADA414((v109 > 1), v110 + 1, 1);
          v98 = v147;
        }

        *(v98 + 16) = v110 + 1;
        v97[4](v98 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + v97[9] * v110, v99, v11);
        ++v107;
        --v96;
      }

      while (v96);
    }

    v73 = v122;
    v111 = v121;
    v58 = v120;
    v74 = v144;
    goto LABEL_62;
  }

  v96 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v97 = v141;
  if (v96)
  {
    goto LABEL_42;
  }

LABEL_61:

  v111 = v72;
LABEL_62:
  v112 = v145;
  sub_224DAD558();

  __swift_destroy_boxed_opaque_existential_1(&v148);
  __swift_project_boxed_opaque_existential_1(v143, v143[3]);
  sub_224DAD568();
  (v111[1])(v74, v73);
  (*(v58 + 8))(v112, v123);
}

uint64_t sub_224A570C4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_224A57104()
{
  v1 = OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext_startAfter;
  v2 = sub_224DA9878();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext_startBefore, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__duetConfigurationManager));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__refreshScheduler));

  sub_224A3311C(v0 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__remoteDeviceProvider, &qword_27D6F5590, &qword_224DBEC00);

  return v0;
}

uint64_t sub_224A5726C()
{
  sub_224A57104();

  return swift_deallocClassInstance();
}

uint64_t sub_224A572C4()
{
  sub_224A57460();

  return swift_deallocClassInstance();
}

uint64_t sub_224A5731C(uint64_t a1, unint64_t a2)
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
      v5 = 0;
      do
      {
        v6 = MEMORY[0x22AA5DCC0](v5++, a2);
        v7 = sub_224A576AC(v6);
        swift_unknownObjectRelease();
      }

      while (v4 != v5);
    }

    else
    {
      v8 = (a2 + 32);
      do
      {
        v9 = *v8++;
        v10 = v9;
        v11 = sub_224A576AC(v10);

        --v4;
      }

      while (v4);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_224A57460()
{
  v1 = OBJC_IVAR____TtC10ChronoCore12TaskActivity_identifier;
  v2 = sub_224DA9908();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_224A42478(v0 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_taskIdentifier, type metadata accessor for ExtensionTask.Identifier);

  sub_224A3311C(v0 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_duetBudgetIdentity, &unk_27D6F4440, &unk_224DBA100);

  sub_224A3311C(v0 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_containingAppIdentifier, &unk_27D6F5060, &qword_224DB5620);
  v3 = OBJC_IVAR____TtC10ChronoCore12TaskActivity_requiredDataProtectionLevel;
  v4 = sub_224DAE918();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_224A42478(v0 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_schedulingConfiguration, type metadata accessor for ExtensionTask.SchedulingConfiguration);

  sub_224A3311C(v0 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_effectivePowerlogWakeReason, &qword_27D6F4030, &unk_224DB5630);
  sub_224A3311C(v0 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_effectivePowerlogWakeCost, &qword_27D6F4028, &qword_224DB5628);

  return v0;
}

void sub_224A57734(void *a1)
{
  v3 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x88));
  os_unfair_lock_assert_not_owner(*(v3 + 16));
  v4 = 0;
  os_unfair_lock_lock(*(v3 + 16));
  sub_224B40904(v1, &v4, a1);
  os_unfair_lock_unlock(*(v3 + 16));
  if ((v4 & 1) == 0)
  {

    sub_224B4042C(a1);
  }
}

void sub_224A57804(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10ChronoCore20TaskSessionQueuePool__queuePool;
  swift_beginAccess();
  if (*&v2[v4] >> 62 && sub_224DAF838() < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a1;
    sub_224A57AE8(0, 0, v5);
    swift_endAccess();

    if (qword_2813516B8 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v6 = sub_224DAB258();
  __swift_project_value_buffer(v6, qword_281365108);
  v7 = v2;
  v8 = sub_224DAB228();
  v9 = sub_224DAF268();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134349056;
    v11 = *&v2[v4];
    if (v11 >> 62)
    {
      v12 = sub_224DAF838();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v10 + 4) = v12;

    _os_log_impl(&dword_224A2F000, v8, v9, "queue checked in; queuePool.count = %{public}ld", v10, 0xCu);
    MEMORY[0x22AA5EED0](v10, -1, -1);
  }

  else
  {

    v8 = v7;
  }

  v13 = *&v2[v4];
  if (v13 >> 62)
  {
    v14 = sub_224DAF838();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (*(&v7->isa + OBJC_IVAR____TtC10ChronoCore20TaskSessionQueuePool_maxPoolSize) < v14)
  {
    if (*(&v7->isa + OBJC_IVAR____TtC10ChronoCore20TaskSessionQueuePool__hasFaultedForExcessSize))
    {
      v15 = v7;
      v16 = sub_224DAB228();
      v17 = sub_224DAF288();
    }

    else
    {
      *(&v7->isa + OBJC_IVAR____TtC10ChronoCore20TaskSessionQueuePool__hasFaultedForExcessSize) = 1;
      v15 = v7;
      v16 = sub_224DAB228();
      v17 = sub_224DAF298();
    }

    v18 = v17;
    if (os_log_type_enabled(v16, v17))
    {
      v19 = swift_slowAlloc();
      *v19 = 134349056;
      v20 = *&v2[v4];
      if (v20 >> 62)
      {
        v23 = v19;
        v21 = sub_224DAF838();
        v19 = v23;
      }

      else
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v19 + 4) = v21;
      v22 = v19;

      _os_log_impl(&dword_224A2F000, v16, v18, "queue checked in; pool size too high!; queuePool.count = %{public}ld", v22, 0xCu);
      MEMORY[0x22AA5EED0](v22, -1, -1);
    }

    else
    {

      v16 = v15;
    }
  }
}

char *sub_224A57AE8(uint64_t a1, char *a2, void *a3)
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
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_224DAF838();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = &v6[-v7];
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_224DAF838();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = (v13 + v12);
  if (v14)
  {
    goto LABEL_18;
  }

  sub_224A57BD4(result, 1);

  return sub_224A57C7C(v7, v6, 1, v4);
}

uint64_t sub_224A57BDC(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_224DAF838();
LABEL_9:
  result = sub_224DAF968();
  *v2 = result;
  return result;
}

char *sub_224A57C7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_224DAF838();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_224DAF838();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_224A57DA8()
{
  sub_224A57E00();

  return swift_deallocClassInstance();
}

id *sub_224A57E00()
{
  v1 = *v0;

  sub_224A3311C(v0 + qword_281365420, &qword_27D6F32B0, &qword_224DB3EA0);
  v2 = qword_281365428;
  v3 = sub_224DA9878();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_224A3311C(v0 + qword_28135C660, &qword_27D6F4FC8, &unk_224DBADE8);
  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 19), v1[10]);
  sub_224A58004(v0 + *(*v0 + 20));

  v4 = *(*v0 + 23);
  swift_getAssociatedTypeWitness();
  v5 = sub_224DAF728();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return v0;
}

uint64_t sub_224A58034(uint64_t a1, uint64_t a2)
{
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
  v21 = v6;
  for (i = v2; ; v2 = i)
  {
    if (!v5)
    {
      do
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_32;
        }

        if (v9 >= v6)
        {
        }

        v5 = *(v2 + 8 * v9);
        ++v8;
      }

      while (!v5);
      v8 = v9;
    }

    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = (*(a1 + 48) + 2 * v10);
    v27 = *v11;
    v12 = v11[1];
    v13 = *(*(a1 + 56) + 8 * v10);
    v24 = v5;
    v14 = v13 >> 62 ? sub_224DAF838() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v14)
    {
      break;
    }

LABEL_4:
    v5 = (v24 - 1) & v24;

    v6 = v21;
  }

  v15 = 0;
  if (v12)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  v26 = v16;
  while ((v13 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x22AA5DCC0](v15, v13);
    v17 = result;
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_30;
    }

LABEL_21:
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v17 + 24);
      ObjectType = swift_getObjectType();
      (*(v19 + 16))(v26 | v27, a2, ObjectType, v19);
      swift_unknownObjectRelease();
    }

    ++v15;
    if (v18 == v14)
    {
      goto LABEL_4;
    }
  }

  if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

  v17 = *(v13 + 8 * v15 + 32);

  v18 = v15 + 1;
  if (!__OFADD__(v15, 1))
  {
    goto LABEL_21;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_224A5824C(uint64_t a1, uint64_t a2)
{
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
  v21 = v6;
  for (i = v2; ; v2 = i)
  {
    if (!v5)
    {
      do
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_32;
        }

        if (v9 >= v6)
        {
        }

        v5 = *(v2 + 8 * v9);
        ++v8;
      }

      while (!v5);
      v8 = v9;
    }

    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = (*(a1 + 48) + 2 * v10);
    v27 = *v11;
    v12 = v11[1];
    v13 = *(*(a1 + 56) + 8 * v10);
    v24 = v5;
    v14 = v13 >> 62 ? sub_224DAF838() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v14)
    {
      break;
    }

LABEL_4:
    v5 = (v24 - 1) & v24;

    v6 = v21;
  }

  v15 = 0;
  if (v12)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  v26 = v16;
  while ((v13 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x22AA5DCC0](v15, v13);
    v17 = result;
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_30;
    }

LABEL_21:
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v17 + 24);
      ObjectType = swift_getObjectType();
      (*(v19 + 32))(v26 | v27, a2, ObjectType, v19);
      swift_unknownObjectRelease();
    }

    ++v15;
    if (v18 == v14)
    {
      goto LABEL_4;
    }
  }

  if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

  v17 = *(v13 + 8 * v15 + 32);

  v18 = v15 + 1;
  if (!__OFADD__(v15, 1))
  {
    goto LABEL_21;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_224A58660(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v55 = a6;
  v56 = a7;
  v57 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6140, qword_224DBB6B0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v52 - v18;
  BSDispatchQueueAssert();
  v20 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_currentExtensionsAndCompletionsBeingFetched;
  result = swift_beginAccess();
  v22 = *(a3 + v20);
  if (*(v22 + 16))
  {

    v23 = sub_224A3E7EC(a4);
    if (v24)
    {
      v54 = v16;
      v53 = v14;
      v25 = *(*(v22 + 56) + 8 * v23);

      swift_beginAccess();
      sub_224A3E520(0, a4);
      swift_endAccess();
      v26 = *(v25 + 16);
      if (v26)
      {
        v27 = v25 + 40;
        do
        {
          v28 = *(v27 - 8);
          v61[0] = a1;
          v60[0] = a2;

          v28(v61, v60);

          v27 += 16;
          --v26;
        }

        while (v26);
      }

      if (a1)
      {
        v29 = sub_224DAE9C8();
        v30 = sub_224DAE9D8();
      }

      else
      {
        v30 = 0;
        v29 = 0;
      }

      v31 = v57;
      sub_224D5726C(v29, v30);
      v33 = v32;

      if ((v33 & 0xC000000000000001) != 0)
      {
        v34 = sub_224DAF838();
      }

      else
      {
        v34 = *(v33 + 16);
      }

      if (v34)
      {
        v35 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_extensionsPendingRefetchWithLNMetadataChanged;
        swift_beginAccess();
        v52[1] = v35;
        v36 = *(a3 + v35);
        __swift_project_boxed_opaque_existential_1(v31, v31[3]);

        v37 = sub_224DAE338();
        v38 = *MEMORY[0x277CFA138];
        swift_beginAccess();
        v39 = v54;
        v40 = *(v54 + 16);
        v41 = v37 + v38;
        v31 = v57;
        v40(v19, v41, v15);

        LOBYTE(v37) = sub_224A336F4(v19, v36);

        v42 = *(v39 + 8);
        v42(v19, v15);
        if (v37)
        {
          v52[0] = v42;
          __swift_project_boxed_opaque_existential_1(v31, v31[3]);
          v43 = sub_224DAE338();
          v44 = *MEMORY[0x277CFA138];
          swift_beginAccess();
          v45 = &v43[v44];
          v31 = v57;
          v40(v19, v45, v15);

          swift_beginAccess();
          v46 = v53;
          sub_224B03048(v19, v53);
          (v52[0])(v19, v15);
          sub_224A3311C(v46, &unk_27D6F6140, qword_224DBB6B0);
          swift_endAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3500, &qword_224DB3A98);
          v47 = swift_allocObject();
          *(v47 + 16) = xmmword_224DB3100;
          sub_224A3317C(v31, v47 + 32);
          v58 = 0;
          v59 = 0xE000000000000000;
          sub_224DAF938();
          MEMORY[0x22AA5D210](0xD00000000000004ELL, 0x8000000224DCFDD0);
          MEMORY[0x22AA5D210](v55, v56);
          MEMORY[0x22AA5D210](41, 0xE100000000000000);
          sub_224D4C850(v47, 1, v58, v59);
        }
      }

      __swift_project_boxed_opaque_existential_1(v31, v31[3]);
      v48 = sub_224DAE338();
      v49 = *MEMORY[0x277CFA138];
      swift_beginAccess();
      v50 = v54;
      (*(v54 + 16))(v19, &v48[v49], v15);

      swift_beginAccess();
      v51 = v53;
      sub_224B03048(v19, v53);
      (*(v50 + 8))(v19, v15);
      sub_224A3311C(v51, &unk_27D6F6140, qword_224DBB6B0);
      return swift_endAccess();
    }

    else
    {
    }
  }

  return result;
}

void sub_224A58C3C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_224DAF7A8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_224DAF698();

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

void sub_224A58DFC(void *a1, uint64_t a2)
{
  v5 = *(sub_224DAD448() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_224A58EB4(a1, a2, v7, v2 + 24, v2 + v6, v8);
}

void sub_224A58EB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t))
{
  if (a1)
  {
    v8 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
    swift_beginAccess();
    sub_224A3796C(a3 + v8, v15, &qword_27D6F6C28, &qword_224DC1A38);
    if (v16)
    {
      sub_224A3317C(v15, v14);
      v10 = a1;
      sub_224A3311C(v15, &qword_27D6F6C28, &qword_224DC1A38);
      __swift_project_boxed_opaque_existential_1(v14, v14[3]);
      sub_224DAE9C8();
      sub_224DAE9D8();
      sub_224DAE9E8();
      sub_224DAD638();

      __swift_destroy_boxed_opaque_existential_1(v14);
      if (a6)
      {
LABEL_4:
        v11 = a1;
        a6(a1, a2);

        return;
      }
    }

    else
    {
      v12 = a1;
      sub_224A3311C(v15, &qword_27D6F6C28, &qword_224DC1A38);
      if (a6)
      {
        goto LABEL_4;
      }
    }
  }

  else if (a6)
  {
    (a6)(0, a2, a3, a4, a5);
  }
}

void sub_224A59058(void *a1, void *a2, dispatch_group_t group, uint64_t a4, void *a5, uint64_t a6)
{
  dispatch_group_leave(group);
  if (a1)
  {
    swift_beginAccess();
    v10 = *(a4 + 16);
    if ((v10 & 0xC000000000000001) != 0)
    {
      if (v10 < 0)
      {
        v11 = *(a4 + 16);
      }

      else
      {
        v11 = v10 & 0xFFFFFFFFFFFFFF8;
      }

      v12 = a1;
      v13 = sub_224DAF838();
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return;
      }

      *(a4 + 16) = sub_224D2CDB4(v11, v13 + 1);
    }

    else
    {
      v12 = a1;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(a4 + 16);
    sub_224A59194(v12, a5, isUniquelyReferenced_nonNull_native);
    *(a4 + 16) = v16;
    swift_endAccess();
  }

  if (a2)
  {
    swift_beginAccess();
    v15 = a2;
    sub_224B09A8C(a2, a5);
    swift_endAccess();
  }
}

id sub_224A59194(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_224A3E7EC(a2);
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
      sub_224A59320(v13, a3 & 1, &qword_27D6F3A60, &unk_224DC3BE0);
      v8 = sub_224A3E7EC(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_224DAF538();
        sub_224DAFDD8();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v16 = v8;
      sub_224B27EB8(&qword_27D6F3A60, &unk_224DC3BE0);
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

  return a2;
}

uint64_t sub_224A59320(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_224DAFB98();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v4;
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
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      result = sub_224DAF698();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v33 = 1 << *(v7 + 32);
      if (v33 >= 64)
      {
        bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v33;
      }

      *(v7 + 16) = 0;
    }

    v5 = v34;
  }

  else
  {
  }

  *v5 = v9;
  return result;
}

void sub_224A59598(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  swift_beginAccess();

  v9 = sub_224A5988C(v8);

  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v10 = sub_224DAB258();
  __swift_project_value_buffer(v10, qword_281365168);
  v11 = v9;

  v12 = sub_224DAB228();
  v13 = sub_224DAF2A8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32[0] = v31;
    *v14 = 134349314;
    swift_beginAccess();
    v15 = *(a3 + 16);
    if ((v15 & 0xC000000000000001) != 0)
    {

      v16 = sub_224DAF838();
    }

    else
    {
      v16 = *(v15 + 16);
    }

    *(v14 + 4) = v16;

    *(v14 + 12) = 2082;
    if (v9)
    {
      v19 = [v11 debugDescription];
      v30 = v12;
      v20 = v13;
      v21 = v11;
      v22 = v9;
      v23 = a4;
      v24 = a5;
      v25 = v19;
      v26 = sub_224DAEE18();
      v28 = v27;

      a5 = v24;
      a4 = v23;
      v9 = v22;
      v11 = v21;
      v13 = v20;
      v12 = v30;
    }

    else
    {
      v28 = 0xE300000000000000;
      v26 = 7104878;
    }

    v29 = sub_224A33F74(v26, v28, v32);

    *(v14 + 14) = v29;
    _os_log_impl(&dword_224A2F000, v12, v13, "Received descriptors for %{public}ld extensions from descriptor service with error: %{public}s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x22AA5EED0](v31, -1, -1);
    MEMORY[0x22AA5EED0](v14, -1, -1);

    if (!a4)
    {
      goto LABEL_13;
    }

LABEL_7:
    swift_beginAccess();
    v17 = v11;
    sub_224A364AC(a4, a5);

    a4(v18, v9);

    sub_224A3D418(a4, a5);
    return;
  }

  if (a4)
  {
    goto LABEL_7;
  }

LABEL_13:
}

id sub_224A5988C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_224D43A9C(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
  sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0, MEMORY[0x277D83958]);
  v2 = sub_224DAEDA8();
  v4 = v3;

  sub_224D43D90(a1);
  v5 = sub_224DAEDA8();
  v7 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32D8, &qword_224DC1AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB30F0;
  *(inited + 32) = sub_224DAEE18();
  *(inited + 40) = v9;
  MEMORY[0x22AA5D210](v2, v4);

  MEMORY[0x22AA5D210](93, 0xE100000000000000);
  *(inited + 48) = 91;
  *(inited + 56) = 0xE100000000000000;
  *(inited + 64) = sub_224DAEE18();
  *(inited + 72) = v10;
  MEMORY[0x22AA5D210](v5, v7);

  MEMORY[0x22AA5D210](93, 0xE100000000000000);
  *(inited + 80) = 91;
  *(inited + 88) = 0xE100000000000000;
  v11 = sub_224D9FE14(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32E0, &unk_224DB65F0);
  swift_arrayDestroy();
  sub_224B67B98();
  sub_224B67BEC();
  sub_224B67C40();
  v12 = sub_224DA93D8();
  sub_224D9F01C(v11);

  v13 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v14 = sub_224DAEDE8();
  v15 = sub_224DAECC8();

  v16 = [v13 initWithDomain:v14 code:v12 userInfo:v15];

  return v16;
}

void sub_224A59B80(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t), uint64_t a4)
{
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v8 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v9);
  v65 = v57 - v10;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      v58 = a2;
      v59 = a4;
      v60 = a3;
      v68 = sub_224A5A0B4(MEMORY[0x277D84F90]);
      v15 = -1 << *(a1 + 32);
      v12 = a1 + 64;
      v16 = ~v15;
      v17 = -v15;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v14 = v18 & *(a1 + 64);

      v13 = v16;
      goto LABEL_9;
    }

LABEL_33:
    v56 = 0;
    a3(0, a2);
LABEL_34:

    return;
  }

  if (sub_224DAF838() <= 0)
  {
    goto LABEL_33;
  }

  v58 = a2;
  v59 = a4;
  v60 = a3;
  v68 = sub_224A5A0B4(MEMORY[0x277D84F90]);
  v11 = sub_224DAFA68() | 0x8000000000000000;

  v12 = 0;
  v13 = 0;
  v14 = 0;
  a1 = v11;
LABEL_9:
  v19 = 0;
  v57[1] = v13;
  v20 = (v13 + 64) >> 6;
  v63 = v12;
  v64 = (v8 + 8);
  v61 = a1;
  v62 = v20;
  while (a1 < 0)
  {
    v29 = sub_224DAFB18();
    if (!v29 || (v31 = v30, v69 = v29, sub_224DAF538(), swift_dynamicCast(), v27 = v70, v69 = v31, sub_224DAE9F8(), swift_dynamicCast(), v28 = v70, v23 = v19, v24 = v14, !v27))
    {
LABEL_32:
      sub_224A3B7E4(a1);
      v54 = objc_allocWithZone(MEMORY[0x277CFA388]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5170, &unk_224DBAE98);
      v55 = sub_224DAECC8();

      v56 = [v54 initWithDescriptors_];

      v60(v56, v58);
      goto LABEL_34;
    }

LABEL_21:
    v67 = v24;
    v32 = v65;
    v33 = v27;
    sub_224DAF528();
    sub_224A33088(&qword_281351838, &unk_27D6F6570, &qword_224DB3C40, MEMORY[0x277CFA028]);
    v34 = v66;
    sub_224DAEFA8();
    (*v64)(v32, v34);
    v36 = v70;
    v35 = v71;
    v37 = v28;
    v38 = sub_224DAE9C8();
    v39 = v68;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v39;
    v42 = sub_224A3A40C(v36, v35);
    v43 = *(v39 + 16);
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      goto LABEL_36;
    }

    v46 = v41;
    if (*(v39 + 24) >= v45)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v41)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_224B27E90();
        if (v46)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_224A5A0C8(v45, isUniquelyReferenced_nonNull_native);
      v47 = sub_224A3A40C(v36, v35);
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_38;
      }

      v42 = v47;
      if (v46)
      {
LABEL_10:

        v68 = v69;
        *(v69[7] + 8 * v42) = v38;

        goto LABEL_11;
      }
    }

    v49 = v69;
    v69[(v42 >> 6) + 8] |= 1 << v42;
    v50 = (v49[6] + 16 * v42);
    *v50 = v36;
    v50[1] = v35;
    *(v49[7] + 8 * v42) = v38;

    v51 = v49[2];
    v52 = __OFADD__(v51, 1);
    v53 = v51 + 1;
    if (v52)
    {
      goto LABEL_37;
    }

    v68 = v49;
    v49[2] = v53;
LABEL_11:
    v19 = v23;
    v14 = v67;
    a1 = v61;
    v20 = v62;
    v12 = v63;
  }

  v21 = v19;
  v22 = v14;
  v23 = v19;
  if (v14)
  {
LABEL_17:
    v24 = (v22 - 1) & v22;
    v25 = (v23 << 9) | (8 * __clz(__rbit64(v22)));
    v26 = *(*(a1 + 56) + v25);
    v27 = *(*(a1 + 48) + v25);
    v28 = v26;
    if (!v27)
    {
      goto LABEL_32;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
      goto LABEL_32;
    }

    v22 = *(v12 + 8 * v23);
    ++v21;
    if (v22)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  sub_224DAFDD8();
  __break(1u);
}

uint64_t sub_224A5A0DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_224DAFB98();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
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
    v16 = result + 64;
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
      if ((v36 & 1) == 0)
      {
      }

      sub_224DAFE68();
      sub_224DAEE78();
      result = sub_224DAFEA8();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
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

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

void sub_224A5A39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_224DA9518();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_224A5A424(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_224A5A4B8(void *a1, unint64_t *a2, int64_t a3)
{
  BSDispatchQueueAssert();
  if (qword_2813514B8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v6 = sub_224DAB258();
    __swift_project_value_buffer(v6, qword_281364E50);
    v7 = a2;
    v8 = a1;
    v9 = sub_224DAB228();
    v10 = sub_224DAF2A8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543618;
      BSDispatchQueueAssert();
      v13 = [*(v7 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection) remoteProcess];
      *(v11 + 4) = v13;
      *(v11 + 12) = 2114;
      *(v11 + 14) = v8;
      *v12 = v13;
      v12[1] = v8;
      v14 = v8;
      _os_log_impl(&dword_224A2F000, v9, v10, "Subscribe to extensions from client: %{public}@ with options: %{public}@", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F69F0, &unk_224DB3900);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v12, -1, -1);
      MEMORY[0x22AA5EED0](v11, -1, -1);
    }

    v15 = *(v7 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_providerOptions);
    *(v7 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_providerOptions) = v8;

    sub_224A3317C(v7 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_descriptorService, v50);
    a1 = v51;
    a2 = __swift_project_boxed_opaque_existential_1(v50, v51);
    v16 = v8;
    v17 = sub_224DACA48();
    if (!v17)
    {
      __swift_destroy_boxed_opaque_existential_1(v50);
      (*(a3 + 16))(a3, 0, 0, 0);
      return;
    }

    v18 = v17;
    __swift_destroy_boxed_opaque_existential_1(v50);
    if ([v16 matchesEverything])
    {
      break;
    }

    if (MEMORY[0x277D84F90] >> 62 && sub_224DAF838())
    {
      sub_224D5767C(MEMORY[0x277D84F90]);
    }

    else
    {
      v19 = MEMORY[0x277D84FA0];
    }

    v49 = v19;
    v46 = a3;
    v47 = v16;
    if ((v18 & 0xC000000000000001) != 0)
    {
      a1 = sub_224DAF7E8();
      a2 = &qword_281350A40;
      sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
      sub_224A3B758(&qword_281350A30, &qword_281350A40, 0x277CFA3A8, MEMORY[0x277D85378]);
      sub_224DAF1F8();
      v18 = v50[0];
      v20 = v50[1];
      v21 = v50[2];
      v22 = v51;
      v23 = v52;
    }

    else
    {
      v22 = 0;
      v24 = -1 << *(v18 + 32);
      v20 = v18 + 56;
      v21 = ~v24;
      v25 = -v24;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      else
      {
        v26 = -1;
      }

      v23 = (v26 & *(v18 + 56));
    }

    v45 = v21;
    v27 = (v21 + 64) >> 6;
    if (v18 < 0)
    {
LABEL_16:
      if (sub_224DAF878())
      {
        sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
        swift_dynamicCast();
        v28 = v48[0];
        a3 = v22;
        a1 = v23;
        if (v48[0])
        {
          goto LABEL_24;
        }
      }

LABEL_26:
      sub_224A3B7E4(v18);
      v18 = v49;
      a3 = v46;
      v16 = v47;
      break;
    }

    while (1)
    {
      v29 = v22;
      v30 = v23;
      a3 = v22;
      if (!v23)
      {
        break;
      }

LABEL_23:
      a1 = ((v30 - 1) & v30);
      v28 = *(*(v18 + 48) + ((a3 << 9) | (8 * __clz(__rbit64(v30)))));
      if (!v28)
      {
        goto LABEL_26;
      }

LABEL_24:
      a2 = &v49;
      sub_224A5EAA4(v48, [v28 copyFilteredToOptions_]);

      v22 = a3;
      v23 = a1;
      if (v18 < 0)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      a3 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (a3 >= v27)
      {
        goto LABEL_26;
      }

      v30 = *(v20 + 8 * a3);
      ++v29;
      if (v30)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  v31 = sub_224A5D694(1, 0, 0);
  v32 = objc_allocWithZone(MEMORY[0x277CFA3C8]);
  sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
  sub_224A3B758(&qword_281350A30, &qword_281350A40, 0x277CFA3A8, MEMORY[0x277D85378]);
  v33 = sub_224DAF1A8();
  v34 = [v32 initWithExtensions:v33 generatedFrom:v16];

  v35 = v34;
  v36 = v7;
  v37 = v35;

  v38 = sub_224DAB228();
  v39 = sub_224DAF2A8();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138543874;
    BSDispatchQueueAssert();
    v42 = [*(v36 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection) remoteProcess];
    *(v40 + 4) = v42;
    *v41 = v42;
    *(v40 + 12) = 2050;
    if ((v18 & 0xC000000000000001) != 0)
    {
      v43 = sub_224DAF838();
    }

    else
    {
      v43 = *(v18 + 16);
    }

    *(v40 + 14) = v43;

    *(v40 + 22) = 2050;
    v44 = [v37 sequenceNumber];

    *(v40 + 24) = v44;
    _os_log_impl(&dword_224A2F000, v38, v39, "Subscribed to extensions from client: %{public}@, sent %{public}ld extensions with sequence %{public}lu", v40, 0x20u);
    sub_224A3311C(v41, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v41, -1, -1);
    MEMORY[0x22AA5EED0](v40, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v38 = v37;
  }

  (*(a3 + 16))(a3, v37, v31, 0);
}

uint64_t sub_224A5ABFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6820, &qword_224DC0838);
  sub_224DAC1E8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_224DB30F0;
  sub_224DAC1C8();
  sub_224DAC1D8();
  v1 = sub_224A5AD0C(v0);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v1;
}

uint64_t sub_224A5AD0C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DAC1E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (MEMORY[0x277D84F90] >> 62 && sub_224DAF838())
  {
    sub_224D57F20(MEMORY[0x277D84F90], &qword_27D6F3510, &qword_224DB3AA8, MEMORY[0x277CFA140]);
    v9 = v25;
  }

  else
  {
    v9 = MEMORY[0x277D84FA0];
  }

  v28 = 0;
  v29 = 0;
  v27 = 0;
  sub_224DAC1C8();
  v10 = sub_224D422E0(v8, a1);
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (v10)
  {
    v29 = sub_224A48648();
    if (v29)
    {

      v12 = sub_224DACF58();
      sub_224A5B11C(v12, v9);
      v9 = v13;
    }
  }

  sub_224DAC1D8();
  v14 = sub_224D422E0(v8, a1);
  v11(v8, v4);
  if (v14)
  {
    v28 = sub_224A5B8B8();
    if (v28)
    {

      v15 = sub_224DACF58();
      sub_224A5B11C(v15, v9);
      v9 = v16;
    }
  }

  sub_224DAC1B8();
  v17 = sub_224D422E0(v8, a1);
  v11(v8, v4);
  if (v17)
  {
    v27 = sub_224D44CD4();
    if (v27)
    {

      v18 = sub_224DACF58();
      sub_224A5B11C(v18, v9);
      v9 = v19;
    }
  }

  v20 = v2;
  v21 = sub_224A5BC84(v9, v20);

  v22 = sub_224D56880(v21, a1, &v29, &v28, &v27);

  v23 = sub_224A5C0FC(v22);

  return v23;
}

BOOL sub_224A5B014(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    sub_224D42EB0(a4, a5, a6);
  }

  while ((sub_224DAEDD8() & 1) == 0);
  return v10 != v11;
}

void sub_224A5B11C(uint64_t a1, void *a2)
{
  v2 = a1;
  v16[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_224DAF7E8();
    sub_224DAF538();
    sub_224A3CE84(&unk_2813509A0, MEMORY[0x277CFA140], MEMORY[0x277D85378]);
    sub_224DAF1F8();
    v2 = v16[2];
    v3 = v16[3];
    v4 = v16[4];
    v5 = v16[5];
    v6 = v16[6];
  }

  else
  {
    v5 = 0;
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
  }

  v10 = (v4 + 64) >> 6;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_18:
      sub_224A3B7E4(v2);
      return;
    }

    while (1)
    {
      sub_224A37578(v16, v15, MEMORY[0x277CFA140], &qword_27D6F3510, &qword_224DB3AA8, MEMORY[0x277CFA140]);

      v5 = v13;
      v6 = v14;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_224DAF878())
      {
        sub_224DAF538();
        swift_dynamicCast();
        v15 = v16[0];
        v13 = v5;
        v14 = v6;
        if (v16[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = (v11 + 1);
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_18;
    }

    v12 = v3[v13];
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_224A5B354(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D8, &unk_224DB7630);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v20 - v8;
  v10 = [objc_allocWithZone(MEMORY[0x277CFA2C0]) init];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_224DAE338();
  [v10 setIdentity_];

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224DAE2D8();
  v12 = sub_224DAEDE8();

  [v10 setLocalizedDisplayName_];

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224DAE358();
  v13 = sub_224DAEDE8();

  [v10 setContainerBundleLocalizedDisplayName_];

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_224DAE268();
  [v10 setEntitlements_];

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224DAE308();
  v15 = sub_224DAE918();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) != 1)
  {
    sub_224A3796C(v9, v6, &qword_27D6F46D8, &unk_224DB7630);
    v18 = (*(v16 + 88))(v6, v15);
    if (v18 == *MEMORY[0x277CE3D50])
    {
      v17 = 0;
      goto LABEL_7;
    }

    if (v18 == *MEMORY[0x277CE3D58])
    {
      v17 = 1;
      goto LABEL_7;
    }

    if (v18 != *MEMORY[0x277CE3D60])
    {
      if (v18 == *MEMORY[0x277CE3D68])
      {
        v17 = 3;
        goto LABEL_7;
      }

      (*(v16 + 8))(v6, v15);
    }
  }

  v17 = 2;
LABEL_7:
  [v10 setDataProtectionLevel_];
  sub_224A3311C(v9, &qword_27D6F46D8, &unk_224DB7630);
  return v10;
}

uint64_t sub_224A5B698(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_224DAF8F8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_224DAF698();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_224A5B8B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5AA8, &qword_224DC1B20);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6CD0, &qword_224DC1B28);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v21 - v7;
  sub_224A3B79C(0, &qword_2813509B8, 0x277CFA210);
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
    sub_224DAD5B8();
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

void *sub_224A5BC84(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224DAF538();
    sub_224A39EF8(&unk_2813509A0, MEMORY[0x277CFA140], MEMORY[0x277D85378]);
    result = sub_224DAF1F8();
    v2 = v35;
    v4 = v36;
    v5 = v37;
    v6 = v38;
    v7 = v39;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v27[1] = v5;
  v30 = MEMORY[0x277D84F90];
  v28 = v2;
  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v11 = sub_224DAF878();
  if (v11 && (*&v31 = v11, sub_224DAF538(), swift_dynamicCast(), v12 = *&v34[0], v13 = v6, v14 = v7, *&v34[0]))
  {
    while (1)
    {
      __swift_project_boxed_opaque_existential_1((v29 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager), *(v29 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 24));
      sub_224DAC6D8();

      if (v32)
      {
        sub_224A36F98(&v31, v34);
        sub_224A36F98(v34, &v31);
        v17 = v30;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v17 = sub_224A5C040(0, v17[2] + 1, 1, v17);
          v40 = v17;
        }

        v20 = v17[2];
        v19 = v17[3];
        if (v20 >= v19 >> 1)
        {
          v30 = sub_224A5C040((v19 > 1), v20 + 1, 1, v17);
          v40 = v30;
        }

        else
        {
          v30 = v17;
        }

        v21 = v32;
        v22 = v33;
        v23 = __swift_mutable_project_boxed_opaque_existential_1(&v31, v32);
        MEMORY[0x28223BE20](v23, v23);
        v25 = v27 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v26 + 16))(v25);
        sub_224A5C064(v20, v25, &v40, v21, v22);
        result = __swift_destroy_boxed_opaque_existential_1(&v31);
        v6 = v13;
        v7 = v14;
        v2 = v28;
        if (v28 < 0)
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_224A3311C(&v31, &unk_27D6F4700, &unk_224DB3A10);
        v6 = v13;
        v7 = v14;
        if (v2 < 0)
        {
          goto LABEL_10;
        }
      }

LABEL_13:
      v15 = v6;
      v16 = v7;
      v13 = v6;
      if (!v7)
      {
        break;
      }

LABEL_17:
      v14 = (v16 - 1) & v16;
      v12 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v16)))));
      if (!v12)
      {
        goto LABEL_26;
      }
    }

    while (1)
    {
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v13 >= ((v5 + 64) >> 6))
      {
        goto LABEL_26;
      }

      v16 = *(v4 + 8 * v13);
      ++v15;
      if (v16)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_26:
    sub_224A3B7E4(v2);
    return v30;
  }

  return result;
}

uint64_t sub_224A5C064(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_224A36F98(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_224A5C0FC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224DAF838())
  {
    v4 = sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
    v5 = sub_224A5D644(&qword_281350A30, &qword_281350A40, 0x277CFA3A8);
    result = MEMORY[0x22AA5D540](i, v4, v5);
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
    v2 = 0x277CFA3A8uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x22AA5DCC0](v9, a1);
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

      sub_224A5E830(&v12, v10, &qword_281350A40, 0x277CFA3A8, &qword_27D6F35D8, &qword_224DB3BB0);

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
  v7 = sub_224DAF838();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_224A5C288(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_224A3B79C(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_224DAF6A8();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_224A5C358(uint64_t a1)
{
  v3 = *(sub_224DA9908() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 25) & ~*(v3 + 80));

  return sub_224A5C510(a1, v4, v5, v6);
}

unint64_t sub_224A5C3D0(uint64_t a1)
{
  v1 = a1;
  sub_224DAFE68();
  sub_224DAEE78();

  v2 = sub_224DAFEA8();

  return sub_224A5CA28(v1, v2);
}

uint64_t sub_224A5C510(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v46 - v9 + 16;
  BSDispatchQueueAssert();
  v11 = sub_224A5CC94(v47);
  v12 = sub_224A5CCF4(v46, a3);
  if (*v13)
  {
    sub_224A5CF54(a4, v10);
    sub_224A3311C(v10, &unk_27D6F5630, &unk_224DB34C0);
    (v12)(v46, 0);
    (v11)(v47, 0);
  }

  else
  {
    (v12)(v46, 0);
    (v11)(v47, 0);
    v14 = sub_224DA9908();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
    sub_224A3311C(v10, &unk_27D6F5630, &unk_224DB34C0);
  }

  v15 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_serviceAssertionIDs;
  swift_beginAccess();
  v16 = *&a2[v15];
  if (*(v16 + 16))
  {

    v17 = sub_224A5C3D0(a3);
    if (v18)
    {
      v19 = *(*(v16 + 56) + 8 * v17);

      v20 = *(v19 + 16);

      if (v20)
      {
        return result;
      }
    }

    else
    {
    }
  }

  if (qword_2813514B8 != -1)
  {
    swift_once();
  }

  v22 = sub_224DAB258();
  __swift_project_value_buffer(v22, qword_281364E50);
  v23 = a2;
  v24 = sub_224DAB228();
  v25 = sub_224DAF2A8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v46[0] = v28;
    v29 = 0xED0000726F74696ELL;
    *v26 = 136446466;
    v30 = 0x6F4D656369766564;
    v31 = 0x8000000224DC45E0;
    v32 = 0xE800000000000000;
    v33 = 0x736C6F72746E6F63;
    if (a3 != 4)
    {
      v33 = 0x6974697669746361;
      v32 = 0xEA00000000007365;
    }

    if (a3 == 3)
    {
      v33 = 0xD000000000000016;
    }

    else
    {
      v31 = v32;
    }

    v34 = 0xEA0000000000736ELL;
    v35 = 0xD00000000000001CLL;
    if (a3 == 1)
    {
      v35 = 0x6F69736E65747865;
    }

    else
    {
      v34 = 0x8000000224DC45C0;
    }

    if (a3)
    {
      v30 = v35;
      v29 = v34;
    }

    if (a3 <= 2u)
    {
      v36 = v30;
    }

    else
    {
      v36 = v33;
    }

    if (a3 <= 2u)
    {
      v37 = v29;
    }

    else
    {
      v37 = v31;
    }

    v38 = sub_224A33F74(v36, v37, v46);

    *(v26 + 4) = v38;
    *(v26 + 12) = 2114;
    BSDispatchQueueAssert();
    v39 = [*&v23[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection] remoteProcess];
    *(v26 + 14) = v39;
    *v27 = v39;
    _os_log_impl(&dword_224A2F000, v24, v25, "Unsubscribed from service: %{public}s from client: %{public}@", v26, 0x16u);
    sub_224A3311C(v27, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x22AA5EED0](v28, -1, -1);
    MEMORY[0x22AA5EED0](v26, -1, -1);
  }

  v40 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_serviceAssertions;
  swift_beginAccess();
  v41 = *&v23[v40];
  if (*(v41 + 16))
  {

    v42 = sub_224A5C3D0(a3);
    if (v43)
    {
      v44 = *(*(v41 + 56) + 8 * v42);
      swift_unknownObjectRetain();

      [v44 invalidate];
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  swift_beginAccess();
  sub_224B08B00(0, a3);
  return swift_endAccess();
}

unint64_t sub_224A5CA28(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 > 2)
      {
        if (v6 == 3)
        {
          v7 = 0xD000000000000016;
          v8 = 0x8000000224DC45E0;
        }

        else
        {
          if (v6 == 4)
          {
            v7 = 0x736C6F72746E6F63;
          }

          else
          {
            v7 = 0x6974697669746361;
          }

          if (v6 == 4)
          {
            v8 = 0xE800000000000000;
          }

          else
          {
            v8 = 0xEA00000000007365;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v6 == 1)
        {
          v7 = 0x6F69736E65747865;
        }

        else
        {
          v7 = 0xD00000000000001CLL;
        }

        if (v6 == 1)
        {
          v8 = 0xEA0000000000736ELL;
        }

        else
        {
          v8 = 0x8000000224DC45C0;
        }
      }

      else
      {
        v7 = 0x6F4D656369766564;
        v8 = 0xED0000726F74696ELL;
      }

      v9 = 0x736C6F72746E6F63;
      if (v5 != 4)
      {
        v9 = 0x6974697669746361;
      }

      v10 = 0xE800000000000000;
      if (v5 != 4)
      {
        v10 = 0xEA00000000007365;
      }

      if (v5 == 3)
      {
        v9 = 0xD000000000000016;
        v10 = 0x8000000224DC45E0;
      }

      v11 = 0xEA0000000000736ELL;
      v12 = 0xD00000000000001CLL;
      if (v5 == 1)
      {
        v12 = 0x6F69736E65747865;
      }

      else
      {
        v11 = 0x8000000224DC45C0;
      }

      if (!v5)
      {
        v12 = 0x6F4D656369766564;
        v11 = 0xED0000726F74696ELL;
      }

      v13 = v5 <= 2 ? v12 : v9;
      v14 = v5 <= 2 ? v11 : v10;
      if (v7 == v13 && v8 == v14)
      {
        break;
      }

      v15 = sub_224DAFD88();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
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

uint64_t (*sub_224A5CCF4(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_224A5CD6C(v4, a2);
  return sub_224A5D5EC;
}

void (*sub_224A5CD6C(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_224A5CF2C(v5);
  v5[9] = sub_224A5CE10((v5 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_224A5D5E8;
}

unint64_t (*sub_224A5CE10(uint64_t a1, uint64_t a2, char a3))(unint64_t result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_224A5C3D0(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_224B27BD8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_224B138AC(v14, a3 & 1);
    v9 = sub_224A5C3D0(a2);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_224DAFDD8();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v19 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v19 = 0;
  }

  *a1 = v19;
  return sub_224A5D5FC;
}

uint64_t (*sub_224A5CF2C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_224A5D5F0;
}

uint64_t sub_224A5CF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_224DA9908();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_224A3CECC(&qword_281351A18, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v32 = a1;
  v11 = sub_224DAED88();
  v12 = v10 + 56;
  v30 = v10 + 56;
  v31 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v27 = v2;
    v28 = v6;
    v29 = a2;
    v15 = ~v13;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    while (1)
    {
      v16(v9, *(v31 + 48) + v19 * v14, v5);
      sub_224A3CECC(&qword_281351A10, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v20 = sub_224DAEDD8();
      (*(v17 - 8))(v9, v5);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v30 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v21 = 1;
        v6 = v28;
        a2 = v29;
        return (*(v6 + 56))(a2, v21, 1, v5);
      }
    }

    v22 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v22;
    v33 = *v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_224AE4D50();
      v24 = v33;
    }

    v6 = v28;
    a2 = v29;
    (*(v28 + 32))(v29, *(v24 + 48) + v19 * v14, v5);
    sub_224A5D240(v14, MEMORY[0x277CC95F0], &qword_281351A18, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v21 = 0;
    *v22 = v33;
  }

  else
  {
    v21 = 1;
  }

  return (*(v6 + 56))(a2, v21, 1, v5);
}

uint64_t sub_224A5D240(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v43 = a4;
  v44 = a5;
  v42 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7, v9);
  v12 = &v38 - v11;
  v13 = *v5;
  v14 = *v5 + 56;
  v15 = -1 << *(*v5 + 32);
  v16 = (a1 + 1) & ~v15;
  if (((1 << v16) & *(v14 + 8 * (v16 >> 6))) != 0)
  {
    v17 = ~v15;

    v18 = sub_224DAF7A8();
    if ((*(v14 + 8 * (v16 >> 6)) & (1 << v16)) != 0)
    {
      v40 = (v18 + 1) & v17;
      v39 = *(v8 + 16);
      v45 = *(v8 + 72);
      v41 = v8 + 16;
      v19 = (v8 + 8);
      v20 = v13;
      v21 = v17;
      while (1)
      {
        v22 = v14;
        v23 = v45 * v16;
        v24 = v21;
        v39(v12, *(v20 + 48) + v45 * v16, v7);
        v25 = v20;
        sub_224A3CECC(v42, v43, v44);
        v26 = sub_224DAED88();
        (*v19)(v12, v7);
        v21 = v24;
        v27 = v26 & v24;
        if (a1 >= v40)
        {
          if (v27 < v40 || a1 < v27)
          {
LABEL_4:
            v20 = v25;
            goto LABEL_5;
          }
        }

        else if (v27 < v40 && a1 < v27)
        {
          goto LABEL_4;
        }

        v20 = v25;
        v30 = *(v25 + 48);
        v31 = v45 * a1;
        v32 = v30 + v45 * a1;
        v33 = v30 + v23 + v45;
        if (v45 * a1 < v23 || v32 >= v33)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v21 = v24;
          a1 = v16;
          goto LABEL_5;
        }

        a1 = v16;
        if (v31 != v23)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v16 = (v16 + 1) & v21;
        v14 = v22;
        if (((*(v22 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v20 = v13;
LABEL_28:
    *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v20 = v13;
  }

  v35 = *(v20 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v37;
    ++*(v20 + 36);
  }

  return result;
}

void sub_224A5D53C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_224A5D588(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

unint64_t sub_224A5D5FC(unint64_t result)
{
  v1 = *result;
  if (*result)
  {
    v2 = **(result + 8);
    if (*(result + 25))
    {
      *(v2[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      return sub_224B2495C(*(result + 16), *(result + 24), v1, v2);
    }
  }

  else if (*(result + 25))
  {
    return sub_224B1CD04(*(result + 16), **(result + 8));
  }

  return result;
}

uint64_t sub_224A5D644(unint64_t *a1, unint64_t *a2, void *a3)
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

char *sub_224A5D694(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v79 = sub_224DA9908();
  v76 = *(v79 - 8);
  v8 = *(v76 + 8);
  v10 = MEMORY[0x28223BE20](v79, v9);
  v11 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v75 = v69 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v17 = v69 - v16;
  v77 = *(v3 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  BSDispatchQueueAssert();
  v18 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_serviceAssertions;
  swift_beginAccess();
  v19 = *&v18[v3];
  if (*(v19 + 16))
  {

    v20 = sub_224A5C3D0(a1);
    if (v21)
    {
      v73 = *(*(v19 + 56) + 8 * v20);
      swift_unknownObjectRetain();

      goto LABEL_10;
    }
  }

  if (a2)
  {

    v23 = v78;
    v24 = a2(v22);
    if (v23)
    {
      sub_224A3D418(a2, a3);
      return v18;
    }

    v25 = v24;
    v78 = 0;
    swift_beginAccess();
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82[0] = *&v18[v4];
    *&v18[v4] = 0x8000000000000000;
    v73 = v25;
    sub_224B217E4(v25, a1, isUniquelyReferenced_nonNull_native);
    *&v18[v4] = v82[0];
    swift_endAccess();
    sub_224A3D418(a2, a3);
  }

  else
  {
    v73 = 0;
  }

LABEL_10:
  sub_224DA98F8();
  v27 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_serviceAssertionIDs;
  swift_beginAccess();
  v28 = *(v4 + v27);
  v29 = *(v28 + 16);
  v72 = a1;
  v69[1] = v8;
  if (v29)
  {

    v30 = sub_224A5C3D0(a1);
    if (v31)
    {
      v32 = *(*(v28 + 56) + 8 * v30);
    }

    else
    {
      v32 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    v32 = MEMORY[0x277D84FA0];
  }

  v83 = v32;
  v33 = v76;
  v69[0] = *(v76 + 2);
  v34 = v17;
  v35 = v17;
  v36 = v79;
  (v69[0])(v11, v34, v79);
  v37 = v75;
  sub_224A5DF04(v75, v11);
  v38 = *(v33 + 1);
  v71 = v33 + 8;
  v70 = v38;
  v38(v37, v36);
  v39 = v83;
  swift_beginAccess();
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *(v4 + v27);
  *(v4 + v27) = 0x8000000000000000;
  v41 = v39;
  LOBYTE(v39) = v72;
  sub_224A5E6E4(v41, v72, v40);
  *(v4 + v27) = v81;
  swift_endAccess();
  v74 = v35;
  v42 = v35;
  v43 = v39;
  (v69[0])(v37, v42, v36);
  v44 = (v33[80] + 25) & ~v33[80];
  v45 = swift_allocObject();
  *(v45 + 16) = v4;
  *(v45 + 24) = v43;
  (*(v33 + 4))(v45 + v44, v37, v36);
  aBlock[4] = sub_224A5C358;
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A3837C;
  aBlock[3] = &block_descriptor_250;
  v46 = _Block_copy(aBlock);
  v47 = objc_opt_self();
  v48 = v4;
  v49 = [v47 responderWithHandler_];
  _Block_release(v46);

  [v49 setQueue_];
  v18 = [objc_allocWithZone(MEMORY[0x277CF0B58]) initWithInfo:0 responder:v49];
  if (qword_2813514B8 != -1)
  {
    swift_once();
  }

  v50 = sub_224DAB258();
  __swift_project_value_buffer(v50, qword_281364E50);
  v51 = v48;
  v52 = sub_224DAB228();
  v53 = sub_224DAF2A8();

  if (os_log_type_enabled(v52, v53))
  {
    v76 = v18;
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock[0] = v56;
    v57 = 0xED0000726F74696ELL;
    *v54 = 136446466;
    v58 = 0x6F4D656369766564;
    v59 = 0x8000000224DC45E0;
    v60 = 0xE800000000000000;
    v61 = 0x736C6F72746E6F63;
    if (v43 != 4)
    {
      v61 = 0x6974697669746361;
      v60 = 0xEA00000000007365;
    }

    if (v43 == 3)
    {
      v61 = 0xD000000000000016;
    }

    else
    {
      v59 = v60;
    }

    v62 = 0xEA0000000000736ELL;
    v63 = 0xD00000000000001CLL;
    if (v43 == 1)
    {
      v63 = 0x6F69736E65747865;
    }

    else
    {
      v62 = 0x8000000224DC45C0;
    }

    if (v43)
    {
      v58 = v63;
      v57 = v62;
    }

    if (v43 <= 2u)
    {
      v64 = v58;
    }

    else
    {
      v64 = v61;
    }

    if (v43 <= 2u)
    {
      v65 = v57;
    }

    else
    {
      v65 = v59;
    }

    v66 = sub_224A33F74(v64, v65, aBlock);

    *(v54 + 4) = v66;
    *(v54 + 12) = 2114;
    BSDispatchQueueAssert();
    v67 = [*&v51[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection] remoteProcess];
    *(v54 + 14) = v67;
    *v55 = v67;
    _os_log_impl(&dword_224A2F000, v52, v53, "Subscribed to service: [%{public}s] from client: %{public}@", v54, 0x16u);
    sub_224A3311C(v55, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v55, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v56);
    MEMORY[0x22AA5EED0](v56, -1, -1);
    MEMORY[0x22AA5EED0](v54, -1, -1);

    swift_unknownObjectRelease();
    v70(v74, v79);
    return v76;
  }

  else
  {

    swift_unknownObjectRelease();
    v70(v74, v79);
  }

  return v18;
}

uint64_t sub_224A5DE40()
{
  v1 = sub_224DA9908();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224A5DF04(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_224DA9908();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_224A3CE84(&qword_281351A18, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v34 = a2;
  v12 = sub_224DAED88();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_224A3CE84(&qword_281351A10, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v22 = sub_224DAEDD8();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_224A5E1E4(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_224A5E1E4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_224DA9908();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_224AE02F4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_224A5E4AC(MEMORY[0x277CC95F0], &qword_27D6F3540, &unk_224DB3AE0);
      goto LABEL_12;
    }

    sub_224AE74A8(v11 + 1);
  }

  v13 = *v3;
  sub_224A3CE84(&qword_281351A18, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v14 = sub_224DAED88();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_224A3CE84(&qword_281351A10, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v22 = sub_224DAEDD8();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_224DAFDC8();
  __break(1u);
  return result;
}

void *sub_224A5E4AC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_224DAF8E8();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

unint64_t sub_224A5E6E4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_224A5C3D0(a2);
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
      sub_224B138AC(v14, a3 & 1);
      result = sub_224A5C3D0(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_224DAFDD8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_224B27BD8();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
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

uint64_t sub_224A5E830(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
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

      sub_224A3B79C(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
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
        v27 = sub_224ADD644(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_224A5B698(v28 + 1, a5, a6);
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
    sub_224A3B79C(0, a3, a4);
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
      v37 = *v11;
      v26 = a2;
      sub_224A5EAC8(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

void sub_224A5EAC8(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_224A5B698(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_224A4A5EC(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_224A3DCC0(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_224DAF698();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_224A3B79C(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_224DAF6A8();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_224DAFDC8();
  __break(1u);
}

uint64_t sub_224A5EC60(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v2 = sub_224DAE918();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v27[-v9];
  v11 = sub_224DAB258();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v32 = v11;
    v33 = v7;
    (*(v12 + 16))(v15, result + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_logger, v11);
    v31 = *(v3 + 16);
    v31(v10, v34, v2);
    v17 = sub_224DAB228();
    v18 = sub_224DAF278();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v29 = v19;
      v30 = swift_slowAlloc();
      v35 = v30;
      *v19 = 136446210;
      sub_224A43A4C(&qword_281350C28, MEMORY[0x277CE3D70], MEMORY[0x277CE3D80]);
      v28 = v18;
      v20 = sub_224DAFD28();
      v22 = v21;
      (*(v3 + 8))(v10, v2);
      v23 = sub_224A33F74(v20, v22, &v35);

      v24 = v29;
      *(v29 + 1) = v23;
      v25 = v24;
      _os_log_impl(&dword_224A2F000, v17, v28, "Protection Type changed to %{public}s", v24, 0xCu);
      v26 = v30;
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x22AA5EED0](v26, -1, -1);
      MEMORY[0x22AA5EED0](v25, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v10, v2);
    }

    (*(v12 + 8))(v15, v32);
    v31(v33, v34, v2);

    sub_224DAC0A8();
  }

  return result;
}

uint64_t sub_224A5F008(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v98 = a5;
  v97 = a4;
  v8 = sub_224DAE6E8();
  v90 = *(v8 - 8);
  v91 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v89 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DACB98();
  v87 = *(v11 - 8);
  v88 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v86 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DACC88();
  v96 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v95 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DABE18();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v84 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v92 = &v79 - v23;
  v100 = sub_224DAB258();
  v24 = *(v100 - 8);
  v26 = MEMORY[0x28223BE20](v100, v25);
  v85 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v79 - v29;
  v31 = *(a2 + 16);
  if (v31)
  {
    v80 = a3;
    v81 = a1;
    v93 = &v79 - v29;
    v94 = v14;
    v82 = v18;
    v83 = v17;
    v32 = v24;
    v33 = sub_224A61A78(v31, 0);
    v34 = *(sub_224DAC268() - 8);
    v35 = sub_224A61B9C(&v101, &v33[(*(v34 + 80) + 32) & ~*(v34 + 80)], v31, a2);
    v36 = v101;

    result = sub_224A3B7E4(v36);
    if (v35 != v31)
    {
      __break(1u);
      return result;
    }

    v24 = v32;
    v17 = v83;
    v18 = v82;
    v30 = v93;
    v14 = v94;
    a1 = v81;
    a3 = v80;
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  v38 = v99;
  v39 = sub_224A5FA18(a1, v33, a3);
  v41 = v96;
  if (v39)
  {
    v91 = v40;

    (*(v24 + 16))(v30, v38 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger, v100);
    v42 = v92;
    (*(v18 + 16))(v92, a1, v17);
    (*(v41 + 16))(v95, a3, v14);
    v43 = v30;
    v44 = sub_224DAB228();
    v45 = sub_224DAF268();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v94 = v14;
      v47 = v18;
      v48 = v46;
      v49 = v41;
      v99 = swift_slowAlloc();
      v101 = v99;
      *v48 = 136446466;
      sub_224A60144(&qword_281350E70, MEMORY[0x277CF98E0], MEMORY[0x277CF98F8]);
      v93 = v43;
      v50 = sub_224DAFD28();
      v90 = v24;
      v52 = v51;
      (*(v47 + 8))(v42, v17);
      v53 = sub_224A33F74(v50, v52, &v101);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2082;
      v54 = v95;
      v55 = v86;
      sub_224DACC68();
      sub_224A60144(&unk_281350D28, MEMORY[0x277CF9BF8], MEMORY[0x277CF9C00]);
      v56 = v88;
      v57 = sub_224DAFD28();
      v59 = v58;
      (*(v87 + 8))(v55, v56);
      (*(v49 + 8))(v54, v94);
      v60 = sub_224A33F74(v57, v59, &v101);

      *(v48 + 14) = v60;
      _os_log_impl(&dword_224A2F000, v44, v45, "%{public}s Fetched from cache for %{public}s", v48, 0x16u);
      v61 = v99;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v61, -1, -1);
      MEMORY[0x22AA5EED0](v48, -1, -1);

      (*(v90 + 8))(v93, v100);
    }

    else
    {

      (*(v41 + 8))(v95, v14);
      (*(v18 + 8))(v42, v17);
      (*(v24 + 8))(v43, v100);
    }

    v97(v91, 0);
  }

  else
  {

    v62 = sub_224DABDB8();
    v63 = [v62 isRemote];

    if ((v63 & 1) == 0)
    {
      v77 = (*(*v99 + 184))(a1, v33, a3, v97, v98);

      return v77;
    }

    v64 = v85;
    (*(v24 + 16))(v85, v99 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger, v100);
    v65 = v84;
    (*(v18 + 16))(v84, a1, v17);
    v66 = sub_224DAB228();
    v67 = sub_224DAF268();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = v17;
      v69 = v24;
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v101 = v71;
      *v70 = 136446210;
      sub_224A60144(&qword_281350E70, MEMORY[0x277CF98E0], MEMORY[0x277CF98F8]);
      v72 = sub_224DAFD28();
      v73 = v65;
      v75 = v74;
      (*(v18 + 8))(v73, v68);
      v76 = sub_224A33F74(v72, v75, &v101);

      *(v70 + 4) = v76;
      _os_log_impl(&dword_224A2F000, v66, v67, "%{public}s Failed to fetch from cache", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x22AA5EED0](v71, -1, -1);
      MEMORY[0x22AA5EED0](v70, -1, -1);

      (*(v69 + 8))(v64, v100);
    }

    else
    {

      (*(v18 + 8))(v65, v17);
      (*(v24 + 8))(v64, v100);
    }

    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v90 + 104))(v89, *MEMORY[0x277CE3BF0], v91);
    v78 = sub_224DAF638();
    v97(v78, 1);
  }

  return 0;
}