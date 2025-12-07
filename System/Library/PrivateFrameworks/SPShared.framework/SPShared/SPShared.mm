uint64_t sub_2644B28D0(uint64_t a1)
{
  result = sub_2644EB60C();
  if (v2 <= 0x3F)
  {
    result = sub_2644EADAC();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

char *Future.init()()
{
  v1 = *v0;
  v2 = sub_2644EB4DC();
  MEMORY[0x28223BE20](v2);
  v3 = sub_2644EB0AC();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_2644EB55C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 8) = 0;
  (*(*(*(v1 + 80) - 8) + 56))(&v0[*(v1 + 104)], 1, 1, *(v1 + 80));
  *&v0[*(*v0 + 112)] = 0;
  v8 = *(*v0 + 120);
  sub_2644EB60C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF6F7A8, &qword_2644ECAB0);
  swift_getFunctionTypeMetadata2();
  *&v0[v8] = sub_2644EB14C();
  v9 = *(*v0 + 128);
  sub_2644B2D18();
  (*(v5 + 104))(v7, *MEMORY[0x277D85268], v4);
  sub_2644EB08C();
  v11[1] = MEMORY[0x277D84F90];
  sub_2644B2D64(&qword_2814AC6A8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FAB0, qword_2644EDB90);
  sub_2644B2ECC();
  sub_2644EB6CC();
  *&v0[v9] = sub_2644EB59C();
  sub_2644EAD9C();
  return v0;
}

unint64_t sub_2644B2D18()
{
  result = qword_2814AC6A0;
  if (!qword_2814AC6A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814AC6A0);
  }

  return result;
}

uint64_t sub_2644B2D64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2644B2DAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2644B2DF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2644B2E3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2644B2E84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2644B2ECC()
{
  result = qword_2814AC6B0;
  if (!qword_2814AC6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FF6FAB0, qword_2644EDB90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AC6B0);
  }

  return result;
}

uint64_t *sub_2644B2F54(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, id))
{
  v8 = *v4;
  v9 = swift_allocObject();
  v9[2] = *(v8 + 80);
  v9[3] = a1;
  v9[4] = a2;

  Future.addCompletion(block:)(a4, v9);

  return v4;
}

uint64_t Future.addCompletion(block:)(void (*a1)(char *, id), uint64_t a2)
{
  v3 = v2;
  v6 = *(*v3 + 80);
  v23 = sub_2644EB60C();
  v7 = *(v23 - 8);
  v8 = MEMORY[0x28223BE20](v23);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  (*(*(v6 - 8) + 56))(&v22 - v11, 1, 1, v6);
  v26 = 0;
  v25 = 0;
  v13 = *(v3 + *(*v3 + 128));
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v3;
  v14[4] = &v26;
  v14[5] = &v25;
  v22 = a1;
  v14[6] = a1;
  v14[7] = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2644B3FB4;
  *(v15 + 24) = v14;
  aBlock[4] = sub_2644B3F04;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644B3F0C;
  aBlock[3] = &block_descriptor_46;
  v16 = _Block_copy(aBlock);

  dispatch_sync(v13, v16);
  _Block_release(v16);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {
    v18 = v23;
    if (v25 == 1)
    {
      (*(v7 + 16))(v10, v12, v23);
      v19 = v26;
      v20 = v26;
      v22(v10, v19);

      (*(v7 + 8))(v10, v18);
    }

    v21 = v26;

    (*(v7 + 8))(v12, v18);

    return v3;
  }

  return result;
}

uint64_t sub_2644B3310()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
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

uint64_t sub_2644B3484(void *a1)
{
  v3 = type metadata accessor for XPCServiceDescription(0);
  v60 = *(v3 - 8);
  v4 = *(v60 + 64);
  MEMORY[0x28223BE20](v3);
  v61 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for XPCSessionManager.ListenerRecord(0);
  v58 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v54 - v9;
  v11 = sub_2644EAB8C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v54 - v16;
  v63 = v1;
  v18 = sub_2644B3D4C(v1);
  v59 = a1;
  v19 = [a1 serviceName];
  if (!v19)
  {

    goto LABEL_11;
  }

  v20 = v19;
  v57 = v3;
  v62 = v10;
  sub_2644EB22C();

  sub_2644EAB9C();
  (*(v12 + 32))(v17, v15, v11);
  if (!*(v18 + 16) || (v21 = sub_2644B436C(v17), (v22 & 1) == 0))
  {

    (*(v12 + 8))(v17, v11);
LABEL_11:
    v49 = sub_2644EB49C();
    if (qword_2814AC3C8 != -1)
    {
      swift_once();
    }

    v50 = qword_2814ACD00;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F8F8, &unk_2644ED0B0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_2644ED0A0;
    v53 = *(v63 + 16);
    v52 = *(v63 + 24);
    *(v51 + 56) = MEMORY[0x277D837D0];
    *(v51 + 64) = sub_2644B4744();
    *(v51 + 32) = v53;
    *(v51 + 40) = v52;

    sub_2644EADCC(v49, &dword_2644B1000, v50, "XPCSessionManager(%{public}@): Not accepting connection since a service description is not registered", 101, 2, v51);

    return 0;
  }

  v54 = v17;
  v55 = v12;
  v56 = v11;
  sub_2644B45C4(*(v18 + 56) + *(v58 + 72) * v21, v8, type metadata accessor for XPCSessionManager.ListenerRecord);

  v23 = v62;
  sub_2644B462C(v8, v62, type metadata accessor for XPCSessionManager.ListenerRecord);
  v24 = sub_2644EB4BC();
  if (qword_2814AC3C8 != -1)
  {
    swift_once();
  }

  v25 = qword_2814ACD00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F8F8, &unk_2644ED0B0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2644EE4F0;
  v28 = *(v63 + 16);
  v27 = *(v63 + 24);
  *(v26 + 56) = MEMORY[0x277D837D0];
  *(v26 + 64) = sub_2644B4744();
  *(v26 + 32) = v28;
  *(v26 + 40) = v27;
  *(v26 + 96) = sub_2644B4694(0, &unk_2814AC3B0, 0x277CCAE80);
  *(v26 + 104) = sub_2644B46DC();
  v29 = v59;
  *(v26 + 72) = v59;

  v30 = v29;
  sub_2644EADCC(v24, &dword_2644B1000, v25, "XPCSessionManager(%{public}@): New XPC connection: %{public}@", 61, 2, v26);

  v31 = v57;
  [v30 setExportedInterface_];
  [v30 setExportedObject_];
  [v30 setRemoteObjectInterface_];
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = v61;
  sub_2644B45C4(v23, v61, type metadata accessor for XPCServiceDescription);
  v34 = (*(v60 + 80) + 24) & ~*(v60 + 80);
  v35 = (v4 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v32;
  sub_2644B462C(v33, v36 + v34, type metadata accessor for XPCServiceDescription);
  *(v36 + v35) = v30;
  v68 = sub_2644EA8BC;
  v69 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v65 = 1107296256;
  v66 = sub_2644BD140;
  v67 = &block_descriptor_28;
  v37 = _Block_copy(&aBlock);
  v38 = v30;

  [v38 setInvalidationHandler_];
  _Block_release(v37);
  v39 = swift_allocObject();
  swift_weakInit();
  sub_2644B45C4(v62, v33, type metadata accessor for XPCServiceDescription);
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  sub_2644B462C(v33, v40 + v34, type metadata accessor for XPCServiceDescription);
  *(v40 + v35) = v38;
  v41 = v62;
  v68 = sub_2644EAA3C;
  v69 = v40;
  aBlock = MEMORY[0x277D85DD0];
  v65 = 1107296256;
  v66 = sub_2644BD140;
  v67 = &block_descriptor_35;
  v42 = _Block_copy(&aBlock);
  v43 = v38;

  [v43 setInterruptionHandler_];
  _Block_release(v42);
  [v43 resume];
  v44 = v41 + *(v57 + 36);
  v45 = *v44;
  if (!*v44 || (v46 = *(v44 + 8), , v47 = v45(v43), sub_2644B3C64(v45, v46), (v47 & 1) != 0))
  {
    (*(v55 + 8))(v54, v56);
    sub_2644B47A0(v41);
    return 1;
  }

  [v43 invalidate];
  (*(v55 + 8))(v54, v56);
  sub_2644B47A0(v41);
  return 0;
}

uint64_t sub_2644B3C64(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2644B3C74()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t type metadata accessor for XPCServiceDescription(uint64_t a1)
{
  result = qword_2814ABCB0;
  if (!qword_2814ABCB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for XPCSessionManager.ListenerRecord(uint64_t a1)
{
  result = qword_2814ABD18;
  if (!qword_2814ABD18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2644B3D4C(uint64_t a1)
{
  v9 = 0;
  v2 = *(a1 + 32);
  v3 = swift_allocObject();
  *(v3 + 16) = &v9;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2644B42F8;
  *(v4 + 24) = v3;
  aBlock[4] = sub_2644B42CC;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644B3F0C;
  aBlock[3] = &block_descriptor_45;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;
    if (v9)
    {

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2644B3EC8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2644B3FC4(uint64_t a1, _BYTE *a2, void **a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v12 = *(*a2 + 80);
  v13 = sub_2644EB60C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v22 - v15;
  sub_2644B41FC(v22 - v15);
  (*(v14 + 40))(a1, v16, v13);
  v17 = *&a2[*(*a2 + 112)];
  v18 = *a3;
  *a3 = v17;
  v19 = v17;

  v20 = a2[16];
  *a4 = v20;
  if ((v20 & 1) == 0)
  {
    v21 = swift_allocObject();
    v21[2] = v12;
    v21[3] = a5;
    v21[4] = a6;
    v22[4] = sub_2644B6588;
    v22[5] = v21;
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF6F7A8, &qword_2644ECAB0);
    swift_getFunctionTypeMetadata2();
    sub_2644EB38C();
    sub_2644EB35C();
    swift_endAccess();
  }
}

uint64_t sub_2644B41C0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2644B41FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  v4 = sub_2644EB60C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_2644B4300(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  *a1 = *(a2 + 48);
}

unint64_t sub_2644B436C(uint64_t a1)
{
  sub_2644EAB8C();
  sub_2644B2E84(&qword_2814ABF68, MEMORY[0x277D08970], MEMORY[0x277D08978]);
  v2 = sub_2644EB1CC();

  return sub_2644B4404(a1, v2);
}

unint64_t sub_2644B4404(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_2644EAB8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_2644B2E84(&qword_2814ABF60, MEMORY[0x277D08970], MEMORY[0x277D08980]);
      v15 = sub_2644EB20C();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_2644B45C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2644B462C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2644B4694(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_2644B46DC()
{
  result = qword_2814AC3A8;
  if (!qword_2814AC3A8)
  {
    sub_2644B4694(255, &unk_2814AC3B0, 0x277CCAE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AC3A8);
  }

  return result;
}

unint64_t sub_2644B4744()
{
  result = qword_2814AC3C0;
  if (!qword_2814AC3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AC3C0);
  }

  return result;
}

uint64_t sub_2644B47A0(uint64_t a1)
{
  v2 = type metadata accessor for XPCSessionManager.ListenerRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t XPCSession.connection.getter()
{
  sub_2644B4694(0, &unk_2814AC3B0, 0x277CCAE80);
  sub_2644EB57C();
  return v1;
}

id sub_2644B4898@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2644B4A30();
  *a1 = result;
  return result;
}

uint64_t Future.finish(result:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_2644EB60C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *(v3 - 8);
  (*(v8 + 16))(&v10 - v6, a1, v3);
  (*(v8 + 56))(v7, 0, 1, v3);
  LOBYTE(a1) = Future.finish(result:error:)(v7, 0);
  (*(v5 + 8))(v7, v4);
  return a1 & 1;
}

id sub_2644B4A30()
{
  v40 = *v0;
  v1 = v40;
  v2 = sub_2644EAB8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2644EB10C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v0 + *(v1 + 120));
  *v9 = v10;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v11 = v10;
  v12 = sub_2644EB12C();
  result = (*(v7 + 8))(v9, v6);
  if (v12)
  {
    v14 = qword_2814ABF20;
    v15 = *(v0 + qword_2814ABF20);
    if (v15)
    {
      v16 = *(v0 + qword_2814ABF20);
    }

    else
    {
      v17 = v0 + qword_2814ACCC0;
      (*(v3 + 16))(v5, v0 + qword_2814ACCC0, v2);
      v18 = type metadata accessor for XPCServiceDescription(0);
      v19 = *&v17[v18[5]];
      v20 = objc_allocWithZone(MEMORY[0x277CCAE80]);
      v38 = v0;
      v39 = v11;
      v21 = v20;
      sub_2644EAB7C();
      v22 = sub_2644EB21C();

      v23 = [v21 initWithMachServiceName:v22 options:v19];

      (*(v3 + 8))(v5, v2);
      [v23 setExportedInterface_];
      [v23 setExportedObject_];
      [v23 setRemoteObjectInterface_];
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v25 = swift_allocObject();
      v26 = v38;
      swift_weakInit();
      v27 = swift_allocObject();
      v28 = *(v40 + 80);
      v27[2] = v28;
      v27[3] = v25;
      v27[4] = v24;
      v45 = sub_2644DC4EC;
      v46 = v27;
      aBlock = MEMORY[0x277D85DD0];
      v42 = 1107296256;
      v43 = sub_2644BD140;
      v44 = &block_descriptor_30;
      v29 = _Block_copy(&aBlock);
      v16 = v23;

      [v16 setInterruptionHandler_];
      _Block_release(v29);
      v30 = swift_allocObject();
      swift_weakInit();
      v31 = swift_allocObject();
      v31[2] = v28;
      v31[3] = v30;
      v32 = v39;
      v31[4] = v39;
      v31[5] = v24;
      v45 = sub_2644DC4F8;
      v46 = v31;
      aBlock = MEMORY[0x277D85DD0];
      v42 = 1107296256;
      v43 = sub_2644BD140;
      v44 = &block_descriptor_37_0;
      v33 = _Block_copy(&aBlock);
      v34 = v32;

      [v16 setInvalidationHandler_];
      _Block_release(v33);
      v35 = *(v26 + v14);
      *(v26 + v14) = v23;

      v15 = 0;
    }

    v36 = v15;
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2644B4F14()
{
  MEMORY[0x26673ADD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2644B4F4C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2644B4F84()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2644B4FC4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t Future.finish(result:error:)(uint64_t a1, void *a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = sub_2644EB60C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &aBlock[-1] - v10;
  v22 = 0;
  v20 = *(v2 + *(v5 + 128));
  (*(v8 + 16))(&aBlock[-1] - v10, a1, v7);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = (v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = v6;
  *(v14 + 24) = v2;
  (*(v8 + 32))(v14 + v12, v11, v7);
  *(v14 + v13) = a2;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = &v22;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2644B5B70;
  *(v15 + 24) = v14;
  aBlock[4] = sub_2644B3F04;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644B3F0C;
  aBlock[3] = &block_descriptor_36;
  v16 = _Block_copy(aBlock);

  v17 = a2;

  dispatch_sync(v20, v16);
  _Block_release(v16);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    sub_2644B5F14();
    v19 = v22;

    return v19;
  }

  return result;
}

uint64_t sub_2644B52A0()
{
  v1 = *(v0 + 16);
  v2 = *(sub_2644EB60C() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v1 - 8);
  if (!(*(v6 + 48))(v0 + v4, 1, v1))
  {
    (*(v6 + 8))(v0 + v4, v1);
  }

  v7 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v3 | 7);
}

char *XPCSession.init(connection:)(void *a1)
{
  v2 = v1;
  v52 = a1;
  v40 = *v1;
  v3 = v40;
  v4 = sub_2644EADAC();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  v47 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2644EAB8C();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for XPCServiceDescription(0);
  v7 = MEMORY[0x28223BE20](v44);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v46 = &v36 - v9;
  v10 = sub_2644EB4DC();
  MEMORY[0x28223BE20](v10);
  v11 = sub_2644EB0AC();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_2644EB55C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = qword_2814ABF20;
  *(v1 + qword_2814ABF20) = 0;
  v16 = *(v3 + 80);
  v17 = *(*(v16 - 8) + 56);
  v39 = *(*v1 + 112);
  v38 = v16;
  v17(v1 + v39, 1, 1);
  v50 = *(*v1 + 120);
  v51 = sub_2644B4694(0, &qword_2814AC6A0, 0x277D85C78);
  (*(v13 + 104))(v15, *MEMORY[0x277D85268], v12);
  sub_2644EB08C();
  *&v56[0] = MEMORY[0x277D84F90];
  sub_2644B2DAC(&qword_2814AC6A8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FAB0, qword_2644EDB90);
  sub_2644B5B18(&qword_2814AC6B0, &unk_27FF6FAB0, qword_2644EDB90);
  v18 = v50;
  sub_2644EB6CC();
  *(v1 + v18) = sub_2644EB59C();
  v19 = v52;
  v20 = [v19 serviceName];
  if (v20)
  {
    v21 = v20;
    sub_2644EB22C();

    v22 = v41;
    sub_2644EAB9C();
    if ([v19 exportedObject])
    {
      sub_2644EB6AC();
      swift_unknownObjectRelease();
    }

    else
    {
      v54 = 0u;
      v55 = 0u;
    }

    v56[0] = v54;
    v56[1] = v55;
    if (*(&v55 + 1))
    {
      sub_2644B4694(0, &qword_2814ABAA8, 0x277D82BB8);
      if (swift_dynamicCast())
      {
        v24 = v53;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      sub_2644BD848(v56);
      v24 = 0;
    }

    v25 = [v19 exportedInterface];
    v26 = [v19 remoteObjectInterface];

    v27 = v42;
    (*(v43 + 32))(v42, v22, v45);
    v28 = v44;
    *(v27 + *(v44 + 20)) = 0;
    *(v27 + v28[6]) = v24;
    *(v27 + v28[7]) = v25;
    *(v27 + v28[8]) = v26;
    v29 = (v27 + v28[10]);
    *v29 = 0;
    v29[1] = 0;
    v30 = (v27 + v28[11]);
    *v30 = 0;
    v30[1] = 0;
    v31 = (v27 + v28[9]);
    *v31 = 0;
    v31[1] = 0;
    v32 = v46;
    sub_2644B5C10(v27, v46);
    v33 = v47;
    sub_2644EAD9C();
    (*(v48 + 32))(v2 + qword_2814ACCC8, v33, v49);
    sub_2644B5C10(v32, v2 + qword_2814ACCC0);
    v34 = *(v2 + qword_2814ABF20);
    *(v2 + qword_2814ABF20) = v19;
  }

  else
  {

    v23 = sub_2644EB60C();
    (*(*(v23 - 8) + 8))(v2 + v39, v23);

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

uint64_t sub_2644B5B18(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_2644B5B70()
{
  v1 = *(sub_2644EB60C() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 24);
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_2644B5C74(v4, v0 + v2, v5, v6);
}

uint64_t sub_2644B5C10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCServiceDescription(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2644B5C74(_BYTE *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = sub_2644EB60C();
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  if ((a1[16] & 1) == 0)
  {
    (*(v9 + 16))(v11, a2);
    sub_2644B5E5C(v11);
    v12 = a3;
    v13 = *(*a1 + 112);
    v14 = *&a1[v13];
    *&a1[v13] = a3;

    a1[16] = 1;
    *a4 = 1;
  }
}

uint64_t sub_2644B5D98()
{
  sub_2644EBA7C();
  XPCSession.hash(into:)(v1);
  return sub_2644EBAAC();
}

uint64_t XPCSession.hash(into:)(uint64_t a1)
{
  sub_2644EADAC();
  sub_2644B2DAC(qword_2814AC288, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_2644EB1DC();
}

uint64_t sub_2644B5E5C(uint64_t a1)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  v4 = sub_2644EB60C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_2644B5F14()
{
  v1 = *(*v0 + 80);
  v2 = sub_2644EB60C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v28 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - v6;
  (*(*(v1 - 8) + 56))(v24 - v6, 1, 1, v1);
  v33 = 0;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF6F7A8, &qword_2644ECAB0);
  v30 = v2;
  swift_getFunctionTypeMetadata2();
  v32 = sub_2644EB14C();
  v8 = *(v0 + *(*v0 + 128));
  v9 = swift_allocObject();
  v29 = v7;
  v9[2] = v7;
  v9[3] = v0;
  v9[4] = &v33;
  v9[5] = &v32;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2644B6368;
  *(v10 + 24) = v9;
  aBlock[4] = sub_2644B3F04;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644B3F0C;
  aBlock[3] = &block_descriptor_90;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v8, v11);
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v14 = v32;

  if (sub_2644EB34C())
  {
    v24[1] = v9;
    v25 = v3;
    v15 = 0;
    v26 = (v3 + 8);
    v27 = (v3 + 16);
    v16 = v14 + 40;
    v17 = v28;
    while (1)
    {
      v18 = sub_2644EB32C();
      result = sub_2644EB2FC();
      if ((v18 & 1) == 0)
      {
        break;
      }

      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_11;
      }

      v20 = *(v16 - 8);
      v21 = v30;
      (*v27)(v17, v29, v30);
      v22 = v33;
      aBlock[0] = v33;

      v23 = v22;
      v20(v17, aBlock);

      (*v26)(v17, v21);
      ++v15;
      v16 += 16;
      if (v19 == sub_2644EB34C())
      {

        v3 = v25;
        goto LABEL_9;
      }
    }

    result = sub_2644EB7AC();
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

LABEL_9:

  (*(v3 + 8))(v29, v30);
}

uint64_t sub_2644B6328()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2644B6374(uint64_t a1, uint64_t a2, void **a3, uint64_t *a4)
{
  v8 = sub_2644EB60C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  sub_2644B41FC(&v18 - v10);
  (*(v9 + 40))(a1, v11, v8);
  v12 = *(a2 + *(*a2 + 112));
  v13 = *a3;
  *a3 = v12;
  v14 = v12;

  v15 = *(*a2 + 120);
  swift_beginAccess();
  *a4 = *(a2 + v15);

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF6F7A8, &qword_2644ECAB0);
  swift_getFunctionTypeMetadata2();
  v16 = sub_2644EB14C();
  return sub_2644B6518(v16);
}

uint64_t sub_2644B6518(uint64_t a1)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_2644B65B4(uint64_t a1, void *a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  if (a2 && (*(*(a5 - 8) + 48))(a1, 1, a5) == 1)
  {
    v7 = a2;
    a3(a2);
  }
}

uint64_t sub_2644B6664(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v8 = sub_2644EB60C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v13 = *(a5 - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  if ((*(v13 + 48))(v12, 1, a5) == 1)
  {
    return (*(v9 + 8))(v12, v8);
  }

  (*(v13 + 32))(v15, v12, a5);
  a3(v15);
  return (*(v13 + 8))(v15, a5);
}

uint64_t sub_2644B6860(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_2644B68D8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2644B68D8()
{
  result = qword_2814AC1D8[0];
  if (!qword_2814AC1D8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2814AC1D8);
  }

  return result;
}

uint64_t Future.__deallocating_deinit()
{
  Future.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Future.deinit()
{
  v1 = *(*v0 + 104);
  v2 = sub_2644EB60C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 136);
  v4 = sub_2644EADAC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t static Transaction.named<A>(_:with:)(char *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a3;
  swift_allocObject();
  sub_2644B6B7C(a1, a2, v5);
  a4();
}

os_activity_scope_state_s *sub_2644B6B7C(char *a1, uint64_t a2, int a3)
{
  v6 = sub_2644EADAC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[3].opaque[0] = 0;
  v3[2].opaque[0] = 0;
  v3[3].opaque[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F878, &unk_2644ED920);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = MEMORY[0x277D84FA0];
  v3[4].opaque[0] = v10;
  v3[4].opaque[1] = v11;
  result = swift_weakInit();
  v38 = a3;
  v37 = v6;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_16;
  }

  v13 = a1 >> 32;
  if (a1 >> 32)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v32 = (a1 & 0x3F) << 8;
    v33 = (a1 >> 6) + v32 + 33217;
    v34 = (v32 | (a1 >> 6) & 0x3F) << 8;
    v35 = (a1 >> 18) + ((v34 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
    v36 = (a1 >> 12) + v34 + 8487393;
    if (v13)
    {
      v14 = v35;
    }

    else
    {
      v14 = v36;
    }

    if (a1 < 0x800)
    {
      v14 = v33;
    }

    goto LABEL_9;
  }

  if ((a1 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return result;
  }

  v13 = a1 >> 16;
  if (a1 >> 16 > 0x10)
  {
    goto LABEL_17;
  }

  if (a1 > 0x7F)
  {
    goto LABEL_18;
  }

  v14 = a1 + 1;
LABEL_9:
  v40 = (v14 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v14) >> 3))));
LABEL_10:
  v40 = sub_2644EB25C();
  v41 = v15;

  MEMORY[0x266739CC0](46, 0xE100000000000000);

  v16 = v40;
  v17 = v41;
  sub_2644EAD9C();
  v18 = sub_2644EAD7C();
  v20 = v19;
  (*(v7 + 8))(v9, v37);
  v40 = v16;
  v41 = v17;

  MEMORY[0x266739CC0](v18, v20);

  v21 = v41;
  v3[1].opaque[0] = v40;
  v3[1].opaque[1] = v21;
  sub_2644EB24C();
  v22 = os_transaction_create();

  v3[2].opaque[0] = v22;
  swift_unknownObjectRelease();
  v3[2].opaque[1] = sub_2644B716C(a1, v38, &dword_2644B1000);
  swift_beginAccess();
  v23 = swift_unknownObjectRetain();
  os_activity_scope_enter(v23, v3 + 3);
  swift_endAccess();
  swift_unknownObjectRelease();
  if (qword_2814AC058 != -1)
  {
    swift_once();
  }

  v24 = sub_2644EAE0C();
  __swift_project_value_buffer(v24, qword_2814ACCE8);

  v25 = sub_2644EADEC();
  v26 = sub_2644EB47C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 136446210;
    v39 = v28;
    v40 = 0x3A4E58545BLL;
    v41 = 0xE500000000000000;
    v29 = v3[1].opaque[0];
    v30 = v3[1].opaque[1];

    MEMORY[0x266739CC0](v29, v30);
    MEMORY[0x266739CC0](93, 0xE100000000000000);

    v31 = sub_2644B73B8(v40, v41, &v39);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_2644B1000, v25, v26, "Opened %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x26673AD40](v28, -1, -1);
    MEMORY[0x26673AD40](v27, -1, -1);
  }

  return v3;
}

uint64_t AnyCurrentValuePublisher.value.getter(uint64_t a1, uint64_t a2)
{
  swift_unownedRetainStrong();
  sub_2644EAF1C();
}

void *QueueSynchronizer.conditionalSync<A>(_:)(uint64_t (*a1)(void *))
{
  sub_2644EABBC();
  sub_2644B2D18();
  v5 = sub_2644EB51C();
  if ((v7 & 1) == 0)
  {
    return a1(v5);
  }

  MEMORY[0x28223BE20](v5);
  return sub_2644EB57C();
}

os_activity_t sub_2644B716C(char *description, char a2, void *dso)
{
  if ((a2 & 1) == 0)
  {
    if (description)
    {
      if (dso)
      {
        if (qword_2814AC0E0 == -1)
        {
LABEL_5:
          v4 = dso;
          v5 = qword_2814AC0F0;

          return _os_activity_create(v4, description, v5, OS_ACTIVITY_FLAG_DEFAULT);
        }

LABEL_19:
        v14 = dso;
        swift_once();
        dso = v14;
        goto LABEL_5;
      }

LABEL_28:
      result = sub_2644EB86C();
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (description >> 32)
  {
    goto LABEL_18;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
  }

  else if (description <= 0x7F)
  {
    v7 = description + 1;
    goto LABEL_13;
  }

  v8 = (description & 0x3F) << 8;
  v9 = (description >> 6) + v8 + 33217;
  v10 = (v8 | (description >> 6) & 0x3F) << 8;
  v11 = (description >> 18) + ((v10 | (description >> 12) & 0x3F) << 8) - 2122219023;
  v12 = (description >> 12) + v10 + 8487393;
  if (description >> 16)
  {
    v7 = v11;
  }

  else
  {
    v7 = v12;
  }

  if (description < 0x800)
  {
    v7 = v9;
  }

LABEL_13:
  *descriptiona = (v7 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v7) & 0x18)));
  if (!dso)
  {
    goto LABEL_28;
  }

  if (qword_2814AC0E0 != -1)
  {
    v13 = dso;
    swift_once();
    dso = v13;
  }

  return _os_activity_create(dso, descriptiona, qword_2814AC0F0, OS_ACTIVITY_FLAG_DEFAULT);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_2644B73B8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2644B7484(v11, 0, 0, 1, a1, a2);
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
    sub_2644B7780(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2644B7484(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2644BB34C(a5, a6);
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
    result = sub_2644EB7CC();
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

uint64_t static Transaction.asyncTask(name:block:)(char *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6FA48, &qword_2644EDF20);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  swift_allocObject();
  v13 = sub_2644B6B7C(a1, a2, a3);
  v14 = objc_opt_self();

  v15 = [v14 currentConnection];
  v16 = sub_2644EB3DC();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v13;
  v17[5] = v15;
  v17[6] = a4;
  v17[7] = a5;
  v18 = v15;

  sub_2644E4B94(0, 0, v12, &unk_2644EDF30, v17);
}

uint64_t sub_2644B7730()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2644B7780(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_2644B7828(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6FA48, &qword_2644EDF20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2644B7894(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2644B8380;

  return sub_2644B794C(a1, v4);
}

uint64_t sub_2644B794C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2644B86EC;

  return v6(a1);
}

uint64_t sub_2644B7A44(uint64_t a1)
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
  v10[1] = sub_2644B8384;

  return sub_2644B7B18(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2644B7B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[3] = a1;
  return MEMORY[0x2822009F8](sub_2644B7B40, 0, 0);
}

uint64_t sub_2644B7B40()
{
  if (qword_2814ABE80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;

  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_2644B85AC;
  v5 = *(v0 + 24);

  return MEMORY[0x282200908](v5, v0 + 16, &unk_2644EE090, v2, 0, 0, 0xD00000000000001ALL, 0x80000002644EEFE0);
}

uint64_t sub_2644B7CA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2644B8380;

  return sub_2644B7D5C(a1, v4, v5, v6);
}

uint64_t sub_2644B7D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_2644B7D80, 0, 0);
}

uint64_t sub_2644B7D80()
{
  if (qword_2814ABE98 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *(v1 + 16) = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_2644B8478;
  v3 = *(v0 + 24);

  return MEMORY[0x282200908](v3, v0 + 16, &unk_2644EE0A0, v1, 0, 0, 0xD00000000000001ALL, 0x80000002644EEFE0);
}

void _s8SPShared11TransactionC3endyyF_0()
{
  if (v0[2].opaque[0])
  {
    if (qword_2814AC058 != -1)
    {
      swift_once();
    }

    v1 = sub_2644EAE0C();
    __swift_project_value_buffer(v1, qword_2814ACCE8);

    v2 = sub_2644EADEC();
    v3 = sub_2644EB47C();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 136446210;
      v7[0] = v5;
      v7[1] = 0x3A4E58545BLL;
      v7[2] = 0xE500000000000000;
      MEMORY[0x266739CC0](v0[1].opaque[0], v0[1].opaque[1]);
      MEMORY[0x266739CC0](93, 0xE100000000000000);
      v6 = sub_2644B73B8(0x3A4E58545BLL, 0xE500000000000000, v7);

      *(v4 + 4) = v6;
      _os_log_impl(&dword_2644B1000, v2, v3, "Closed %{public}s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x26673AD40](v5, -1, -1);
      MEMORY[0x26673AD40](v4, -1, -1);
    }

    swift_beginAccess();
    os_activity_scope_leave(v0 + 3);
    swift_endAccess();
    v0[2].opaque[0] = 0;
    swift_unknownObjectRelease();
  }
}

uint64_t Transaction.__deallocating_deinit()
{
  _s8SPShared11TransactionC3endyyF_0();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_weakDestroy();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t sub_2644B80F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2644B8380;

  return sub_2644B81A0(a1, v4);
}

uint64_t sub_2644B81A0(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_2644B8288;

  return v5();
}

uint64_t sub_2644B8288()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2644B8384()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_2644B8478()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 8);

    v3();
  }
}

void sub_2644B85AC()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 8);

    v3();
  }
}

uint64_t sub_2644B8728()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2644B8760()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2644B8798()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2644B886C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2644B88B8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2644B88F0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2644B8930()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2644B896C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2644B89AC()
{
  v1 = *(v0 + 16);
  v2 = *(sub_2644EB60C() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v1 - 8);
  if (!(*(v6 + 48))(v0 + v4, 1, v1))
  {
    (*(v6 + 8))(v0 + v4, v1);
  }

  v7 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

uint64_t sub_2644B8AE0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2644B8B38()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2644B8B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2644EAB6C();
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
    if (v12 >= 6)
    {
      return v12 - 5;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2644B8C2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2644EAB6C();
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
    *(a1 + *(a4 + 24)) = a2 + 5;
  }

  return result;
}

uint64_t sub_2644B8CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2644EAB8C();
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

uint64_t sub_2644B8DB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2644EAB8C();
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

uint64_t sub_2644B8E68()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = v4 + *(v2 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_2644B9008()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v16 = *(v2 + 80);
  v17 = (v16 + 48) & ~v16;
  v3 = v17 + *(v2 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v3 + v5) & ~v5;
  v7 = *(v4 + 64);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + v10) & ~v10;
  v12 = *(v9 + 64);
  v13 = v16 | v10 | v5;
  (*(v2 + 8))(v0 + v17, v1);
  (*(v4 + 8))(v0 + v6, AssociatedTypeWitness);
  (*(v9 + 8))(v0 + v11, v8);

  return MEMORY[0x2821FE8E8](v0, v11 + v12, v13 | 7);
}

uint64_t sub_2644B9250()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2644B933C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for Subscription(0, v5, a3, a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 24) & ~v7;
  v9 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v4 + v8;
  (*(*(v5 - 8) + 8))(v4 + v8, v5);
  v11 = v6[9];
  v12 = sub_2644EADAC();
  (*(*(v12 - 8) + 8))(v10 + v11, v12);

  return MEMORY[0x2821FE8E8](v4, v9 + 16, v7 | 7);
}

uint64_t sub_2644B9484()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2644B94BC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2644B94F4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2644B95C4()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2644B9644()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2644B967C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2644B9738()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2644B9770()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2644B97B8()
{

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2644B9820()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

__n128 sub_2644B9894(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2644B98A0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_2644D8E6C();
}

uint64_t sub_2644B9928()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2644B9970()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2644B99A8()
{
  sub_2644EB60C();
  v1 = sub_2644EB3BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2644B9BEC()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2644B9C28()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2644B9C68()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2644B9CA0()
{
  MEMORY[0x26673ADD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2644B9CD8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2644B9D18()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2644B9D88()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2644B9DC0()
{
  v1 = *(type metadata accessor for Sequencer.WorkItem(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = sub_2644EADAC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  if (*(v0 + v4))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_2644B9ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2644EADAC();
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

    return (v10 + 1);
  }
}

uint64_t sub_2644B9F90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2644EADAC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2644BA048()
{
  v1 = *(type metadata accessor for Sequencer.WorkItem(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v5 = sub_2644EADAC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_2644BA160()
{
  v1 = *(type metadata accessor for Sequencer.WorkItem(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = sub_2644EADAC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_2644BA284()
{
  v1 = *(type metadata accessor for Sequencer.WorkItem(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (((((((((((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v5 = sub_2644EADAC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_2644BA3E0()
{
  v1 = *(type metadata accessor for Sequencer.WorkItem(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (((((((((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v5 = sub_2644EADAC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_2644BA528()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double sub_2644BA58C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8SPShared18PerformanceCapture_duration;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_2644BA5E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8SPShared18PerformanceCapture_duration;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_2644BA638()
{
  v1 = type metadata accessor for XPCServiceDescription(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  v6 = sub_2644EAB8C();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  if (*(v0 + v3 + v1[9]))
  {
  }

  if (*(v5 + v1[10]))
  {
  }

  if (*(v5 + v1[11]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2644BA78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for XPCServiceDescription(0);
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

    return (v10 + 1);
  }
}

uint64_t sub_2644BA848(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for XPCServiceDescription(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

SPShared::NetworkReachabilityStatus_optional __swiftcall NetworkReachabilityStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2644EB8BC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NetworkReachabilityStatus.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6863616552746F6ELL;
  }
}

uint64_t sub_2644BA9FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x80000002644EE5F0;
  if (v2 == 1)
  {
    v4 = 0x80000002644EE5F0;
  }

  else
  {
    v4 = 0x80000002644EE610;
  }

  if (*a1)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x6863616552746F6ELL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC000000656C6261;
  }

  if (*a2 != 1)
  {
    v3 = 0x80000002644EE610;
  }

  if (*a2)
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v7 = 0x6863616552746F6ELL;
  }

  if (*a2)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xEC000000656C6261;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2644EB9AC();
  }

  return v9 & 1;
}

uint64_t sub_2644BAAD4()
{
  sub_2644EBA7C();
  sub_2644EB26C();

  return sub_2644EBAAC();
}

uint64_t sub_2644BAB88(uint64_t a1)
{
  sub_2644EB26C();
}

uint64_t sub_2644BAC28()
{
  sub_2644EBA7C();
  sub_2644EB26C();

  return sub_2644EBAAC();
}

void sub_2644BACE4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000656C6261;
  v4 = 0x80000002644EE5F0;
  if (v2 != 1)
  {
    v4 = 0x80000002644EE610;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x6863616552746F6ELL;
  }

  if (!v5)
  {
    v3 = v4;
  }

  *a1 = v6;
  a1[1] = v3;
}

void sub_2644BAD54(char *a1@<X8>)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v21 = 0;
  v3 = *(v1 + 16);
  if (v3)
  {
    flags = 0;
    v4 = v3;
    SCNetworkReachabilityGetFlags(v4, &flags);
    if ((flags & 2) != 0)
    {
      v9 = (flags & 0x28) != 0;
      if ((flags & 0x10) != 0)
      {
        v9 = 0;
      }

      if ((flags & 0x40004) != 4 || v9)
      {
        if ((flags & 0x40000) != 0)
        {
          v11 = 2;
        }

        else
        {
          v11 = 1;
        }

        v21 = v11;
      }
    }

    else
    {
      v21 = 0;
    }

    if (qword_2814AC438 != -1)
    {
      swift_once();
    }

    v12 = sub_2644EAE0C();
    __swift_project_value_buffer(v12, qword_2814ACCD0);
    v13 = sub_2644EADEC();
    v14 = sub_2644EB4BC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22[0] = v16;
      *v15 = 136315138;
      v17 = sub_2644EB23C();
      v19 = sub_2644B73B8(v17, v18, v22);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_2644B1000, v13, v14, "Network reachability: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x26673AD40](v16, -1, -1);
      MEMORY[0x26673AD40](v15, -1, -1);
    }

    swift_beginAccess();
    *a1 = v21;
  }

  else
  {
    if (qword_2814AC438 != -1)
    {
      swift_once();
    }

    v5 = sub_2644EAE0C();
    __swift_project_value_buffer(v5, qword_2814ACCD0);
    v6 = sub_2644EADEC();
    v7 = sub_2644EB4BC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2644B1000, v6, v7, "Reachability object can't be instantiated. Network not reachable.", v8, 2u);
      MEMORY[0x26673AD40](v8, -1, -1);
    }

    *a1 = 0;
  }
}

uint64_t NetworkReachability.__allocating_init()()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = swift_allocObject();
  *&address.sa_data[6] = 0;
  *&address.sa_len = 528;
  *(v0 + 16) = SCNetworkReachabilityCreateWithAddress(0, &address);
  return v0;
}

uint64_t NetworkReachability.init()()
{
  v5 = *MEMORY[0x277D85DE8];
  *(v0 + 16) = 0;
  *&address.sa_data[6] = 0;
  *&address.sa_len = 528;
  v1 = SCNetworkReachabilityCreateWithAddress(0, &address);
  v2 = *(v0 + 16);
  *(v0 + 16) = v1;

  return v0;
}

uint64_t NetworkReachability.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

BOOL sub_2644BB1A8(void *a1, uint64_t *a2)
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

void *sub_2644BB1D8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_2644BB204@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_2644BB2F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2644BBB2C(a1);

  *a2 = v3;
  return result;
}

void *sub_2644BB330@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void *sub_2644BB34C(uint64_t a1, unint64_t a2)
{
  v3 = sub_2644BB398(a1, a2);
  sub_2644BB4C8(&unk_2875F58D0);
  return v3;
}

void *sub_2644BB398(uint64_t a1, unint64_t a2)
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

  v6 = sub_2644C1FF8(v5, 0);
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

  result = sub_2644EB7CC();
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
        v10 = sub_2644EB28C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2644C1FF8(v10, 0);
        result = sub_2644EB78C();
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

uint64_t sub_2644BB4C8(uint64_t result)
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

  result = sub_2644BB5B4(result, v11, 1, v3);
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

char *sub_2644BB5B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F718, &qword_2644EC9A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_2644BB6AC()
{
  result = qword_27FF6F610;
  if (!qword_27FF6F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6F610);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkReachabilityStatus(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NetworkReachabilityStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2644BB8E0(uint64_t a1, int a2)
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

uint64_t sub_2644BB900(uint64_t result, int a2, int a3)
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

uint64_t sub_2644BB970(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2644BB990(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_2644BB9CC(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_2644BBA80(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Options(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2644BBB2C(uint64_t a1)
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2644BBBBC()
{
  v0 = sub_2644EB4DC();
  MEMORY[0x28223BE20](v0);
  v1 = sub_2644EB0AC();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_2644EB55C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2644B2D18();
  (*(v3 + 104))(v5, *MEMORY[0x277D85268], v2);
  sub_2644EB08C();
  v7[1] = MEMORY[0x277D84F90];
  sub_2644BD218(&qword_2814AC6A8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FAB0, qword_2644EDB90);
  sub_2644B5B18(&qword_2814AC6B0, &unk_27FF6FAB0, qword_2644EDB90);
  sub_2644EB6CC();
  result = sub_2644EB59C();
  qword_2814ABE68 = result;
  return result;
}

uint64_t Publisher.futureSink(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v34 = a2;
  v6 = sub_2644EAE5C();
  v32 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = sub_2644EBABC();
  WitnessTable = swift_getWitnessTable();
  v25[1] = v9;
  v10 = sub_2644EAE2C();
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v25 - v11;
  v13 = sub_2644EAF3C();
  v14 = swift_getWitnessTable();
  v27 = v14;
  v26 = swift_getWitnessTable();
  v35 = v10;
  v36 = v13;
  v37 = v14;
  v38 = v26;
  v15 = sub_2644EAE4C();
  v16 = *(v15 - 8);
  v29 = v15;
  v30 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = v25 - v17;
  sub_2644EAFDC();
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  sub_2644EAF9C();

  (*(v32 + 8))(v8, v6);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  sub_2644EAFCC();

  (*(v31 + 8))(v12, v10);
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = v33;
  v21[5] = v34;

  v22 = v29;
  swift_getWitnessTable();
  v23 = sub_2644EAFBC();

  (*(v30 + 8))(v18, v22);
  return v23;
}

uint64_t Publisher.oneshot(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25 = a4;
  v26 = a1;
  v27 = a2;
  v7 = sub_2644EB06C();
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2644EB0AC();
  v28 = *(v10 - 8);
  v29 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  if (qword_2814ABE60 != -1)
  {
    swift_once();
  }

  v24 = qword_2814ABE68;
  (*(v14 + 16))(&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a3);
  v17 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v18 = swift_allocObject();
  v19 = v25;
  *(v18 + 2) = a3;
  *(v18 + 3) = v19;
  *(v18 + 4) = v16;
  (*(v14 + 32))(&v18[v17], &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  v20 = &v18[(v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8];
  v21 = v27;
  *v20 = v26;
  v20[1] = v21;
  aBlock[4] = sub_2644BCB88;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644BD140;
  aBlock[3] = &block_descriptor;
  v22 = _Block_copy(aBlock);

  sub_2644EB08C();
  v31 = MEMORY[0x277D84F90];
  sub_2644BD218(&qword_2814AC1D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
  sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
  sub_2644EB6CC();
  MEMORY[0x266739FD0](0, v13, v9, v22);
  _Block_release(v22);
  (*(v30 + 8))(v9, v7);
  (*(v28 + 8))(v13, v29);
}

uint64_t sub_2644BC6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a3;
  v38 = a4;
  v34 = a2;
  v36 = a1;
  v8 = sub_2644EAE5C();
  v35 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = sub_2644EBABC();
  WitnessTable = swift_getWitnessTable();
  v27 = v11;
  v12 = sub_2644EAE2C();
  v32 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = sub_2644EAF3C();
  v16 = swift_getWitnessTable();
  v29 = v16;
  v28 = swift_getWitnessTable();
  v39 = v12;
  v40 = v15;
  v41 = v16;
  v42 = v28;
  v31 = sub_2644EAE4C();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v18 = &v27 - v17;
  sub_2644EAFDC();
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  sub_2644EAF9C();

  (*(v35 + 8))(v10, v8);
  v20 = swift_allocObject();
  *(v20 + 16) = a5;
  *(v20 + 24) = a6;
  sub_2644EAFCC();

  (*(v32 + 8))(v14, v12);
  v21 = swift_allocObject();
  v21[2] = a5;
  v21[3] = a6;
  v22 = v36;
  v21[4] = v37;
  v21[5] = v38;
  v21[6] = v22;

  v23 = v22;

  v24 = v31;
  swift_getWitnessTable();
  v25 = sub_2644EAFBC();

  (*(v33 + 8))(v18, v24);
  swift_beginAccess();
  *(v23 + 16) = v25;
}

uint64_t sub_2644BCB88()
{
  v1 = (*(*(v0[2] - 8) + 80) + 40) & ~*(*(v0[2] - 8) + 80);
  v2 = (v0 + ((*(*(v0[2] - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_2644BC6E4(v0[4], v0 + v1, *v2, v2[1], v0[2], v0[3]);
}

uint64_t sub_2644BCBF8@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, a1, AssociatedTypeWitness);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_2644EBABC();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2644BCCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = sub_2644EBABC();
  MEMORY[0x28223BE20](v5);
  (*(*(AssociatedTypeWitness - 8) + 16))(&v8 - v6, a1, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  return sub_2644EAF4C();
}

uint64_t sub_2644BCE50(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = sub_2644EB06C();
  v17 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2644EB0AC();
  v10 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(a1);
  if (qword_2814ABE60 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_2644BD1DC;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644BD140;
  aBlock[3] = &block_descriptor_24;
  v13 = _Block_copy(aBlock);

  sub_2644EB08C();
  v18 = MEMORY[0x277D84F90];
  sub_2644BD218(&qword_2814AC1D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
  sub_2644B5B18(&qword_2814ABF78, &qword_27FF6F780, &unk_2644EDCE0);
  sub_2644EB6CC();
  MEMORY[0x266739FD0](0, v12, v9, v13);
  _Block_release(v13);
  (*(v17 + 8))(v9, v7);
  (*(v10 + 8))(v12, v16);
}

uint64_t sub_2644BD140(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2644BD1DC()
{
  swift_beginAccess();
  *(v0 + 16) = 0;
}

uint64_t sub_2644BD218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id UserDefaultsObserver.__allocating_init(keys:defaults:notificationBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC8SPShared20UserDefaultsObserver_monitoredKeys] = a1;
  *&v9[OBJC_IVAR____TtC8SPShared20UserDefaultsObserver_defaults] = a2;
  v10 = &v9[OBJC_IVAR____TtC8SPShared20UserDefaultsObserver_notify];
  *v10 = a3;
  *(v10 + 1) = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id UserDefaultsObserver.init(keys:defaults:notificationBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC8SPShared20UserDefaultsObserver_monitoredKeys] = a1;
  *&v4[OBJC_IVAR____TtC8SPShared20UserDefaultsObserver_defaults] = a2;
  v5 = &v4[OBJC_IVAR____TtC8SPShared20UserDefaultsObserver_notify];
  *v5 = a3;
  *(v5 + 1) = a4;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for UserDefaultsObserver();
  return objc_msgSendSuper2(&v7, sel_init);
}

id UserDefaultsObserver.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC8SPShared20UserDefaultsObserver_monitoredKeys];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8SPShared20UserDefaultsObserver_defaults];
    v4 = v1 + 40;
    do
    {

      v5 = sub_2644EB21C();

      [v3 removeObserver:v0 forKeyPath:v5 context:0];

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for UserDefaultsObserver();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_2644BD4E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8SPShared20UserDefaultsObserver_monitoredKeys);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8SPShared20UserDefaultsObserver_defaults);
    v4 = v1 + 40;
    do
    {

      v5 = sub_2644EB21C();

      [v3 addObserver:v0 forKeyPath:v5 options:0 context:0];

      v4 += 16;
      --v2;
    }

    while (v2);
  }
}

void sub_2644BD594()
{
  v1 = *(v0 + OBJC_IVAR____TtC8SPShared20UserDefaultsObserver_monitoredKeys);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8SPShared20UserDefaultsObserver_defaults);
    v4 = v1 + 40;
    do
    {

      v5 = sub_2644EB21C();

      [v3 removeObserver:v0 forKeyPath:v5 context:0];

      v4 += 16;
      --v2;
    }

    while (v2);
  }
}

id UserDefaultsObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2644BD848(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6FAC0, &unk_2644ECEA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *CurrentValueSubject.eraseToAnyCurrentValuePublisher()()
{
  type metadata accessor for AnyCurrentValuePublisher(0, *(*v0 + *MEMORY[0x277CBCE38]), *(*v0 + *MEMORY[0x277CBCE38] + 8), *(*v0 + *MEMORY[0x277CBCE38] + 16));
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_allocObject();
  v2 = sub_2644BDA58(v0, v1);

  swift_unownedRelease();
  return v2;
}

uint64_t AnyCurrentValuePublisher.publisher.getter()
{
  sub_2644BDB28();
}

uint64_t AnyCurrentValuePublisher.deinit()
{
  swift_unownedRelease();

  return v0;
}

uint64_t AnyCurrentValuePublisher.__deallocating_deinit()
{
  swift_unownedRelease();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2644BDA00()
{
  sub_2644BDB28();
}

void *sub_2644BDA58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 16) = a1;
  swift_unownedRetainStrong();
  swift_unownedRetain();
  sub_2644EAF2C();
  swift_getWitnessTable();
  v4 = sub_2644EAF7C();

  *(v3 + 24) = v4;
  return v3;
}

uint64_t FutureError.hashValue.getter()
{
  sub_2644EBA7C();
  MEMORY[0x26673A4D0](0);
  return sub_2644EBAAC();
}

uint64_t _s8SPShared13HashAlgorithmO9hashValueSivg_0()
{
  sub_2644EBA7C();
  MEMORY[0x26673A4D0](0);
  return sub_2644EBAAC();
}

uint64_t sub_2644BDC80()
{
  sub_2644EBA7C();
  MEMORY[0x26673A4D0](0);
  return sub_2644EBAAC();
}

void sub_2644BDCF8(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

uint64_t sub_2644BDD1C()
{
  v1 = v0;
  v9 = 0;
  v2 = *(v0 + *(*v0 + 128));
  v3 = swift_allocObject();
  *(v3 + 16) = &v9;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2644BDE94;
  *(v4 + 24) = v3;
  aBlock[4] = sub_2644B3F34;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644B3F0C;
  aBlock[3] = &block_descriptor_0;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

uint64_t sub_2644BDEA4()
{
  v1 = v0;
  v9 = 0;
  v2 = *(v0 + *(*v0 + 128));
  v3 = swift_allocObject();
  *(v3 + 16) = &v9;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2644BE01C;
  *(v4 + 24) = v3;
  aBlock[4] = sub_2644B3F04;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644B3F0C;
  aBlock[3] = &block_descriptor_13;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

void sub_2644BE01C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (*(v2 + 16) == 1)
  {
    *v1 = *(v2 + 17);
  }

  else
  {
    *v1 = 0;
  }
}

uint64_t sub_2644BE040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Promise(0, *(v4 + 80), a3, a4);
  v10 = sub_2644BE0B0(v6, v7, v8, v9);
  sub_2644BEF90(a1);
  v11 = *(v10 + 16);

  return v11;
}

uint64_t sub_2644BE0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Future(0, *(v4 + 80), a3, a4);
  v5 = swift_allocObject();
  Future.init()();
  result = swift_allocObject();
  *(result + 16) = v5;
  return result;
}

uint64_t sub_2644BE104(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Promise(0, *(v4 + 80), a3, a4);
  v10 = sub_2644BE0B0(v6, v7, v8, v9);
  sub_2644BEF4C(a1);
  v11 = *(v10 + 16);

  return v11;
}

uint64_t sub_2644BE15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2644BF080(a1, &v19);
  if (v20)
  {
    sub_2644BF230(&v19, v21);
  }

  else
  {
    if (qword_27FF6F5E0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_2644BF0F0(&qword_27FF6F9D8, v21);
    if (v20)
    {
      sub_2644BF154(&v19);
    }
  }

  v8 = type metadata accessor for Promise(0, *(v3 + 80), v6, v7);
  v12 = sub_2644BE0B0(v8, v9, v10, v11);
  v13 = v22;
  v14 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v12;
  v16 = *(v14 + 8);

  v16(sub_2644BF200, v15, v13, v14);

  v17 = *(v12 + 16);

  __swift_destroy_boxed_opaque_existential_0(v21);
  return v17;
}

uint64_t Future.__allocating_init()()
{
  v0 = swift_allocObject();
  Future.init()();
  return v0;
}

uint64_t sub_2644BE318()
{
  v9 = 0;
  v1 = *(v0 + *(*v0 + 128));
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v9;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2644BF248;
  *(v3 + 24) = v2;
  aBlock[4] = sub_2644B3F04;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644B3F0C;
  aBlock[3] = &block_descriptor_26;
  v4 = _Block_copy(aBlock);

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    if (v9 == 1)
    {
      v6 = sub_2644B5F14();
      (*(*v0 + 320))(v6);
      v7 = v9;
    }

    else
    {
      v7 = 0;
    }

    return v7;
  }

  return result;
}

void sub_2644BE4D0(_WORD *a1, _BYTE *a2)
{
  if ((a1[8] & 1) == 0)
  {
    sub_2644BF680();
    v4 = swift_allocError();
    v5 = *(*a1 + 112);
    v6 = *(a1 + v5);
    *(a1 + v5) = v4;

    a1[8] = 257;
    *a2 = 1;
  }
}

uint64_t Future.finish(error:)(void *a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_2644EB60C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  (*(*(v3 - 8) + 56))(&v9 - v6, 1, 1, v3);
  LOBYTE(a1) = Future.finish(result:error:)(v7, a1);
  (*(v5 + 8))(v7, v4);
  return a1 & 1;
}

uint64_t Future.flatMap(continuation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Promise(0, *(*v4 + 80), a3, a4);
  v11 = sub_2644BE0B0(v7, v8, v9, v10);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v4;
  v12[5] = v11;

  Future.addSuccess(block:)(sub_2644BF250, v12);

  Future.addFailure(block:)(sub_2644BF6E8, v11);

  v13 = *(v11 + 16);

  return v13;
}

uint64_t sub_2644BE790(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2(a1);

  Future.addSuccess(block:)(sub_2644BF6E4, a5);

  Future.addFailure(block:)(sub_2644BF6E8, a5);
}

uint64_t Future.reschedule(scheduler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Promise(0, *(*v4 + 80), a3, a4);
  v10 = sub_2644BE0B0(v6, v7, v8, v9);
  sub_2644BF0F0(a1, v14);
  v11 = swift_allocObject();
  sub_2644BF230(v14, v11 + 16);
  *(v11 + 56) = v10;

  Future.addCompletion(block:)(sub_2644BF25C, v11);

  v12 = *(v10 + 16);

  return v12;
}

uint64_t sub_2644BE918(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v23 = a2;
  v7 = *(*a4 + 80);
  v8 = sub_2644EB60C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = a3[3];
  v14 = a3[4];
  v22 = __swift_project_boxed_opaque_existential_1(a3, v13);
  (*(v9 + 16))(v12, a1, v8);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v7;
  *(v17 + 24) = a4;
  (*(v9 + 32))(v17 + v15, v12, v8);
  v18 = v23;
  *(v17 + v16) = v23;
  v19 = *(v14 + 8);

  v20 = v18;
  v19(sub_2644BF5EC, v17, v13, v14);
}

uint64_t Future.recover(recovery:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Promise(0, *(*v4 + 80), a3, a4);
  v11 = sub_2644BE0B0(v7, v8, v9, v10);

  Future.addSuccess(block:)(sub_2644BF6E4, v11);

  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v4;
  v12[5] = v11;

  Future.addFailure(block:)(sub_2644BF2B0, v12);

  v13 = *(v11 + 16);

  return v13;
}

uint64_t sub_2644BEBE4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2(a1);

  Future.addSuccess(block:)(sub_2644BF5E4, a5);

  Future.addFailure(block:)(sub_2644BF5E8, a5);
}

uint64_t Future.hash(into:)(uint64_t a1)
{
  sub_2644EADAC();
  sub_2644B2D64(qword_2814AC288, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_2644EB1DC();
}

uint64_t Future.hashValue.getter()
{
  sub_2644EBA7C();
  Future.hash(into:)(v1);
  return sub_2644EBAAC();
}

uint64_t sub_2644BEDA4()
{
  sub_2644EBA7C();
  Future.hash(into:)(v1);
  return sub_2644EBAAC();
}

uint64_t Future.debugDescription.getter()
{
  v0 = sub_2644EBB4C();
  MEMORY[0x266739CC0](v0);

  MEMORY[0x266739CC0](2016419898, 0xE400000000000000);
  sub_2644BF2BC();
  v1 = sub_2644EB29C();
  MEMORY[0x266739CC0](v1);

  MEMORY[0x266739CC0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_2644BEF18(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_2644BEF4C(void *a1)
{

  LOBYTE(a1) = Future.finish(error:)(a1);

  return a1 & 1;
}

uint64_t sub_2644BEF90(uint64_t a1)
{

  LOBYTE(a1) = Future.finish(result:)(a1);

  return a1 & 1;
}

uint64_t sub_2644BEFD4(uint64_t a1, void *a2)
{

  LOBYTE(a2) = Future.finish(result:error:)(a1, a2);

  return a2 & 1;
}

uint64_t Promise.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2644BF080(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F7A0, &qword_2644ECAA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2644BF0F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2644BF154(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F7A0, &qword_2644ECAA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2644BF230(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t objectdestroy_54Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_2644BF2BC()
{
  result = qword_2814ABF80;
  if (!qword_2814ABF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814ABF80);
  }

  return result;
}

unint64_t sub_2644BF314()
{
  result = qword_27FF6F7B0[0];
  if (!qword_27FF6F7B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF6F7B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FutureError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for FutureError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_2644BF5EC()
{
  v1 = *(sub_2644EB60C() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  return sub_2644BEFD4(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_2644BF680()
{
  result = qword_27FF6F838;
  if (!qword_27FF6F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6F838);
  }

  return result;
}

uint64_t Publisher.unique<A>(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = a2;
  v50 = a1;
  v43 = a6;
  sub_2644EB42C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_2644EB60C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v49 = *(TupleTypeMetadata2 - 8);
  v12 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v14 = (&v39 - v13);
  v44 = v10;
  v15 = *(v10 - 8);
  MEMORY[0x28223BE20](v12);
  v17 = &v39 - v16;
  v52 = a3;
  v53 = a5;
  v40 = v18;
  v19 = sub_2644EAE3C();
  v48 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v46 = &v39 - v20;
  WitnessTable = swift_getWitnessTable();
  v39 = v19;
  v22 = AssociatedTypeWitness;
  v41 = WitnessTable;
  v47 = sub_2644EAE1C();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v42 = &v39 - v23;
  v24 = sub_2644EB31C();
  if (sub_2644EB34C())
  {
    v25 = v43;
    v26 = sub_2644C00A8(v24, a4, v43);
  }

  else
  {
    v25 = v43;
    v26 = MEMORY[0x277D84FA0];
  }

  (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
  v27 = v40;
  v28 = *(v40 + 48);
  *v14 = v26;
  (*(v15 + 32))(v14 + v28, v17, v44);
  v29 = swift_allocObject();
  v31 = v52;
  v30 = v53;
  v29[2] = v52;
  v29[3] = a4;
  v29[4] = v30;
  v29[5] = v25;
  v29[6] = v50;
  v29[7] = v51;

  v32 = v46;
  sub_2644EAFAC();

  (*(v49 + 8))(v14, v27);
  v33 = swift_allocObject();
  v33[2] = v31;
  v33[3] = a4;
  v33[4] = v30;
  v33[5] = v25;
  v34 = v42;
  v35 = v39;
  sub_2644EAF8C();

  (*(v48 + 8))(v32, v35);
  v36 = v47;
  swift_getWitnessTable();
  v37 = sub_2644EAF7C();
  (*(v45 + 8))(v34, v36);
  return v37;
}

uint64_t sub_2644BFBBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, char *a8@<X8>)
{
  v30 = a4;
  v31 = a3;
  v28 = a1;
  v29 = a2;
  v10 = *(a6 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  sub_2644EB42C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_2644EB60C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v18 = (&v27 - v17);
  (*(v19 + 16))(&v27 - v17, v28, TupleTypeMetadata2);
  v20 = *(TupleTypeMetadata2 + 48);
  v32 = *v18;
  v21 = v18 + v20;
  v22 = v29;
  (*(*(v15 - 8) + 8))(v21, v15);
  v31(v22);
  LOBYTE(v15) = sub_2644EB41C();
  (*(v10 + 8))(v13, a6);
  v23 = *(TupleTypeMetadata2 + 48);
  *a8 = v32;
  v24 = *(AssociatedTypeWitness - 8);
  if (v15)
  {
    (*(*(AssociatedTypeWitness - 8) + 16))(&a8[v23], v22, AssociatedTypeWitness);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  return (*(v24 + 56))(&a8[v23], v25, 1, AssociatedTypeWitness);
}

uint64_t sub_2644BFE90@<X0>(uint64_t a1@<X0>, uint64_t a6@<X8>)
{
  sub_2644EB42C();
  swift_getAssociatedTypeWitness();
  v8 = sub_2644EB60C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, TupleTypeMetadata2);

  return (*(*(v8 - 8) + 32))(a6, &v11[*(TupleTypeMetadata2 + 48)], v8);
}

uint64_t Publisher<>.unique()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = Publisher.unique<A>(by:)(sub_2644C0480, v6, a1, AssociatedTypeWitness, a2, a3);

  return v8;
}

uint64_t sub_2644C00A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v50 = &v38 - v11;
  v39 = v12;
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  if (sub_2644EB34C())
  {
    sub_2644EB77C();
    v15 = sub_2644EB76C();
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  v43 = sub_2644EB34C();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_2644EB32C();
    sub_2644EB2FC();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_2644EB7AC();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_2644EB1CC();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v9, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_2644EB20C();
        v32 = *v47;
        (*v47)(v9, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_2644C0480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, a1, AssociatedTypeWitness);
}

uint64_t sub_2644C0508()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F878, &unk_2644ED920);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_27FF6F840 = result;
  return result;
}

void sub_2644C0548()
{
  if ((byte_27FF6F848 & 1) == 0)
  {
    v0 = dispatch_group_create();
    dispatch_group_enter(v0);
    v1 = objc_opt_self();
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v5[4] = sub_2644C0D54;
    v5[5] = v2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_2644BD140;
    v5[3] = &block_descriptor_1;
    v3 = _Block_copy(v5);
    v4 = v0;

    [v1 detachNewThreadWithBlock_];
    _Block_release(v3);
    sub_2644EB4CC();
  }
}

void sub_2644C0668(NSObject *a1)
{
  v2 = [objc_opt_self() currentThread];
  v3 = sub_2644EB21C();
  [v2 setName_];

  v4 = [objc_opt_self() currentRunLoop];
  v5 = qword_27FF6F850;
  qword_27FF6F850 = v4;
  v6 = v4;

  if (!v6)
  {
    __break(1u);
  }

  v10[4] = nullsub_1;
  v10[5] = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2644DC5F4;
  v10[3] = &block_descriptor_3;
  v7 = _Block_copy(v10);
  v8 = [objc_opt_self() timerWithTimeInterval:1 repeats:v7 block:86400.0];
  _Block_release(v7);

  [v6 addTimer:v8 forMode:*MEMORY[0x277CBE640]];

  byte_27FF6F848 = 1;
  dispatch_group_leave(a1);
  for (i = qword_27FF6F850; qword_27FF6F850; i = qword_27FF6F850)
  {
    [i run];
  }

  __break(1u);
}

uint64_t Publisher.timeout(_:queue:customError:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a1;
  v31 = a2;
  v32 = a3;
  v36 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F858, "$1");
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F860, "$1");
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v29 - v13;
  v30 = sub_2644EB5DC();
  v15 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2644B4694(255, &qword_27FF6F868, 0x277CBEB88);
  v19 = sub_2644C0CB0(&qword_27FF6F870, &qword_27FF6F868, 0x277CBEB88, MEMORY[0x277CC9E80]);
  v33 = a4;
  v34 = a5;
  v37 = a4;
  v38 = v18;
  v39 = a5;
  v40 = v19;
  v20 = sub_2644EAE7C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v29 - v22;
  if (qword_27FF6F5A8 != -1)
  {
    swift_once();
  }

  sub_2644EADDC();
  result = sub_2644EB5CC();
  v25 = qword_27FF6F850;
  if (qword_27FF6F850)
  {
    v37 = qword_27FF6F850;
    v26 = sub_2644EB5BC();
    (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
    v27 = v25;
    sub_2644EB00C();
    sub_2644C0CF4(v14, &qword_27FF6F860, "$1");

    (*(v15 + 8))(v17, v30);
    v37 = v35;
    v28 = sub_2644EB53C();
    (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
    sub_2644B4694(0, &qword_2814AC6A0, 0x277D85C78);
    swift_getWitnessTable();
    sub_2644C0CB0(&unk_2814AC428, &qword_2814AC6A0, 0x277D85C78, MEMORY[0x277D85228]);
    sub_2644EAFFC();
    sub_2644C0CF4(v11, &qword_27FF6F858, "$1");
    return (*(v21 + 8))(v23, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2644C0CB0(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2644B4694(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2644C0CF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2644C0D64()
{
  v0 = sub_2644EAE0C();
  __swift_allocate_value_buffer(v0, qword_27FF715E0);
  __swift_project_value_buffer(v0, qword_27FF715E0);
  return sub_2644EADFC();
}

unint64_t BluetoothPairingState.Reason.description.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E752ELL;
  v3 = 0xD000000000000013;
  v4 = 0x65726961706E752ELL;
  if (v1 != 4)
  {
    v4 = 0x4D726961706E752ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6465726961702ELL;
  if (v1 != 1)
  {
    v5 = 0x65726961706E752ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

SPShared::BluetoothPairingState::Reason_optional __swiftcall BluetoothPairingState.Reason.init(rawValue:)(SPShared::BluetoothPairingState::Reason_optional rawValue)
{
  if (rawValue.value <= 0xC8u)
  {
    if (rawValue.value < SPShared_BluetoothPairingState_Reason_unpaired)
    {
      v1->value = rawValue.value;
      return rawValue;
    }

    if (rawValue.value == 200)
    {
      rawValue.value = SPShared_BluetoothPairingState_Reason_unpaired;
      v1->value = SPShared_BluetoothPairingState_Reason_unpaired;
      return rawValue;
    }

    goto LABEL_11;
  }

  if (rawValue.value == 201)
  {
    rawValue.value = SPShared_BluetoothPairingState_Reason_unpairedUserSwitch;
    v1->value = SPShared_BluetoothPairingState_Reason_unpairedUserSwitch;
    return rawValue;
  }

  if (rawValue.value != 202)
  {
    if (rawValue.value == 203)
    {
      rawValue.value = SPShared_BluetoothPairingState_Reason_unpairMagnet;
      v1->value = SPShared_BluetoothPairingState_Reason_unpairMagnet;
      return rawValue;
    }

LABEL_11:
    rawValue.value = SPShared_BluetoothPairingState_Reason_unknownDefault;
    v1->value = SPShared_BluetoothPairingState_Reason_unknownDefault;
    return rawValue;
  }

  rawValue.value = SPShared_BluetoothPairingState_Reason_unpairedCloud;
  v1->value = SPShared_BluetoothPairingState_Reason_unpairedCloud;
  return rawValue;
}

uint64_t sub_2644C0F8C()
{
  sub_2644EBA7C();
  sub_2644EBA9C();
  return sub_2644EBAAC();
}

uint64_t sub_2644C1024()
{
  sub_2644EBA7C();
  sub_2644EBA9C();
  return sub_2644EBAAC();
}

unint64_t sub_2644C10A0()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E752ELL;
  v3 = 0xD000000000000013;
  v4 = 0x65726961706E752ELL;
  if (v1 != 4)
  {
    v4 = 0x4D726961706E752ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6465726961702ELL;
  if (v1 != 1)
  {
    v5 = 0x65726961706E752ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t BluetoothPairingState.macAddress.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BluetoothPairingState(0) + 20);
  v4 = sub_2644EAB6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for BluetoothPairingState(uint64_t a1)
{
  result = qword_27FF6F8A8;
  if (!qword_27FF6F8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BluetoothPairingState.reason.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for BluetoothPairingState(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t BluetoothPairingState.init(rawValue:)@<X0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F880, &qword_2644ECD00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v43 - v4;
  v6 = sub_2644EAB6C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BluetoothPairingState(0);
  v46 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = (&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = a1;
  v48 = a1;
  sub_2644C1908();
  v13 = sub_2644EB82C();
  v15 = v14;
  v16 = sub_2644EAD2C();
  v18 = sub_2644C195C(v16, v17);
  sub_2644EAD0C();
  sub_2644C1AD8(v18);
  sub_2644EAB5C();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v19 = v10;
    sub_2644C0CF4(v5, &qword_27FF6F880, &qword_2644ECD00);
    if (qword_27FF6F5B0 != -1)
    {
      swift_once();
    }

    v20 = sub_2644EAE0C();
    __swift_project_value_buffer(v20, qword_27FF715E0);
    sub_2644C206C(v13, v15);
    v21 = sub_2644EADEC();
    v22 = sub_2644EB49C();
    sub_2644C20C0(v13, v15);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v49 = v15;
      v50 = v24;
      *v23 = 136446210;
      v48 = v13;
      sub_2644C2114();
      v25 = sub_2644EABCC();
      v27 = sub_2644B73B8(v25, v26, &v50);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_2644B1000, v21, v22, "Invalid MACAddress %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x26673AD40](v24, -1, -1);
      MEMORY[0x26673AD40](v23, -1, -1);
      sub_2644C20C0(v13, v15);
    }

    else
    {

      sub_2644C20C0(v13, v15);
    }

    v31 = v46;
    v30 = v47;
    v32 = v19;
    return (*(v31 + 56))(v30, 1, 1, v32);
  }

  (*(v7 + 32))(v9, v5, v6);
  v28 = *(v10 + 20);
  (*(v7 + 16))(v12 + v28, v9, v6);
  v29 = sub_2644EAD0C();
  if (v29 > 0xC8u)
  {
    switch(v29)
    {
      case 0xC9u:
        v29 = 3;
        goto LABEL_23;
      case 0xCAu:
        v29 = 4;
        goto LABEL_23;
      case 0xCBu:
        v29 = 5;
        goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (v29 >= 2u)
  {
    if (v29 == 200)
    {
      v29 = 2;
      goto LABEL_23;
    }

LABEL_18:
    v44 = v10;
    if (qword_27FF6F5B0 != -1)
    {
      swift_once();
    }

    v34 = sub_2644EAE0C();
    __swift_project_value_buffer(v34, qword_27FF715E0);
    v35 = sub_2644EADEC();
    v36 = sub_2644EB49C();
    v45 = v35;
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 16908544;
      v37[4] = v29;
      v38 = v36;
      v39 = v45;
      _os_log_impl(&dword_2644B1000, v45, v38, "Invalid reason %{public}hhu", v37, 5u);
      MEMORY[0x26673AD40](v37, -1, -1);

      sub_2644C20C0(v13, v15);
    }

    else
    {
      sub_2644C20C0(v13, v15);
    }

    v31 = v46;
    v41 = v47;
    v42 = *(v7 + 8);
    v42(v9, v6);
    v42(v12 + v28, v6);
    v30 = v41;
    v32 = v44;
    return (*(v31 + 56))(v30, 1, 1, v32);
  }

LABEL_23:
  (*(v7 + 8))(v9, v6);
  sub_2644C20C0(v13, v15);
  *(v12 + *(v10 + 24)) = v29;
  *v12 = v45;
  v40 = v47;
  sub_2644C2168(v12, v47);
  (*(v46 + 56))(v40, 0, 1, v10);
  return sub_2644C21CC(v12);
}

unint64_t sub_2644C1908()
{
  result = qword_27FF6F888;
  if (!qword_27FF6F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6F888);
  }

  return result;
}

void *sub_2644C195C(uint64_t a1, unint64_t a2)
{
  v4 = sub_2644EAD3C();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_2644C20C0(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_2644C1FF8(v10, 0);
      v14 = sub_2644EACCC();
      sub_2644C20C0(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_2644C1AD8(uint64_t a1)
{
  v22[5] = *MEMORY[0x277D85DE8];
  v18 = a1;
  *&v19 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F8B8, &qword_2644ECE88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F8C0, &qword_2644ECE90);
  if (!swift_dynamicCast())
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_2644C0CF4(v20, &qword_27FF6F8C8, &qword_2644ECE98);
    *&v20[0] = sub_2644C2AC0(*(a1 + 16));
    *(&v20[0] + 1) = v2;
    MEMORY[0x28223BE20](*&v20[0]);
    v17[2] = &v18;
    v5 = sub_2644C2538(sub_2644C2B60, v17);
    v6 = v3;
    v7 = *(&v20[0] + 1) >> 62;
    if ((*(&v20[0] + 1) >> 62) > 1)
    {
      if (v7 != 2)
      {
        if (!v4)
        {
          goto LABEL_18;
        }

        v12 = 0;
LABEL_31:
        if (v12 < v4)
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        sub_2644EACEC();
LABEL_33:

        goto LABEL_34;
      }

      v9 = *(*&v20[0] + 16);
      v8 = *(*&v20[0] + 24);
      v10 = __OFSUB__(v8, v9);
      v11 = v8 - v9;
      if (v10)
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
      }

      if (v4 != v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (!v7)
      {
        if (v4 == BYTE14(v20[0]))
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

      if (__OFSUB__(DWORD1(v20[0]), v20[0]))
      {
        goto LABEL_42;
      }

      if (v4 != DWORD1(v20[0]) - LODWORD(v20[0]))
      {
LABEL_13:
        if (v7 == 2)
        {
          v12 = *(*&v20[0] + 24);
        }

        else if (v7 == 1)
        {
          v12 = *&v20[0] >> 32;
        }

        else
        {
          v12 = BYTE14(v20[0]);
        }

        goto LABEL_31;
      }
    }

LABEL_18:
    memset(v22, 0, 15);
    if (v3)
    {
      if (!__OFSUB__(v3, 1))
      {
        if (v3 - 1 < 0)
        {
LABEL_35:
          __break(1u);
        }

        else
        {
          LOBYTE(v13) = 0;
          while (1)
          {
            v14 = v6 - 1;
            if ((v6 - 1) >= *(v5 + 2))
            {
              break;
            }

            *(v22 + v13) = v5[v6 + 31];
            v13 = v13 + 1;
            if ((v13 & 0x100) != 0)
            {
              goto LABEL_37;
            }

            if (v13 == 14)
            {
              *&v19 = v22[0];
              *(&v19 + 6) = *(v22 + 6);
              sub_2644EACFC();
              if (v6 == 1)
              {
                goto LABEL_33;
              }

              LOBYTE(v13) = 0;
            }

            else if (v6 == 1)
            {
              goto LABEL_38;
            }

            --v6;
            if (v14 < 1)
            {
              goto LABEL_35;
            }
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        *&v19 = v22[0];
        *(&v19 + 6) = *(v22 + 6);
        sub_2644EACFC();
        goto LABEL_33;
      }

      __break(1u);
      goto LABEL_40;
    }

    goto LABEL_33;
  }

  sub_2644BF230(v20, v22);
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_2644EAC4C();
  v20[0] = v19;
  __swift_destroy_boxed_opaque_existential_0(v22);
LABEL_34:
  v15 = v20[0];
  sub_2644C206C(*&v20[0], *(&v20[0] + 1));

  sub_2644C20C0(v15, *(&v15 + 1));
  return v15;
}

uint64_t BluetoothPairingState.description.getter()
{
  sub_2644EB79C();

  v1 = type metadata accessor for BluetoothPairingState(0);
  sub_2644EAB6C();
  sub_2644C2228();
  v2 = sub_2644EB94C();
  MEMORY[0x266739CC0](v2);

  MEMORY[0x266739CC0](0x6F73616572202D20, 0xEB00000000203A6ELL);
  v3 = *(v0 + *(v1 + 24));
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v4 = 0x80000002644EE810;
      v5 = 0xD000000000000013;
      goto LABEL_13;
    }

    if (v3 != 4)
    {
      v4 = 0xED000074656E6761;
      v5 = 0x4D726961706E752ELL;
      goto LABEL_13;
    }

    v4 = 0xEE0064756F6C4364;
LABEL_11:
    v5 = 0x65726961706E752ELL;
    goto LABEL_13;
  }

  if (!*(v0 + *(v1 + 24)))
  {
    v4 = 0xE800000000000000;
    v5 = 0x6E776F6E6B6E752ELL;
    goto LABEL_13;
  }

  if (v3 != 1)
  {
    v4 = 0xE900000000000064;
    goto LABEL_11;
  }

  v4 = 0xE700000000000000;
  v5 = 0x6465726961702ELL;
LABEL_13:
  MEMORY[0x266739CC0](v5, v4);

  return 0x203A43414DLL;
}

void *sub_2644C1FF8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F718, &qword_2644EC9A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_2644C206C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2644C20C0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_2644C2114()
{
  result = qword_27FF6F890;
  if (!qword_27FF6F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6F890);
  }

  return result;
}

uint64_t sub_2644C2168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BluetoothPairingState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2644C21CC(uint64_t a1)
{
  v2 = type metadata accessor for BluetoothPairingState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2644C2228()
{
  result = qword_27FF6F898;
  if (!qword_27FF6F898)
  {
    sub_2644EAB6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6F898);
  }

  return result;
}

unint64_t sub_2644C2284()
{
  result = qword_27FF6F8A0;
  if (!qword_27FF6F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6F8A0);
  }

  return result;
}

uint64_t sub_2644C2300(uint64_t a1)
{
  result = sub_2644EAB6C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BluetoothPairingState.Reason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BluetoothPairingState.Reason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
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

char *sub_2644C2538(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_2644C20C0(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_2644C20C0(v7, v6);
    *v4 = xmmword_2644ECCF0;
    sub_2644C20C0(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_2644EABFC() && __OFSUB__(v7, sub_2644EAC2C()))
      {
LABEL_26:
        __break(1u);
      }

      sub_2644EAC3C();
      swift_allocObject();
      v14 = sub_2644EABDC();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_2644C29CC(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_2644C20C0(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_2644ECCF0;
    sub_2644C20C0(0, 0xC000000000000000);
    sub_2644EACAC();
    result = sub_2644C29CC(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_2644C28D0@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2644C2BC8(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2644C2C88(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2644C2D04(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_2644C2964(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_2644C29CC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_2644EABFC();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_2644EAC2C();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_2644EAC1C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

int8x16_t *sub_2644C2A80@<X0>(int8x16_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, int8x16_t **a4@<X8>)
{
  result = sub_2644C2DA8(a1, a2, *a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_2644C2AC0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_2644CFE24(result);
    }

    else
    {
      sub_2644EAC3C();
      swift_allocObject();
      sub_2644EAC0C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_2644EACDC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_2644C2B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = **(v3 + 16);
  v8[2] = &v9;
  result = sub_2644C2964(sub_2644C2D88, v8, a1, a2);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  return result;
}

unint64_t sub_2644C2BC8(_BYTE *a1, _BYTE *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_2644CFE24(v5);
  __dst = result;
  v11 = v7;
  v13 = v8;
  v12 = v9;
  if (a1)
  {
    if (a2 != a1)
    {
      memcpy(&__dst, a1, v4);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_2644C2C88(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2644EAC3C();
  swift_allocObject();
  result = sub_2644EABEC();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2644EACDC();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2644C2D04(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2644EAC3C();
  swift_allocObject();
  result = sub_2644EABEC();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

int8x16_t *sub_2644C2DA8(int8x16_t *result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!result || !a2)
  {
    return a3;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    if (v4)
    {
      v5 = v4 - 1;
      if (v4 - 1 >= (a2 - 1))
      {
        v6 = a2 - 1;
      }

      else
      {
        v6 = v4 - 1;
      }

      v7 = v6 + 1;
      if (v7 <= 0x10)
      {
        goto LABEL_22;
      }

      if (v5 >= a2 - 1)
      {
        v5 = a2 - 1;
      }

      if (a3 + v4 + 32 > result && v4 - v5 + a3 + 31 < result->u64 + v5 + 1)
      {
LABEL_22:
        v10 = 1;
        v11 = result;
        v12 = *(a3 + 16);
      }

      else
      {
        v8 = v7 & 0xF;
        if ((v7 & 0xF) == 0)
        {
          v8 = 16;
        }

        v9 = v7 - v8;
        v10 = v7 - v8 + 1;
        v11 = (result + v7 - v8);
        v12 = v4 - v9;
        v13 = (v4 + a3 + 16);
        do
        {
          v14 = *v13--;
          v15 = vrev64q_s8(v14);
          *result++ = vextq_s8(v15, v15, 8uLL);
          v9 -= 16;
        }

        while (v9);
      }

      v16 = a2 - v10;
      do
      {
        v17 = v12 - 1;
        v11->i8[0] = *(a3 + 31 + v12);
        if (!v16)
        {
          break;
        }

        v11 = (v11 + 1);
        --v16;
        --v12;
      }

      while (v17);
    }

    return a3;
  }

  __break(1u);
  return result;
}

int *XPCServiceDescription.init(name:options:exportedObject:exportedInterface:remoteObjectInterface:shouldAccept:interruptionHandler:invalidationHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = sub_2644EAB8C();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  result = type metadata accessor for XPCServiceDescription(0);
  *(a9 + result[5]) = a2;
  *(a9 + result[6]) = a3;
  *(a9 + result[7]) = a4;
  *(a9 + result[8]) = a5;
  v21 = (a9 + result[10]);
  *v21 = a8;
  v21[1] = a10;
  v22 = (a9 + result[11]);
  *v22 = a11;
  v22[1] = a12;
  v23 = (a9 + result[9]);
  *v23 = a6;
  v23[1] = a7;
  return result;
}

int *XPCServiceDescription.init(name:options:remoteObjectInterface:interruptionHandler:invalidationHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = sub_2644EAB8C();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  result = type metadata accessor for XPCServiceDescription(0);
  *(a8 + result[5]) = a2;
  *(a8 + result[6]) = 0;
  *(a8 + result[7]) = 0;
  *(a8 + result[8]) = a3;
  v18 = (a8 + result[10]);
  *v18 = a4;
  v18[1] = a5;
  v19 = (a8 + result[11]);
  *v19 = a6;
  v19[1] = a7;
  v20 = (a8 + result[9]);
  *v20 = 0;
  v20[1] = 0;
  return result;
}

int *XPCServiceDescription.init(name:options:exportedObject:exportedInterface:shouldAccept:interruptionHandler:invalidationHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v19 = sub_2644EAB8C();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  result = type metadata accessor for XPCServiceDescription(0);
  *(a9 + result[5]) = a2;
  *(a9 + result[6]) = a3;
  *(a9 + result[7]) = a4;
  *(a9 + result[8]) = 0;
  v21 = (a9 + result[10]);
  *v21 = a7;
  v21[1] = a8;
  v22 = (a9 + result[11]);
  *v22 = a10;
  v22[1] = a11;
  v23 = (a9 + result[9]);
  *v23 = a5;
  v23[1] = a6;
  return result;
}

uint64_t XPCServiceDescription.init(connection:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2644EAB8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 serviceName];
  if (v8)
  {
    v9 = v8;
    sub_2644EB22C();

    sub_2644EAB9C();
    if ([a1 exportedObject])
    {
      sub_2644EB6AC();
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    v23[0] = v21;
    v23[1] = v22;
    if (*(&v22 + 1))
    {
      sub_2644B4694(0, &qword_2814ABAA8, 0x277D82BB8);
      if (swift_dynamicCast())
      {
        v13 = v20[1];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      sub_2644BD848(v23);
      v13 = 0;
    }

    v14 = [a1 exportedInterface];
    v15 = [a1 remoteObjectInterface];

    (*(v5 + 32))(a2, v7, v4);
    v16 = type metadata accessor for XPCServiceDescription(0);
    *(a2 + v16[5]) = 0;
    *(a2 + v16[6]) = v13;
    *(a2 + v16[7]) = v14;
    *(a2 + v16[8]) = v15;
    v17 = (a2 + v16[10]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (a2 + v16[11]);
    *v18 = 0;
    v18[1] = 0;
    v19 = (a2 + v16[9]);
    *v19 = 0;
    v19[1] = 0;
    return (*(*(v16 - 1) + 56))(a2, 0, 1, v16);
  }

  else
  {

    v10 = type metadata accessor for XPCServiceDescription(0);
    v11 = *(*(v10 - 8) + 56);

    return v11(a2, 1, 1, v10);
  }
}

void sub_2644C348C(uint64_t a1)
{
  sub_2644EAB8C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Options(319);
    if (v2 <= 0x3F)
    {
      sub_2644C3590(319, &qword_2814ABAA0, &qword_2814ABAA8, 0x277D82BB8);
      if (v3 <= 0x3F)
      {
        sub_2644C3590(319, &qword_2814ABAB8, &qword_2814ABAC0, 0x277CCAE90);
        if (v4 <= 0x3F)
        {
          sub_2644C35E8(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2644C3590(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_2644B4694(255, a3, a4);
    v5 = sub_2644EB60C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2644C35E8(uint64_t a1)
{
  if (!qword_2814ABA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF6F8D0, &qword_2644EDCF0);
    v1 = sub_2644EB60C();
    if (!v2)
    {
      atomic_store(v1, &qword_2814ABA90);
    }
  }
}

uint64_t Publisher.retryWithDelay<A>(retries:delay:scheduler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[0] = a7;
  v18[2] = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_2644EAECC();
  swift_getWitnessTable();
  v12 = sub_2644EAE6C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v18 - v14;
  v18[3] = sub_2644C3854(a2, a3, a4, a5, a6, v18[0]);
  sub_2644EAFEC();

  swift_getWitnessTable();
  v16 = sub_2644EAF7C();
  (*(v13 + 8))(v15, v12);
  return v16;
}

uint64_t sub_2644C3854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a6;
  v41 = a2;
  v42 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v39 = *(v9 + 64);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v38 = &v30 - v11;
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v33 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v14 = a5;
  v31 = a5;
  v32 = a3;
  swift_getAssociatedConformanceWitness();
  v15 = sub_2644EAF5C();
  v35 = v15;
  WitnessTable = swift_getWitnessTable();
  v44 = a3;
  v45 = v15;
  v46 = v14;
  v47 = WitnessTable;
  v16 = sub_2644EAE4C();
  v17 = *(v16 - 8);
  v36 = v16;
  v37 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - v18;
  v20 = v33;
  (*(v12 + 16))(v33, v41, a4);
  v30 = v9;
  v21 = v38;
  v22 = AssociatedTypeWitness;
  (*(v9 + 16))(v38, v42, AssociatedTypeWitness);
  v23 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v24 = (v13 + v23 + *(v9 + 80)) & ~*(v9 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = v32;
  *(v25 + 3) = a4;
  v26 = v43;
  *(v25 + 4) = v31;
  *(v25 + 5) = v26;
  (*(v12 + 32))(&v25[v23], v20, a4);
  (*(v30 + 32))(&v25[v24], v21, v22);
  sub_2644EAFCC();

  v27 = v36;
  swift_getWitnessTable();
  v28 = sub_2644EAF7C();
  (*(v37 + 8))(v19, v27);
  return v28;
}

uint64_t sub_2644C3C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v39 = a7;
  v40 = a2;
  v41 = a3;
  v43 = a1;
  v44 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  v42 = *(v38 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v37 = &v31 - v11;
  swift_getAssociatedTypeWitness();
  v32 = a5;
  swift_getAssociatedConformanceWitness();
  v46 = swift_getAssociatedTypeWitness();
  v12 = *(v46 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v46);
  v16 = &v31 - v15;
  v33 = &v31 - v15;
  v17 = *(a5 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a4;
  v35 = a6;
  swift_getAssociatedTypeWitness();
  v20 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v36 = sub_2644EAF5C();
  v21 = v32;
  (*(v17 + 16))(v19, v40, v32);
  (*(v12 + 16))(v16, v41, v46);
  v23 = v37;
  v22 = v38;
  (*(v38 + 16))(v37, v43, v20);
  v24 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v25 = (v18 + v24 + *(v12 + 80)) & ~*(v12 + 80);
  v26 = (v13 + *(v22 + 80) + v25) & ~*(v22 + 80);
  v27 = swift_allocObject();
  v28 = v35;
  *(v27 + 2) = v34;
  *(v27 + 3) = v21;
  v29 = v39;
  *(v27 + 4) = v28;
  *(v27 + 5) = v29;
  (*(v17 + 32))(&v27[v24], v19, v21);
  (*(v12 + 32))(&v27[v25], v33, v46);
  (*(v22 + 32))(&v27[v26], v23, AssociatedTypeWitness);
  result = sub_2644EAF6C();
  *v44 = result;
  return result;
}

uint64_t sub_2644C406C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33 = a6;
  v34 = a8;
  v31 = a4;
  v32 = a5;
  v29 = a3;
  v35 = a1;
  v36 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v28 = &v27 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  sub_2644EB03C();
  swift_getAssociatedConformanceWitness();
  sub_2644EB61C();
  v19 = *(v13 + 8);
  v27 = v13 + 8;
  v31 = v19;
  v19(v16, v12);
  v20 = v28;
  v21 = AssociatedTypeWitness;
  (*(v10 + 16))(v28, v32, AssociatedTypeWitness);
  v22 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v23 = swift_allocObject();
  v24 = v34;
  *(v23 + 2) = v33;
  *(v23 + 3) = a7;
  *(v23 + 4) = v24;
  *(v23 + 5) = a9;
  v25 = v36;
  *(v23 + 6) = v35;
  *(v23 + 7) = v25;
  (*(v10 + 32))(&v23[v22], v20, v21);

  sub_2644EB04C();

  return v31(v18, v12);
}

uint64_t sub_2644C434C(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = sub_2644EBABC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  (*(*(AssociatedTypeWitness - 8) + 16))(&v14 - v11, a3, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  a1(v12);
  return (*(v10 + 8))(v12, v9);
}

uint64_t Sequence<>.merged()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v8 = sub_2644EAE9C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v5 + 16))(v7, v3, a1);
  sub_2644EAEAC();
  swift_getWitnessTable();
  v12 = sub_2644EAF7C();
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t sub_2644C46C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = (*(*(v5 - 8) + 80) + 48) & ~*(*(v5 - 8) + 80);
  v9 = v8 + *(*(v5 - 8) + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = v2 + ((v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_2644C3C88(a1, v2 + v8, v11, v4, v5, v6, v7, a2);
}

uint64_t sub_2644C4828(uint64_t a1, uint64_t a2)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = (*(*(v5 - 8) + 80) + 48) & ~*(*(v5 - 8) + 80);
  v9 = v8 + *(*(v5 - 8) + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = (v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_2644C406C(a1, a2, v2 + v8, (v2 + v11), v2 + ((v11 + v12 + *(v13 + 80)) & ~*(v13 + 80)), v4, v5, v6, v7);
}

uint64_t sub_2644C49F8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0 + ((*(v4 + 80) + 64) & ~*(v4 + 80));

  return sub_2644C434C(v5, v6, v7, v1, v2, v3);
}

uint64_t ServerStatusCode.description.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    if (*v0 <= 6u)
    {
      if (v1 == 5)
      {
        strcpy(v4, ".forbidden(");
        HIDWORD(v4[1]) = -352321536;
      }

      else
      {
        sub_2644EB79C();

        v4[0] = 0xD000000000000010;
        v4[1] = 0x80000002644EE890;
      }
    }

    else if (v1 == 7)
    {
      sub_2644EB79C();

      v4[0] = 0xD000000000000014;
      v4[1] = 0x80000002644EE870;
    }

    else if (v1 == 8)
    {
      strcpy(v4, ".locked(");
      BYTE1(v4[1]) = 0;
      WORD1(v4[1]) = 0;
      HIDWORD(v4[1]) = -402653184;
    }

    else
    {
      sub_2644EB79C();

      strcpy(v4, ".serverError(");
      HIWORD(v4[1]) = -4864;
    }
  }

  else if (*v0 <= 1u)
  {
    strcpy(v4, ".success(");
    WORD1(v4[1]) = 0;
    HIDWORD(v4[1]) = -385875968;
  }

  else if (v1 == 2)
  {
    sub_2644EB79C();

    strcpy(v4, ".notModified(");
    HIWORD(v4[1]) = -4864;
  }

  else if (v1 == 3)
  {
    strcpy(v4, ".badRequest(");
    BYTE5(v4[1]) = 0;
    HIWORD(v4[1]) = -5120;
  }

  else
  {
    sub_2644EB79C();

    strcpy(v4, ".unauthorized(");
    HIBYTE(v4[1]) = -18;
  }

  v2 = sub_2644EB94C();
  MEMORY[0x266739CC0](v2);

  MEMORY[0x266739CC0](41, 0xE100000000000000);
  return v4[0];
}

SPShared::ServerStatusCode_optional __swiftcall ServerStatusCode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > 402)
  {
    if (rawValue <= 411)
    {
      if (rawValue == 403)
      {
        *v1 = 5;
        return rawValue;
      }

      if (rawValue == 409)
      {
        *v1 = 6;
        return rawValue;
      }
    }

    else
    {
      switch(rawValue)
      {
        case 412:
          *v1 = 7;
          return rawValue;
        case 423:
          *v1 = 8;
          return rawValue;
        case 500:
          *v1 = 9;
          return rawValue;
      }
    }

LABEL_24:
    *v1 = 10;
    return rawValue;
  }

  if (rawValue <= 303)
  {
    if (!rawValue)
    {
      *v1 = 0;
      return rawValue;
    }

    if (rawValue == 200)
    {
      *v1 = 1;
      return rawValue;
    }

    goto LABEL_24;
  }

  if (rawValue == 304)
  {
    *v1 = 2;
    return rawValue;
  }

  if (rawValue == 400)
  {
    *v1 = 3;
    return rawValue;
  }

  if (rawValue != 401)
  {
    goto LABEL_24;
  }

  *v1 = 4;
  return rawValue;
}

unint64_t sub_2644C4E84()
{
  result = qword_27FF6F8D8;
  if (!qword_27FF6F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6F8D8);
  }

  return result;
}

uint64_t sub_2644C4ED8()
{
  v1 = *v0;
  sub_2644EBA7C();
  MEMORY[0x26673A4D0](qword_2644ED030[v1]);
  return sub_2644EBAAC();
}

uint64_t sub_2644C4F60()
{
  v1 = *v0;
  sub_2644EBA7C();
  MEMORY[0x26673A4D0](qword_2644ED030[v1]);
  return sub_2644EBAAC();
}

uint64_t getEnumTagSinglePayload for ServerStatusCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServerStatusCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2644C51C0()
{
  result = qword_27FF6F8E0;
  if (!qword_27FF6F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6F8E0);
  }

  return result;
}

uint64_t UnknownRawRepresentable<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a4;
  v44 = a5;
  v9 = sub_2644EB60C();
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v45 = v36 - v11;
  v43 = *(a2 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a3;
  v14 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v49 = v36 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2644EBADC();
  if (v5)
  {
    v21 = a1;
  }

  else
  {
    v36[1] = v14;
    v37 = v13;
    v19 = v45;
    v38 = a1;
    __swift_project_boxed_opaque_existential_1(v48, v48[3]);
    v20 = AssociatedTypeWitness;
    sub_2644EB9DC();
    v23 = v42;
    (*(v42 + 16))(v17, v49, v20);
    v24 = v19;
    v25 = a2;
    sub_2644EB2BC();
    v26 = v43;
    v27 = *(v43 + 48);
    if (v27(v24, 1, a2) == 1)
    {
      v28 = v37;
      (*(v41 + 16))(v25);
      (*(v23 + 8))(v49, v20);
      v29 = v27(v24, 1, v25) == 1;
      v30 = v44;
      v31 = v25;
      v32 = v38;
      if (!v29)
      {
        v33 = v44;
        v34 = v24;
        v35 = v31;
        (*(v39 + 8))(v34, v40);
        v31 = v35;
        v30 = v33;
      }
    }

    else
    {
      (*(v23 + 8))(v49, v20);
      v28 = v37;
      (*(v26 + 32))(v37, v24, v25);
      v30 = v44;
      v31 = v25;
      v32 = v38;
    }

    (*(v26 + 32))(v30, v28, v31);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v21 = v32;
  }

  return __swift_destroy_boxed_opaque_existential_0(v21);
}

uint64_t PrivilegeDropper.User.hashValue.getter()
{
  v1 = *v0;
  sub_2644EBA7C();
  MEMORY[0x26673A4D0](v1);
  return sub_2644EBAAC();
}

uint64_t sub_2644C56C0()
{
  v1 = *v0;
  sub_2644EBA7C();
  MEMORY[0x26673A4D0](v1);
  return sub_2644EBAAC();
}

uint64_t sub_2644C5734()
{
  v1 = *v0;
  sub_2644EBA7C();
  MEMORY[0x26673A4D0](v1);
  return sub_2644EBAAC();
}

uint64_t sub_2644C578C()
{
  result = sub_2644C57B0();
  byte_27FF6F8E8 = result & 1;
  return result;
}

uint64_t sub_2644C57B0()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_2644EB15C();
  if (!*(v2 + 16))
  {
    goto LABEL_6;
  }

  sub_2644E9810(0xD000000000000014, 0x80000002644EE900);
  if ((v3 & 1) == 0)
  {
    if (*(v2 + 16))
    {
      sub_2644E9810(0xD000000000000020, 0x80000002644EE920);
      v4 = v5;
      goto LABEL_7;
    }

LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v4 = 1;
LABEL_7:

  return v4 & 1;
}

uint64_t static PrivilegeDropper.runningUnderXcode.getter()
{
  if (qword_27FF6F5B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return byte_27FF6F8E8;
}

uint64_t static PrivilegeDropper.runningUnderXcode.setter(char a1)
{
  if (qword_27FF6F5B8 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  byte_27FF6F8E8 = a1 & 1;
  return result;
}

uint64_t (*static PrivilegeDropper.runningUnderXcode.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FF6F5B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2644C5A24@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27FF6F5B8 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a1 = byte_27FF6F8E8;
  return result;
}

uint64_t sub_2644C5AA0(char *a1)
{
  v1 = *a1;
  if (qword_27FF6F5B8 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  byte_27FF6F8E8 = v1;
  return result;
}

uint64_t static PrivilegeDropper.validateUser(user:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (getuid() == 501)
  {
    if ((v1 & 1) == 0)
    {
      return 1;
    }
  }

  else if (v1)
  {
    return 1;
  }

  sub_2644C5E70();
  v3 = swift_allocError();
  *v4 = 3;
  swift_willThrow();
  v5 = sub_2644EB49C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F8F8, &unk_2644ED0B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2644ED0A0;
  v7 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F900, &qword_2644EDD00);
  v8 = sub_2644EB23C();
  v10 = v9;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_2644B4744();
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  sub_2644C5EC4();
  v11 = sub_2644EB5EC();
  sub_2644EADCC(v5, &dword_2644B1000, v11, "Error from validateUser: %@", 27, 2, v6, v3);

  return 0;
}

uint64_t static PrivilegeDropper.validateUser(user:dropPrivileges:)(unsigned __int8 *a1, char a2)
{
  v3 = *a1;
  v4 = getuid();
  if (v3 != (v4 != 501))
  {
    if (v4 == 501 || (a2 & 1) == 0)
    {
      goto LABEL_8;
    }

    v5 = sub_2644EB21C();
    v6 = [v5 UTF8String];
    v7 = v5;
    v8 = getpwnam(v6);
    if (v8)
    {
      pw_uid = v8->pw_uid;
      pw_gid = v8->pw_gid;
      if ((setregid(pw_gid, pw_gid) & 0x80000000) == 0)
      {
        if ((pw_gid & 0x80000000) != 0)
        {
          __break(1u);
LABEL_8:
          sub_2644C5E70();
          swift_allocError();
          *v11 = 3;
          swift_willThrow();
          return 1;
        }

        goto LABEL_10;
      }
    }

    else
    {
      pw_uid = 501;
      pw_gid = 501;
      if ((setregid(0x1F5u, 0x1F5u) & 0x80000000) == 0)
      {
LABEL_10:
        if (initgroups(v6, pw_gid) < 0)
        {
          sub_2644C5E70();
          swift_allocError();
          v15 = 1;
        }

        else
        {
          if ((setreuid(pw_uid, pw_uid) & 0x80000000) == 0)
          {
            sub_2644C5EC4();
            v12 = sub_2644EB5EC();
            sub_2644EB4BC();
            sub_2644EADBC();

LABEL_18:
            return 1;
          }

          sub_2644C5E70();
          swift_allocError();
          v15 = 2;
        }

        *v14 = v15;
LABEL_17:
        swift_willThrow();
        goto LABEL_18;
      }
    }

    sub_2644C5E70();
    swift_allocError();
    *v13 = 0;
    goto LABEL_17;
  }

  return 1;
}

unint64_t sub_2644C5E70()
{
  result = qword_27FF6F8F0;
  if (!qword_27FF6F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6F8F0);
  }

  return result;
}

unint64_t sub_2644C5EC4()
{
  result = qword_2814AC390[0];
  if (!qword_2814AC390[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_2814AC390);
  }

  return result;
}

unint64_t sub_2644C5F18()
{
  result = qword_27FF6F908;
  if (!qword_27FF6F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6F908);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrivilegeDropper.User(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PrivilegeDropper.User(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PrivilegeDropper.UserPrivilegeError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PrivilegeDropper.UserPrivilegeError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2644C622C()
{
  result = qword_27FF6F910;
  if (!qword_27FF6F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6F910);
  }

  return result;
}

uint64_t FileCombiner.FileCombinerError.hashValue.getter()
{
  sub_2644EBA7C();
  MEMORY[0x26673A4D0](0);
  return sub_2644EBAAC();
}

uint64_t FileCombiner.combine(fileURLs:to:bufferSize:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = v3;
  v62 = *MEMORY[0x277D85DE8];
  v8 = objc_allocWithZone(MEMORY[0x277CBEB78]);
  v9 = sub_2644EAC7C();
  v10 = [v8 initWithURL:v9 append:1];

  if (v10)
  {
    [v10 open];
    v51 = *(a1 + 16);
    if (v51)
    {
      sub_2644EAC8C();
      v11 = 0;
      v4 = 0;
      v52 = a3 << 48;
      v50 = a3 << 32;
      v49 = xmmword_2644ED0A0;
      v53 = a3;
      v57 = v10;
      while (1)
      {
        v54 = v11;
        v12 = objc_allocWithZone(MEMORY[0x277CBEAE0]);
        v13 = sub_2644EAC7C();
        v14 = [v12 initWithURL_];

        if (v14)
        {
          v15 = v14;
          v16 = MEMORY[0x26673A690]([v14 open]);
          if ([v14 hasBytesAvailable])
          {
            v10 = v57;
            v56 = v15;
            while (1)
            {
              if (![v10 hasSpaceAvailable])
              {
                goto LABEL_51;
              }

              if (a3)
              {
                if (a3 <= 14)
                {
                  if ((a3 & 0x8000000000000000) != 0)
                  {
                    __break(1u);
LABEL_57:
                    __break(1u);
LABEL_58:
                    __break(1u);
LABEL_59:
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
                  }

                  v21 = 0;
                  v20 = v55 & 0xF00000000000000 | v52;
                  v55 = v20;
                }

                else
                {
                  sub_2644EAC3C();
                  swift_allocObject();
                  v18 = sub_2644EAC0C();
                  v19 = v18;
                  if (a3 >= 0x7FFFFFFF)
                  {
                    sub_2644EACDC();
                    v21 = swift_allocObject();
                    *(v21 + 16) = 0;
                    *(v21 + 24) = a3;
                    v20 = v19 | 0x8000000000000000;
                  }

                  else
                  {
                    v20 = v18 | 0x4000000000000000;
                    v21 = v50;
                  }

                  v15 = v56;
                }
              }

              else
              {
                v21 = 0;
                v20 = 0xC000000000000000;
              }

              v60 = v21;
              v61 = v20;
              v22 = v15;
              v23 = v5;
              sub_2644C6A64(&v60, v22, a3);
              v25 = v24;

              if (v25 <= 0)
              {
                v37 = [v22 streamError];
                if (v37)
                {
                  v38 = v37;
                  v39 = sub_2644EB49C();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F8F8, &unk_2644ED0B0);
                  v40 = v16;
                  v41 = swift_allocObject();
                  *(v41 + 16) = v49;
                  v59[0] = v38;
                  v42 = v38;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F900, &qword_2644EDD00);
                  v43 = sub_2644EB23C();
                  v45 = v44;
                  *(v41 + 56) = MEMORY[0x277D837D0];
                  *(v41 + 64) = sub_2644B4744();
                  *(v41 + 32) = v43;
                  *(v41 + 40) = v45;
                  sub_2644C5EC4();
                  v46 = sub_2644EB5EC();
                  v47 = v39;
                  v10 = v57;
                  sub_2644EADCC(v47, &dword_2644B1000, v46, "FileCombiner input stream error %@", 34, 2, v41);

                  v16 = v40;
                }

                sub_2644C20C0(v60, v61);
                v15 = v56;
                goto LABEL_51;
              }

              v58 = v16;
              v26 = v60;
              v27 = v61;
              v28 = v61 >> 62;
              if ((v61 >> 62) > 1)
              {
                if (v28 != 2)
                {
                  memset(v59, 0, 14);
                  [v10 write:v59 maxLength:v25];
                  v17 = __OFADD__(v4++, 1);
                  if (v17)
                  {
                    goto LABEL_58;
                  }

                  goto LABEL_47;
                }

                v29 = *(v60 + 16);
                v30 = *(v60 + 24);
                v31 = sub_2644EABFC();
                if (v31)
                {
                  v32 = sub_2644EAC2C();
                  if (__OFSUB__(v29, v32))
                  {
                    goto LABEL_62;
                  }

                  v31 += v29 - v32;
                }

                if (__OFSUB__(v30, v29))
                {
                  goto LABEL_60;
                }

                sub_2644EAC1C();
                v5 = v23;
                if (v31)
                {
                  [v57 write:v31 maxLength:v25];
                  v17 = __OFADD__(v4++, 1);
                  a3 = v53;
                  v15 = v56;
                  if (v17)
                  {
                    goto LABEL_64;
                  }

                  goto LABEL_12;
                }
              }

              else
              {
                if (!v28)
                {
                  v59[0] = v60;
                  LODWORD(v59[1]) = v61;
                  WORD2(v59[1]) = WORD2(v61);
                  [v10 write:v59 maxLength:v25];
                  v17 = __OFADD__(v4++, 1);
                  if (v17)
                  {
                    goto LABEL_57;
                  }

LABEL_47:
                  sub_2644C20C0(v26, v27);
                  goto LABEL_13;
                }

                if (v60 > v60 >> 32)
                {
                  goto LABEL_59;
                }

                v33 = sub_2644EABFC();
                if (v33)
                {
                  v34 = v33;
                  v35 = sub_2644EAC2C();
                  if (__OFSUB__(v26, v35))
                  {
                    goto LABEL_63;
                  }

                  v36 = v26 - v35 + v34;
                  sub_2644EAC1C();
                  if (v36)
                  {
                    [v57 write:v36 maxLength:v25];
                    v17 = __OFADD__(v4++, 1);
                    a3 = v53;
                    v15 = v56;
                    if (v17)
                    {
                      goto LABEL_65;
                    }

                    goto LABEL_12;
                  }
                }

                else
                {
                  sub_2644EAC1C();
                }
              }

              v17 = __OFADD__(v4++, 1);
              a3 = v53;
              v15 = v56;
              if (v17)
              {
                goto LABEL_61;
              }

LABEL_12:
              sub_2644C20C0(v26, v27);
              v10 = v57;
LABEL_13:
              objc_autoreleasePoolPop(v58);
              v16 = MEMORY[0x26673A690]();
              if (([v22 hasBytesAvailable] & 1) == 0)
              {
                goto LABEL_51;
              }
            }
          }

          v10 = v57;
LABEL_51:
          objc_autoreleasePoolPop(v16);
          [v15 close];
        }

        else
        {
          v10 = v57;
        }

        v11 = v54 + 1;
        if (v54 + 1 == v51)
        {
          goto LABEL_54;
        }
      }
    }

    v4 = 0;
LABEL_54:
    [v10 close];
  }

  else
  {
    sub_2644C6978();
    swift_allocError();
    swift_willThrow();
  }

  return v4;
}

unint64_t sub_2644C6978()
{
  result = qword_27FF6F918;
  if (!qword_27FF6F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6F918);
  }

  return result;
}

char *sub_2644C69CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  result = sub_2644EABFC();
  if (result)
  {
    v10 = result;
    result = sub_2644EAC2C();
    v11 = a1 - result;
    if (__OFSUB__(a1, result))
    {
      __break(1u);
    }

    else if (!__OFSUB__(a2, a1))
    {
      sub_2644EAC1C();
      return [a4 read:&v10[v11] maxLength:a5];
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2644C6A64(uint64_t *a1, id a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = a2;
      sub_2644C20C0(v6, v5);
      *&v22 = v6;
      WORD4(v22) = v5;
      BYTE10(v22) = BYTE2(v5);
      BYTE11(v22) = BYTE3(v5);
      BYTE12(v22) = BYTE4(v5);
      BYTE13(v22) = BYTE5(v5);
      BYTE14(v22) = BYTE6(v5);
      [v8 read:&v22 maxLength:a3];
      v9 = v22;
      v10 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);

      *a1 = v9;
      a1[1] = v10;
      return;
    }

    v16 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    v17 = a2;
    sub_2644C206C(v6, v5);
    sub_2644C20C0(v6, v5);
    *a1 = xmmword_2644ECCF0;
    sub_2644C20C0(0, 0xC000000000000000);
    v18 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v18 < v6)
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      if (sub_2644EABFC() && __OFSUB__(v6, sub_2644EAC2C()))
      {
LABEL_17:
        __break(1u);
      }

      sub_2644EAC3C();
      swift_allocObject();
      v19 = sub_2644EABDC();

      v16 = v19;
    }

    if (v18 >= v6)
    {
      v20 = v17;

      sub_2644C69CC(v6, v6 >> 32, v16, v20, a3);

      *a1 = v6;
      a1[1] = v16 | 0x4000000000000000;
      return;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (v7 == 2)
  {
    v11 = a2;
    sub_2644C206C(v6, v5);
    sub_2644C20C0(v6, v5);
    *&v22 = v6;
    *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_2644ECCF0;
    sub_2644C20C0(0, 0xC000000000000000);
    sub_2644EACAC();
    v12 = *(&v22 + 1);
    v13 = *(v22 + 16);
    v14 = *(v22 + 24);
    v15 = v11;
    sub_2644C69CC(v13, v14, *(&v22 + 1), v15, a3);

    *a1 = v22;
    a1[1] = v12 | 0x8000000000000000;
  }

  else
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    [a2 read:&v22 maxLength:a3];
  }
}

unint64_t sub_2644C6E10()
{
  result = qword_27FF6F920;
  if (!qword_27FF6F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF6F920);
  }

  return result;
}

uint64_t Subscription.init(subscriber:unsubscribeBlock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Subscription(0, a4, a3, a4);
  sub_2644EAD9C();
  result = (*(*(a4 - 8) + 32))(a5, a1, a4);
  v12 = (a5 + *(v10 + 32));
  *v12 = a2;
  v12[1] = a3;
  return result;
}

uint64_t Subscription.unsubscribe(completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v28 = a2;
  v29 = sub_2644EB06C();
  v32 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2644EB0AC();
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = sub_2644EB07C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2644B2D18();
  (*(v13 + 104))(v15, *MEMORY[0x277D851C8], v12);
  v25 = sub_2644EB5AC();
  (*(v13 + 8))(v15, v12);
  (*(v10 + 16))(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v26, a3);
  v16 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = *(a3 + 16);
  (*(v10 + 32))(v17 + v16, &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  v18 = (v17 + ((v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = v28;
  *v18 = v27;
  v18[1] = v19;
  aBlock[4] = sub_2644C7450;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644BD140;
  aBlock[3] = &block_descriptor_2;
  v20 = _Block_copy(aBlock);

  sub_2644EB08C();
  v33 = MEMORY[0x277D84F90];
  sub_2644C74F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF6F780, &unk_2644EDCE0);
  sub_2644C754C();
  v21 = v29;
  sub_2644EB6CC();
  v22 = v25;
  MEMORY[0x266739FD0](0, v9, v5, v20);
  _Block_release(v20);

  (*(v32 + 8))(v5, v21);
  (*(v30 + 8))(v9, v31);
}

uint64_t sub_2644C7394(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Subscription(0, a4, a3, a4);
  (*(a1 + *(v6 + 32)))(a1);
  return a2(0);
}

uint64_t sub_2644C7450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for Subscription(0, v5, a3, a4) - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = v4 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_2644C7394(v4 + v7, v9, v10, v5);
}

unint64_t sub_2644C74F4()
{
  result = qword_2814AC1D0;
  if (!qword_2814AC1D0)
  {
    sub_2644EB06C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AC1D0);
  }

  return result;
}

unint64_t sub_2644C754C()
{
  result = qword_2814ABF78;
  if (!qword_2814ABF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF6F780, &unk_2644EDCE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814ABF78);
  }

  return result;
}

uint64_t static Subscription.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(type metadata accessor for Subscription(0, a3, a3, a4) + 28);

  return MEMORY[0x28211DBA0](a1 + v6, a2 + v6);
}

uint64_t sub_2644C760C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_2644EADAC();
    if (v3 <= 0x3F)
    {
      result = sub_2644C7BA0();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2644C76AC(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_2644EADAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  v14 = *(*(v8 - 8) + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v7 == v12)
  {
    v24 = *(v6 + 48);

    return v24(a1, v7, v5);
  }

  else
  {
    v25 = (a1 + v13) & ~v11;
    if (v10 == v12)
    {
      v26 = *(v9 + 48);

      return v26(v25);
    }

    else
    {
      v27 = *((v14 + v25) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}

void sub_2644C7904(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v28 = v8;
  v9 = *(v8 + 84);
  v10 = sub_2644EADAC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  if (v12 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(v8 + 64) + v13;
  v16 = *(*(v10 - 8) + 64) + 7;
  v17 = ((v16 + (v15 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v16 + (v15 & ~v13)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v18 = a3 - v14 + 1;
  }

  else
  {
    v18 = 2;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v14 < a3)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (a2 > v14)
  {
    if (((v16 + (v15 & ~v13)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a2 - v14;
    }

    else
    {
      v22 = 1;
    }

    if (((v16 + (v15 & ~v13)) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v23 = ~v14 + a2;
      bzero(a1, ((v16 + (v15 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v23;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        *(a1 + v17) = v22;
      }

      else
      {
        *(a1 + v17) = v22;
      }
    }

    else if (v21)
    {
      *(a1 + v17) = v22;
    }

    return;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v17) = 0;
  }

  else if (v21)
  {
    *(a1 + v17) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v9 == v14)
  {
    v24 = *(v28 + 56);

    v24(a1, a2, v9, v7);
  }

  else
  {
    v25 = (a1 + v15) & ~v13;
    if (v12 == v14)
    {
      v26 = *(v11 + 56);

      v26(v25, a2);
    }

    else
    {
      v27 = ((v16 + v25) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v27 = a2 & 0x7FFFFFFF;
        v27[1] = 0;
      }

      else
      {
        *v27 = (a2 - 1);
      }
    }
  }
}

unint64_t sub_2644C7BA0()
{
  result = qword_2814ABA98;
  if (!qword_2814ABA98)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2814ABA98);
  }

  return result;
}

SPShared::CryptoError_optional __swiftcall CryptoError.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue + 4320) > 0x14)
  {
    *v1 = 13;
  }

  else
  {
    *v1 = asc_2644EE993[rawValue + 4320];
  }

  return rawValue;
}

uint64_t sub_2644C7CA8()
{
  v1 = *v0;
  sub_2644EBA7C();
  MEMORY[0x26673A4D0](qword_2644ED840[v1]);
  return sub_2644EBAAC();
}

uint64_t sub_2644C7D30()
{
  v1 = *v0;
  sub_2644EBA7C();
  MEMORY[0x26673A4D0](qword_2644ED840[v1]);
  return sub_2644EBAAC();
}

uint64_t sub_2644C7D9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2644D2040();
  v5 = sub_2644D2094();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t HmacAlgorithm.hashValue.getter()
{
  v1 = *v0;
  sub_2644EBA7C();
  MEMORY[0x26673A4D0](v1);
  return sub_2644EBAAC();
}

uint64_t static NSFileHandle.hash(fileURL:algorithm:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2644EAC8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2644C7FE4();
  (*(v5 + 16))(v7, a1, v4);
  v8 = sub_2644C8030(v7);
  if (!v1)
  {
    v9 = v8;
    v2 = sub_2644C8188();
    [v9 closeFile];
  }

  return v2;
}

unint64_t sub_2644C7FE4()
{
  result = qword_27FF6F928;
  if (!qword_27FF6F928)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF6F928);
  }

  return result;
}

id sub_2644C8030(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2644EAC7C();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_2644EAC8C();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_2644EAC6C();

    swift_willThrow();
    v9 = sub_2644EAC8C();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t sub_2644C8188()
{
  v1 = v0;
  v23 = *MEMORY[0x277D85DE8];
  memset(&c, 0, sizeof(c));
  v2 = CC_SHA256_Init(&c);
  while (1)
  {
    v3 = MEMORY[0x26673A690](v2);
    v4 = [v1 readDataOfLength_];
    v5 = sub_2644EAD1C();
    v7 = v6;

    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      break;
    }

    if (!v8)
    {
      if ((v7 & 0xFF000000000000) == 0)
      {
        goto LABEL_26;
      }

      data = v5;
      LOWORD(v21) = v7;
      BYTE2(v21) = BYTE2(v7);
      BYTE3(v21) = BYTE3(v7);
      BYTE4(v21) = BYTE4(v7);
      LODWORD(v9) = BYTE6(v7);
      BYTE5(v21) = BYTE5(v7);
      p_data = &data;
      goto LABEL_2;
    }

    if (v5 == v5 >> 32)
    {
      goto LABEL_26;
    }

LABEL_11:
    if (v8 == 2)
    {
      v11 = *(v5 + 16);
      v12 = sub_2644EABFC();
      if (v12)
      {
        v13 = sub_2644EAC2C();
        if (__OFSUB__(v11, v13))
        {
          goto LABEL_33;
        }

        v12 += v11 - v13;
      }

      sub_2644EAC1C();
      v15 = *(v5 + 16);
      v14 = *(v5 + 24);
      v9 = v14 - v15;
      if (__OFSUB__(v14, v15))
      {
        goto LABEL_28;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }

      if (HIDWORD(v9))
      {
        goto LABEL_31;
      }

      p_data = v12;
    }

    else
    {
      if (v5 > v5 >> 32)
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
      }

      v16 = sub_2644EABFC();
      if (v16)
      {
        v17 = sub_2644EAC2C();
        if (__OFSUB__(v5, v17))
        {
          goto LABEL_34;
        }

        v16 += v5 - v17;
      }

      sub_2644EAC1C();
      LODWORD(v9) = HIDWORD(v5) - v5;
      if (__OFSUB__(HIDWORD(v5), v5))
      {
        goto LABEL_30;
      }

      if ((v9 & 0x80000000) != 0)
      {
        goto LABEL_32;
      }

      p_data = v16;
    }

LABEL_2:
    CC_SHA256_Update(&c, p_data, v9);
    sub_2644C20C0(v5, v7);
    objc_autoreleasePoolPop(v3);
  }

  if (v8 == 2 && *(v5 + 16) != *(v5 + 24))
  {
    goto LABEL_11;
  }

LABEL_26:
  sub_2644C20C0(v5, v7);
  objc_autoreleasePoolPop(v3);
  sub_2644EAC3C();
  swift_allocObject();
  v18 = sub_2644EAC0C();
  data = 0x2000000000;
  v21 = v18;
  sub_2644CFAA4(&data, &c);
  return data;
}

uint64_t Data.hash(algorithm:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2644EAC3C();
  swift_allocObject();
  v6[0] = 0x2000000000;
  v6[1] = sub_2644EAC0C();
  sub_2644C206C(a2, a3);
  sub_2644CFB3C(v6, a2, a3);
  return v6[0];
}

unsigned __int8 *sub_2644C84D4(unsigned __int8 *md, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
LABEL_28:
      memset(v21, 0, 14);
      v7 = v21;
      LODWORD(v6) = 0;
      return CC_SHA256(v7, v6, md);
    }

    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    v10 = sub_2644EABFC();
    if (v10)
    {
      v11 = sub_2644EAC2C();
      if (__OFSUB__(v8, v11))
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (v12)
    {
      goto LABEL_33;
    }

    v14 = sub_2644EAC1C();
    if (v14 >= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    if (v10)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      goto LABEL_34;
    }

    if (!HIDWORD(v6))
    {
      goto LABEL_30;
    }

    __break(1u);
LABEL_18:
    v16 = a3;
    v17 = (a3 >> 32) - a3;
    if (a3 >> 32 >= a3)
    {
      v10 = sub_2644EABFC();
      if (!v10)
      {
        goto LABEL_22;
      }

      v18 = sub_2644EAC2C();
      if (!__OFSUB__(v16, v18))
      {
        v10 += v16 - v18;
LABEL_22:
        v19 = sub_2644EAC1C();
        if (v10)
        {
          if (v19 >= v17)
          {
            v6 = v17;
          }

          else
          {
            v6 = v19;
          }

          if ((v6 & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_28;
          }
        }

        else
        {
          LODWORD(v6) = 0;
        }

LABEL_30:
        v7 = v10;
        return CC_SHA256(v7, v6, md);
      }

LABEL_36:
      __break(1u);
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v5)
  {
    goto LABEL_18;
  }

  v21[0] = a3;
  LOWORD(v21[1]) = a4;
  BYTE2(v21[1]) = BYTE2(a4);
  BYTE3(v21[1]) = BYTE3(a4);
  BYTE4(v21[1]) = BYTE4(a4);
  LODWORD(v6) = BYTE6(a4);
  BYTE5(v21[1]) = BYTE5(a4);
  v7 = v21;
  return CC_SHA256(v7, v6, md);
}

uint64_t Data.spEncrypt(key:ivLength:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_15;
    }

    v9 = *(result + 16);
    v8 = *(result + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (!v10)
    {
      if (v11 < 16)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_35;
  }

  if (v7)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 16)
      {
        goto LABEL_11;
      }

LABEL_15:
      sub_2644D0F90();
      swift_allocError();
      *v15 = 10;
      return swift_willThrow();
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (BYTE6(a2) < 0x10uLL)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (!v7)
  {
    goto LABEL_18;
  }

  if (v7 != 2)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 257)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v13 = *(result + 16);
  v12 = *(result + 24);
  v10 = __OFSUB__(v12, v13);
  v14 = v12 - v13;
  if (v10)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v14 >= 257)
  {
    goto LABEL_15;
  }

LABEL_18:
  v17 = result;
  v20 = MEMORY[0x2667396E0](a3);
  v22 = v21;
  sub_2644EAC3C();
  swift_allocObject();
  result = sub_2644EAC0C();
  v36 = 0x1000000000;
  v37 = result | 0x4000000000000000;
  v23 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    result = 0;
    if (v23 != 2)
    {
      goto LABEL_27;
    }

    v24 = *(a4 + 16);
    v25 = *(a4 + 24);
    result = v25 - v24;
    if (!__OFSUB__(v25, v24))
    {
      goto LABEL_27;
    }

    __break(1u);
LABEL_25:
    if (!__OFSUB__(HIDWORD(a4), a4))
    {
      result = HIDWORD(a4) - a4;
      goto LABEL_27;
    }

LABEL_38:
    __break(1u);
    return result;
  }

  if (v23)
  {
    goto LABEL_25;
  }

  result = BYTE6(a5);
LABEL_27:
  *&v35 = sub_2644CFE44(result);
  *(&v35 + 1) = v26;
  sub_2644C206C(v20, v22);
  sub_2644C206C(v17, a2);
  sub_2644C206C(a4, a5);
  v27 = sub_2644D0790(&v35, &v36, v20, v22, v17, a2, a4, a5);
  sub_2644C20C0(a4, a5);
  sub_2644C20C0(v17, a2);
  sub_2644C20C0(v20, v22);
  if (v27)
  {
    CryptoError.init(rawValue:)(v27);
    v28 = v38;
    sub_2644D0F90();
    swift_allocError();
    if (v28 == 13)
    {
      v30 = 8;
    }

    else
    {
      v30 = v28;
    }

    *v29 = v30;
    swift_willThrow();
    sub_2644C20C0(v20, v22);
    sub_2644C20C0(v35, *(&v35 + 1));
    v31 = v36;
    v32 = v37;
  }

  else
  {
    v33 = v36;
    v34 = v37;
    *a6 = v20;
    *(a6 + 8) = v22;
    *(a6 + 16) = v33;
    *(a6 + 24) = v34;
    *(a6 + 32) = v35;
    sub_2644C206C(v33, v34);
    v31 = v33;
    v32 = v34;
  }

  return sub_2644C20C0(v31, v32);
}

uint64_t sub_2644C8988@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, _DWORD *a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, _DWORD *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v11 = a8;
  v12 = a7;
  v13 = a6;
  v85[2] = *MEMORY[0x277D85DE8];
  v17 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v17 != 2)
    {
      memset(v85, 0, 14);
      sub_2644C206C(a7, a8);
      v36 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        if (v36 != 2)
        {
          v47 = v11 >> 62;
          memset(v84, 0, 14);
          if ((v11 >> 62) <= 1)
          {
            if (!v47)
            {
LABEL_52:
              v48 = a5;
              sub_2644C206C(a5, v13);
              v28 = CCCryptorGCMOneshotEncrypt();
              v49 = v48;
LABEL_73:
              v67 = v13;
LABEL_90:
              sub_2644C20C0(v49, v67);
              goto LABEL_92;
            }

            v75 = v13;
            if (v12 >> 32 >= v12)
            {
              v78 = a5;
              sub_2644C206C(a5, v13);
              if (!sub_2644EABFC() || !__OFSUB__(v12, sub_2644EAC2C()))
              {
                goto LABEL_89;
              }

LABEL_120:
              __break(1u);
            }

            goto LABEL_108;
          }

          if (v47 == 2)
          {
            v63 = a9;
            v64 = v11;
            v65 = *(v12 + 16);
            v66 = *(v12 + 24);
            v77 = a5;
            sub_2644C206C(a5, v13);
            v54 = v64;
            if (sub_2644EABFC() && __OFSUB__(v65, sub_2644EAC2C()))
            {
              goto LABEL_116;
            }

            a9 = v63;
            if (__OFSUB__(v66, v65))
            {
              goto LABEL_112;
            }

            goto LABEL_72;
          }

          goto LABEL_91;
        }

        v80 = a9;
        a9 = a1;
        v42 = v11;
        v43 = *(a5 + 16);
        v44 = *(a5 + 24);
        v76 = a5;
        sub_2644C206C(a5, v13);
        if (sub_2644EABFC() && __OFSUB__(v43, sub_2644EAC2C()))
        {
          goto LABEL_102;
        }

        if (__OFSUB__(v44, v43))
        {
          goto LABEL_100;
        }

        sub_2644EAC1C();
        v72 = a9;
        v73 = a2;
        v45 = v12;
        v11 = v42;
      }

      else
      {
        if (!v36)
        {
          v84[0] = a5;
          LOWORD(v84[1]) = v13;
          BYTE2(v84[1]) = BYTE2(v13);
          BYTE3(v84[1]) = BYTE3(v13);
          BYTE4(v84[1]) = BYTE4(v13);
          BYTE5(v84[1]) = BYTE5(v13);
          v37 = v11 >> 62;
          if ((v11 >> 62) <= 1)
          {
            if (!v37)
            {
              goto LABEL_52;
            }

            v75 = v13;
            if (v12 >> 32 >= v12)
            {
              v78 = a5;
              sub_2644C206C(a5, v13);
              if (!sub_2644EABFC() || !__OFSUB__(v12, sub_2644EAC2C()))
              {
                goto LABEL_89;
              }

              goto LABEL_118;
            }

            goto LABEL_106;
          }

          if (v37 == 2)
          {
            v55 = a9;
            v56 = v11;
            v57 = *(v12 + 16);
            v58 = *(v12 + 24);
            v77 = a5;
            sub_2644C206C(a5, v13);
            v54 = v56;
            if (sub_2644EABFC() && __OFSUB__(v57, sub_2644EAC2C()))
            {
              goto LABEL_114;
            }

            a9 = v55;
            if (__OFSUB__(v58, v57))
            {
              goto LABEL_110;
            }

            goto LABEL_72;
          }

LABEL_91:
          sub_2644C206C(a5, v13);
          v68 = CCCryptorGCMOneshotEncrypt();
          v69 = a5;
          v28 = v68;
          sub_2644C20C0(v69, v13);
          goto LABEL_92;
        }

        v80 = a9;
        a9 = a1;
        v42 = v11;
        if (a5 >> 32 < a5)
        {
          goto LABEL_98;
        }

        v76 = a5;
        sub_2644C206C(a5, v13);
        if (sub_2644EABFC() && __OFSUB__(a5, sub_2644EAC2C()))
        {
          goto LABEL_104;
        }

        sub_2644EAC1C();
        v72 = a1;
        v73 = a2;
        v45 = v12;
      }

      sub_2644CA2B8(v45, v42, v84, v72, v73);
      v27 = v83;
      if (v83)
      {
LABEL_122:
        v34 = v76;
        v35 = v13;
        goto LABEL_123;
      }

      sub_2644C20C0(v76, v13);
      v28 = v84[0];
      goto LABEL_46;
    }

    v20 = a9;
    a9 = a1;
    v80 = v20;
    v22 = *(a3 + 16);
    v23 = *(a3 + 24);
    sub_2644C206C(a5, a6);
    v13 = v12;
    v25 = a8;
    sub_2644C206C(v12, a8);
    if (sub_2644EABFC() && __OFSUB__(v22, sub_2644EAC2C()))
    {
      goto LABEL_95;
    }

    if (!__OFSUB__(v23, v22))
    {
      sub_2644EAC1C();
      v26 = a5;
      v11 = v25;
      sub_2644C9B58(a5, a6, v12, v25, v85, a9, a2);
      v27 = v83;
      if (v83)
      {
        sub_2644C20C0(v26, a6);
        i = v12;
        goto LABEL_124;
      }

      sub_2644C20C0(v26, a6);
      v28 = v85[0];
      goto LABEL_46;
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
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
    goto LABEL_120;
  }

  if (!v17)
  {
    v85[0] = a3;
    LOWORD(v85[1]) = a4;
    BYTE2(v85[1]) = BYTE2(a4);
    BYTE3(v85[1]) = BYTE3(a4);
    BYTE4(v85[1]) = BYTE4(a4);
    BYTE5(v85[1]) = BYTE5(a4);
    sub_2644C206C(a7, a8);
    v18 = v13 >> 62;
    if ((v13 >> 62) <= 1)
    {
      if (!v18)
      {
        v84[0] = a5;
        LOWORD(v84[1]) = v13;
        BYTE2(v84[1]) = BYTE2(v13);
        BYTE3(v84[1]) = BYTE3(v13);
        BYTE4(v84[1]) = BYTE4(v13);
        BYTE5(v84[1]) = BYTE5(v13);
        v19 = v11 >> 62;
        if ((v11 >> 62) <= 1)
        {
          if (!v19)
          {
            goto LABEL_52;
          }

          v75 = v13;
          if (v12 >> 32 >= v12)
          {
            v78 = a5;
            sub_2644C206C(a5, v13);
            if (!sub_2644EABFC() || !__OFSUB__(v12, sub_2644EAC2C()))
            {
LABEL_89:
              sub_2644EAC1C();
              v28 = CCCryptorGCMOneshotEncrypt();
              v67 = v75;
              v49 = v78;
              goto LABEL_90;
            }

            goto LABEL_117;
          }

          goto LABEL_105;
        }

        if (v19 == 2)
        {
          v50 = a9;
          v51 = v11;
          v52 = *(v12 + 16);
          v53 = *(v12 + 24);
          v77 = a5;
          sub_2644C206C(a5, v13);
          v54 = v51;
          if (sub_2644EABFC() && __OFSUB__(v52, sub_2644EAC2C()))
          {
            goto LABEL_113;
          }

          a9 = v50;
          if (__OFSUB__(v53, v52))
          {
            goto LABEL_109;
          }

LABEL_72:
          v11 = v54;
          sub_2644EAC1C();
          v28 = CCCryptorGCMOneshotEncrypt();
          v49 = v77;
          goto LABEL_73;
        }

        goto LABEL_91;
      }

      if (a5 >> 32 >= a5)
      {
        v76 = a5;
        sub_2644C206C(a5, v13);
        if (!sub_2644EABFC() || !__OFSUB__(a5, sub_2644EAC2C()))
        {
          sub_2644EAC1C();
          sub_2644CA2B8(v12, v11, v84, a1, a2);
          v27 = v83;
          if (!v83)
          {
            sub_2644C20C0(a5, v13);
            v28 = v84[0];
            goto LABEL_92;
          }

          goto LABEL_122;
        }

        goto LABEL_103;
      }

      goto LABEL_97;
    }

    if (v18 != 2)
    {
      v46 = v11 >> 62;
      memset(v84, 0, 14);
      if ((v11 >> 62) <= 1)
      {
        if (!v46)
        {
          goto LABEL_52;
        }

        v75 = v13;
        if (v12 >> 32 >= v12)
        {
          v78 = a5;
          sub_2644C206C(a5, v13);
          if (!sub_2644EABFC() || !__OFSUB__(v12, sub_2644EAC2C()))
          {
            goto LABEL_89;
          }

          goto LABEL_119;
        }

        goto LABEL_107;
      }

      if (v46 == 2)
      {
        v59 = a9;
        v60 = v11;
        v61 = *(v12 + 16);
        v62 = *(v12 + 24);
        v77 = a5;
        sub_2644C206C(a5, v13);
        v54 = v60;
        if (sub_2644EABFC() && __OFSUB__(v61, sub_2644EAC2C()))
        {
          goto LABEL_115;
        }

        a9 = v59;
        if (__OFSUB__(v62, v61))
        {
          goto LABEL_111;
        }

        goto LABEL_72;
      }

      goto LABEL_91;
    }

    v38 = a1;
    v80 = a9;
    a9 = v12;
    v39 = v11;
    v40 = *(a5 + 16);
    v41 = *(a5 + 24);
    v76 = a5;
    sub_2644C206C(a5, v13);
    if (sub_2644EABFC() && __OFSUB__(v40, sub_2644EAC2C()))
    {
      goto LABEL_101;
    }

    if (__OFSUB__(v41, v40))
    {
      goto LABEL_99;
    }

    sub_2644EAC1C();
    v11 = v39;
    sub_2644CA2B8(a9, v39, v84, v38, a2);
    v27 = v83;
    if (v83)
    {
      goto LABEL_125;
    }

    sub_2644C20C0(a5, v13);
    v28 = v84[0];
    v12 = a9;
LABEL_46:
    a9 = v80;
    goto LABEL_92;
  }

  v29 = a9;
  a9 = a6;
  v81 = v29;
  v13 = a8;
  v30 = a3;
  if (a3 >> 32 < a3)
  {
    __break(1u);
    goto LABEL_94;
  }

  sub_2644C206C(a5, a6);
  sub_2644C206C(v12, v13);
  if (sub_2644EABFC() && __OFSUB__(v30, sub_2644EAC2C()))
  {
    goto LABEL_96;
  }

  v11 = v13;
  sub_2644EAC1C();
  v33 = a5;
  v12 = a7;
  sub_2644C9B58(a5, a9, a7, v13, v85, a1, a2);
  v27 = v83;
  v34 = v33;
  v35 = a9;
  if (v83)
  {
LABEL_123:
    sub_2644C20C0(v34, v35);
    for (i = v12; ; i = a9)
    {
LABEL_124:
      sub_2644C20C0(i, v11);

      __break(1u);
LABEL_125:
      sub_2644C20C0(v76, v13);
    }
  }

  sub_2644C20C0(v33, a9);
  v28 = v85[0];
  a9 = v81;
LABEL_92:
  result = sub_2644C20C0(v12, v11);
  *a9 = v28;
  return result;
}