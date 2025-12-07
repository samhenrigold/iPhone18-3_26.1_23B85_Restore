void sub_22CEE32EC(void *a1)
{
  isEscapingClosureAtFileLocation = v1;
  v48[0] = a1;
  sub_22CEE3A84(v1 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_pushServer, v49);
  sub_22CEE3A84(v1 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_processManager, v61);
  sub_22CEE3A84(v1 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_activityStore, v60);
  sub_22CEE3A84(v1 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_authorizationManager, v59);
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v61, v61[3]);
  MEMORY[0x28223BE20](v3, v3);
  v5 = (v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v59, v59[3]);
  MEMORY[0x28223BE20](v7, v7);
  v9 = (v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v5;
  v12 = *v9;
  v13 = type metadata accessor for ProcessManager();
  v57 = v13;
  v58 = &off_284029E18;
  v56[0] = v11;
  v14 = type metadata accessor for AuthorizationManager();
  v54 = v14;
  v55 = &off_284029420;
  v53[0] = v12;
  v15 = _s11SessionCore6ClientCMa_1();
  v16 = objc_allocWithZone(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
  MEMORY[0x28223BE20](v17, v17);
  v19 = (v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v53, v54);
  MEMORY[0x28223BE20](v21, v21);
  v23 = (v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = *v19;
  v26 = *v23;
  v52[3] = v13;
  v52[4] = &off_284029E18;
  v51[4] = &off_284029420;
  v52[0] = v25;
  v51[3] = v14;
  v51[0] = v26;
  v27 = v48[0];
  *&v16[OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_connection] = v48[0];
  sub_22CEE3A84(v49, &v16[OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_pushServer]);
  sub_22CEE3A84(v52, &v16[OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_processManager]);
  sub_22CEE3A84(v60, &v16[OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_activityStore]);
  sub_22CEE3A84(v51, &v16[OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_authorizationManager]);
  v50.receiver = v16;
  v50.super_class = v15;
  v28 = v27;
  v29 = objc_msgSendSuper2(&v50, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  __swift_destroy_boxed_opaque_existential_1Tm(v59);
  __swift_destroy_boxed_opaque_existential_1Tm(v61);
  v30 = *(*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11SessionCore15PushTokenServer_lock) + 16);
  os_unfair_lock_lock(v30);
  swift_beginAccess();
  v31 = v29;
  sub_22CEE4A7C(v61, v31);
  swift_endAccess();

  os_unfair_lock_unlock(v30);
  v32 = [v28 remoteProcess];
  sub_22CEE4E5C();
  v38 = v37;
  v40 = v39;

  v41 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11SessionCore15PushTokenServer_knownClientStore);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3650, &qword_22D018900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D0187A0;
  *(inited + 32) = v38;
  *(inited + 40) = v40;
  v43 = *(*(v41 + 40) + 16);
  os_unfair_lock_lock(v43);
  sub_22CEE50F8(inited, v41);
  os_unfair_lock_unlock(v43);
  swift_setDeallocating();
  sub_22CEE5804(inited + 32);
  while (1)
  {
    v44 = swift_allocObject();
    *(v44 + 16) = v31;
    *(v44 + 24) = isEscapingClosureAtFileLocation;
    v45 = swift_allocObject();
    v45[2] = sub_22CEE5A98;
    v45[3] = v44;
    v49[4] = sub_22CEE5B1C;
    v49[5] = v45;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 1107296256;
    v49[2] = sub_22CEE5AA0;
    v49[3] = &block_descriptor_24;
    v46 = _Block_copy(v49);
    v31 = v31;
    v47 = isEscapingClosureAtFileLocation;

    [v28 configureConnection_];
    _Block_release(v46);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
    swift_once();
    v33 = sub_22D01637C();
    __swift_project_value_buffer(v33, qword_281444390);
    v34 = sub_22D01636C();
    v35 = sub_22D0168EC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_22CEE1000, v34, v35, "Could not get process identifier for client; not adding to known client store", v36, 2u);
      MEMORY[0x2318C6860](v36, -1, -1);
    }
  }

  [v28 activate];
}

uint64_t sub_22CEE3A34()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CEE3A84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t sub_22CEE3DAC@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3838, &qword_22D01BD28);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v49 - v7;
  v59 = sub_22D014A9C();
  v9 = *(v59 - 8);
  v11 = MEMORY[0x28223BE20](v59, v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v49 - v15;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  MEMORY[0x28223BE20](v57, v17);
  v58 = &v49 - v18;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_22D01454C();
  }

  v49 = v16;
  v52 = v13;
  v53 = a1;
  v20 = v9;
  v21 = *(*(Strong + OBJC_IVAR____TtC11SessionCore12OutputServer_lock) + 16);
  v56 = v8;
  v22 = Strong;
  os_unfair_lock_lock(v21);
  v23 = OBJC_IVAR____TtC11SessionCore12OutputServer__lock_activities;
  swift_beginAccess();
  v24 = *(v22 + v23);

  os_unfair_lock_unlock(v21);
  swift_unknownObjectRelease();
  v25 = v1;
  v26 = sub_22CEE4290(v24, v25);

  v27 = v26 + 64;
  v28 = 1 << *(v26 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v26 + 64);
  v31 = (v28 + 63) >> 6;
  v55 = (v20 + 48);
  v50 = v20;
  v51 = (v20 + 32);
  v60 = v26;

  v32 = 0;
  v54 = MEMORY[0x277D84F90];
  while (1)
  {
    v33 = v32;
    if (!v30)
    {
      break;
    }

    v34 = v3;
LABEL_11:
    v35 = __clz(__rbit64(v30)) | (v32 << 6);
    v36 = *(v60 + 56);
    v37 = (*(v60 + 48) + 16 * v35);
    v38 = *v37;
    v39 = v37[1];
    v40 = v36 + *(*(type metadata accessor for Activity(0) - 8) + 72) * v35;
    v22 = v58;
    sub_22CF1C294(v40, &v58[*(v57 + 48)], type metadata accessor for Activity);
    *v22 = v38;
    v22[1] = v39;

    v41 = v56;
    sub_22CF21918(v22, v56);
    v3 = v34;
    if (v34)
    {
      goto LABEL_22;
    }

    v30 &= v30 - 1;
    sub_22CEEC3D8(v22, &unk_27D9F3840, &unk_22D01A2B0);
    if ((*v55)(v41, 1, v59) == 1)
    {
      sub_22CEEC3D8(v41, &qword_27D9F3838, &qword_22D01BD28);
    }

    else
    {
      v42 = *v51;
      v22 = v49;
      v43 = v41;
      v44 = v59;
      (*v51)(v49, v43, v59);
      v42(v52, v22, v44);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_22CF22320(0, *(v54 + 2) + 1, 1, v54);
      }

      v46 = *(v54 + 2);
      v45 = *(v54 + 3);
      if (v46 >= v45 >> 1)
      {
        v54 = sub_22CF22320((v45 > 1), v46 + 1, 1, v54);
      }

      v47 = v54;
      *(v54 + 2) = v46 + 1;
      v42(&v47[((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v46], v52, v59);
    }
  }

  while (1)
  {
    v32 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v32 >= v31)
    {

      return sub_22D01454C();
    }

    v30 = *(v27 + 8 * v32);
    ++v33;
    if (v30)
    {
      v34 = v3;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:

  sub_22CEEC3D8(v22, &unk_27D9F3840, &unk_22D01A2B0);

  __break(1u);
  return result;
}

uint64_t sub_22CEE4290(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = a2;
  v10 = v8;
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();
      v15 = v10;
      v12 = sub_22CFD9114(v14, v6, a1, v15);
      MEMORY[0x2318C6860](v14, -1, -1);

      return v12;
    }
  }

  MEMORY[0x28223BE20](v8, v9);
  bzero(v16 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), 8 * v6);
  v11 = v10;
  v12 = sub_22CEE443C((v16 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a1);

  if (v2)
  {
    swift_willThrow();
  }

  return v12;
}

uint64_t sub_22CEE443C(unint64_t *a1, uint64_t a2, void *a3)
{
  v34 = a2;
  v35 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  MEMORY[0x28223BE20](v41, v4);
  v40 = (&v34 - v5);
  v6 = type metadata accessor for Activity(0);
  v39 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6 - 8, v7);
  v38 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0;
  v10 = 0;
  v42 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v43 = (v16 - 1) & v16;
LABEL_11:
    v21 = v18 | (v10 << 6);
    v22 = v42[7];
    v23 = (v42[6] + 16 * v21);
    v25 = *v23;
    v24 = v23[1];
    v26 = v38;
    v27 = *(v39 + 72);
    v37 = v21;
    sub_22CF1C294(v22 + v27 * v21, v38, type metadata accessor for Activity);
    v29 = v40;
    v28 = v41;
    *v40 = v25;
    *(v29 + 8) = v24;
    v30 = *(v28 + 48);
    sub_22CF1C294(v26, v29 + v30, type metadata accessor for Activity);
    swift_bridgeObjectRetain_n();
    sub_22CF16990(v29 + v30);
    v32 = v31;
    sub_22CEEC3D8(v29, &unk_27D9F3840, &unk_22D01A2B0);
    sub_22CF0C71C(v26);

    v16 = v43;
    if (v32)
    {
      *(v35 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
        return sub_22CEE4A40(v35, v34, v36, v42);
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      return sub_22CEE4A40(v35, v34, v36, v42);
    }

    v20 = v12[v10];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v43 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for Activity(uint64_t a1)
{
  result = qword_28143FDE8;
  if (!qword_28143FDE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22CEE4728(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void))
{
  v51 = a8;
  v14 = a5(0);
  v47 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v50 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v46 = &v45 - v19;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  result = sub_22D016D3C();
  v21 = result;
  if (a2 < 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = *a1;
  }

  v23 = 0;
  v24 = result + 64;
  v45 = a4;
  while (v22)
  {
    v25 = __clz(__rbit64(v22));
    v48 = (v22 - 1) & v22;
LABEL_16:
    v28 = v25 | (v23 << 6);
    v29 = a4[7];
    v30 = (a4[6] + 16 * v28);
    v32 = *v30;
    v31 = v30[1];
    v33 = v46;
    v49 = *(v47 + 72);
    v34 = v51;
    sub_22CF07D60(v29 + v49 * v28, v46, v51);
    sub_22CF7BE5C(v33, v50, v34);
    sub_22D016EAC();

    sub_22D0166DC();
    result = sub_22D016ECC();
    v35 = -1 << *(v21 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v24 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v24 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v24 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v24 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v43 = (*(v21 + 48) + 16 * v38);
    *v43 = v32;
    v43[1] = v31;
    result = sub_22CF7BE5C(v50, *(v21 + 56) + v38 * v49, v51);
    ++*(v21 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v45;
    v22 = v48;
    if (!a3)
    {
      return v21;
    }
  }

  v26 = v23;
  while (1)
  {
    v23 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v23 >= a2)
    {
      return v21;
    }

    v27 = a1[v23];
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v48 = (v27 - 1) & v27;
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

uint64_t sub_22CEE4A7C(uint64_t *a1, void *a2)
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

    v9 = sub_22D016B8C();

    if (v9)
    {

      _s11SessionCore6ClientCMa_1();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_22D016B7C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_22CF5FDD0(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_22CF77FD0(v20 + 1, &qword_27D9F27D0, &qword_22D0190C0);
    }

    v18 = v8;
    sub_22CF6569C();

    *v3 = v19;
    goto LABEL_16;
  }

  _s11SessionCore6ClientCMa_1();
  v11 = sub_22D016A5C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_22CEE4CDC(v18, v13, isUniquelyReferenced_nonNull_native, &qword_27D9F27D0, &qword_22D0190C0, _s11SessionCore6ClientCMa_1, sub_22CF606E0);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_22D016A6C();

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

void sub_22CEE4CDC(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), void (*a7)(void))
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
    sub_22CF77FD0(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      a7();
      goto LABEL_12;
    }

    v12 = a6;
    sub_22CF79A04(v10 + 1, a4, a5);
  }

  v13 = *v7;
  v14 = sub_22D016A5C();
  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v12(0);
    do
    {
      v17 = *(*(v13 + 48) + 8 * a2);
      v18 = sub_22D016A6C();

      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22D016E0C();
  __break(1u);
}

void sub_22CEE4E5C()
{
  v2 = [v0 bundleIdentifier];
  if (v2)
  {
    v3 = v2;
    sub_22D01667C();

    return;
  }

  v4 = [objc_opt_self() identifierWithPid_];
  if (v4)
  {
    v5 = v4;
    sub_22CEE82F8(0, &qword_28143D928, 0x277D46F48);
    v6 = v5;
    v7 = sub_22CF23FE0(v6);

    if (v1)
    {
LABEL_5:

      return;
    }

    v13 = [v7 name];

    if (!v13)
    {
      sub_22CF688AC();
      swift_allocError();
      *v16 = 0;
      *(v16 + 4) = 1;
      swift_willThrow();
      goto LABEL_5;
    }

    sub_22D01667C();
  }

  else
  {
    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v8 = sub_22D01637C();
    __swift_project_value_buffer(v8, qword_2814443C0);
    v9 = v0;
    v10 = sub_22D01636C();
    v11 = sub_22D0168EC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67240192;
      *(v12 + 4) = [v9 pid];

      _os_log_impl(&dword_22CEE1000, v10, v11, "Couldn't fetch an identifier for pid: %{public}d", v12, 8u);
      MEMORY[0x2318C6860](v12, -1, -1);
    }

    else
    {

      v10 = v9;
    }

    v14 = [v9 pid];
    sub_22CF688AC();
    swift_allocError();
    *v15 = v14;
    *(v15 + 4) = 0;
    swift_willThrow();
  }
}

void sub_22CEE50F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = a1 + 40;
LABEL_3:
    v7 = (v6 + 16 * v5);
    v8 = v5;
    while (v8 < v3)
    {
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_27;
      }

      v10 = *(v7 - 1);
      v9 = *v7;
      swift_beginAccess();
      swift_bridgeObjectRetain_n();
      v11 = sub_22CEE54CC(&v27, v10, v9);
      swift_endAccess();

      if (v11)
      {
        if (qword_28143DAD0 != -1)
        {
          swift_once();
        }

        v12 = sub_22D01637C();
        __swift_project_value_buffer(v12, qword_281444368);

        v13 = sub_22D01636C();
        v14 = sub_22D01690C();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v26 = v16;
          *v15 = 136380675;
          v17 = sub_22CEEE31C(v10, v9, &v26);

          *(v15 + 4) = v17;
          _os_log_impl(&dword_22CEE1000, v13, v14, "%{private}s is now a known client", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v16);
          MEMORY[0x2318C6860](v16, -1, -1);
          MEMORY[0x2318C6860](v15, -1, -1);

          v4 = 1;
          if (v5 != v3)
          {
            goto LABEL_3;
          }

          if (*(a2 + 32))
          {
            goto LABEL_21;
          }

LABEL_24:
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3470, &qword_22D018BA0);
          sub_22CFCBFE8(&qword_28143D9A0, MEMORY[0x277CBCE18]);
          sub_22D01645C();
          return;
        }

        v4 = 1;
        if (v5 != v3)
        {
          goto LABEL_3;
        }

LABEL_28:
        if (*(a2 + 32) == 1)
        {
          goto LABEL_21;
        }

        goto LABEL_24;
      }

      ++v8;
      v7 += 2;
      if (v5 == v3)
      {
        if (*(a2 + 32))
        {
          goto LABEL_21;
        }

        if (v4)
        {
          goto LABEL_24;
        }

        return;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (*(a2 + 32))
  {
    v4 = 0;
LABEL_21:
    swift_beginAccess();
    v18 = *(a2 + 48);
    v19 = *(v18 + 16);
    if (v19 && (v20 = sub_22CEE561C(v19, 0), v21 = sub_22CEE56A4(&v26, v20 + 4, v19, v18), v22 = v26, , sub_22CEE57FC(v22), v21 != v19))
    {
      __break(1u);
    }

    else
    {
      v23 = [objc_opt_self() standardUserDefaults];
      v24 = sub_22D0167CC();

      v25 = sub_22D01666C();
      [v23 setObject:v24 forKey:v25];

      if (v4)
      {
        goto LABEL_24;
      }
    }
  }
}

uint64_t sub_22CEE54CC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_22D016EAC();
  sub_22D0166DC();
  v8 = sub_22D016ECC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_22D016DFC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_22CF1C978(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

void *sub_22CEE561C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3650, &qword_22D018900);
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

void *sub_22CEE56A4(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_22CEE5AA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

void sub_22CEE5B4C(void *a1, void *a2, uint64_t a3)
{
  sub_22D014B2C();
  v6 = sub_22D01666C();

  v7 = [objc_opt_self() interfaceWithIdentifier_];

  v26 = sub_22CEE5F94;
  v27 = 0;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22CEE5F40;
  v25 = &block_descriptor_31_0;
  v8 = _Block_copy(&v22);
  v9 = &unk_284040870;

  v10 = objc_opt_self();
  v11 = [v10 protocolForProtocol:v9 interpreter:v8];
  _Block_release(v8);

  [v7 setClient_];
  v12 = [v10 protocolForProtocol_];
  [v7 setServer_];

  v13 = [objc_opt_self() utility];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a2;
  v26 = sub_22CFD5F14;
  v27 = v15;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D008590;
  v25 = &block_descriptor_40_0;
  v16 = _Block_copy(&v22);
  v17 = a2;

  [a1 setInterruptionHandler_];
  _Block_release(v16);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  v26 = sub_22CFD5F38;
  v27 = v19;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D008590;
  v25 = &block_descriptor_47_4;
  v20 = _Block_copy(&v22);
  v21 = v17;

  [a1 setInvalidationHandler_];
  _Block_release(v20);
}

uint64_t sub_22CEE5EF8()
{
  MEMORY[0x2318C6950](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_22CEE5F40(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4;
}

id sub_22CEE5F94(void *a1)
{
  [a1 selector];
  if (sub_22D0143EC())
  {

    return [a1 copyAsOnewayVoid];
  }

  else
  {

    return a1;
  }
}

unint64_t sub_22CEE6210(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v12 = *v5;
  result = sub_22CEE637C(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_8:
    v23 = *v8;
    if (v19)
    {
      *(v23[7] + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + 4 * result) = a2;
    *(v23[7] + 8 * result) = a1;
    v24 = v23[2];
    v17 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v17)
    {
      v23[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    v21 = result;
    sub_22CFB86CC(a4, a5);
    result = v21;
    goto LABEL_8;
  }

  sub_22CFBC080(v18, a3 & 1, a4, a5);
  result = sub_22CEE637C(a2);
  if ((v19 & 1) == (v22 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_22D016E1C();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

unint64_t sub_22CEE637C(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x2318C5FF0](*(v1 + 40), a1, 4);

  return sub_22CEE63C4(v2, v3);
}

unint64_t sub_22CEE63C4(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_22CEE6430(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_22D014ACC();
  v8 = sub_22D01666C();

  v9 = [objc_opt_self() interfaceWithIdentifier_];

  v26 = sub_22CEE684C;
  v27 = 0;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22CEE5F40;
  v25 = &block_descriptor_56_1;
  v10 = _Block_copy(&v22);
  v11 = &unk_2840404F8;

  v12 = objc_opt_self();
  v13 = [v12 protocolForProtocol:v11 interpreter:v10];
  _Block_release(v10);

  [v9 setClient_];
  v14 = [v12 protocolForProtocol_];
  [v9 setServer_];

  v15 = [objc_opt_self() main];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a4;
  v26 = sub_22CFD927C;
  v27 = v17;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D008590;
  v25 = &block_descriptor_65_0;
  v18 = _Block_copy(&v22);

  [a1 setInterruptionHandler_];
  _Block_release(v18);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a4;
  v26 = sub_22CFD92A4;
  v27 = v20;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D008590;
  v25 = &block_descriptor_72;
  v21 = _Block_copy(&v22);

  [a1 setInvalidationHandler_];
  _Block_release(v21);
}

uint64_t sub_22CEE67D8()
{
  MEMORY[0x2318C6950](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CEE6810()
{

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

id sub_22CEE684C(void *a1)
{
  [a1 selector];
  if (sub_22D0143EC())
  {

    return [a1 copyAsOnewayVoid];
  }

  else
  {

    return a1;
  }
}

void sub_22CEE68C4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3818, &qword_22D01BD00);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v73 - v7);
  v9 = [a1 remoteProcess];
  v10 = [v9 pid];

  v11 = [a1 remoteProcess];
  sub_22CEE4E5C();
  v81 = v12;
  v82 = v13;

  *v8 = a1;
  (*(v5 + 104))(v8, *MEMORY[0x277D4D530], v4);
  v14 = a1;
  v15 = [v14 remoteProcess];
  v16 = sub_22D01666C();
  v79 = v5;
  v17 = v16;
  v80 = [v15 hasEntitlement_];

  v77 = v14;
  v18 = [v14 remoteProcess];
  v19 = sub_22D01666C();
  v76 = [v18 hasEntitlement_];

  v20 = [v14 remoteProcess];
  v21 = sub_22D01666C();
  v74 = [v20 hasEntitlement_];

  sub_22CEE3A84(&v2[OBJC_IVAR____TtC11SessionCore12OutputServer_processManager], aBlock);
  v22 = __swift_mutable_project_boxed_opaque_existential_1(aBlock, v84);
  v75 = &v73;
  MEMORY[0x28223BE20](v22, v22);
  v24 = (&v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;
  v27 = type metadata accessor for ProcessManager();
  v28 = v2;
  v90 = v27;
  v91 = &off_284029E18;
  v89[0] = v26;
  v29 = _s11SessionCore6ClientCMa_2(0);
  v78 = 0;
  v30 = v10;
  v31 = v29;
  v32 = objc_allocWithZone(v29);
  v33 = __swift_mutable_project_boxed_opaque_existential_1(v89, v90);
  v73 = &v73;
  MEMORY[0x28223BE20](v33, v33);
  v35 = (&v73 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35);
  v37 = *v35;
  v88[3] = v27;
  v88[4] = &off_284029E18;
  v88[0] = v37;
  v38 = OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_lock;
  type metadata accessor for UnfairLock();
  v39 = swift_allocObject();
  v40 = swift_slowAlloc();
  *(v39 + 16) = v40;
  *v40 = 0;
  *&v32[v38] = v39;
  v41 = &v32[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_delegate];
  *&v32[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v42 = OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_subscriptionOptions;
  v43 = sub_22D014A1C();
  (*(*(v43 - 8) + 56))(&v32[v42], 1, 1, v43);
  v32[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_pendingChangeAck] = 0;
  *&v32[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_bufferedChanges] = 0;
  v44 = v79;
  (*(v79 + 16))(&v32[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__target], v8, v4);
  *&v32[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_pid] = v30;
  v45 = &v32[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processIdentifier];
  v46 = v82;
  *v45 = v81;
  v45[1] = v46;
  v32[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_hasActivityListenerEntitlement] = v80;
  v32[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_hasRemoteActivityAccessorEntitlement] = v76;
  v32[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_hasOutsizedPayloadsEntitlement] = v74;
  sub_22CEE3A84(v88, &v32[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processManager]);
  *(v41 + 1) = &off_28402C818;
  v47 = v77;
  swift_unknownObjectWeakAssign();
  v87.receiver = v32;
  v87.super_class = v31;
  v48 = v30;
  v49 = objc_msgSendSuper2(&v87, sel_init, v73);
  (*(v44 + 8))(v8, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v88);
  __swift_destroy_boxed_opaque_existential_1Tm(v89);
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  v50 = *(*&v28[OBJC_IVAR____TtC11SessionCore12OutputServer_lock] + 16);
  os_unfair_lock_lock(v50);
  v51 = OBJC_IVAR____TtC11SessionCore12OutputServer__lock_clients;
  swift_beginAccess();
  v52 = v49;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v89[0] = *&v28[v51];
  *&v28[v51] = 0x8000000000000000;
  sub_22CEE73BC(v52, v30, isUniquelyReferenced_nonNull_native);
  *&v28[v51] = v89[0];
  swift_endAccess();
  os_unfair_lock_unlock(v50);
  v54 = [v47 remoteProcess];
  v55 = v78;
  sub_22CEE4E5C();
  if (!v55)
  {
    v62 = v56;
    v63 = v57;

    v64 = __swift_project_boxed_opaque_existential_1(&v28[OBJC_IVAR____TtC11SessionCore12OutputServer_knownClientStore], *&v28[OBJC_IVAR____TtC11SessionCore12OutputServer_knownClientStore + 24]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3650, &qword_22D018900);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22D0187A0;
    *(inited + 32) = v62;
    *(inited + 40) = v63;
    v66 = *v64;
    v67 = *(*(*v64 + 40) + 16);
    os_unfair_lock_lock(v67);
    sub_22CEE50F8(inited, v66);
    os_unfair_lock_unlock(v67);
    swift_setDeallocating();
    sub_22CEE5804(inited + 32);
    goto LABEL_7;
  }

  if (qword_28143FAE8 != -1)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v58 = sub_22D01637C();
    __swift_project_value_buffer(v58, qword_281444390);
    v59 = sub_22D01636C();
    v60 = sub_22D0168EC();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_22CEE1000, v59, v60, "Could not get process identifier for client; not adding to known client store", v61, 2u);
      MEMORY[0x2318C6860](v61, -1, -1);
    }

LABEL_7:
    v68 = swift_allocObject();
    *(v68 + 16) = v52;
    *(v68 + 24) = v28;
    *(v68 + 32) = v48;
    v55 = swift_allocObject();
    v55[2] = sub_22CEE741C;
    v55[3] = v68;
    v85 = sub_22CEE5B1C;
    v86 = v55;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22CEE5AA0;
    v84 = &block_descriptor_53_1;
    v69 = _Block_copy(aBlock);
    v70 = v52;
    v71 = v28;

    [v47 configureConnection_];
    _Block_release(v69);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_10:
    swift_once();
  }

  [v47 activate];
}

uint64_t sub_22CEE7320()
{

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

uint64_t _s11SessionCore6ClientCMa_2(uint64_t a1)
{
  result = qword_28143FFD8;
  if (!qword_28143FFD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22CEE7430(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_22CEE74DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22CEE7524(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_22CEE760C(void *a1)
{
  v2 = v1;
  v60 = a1;
  v56 = sub_22D01502C();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v4);
  v61 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_22D01697C();
  v59 = *(v62 - 1);
  MEMORY[0x28223BE20](v62, v6);
  *&v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D01691C();
  MEMORY[0x28223BE20](v8, v9);
  v10 = sub_22D01653C();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = [a1 remoteProcess];
  v13 = [v12 pid];

  v57 = sub_22CEE82F8(0, &qword_28143FA08, 0x277D85C78);
  aBlock = 0;
  v64 = 0xE000000000000000;
  sub_22D016C6C();

  aBlock = 0xD000000000000030;
  v64 = 0x800000022D01DB20;
  LODWORD(v70[0]) = v13;
  v14 = sub_22D016DEC();
  MEMORY[0x2318C5860](v14);

  sub_22D01651C();
  aBlock = MEMORY[0x277D84F90];
  sub_22CEE83DC(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8340(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v59 + 13))(v58, *MEMORY[0x277D85268], v62);
  v54 = *(v2 + OBJC_IVAR____TtC11SessionCore11InputServer_queue);
  v15 = sub_22D0169BC();
  sub_22CEE3A84(v2 + OBJC_IVAR____TtC11SessionCore11InputServer_activityAuthorizer, &aBlock);
  sub_22CEE3A84(v2 + OBJC_IVAR____TtC11SessionCore11InputServer_backoffPolicy, v70);
  v57 = v2;
  v16 = *(v2 + OBJC_IVAR____TtC11SessionCore11InputServer_pushServer + 16);
  v58 = *(v2 + OBJC_IVAR____TtC11SessionCore11InputServer_pushServer);
  v53 = v16;
  v59 = type metadata accessor for Client(0);
  v17 = objc_allocWithZone(v59);
  *&v17[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = &v17[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_backoffBudget];
  v62 = v15;
  sub_22D01422C();
  v19 = type metadata accessor for DefaultInputBackoffBudget(0);
  *&v18[v19[6]] = 0x4008000000000000;
  *&v18[v19[7]] = 10;
  *&v18[v19[5]] = 10;
  *&v17[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_ephemeralActivityIdentifiers] = MEMORY[0x277D84FA0];
  sub_22D01435C();
  sub_22CEE3A84(&aBlock, &v17[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_activityAuthorizer]);
  v20 = v60;
  *&v17[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_connection] = v60;
  v21 = v20;
  v22 = [v21 remoteProcess];
  v23 = v61;
  sub_22CEE84BC(v22);
  (*(v55 + 32))(&v17[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_requester], v23, v56);
  sub_22CEE3A84(v70, &v17[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_backoffPolicy]);
  v24 = v54;
  *&v17[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_targetQueue] = v54;
  v25 = v62;
  *&v17[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_queue] = v62;
  v26 = &v17[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_pushServer];
  v27 = v53;
  *v26 = v58;
  *(v26 + 1) = v27;
  v69.receiver = v17;
  v69.super_class = v59;
  v28 = v24;
  swift_unknownObjectRetain();
  v29 = objc_msgSendSuper2(&v69, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v70);
  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  v30 = v57;
  v31 = v57 + OBJC_IVAR____TtC11SessionCore11InputServer_delegate;
  swift_unknownObjectWeakLoadStrong();
  *&v29[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_delegate + 8] = *(v31 + 8);
  swift_unknownObjectWeakAssign();
  v32 = v29;
  swift_unknownObjectRelease();
  v33 = *(*&v30[OBJC_IVAR____TtC11SessionCore11InputServer_lock] + 16);
  os_unfair_lock_lock(v33);
  swift_beginAccess();
  v34 = v32;
  sub_22CEE8E14(v70, v34);
  swift_endAccess();

  os_unfair_lock_unlock(v33);
  v35 = [v21 remoteProcess];
  sub_22CEE4E5C();
  v41 = v40;
  v43 = v42;

  v44 = __swift_project_boxed_opaque_existential_1(&v30[OBJC_IVAR____TtC11SessionCore11InputServer_knownClientStore], *&v30[OBJC_IVAR____TtC11SessionCore11InputServer_knownClientStore + 24]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3650, &qword_22D018900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D0187A0;
  *(inited + 32) = v41;
  *(inited + 40) = v43;
  v46 = *v44;
  v47 = *(*(*v44 + 40) + 16);
  os_unfair_lock_lock(v47);
  sub_22CEE50F8(inited, v46);
  os_unfair_lock_unlock(v47);
  swift_setDeallocating();
  sub_22CEE5804(inited + 32);
  while (1)
  {
    v48 = swift_allocObject();
    v48[2] = v34;
    v48[3] = v25;
    v48[4] = v30;
    v49 = swift_allocObject();
    v49[2] = sub_22CEEAA0C;
    v49[3] = v48;
    v67 = sub_22CEE5B1C;
    v68 = v49;
    aBlock = MEMORY[0x277D85DD0];
    v64 = 1107296256;
    v65 = sub_22CEE5AA0;
    v66 = &block_descriptor_59;
    v50 = _Block_copy(&aBlock);
    v51 = v25;
    v52 = v30;

    [v21 configureConnection_];
    _Block_release(v50);
    LOBYTE(v50) = swift_isEscapingClosureAtFileLocation();

    if ((v50 & 1) == 0)
    {
      break;
    }

    __break(1u);
    swift_once();
    v36 = sub_22D01637C();
    __swift_project_value_buffer(v36, qword_281444390);
    v37 = sub_22D01636C();
    v38 = sub_22D0168EC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_22CEE1000, v37, v38, "Could not get process identifier for client; not adding to known client store", v39, 2u);
      MEMORY[0x2318C6860](v39, -1, -1);
    }
  }

  [v21 activate];
}

uint64_t sub_22CEE82A0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CEE82F8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_22CEE8340(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_22CEE8394(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_22CEE83DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for Client(uint64_t a1)
{
  result = qword_28143FF88;
  if (!qword_28143FF88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for DefaultInputBackoffBudget(uint64_t a1)
{
  result = qword_281440510;
  if (!qword_281440510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22CEE84BC(void *a1)
{
  sub_22CEE4E5C();
  if (!v1)
  {
    sub_22D014F8C();
    v3 = sub_22D01666C();
    [a1 hasEntitlement_];

    sub_22D014FAC();
    v4 = sub_22D01666C();
    [a1 hasEntitlement_];

    sub_22D014FDC();
    v5 = sub_22D01666C();
    [a1 hasEntitlement_];

    sub_22D014F7C();
    sub_22CEE4E5C();
    v7 = v6;
    v9 = v8;
    v10 = objc_allocWithZone(MEMORY[0x277CC1E50]);
    v11 = sub_22CEE8744(v7, v9);
    v12 = [v11 extensionPointRecord];
    v13 = [v12 identifier];

    v14 = sub_22D01667C();
    v16 = v15;

    if (v14 == 0xD00000000000001ELL && 0x800000022D01F4A0 == v16)
    {
    }

    else
    {
      sub_22D016DFC();
    }

    sub_22D014FCC();
    sub_22CEE8810();
    sub_22D01500C();
  }
}

id sub_22CEE8744(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = sub_22D01666C();

  v8[0] = 0;
  v4 = [v2 initWithBundleIdentifier:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_22D01416C();

    swift_willThrow();
  }

  return v4;
}

void sub_22CEE8810()
{
  v1 = &off_278748000;
  v2 = [v0 bundleIdentifier];
  if (v2)
  {
    v3 = v2;
    v4 = sub_22D01667C();
    v6 = v5;

    sub_22CEE4E5C();
    v8 = v7;
    v10 = v9;
    v11 = objc_allocWithZone(MEMORY[0x277CC1E50]);
    v12 = sub_22CEE8744(v8, v10);
    v13 = [v12 extensionPointRecord];
    v14 = [v13 identifier];

    v15 = sub_22D01667C();
    v17 = v16;

    if (v15 == 0xD00000000000001ELL && 0x800000022D01F4A0 == v17)
    {
    }

    else
    {
      v19 = sub_22D016DFC();

      if ((v19 & 1) == 0)
      {
        sub_22CEE4E5C();

        v20 = objc_allocWithZone(MEMORY[0x277CC1E70]);
        v49 = sub_22CEE8CD0(v4, v6, 0);
        v21 = [v49 applicationExtensionRecords];
        sub_22CEE82F8(0, &qword_28143D910, 0x277CC1E50);
        sub_22CEE8DAC();
        v22 = sub_22D01685C();

        if ((v22 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          sub_22D016B3C();
          sub_22D01689C();
          v22 = v51;
          v23 = v52;
          v24 = v53;
          v25 = v54;
          v26 = v55;
        }

        else
        {
          v27 = -1 << *(v22 + 32);
          v23 = v22 + 56;
          v24 = ~v27;
          v28 = -v27;
          if (v28 < 64)
          {
            v29 = ~(-1 << v28);
          }

          else
          {
            v29 = -1;
          }

          v26 = v29 & *(v22 + 56);

          v25 = 0;
        }

        v30 = (v24 + 64) >> 6;
        if (v22 < 0)
        {
          goto LABEL_24;
        }

LABEL_19:
        v31 = v25;
        v32 = v26;
        v33 = v25;
        if (v26)
        {
LABEL_23:
          v34 = (v32 - 1) & v32;
          v35 = *(*(v22 + 48) + ((v33 << 9) | (8 * __clz(__rbit64(v32)))));
          while (v35)
          {
            v36 = v1;
            v37 = v23;
            v38 = v22;
            v39 = v35;
            v40 = [v35 extensionPointRecord];
            v41 = [v40 identifier];

            v42 = sub_22D01667C();
            v44 = v43;

            if (v42 == 0xD00000000000001ELL && 0x800000022D01F4A0 == v44)
            {

LABEL_36:
              sub_22CEE57FC(v38);

              v47 = [v39 v36 + 2424];
              if (v47)
              {
                v48 = v47;
                sub_22D01667C();
              }

              return;
            }

            v46 = sub_22D016DFC();

            if (v46)
            {
              goto LABEL_36;
            }

            v25 = v33;
            v26 = v34;
            v22 = v38;
            v23 = v37;
            v1 = v36;
            if ((v22 & 0x8000000000000000) == 0)
            {
              goto LABEL_19;
            }

LABEL_24:
            if (!sub_22D016BAC())
            {
              break;
            }

            swift_dynamicCast();
            v35 = v50;
            v33 = v25;
            v34 = v26;
          }

LABEL_34:
          sub_22CEE57FC(v22);
        }

        else
        {
          while (1)
          {
            v33 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              break;
            }

            if (v33 >= v30)
            {
              goto LABEL_34;
            }

            v32 = *(v23 + 8 * v33);
            ++v31;
            if (v32)
            {
              goto LABEL_23;
            }
          }

          __break(1u);
        }
      }
    }
  }
}

id sub_22CEE8CD0(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22D01666C();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_22D01416C();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_22CEE8DAC()
{
  result = qword_28143D908;
  if (!qword_28143D908)
  {
    sub_22CEE82F8(255, &qword_28143D910, 0x277CC1E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143D908);
  }

  return result;
}

uint64_t sub_22CEE8E14(uint64_t *a1, void *a2)
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

    v9 = sub_22D016B8C();

    if (v9)
    {

      type metadata accessor for Client(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_22D016B7C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_22CF5FD58(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_22CF77FD0(v20 + 1, &qword_27D9F27E0, &unk_22D0190D0);
    }

    v18 = v8;
    sub_22CF6569C();

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for Client(0);
  v11 = sub_22D016A5C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_22CEE4CDC(v18, v13, isUniquelyReferenced_nonNull_native, &qword_27D9F27E0, &unk_22D0190D0, type metadata accessor for Client, sub_22CF60290);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_22D016A6C();

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

void sub_22CEE90A4()
{
  v1 = v0;
  v2 = sub_22D0161DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D014AFC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_connection);
  if ([v12 remoteTarget])
  {
    sub_22D016ACC();
    swift_unknownObjectRelease();
  }

  else
  {
    v83 = 0u;
    v84 = 0u;
  }

  v81[0] = v83;
  v81[1] = v84;
  if (!*(&v84 + 1))
  {
    sub_22CEEC3D8(v81, &qword_27D9F2B10, &unk_22D01B930);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3628, &qword_22D01BBB8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    if (qword_28143FAE8 != -1)
    {
      swift_once();
    }

    v15 = sub_22D01637C();
    __swift_project_value_buffer(v15, qword_281444390);
    v16 = sub_22D01636C();
    v17 = sub_22D0168EC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22CEE1000, v16, v17, "Cannot send push tokens to bad remote target", v18, 2u);
      MEMORY[0x2318C6860](v18, -1, -1);
    }

    return;
  }

  v13 = v82;
  v14 = [v12 remoteProcess];
  sub_22CEE4E5C();
  v70 = v13;
  v71 = v8;
  v72 = v7;
  v73 = v3;
  v74 = v2;
  v20 = v19;
  v80 = v11;
  v22 = v21;

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_authorizationManager), *(v1 + OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_authorizationManager + 24));
  v23 = off_284029448[0];
  type metadata accessor for AuthorizationManager();
  v23(v22, v20);
  v24 = *(v1 + OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_activityStore + 24);
  v25 = *(v1 + OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_activityStore + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_activityStore), v24);
  v26 = (*(v25 + 8))(v24, v25);
  MEMORY[0x28223BE20](v26, v27);
  v78 = v22;
  v79 = v20;
  *(&v67 - 4) = v22;
  *(&v67 - 3) = v20;
  v66 = v80;
  v28 = sub_22CEE9F88(sub_22CFD5E74, (&v67 - 6), v26);

  v29 = v28;
  v30 = (v1 + OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_pushServer);
  v31 = *(v1 + OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_pushServer + 32);
  v75 = *(v1 + OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_pushServer + 24);
  v76 = v31;
  v32 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_pushServer), v75);
  v33 = *(v29 + 16);
  v77 = v6;
  v69 = v29;
  if (v33)
  {
    v67 = v32;
    v34 = sub_22CF75FA0(v33, 0);
    v35 = *(type metadata accessor for Activity(0) - 8);
    v68 = sub_22CF7B31C(v81, v34 + ((*(v35 + 80) + 32) & ~*(v35 + 80)), v33, v29);
    v36 = *&v81[0];

    sub_22CEE57FC(v36);
    if (v68 != v33)
    {
      __break(1u);
      return;
    }
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

  v37 = sub_22CEEA274(v34, v75, v76);

  *&v83 = v37;

  sub_22D0161EC();
  v38 = sub_22D015B3C();
  v40 = v39;
  v41 = v30[3];
  v42 = v30[4];
  __swift_project_boxed_opaque_existential_1(v30, v41);
  v43 = sub_22CEEB118(v38, v40, v41, v42);
  v75 = v44;
  v76 = v43;
  if (v44 >> 60 == 15)
  {
    sub_22CFBCC08(v38, v40, v81);

    sub_22CEEEF0C(*&v81[0], *(&v81[0] + 1));
  }

  else
  {
    v45 = v43;
    v46 = v44;
    sub_22CEEC970(v43, v44);
    v47 = v83;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v81[0] = v47;
    sub_22CEEC510(v45, v46, v38, v40, isUniquelyReferenced_nonNull_native);

    *&v83 = *&v81[0];
  }

  sub_22D01566C();
  v49 = sub_22D01563C();
  v50 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_processManager), *(v1 + OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_processManager + 24));
  v51 = v83;
  v52 = *v50;
  v53 = *(*v50 + 40);
  v54 = *(*v50 + 48);
  __swift_project_boxed_opaque_existential_1((*v50 + 16), v53);
  v55 = *(v54 + 32);
  v56 = v79;
  swift_bridgeObjectRetain_n();
  v57 = v70;
  swift_unknownObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v68 = v49;
  swift_retain_n();
  v58 = v78;
  v59 = v55(v78, v56, v53, v54);
  if (v59)
  {
    v60 = v59;

    swift_unknownObjectRetain();
    v61 = v68;

    sub_22CEED3DC(v60, 0xD000000000000013, 0x800000022D0218F0, 1, v52, v58, v56, v57, 10.0, v51, v61);

    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    sub_22CEEEBB4();
    v62 = swift_allocError();
    *v63 = 2;
    sub_22CEEE858(v62, v58, v56, v57, v51);

    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v64 = v73;
  v65 = v77;
  sub_22CEEEF0C(v76, v75);

  (*(v64 + 8))(v65, v74);
  (*(v71 + 8))(v80, v72);
}

uint64_t sub_22CEE9A08(char a1)
{
  v2 = sub_22D01659C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 72);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_22D0165BC();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v10 = [objc_opt_self() standardUserDefaults];
    v11 = sub_22D01666C();

    v12 = [v10 stringArrayForKey_];

    if (!v12)
    {
      return MEMORY[0x277D84F90];
    }

    v13 = sub_22D0167DC();

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CEE9BCC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_22CEE9A08(0);
  v19 = a1;
  v20 = a2;
  v18 = &v19;
  v7 = sub_22CEE7430(sub_22CF4D1FC, v17, v6);

  if (v7)
  {
    v8 = sub_22CEE9A08(1);
    v19 = a1;
    v20 = a2;
    MEMORY[0x28223BE20](v8, v9);
    v16[2] = &v19;
    v10 = sub_22CEE7430(sub_22CF4D9B8, v16, v8);

    v11 = sub_22D014AFC();
    if (v10)
    {
      v12 = MEMORY[0x277CB9588];
    }

    else
    {
      v12 = MEMORY[0x277CB9580];
    }

    return (*(*(v11 - 8) + 104))(a3, *v12, v11);
  }

  else
  {
    v13 = *MEMORY[0x277CB9578];
    v14 = sub_22D014AFC();
    return (*(*(v14 - 8) + 104))(a3, v13, v14);
  }
}

uint64_t sub_22CEE9D90()
{
  v1 = *v0;
  v2 = *(*(v1 + 32) + 16);
  os_unfair_lock_lock(v2);
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v2);
  return v4;
}

void *sub_22CEE9DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v5;
  v10 = a1;
  v24[1] = *MEMORY[0x277D85DE8];
  v11 = *(a3 + 32);
  v12 = v11 & 0x3F;
  v13 = (1 << v11) + 63;
  v14 = v13 >> 6;
  v15 = 8 * (v13 >> 6);
  if (v12 <= 0xD)
  {
    goto LABEL_2;
  }

  v20 = 8 * (v13 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v15 = v20;
LABEL_2:
    MEMORY[0x28223BE20](a1, v15);
    v17 = v24 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v17, v16);
    result = a4(v17, v14, a3, v10, a2);
    if (v7)
    {
      return swift_willThrow();
    }

    return result;
  }

  v21 = swift_slowAlloc();
  v22 = v7;
  v23 = sub_22CF7A7CC(v21, v14, a3, v10, a2, a5);
  result = MEMORY[0x2318C6860](v21, -1, -1);
  if (!v22)
  {
    return v23;
  }

  return result;
}

uint64_t sub_22CEE9FFC(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, char *))
{
  v34 = a4;
  v29 = a2;
  v30 = a1;
  v5 = type metadata accessor for Activity(0);
  v33 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5 - 8, v6);
  v31 = 0;
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v35 = a3;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v36 = (v15 - 1) & v15;
LABEL_11:
    v20 = v17 | (v9 << 6);
    v21 = v35[7];
    v22 = (v35[6] + 16 * v20);
    v23 = v22[1];
    v37[0] = *v22;
    v37[1] = v23;
    v24 = v32;
    v25 = v20;
    sub_22CF07D60(v21 + *(v33 + 72) * v20, v32, type metadata accessor for Activity);

    v26 = v38;
    v27 = v34(v37, v24);
    sub_22CF1CB18(v24, type metadata accessor for Activity);

    v38 = v26;
    if (v26)
    {
      return result;
    }

    v15 = v36;
    if (v27)
    {
      *(v30 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
        return sub_22CEE4728(v30, v29, v31, v35, type metadata accessor for Activity, &qword_27D9F2A28, &qword_22D0196C8, type metadata accessor for Activity);
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      return sub_22CEE4728(v30, v29, v31, v35, type metadata accessor for Activity, &qword_27D9F2A28, &qword_22D0196C8, type metadata accessor for Activity);
    }

    v19 = v11[v9];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v36 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_22CEEA274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a3;
  v80 = a2;
  v94 = sub_22D015E7C();
  v90 = *(v94 - 8);
  MEMORY[0x28223BE20](v94, v4);
  v93 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D015C8C();
  v92 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v84 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v88 = (&v79 - v11);
  v12 = type metadata accessor for Activity(0) - 8;
  MEMORY[0x28223BE20](v12, v13);
  v16 = (&v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x277D84FA0];
  v96 = MEMORY[0x277D84FA0];
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v20 = *(v14 + 72);
    do
    {
      sub_22CF0F9C8(v19, v16);
      v21 = *v16;
      v22 = v16[1];

      sub_22CEE54CC(&v95, v21, v22);

      sub_22CF0C71C(v16);
      v19 += v20;
      --v18;
    }

    while (v18);
    v17 = v96;
  }

  v23 = sub_22D015F2C();
  v24 = v23;
  v91 = *(v23 + 16);
  if (!v91)
  {
    v85 = MEMORY[0x277D84F90];
LABEL_27:

    MEMORY[0x28223BE20](v48, v49);
    v50 = v81;
    *(&v79 - 4) = v80;
    *(&v79 - 3) = v50;
    *(&v79 - 2) = v82;
    v51 = sub_22CEEADE8(sub_22CFD5E98, (&v79 - 6), v85);

    v92 = *(v51 + 2);
    if (!v92)
    {
      v53 = MEMORY[0x277D84F98];
LABEL_43:

      return v53;
    }

    v52 = 0;
    v91 = &v51[(*(v90 + 80) + 32) & ~*(v90 + 80)];
    v88 = (v90 + 8);
    v89 = v90 + 16;
    v53 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v52 >= *(v51 + 2))
      {
        goto LABEL_45;
      }

      (*(v90 + 16))(v93, &v91[*(v90 + 72) * v52], v94);
      v58 = sub_22D015E4C();
      v60 = v59;
      v61 = sub_22D015E5C();
      v63 = v62;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = v53;
      v65 = sub_22CEEC698(v58, v60);
      v67 = v53[2];
      v68 = (v66 & 1) == 0;
      v69 = __OFADD__(v67, v68);
      v70 = v67 + v68;
      if (v69)
      {
        goto LABEL_46;
      }

      v71 = v66;
      if (v53[3] < v70)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_37;
      }

      v77 = v65;
      sub_22CFB83E8();
      v65 = v77;
      if (v71)
      {
LABEL_29:
        v54 = v65;

        v53 = v95;
        v55 = (v95[7] + 16 * v54);
        v56 = *v55;
        v57 = v55[1];
        *v55 = v61;
        v55[1] = v63;
        sub_22CEE7524(v56, v57);
        (*v88)(v93, v94);
        goto LABEL_30;
      }

LABEL_38:
      v53 = v95;
      v95[(v65 >> 6) + 8] |= 1 << v65;
      v73 = (v53[6] + 16 * v65);
      *v73 = v58;
      v73[1] = v60;
      v74 = (v53[7] + 16 * v65);
      *v74 = v61;
      v74[1] = v63;
      (*v88)(v93, v94);
      v75 = v53[2];
      v69 = __OFADD__(v75, 1);
      v76 = v75 + 1;
      if (v69)
      {
        goto LABEL_47;
      }

      v53[2] = v76;
LABEL_30:
      if (v92 == ++v52)
      {
        goto LABEL_43;
      }
    }

    sub_22CEEE59C(v70, isUniquelyReferenced_nonNull_native);
    v65 = sub_22CEEC698(v58, v60);
    if ((v71 & 1) != (v72 & 1))
    {
      goto LABEL_48;
    }

LABEL_37:
    if (v71)
    {
      goto LABEL_29;
    }

    goto LABEL_38;
  }

  v25 = 0;
  v89 = v92 + 16;
  v26 = v17 + 56;
  v83 = (v92 + 32);
  v87 = (v92 + 8);
  v85 = MEMORY[0x277D84F90];
  v86 = v23;
  v27 = v88;
  while (v25 < *(v24 + 16))
  {
    v28 = (*(v92 + 80) + 32) & ~*(v92 + 80);
    v29 = *(v92 + 72);
    (*(v92 + 16))(v27, v24 + v28 + v29 * v25, v6);
    v30 = sub_22D015C3C();
    v32 = v31;
    if (*(v17 + 16))
    {
      v33 = v30;
      v34 = v6;
      sub_22D016EAC();
      sub_22D0166DC();
      v35 = sub_22D016ECC();
      v36 = -1 << *(v17 + 32);
      v37 = v35 & ~v36;
      if ((*(v26 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
      {
        v38 = ~v36;
        while (1)
        {
          v39 = (*(v17 + 48) + 16 * v37);
          v40 = *v39 == v33 && v39[1] == v32;
          if (v40 || (sub_22D016DFC() & 1) != 0)
          {
            break;
          }

          v37 = (v37 + 1) & v38;
          if (((*(v26 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        v41 = *v83;
        v27 = v88;
        (*v83)(v84, v88, v34);
        v42 = v85;
        v43 = swift_isUniquelyReferenced_nonNull_native();
        v96 = v42;
        if ((v43 & 1) == 0)
        {
          sub_22CF44368(0, *(v42 + 16) + 1, 1);
          v27 = v88;
          v42 = v96;
        }

        v45 = *(v42 + 16);
        v44 = *(v42 + 24);
        v46 = v42;
        if (v45 >= v44 >> 1)
        {
          sub_22CF44368((v44 > 1), v45 + 1, 1);
          v27 = v88;
          v46 = v96;
        }

        *(v46 + 16) = v45 + 1;
        v85 = v46;
        v47 = v46 + v28 + v45 * v29;
        v6 = v34;
        v41(v47, v84, v34);
      }

      else
      {
LABEL_19:

        v27 = v88;
        v6 = v34;
        (*v87)(v88, v34);
      }

      v24 = v86;
    }

    else
    {

      (*v87)(v27, v6);
    }

    if (++v25 == v91)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_22D016E1C();
  __break(1u);
  return result;
}

uint64_t sub_22CEEAA30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(*(*v3 + 24) + 16);
  os_unfair_lock_lock(v5);
  v6 = a3();
  os_unfair_lock_unlock(v5);
  return v6;
}

void sub_22CEEAA88(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_22D014AAC();
  v7 = sub_22D01666C();

  v8 = [objc_opt_self() interfaceWithIdentifier_];

  v9 = objc_opt_self();
  v10 = [v9 protocolForProtocol_];
  [v8 setClient_];

  v11 = [v9 protocolForProtocol_];
  [v8 setServer_];

  v12 = [objc_opt_self() userInteractive];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  v13 = a2;
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v25 = sub_22CF460F4;
  v26 = v15;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_22D008590;
  v24 = &block_descriptor_68;
  v16 = _Block_copy(&v21);

  [a1 setInterruptionHandler_];
  _Block_release(v16);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v13;
  v25 = sub_22CF46158;
  v26 = v18;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_22D008590;
  v24 = &block_descriptor_75;
  v19 = _Block_copy(&v21);
  v20 = v13;

  [a1 setInvalidationHandler_];
  _Block_release(v19);
}

uint64_t sub_22CEEADA8()
{
  MEMORY[0x2318C6950](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

char *sub_22CEEADE8(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3630, &unk_22D018FB0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v27 - v8;
  v10 = sub_22D015E7C();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v34 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v31 = &v27 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = *(sub_22D015C8C() - 8);
  v28 = v11;
  v32 = (v11 + 32);
  v33 = (v11 + 48);
  v19 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v20 = *(v18 + 72);
  v35 = MEMORY[0x277D84F90];
  v29 = v10;
  v30 = a1;
  v27 = v20;
  while (1)
  {
    a1(v19);
    if (v3)
    {
      break;
    }

    if ((*v33)(v9, 1, v10) == 1)
    {
      sub_22CEEC3D8(v9, &unk_27D9F3630, &unk_22D018FB0);
    }

    else
    {
      v21 = v31;
      v22 = *v32;
      (*v32)(v31, v9, v10);
      v22(v34, v21, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_22CFCE240(0, *(v35 + 2) + 1, 1, v35);
      }

      v24 = *(v35 + 2);
      v23 = *(v35 + 3);
      if (v24 >= v23 >> 1)
      {
        v35 = sub_22CFCE240((v23 > 1), v24 + 1, 1, v35);
      }

      v25 = v35;
      *(v35 + 2) = v24 + 1;
      v10 = v29;
      v22(&v25[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24], v34, v29);
      a1 = v30;
      v20 = v27;
    }

    v19 += v20;
    if (!--v17)
    {
      return v35;
    }
  }

  return v35;
}

uint64_t sub_22CEEB118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a2;
  v59 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3630, &unk_22D018FB0);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v55 = &v49 - v13;
  v14 = sub_22D015C8C();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v49 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2700, &unk_22D01AEA0);
  v25 = MEMORY[0x28223BE20](v23 - 8, v24);
  v54 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v56 = &v49 - v28;
  v52 = a3;
  v53 = v4;
  result = sub_22D015F2C();
  v30 = result;
  v31 = *(result + 16);
  if (v31)
  {
    v49 = a4;
    v50 = v19;
    v51 = v11;
    v32 = 0;
    v58 = result + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v33 = (v15 + 8);
    while (v32 < *(v30 + 16))
    {
      v35 = v58 + *(v15 + 72) * v32;
      v36 = v15;
      v37 = *(v15 + 16);
      v38 = v14;
      v37(v22, v35, v14);
      if (sub_22D015B4C())
      {
        if (sub_22D015C3C() == v59 && v39 == v57)
        {

LABEL_12:

          v14 = v38;
          v15 = v36;
          (*(v36 + 32))(v56, v22, v14);
          v40 = 0;
LABEL_13:
          v19 = v50;
          v11 = v51;
          v41 = v55;
          goto LABEL_14;
        }

        v34 = sub_22D016DFC();

        if (v34)
        {
          goto LABEL_12;
        }
      }

      ++v32;
      v14 = v38;
      result = (*v33)(v22, v38);
      v15 = v36;
      if (v31 == v32)
      {

        v40 = 1;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {

    v40 = 1;
    v41 = v55;
LABEL_14:
    v42 = v54;
    v43 = v56;
    (*(v15 + 56))(v56, v40, 1, v14);
    sub_22CEEB6DC(v43, v42, &qword_27D9F2700, &unk_22D01AEA0);
    if ((*(v15 + 48))(v42, 1, v14) == 1)
    {
      sub_22CEEC3D8(v43, &qword_27D9F2700, &unk_22D01AEA0);
      sub_22CEEC3D8(v42, &qword_27D9F2700, &unk_22D01AEA0);
      return 0;
    }

    else
    {
      (*(v15 + 32))(v19, v42, v14);
      v45 = sub_22D015EEC();
      MEMORY[0x28223BE20](v45, v46);
      *(&v49 - 2) = v19;
      sub_22CEEB820(sub_22CEEC2D0, v45, v41);

      sub_22CEEB6DC(v41, v11, &unk_27D9F3630, &unk_22D018FB0);
      v47 = sub_22D015E7C();
      v48 = *(v47 - 8);
      if ((*(v48 + 48))(v11, 1, v47) == 1)
      {
        sub_22CEEC3D8(v41, &unk_27D9F3630, &unk_22D018FB0);
        sub_22CEEC3D8(v43, &qword_27D9F2700, &unk_22D01AEA0);
        sub_22CEEC3D8(v11, &unk_27D9F3630, &unk_22D018FB0);
        v44 = 0;
      }

      else
      {
        v44 = sub_22D015E5C();
        sub_22CEEC3D8(v41, &unk_27D9F3630, &unk_22D018FB0);
        sub_22CEEC3D8(v43, &qword_27D9F2700, &unk_22D01AEA0);
        (*(v48 + 8))(v11, v47);
      }

      (*(v15 + 8))(v19, v14);
    }

    return v44;
  }

  return result;
}

uint64_t sub_22CEEB6DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22CEEB744()
{
  v1 = *(*(*v0 + 32) + 16);
  os_unfair_lock_lock(v1);
  v2 = sub_22D015ACC();
  os_unfair_lock_unlock(v1);
  return v2;
}

void sub_22CEEB84C(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_pushServer];
  v5 = *&v1[OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_authorizationManager];
  v6 = objc_allocWithZone(type metadata accessor for PushFrequentUpdatesObservationClient());
  v7 = v4;

  v8 = a1;
  v9 = sub_22CEEBC88(v8, v7, v5);
  v10 = *(*&v2[OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_lock] + 16);
  os_unfair_lock_lock(v10);
  swift_beginAccess();
  v11 = v9;
  sub_22CEEC710(&v18, v11);
  swift_endAccess();

  os_unfair_lock_unlock(v10);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_22CEEC9C4;
  *(v13 + 24) = v12;
  aBlock[4] = sub_22CEE5B1C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEE5AA0;
  aBlock[3] = &block_descriptor_26;
  v14 = _Block_copy(aBlock);
  v15 = v11;
  v16 = v2;

  [v8 configureConnection_];
  _Block_release(v14);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    [v8 activate];
  }
}

uint64_t sub_22CEEBAB4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v25 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v8;
    v23 = a4;
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v7);
      v18 = v25(v11);
      if (v4)
      {
        return (*v15)(v11, v7);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v7);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v8 = v22;
        a4 = v23;
        return (*(v8 + 56))(a4, v19, 1, v7);
      }
    }

    v8 = v22;
    a4 = v23;
    (*(v22 + 32))(v23, v11, v7);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v8 + 56))(a4, v19, 1, v7);
}

char *sub_22CEEBC88(void *a1, void *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3950, &qword_22D01BEF8);
  v8 = *(v7 - 8);
  v47 = v7;
  v48 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v43 = v35 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3670, &qword_22D01BF00);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3960, &qword_22D01BF08);
  v16 = *(v15 - 8);
  v41 = v15;
  v42 = v16;
  MEMORY[0x28223BE20](v15, v17);
  v19 = v35 - v18;
  *&v3[OBJC_IVAR____TtC11SessionCoreP33_4F2D4625D323D26671D2A7737A69A19536PushFrequentUpdatesObservationClient_cancellables] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR____TtC11SessionCoreP33_4F2D4625D323D26671D2A7737A69A19536PushFrequentUpdatesObservationClient_connection] = a1;
  *&v3[OBJC_IVAR____TtC11SessionCoreP33_4F2D4625D323D26671D2A7737A69A19536PushFrequentUpdatesObservationClient_pushServer] = a2;
  v45 = a3;
  *&v3[OBJC_IVAR____TtC11SessionCoreP33_4F2D4625D323D26671D2A7737A69A19536PushFrequentUpdatesObservationClient_authorizationManager] = a3;
  v20 = type metadata accessor for PushFrequentUpdatesObservationClient();
  v51.receiver = v3;
  v51.super_class = v20;
  v46 = a1;
  v44 = a2;

  v39 = objc_msgSendSuper2(&v51, sel_init);
  v40 = OBJC_IVAR____TtC11SessionCoreP33_4F2D4625D323D26671D2A7737A69A19536PushFrequentUpdatesObservationClient_pushServer;
  v21 = *&v39[OBJC_IVAR____TtC11SessionCoreP33_4F2D4625D323D26671D2A7737A69A19536PushFrequentUpdatesObservationClient_pushServer];
  v22 = v39;
  v23 = v21;
  v24 = sub_22D015EBC();

  v49 = v24;
  sub_22CEEC38C();
  v25 = sub_22D01698C();
  v50 = v25;
  v26 = sub_22D01693C();
  v27 = *(v26 - 8);
  v37 = *(v27 + 56);
  v38 = v27 + 56;
  v37(v14, 1, 1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3970, &qword_22D01BF10);
  v36 = MEMORY[0x277CBCD90];
  sub_22CEE8394(&qword_28143D9F8, &unk_27D9F3970, &qword_22D01BF10, MEMORY[0x277CBCD90]);
  v35[1] = sub_22CEEC480(&qword_28143FA10, sub_22CEEC38C, MEMORY[0x277D85228]);
  sub_22D01647C();
  sub_22CEEC3D8(v14, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v35[0] = MEMORY[0x277CBCD60];
  sub_22CEE8394(&unk_28143DA38, &unk_27D9F3960, &qword_22D01BF08, MEMORY[0x277CBCD60]);
  v28 = v41;
  sub_22D0164AC();

  (*(v42 + 8))(v19, v28);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  v29 = *&v39[v40];
  v30 = sub_22D015E9C();

  v49 = v30;
  v31 = sub_22D01698C();
  v50 = v31;
  v37(v14, 1, 1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3980, &qword_22D01BF18);
  sub_22CEE8394(&qword_28143D9D8, &unk_27D9F3980, &qword_22D01BF18, v36);
  v32 = v43;
  sub_22D01647C();
  sub_22CEEC3D8(v14, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_22CEE8394(&qword_28143DA20, &unk_27D9F3950, &qword_22D01BEF8, v35[0]);
  v33 = v47;
  sub_22D0164AC();

  (*(v48 + 8))(v32, v33);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  return v22;
}

uint64_t sub_22CEEC298()
{
  MEMORY[0x2318C6950](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CEEC2F0(uint64_t a1)
{
  v1 = sub_22D015E4C();
  v3 = v2;
  if (v1 == sub_22D015C3C() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_22D016DFC();
  }

  return v5 & 1;
}

unint64_t sub_22CEEC38C()
{
  result = qword_28143FA08;
  if (!qword_28143FA08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28143FA08);
  }

  return result;
}

uint64_t sub_22CEEC3D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22CEEC438(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22CEEC480(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22CEEC4C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22CEEC510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_22CEEC698(a3, a4);
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
      sub_22CEEE59C(v18, a5 & 1);
      v13 = sub_22CEEC698(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_22D016E1C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_22CFB83E8();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    return sub_22CEE7524(v25, v26);
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v23[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v23[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v23[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v31;
}

unint64_t sub_22CEEC698(uint64_t a1, uint64_t a2)
{
  sub_22D016EAC();
  sub_22D0166DC();
  v4 = sub_22D016ECC();

  return sub_22CEECD00(a1, a2, v4);
}

uint64_t sub_22CEEC710(uint64_t *a1, void *a2)
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

    v9 = sub_22D016B8C();

    if (v9)
    {

      type metadata accessor for PushFrequentUpdatesObservationClient();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_22D016B7C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_22CF5FE0C(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_22CF77FD0(v20 + 1, &qword_27D9F27C8, &qword_22D0190B8);
    }

    v18 = v8;
    sub_22CF6569C();

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for PushFrequentUpdatesObservationClient();
  v11 = sub_22D016A5C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_22CEE4CDC(v18, v13, isUniquelyReferenced_nonNull_native, &qword_27D9F27C8, &qword_22D0190B8, type metadata accessor for PushFrequentUpdatesObservationClient, sub_22CF606F4);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_22D016A6C();

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

uint64_t sub_22CEEC970(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_22CEEC9CC(void *a1, char *a2, void *a3)
{
  sub_22D014BFC();
  v6 = sub_22D01666C();

  v7 = [objc_opt_self() interfaceWithIdentifier_];

  v8 = objc_opt_self();
  v9 = [v8 protocolForProtocol_];
  [v7 setClient_];

  v10 = [v8 protocolForProtocol_];
  [v7 setServer_];

  v11 = [objc_opt_self() utility];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v24 = sub_22CFDAFA0;
  v25 = v12;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_22D008590;
  v23 = &block_descriptor_30_0;
  v13 = _Block_copy(&v20);
  v14 = a2;
  v15 = a3;

  [a1 setInterruptionHandler_];
  _Block_release(v13);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v24 = sub_22CFDAFC4;
  v25 = v16;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_22D008590;
  v23 = &block_descriptor_36_0;
  v17 = _Block_copy(&v20);
  v18 = v14;
  v19 = v15;

  [a1 setInvalidationHandler_];
  _Block_release(v17);
}

uint64_t sub_22CEECCB8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_22CEECD00(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_22D016DFC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_22CEECE5C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3938, qword_22D01BED0);
    v2 = sub_22D016C3C();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v9 = 0;
  while (v5)
  {
LABEL_15:

    swift_dynamicCast();
    result = sub_22D016BDC();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v15);
        if (v19 != -1)
        {
          v10 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v5 &= v5 - 1;
    v11 = *(v2 + 48) + 40 * v10;
    *(v11 + 32) = v22;
    *v11 = v20;
    *(v11 + 16) = v21;
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 56 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_22CEED090(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_beginAccess();
  v9 = a1[4];
  if (*(v9 + 16))
  {

    v10 = sub_22CEEC698(a2, a3);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 4 * v10);

      swift_beginAccess();
      v13 = a1[5];
      if (*(v13 + 16))
      {
        v14 = sub_22CEE637C(v12);
        if (v15)
        {
          v16 = *(*(v13 + 56) + 8 * v14);
          *a4 = v16;
          v17 = v16;
          return;
        }
      }
    }

    else
    {
    }
  }

  v18 = sub_22D01666C();
  v19 = [objc_opt_self() predicateMatchingBundleIdentifier_];

  sub_22CEE82F8(0, &qword_28143D928, 0x277D46F48);
  v20 = v19;
  v21 = sub_22CF17328(v20, &selRef_handleForPredicate_error_);
  if (v4)
  {

    v22 = 0;
  }

  else
  {
    v23 = v21;

    if (v23)
    {
      v22 = [v23 currentState];
      if (v22)
      {
        v30 = a4;
        v24 = a1[3];

        v25 = sub_22CF24034(a2, a3, v24);

        if (v25)
        {
          v29 = [v23 pid];
          swift_beginAccess();
          v26 = v22;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v31 = a1[5];
          a1[5] = 0x8000000000000000;
          sub_22CFBED5C(v26, v29, isUniquelyReferenced_nonNull_native);
          a1[5] = v31;
          swift_endAccess();
          LODWORD(v26) = [v23 pid];
          swift_beginAccess();
          v28 = swift_isUniquelyReferenced_nonNull_native();
          v32 = a1[4];
          a1[4] = 0x8000000000000000;
          sub_22CFBEBF8(v26, a2, a3, v28);
          a1[4] = v32;
          swift_endAccess();
        }

        a4 = v30;
      }

      else
      {
      }
    }

    else
    {
      v22 = 0;
    }
  }

  *a4 = v22;
}

uint64_t sub_22CEED358(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v5[6] + 16);
  os_unfair_lock_lock(v6);
  sub_22CEED090(v5, a1, a2, &v8);
  os_unfair_lock_unlock(v6);
  return v8;
}

void sub_22CEED3DC(void *a1, void (*a2)(char *, uint64_t), unint64_t a3, char a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8, double a9, uint64_t a10, uint64_t a11)
{
  v121 = a6;
  v108 = a5;
  v122 = a2;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v17 = sub_22D0164CC();
  v115 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18);
  v113 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_22D01653C();
  v112 = *(v114 - 8);
  MEMORY[0x28223BE20](v114, v20);
  v111 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_22D0164BC();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107, v22);
  v24 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_22D01656C();
  v110 = *(v120 - 8);
  v26 = MEMORY[0x28223BE20](v120, v25);
  v116 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v109 = &v100 - v29;
  v30 = [a1 process];
  if (!v30)
  {
    if (qword_28143FB08 != -1)
    {
      swift_once();
    }

    v73 = sub_22D01637C();
    __swift_project_value_buffer(v73, qword_2814443D8);
    v74 = sub_22D01636C();
    v75 = sub_22D01690C();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = a7;
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_22CEE1000, v74, v75, "Cannot execute task; process does not exist", v77, 2u);
      v78 = v77;
      a7 = v76;
      MEMORY[0x2318C6860](v78, -1, -1);
    }

    sub_22CEEEBB4();
    v79 = swift_allocError();
    *v80 = 2;
    sub_22CEEE858(v79, v121, a7, a8, a10);
    v81 = v79;
    goto LABEL_33;
  }

  v31 = v30;
  v104 = v24;
  v103 = v17;
  v118 = a10;
  v32 = a8;
  if (qword_28143FB08 != -1)
  {
    swift_once();
  }

  v117 = a7;
  v105 = sub_22D01637C();
  __swift_project_value_buffer(v105, qword_2814443D8);
  v123 = v31;

  v33 = sub_22D01636C();
  v34 = sub_22D01690C();

  v35 = os_log_type_enabled(v33, v34);
  v119 = a11;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 67240450;
    *(v36 + 4) = [v123 pid];

    *(v36 + 8) = 2082;
    *(v36 + 10) = sub_22CEEE31C(v122, a3, aBlock);
    _os_log_impl(&dword_22CEE1000, v33, v34, "Executing task for %{public}d with explanation %{public}s", v36, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x2318C6860](v37, -1, -1);
    MEMORY[0x2318C6860](v36, -1, -1);

    if (a4)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

  if (!a4)
  {
LABEL_21:
    v82 = [a1 taskState];
    v83 = v118;
    if (v82 == 4)
    {
      if (qword_28143FAE8 == -1)
      {
LABEL_23:
        __swift_project_value_buffer(v105, qword_281444390);
        v84 = v117;

        v85 = sub_22D01636C();
        v86 = sub_22D01690C();

        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          aBlock[0] = v88;
          *v87 = 136380675;
          *(v87 + 4) = sub_22CEEE31C(v121, v84, aBlock);
          _os_log_impl(&dword_22CEE1000, v85, v86, "Delivering push tokens for: %{private}s", v87, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v88);
          MEMORY[0x2318C6860](v88, -1, -1);
          MEMORY[0x2318C6860](v87, -1, -1);
        }

        v89 = sub_22D0165CC();
        [v32 pushTokensChanged_];

        sub_22D01562C();
        v81 = v123;

LABEL_27:

        return;
      }

LABEL_39:
      swift_once();
      goto LABEL_23;
    }

    v94 = v123;
    v95 = sub_22D01636C();
    v96 = sub_22D0168EC();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 67240192;
      *(v97 + 4) = [v94 pid];

      _os_log_impl(&dword_22CEE1000, v95, v96, "Rejecting low-priority task for %{public}d because process is unavailable", v97, 8u);
      MEMORY[0x2318C6860](v97, -1, -1);
    }

    else
    {

      v95 = v94;
    }

    sub_22CEEEBB4();
    v98 = swift_allocError();
    *v99 = 2;
    sub_22CEEE858(v98, v121, v117, v32, v83);

    v81 = v98;
LABEL_33:

    goto LABEL_27;
  }

LABEL_6:
  v102 = v32;
  v38 = sub_22D01666C();
  v39 = sub_22D01666C();
  v40 = [objc_opt_self() attributeWithDomain:v38 name:v39];

  v41 = [objc_opt_self() targetWithPid_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2730, &unk_22D0196E0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_22D018FE0;
  *(v42 + 32) = v40;
  v43 = objc_allocWithZone(MEMORY[0x277D46DB8]);
  v44 = v41;
  v45 = v40;
  v46 = sub_22D01666C();
  sub_22CEEE550();
  v47 = sub_22D0167CC();

  v48 = [v43 initWithExplanation:v46 target:v44 attributes:v47];

  aBlock[0] = 0;
  v49 = [v48 acquireWithError_];
  v32 = v118;
  if (v49)
  {
    v100 = v45;
    v101 = v44;
    v50 = v102;
    v51 = qword_28143FAE8;
    v52 = aBlock[0];
    if (v51 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v105, qword_281444390);
    v53 = v117;

    v54 = sub_22D01636C();
    v55 = sub_22D01690C();

    v56 = os_log_type_enabled(v54, v55);
    v57 = v104;
    if (v56)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      aBlock[0] = v59;
      *v58 = 136380675;
      *(v58 + 4) = sub_22CEEE31C(v121, v53, aBlock);
      _os_log_impl(&dword_22CEE1000, v54, v55, "Delivering push tokens for: %{private}s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      MEMORY[0x2318C6860](v59, -1, -1);
      MEMORY[0x2318C6860](v58, -1, -1);
    }

    v60 = sub_22D0165CC();
    [v50 pushTokensChanged_];

    sub_22D01562C();
    sub_22D01566C();

    v61 = sub_22D01563C();
    v62 = v116;
    sub_22D01654C();
    v63 = a9 * 1000.0;
    if (COERCE__INT64(fabs(a9 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v63 > -9.22337204e18)
    {
      if (v63 < 9.22337204e18)
      {
        *v57 = v63;
        v64 = v106;
        v65 = v107;
        (*(v106 + 104))(v57, *MEMORY[0x277D85178], v107);
        v66 = v109;
        sub_22D01655C();
        (*(v64 + 8))(v57, v65);
        v122 = *(v110 + 8);
        v122(v62, v120);
        v121 = *(v108 + 104);
        v67 = swift_allocObject();
        v67[2] = v48;
        v67[3] = v61;
        aBlock[4] = sub_22CF7F1DC;
        aBlock[5] = v67;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_22CEF8B58;
        aBlock[3] = &block_descriptor_40;
        v68 = _Block_copy(aBlock);
        v69 = v48;

        v70 = v111;
        sub_22D0164EC();
        v124 = MEMORY[0x277D84F90];
        sub_22CF1A0D4(&qword_28143FA60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
        sub_22CF0EDA8();
        v71 = v113;
        v72 = v103;
        sub_22D016ADC();
        MEMORY[0x2318C5A90](v66, v70, v71, v68);
        _Block_release(v68);

        (*(v115 + 8))(v71, v72);
        (*(v112 + 8))(v70, v114);
        v122(v66, v120);

        return;
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v90 = aBlock[0];
  v91 = sub_22D01416C();

  swift_willThrow();
  sub_22CEEEBB4();
  v92 = swift_allocError();
  *v93 = 0;
  sub_22CEEE858(v92, v121, v117, v102, v32);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_22CEEE31C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22CEEE444(v11, 0, 0, 1, a1, a2);
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
    sub_22CEEE3E8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t sub_22CEEE3E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_22CEEE444(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22CEEEDD4(a5, a6);
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
    result = sub_22D016C8C();
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

unint64_t sub_22CEEE550()
{
  result = qword_28143FA30;
  if (!qword_28143FA30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28143FA30);
  }

  return result;
}

uint64_t sub_22CEEE59C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F31F8, &qword_22D01B198);
  v33 = v4;
  result = sub_22D016D2C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_22CEEC970(v34, *(&v34 + 1));
      }

      sub_22D016EAC();
      sub_22D0166DC();
      result = sub_22D016ECC();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22CEEE858(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  if (a1)
  {
    v9 = a1;
    if (qword_28143FAE8 != -1)
    {
      swift_once();
    }

    v10 = sub_22D01637C();
    __swift_project_value_buffer(v10, qword_281444390);
    v11 = a1;

    v12 = sub_22D01636C();
    v13 = sub_22D01690C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v28 = a4;
      v15 = swift_slowAlloc();
      v29 = v15;
      *v14 = 136380931;
      *(v14 + 4) = sub_22CEEE31C(a2, a3, &v29);
      *(v14 + 12) = 2082;
      v16 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2030, &qword_22D018FD0);
      v17 = sub_22D01669C();
      v19 = sub_22CEEE31C(v17, v18, &v29);

      *(v14 + 14) = v19;
      _os_log_impl(&dword_22CEE1000, v12, v13, "Did not provide extra runtime to process %{private}s for push token delivery: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      v20 = v15;
      a4 = v28;
      MEMORY[0x2318C6860](v20, -1, -1);
      MEMORY[0x2318C6860](v14, -1, -1);
    }

    else
    {
    }
  }

  if (qword_28143FAE8 != -1)
  {
    swift_once();
  }

  v21 = sub_22D01637C();
  __swift_project_value_buffer(v21, qword_281444390);

  v22 = sub_22D01636C();
  v23 = sub_22D01690C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29 = v25;
    *v24 = 136380675;
    *(v24 + 4) = sub_22CEEE31C(a2, a3, &v29);
    _os_log_impl(&dword_22CEE1000, v22, v23, "Delivering push tokens for: %{private}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x2318C6860](v25, -1, -1);
    MEMORY[0x2318C6860](v24, -1, -1);
  }

  v26 = sub_22D0165CC();
  [a4 pushTokensChanged_];

  return sub_22D01562C();
}

unint64_t sub_22CEEEBB4()
{
  result = qword_2814416C0;
  if (!qword_2814416C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814416C0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11SessionCore19ProcessManagerErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void *sub_22CEEEC30(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3160, &unk_22D01AF50);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_22CEEECA4(uint64_t a1, unint64_t a2)
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

  v6 = sub_22CEEEC30(v5, 0);
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

  result = sub_22D016C8C();
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
        v10 = sub_22D01671C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22CEEEC30(v10, 0);
        result = sub_22D016C4C();
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

void *sub_22CEEEDD4(uint64_t a1, unint64_t a2)
{
  v3 = sub_22CEEECA4(a1, a2);
  sub_22CEEEE20(&unk_284029088);
  return v3;
}

uint64_t sub_22CEEEE20(uint64_t result)
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

  result = sub_22CFB2948(result, v11, 1, v3);
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

uint64_t sub_22CEEEF0C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22CEE7524(result, a2);
  }

  return result;
}

uint64_t sub_22CEEF02C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D01457C();
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D014A1C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D0141DC();
  sub_22CEE74DC(&qword_2814439C8, MEMORY[0x277CB9548], MEMORY[0x277CB9540]);
  sub_22D01516C();

  sub_22CEEF29C(v12, v7);
  if (!v3)
  {
    sub_22CEE74DC(&unk_281443A00, MEMORY[0x277CB9208], MEMORY[0x277CB9200]);
    v14 = sub_22D01517C();
    v2 = sub_22D0141EC();

    (*(v17 + 8))(v7, v4);
  }

  (*(v9 + 8))(v12, v8);
  return v2;
}

void sub_22CEEF29C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v152[0] = a2;
  v148 = sub_22D014CBC();
  v161 = *(v148 - 8);
  MEMORY[0x28223BE20](v148, v5);
  v160 = v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_22D014C4C();
  v167 = *(v147 - 8);
  MEMORY[0x28223BE20](v147, v7);
  v146 = v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_22D01430C();
  v166 = *(v145 - 8);
  MEMORY[0x28223BE20](v145, v9);
  v159 = v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D0149CC();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v158 = v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_22D01502C();
  v162 = *(v144 - 8);
  MEMORY[0x28223BE20](v144, v14);
  v157 = v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22D01488C();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v156 = v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_22D014C8C();
  v19 = *(v163 - 8);
  v21 = MEMORY[0x28223BE20](v163, v20);
  v143 = v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v155 = v117 - v25;
  MEMORY[0x28223BE20](v24, v26);
  v154 = v117 - v27;
  v164 = type metadata accessor for Activity(0);
  v169 = *(v164 - 1);
  v29 = MEMORY[0x28223BE20](v164, v28);
  v171 = v117 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v31);
  v168 = v117 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3850, &unk_22D019D30);
  v35 = MEMORY[0x28223BE20](v33 - 8, v34);
  v37 = v117 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v38);
  v173 = v117 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3820, &qword_22D01BD08);
  MEMORY[0x28223BE20](v40 - 8, v41);
  v43 = v117 - v42;
  v44 = *(*(v2 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_lock) + 16);
  os_unfair_lock_lock(v44);
  v45 = sub_22D014A1C();
  v46 = *(v45 - 8);
  v47 = *(v46 + 16);
  v149 = a1;
  v47(v43, a1, v45);
  (*(v46 + 56))(v43, 0, 1, v45);
  v48 = OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_subscriptionOptions;
  swift_beginAccess();
  sub_22CEF02F8(v43, v2 + v48);
  swift_endAccess();
  os_unfair_lock_unlock(v44);
  v172 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_22D01456C();
    return;
  }

  v139 = v3;
  v50 = *(*(Strong + OBJC_IVAR____TtC11SessionCore12OutputServer_lock) + 16);
  v51 = Strong;
  os_unfair_lock_lock(v50);
  v52 = OBJC_IVAR____TtC11SessionCore12OutputServer__lock_activities;
  swift_beginAccess();
  v138 = v51;
  v53 = *(v51 + v52);

  os_unfair_lock_unlock(v50);
  v54 = 0;
  v55 = *(v53 + 64);
  v165 = v53 + 64;
  v170 = v53;
  v56 = 1 << *(v53 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & v55;
  v59 = (v56 + 63) >> 6;
  v136 = (v162 + 2);
  v135 = (v166 + 16);
  v134 = *MEMORY[0x277CB9628];
  v153 = (v19 + 104);
  v137 = v19;
  v152[1] = v19 + 32;
  v117[4] = *MEMORY[0x277CB95F8];
  v151 = (v167 + 104);
  v117[3] = *MEMORY[0x277CB95F0];
  v120 = *MEMORY[0x277CB9600];
  v119 = *MEMORY[0x277CB9608];
  v133 = (v167 + 32);
  v132 = *MEMORY[0x277CB9630];
  v118 = *MEMORY[0x277CB9638];
  v131 = v161 + 32;
  v162 = MEMORY[0x277D84F90];
  v166 = v59;
  v167 = v37;
  while (1)
  {
    v60 = v54;
    v61 = v171;
    if (!v58)
    {
      break;
    }

    while (1)
    {
      v62 = v60;
LABEL_14:
      v65 = __clz(__rbit64(v58));
      v58 &= v58 - 1;
      v66 = v65 | (v62 << 6);
      v67 = (*(v170 + 48) + 16 * v66);
      v69 = *v67;
      v68 = v67[1];
      v70 = v168;
      sub_22CF1C294(*(v170 + 56) + *(v169 + 72) * v66, v168, type metadata accessor for Activity);
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
      v72 = *(v71 + 48);
      v73 = v167;
      *v167 = v69;
      *(v73 + 1) = v68;
      v74 = v70;
      v37 = v73;
      sub_22CF0A794(v74, &v73[v72], type metadata accessor for Activity);
      (*(*(v71 - 8) + 56))(v37, 0, 1, v71);

      v64 = v62;
      v61 = v171;
      v59 = v166;
LABEL_15:
      v75 = v173;
      sub_22CEF0368(v37, v173, &qword_27D9F3850, &unk_22D019D30);
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
      if ((*(*(v76 - 8) + 48))(v75, 1, v76) == 1)
      {

        sub_22D01456C();
        swift_unknownObjectRelease();
        return;
      }

      sub_22CF0A794(v75 + *(v76 + 48), v61, type metadata accessor for Activity);
      sub_22CF16990(v61);
      if (v77)
      {
        break;
      }

      sub_22CF0C71C(v61);

      v60 = v64;
      if (!v58)
      {
        goto LABEL_7;
      }
    }

    v128 = v64;
    v79 = *(v61 + 1);
    v142 = *v61;
    v141 = v79;
    v80 = v164[5];

    sub_22D014D7C();
    v140 = sub_22D014D4C();
    v130 = v81;
    v82 = v164[6];
    v129 = *&v61[v164[7]];
    v150 = *&v61[v164[8]];
    (*v136)(v157, &v61[v82], v144);

    sub_22D014DBC();
    v127 = *&v61[v164[9]];

    v122 = v80;
    v126 = sub_22D014CFC();
    v125 = sub_22D014D1C();
    v124 = sub_22D014D0C();
    v83 = v164;
    (*v135)(v159, &v61[v164[11]], v145);
    v84 = &v61[v83[13]];
    v85 = v84[1];
    v123 = *v84;
    v121 = v85;

    sub_22D014D8C();

    v86 = v154;
    sub_22D0146FC();
    v87 = v163;
    v150 = *v153;
    v150(v86, v134, v163);
    v88 = sub_22CF0D6DC(0, 1, 1, MEMORY[0x277D84F90]);
    v90 = v88[2];
    v89 = v88[3];
    if (v90 >= v89 >> 1)
    {
      v88 = sub_22CF0D6DC((v89 > 1), v90 + 1, 1, v88);
    }

    v88[2] = v90 + 1;
    v91 = (*(v137 + 80) + 32) & ~*(v137 + 80);
    v130 = v88;
    v141 = v91;
    v140 = *(v137 + 72);
    v142 = *(v137 + 32);
    v142(v88 + v91 + v140 * v90, v154, v87);
    v92 = sub_22CF0B5E0();
    if (v92 > 1)
    {
      v93 = v119;
      if (v92 != 2)
      {
        goto LABEL_28;
      }

      v94 = v152;
    }

    else
    {
      v93 = v120;
      if (!v92)
      {
        goto LABEL_28;
      }

      v94 = &v151 + 4;
    }

    v93 = *(v94 - 64);
LABEL_28:
    v95 = v146;
    v96 = v147;
    (*v151)(v146, v93, v147);
    v97 = v155;
    (*v133)(v155, v95, v96);
    v98 = v97;
    v99 = v163;
    v150(v98, v132, v163);
    v100 = v130;
    v102 = *(v130 + 2);
    v101 = *(v130 + 3);
    if (v102 >= v101 >> 1)
    {
      v100 = sub_22CF0D6DC((v101 > 1), v102 + 1, 1, v130);
    }

    *(v100 + 2) = v102 + 1;
    v103 = v99;
    v104 = v99;
    v105 = v100;
    v142(&v100[v141 + v102 * v140], v155, v103);
    if (sub_22D014A0C())
    {
      v106 = v164[14];
      v107 = sub_22D0146BC();
      v108 = &v171[v106];
      v109 = v143;
      (*(*(v107 - 8) + 16))(v143, v108, v107);
      v150(v109, v118, v104);
      v111 = *(v105 + 2);
      v110 = *(v105 + 3);
      if (v111 >= v110 >> 1)
      {
        v105 = sub_22CF0D6DC((v110 > 1), v111 + 1, 1, v105);
      }

      *(v105 + 2) = v111 + 1;
      v142(&v105[v141 + v111 * v140], v143, v163);
    }

    sub_22D014C9C();
    v112 = v162;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v112 = sub_22CFCE610(0, v112[2] + 1, 1, v112);
    }

    v113 = v161;
    v115 = v112[2];
    v114 = v112[3];
    if (v115 >= v114 >> 1)
    {
      v112 = sub_22CFCE610((v114 > 1), v115 + 1, 1, v112);
    }

    sub_22CF0C71C(v171);
    v112[2] = v115 + 1;
    v116 = (*(v113 + 80) + 32) & ~*(v113 + 80);
    v162 = v112;
    (*(v113 + 32))(v112 + v116 + *(v113 + 72) * v115, v160, v148);
    v54 = v128;
  }

LABEL_7:
  if (v59 <= v60 + 1)
  {
    v63 = v60 + 1;
  }

  else
  {
    v63 = v59;
  }

  v64 = v63 - 1;
  while (1)
  {
    v62 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      break;
    }

    if (v62 >= v59)
    {
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
      (*(*(v78 - 8) + 56))(v37, 1, 1, v78);
      v58 = 0;
      goto LABEL_15;
    }

    v58 = *(v165 + 8 * v62);
    ++v60;
    if (v58)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_22CEF02F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3820, &qword_22D01BD08);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CEF0368(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_22CEF0400(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3170, &qword_22D01B0D8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v14[-v5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(*(Strong + 16) + 16);

    os_unfair_lock_lock(v8);
    v9 = type metadata accessor for TaskScheduler.Task(0);
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    swift_beginAccess();
    sub_22CEF0738(v6, a2);
    swift_endAccess();
    os_unfair_lock_unlock(v8);

    sub_22CEF0D1C();
  }

  else
  {
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v10 = sub_22D01637C();
    __swift_project_value_buffer(v10, qword_2814443F0);
    v11 = sub_22D01636C();
    v12 = sub_22D0168FC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22CEE1000, v11, v12, "Task scheduler unexpectedly deallocated", v13, 2u);
      MEMORY[0x2318C6860](v13, -1, -1);
    }
  }
}

uint64_t type metadata accessor for TaskScheduler.Task(uint64_t a1)
{
  result = qword_28143F5B8;
  if (!qword_28143F5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22CEF0670(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22D0155CC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22CEF0738(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3170, &qword_22D01B0D8);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for TaskScheduler.Task(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_22CEEC3D8(a1, &qword_27D9F3170, &qword_22D01B0D8);
    v15 = sub_22CEF098C(a2);
    if (v16)
    {
      v17 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v3;
      v23 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22CFB81B0();
        v19 = v23;
      }

      sub_22CEF0B08(*(v19 + 56) + *(v11 + 72) * v17, v9, type metadata accessor for TaskScheduler.Task);
      sub_22CEF0B70(v17, v19);
      *v3 = v19;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_22CEEC3D8(v9, &qword_27D9F3170, &qword_22D01B0D8);
  }

  else
  {
    sub_22CEF0B08(a1, v14, type metadata accessor for TaskScheduler.Task);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    result = sub_22CFBFF8C(v14, a2, v20);
    *v3 = v23;
  }

  return result;
}

uint64_t sub_22CEF09DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D0155CC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

unint64_t sub_22CEF0A9C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_22CEF0B08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_22CEF0B70(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22D016AFC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_22D016E9C();
      v11 = result & v7;
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

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for TaskScheduler.Task(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22CEF0D1C()
{
  v59 = sub_22D0155CC();
  v1 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v2);
  v58 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3168, &unk_22D01B0C8);
  v5 = MEMORY[0x28223BE20](v57, v4);
  v56 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v55 = v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = v47 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = v47 - v19;
  os_unfair_lock_assert_not_owner(*(*(v0 + 16) + 16));
  v21 = *(*(v0 + 16) + 16);
  v47[1] = *(v0 + 16);

  v47[0] = v21;
  os_unfair_lock_lock(v21);
  v48 = v20;
  sub_22CEF11BC(MEMORY[0x277D4D508], "Earliest precise waking date from task %{public}s: %{public}s, finalWakeTarget: %{public}s %{public}f", "No precise wake tasks scheduled", v20);
  v49 = v17;
  sub_22CEF2A60(v17);
  v50 = v13;
  sub_22CEF11BC(MEMORY[0x277D4D510], "Earliest waking date from task %{public}s: %{public}s, finalWakeTarget: %{public}s %{public}f", "No wake tasks scheduled", v13);
  os_unfair_lock_assert_owner(*(*(v0 + 16) + 16));
  swift_beginAccess();
  v22 = *(v0 + 24);
  v23 = *(v22 + 64);
  v51 = v0;
  v52 = v22 + 64;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v27 = (v24 + 63) >> 6;
  v53 = (v1 + 8);
  v54 = (v1 + 16);
  v60 = v22;
  result = swift_bridgeObjectRetain_n();
  v29 = 0;
  while (v26)
  {
    v30 = v29;
LABEL_10:
    v31 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v32 = v31 | (v30 << 6);
    v33 = *(v60 + 56);
    v34 = *(*(v60 + 48) + 8 * v32);
    v35 = (type metadata accessor for TaskScheduler.Task(0) - 8);
    v36 = v33 + *(*v35 + 72) * v32;
    v37 = v57;
    v38 = v55;
    sub_22CF28C98(v36, &v55[*(v57 + 48)], type metadata accessor for TaskScheduler.Task);
    *v38 = v34;
    v39 = v56;
    sub_22CEEB6DC(v38, v56, &qword_27D9F3168, &unk_22D01B0C8);
    v40 = v39 + *(v37 + 48);
    v42 = v58;
    v41 = v59;
    (*v54)(v58, v40 + v35[7], v59);
    sub_22CFB6010(v40);
    LOBYTE(v35) = sub_22D0155BC();
    (*v53)(v42, v41);
    result = sub_22CEEC3D8(v38, &qword_27D9F3168, &unk_22D01B0C8);
    if (v35)
    {
      v43 = 1;
LABEL_13:

      v44 = v48;
      sub_22CEF33F8(v48);
      v45 = v49;
      sub_22CEF6A04(v49);
      v46 = v50;
      sub_22CEF757C(v50);
      sub_22CEF891C(v43);
      sub_22CEEC3D8(v46, &qword_27D9F2648, &unk_22D018BC0);
      sub_22CEEC3D8(v45, &qword_27D9F2648, &unk_22D018BC0);
      sub_22CEEC3D8(v44, &qword_27D9F2648, &unk_22D018BC0);
      os_unfair_lock_unlock(v47[0]);
    }
  }

  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v27)
    {
      v43 = 0;
      goto LABEL_13;
    }

    v26 = *(v52 + 8 * v30);
    ++v29;
    if (v26)
    {
      v29 = v30;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CEF11BC@<X0>(unsigned int *a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X8>)
{
  v104 = a3;
  v106 = a2;
  v113 = a1;
  v115 = a4;
  v114 = sub_22D01430C();
  v116 = *(v114 - 8);
  v6 = MEMORY[0x28223BE20](v114, v5);
  v105 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v111 = &v97 - v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v110 = &v97 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v107 = &v97 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v97 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v112 = &v97 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3170, &qword_22D01B0D8);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v97 - v25;
  v27 = type metadata accessor for TaskScheduler.Task(0);
  v28 = *(v27 - 8);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v109 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v108 = &v97 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v97 - v36;
  os_unfair_lock_assert_owner(*(*(v4 + 16) + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3178, &qword_22D01B0E0);
  v38 = sub_22D01559C();
  v39 = *(v38 - 8);
  v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_22D0187A0;
  (*(v39 + 104))(v41 + v40, *v113, v38);
  sub_22CEF1B50(v41, v26);
  swift_setDeallocating();
  (*(v39 + 8))(v41 + v40, v38);
  swift_deallocClassInstance();
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    v42 = v114;
    sub_22CEEC3D8(v26, &qword_27D9F3170, &qword_22D01B0D8);
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v43 = sub_22D01637C();
    __swift_project_value_buffer(v43, qword_2814443F0);
    v44 = sub_22D01636C();
    v45 = sub_22D01690C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_22CEE1000, v44, v45, v104, v46, 2u);
      MEMORY[0x2318C6860](v46, -1, -1);
    }

    v47 = 1;
    v48 = v115;
  }

  else
  {
    sub_22CEF0B08(v26, v37, type metadata accessor for TaskScheduler.Task);
    v102 = v27;
    sub_22D01557C();
    v49 = v107;
    sub_22D0142DC();
    sub_22CEF57B4(&qword_281443A30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v50 = v114;
    v51 = sub_22D01664C();
    v52 = v116;
    v53 = *(v116 + 8);
    v54 = (v51 & 1) == 0;
    if (v51)
    {
      v55 = v20;
    }

    else
    {
      v55 = v49;
    }

    if (v54)
    {
      v56 = v20;
    }

    else
    {
      v56 = v49;
    }

    v103 = v116 + 8;
    v104 = v53;
    (v53)(v55, v50);
    v57 = *(v52 + 32);
    v58 = v112;
    v113 = (v52 + 32);
    v107 = v57;
    (v57)(v112, v56, v50);
    v42 = v50;
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v59 = sub_22D01637C();
    __swift_project_value_buffer(v59, qword_2814443F0);
    v60 = v108;
    sub_22CF28C98(v37, v108, type metadata accessor for TaskScheduler.Task);
    v61 = v109;
    sub_22CF28C98(v37, v109, type metadata accessor for TaskScheduler.Task);
    v62 = *(v52 + 16);
    v63 = v110;
    v62(v110, v58, v50);
    v64 = v111;
    v62(v111, v58, v50);
    v65 = sub_22D01636C();
    v66 = sub_22D01690C();
    if (os_log_type_enabled(v65, v66))
    {
      v99 = v66;
      v100 = v65;
      v101 = v37;
      v67 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v117[0] = v98;
      *v67 = 136446978;
      v68 = sub_22D01556C();
      v70 = v69;
      sub_22CFB6010(v60);
      v71 = sub_22CEEE31C(v68, v70, v117);

      *(v67 + 4) = v71;
      *(v67 + 12) = 2082;
      if (qword_28143F550 != -1)
      {
        swift_once();
      }

      v72 = qword_28143F558;
      v73 = v109;
      v74 = v105;
      sub_22D01557C();
      v75 = sub_22D01426C();
      v76 = v104;
      (v104)(v74, v42);
      v77 = [v72 stringFromDate_];

      v78 = sub_22D01667C();
      v80 = v79;

      sub_22CFB6010(v73);
      v81 = sub_22CEEE31C(v78, v80, v117);

      *(v67 + 14) = v81;
      *(v67 + 22) = 2082;
      v82 = qword_28143F558;
      v83 = v110;
      v84 = sub_22D01426C();
      v85 = [v82 stringFromDate_];

      v86 = sub_22D01667C();
      v88 = v87;

      (v76)(v83, v42);
      v89 = sub_22CEEE31C(v86, v88, v117);

      *(v67 + 24) = v89;
      *(v67 + 32) = 2050;
      v90 = v111;
      sub_22D0142AC();
      v92 = v91;
      (v76)(v90, v42);
      *(v67 + 34) = v92;
      v93 = v100;
      _os_log_impl(&dword_22CEE1000, v100, v99, v106, v67, 0x2Au);
      v94 = v98;
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v94, -1, -1);
      MEMORY[0x2318C6860](v67, -1, -1);

      sub_22CFB6010(v101);
      v58 = v112;
    }

    else
    {

      v95 = v104;
      (v104)(v64, v42);
      (v95)(v63, v42);
      sub_22CFB6010(v61);
      sub_22CFB6010(v60);
      sub_22CFB6010(v37);
    }

    v48 = v115;
    (v107)(v115, v58, v42);
    v47 = 0;
  }

  return (*(v116 + 56))(v48, v47, 1, v42);
}

uint64_t sub_22CEF1B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v92 = a2;
  v5 = type metadata accessor for TaskScheduler.Task(0);
  v105 = *(v5 - 8);
  v106 = v5;
  v7 = MEMORY[0x28223BE20](v5, v6);
  v96 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v107 = &v86 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v104 = &v86 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v90 = &v86 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v20 = (&v86 - v19);
  v21 = sub_22D01559C();
  v22 = *(v21 - 8);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v86 - v28;
  v99 = sub_22D01430C();
  v101 = *(v99 - 8);
  v31 = MEMORY[0x28223BE20](v99, v30);
  v98 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v35 = &v86 - v34;
  v36 = sub_22D0155CC();
  v95 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v86 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner(*(*(v3 + 16) + 16));
  swift_beginAccess();
  v103 = v3;
  if (!*(*(v3 + 24) + 16))
  {
    return (*(v105 + 56))(v92, 1, 1, v106);
  }

  sub_22D01423C();
  (*(v22 + 104))(v29, *MEMORY[0x277D4D510], v21);
  v94 = v35;
  v87 = v29;
  sub_22D01558C();
  v40 = v106;
  v41 = *(v95 + 16);
  v42 = v20 + *(v106 + 20);
  v86 = v39;
  v88 = v36;
  v41(v42, v39, v36);
  *v20 = 0;
  v43 = (v20 + *(v40 + 24));
  *v43 = nullsub_1;
  v43[1] = 0;
  v44 = (v20 + *(v40 + 28));
  *v44 = nullsub_1;
  v44[1] = 0;
  v45 = *(v103 + 24);
  v89 = v20;
  v46 = v20;
  v47 = v104;
  sub_22CF28C98(v46, v104, type metadata accessor for TaskScheduler.Task);
  v48 = *(v45 + 64);
  v103 = v45 + 64;
  v49 = 1 << *(v45 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & v48;
  v100 = (v22 + 8);
  v93 = (v101 + 8);
  v101 = v45;
  v102 = (v49 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v53 = 0;
  v54 = v105;
  v91 = a1;
  v56 = v102;
  v55 = v103;
  if (v51)
  {
    goto LABEL_7;
  }

LABEL_8:
  v58 = v106;
  while (1)
  {
    v57 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
      return result;
    }

    if (v57 >= v56)
    {
      break;
    }

    v51 = *(v55 + 8 * v57);
    ++v53;
    if (v51)
    {
      while (1)
      {
        v59 = __clz(__rbit64(v51));
        v51 &= v51 - 1;
        sub_22CF28C98(*(v101 + 56) + *(v54 + 72) * (v59 | (v57 << 6)), v107, type metadata accessor for TaskScheduler.Task);
        sub_22D0155AC();
        v60 = 0;
        v61 = *(a1 + 16);
        do
        {
          if (v61 == v60)
          {
            (*v100)(v26, v21);
            result = sub_22CFB6010(v107);
            v53 = v57;
            v47 = v104;
            v54 = v105;
            v56 = v102;
            v55 = v103;
            if (!v51)
            {
              goto LABEL_8;
            }

            goto LABEL_7;
          }

          v62 = v60 + 1;
          sub_22CEF57B4(&qword_28143DAF0, MEMORY[0x277D4D520], MEMORY[0x277D4D528]);
          v63 = sub_22D01665C();
          v60 = v62;
        }

        while ((v63 & 1) == 0);
        (*v100)(v26, v21);
        v64 = v94;
        sub_22D01557C();
        v65 = v104;
        v66 = v98;
        sub_22D01557C();
        v97 = sub_22D01428C();
        v67 = *v93;
        v68 = v66;
        v69 = v99;
        (*v93)(v68, v99);
        v67(v64, v69);
        v70 = (v97 & 1) != 0 ? v65 : v107;
        v71 = (v97 & 1) != 0 ? v107 : v65;
        sub_22CFB6010(v70);
        v72 = v71;
        v73 = v96;
        sub_22CEF0B08(v72, v96, type metadata accessor for TaskScheduler.Task);
        v74 = v73;
        v47 = v65;
        a1 = v91;
        result = sub_22CEF0B08(v74, v47, type metadata accessor for TaskScheduler.Task);
        v53 = v57;
        v54 = v105;
        v56 = v102;
        v55 = v103;
        if (!v51)
        {
          goto LABEL_8;
        }

LABEL_7:
        v57 = v53;
      }
    }
  }

  v75 = v90;
  sub_22CEF0B08(v47, v90, type metadata accessor for TaskScheduler.Task);

  v76 = v87;
  sub_22D0155AC();
  v77 = sub_22CFB378C(v76, a1);
  (*v100)(v76, v21);
  if (v77)
  {
    v78 = v94;
    sub_22D01557C();
    v79 = v98;
    sub_22D01423C();
    v80 = sub_22D01428C();
    v81 = *v93;
    v82 = v79;
    v83 = v99;
    (*v93)(v82, v99);
    v81(v78, v83);
    sub_22CFB6010(v89);
    (*(v95 + 8))(v86, v88);
    v84 = (v54 + 56);
    if (v80)
    {
      v85 = v92;
      sub_22CEF0B08(v75, v92, type metadata accessor for TaskScheduler.Task);
      return (*v84)(v85, 0, 1, v58);
    }

    else
    {
      sub_22CFB6010(v75);
      return (*v84)(v92, 1, 1, v58);
    }
  }

  else
  {
    sub_22CFB6010(v75);
    sub_22CFB6010(v89);
    (*(v95 + 8))(v86, v88);
    return (*(v54 + 56))(v92, 1, 1, v58);
  }
}

uint64_t sub_22CEF2428(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_22CEF2494(void *a1, const char *a2)
{
  if (xpc_dictionary_get_string(a1, *MEMORY[0x277D86430]))
  {
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v3 = sub_22D01637C();
    __swift_project_value_buffer(v3, qword_2814443F0);
    oslog = sub_22D01636C();
    v4 = sub_22D01690C();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136446210;
      v7 = sub_22D01670C();
      v9 = sub_22CEEE31C(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_22CEE1000, oslog, v4, a2, v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x2318C6860](v6, -1, -1);
      MEMORY[0x2318C6860](v5, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_22CEF261C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_22CEF2678(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22CEF26D0();
  }

  return result;
}

void sub_22CEF26D0()
{
  v1 = v0;
  v15[4] = *MEMORY[0x277D85DE8];
  v14 = 0;
  swift_beginAccess();
  if (notify_get_state(*(v0 + 24), &v14))
  {
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v2 = sub_22D01637C();
    __swift_project_value_buffer(v2, qword_281444420);
    v3 = sub_22D01636C();
    v4 = sub_22D0168EC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22CEE1000, v3, v4, "Could not fetch lock state", v5, 2u);
      MEMORY[0x2318C6860](v5, -1, -1);
    }
  }

  else
  {
    *(v0 + 40) = v14 != 0;
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v6 = sub_22D01637C();
    __swift_project_value_buffer(v6, qword_281444420);

    v7 = sub_22D01636C();
    v8 = sub_22D01690C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15[0] = v10;
      *v9 = 136446210;
      if (*(v1 + 40))
      {
        v11 = 0x64656B636F6CLL;
      }

      else
      {
        v11 = 0x64656B636F6C6E75;
      }

      if (*(v1 + 40))
      {
        v12 = 0xE600000000000000;
      }

      else
      {
        v12 = 0xE800000000000000;
      }

      v13 = sub_22CEEE31C(v11, v12, v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_22CEE1000, v7, v8, "UI lock state is %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x2318C6860](v10, -1, -1);
      MEMORY[0x2318C6860](v9, -1, -1);
    }

    LOBYTE(v15[0]) = *(v1 + 40);
    sub_22D01643C();
  }
}

uint64_t sub_22CEF2990(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v2)
    {
      sub_22CFD0C44();
    }
  }

  return result;
}

uint64_t sub_22CEF2A00(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22CEF43AC(v2);
  }

  return result;
}

uint64_t sub_22CEF2A60@<X0>(uint64_t a1@<X8>)
{
  v112 = a1;
  v110 = sub_22D01430C();
  v113 = *(v110 - 8);
  v3 = MEMORY[0x28223BE20](v110, v2);
  v102 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v109 = &v96 - v7;
  v9 = MEMORY[0x28223BE20](v6, v8);
  v107 = &v96 - v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v104 = &v96 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v103 = &v96 - v16;
  MEMORY[0x28223BE20](v15, v17);
  v111 = &v96 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3170, &qword_22D01B0D8);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v96 - v21;
  v23 = type metadata accessor for TaskScheduler.Task(0);
  v24 = *(v23 - 8);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v106 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v105 = &v96 - v30;
  MEMORY[0x28223BE20](v29, v31);
  v108 = &v96 - v32;
  os_unfair_lock_assert_owner(*(*(v1 + 16) + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3178, &qword_22D01B0E0);
  v33 = sub_22D01559C();
  v34 = *(v33 - 8);
  v35 = *(v34 + 72);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_22D0189F0;
  v38 = v37 + v36;
  v39 = *(v34 + 104);
  v39(v38, *MEMORY[0x277D4D510], v33);
  v39(v38 + v35, *MEMORY[0x277D4D518], v33);
  sub_22CEF1B50(v37, v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v40 = v110;
    sub_22CEEC3D8(v22, &qword_27D9F3170, &qword_22D01B0D8);
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v41 = sub_22D01637C();
    __swift_project_value_buffer(v41, qword_2814443F0);
    v42 = sub_22D01636C();
    v43 = sub_22D01690C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_22CEE1000, v42, v43, "No wake tasks scheduled", v44, 2u);
      MEMORY[0x2318C6860](v44, -1, -1);
    }

    v45 = 1;
    v46 = v112;
  }

  else
  {
    v47 = v108;
    sub_22CEF0B08(v22, v108, type metadata accessor for TaskScheduler.Task);
    v99 = v23;
    v48 = v103;
    sub_22D01557C();
    v49 = v104;
    sub_22D0142DC();
    sub_22CEF57B4(&qword_281443A30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v40 = v110;
    v50 = sub_22D01664C();
    v51 = v113;
    v52 = *(v113 + 8);
    v53 = (v50 & 1) == 0;
    if (v50)
    {
      v54 = v48;
    }

    else
    {
      v54 = v49;
    }

    if (v53)
    {
      v55 = v48;
    }

    else
    {
      v55 = v49;
    }

    v100 = v113 + 8;
    v101 = v52;
    v52(v54, v40);
    v56 = v111;
    v103 = *(v51 + 32);
    v104 = (v51 + 32);
    (v103)(v111, v55, v40);
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v57 = sub_22D01637C();
    __swift_project_value_buffer(v57, qword_2814443F0);
    v58 = v105;
    sub_22CF28C98(v47, v105, type metadata accessor for TaskScheduler.Task);
    v59 = v106;
    sub_22CF28C98(v47, v106, type metadata accessor for TaskScheduler.Task);
    v60 = v47;
    v61 = *(v51 + 16);
    v62 = v107;
    v61(v107, v56, v40);
    v63 = v109;
    v61(v109, v56, v40);
    v64 = sub_22D01636C();
    v65 = sub_22D01690C();
    if (os_log_type_enabled(v64, v65))
    {
      v98 = v65;
      v66 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v114[0] = v97;
      *v66 = 136446978;
      v67 = sub_22D01556C();
      v69 = v68;
      sub_22CFB6010(v58);
      v70 = sub_22CEEE31C(v67, v69, v114);

      *(v66 + 4) = v70;
      *(v66 + 12) = 2082;
      if (qword_28143F550 != -1)
      {
        swift_once();
      }

      v71 = qword_28143F558;
      v72 = v106;
      v73 = v102;
      sub_22D01557C();
      v74 = sub_22D01426C();
      v75 = v101;
      v101(v73, v40);
      v76 = [v71 stringFromDate_];

      v77 = sub_22D01667C();
      v79 = v78;

      sub_22CFB6010(v72);
      v80 = sub_22CEEE31C(v77, v79, v114);

      *(v66 + 14) = v80;
      *(v66 + 22) = 2082;
      v81 = qword_28143F558;
      v82 = v107;
      v83 = sub_22D01426C();
      v84 = [v81 stringFromDate_];

      v85 = sub_22D01667C();
      v87 = v86;

      v75(v82, v40);
      v88 = sub_22CEEE31C(v85, v87, v114);

      *(v66 + 24) = v88;
      *(v66 + 32) = 2050;
      v89 = v109;
      sub_22D0142AC();
      v91 = v90;
      v75(v89, v40);
      *(v66 + 34) = v91;
      _os_log_impl(&dword_22CEE1000, v64, v98, "Earliest nonwaking date from task %{public}s: %{public}s, finalWakeTarget: %{public}s %{public}f", v66, 0x2Au);
      v92 = v97;
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v92, -1, -1);
      MEMORY[0x2318C6860](v66, -1, -1);

      v93 = v108;
    }

    else
    {

      v94 = v101;
      v101(v63, v40);
      v94(v62, v40);
      sub_22CFB6010(v59);
      sub_22CFB6010(v58);
      v93 = v60;
    }

    sub_22CFB6010(v93);
    v46 = v112;
    (v103)(v112, v111, v40);
    v45 = 0;
  }

  return (*(v113 + 56))(v46, v45, 1, v40);
}

void sub_22CEF33F8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v47 - v5;
  v7 = sub_22D01430C();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v47 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v47 - v18;
  os_unfair_lock_assert_owner(*(v1[2] + 16));
  if (v1[5])
  {
    v20 = v1[6];
    sub_22CEEB6DC(a1, v6, &qword_27D9F2648, &unk_22D018BC0);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      swift_unknownObjectRetain();
      sub_22CEEC3D8(v6, &qword_27D9F2648, &unk_22D018BC0);
      if (qword_28143FB18 != -1)
      {
        swift_once();
      }

      v21 = sub_22D01637C();
      __swift_project_value_buffer(v21, qword_2814443F0);
      v22 = sub_22D01636C();
      v23 = sub_22D01690C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = v20;
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_22CEE1000, v22, v23, "Cancelling precise waking task", v25, 2u);
        v26 = v25;
        v20 = v24;
        MEMORY[0x2318C6860](v26, -1, -1);
      }
    }

    else
    {
      v51 = v20;
      (*(v8 + 32))(v19, v6, v7);
      v27 = qword_28143FB18;
      swift_unknownObjectRetain();
      if (v27 != -1)
      {
        swift_once();
      }

      v28 = sub_22D01637C();
      __swift_project_value_buffer(v28, qword_2814443F0);
      v29 = *(v8 + 16);
      v29(v16, v19, v7);
      v29(v12, v19, v7);
      v30 = sub_22D01636C();
      v31 = sub_22D01690C();
      if (os_log_type_enabled(v30, v31))
      {
        v48 = v31;
        v49 = v30;
        v50 = a1;
        v32 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v52 = v47;
        *v32 = 136446466;
        if (qword_28143F550 != -1)
        {
          swift_once();
        }

        v33 = qword_28143F558;
        v34 = sub_22D01426C();
        v35 = [v33 stringFromDate_];

        v36 = sub_22D01667C();
        v38 = v37;

        v39 = *(v8 + 8);
        v39(v16, v7);
        v40 = sub_22CEEE31C(v36, v38, &v52);

        *(v32 + 4) = v40;
        *(v32 + 12) = 2048;
        sub_22D0142AC();
        v42 = v41;
        v39(v12, v7);
        *(v32 + 14) = v42;
        v43 = v49;
        _os_log_impl(&dword_22CEE1000, v49, v48, "Scheduling precise waking task for: %{public}s in %fs", v32, 0x16u);
        v44 = v47;
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        MEMORY[0x2318C6860](v44, -1, -1);
        MEMORY[0x2318C6860](v32, -1, -1);

        v39(v19, v7);
        a1 = v50;
        v20 = v51;
      }

      else
      {

        v45 = *(v8 + 8);
        v45(v12, v7);
        v45(v16, v7);
        v45(v19, v7);
        v20 = v51;
      }
    }

    ObjectType = swift_getObjectType();
    (*(v20 + 32))(a1, ObjectType, v20);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_22CEF3990(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22CEF39C8(uint64_t a1)
{
  v3 = sub_22D01436C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v7 = *(v1 + 16);
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  (*(v4 + 32))(v9 + v8, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_22CEF40B8;
  *(v10 + 24) = v9;
  aBlock[4] = sub_22CEF4034;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF3C20;
  aBlock[3] = &block_descriptor_37;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CEF3C78(uint64_t a1)
{
  v34 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
  MEMORY[0x28223BE20](v34, v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v32 - v7;
  v9 = sub_22D01430C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v32 - v16;
  sub_22CEEB6DC(a1, v8, &qword_27D9F2648, &unk_22D018BC0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v18 = v35;
    sub_22CEEC3D8(v8, &qword_27D9F2648, &unk_22D018BC0);
    if (qword_28143DF40 != -1)
    {
      swift_once();
    }

    return sub_22CEF39C8(v18 + OBJC_IVAR____TtC11SessionCore26PreciseWakingTaskScheduler_id);
  }

  else
  {
    v32 = *(v10 + 32);
    v32(v17, v8, v9);
    v20 = OBJC_IVAR____TtC11SessionCore26PreciseWakingTaskScheduler_id;
    v21 = sub_22D01436C();
    v22 = v35;
    (*(*(v21 - 8) + 16))(v4, v35 + v20, v21);
    v33 = v4;
    v23 = v4;
    v24 = v34;
    v25 = *(v10 + 16);
    v25(&v23[*(v34 + 20)], v17, v9);
    v25(v14, v17, v9);
    v26 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v22;
    v32((v27 + v26), v14, v9);
    v28 = *(v24 + 24);
    v29 = v33;
    v30 = &v33[v28];
    *v30 = sub_22CF8A714;
    v30[1] = v27;
    v31 = qword_28143DF40;

    if (v31 != -1)
    {
      swift_once();
    }

    sub_22CF88FD0(v29);
    sub_22CF8A5B0(v29);
    return (*(v10 + 8))(v17, v9);
  }
}

uint64_t sub_22CEF4038(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

void sub_22CEF410C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E18, &qword_22D01A5F0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = sub_22D01436C();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a2);
  v12 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  swift_beginAccess();
  sub_22CEF57FC(v6, v10);
  swift_endAccess();
  sub_22CEF5F4C();
}

uint64_t sub_22CEF42A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22D01436C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22D01430C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22CEF43AC(char a1)
{
  v3 = *(*(v1 + 80) + 16);
  os_unfair_lock_lock(v3);
  if (a1)
  {
    goto LABEL_6;
  }

  if (qword_28143DBD8 != -1)
  {
    swift_once();
  }

  if ((byte_281444380 & 1) == 0)
  {
LABEL_6:
    v6 = sub_22D01616C();
    v7 = MEMORY[0x277D4D650];
    __swift_allocate_boxed_opaque_existential_1(v5);
    sub_22D01615C();
  }

  else
  {
    v6 = sub_22D01616C();
    v7 = MEMORY[0x277D4D650];
    __swift_allocate_boxed_opaque_existential_1(v5);
    sub_22D01614C();
  }

  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 88));
  sub_22CEF44D4(v5, v1 + 88);
  swift_endAccess();
  os_unfair_lock_unlock(v3);
  sub_22CEE3A84(v1 + 88, v5);
  sub_22D01643C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_22CEF44D4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_22CEF4520()
{
  v1 = sub_22D01659C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 120);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_22D0165BC();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if ((sub_22CEF4850() & 1) == 0)
    {
      v8 = *(v0 + 24);

LABEL_26:
      v42 = v8;
      sub_22D01643C();
    }

    v8 = sub_22CEF49F4(MEMORY[0x277D84F90]);
    v9 = *(v0 + 24);
    v12 = *(v9 + 64);
    v11 = v9 + 64;
    v10 = v12;
    v13 = 1 << *(*(v0 + 24) + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v10;
    v16 = (v13 + 63) >> 6;
    v40 = *(v0 + 24);

    v17 = 0;
    v39 = v0;
    while (v15)
    {
      v19 = v17;
LABEL_13:
      v20 = __clz(__rbit64(v15)) | (v19 << 6);
      v21 = (*(v40 + 48) + 16 * v20);
      v23 = *v21;
      v22 = v21[1];
      v24 = *(*(v40 + 56) + 8 * v20);
      if (!*(v0 + 32))
      {
        v24 = 0;
      }

      v41 = v24;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v8;
      v26 = sub_22CEEC698(v23, v22);
      v28 = v8[2];
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        goto LABEL_28;
      }

      v32 = v27;
      if (v8[3] >= v31)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v37 = v26;
          sub_22CFB6680();
          v26 = v37;
        }
      }

      else
      {
        sub_22CFB938C(v31, isUniquelyReferenced_nonNull_native);
        v26 = sub_22CEEC698(v23, v22);
        if ((v32 & 1) != (v33 & 1))
        {
          goto LABEL_31;
        }
      }

      v15 &= v15 - 1;
      if (v32)
      {
        v18 = v26;

        v8 = v42;
        *(v42[7] + 8 * v18) = v41;
      }

      else
      {
        v8 = v42;
        v42[(v26 >> 6) + 8] |= 1 << v26;
        v34 = (v8[6] + 16 * v26);
        *v34 = v23;
        v34[1] = v22;
        *(v8[7] + 8 * v26) = v41;
        v35 = v8[2];
        v30 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v30)
        {
          goto LABEL_29;
        }

        v8[2] = v36;
      }

      v17 = v19;
      v0 = v39;
    }

    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v16)
      {

        goto LABEL_26;
      }

      v15 = *(v11 + 8 * v19);
      ++v17;
      if (v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
LABEL_31:
  result = sub_22D016E1C();
  __break(1u);
  return result;
}

uint64_t sub_22CEF4850()
{
  if (qword_28143DBD8 != -1)
  {
    swift_once();
  }

  v0 = byte_281444380;
  if (byte_281444380 == 1)
  {
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v1 = sub_22D01637C();
    __swift_project_value_buffer(v1, qword_281444420);
    v2 = sub_22D01636C();
    v3 = sub_22D0168CC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Device supports boosted QoS";
LABEL_12:
      _os_log_impl(&dword_22CEE1000, v2, v3, v5, v4, 2u);
      MEMORY[0x2318C6860](v4, -1, -1);
    }
  }

  else
  {
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v6 = sub_22D01637C();
    __swift_project_value_buffer(v6, qword_281444420);
    v2 = sub_22D01636C();
    v3 = sub_22D0168CC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Device does not support boosted QoS";
      goto LABEL_12;
    }
  }

  return v0;
}

unint64_t sub_22CEF4A08(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_22D016D3C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_22CEEC698(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
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

void sub_22CEF4B04(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(*(Strong + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer_lock) + 16);

    os_unfair_lock_lock(v5);
    *&v4[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer__lock_qos] = v2;

    v6 = OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer__lock_clients;
    swift_beginAccess();
    v7 = *&v4[v6];
    v8 = 1 << *(v7 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v7 + 64);
    v11 = (v8 + 63) >> 6;

    v12 = 0;
    while (v10)
    {
      v13 = v12;
LABEL_10:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = *(*(v7 + 56) + ((v13 << 9) | (8 * v14)));
      sub_22D00932C(v2);
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

        os_unfair_lock_unlock(v5);

        return;
      }

      v10 = *(v7 + 64 + 8 * v13);
      ++v12;
      if (v10)
      {
        v12 = v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
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

uint64_t sub_22CEF4D04(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22CEF4D64(v2);
  }

  return result;
}

uint64_t sub_22CEF4D64(uint64_t a1)
{
  v104 = sub_22D0162DC();
  v3 = *(v104 - 8);
  v5 = MEMORY[0x28223BE20](v104, v4);
  v91 = &v77[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5, v7);
  v106 = &v77[-v9];
  MEMORY[0x28223BE20](v8, v10);
  v105 = &v77[-v11];
  v12 = sub_22D015B9C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v93 = &v77[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_22D015C8C();
  v107 = *(v16 - 8);
  v108 = v16;
  v18 = MEMORY[0x28223BE20](v16, v17);
  v90 = &v77[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v18, v20);
  v89 = &v77[-v22];
  MEMORY[0x28223BE20](v21, v23);
  v92 = &v77[-v24];
  v25 = sub_22D01659C();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v77[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v94 = v1;
  v30 = *(v1 + 32);
  *v29 = v30;
  (*(v26 + 104))(v29, *MEMORY[0x277D85200], v25);
  v31 = v30;
  LOBYTE(v30) = sub_22D0165BC();
  (*(v26 + 8))(v29, v25);
  if ((v30 & 1) == 0)
  {
    goto LABEL_24;
  }

  if (qword_28143FB58 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v32 = sub_22D01637C();
    v88 = __swift_project_value_buffer(v32, qword_281444498);
    v33 = sub_22D01636C();
    v34 = sub_22D01690C();
    v35 = os_log_type_enabled(v33, v34);
    v37 = v92;
    v36 = v93;
    if (v35)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_22CEE1000, v33, v34, "PushParticipant received QoS update", v38, 2u);
      MEMORY[0x2318C6860](v38, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1((v94 + 48), *(v94 + 72));
    v39 = sub_22D015F2C();
    v41 = v39;
    v42 = *(v39 + 16);
    v43 = v108;
    if (!v42)
    {
    }

    v44 = v13;
    v13 = 0;
    v110 = v107 + 16;
    v103 = (v44 + 88);
    v102 = *MEMORY[0x277D4D548];
    v83 = *MEMORY[0x277D4D568];
    v78 = *MEMORY[0x277D4D6A8];
    v82 = (v3 + 104);
    v95 = *MEMORY[0x277D4D6A0];
    v101 = (v3 + 16);
    v81 = (v3 + 8);
    v99 = (v44 + 8);
    v100 = (v107 + 8);
    *&v40 = 136446466;
    v79 = v40;
    v85 = v39;
    v84 = v42;
    v87 = a1;
    v86 = v12;
    while (v13 < *(v41 + 16))
    {
      v45 = v41 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v13;
      v109 = *(v107 + 16);
      v109(v37, v45, v43);
      sub_22D015BDC();
      v46 = (*v103)(v36, v12);
      if (v46 == v102)
      {
        (*v100)(v37, v43);
      }

      else
      {
        if (v46 != v83)
        {
          goto LABEL_26;
        }

        v47 = sub_22D015C3C();
        v49 = v89;
        if (*(a1 + 16))
        {
          v50 = sub_22CEEC698(v47, v48);
          v52 = v51;
          v43 = v108;

          v53 = v95;
          if (v52)
          {
            v54 = *(*(a1 + 56) + 8 * v50);
            v53 = v95;
            if (v54 != 1)
            {
              v53 = v78;
              if (v54)
              {
                while (1)
                {
LABEL_26:
                  sub_22D016CFC();
                  __break(1u);
                }
              }
            }
          }
        }

        else
        {

          v53 = v95;
        }

        v56 = v104;
        v55 = v105;
        (*v82)(v105, v53, v104);
        v109(v49, v37, v43);
        v98 = *v101;
        v98(v106, v55, v56);
        v57 = sub_22D01636C();
        v58 = sub_22D01690C();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v111 = v80;
          *v59 = v79;
          v60 = sub_22D015C3C();
          v62 = v61;
          v63 = v106;
          v97 = *v100;
          v97(v49, v108);
          v64 = sub_22CEEE31C(v60, v62, &v111);

          *(v59 + 4) = v64;
          *(v59 + 12) = 2082;
          sub_22CFB2168(&qword_27D9F3128, MEMORY[0x277D4D6B0], MEMORY[0x277D4D6B8]);
          v65 = sub_22D016DEC();
          v67 = v66;
          v68 = v63;
          v43 = v108;
          v96 = *v81;
          v96(v68, v56);
          v69 = sub_22CEEE31C(v65, v67, &v111);

          *(v59 + 14) = v69;
          _os_log_impl(&dword_22CEE1000, v57, v58, "Changing QoS for %{public}s to %{public}s", v59, 0x16u);
          v70 = v80;
          swift_arrayDestroy();
          MEMORY[0x2318C6860](v70, -1, -1);
          MEMORY[0x2318C6860](v59, -1, -1);
        }

        else
        {

          v96 = *v81;
          v96(v106, v56);
          v97 = *v100;
          v97(v49, v43);
        }

        v71 = v90;
        v72 = v92;
        v109(v90, v92, v43);
        v3 = v104;
        v73 = v105;
        v98(v91, v105, v104);
        sub_22D015C7C();
        __swift_project_boxed_opaque_existential_1((v94 + 48), *(v94 + 72));
        v43 = v108;
        sub_22D015F6C();
        v74 = v71;
        v37 = v72;
        v75 = v97;
        v97(v74, v43);
        v96(v73, v3);
        v75(v72, v43);
        a1 = v87;
        v12 = v86;
        v36 = v93;
        v41 = v85;
        v42 = v84;
      }

      ++v13;
      (*v99)(v36, v12);
      if (v42 == v13)
      {
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }
}

uint64_t sub_22CEF57B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22CEF57FC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E18, &qword_22D01A5F0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_22CEEC3D8(a1, &qword_27D9F2E18, &qword_22D01A5F0);
    sub_22CEF5B3C(v8, a2);
    v14 = sub_22D01436C();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_22CEEC3D8(v8, &qword_27D9F2E18, &qword_22D01A5F0);
  }

  else
  {
    sub_22CEF0B08(a1, v12, type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_22CFBFB68(v12, a2, isUniquelyReferenced_nonNull_native);
    v17 = sub_22D01436C();
    result = (*(*(v17 - 8) + 8))(a2, v17);
    *v2 = v19;
  }

  return result;
}

uint64_t sub_22CEF5A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D01436C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22D01430C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_22CEF5B3C@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = v2;
  v5 = sub_22CEF5CD8(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22CFB7BDC();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_22D01436C();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
    v20 = *(v13 - 8);
    sub_22CEF0B08(v12 + *(v20 + 72) * v7, a1, type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task);
    sub_22CFBD9B0(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a1;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a1;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

unint64_t sub_22CEF5CD8(uint64_t a1)
{
  sub_22D01436C();
  v2 = MEMORY[0x277CC95F0];
  sub_22CEF57B4(&qword_28143F710, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_22D01661C();
  return sub_22CEF5DAC(a1, v3, MEMORY[0x277CC95F0], &qword_27D9F3208, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_22CEF5DAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
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
      sub_22CEF57B4(v24, v25, v26);
      v20 = sub_22D01665C();
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

void sub_22CEF5F4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v17 - v2;
  v4 = sub_22D01430C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22CEF62CC(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_22CEEC3D8(v3, &qword_27D9F2648, &unk_22D018BC0);
    sub_22D0166AC();
    xpc_set_event();
LABEL_13:

    return;
  }

  (*(v5 + 32))(v8, v3, v4);
  sub_22D0142BC();
  v10 = ceil(v9);
  if (v10 >= 9.22337204e18)
  {
    if (qword_28143FB18 == -1)
    {
LABEL_9:
      v13 = sub_22D01637C();
      __swift_project_value_buffer(v13, qword_2814443F0);
      v14 = sub_22D01636C();
      v15 = sub_22D0168EC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_22CEE1000, v14, v15, "Cannot schedule tasks this far into the future", v16, 2u);
        MEMORY[0x2318C6860](v16, -1, -1);
      }

      sub_22D0166AC();
      xpc_set_event();
      goto LABEL_12;
    }

LABEL_15:
    swift_once();
    goto LABEL_9;
  }

  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v10 <= -9.22337204e18)
  {
    __break(1u);
  }

  else
  {
    v11 = 1000000000 * v10;
    if ((v10 * 1000000000) >> 64 == v11 >> 63)
    {
      v12 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_date(v12, "Date", v11);
      xpc_dictionary_set_BOOL(v12, "UserVisible", 1);
      sub_22D0166AC();
      xpc_set_event();
      swift_unknownObjectRelease();
LABEL_12:
      (*(v5 + 8))(v8, v4);
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_22CEF62CC@<X0>(char *a1@<X8>)
{
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E10, &qword_22D01A5E8);
  v4 = MEMORY[0x28223BE20](v82, v3);
  v81 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v80 = &v71 - v7;
  v8 = sub_22D01430C();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v79 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v78 = &v71 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v71 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v71 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v74 = &v71 - v25;
  v26 = sub_22D01659C();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v30 = (&v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = *(v1 + 16);
  *v30 = v31;
  (*(v27 + 104))(v30, *MEMORY[0x277D85200], v26);
  v32 = v31;
  LOBYTE(v31) = sub_22D0165BC();
  result = (*(v27 + 8))(v30, v26);
  if (v31)
  {
    v71 = v19;
    v86 = v8;
    v73 = a1;
    swift_beginAccess();
    v34 = *(v1 + 32);

    sub_22D01423C();
    v35 = *(v34 + 64);
    v75 = v34 + 64;
    v36 = 1 << *(v34 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & v35;
    v39 = (v36 + 63) >> 6;
    v76 = (v9 + 16);
    v72 = v9;
    v83 = (v9 + 32);
    v84 = (v9 + 8);
    v85 = v34;

    v40 = 0;
    v77 = v23;
    if (v38)
    {
      while (1)
      {
        v41 = v40;
LABEL_10:
        v42 = __clz(__rbit64(v38));
        v38 &= v38 - 1;
        v43 = v42 | (v41 << 6);
        v44 = v85;
        v45 = *(v85 + 48);
        v46 = sub_22D01436C();
        v47 = *(v46 - 8);
        v87 = v46;
        v88 = v47;
        v48 = v80;
        (*(v47 + 16))(v80, v45 + *(v47 + 72) * v43, v46);
        v49 = *(v44 + 56);
        v50 = (type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0) - 8);
        v51 = v49 + *(*v50 + 72) * v43;
        v52 = v82;
        sub_22CF8A54C(v51, v48 + *(v82 + 48));
        v53 = v81;
        sub_22CEEB6DC(v48, v81, &qword_27D9F2E10, &qword_22D01A5E8);
        v54 = v53 + *(v52 + 48);
        v55 = v54 + v50[7];
        v56 = v79;
        v57 = v86;
        (*v76)(v79, v55, v86);
        sub_22CF8A5B0(v54);
        sub_22CF8A740(&qword_281443A30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v23 = v77;
        v58 = sub_22D01663C();
        sub_22CEEC3D8(v48, &qword_27D9F2E10, &qword_22D01A5E8);
        if (v58)
        {
          v59 = v56;
        }

        else
        {
          v59 = v23;
        }

        if (v58)
        {
          v60 = v23;
        }

        else
        {
          v60 = v56;
        }

        (*v84)(v59, v57);
        v61 = *v83;
        v62 = v78;
        (*v83)(v78, v60, v57);
        (*(v88 + 8))(v53, v87);
        result = (v61)(v23, v62, v57);
        if (!v38)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v41 >= v39)
      {
        break;
      }

      v38 = *(v75 + 8 * v41);
      ++v40;
      if (v38)
      {
        v40 = v41;
        goto LABEL_10;
      }
    }

    v63 = *v83;
    v64 = v74;
    v65 = v86;
    (*v83)(v74, v23, v86);

    v66 = v71;
    sub_22D01423C();
    v67 = sub_22D01428C();
    v68 = *v84;
    (*v84)(v66, v65);
    if (v67)
    {
      v69 = v73;
      v63(v73, v64, v65);
      v70 = 0;
    }

    else
    {
      v68(v64, v65);
      v70 = 1;
      v69 = v73;
    }

    return (*(v72 + 56))(v69, v70, 1, v65);
  }

  else
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t objectdestroy_29Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

void sub_22CEF6A04(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v47 - v5;
  v7 = sub_22D01430C();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v47 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v47 - v18;
  os_unfair_lock_assert_owner(*(v1[2] + 16));
  if (v1[9])
  {
    v20 = v1[10];
    sub_22CEEB6DC(a1, v6, &qword_27D9F2648, &unk_22D018BC0);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      swift_unknownObjectRetain();
      sub_22CEEC3D8(v6, &qword_27D9F2648, &unk_22D018BC0);
      if (qword_28143FB18 != -1)
      {
        swift_once();
      }

      v21 = sub_22D01637C();
      __swift_project_value_buffer(v21, qword_2814443F0);
      v22 = sub_22D01636C();
      v23 = sub_22D01690C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = v20;
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_22CEE1000, v22, v23, "Cancelling nonwaking task", v25, 2u);
        v26 = v25;
        v20 = v24;
        MEMORY[0x2318C6860](v26, -1, -1);
      }
    }

    else
    {
      v51 = v20;
      (*(v8 + 32))(v19, v6, v7);
      v27 = qword_28143FB18;
      swift_unknownObjectRetain();
      if (v27 != -1)
      {
        swift_once();
      }

      v28 = sub_22D01637C();
      __swift_project_value_buffer(v28, qword_2814443F0);
      v29 = *(v8 + 16);
      v29(v16, v19, v7);
      v29(v12, v19, v7);
      v30 = sub_22D01636C();
      v31 = sub_22D01690C();
      if (os_log_type_enabled(v30, v31))
      {
        v48 = v31;
        v49 = v30;
        v50 = a1;
        v32 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v52 = v47;
        *v32 = 136446466;
        if (qword_28143F550 != -1)
        {
          swift_once();
        }

        v33 = qword_28143F558;
        v34 = sub_22D01426C();
        v35 = [v33 stringFromDate_];

        v36 = sub_22D01667C();
        v38 = v37;

        v39 = *(v8 + 8);
        v39(v16, v7);
        v40 = sub_22CEEE31C(v36, v38, &v52);

        *(v32 + 4) = v40;
        *(v32 + 12) = 2048;
        sub_22D0142AC();
        v42 = v41;
        v39(v12, v7);
        *(v32 + 14) = v42;
        v43 = v49;
        _os_log_impl(&dword_22CEE1000, v49, v48, "Scheduling nonwaking task for: %{public}s in %fs", v32, 0x16u);
        v44 = v47;
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        MEMORY[0x2318C6860](v44, -1, -1);
        MEMORY[0x2318C6860](v32, -1, -1);

        v39(v19, v7);
        a1 = v50;
        v20 = v51;
      }

      else
      {

        v45 = *(v8 + 8);
        v45(v12, v7);
        v45(v16, v7);
        v45(v19, v7);
        v20 = v51;
      }
    }

    ObjectType = swift_getObjectType();
    (*(v20 + 32))(a1, ObjectType, v20);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_22CEF6F78(uint64_t a1)
{
  v3 = *(*(v1 + 24) + 16);

  os_unfair_lock_lock(v3);
  sub_22CEF6FE0(v1, a1);
  os_unfair_lock_unlock(v3);
}

uint64_t sub_22CEF6FE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v32 - v6;
  v8 = sub_22D01430C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v13 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v32 - v15;
  [*(a1 + 16) cancel];
  [*(a1 + 16) invalidate];
  v17 = *(a1 + 16);
  *(a1 + 16) = 0;

  sub_22CEF74A4(a2, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22CEF7514(v7);
  }

  v34 = *(v9 + 32);
  v34(v16, v7, v8);
  v19 = objc_allocWithZone(MEMORY[0x277CF0BD8]);
  v20 = sub_22D01666C();
  v21 = [v19 initWithIdentifier_];

  v22 = *(a1 + 16);
  *(a1 + 16) = v21;

  sub_22D0142DC();
  sub_22D01424C();
  v24 = v23;
  v35 = *(v9 + 8);
  result = v35(v13, v8);
  v25 = *(a1 + 16);
  if (v25)
  {
    if (v24 < 0.0)
    {
      v24 = 1.0;
    }

    v33 = *(a1 + 32);
    v26 = swift_allocObject();
    swift_weakInit();
    (*(v9 + 16))(v13, v16, v8);
    v27 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    v34((v28 + v27), v13, v8);
    aBlock[4] = sub_22D0088FC;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22D008590;
    aBlock[3] = &block_descriptor_31;
    v29 = _Block_copy(aBlock);
    v30 = v25;
    v31 = v33;

    [v30 scheduleWithFireInterval:v31 leewayInterval:v29 queue:v24 handler:0.0];
    _Block_release(v29);

    return v35(v16, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CEF73A8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CEF73E0()
{
  v1 = sub_22D01430C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22CEF74A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CEF7514(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22CEF757C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v47 - v5;
  v7 = sub_22D01430C();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v47 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v47 - v18;
  os_unfair_lock_assert_owner(*(v1[2] + 16));
  if (v1[7])
  {
    v20 = v1[8];
    sub_22CEEB6DC(a1, v6, &qword_27D9F2648, &unk_22D018BC0);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      swift_unknownObjectRetain();
      sub_22CEEC3D8(v6, &qword_27D9F2648, &unk_22D018BC0);
      if (qword_28143FB18 != -1)
      {
        swift_once();
      }

      v21 = sub_22D01637C();
      __swift_project_value_buffer(v21, qword_2814443F0);
      v22 = sub_22D01636C();
      v23 = sub_22D01690C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = v20;
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_22CEE1000, v22, v23, "Cancelling waking task", v25, 2u);
        v26 = v25;
        v20 = v24;
        MEMORY[0x2318C6860](v26, -1, -1);
      }
    }

    else
    {
      v51 = v20;
      (*(v8 + 32))(v19, v6, v7);
      v27 = qword_28143FB18;
      swift_unknownObjectRetain();
      if (v27 != -1)
      {
        swift_once();
      }

      v28 = sub_22D01637C();
      __swift_project_value_buffer(v28, qword_2814443F0);
      v29 = *(v8 + 16);
      v29(v16, v19, v7);
      v29(v12, v19, v7);
      v30 = sub_22D01636C();
      v31 = sub_22D01690C();
      if (os_log_type_enabled(v30, v31))
      {
        v48 = v31;
        v49 = v30;
        v50 = a1;
        v32 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v52 = v47;
        *v32 = 136446466;
        if (qword_28143F550 != -1)
        {
          swift_once();
        }

        v33 = qword_28143F558;
        v34 = sub_22D01426C();
        v35 = [v33 stringFromDate_];

        v36 = sub_22D01667C();
        v38 = v37;

        v39 = *(v8 + 8);
        v39(v16, v7);
        v40 = sub_22CEEE31C(v36, v38, &v52);

        *(v32 + 4) = v40;
        *(v32 + 12) = 2048;
        sub_22D0142AC();
        v42 = v41;
        v39(v12, v7);
        *(v32 + 14) = v42;
        v43 = v49;
        _os_log_impl(&dword_22CEE1000, v49, v48, "Scheduling waking task for: %{public}s in %fs", v32, 0x16u);
        v44 = v47;
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        MEMORY[0x2318C6860](v44, -1, -1);
        MEMORY[0x2318C6860](v32, -1, -1);

        v39(v19, v7);
        a1 = v50;
        v20 = v51;
      }

      else
      {

        v45 = *(v8 + 8);
        v45(v12, v7);
        v45(v16, v7);
        v45(v19, v7);
        v20 = v51;
      }
    }

    ObjectType = swift_getObjectType();
    (*(v20 + 32))(a1, ObjectType, v20);
    swift_unknownObjectRelease();
  }
}

double sub_22CEF7AF0(void (*a1)(char *, uint64_t))
{
  v3 = *(*(v1 + 24) + 16);

  os_unfair_lock_lock(v3);
  sub_22CEF7B58(v1, a1);
  os_unfair_lock_unlock(v3);

  return result;
}

void sub_22CEF7B58(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v90 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v78 - v5;
  v7 = sub_22D01430C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v89 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v88 = &v78 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v78 - v17;
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v78 - v21;
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v78 - v25;
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v78 - v28;
  sub_22D01566C();
  v91 = sub_22D01563C();
  [*(a1 + 16) invalidate];
  v30 = *(a1 + 16);
  v92 = a1;
  *(a1 + 16) = 0;

  sub_22CEF74A4(v90, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_22CEF7514(v6);
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v31 = sub_22D01637C();
    __swift_project_value_buffer(v31, qword_2814443F0);
    v32 = sub_22D01636C();
    v33 = sub_22D01690C();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v92;
    if (v34)
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_22CEE1000, v32, v33, "Skipping next scheduled wake task - next date is nil", v36, 2u);
      MEMORY[0x2318C6860](v36, -1, -1);
    }
  }

  else
  {
    v83 = *(v8 + 32);
    v84 = v8 + 32;
    v83(v29, v6, v7);
    sub_22D0142DC();
    sub_22D01425C();
    v37 = *(v8 + 8);
    v85 = v22;
    v90 = v37;
    v37(v22, v7);
    sub_22CEF8844(&qword_281443A30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v38 = sub_22D01664C();
    v86 = v8;
    v87 = v26;
    v40 = v8 + 16;
    v39 = *(v8 + 16);
    if (v38)
    {
      v41 = v26;
    }

    else
    {
      v41 = v29;
    }

    v39(v18, v41, v7);
    v42 = v29;
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v43 = sub_22D01637C();
    __swift_project_value_buffer(v43, qword_2814443F0);
    v44 = v88;
    v39(v88, v29, v7);
    v45 = v89;
    v39(v89, v42, v7);
    v46 = v42;
    v47 = sub_22D01636C();
    v80 = sub_22D01690C();
    v48 = os_log_type_enabled(v47, v80);
    v81 = v46;
    v82 = v39;
    if (v48)
    {
      v78 = v40;
      v79 = v18;
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      aBlock[0] = v50;
      *v49 = 136446466;
      if (qword_28143ECC8 != -1)
      {
        swift_once();
      }

      v51 = qword_28143ECD0;
      v52 = v88;
      v53 = sub_22D01426C();
      v54 = [v51 stringFromDate_];

      v55 = sub_22D01667C();
      v57 = v56;

      v58 = v52;
      v59 = v90;
      v90(v58, v7);
      v60 = sub_22CEEE31C(v55, v57, aBlock);

      *(v49 + 4) = v60;
      *(v49 + 12) = 2048;
      v61 = v89;
      sub_22D0142AC();
      v63 = v62;
      v59(v61, v7);
      *(v49 + 14) = v63;
      _os_log_impl(&dword_22CEE1000, v47, v80, "Scheduling waking task for adjusted date: %{public}s in %fs", v49, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x2318C6860](v50, -1, -1);
      MEMORY[0x2318C6860](v49, -1, -1);

      v35 = v92;
      v18 = v79;
    }

    else
    {

      v64 = v90;
      v90(v45, v7);
      v64(v44, v7);
      v35 = v92;
    }

    v65 = objc_allocWithZone(MEMORY[0x277CCA8B8]);
    v66 = sub_22D01666C();
    v67 = [v65 initWithIdentifier_];

    v68 = *(v35 + 16);
    *(v35 + 16) = v67;
    v69 = v67;

    [v69 setQualityOfService_];
    [v69 setRepeats_];
    sub_22D0142AC();
    [v69 setInterval_];
    [v69 setTolerance_];
    [v69 interval];
    v70 = v85;
    if (v71 < 0.0)
    {
      [v69 setInterval_];
    }

    v72 = swift_allocObject();
    swift_weakInit();
    v82(v70, v18, v7);
    v73 = v70;
    v74 = (*(v86 + 80) + 24) & ~*(v86 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = v72;
    v83((v75 + v74), v73, v7);
    aBlock[4] = sub_22CFB2A9C;
    aBlock[5] = v75;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22CFB24C4;
    aBlock[3] = &block_descriptor_18;
    v76 = _Block_copy(aBlock);

    [v69 scheduleWithBlock_];
    _Block_release(v76);

    v77 = v90;
    v90(v18, v7);
    v77(v87, v7);
    v77(v81, v7);
  }

  sub_22CEF8508(v35, v91);
}

uint64_t sub_22CEF840C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CEF8444()
{
  v1 = sub_22D01430C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

double sub_22CEF8508(uint64_t a1, uint64_t a2)
{
  v3 = sub_22D0164CC();
  v15 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D01653C();
  v7 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = sub_22CEF8B9C;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF8B58;
  aBlock[3] = &block_descriptor_22;
  v11 = _Block_copy(aBlock);

  sub_22D0164EC();
  v16 = MEMORY[0x277D84F90];
  sub_22CEF8844(&qword_28143FA60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
  sub_22CEE8340(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
  sub_22D016ADC();
  MEMORY[0x2318C5B10](0, v10, v6, v11);
  _Block_release(v11);
  (*(v15 + 8))(v6, v3);
  (*(v7 + 8))(v10, v14);

  return result;
}

uint64_t sub_22CEF87B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22CEF87FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22CEF8844(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22CEF888C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22CEF88D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_22CEF891C(char a1)
{
  v2 = v1;
  os_unfair_lock_assert_owner(*(*(v2 + 16) + 16));
  v5 = *(v2 + 96);
  if (a1)
  {
    if (v5)
    {
      return result;
    }

    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v6 = sub_22D01637C();
    __swift_project_value_buffer(v6, qword_2814443F0);
    v7 = sub_22D01636C();
    v8 = sub_22D01690C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22CEE1000, v7, v8, "Acquiring keep-alive", v9, 2u);
      MEMORY[0x2318C6860](v9, -1, -1);
    }

    sub_22D01566C();
    *(v2 + 96) = sub_22D01563C();
  }

  else
  {
    if (!v5)
    {
      return result;
    }

    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v10 = sub_22D01637C();
    __swift_project_value_buffer(v10, qword_2814443F0);
    v11 = sub_22D01636C();
    v12 = sub_22D01690C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22CEE1000, v11, v12, "Releasing keep-alive", v13, 2u);
      MEMORY[0x2318C6860](v13, -1, -1);
    }

    if (*(v2 + 96))
    {

      sub_22D01562C();
    }

    *(v2 + 96) = 0;
  }

  return result;
}

double sub_22CEF8B58(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

int *sub_22CEF8BA4()
{
  v2 = sub_22D01502C();
  v45 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContentSourceResolver(0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v46 = &v44 - v12;
  if (sub_22D014D8C() == 4)
  {
    sub_22D0148BC();
  }

  v13 = [*(v0 + OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_connection) remoteProcess];
  *&v10[v6[6]] = MEMORY[0x277D84F90];
  v14 = v6[7];
  v15 = sub_22D0145EC();
  (*(*(v15 - 8) + 56))(&v10[v14], 1, 1, v15);
  v16 = v13;
  sub_22CEE84BC(v16);
  if (v1)
  {

    sub_22CEEC3D8(&v10[v14], &unk_27D9F2358, &unk_22D018980);
  }

  else
  {
    (*(v45 + 32))(v10, v5, v2);
    v17 = sub_22CEFC820(v16);
    v18 = &v10[v6[5]];
    *v18 = v17;
    *(v18 + 1) = v19;
    v18[16] = v20 & 1;
    v18[17] = v21 & 1;
    v18[18] = v22;
    v23 = v46;
    sub_22CEFC9D0(v10, v46, type metadata accessor for ContentSourceResolver);
    v24 = sub_22D014DEC();
    v25 = sub_22CEFCA38(v24, v23);
    sub_22CFA1418(v25);
    v6 = sub_22CEF910C();
    v45 = 0;
    if (qword_28143FB48 != -1)
    {
      swift_once();
    }

    v27 = sub_22D01637C();
    __swift_project_value_buffer(v27, qword_281444480);

    v28 = sub_22D01636C();
    v29 = sub_22D01690C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v47 = v31;
      *v30 = 136446723;
      v32 = sub_22D01481C();
      v33 = MEMORY[0x2318C5950](v24, v32);
      v35 = v34;

      v36 = sub_22CEEE31C(v33, v35, &v47);

      *(v30 + 4) = v36;
      *(v30 + 12) = 2081;
      v37 = sub_22D01483C();
      v38 = MEMORY[0x2318C5950](v6, v37);
      v40 = sub_22CEEE31C(v38, v39, &v47);

      *(v30 + 14) = v40;
      *(v30 + 22) = 2082;
      swift_beginAccess();
      v41 = sub_22CEFC6C8();
      v43 = sub_22CEEE31C(v41, v42, &v47);

      *(v30 + 24) = v43;
      _os_log_impl(&dword_22CEE1000, v28, v29, "Content source resolution: %{public}s -> %{private}s (resolver: %{public}s)", v30, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v31, -1, -1);
      MEMORY[0x2318C6860](v30, -1, -1);
    }

    else
    {
    }

    sub_22CEFD694(v23, type metadata accessor for ContentSourceResolver);
  }

  return v6;
}

uint64_t type metadata accessor for ContentSourceResolver(uint64_t a1)
{
  result = qword_281440CC8;
  if (!qword_281440CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_22CEF910C()
{
  v1 = v0;
  v2 = sub_22D01483C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v65 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v62 - v9;
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v62 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v62 - v16;
  v18 = type metadata accessor for ContentSourceResolver(0);
  v69 = *(v18 + 24);
  v70 = v18;
  v19 = *(v1 + v69);

  v21 = sub_22CEFD030(v20, v1);
  v68 = v19;

  v22 = sub_22D01502C();
  (*(*(v22 - 8) + 16))(v17, v1, v22);
  v23 = *(v3 + 104);
  v67 = *MEMORY[0x277CB9348];
  v73 = v23;
  v74 = v3 + 104;
  v23(v17);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_22CEFCE2C(0, v21[2] + 1, 1, v21);
  }

  v25 = v21[2];
  v24 = v21[3];
  if (v25 >= v24 >> 1)
  {
    v21 = sub_22CEFCE2C((v24 > 1), v25 + 1, 1, v21);
  }

  v21[2] = v25 + 1;
  v28 = *(v3 + 32);
  v27 = v3 + 32;
  v26 = v28;
  v72 = (*(v27 + 48) + 32) & ~*(v27 + 48);
  v71 = *(v27 + 40);
  v28(v21 + v72 + v71 * v25, v17, v2);
  v29 = sub_22D014FBC();
  if (v29)
  {
    v66 = v26;
    v30 = sub_22D00072C(v29);
    v32 = v31;
    if (qword_28143FB48 != -1)
    {
      swift_once();
    }

    v33 = sub_22D01637C();
    __swift_project_value_buffer(v33, qword_281444480);

    v34 = sub_22D01636C();
    v35 = sub_22D01690C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v63 = v2;
      v37 = v36;
      v38 = swift_slowAlloc();
      v64 = v27;
      v39 = v38;
      v75 = v38;
      *v37 = 136315138;
      v40 = sub_22CEEE31C(v30, v32, &v75);

      *(v37 + 4) = v40;
      _os_log_impl(&dword_22CEE1000, v34, v35, "Adding app bundle identifier as content source: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x2318C6860](v39, -1, -1);
      v41 = v37;
      v2 = v63;
      MEMORY[0x2318C6860](v41, -1, -1);
    }

    else
    {
    }

    sub_22D00072C(v56);
    sub_22D014F8C();
    v73(v14, v67, v2);
    v54 = v21[2];
    v53 = v21[3];
    v55 = v54 + 1;
    v26 = v66;
    v10 = v14;
    if (v54 < v53 >> 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v42 = sub_22D014FFC();
  if (!v43)
  {
    goto LABEL_20;
  }

  v44 = v42;
  v45 = v43;
  v66 = v26;
  if (qword_28143FB48 != -1)
  {
    swift_once();
  }

  v46 = sub_22D01637C();
  __swift_project_value_buffer(v46, qword_281444480);

  v47 = sub_22D01636C();
  v48 = sub_22D01690C();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v63 = v44;
    v50 = v49;
    v51 = swift_slowAlloc();
    v64 = v27;
    v52 = v51;
    v75 = v51;
    *v50 = 136315138;
    *(v50 + 4) = sub_22CEEE31C(v63, v45, &v75);
    _os_log_impl(&dword_22CEE1000, v47, v48, "Adding app intents extension bundle identifier as content source: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    MEMORY[0x2318C6860](v52, -1, -1);
    MEMORY[0x2318C6860](v50, -1, -1);
  }

  v26 = v66;
  sub_22D014F8C();
  v73(v10, v67, v2);
  v54 = v21[2];
  v53 = v21[3];
  v55 = v54 + 1;
  if (v54 >= v53 >> 1)
  {
LABEL_16:
    v21 = sub_22CEFCE2C((v53 > 1), v55, 1, v21);
  }

LABEL_19:
  v21[2] = v55;
  v26(v21 + v72 + v54 * v71, v10, v2);
LABEL_20:

  v57 = v70;
  *(v1 + v69) = v21;
  if (*(v1 + *(v57 + 20) + 18) >= 2u)
  {
    v58 = v65;
    v73(v65, *MEMORY[0x277CB9328], v2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_22CEFCE2C(0, v21[2] + 1, 1, v21);
    }

    v60 = v21[2];
    v59 = v21[3];
    if (v60 >= v59 >> 1)
    {
      v21 = sub_22CEFCE2C((v59 > 1), v60 + 1, 1, v21);
    }

    v21[2] = v60 + 1;
    v26(v21 + v72 + v60 * v71, v58, v2);
  }

  return v21;
}

uint64_t sub_22CEF9900(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v34 = a3;
  v6 = sub_22D01471C();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2308, &unk_22D018950);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v29 - v15;
  v17 = sub_22D014E2C();
  v35 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22D0141DC();
  sub_22CEE83DC(&qword_2814439A0, MEMORY[0x277CB9678], MEMORY[0x277CB9670]);
  sub_22D01516C();

  if (a4 >> 60 == 15)
  {
    v22 = sub_22D0150CC();
    (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  }

  else
  {
    sub_22D01413C();
    swift_allocObject();
    sub_22CEEC970(v34, a4);
    v23 = sub_22D01412C();
    v24 = sub_22D0150CC();
    sub_22CEE83DC(&qword_27D9F2310, MEMORY[0x277CB9850], MEMORY[0x277CB9860]);
    sub_22D01411C();
    if (v4)
    {
      (*(v35 + 8))(v20, v17);

      sub_22CEEEF0C(v34, a4);
      return v23;
    }

    sub_22CEEEF0C(v34, a4);
    (*(*(v24 - 8) + 56))(v13, 0, 1, v24);
    sub_22CEF0368(v13, v16, &qword_27D9F2308, &unk_22D018950);
  }

  v25 = v32;
  v23 = v33;
  sub_22CEF9DAC(v20, v16, v32);
  if (!v4)
  {
    sub_22CEE83DC(&qword_2814439F0, MEMORY[0x277CB92E0], MEMORY[0x277CB92D8]);
    v26 = v31;
    v27 = sub_22D01517C();
    v23 = sub_22D0141EC();

    (*(v30 + 8))(v25, v26);
  }

  sub_22CEEC3D8(v16, &qword_27D9F2308, &unk_22D018950);
  (*(v35 + 8))(v20, v17);
  return v23;
}

void sub_22CEF9DAC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v197 = a2;
  v203 = a1;
  v170 = a3;
  v179 = sub_22D014C3C();
  v178 = *(v179 - 8);
  v5 = MEMORY[0x28223BE20](v179, v4);
  v172 = &v162 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v171 = &v162 - v9;
  MEMORY[0x28223BE20](v8, v10);
  v177 = &v162 - v11;
  v12 = sub_22D0149CC();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v176 = &v162 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_22D01502C();
  v168 = *(v169 - 8);
  MEMORY[0x28223BE20](v169, v15);
  v175 = &v162 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22D01488C();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v174 = &v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for ActivityState(0);
  MEMORY[0x28223BE20](v167, v20);
  v180 = (&v162 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_22D0148CC();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v162 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22D0149AC();
  v184 = *(v27 - 8);
  v185 = v27;
  MEMORY[0x28223BE20](v27, v28);
  v186 = &v162 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22D014EFC();
  v181 = *(v30 - 8);
  MEMORY[0x28223BE20](v30 - 8, v31);
  v183 = (&v162 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_22D014E2C();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v35);
  v182 = &v162 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_22D01436C();
  v187 = *(v37 - 8);
  v188 = v37;
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v162 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_22D01430C();
  v192 = *(v41 - 8);
  v193 = v41;
  v43 = MEMORY[0x28223BE20](v41, v42);
  v173 = &v162 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v43, v45);
  v48 = &v162 - v47;
  MEMORY[0x28223BE20](v46, v49);
  v51 = &v162 - v50;
  sub_22CEFBCA4();
  v195 = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v23 + 104))(v26, *MEMORY[0x277CB93F0], v22);
    sub_22D0148EC();
    sub_22CEE83DC(&unk_27D9F2318, MEMORY[0x277CB9400], MEMORY[0x277CB9408]);
    swift_allocError();
    sub_22D0148DC();
    swift_willThrow();
    return;
  }

  v190 = v23;
  v191 = v26;
  v196 = Strong;
  v189 = v22;
  v165 = v33;
  v166 = v34;
  v53 = sub_22D0150CC();
  if ((*(*(v53 - 8) + 48))(v197, 1, v53) == 1)
  {
    sub_22D014E1C();
    sub_22D0142DC();
    sub_22CEE83DC(&qword_281443A30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v54 = v193;
    v55 = sub_22D01663C();
    v56 = *(v192 + 8);
    v56(v48, v54);
    v56(v51, v54);
    if (v55)
    {
      if (qword_28143FB60 != -1)
      {
        swift_once();
      }

      v57 = sub_22D01637C();
      __swift_project_value_buffer(v57, qword_2814444B0);
      v58 = sub_22D01636C();
      v59 = sub_22D0168EC();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_22CEE1000, v58, v59, "Cannot schedule an activity to begin in the future without an alert configuration", v60, 2u);
        MEMORY[0x2318C6860](v60, -1, -1);
      }

      (*(v190 + 104))(v191, *MEMORY[0x277CB93D8], v189);
      sub_22D0148EC();
      sub_22CEE83DC(&unk_27D9F2318, MEMORY[0x277CB9400], MEMORY[0x277CB9408]);
      swift_allocError();
      sub_22D0148DC();
      swift_willThrow();
      goto LABEL_11;
    }
  }

  v61 = v203;
  v62 = v194;
  v63 = v195;
  v64 = sub_22CEF8BA4();
  if (v62)
  {
    (*(v190 + 104))(v191, *MEMORY[0x277CB93D8], v189);
    sub_22D0148EC();
    sub_22CEE83DC(&unk_27D9F2318, MEMORY[0x277CB9400], MEMORY[0x277CB9408]);
    swift_allocError();
    v65 = v62;
    sub_22D0148DC();
    swift_willThrow();

LABEL_11:
    swift_unknownObjectRelease();
    return;
  }

  if (!*(v64 + 2))
  {

    (*(v190 + 104))(v191, *MEMORY[0x277CB93D8], v189);
    sub_22D0148EC();
    sub_22CEE83DC(&unk_27D9F2318, MEMORY[0x277CB9400], MEMORY[0x277CB9408]);
    swift_allocError();
    sub_22D0148DC();
    swift_willThrow();
    goto LABEL_11;
  }

  v194 = v64;
  if (sub_22D014CFC())
  {
    v66 = sub_22D014CEC();
    if (v67)
    {
      v68 = v66;
      v69 = v67;
    }

    else
    {
      sub_22D01435C();
      v71 = sub_22D01432C();
      v73 = v72;
      (*(v187 + 8))(v40, v188);
      v199 = v71;
      v200 = v73;

      MEMORY[0x2318C5860](46, 0xE100000000000000);

      v74 = v199;
      v75 = v200;
      v76 = [*(v63 + OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_connection) remoteProcess];
      LODWORD(v73) = [v76 pid];

      LODWORD(v199) = v73;
      v77 = sub_22D016DEC();
      v79 = v78;
      v199 = v74;
      v200 = v75;
      v61 = v203;

      MEMORY[0x2318C5860](v77, v79);

      v68 = v199;
      v69 = v200;
    }
  }

  else
  {
    sub_22D01435C();
    v68 = sub_22D01432C();
    v69 = v70;
    (*(v187 + 8))(v40, v188);
  }

  v80 = sub_22D014D3C();
  v81 = sub_22CEFD7B4(v80);

  v82 = sub_22D014D9C();
  v188 = sub_22CEFD7B4(v82);

  sub_22CEE3A84(v63 + OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_activityAuthorizer, &v199);
  v83 = v68;
  v84 = v202;
  __swift_project_boxed_opaque_existential_1(&v199, v201);
  v85 = *(v63 + OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_connection);
  v86 = [v85 remoteProcess];
  v87 = v81;
  v88 = v86;
  v89 = v61;
  v90 = v83;
  v91 = v87;
  v92 = (*(v84 + 8))(v89, v88);

  __swift_destroy_boxed_opaque_existential_1Tm(&v199);
  if (v92)
  {

    (*(v190 + 104))(v191, *MEMORY[0x277CB93E8], v189);
    sub_22D0148EC();
    sub_22CEE83DC(&unk_27D9F2318, MEMORY[0x277CB9400], MEMORY[0x277CB9408]);
    swift_allocError();
    v93 = v92;
    sub_22D0148DC();
    swift_willThrow();
    swift_unknownObjectRelease();

    return;
  }

  v164 = v90;
  v187 = v69;
  v94 = [v85 remoteProcess];
  v95 = sub_22D01666C();
  v96 = [v94 hasEntitlement_];

  v163 = OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_requester;
  v98 = v184;
  v97 = v185;
  v99 = v186;
  (*(v184 + 104))(v186, *MEMORY[0x277CB94E0], v185);
  v100 = v191;
  if (!*(v91 + 16) || (v101 = sub_22CEFF728(v99), v99 = v186, (v102 & 1) == 0))
  {
    v114 = v100;
    (*(v98 + 8))(v99, v97);
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v115 = sub_22D01637C();
    __swift_project_value_buffer(v115, qword_281444498);
    v116 = v187;

    v117 = sub_22D01636C();
    v118 = sub_22D01690C();

    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v199 = v120;
      *v119 = 136446210;
      *(v119 + 4) = sub_22CEEE31C(v164, v116, &v199);
      _os_log_impl(&dword_22CEE1000, v117, v118, "No lockscreen target specified for %{public}s", v119, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v120);
      MEMORY[0x2318C6860](v120, -1, -1);
      MEMORY[0x2318C6860](v119, -1, -1);
    }

    (*(v190 + 104))(v114, *MEMORY[0x277CB93F0], v189);
    sub_22D0148EC();
    sub_22CEE83DC(&unk_27D9F2318, MEMORY[0x277CB9400], MEMORY[0x277CB9408]);
    swift_allocError();
    sub_22D0148DC();
    swift_willThrow();

    goto LABEL_35;
  }

  sub_22CEFE9C8(*(v91 + 56) + *(v181 + 72) * v101, v183, MEMORY[0x277CB9790]);
  (*(v98 + 8))(v99, v97);
  v162 = v91;
  if (v96)
  {
    v103 = v196;
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v104 = sub_22D01637C();
    __swift_project_value_buffer(v104, qword_281444498);
    v105 = v187;

    v106 = sub_22D01636C();
    v107 = sub_22D01690C();

    v108 = os_log_type_enabled(v106, v107);
    v109 = v163;
    if (v108)
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v199 = v111;
      *v110 = 136446210;
      *(v110 + 4) = sub_22CEEE31C(v164, v105, &v199);
      _os_log_impl(&dword_22CEE1000, v106, v107, "Bypassing authorization UI options for %{public}s", v110, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v111);
      MEMORY[0x2318C6860](v111, -1, -1);
      MEMORY[0x2318C6860](v110, -1, -1);
    }

    v112 = v188;
    v113 = v182;
    (*(v166 + 16))(v182, v203, v165);
  }

  else
  {
    v103 = v196;
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v121 = sub_22D01637C();
    __swift_project_value_buffer(v121, qword_281444498);
    v122 = v187;

    v123 = sub_22D01636C();
    v124 = sub_22D01690C();

    v125 = os_log_type_enabled(v123, v124);
    v109 = v163;
    if (v125)
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v199 = v127;
      *v126 = 136446210;
      *(v126 + 4) = sub_22CEEE31C(v164, v122, &v199);
      _os_log_impl(&dword_22CEE1000, v123, v124, "Applying authorization UI options for %{public}s", v126, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v127);
      MEMORY[0x2318C6860](v127, -1, -1);
      MEMORY[0x2318C6860](v126, -1, -1);
    }

    v112 = v188;
    v113 = v182;
    sub_22CF079BC(v203, v183, v182);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2328, &qword_22D019B80);
  sub_22D01699C();
  if (!v199)
  {
    sub_22CEE83DC(&qword_2814439B0, MEMORY[0x277CB95E0], MEMORY[0x277CB95E8]);
    v134 = v179;
    v135 = swift_allocError();
    v136 = v178;
    (*(v178 + 104))(v137, *MEMORY[0x277CB95D0], v134);
    swift_willThrow();
    v199 = v135;
    v138 = v135;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2030, &qword_22D018FD0);
    v139 = v177;
    if (!swift_dynamicCast())
    {
      sub_22CEFD694(v183, MEMORY[0x277CB9790]);
      (*(v166 + 8))(v113, v165);

      goto LABEL_36;
    }

    v140 = v171;
    (*(v136 + 32))(v171, v139, v134);
    v141 = *(v136 + 16);
    v142 = v172;
    v141(v172, v140, v134);
    v143 = (*(v136 + 88))(v142, v134);
    if (v143 == *MEMORY[0x277CB95D8])
    {
      (*(v136 + 96))(v142, v134);

      v203 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2338, &unk_22D018960) + 48);

      (*(v190 + 104))(v100, *MEMORY[0x277CB93E8], v189);
      sub_22CEE83DC(&qword_2814439B0, MEMORY[0x277CB95E0], MEMORY[0x277CB95E8]);
      swift_allocError();
      v141(v144, v140, v134);
      sub_22D0148EC();
      sub_22CEE83DC(&unk_27D9F2318, MEMORY[0x277CB9400], MEMORY[0x277CB9408]);
      swift_allocError();
      sub_22D0148DC();
      swift_willThrow();
      (*(v136 + 8))(v140, v134);
      sub_22CEFD694(v183, MEMORY[0x277CB9790]);
      (*(v166 + 8))(v182, v165);
      sub_22CEEC3D8(&v142[v203], &qword_27D9F2340, &qword_22D01D0A0);
LABEL_47:

LABEL_59:

LABEL_35:

LABEL_36:

      goto LABEL_11;
    }

    if (v143 == *MEMORY[0x277CB95C8])
    {
      v153 = MEMORY[0x277CB93E8];
    }

    else
    {
      if (v143 != *MEMORY[0x277CB95D0])
      {
        v155 = *(v190 + 104);
        v156 = (v136 + 8);
        if (v143 == *MEMORY[0x277CB95C0])
        {
          v155(v100, *MEMORY[0x277CB93E0], v189);
          sub_22CEE83DC(&qword_2814439B0, MEMORY[0x277CB95E0], MEMORY[0x277CB95E8]);
          swift_allocError();
          v141(v157, v140, v134);
          sub_22D0148EC();
          sub_22CEE83DC(&unk_27D9F2318, MEMORY[0x277CB9400], MEMORY[0x277CB9408]);
          swift_allocError();
          sub_22D0148DC();
          swift_willThrow();
          (*v156)(v140, v134);
          sub_22CEFD694(v183, MEMORY[0x277CB9790]);
          (*(v166 + 8))(v182, v165);
        }

        else
        {
          v155(v100, *MEMORY[0x277CB93F8], v189);
          sub_22CEE83DC(&qword_2814439B0, MEMORY[0x277CB95E0], MEMORY[0x277CB95E8]);
          swift_allocError();
          v141(v158, v140, v134);
          sub_22D0148EC();
          sub_22CEE83DC(&unk_27D9F2318, MEMORY[0x277CB9400], MEMORY[0x277CB9408]);
          swift_allocError();
          sub_22D0148DC();
          swift_willThrow();
          v159 = *v156;
          (*v156)(v140, v134);
          sub_22CEFD694(v183, MEMORY[0x277CB9790]);
          (*(v166 + 8))(v182, v165);
          v159(v172, v134);
        }

        goto LABEL_47;
      }

      v153 = MEMORY[0x277CB93F0];
    }

    (*(v190 + 104))(v100, *v153, v189);
    sub_22CEE83DC(&qword_2814439B0, MEMORY[0x277CB95E0], MEMORY[0x277CB95E8]);
    v203 = swift_allocError();
    v141(v154, v140, v134);
    sub_22D0148EC();
    sub_22CEE83DC(&unk_27D9F2318, MEMORY[0x277CB9400], MEMORY[0x277CB9408]);
    swift_allocError();
    sub_22D0148DC();
    swift_willThrow();
    (*(v136 + 8))(v140, v134);
    sub_22CEFD694(v183, MEMORY[0x277CB9790]);
    (*(v166 + 8))(v182, v165);

    goto LABEL_59;
  }

  v128 = v103;
  v129 = v200;
  ObjectType = swift_getObjectType();
  v131 = *(v129 + 16);
  v161 = v129;
  v160 = v128;
  v132 = v195;
  v133 = v180;
  v131(v113, v195 + v109, v164, v187, v194, v162, v112, v197, 0, v160, &off_28402A298, ObjectType, v161);
  swift_unknownObjectRelease();
  v145 = v133[1];
  v197 = *v133;
  v191 = v145;

  sub_22D014D7C();
  v146 = sub_22D014D4C();
  v189 = v147;
  v190 = v146;
  (*(v168 + 16))(v175, v132 + v109, v169);
  sub_22D014DBC();
  LODWORD(v186) = sub_22D014CFC();
  sub_22D014D1C();
  sub_22D014D0C();
  (*(v192 + 16))(v173, v133 + *(v167 + 28), v193);
  v148 = sub_22D014D8C();
  sub_22D00811C(v148);
  if (!v149)
  {
    sub_22CF1B538();
  }

  sub_22D0146FC();
  sub_22CEFD694(v180, type metadata accessor for ActivityState);
  sub_22CEFD694(v183, MEMORY[0x277CB9790]);
  (*(v166 + 8))(v113, v165);

  if ((sub_22D014CFC() & 1) == 0 && (sub_22D014D1C() & 1) == 0)
  {
    goto LABEL_11;
  }

  v150 = sub_22D01470C();
  v152 = v151;
  swift_beginAccess();
  sub_22CEE54CC(&v198, v150, v152);
  swift_endAccess();
  swift_unknownObjectRelease();
}