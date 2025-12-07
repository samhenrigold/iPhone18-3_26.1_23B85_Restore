void sub_2304318E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_230431958(id a1, _BYTE *a2)
{
  v2 = a1;
  if (a2[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_isXPCServerEnabled] != 1)
  {
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v21 = sub_2304A5B74();
    __swift_project_value_buffer(v21, qword_28149B008);
    v22 = sub_2304A5B54();
    v23 = sub_2304A5E94();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_13;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "Replicator is disabled";
    goto LABEL_12;
  }

  v4 = [a1 remoteToken];
  v5 = sub_2304A5D14();
  v6 = [v4 hasEntitlement_];

  if (v6)
  {
    v7 = [v2 remoteToken];
    v8 = [v7 pid];

    v9 = objc_allocWithZone(_s14ReplicatorCore6ClientCMa_0());
    v10 = a2;
    v2 = v2;
    v11 = sub_230431E38(v2, v8, v10, v9);

    v12 = *&v10[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock];
    v14 = MEMORY[0x28223BE20](v13);
    MEMORY[0x28223BE20](v14);

    os_unfair_lock_lock(v12 + 4);
    sub_230431F78(v15);
    os_unfair_lock_unlock(v12 + 4);

    v16 = swift_allocObject();
    *(v16 + 16) = v8;
    *(v16 + 24) = v10;
    *(v16 + 32) = v11;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_230432510;
    *(v17 + 24) = v16;
    aBlock[4] = sub_2304324E0;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23043248C;
    aBlock[3] = &block_descriptor_4;
    v18 = _Block_copy(aBlock);
    v19 = v10;
    v20 = v11;

    [v2 configure_];
    _Block_release(v18);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if ((v11 & 1) == 0)
    {
      [v2 activate];

      return;
    }

    __break(1u);
  }

  else if (qword_281499E38 == -1)
  {
    goto LABEL_10;
  }

  swift_once();
LABEL_10:
  v26 = sub_2304A5B74();
  __swift_project_value_buffer(v26, qword_28149B008);
  v22 = sub_2304A5B54();
  v23 = sub_2304A5E74();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "Remote process is not entitled";
LABEL_12:
    _os_log_impl(&dword_230430000, v22, v23, v25, v24, 2u);
    MEMORY[0x23191A000](v24, -1, -1);
  }

LABEL_13:

  [v2 invalidate];
}

uint64_t sub_230431DC4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_230431E38(void *a1, int a2, uint64_t a3, char *a4)
{
  v7 = OBJC_IVAR____TtC14ReplicatorCoreP33_586791E780FEDC6114754B28ABA431B16Client_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54210, &qword_2304A7570);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *&a4[v7] = v8;
  *&a4[OBJC_IVAR____TtC14ReplicatorCoreP33_586791E780FEDC6114754B28ABA431B16Client_delegate + 8] = 0;
  v9 = swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC14ReplicatorCoreP33_586791E780FEDC6114754B28ABA431B16Client_lock_descriptors] = MEMORY[0x277D84FA0];
  *&a4[OBJC_IVAR____TtC14ReplicatorCoreP33_586791E780FEDC6114754B28ABA431B16Client_connection] = a1;
  *&a4[OBJC_IVAR____TtC14ReplicatorCoreP33_586791E780FEDC6114754B28ABA431B16Client_pid] = a2;
  *(v9 + 8) = &off_28451C338;
  swift_unknownObjectWeakAssign();
  v12.receiver = a4;
  v12.super_class = _s14ReplicatorCore6ClientCMa_0();
  v10 = a1;
  return objc_msgSendSuper2(&v12, sel_init);
}

void sub_230431FB0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  sub_23043202C(&v4, a2);
  v3 = v4;
  swift_endAccess();
}

uint64_t sub_23043202C(uint64_t *a1, void *a2)
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

    v9 = sub_2304A6054();

    if (v9)
    {

      _s14ReplicatorCore6ClientCMa_0();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_2304A6044();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_23045A6B0(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_23046BFE4(v20 + 1, &qword_27DB541A0, &unk_2304A7558);
    }

    v18 = v8;
    sub_230464EC4();

    *v3 = v19;
    goto LABEL_16;
  }

  _s14ReplicatorCore6ClientCMa_0();
  v11 = sub_2304A5F64();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_230432278(v18, v13, isUniquelyReferenced_nonNull_native, &qword_27DB541A0, &unk_2304A7558, _s14ReplicatorCore6ClientCMa_0);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_2304A5F74();

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

void sub_230432278(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
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
    sub_23046BFE4(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_23046D154(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_23046DC98(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = sub_2304A5F64();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_2304A5F74();

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
  sub_2304A6304();
  __break(1u);
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

uint64_t sub_23043248C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

void sub_230432544(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_2304A4C04();
  v7 = sub_2304A5D14();

  v22 = sub_230432908;
  v23 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2304328BC;
  v21 = &block_descriptor_65;
  v8 = _Block_copy(&aBlock);
  v9 = [objc_opt_self() interfaceWithIdentifier:v7 configurator:v8];

  _Block_release(v8);

  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    aBlock = 0;
    v19 = 0xE000000000000000;
    sub_2304A6104();

    aBlock = 0xD000000000000018;
    v19 = 0x80000002304A9130;
    v10 = sub_2304A62D4();
    MEMORY[0x2319192E0](v10);

    v11 = *(a3 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_queue);
    v12 = sub_2304A5D14();

    v13 = [objc_opt_self() queueWithName:v12 targetQueue:v11];

    [a1 setInterface_];
    [a1 setInterfaceTarget_];
    [a1 setQueue_];
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a4;
    v22 = sub_23048A32C;
    v23 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = sub_2304318E8;
    v21 = &block_descriptor_74;
    v16 = _Block_copy(&aBlock);
    v17 = a4;

    [a1 setInvalidationHandler_];
    _Block_release(v16);
  }
}

uint64_t sub_230432840()
{
  MEMORY[0x23191A070](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_230432878()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2304328BC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_230432908(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 protocolForProtocol_];
  [a1 setClient_];

  v4 = [v2 protocolForProtocol_];
  [a1 setServer_];
}

void sub_230432B9C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock);
    v5 = MEMORY[0x28223BE20](Strong);
    MEMORY[0x28223BE20](v5);

    os_unfair_lock_lock(v2 + 4);
    sub_230432D54(&v6);
    os_unfair_lock_unlock(v2 + 4);
    if (v0)
    {
      __break(1u);
    }

    else
    {

      sub_2304A4C24();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v3 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8], MEMORY[0x277D46300]);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x277D462E0], v3);
    swift_willThrow();
  }
}

void *sub_230432D54@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_230432DB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54640, &qword_2304A73F8);
  v5 = MEMORY[0x28223BE20](v60);
  v59 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v58 = v49 - v8;
  MEMORY[0x28223BE20](v7);
  v57 = v49 - v9;
  v68 = sub_2304A4F74();
  v10 = *(v68 - 8);
  result = MEMORY[0x28223BE20](v68);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock_devices);
  if (!v14)
  {
    v16 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
LABEL_23:
    *a2 = v16;
    return result;
  }

  v49[0] = a2;
  v49[1] = v2;
  v69 = MEMORY[0x277D84F90];

  sub_23045FAE4(0, v15, 0);
  v16 = v69;
  v67 = v14 + 64;
  result = sub_2304A5FB4();
  v17 = result;
  v18 = 0;
  v54 = v10 + 32;
  v55 = v10 + 16;
  v50 = v14 + 72;
  v51 = v15;
  v56 = v13;
  v52 = v10;
  v53 = v14;
  while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(v14 + 32))
  {
    if ((*(v67 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_25;
    }

    v63 = 1 << v17;
    v64 = v17 >> 6;
    v21 = *(v14 + 36);
    v61 = v18;
    v62 = v21;
    v22 = v60;
    v23 = *(v60 + 48);
    v24 = *(v14 + 48);
    v25 = sub_2304A4084();
    v26 = *(v25 - 8);
    v27 = v26;
    v28 = v24 + *(v26 + 72) * v17;
    v29 = *(v26 + 16);
    v66 = v16;
    v30 = v57;
    v29(v57, v28, v25);
    v31 = *(v14 + 56);
    v65 = *(v10 + 72);
    v32 = v68;
    (*(v10 + 16))(&v30[v23], v31 + v65 * v17, v68);
    v33 = v58;
    (*(v27 + 32))(v58, v30, v25);
    v34 = *(v10 + 32);
    v35 = &v30[v23];
    v16 = v66;
    v34(v33 + *(v22 + 48), v35, v32);
    v36 = v59;
    sub_230464ABC(v33, v59, &unk_27DB54640, &qword_2304A73F8);
    v37 = *(v22 + 48);
    v38 = v56;
    v34(v56, (v36 + v37), v32);
    (*(v27 + 8))(v36, v25);
    v69 = v16;
    v40 = *(v16 + 16);
    v39 = *(v16 + 24);
    if (v40 >= v39 >> 1)
    {
      sub_23045FAE4((v39 > 1), v40 + 1, 1);
      v16 = v69;
    }

    *(v16 + 16) = v40 + 1;
    v41 = v52;
    result = (v34)(v16 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + v40 * v65, v38, v68);
    v14 = v53;
    v19 = 1 << *(v53 + 32);
    if (v17 >= v19)
    {
      goto LABEL_26;
    }

    v42 = *(v67 + 8 * v64);
    if ((v42 & v63) == 0)
    {
      goto LABEL_27;
    }

    if (v62 != *(v53 + 36))
    {
      goto LABEL_28;
    }

    v10 = v41;
    v43 = v42 & (-2 << (v17 & 0x3F));
    if (v43)
    {
      v19 = __clz(__rbit64(v43)) | v17 & 0x7FFFFFFFFFFFFFC0;
      v20 = v61;
    }

    else
    {
      v44 = v64 << 6;
      v45 = v64 + 1;
      v46 = (v50 + 8 * v64);
      while (v45 < (v19 + 63) >> 6)
      {
        v48 = *v46++;
        v47 = v48;
        v44 += 64;
        ++v45;
        if (v48)
        {
          result = sub_230433B44(v17, v62, 0);
          v19 = __clz(__rbit64(v47)) + v44;
          goto LABEL_20;
        }
      }

      result = sub_230433B44(v17, v62, 0);
LABEL_20:
      v20 = v61;
    }

    v18 = v20 + 1;
    v17 = v19;
    if (v18 == v51)
    {

      a2 = v49[0];
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_2304332D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_23043331C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_23043339C(int a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2304A5CA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *(result + 16);
    *v7 = v10;
    v11 = *MEMORY[0x277D85200];
    v12 = *(v5 + 104);
    v12(v7, v11, v4);
    v13 = v10;
    LOBYTE(v10) = sub_2304A5CB4();
    v14 = *(v5 + 8);
    result = v14(v7, v4);
    if (v10)
    {
      if (a1)
      {
      }

      v15 = *(v9 + 16);
      *v7 = v15;
      v12(v7, v11, v4);
      v16 = v15;
      LOBYTE(v15) = sub_2304A5CB4();
      result = v14(v7, v4);
      if (v15)
      {
        *(v9 + 40) = 1;
        v17[7] = 1;
        sub_2304A5BA4();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2304335C0(uint64_t a1)
{
  v3 = sub_2304A4434();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2304A44F4();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB53F00, &unk_2304A7B70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v31 - v10;
  v12 = sub_2304A46C4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2304A4AB4();
  v16 = sub_2304A5D94();

  if (v16)
  {
    v17 = 1;
    return v17 & 1;
  }

  v32 = v15;
  __swift_project_boxed_opaque_existential_5Tm((v1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator), *(v1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 24));
  v31[1] = a1;
  sub_2304A4AD4();
  v33 = v12;
  sub_2304A48D4();
  v18 = v33;

  if ((*(v13 + 48))(v11, 1, v18) == 1)
  {
    sub_230464970(v11, &unk_27DB53F00, &unk_2304A7B70);
LABEL_13:
    v17 = 0;
    return v17 & 1;
  }

  v19 = v13;
  v20 = *(v13 + 32);
  v21 = v32;
  v20(v32, v11, v18);
  sub_2304A4674();
  sub_2304A4494();
  (*(v34 + 8))(v8, v35);
  v22 = sub_2304A4414();
  (*(v36 + 8))(v5, v37);
  if (v22 != 7)
  {
    (*(v19 + 8))(v21, v18);
    goto LABEL_13;
  }

  v24 = sub_2304A4AB4();
  v25 = v23;
  if (v24 == 0x7463617265746E69 && v23 == 0xEB000000006E6F69 || (sub_2304A62F4() & 1) != 0)
  {
    v26 = *(v19 + 8);
    v27 = v32;
LABEL_10:
    v26(v27, v33);
LABEL_11:

    v17 = 1;
    return v17 & 1;
  }

  v29 = v32;
  if (v24 == 0x7265766F63736964 && v25 == 0xE900000000000079 || (sub_2304A62F4() & 1) != 0)
  {
    v26 = *(v19 + 8);
    v27 = v29;
    goto LABEL_10;
  }

  v30 = v33;
  if (v24 == 7037793 && v25 == 0xE300000000000000 || (sub_2304A62F4() & 1) != 0)
  {
    (*(v19 + 8))(v32, v30);
    goto LABEL_11;
  }

  if (v24 == 0x73656E656C617473 && v25 == 0xEA00000000007373)
  {

    (*(v19 + 8))(v32, v30);
    v17 = 1;
  }

  else
  {
    v17 = sub_2304A62F4();

    (*(v19 + 8))(v32, v30);
  }

  return v17 & 1;
}

void *__swift_project_boxed_opaque_existential_5Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_230433B44(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_230433B50()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_230433B88()
{
  v1 = sub_2304A57B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_230433C4C()
{
  v1 = sub_2304A46C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2304A5124();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v10 | 7);
}

uint64_t sub_230433DAC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_230433DC4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_230433E14()
{
  MEMORY[0x23191A070](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_230433E4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_230433E8C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_230433EC4()
{
  MEMORY[0x23191A070](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_230433F24()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_230433F5C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_230433FC4()
{
  v1 = sub_2304A3FC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23043404C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_230434084()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2304340BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2304340F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_230434140()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_230434188(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2304A4114();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_230434234(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2304A4114();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_230434328()
{
  v1 = *v0;
  sub_2304A6394();
  MEMORY[0x231919910](v1);
  return sub_2304A63B4();
}

uint64_t sub_23043439C(uint64_t a1)
{
  v2 = *v1;
  sub_2304A6394();
  MEMORY[0x231919910](v2);
  return sub_2304A63B4();
}

void sub_2304343F0(id a1, _BYTE *a2)
{
  v2 = a1;
  if (a2[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_isEnabled] != 1)
  {
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v20 = sub_2304A5B74();
    __swift_project_value_buffer(v20, qword_28149B008);
    v21 = sub_2304A5B54();
    v22 = sub_2304A5E94();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_13;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Replicator is disabled";
    goto LABEL_12;
  }

  v4 = [a1 remoteToken];
  v5 = sub_2304A5D14();
  v6 = [v4 hasEntitlement_];

  if (v6)
  {
    v7 = [v2 remoteToken];
    v8 = [v7 pid];

    v9 = objc_allocWithZone(type metadata accessor for Client());
    v10 = a2;
    v2 = v2;
    v11 = sub_230460650(v2, v8, v10, v9);

    v12 = *&v10[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock];
    v14 = MEMORY[0x28223BE20](v13);
    MEMORY[0x28223BE20](v14);

    os_unfair_lock_lock(v12 + 4);
    sub_230464ECC();
    os_unfair_lock_unlock(v12 + 4);

    v15 = swift_allocObject();
    *(v15 + 16) = v8;
    *(v15 + 24) = v10;
    *(v15 + 32) = v11;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_230464BF0;
    *(v16 + 24) = v15;
    aBlock[4] = sub_2304324E0;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23043248C;
    aBlock[3] = &block_descriptor;
    v17 = _Block_copy(aBlock);
    v18 = v10;
    v19 = v11;

    [v2 configure_];
    _Block_release(v17);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if ((v11 & 1) == 0)
    {
      [v2 activate];

      return;
    }

    __break(1u);
  }

  else if (qword_281499E38 == -1)
  {
    goto LABEL_10;
  }

  swift_once();
LABEL_10:
  v25 = sub_2304A5B74();
  __swift_project_value_buffer(v25, qword_28149B008);
  v21 = sub_2304A5B54();
  v22 = sub_2304A5E74();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Client is missing the data provider entitlement";
LABEL_12:
    _os_log_impl(&dword_230430000, v21, v22, v24, v23, 2u);
    MEMORY[0x23191A000](v23, -1, -1);
  }

LABEL_13:

  [v2 invalidate];
}

void sub_23043485C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  sub_23046AB70(&v4, a2);
  v3 = v4;
  swift_endAccess();
}

void sub_2304348D8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_2304A5554();
  v7 = sub_2304A5D14();

  v22 = sub_230434DE8;
  v23 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2304328BC;
  v21 = &block_descriptor_100;
  v8 = _Block_copy(&aBlock);
  v9 = [objc_opt_self() interfaceWithIdentifier:v7 configurator:v8];

  _Block_release(v8);

  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    aBlock = 0;
    v19 = 0xE000000000000000;
    sub_2304A6104();

    aBlock = 0xD000000000000012;
    v19 = 0x80000002304A83E0;
    v10 = sub_2304A62D4();
    MEMORY[0x2319192E0](v10);

    v11 = *(a3 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_queue);
    v12 = sub_2304A5D14();

    v13 = [objc_opt_self() queueWithName:v12 targetQueue:v11];

    [a1 setInterface_];
    [a1 setInterfaceTarget_];
    [a1 setQueue_];
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a4;
    v22 = sub_230464BFC;
    v23 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = sub_2304318E8;
    v21 = &block_descriptor_109;
    v16 = _Block_copy(&aBlock);
    v17 = a4;

    [a1 setInvalidationHandler_];
    _Block_release(v16);
  }
}

void sub_230434BD4(void *a1)
{
  v7[4] = sub_230434D1C;
  v7[5] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_230434D94;
  v7[3] = &block_descriptor_113;
  v2 = _Block_copy(v7);
  v3 = &unk_284521300;

  v4 = objc_opt_self();
  v5 = [v4 protocolForProtocol:v3 interpreter:v2];
  _Block_release(v2);

  [a1 setClient_];
  v6 = [v4 protocolForProtocol_];
  [a1 setServer_];
}

id sub_230434D1C(void *a1)
{
  [a1 selector];
  if (sub_2304A4094())
  {

    return [a1 copyAsOnewayVoid];
  }

  else
  {

    return a1;
  }
}

id sub_230434D94(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4;
}

char *sub_230434DEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v4 = sub_2304A5B74();
    __swift_project_value_buffer(v4, qword_28149B008);
    v5 = sub_2304A5B54();
    v6 = sub_2304A5E94();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_230430000, v5, v6, "Connection invalidated", v7, 2u);
      MEMORY[0x23191A000](v7, -1, -1);
    }

    v8 = *&v3[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock];
    v10 = MEMORY[0x28223BE20](v9);
    MEMORY[0x28223BE20](v10);

    os_unfair_lock_lock(v8 + 4);
    sub_230464ECC();
    os_unfair_lock_unlock(v8 + 4);
  }

  return result;
}

void sub_230434F98(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v3 = sub_23045AF30(a2, type metadata accessor for Client, sub_23046CE58, sub_23045B0CC);
  swift_endAccess();
}

void sub_230435048(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v7 = 0;
    v4 = *(Strong + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);

    os_unfair_lock_lock(v4 + 4);
    sub_23044A3E0(v3, &v7);
    os_unfair_lock_unlock(v4 + 4);

    if (v7)
    {
      v5 = *&v3[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster + 32];
      __swift_project_boxed_opaque_existential_5Tm(&v3[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster], *&v3[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster + 24]);
      v6 = sub_2304A5144();
      (*(v5 + 8))(v6);
    }

    else
    {
    }
  }
}

uint64_t sub_230435144()
{
  v141 = sub_2304A51C4();
  v142 = *(v141 - 8);
  MEMORY[0x28223BE20](v141 - 8);
  v140 = &v137 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_2304A5294();
  v160 = *(v1 - 8);
  v161 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v4 = (&v137 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x28223BE20](v2);
  v155 = (&v137 - v6);
  MEMORY[0x28223BE20](v5);
  v158 = &v137 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54188, &qword_2304A7540);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v150 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v153 = (&v137 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v151 = &v137 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v144 = (&v137 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v147 = &v137 - v18;
  MEMORY[0x28223BE20](v17);
  v148 = (&v137 - v19);
  sub_230460740();
  v149 = v4;
  v154 = v29;

  while (1)
  {
    __swift_project_boxed_opaque_existential_5Tm((v156 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore), *(v156 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore + 24));
    v30 = sub_2304A5484();
    v139 = 0;
    v31 = v150;
    v32 = v154;
    v33 = v148;
    if (v154)
    {
      v159 = v30;
      v34 = 0;
      v35 = *(v154 + 64);
      v143 = (v154 + 64);
      v36 = 1 << *(v154 + 32);
      v37 = -1;
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      v38 = v37 & v35;
      v157 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_predefinedClientDescriptorIDs;
      v39 = (v36 + 63) >> 6;
      v146 = v160 + 16;
      v145 = (v160 + 32);
      v152 = (v160 + 8);
      v40 = v147;
      if ((v37 & v35) == 0)
      {
LABEL_11:
        if (v39 <= v34 + 1)
        {
          v42 = v34 + 1;
        }

        else
        {
          v42 = v39;
        }

        v43 = v42 - 1;
        while (1)
        {
          v41 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_89;
          }

          if (v41 >= v39)
          {
            v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54080, &qword_2304A7478);
            (*(*(v59 - 8) + 56))(v40, 1, 1, v59);
            v38 = 0;
            goto LABEL_19;
          }

          v38 = v143[v41];
          ++v34;
          if (v38)
          {
            goto LABEL_18;
          }
        }
      }

      while (1)
      {
        v41 = v34;
LABEL_18:
        v44 = __clz(__rbit64(v38));
        v38 &= v38 - 1;
        v45 = v44 | (v41 << 6);
        v46 = (*(v154 + 48) + 16 * v45);
        v48 = *v46;
        v47 = v46[1];
        v49 = v160;
        v50 = v161;
        v51 = v158;
        (*(v160 + 16))(v158, *(v154 + 56) + *(v160 + 72) * v45, v161);
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54080, &qword_2304A7478);
        v53 = *(v52 + 48);
        v54 = v147;
        *v147 = v48;
        *(v54 + 1) = v47;
        v40 = v54;
        (*(v49 + 32))(&v54[v53], v51, v50);
        (*(*(v52 - 8) + 56))(v40, 0, 1, v52);

        v43 = v41;
        v33 = v148;
LABEL_19:
        sub_230464ABC(v40, v33, &qword_27DB54188, &qword_2304A7540);
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54080, &qword_2304A7478);
        if ((*(*(v55 - 8) + 48))(v33, 1, v55) == 1)
        {
          break;
        }

        v56 = *v33;
        v57 = *(v33 + 8);
        v58 = *(v55 + 48);
        v4 = v40;
        swift_beginAccess();
        sub_23046ADBC(v163, v56, v57);
        swift_endAccess();

        (*v152)((v33 + v58), v161);
        v34 = v43;
        if (!v38)
        {
          goto LABEL_11;
        }
      }

      v32 = v154;

      v4 = v149;
      v31 = v150;
      v30 = v159;
    }

    if (v30)
    {
      v159 = v30;
      if (v32)
      {
        break;
      }

      goto LABEL_57;
    }

    v159 = sub_230461054(MEMORY[0x277D84F90]);
    if (v32)
    {
      break;
    }

LABEL_57:
    __swift_project_boxed_opaque_existential_5Tm((v156 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore), *(v156 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore + 24));
    v33 = v139;
    v102 = sub_2304A5404();
    if (v33)
    {

      v103 = 0;
      v33 = 0;
    }

    else
    {
      v103 = v102;
    }

    v104 = 0;
    v105 = (v159 + 64);
    v106 = 1 << *(v159 + 32);
    v107 = -1;
    if (v106 < 64)
    {
      v107 = ~(-1 << v106);
    }

    v108 = v107 & *(v159 + 64);
    v138 = (v156 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator);
    v147 = ((v106 + 63) >> 6);
    v148 = (v160 + 16);
    v157 = (v160 + 32);
    v146 = v142 + 16;
    v145 = (v142 + 8);
    v151 = (v160 + 8);
    v152 = (v159 + 64);
    v154 = v103;
    while (v108)
    {
      v155 = v33;
      v109 = v104;
LABEL_75:
      v112 = __clz(__rbit64(v108));
      v108 &= v108 - 1;
      v113 = v112 | (v109 << 6);
      v114 = v160;
      v115 = (*(v159 + 48) + 16 * v113);
      v117 = *v115;
      v116 = v115[1];
      v118 = v158;
      v119 = v161;
      (*(v160 + 16))(v158, *(v159 + 56) + *(v160 + 72) * v113, v161);
      v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54080, &qword_2304A7478);
      v121 = *(v120 + 48);
      v122 = v150;
      *v150 = v117;
      *(v122 + 1) = v116;
      v123 = v118;
      v31 = v122;
      (*(v114 + 32))(&v122[v121], v123, v119);
      (*(*(v120 - 8) + 56))(v31, 0, 1, v120);

      v4 = v149;
      v103 = v154;
      v33 = v155;
LABEL_76:
      v124 = v153;
      sub_230464ABC(v31, v153, &qword_27DB54188, &qword_2304A7540);
      v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54080, &qword_2304A7478);
      if ((*(*(v125 - 8) + 48))(v124, 1, v125) == 1)
      {
      }

      v126 = v124;
      v127 = *v124;
      v128 = v126[1];
      (*v157)(v4, v126 + *(v125 + 48), v161);
      if (v103 && *(v103 + 16) && (, v129 = sub_230469C40(v127, v128), v131 = v130, , (v131 & 1) != 0))
      {
        v132 = *(v103 + 56) + *(v142 + 72) * v129;
        v133 = v140;
        v134 = v141;
        (*(v142 + 16))(v140, v132, v141);

        if ((sub_2304A5164() & 1) == 0)
        {
          (*v145)(v133, v134);
          v103 = v154;
          v105 = v152;
          goto LABEL_64;
        }

        v144 = v138[3];
        v155 = v138[8];
        v143 = __swift_project_boxed_opaque_existential_5Tm(v138, v144);
        v139 = sub_2304A51B4();
        sub_2304A5184();
        sub_2304A4254();

        (*v145)(v133, v134);
        v103 = v154;
      }

      else
      {
      }

      sub_2304396D0(v4, 0);
      v105 = v152;
      if (v33)
      {

        v33 = 0;
      }

LABEL_64:
      (*v151)(v4, v161);
    }

    if (v147 <= v104 + 1)
    {
      v110 = (v104 + 1);
    }

    else
    {
      v110 = v147;
    }

    v111 = v110 - 1;
    while (1)
    {
      v109 = v104 + 1;
      if (__OFADD__(v104, 1))
      {
        break;
      }

      if (v109 >= v147)
      {
        v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54080, &qword_2304A7478);
        (*(*(v135 - 8) + 56))(v31, 1, 1, v135);
        v108 = 0;
        v104 = v111;
        goto LABEL_76;
      }

      v108 = v105[v109];
      ++v104;
      if (v108)
      {
        v155 = v33;
        v104 = v109;
        goto LABEL_75;
      }
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    swift_once();
    v20 = sub_2304A5B74();
    __swift_project_value_buffer(v20, qword_28149B008);
    v21 = v33;
    v22 = sub_2304A5B54();
    v23 = sub_2304A5E74();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543362;
      v26 = v33;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_230430000, v22, v23, "Failed to load predefined descriptors: %{public}@", v24, 0xCu);
      sub_230464970(v25, &qword_27DB53F30, &qword_2304A7390);
      MEMORY[0x23191A000](v25, -1, -1);
      v28 = v24;
      v4 = v149;
      MEMORY[0x23191A000](v28, -1, -1);
    }

    else
    {
    }

    v154 = 0;
  }

  v60 = 0;
  v61 = *(v32 + 64);
  v147 = (v32 + 64);
  v62 = 1 << *(v32 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & v61;
  v146 = (v62 + 63) >> 6;
  v152 = (v160 + 16);
  v157 = (v160 + 32);
  v148 = (v160 + 40);
  v65 = v144;
  while (2)
  {
    if (v64)
    {
      v33 = v60;
LABEL_42:
      v68 = __clz(__rbit64(v64));
      v64 &= v64 - 1;
      v69 = v68 | (v33 << 6);
      v70 = (*(v154 + 48) + 16 * v69);
      v72 = *v70;
      v71 = v70[1];
      v74 = v160;
      v73 = v161;
      v75 = v158;
      (*(v160 + 16))(v158, *(v154 + 56) + *(v160 + 72) * v69, v161);
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54080, &qword_2304A7478);
      v77 = *(v76 + 48);
      v78 = v151;
      *v151 = v72;
      *(v78 + 1) = v71;
      (*(v74 + 32))(&v78[v77], v75, v73);
      (*(*(v76 - 8) + 56))(v78, 0, 1, v76);

      v67 = v33;
      v79 = v78;
      v65 = v144;
    }

    else
    {
      if (v146 <= v60 + 1)
      {
        v66 = v60 + 1;
      }

      else
      {
        v66 = v146;
      }

      v67 = v66 - 1;
      while (1)
      {
        v33 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          goto LABEL_90;
        }

        if (v33 >= v146)
        {
          break;
        }

        v64 = *&v147[8 * v33];
        v60 = (v60 + 1);
        if (v64)
        {
          goto LABEL_42;
        }
      }

      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54080, &qword_2304A7478);
      v101 = v151;
      (*(*(v100 - 8) + 56))(v151, 1, 1, v100);
      v79 = v101;
      v64 = 0;
    }

    sub_230464ABC(v79, v65, &qword_27DB54188, &qword_2304A7540);
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54080, &qword_2304A7478);
    if ((*(*(v80 - 8) + 48))(v65, 1, v80) == 1)
    {

      v4 = v149;
      v31 = v150;
      goto LABEL_57;
    }

    v81 = v67;
    v82 = *v65;
    v33 = v65[1];
    v83 = *v157;
    v4 = v65;
    (*v157)(v155, v65 + *(v80 + 48), v161);
    v84 = v159;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v162 = v84;
    v87 = sub_230469C40(v82, v33);
    v88 = *(v84 + 16);
    v89 = (v86 & 1) == 0;
    v90 = v88 + v89;
    if (__OFADD__(v88, v89))
    {
      goto LABEL_91;
    }

    v91 = v86;
    if (*(v84 + 24) >= v90)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v86 & 1) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_31;
      }

      sub_230471050();
      if (v91)
      {
        goto LABEL_31;
      }

LABEL_51:
      v94 = v161;
      v95 = v162;
      v162[(v87 >> 6) + 8] |= 1 << v87;
      v96 = (v95[6] + 16 * v87);
      *v96 = v82;
      v96[1] = v33;
      v83((v95[7] + *(v160 + 72) * v87), v155, v94);
      v97 = v95[2];
      v98 = __OFADD__(v97, 1);
      v99 = v97 + 1;
      if (v98)
      {
        goto LABEL_92;
      }

      v159 = v95;
      v95[2] = v99;
LABEL_32:
      v60 = v81;
      v65 = v4;
      continue;
    }

    break;
  }

  sub_23046E1C0(v90, isUniquelyReferenced_nonNull_native);
  v92 = sub_230469C40(v82, v33);
  if ((v91 & 1) == (v93 & 1))
  {
    v87 = v92;
    if ((v91 & 1) == 0)
    {
      goto LABEL_51;
    }

LABEL_31:

    v159 = v162;
    (*(v160 + 40))(v162[7] + *(v160 + 72) * v87, v155, v161);
    goto LABEL_32;
  }

  result = sub_2304A6314();
  __break(1u);
  return result;
}

void sub_23043645C(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v9 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_clients;
  swift_beginAccess();
  v10 = *(a1 + v9);
  v36 = a4;
  v35 = a2;
  if ((v10 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_2304A6004();
    type metadata accessor for Client();
    sub_230464B8C(&qword_27DB53F28, type metadata accessor for Client, MEMORY[0x277D85378]);
    sub_2304A5E24();
    v11 = v38;
    v12 = v39;
    v13 = v40;
    v14 = v41;
    v15 = v42;
  }

  else
  {
    v16 = -1 << *(v10 + 32);
    v12 = v10 + 56;
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

    v15 = v18 & *(v10 + 56);
    v11 = v10;
    swift_bridgeObjectRetain_n();
    v14 = 0;
  }

  if (v11 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v19 = v14;
  v20 = v15;
  v21 = v14;
  if (!v15)
  {
    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= ((v13 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v20 = *(v12 + 8 * v21);
      ++v19;
      if (v20)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    swift_once();
    v27 = sub_2304A5B74();
    __swift_project_value_buffer(v27, qword_28149B008);
    v28 = v21;
    v29 = sub_2304A5B54();
    v30 = sub_2304A5E74();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138543362;
      v33 = v21;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v34;
      *v32 = v34;
      _os_log_impl(&dword_230430000, v29, v30, "Failed to notify client of record changes: %{public}@", v31, 0xCu);
      sub_230464970(v32, &qword_27DB53F30, &qword_2304A7390);
      MEMORY[0x23191A000](v32, -1, -1);
      MEMORY[0x23191A000](v31, -1, -1);
    }

    else
    {
    }

    v26 = 0;
    goto LABEL_21;
  }

LABEL_12:
  v22 = (v20 - 1) & v20;
  v23 = *(*(v11 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
  if (!v23)
  {
LABEL_20:
    sub_230433B3C(v11);

    v26 = 0;
    a4 = v36;
LABEL_21:
    *a4 = v26;
    return;
  }

  while (1)
  {
    a4 = v11;
    v24 = *&v23[OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_lock];
    v37 = MEMORY[0x28223BE20](v23);
    MEMORY[0x28223BE20](v37);
    os_unfair_lock_lock(v24 + 4);
    sub_230464E24(&v43);
    v25 = v24 + 4;
    if (v4)
    {
      break;
    }

    os_unfair_lock_unlock(v25);
    if (v43)
    {
      sub_230433B3C(a4);

      sub_230453294(v35, a3);

      v26 = 1;
      a4 = v36;
      goto LABEL_21;
    }

    v14 = v21;
    v15 = v22;
    v11 = a4;
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    if (sub_2304A6074())
    {
      type metadata accessor for Client();
      swift_dynamicCast();
      v23 = v43;
      v21 = v14;
      v22 = v15;
      if (v43)
      {
        continue;
      }
    }

    goto LABEL_20;
  }

  os_unfair_lock_unlock(v25);
  __break(1u);
}

uint64_t sub_230436904(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = sub_2304A61A4() | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(a3 + 32);
    v6 = ~v9;
    v5 = a3 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(a3 + 64);
    v8 = a3;
  }

  v13 = 0;
  v26 = v8;
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v14 = sub_2304A6234();
  if (!v14)
  {
LABEL_20:
    sub_230433B3C(v8);
    return 0;
  }

  v16 = v15;
  v28 = v14;
  sub_2304A4984();
  swift_dynamicCast();
  v17 = v27[0];
  v28 = v16;
  type metadata accessor for ClientDataSource(0);
  swift_dynamicCast();
  v18 = v27[0];
  v19 = v13;
  if (!v17)
  {
LABEL_22:
    v8 = v26;
    goto LABEL_20;
  }

  while (1)
  {
    v27[0] = v17;
    v27[1] = v18;
    v24 = a1(v27);
    if (v4)
    {

      sub_230433B3C(v26);
      return v17;
    }

    if (v24)
    {
      sub_230433B3C(v26);
      return v17;
    }

    v13 = v19;
    v8 = v26;
    if (v26 < 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v20 = v13;
    v21 = v7;
    v19 = v13;
    if (!v7)
    {
      break;
    }

LABEL_15:
    v7 = (v21 - 1) & v21;
    v22 = (v19 << 9) | (8 * __clz(__rbit64(v21)));
    v23 = *(v8 + 56);
    v17 = *(*(v8 + 48) + v22);
    v18 = *(v23 + v22);

    if (!v17)
    {
      goto LABEL_22;
    }
  }

  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= ((v6 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v21 = *(v5 + 8 * v19);
    ++v20;
    if (v21)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_230436B74@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v32 = a1;
  v28 = a3;
  v38 = sub_2304A5294();
  v6 = MEMORY[0x28223BE20](v38);
  v37 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v31 = &v28 - v9;
  v10 = a2 + 56;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 56);
  v14 = (v11 + 63) >> 6;
  v33 = v8 + 32;
  v34 = v8;
  v29 = (v8 + 8);
  v30 = v8 + 16;
  v35 = a2;

  v16 = 0;
  v17 = v31;
  if (v13)
  {
    while (1)
    {
      v36 = v4;
      v18 = v16;
LABEL_9:
      v19 = v34;
      v20 = v38;
      (*(v34 + 16))(v17, *(v35 + 48) + *(v34 + 72) * (__clz(__rbit64(v13)) | (v18 << 6)), v38);
      v21 = *(v19 + 32);
      v22 = v37;
      v21(v37, v17, v20);
      v23 = v36;
      v24 = v32(v22);
      v4 = v23;
      if (v23)
      {
        (*v29)(v37, v38);
      }

      if (v24)
      {
        break;
      }

      v13 &= v13 - 1;
      result = (*v29)(v37, v38);
      v16 = v18;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v27 = v28;
    v21(v28, v37, v38);
    v26 = v27;
    v25 = 0;
    return (*(v34 + 56))(v26, v25, 1, v38);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v14)
      {

        v25 = 1;
        v26 = v28;
        return (*(v34 + 56))(v26, v25, 1, v38);
      }

      v13 = *(v10 + 8 * v18);
      ++v16;
      if (v13)
      {
        v36 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_230436E34@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v34 = a2;
  v35 = a1;
  v32 = a4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54640, &qword_2304A73F8);
  v31 = *(v36 - 8);
  v7 = MEMORY[0x28223BE20](v36);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v33 = &v30 - v10;
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  v37 = a3;

  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v18 = v9;
      v38 = v5;
      v19 = v17;
LABEL_9:
      v20 = __clz(__rbit64(v14)) | (v19 << 6);
      v21 = v37;
      v22 = *(v37 + 48);
      v23 = sub_2304A4084();
      v24 = v33;
      (*(*(v23 - 8) + 16))(v33, v22 + *(*(v23 - 8) + 72) * v20, v23);
      v25 = *(v21 + 56);
      v26 = sub_2304A4F74();
      (*(*(v26 - 8) + 16))(v24 + *(v36 + 48), v25 + *(*(v26 - 8) + 72) * v20, v26);
      v9 = v18;
      sub_230464ABC(v24, v18, &unk_27DB54640, &qword_2304A73F8);
      v27 = v38;
      v28 = v35(v18);
      v5 = v27;
      if (v27)
      {
        sub_230464970(v18, &unk_27DB54640, &qword_2304A73F8);
      }

      if (v28)
      {
        break;
      }

      v14 &= v14 - 1;
      result = sub_230464970(v18, &unk_27DB54640, &qword_2304A73F8);
      v17 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v29 = v32;
    sub_230464ABC(v9, v32, &unk_27DB54640, &qword_2304A73F8);
    return (*(v31 + 56))(v29, 0, 1, v36);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        return (*(v31 + 56))(v32, 1, 1, v36);
      }

      v14 = *(v11 + 8 * v19);
      ++v17;
      if (v14)
      {
        v18 = v9;
        v38 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_230437148(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2304A6044())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x231919680](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_23043725C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a1;
  v6 = sub_2304A46C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v20 = v7;
    v21 = a3;
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v22 = v12;
    v13 = (v11 - 8);
    v14 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    while (1)
    {
      v22(v9, v14, v6);
      v16 = v23(v9);
      if (v3)
      {
        return (*v13)(v9, v6);
      }

      if (v16)
      {
        break;
      }

      (*v13)(v9, v6);
      v14 += v15;
      if (!--v10)
      {
        v17 = 1;
        v7 = v20;
        a3 = v21;
        return (*(v7 + 56))(a3, v17, 1, v6);
      }
    }

    v7 = v20;
    a3 = v21;
    (*(v20 + 32))(v21, v9, v6);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v7 + 56))(a3, v17, 1, v6);
}

void sub_230437458(uint64_t a1)
{
  v3 = sub_2304A4B14();
  v65 = *(v3 - 8);
  v66 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v57 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v62 = &v55 - v7;
  MEMORY[0x28223BE20](v6);
  v61 = &v55 - v8;
  v9 = sub_2304A4084();
  v58 = *(v9 - 8);
  v59 = v9;
  MEMORY[0x28223BE20](v9);
  v63 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_2304A5124();
  v55 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v64 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB53F00, &unk_2304A7B70);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v55 - v13;
  v15 = sub_2304A46C4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v1;
  __swift_project_boxed_opaque_existential_5Tm((v1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator), *(v1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 24));
  sub_2304A4AD4();
  v19 = v15;
  v20 = v16;
  sub_2304A48D4();

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_230464970(v14, &unk_27DB53F00, &unk_2304A7B70);
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v21 = sub_2304A5B74();
    __swift_project_value_buffer(v21, qword_28149B008);
    v22 = v65;
    v23 = v66;
    v24 = *(v65 + 16);
    v25 = v61;
    v24(v61, a1, v66);
    v26 = v62;
    v24(v62, a1, v23);
    v27 = sub_2304A5B54();
    v28 = sub_2304A5E74();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v67 = v64;
      *v29 = 136446466;
      v30 = sub_2304A4AD4();
      LODWORD(v60) = v28;
      v31 = v30;
      v33 = v32;
      v34 = *(v22 + 8);
      v34(v25, v23);
      v35 = sub_23046A5C8(v31, v33, &v67);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2082;
      v36 = v63;
      sub_2304A4AF4();
      sub_230464B8C(&qword_27DB54610, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v37 = v26;
      v38 = v59;
      v39 = sub_2304A62D4();
      v41 = v40;
      (*(v58 + 8))(v36, v38);
      v34(v37, v23);
      v42 = sub_23046A5C8(v39, v41, &v67);

      *(v29 + 14) = v42;
      _os_log_impl(&dword_230430000, v27, v60, "Received message from device without a relationship: %{public}s; %{public}s", v29, 0x16u);
      v43 = v64;
      swift_arrayDestroy();
      MEMORY[0x23191A000](v43, -1, -1);
      MEMORY[0x23191A000](v29, -1, -1);
    }

    else
    {

      v48 = *(v22 + 8);
      v48(v26, v23);
      v48(v25, v23);
    }
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    sub_2304A4144();
    v44 = sub_2304A4AA4();
    v46 = v45;
    sub_2304A4AE4();
    sub_230464B8C(&qword_27DB53F10, MEMORY[0x277D46800], MEMORY[0x277D46810]);
    v47 = v60;
    sub_2304A4124();
    sub_2304617C4(v44, v46);
    sub_2304A4684();
    v49 = v64;
    v50 = sub_2304A50D4();
    v51 = *(v56 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
    v52 = MEMORY[0x28223BE20](v50);
    *(&v55 - 2) = v53;
    *(&v55 - 1) = v49;
    MEMORY[0x28223BE20](v52);
    *(&v55 - 2) = sub_230461818;
    *(&v55 - 1) = v54;

    os_unfair_lock_lock(v51 + 4);
    sub_230431F50();
    os_unfair_lock_unlock(v51 + 4);
    (*(v20 + 8))(v18, v19);

    (*(v55 + 8))(v49, v47);
  }
}

void sub_230437DF0(uint64_t a1)
{
  v3 = sub_2304A4B14();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v57 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v56 = v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F20, &qword_2304A7388);
  MEMORY[0x28223BE20](v7 - 8);
  v51 = v50 - v8;
  v62 = sub_2304A4084();
  v60 = *(v62 - 8);
  v9 = MEMORY[0x28223BE20](v62);
  v50[1] = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v61 = v50 - v11;
  v12 = sub_2304A5124();
  v53 = *(v12 - 8);
  v54 = v12;
  MEMORY[0x28223BE20](v12);
  v52 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB53F00, &unk_2304A7B70);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v50 - v15;
  v17 = sub_2304A46C4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v1;
  __swift_project_boxed_opaque_existential_5Tm((v1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator), *(v1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 24));
  v21 = a1;
  sub_2304A4AD4();
  sub_2304A48D4();

  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v22 = v61;
    v23 = v62;
    sub_230464970(v16, &unk_27DB53F00, &unk_2304A7B70);
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v24 = sub_2304A5B74();
    __swift_project_value_buffer(v24, qword_28149B008);
    v26 = v58;
    v25 = v59;
    v27 = *(v58 + 16);
    v28 = v56;
    v27(v56, a1, v59);
    v29 = v57;
    v27(v57, v21, v25);
    v30 = sub_2304A5B54();
    v31 = sub_2304A5E74();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = v29;
      v33 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v63 = v55;
      *v33 = 136446466;
      v34 = sub_2304A4AD4();
      LODWORD(v54) = v31;
      v35 = v34;
      v37 = v36;
      v38 = *(v26 + 8);
      v38(v28, v25);
      v39 = sub_23046A5C8(v35, v37, &v63);

      *(v33 + 4) = v39;
      *(v33 + 12) = 2082;
      sub_2304A4AF4();
      sub_230464B8C(&qword_27DB54610, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v40 = sub_2304A62D4();
      v42 = v41;
      (*(v60 + 8))(v22, v23);
      v38(v32, v25);
      v43 = sub_23046A5C8(v40, v42, &v63);

      *(v33 + 14) = v43;
      _os_log_impl(&dword_230430000, v30, v54, "Received chronod message from device without a relationship: %{public}s; %{public}s", v33, 0x16u);
      v44 = v55;
      swift_arrayDestroy();
      MEMORY[0x23191A000](v44, -1, -1);
      MEMORY[0x23191A000](v33, -1, -1);
    }

    else
    {

      v49 = *(v26 + 8);
      v49(v29, v25);
      v49(v28, v25);
    }
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    sub_2304A4AF4();
    sub_2304A4684();
    v59 = sub_2304A4AB4();
    sub_2304A4AA4();
    (*(v60 + 56))(v51, 1, 1, v62);
    v45 = v52;
    v46 = sub_2304A50F4();
    v47 = *(v55 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
    v48 = MEMORY[0x28223BE20](v46);
    MEMORY[0x28223BE20](v48);

    os_unfair_lock_lock(v47 + 4);
    sub_230464ECC();
    os_unfair_lock_unlock(v47 + 4);
    (*(v18 + 8))(v20, v17);

    (*(v53 + 8))(v45, v54);
  }
}

void sub_2304385A4(NSObject *a1, uint64_t a2)
{
  v4 = sub_2304A4084();
  v155 = *(v4 - 8);
  v156 = v4;
  MEMORY[0x28223BE20](v4);
  v154 = v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2304A5124();
  v158 = *(v6 - 8);
  v159 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v142 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v157 = v142 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v153 = (v142 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v142 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v146 = v142 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v145 = v142 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v143 = v142 - v25;
  MEMORY[0x28223BE20](v24);
  v144 = v142 - v26;
  v27 = sub_2304A4BE4();
  v147 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = v142 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_2304A52C4();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v150 = v142 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources;
  swift_beginAccess();
  v148 = a1;
  v32 = *(&a1->isa + v31);
  v161 = a2;

  v33 = sub_230436904(sub_230461834, v160, v32);
  v35 = v34;

  if (v33)
  {

    sub_230461854(v33, v35);
    v36 = OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_clientDescriptor;
    v149 = v35;
    v37 = sub_2304A5254();
    v38 = sub_2304A5094();
    if (*(v37 + 16))
    {
      v142[1] = v36;
      v40 = sub_230469C40(v38, v39);
      v42 = v41;

      if (v42)
      {
        (v151[2].isa)(v150, *(v37 + 56) + v151[9].isa * v40, v152);

        sub_2304A52B4();
        sub_2304A50B4();
        v43 = sub_2304A4BA4();
        (*(v147 + 8))(v29, v27);
        v44 = v158;
        if (v43)
        {
          v45 = sub_2304A5114();
          v47 = v46;
          v48 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_incomingMessages;
          v49 = v148;
          swift_beginAccess();
          v50 = *(&v49->isa + v48);
          v51 = v159;
          if (*(v50 + 16) && (, v52 = sub_230469C40(v45, v47), v54 = v53, , (v54 & 1) != 0))
          {
            v55 = *(*(v50 + 56) + 8 * v52);
          }

          else
          {

            v55 = MEMORY[0x277D84F90];
          }

          v132 = v144;
          (*(v44 + 16))(v144, a2, v51);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = sub_23045A0B8(0, v55[2] + 1, 1, v55, &qword_27DB53F18, &qword_2304A7380, MEMORY[0x277D46800]);
          }

          v134 = v55[2];
          v133 = v55[3];
          if (v134 >= v133 >> 1)
          {
            v55 = sub_23045A0B8((v133 > 1), v134 + 1, 1, v55, &qword_27DB53F18, &qword_2304A7380, MEMORY[0x277D46800]);
          }

          v55[2] = v134 + 1;
          (*(v44 + 32))(v55 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v134, v132, v51);
          v135 = sub_2304A5114();
          v137 = v136;
          v138 = v148;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v163 = *(&v138->isa + v48);
          *(&v138->isa + v48) = 0x8000000000000000;
          sub_23045BCA0(v55, v135, v137, isUniquelyReferenced_nonNull_native);

          *(&v138->isa + v48) = v163;
          swift_endAccess();
          v140 = *(&v138[4].isa + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster);
          __swift_project_boxed_opaque_existential_5Tm((&v138->isa + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster), *(&v138[3].isa + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster));
          v141 = sub_2304A5274();
          (*(v140 + 8))(v141);
        }

        else
        {
          v106 = v159;
          if (qword_281499E38 != -1)
          {
            swift_once();
          }

          v107 = sub_2304A5B74();
          __swift_project_value_buffer(v107, qword_28149B008);
          v108 = *(v44 + 16);
          v109 = v143;
          v108(v143, a2, v106);
          v110 = v145;
          v108(v145, a2, v106);
          v111 = v146;
          v108(v146, a2, v106);
          v112 = sub_2304A5B54();
          v113 = sub_2304A5E74();
          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            v157 = swift_slowAlloc();
            v162[0] = v157;
            *v114 = 136446722;
            v115 = v154;
            LODWORD(v153) = v113;
            sub_2304A50E4();
            sub_230464B8C(&qword_27DB54610, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v116 = v156;
            v117 = sub_2304A62D4();
            v148 = v112;
            v118 = v110;
            v120 = v119;
            (*(v155 + 8))(v115, v116);
            v121 = *(v44 + 8);
            v121(v109, v106);
            v122 = sub_23046A5C8(v117, v120, v162);

            *(v114 + 4) = v122;
            *(v114 + 12) = 2050;
            v123 = sub_2304A50B4();
            v121(v118, v106);
            *(v114 + 14) = v123;
            *(v114 + 22) = 2082;
            v124 = v146;
            v125 = sub_2304A5114();
            v127 = v126;
            v121(v124, v106);
            v128 = sub_23046A5C8(v125, v127, v162);

            *(v114 + 24) = v128;
            v129 = v148;
            _os_log_impl(&dword_230430000, v148, v153, "Received message %{public}s with unsupported protocol version %{public}llu for client ID %{public}s", v114, 0x20u);
            v130 = v157;
            swift_arrayDestroy();
            MEMORY[0x23191A000](v130, -1, -1);
            MEMORY[0x23191A000](v114, -1, -1);
          }

          else
          {
            v131 = *(v44 + 8);
            v131(v110, v106);

            v131(v111, v106);
            v131(v109, v106);
          }
        }

        (v151[1].isa)(v150, v152);
        return;
      }
    }

    else
    {
    }

    v77 = v158;
    v76 = v159;
    v78 = v157;
    v79 = v153;
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v80 = sub_2304A5B74();
    __swift_project_value_buffer(v80, qword_28149B008);
    v81 = *(v77 + 16);
    v81(v19, a2, v76);
    v81(v79, a2, v76);
    v81(v78, a2, v76);
    v82 = sub_2304A5B54();
    v83 = sub_2304A5E74();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v162[0] = v158;
      *v84 = 136446722;
      v85 = v154;
      LODWORD(v152) = v83;
      sub_2304A50E4();
      sub_230464B8C(&qword_27DB54610, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v86 = v156;
      v87 = sub_2304A62D4();
      v151 = v82;
      v88 = v76;
      v90 = v89;
      (*(v155 + 8))(v85, v86);
      v91 = *(v77 + 8);
      v91(v19, v88);
      v92 = sub_23046A5C8(v87, v90, v162);

      *(v84 + 4) = v92;
      *(v84 + 12) = 2082;
      v93 = sub_2304A5094();
      v95 = v94;
      v91(v79, v88);
      v96 = sub_23046A5C8(v93, v95, v162);

      *(v84 + 14) = v96;
      *(v84 + 22) = 2082;
      v97 = v157;
      v98 = sub_2304A5114();
      v100 = v99;
      v91(v97, v88);
      v101 = sub_23046A5C8(v98, v100, v162);

      *(v84 + 24) = v101;
      v102 = v151;
      _os_log_impl(&dword_230430000, v151, v152, "Received message %{public}s with unknown message type %{public}s for client ID %{public}s", v84, 0x20u);
      v103 = v158;
      swift_arrayDestroy();
      MEMORY[0x23191A000](v103, -1, -1);
      MEMORY[0x23191A000](v84, -1, -1);
    }

    else
    {

      v104 = *(v77 + 8);
      v104(v78, v76);
      v104(v79, v76);
      v104(v19, v76);
    }
  }

  else
  {
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v56 = sub_2304A5B74();
    __swift_project_value_buffer(v56, qword_28149B008);
    v57 = v158;
    v58 = v159;
    v59 = *(v158 + 16);
    v59(v12, a2, v159);
    v59(v9, a2, v58);
    v60 = sub_2304A5B54();
    v61 = sub_2304A5E74();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v162[0] = v157;
      *v62 = 136446466;
      v153 = v60;
      v63 = v154;
      LODWORD(v152) = v61;
      sub_2304A50E4();
      sub_230464B8C(&qword_27DB54610, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v64 = v156;
      v65 = sub_2304A62D4();
      v67 = v66;
      (*(v155 + 8))(v63, v64);
      v68 = *(v57 + 8);
      v68(v12, v58);
      v69 = sub_23046A5C8(v65, v67, v162);

      *(v62 + 4) = v69;
      *(v62 + 12) = 2082;
      v70 = sub_2304A5114();
      v72 = v71;
      v68(v9, v58);
      v73 = sub_23046A5C8(v70, v72, v162);

      *(v62 + 14) = v73;
      v74 = v153;
      _os_log_impl(&dword_230430000, v153, v152, "Received message %{public}s with no local data source for client ID %{public}s", v62, 0x16u);
      v75 = v157;
      swift_arrayDestroy();
      MEMORY[0x23191A000](v75, -1, -1);
      MEMORY[0x23191A000](v62, -1, -1);
    }

    else
    {

      v105 = *(v57 + 8);
      v105(v9, v58);
      v105(v12, v58);
    }
  }
}

uint64_t sub_23043961C()
{
  v0 = sub_2304A5284();
  v2 = v1;
  if (v0 == sub_2304A5114() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2304A62F4();
  }

  return v5 & 1;
}

uint64_t sub_2304396D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a2;
  v5 = sub_2304A5294();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v9 = sub_2304A5B74();
  v10 = __swift_project_value_buffer(v9, qword_28149B008);
  (*(v6 + 16))(v8, a1, v5);
  v37 = v10;
  v11 = sub_2304A5B54();
  v12 = sub_2304A5E94();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v36 = v3;
    v15 = v14;
    v41[0] = v14;
    *v13 = 136446210;
    v16 = sub_2304A5284();
    v35 = a1;
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    v19 = sub_23046A5C8(v16, v18, v41);
    a1 = v35;

    *(v13 + 4) = v19;
    _os_log_impl(&dword_230430000, v11, v12, "Registering client: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    v20 = v15;
    v3 = v36;
    MEMORY[0x23191A000](v20, -1, -1);
    MEMORY[0x23191A000](v13, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v41[0] = sub_2304A5284();
  v41[1] = v21;
  v39 = 14906;
  v40 = 0xE200000000000000;
  sub_2304645C4();
  v22 = sub_2304A5F84();

  if ((v22 & 1) == 0)
  {
    v23 = *(v3 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_allowedClientVerifier + 32);
    __swift_project_boxed_opaque_existential_5Tm((v3 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_allowedClientVerifier), *(v3 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_allowedClientVerifier + 24));
    v24 = sub_2304A5284();
    v25 = (*(v23 + 8))(v24);

    if (v25)
    {
      v27 = *(v3 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
      v28 = MEMORY[0x28223BE20](v26);
      *(&v35 - 4) = v3;
      *(&v35 - 3) = a1;
      *(&v35 - 2) = v38;
      MEMORY[0x28223BE20](v28);
      *(&v35 - 2) = sub_230464724;
      *(&v35 - 1) = v29;

      os_unfair_lock_lock(v27 + 4);
      sub_230464ECC();
      os_unfair_lock_unlock(v27 + 4);
    }

    v31 = sub_2304A5B54();
    v32 = sub_2304A5E74();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_230430000, v31, v32, "Client is not in the allow-list", v33, 2u);
      MEMORY[0x23191A000](v33, -1, -1);
    }
  }

  sub_230464618();
  swift_allocError();
  *v34 = 0;
  return swift_willThrow();
}

void sub_230439B14(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = v3;
  v318 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB540A0, &qword_2304A7490);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v298 = &v277 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v296 = &v277 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v297 = &v277 - v13;
  MEMORY[0x28223BE20](v12);
  v299 = &v277 - v14;
  v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54080, &qword_2304A7478);
  v15 = MEMORY[0x28223BE20](v302);
  v300 = &v277 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v301 = &v277 - v17;
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54038, &qword_2304A7458);
  v18 = MEMORY[0x28223BE20](v324);
  v321 = &v277 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v320 = (&v277 - v21);
  MEMORY[0x28223BE20](v20);
  v323 = &v277 - v22;
  v322 = sub_2304A5224();
  v325 = *(v322 - 8);
  v23 = MEMORY[0x28223BE20](v322);
  v315 = &v277 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v316 = &v277 - v25;
  v308 = sub_2304A51C4();
  v309 = *(v308 - 8);
  v26 = MEMORY[0x28223BE20](v308);
  v306 = &v277 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v303 = &v277 - v29;
  MEMORY[0x28223BE20](v28);
  v304 = &v277 - v30;
  v313 = sub_2304A53C4();
  v312 = *(v313 - 8);
  MEMORY[0x28223BE20](v313);
  v314 = &v277 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v326 = sub_2304A5294();
  v319 = *(v326 - 1);
  v32 = MEMORY[0x28223BE20](v326);
  v310 = &v277 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v307 = &v277 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v305 = (&v277 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v317 = &v277 - v39;
  MEMORY[0x28223BE20](v38);
  v311 = &v277 - v40;
  v41 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources;
  swift_beginAccess();
  v42 = *(v41 + a1);
  v333 = a2;

  v43 = sub_23043C618(sub_230464744, v332, v42);
  v44 = sub_23043CC94(v43);

  v45 = sub_230473CA0(v44);

  v46 = sub_2304A5244();
  v331 = a2;
  v47 = sub_23043CF14(sub_230464764, v330, v46);

  v48 = sub_230473CA0(v47);

  v49 = sub_23043E37C(v45, v48);

  v50 = sub_23043E37C(v48, v45);

  v51 = sub_23045D958(v48, v45);
  v328 = a1;
  v329 = a2;

  v52 = sub_23045DC04(sub_230464784, v327, v51);
  if (v4)
  {

LABEL_40:

    return;
  }

  v291 = v49;
  v293 = v41;
  v285 = 0;
  v292 = v50;
  v288 = v48;
  v294 = v52;
  v289 = v45;
  v290 = v51;
  v295 = a2;
  v53 = a1;
  v54 = v319;
  v55 = a2;
  if (!v318)
  {
    goto LABEL_37;
  }

  v56 = v318;
  sub_2304A5234();
  v280 = v56;
  v286 = *(v56 + OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection);
  v57 = [v286 remoteToken];
  v58 = sub_2304A5D14();

  v59 = [v57 hasEntitlement_];

  if (v59)
  {
    v287 = v53;
    v60 = v54;
    if ((v294 & 0xC000000000000001) != 0)
    {

      sub_2304A6004();
      v58 = sub_2304A4984();
      sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);
      sub_2304A5E24();
      v62 = v335;
      v61 = v336;
      v64 = v337;
      v63 = v338;
      v65 = v339;
    }

    else
    {
      v78 = -1 << *(v294 + 32);
      v61 = v294 + 56;
      v64 = ~v78;
      v79 = -v78;
      if (v79 < 64)
      {
        v80 = ~(-1 << v79);
      }

      else
      {
        v80 = -1;
      }

      v65 = (v80 & *(v294 + 56));
      v63 = 0;
    }

    v81 = v311;
    v277 = v64;
    v82 = (v64 + 64) >> 6;
    v284 = (v60 + 16);
    v281 = (v60 + 32);
    v283 = (v60 + 8);
    v282 = v61;
    if (v62 < 0)
    {
      goto LABEL_23;
    }

LABEL_18:
    v83 = v63;
    v84 = v65;
    v85 = v63;
    if (!v65)
    {
      while (1)
      {
        v85 = v83 + 1;
        if (__OFADD__(v83, 1))
        {
          break;
        }

        if (v85 >= v82)
        {
          goto LABEL_36;
        }

        v84 = *(v61 + 8 * v85);
        ++v83;
        if (v84)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_126:

      __swift_project_boxed_opaque_existential_5Tm(v286, v286[3]);
      v260 = sub_2304A5404();
      v285 = v58;
      if (v58)
      {

        return;
      }

      v261 = sub_2304A5284();
      if (*(v260 + 16))
      {
        v263 = sub_230469C40(v261, v262);
        v265 = v264;

        v266 = v309;
        if (v265)
        {
          (*(v309 + 16))(v299, *(v260 + 56) + *(v309 + 72) * v263, v308);

          v267 = 0;
        }

        else
        {

          v267 = 1;
        }

        v268 = v297;
LABEL_144:
        v269 = v299;
        v270 = v308;
        v324 = *(v266 + 56);
        (v324)(v299, v267, 1, v308);
        sub_230464B24(v269, v268, &qword_27DB540A0, &qword_2304A7490);
        v271 = *(v266 + 48);
        v309 = v266 + 48;
        v326 = v271;
        v272 = v271(v268, 1, v270);
        v273 = v268;
        v274 = v272;
        sub_230464970(v273, &qword_27DB540A0, &qword_2304A7490);
        if (v274 == 1)
        {
          sub_2304A5284();
          v275 = v296;
          sub_2304A51A4();
          (v324)(v275, 0, 1, v270);
          sub_2304647C4(v275, v269);
        }

        else
        {
          if (v326(v269, 1, v270) == 1)
          {
LABEL_157:
            __break(1u);
            return;
          }

          sub_2304A5174();
        }

        sub_230464834(v286, v334);
        __swift_project_boxed_opaque_existential_5Tm(v334, v334[3]);
        v276 = v298;
        sub_230464B24(v269, v298, &qword_27DB540A0, &qword_2304A7490);
        if (v326(v276, 1, v308) != 1)
        {

          sub_2304A5434();
          v283(v276, v308);
          __swift_destroy_boxed_opaque_existential_0Tm(v334);
          sub_230464970(v269, &qword_27DB540A0, &qword_2304A7490);
          return;
        }

LABEL_156:
        __break(1u);
        goto LABEL_157;
      }

LABEL_141:

      v267 = 1;
      v268 = v297;
      v266 = v309;
      goto LABEL_144;
    }

LABEL_22:
    v86 = ((v84 - 1) & v84);
    v87 = *(*(v62 + 48) + ((v85 << 9) | (8 * __clz(__rbit64(v84)))));

    while (v87)
    {
      v318 = v86;
      v278 = v63;
      v89 = *(v293 + v287);
      v279 = v65;
      if ((v89 & 0xC000000000000001) != 0)
      {

        v90 = sub_2304A6224();

        if (!v90)
        {
          goto LABEL_45;
        }

        v340 = v90;
        type metadata accessor for ClientDataSource(0);
        swift_dynamicCast();
        v91 = v334[0];
      }

      else
      {
        if (!*(v89 + 16))
        {
          goto LABEL_46;
        }

        v92 = sub_230469CB8(v87);
        if ((v93 & 1) == 0)
        {
LABEL_45:

LABEL_46:

          if (qword_281499E38 != -1)
          {
LABEL_151:
            swift_once();
          }

          v113 = sub_2304A5B74();
          __swift_project_value_buffer(v113, qword_28149B008);
          v114 = v307;
          v115 = v326;
          (*v284)(v307, v295, v326);
          v116 = sub_2304A5B54();
          v117 = sub_2304A5E74();
          if (os_log_type_enabled(v116, v117))
          {
            v118 = swift_slowAlloc();
            v119 = swift_slowAlloc();
            v334[0] = v119;
            *v118 = 136446210;
            v120 = sub_2304A5284();
            v121 = v114;
            v123 = v122;
            (*v283)(v121, v115);
            v124 = sub_23046A5C8(v120, v123, v334);

            *(v118 + 4) = v124;
            _os_log_impl(&dword_230430000, v116, v117, "Data integrity problem found while trying to validate existing client entitlements: %{public}s", v118, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v119);
            MEMORY[0x23191A000](v119, -1, -1);
            MEMORY[0x23191A000](v118, -1, -1);
          }

          else
          {

            (*v283)(v114, v115);
          }

          (*(v312 + 104))(v314, *MEMORY[0x277D468D0], v313);
          sub_2304A53E4();
          sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
          swift_allocError();
          sub_2304A53D4();
          swift_willThrow();

          sub_230433B3C(v62);
          return;
        }

        v91 = *(*(v89 + 56) + 8 * v92);
      }

      if (!v91)
      {
        goto LABEL_46;
      }

      v310 = v87;
      v94 = *v284;
      v95 = v317;
      v96 = v326;
      (*v284)(v317, v91 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_clientDescriptor, v326);

      (*v281)(v81, v95, v96);
      sub_2304A5234();
      v97 = [v286 remoteToken];
      v98 = sub_2304A5D14();

      v58 = [v97 hasEntitlement_];

      if (!v58)
      {

        if (qword_281499E38 != -1)
        {
          swift_once();
        }

        v125 = sub_2304A5B74();
        __swift_project_value_buffer(v125, qword_28149B008);
        v126 = v305;
        v127 = v326;
        v94(v305, v295, v326);
        v128 = sub_2304A5B54();
        v129 = sub_2304A5E74();
        if (os_log_type_enabled(v128, v129))
        {
          v130 = swift_slowAlloc();
          v325 = swift_slowAlloc();
          v334[0] = v325;
          *v130 = 136446210;
          v131 = sub_2304A5284();
          v132 = v126;
          v133 = v127;
          v135 = v134;
          v136 = *v283;
          (*v283)(v132, v133);
          v137 = sub_23046A5C8(v131, v135, v334);
          v127 = v133;

          *(v130 + 4) = v137;
          _os_log_impl(&dword_230430000, v128, v129, "Cannot replace an existing client without the existing entitlement: %{public}s", v130, 0xCu);
          v138 = v325;
          __swift_destroy_boxed_opaque_existential_0Tm(v325);
          MEMORY[0x23191A000](v138, -1, -1);
          MEMORY[0x23191A000](v130, -1, -1);
        }

        else
        {

          v178 = v126;
          v136 = *v283;
          (*v283)(v178, v127);
        }

        v179 = v311;
        (*(v312 + 104))(v314, *MEMORY[0x277D468C0], v313);
        sub_2304A53E4();
        sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
        swift_allocError();
        sub_2304A53D4();
        swift_willThrow();
        sub_230433B3C(v62);

        v136(v179, v127);
        return;
      }

      (*v283)(v81, v96);

      v63 = v85;
      v65 = v318;
      v61 = v282;
      if ((v62 & 0x8000000000000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_23:
      v88 = sub_2304A6074();
      if (!v88)
      {
        break;
      }

      v340 = v88;
      sub_2304A4984();
      swift_dynamicCast();
      v87 = v334[0];
      v85 = v63;
      v86 = v65;
    }

LABEL_36:
    sub_230433B3C(v62);

    v55 = v295;
    v53 = v287;
LABEL_37:
    v99 = (v53 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore);
    __swift_project_boxed_opaque_existential_5Tm((v53 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore), *(v53 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore + 24));
    v100 = v285;
    sub_2304A54A4();
    if (v100)
    {

      goto LABEL_40;
    }

    v293 = v99;
    v101 = (v53 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore);
    __swift_project_boxed_opaque_existential_5Tm((v53 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore), *(v53 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore + 24));
    v102 = sub_2304A5404();
    v286 = v101;
    v103 = sub_2304A5284();
    if (*(v102 + 16))
    {
      v105 = sub_230469C40(v103, v104);
      v107 = v106;

      if (v107)
      {
        v108 = v309;
        v109 = *(v102 + 56) + *(v309 + 72) * v105;
        v110 = v303;
        v111 = v308;
        (*(v309 + 16))(v303, v109, v308);

        v112 = v304;
        (*(v108 + 32))(v304, v110, v111);
        if ((sub_2304A5164() & 1) == 0)
        {
          sub_2304A5194();
          sub_2304A5174();
        }

        goto LABEL_57;
      }
    }

    else
    {
    }

    sub_2304A5284();
    v112 = v306;
    sub_2304A51A4();
LABEL_57:
    __swift_project_boxed_opaque_existential_5Tm(v286, v286[3]);
    sub_2304A5434();
    v287 = v53;
    v139 = *(v309 + 8);
    v284 = (v309 + 8);
    v283 = v139;
    v139(v112, v308);
    v140 = sub_2304A5244();
    MEMORY[0x28223BE20](v140);
    *(&v277 - 2) = v291;
    *(&v277 - 1) = v55;
    v141 = sub_23045CE40(sub_2304647A4, (&v277 - 4), v140, sub_23045F028, sub_23045F028);
    v285 = 0;

    v142 = *(v141 + 2);
    v143 = v324;
    v144 = v323;
    if (v142)
    {
      v334[0] = MEMORY[0x277D84F90];
      v307 = v141;
      sub_23045FA5C(0, v142, 0);
      v318 = v334[0];
      v317 = v307 + 64;
      v145 = sub_2304A5FB4();
      v146 = v307;
      v147 = 0;
      v306 = (v325 + 2);
      v305 = v325 + 4;
      v303 = v307 + 72;
      v304 = v142;
      while ((v145 & 0x8000000000000000) == 0 && v145 < 1 << v146[32])
      {
        v310 = v147;
        v314 = (v145 >> 6);
        v151 = *&v317[8 * (v145 >> 6)];
        v313 = 1 << v145;
        if ((v151 & (1 << v145)) == 0)
        {
          goto LABEL_132;
        }

        v311 = *(v146 + 9);
        v152 = v143[12];
        v153 = *(v146 + 7);
        v154 = (*(v146 + 6) + 16 * v145);
        v155 = v143;
        v157 = *v154;
        v156 = v154[1];
        v158 = v325;
        v312 = v325[9];
        v159 = v322;
        (v325[2])(&v144[v152], v153 + v312 * v145, v322);
        v160 = v144;
        v161 = v320;
        *v320 = v157;
        *(v161 + 8) = v156;
        v162 = v158[4];
        v162(v161 + v155[12], &v160[v152], v159);
        v163 = v321;
        sub_230464ABC(v161, v321, &qword_27DB54038, &qword_2304A7458);

        v164 = v316;
        v162(v316, (v163 + v155[12]), v159);
        v165 = v318;
        v334[0] = v318;
        v167 = v318[2];
        v166 = v318[3];
        if (v167 >= v166 >> 1)
        {
          sub_23045FA5C((v166 > 1), v167 + 1, 1);
          v159 = v322;
          v165 = v334[0];
        }

        v165[2] = v167 + 1;
        v168 = (*(v158 + 80) + 32) & ~*(v158 + 80);
        v318 = v165;
        v162(v165 + v168 + v167 * v312, v164, v159);
        v146 = v307;
        v148 = 1 << v307[32];
        if (v145 >= v148)
        {
          goto LABEL_133;
        }

        v169 = *&v317[8 * v314];
        v143 = v324;
        v144 = v323;
        if ((v169 & v313) == 0)
        {
          goto LABEL_134;
        }

        if (v311 != *(v307 + 9))
        {
          goto LABEL_135;
        }

        v170 = v158;
        v171 = v169 & (-2 << (v145 & 0x3F));
        if (v171)
        {
          v148 = __clz(__rbit64(v171)) | v145 & 0x7FFFFFFFFFFFFFC0;
          v55 = v295;
          v149 = v304;
          v150 = v310;
        }

        else
        {
          v172 = v314 << 6;
          v173 = (v314 + 1);
          v174 = &v303[8 * v314];
          v55 = v295;
          v149 = v304;
          while (v173 < (v148 + 63) >> 6)
          {
            v176 = *v174++;
            v175 = v176;
            v172 += 64;
            ++v173;
            if (v176)
            {
              sub_230433B44(v145, v311, 0);
              v146 = v307;
              v148 = __clz(__rbit64(v175)) + v172;
              goto LABEL_75;
            }
          }

          sub_230433B44(v145, v311, 0);
          v146 = v307;
LABEL_75:
          v150 = v310;
        }

        v147 = v150 + 1;
        v145 = v148;
        if (v147 == v149)
        {

          v177 = v318;
          goto LABEL_80;
        }
      }

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

    else
    {

      v177 = MEMORY[0x277D84F90];
      v170 = v325;
LABEL_80:
      v180 = v55;
      v318 = v177;
      v181 = v55;
      v182 = v287;
      sub_23043ED1C(v180, v177);
      v183 = sub_2304A5244();
      MEMORY[0x28223BE20](v183);
      *(&v277 - 2) = v294;
      *(&v277 - 1) = v181;
      v184 = v285;
      v185 = sub_23045CE40(sub_230464EE4, (&v277 - 4), v183, sub_23045F028, sub_23045F028);
      v186 = v184;

      v187 = *(v185 + 2);
      v287 = v182;
      if (!v187)
      {
        v62 = v181;

        v218 = MEMORY[0x277D84F90];
LABEL_100:
        sub_23043F898(v62, v218);
        v219 = sub_23045FE98(v292);
        sub_230440248(v219);
        if (v186)
        {
        }

        else
        {
          v317 = v218;

          __swift_project_boxed_opaque_existential_5Tm(v293, v293[3]);
          v220 = sub_2304A5484();
          v285 = 0;
          v221 = *(v220 + 64);
          v321 = v220 + 64;
          v222 = 1 << *(v220 + 32);
          v223 = -1;
          if (v222 < 64)
          {
            v223 = ~(-1 << v222);
          }

          v224 = v223 & v221;
          v320 = ((v222 + 63) >> 6);
          v324 = (v319 + 16);
          v323 = (v319 + 8);

          v226 = 0;
          v227 = MEMORY[0x277D84F90];
          v228 = v302;
          v229 = v301;
          v322 = v225;
          while (1)
          {
            v325 = v227;
            if (!v224)
            {
              break;
            }

LABEL_111:
            v231 = __clz(__rbit64(v224)) | (v226 << 6);
            v232 = (*(v220 + 48) + 16 * v231);
            v233 = *v232;
            v234 = v232[1];
            v235 = v319;
            v236 = *(v220 + 56) + *(v319 + 72) * v231;
            v237 = v228;
            v238 = v326;
            (*(v319 + 16))(&v229[*(v228 + 48)], v236, v326);
            *v229 = v233;
            *(v229 + 1) = v234;
            v239 = v300;
            sub_230464B24(v229, v300, &qword_27DB54080, &qword_2304A7478);

            v240 = *(v237 + 48);
            v241 = sub_2304A5254();
            v242 = (*(v235 + 8))(v239 + v240, v238);
            MEMORY[0x28223BE20](v242);
            *(&v277 - 2) = v229;
            v243 = v285;
            v244 = sub_23043D2B8(sub_230464EAC, (&v277 - 4), v241);
            v285 = v243;

            sub_230464970(v229, &qword_27DB54080, &qword_2304A7478);
            v245 = *(v244 + 16);
            v227 = v325;
            v246 = v325[2];
            v247 = v246 + v245;
            if (__OFADD__(v246, v245))
            {
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
              goto LABEL_156;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || v247 > v227[3] >> 1)
            {
              if (v246 <= v247)
              {
                v249 = v246 + v245;
              }

              else
              {
                v249 = v246;
              }

              v227 = sub_23045A0B8(isUniquelyReferenced_nonNull_native, v249, 1, v227, &qword_27DB54088, &qword_2304A7480, MEMORY[0x277D46370]);
            }

            v62 = v295;
            v224 &= v224 - 1;
            if (*(v244 + 16))
            {
              v250 = (v227[3] >> 1) - v227[2];
              sub_2304A41F4();
              if (v250 < v245)
              {
                goto LABEL_154;
              }

              swift_arrayInitWithCopy();

              v62 = v295;
              v228 = v302;
              v229 = v301;
              v220 = v322;
              if (v245)
              {
                v251 = v227[2];
                v252 = __OFADD__(v251, v245);
                v253 = v251 + v245;
                if (v252)
                {
                  goto LABEL_155;
                }

                v227[2] = v253;
              }
            }

            else
            {

              v228 = v302;
              v229 = v301;
              v220 = v322;
              if (v245)
              {
                goto LABEL_153;
              }
            }
          }

          while (1)
          {
            v230 = v226 + 1;
            if (__OFADD__(v226, 1))
            {
              __break(1u);
              goto LABEL_151;
            }

            if (v230 >= v320)
            {
              break;
            }

            v224 = *(v321 + 8 * v230);
            ++v226;
            if (v224)
            {
              v226 = v230;
              goto LABEL_111;
            }
          }

          v254 = (v287 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator);
          __swift_project_boxed_opaque_existential_5Tm((v287 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator), *(v287 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 24));
          sub_2304A4654();
          __swift_project_boxed_opaque_existential_5Tm(v254, v254[3]);
          sub_2304A5284();
          v255 = sub_2304A4294();

          v256 = sub_230473CA0(v255);

          v257 = sub_23043E37C(v288, v256);
          v258 = sub_23045FE98(v257);
          v259 = v285;
          sub_230440248(v258);
          v58 = v259;
          if (!v259)
          {
            goto LABEL_126;
          }
        }

        goto LABEL_40;
      }

      v285 = v184;
      v334[0] = MEMORY[0x277D84F90];
      v304 = v187;
      sub_23045FA5C(0, v187, 0);
      v317 = v334[0];
      v316 = v185 + 64;
      v188 = sub_2304A5FB4();
      v189 = 0;
      v307 = (v170 + 2);
      v306 = (v170 + 4);
      v303 = v185 + 72;
      v190 = v185;
      v305 = v185;
      while ((v188 & 0x8000000000000000) == 0 && v188 < 1 << v190[32])
      {
        v310 = v189;
        v314 = (v188 >> 6);
        v193 = *&v316[8 * (v188 >> 6)];
        v313 = 1 << v188;
        if ((v193 & (1 << v188)) == 0)
        {
          goto LABEL_137;
        }

        v311 = *(v190 + 9);
        v194 = v143[12];
        v195 = *(v190 + 7);
        v196 = (*(v190 + 6) + 16 * v188);
        v197 = v143;
        v199 = *v196;
        v198 = v196[1];
        v200 = v325;
        v312 = v325[9];
        v201 = v322;
        (v325[2])(&v144[v194], v195 + v312 * v188, v322);
        v202 = v144;
        v203 = v320;
        *v320 = v199;
        *(v203 + 8) = v198;
        v204 = v200[4];
        v204(v203 + v197[12], &v202[v194], v201);
        v205 = v321;
        sub_230464ABC(v203, v321, &qword_27DB54038, &qword_2304A7458);

        v206 = v315;
        v204(v315, (v205 + v197[12]), v201);
        v207 = v317;
        v334[0] = v317;
        v209 = *(v317 + 2);
        v208 = *(v317 + 3);
        if (v209 >= v208 >> 1)
        {
          sub_23045FA5C((v208 > 1), v209 + 1, 1);
          v201 = v322;
          v207 = v334[0];
        }

        *(v207 + 16) = v209 + 1;
        v210 = (*(v200 + 80) + 32) & ~*(v200 + 80);
        v317 = v207;
        v204(v207 + v210 + v209 * v312, v206, v201);
        v190 = v305;
        v191 = 1 << *(v305 + 32);
        if (v188 >= v191)
        {
          goto LABEL_138;
        }

        v211 = *&v316[8 * v314];
        v143 = v324;
        v144 = v323;
        if ((v211 & v313) == 0)
        {
          goto LABEL_139;
        }

        if (v311 != *(v305 + 9))
        {
          goto LABEL_140;
        }

        v212 = v211 & (-2 << (v188 & 0x3F));
        if (v212)
        {
          v191 = __clz(__rbit64(v212)) | v188 & 0x7FFFFFFFFFFFFFC0;
          v192 = v295;
        }

        else
        {
          v213 = v314 << 6;
          v214 = (v314 + 1);
          v215 = &v303[8 * v314];
          v192 = v295;
          while (v214 < (v191 + 63) >> 6)
          {
            v217 = *v215++;
            v216 = v217;
            v213 += 64;
            ++v214;
            if (v217)
            {
              sub_230433B44(v188, v311, 0);
              v191 = __clz(__rbit64(v216)) + v213;
              goto LABEL_83;
            }
          }

          sub_230433B44(v188, v311, 0);
        }

LABEL_83:
        v189 = v310 + 1;
        v188 = v191;
        if (v310 + 1 == v304)
        {
          v62 = v192;

          v218 = v317;
          v186 = v285;
          goto LABEL_100;
        }
      }
    }

    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v66 = sub_2304A5B74();
  __swift_project_value_buffer(v66, qword_28149B008);
  v67 = v310;
  v68 = v326;
  (*(v54 + 16))(v310, v55, v326);
  v69 = sub_2304A5B54();
  v70 = sub_2304A5E74();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v334[0] = v72;
    *v71 = 136446210;
    v73 = sub_2304A5284();
    v74 = v54;
    v76 = v75;
    (*(v74 + 8))(v67, v68);
    v77 = sub_23046A5C8(v73, v76, v334);

    *(v71 + 4) = v77;
    _os_log_impl(&dword_230430000, v69, v70, "Cannot register a client without the specified entitlement: %{public}s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v72);
    MEMORY[0x23191A000](v72, -1, -1);
    MEMORY[0x23191A000](v71, -1, -1);
  }

  else
  {

    (*(v54 + 8))(v67, v68);
  }

  (*(v312 + 104))(v314, *MEMORY[0x277D468C0], v313);
  sub_2304A53E4();
  sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
  swift_allocError();
  sub_2304A53D4();
  swift_willThrow();
}

uint64_t sub_23043C580()
{
  v0 = sub_2304A4954();
  v2 = v1;
  if (v0 == sub_2304A5284() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2304A62F4();
  }

  return v5 & 1;
}

uint64_t sub_23043C618(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x277D84F98];
    v27 = MEMORY[0x277D84F98];
    v6 = sub_2304A61A4();
    v7 = sub_2304A6234();
    if (v7)
    {
      v8 = v7;
      sub_2304A4984();
      v9 = v8;
      v5 = MEMORY[0x277D84F98];
      do
      {
        v25 = v9;
        swift_dynamicCast();
        type metadata accessor for ClientDataSource(0);
        swift_dynamicCast();
        v10 = v26;
        if (!v26)
        {
          break;
        }

        v11 = v25;

        v12 = a1(&v26, &v25);
        if (v3)
        {
          sub_230433B3C(v6 | 0x8000000000000000);

          return v5;
        }

        v13 = v12;

        if (v13)
        {
          v14 = v5[2];
          if (v5[3] <= v14)
          {
            sub_23046E490(v14 + 1, 1);
          }

          v5 = v27;
          v26 = v10;
          sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]);
          result = sub_2304A5CF4();
          v16 = (v5 + 8);
          v17 = -1 << *(v5 + 32);
          v18 = result & ~v17;
          v19 = v18 >> 6;
          if (((-1 << v18) & ~v5[(v18 >> 6) + 8]) != 0)
          {
            v20 = __clz(__rbit64((-1 << v18) & ~v5[(v18 >> 6) + 8])) | v18 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v21 = 0;
            v22 = (63 - v17) >> 6;
            do
            {
              if (++v19 == v22 && (v21 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v23 = v19 == v22;
              if (v19 == v22)
              {
                v19 = 0;
              }

              v21 |= v23;
              v24 = *&v16[8 * v19];
            }

            while (v24 == -1);
            v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          }

          *&v16[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
          *(v5[6] + 8 * v20) = v10;
          *(v5[7] + 8 * v20) = v11;
          ++v5[2];
        }

        else
        {
        }

        v9 = sub_2304A6234();
      }

      while (v9);
    }

    sub_230433B3C(v6 | 0x8000000000000000);
  }

  else
  {
    v5 = sub_23045CE40(a1, a2, a3, sub_23045F29C, sub_23045F29C);
  }

  return v5;
}

uint64_t sub_23043C994(uint64_t a1)
{
  v1 = a1;
  v19 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2304A6044();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v25 = MEMORY[0x277D84F90];
    sub_2304A6154();
    v22 = sub_2304A6194();
    v23 = v4;
    v24 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v25 = MEMORY[0x277D84F90];
  sub_2304A6154();
  v5 = sub_2304A5FB4();
  v6 = *(v1 + 36);
  v22 = v5;
  v23 = v6;
  v24 = 0;
LABEL_7:
  result = sub_2304A4984();
  v18 = v1;
  v7 = 0;
  v17 = v2;
  while (v7 < v2)
  {
    if (__OFADD__(v7, 1))
    {
      goto LABEL_20;
    }

    v14 = v23;
    v15 = v24;
    v20 = v22;
    sub_230460490(v21, v22, v23, v24, v1, type metadata accessor for ClientDataSource);
    sub_2304A5214();
    sub_2304A5284();
    sub_2304A4974();

    sub_2304A6134();
    sub_2304A6164();
    sub_2304A6174();
    sub_2304A6144();
    if (v19)
    {
      result = v20;
      v1 = v18;
      if (!v15)
      {
        goto LABEL_21;
      }

      if (sub_2304A61C4())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v17;
      v13 = v7 + 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F60, &qword_2304A73C0);
      v16 = sub_2304A5CE4();
      sub_2304A6244();
      result = v16(v21, 0);
    }

    else
    {
      v8 = sub_23046020C(v20, v14, v15, v18);
      v10 = v9;
      v12 = v11;
      result = sub_230433B44(v20, v14, v15);
      v22 = v8;
      v23 = v10;
      v24 = v12 & 1;
      v1 = v18;
      v2 = v17;
      v13 = v7 + 1;
    }

    ++v7;
    if (v13 == v2)
    {
      sub_230433B44(v22, v23, v24);
      return v25;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_23043CC94(uint64_t a1)
{
  v1 = a1;
  v19 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2304A6044();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v24 = MEMORY[0x277D84F90];
    sub_2304A6154();
    result = sub_2304A6194();
    v21 = result;
    v22 = v4;
    v23 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v24 = MEMORY[0x277D84F90];
  sub_2304A6154();
  result = sub_2304A5FB4();
  v5 = *(v1 + 36);
  v21 = result;
  v22 = v5;
  v23 = 0;
LABEL_7:
  v6 = 0;
  v18 = v2;
  while (v6 < v2)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_20;
    }

    v13 = v21;
    v14 = v22;
    v15 = v23;
    sub_230460490(v20, v21, v22, v23, v1, type metadata accessor for ClientDataSource);
    v16 = v1;

    sub_2304A6134();
    sub_2304A6164();
    sub_2304A6174();
    result = sub_2304A6144();
    if (v19)
    {
      if (!v15)
      {
        goto LABEL_21;
      }

      if (sub_2304A61C4())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F60, &qword_2304A73C0);
      v17 = sub_2304A5CE4();
      sub_2304A6244();
      result = v17(v20, 0);
    }

    else
    {
      v7 = sub_23046020C(v13, v14, v15, v1);
      v9 = v8;
      v11 = v10;
      result = sub_230433B44(v13, v14, v15);
      v21 = v7;
      v22 = v9;
      v23 = v11 & 1;
      v1 = v16;
      v2 = v18;
    }

    ++v6;
    if (v12 == v2)
    {
      sub_230433B44(v21, v22, v23);
      return v24;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_23043CF14(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41 = a1;
  v42 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54038, &qword_2304A7458);
  v6 = MEMORY[0x28223BE20](v40);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v39 = &v33 - v9;
  v10 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v49 = MEMORY[0x277D84F90];
    sub_2304A6154();
    v12 = a3 + 64;
    v13 = sub_2304A5FB4();
    v14 = 0;
    v15 = *(a3 + 36);
    v34 = a3 + 72;
    v35 = v10;
    v37 = a3 + 64;
    v38 = v8;
    v36 = v15;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a3 + 32))
    {
      if ((*(v12 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_22;
      }

      if (v15 != *(a3 + 36))
      {
        goto LABEL_23;
      }

      v44 = 1 << v13;
      v45 = v13 >> 6;
      v43 = v14;
      v17 = v40;
      v18 = *(v40 + 48);
      v19 = *(a3 + 56);
      v20 = (*(a3 + 48) + 16 * v13);
      v21 = v20[1];
      v46 = *v20;
      v47 = v4;
      v22 = sub_2304A5224();
      v23 = *(v22 - 8);
      v24 = v19 + *(v23 + 72) * v13;
      v8 = v38;
      v25 = v39;
      (*(v23 + 16))(&v39[v18], v24, v22);
      *v8 = v46;
      v8[1] = v21;
      (*(v23 + 32))(v8 + *(v17 + 48), &v25[v18], v22);

      v26 = v47;
      v41(&v48, v8);
      if (v26)
      {
        goto LABEL_27;
      }

      v4 = 0;
      sub_230464970(v8, &qword_27DB54038, &qword_2304A7458);
      sub_2304A6134();
      sub_2304A6164();
      sub_2304A6174();
      sub_2304A6144();
      v16 = 1 << *(a3 + 32);
      if (v13 >= v16)
      {
        goto LABEL_24;
      }

      v12 = v37;
      v27 = *(v37 + 8 * v45);
      if ((v27 & v44) == 0)
      {
        goto LABEL_25;
      }

      LODWORD(v15) = v36;
      if (v36 != *(a3 + 36))
      {
        goto LABEL_26;
      }

      v28 = v27 & (-2 << (v13 & 0x3F));
      if (v28)
      {
        v16 = __clz(__rbit64(v28)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v8 = (v45 << 6);
        v29 = v45 + 1;
        v30 = (v34 + 8 * v45);
        while (v29 < (v16 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v8 += 8;
          ++v29;
          if (v32)
          {
            sub_230433B44(v13, v36, 0);
            v16 = v8 + __clz(__rbit64(v31));
            goto LABEL_4;
          }
        }

        sub_230433B44(v13, v36, 0);
      }

LABEL_4:
      v14 = v43 + 1;
      v13 = v16;
      if (v43 + 1 == v35)
      {
        return v49;
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
LABEL_26:
    __break(1u);
LABEL_27:
    sub_230464970(v8, &qword_27DB54038, &qword_2304A7458);

    __break(1u);
  }

  return result;
}

uint64_t sub_23043D2B8(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v50 = a1;
  v51 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54090, &qword_2304A7488);
  v4 = MEMORY[0x28223BE20](v49);
  v6 = (&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v48 = &v41 - v7;
  v47 = sub_2304A41F4();
  v8 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v56 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v59 = MEMORY[0x277D84F90];
    sub_23045FAA0(0, v10, 0);
    v57 = v59;
    v12 = a3 + 64;
    v13 = sub_2304A5FB4();
    v14 = 0;
    v15 = *(a3 + 36);
    v45 = v8 + 32;
    v46 = a3;
    v41 = a3 + 72;
    v42 = v10;
    v43 = v15;
    v44 = a3 + 64;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a3 + 32))
    {
      if ((*(v12 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_25;
      }

      if (v15 != *(a3 + 36))
      {
        goto LABEL_26;
      }

      v53 = 1 << v13;
      v54 = v13 >> 6;
      v52 = v14;
      v18 = v8;
      v19 = v49;
      v20 = *(v49 + 48);
      v21 = v6;
      v22 = *(a3 + 56);
      v23 = (*(a3 + 48) + 16 * v13);
      v24 = v23[1];
      v55 = *v23;
      v25 = sub_2304A52C4();
      v26 = *(v25 - 8);
      v27 = v22 + *(v26 + 72) * v13;
      v6 = v21;
      v28 = v48;
      (*(v26 + 16))(&v48[v20], v27, v25);
      *v6 = v55;
      v6[1] = v24;
      (*(v26 + 32))(v6 + *(v19 + 48), &v28[v20], v25);

      v29 = v58;
      v50(v6);
      v58 = v29;
      if (v29)
      {
        goto LABEL_30;
      }

      sub_230464970(v6, &unk_27DB54090, &qword_2304A7488);
      v30 = v57;
      v59 = v57;
      v32 = *(v57 + 16);
      v31 = *(v57 + 24);
      v8 = v18;
      if (v32 >= v31 >> 1)
      {
        sub_23045FAA0((v31 > 1), v32 + 1, 1);
        v30 = v59;
      }

      *(v30 + 16) = v32 + 1;
      v33 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v57 = v30;
      (*(v18 + 32))(v30 + v33 + *(v18 + 72) * v32, v56, v47);
      a3 = v46;
      v16 = 1 << *(v46 + 32);
      if (v13 >= v16)
      {
        goto LABEL_27;
      }

      v12 = v44;
      v34 = *(v44 + 8 * v54);
      if ((v34 & v53) == 0)
      {
        goto LABEL_28;
      }

      LODWORD(v15) = v43;
      if (v43 != *(v46 + 36))
      {
        goto LABEL_29;
      }

      v35 = v34 & (-2 << (v13 & 0x3F));
      if (v35)
      {
        v16 = __clz(__rbit64(v35)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v17 = v52;
      }

      else
      {
        v36 = v54 << 6;
        v37 = v54 + 1;
        v38 = (v41 + 8 * v54);
        while (v37 < (v16 + 63) >> 6)
        {
          v40 = *v38++;
          v39 = v40;
          v36 += 64;
          ++v37;
          if (v40)
          {
            sub_230433B44(v13, v43, 0);
            v16 = __clz(__rbit64(v39)) + v36;
            goto LABEL_21;
          }
        }

        sub_230433B44(v13, v43, 0);
LABEL_21:
        v17 = v52;
      }

      v14 = v17 + 1;
      v13 = v16;
      if (v14 == v42)
      {
        return v57;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    sub_230464970(v6, &unk_27DB54090, &qword_2304A7488);

    __break(1u);
  }

  return result;
}

uint64_t sub_23043D750(uint64_t a1)
{
  v1 = a1;
  v25 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2304A6044();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v31 = MEMORY[0x277D84F90];
    sub_23045FA3C(0, v2 & ~(v2 >> 63), 0);
    v26 = v31;
    if (v25)
    {
      result = sub_2304A6194();
    }

    else
    {
      result = sub_2304A5FB4();
      v4 = *(v1 + 36);
    }

    v28 = result;
    v29 = v4;
    v30 = v25 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v23 = v2;
      v24 = v1;
      while (v5 < v2)
      {
        if (__OFADD__(v5, 1))
        {
          goto LABEL_24;
        }

        v12 = v28;
        v13 = v29;
        v14 = v30;
        sub_230460490(v27, v28, v29, v30, v1, type metadata accessor for ClientDataSource);
        v15 = sub_2304A5234();
        v17 = v16;

        v18 = v26;
        v31 = v26;
        v20 = *(v26 + 16);
        v19 = *(v26 + 24);
        if (v20 >= v19 >> 1)
        {
          result = sub_23045FA3C((v19 > 1), v20 + 1, 1);
          v18 = v31;
        }

        *(v18 + 16) = v20 + 1;
        v21 = v18 + 16 * v20;
        *(v21 + 32) = v15;
        *(v21 + 40) = v17;
        v26 = v18;
        if (v25)
        {
          v1 = v24;
          if (!v14)
          {
            goto LABEL_26;
          }

          if (sub_2304A61C4())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v23;
          v11 = v5 + 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F60, &qword_2304A73C0);
          v22 = sub_2304A5CE4();
          sub_2304A6244();
          result = v22(v27, 0);
        }

        else
        {
          v1 = v24;
          v6 = sub_23046020C(v12, v13, v14, v24);
          v8 = v7;
          v10 = v9;
          result = sub_230433B44(v12, v13, v14);
          v28 = v6;
          v29 = v8;
          v30 = v10 & 1;
          v2 = v23;
          v11 = v5 + 1;
        }

        ++v5;
        if (v11 == v2)
        {
          sub_230433B44(v28, v29, v30);
          return v26;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_23043DA28(uint64_t a1)
{
  v46 = sub_2304A4434();
  v3 = *(v46 - 8);
  v4 = MEMORY[0x28223BE20](v46);
  v45 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v44 = v37 - v6;
  v7 = sub_2304A4BE4();
  MEMORY[0x28223BE20](v7 - 8);
  v43 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2304A4E64();
  v47 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = sub_2304A6044();
  }

  else
  {
    v11 = *(a1 + 16);
  }

  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v63 = MEMORY[0x277D84F90];
  sub_23045FB6C(0, v11 & ~(v11 >> 63), 0);
  v12 = v63;
  if (v48)
  {
    result = sub_2304A6194();
  }

  else
  {
    result = sub_2304A5FB4();
    v14 = *(a1 + 36);
  }

  v60 = result;
  v61 = v14;
  v62 = v48 != 0;
  if ((v11 & 0x8000000000000000) == 0)
  {
    v37[1] = v1;
    v15 = 0;
    v40 = (v3 + 8);
    v39 = v47 + 32;
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v16 = a1;
    }

    v37[2] = v16;
    v41 = a1;
    v38 = v11;
    while (v15 < v11)
    {
      if (__OFADD__(v15, 1))
      {
        goto LABEL_26;
      }

      v51 = v15 + 1;
      v52 = v15;
      v49 = v60;
      v50 = v61;
      v57 = v62;
      sub_230460490(v59, v60, v61, v62, a1, MEMORY[0x277D464D8]);
      v25 = sub_2304A4964();
      v55 = v26;
      v56 = v25;
      v27 = sub_2304A4954();
      v53 = v28;
      v54 = v27;
      v29 = v44;
      sub_2304A4944();
      sub_2304A4414();
      v58 = v12;
      v30 = v10;
      v31 = *v40;
      v32 = v46;
      (*v40)(v29, v46);
      v33 = v45;
      sub_2304A4944();
      sub_2304A4424();
      v31(v33, v32);
      v10 = v30;
      v12 = v58;
      sub_2304A4BB4();
      sub_2304A4E24();

      v63 = v12;
      v35 = *(v12 + 16);
      v34 = *(v12 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_23045FB6C((v34 > 1), v35 + 1, 1);
        v12 = v63;
      }

      *(v12 + 16) = v35 + 1;
      result = (*(v47 + 32))(v12 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v35, v10, v42);
      if (v48)
      {
        a1 = v41;
        if (!v57)
        {
          goto LABEL_28;
        }

        if (sub_2304A61C4())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54130, &qword_2304A74F8);
        v36 = sub_2304A5CE4();
        sub_2304A6244();
        result = v36(v59, 0);
      }

      else
      {
        v18 = v49;
        v17 = v50;
        v19 = v57;
        a1 = v41;
        v20 = sub_23046020C(v49, v50, v57, v41);
        v22 = v21;
        v24 = v23;
        result = sub_230433B44(v18, v17, v19);
        v60 = v20;
        v61 = v22;
        v62 = v24 & 1;
      }

      v15 = v52 + 1;
      v11 = v38;
      if (v51 == v38)
      {
        sub_230433B44(v60, v61, v62);
        return v12;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_23043DF8C(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2304A6044();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x277D84F90];
    sub_23045FA3C(0, v2 & ~(v2 >> 63), 0);
    v36 = v41;
    if (v34)
    {
      v3 = sub_2304A5FF4();
    }

    else
    {
      v3 = sub_2304A5FB4();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_23045FF48(v38, v39, v40, v1);
        v12 = v11;
        v13 = [v11 description];
        v14 = sub_2304A5D24();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = *(v36 + 16);
        v18 = *(v36 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_23045FA3C((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v19 + 1;
        v20 = v17 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_2304A6014())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F68, &qword_2304A73C8);
          v6 = sub_2304A5E14();
          sub_2304A6094();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_230433B44(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_230433B44(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_230433B44(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_23043E2F4@<X0>(uint64_t *a2@<X8>)
{
  sub_2304A4984();
  sub_2304A5284();
  v3 = sub_2304A4974();

  *a2 = v3;
  return result;
}

uint64_t sub_23043E37C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_2304A6044();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_23045CFD0(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_2304A6044() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_2304A6044();
  v2 = sub_23045A47C(v5, v6);
LABEL_10:

  return sub_23045D208(a1, v2);
}

uint64_t sub_23043E470(uint64_t *a1, uint64_t a2, char *a3)
{
  v67 = a3;
  v5 = sub_2304A53C4();
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x28223BE20](v5);
  v63 = (&v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB540C8, &qword_2304A74B0);
  MEMORY[0x28223BE20](v66);
  v8 = &v61 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB540D0, &qword_2304A74B8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v62 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v68 = &v61 - v13;
  MEMORY[0x28223BE20](v12);
  v69 = &v61 - v14;
  v15 = sub_2304A5224();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v61 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v61 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v61 - v22;
  v24 = *a1;
  v25 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources;
  swift_beginAccess();
  v26 = *(a2 + v25);

  v27 = sub_230496468(v24, v26);

  if (v27)
  {
    v65 = v8;
    v28 = *(v16 + 16);
    v28(v21, v27 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_zoneDescriptor, v15);

    v63 = *(v16 + 32);
    v64 = v16 + 32;
    v63(v23, v21, v15);
    v29 = sub_2304A5244();
    v30 = sub_2304A4964();
    v32 = *(v29 + 16);
    v67 = v23;
    if (v32)
    {
      v33 = sub_230469C40(v30, v31);
      v35 = v34;

      if (v35)
      {
        v36 = v69;
        v28(v69, *(v29 + 56) + *(v16 + 72) * v33, v15);

        v37 = 0;
        goto LABEL_12;
      }
    }

    else
    {
    }

    v37 = 1;
    v36 = v69;
LABEL_12:
    v50 = *(v16 + 56);
    v50(v36, v37, 1, v15);
    v51 = v68;
    v28(v68, v67, v15);
    v50(v51, 0, 1, v15);
    v52 = v65;
    v53 = *(v66 + 48);
    sub_230464B24(v51, v65, &unk_27DB540D0, &qword_2304A74B8);
    sub_230464B24(v36, v52 + v53, &unk_27DB540D0, &qword_2304A74B8);
    v54 = *(v16 + 48);
    if (v54(v52, 1, v15) == 1)
    {
      sub_230464970(v51, &unk_27DB540D0, &qword_2304A74B8);
      sub_230464970(v36, &unk_27DB540D0, &qword_2304A74B8);
      (*(v16 + 8))(v67, v15);
      if (v54(v52 + v53, 1, v15) == 1)
      {
        sub_230464970(v52, &unk_27DB540D0, &qword_2304A74B8);
        v49 = 0;
        return v49 & 1;
      }
    }

    else
    {
      v55 = v62;
      sub_230464B24(v52, v62, &unk_27DB540D0, &qword_2304A74B8);
      if (v54(v52 + v53, 1, v15) != 1)
      {
        v57 = v61;
        v63(v61, (v52 + v53), v15);
        sub_230464B8C(&unk_281499F68, MEMORY[0x277D46840], MEMORY[0x277D46848]);
        v58 = sub_2304A5D04();
        v59 = *(v16 + 8);
        v59(v57, v15);
        sub_230464970(v68, &unk_27DB540D0, &qword_2304A74B8);
        sub_230464970(v69, &unk_27DB540D0, &qword_2304A74B8);
        v59(v67, v15);
        v59(v55, v15);
        sub_230464970(v52, &unk_27DB540D0, &qword_2304A74B8);
        v49 = v58 ^ 1;
        return v49 & 1;
      }

      sub_230464970(v68, &unk_27DB540D0, &qword_2304A74B8);
      sub_230464970(v69, &unk_27DB540D0, &qword_2304A74B8);
      v56 = *(v16 + 8);
      v56(v67, v15);
      v56(v55, v15);
    }

    sub_230464970(v52, &qword_27DB540C8, &qword_2304A74B0);
    v49 = 1;
    return v49 & 1;
  }

  v39 = v64;
  v38 = v65;
  v40 = v63;
  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v41 = sub_2304A5B74();
  __swift_project_value_buffer(v41, qword_28149B008);

  v42 = sub_2304A5B54();
  v43 = sub_2304A5E74();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v71 = v45;
    *v44 = 136446210;
    v70 = v24;
    sub_2304A4984();
    sub_230464B8C(&qword_27DB54028, MEMORY[0x277D464B8], MEMORY[0x277D464D0]);
    v46 = sub_2304A62D4();
    v48 = sub_23046A5C8(v46, v47, &v71);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_230430000, v42, v43, "Data integrity problem found while trying to resolve updated zone identifier: %{public}s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    MEMORY[0x23191A000](v45, -1, -1);
    MEMORY[0x23191A000](v44, -1, -1);
  }

  (*(v39 + 104))(v40, *MEMORY[0x277D468D0], v38);
  sub_2304A53E4();
  sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
  swift_allocError();
  sub_2304A53D4();
  swift_willThrow();
  return v49 & 1;
}

uint64_t sub_23043ED1C(uint64_t a1, uint64_t a2)
{
  v80 = sub_2304A5294();
  v5 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_2304A5224();
  v7 = *(v81 - 8);
  v8 = MEMORY[0x28223BE20](v81);
  v78 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v95 = &v74 - v10;
  v96 = v2;
  v11 = *&v2[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock];

  os_unfair_lock_assert_owner(v11 + 4);

  v13 = *(a2 + 16);
  if (!v13)
  {
    return result;
  }

  v87 = sub_2304A4984();
  v77 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster;
  v92 = &v96[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator];
  v76 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_recordDataStore;
  v14 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v93 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources;
  swift_beginAccess();
  v17 = *(v7 + 16);
  v15 = v7 + 16;
  v16 = v17;
  v85 = (v15 - 8);
  v75 = (v5 + 16);
  v84 = *(v15 + 56);
  v18.n128_u64[0] = 136446210;
  v74 = v18;
  v19 = v81;
  v82 = v15;
  v83 = v17;
  v86 = a1;
  while (1)
  {
    v94 = v13;
    v16(v95, v14, v19);
    sub_2304A5214();
    sub_2304A5284();
    v21 = sub_2304A4974();

    v22 = *&v96[v93];
    if ((v22 & 0xC000000000000001) != 0)
    {

      v23 = sub_2304A6224();

      if (!v23)
      {
        goto LABEL_17;
      }

      *&v98 = v23;
      type metadata accessor for ClientDataSource(0);
      swift_dynamicCast();
      v24 = *&v101[0];
    }

    else
    {
      if (!*(v22 + 16))
      {
        goto LABEL_18;
      }

      v25 = sub_230469CB8(v21);
      if ((v26 & 1) == 0)
      {
LABEL_17:

        goto LABEL_18;
      }

      v24 = *(*(v22 + 56) + 8 * v25);
    }

    if (v24)
    {

      if (qword_281499E38 != -1)
      {
        swift_once();
      }

      v27 = sub_2304A5B74();
      __swift_project_value_buffer(v27, qword_28149B008);

      v28 = sub_2304A5B54();
      v29 = sub_2304A5E74();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *&v101[0] = v31;
        *v30 = v74.n128_u32[0];
        *&v98 = v21;
        sub_230464B8C(&qword_27DB54028, MEMORY[0x277D464B8], MEMORY[0x277D464D0]);
        v32 = sub_2304A62D4();
        v34 = v14;
        v35 = sub_23046A5C8(v32, v33, v101);

        *(v30 + 4) = v35;
        v14 = v34;
        v16 = v83;
        _os_log_impl(&dword_230430000, v28, v29, "Cannot create a data source for zone %{public}s because it already exists", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
        MEMORY[0x23191A000](v31, -1, -1);
        MEMORY[0x23191A000](v30, -1, -1);
      }

      else
      {
      }

      (*v85)(v95, v19);
      v20 = v94;
      a1 = v86;
      goto LABEL_5;
    }

LABEL_18:
    v90 = v21;
    v89 = v14;
    v36 = v77;
    v37 = v96;
    sub_230464834(&v96[v77], v101);
    v99 = type metadata accessor for ReplicationServer();
    v100 = &off_28451BC20;
    *&v98 = v37;
    v38 = type metadata accessor for ClientRecordChangeNotifier();
    v39 = swift_allocObject();
    sub_230433DAC(&v98, v39 + 16);
    sub_230433DAC(v101, v39 + 56);
    v91 = type metadata accessor for ClientDataSource(0);
    v40 = v79;
    (*v75)(v79, a1, v80);
    v41 = v78;
    v16(v78, v95, v19);
    v42 = *(v92 + 3);
    v43 = *(v92 + 8);
    v44 = __swift_project_boxed_opaque_existential_5Tm(v92, v42);
    sub_230464834(&v37[v76], v101);
    v45 = sub_230464834(&v37[v36], &v98);
    MEMORY[0x28223BE20](v45);
    v47 = &v74 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v48 + 16))(v47, v44, v42);
    v97 = v39;
    v49 = v37;
    v88 = v39;

    v50 = v40;
    v51 = v93;
    v52 = sub_2304A3484(v50, v41, v47, v101, &v98, &v97, v91, v38, v42, &off_28451C110, v43);
    swift_beginAccess();
    v53 = *&v37[v51];
    if ((v53 & 0xC000000000000001) != 0)
    {
      if (v53 < 0)
      {
        v54 = *&v37[v51];
      }

      else
      {
        v54 = v53 & 0xFFFFFFFFFFFFFF8;
      }

      v55 = v90;

      v56 = sub_2304A6044();
      if (__OFADD__(v56, 1))
      {
        goto LABEL_41;
      }

      v57 = sub_230479300(v54, v56 + 1);
      *&v96[v51] = v57;
    }

    else
    {
      v55 = v90;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v98 = *&v96[v51];
    v59 = v98;
    *&v96[v51] = 0x8000000000000000;
    v61 = sub_230469CB8(v55);
    v62 = *(v59 + 16);
    v63 = (v60 & 1) == 0;
    v64 = v62 + v63;
    v65 = v86;
    v66 = v81;
    v16 = v83;
    if (__OFADD__(v62, v63))
    {
      break;
    }

    v67 = v60;
    if (*(v59 + 24) >= v64)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v70 = v98;
        if ((v60 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        sub_2304711E8();
        v70 = v98;
        if ((v67 & 1) == 0)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      sub_23046E490(v64, isUniquelyReferenced_nonNull_native);
      v68 = sub_230469CB8(v55);
      if ((v67 & 1) != (v69 & 1))
      {
        goto LABEL_43;
      }

      v61 = v68;
      v70 = v98;
      if ((v67 & 1) == 0)
      {
LABEL_32:
        v70[(v61 >> 6) + 8] |= 1 << v61;
        *(v70[6] + 8 * v61) = v55;
        *(v70[7] + 8 * v61) = v52;
        v71 = v70[2];
        v72 = __OFADD__(v71, 1);
        v73 = v71 + 1;
        if (v72)
        {
          goto LABEL_42;
        }

        v70[2] = v73;
        goto LABEL_4;
      }
    }

    *(v70[7] + 8 * v61) = v52;

LABEL_4:
    *&v96[v51] = v70;
    swift_endAccess();
    __swift_project_boxed_opaque_existential_5Tm(v92, *(v92 + 3));
    sub_230464B8C(&qword_28149AA70, type metadata accessor for ClientDataSource, &unk_2304A7FD0);

    sub_2304A4244();

    (*v85)(v95, v66);
    v20 = v94;
    v14 = v89;
    a1 = v65;
    v19 = v66;
LABEL_5:
    v14 += v84;
    v13 = v20 - 1;
    if (!v13)
    {
      __swift_project_boxed_opaque_existential_5Tm(v92, *(v92 + 3));
      return sub_2304A4264();
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = sub_2304A6314();
  __break(1u);
  return result;
}

uint64_t sub_23043F738(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54038, &qword_2304A7458);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v11 = *a1;
  v10 = a1[1];
  *v9 = v11;
  *(v9 + 1) = v10;
  v12 = *(v7 + 56);
  v13 = sub_2304A5224();
  (*(*(v13 - 8) + 16))(&v9[v12], a2, v13);
  sub_2304A4984();

  sub_2304A5284();
  v14 = sub_2304A4974();

  LOBYTE(v12) = sub_2304957C8(v14, a3);

  sub_230464970(v9, &qword_27DB54038, &qword_2304A7458);
  return v12 & 1;
}

uint64_t sub_23043F898(uint64_t a1, uint64_t a2)
{
  v76 = sub_2304A5294();
  v5 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2304A5224();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v74 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v90 = &v69 - v11;
  v91 = v2;
  v12 = *&v2[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock];

  os_unfair_lock_assert_owner(v12 + 4);

  v14 = *(a2 + 16);
  if (!v14)
  {
    return result;
  }

  v89 = sub_2304A4984();
  v73 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster;
  v82 = &v91[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator];
  v72 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_recordDataStore;
  v15 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v87 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources;
  swift_beginAccess();
  v16 = *(v8 + 16);
  v71 = (v5 + 16);
  v88 = v8 + 16;
  v85 = *(v8 + 72);
  v86 = (v8 + 8);
  *&v17 = 136446210;
  v77 = v17;
  v84 = a1;
  v83 = v7;
  v70 = v16;
  v16(v90, v15, v7);
  while (1)
  {
    sub_2304A5214();
    sub_2304A5284();
    v18 = sub_2304A4974();

    v19 = *&v91[v87];
    if ((v19 & 0xC000000000000001) != 0)
    {

      v20 = sub_2304A6224();

      if (!v20)
      {
        goto LABEL_20;
      }

      *&v93 = v20;
      type metadata accessor for ClientDataSource(0);
      swift_dynamicCast();
      v21 = v96;
      goto LABEL_13;
    }

    if (*(v19 + 16))
    {
      break;
    }

LABEL_21:
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v45 = sub_2304A5B74();
    __swift_project_value_buffer(v45, qword_28149B008);

    v46 = sub_2304A5B54();
    v47 = sub_2304A5E74();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v96 = v49;
      *v48 = v77;
      *&v93 = v18;
      sub_230464B8C(&qword_27DB54028, MEMORY[0x277D464B8], MEMORY[0x277D464D0]);
      v50 = sub_2304A62D4();
      v52 = sub_23046A5C8(v50, v51, &v96);

      *(v48 + 4) = v52;
      v7 = v83;
      _os_log_impl(&dword_230430000, v46, v47, "Cannot update a data source for zone %{public}s because it does not exist", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      MEMORY[0x23191A000](v49, -1, -1);
      v53 = v48;
      a1 = v84;
      MEMORY[0x23191A000](v53, -1, -1);
    }

    else
    {
    }

    result = (*v86)(v90, v7);
LABEL_5:
    v15 += v85;
    if (!--v14)
    {
      return result;
    }

    v16(v90, v15, v7);
  }

  v22 = sub_230469CB8(v18);
  if ((v23 & 1) == 0)
  {
LABEL_20:

    goto LABEL_21;
  }

  v21 = *(*(v19 + 56) + 8 * v22);

LABEL_13:

  if (!v21)
  {
    goto LABEL_21;
  }

  v79 = v14;

  v24 = v16;
  v25 = v73;
  v26 = v7;
  v27 = v91;
  sub_230464834(&v91[v73], &v96);
  v94 = type metadata accessor for ReplicationServer();
  v95 = &off_28451BC20;
  *&v93 = v27;
  v81 = type metadata accessor for ClientRecordChangeNotifier();
  v28 = swift_allocObject();
  sub_230433DAC(&v93, v28 + 16);
  sub_230433DAC(&v96, v28 + 56);
  v80 = type metadata accessor for ClientDataSource(0);
  v29 = v75;
  (*v71)(v75, a1, v76);
  v30 = v74;
  v24(v74, v90, v26);
  v31 = *(v82 + 3);
  v32 = *(v82 + 8);
  v33 = __swift_project_boxed_opaque_existential_5Tm(v82, v31);
  sub_230464834(&v27[v72], &v96);
  v34 = sub_230464834(&v27[v25], &v93);
  MEMORY[0x28223BE20](v34);
  v36 = &v69 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v37 + 16))(v36, v33, v31);
  v92 = v28;
  v38 = v91;
  v78 = v28;

  v68 = v32;
  v39 = v87;
  v40 = sub_2304A3484(v29, v30, v36, &v96, &v93, &v92, v80, v81, v31, &off_28451C110, v68);
  v41 = v91;
  swift_beginAccess();
  v42 = *&v41[v39];
  if ((v42 & 0xC000000000000001) != 0)
  {
    if (v42 < 0)
    {
      v43 = *&v41[v39];
    }

    else
    {
      v43 = v42 & 0xFFFFFFFFFFFFFF8;
    }

    v44 = sub_2304A6044();
    if (__OFADD__(v44, 1))
    {
      goto LABEL_40;
    }

    *&v41[v39] = sub_230479300(v43, v44 + 1);
  }

  else
  {

    v41 = v91;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v93 = *&v41[v39];
  v55 = v93;
  *&v41[v39] = 0x8000000000000000;
  v57 = sub_230469CB8(v18);
  v58 = *(v55 + 16);
  v59 = (v56 & 1) == 0;
  v60 = v58 + v59;
  v14 = v79;
  if (!__OFADD__(v58, v59))
  {
    v61 = v56;
    if (*(v55 + 24) >= v60)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v64 = v93;
        if ((v56 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        sub_2304711E8();
        v64 = v93;
        if ((v61 & 1) == 0)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      sub_23046E490(v60, isUniquelyReferenced_nonNull_native);
      v62 = sub_230469CB8(v18);
      if ((v61 & 1) != (v63 & 1))
      {
        goto LABEL_42;
      }

      v57 = v62;
      v64 = v93;
      if ((v61 & 1) == 0)
      {
LABEL_35:
        v64[(v57 >> 6) + 8] |= 1 << v57;
        *(v64[6] + 8 * v57) = v18;
        *(v64[7] + 8 * v57) = v40;
        v65 = v64[2];
        v66 = __OFADD__(v65, 1);
        v67 = v65 + 1;
        if (v66)
        {
          goto LABEL_41;
        }

        v64[2] = v67;
        goto LABEL_37;
      }
    }

    *(v64[7] + 8 * v57) = v40;

LABEL_37:
    *&v91[v39] = v64;
    swift_endAccess();
    __swift_project_boxed_opaque_existential_5Tm(v82, *(v82 + 3));
    sub_230464B8C(&qword_28149AA70, type metadata accessor for ClientDataSource, &unk_2304A7FD0);

    sub_2304A4244();

    v7 = v83;
    result = (*v86)(v90, v83);
    a1 = v84;
    v16 = v70;
    goto LABEL_5;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_2304A6314();
  __break(1u);
  return result;
}

uint64_t sub_230440248(unint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);

  os_unfair_lock_assert_owner(v4 + 4);

  if (a1 >> 62)
  {
    result = sub_2304A6044();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return result;
    }
  }

  if (v6 >= 1)
  {
    v27 = (v1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator);
    v26 = a1 & 0xC000000000000001;
    v29 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources;
    swift_beginAccess();
    v7 = 0;
    v25 = a1;
    v28 = v6;
    while (1)
    {
      if (v26)
      {
        v8 = MEMORY[0x231919680](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      if (qword_281499E38 != -1)
      {
        swift_once();
      }

      v9 = sub_2304A5B74();
      __swift_project_value_buffer(v9, qword_28149B008);

      v10 = sub_2304A5B54();
      v11 = sub_2304A5E94();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = v2;
        v14 = swift_slowAlloc();
        v30[0] = v14;
        *v12 = 136446210;
        v31 = v8;
        sub_2304A4984();
        sub_230464B8C(&qword_27DB54028, MEMORY[0x277D464B8], MEMORY[0x277D464D0]);
        v15 = sub_2304A62D4();
        v17 = sub_23046A5C8(v15, v16, v30);

        *(v12 + 4) = v17;
        _os_log_impl(&dword_230430000, v10, v11, "Removing data source and records for zone identifier %{public}s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        v18 = v14;
        v2 = v13;
        a1 = v25;
        MEMORY[0x23191A000](v18, -1, -1);
        MEMORY[0x23191A000](v12, -1, -1);
      }

      __swift_project_boxed_opaque_existential_5Tm(v27, v27[3]);
      sub_2304A4244();
      v19 = *(v2 + v29);
      if ((v19 & 0xC000000000000001) != 0)
      {

        v20 = sub_2304A6224();

        if (v20)
        {
          v31 = v20;
          type metadata accessor for ClientDataSource(0);
          swift_dynamicCast();
          v21 = v30[0];
          goto LABEL_20;
        }
      }

      else
      {
        if (!*(v19 + 16))
        {
          goto LABEL_6;
        }

        v22 = sub_230469CB8(v8);
        if (v23)
        {
          v21 = *(*(v19 + 56) + 8 * v22);

LABEL_20:

          if (v21)
          {
            sub_23049CB98();
            swift_beginAccess();

            sub_230478DEC(v24);
            swift_endAccess();
          }

          goto LABEL_6;
        }
      }

LABEL_6:
      ++v7;

      if (v28 == v7)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_230440644(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v7 = sub_2304A5B74();
  __swift_project_value_buffer(v7, qword_28149B008);

  v8 = sub_2304A5B54();
  v9 = sub_2304A5E74();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_23046A5C8(a1, a2, &v16);
    _os_log_impl(&dword_230430000, v8, v9, "Unregistering client: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x23191A000](v11, -1, -1);
    MEMORY[0x23191A000](v10, -1, -1);
  }

  v12 = *(v4 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
  v14 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);

  os_unfair_lock_lock(v12 + 4);
  sub_230464ECC();
  os_unfair_lock_unlock(v12 + 4);

  if (!v3)
  {
    __swift_project_boxed_opaque_existential_5Tm((v4 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator), *(v4 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 24));
    return sub_2304A4264();
  }

  return result;
}

uint64_t sub_230440874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v96 = a4;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54080, &qword_2304A7478);
  v9 = MEMORY[0x28223BE20](v90);
  v89 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v88 = &v83 - v11;
  v12 = sub_2304A53C4();
  v84 = *(v12 - 8);
  v85 = v12;
  MEMORY[0x28223BE20](v12);
  v86 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources;
  swift_beginAccess();
  v92 = a1;
  v87 = v14;

  v93 = a2;
  v16 = sub_230461C60(v15, a2, a3);
  v94 = a3;

  v17 = sub_23043D750(v16);
  v91 = v4;

  v18 = sub_230473E0C(v17);

  v19 = 0;
  v21 = v18 + 56;
  v20 = *(v18 + 56);
  v98 = v18;
  v22 = 1 << *(v18 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v20;
  v95 = OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection;
  v25 = (v22 + 63) >> 6;
  if ((v23 & v20) != 0)
  {
    while (1)
    {
      v26 = v19;
LABEL_8:
      v27 = (*(v98 + 48) + ((v26 << 10) | (16 * __clz(__rbit64(v24)))));
      v5 = *v27;
      v17 = v27[1];
      v28 = *(v96 + v95);

      v29 = [v28 remoteToken];
      v30 = sub_2304A5D14();
      v31 = [v29 hasEntitlement_];

      if (!v31)
      {
        break;
      }

      v24 &= v24 - 1;

      v19 = v26;
      if (!v24)
      {
        goto LABEL_5;
      }
    }

    if (qword_281499E38 == -1)
    {
      goto LABEL_38;
    }
  }

  else
  {
    while (1)
    {
LABEL_5:
      v26 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v26 >= v25)
      {
        break;
      }

      v24 = *(v21 + 8 * v26);
      ++v19;
      if (v24)
      {
        goto LABEL_8;
      }
    }

    v32 = (v92 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore);
    v17 = *(v92 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore + 24);
    __swift_project_boxed_opaque_existential_5Tm((v92 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore), v17);
    v33 = v91;
    result = sub_2304A5494();
    if (v33)
    {
      return result;
    }

    __swift_project_boxed_opaque_existential_5Tm(v32, v32[3]);
    v35 = sub_2304A5484();
    v98 = 0;
    v36 = *(v35 + 64);
    v91 = v35 + 64;
    v37 = 1 << *(v35 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v5 = v38 & v36;
    v86 = ((v37 + 63) >> 6);

    v40 = 0;
    v41 = MEMORY[0x277D84F90];
    v95 = v39;
    while (v5)
    {
      v96 = v41;
LABEL_22:
      v43 = __clz(__rbit64(v5)) | (v40 << 6);
      v44 = *(v35 + 56);
      v45 = (*(v35 + 48) + 16 * v43);
      v47 = *v45;
      v46 = v45[1];
      v48 = sub_2304A5294();
      v49 = *(v48 - 8);
      v50 = v44 + *(v49 + 72) * v43;
      v51 = v90;
      v17 = v88;
      (*(v49 + 16))(&v88[*(v90 + 48)], v50, v48);
      *v17 = v47;
      v17[1] = v46;
      v52 = v89;
      sub_230464B24(v17, v89, &qword_27DB54080, &qword_2304A7478);

      v53 = *(v51 + 48);
      v54 = sub_2304A5254();
      v55 = (*(v49 + 8))(v52 + v53, v48);
      MEMORY[0x28223BE20](v55);
      *(&v83 - 2) = v17;
      v56 = v98;
      v57 = sub_23043D2B8(sub_2304646C8, (&v83 - 4), v54);
      v98 = v56;

      sub_230464970(v17, &qword_27DB54080, &qword_2304A7478);
      v58 = *(v57 + 16);
      v41 = v96;
      v59 = *(v96 + 16);
      v60 = v59 + v58;
      if (__OFADD__(v59, v58))
      {
        goto LABEL_46;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v60 > v41[3] >> 1)
      {
        if (v59 <= v60)
        {
          v62 = v59 + v58;
        }

        else
        {
          v62 = v59;
        }

        v41 = sub_23045A0B8(isUniquelyReferenced_nonNull_native, v62, 1, v41, &qword_27DB54088, &qword_2304A7480, MEMORY[0x277D46370]);
      }

      v5 &= v5 - 1;
      if (*(v57 + 16))
      {
        v63 = (v41[3] >> 1) - v41[2];
        sub_2304A41F4();
        if (v63 < v58)
        {
          goto LABEL_48;
        }

        swift_arrayInitWithCopy();

        v35 = v95;
        if (v58)
        {
          v64 = v41[2];
          v65 = __OFADD__(v64, v58);
          v66 = v64 + v58;
          if (v65)
          {
            goto LABEL_49;
          }

          v41[2] = v66;
        }
      }

      else
      {

        v35 = v95;
        if (v58)
        {
          goto LABEL_47;
        }
      }
    }

    while (1)
    {
      v42 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v42 >= v86)
      {

        v67 = v92;
        __swift_project_boxed_opaque_existential_5Tm((v92 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator), *(v92 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 24));
        sub_2304A4654();

        v68 = v94;

        v70 = v93;
        v71 = v98;
        v72 = sub_230461C60(v69, v93, v68);

        v73 = sub_23043C994(v72);

        sub_230440248(v73);

        if (!v71)
        {
          v74 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_predefinedClientDescriptorIDs;
          swift_beginAccess();
          v75 = *(v67 + v74);

          v76 = sub_230495958(v70, v68, v75);

          if ((v76 & 1) == 0)
          {
            __swift_project_boxed_opaque_existential_5Tm((v67 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore), *(v67 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore + 24));
            return sub_2304A5424();
          }
        }

        return result;
      }

      v5 = *(v91 + 8 * v42);
      ++v40;
      if (v5)
      {
        v96 = v41;
        v40 = v42;
        goto LABEL_22;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }

  swift_once();
LABEL_38:
  v77 = sub_2304A5B74();
  __swift_project_value_buffer(v77, qword_28149B008);

  v78 = sub_2304A5B54();
  v79 = sub_2304A5E74();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v97[0] = v81;
    *v80 = 136446210;
    v82 = sub_23046A5C8(v5, v17, v97);

    *(v80 + 4) = v82;
    _os_log_impl(&dword_230430000, v78, v79, "Cannot remove client without entitlement: %{public}s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v81);
    MEMORY[0x23191A000](v81, -1, -1);
    MEMORY[0x23191A000](v80, -1, -1);
  }

  else
  {
  }

  (*(v84 + 104))(v86, *MEMORY[0x277D468C0], v85);
  sub_2304A53E4();
  sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
  swift_allocError();
  sub_2304A53D4();
  swift_willThrow();
}

uint64_t sub_230441210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v48 = a2;
  v45 = a1;
  v51 = sub_2304A4BE4();
  v57 = *(v51 - 8);
  v4 = MEMORY[0x28223BE20](v51);
  v52 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v49 = &v42 - v6;
  v7 = sub_2304A4434();
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54080, &qword_2304A7478);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54090, &qword_2304A7488);
  v14 = v13 - 8;
  v15 = MEMORY[0x28223BE20](v13);
  v47 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - v17;
  v19 = sub_2304A41D4();
  v55 = *(v19 - 8);
  v56 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v54 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v42 - v22;
  sub_230464B24(a1, v18, &unk_27DB54090, &qword_2304A7488);

  v24 = *(v14 + 56);
  sub_2304A52A4();
  v42 = v25;
  v26 = sub_2304A52C4();
  v27 = *(v26 - 8);
  v43 = *(v27 + 8);
  v44 = v27 + 8;
  v43(&v18[v24], v26);
  sub_230464B24(v48, v12, &qword_27DB54080, &qword_2304A7478);

  v28 = *(v10 + 56);
  sub_2304A5284();
  v29 = sub_2304A5294();
  (*(*(v29 - 8) + 8))(&v12[v28], v29);
  v46 = v23;
  sub_2304A41B4();
  (*(v55 + 16))(v54, v23, v56);
  v30 = v45;
  sub_230464B24(v45, v18, &unk_27DB54090, &qword_2304A7488);

  v31 = *(v14 + 56);
  v32 = v49;
  sub_2304A52B4();
  v33 = v43;
  v43(&v18[v31], v26);
  v34 = v32;
  v48 = sub_2304A4BC4();
  v35 = *(v57 + 8);
  v57 += 8;
  v36 = v34;
  v37 = v51;
  v35(v36, v51);
  v38 = v47;
  sub_230464B24(v30, v47, &unk_27DB54090, &qword_2304A7488);

  v39 = *(v14 + 56);
  v40 = v52;
  sub_2304A52B4();
  v33(v38 + v39, v26);
  sub_2304A4BD4();
  v35(v40, v37);
  sub_2304A4404();
  sub_2304A41E4();
  return (*(v55 + 8))(v46, v56);
}

void sub_230441708(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock;
  v8 = *(v2 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);

  os_unfair_lock_lock(v8 + 4);
  sub_230464ECC();
  os_unfair_lock_unlock(v8 + 4);

  if (!v3 && (a1 == 0xD000000000000011 && 0x80000002304A8260 == a2 || (sub_2304A62F4() & 1) != 0))
  {
    v12 = 0;
    v9 = *(v2 + v7);

    os_unfair_lock_lock(v9 + 4);
    sub_23044A3E0(v4, &v12);
    os_unfair_lock_unlock(v9 + 4);

    if (v12)
    {
      v10 = *(v4 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster + 32);
      __swift_project_boxed_opaque_existential_5Tm((v4 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster), *(v4 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster + 24));
      v11 = sub_2304A5144();
      (*(v10 + 8))(v11);
    }
  }
}

uint64_t sub_23044189C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v80 = a4;
  v84 = a1;
  v79 = sub_2304A51C4();
  v7 = *(v79 - 8);
  v8 = MEMORY[0x28223BE20](v79);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v77 = &v73 - v11;
  v12 = sub_2304A5294();
  v82 = *(v12 - 8);
  v83 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v81 = &v73 - v16;
  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v17 = sub_2304A5B74();
  v18 = __swift_project_value_buffer(v17, qword_28149B008);

  v19 = sub_2304A5B54();
  v20 = sub_2304A5E94();

  v21 = os_log_type_enabled(v19, v20);
  v78 = v7;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v76 = v18;
    v24 = v15;
    v25 = v10;
    v26 = a3;
    v27 = v23;
    v85 = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_23046A5C8(v84, a2, &v85);
    _os_log_impl(&dword_230430000, v19, v20, "Enabling client: %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    v28 = v27;
    a3 = v26;
    v10 = v25;
    v15 = v24;
    MEMORY[0x23191A000](v28, -1, -1);
    MEMORY[0x23191A000](v22, -1, -1);
  }

  __swift_project_boxed_opaque_existential_5Tm((a3 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore), *(a3 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore + 24));
  result = sub_2304A5484();
  if (!v4)
  {
    v30 = result;
    v76 = 0;
    if (*(result + 16) && (v31 = sub_230469C40(v84, a2), (v32 & 1) != 0))
    {
      v75 = a3;
      v33 = v81;
      v34 = *(v30 + 56) + *(v82 + 72) * v31;
      v74 = *(v82 + 16);
      v74(v81, v34, v83);

      sub_2304A5234();
      v35 = [*(v80 + OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection) remoteToken];
      v36 = sub_2304A5D14();

      v37 = [v35 hasEntitlement_];

      if (v37)
      {
        v38 = (v75 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore);
        __swift_project_boxed_opaque_existential_5Tm((v75 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore), *(v75 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore + 24));
        v39 = v76;
        v40 = sub_2304A5404();
        if (v39)
        {
          return (*(v82 + 8))(v81, v83);
        }

        v41 = v40;
        if (!*(v40 + 16) || (v42 = sub_230469C40(v84, a2), (v43 & 1) == 0))
        {

          v68 = sub_2304A5B54();
          v69 = sub_2304A5E74();

          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            v85 = v71;
            *v70 = 136446210;
            *(v70 + 4) = sub_23046A5C8(v84, a2, &v85);
            _os_log_impl(&dword_230430000, v68, v69, "Client has no settings: %{public}s", v70, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v71);
            MEMORY[0x23191A000](v71, -1, -1);
            MEMORY[0x23191A000](v70, -1, -1);
          }

          sub_230464618();
          swift_allocError();
          *v72 = 0;
          swift_willThrow();
          return (*(v82 + 8))(v81, v83);
        }

        v45 = v78;
        v44 = v79;
        (*(v78 + 16))(v10, *(v41 + 56) + *(v78 + 72) * v42, v79);

        v46 = v77;
        (*(v45 + 32))();
        if (sub_2304A5184())
        {

          v47 = sub_2304A5B54();
          v48 = sub_2304A5E94();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v85 = v50;
            *v49 = 136446210;
            *(v49 + 4) = sub_23046A5C8(v84, a2, &v85);
            _os_log_impl(&dword_230430000, v47, v48, "Client is already enabled: %{public}s", v49, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v50);
            MEMORY[0x23191A000](v50, -1, -1);
            MEMORY[0x23191A000](v49, -1, -1);
          }

          (*(v45 + 8))(v46, v44);
          return (*(v82 + 8))(v81, v83);
        }

        sub_2304A5194();
        __swift_project_boxed_opaque_existential_5Tm(v38, v38[3]);
        sub_2304A5434();
        __swift_project_boxed_opaque_existential_5Tm((v75 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator), *(v75 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 24));
        sub_2304A4254();
        (*(v45 + 8))(v46, v44);
        return (*(v82 + 8))(v81, v83);
      }

      else
      {
        v56 = v83;
        v74(v15, v33, v83);
        v57 = sub_2304A5B54();
        v58 = sub_2304A5E74();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v85 = v60;
          *v59 = 136446210;
          v61 = sub_2304A5234();
          v63 = v62;
          v64 = *(v82 + 8);
          v64(v15, v83);
          v65 = sub_23046A5C8(v61, v63, &v85);

          *(v59 + 4) = v65;
          _os_log_impl(&dword_230430000, v57, v58, "Client is missing entitlement: %{public}s", v59, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v60);
          MEMORY[0x23191A000](v60, -1, -1);
          v66 = v59;
          v33 = v81;
          v56 = v83;
          MEMORY[0x23191A000](v66, -1, -1);
        }

        else
        {

          v64 = *(v82 + 8);
          v64(v15, v56);
        }

        sub_230464618();
        swift_allocError();
        *v67 = 0;
        swift_willThrow();
        return (v64)(v33, v56);
      }
    }

    else
    {

      v51 = sub_2304A5B54();
      v52 = sub_2304A5E74();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v85 = v54;
        *v53 = 136446210;
        *(v53 + 4) = sub_23046A5C8(v84, a2, &v85);
        _os_log_impl(&dword_230430000, v51, v52, "Client is unknown: %{public}s", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v54);
        MEMORY[0x23191A000](v54, -1, -1);
        MEMORY[0x23191A000](v53, -1, -1);
      }

      sub_230464618();
      swift_allocError();
      *v55 = 0;
      return swift_willThrow();
    }
  }

  return result;
}

void sub_230442244(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock;
  v8 = *(v2 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);

  os_unfair_lock_lock(v8 + 4);
  sub_230464ECC();
  os_unfair_lock_unlock(v8 + 4);

  if (!v3 && (a1 == 0xD000000000000011 && 0x80000002304A8260 == a2 || (sub_2304A62F4() & 1) != 0))
  {
    v12 = 0;
    v9 = *(v2 + v7);

    os_unfair_lock_lock(v9 + 4);
    sub_23044A3E0(v4, &v12);
    os_unfair_lock_unlock(v9 + 4);

    if (v12)
    {
      v10 = *(v4 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster + 32);
      __swift_project_boxed_opaque_existential_5Tm((v4 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster), *(v4 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster + 24));
      v11 = sub_2304A5144();
      (*(v10 + 8))(v11);
    }
  }
}

void sub_2304423D8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v142 = a1;
  v9 = sub_2304A5224();
  v135 = *(v9 - 8);
  v136 = v9;
  MEMORY[0x28223BE20](v9);
  v134 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54030, &qword_2304A7450);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v137 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v138 = &v120 - v14;
  v15 = sub_2304A51C4();
  v132 = *(v15 - 8);
  v133 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v130 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v131 = &v120 - v18;
  v19 = sub_2304A5294();
  v140 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v139 = &v120 - v23;
  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v24 = sub_2304A5B74();
  __swift_project_value_buffer(v24, qword_28149B008);

  v25 = sub_2304A5B54();
  v26 = sub_2304A5E94();

  v27 = os_log_type_enabled(v25, v26);
  v141 = v19;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v129 = v4;
    v30 = v22;
    v31 = a4;
    v32 = a3;
    v33 = v29;
    v144[0] = v29;
    *v28 = 136446210;
    *(v28 + 4) = sub_23046A5C8(v142, a2, v144);
    _os_log_impl(&dword_230430000, v25, v26, "Disabling client: %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    v34 = v33;
    a3 = v32;
    a4 = v31;
    v22 = v30;
    v5 = v129;
    MEMORY[0x23191A000](v34, -1, -1);
    MEMORY[0x23191A000](v28, -1, -1);
  }

  __swift_project_boxed_opaque_existential_5Tm((a3 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore), *(a3 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore + 24));
  v35 = sub_2304A5484();
  if (v5)
  {
    return;
  }

  v36 = v35;
  v129 = 0;
  if (!*(v35 + 16) || (v37 = sub_230469C40(v142, a2), (v38 & 1) == 0))
  {

    v47 = sub_2304A5B54();
    v48 = sub_2304A5E74();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v144[0] = v50;
      *v49 = 136446210;
      *(v49 + 4) = sub_23046A5C8(v142, a2, v144);
      _os_log_impl(&dword_230430000, v47, v48, "Client is unknown: %{public}s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      MEMORY[0x23191A000](v50, -1, -1);
      MEMORY[0x23191A000](v49, -1, -1);
    }

    sub_230464618();
    swift_allocError();
    *v51 = 0;
    swift_willThrow();
    return;
  }

  v128 = a3;
  v39 = v139;
  v40 = *(v36 + 56) + v140[9] * v37;
  v127 = v140[2];
  v127(v139, v40, v141);

  sub_2304A5234();
  v41 = [*(a4 + OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection) remoteToken];
  v42 = sub_2304A5D14();

  v43 = [v41 hasEntitlement_];

  if (!v43)
  {
    v52 = v141;
    v127(v22, v39, v141);
    v53 = sub_2304A5B54();
    v54 = sub_2304A5E74();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v144[0] = v56;
      *v55 = 136446210;
      v57 = sub_2304A5234();
      v59 = v58;
      v60 = v140[1];
      v60(v22, v141);
      v61 = sub_23046A5C8(v57, v59, v144);
      v62 = v139;

      *(v55 + 4) = v61;
      _os_log_impl(&dword_230430000, v53, v54, "Client is missing entitlement: %{public}s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      MEMORY[0x23191A000](v56, -1, -1);
      v63 = v55;
      v52 = v141;
      MEMORY[0x23191A000](v63, -1, -1);
    }

    else
    {
      v62 = v39;

      v60 = v140[1];
      v60(v22, v52);
    }

    sub_230464618();
    swift_allocError();
    *v64 = 0;
    swift_willThrow();
    v60(v62, v52);
    return;
  }

  v44 = (v128 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore);
  __swift_project_boxed_opaque_existential_5Tm((v128 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore), *(v128 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore + 24));
  v45 = v129;
  v46 = sub_2304A5404();
  v129 = v45;
  if (v45)
  {
    (v140[1])(v139, v141);
    return;
  }

  v65 = v46;
  if (!*(v46 + 16) || (v66 = sub_230469C40(v142, a2), (v67 & 1) == 0))
  {

    v82 = sub_2304A5B54();
    v83 = sub_2304A5E74();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v144[0] = v85;
      *v84 = 136446210;
      *(v84 + 4) = sub_23046A5C8(v142, a2, v144);
      _os_log_impl(&dword_230430000, v82, v83, "Client has no settings: %{public}s", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v85);
      MEMORY[0x23191A000](v85, -1, -1);
      MEMORY[0x23191A000](v84, -1, -1);
    }

    v86 = v141;
    v87 = v139;
    sub_230464618();
    swift_allocError();
    *v88 = 0;
    swift_willThrow();
    (v140[1])(v87, v86);
    return;
  }

  v69 = v132;
  v68 = v133;
  v70 = v130;
  (*(v132 + 16))(v130, *(v65 + 56) + *(v132 + 72) * v66, v133);

  v71 = v131;
  (*(v69 + 32))(v131, v70, v68);
  if ((sub_2304A5184() & 1) == 0)
  {

    v112 = sub_2304A5B54();
    v113 = sub_2304A5E94();

    v114 = os_log_type_enabled(v112, v113);
    v115 = v139;
    if (v114)
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v144[0] = v117;
      *v116 = 136446210;
      *(v116 + 4) = sub_23046A5C8(v142, a2, v144);
      _os_log_impl(&dword_230430000, v112, v113, "Client is already disabled: %{public}s", v116, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v117);
      MEMORY[0x23191A000](v117, -1, -1);
      MEMORY[0x23191A000](v116, -1, -1);
    }

    (*(v132 + 8))(v71, v133);
    (v140[1])(v115, v141);
    return;
  }

  v121 = v44;
  v72 = sub_2304A5244();
  v74 = (v72 + 64);
  v73 = *(v72 + 64);
  v124 = v72;
  v75 = 1 << *(v72 + 32);
  v76 = -1;
  if (v75 < 64)
  {
    v76 = ~(-1 << v75);
  }

  v77 = v76 & v73;
  v127 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources;
  swift_beginAccess();
  v78 = 0;
  v79 = (v75 + 63) >> 6;
  v123 = v135 + 16;
  v122 = v135 + 32;
  v125 = (v135 + 8);
  v81 = v136;
  v80 = v137;
  v130 = v74;
  v126 = v79;
  while (v77)
  {
    v90 = v78;
LABEL_42:
    v93 = __clz(__rbit64(v77));
    v77 &= v77 - 1;
    v94 = v93 | (v90 << 6);
    v95 = (*(v124 + 48) + 16 * v94);
    v97 = *v95;
    v96 = v95[1];
    v99 = v134;
    v98 = v135;
    (*(v135 + 16))(v134, *(v124 + 56) + *(v135 + 72) * v94, v81);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54038, &qword_2304A7458);
    v101 = *(v100 + 48);
    v102 = v137;
    *v137 = v97;
    *(v102 + 1) = v96;
    v80 = v102;
    v81 = v136;
    (*(v98 + 32))(&v102[v101], v99, v136);
    (*(*(v100 - 8) + 56))(v80, 0, 1, v100);

LABEL_43:
    v103 = v138;
    sub_230464ABC(v80, v138, &qword_27DB54030, &qword_2304A7450);
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54038, &qword_2304A7458);
    if ((*(*(v104 - 8) + 48))(v103, 1, v104) == 1)
    {

      v118 = v131;
      sub_2304A5194();
      __swift_project_boxed_opaque_existential_5Tm(v121, v121[3]);
      v119 = v129;
      sub_2304A5434();
      if (!v119)
      {
        __swift_project_boxed_opaque_existential_5Tm((v128 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator), *(v128 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 24));
        sub_2304A4254();
      }

      (*(v132 + 8))(v118, v133);
      (v140[1])(v139, v141);
      return;
    }

    sub_2304A4984();
    v105 = sub_2304A4974();

    v106 = *(v127 + v128);
    if ((v106 & 0xC000000000000001) != 0)
    {

      v107 = sub_2304A6224();

      v80 = v137;
      if (!v107)
      {
        goto LABEL_29;
      }

      v143 = v107;
      type metadata accessor for ClientDataSource(0);
      swift_dynamicCast();
      v108 = v144[5];
    }

    else
    {
      v80 = v137;
      if (!*(v106 + 16))
      {
        goto LABEL_29;
      }

      v109 = sub_230469CB8(v105);
      if ((v110 & 1) == 0)
      {

LABEL_29:
        v89 = v138 + *(v104 + 48);
LABEL_30:
        v79 = v126;

        v74 = v130;
        goto LABEL_31;
      }

      v108 = *(*(v106 + 56) + 8 * v109);
    }

    v89 = v138 + *(v104 + 48);
    if (!v108)
    {
      v81 = v136;
      goto LABEL_30;
    }

    sub_23049CBB8();

    v81 = v136;
    v74 = v130;
    v79 = v126;
LABEL_31:
    (*v125)(v89, v81);
  }

  if (v79 <= v78 + 1)
  {
    v91 = v78 + 1;
  }

  else
  {
    v91 = v79;
  }

  v92 = v91 - 1;
  while (1)
  {
    v90 = v78 + 1;
    if (__OFADD__(v78, 1))
    {
      break;
    }

    if (v90 >= v79)
    {
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54038, &qword_2304A7458);
      (*(*(v111 - 8) + 56))(v80, 1, 1, v111);
      v77 = 0;
      v78 = v92;
      goto LABEL_43;
    }

    v77 = *&v74[8 * v90];
    ++v78;
    if (v77)
    {
      v78 = v90;
      goto LABEL_42;
    }
  }

  __break(1u);
}

uint64_t sub_2304432E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v75 = a4;
  v76 = a2;
  v77 = a3;
  v74 = a5;
  v6 = sub_2304A51C4();
  v73 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2304A5294();
  v78 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v68 - v13;
  __swift_project_boxed_opaque_existential_5Tm((a1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore), *(a1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore + 24));
  v15 = v79;
  result = sub_2304A5484();
  if (!v15)
  {
    v17 = result;
    v68 = v8;
    v69 = a1;
    v70 = v12;
    v71 = 0;
    v19 = v74;
    v18 = v75;
    v72 = v14;
    v79 = v9;
    v20 = v77;
    v21 = v78;
    v22 = v76;
    if (*(result + 16) && (v23 = sub_230469C40(v76, v77), (v24 & 1) != 0))
    {
      v25 = *(v17 + 56) + *(v21 + 72) * v23;
      v26 = v72;
      v27 = *(v21 + 16);
      v27(v72, v25, v79);

      sub_2304A5234();
      v28 = [*(v18 + OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection) remoteToken];
      v29 = sub_2304A5D14();

      v30 = [v28 hasEntitlement_];

      if (v30)
      {
        __swift_project_boxed_opaque_existential_5Tm((v69 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore), *(v69 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore + 24));
        v31 = v71;
        v32 = sub_2304A5404();
        if (v31)
        {
          return (*(v78 + 8))(v26, v79);
        }

        else
        {
          v54 = v32;
          if (*(v32 + 16) && (v55 = sub_230469C40(v22, v77), (v56 & 1) != 0))
          {
            v57 = v73;
            v58 = v68;
            (*(v73 + 16))(v68, *(v54 + 56) + *(v73 + 72) * v55, v6);

            v59 = sub_2304A5184();
            (*(v57 + 8))(v58, v6);
            result = (*(v78 + 8))(v26, v79);
            *v19 = v59 & 1;
          }

          else
          {

            if (qword_281499E38 != -1)
            {
              swift_once();
            }

            v60 = sub_2304A5B74();
            __swift_project_value_buffer(v60, qword_28149B008);
            v61 = v77;

            v62 = sub_2304A5B54();
            v63 = sub_2304A5E74();

            if (os_log_type_enabled(v62, v63))
            {
              v64 = swift_slowAlloc();
              v65 = swift_slowAlloc();
              v80 = v65;
              *v64 = 136446210;
              *(v64 + 4) = sub_23046A5C8(v22, v61, &v80);
              _os_log_impl(&dword_230430000, v62, v63, "Client is unknown: %{public}s", v64, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v65);
              MEMORY[0x23191A000](v65, -1, -1);
              MEMORY[0x23191A000](v64, -1, -1);
            }

            v66 = v79;
            sub_230464618();
            swift_allocError();
            *v67 = 0;
            swift_willThrow();
            return (*(v78 + 8))(v26, v66);
          }
        }
      }

      else
      {
        if (qword_281499E38 != -1)
        {
          swift_once();
        }

        v39 = sub_2304A5B74();
        __swift_project_value_buffer(v39, qword_28149B008);
        v40 = v70;
        v41 = v79;
        v27(v70, v26, v79);
        v42 = sub_2304A5B54();
        v43 = sub_2304A5E74();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = v40;
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v80 = v46;
          *v45 = 136446210;
          v47 = sub_2304A5234();
          v49 = v48;
          v50 = *(v78 + 8);
          v50(v44, v79);
          v51 = sub_23046A5C8(v47, v49, &v80);
          v26 = v72;

          *(v45 + 4) = v51;
          _os_log_impl(&dword_230430000, v42, v43, "Client is missing entitlement: %{public}s", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v46);
          v52 = v46;
          v41 = v79;
          MEMORY[0x23191A000](v52, -1, -1);
          MEMORY[0x23191A000](v45, -1, -1);
        }

        else
        {

          v50 = *(v78 + 8);
          v50(v40, v41);
        }

        sub_230464618();
        swift_allocError();
        *v53 = 0;
        swift_willThrow();
        return (v50)(v26, v41);
      }
    }

    else
    {

      if (qword_281499E38 != -1)
      {
        swift_once();
      }

      v33 = sub_2304A5B74();
      __swift_project_value_buffer(v33, qword_28149B008);

      v34 = sub_2304A5B54();
      v35 = sub_2304A5E74();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v80 = v37;
        *v36 = 136446210;
        *(v36 + 4) = sub_23046A5C8(v22, v20, &v80);
        _os_log_impl(&dword_230430000, v34, v35, "Client is unknown: %{public}s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v37);
        MEMORY[0x23191A000](v37, -1, -1);
        MEMORY[0x23191A000](v36, -1, -1);
      }

      sub_230464618();
      swift_allocError();
      *v38 = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_230443AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_project_boxed_opaque_existential_5Tm((a1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore), *(a1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore + 24));
  result = sub_2304A5484();
  if (!v4)
  {
    v9 = result;
    if (*(result + 16) && (v10 = sub_230469C40(a2, a3), (v11 & 1) != 0))
    {
      v12 = v10;
      v13 = *(v9 + 56);
      v14 = sub_2304A5294();
      v15 = *(v14 - 8);
      (*(v15 + 16))(a4, v13 + *(v15 + 72) * v12, v14);

      return (*(v15 + 56))(a4, 0, 1, v14);
    }

    else
    {

      v16 = sub_2304A5294();
      return (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
    }
  }

  return result;
}

void sub_230443C58(unint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v155 = a5;
  v154 = a4;
  v156 = a3;
  v158 = a2;
  v150 = sub_2304A53E4();
  v152 = *(v150 - 8);
  v6 = MEMORY[0x28223BE20](v150);
  v146[1] = v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v146[0] = v146 - v9;
  MEMORY[0x28223BE20](v8);
  v147 = v146 - v10;
  v148 = sub_2304A53C4();
  v151 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v149 = v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2304A4FF4();
  v13 = *(v12 - 1);
  v14 = MEMORY[0x28223BE20](v12);
  v163 = v146 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v166 = v146 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v146 - v19;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = &off_2304A7000; v21; i = &off_2304A7000)
  {
    v23 = 0;
    v165 = a1 & 0xC000000000000001;
    v153 = a1 & 0xFFFFFFFFFFFFFF8;
    v24 = MEMORY[0x277D84F98];
    *&v18 = *(i + 70);
    v157 = v18;
    v160 = v21;
    v161 = a1;
    *&v164 = v12;
    v167 = v13 + 1;
    v159 = v20;
    while (1)
    {
      if (v165)
      {
        v25 = MEMORY[0x231919680](v23, a1);
      }

      else
      {
        if (v23 >= *(v153 + 16))
        {
          goto LABEL_43;
        }

        v25 = *(a1 + 8 * v23 + 32);
      }

      v13 = v25;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      v170 = v23 + 1;
      v171 = v23;
      if (qword_281499E38 != -1)
      {
        swift_once();
      }

      v26 = sub_2304A5B74();
      v27 = __swift_project_value_buffer(v26, qword_28149B008);
      v28 = v13;
      v169 = v27;
      v29 = sub_2304A5B54();
      v30 = sub_2304A5E94();

      v31 = os_log_type_enabled(v29, v30);
      v172 = v24;
      if (v31)
      {
        v32 = swift_slowAlloc();
        v168 = swift_slowAlloc();
        v173 = v168;
        *v32 = v157;
        sub_2304A5944();
        sub_230464B8C(&qword_281499F78, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
        v33 = v164;
        v34 = sub_2304A62D4();
        v36 = v35;
        v37 = v167;
        (*v167)(v20, v33);
        v38 = sub_23046A5C8(v34, v36, &v173);

        *(v32 + 4) = v38;
        _os_log_impl(&dword_230430000, v29, v30, "Adding record with ID: %{public}s", v32, 0xCu);
        v39 = v168;
        __swift_destroy_boxed_opaque_existential_0Tm(v168);
        MEMORY[0x23191A000](v39, -1, -1);
        MEMORY[0x23191A000](v32, -1, -1);
      }

      else
      {

        v33 = v164;
        v37 = v167;
      }

      sub_2304A5944();
      v40 = sub_2304A4FB4();
      v42 = v41;
      v43 = *v37;
      (*v37)(v20, v33);
      v173 = v40;
      v174 = v42;
      v176 = 14906;
      v177 = 0xE200000000000000;
      sub_2304645C4();
      v44 = sub_2304A5F84();

      if (v44)
      {
        v67 = v33;
        v171 = v43;
        v68 = v28;
        v69 = sub_2304A5B54();
        v70 = sub_2304A5E74();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v173 = v72;
          *v71 = v157;
          sub_2304A5944();
          sub_230464B8C(&qword_281499F78, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
          v73 = sub_2304A62D4();
          v75 = v74;
          v171(v20, v67);
          v76 = sub_23046A5C8(v73, v75, &v173);

          *(v71 + 4) = v76;
          v77 = "Zone ID is illegal in record ID: %{public}s";
          goto LABEL_33;
        }

LABEL_34:

        sub_230464618();
        swift_allocError();
        *v83 = 0;
LABEL_41:
        swift_willThrow();

        return;
      }

      sub_2304A5944();
      v45 = sub_2304A4F84();
      v47 = v46;
      (v43)(v20, v33);
      v173 = v45;
      v174 = v47;
      v176 = 14906;
      v177 = 0xE200000000000000;
      v48 = sub_2304A5F84();

      if (v48)
      {
        v78 = v33;
        v171 = v43;
        v68 = v28;
        v69 = sub_2304A5B54();
        v70 = sub_2304A5E74();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v173 = v72;
          *v71 = v157;
          sub_2304A5944();
          sub_230464B8C(&qword_281499F78, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
          v79 = sub_2304A62D4();
          v81 = v80;
          v171(v20, v78);
          v82 = sub_23046A5C8(v79, v81, &v173);

          *(v71 + 4) = v82;
          v77 = "Client ID is illegal in record ID: %{public}s";
LABEL_33:
          _os_log_impl(&dword_230430000, v69, v70, v77, v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v72);
          MEMORY[0x23191A000](v72, -1, -1);
          MEMORY[0x23191A000](v71, -1, -1);
        }

        goto LABEL_34;
      }

      v49 = v166;
      sub_2304A5944();
      v50 = sub_2304A4FA4();
      v52 = v51;
      (v43)(v49, v33);

      v53 = HIBYTE(v52) & 0xF;
      if ((v52 & 0x2000000000000000) == 0)
      {
        v53 = v50 & 0xFFFFFFFFFFFFLL;
      }

      v54 = v28;
      if (!v53)
      {
        v84 = sub_2304A5B54();
        v85 = sub_2304A5E74();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&dword_230430000, v84, v85, "Empty record ID is illegal", v86, 2u);
          MEMORY[0x23191A000](v86, -1, -1);
        }

        (*(v151 + 104))(v149, *MEMORY[0x277D468C0], v148);
        sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
        swift_allocError();
        sub_2304A53D4();
        swift_willThrow();

        return;
      }

      v55 = v43;
      v56 = sub_2304A5954();
      sub_2304A4E84();
      v57 = sub_2304A4E74();
      if (v56 >= 1 && v57 < v56)
      {
        v68 = v54;
        v87 = sub_2304A5B54();
        v88 = sub_2304A5E74();

        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v171 = v55;
          v91 = v90;
          v173 = v90;
          *v89 = v157;
          sub_2304A5944();
          sub_230464B8C(&qword_281499F78, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
          v92 = sub_2304A62D4();
          v94 = v93;
          v171(v20, v33);
          v95 = sub_23046A5C8(v92, v94, &v173);

          *(v89 + 4) = v95;
          _os_log_impl(&dword_230430000, v87, v88, "Record is too large with ID: %{public}s", v89, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v91);
          MEMORY[0x23191A000](v91, -1, -1);
          MEMORY[0x23191A000](v89, -1, -1);
        }

        (*(v151 + 104))(v149, *MEMORY[0x277D468C0], v148);
        sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
        swift_allocError();
        sub_2304A53D4();
        goto LABEL_41;
      }

      v168 = sub_2304A4984();
      sub_2304A5944();
      sub_2304A4FB4();
      v58 = v33;
      (v43)(v20, v33);
      v59 = v163;
      v169 = v54;
      sub_2304A5944();
      sub_2304A4F84();
      (v43)(v59, v58);
      v13 = sub_2304A4974();

      v60 = v172;
      if (v172[2] && (v61 = sub_230469CB8(v13), (v62 & 1) != 0))
      {
        v173 = *(*(v60 + 56) + 8 * v61);
      }

      else
      {
        v173 = MEMORY[0x277D84F90];
      }

      v63 = v160;
      a1 = v161;
      v64 = v169;
      MEMORY[0x231919320]();
      if (*((v173 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v173 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2304A5DE4();
      }

      sub_2304A5DF4();
      v65 = v173;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v176 = v60;
      v12 = &v176;
      sub_23045BE1C(v65, v13, isUniquelyReferenced_nonNull_native);

      v24 = v176;
      v23 = v171 + 1;
      v20 = v159;
      if (v170 == v63)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v21 = sub_2304A6044();
  }

  v24 = MEMORY[0x277D84F98];
LABEL_46:
  v96 = v24 + 64;
  v97 = 1 << *(v24 + 32);
  v98 = -1;
  if (v97 < 64)
  {
    v98 = ~(-1 << v97);
  }

  v99 = v98 & *(v24 + 64);
  v100 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources;
  v169 = OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection;
  v172 = v24;

  v170 = v100;
  swift_beginAccess();
  v101 = 0;
  v102 = (v97 + 63) >> 6;
  LODWORD(v163) = *MEMORY[0x277D468C0];
  v167 = (v151 + 104);
  v166 = (v152 + 32);
  v168 = MEMORY[0x277D84F90];
  LODWORD(v165) = *MEMORY[0x277D468D0];
  *&v103 = 136446210;
  v164 = v103;
  while (v99)
  {
    v104 = v101;
LABEL_54:
    v105 = (v104 << 9) | (8 * __clz(__rbit64(v99)));
    v106 = *(v172[6] + v105);
    v99 &= v99 - 1;
    v107 = *(v172[7] + v105);
    v108 = *(v158 + v170);
    v171 = v106;
    if ((v108 & 0xC000000000000001) != 0)
    {
      swift_retain_n();

      v109 = sub_2304A6224();

      if (!v109)
      {
        goto LABEL_64;
      }

      v178 = v109;
      type metadata accessor for ClientDataSource(0);
      swift_dynamicCast();
      v110 = v176;
      goto LABEL_60;
    }

    v111 = *(v108 + 16);

    if (v111)
    {

      v112 = sub_230469CB8(v106);
      if ((v113 & 1) == 0)
      {
LABEL_64:

        goto LABEL_65;
      }

      v110 = *(*(v108 + 56) + 8 * v112);

LABEL_60:

      if (!v110)
      {
        goto LABEL_65;
      }

      sub_2304A5234();
      v114 = [*&v169[v156] remoteToken];
      v115 = sub_2304A5D14();

      v116 = [v114 hasEntitlement_];

      if ((v116 & 1) == 0)
      {

        if (qword_281499E38 != -1)
        {
          swift_once();
        }

        v130 = sub_2304A5B74();
        __swift_project_value_buffer(v130, qword_28149B008);

        v131 = sub_2304A5B54();
        v132 = sub_2304A5E74();

        if (os_log_type_enabled(v131, v132))
        {
          v133 = swift_slowAlloc();
          v161 = swift_slowAlloc();
          v176 = v161;
          *v133 = v164;
          v178 = v171;
          sub_2304A4984();
          sub_230464B8C(&qword_27DB54028, MEMORY[0x277D464B8], MEMORY[0x277D464D0]);
          LODWORD(v160) = v132;
          v134 = sub_2304A62D4();
          v136 = sub_23046A5C8(v134, v135, &v176);

          *(v133 + 4) = v136;
          _os_log_impl(&dword_230430000, v131, v160, "Cannot add a record to a zone without entitlement: %{public}s", v133, 0xCu);
          v137 = v161;
          __swift_destroy_boxed_opaque_existential_0Tm(v161);
          MEMORY[0x23191A000](v137, -1, -1);
          MEMORY[0x23191A000](v133, -1, -1);
        }

        (*v167)(v149, v163, v148);
        sub_2304A53D4();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v168 = sub_23045A0B8(0, v168[2] + 1, 1, v168, &unk_27DB54068, &qword_2304A7470, MEMORY[0x277D468E0]);
        }

        v127 = v168[2];
        v138 = v168[3];
        v128 = v127 + 1;
        if (v127 >= v138 >> 1)
        {
          v168 = sub_23045A0B8((v138 > 1), v127 + 1, 1, v168, &unk_27DB54068, &qword_2304A7470, MEMORY[0x277D468E0]);
        }

        v129 = &v175;
        goto LABEL_83;
      }

      v117 = v162;
      sub_230497E44(v107, v154, v155);
      v162 = v117;
      if (v117)
      {

        goto LABEL_88;
      }

      v101 = v104;
    }

    else
    {
LABEL_65:

      if (qword_281499E38 != -1)
      {
        swift_once();
      }

      v118 = sub_2304A5B74();
      __swift_project_value_buffer(v118, qword_28149B008);

      v119 = sub_2304A5B54();
      v120 = sub_2304A5E74();

      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        v176 = v161;
        *v121 = v164;
        v178 = v106;
        sub_2304A4984();
        sub_230464B8C(&qword_27DB54028, MEMORY[0x277D464B8], MEMORY[0x277D464D0]);
        v122 = sub_2304A62D4();
        v124 = sub_23046A5C8(v122, v123, &v176);

        *(v121 + 4) = v124;
        _os_log_impl(&dword_230430000, v119, v120, "Cannot add a record to a zone that does not exist: %{public}s", v121, 0xCu);
        v125 = v161;
        __swift_destroy_boxed_opaque_existential_0Tm(v161);
        MEMORY[0x23191A000](v125, -1, -1);
        MEMORY[0x23191A000](v121, -1, -1);
      }

      (*v167)(v149, v165, v148);
      sub_2304A53D4();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v168 = sub_23045A0B8(0, v168[2] + 1, 1, v168, &unk_27DB54068, &qword_2304A7470, MEMORY[0x277D468E0]);
      }

      v127 = v168[2];
      v126 = v168[3];
      v128 = v127 + 1;
      if (v127 >= v126 >> 1)
      {
        v168 = sub_23045A0B8((v126 > 1), v127 + 1, 1, v168, &unk_27DB54068, &qword_2304A7470, MEMORY[0x277D468E0]);
      }

      v129 = &v176;
LABEL_83:
      v139 = *(v129 - 32);
      v140 = v168;
      v168[2] = v128;
      (*(v152 + 32))(v140 + ((*(v152 + 80) + 32) & ~*(v152 + 80)) + *(v152 + 72) * v127, v139, v150);
      v101 = v104;
    }
  }

  while (1)
  {
    v104 = v101 + 1;
    if (__OFADD__(v101, 1))
    {
      __break(1u);
      return;
    }

    if (v104 >= v102)
    {
      break;
    }

    v99 = *(v96 + 8 * v104);
    ++v101;
    if (v99)
    {
      goto LABEL_54;
    }
  }

  if (v168[2])
  {
    v141 = v152;
    v142 = *(v152 + 16);
    v143 = v147;
    v144 = v150;
    v142(v147, v168 + ((*(v152 + 80) + 32) & ~*(v152 + 80)), v150);

    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
    swift_allocError();
    v142(v145, v143, v144);
    swift_willThrow();
    (*(v141 + 8))(v143, v144);

    return;
  }

LABEL_88:
}

uint64_t sub_230445334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2304A5FB4();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_230460148(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = sub_2304A5294();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_2304453F0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    v11 = *(sub_2304A4FF4() - 8);
    v12 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    while (1)
    {
      v14 = MEMORY[0x2319199F0]();
      sub_2304454F4(v12, a2, a3, a4, &v15);
      if (v5)
      {
        break;
      }

      v5 = 0;
      objc_autoreleasePoolPop(v14);
      v12 += v13;
      if (!--v6)
      {
        return;
      }
    }

    objc_autoreleasePoolPop(v14);
  }
}

void sub_2304454F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v72 = a5;
  v65 = a4;
  v67 = a3;
  v7 = sub_2304A53C4();
  v69 = *(v7 - 8);
  v70 = v7;
  MEMORY[0x28223BE20](v7);
  v71 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2304A4FF4();
  v73 = *(v68 - 8);
  v9 = MEMORY[0x28223BE20](v68);
  v64 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v63 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v63 - v14;
  sub_2304A4984();
  sub_2304A4FB4();
  sub_2304A4F84();
  v16 = sub_2304A4974();

  v17 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources;
  swift_beginAccess();
  v18 = *(a2 + v17);

  v19 = sub_230496468(v16, v18);

  if (!v19)
  {
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v29 = sub_2304A5B74();
    __swift_project_value_buffer(v29, qword_28149B008);
    v30 = v73;
    v31 = v68;
    (*(v73 + 16))(v15, a1, v68);
    v32 = sub_2304A5B54();
    v33 = sub_2304A5E74();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v74 = v35;
      *v34 = 136446210;
      sub_230464B8C(&qword_281499F78, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
      v36 = sub_2304A62D4();
      v38 = v37;
      (*(v30 + 8))(v15, v31);
      v39 = sub_23046A5C8(v36, v38, &v74);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_230430000, v32, v33, "Cannot remove a record from a zone that does not exist: %{public}s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x23191A000](v35, -1, -1);
      MEMORY[0x23191A000](v34, -1, -1);
    }

    else
    {

      (*(v30 + 8))(v15, v31);
    }

    (*(v69 + 104))(v71, *MEMORY[0x277D468D0], v70);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
    v28 = swift_allocError();
    sub_2304A53D4();
    swift_willThrow();
    goto LABEL_23;
  }

  v20 = sub_230496CAC(a1, 0, 0);
  if (!v20)
  {
    v40 = v73;
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v41 = sub_2304A5B74();
    __swift_project_value_buffer(v41, qword_28149B008);
    v42 = v68;
    (*(v40 + 16))(v13, a1, v68);
    v43 = sub_2304A5B54();
    v44 = sub_2304A5E74();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v74 = v67;
      *v45 = 136446210;
      sub_230464B8C(&qword_281499F78, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
      v46 = sub_2304A62D4();
      v48 = v47;
      (*(v40 + 8))(v13, v42);
      v49 = sub_23046A5C8(v46, v48, &v74);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_230430000, v43, v44, "Cannot remove a record that does not exist: %{public}s", v45, 0xCu);
      v50 = v67;
      __swift_destroy_boxed_opaque_existential_0Tm(v67);
      MEMORY[0x23191A000](v50, -1, -1);
      MEMORY[0x23191A000](v45, -1, -1);
    }

    else
    {

      (*(v40 + 8))(v13, v42);
    }

    (*(v69 + 104))(v71, *MEMORY[0x277D468D0], v70);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
    v28 = swift_allocError();
    sub_2304A53D4();
    swift_willThrow();

LABEL_23:

    goto LABEL_24;
  }

  v21 = v20;
  sub_2304A5234();
  v22 = [*(v67 + OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection) remoteToken];
  v23 = sub_2304A5D14();

  v24 = [v22 hasEntitlement_];

  v25 = v73;
  if ((v24 & 1) == 0)
  {
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v51 = sub_2304A5B74();
    __swift_project_value_buffer(v51, qword_28149B008);
    v52 = v21;
    v53 = sub_2304A5B54();
    v54 = sub_2304A5E74();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v74 = v66;
      *v55 = 136446210;
      v56 = v64;
      LODWORD(v65) = v54;
      sub_2304A5944();
      sub_230464B8C(&qword_281499F78, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
      v57 = v68;
      v58 = sub_2304A62D4();
      v67 = v52;
      v60 = v59;
      (*(v25 + 8))(v56, v57);
      v61 = sub_23046A5C8(v58, v60, &v74);
      v52 = v67;

      *(v55 + 4) = v61;
      _os_log_impl(&dword_230430000, v53, v65, "Cannot remove a record to a zone without entitlement: %{public}s", v55, 0xCu);
      v62 = v66;
      __swift_destroy_boxed_opaque_existential_0Tm(v66);
      MEMORY[0x23191A000](v62, -1, -1);
      MEMORY[0x23191A000](v55, -1, -1);
    }

    (*(v69 + 104))(v71, *MEMORY[0x277D468C0], v70);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
    v28 = swift_allocError();
    sub_2304A53D4();
    swift_willThrow();

    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54020, &unk_2304A8040);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2304A7270;
  sub_2304A5944();
  v27 = v66;
  sub_23049D5C0(v26, v65);
  v28 = v27;

  if (v27)
  {
LABEL_24:
    *v72 = v28;
  }
}

void sub_230445F6C()
{
  swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);

  os_unfair_lock_lock(v2 + 4);
  sub_230464E54(&v3);
  os_unfair_lock_unlock(v2 + 4);
  if (v1)
  {
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_230446050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, void *a6@<X8>)
{
  v152 = a5;
  v151 = a4;
  v157 = a3;
  v147 = a6;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54050, &qword_2304A7468);
  v8 = MEMORY[0x28223BE20](v171);
  v170 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v169 = &v144 - v11;
  MEMORY[0x28223BE20](v10);
  v168 = &v144 - v12;
  v13 = sub_2304A4FF4();
  v14 = MEMORY[0x28223BE20](v13);
  v166 = &v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v156 = &v144 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v150 = &v144 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v149 = &v144 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v148 = &v144 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v25 = MEMORY[0x28223BE20](v24);
  v160 = &v144 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v31 = &v144 - v30;
  v182 = MEMORY[0x277D84F98];
  v32 = *(a1 + 16);
  v175 = v27;
  v172 = v28;
  if (v32)
  {
    v146 = v29;
    v154 = OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection;
    v33 = v28;
    v163 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v34 = a1 + v163;
    v165 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources;
    swift_beginAccess();
    v155 = 0;
    v35 = *(v33 + 16);
    v33 += 16;
    v176 = (v33 - 8);
    v177 = v35;
    v162 = (v33 + 16);
    v36 = MEMORY[0x277D84F90];
    v178 = v33;
    v37 = *(v33 + 56);
    *&v38 = 136446210;
    v158 = v38;
    v161 = a2;
    v167 = v31;
    v164 = v37;
    v35(v31, v34, v13);
    while (1)
    {
      if (*(v182 + 16))
      {
        sub_230469D9C(v31);
        if (v39)
        {
          (*v176)(v31, v13);
          goto LABEL_4;
        }
      }

      v174 = v36;
      sub_2304A4984();
      sub_2304A4FB4();
      sub_2304A4F84();
      v40 = sub_2304A4974();

      v41 = *(a2 + v165);
      v173 = v40;
      if ((v41 & 0xC000000000000001) != 0)
      {

        v42 = sub_2304A6224();

        if (!v42)
        {

          v31 = v167;
          goto LABEL_26;
        }

        v179 = v42;
        type metadata accessor for ClientDataSource(0);
        swift_dynamicCast();
        v43 = v181;

        v31 = v167;
        if (!v43)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v31 = v167;
        if (!*(v41 + 16))
        {
          goto LABEL_26;
        }

        v44 = sub_230469CB8(v40);
        if ((v45 & 1) == 0)
        {

LABEL_26:
          if (qword_281499E38 != -1)
          {
            swift_once();
          }

          v71 = sub_2304A5B74();
          __swift_project_value_buffer(v71, qword_28149B008);
          v72 = v160;
          v177(v160, v31, v13);
          v73 = sub_2304A5B54();
          v74 = sub_2304A5E74();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            v76 = swift_slowAlloc();
            v181 = v76;
            *v75 = v158;
            sub_230464B8C(&qword_281499F78, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
            v77 = sub_2304A62D4();
            v79 = v78;
            v80 = v72;
            v81 = *v176;
            (*v176)(v80, v175);
            v82 = sub_23046A5C8(v77, v79, &v181);
            v13 = v175;

            *(v75 + 4) = v82;
            _os_log_impl(&dword_230430000, v73, v74, "Cannot find a record in a zone that does not exist: %{public}s", v75, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v76);
            v83 = v76;
            v31 = v167;
            MEMORY[0x23191A000](v83, -1, -1);
            MEMORY[0x23191A000](v75, -1, -1);
          }

          else
          {

            v84 = v72;
            v81 = *v176;
            (*v176)(v84, v13);
          }

          v37 = v164;
          v177(v166, v31, v13);
          v85 = v174;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v85 = sub_23045A0B8(0, *(v85 + 2) + 1, 1, v85, &qword_27DB54020, &unk_2304A8040, MEMORY[0x277D46790]);
          }

          v87 = *(v85 + 2);
          v86 = *(v85 + 3);
          v88 = v85;
          if (v87 >= v86 >> 1)
          {
            v88 = sub_23045A0B8((v86 > 1), v87 + 1, 1, v85, &qword_27DB54020, &unk_2304A8040, MEMORY[0x277D46790]);
          }

          v81(v31, v13);
          *(v88 + 2) = v87 + 1;
          v36 = v88;
          (*v162)(&v88[v163 + v87 * v37], v166, v13);
LABEL_36:
          a2 = v161;
          goto LABEL_4;
        }

        v43 = *(*(v41 + 56) + 8 * v44);

        if (!v43)
        {
          goto LABEL_26;
        }
      }

      sub_2304A5234();
      v46 = [*(v157 + v154) remoteToken];
      v47 = sub_2304A5D14();

      v48 = [v46 hasEntitlement_];

      v159 = v43;
      if ((v48 & 1) == 0)
      {
        if (qword_281499E38 != -1)
        {
          swift_once();
        }

        v59 = sub_2304A5B74();
        __swift_project_value_buffer(v59, qword_28149B008);
        v60 = v150;
        v177(v150, v31, v13);
        v61 = sub_2304A5B54();
        v62 = sub_2304A5E74();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v153 = swift_slowAlloc();
          v181 = v153;
          *v63 = v158;
          sub_230464B8C(&qword_281499F78, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
          v64 = sub_2304A62D4();
          v66 = v65;
          v67 = v60;
          v68 = *v176;
          (*v176)(v67, v13);
          v69 = sub_23046A5C8(v64, v66, &v181);
          v31 = v167;

          *(v63 + 4) = v69;
          _os_log_impl(&dword_230430000, v61, v62, "Cannot access a record in a zone without entitlement: %{public}s", v63, 0xCu);
          v70 = v153;
          __swift_destroy_boxed_opaque_existential_0Tm(v153);
          MEMORY[0x23191A000](v70, -1, -1);
          MEMORY[0x23191A000](v63, -1, -1);
        }

        else
        {

          v89 = v60;
          v68 = *v176;
          (*v176)(v89, v13);
        }

        v37 = v164;
        v177(v156, v31, v13);
        v90 = v174;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_23045A0B8(0, *(v90 + 2) + 1, 1, v90, &qword_27DB54020, &unk_2304A8040, MEMORY[0x277D46790]);
        }

        v92 = *(v90 + 2);
        v91 = *(v90 + 3);
        v93 = v90;
        if (v92 >= v91 >> 1)
        {
          v93 = sub_23045A0B8((v91 > 1), v92 + 1, 1, v90, &qword_27DB54020, &unk_2304A8040, MEMORY[0x277D46790]);
        }

        v68(v31, v13);
        *(v93 + 2) = v92 + 1;
        v36 = v93;
        (*v162)(&v93[v163 + v92 * v37], v156, v13);
        goto LABEL_36;
      }

      v49 = sub_230496CAC(v31, v151 & 1, v152 & 1);
      v153 = v49;
      if (v49)
      {
        v50 = v49;
        v51 = v148;
        v177(v148, v31, v13);
        v52 = v50;
        v53 = v50;
        v36 = v52;
        sub_230477ABC(v53, v51);
        v54 = sub_2304A5954();
        sub_2304A4FA4();
        v55 = sub_2304A5D64();

        v56 = v54 + v55;
        if (__OFADD__(v54, v55))
        {
          goto LABEL_86;
        }

        v57 = __OFADD__(v155, v56);
        v58 = v155 + v56;
        if (v57)
        {
          goto LABEL_87;
        }

        v36 = v174;
        v37 = v164;
      }

      else
      {
        if (qword_281499E38 != -1)
        {
          swift_once();
        }

        v94 = sub_2304A5B74();
        __swift_project_value_buffer(v94, qword_28149B008);
        v95 = v146;
        v177(v146, v31, v13);
        v96 = sub_2304A5B54();
        v97 = sub_2304A5E74();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v144 = v98;
          v145 = swift_slowAlloc();
          v181 = v145;
          *v98 = v158;
          sub_230464B8C(&qword_281499F78, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
          v99 = sub_2304A62D4();
          v101 = v100;
          (*v176)(v95, v13);
          v102 = sub_23046A5C8(v99, v101, &v181);
          v31 = v167;

          v103 = v144;
          *(v144 + 1) = v102;
          v104 = v103;
          _os_log_impl(&dword_230430000, v96, v97, "Cannot return a record that does not exist: %{public}s", v103, 0xCu);
          v105 = v145;
          __swift_destroy_boxed_opaque_existential_0Tm(v145);
          MEMORY[0x23191A000](v105, -1, -1);
          MEMORY[0x23191A000](v104, -1, -1);
        }

        else
        {

          (*v176)(v95, v13);
        }

        v37 = v164;
        v177(v149, v31, v13);
        v106 = v174;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_23045A0B8(0, *(v106 + 2) + 1, 1, v106, &qword_27DB54020, &unk_2304A8040, MEMORY[0x277D46790]);
        }

        v108 = *(v106 + 2);
        v107 = *(v106 + 3);
        v109 = v106;
        if (v108 >= v107 >> 1)
        {
          v109 = sub_23045A0B8((v107 > 1), v108 + 1, 1, v106, &qword_27DB54020, &unk_2304A8040, MEMORY[0x277D46790]);
        }

        *(v109 + 2) = v108 + 1;
        v36 = v109;
        (*v162)(&v109[v163 + v108 * v37], v149, v13);
        v58 = v155;
      }

      v155 = v58;
      if (v58 > 512000)
      {
        if (qword_281499E38 == -1)
        {
          goto LABEL_77;
        }

        goto LABEL_88;
      }

      (*v176)(v31, v13);

LABEL_4:
      v34 += v37;
      if (!--v32)
      {
        goto LABEL_56;
      }

      v177(v31, v34, v13);
    }
  }

  v36 = MEMORY[0x277D84F90];
LABEL_56:
  while (1)
  {
    swift_beginAccess();
    v110 = v182;
    v111 = *(v182 + 16);
    if (!v111)
    {
      break;
    }

    v174 = v36;
    v180 = MEMORY[0x277D84F90];

    sub_2304A6154();
    v112 = v110 + 64;
    v36 = sub_2304A5FB4();
    v113 = 0;
    v173 = v172 + 16;
    v167 = v172 + 32;
    v166 = (v172 + 8);
    v163 = v110 + 72;
    v164 = v111;
    v165 = v110 + 64;
    while ((v36 & 0x8000000000000000) == 0 && v36 < 1 << *(v110 + 32))
    {
      v117 = v36 >> 6;
      v31 = 1 << v36;
      if ((*(v112 + 8 * (v36 >> 6)) & (1 << v36)) == 0)
      {
        goto LABEL_82;
      }

      v118 = *(v110 + 36);
      v176 = v113;
      v177 = v118;
      v119 = v172;
      v120 = v168;
      (*(v172 + 16))(v168, *(v110 + 48) + *(v172 + 72) * v36, v13);
      v121 = *(*(v110 + 56) + 8 * v36);
      v122 = v110;
      v123 = v169;
      (*(v119 + 32))(v169, v120, v13);
      v124 = v171;
      *&v123[*(v171 + 48)] = v121;
      v125 = v123;
      v126 = v170;
      sub_230464ABC(v125, v170, &unk_27DB54050, &qword_2304A7468);
      v178 = *(v126 + *(v124 + 48));
      v127 = *(v119 + 8);
      v128 = v121;
      v129 = v126;
      v110 = v122;
      v127(v129, v13);
      sub_2304A6134();
      sub_2304A6164();
      sub_2304A6174();
      sub_2304A6144();
      v114 = 1 << *(v122 + 32);
      if (v36 >= v114)
      {
        goto LABEL_83;
      }

      v112 = v165;
      v130 = *(v165 + 8 * v117);
      if ((v130 & v31) == 0)
      {
        goto LABEL_84;
      }

      if (v177 != *(v110 + 36))
      {
        goto LABEL_85;
      }

      v131 = v130 & (-2 << (v36 & 0x3F));
      if (v131)
      {
        v114 = __clz(__rbit64(v131)) | v36 & 0x7FFFFFFFFFFFFFC0;
        v13 = v175;
        v115 = v176;
        v116 = v164;
      }

      else
      {
        v132 = v117 << 6;
        v133 = v117 + 1;
        v134 = (v163 + 8 * v117);
        v13 = v175;
        v116 = v164;
        while (v133 < (v114 + 63) >> 6)
        {
          v135 = *v134++;
          v31 = v135;
          v132 += 64;
          ++v133;
          if (v135)
          {
            sub_230433B44(v36, v177, 0);
            v114 = __clz(__rbit64(v31)) + v132;
            goto LABEL_72;
          }
        }

        sub_230433B44(v36, v177, 0);
LABEL_72:
        v115 = v176;
      }

      v113 = (v115 + 1);
      v36 = v114;
      if (v113 == v116)
      {
        result = swift_bridgeObjectRelease_n();
        v137 = v180;
        v36 = v174;
        goto LABEL_75;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
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
    swift_once();
LABEL_77:
    v139 = sub_2304A5B74();
    __swift_project_value_buffer(v139, qword_28149B008);

    v140 = v36;
    v141 = sub_2304A5B54();
    v142 = sub_2304A5E94();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      *v143 = 134349568;
      *(v143 + 4) = v155;
      *(v143 + 12) = 2050;
      swift_beginAccess();
      *(v143 + 14) = *(v182 + 16);
      *(v143 + 22) = 2050;
      *(v143 + 24) = *(v140 + 16);

      _os_log_impl(&dword_230430000, v141, v142, "Batch size exceeded: %{public}ld; returning %{public}ld records; %{public}ld failures", v143, 0x20u);
      MEMORY[0x23191A000](v143, -1, -1);
    }

    else
    {
    }

    v36 = v140;

    (*v176)(v31, v13);
  }

  v137 = MEMORY[0x277D84F90];
LABEL_75:
  v138 = v147;
  *v147 = v137;
  v138[1] = v36;
  return result;
}

void sub_23044747C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v107 = a3;
  v96 = a4;
  v6 = sub_2304A53C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_2304A5224();
  v10 = *(v124 - 8);
  v11 = MEMORY[0x28223BE20](v124);
  v13 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v111 = &v92 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54030, &qword_2304A7450);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v119 = (&v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v118 = &v92 - v18;
  v19 = sub_2304A5294();
  MEMORY[0x28223BE20](v19);
  v23 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x277D84F90];
  v127 = MEMORY[0x277D84F90];
  v98 = *(a1 + 16);
  if (!v98)
  {
LABEL_45:
    *v96 = v24;
    return;
  }

  v93 = v7;
  v94 = v6;
  v95 = v9;
  v25 = 0;
  v105 = (a2 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator);
  v27 = *(v20 + 16);
  v26 = v20 + 16;
  v103 = v27;
  v28 = *(v26 + 64);
  v120 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources;
  v102 = a1 + ((v28 + 32) & ~v28);
  v110 = v10 + 16;
  v106 = OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection;
  v122 = (v10 + 32);
  v117 = v10;
  v113 = (v10 + 8);
  v99 = (v26 - 8);
  v101 = *(v26 + 56);
  *&v21 = 136446210;
  v108 = v21;
  v123 = v13;
  v100 = v19;
  v121 = v23;
  v116 = a2;
  v97 = v26;
LABEL_4:
  v104 = v25 + 1;
  v103(v23, v102 + v101 * v25, v19);
  v29 = sub_2304A5244();
  v31 = v29 + 64;
  v30 = *(v29 + 64);
  v112 = v29;
  v32 = 1 << *(v29 + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & v30;
  swift_beginAccess();
  v35 = 0;
  v36 = (v32 + 63) >> 6;
  v37 = v117;
  v114 = v36;
  v115 = v31;
  while (1)
  {
    if (!v34)
    {
      if (v36 <= v35 + 1)
      {
        v40 = v35 + 1;
      }

      else
      {
        v40 = v36;
      }

      v41 = v40 - 1;
      while (1)
      {
        v39 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v39 >= v36)
        {
          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54038, &qword_2304A7458);
          v70 = v119;
          (*(*(v69 - 8) + 56))(v119, 1, 1, v69);
          v34 = 0;
          v35 = v41;
          v52 = v70;
          v48 = v124;
          goto LABEL_22;
        }

        v34 = *(v31 + 8 * v39);
        ++v35;
        if (v34)
        {
          v35 = v39;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_44:
      v24 = v127;
      goto LABEL_45;
    }

    v39 = v35;
LABEL_21:
    v42 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v43 = v42 | (v39 << 6);
    v44 = v111;
    v45 = (*(v112 + 48) + 16 * v43);
    v46 = *v45;
    v47 = v45[1];
    v48 = v124;
    (*(v37 + 16))(v111, *(v112 + 56) + *(v37 + 72) * v43, v124);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54038, &qword_2304A7458);
    v50 = *(v49 + 48);
    v51 = v119;
    *v119 = v46;
    *(v51 + 1) = v47;
    v52 = v51;
    (*(v37 + 32))(&v51[v50], v44, v48);
    (*(*(v49 - 8) + 56))(v52, 0, 1, v49);

    v13 = v123;
LABEL_22:
    v53 = v52;
    v54 = v118;
    sub_230464ABC(v53, v118, &qword_27DB54030, &qword_2304A7450);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54038, &qword_2304A7458);
    if ((*(*(v55 - 8) + 48))(v54, 1, v55) == 1)
    {

      v23 = v121;
      v19 = v100;
      (*v99)(v121, v100);
      v25 = v104;
      if (v104 != v98)
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }

    (*v122)(v13, v54 + *(v55 + 48), v48);
    sub_2304A4984();
    sub_2304A5214();
    sub_2304A5284();
    v56 = sub_2304A4974();

    v57 = *(v116 + v120);
    if ((v57 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*(v57 + 16))
    {

      v59 = sub_230469CB8(v56);
      if (v60)
      {
        v61 = *(*(v57 + 56) + 8 * v59);

        if (v61)
        {
          goto LABEL_30;
        }
      }

      else
      {
      }
    }

LABEL_34:
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v71 = sub_2304A5B74();
    __swift_project_value_buffer(v71, qword_28149B008);

    v72 = sub_2304A5B54();
    v73 = sub_2304A5E74();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v125 = v56;
      v126 = v75;
      *v74 = v108;
      sub_230464B8C(&qword_27DB54028, MEMORY[0x277D464B8], MEMORY[0x277D464D0]);
      v76 = sub_2304A62D4();
      v78 = sub_23046A5C8(v76, v77, &v126);

      *(v74 + 4) = v78;
      _os_log_impl(&dword_230430000, v72, v73, "Cannot find a zone that does not exist: %{public}s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v75);
      MEMORY[0x23191A000](v75, -1, -1);
      MEMORY[0x23191A000](v74, -1, -1);
    }

    else
    {
    }

    v13 = v123;
    v38 = v124;
LABEL_10:
    v31 = v115;
    (*v113)(v13, v38);
    v37 = v117;
    v36 = v114;
  }

  v58 = sub_2304A6224();

  if (!v58)
  {
    goto LABEL_34;
  }

  v125 = v58;
  type metadata accessor for ClientDataSource(0);
  swift_dynamicCast();
  if (!v126)
  {
    goto LABEL_34;
  }

LABEL_30:
  sub_2304A5234();
  v62 = [*(v107 + v106) remoteToken];
  v63 = sub_2304A5D14();

  v64 = [v62 hasEntitlement_];

  if (v64)
  {
    __swift_project_boxed_opaque_existential_5Tm(v105, v105[3]);
    v65 = sub_2304A42B4();
    MEMORY[0x28223BE20](v65);
    v13 = v123;
    v66 = v121;
    *(&v92 - 2) = v123;
    *(&v92 - 1) = v66;
    v67 = v109;
    v68 = sub_2304485C0(sub_2304643C4, (&v92 - 4), v65);
    v109 = v67;

    sub_230448A94(v68, &qword_27DB53F80, &qword_2304A73E0, MEMORY[0x277D46528], MEMORY[0x277D46528]);

    v38 = v124;
    goto LABEL_10;
  }

  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v79 = sub_2304A5B74();
  __swift_project_value_buffer(v79, qword_28149B008);

  v80 = sub_2304A5B54();
  v81 = sub_2304A5E74();

  v82 = os_log_type_enabled(v80, v81);
  v83 = v100;
  if (v82)
  {
    v84 = v56;
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v125 = v84;
    v126 = v86;
    *v85 = v108;
    sub_230464B8C(&qword_27DB54028, MEMORY[0x277D464B8], MEMORY[0x277D464D0]);
    v87 = sub_2304A62D4();
    v89 = sub_23046A5C8(v87, v88, &v126);

    *(v85 + 4) = v89;
    _os_log_impl(&dword_230430000, v80, v81, "Cannot access a record in a zone without entitlement: %{public}s", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v86);
    MEMORY[0x23191A000](v86, -1, -1);
    MEMORY[0x23191A000](v85, -1, -1);
  }

  v90 = v124;
  v91 = v121;
  (*(v93 + 104))(v95, *MEMORY[0x277D468C0], v94);
  sub_2304A53E4();
  sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
  swift_allocError();
  sub_2304A53D4();
  swift_willThrow();

  (*v113)(v123, v90);
  (*v99)(v91, v83);
}

uint64_t sub_2304481AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a3;
  v38 = a2;
  v42 = a4;
  v5 = sub_2304A4084();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v41 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2304A4FF4();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v37 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v35 = &v33 - v11;
  v12 = sub_2304A49E4();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2304A4FD4();
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v33 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v33 - v22;
  v24 = *(a1 + 8);
  sub_2304A49F4();
  v25 = 1;
  if ((*(v6 + 48))(v14, 1, v5) != 1)
  {
    (*(v6 + 32))(v21, v14, v5);
    v25 = 0;
  }

  (*(v6 + 56))(v21, v25, 1, v5);
  v26 = MEMORY[0x277D46780];
  v34 = MEMORY[0x277D46780];
  sub_2304643E0(v21, v23, MEMORY[0x277D46780]);
  sub_2304A4384();
  sub_2304A49C4();

  sub_2304A5214();
  v38 = v24;
  sub_2304A5284();
  sub_230464448(v23, v18, v26);
  v27 = v35;
  sub_2304A4F94();
  v29 = v39;
  v28 = v40;
  (*(v39 + 16))(v37, v27, v40);
  sub_2304A43D4();
  v30 = v42;
  sub_2304A4B74();
  (*(v29 + 8))(v27, v28);
  sub_2304644B0(v23, v34);
  v31 = sub_2304A4B84();
  return (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
}

void *sub_2304485C0(void (*a1)(void *), uint64_t a2, unint64_t a3)
{
  v50 = a1;
  v51 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54040, &qword_2304A7460);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - v5;
  v7 = sub_2304A4B84();
  v44 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v47 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v42 - v10;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = sub_2304A61A4() | 0x8000000000000000;
  }

  else
  {
    v15 = -1 << *(a3 + 32);
    v12 = ~v15;
    v11 = a3 + 64;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v13 = v17 & *(a3 + 64);
    v14 = a3;
  }

  v19 = 0;
  v42 = v12;
  v20 = (v12 + 64) >> 6;
  v45 = (v44 + 32);
  v46 = (v44 + 48);
  v53 = v14;
  v54 = MEMORY[0x277D84F90];
  v48 = v7;
  v49 = v6;
  v52 = v11;
  if ((v14 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v21 = sub_2304A6234();
  if (!v21)
  {
LABEL_26:
    sub_230433B3C(v14);
    return v54;
  }

  v23 = v22;
  v57 = v21;
  sub_2304A4A04();
  swift_dynamicCast();
  v24 = v56[0];
  v57 = v23;
  sub_2304A43E4();
  swift_dynamicCast();
  v25 = v56[0];
  v26 = v19;
  v27 = v13;
  if (!v24)
  {
LABEL_28:
    v14 = v53;
    goto LABEL_26;
  }

  while (1)
  {
    v56[0] = v24;
    v56[1] = v25;
    v31 = v49;
    v32 = v55;
    v50(v56);
    v55 = v32;
    if (v32)
    {

      sub_230433B3C(v53);

      return v54;
    }

    v33 = v48;
    v34 = (*v46)(v31, 1, v48);
    v35 = v31;
    if (v34 == 1)
    {
      result = sub_230464970(v31, &unk_27DB54040, &qword_2304A7460);
      v19 = v26;
      v13 = v27;
      v11 = v52;
      v14 = v53;
      if ((v53 & 0x8000000000000000) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v36 = *v45;
      v37 = v43;
      (*v45)(v43, v35, v33);
      v36(v47, v37, v33);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = v53;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v54 = sub_23045A0B8(0, v54[2] + 1, 1, v54, &qword_27DB53F80, &qword_2304A73E0, MEMORY[0x277D46528]);
      }

      v40 = v54[2];
      v39 = v54[3];
      if (v40 >= v39 >> 1)
      {
        v54 = sub_23045A0B8((v39 > 1), v40 + 1, 1, v54, &qword_27DB53F80, &qword_2304A73E0, MEMORY[0x277D46528]);
      }

      v41 = v54;
      v54[2] = v40 + 1;
      result = (v36)(v41 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v40, v47, v33);
      v19 = v26;
      v13 = v27;
      v11 = v52;
      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_13:
    v28 = v19;
    v29 = v13;
    v26 = v19;
    if (!v13)
    {
      break;
    }

LABEL_17:
    v27 = (v29 - 1) & v29;
    v30 = (v26 << 9) | (8 * __clz(__rbit64(v29)));
    v24 = *(*(v14 + 48) + v30);
    v25 = *(*(v14 + 56) + v30);

    if (!v24)
    {
      goto LABEL_28;
    }
  }

  while (1)
  {
    v26 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v26 >= v20)
    {
      goto LABEL_26;
    }

    v29 = *(v11 + 8 * v26);
    ++v28;
    if (v29)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}