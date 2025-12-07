uint64_t sub_2547324E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_254732518()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_254732960(uint64_t a1, void (*a2)(void *, void *), uint64_t a3, uint64_t (*a4)(void), uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v19 = a2;
  v10 = a4(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20]();
  v13 = &v18 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20]();
  v15 = (&v18 - v14);
  sub_254735D60(a1, &v18 - v14, a5, a6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    MEMORY[0x259C17C50](*v15);
    v19(0, v16);
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    v17 = sub_254735EF4();
    v19(v17, 0);

    (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_254732B44(void *a1, void (*a2)(void, void *), uint64_t a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = sub_254735FC4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20]();
  v9 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F610098, &qword_2547364B0);
  MEMORY[0x28223BE20]();
  v11 = v54 - v10;
  if (!a1[2] || (v12 = sub_2547344B4(99, 0xE100000000000000), (v13 & 1) == 0) || (v54[0] = a3, sub_254734580(a1[7] + 32 * v12, &v55), (swift_dynamicCast() & 1) == 0))
  {
    v24 = sub_254736004();
    sub_2547347C0(0, &qword_27F6100A0, 0x277D86200);
    v25 = sub_254736044();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6100A8, &qword_2547364B8);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_2547364A0;
    v55 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6100B0, &qword_2547364C0);
    v27 = sub_254735FA4();
    v29 = v28;
    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 64) = sub_25473452C();
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    sub_254735E84(v24, &dword_254731000, v25, "unable to get command from payload dictionary. %@", 49, 2, v26);

    sub_254735FB4();
    sub_254734808(&qword_27F6100C0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    v30 = swift_allocError();
    (*(v7 + 16))(v31, v9, v6);
    v32 = v30;
LABEL_8:
    a2(0, v32);

    return (*(v7 + 8))(v9, v6);
  }

  v14 = v54[2];
  v15 = sub_254735F04();
  if (v16)
  {
    v15 = sub_254735F04();
    if (v17)
    {
      v18 = sub_254736004();
      sub_2547347C0(0, &qword_27F6100A0, 0x277D86200);
      v19 = sub_254736044();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6100A8, &qword_2547364B8);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_2547364A0;
      v55 = v14;
      v56 = 0;
      v21 = sub_254735FA4();
      v23 = v22;
      *(v20 + 56) = MEMORY[0x277D837D0];
      *(v20 + 64) = sub_25473452C();
      *(v20 + 32) = v21;
      *(v20 + 40) = v23;
      sub_254735E84(v18, &dword_254731000, v19, "unable to get command type from command %@", 42, 2, v20);

LABEL_14:
      sub_254735FB4();
      sub_254734808(&qword_27F6100C0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
      v30 = swift_allocError();
      (*(v7 + 16))(v49, v9, v6);
      v32 = v30;
      goto LABEL_8;
    }
  }

  v34 = v15;
  v35 = objc_opt_self();
  v36 = sub_254735FD4();
  v55 = 0;
  v37 = [v35 dataWithPropertyList:v36 format:200 options:0 error:&v55];

  if (!v37)
  {
    v45 = v55;
    v46 = sub_254735E54();

    swift_willThrow();
    v47 = sub_254736004();
    sub_2547347C0(0, &qword_27F6100A0, 0x277D86200);
    v48 = sub_254736044();
    sub_254735E84(v47, &dword_254731000, v48, "Could not serialize payload dictionary", 38, 2, MEMORY[0x277D84F90]);

    goto LABEL_14;
  }

  v38 = v55;
  v39 = sub_254735E74();
  v41 = v40;

  v42 = v54[0];
  if (v34 == 97)
  {
    sub_254735F94();
    v50 = sub_254735F34();
    (*(*(v50 - 8) + 56))(v11, 1, 1, v50);
    v51 = swift_allocObject();
    *(v51 + 16) = a2;
    *(v51 + 24) = v42;
    sub_254734808(&qword_281414318, MEMORY[0x277CF2908], MEMORY[0x277CF2900]);

LABEL_17:
    sub_254735EC4();
    sub_254734624(v39, v41);

    return sub_254734678(v11);
  }

  if (v34 != 255)
  {
    sub_254735F24();
    v52 = sub_254735F34();
    (*(*(v52 - 8) + 56))(v11, 1, 1, v52);
    v53 = swift_allocObject();
    *(v53 + 16) = a2;
    *(v53 + 24) = v42;
    sub_254734808(&qword_281414328, MEMORY[0x277CF20A8], MEMORY[0x277CF20A0]);

    goto LABEL_17;
  }

  sub_254735F44();
  v43 = sub_254735F34();
  (*(*(v43 - 8) + 56))(v11, 1, 1, v43);
  v44 = swift_allocObject();
  *(v44 + 16) = a2;
  *(v44 + 24) = v42;
  sub_254734808(&qword_281414320, MEMORY[0x277CF2330], MEMORY[0x277CF2328]);

  sub_254735EC4();

  sub_254734624(v39, v41);
  return sub_254734678(v11);
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

void sub_254733544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_254735E44();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_2547335B4(uint64_t a1, uint64_t a2, void (*a3)(void, void *), uint64_t a4)
{
  v54[4] = *MEMORY[0x277D85DE8];
  v7 = sub_254735FC4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20]();
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_254735F84();
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x28223BE20]();
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F610098, &qword_2547364B0);
  MEMORY[0x28223BE20]();
  v51 = &v48 - v14;
  v15 = objc_opt_self();
  v16 = sub_254735FD4();
  v54[0] = 0;
  v17 = [v15 dataWithPropertyList:v16 format:200 options:0 error:v54];

  v18 = v54[0];
  if (!v17)
  {
    v37 = v18;
    v38 = sub_254735E54();

    swift_willThrow();
    v39 = sub_254736004();
    sub_2547347C0(0, &qword_27F6100A0, 0x277D86200);
    v40 = sub_254736044();
    sub_254735E84(v39, &dword_254731000, v40, "Could not serialize payload dictionary", 38, 2, MEMORY[0x277D84F90]);

    sub_254735FB4();
    sub_254734808(&qword_27F6100C0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    v35 = swift_allocError();
    (*(v8 + 16))(v41, v10, v7);
    a3(0, v35);
    goto LABEL_16;
  }

  v19 = a4;
  v20 = sub_254735E74();
  v52 = v21;

  if (!*(a2 + 16) || (v22 = sub_2547344B4(0x6369706F74, 0xE500000000000000), (v23 & 1) == 0) || (sub_254734580(*(a2 + 56) + 32 * v22, v54), (swift_dynamicCast() & 1) == 0))
  {
    v33 = sub_254736004();
    sub_2547347C0(0, &qword_27F6100A0, 0x277D86200);
    v34 = sub_254736044();
    sub_254735E84(v33, &dword_254731000, v34, "No topic specified in context", 29, 2, MEMORY[0x277D84F90]);

LABEL_14:
    sub_254735FB4();
    sub_254734808(&qword_27F6100C0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    v35 = swift_allocError();
    (*(v8 + 16))(v36, v10, v7);
    a3(0, v35);
    sub_254734624(v20, v52);
LABEL_16:

    return (*(v8 + 8))(v10, v7);
  }

  if (!*(a2 + 16) || (v48 = v53, v24 = sub_2547344B4(0x646E616D6D6F63, 0xE700000000000000), (v25 & 1) == 0) || (sub_254734580(*(a2 + 56) + 32 * v24, v54), (swift_dynamicCast() & 1) == 0))
  {

    v42 = sub_254736004();
    sub_2547347C0(0, &qword_27F6100A0, 0x277D86200);
    v43 = sub_254736044();
    sub_254735E84(v42, &dword_254731000, v43, "No command specified in context", 31, 2, MEMORY[0x277D84F90]);

    goto LABEL_14;
  }

  if (*(a2 + 16) && (v26 = sub_2547344B4(0xD000000000000015, 0x80000002547366A0), (v27 & 1) != 0) && (sub_254734580(*(a2 + 56) + 32 * v26, v54), swift_dynamicCast()) && (v53 & 1) != 0)
  {

    sub_254735F14();
    v28 = sub_254735F34();
    v29 = v51;
    (*(*(v28 - 8) + 56))(v51, 1, 1, v28);
    v30 = swift_allocObject();
    *(v30 + 16) = a3;
    *(v30 + 24) = v19;
    sub_254734808(&qword_27F6100D8, MEMORY[0x277CF2060], MEMORY[0x277CF2058]);

    v31 = v52;
    sub_254735EC4();

    sub_254734624(v20, v31);
    return sub_254734678(v29);
  }

  else
  {
    sub_254735F74();
    sub_254735F64();
    v44 = sub_254735F34();
    v45 = v51;
    (*(*(v44 - 8) + 56))(v51, 1, 1, v44);
    v46 = swift_allocObject();
    *(v46 + 16) = a3;
    *(v46 + 24) = v19;
    sub_254734808(&qword_27F6100D0, MEMORY[0x277CF24C0], MEMORY[0x277CF24B8]);

    v47 = v52;
    sub_254735ED4();
    sub_254734624(v20, v47);

    sub_254734678(v45);
    return (*(v49 + 8))(v13, v50);
  }
}

void sub_254733E9C(uint64_t a1, void (*a2)(void *, void *))
{
  v4 = sub_254735F64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6100F0, &qword_254736520);
  MEMORY[0x28223BE20]();
  v9 = (&v13 - v8);
  sub_254735D60(a1, &v13 - v8, &qword_27F6100F0, &qword_254736520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    MEMORY[0x259C17C50](*v9);
    a2(0, v10);
  }

  else
  {
    v11 = (*(v5 + 32))(v7, v9, v4);
    v12 = MEMORY[0x259C17890](v11);
    a2(v12, 0);

    (*(v5 + 8))(v7, v4);
  }
}

id IDSBlastDoorInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IDSBlastDoorInterface.init()()
{
  v12 = sub_254736024();
  v0 = *(v12 - 8);
  MEMORY[0x28223BE20]();
  v2 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254736014();
  MEMORY[0x28223BE20]();
  sub_254735EA4();
  MEMORY[0x28223BE20]();
  v11 = OBJC_IVAR___IDSBlastDoorInterfaceInternal_bd;
  v3 = sub_254735EE4();
  v10[0] = "is-invitation-service";
  v10[1] = v3;
  v4 = *MEMORY[0x277CF30B0];
  sub_2547347C0(0, &qword_281414300, 0x277D85C78);
  v5 = v4;
  sub_254735E94();
  v15 = MEMORY[0x277D84F90];
  sub_254734808(&qword_281414308, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6100E0, &qword_2547364C8);
  sub_254734850();
  sub_254736054();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v12);
  sub_254736034();
  v6 = sub_254735EB4();
  v7 = v13;
  *&v13[v11] = v6;
  v8 = type metadata accessor for IDSBlastDoorInterface();
  v14.receiver = v7;
  v14.super_class = v8;
  return objc_msgSendSuper2(&v14, sel_init);
}

id IDSBlastDoorInterface.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IDSBlastDoorInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2547344B4(uint64_t a1, uint64_t a2)
{
  sub_254736074();
  sub_254735FF4();
  v4 = sub_254736084();

  return sub_2547349A0(a1, a2, v4);
}

unint64_t sub_25473452C()
{
  result = qword_27F6100B8;
  if (!qword_27F6100B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F6100B8);
  }

  return result;
}

uint64_t sub_254734580(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_254734624(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_254734678(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F610098, &qword_2547364B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2547347C0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_254734808(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_254734850()
{
  result = qword_281414310;
  if (!qword_281414310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F6100E0, &qword_2547364C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281414310);
  }

  return result;
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

unint64_t sub_2547349A0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_254736064())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_254734A58(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v60 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F610098, &qword_2547364B0);
  MEMORY[0x28223BE20]();
  v6 = v57 - v5;
  v7 = sub_254735FC4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20]();
  v10 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  v12 = a1[2];
  _Block_copy(a3);
  if (v12)
  {
    v13 = sub_2547344B4(99, 0xE100000000000000);
    if (v14)
    {
      v57[0] = v11;
      sub_254734580(a1[7] + 32 * v13, &v58);
      if (swift_dynamicCast())
      {
        v15 = v57[2];
        v16 = sub_254735F04();
        if (v17)
        {
          v16 = sub_254735F04();
          if (v18)
          {
            v19 = sub_254736004();
            sub_2547347C0(0, &qword_27F6100A0, 0x277D86200);
            v20 = sub_254736044();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6100A8, &qword_2547364B8);
            v21 = swift_allocObject();
            *(v21 + 16) = xmmword_2547364A0;
            v58 = v15;
            v59 = 0;
            v22 = sub_254735FA4();
            v24 = v23;
            *(v21 + 56) = MEMORY[0x277D837D0];
            *(v21 + 64) = sub_25473452C();
            *(v21 + 32) = v22;
            *(v21 + 40) = v24;
            sub_254735E84(v19, &dword_254731000, v20, "unable to get command type from command %@", 42, 2, v21);

LABEL_14:
            sub_254735FB4();
            sub_254734808(&qword_27F6100C0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
            v50 = swift_allocError();
            (*(v8 + 16))(v51, v10, v7);
            v52 = sub_254735E44();
            (a3)[2](a3, 0, v52);

            (*(v8 + 8))(v10, v7);
          }
        }

        v35 = v16;
        v36 = objc_opt_self();
        v37 = sub_254735FD4();
        v58 = 0;
        v38 = [v36 dataWithPropertyList:v37 format:200 options:0 error:&v58];

        if (!v38)
        {
          v46 = v58;
          v47 = sub_254735E54();

          swift_willThrow();
          v48 = sub_254736004();
          sub_2547347C0(0, &qword_27F6100A0, 0x277D86200);
          v49 = sub_254736044();
          sub_254735E84(v48, &dword_254731000, v49, "Could not serialize payload dictionary", 38, 2, MEMORY[0x277D84F90]);

          goto LABEL_14;
        }

        v39 = v58;
        v40 = sub_254735E74();
        v42 = v41;

        v43 = v57[0];
        if (v35 == 97)
        {
          sub_254735F94();
          v53 = sub_254735F34();
          (*(*(v53 - 8) + 56))(v6, 1, 1, v53);
          v54 = swift_allocObject();
          *(v54 + 16) = sub_254735DC8;
          *(v54 + 24) = v43;
          sub_254734808(&qword_281414318, MEMORY[0x277CF2908], MEMORY[0x277CF2900]);
        }

        else
        {
          if (v35 == 255)
          {
            sub_254735F44();
            v44 = sub_254735F34();
            (*(*(v44 - 8) + 56))(v6, 1, 1, v44);
            v45 = swift_allocObject();
            *(v45 + 16) = sub_254735DC8;
            *(v45 + 24) = v43;
            sub_254734808(&qword_281414320, MEMORY[0x277CF2330], MEMORY[0x277CF2328]);

            sub_254735EC4();

            sub_254734624(v40, v42);
LABEL_18:
            sub_254734678(v6);
          }

          sub_254735F24();
          v55 = sub_254735F34();
          (*(*(v55 - 8) + 56))(v6, 1, 1, v55);
          v56 = swift_allocObject();
          *(v56 + 16) = sub_254735DC8;
          *(v56 + 24) = v43;
          sub_254734808(&qword_281414328, MEMORY[0x277CF20A8], MEMORY[0x277CF20A0]);
        }

        sub_254735EC4();
        sub_254734624(v40, v42);

        goto LABEL_18;
      }
    }
  }

  v25 = sub_254736004();
  sub_2547347C0(0, &qword_27F6100A0, 0x277D86200);
  v26 = sub_254736044();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6100A8, &qword_2547364B8);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2547364A0;
  v58 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6100B0, &qword_2547364C0);
  v28 = sub_254735FA4();
  v30 = v29;
  *(v27 + 56) = MEMORY[0x277D837D0];
  *(v27 + 64) = sub_25473452C();
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  sub_254735E84(v25, &dword_254731000, v26, "unable to get command from payload dictionary. %@", 49, 2, v27);

  sub_254735FB4();
  sub_254734808(&qword_27F6100C0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
  v31 = swift_allocError();
  (*(v8 + 16))(v32, v10, v7);
  v33 = sub_254735E44();
  (a3)[2](a3, 0, v33);

  (*(v8 + 8))(v10, v7);
}

uint64_t sub_254735414(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v53 = a3;
  v59[4] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F610098, &qword_2547364B0);
  MEMORY[0x28223BE20]();
  v54 = &v50 - v6;
  v7 = sub_254735F84();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x28223BE20]();
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_254735FC4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20]();
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = swift_allocObject();
  *(v57 + 16) = a4;
  v14 = objc_opt_self();
  _Block_copy(a4);
  v15 = sub_254735FD4();
  v59[0] = 0;
  v16 = [v14 dataWithPropertyList:v15 format:200 options:0 error:v59];

  v17 = v59[0];
  if (!v16)
  {
    v36 = v17;
    v37 = sub_254735E54();

    swift_willThrow();
    v38 = sub_254736004();
    sub_2547347C0(0, &qword_27F6100A0, 0x277D86200);
    v39 = sub_254736044();
    sub_254735E84(v38, &dword_254731000, v39, "Could not serialize payload dictionary", 38, 2, MEMORY[0x277D84F90]);

    sub_254735FB4();
    sub_254734808(&qword_27F6100C0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    v33 = swift_allocError();
    (*(v11 + 16))(v40, v13, v10);
    v41 = sub_254735E44();
    (a4)[2](a4, 0, v41);

    goto LABEL_16;
  }

  v55 = sub_254735E74();
  v56 = v18;

  if (!*(a2 + 16) || (v19 = sub_2547344B4(0x6369706F74, 0xE500000000000000), (v20 & 1) == 0) || (sub_254734580(*(a2 + 56) + 32 * v19, v59), !swift_dynamicCast()))
  {
    v31 = sub_254736004();
    sub_2547347C0(0, &qword_27F6100A0, 0x277D86200);
    v32 = sub_254736044();
    sub_254735E84(v31, &dword_254731000, v32, "No topic specified in context", 29, 2, MEMORY[0x277D84F90]);

LABEL_14:
    sub_254735FB4();
    sub_254734808(&qword_27F6100C0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    v33 = swift_allocError();
    (*(v11 + 16))(v34, v13, v10);
    v35 = sub_254735E44();
    (a4)[2](a4, 0, v35);

    sub_254734624(v55, v56);
LABEL_16:

    (*(v11 + 8))(v13, v10);
  }

  if (!*(a2 + 16) || (v21 = sub_2547344B4(0x646E616D6D6F63, 0xE700000000000000), (v22 & 1) == 0) || (sub_254734580(*(a2 + 56) + 32 * v21, v59), (swift_dynamicCast() & 1) == 0))
  {

    v43 = sub_254736004();
    sub_2547347C0(0, &qword_27F6100A0, 0x277D86200);
    v44 = sub_254736044();
    sub_254735E84(v43, &dword_254731000, v44, "No command specified in context", 31, 2, MEMORY[0x277D84F90]);

    goto LABEL_14;
  }

  v23 = v57;
  if (*(a2 + 16) && (v24 = sub_2547344B4(0xD000000000000015, 0x80000002547366A0), (v25 & 1) != 0) && (sub_254734580(*(a2 + 56) + 32 * v24, v59), swift_dynamicCast()) && (v58 & 1) != 0)
  {

    sub_254735F14();
    v26 = sub_254735F34();
    v27 = v54;
    (*(*(v26 - 8) + 56))(v54, 1, 1, v26);
    v28 = swift_allocObject();
    *(v28 + 16) = sub_254735D58;
    *(v28 + 24) = v23;
    sub_254734808(&qword_27F6100D8, MEMORY[0x277CF2060], MEMORY[0x277CF2058]);

    v30 = v55;
    v29 = v56;
    sub_254735EC4();

    sub_254734624(v30, v29);
    sub_254734678(v27);
  }

  else
  {
    sub_254735F74();
    sub_254735F64();
    v45 = sub_254735F34();
    v46 = v54;
    (*(*(v45 - 8) + 56))(v54, 1, 1, v45);
    v47 = swift_allocObject();
    *(v47 + 16) = sub_254735D58;
    *(v47 + 24) = v23;
    sub_254734808(&qword_27F6100D0, MEMORY[0x277CF24C0], MEMORY[0x277CF24B8]);

    v49 = v55;
    v48 = v56;
    sub_254735ED4();
    sub_254734624(v49, v48);

    sub_254734678(v46);
    (*(v51 + 8))(v9, v52);
  }
}

uint64_t sub_254735D60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t Data._idsOptionallyDecompress()()
{
  v0 = sub_254735E64();
  v1 = [v0 _idsOptionallyDecompressData];

  v2 = sub_254735E74();
  return v2;
}