char *sub_230493430()
{
  v2 = v0;
  v35[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v3 = sub_2304A5364();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = (&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54730, &unk_2304A7EE8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - v8;
  v10 = sub_2304A5CA4();
  v11 = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue);
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v15 = v14;
  LOBYTE(v14) = sub_2304A5CB4();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = sub_2304920BC();
  if (!v16)
  {
    (v32)[13](v5, *MEMORY[0x277D46880], v33);
    sub_2304A5384();
    sub_2304948A8(&qword_27DB54738, MEMORY[0x277D46888], MEMORY[0x277D46890]);
    swift_allocError();
    sub_2304A5374();
    swift_willThrow();
    return v5;
  }

  v17 = v16;
  v35[0] = 0;
  v18 = [v16 recordsAndReturnError_];
  if (!v18)
  {
    v29 = v35[0];
    sub_2304A3F24();

    swift_willThrow();
    swift_unknownObjectRelease();
    return v5;
  }

  v19 = v18;
  v33 = v17;
  v20 = v35[0];
  v32 = v19;
  v21 = sub_2304A5914();
  v5 = MEMORY[0x277D84F90];
  v35[0] = MEMORY[0x277D84F90];
  v10 = *(v21 + 16);
  if (v10)
  {
    v22 = 0;
    v5 = &qword_27DB54730;
    while (v22 < *(v21 + 16))
    {
      sub_230464B24(v21 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v22, v9, &qword_27DB54730, &unk_2304A7EE8);
      sub_230493984(v35, v9, v2, ObjectType);
      if (v1)
      {

        swift_unknownObjectRelease();

        sub_230464970(v9, &qword_27DB54730, &unk_2304A7EE8);

        return v5;
      }

      ++v22;
      sub_230464970(v9, &qword_27DB54730, &unk_2304A7EE8);
      if (v10 == v22)
      {
        v5 = v35[0];
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_10:

  v10 = v32;
  if (qword_281499E50 != -1)
  {
LABEL_21:
    swift_once();
  }

  v23 = sub_2304A5B74();
  __swift_project_value_buffer(v23, qword_28149B038);
  v24 = v10;
  v25 = sub_2304A5B54();
  v26 = sub_2304A5E94();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134349056;
    v28 = *(sub_2304A5914() + 16);

    *(v27 + 4) = v28;

    _os_log_impl(&dword_230430000, v25, v26, "Fetched %{public}ld records for migration", v27, 0xCu);
    MEMORY[0x23191A000](v27, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    v25 = v24;
  }

  return v5;
}

uint64_t sub_230493984(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v52 = a4;
  v45 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54170, &qword_2304A7528);
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v43 = v40 - v6;
  v7 = sub_2304A4084();
  MEMORY[0x28223BE20](v7 - 8);
  v40[2] = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2304A4FF4();
  MEMORY[0x28223BE20](v9 - 8);
  v40[1] = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2304A5084();
  v47 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v46 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54730, &unk_2304A7EE8);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = (v40 - v14);
  v16 = sub_2304A4BF4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230464B24(a2, v15, &qword_27DB54730, &unk_2304A7EE8);
  v20 = *v15;
  v21 = *(v13 + 56);
  v48 = v19;
  v49 = v17;
  v22 = *(v17 + 32);
  v50 = v16;
  v22(v19, v15 + v21, v16);
  v23 = sub_2304A5964();
  v24 = v23;
  v54 = MEMORY[0x277D84F98];
  if (v23 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2304A6044())
  {
    v26 = 0;
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x231919680](v26, v24);
      }

      else
      {
        if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v27 = *(v24 + 8 * v26 + 32);
      }

      v28 = v27;
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      v53 = v27;
      sub_230493ED8(&v54, &v53, v51, v52);
      if (v4)
      {

        (*(v49 + 8))(v48, v50);
      }

      ++v26;
      if (v29 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
  v31 = v41;

  sub_2304A5944();
  sub_2304A5984();
  v32 = v46;
  sub_2304A5004();
  v33 = *(v31 + 48);
  v35 = v42;
  v34 = v43;
  (*(v47 + 16))(v43, v32, v42);
  (*(v49 + 16))(v34 + v33, v48, v50);
  v36 = v45;
  v37 = *v45;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v37 = sub_230459E50(0, v37[2] + 1, 1, v37);
  }

  v39 = v37[2];
  v38 = v37[3];
  if (v39 >= v38 >> 1)
  {
    v37 = sub_230459E50((v38 > 1), v39 + 1, 1, v37);
  }

  (*(v47 + 8))(v46, v35);
  (*(v49 + 8))(v48, v50);
  v37[2] = v39 + 1;
  result = sub_230464ABC(v34, v37 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v39, &qword_27DB54170, &qword_2304A7528);
  *v36 = v37;
  return result;
}

uint64_t sub_230493ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v41 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54740, &qword_2304A7A60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v35 - v7;
  v9 = sub_2304A5054();
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FE0, &qword_2304A7430);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v35 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v35 - v19;
  result = sub_2304A5A04();
  if (v22 >> 60 != 15)
  {
    v35[1] = a1;
    v36 = result;
    v42 = v4;
    v37 = v22;
    v23 = sub_2304A59E4();
    if (v23)
    {
      v24 = v23;
      v25 = OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_url;
      v26 = sub_230462988(MEMORY[0x277D84F90]);
      v27 = v42;
      sub_230494298(v40 + v25, v26, v18);
      v42 = v27;
      if (v27)
      {

        sub_23049488C(v36, v37);
      }

      v29 = sub_2304A3FC4();
      (*(*(v29 - 8) + 56))(v18, 0, 1, v29);
      sub_230464ABC(v18, v20, &qword_27DB53FE0, &qword_2304A7430);
    }

    else
    {
      v28 = sub_2304A3FC4();
      (*(*(v28 - 8) + 56))(v20, 1, 1, v28);
    }

    sub_230464B24(v20, v15, &qword_27DB53FE0, &qword_2304A7430);
    v30 = v36;
    v31 = v37;
    sub_230474E48(v36, v37);
    sub_2304A5044();
    v32 = sub_2304A5A24();
    v34 = v38;
    v33 = v39;
    (*(v38 + 16))(v8, v11, v39);
    (*(v34 + 56))(v8, 0, 1, v33);
    sub_2304780AC(v8, v32);
    sub_23049488C(v30, v31);
    (*(v34 + 8))(v11, v33);
    return sub_230464970(v20, &qword_27DB53FE0, &qword_2304A7430);
  }

  return result;
}

void sub_230494298(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v36 = a1;
  v33 = a2;
  v40[2] = *MEMORY[0x277D85DE8];
  v4 = sub_2304A3FC4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v35 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2304A3F34();
  v7 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2304A4084();
  v38 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v39 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281499E50 != -1)
  {
    swift_once();
  }

  v12 = sub_2304A5B74();
  __swift_project_value_buffer(v12, qword_28149B038);
  v13 = sub_2304A5B54();
  v14 = sub_2304A5E94();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = v10;
    v16 = v5;
    v17 = v4;
    v18 = a3;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_230430000, v13, v14, "Ingesting file handle", v19, 2u);
    v20 = v19;
    a3 = v18;
    v4 = v17;
    v5 = v16;
    v10 = v15;
    MEMORY[0x23191A000](v20, -1, -1);
  }

  sub_2304A4074();
  v40[0] = sub_2304A4044();
  v40[1] = v21;
  v22 = v34;
  (*(v7 + 104))(v9, *MEMORY[0x277CC91D8], v34);
  sub_2304645C4();
  v23 = v36;
  sub_2304A3FB4();
  (*(v7 + 8))(v9, v22);

  sub_230474F08(0, &unk_27DB54750, 0x277CCA9F8);
  v24 = v35;
  (*(v5 + 16))(v35, v23, v4);
  v25 = v37;
  v26 = sub_230496B54(v24);
  if (!v25)
  {
    v27 = v26;
    sub_2304A5E54();
    v40[0] = 0;
    if ([v27 closeAndReturnError_])
    {
      v28 = *(v38 + 8);
      v29 = v40[0];
      v28(v39, v10);

      return;
    }

    v30 = v4;
    v31 = a3;
    v32 = v40[0];
    sub_2304A3F24();

    a3 = v31;
    v4 = v30;
    swift_willThrow();
  }

  (*(v5 + 8))(a3, v4);
  (*(v38 + 8))(v39, v10);
}

uint64_t sub_230494704(uint64_t a1, uint64_t a2)
{
  v4 = sub_2304A49E4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_230494768(uint64_t a1, uint64_t a2)
{
  v4 = sub_2304A49E4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2304947CC()
{
  result = qword_27DB54710;
  if (!qword_27DB54710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB54708, &qword_2304A7ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB54710);
  }

  return result;
}

uint64_t sub_230494830(uint64_t a1)
{
  v2 = sub_2304A49E4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23049488C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2304617C4(result, a2);
  }

  return result;
}

uint64_t sub_2304948A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_230494910(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 protocolForProtocol_];
  [a1 setClient_];

  v4 = [v2 protocolForProtocol_];
  [a1 setServer_];
}

id sub_2304949D4(void *a1, void *a2)
{
  v4 = [a1 remoteToken];
  v5 = sub_2304A5D14();
  v6 = [v4 hasEntitlement_];

  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_230495798;
    *(v8 + 24) = v7;
    v13[4] = sub_2304324E8;
    v13[5] = v8;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_23043248C;
    v13[3] = &block_descriptor_6;
    v9 = _Block_copy(v13);
    v10 = a2;

    [a1 configure_];
    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      [a1 activate];
    }
  }

  else
  {

    return [a1 invalidate];
  }

  return result;
}

void sub_230494BCC(void *a1, uint64_t a2)
{
  sub_2304A56B4();
  v4 = sub_2304A5D14();

  v12 = sub_230494910;
  v13 = 0;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_2304328BC;
  v11 = &block_descriptor_13;
  v5 = _Block_copy(&v8);
  v6 = [objc_opt_self() interfaceWithIdentifier:v4 configurator:v5];

  _Block_release(v5);

  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    [a1 setInterface_];
    [a1 setInterfaceTarget_];
    v12 = sub_230494D98;
    v13 = 0;
    v8 = MEMORY[0x277D85DD0];
    v9 = 1107296256;
    v10 = sub_2304318E8;
    v11 = &block_descriptor_16;
    v7 = _Block_copy(&v8);
    [a1 setInvalidationHandler_];
    _Block_release(v7);
  }
}

uint64_t sub_230494D98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54818, &qword_2304A7F48);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2304A7270;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0xD000000000000016;
  *(v0 + 40) = 0x80000002304A94E0;
  sub_2304A6374();
}

id sub_230494E64(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StateCaptureServer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_230494F18(uint64_t a1, int64_t a2)
{
  v4 = v3;
  if (a2)
  {
    v5 = a2;
    v7 = __swift_project_boxed_opaque_existential_5Tm((v2 + OBJC_IVAR____TtC14ReplicatorCore18StateCaptureServer_stateCaptureManager), *(v2 + OBJC_IVAR____TtC14ReplicatorCore18StateCaptureServer_stateCaptureManager + 24));
    v8 = *v7;
    if (qword_28149A870 != -1)
    {
      goto LABEL_34;
    }

    goto LABEL_3;
  }

  v17 = *(v2 + OBJC_IVAR____TtC14ReplicatorCore18StateCaptureServer_stateCaptureManager + 24);
  v58 = (v2 + OBJC_IVAR____TtC14ReplicatorCore18StateCaptureServer_stateCaptureManager);
  v18 = __swift_project_boxed_opaque_existential_5Tm((v2 + OBJC_IVAR____TtC14ReplicatorCore18StateCaptureServer_stateCaptureManager), v17);
  v19 = *v18;
  if (qword_28149A870 != -1)
  {
    v18 = swift_once();
  }

  v9 = qword_28149A878;
  MEMORY[0x28223BE20](v18);
  v8 = &v50;
  v52 = sub_23049575C;
  v53 = v19;
  os_unfair_lock_lock((v9 + 16));
  sub_230432D54(&v62);
  v60 = v3;
  if (v3)
  {
    goto LABEL_40;
  }

  v57 = v9;
  os_unfair_lock_unlock((v9 + 16));
  v20 = 0;
  a1 = v62 + 56;
  v21 = *(v62 + 56);
  v59 = v62;
  v22 = 1 << *(v62 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v5 = (v22 + 63) >> 6;
  v56 = MEMORY[0x277D84F98];
  while (v24)
  {
    v9 = v20;
LABEL_17:
    v25 = (*(v59 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v24)))));
    v27 = *v25;
    v26 = v25[1];
    v28 = __swift_project_boxed_opaque_existential_5Tm(v58, v58[3]);
    v10 = v54;
    v29 = MEMORY[0x28223BE20](v28);
    v50 = v30;
    v51 = v27;
    v52 = v26;
    MEMORY[0x28223BE20](v29);
    v8 = &v47;
    v48 = sub_230495778;
    v49 = v31;

    v4 = v57;
    os_unfair_lock_lock(v57 + 4);
    v32 = v60;
    sub_230462810(&v62);
    v60 = v32;
    if (v32)
    {
      goto LABEL_37;
    }

    v24 &= v24 - 1;
    os_unfair_lock_unlock((v4 + 16));
    v4 = v62;
    if (v62)
    {
      v33 = *(v62 + 48);

      v34 = v33(v27, v26);

      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54810, &unk_2304A7F38);
      *&v62 = v34;
      sub_230462958(&v62, v61);
      v35 = v56;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v35;
      v10 = sub_230469C40(v27, v26);
      v37 = *(v35 + 16);
      v38 = (v36 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        os_unfair_lock_unlock((v4 + 16));
        __break(1u);
        goto LABEL_38;
      }

      if (*(v35 + 24) >= v39)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v36 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        else
        {
          LODWORD(v56) = v36;
          sub_2304727B0();
          if ((v56 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

LABEL_27:

        v56 = v64;
        v8 = (*(v64 + 56) + 32 * v10);
        __swift_destroy_boxed_opaque_existential_0Tm(v8);
        sub_230462958(v61, v8);

        v20 = v9;
      }

      else
      {
        LODWORD(v56) = v36;
        sub_230470720(v39, isUniquelyReferenced_nonNull_native);
        v40 = sub_230469C40(v27, v26);
        if ((v56 & 1) != (v41 & 1))
        {
          goto LABEL_39;
        }

        v10 = v40;
        if (v56)
        {
          goto LABEL_27;
        }

LABEL_29:
        v8 = v4;
        v4 = v64;
        *(v64 + 8 * (v10 >> 6) + 64) |= 1 << v10;
        v42 = (*(v4 + 48) + 16 * v10);
        *v42 = v27;
        v42[1] = v26;
        sub_230462958(v61, (*(v4 + 56) + 32 * v10));

        v43 = *(v4 + 16);
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_36;
        }

        v56 = v4;
        *(v4 + 16) = v45;
        v20 = v9;
      }
    }

    else
    {

      v20 = v9;
    }
  }

  while (1)
  {
    v9 = &v20->_os_unfair_lock_opaque + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      goto LABEL_32;
    }

    v24 = *(a1 + 8 * v9);
    v20 = (v20 + 1);
    if (v24)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_34:
  v7 = swift_once();
LABEL_3:
  v9 = v54;
  v10 = qword_28149A878;
  v11 = MEMORY[0x28223BE20](v7);
  v50 = v8;
  v51 = a1;
  v52 = v5;
  MEMORY[0x28223BE20](v11);
  v48 = sub_2304957A8;
  v49 = v12;
  os_unfair_lock_lock((v10 + 16));
  sub_230464E3C(&v62);
  if (v4)
  {
LABEL_38:
    os_unfair_lock_unlock((v10 + 16));
    __break(1u);
LABEL_39:
    sub_2304A6314();
    __break(1u);
LABEL_40:
    os_unfair_lock_unlock((v9 + 16));
    __break(1u);
    return;
  }

  os_unfair_lock_unlock((v10 + 16));
  v13 = MEMORY[0x277D84F98];
  if (v62)
  {
    v14 = *(v62 + 48);

    v15 = v14(a1, v5);

    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54810, &unk_2304A7F38);
    *&v62 = v15;
    sub_230462958(&v62, v61);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v64 = v13;
    sub_23045C978(v61, a1, v5, v16);
  }

LABEL_32:
  v46 = sub_2304A5CC4();

  *&v62 = v46;
  sub_2304A5D34();
}

uint64_t sub_2304957C8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_2304A6084();

    return v3 & 1;
  }

  else
  {
    if (*(a2 + 16) && (sub_2304A4984(), sub_230496420(&qword_281499FD0, MEMORY[0x277D464B8], MEMORY[0x277D464C0]), v5 = sub_2304A5CF4(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
    {
      v8 = ~v6;
      sub_230496420(&unk_281499FC0, MEMORY[0x277D464B8], MEMORY[0x277D464C8]);
      do
      {
        v9 = sub_2304A5D04();
        if (v9)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
    }

    else
    {
      v9 = 0;
    }

    return v9 & 1;
  }
}

uint64_t sub_230495958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2304A6394();
  sub_2304A5D54();
  v6 = sub_2304A63B4();
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
    if (v11 || (sub_2304A62F4() & 1) != 0)
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

uint64_t sub_230495A50(uint64_t a1, uint64_t a2)
{
  v3 = sub_2304A4084();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_230496420(&qword_28149AC58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]), v7 = sub_2304A5CF4(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_230496420(&unk_27DB54450, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_2304A5D04();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_230495C68()
{
  v2 = v1;
  v3 = type metadata accessor for DataMigrator.Context(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);
  v8 = OBJC_IVAR____TtC14ReplicatorCore12DataMigrator_deviceType;
  v9 = *(v4 + 28);
  v10 = sub_2304A4114();
  (*(*(v10 - 8) + 16))(&v6[v9], v0 + v8, v10);
  v35 = v6;
  *v6 = v7;
  v11 = *(v0 + OBJC_IVAR____TtC14ReplicatorCore12DataMigrator_stages);
  v12 = *(v11 + 16);
  v41 = v7;

  v36 = v12;
  if (!v12)
  {
    return sub_230496038(v35);
  }

  v14 = 0;
  v37 = v11 + 32;
  while (v14 < *(v11 + 16))
  {
    sub_230464834(v37 + 40 * v14, v38);
    v15 = v39;
    v16 = v40;
    __swift_project_boxed_opaque_existential_5Tm(v38, v39);
    v17 = (*(v16 + 8))(v15, v16);
    v19 = v18;
    sub_2304A5A84();
    v20 = sub_2304A5AA4();
    if (v2)
    {
      sub_230496038(v35);

      return __swift_destroy_boxed_opaque_existential_0Tm(v38);
    }

    v21 = v20;

    if (*(v21 + 16) && (sub_2304A6394(), sub_2304A5D54(), v22 = sub_2304A63B4(), v23 = -1 << *(v21 + 32), v24 = v22 & ~v23, ((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0))
    {
      v25 = ~v23;
      while (1)
      {
        v26 = (*(v21 + 48) + 16 * v24);
        v27 = *v26 == v17 && v26[1] == v19;
        if (v27 || (sub_2304A62F4() & 1) != 0)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:

      v28 = v39;
      v29 = v40;
      __swift_project_boxed_opaque_existential_5Tm(v38, v39);
      (*(v29 + 16))(v35, v28, v29);
      v30 = v39;
      v31 = v40;
      __swift_project_boxed_opaque_existential_5Tm(v38, v39);
      v32 = (*(v31 + 8))(v30, v31);
      *(&v34 - 2) = MEMORY[0x28223BE20](v32);
      *(&v34 - 1) = v33;
      sub_2304A5B34();
    }

    result = __swift_destroy_boxed_opaque_existential_0Tm(v38);
    if (++v14 == v36)
    {
      return sub_230496038(v35);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_230496038(uint64_t a1)
{
  v2 = type metadata accessor for DataMigrator.Context(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_230496094()
{
  sub_2304A5A84();
  sub_2304A5B04();
}

uint64_t DataMigrator.deinit()
{

  v1 = OBJC_IVAR____TtC14ReplicatorCore12DataMigrator_deviceType;
  v2 = sub_2304A4114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DataMigrator.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC14ReplicatorCore12DataMigrator_deviceType;
  v2 = sub_2304A4114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_230496240(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230496278(uint64_t a1)
{
  result = sub_2304A4114();
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

uint64_t sub_23049639C(uint64_t a1)
{
  result = sub_2304A5B44();
  if (v2 <= 0x3F)
  {
    result = sub_2304A4114();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_230496420(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_230496480(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v4 = sub_2304A6224();

    if (v4)
    {
      a3(0);
      swift_dynamicCast();
      return v7;
    }
  }

  else if (*(a2 + 16))
  {
    sub_230469CB8(a1);
    if (v6)
    {
    }
  }

  return 0;
}

uint64_t sub_230496544@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = sub_2304A3F34();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_2304A3FC4();
  v7 = *(v60 - 8);
  v8 = MEMORY[0x28223BE20](v60);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = v51 - v11;
  v12 = sub_2304A4084();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v62 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281499E48 != -1)
  {
    swift_once();
  }

  v15 = sub_2304A5B74();
  __swift_project_value_buffer(v15, qword_28149B020);
  v16 = sub_2304A5B54();
  v17 = sub_2304A5E94();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v56 = v10;
    v19 = v6;
    v20 = a1;
    v21 = a2;
    v22 = v13;
    v23 = v12;
    v24 = v7;
    v25 = v18;
    *v18 = 0;
    _os_log_impl(&dword_230430000, v16, v17, "Ingesting url", v18, 2u);
    v26 = v25;
    v7 = v24;
    v12 = v23;
    v13 = v22;
    a2 = v21;
    a1 = v20;
    v6 = v19;
    v10 = v56;
    MEMORY[0x23191A000](v26, -1, -1);
  }

  sub_2304A4074();
  v27 = v61;
  sub_23048BD04(v10);
  if (!v27)
  {
    v51[1] = 0;
    v51[2] = a1;
    v55 = v13;
    v56 = v12;
    v63 = 0x7364726F636572;
    v64 = 0xE700000000000000;
    v53 = *MEMORY[0x277CC91D8];
    v28 = v57;
    v29 = v58;
    v61 = a2;
    v52 = *(v57 + 104);
    v52(v6);
    v51[3] = sub_2304645C4();
    v30 = v59;
    sub_2304A3FB4();
    v31 = *(v28 + 8);
    v31(v6, v29);
    v32 = *(v7 + 8);
    v57 = v7 + 8;
    v54 = v32;
    v32(v10, v60);
    v63 = sub_2304A4044();
    v64 = v33;
    (v52)(v6, v53, v29);
    v34 = v61;
    sub_2304A3FB4();
    v31(v6, v29);

    v35 = objc_opt_self();
    v36 = [v35 defaultManager];
    v37 = sub_2304A3F54();
    v63 = 0;
    LOBYTE(v28) = [v36 createDirectoryAtURL:v37 withIntermediateDirectories:1 attributes:0 error:&v63];

    if (v28)
    {
      v38 = v54;
      v39 = v60;
      v40 = v63;
      v41 = [v35 defaultManager];
      v42 = sub_2304A3F54();
      v43 = sub_2304A3F54();
      v63 = 0;
      v44 = [v41 moveItemAtURL:v42 toURL:v43 error:&v63];

      if (v44)
      {
        v45 = v63;
        v38(v59, v39);
        return (*(v55 + 8))(v62, v56);
      }

      v50 = v63;
      sub_2304A3F24();

      swift_willThrow();
      v38(v34, v39);
      v38(v59, v39);
    }

    else
    {
      v47 = v63;
      sub_2304A3F24();

      swift_willThrow();
      v48 = v60;
      v49 = v54;
      v54(v34, v60);
      v49(v30, v48);
    }

    v13 = v55;
    v12 = v56;
  }

  return (*(v13 + 8))(v62, v12);
}

id sub_230496B54(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2304A3F54();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_2304A3FC4();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_2304A3F24();

    swift_willThrow();
    v9 = sub_2304A3FC4();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t sub_230496CAC(uint64_t a1, int a2, int a3)
{
  v123 = a2;
  v124 = a3;
  v139[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FE0, &qword_2304A7430);
  MEMORY[0x28223BE20](v4 - 8);
  v122 = v103 - v5;
  v115 = sub_2304A3FC4();
  v135 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v132 = v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_2304A4A64();
  v125 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v136 = v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2304A43B4();
  v134 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB546F0, &unk_2304A7A40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v103 - v12;
  v14 = sub_2304A4084();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2304A4FF4();
  v111 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v103 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v103 - v22;
  v110 = a1;
  v24 = sub_230497B9C();
  v112 = 0;
  v104 = v23;
  v105 = v16;
  v127 = v13;
  v128 = v10;
  v121 = v8;
  v106 = v17;
  v37 = v24;
  v38 = v137;
  __swift_project_boxed_opaque_existential_5Tm((v137 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_replicator), *(v137 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_replicator + 24));
  v39 = sub_2304A42A4();
  if (v39)
  {
    v103[0] = v39;
    __swift_project_boxed_opaque_existential_5Tm((v38 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore), *(v38 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore + 24));
    v103[1] = v37;
    v40 = sub_2304A5324();
    v41 = *(v40 + 16);
    if (v41)
    {
      v139[0] = MEMORY[0x277D84F90];
      v42 = v40;
      v117 = v41;
      sub_2304A6154();
      v43 = v42;
      v44 = 0;
      v45 = v125;
      v120 = v43 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
      v119 = v125 + 16;
      v113 = (v135 + 48);
      v109 = (v135 + 32);
      v108 = (v135 + 8);
      v116 = (v125 + 8);
      v47 = v133;
      v46 = v134;
      v48 = v128;
      v49 = v132;
      v118 = v43;
      while (1)
      {
        if (v44 >= *(v43 + 16))
        {
LABEL_54:
          __break(1u);
          swift_once();
          v25 = sub_2304A5B74();
          __swift_project_value_buffer(v25, qword_28149B008);
          v26 = v111;
          (*(v111 + 16))(v47, v110, v44);
          v27 = v44;
          v28 = sub_2304A5B54();
          v29 = sub_2304A5E74();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v31 = v26;
            v32 = swift_slowAlloc();
            v139[0] = v32;
            *v30 = 136446210;
            sub_2304A3E00(&qword_281499F78, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
            v33 = sub_2304A62D4();
            v35 = v34;
            (*(v31 + 8))(v47, v27);
            v36 = sub_23046A5C8(v33, v35, v139);

            *(v30 + 4) = v36;
            _os_log_impl(&dword_230430000, v28, v29, "Failed to resolve ID for: %{public}s", v30, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v32);
            MEMORY[0x23191A000](v32, -1, -1);
            MEMORY[0x23191A000](v30, -1, -1);
          }

          else
          {

            (*(v26 + 8))(v47, v27);
          }

          return 0;
        }

        v54 = *(v45 + 72);
        v131 = v44;
        (*(v45 + 16))(v136, v120 + v54 * v44, v47);
        if (v123)
        {
          v55 = sub_2304A4A54();
          v129 = v56;
          v130 = v55;
        }

        else
        {
          v129 = 0xF000000000000000;
          v130 = 0;
        }

        v57 = v122;
        if ((v124 & 1) == 0)
        {
          goto LABEL_8;
        }

        sub_2304A4A44();
        v58 = v115;
        if ((*v113)(v57, 1, v115) == 1)
        {
          break;
        }

        (*v109)(v49, v57, v58);
        v59 = sub_2304A3F54();
        v60 = objc_opt_self();
        v138 = 0;
        v61 = [v60 fileHandleForReadingFromURL:v59 error:&v138];

        v62 = v138;
        if (v61)
        {
          v50 = v61;
          v63 = v112;
        }

        else
        {
          v64 = v62;
          v65 = sub_2304A3F24();

          swift_willThrow();
          v50 = 0;
          v63 = 0;
        }

        v66 = v61;
        v67 = sub_2304A3F44();
        if (v63)
        {

          (*v108)(v49, v115);
          v112 = 0;
        }

        else
        {
          v107 = v50;
          v68 = v67;
          (*v108)(v49, v115);
          v69 = v68;
          v44 = *(v68 + 16);
          v112 = 0;
          if (v44)
          {
            v138 = MEMORY[0x277D84F90];
            v135 = v69;
            sub_2304A6154();
            v70 = v135;
            v137 = v135 + 64;
            v71 = sub_2304A5FB4();
            v72 = 0;
            v114 = v70 + 72;
            v126 = v44;
            while ((v71 & 0x8000000000000000) == 0 && v71 < 1 << *(v70 + 32))
            {
              v73 = v71 >> 6;
              if ((*(v137 + 8 * (v71 >> 6)) & (1 << v71)) == 0)
              {
                goto LABEL_50;
              }

              v47 = *(v70 + 36);
              v74 = (*(v70 + 56) + 16 * v71);
              v76 = *v74;
              v75 = v74[1];
              swift_bridgeObjectRetain_n();
              sub_230474E48(v76, v75);
              sub_230474E48(v76, v75);

              sub_2304617C4(v76, v75);

              sub_230474E48(v76, v75);
              sub_2304617C4(v76, v75);

              sub_230474E48(v76, v75);

              v77 = objc_allocWithZone(sub_2304A5A74());
              sub_2304A5A54();

              sub_2304617C4(v76, v75);
              sub_2304A6134();
              sub_2304A6164();
              sub_2304A6174();
              sub_2304A6144();
              v70 = v135;
              v44 = 1 << *(v135 + 32);
              if (v71 >= v44)
              {
                goto LABEL_51;
              }

              v78 = *(v137 + 8 * v73);
              if ((v78 & (1 << v71)) == 0)
              {
                goto LABEL_52;
              }

              if (v47 != *(v135 + 36))
              {
                goto LABEL_53;
              }

              v79 = v78 & (-2 << (v71 & 0x3F));
              if (v79)
              {
                v44 = __clz(__rbit64(v79)) | v71 & 0x7FFFFFFFFFFFFFC0;
                v46 = v134;
                v48 = v128;
                v49 = v132;
              }

              else
              {
                v80 = v73 << 6;
                v81 = v73 + 1;
                v82 = (v114 + 8 * v73);
                v46 = v134;
                v48 = v128;
                v49 = v132;
                while (v81 < (v44 + 63) >> 6)
                {
                  v84 = *v82++;
                  v83 = v84;
                  v80 += 64;
                  ++v81;
                  if (v84)
                  {
                    sub_230433B44(v71, v47, 0);
                    v44 = __clz(__rbit64(v83)) + v80;
                    goto LABEL_37;
                  }
                }

                sub_230433B44(v71, v47, 0);
LABEL_37:
                v70 = v135;
              }

              ++v72;
              v71 = v44;
              v44 = v126;
              v47 = v133;
              if (v72 == v126)
              {
                goto LABEL_38;
              }
            }

            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

LABEL_38:

          v50 = v107;
        }

LABEL_9:
        v44 = v131 + 1;
        v51 = v136;
        sub_2304A4A34();
        v52 = objc_allocWithZone(sub_2304A5A34());
        sub_2304A5A14();

        (*v116)(v51, v47);
        sub_2304A6134();
        sub_2304A6164();
        sub_2304A6174();
        sub_2304A6144();
        v53 = v121;
        v45 = v125;
        v43 = v118;
        if (v44 == v117)
        {

          v99 = v110;
          v100 = v111;
          goto LABEL_47;
        }
      }

      sub_230464970(v57, &qword_27DB53FE0, &qword_2304A7430);
LABEL_8:
      v50 = 0;
      goto LABEL_9;
    }

    v100 = v111;
    v99 = v110;
    v53 = v121;
    v46 = v134;
    v48 = v128;
LABEL_47:
    (*(v100 + 16))(v104, v99, v106);
    sub_2304A43D4();
    sub_2304A4354();
    sub_2304A43C4();
    sub_2304A43A4();
    (*(v46 + 8))(v48, v53);
    v101 = objc_allocWithZone(sub_2304A5994());
    v102 = sub_2304A5934();

    return v102;
  }

  else
  {
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v86 = sub_2304A5B74();
    __swift_project_value_buffer(v86, qword_28149B008);
    v87 = v111;
    v88 = v21;
    v89 = v106;
    (*(v111 + 16))(v21, v110, v106);
    v90 = sub_2304A5B54();
    v91 = sub_2304A5E74();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = v87;
      v94 = swift_slowAlloc();
      v139[0] = v94;
      *v92 = 136446210;
      sub_2304A3E00(&qword_281499F78, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
      v95 = sub_2304A62D4();
      v97 = v96;
      (*(v93 + 8))(v88, v89);
      v98 = sub_23046A5C8(v95, v97, v139);

      *(v92 + 4) = v98;
      _os_log_impl(&dword_230430000, v90, v91, "Failed to find metadata for: %{public}s", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v94);
      MEMORY[0x23191A000](v94, -1, -1);
      MEMORY[0x23191A000](v92, -1, -1);
    }

    else
    {

      (*(v87 + 8))(v21, v89);
    }

    return 0;
  }
}

uint64_t sub_230497B9C()
{
  v0 = sub_2304A4FD4();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2304A49E4();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v18 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  sub_2304A4FE4();
  v12 = sub_2304A4084();
  v13 = *(v12 - 8);
  v14 = 1;
  if ((*(v13 + 48))(v2, 1, v12) != 1)
  {
    (*(v13 + 32))(v9, v2, v12);
    v14 = 0;
  }

  (*(v13 + 56))(v9, v14, 1, v12);
  v15 = MEMORY[0x277D464E0];
  sub_2304A3398(v9, v11, MEMORY[0x277D464E0]);
  sub_2304A4984();
  sub_2304A4FB4();
  sub_2304A4F84();
  sub_2304A4974();

  sub_2304A4FA4();
  sub_2304A3400(v11, v6, v15);
  sub_2304A4A04();
  swift_allocObject();
  v16 = sub_2304A49B4();
  sub_2304644B0(v11, MEMORY[0x277D464E0]);
  return v16;
}

void sub_230497E44(unint64_t a1, char *a2, uint64_t a3)
{
  v7 = *v3;
  v8 = MEMORY[0x2319199F0]();
  sub_230497EF4(v3, a2, a1, a3, v7, &v9);
  objc_autoreleasePoolPop(v8);
}

uint64_t sub_230497EF4(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v330 = a6;
  v339 = a5;
  v312 = a4;
  v325 = a3;
  v389 = a2;
  v399 = *MEMORY[0x277D85DE8];
  v333 = sub_2304A4B84();
  v337 = *(v333 - 8);
  MEMORY[0x28223BE20](v333);
  v336 = &v283 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v334 = sub_2304A5C04();
  v305 = *(v334 - 8);
  MEMORY[0x28223BE20](v334);
  v303 = &v283 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = sub_2304A5C64();
  v302 = *(v304 - 8);
  MEMORY[0x28223BE20](v304);
  v340 = &v283 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v308 = sub_2304A5134();
  v307 = *(v308 - 8);
  MEMORY[0x28223BE20](v308);
  v306 = &v283 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v311 = sub_2304A46F4();
  v310 = *(v311 - 8);
  MEMORY[0x28223BE20](v311);
  v309 = &v283 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FE0, &qword_2304A7430);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v363 = &v283 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v378 = &v283 - v15;
  v382 = sub_2304A3FC4();
  v380 = *(v382 - 1);
  v16 = MEMORY[0x28223BE20](v382);
  v358 = &v283 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v338 = &v283 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v352 = &v283 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v386 = &v283 - v23;
  MEMORY[0x28223BE20](v22);
  v385 = &v283 - v24;
  v383 = sub_2304A4A64();
  v374 = *(v383 - 8);
  v25 = MEMORY[0x28223BE20](v383);
  v376 = &v283 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v359 = &v283 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v371 = &v283 - v30;
  MEMORY[0x28223BE20](v29);
  v381 = &v283 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB546F0, &unk_2304A7A40);
  MEMORY[0x28223BE20](v32 - 8);
  v316 = &v283 - v33;
  v332 = sub_2304A4084();
  v301 = *(v332 - 8);
  MEMORY[0x28223BE20](v332);
  v343 = &v283 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v345 = sub_2304A4184();
  v346 = *(v345 - 8);
  v35 = MEMORY[0x28223BE20](v345);
  v335 = &v283 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v322 = &v283 - v38;
  MEMORY[0x28223BE20](v37);
  v321 = &v283 - v39;
  v320 = sub_2304A43B4();
  v375 = *(v320 - 8);
  v40 = MEMORY[0x28223BE20](v320);
  v315 = &v283 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v361 = &v283 - v42;
  v329 = sub_2304A5224();
  v328 = *(v329 - 8);
  MEMORY[0x28223BE20](v329);
  v349 = &v283 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v313 = sub_2304A53C4();
  v362 = *(v313 - 8);
  MEMORY[0x28223BE20](v313);
  v314 = &v283 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54828, &qword_2304A8050);
  v46 = MEMORY[0x28223BE20](v45 - 8);
  v366 = (&v283 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v46);
  v365 = &v283 - v48;
  v49 = sub_2304A4FD4();
  MEMORY[0x28223BE20](v49 - 8);
  v348 = &v283 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2304A4FF4();
  v318 = *(v51 - 8);
  v52 = MEMORY[0x28223BE20](v51);
  v54 = &v283 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x28223BE20](v52);
  v57 = &v283 - v56;
  v58 = MEMORY[0x28223BE20](v55);
  v60 = &v283 - v59;
  MEMORY[0x28223BE20](v58);
  v62 = &v283 - v61;
  v63 = sub_2304A45F4();
  v64 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v66 = (&v283 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  v331 = a1;
  v67 = v390;
  result = sub_23049B2A4(v389, v66);
  if (v67)
  {
    v69 = v67;
    goto LABEL_3;
  }

  v70 = v375;
  v299 = v57;
  v300 = v60;
  v319 = v54;
  v364 = 0;
  v344 = v62;
  v342 = v51;
  v297 = v66;
  v296 = v63;
  v298 = v64;
  v392 = MEMORY[0x277D84F90];
  v71 = v325;
  if (v325 >> 62)
  {
    goto LABEL_134;
  }

  for (i = *((v325 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2304A6044())
  {
    v73 = v362;
    v74 = v348;
    v75 = v383;
    v76 = v378;
    v370 = (v331 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore);
    if (i)
    {
      v77 = v70;
      v70 = 0;
      v292 = OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_clientDescriptor;
      v78 = v71 & 0xC000000000000001;
      v294 = v71 & 0xFFFFFFFFFFFFFF8;
      v293 = v71 + 32;
      v324 = (v318 + 8);
      v291 = v328 + 16;
      v388 = (v374 + 8);
      v389 = (v374 + 16);
      v384 = (v380 + 48);
      v387 = (v380 + 32);
      v379 = (v380 + 16);
      v377 = v380 + 8;
      v350 = (v380 + 56);
      v327 = v374 + 32;
      v326 = v374 + 40;
      v287 = (v77 + 16);
      v286 = (v346 + 16);
      v285 = v346 + 8;
      v284 = (v77 + 8);
      v290 = (v328 + 8);
      v79 = MEMORY[0x277D84F98];
      v283 = v346 + 32;
      v373 = MEMORY[0x277D84F98];
      v323 = MEMORY[0x277D84F90];
      v360 = MEMORY[0x277D84F90];
      v390 = MEMORY[0x277D84F90];
      v289 = i;
      v288 = v71 & 0xC000000000000001;
      while (1)
      {
        v368 = v79;
        if (v78)
        {
          v81 = MEMORY[0x231919680](v70, v71);
          v80 = v382;
          v82 = __OFADD__(v70++, 1);
          if (v82)
          {
            goto LABEL_132;
          }
        }

        else
        {
          v80 = v382;
          if (v70 >= *(v294 + 16))
          {
            goto LABEL_133;
          }

          v81 = *(v293 + 8 * v70);
          v82 = __OFADD__(v70++, 1);
          if (v82)
          {
            goto LABEL_132;
          }
        }

        v295 = v70;
        v83 = v344;
        v84 = v81;
        sub_2304A5944();
        sub_2304A4FE4();
        v317 = *v324;
        v317(v83, v342);
        v85 = sub_2304A4FC4();
        sub_2304644B0(v74, MEMORY[0x277D46780]);
        if ((v85 & 1) == 0)
        {
          break;
        }

        v86 = v300;
        sub_2304A5944();
        v87 = v364;
        v375 = sub_23049C0B0();
        if (v87)
        {

          v274 = v342;
          v275 = v317;
          v317(v86, v342);

          aBlock = 0;
          v394 = 0xE000000000000000;
          sub_2304A6104();

          aBlock = 0xD00000000000002CLL;
          v394 = 0x80000002304A9770;
          v276 = v344;
          sub_2304A5944();
          sub_2304A3E00(&qword_281499F78, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
          v277 = sub_2304A62D4();
          MEMORY[0x2319192E0](v277);

          v275(v276, v274);
          sub_23049BBDC(v360, aBlock, v394);

          v273 = MEMORY[0x277D468D0];
          goto LABEL_122;
        }

        v364 = 0;
        v88 = v86;
        v89 = v317;
        v317(v88, v342);
        v90 = sub_2304A5244();
        v91 = v299;
        v347 = v84;
        sub_2304A5944();
        v92 = sub_2304A4FB4();
        v94 = v93;
        v89(v91, v342);
        if (!*(v90 + 16))
        {

          goto LABEL_125;
        }

        v95 = sub_230469C40(v92, v94);
        v97 = v96;

        if ((v97 & 1) == 0)
        {

LABEL_125:

          v278 = v317;

          aBlock = 0;
          v394 = 0xE000000000000000;
          sub_2304A6104();

          aBlock = 0xD000000000000028;
          v394 = 0x80000002304A97A0;
          v279 = v344;
          v280 = v347;
          sub_2304A5944();
          sub_2304A3E00(&qword_281499F78, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
          v281 = v342;
          v282 = sub_2304A62D4();
          MEMORY[0x2319192E0](v282);

          v278(v279, v281);
          sub_23049BBDC(v360, aBlock, v394);

          (*(v362 + 104))(v314, *MEMORY[0x277D468D0], v313);
          sub_2304A53E4();
          sub_2304A3E00(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
          v69 = swift_allocError();
          sub_2304A53D4();
          swift_willThrow();

LABEL_126:
          (*(v298 + 8))(v297, v296);

LABEL_3:
          *v330 = v69;
          return result;
        }

        (*(v328 + 16))(v349, *(v90 + 56) + *(v328 + 72) * v95, v329);

        v98 = sub_2304A5964();
        v341 = v98;
        if (v98 >> 62)
        {
          v70 = sub_2304A6044();
        }

        else
        {
          v70 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v99 = v362;
        v100 = v361;
        v101 = v373;
        v102 = v368;
        if (v70)
        {
          v103 = 0;
          v355 = v341 & 0xC000000000000001;
          v354 = v341 & 0xFFFFFFFFFFFFFF8;
          v353 = v341 + 32;
          v71 = v373;
          v351 = v70;
          while (1)
          {
            v368 = v102;
            v357 = v71;
            if (v355)
            {
              v104 = MEMORY[0x231919680](v103, v341);
            }

            else
            {
              if (v103 >= *(v354 + 16))
              {
                goto LABEL_129;
              }

              v104 = *(v353 + 8 * v103);
            }

            v105 = v104;
            v82 = __OFADD__(v103, 1);
            v106 = v103 + 1;
            if (v82)
            {
              goto LABEL_128;
            }

            v372 = sub_2304A5A04();
            v373 = v107;
            if (v107 >> 60 == 15)
            {

              aBlock = 0;
              v394 = 0xE000000000000000;
              sub_2304A6104();
              MEMORY[0x2319192E0](0xD000000000000032, 0x80000002304A97D0);
              v219 = v344;
              v220 = v347;
              sub_2304A5944();
              sub_2304A3E00(&qword_281499F78, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
              v221 = v105;
              v222 = v342;
              v223 = sub_2304A62D4();
              MEMORY[0x2319192E0](v223);

              v317(v219, v222);
              sub_23049BBDC(v360, aBlock, v394);

              (*(v99 + 104))(v314, *MEMORY[0x277D468D0], v313);
              sub_2304A53E4();
              sub_2304A3E00(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
              v69 = swift_allocError();
              sub_2304A53D4();
              swift_willThrow();

              (*v290)(v349, v329);
              goto LABEL_126;
            }

            v367 = v106;
            __swift_project_boxed_opaque_existential_5Tm(v370, v370[3]);
            v108 = sub_2304A5324();
            v109 = v108[2];
            v369 = v105;
            if (v109)
            {
              v110 = (*(v374 + 80) + 32) & ~*(v374 + 80);
              v356 = v108;
              v111 = v108 + v110;
              v112 = *(v374 + 72);
              v113 = *(v374 + 16);
              v114 = v381;
              v113(v381, v108 + v110, v75);
              while (1)
              {
                sub_2304A4A44();
                (*v388)(v114, v75);
                if ((*v384)(v76, 1, v80) == 1)
                {
                  sub_230464970(v76, &qword_27DB53FE0, &qword_2304A7430);
                }

                else
                {
                  v115 = *v387;
                  v116 = v385;
                  (*v387)(v385, v76, v80);
                  (*v379)(v386, v116, v80);
                  v117 = v390;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v117 = sub_23045A040(0, v117[2] + 1, 1, v117);
                  }

                  v119 = v117[2];
                  v118 = v117[3];
                  v390 = v119 >= v118 >> 1 ? sub_23045A040((v118 > 1), v119 + 1, 1, v117) : v117;
                  v120 = v380;
                  v80 = v382;
                  (*(v380 + 8))(v385, v382);
                  v121 = v390;
                  v390[2] = v119 + 1;
                  v115(&v121[((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v119], v386, v80);
                  v75 = v383;
                  v76 = v378;
                  v114 = v381;
                }

                v111 += v112;
                if (!--v109)
                {
                  break;
                }

                v113(v114, v111, v75);
              }

              v105 = v369;
            }

            else
            {
            }

            v122 = sub_2304A59E4();
            v123 = v363;
            v124 = v371;
            if (!v122)
            {
              goto LABEL_50;
            }

            v125 = v122;
            v126 = sub_2304A59F4();
            if (!v126)
            {
              break;
            }

            v127 = v126;
            v128 = v347;
            v129 = v364;
            v130 = sub_2304A386C(MEMORY[0x277D84F98], v127, sub_23049BBDC, 0, &v392, v128);
            v69 = v129;
            if (v129)
            {

              sub_23049488C(v372, v373);
              (*v290)(v349, v329);
              (*(v298 + 8))(v297, v296);

              goto LABEL_3;
            }

            v131 = v130;
            v364 = 0;
            v132 = v125;

            v133 = v128;
            v134 = sub_23049C2F4(v131);

            v135 = sub_2304A51D4();
            v136 = v352;
            v356 = v132;
            v137 = v364;
            sub_23049C564(v132, v134, v135 & 1, v352);
            v364 = v137;
            if (v137)
            {

              if (qword_281499E38 != -1)
              {
                swift_once();
              }

              v238 = sub_2304A5B74();
              __swift_project_value_buffer(v238, qword_28149B008);
              v239 = v133;
              v240 = v364;
              v241 = v364;
              v242 = v240;
              v243 = sub_2304A5B54();
              v244 = sub_2304A5E74();

              v245 = os_log_type_enabled(v243, v244);
              v246 = v342;
              if (v245)
              {
                v247 = swift_slowAlloc();
                v389 = swift_slowAlloc();
                v390 = swift_slowAlloc();
                aBlock = v390;
                *v247 = 136446466;
                v248 = v344;
                v249 = v239;
                v250 = v242;
                sub_2304A5944();
                sub_2304A3E00(&qword_281499F78, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
                v251 = sub_2304A62D4();
                v253 = v252;
                v317(v248, v246);
                v254 = sub_23046A5C8(v251, v253, &aBlock);

                *(v247 + 4) = v254;
                *(v247 + 12) = 2114;
                v255 = v250;
                v239 = v249;
                v256 = _swift_stdlib_bridgeErrorToNSError();
                *(v247 + 14) = v256;
                v257 = v389;
                *v389 = v256;
                _os_log_impl(&dword_230430000, v243, v244, "Failed to ingest file handle: %{public}s; error: %{public}@", v247, 0x16u);
                sub_230464970(v257, &qword_27DB53F30, &qword_2304A7390);
                MEMORY[0x23191A000](v257, -1, -1);
                v258 = v390;
                __swift_destroy_boxed_opaque_existential_0Tm(v390);
                MEMORY[0x23191A000](v258, -1, -1);
                MEMORY[0x23191A000](v247, -1, -1);

                v259 = v298;
                v260 = v297;
              }

              else
              {

                v259 = v298;
                v260 = v297;
                v248 = v344;
              }

              v265 = v314;
              v266 = v313;
              aBlock = 0;
              v394 = 0xE000000000000000;
              sub_2304A6104();

              aBlock = 0xD00000000000001ELL;
              v394 = 0x80000002304A9810;
              sub_2304A5944();
              sub_2304A3E00(&qword_281499F78, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
              v267 = sub_2304A62D4();
              MEMORY[0x2319192E0](v267);

              v317(v248, v246);
              sub_23049BBDC(v360, aBlock, v394);

              (*(v362 + 104))(v265, *MEMORY[0x277D468D0], v266);
              sub_2304A53E4();
              sub_2304A3E00(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
              v268 = swift_allocError();
              sub_2304A53D4();
              swift_willThrow();

              sub_23049488C(v372, v373);
              (*v290)(v349, v329);
              v269 = v260;
              v69 = v268;
              (*(v259 + 8))(v269, v296);

              goto LABEL_3;
            }

            v138 = *v379;
            v139 = v338;
            (*v379)(v338, v136, v80);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v360 = sub_23045A040(0, v360[2] + 1, 1, v360);
            }

            v140 = v380;
            v141 = v363;
            v143 = v360[2];
            v142 = v360[3];
            if (v143 >= v142 >> 1)
            {
              v360 = sub_23045A040((v142 > 1), v143 + 1, 1, v360);
            }

            v144 = v360;
            v360[2] = v143 + 1;
            v145 = v382;
            (*(v140 + 32))(v144 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v143, v139, v382);
            v392 = v144;
            v80 = v145;
            v357 = sub_2304A5A24();
            v146 = v352;
            (v138)(v141, v352, v80);
            (*(v140 + 56))(v141, 0, 1, v80);
            sub_2304A3470(v372, v373);
            v124 = v371;
            sub_2304A4A24();

            v105 = v369;
            (*(v140 + 8))(v146, v80);
LABEL_51:
            v147 = v359;
            (*v389)(v359, v124, v75);
            v148 = v375;

            v71 = v368;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            aBlock = v71;
            v150 = v148;
            v70 = v71;
            v151 = sub_23046A130(v150);
            v153 = *(v71 + 16);
            v154 = (v152 & 1) == 0;
            v82 = __OFADD__(v153, v154);
            v155 = v153 + v154;
            if (v82)
            {
              goto LABEL_130;
            }

            v156 = v152;
            if (*(v71 + 24) >= v155)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v160 = v151;
                sub_230472954();
                v151 = v160;
              }
            }

            else
            {
              sub_2304709D8(v155, isUniquelyReferenced_nonNull_native);
              v151 = sub_23046A130(v375);
              if ((v156 & 1) != (v157 & 1))
              {
                sub_2304A4A04();
                sub_2304A6314();
                __break(1u);
                goto LABEL_135;
              }
            }

            v70 = v371;
            v103 = v367;
            v71 = aBlock;
            if (v156)
            {
              (*(v374 + 40))(aBlock[7] + *(v374 + 72) * v151, v147, v75);
            }

            else
            {
              aBlock[(v151 >> 6) + 8] |= 1 << v151;
              *(*(v71 + 48) + 8 * v151) = v375;
              (*(v374 + 32))(*(v71 + 56) + *(v374 + 72) * v151, v147, v75);
              v158 = *(v71 + 16);
              v82 = __OFADD__(v158, 1);
              v159 = v158 + 1;
              if (v82)
              {
                goto LABEL_131;
              }

              *(v71 + 16) = v159;
            }

            sub_23049488C(v372, v373);
            (*v388)(v70, v75);
            v102 = v71;
            v101 = v71;
            v70 = v351;
            v99 = v362;
            v100 = v361;
            if (v103 == v351)
            {
              goto LABEL_62;
            }
          }

LABEL_50:
          sub_2304A5A24();
          (*v350)(v123, 1, 1, v80);
          sub_2304A3470(v372, v373);
          sub_2304A4A24();
          goto LABEL_51;
        }

        v71 = v368;
LABEL_62:
        v357 = v71;
        v373 = v101;

        sub_2304A5974();
        sub_2304A4394();

        v161 = v344;
        sub_2304A5944();
        v372 = sub_2304A4FA4();
        v317(v161, v342);
        sub_2304A5984();
        sub_2304A5924();
        (*v287)(v315, v100, v320);
        v162 = v321;
        sub_2304A4164();
        v163 = v345;
        (*v286)(v322, v162, v345);
        v164 = v323;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v164 = sub_23045A068(0, v164[2] + 1, 1, v164);
        }

        v74 = v348;
        v166 = v164[2];
        v165 = v164[3];
        v73 = v362;
        v167 = v320;
        if (v166 >= v165 >> 1)
        {
          v323 = sub_23045A068((v165 > 1), v166 + 1, 1, v164);
        }

        else
        {
          v323 = v164;
        }

        v168 = v346;
        (*(v346 + 8))(v321, v163);
        (*v284)(v361, v167);
        (*v290)(v349, v329);
        v169 = v323;
        v323[2] = v166 + 1;
        (*(v168 + 32))(v169 + ((*(v168 + 80) + 32) & ~*(v168 + 80)) + *(v168 + 72) * v166, v322, v163);
        v79 = v357;
        v70 = v295;
        v71 = v325;
        v78 = v288;
        if (v295 == v289)
        {
          goto LABEL_74;
        }
      }

      aBlock = 0;
      v394 = 0xE000000000000000;
      sub_2304A6104();

      aBlock = 0xD000000000000027;
      v394 = 0x80000002304A9740;
      v270 = v344;
      sub_2304A5944();
      sub_2304A3E00(&qword_281499F78, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
      v271 = v342;
      v272 = sub_2304A62D4();
      MEMORY[0x2319192E0](v272);

      v317(v270, v271);
      sub_23049BBDC(v360, aBlock, v394);

      v273 = MEMORY[0x277D468C0];
LABEL_122:
      (*(v73 + 104))(v314, *v273, v313);
      sub_2304A53E4();
      sub_2304A3E00(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
      v69 = swift_allocError();
      sub_2304A53D4();
      swift_willThrow();

      goto LABEL_126;
    }

    v373 = MEMORY[0x277D84F98];
    v323 = MEMORY[0x277D84F90];
    v390 = MEMORY[0x277D84F90];
    v360 = MEMORY[0x277D84F90];
LABEL_74:
    v170 = *(v373 + 64);
    v386 = (v373 + 64);
    v171 = 1 << *(v373 + 32);
    v172 = -1;
    if (v171 < 64)
    {
      v172 = ~(-1 << v171);
    }

    v173 = v172 & v170;
    v174 = (v171 + 63) >> 6;
    v175 = (v374 + 32);
    v388 = (v374 + 16);
    v389 = (v374 + 8);

    v176 = 0;
    v387 = v175;
    if (v173)
    {
      break;
    }

LABEL_78:
    if (v174 <= (v176 + 1))
    {
      v178 = v176 + 1;
    }

    else
    {
      v178 = v174;
    }

    v71 = v178 - 1;
    while (1)
    {
      v177 = v176 + 1;
      if (__OFADD__(v176, 1))
      {
        break;
      }

      if (v177 >= v174)
      {
        v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54830, &unk_2304A8058);
        v192 = v366;
        (*(*(v191 - 8) + 56))(v366, 1, 1, v191);
        v188 = v192;
        v173 = 0;
        goto LABEL_86;
      }

      v173 = *&v386[8 * v177];
      ++v176;
      if (v173)
      {
        goto LABEL_85;
      }
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    ;
  }

  while (1)
  {
    v177 = v176;
LABEL_85:
    v179 = __clz(__rbit64(v173));
    v173 &= v173 - 1;
    v180 = v179 | (v177 << 6);
    v181 = *(*(v373 + 48) + 8 * v180);
    v182 = v374;
    v183 = v376;
    (*(v374 + 16))(v376, *(v373 + 56) + *(v374 + 72) * v180, v75);
    v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54830, &unk_2304A8058);
    v185 = *(v184 + 48);
    v186 = v366;
    *v366 = v181;
    v187 = v183;
    v175 = v387;
    (*(v182 + 32))(&v186[v185], v187, v75);
    (*(*(v184 - 8) + 56))(v186, 0, 1, v184);

    v71 = v177;
    v188 = v186;
LABEL_86:
    v189 = v365;
    sub_230464ABC(v188, v365, &qword_27DB54828, &qword_2304A8050);
    v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54830, &unk_2304A8058);
    if ((*(*(v190 - 8) + 48))(v189, 1, v190) == 1)
    {
      break;
    }

    (*v175)(v376, v189 + *(v190 + 48), v75);
    v70 = __swift_project_boxed_opaque_existential_5Tm(v370, v370[3]);
    v75 = v383;
    sub_2304A5354();

    (*v389)(v376, v75);
    v176 = v71;
    if (!v173)
    {
      goto LABEL_78;
    }
  }

  v193 = v390;
  v194 = v390[2];
  if (v194)
  {
    v195 = objc_opt_self();
    v196 = v380 + 16;
    v388 = *(v380 + 16);
    v389 = v195;
    v197 = v193 + ((*(v380 + 80) + 32) & ~*(v380 + 80));
    v198 = *(v380 + 72);
    v199 = (v380 + 8);
    v200 = v358;
    do
    {
      v203 = v382;
      v204 = v196;
      (v388)(v200, v197, v382);
      v205 = [v389 defaultManager];
      v206 = sub_2304A3F54();
      (*v199)(v200, v203);
      aBlock = 0;
      LODWORD(v203) = [v205 removeItemAtURL:v206 error:&aBlock];

      if (v203)
      {
        v207 = aBlock;
      }

      else
      {
        v201 = aBlock;
        v202 = sub_2304A3F24();

        swift_willThrow();
        v364 = 0;
      }

      v197 += v198;
      --v194;
      v196 = v204;
      v200 = v358;
    }

    while (v194);
  }

  v208 = *(v331 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_replicator + 24);
  v389 = *(v331 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_replicator + 32);
  __swift_project_boxed_opaque_existential_5Tm((v331 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_replicator), v208);
  v209 = v307;
  v210 = v306;
  v211 = v308;
  (*(v307 + 16))(v306, v312, v308);
  v212 = (*(v209 + 88))(v210, v211);
  if (v212 == *MEMORY[0x277D46828])
  {
    v213 = v309;
    sub_2304A46E4();
    v214 = v298;
    v215 = v340;
    v216 = v311;
    v217 = v310;
    v218 = v323;
    goto LABEL_101;
  }

  v214 = v298;
  v215 = v340;
  v216 = v311;
  v217 = v310;
  v213 = v309;
  v218 = v323;
  if (v212 == *MEMORY[0x277D46820])
  {
    sub_2304A46D4();
LABEL_101:
    v224 = v297;
    v225 = v364;
    sub_2304A4234();
    v364 = v225;
    if (v225)
    {
      (*(v217 + 8))(v213, v216);
      (*(v214 + 8))(v224, v296);

      v69 = v364;
      goto LABEL_3;
    }

    (*(v217 + 8))(v213, v216);
    v226 = v218[2];
    if (v226)
    {
      v384 = *(v346 + 16);
      v227 = v218 + ((*(v346 + 80) + 32) & ~*(v346 + 80));
      v383 = *(v346 + 72);
      v382 = (v301 + 56);
      v380 = v318 + 8;
      v381 = (v318 + 16);
      v379 = (v346 + 8);
      v378 = (v337 + 32);
      v228 = MEMORY[0x277D84F90];
      v229 = v342;
      v230 = v335;
      v231 = v319;
      v346 += 16;
      do
      {
        v388 = v227;
        v389 = v226;
        v384(v230);
        sub_2304A4174();
        v232 = sub_2304A49C4();
        v386 = v233;
        v387 = v232;

        sub_2304A4174();
        sub_2304A49D4();

        v385 = sub_2304A4964();

        sub_2304A4174();
        sub_2304A49D4();

        sub_2304A4954();

        (*v382)(v348, 1, 1, v332);
        sub_2304A4F94();
        (*v381)(v344, v231, v229);
        sub_2304A4154();
        sub_2304A4B74();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v228 = sub_230459CE0(0, v228[2] + 1, 1, v228);
        }

        v235 = v228[2];
        v234 = v228[3];
        v236 = v334;
        v215 = v340;
        v237 = v345;
        v231 = v319;
        if (v235 >= v234 >> 1)
        {
          v228 = sub_230459CE0((v234 > 1), v235 + 1, 1, v228);
        }

        (*v380)(v231, v229);
        v230 = v335;
        (*v379)(v335, v237);
        v228[2] = v235 + 1;
        (*(v337 + 32))(v228 + ((*(v337 + 80) + 32) & ~*(v337 + 80)) + *(v337 + 72) * v235, v336, v333);
        v227 = &v388[v383];
        v226 = v389 - 1;
      }

      while (v389 != 1);
    }

    else
    {
      v236 = v334;
      v228 = MEMORY[0x277D84F90];
    }

    v261 = v331;
    v390 = *(v331 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_notificationQueue);
    v262 = swift_allocObject();
    *(v262 + 16) = v261;
    *(v262 + 24) = v228;
    v397 = sub_2304A3DF8;
    v398 = v262;
    aBlock = MEMORY[0x277D85DD0];
    v394 = 1107296256;
    v395 = sub_2304699EC;
    v396 = &block_descriptor_21;
    v263 = _Block_copy(&aBlock);

    sub_2304A5C34();
    v391 = MEMORY[0x277D84F90];
    sub_2304A3E00(&qword_281499DE8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB544D0, &qword_2304A7788);
    sub_2304A3E48(&qword_281499DC8, &unk_27DB544D0, &qword_2304A7788);
    v264 = v303;
    sub_2304A5FA4();
    MEMORY[0x231919460](0, v215, v264, v263);
    _Block_release(v263);
    (*(v305 + 8))(v264, v236);
    (*(v302 + 8))(v215, v304);
    (*(v298 + 8))(v297, v296);
  }

  else
  {
LABEL_135:
    result = sub_2304A6254();
    __break(1u);
  }

  return result;
}

uint64_t sub_23049B2A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v41 = a2;
  v3 = sub_2304A53C4();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2304A4BF4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  v12 = sub_2304A5394();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2304A51F4();
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == *MEMORY[0x277D468A8])
  {
    (*(v6 + 16))(v9, a1, v5);
    v17 = (*(v6 + 88))(v9, v5);
    if (v17 == *MEMORY[0x277D46558])
    {
      (*(v6 + 96))(v9, v5);
      v18 = v41;
      *v41 = *v9;
      v19 = *MEMORY[0x277D463D8];
      v20 = sub_2304A45F4();
      return (*(*(v20 - 8) + 104))(v18, v19, v20);
    }

    if (v17 != *MEMORY[0x277D46560])
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
        *v30 = 0;
        _os_log_impl(&dword_230430000, v28, v29, "Unknown destination", v30, 2u);
        MEMORY[0x23191A000](v30, -1, -1);
      }

      (*(v42 + 104))(v44, *MEMORY[0x277D468D0], v43);
      sub_2304A53E4();
      sub_2304A3E00(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
      swift_allocError();
      sub_2304A53D4();
      swift_willThrow();
      return (*(v6 + 8))(v9, v5);
    }

LABEL_23:
    v35 = *MEMORY[0x277D463E0];
    v36 = sub_2304A45F4();
    return (*(*(v36 - 8) + 104))(v41, v35, v36);
  }

  if (v16 == *MEMORY[0x277D46898])
  {
    (*(v6 + 16))(v11, a1, v5);
    v22 = (*(v6 + 88))(v11, v5);
    if (v22 == *MEMORY[0x277D46558])
    {
      (*(v6 + 8))(v11, v5);
      if (qword_281499E38 != -1)
      {
        swift_once();
      }

      v23 = sub_2304A5B74();
      __swift_project_value_buffer(v23, qword_28149B008);
      v24 = sub_2304A5B54();
      v25 = sub_2304A5E74();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        MEMORY[0x23191A000](v26, -1, -1);
      }

      (*(v42 + 104))(v44, *MEMORY[0x277D468D0], v43);
      sub_2304A53E4();
      sub_2304A3E00(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
      swift_allocError();
      sub_2304A53D4();
      return swift_willThrow();
    }

    else
    {
      if (v22 == *MEMORY[0x277D46560])
      {
        goto LABEL_23;
      }

      if (qword_281499E38 != -1)
      {
        swift_once();
      }

      v37 = sub_2304A5B74();
      __swift_project_value_buffer(v37, qword_28149B008);
      v38 = sub_2304A5B54();
      v39 = sub_2304A5E74();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_230430000, v38, v39, "Unknown destination", v40, 2u);
        MEMORY[0x23191A000](v40, -1, -1);
      }

      (*(v42 + 104))(v44, *MEMORY[0x277D468D0], v43);
      sub_2304A53E4();
      sub_2304A3E00(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
      swift_allocError();
      sub_2304A53D4();
      swift_willThrow();
      return (*(v6 + 8))(v11, v5);
    }
  }

  else
  {
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v31 = sub_2304A5B74();
    __swift_project_value_buffer(v31, qword_28149B008);
    v32 = sub_2304A5B54();
    v33 = sub_2304A5E74();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_230430000, v32, v33, "Unknown publication method", v34, 2u);
      MEMORY[0x23191A000](v34, -1, -1);
    }

    (*(v42 + 104))(v44, *MEMORY[0x277D468D0], v43);
    sub_2304A53E4();
    sub_2304A3E00(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
    swift_allocError();
    sub_2304A53D4();
    swift_willThrow();
    return (*(v13 + 8))(v15, v12);
  }
}

void sub_23049BBDC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v54 = a1;
  v55[1] = *MEMORY[0x277D85DE8];
  v53 = sub_2304A3FC4();
  v5 = *(v53 - 8);
  v6 = MEMORY[0x28223BE20](v53);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v46 - v9;
  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v11 = sub_2304A5B74();
  v12 = __swift_project_value_buffer(v11, qword_28149B008);

  v52 = v12;
  v13 = sub_2304A5B54();
  v14 = sub_2304A5E74();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = v10;
    v16 = v8;
    v17 = swift_slowAlloc();
    v18 = v5;
    v19 = swift_slowAlloc();
    v55[0] = v19;
    *v17 = 136446210;
    *(v17 + 4) = sub_23046A5C8(a2, a3, v55);
    _os_log_impl(&dword_230430000, v13, v14, "%{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    v20 = v19;
    v5 = v18;
    MEMORY[0x23191A000](v20, -1, -1);
    v21 = v17;
    v8 = v16;
    v10 = v15;
    MEMORY[0x23191A000](v21, -1, -1);
  }

  v22 = v53;
  v23 = *(v54 + 16);
  if (v23)
  {
    v24 = objc_opt_self();
    v26 = *(v5 + 16);
    v25 = v5 + 16;
    v49 = v26;
    v50 = v24;
    v27 = v54 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
    v48 = *(v25 + 56);
    v54 = v25 - 8;
    *&v28 = 136446210;
    v46 = v28;
    v47 = v25;
    v51 = v10;
    do
    {
      v30 = v49;
      v49(v10, v27, v22);
      v30(v8, v10, v22);
      v31 = sub_2304A5B54();
      v32 = v8;
      v33 = sub_2304A5E74();
      if (os_log_type_enabled(v31, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v55[0] = v35;
        *v34 = v46;
        sub_2304A3E00(&qword_28149AC60, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v36 = sub_2304A62D4();
        v38 = v37;
        v39 = *v54;
        (*v54)(v32, v53);
        v40 = sub_23046A5C8(v36, v38, v55);
        v22 = v53;

        *(v34 + 4) = v40;
        _os_log_impl(&dword_230430000, v31, v33, "Removing URL: %{public}s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v35);
        MEMORY[0x23191A000](v35, -1, -1);
        MEMORY[0x23191A000](v34, -1, -1);
      }

      else
      {

        v39 = *v54;
        (*v54)(v32, v22);
      }

      v8 = v32;
      v41 = [v50 defaultManager];
      v10 = v51;
      v42 = sub_2304A3F54();
      v55[0] = 0;
      v43 = [v41 removeItemAtURL:v42 error:v55];

      if (v43)
      {
        v29 = v55[0];
      }

      else
      {
        v44 = v55[0];
        v45 = sub_2304A3F24();

        swift_willThrow();
      }

      v39(v10, v22);
      v27 += v48;
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_23049C0B0()
{
  v2 = sub_2304A49E4();
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = sub_2304A4084();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230497B9C();
  if (!v1)
  {
    v15[0] = sub_2304A4FA4();
    v15[1] = v12;
    sub_2304A4344();

    sub_2304A4044();
    v15[3] = v14;
    (*(v9 + 8))(v11, v8);
    sub_2304A49D4();
    sub_2304A49F4();
    sub_2304A3400(v7, v5, MEMORY[0x277D464E0]);
    sub_2304A4A04();
    swift_allocObject();
    v0 = sub_2304A49B4();

    sub_2304644B0(v7, MEMORY[0x277D464E0]);
  }

  return v0;
}

unint64_t sub_23049C2F4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54178, &qword_2304A7530);
    v2 = sub_2304A62A4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (v12 << 10) | (16 * v13);
        v15 = (*(a1 + 48) + v14);
        v17 = *v15;
        v16 = v15[1];
        v23 = *(*(a1 + 56) + v14);

        sub_230474E48(v23, *(&v23 + 1));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54838, &qword_2304A8068);
        swift_dynamicCast();
        sub_230464AA4(v24, v26);
        sub_230464AA4(v26, v27);
        sub_230464AA4(v27, &v25);
        result = sub_230469C40(v17, v16);
        if (v18)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 48 * v10);
          __swift_destroy_boxed_opaque_existential_0Tm(v11);
          result = sub_230464AA4(&v25, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v19 = (v2[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          result = sub_230464AA4(&v25, (v2[7] + 48 * result));
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_23049C564@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X8>)
{
  v43 = a3;
  v44 = a2;
  v45 = a1;
  v51 = *MEMORY[0x277D85DE8];
  v42 = sub_2304A3F34();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2304A3FC4();
  v48 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = v33 - v11;
  v12 = sub_2304A4084();
  v46 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281499E48 != -1)
  {
    swift_once();
  }

  v15 = sub_2304A5B74();
  __swift_project_value_buffer(v15, qword_28149B020);
  v16 = sub_2304A5B54();
  v17 = sub_2304A5E94();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = a4;
    v19 = v14;
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_230430000, v16, v17, "Ingesting file handle", v20, 2u);
    v21 = v20;
    v14 = v19;
    a4 = v18;
    MEMORY[0x23191A000](v21, -1, -1);
  }

  sub_2304A4074();
  sub_23048BD04(v10);
  if (!v4)
  {
    v38 = v12;
    v49 = 0x7364726F636572;
    v50 = 0xE700000000000000;
    v35 = *MEMORY[0x277CC91D8];
    v39 = a4;
    v23 = v40;
    v22 = v41;
    v34 = *(v40 + 13);
    v24 = v42;
    v34(v41);
    v33[1] = sub_2304645C4();
    sub_2304A3FB4();
    v33[0] = *(v23 + 1);
    (v33[0])(v22, v24);
    v36 = *(v48 + 8);
    v37 = v7;
    v48 += 8;
    v36(v10, v7);
    v40 = v14;
    v49 = sub_2304A4044();
    v50 = v25;
    (v34)(v22, v35, v24);
    v26 = v39;
    sub_2304A3FB4();
    (v33[0])(v22, v24);

    v27 = v45;
    if (v43)
    {
      sub_2304A5E44();
    }

    else
    {
      sub_2304A5E54();
    }

    v12 = v38;
    v28 = v37;
    v49 = 0;
    if ([v27 closeAndReturnError_])
    {
      v29 = v49;
      v36(v47, v28);
      return (*(v46 + 8))(v40, v12);
    }

    v31 = v49;
    sub_2304A3F24();

    swift_willThrow();
    v32 = v36;
    v36(v26, v28);
    v32(v47, v28);
    v14 = v40;
  }

  return (*(v46 + 8))(v14, v12);
}

uint64_t sub_23049CABC(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordChangeNotifier);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_5Tm(v3, v4);
  v6 = sub_2304A5284();
  v8 = v7;
  v9 = sub_2304A5264();
  (*(v5 + 8))(a2, MEMORY[0x277D84F90], v6, v8, v9, v10, v4, v5);
}

unint64_t sub_23049CBD8(const char *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v35 = a2;
  v4 = v2;
  v5 = sub_2304A46F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v9 = sub_2304A5B74();
  v10 = __swift_project_value_buffer(v9, qword_28149B008);

  v11 = sub_2304A5B54();
  v12 = sub_2304A5E74();

  v13 = os_log_type_enabled(v11, v12);
  v34 = v5;
  v33[0] = v10;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v36[0] = v15;
    *v14 = 136446466;
    v16 = sub_2304A5284();
    v18 = a1;
    v19 = sub_23046A5C8(v16, v17, v36);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    v20 = sub_2304A5214();
    v22 = sub_23046A5C8(v20, v21, v36);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_230430000, v11, v12, v18, v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23191A000](v15, -1, -1);
    MEMORY[0x23191A000](v14, -1, -1);
  }

  sub_2304A4984();
  sub_2304A5214();
  v33[1] = OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_clientDescriptor;
  sub_2304A5284();
  v23 = sub_2304A4974();

  v24 = *(v4 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore + 24);
  v25 = *(v4 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore + 32);
  __swift_project_boxed_opaque_existential_5Tm((v4 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore), v24);
  result = v35(v23, v24, v25);
  v27 = result;
  if (!(result >> 62))
  {
    v28 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_7;
    }

LABEL_14:
    __swift_project_boxed_opaque_existential_5Tm((v4 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_replicator), *(v4 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_replicator + 24));
    sub_2304A46E4();
    sub_2304A4284();
    (*(v6 + 8))(v8, v34);

    v31 = *(v4 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_notificationPoster + 32);
    __swift_project_boxed_opaque_existential_5Tm((v4 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_notificationPoster), *(v4 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_notificationPoster + 24));
    v32 = sub_2304A5264();
    (*(v31 + 8))(v32);
  }

  result = sub_2304A6044();
  v28 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v28 >= 1)
  {
    for (i = 0; i != v28; ++i)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x231919680](i, v27);
      }

      else
      {
        v30 = *(v27 + 8 * i + 32);
      }

      sub_23049D110(v30);
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_23049D110(uint64_t a1)
{
  v53[1] = *MEMORY[0x277D85DE8];
  v3 = sub_2304A3FC4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v49 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v39 - v7;
  v9 = (v1 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore);
  __swift_project_boxed_opaque_existential_5Tm((v1 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore), *(v1 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore + 24));
  v10 = sub_2304A5334();
  v11 = *(v10 + 16);
  if (v11)
  {
    v40 = v9;
    v41 = a1;
    v12 = objc_opt_self();
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v15 = *(v13 + 64);
    v39[1] = v10;
    v16 = v10 + ((v15 + 32) & ~v15);
    v51 = *(v13 + 56);
    v52 = v14;
    v50 = (v13 - 8);
    *&v17 = 136446210;
    v42 = v17;
    v18 = v49;
    v43 = v13;
    v47 = v8;
    v48 = v12;
    v14(v8, v16, v3);
    while (1)
    {
      v21 = [v12 defaultManager];
      v22 = sub_2304A3F54();
      v53[0] = 0;
      v23 = [v21 removeItemAtURL:v22 error:v53];

      if (v23)
      {
        v19 = *v50;
        v20 = v53[0];
        v19(v8, v3);
      }

      else
      {
        v24 = v53[0];
        v25 = sub_2304A3F24();

        swift_willThrow();
        if (qword_281499E38 != -1)
        {
          swift_once();
        }

        v26 = sub_2304A5B74();
        __swift_project_value_buffer(v26, qword_28149B008);
        v52(v18, v8, v3);
        v27 = sub_2304A5B54();
        v28 = sub_2304A5E74();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v46 = v25;
          v30 = v29;
          v45 = swift_slowAlloc();
          v53[0] = v45;
          *v30 = v42;
          sub_2304A3E00(&qword_28149AC60, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          v31 = sub_2304A62D4();
          v32 = v3;
          v34 = v33;
          v44 = *v50;
          v44(v49, v32);
          v35 = sub_23046A5C8(v31, v34, v53);
          v3 = v32;
          v18 = v49;

          *(v30 + 4) = v35;
          _os_log_impl(&dword_230430000, v27, v28, "Failed to delete URL: %{public}s", v30, 0xCu);
          v36 = v45;
          __swift_destroy_boxed_opaque_existential_0Tm(v45);
          MEMORY[0x23191A000](v36, -1, -1);
          MEMORY[0x23191A000](v30, -1, -1);

          v44(v47, v3);
          v8 = v47;
          v12 = v48;
        }

        else
        {

          v37 = *v50;
          (*v50)(v18, v3);
          v37(v8, v3);
          v12 = v48;
        }
      }

      v16 += v51;
      if (!--v11)
      {
        break;
      }

      v52(v8, v16, v3);
    }

    v9 = v40;
  }

  else
  {
  }

  __swift_project_boxed_opaque_existential_5Tm(v9, v9[3]);
  return sub_2304A5344();
}

uint64_t sub_23049D5C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v105 = a2;
  v5 = sub_2304A5C04();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2304A5C64();
  v95 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v94 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_2304A5134();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2304A46F4();
  v107 = *(v12 - 8);
  v108 = v12;
  MEMORY[0x28223BE20](v12);
  v104 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_2304A53C4();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2304A49E4();
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v114 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v118 = &v88 - v20;
  MEMORY[0x28223BE20](v19);
  v113 = &v88 - v21;
  v22 = sub_2304A4FD4();
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v117 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v88 - v25;
  v27 = sub_2304A4FF4();
  v28 = MEMORY[0x28223BE20](v27);
  v97 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v34 = &v88 - v31;
  v122 = MEMORY[0x277D84F90];
  v35 = *(a1 + 16);
  v96 = v5;
  if (!v35)
  {
    v90 = v8;
    v91 = v9;
    v92 = v6;
    v54 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v36 = v6;
  v119 = v35;
  v93 = v15;
  v89 = v3;
  v38 = *(v33 + 16);
  v37 = v33 + 16;
  v115 = (v37 - 8);
  v116 = v30;
  v39 = (*(v37 + 64) + 32) & ~*(v37 + 64);
  v40 = *(v37 + 56);
  v41 = v32;
  v111 = v38;
  v112 = v37;
  (v38)(&v88 - v31, v32 + v39);
  v100 = v34;
  sub_2304A4FE4();
  v42 = sub_2304A4FC4();
  sub_2304644B0(v26, MEMORY[0x277D46780]);
  if (v42)
  {
    v90 = v8;
    v91 = v9;
    v92 = v36;
    v88 = v41;
    v43 = v41 + v40 + v39;
    v44 = v100;
    v109 = v40;
    v110 = v26;
    while (1)
    {
      v45 = v117;
      sub_2304A4FE4();
      v46 = sub_2304A4084();
      v47 = *(v46 - 8);
      v48 = 1;
      if ((*(v47 + 48))(v45, 1, v46) != 1)
      {
        (*(v47 + 32))(v118, v117, v46);
        v48 = 0;
      }

      v49 = v118;
      (*(v47 + 56))(v118, v48, 1, v46);
      v50 = MEMORY[0x277D464E0];
      v51 = v113;
      sub_2304A3398(v49, v113, MEMORY[0x277D464E0]);
      sub_2304A4984();
      sub_2304A4FB4();
      sub_2304A4F84();
      sub_2304A4974();

      sub_2304A4FA4();
      sub_2304A3400(v51, v114, v50);
      sub_2304A4A04();
      swift_allocObject();
      sub_2304A49B4();
      sub_2304644B0(v51, MEMORY[0x277D464E0]);

      MEMORY[0x231919320](v52);
      if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2304A5DE4();
      }

      sub_2304A5DF4();

      v53 = v116;
      (*v115)(v44, v116);
      v54 = v122;
      v55 = v110;
      if (v119 == 1)
      {
        break;
      }

      --v119;
      v56 = v109;
      v111(v44, v43, v53);
      sub_2304A4FE4();
      v57 = sub_2304A4FC4();
      sub_2304644B0(v55, MEMORY[0x277D46780]);
      v43 += v56;
      if ((v57 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v32 = v88;
    v3 = v89;
LABEL_20:
    v73 = v32;
    if (v54 >> 62)
    {
      v74 = sub_2304A6044();
      if (!v74)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v74 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v74)
      {
        goto LABEL_29;
      }
    }

    if (v74 < 1)
    {
      __break(1u);
      goto LABEL_37;
    }

    for (i = 0; i != v74; ++i)
    {
      if ((v54 & 0xC000000000000001) != 0)
      {
        v76 = MEMORY[0x231919680](i, v54);
      }

      else
      {
        v76 = *(v54 + 8 * i + 32);
      }

      sub_23049D110(v76);
    }

LABEL_29:
    __swift_project_boxed_opaque_existential_5Tm((v3 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_replicator), *(v3 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_replicator + 24));
    v77 = v102;
    v78 = v101;
    v79 = v103;
    (*(v102 + 16))(v101, v105, v103);
    v80 = (*(v77 + 88))(v78, v79);
    if (v80 == *MEMORY[0x277D46828])
    {
      v81 = v104;
      sub_2304A46E4();
      goto LABEL_33;
    }

    v81 = v104;
    if (v80 == *MEMORY[0x277D46820])
    {
      sub_2304A46D4();
LABEL_33:
      v82 = v106;
      sub_2304A4284();
      (*(v107 + 8))(v81, v108);
      if (v82)
      {
      }

      v83 = swift_allocObject();
      *(v83 + 16) = v3;
      *(v83 + 24) = v73;
      aBlock[4] = sub_2304A3468;
      aBlock[5] = v83;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2304699EC;
      aBlock[3] = &block_descriptor_15;
      v84 = _Block_copy(aBlock);

      v85 = v94;
      sub_2304A5C34();
      v120 = MEMORY[0x277D84F90];
      sub_2304A3E00(&qword_281499DE8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB544D0, &qword_2304A7788);
      sub_2304A3E48(&qword_281499DC8, &unk_27DB544D0, &qword_2304A7788);
      v86 = v90;
      v87 = v96;
      sub_2304A5FA4();
      MEMORY[0x231919460](0, v85, v86, v84);
      _Block_release(v84);
      (*(v92 + 8))(v86, v87);
      (*(v95 + 8))(v85, v91);
    }

LABEL_37:
    result = sub_2304A6254();
    __break(1u);
    return result;
  }

  v53 = v116;
  v44 = v100;
LABEL_13:

  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v58 = sub_2304A5B74();
  __swift_project_value_buffer(v58, qword_28149B008);
  v59 = v97;
  v111(v97, v44, v53);
  v60 = sub_2304A5B54();
  v61 = sub_2304A5E74();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    aBlock[0] = v63;
    *v62 = 136446210;
    sub_2304A3E00(&qword_281499F78, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
    v64 = sub_2304A62D4();
    v65 = v59;
    v67 = v66;
    v68 = *v115;
    (*v115)(v65, v116);
    v69 = sub_23046A5C8(v64, v67, aBlock);

    *(v62 + 4) = v69;
    _os_log_impl(&dword_230430000, v60, v61, "Cannot mutate a remotely-owned record: %{public}s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v63);
    v70 = v63;
    v44 = v100;
    MEMORY[0x23191A000](v70, -1, -1);
    v71 = v62;
    v53 = v116;
    MEMORY[0x23191A000](v71, -1, -1);
  }

  else
  {

    v68 = *v115;
    (*v115)(v59, v53);
  }

  (*(v98 + 104))(v93, *MEMORY[0x277D468C0], v99);
  sub_2304A53E4();
  sub_2304A3E00(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
  swift_allocError();
  sub_2304A53D4();
  swift_willThrow();
  return (v68)(v44, v53);
}

uint64_t sub_23049E440(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordChangeNotifier);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_5Tm(v3, v4);
  v6 = sub_2304A5284();
  v8 = v7;
  v9 = sub_2304A5264();
  (*(v5 + 8))(MEMORY[0x277D84F90], a2, v6, v8, v9, v10, v4, v5);
}

uint64_t sub_23049E51C()
{
  v1 = OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_clientDescriptor;
  v2 = sub_2304A5294();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_zoneDescriptor;
  v4 = sub_2304A5224();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_notificationPoster));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordChangeNotifier));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_replicator));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClientDataSource(uint64_t a1)
{
  result = qword_28149AA58;
  if (!qword_28149AA58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23049E69C(uint64_t a1)
{
  result = sub_2304A5294();
  if (v2 <= 0x3F)
  {
    result = sub_2304A5224();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23049E784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v55 = a2;
  v56 = a3;
  v5 = sub_2304A43F4();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x28223BE20](v5);
  v52 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2304A53F4();
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v47 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FE0, &qword_2304A7430);
  MEMORY[0x28223BE20](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54820, &unk_2304A8030);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v45 - v13;
  v15 = sub_2304A4A64();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v46 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v45 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v45 - v22;
  v51 = v3;
  __swift_project_boxed_opaque_existential_5Tm((v3 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore), *(v3 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore + 24));
  sub_2304A5314();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_230464970(v14, &qword_27DB54820, &unk_2304A8030);
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v24 = sub_2304A5B74();
    __swift_project_value_buffer(v24, qword_28149B008);
    v25 = a1;

    v26 = sub_2304A5B54();
    v27 = sub_2304A5E74();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v57 = v25;
      v58 = v29;
      *v28 = 136446210;
      sub_2304A4A04();
      sub_2304A3E00(&qword_27DB54728, MEMORY[0x277D464E8], MEMORY[0x277D46500]);
      v30 = sub_2304A62D4();
      v32 = sub_23046A5C8(v30, v31, &v58);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_230430000, v26, v27, "Can't find record for ID: %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x23191A000](v29, -1, -1);
      MEMORY[0x23191A000](v28, -1, -1);
    }

    v33 = 1;
    v34 = v56;
    goto LABEL_14;
  }

  (*(v16 + 32))(v23, v14, v15);
  sub_2304A4A34();
  sub_2304A4A54();
  sub_2304A4A44();
  sub_2304A4A24();
  (*(v16 + 16))(v46, v21, v15);
  v35 = v48;
  sub_2304A5204();
  v37 = v49;
  v36 = v50;
  v38 = v47;
  (*(v49 + 16))(v47, v35, v50);
  v39 = (*(v37 + 88))(v38, v36);
  v40 = v37;
  if (v39 == *MEMORY[0x277D468F8])
  {
    v41 = MEMORY[0x277D463A0];
LABEL_13:
    (*(v40 + 8))(v35, v36);
    (*(v53 + 104))(v52, *v41, v54);
    v34 = v56;
    sub_2304A4744();
    v42 = *(v16 + 8);
    v42(v21, v15);
    v42(v23, v15);
    v33 = 0;
LABEL_14:
    v43 = sub_2304A4754();
    return (*(*(v43 - 8) + 56))(v34, v33, 1, v43);
  }

  if (v39 == *MEMORY[0x277D46908])
  {
    v41 = MEMORY[0x277D463A8];
    goto LABEL_13;
  }

  if (v39 == *MEMORY[0x277D468F0])
  {
    v41 = MEMORY[0x277D46398];
    goto LABEL_13;
  }

  result = sub_2304A6254();
  __break(1u);
  return result;
}

uint64_t sub_23049EE74(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  v65 = sub_2304A4A94();
  v64[6] = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v66 = v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2304A5C04();
  v88 = *(v4 - 8);
  v89 = v4;
  MEMORY[0x28223BE20](v4);
  v87 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2304A5C64();
  v85 = *(v6 - 8);
  v86 = v6;
  MEMORY[0x28223BE20](v6);
  v83 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_2304A4084();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v76 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_2304A4B84();
  v81 = *(v82 - 8);
  v9 = MEMORY[0x28223BE20](v82);
  v78 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v10;
  MEMORY[0x28223BE20](v9);
  v96 = v64 - v11;
  v12 = sub_2304A4FD4();
  MEMORY[0x28223BE20](v12 - 8);
  v72 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_2304A4FF4();
  v80 = *(v95 - 8);
  v14 = MEMORY[0x28223BE20](v95);
  v73 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v94 = v64 - v16;
  v17 = sub_2304A4A64();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v71 = v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v70 = v64 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v91 = v64 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = v64 - v25;
  v27 = sub_2304A3FC4();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FE0, &qword_2304A7430);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v69 = v64 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = v64 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = v64 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = v64 - v40;
  v67 = a1;
  sub_2304A4A74();
  sub_2304A4A44();
  v42 = *(v18 + 8);
  v92 = v18 + 8;
  v93 = v17;
  v43 = v17;
  v44 = v42;
  v42(v26, v43);
  v45 = (*(v28 + 48))(v39, 1, v27);
  v90 = v41;
  if (v45 == 1)
  {
    sub_230464970(v39, &qword_27DB53FE0, &qword_2304A7430);
    (*(v28 + 56))(v41, 1, 1, v27);
  }

  else
  {
    (*(v28 + 32))(v30, v39, v27);
    sub_230496544(v30, v36);
    (*(v28 + 8))(v30, v27);
    (*(v28 + 56))(v36, 0, 1, v27);
    v41 = v90;
    sub_230464ABC(v36, v90, &qword_27DB53FE0, &qword_2304A7430);
  }

  v46 = v70;
  sub_2304A4A74();
  sub_2304A4A34();
  v47 = v93;
  v44(v46, v93);
  v68 = v44;
  v48 = v71;
  sub_2304A4A74();
  sub_2304A4A54();
  v44(v48, v47);
  sub_230464B24(v41, v69, &qword_27DB53FE0, &qword_2304A7430);
  sub_2304A4A24();
  v49 = v84;
  __swift_project_boxed_opaque_existential_5Tm((v84 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore), *(v84 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore + 24));
  sub_2304A4A14();
  sub_2304A5354();

  sub_2304A4A14();
  sub_2304A49C4();

  sub_2304A4A14();
  sub_2304A49D4();

  sub_2304A4964();

  sub_2304A4A14();
  sub_2304A49D4();

  sub_2304A4954();

  v50 = v72;
  sub_2304A4684();
  (*(v74 + 56))(v50, 0, 1, v75);
  v51 = v94;
  sub_2304A4F94();
  v52 = v80;
  (*(v80 + 16))(v73, v51, v95);
  sub_2304A4A84();
  sub_2304A43D4();

  v53 = v96;
  sub_2304A4B74();
  v79 = *(v49 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_notificationQueue);
  v54 = v81;
  v55 = v78;
  v56 = v82;
  (*(v81 + 16))(v78, v53, v82);
  v57 = (*(v54 + 80) + 24) & ~*(v54 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = v49;
  (*(v54 + 32))(v58 + v57, v55, v56);
  aBlock[4] = sub_2304A32EC;
  aBlock[5] = v58;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2304699EC;
  aBlock[3] = &block_descriptor_9;
  v59 = _Block_copy(aBlock);

  v60 = v83;
  sub_2304A5C34();
  v97 = MEMORY[0x277D84F90];
  sub_2304A3E00(&qword_281499DE8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB544D0, &qword_2304A7788);
  sub_2304A3E48(&qword_281499DC8, &unk_27DB544D0, &qword_2304A7788);
  v61 = v87;
  v62 = v89;
  sub_2304A5FA4();
  MEMORY[0x231919460](0, v60, v61, v59);
  _Block_release(v59);
  (*(v88 + 8))(v61, v62);
  (*(v85 + 8))(v60, v86);
  (*(v54 + 8))(v96, v56);
  (*(v52 + 8))(v94, v95);
  v68(v91, v93);
  sub_230464970(v90, &qword_27DB53FE0, &qword_2304A7430);
}

uint64_t sub_23049FD40(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordChangeNotifier);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_5Tm(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F80, &qword_2304A73E0);
  v6 = sub_2304A4B84();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2304A7270;
  (*(v7 + 16))(v9 + v8, a2, v6);
  v10 = sub_2304A5284();
  v12 = v11;
  v13 = sub_2304A5264();
  (*(v5 + 8))(v9, MEMORY[0x277D84F90], v10, v12, v13, v14, v4, v5);
}

uint64_t sub_23049FED4(uint64_t a1)
{
  v3 = sub_2304A5C04();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v49 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2304A5C64();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x28223BE20](v5);
  v46 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2304A4FF4();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v41 = v9;
  v42 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v52 = &v39 - v10;
  v11 = sub_2304A49E4();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2304A4FD4();
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v39 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v39 - v21;
  v43 = v1;
  sub_23049D110(a1);
  sub_2304A49F4();
  v23 = sub_2304A4084();
  v24 = *(v23 - 8);
  v25 = 1;
  if ((*(v24 + 48))(v13, 1, v23) != 1)
  {
    (*(v24 + 32))(v20, v13, v23);
    v25 = 0;
  }

  (*(v24 + 56))(v20, v25, 1, v23);
  v26 = MEMORY[0x277D46780];
  sub_2304A3398(v20, v22, MEMORY[0x277D46780]);
  sub_2304A49C4();
  sub_2304A49D4();
  sub_2304A4964();
  v40 = v22;

  sub_2304A49D4();
  sub_2304A4954();

  sub_2304A3400(v22, v17, v26);
  v27 = v52;
  sub_2304A4F94();
  v28 = v43;
  v29 = v44;
  v30 = v42;
  v31 = v45;
  (*(v44 + 16))(v42, v27, v45);
  v32 = (*(v29 + 80) + 24) & ~*(v29 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v28;
  (*(v29 + 32))(v33 + v32, v30, v31);
  aBlock[4] = sub_2304A31F4;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2304699EC;
  aBlock[3] = &block_descriptor_7;
  v34 = _Block_copy(aBlock);

  v35 = v46;
  sub_2304A5C34();
  v53 = MEMORY[0x277D84F90];
  sub_2304A3E00(&qword_281499DE8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB544D0, &qword_2304A7788);
  sub_2304A3E48(&qword_281499DC8, &unk_27DB544D0, &qword_2304A7788);
  v36 = v49;
  v37 = v51;
  sub_2304A5FA4();
  MEMORY[0x231919460](0, v35, v36, v34);
  _Block_release(v34);
  (*(v50 + 8))(v36, v37);
  (*(v47 + 8))(v35, v48);
  (*(v29 + 8))(v52, v31);
  sub_2304644B0(v40, MEMORY[0x277D46780]);
}

uint64_t sub_2304A0504(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordChangeNotifier);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_5Tm(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54020, &unk_2304A8040);
  v6 = sub_2304A4FF4();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2304A7270;
  (*(v7 + 16))(v9 + v8, a2, v6);
  v10 = sub_2304A5284();
  v12 = v11;
  v13 = sub_2304A5264();
  (*(v5 + 8))(MEMORY[0x277D84F90], v9, v10, v12, v13, v14, v4, v5);
}

uint64_t sub_2304A0698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23 = a1;
  v24 = a2;
  v22 = a3;
  v4 = sub_2304A4BE4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = sub_2304A4434();
  v20 = *(v11 - 8);
  v21 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore;
  sub_2304A51E4();
  sub_2304A4BC4();
  v14 = *(v5 + 8);
  v14(v10, v4);
  sub_2304A51E4();
  sub_2304A4BD4();
  v14(v8, v4);
  v15 = sub_2304A4404();
  v16 = MEMORY[0x2319199F0](v15);
  sub_2304A08B8(v23, (v3 + v19), v24, v13, v22);
  objc_autoreleasePoolPop(v16);
  return (*(v20 + 8))(v13, v21);
}

uint64_t sub_2304A08B8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v252 = a4;
  v235 = a3;
  v228 = a5;
  v224 = sub_2304A4434();
  v214 = *(v224 - 8);
  MEMORY[0x28223BE20](v224);
  v223 = &v211 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54820, &unk_2304A8030);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v251 = &v211 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v222 = &v211 - v11;
  v230 = sub_2304A44F4();
  v213 = *(v230 - 8);
  MEMORY[0x28223BE20](v230);
  v229 = &v211 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_2304A46C4();
  v212 = *(v231 - 8);
  MEMORY[0x28223BE20](v231);
  v234 = &v211 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB53F00, &unk_2304A7B70);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v233 = &v211 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v245 = &v211 - v17;
  v18 = sub_2304A4084();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v232 = &v211 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v227 = &v211 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v220 = &v211 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v221 = &v211 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v219 = &v211 - v29;
  MEMORY[0x28223BE20](v28);
  v246 = &v211 - v30;
  v218 = sub_2304A45F4();
  v217 = *(v218 - 1);
  MEMORY[0x28223BE20](v218);
  *&v216 = &v211 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FE0, &qword_2304A7430);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v249 = &v211 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v211 - v35;
  v226 = sub_2304A3FC4();
  v239 = *(v226 - 1);
  v37 = MEMORY[0x28223BE20](v226);
  v244 = &v211 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v240 = &v211 - v39;
  v40 = sub_2304A4A64();
  v41 = *(v40 - 8);
  v42 = MEMORY[0x28223BE20](v40);
  v250 = &v211 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  *&v215 = &v211 - v45;
  MEMORY[0x28223BE20](v44);
  v243 = &v211 - v46;
  v47 = sub_2304A49E4();
  MEMORY[0x28223BE20](v47 - 8);
  v49 = (&v211 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2304A4384();
  sub_2304A49F4();

  v247 = v19;
  v50 = *(v19 + 48);
  v253 = v49;
  v236 = v18;
  LODWORD(v49) = v50(v49, 1, v18);
  v51 = a2[3];
  v225 = a2;
  __swift_project_boxed_opaque_existential_5Tm(a2, v51);
  v241 = a1;
  sub_2304A4384();
  v242 = v41;
  if (v49 != 1)
  {
    v67 = v41;
    v68 = v251;
    sub_2304A5314();

    if ((*(v67 + 48))(v68, 1, v40) == 1)
    {
      sub_230464970(v68, &qword_27DB54820, &unk_2304A8030);
      if (qword_281499E38 != -1)
      {
LABEL_85:
        swift_once();
      }

      v69 = sub_2304A5B74();
      __swift_project_value_buffer(v69, qword_28149B008);

      v70 = sub_2304A5B54();
      v71 = sub_2304A5E74();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v255 = v73;
        *v72 = 136446210;
        v254 = sub_2304A4384();
        sub_2304A4A04();
        sub_2304A3E00(&qword_27DB54728, MEMORY[0x277D464E8], MEMORY[0x277D46500]);
        v74 = sub_2304A62D4();
        v76 = v75;

        v77 = sub_23046A5C8(v74, v76, &v255);

        *(v72 + 4) = v77;
        _os_log_impl(&dword_230430000, v70, v71, "Remote record %{public}s is not compatible with local protocol version", v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v73);
        MEMORY[0x23191A000](v73, -1, -1);
        MEMORY[0x23191A000](v72, -1, -1);
      }

      goto LABEL_15;
    }

    v81 = v250;
    (*(v67 + 32))(v250, v68, v40);
    v82 = v249;
    sub_2304A4A44();
    v83 = v239;
    v84 = v226;
    if ((*(v239 + 48))(v82, 1, v226) == 1)
    {
      (*(v67 + 8))(v81, v40);
      sub_230464970(v82, &qword_27DB53FE0, &qword_2304A7430);
    }

    else
    {
      v176 = v244;
      (*(v83 + 32))(v244, v82, v84);
      v177 = [objc_opt_self() defaultManager];
      sub_2304A3F84();
      v178 = sub_2304A5D14();

      v179 = [v177 fileExistsAtPath_];

      if (!v179)
      {
        if (qword_281499E38 != -1)
        {
          swift_once();
        }

        v197 = sub_2304A5B74();
        __swift_project_value_buffer(v197, qword_28149B008);

        v198 = sub_2304A5B54();
        v199 = sub_2304A5E74();

        if (os_log_type_enabled(v198, v199))
        {
          v200 = v83;
          v201 = swift_slowAlloc();
          v202 = swift_slowAlloc();
          v255 = v202;
          *v201 = 136446210;
          v254 = sub_2304A4384();
          sub_2304A4A04();
          sub_2304A3E00(&qword_27DB54728, MEMORY[0x277D464E8], MEMORY[0x277D46500]);
          v203 = sub_2304A62D4();
          v205 = v204;

          v206 = sub_23046A5C8(v203, v205, &v255);

          *(v201 + 4) = v206;
          _os_log_impl(&dword_230430000, v198, v199, "Remote record %{public}s includes a file that does not exist", v201, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v202);
          MEMORY[0x23191A000](v202, -1, -1);
          MEMORY[0x23191A000](v201, -1, -1);

          (*(v200 + 8))(v244, v226);
        }

        else
        {

          (*(v83 + 8))(v176, v226);
        }

        (*(v242 + 8))(v250, v40);
LABEL_15:
        v78 = *MEMORY[0x277D46450];
        v79 = sub_2304A4764();
        (*(*(v79 - 8) + 104))(v228, v78, v79);
        return sub_2304644B0(v253, MEMORY[0x277D464E0]);
      }

      (*(v83 + 8))(v176, v84);
      (*(v242 + 8))(v250, v40);
    }

    sub_2304644B0(v253, MEMORY[0x277D464E0]);
LABEL_81:
    v208 = MEMORY[0x277D46460];
    goto LABEL_82;
  }

  v244 = v40;
  v52 = sub_2304A5324();

  v53 = v52;
  v251 = *(v52 + 16);
  if (!v251)
  {

    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v167 = sub_2304A5B74();
    __swift_project_value_buffer(v167, qword_28149B008);

    v168 = sub_2304A5B54();
    v169 = sub_2304A5E74();

    if (os_log_type_enabled(v168, v169))
    {
      v170 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      v255 = v171;
      *v170 = 136446210;
      v254 = sub_2304A4384();
      sub_2304A4A04();
      sub_2304A3E00(&qword_27DB54728, MEMORY[0x277D464E8], MEMORY[0x277D46500]);
      v172 = sub_2304A62D4();
      v174 = v173;

      v175 = sub_23046A5C8(v172, v174, &v255);

      *(v170 + 4) = v175;
      _os_log_impl(&dword_230430000, v168, v169, "Local record %{public}s has no data", v170, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v171);
      MEMORY[0x23191A000](v171, -1, -1);
      MEMORY[0x23191A000](v170, -1, -1);
    }

LABEL_78:
    v208 = MEMORY[0x277D46450];
LABEL_82:
    v209 = *v208;
    v210 = sub_2304A4764();
    return (*(*(v210 - 8) + 104))(v228, v209, v210);
  }

  v54 = 0;
  v56 = v242;
  v55 = v243;
  v249 = v53 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
  v250 = v36;
  v252 = v242 + 16;
  v57 = (v239 + 48);
  v237 = (v239 + 32);
  v238 = (v239 + 8);
  v58 = (v242 + 8);
  v59 = v244;
  v60 = v226;
  v239 = v242 + 8;
  v253 = v53;
  do
  {
    if (v54 >= v53[2])
    {
      __break(1u);
      goto LABEL_85;
    }

    v61 = *(v56 + 16);
    v61(v55, v249 + *(v56 + 72) * v54, v59);
    v62 = v250;
    sub_2304A4A44();
    if ((*v57)(v62, 1, v60) == 1)
    {
      (*v58)(v55, v59);
      sub_230464970(v62, &qword_27DB53FE0, &qword_2304A7430);
    }

    else
    {
      v63 = v240;
      (*v237)(v240, v62, v60);
      v64 = [objc_opt_self() defaultManager];
      sub_2304A3F84();
      v65 = sub_2304A5D14();

      v66 = [v64 fileExistsAtPath_];

      if (!v66)
      {

        v180 = v244;
        if (qword_281499E38 != -1)
        {
          swift_once();
        }

        v181 = sub_2304A5B74();
        __swift_project_value_buffer(v181, qword_28149B008);
        v182 = v215;
        v183 = v243;
        v61(v215, v243, v180);

        v184 = sub_2304A5B54();
        v185 = sub_2304A5E74();

        if (os_log_type_enabled(v184, v185))
        {
          v186 = swift_slowAlloc();
          v253 = swift_slowAlloc();
          v255 = v253;
          *v186 = 136446466;
          v254 = sub_2304A4384();
          sub_2304A4A04();
          sub_2304A3E00(&qword_27DB54728, MEMORY[0x277D464E8], MEMORY[0x277D46500]);
          v187 = sub_2304A62D4();
          v189 = v188;

          v190 = sub_23046A5C8(v187, v189, &v255);

          *(v186 + 4) = v190;
          *(v186 + 12) = 2050;
          v191 = sub_2304A4A34();
          v192 = *v239;
          (*v239)(v182, v180);
          *(v186 + 14) = v191;
          _os_log_impl(&dword_230430000, v184, v185, "Local record %{public}s references a file for protocol version %{public}llu that does not exist", v186, 0x16u);
          v193 = v253;
          __swift_destroy_boxed_opaque_existential_0Tm(v253);
          MEMORY[0x23191A000](v193, -1, -1);
          MEMORY[0x23191A000](v186, -1, -1);

          (*v238)(v240, v226);
          v192(v243, v180);
        }

        else
        {
          v207 = *v239;
          (*v239)(v182, v180);

          (*v238)(v240, v226);
          v207(v183, v180);
        }

        goto LABEL_78;
      }

      (*v238)(v63, v60);
      v58 = v239;
      v55 = v243;
      v59 = v244;
      (*v239)(v243, v244);
      v56 = v242;
    }

    ++v54;
    v53 = v253;
  }

  while (v251 != v54);
  v85 = v216;
  sub_2304A4364();
  v86 = v217;
  v87 = v218;
  v88 = (*(v217 + 88))(v85, v218);
  if (v88 == *MEMORY[0x277D463D8])
  {

    (*(v86 + 96))(v85, v87);
    v90 = *v85;
    v91 = *(*v85 + 16);
    if (v91)
    {
      v253 = *(v247 + 16);
      v92 = (*(v247 + 80) + 32) & ~*(v247 + 80);
      v211 = v90;
      v242 = v92;
      v93 = (v90 + v92);
      v250 = (v212 + 48);
      v238 = (v212 + 32);
      v94 = *(v247 + 72);
      v237 = (v213 + 8);
      v218 = (v214 + 8);
      v217 = v56 + 48;
      v226 = (v212 + 8);
      v95 = (v247 + 8);
      v247 += 16;
      v240 = (v247 + 16);
      v96 = MEMORY[0x277D84F90];
      *&v89 = 136446210;
      v216 = v89;
      *&v89 = 136446466;
      v215 = v89;
      v97 = v231;
      v98 = v236;
      v99 = v246;
      v249 = v94;
      v239 = v247 - 8;
      do
      {
        v251 = v93;
        v102 = (v253)(v99, v93, v98);
        MEMORY[0x28223BE20](v102);
        *(&v211 - 2) = v99;
        v103 = v245;
        v104 = v248;
        sub_23043725C(sub_2304A31D4, v235, v245);
        v248 = v104;
        v105 = v233;
        sub_230464B24(v103, v233, &unk_27DB53F00, &unk_2304A7B70);
        v106 = (*v250)(v105, 1, v97);
        v252 = v91;
        if (v106 == 1)
        {
          v107 = v96;
          sub_230464970(v105, &unk_27DB53F00, &unk_2304A7B70);
          if (qword_281499E38 != -1)
          {
            swift_once();
          }

          v108 = sub_2304A5B74();
          __swift_project_value_buffer(v108, qword_28149B008);

          v109 = sub_2304A5B54();
          v110 = sub_2304A5E74();

          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            v112 = swift_slowAlloc();
            v255 = v112;
            *v111 = v216;
            v254 = sub_2304A4384();
            sub_2304A4A04();
            sub_2304A3E00(&qword_27DB54728, MEMORY[0x277D464E8], MEMORY[0x277D46500]);
            v113 = sub_2304A62D4();
            v115 = v114;
            v116 = v231;

            v117 = sub_23046A5C8(v113, v115, &v255);

            *(v111 + 4) = v117;
            _os_log_impl(&dword_230430000, v109, v110, "Local record %{public}s has destination that does not exist", v111, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v112);
            MEMORY[0x23191A000](v112, -1, -1);
            v118 = v111;
            v98 = v236;
            MEMORY[0x23191A000](v118, -1, -1);
          }

          else
          {
            v116 = v97;
          }

          (v253)(v232, v246, v98);
          v96 = v107;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v142 = v252;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v96 = sub_23045A090(0, v107[2] + 1, 1, v107);
          }

          v95 = v239;
          v144 = v96[2];
          v143 = v96[3];
          if (v144 >= v143 >> 1)
          {
            v96 = sub_23045A090((v143 > 1), v144 + 1, 1, v96);
          }

          v97 = v116;
          sub_230464970(v245, &unk_27DB53F00, &unk_2304A7B70);
          v96[2] = v144 + 1;
          v100 = v249;
          (*v240)(v96 + v242 + v144 * v249, v232, v98);
        }

        else
        {
          v243 = v96;
          (*v238)(v234, v105, v97);
          v119 = v229;
          sub_2304A4674();
          v120 = sub_2304A44D4();
          (*v237)(v119, v230);
          sub_2304A4384();
          v121 = sub_2304A49D4();

          v122 = sub_230496480(v121, v120, MEMORY[0x277D464D8]);

          if (v122)
          {
            __swift_project_boxed_opaque_existential_5Tm(v225, v225[3]);
            sub_2304A4384();
            v123 = v223;
            sub_2304A4944();
            v124 = v222;
            sub_2304A5314();

            (*v218)(v123, v224);
            if ((*v217)(v124, 1, v244) == 1)
            {
              sub_230464970(v124, &qword_27DB54820, &unk_2304A8030);
              v98 = v236;
              if (qword_281499E38 != -1)
              {
                swift_once();
              }

              v125 = sub_2304A5B74();
              __swift_project_value_buffer(v125, qword_28149B008);
              v126 = v219;
              (v253)(v219, v246, v98);

              v127 = sub_2304A5B54();
              v128 = sub_2304A5E74();

              if (os_log_type_enabled(v127, v128))
              {
                v129 = swift_slowAlloc();
                v130 = swift_slowAlloc();
                v255 = v130;
                *v129 = v215;
                v254 = sub_2304A4384();
                sub_2304A4A04();
                sub_2304A3E00(&qword_27DB54728, MEMORY[0x277D464E8], MEMORY[0x277D46500]);
                v131 = sub_2304A62D4();
                v133 = v132;

                v134 = sub_23046A5C8(v131, v133, &v255);

                *(v129 + 4) = v134;
                *(v129 + 12) = 2082;
                sub_2304A3E00(&qword_27DB54610, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                v135 = v219;
                v136 = sub_2304A62D4();
                v138 = v137;
                (*v95)(v135, v236);
                v139 = sub_23046A5C8(v136, v138, &v255);

                *(v129 + 14) = v139;
                _os_log_impl(&dword_230430000, v127, v128, "Local record %{public}s has no data for relationship %{public}s", v129, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x23191A000](v130, -1, -1);
                v140 = v129;
                v98 = v236;
                MEMORY[0x23191A000](v140, -1, -1);
              }

              else
              {

                (*v95)(v126, v98);
              }

              v164 = v231;
              (v253)(v221, v246, v98);
              v96 = v243;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v96 = sub_23045A090(0, v96[2] + 1, 1, v96);
              }

              v166 = v96[2];
              v165 = v96[3];
              if (v166 >= v165 >> 1)
              {
                v96 = sub_23045A090((v165 > 1), v166 + 1, 1, v96);
              }

              v97 = v164;
              (*v226)(v234, v164);
              sub_230464970(v245, &unk_27DB53F00, &unk_2304A7B70);
              v96[2] = v166 + 1;
              v100 = v249;
              (*v240)(v96 + v242 + v166 * v249, v221, v98);
              v142 = v252;
            }

            else
            {

              v97 = v231;
              (*v226)(v234);
              sub_230464970(v245, &unk_27DB53F00, &unk_2304A7B70);
              sub_230464970(v124, &qword_27DB54820, &unk_2304A8030);
              v98 = v236;
              v142 = v252;
              v100 = v249;
              v96 = v243;
            }
          }

          else
          {
            v145 = v97;
            if (qword_281499E38 != -1)
            {
              swift_once();
            }

            v146 = sub_2304A5B74();
            __swift_project_value_buffer(v146, qword_28149B008);
            v147 = v220;
            v98 = v236;
            (v253)(v220, v246, v236);

            v148 = sub_2304A5B54();
            v149 = sub_2304A5E74();

            if (os_log_type_enabled(v148, v149))
            {
              v150 = swift_slowAlloc();
              v151 = swift_slowAlloc();
              v255 = v151;
              *v150 = v215;
              v254 = sub_2304A4384();
              sub_2304A4A04();
              sub_2304A3E00(&qword_27DB54728, MEMORY[0x277D464E8], MEMORY[0x277D46500]);
              v152 = sub_2304A62D4();
              v154 = v153;

              v155 = sub_23046A5C8(v152, v154, &v255);

              *(v150 + 4) = v155;
              *(v150 + 12) = 2082;
              sub_2304A3E00(&qword_27DB54610, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v156 = v220;
              v157 = sub_2304A62D4();
              v159 = v158;
              (*v95)(v156, v98);
              v160 = sub_23046A5C8(v157, v159, &v255);
              v145 = v231;

              *(v150 + 14) = v160;
              _os_log_impl(&dword_230430000, v148, v149, "Local record %{public}s is part of a zone that does not exist in relationship %{public}s", v150, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x23191A000](v151, -1, -1);
              MEMORY[0x23191A000](v150, -1, -1);
            }

            else
            {

              (*v95)(v147, v98);
            }

            (v253)(v227, v246, v98);
            v96 = v243;
            v161 = swift_isUniquelyReferenced_nonNull_native();
            v142 = v252;
            if ((v161 & 1) == 0)
            {
              v96 = sub_23045A090(0, v96[2] + 1, 1, v96);
            }

            v163 = v96[2];
            v162 = v96[3];
            if (v163 >= v162 >> 1)
            {
              v96 = sub_23045A090((v162 > 1), v163 + 1, 1, v96);
            }

            v97 = v145;
            (*v226)(v234, v145);
            sub_230464970(v245, &unk_27DB53F00, &unk_2304A7B70);
            v96[2] = v163 + 1;
            v100 = v249;
            (*v240)(v96 + v242 + v163 * v249, v227, v98);
          }
        }

        v101 = v251;
        v99 = v246;
        (*v95)(v246, v98);
        v93 = &v101[v100];
        v91 = v142 - 1;
      }

      while (v91);

      if (v96[2])
      {
        goto LABEL_71;
      }
    }

    else
    {

      v96 = MEMORY[0x277D84F90];
      if (*(MEMORY[0x277D84F90] + 16))
      {
LABEL_71:
        v194 = v228;
        *v228 = v96;
        v195 = *MEMORY[0x277D46458];
        v196 = sub_2304A4764();
        return (*(*(v196 - 8) + 104))(v194, v195, v196);
      }
    }

    goto LABEL_80;
  }

  if (v88 == *MEMORY[0x277D463E0])
  {
LABEL_80:

    goto LABEL_81;
  }

  result = sub_2304A62E4();
  __break(1u);
  return result;
}

uint64_t sub_2304A2AF8(uint64_t a1, uint64_t a2)
{
  v2 = sub_2304A4084();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2304A4684();
  v6 = sub_2304A4054();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_2304A2BE4(uint64_t a1)
{
  v3 = sub_2304A4A64();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2319199F0](v5);
  __swift_project_boxed_opaque_existential_5Tm((v1 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore), *(v1 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore + 24));
  v9 = sub_2304A5324();
  v10 = *(v9 + 16);
  if (v10)
  {
    v29 = v8;
    v30 = a1;
    v11 = 0;
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v12 = v14;
    v15 = *(v13 + 64);
    v28[1] = v9;
    v16 = v9 + ((v15 + 32) & ~v15);
    v17 = *(v13 + 56);
    v32 = (v13 - 8);
    while (1)
    {
      v12(v7, v16, v3);
      v18 = sub_2304A4A54();
      v20 = v19;
      (*v32)(v7, v3);
      v21 = v20;
      v22 = v20 >> 62;
      if ((v20 >> 62) > 1)
      {
        if (v22 == 2)
        {
          v25 = *(v18 + 16);
          v31 = *(v18 + 24);
          result = sub_2304617C4(v18, v21);
          v24 = v31 - v25;
          if (__OFSUB__(v31, v25))
          {
            goto LABEL_19;
          }
        }

        else
        {
          result = sub_2304617C4(v18, v20);
          v24 = 0;
        }
      }

      else if (v22)
      {
        result = sub_2304617C4(v18, v20);
        LODWORD(v24) = HIDWORD(v18) - v18;
        if (__OFSUB__(HIDWORD(v18), v18))
        {
          goto LABEL_20;
        }

        v24 = v24;
      }

      else
      {
        result = sub_2304617C4(v18, v20);
        v24 = BYTE6(v20);
      }

      v26 = __OFADD__(v11, v24);
      v11 += v24;
      if (v26)
      {
        break;
      }

      v16 += v17;
      if (!--v10)
      {

        v8 = v29;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {

LABEL_17:
    sub_2304A49C4();
    v27 = sub_2304A5D64();

    objc_autoreleasePoolPop(v8);
    return v27;
  }

  return result;
}

uint64_t sub_2304A2E30@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2304A5394();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2304A51F4();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D468A8])
  {
    v7 = MEMORY[0x277D463D0];
LABEL_5:
    v8 = *v7;
    v9 = sub_2304A45E4();
    return (*(*(v9 - 8) + 104))(a1, v8, v9);
  }

  if (v6 == *MEMORY[0x277D46898])
  {
    v7 = MEMORY[0x277D463C8];
    goto LABEL_5;
  }

  result = sub_2304A6254();
  __break(1u);
  return result;
}

uint64_t sub_2304A2FD8()
{
  v0 = sub_2304A4BE4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  sub_2304A51E4();
  sub_2304A4BC4();
  v7 = *(v1 + 8);
  v7(v6, v0);
  sub_2304A51E4();
  sub_2304A4BD4();
  v7(v4, v0);
  return sub_2304A4404();
}

uint64_t sub_2304A312C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_2304A51D4();
  v4 = sub_2304A4644();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x277D463F8];
  if ((v3 & 1) == 0)
  {
    v6 = MEMORY[0x277D46400];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t objectdestroyTm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_2304A3318(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_2304A3398(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2304A3400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2304A3470(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_230474E48(result, a2);
  }

  return result;
}

uint64_t sub_2304A3484(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v32 = a4;
  v33 = a5;
  v30 = a1;
  v31 = a2;
  v14 = sub_2304A5ED4();
  v28 = *(v14 - 8);
  v29 = v14;
  MEMORY[0x28223BE20](v14);
  v27 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2304A5EA4();
  MEMORY[0x28223BE20](v16);
  v17 = sub_2304A5C64();
  MEMORY[0x28223BE20](v17 - 8);
  v39 = a9;
  v40 = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v38);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_1, a3, a9);
  v36 = a8;
  v37 = a10;
  v19 = __swift_allocate_boxed_opaque_existential_1(&v35);
  (*(*(a8 - 8) + 32))(v19, a6, a8);
  type metadata accessor for ClientDataSource(0);
  v20 = swift_allocObject();
  v26 = OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_notificationQueue;
  sub_23047773C();
  sub_2304A5C44();
  v34 = MEMORY[0x277D84F90];
  sub_2304A3E00(&qword_281499D98, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54370, &qword_2304A7980);
  sub_2304A3E48(&qword_281499DB8, &qword_27DB54370, &qword_2304A7980);
  sub_2304A5FA4();
  (*(v28 + 104))(v27, *MEMORY[0x277D85260], v29);
  *(v20 + v26) = sub_2304A5F04();
  v21 = OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_clientDescriptor;
  v22 = sub_2304A5294();
  (*(*(v22 - 8) + 32))(v20 + v21, v30, v22);
  v23 = OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_zoneDescriptor;
  v24 = sub_2304A5224();
  (*(*(v24 - 8) + 32))(v20 + v23, v31, v24);
  sub_230433DAC(&v38, v20 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_replicator);
  sub_230433DAC(v32, v20 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore);
  sub_230433DAC(v33, v20 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_notificationPoster);
  sub_230433DAC(&v35, v20 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordChangeNotifier);
  return v20;
}

uint64_t *sub_2304A386C(uint64_t *isUniquelyReferenced_nonNull_native, unint64_t a2, void (*a3)(uint64_t, char *, unint64_t), uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v48 = a5;
  v49 = a6;
  v53 = a4;
  v54 = a3;
  v8 = sub_2304A53C4();
  v55 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = (&v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_2304A4FF4();
  v51 = *(v11 - 8);
  v52 = v11;
  MEMORY[0x28223BE20](v11);
  v50 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    goto LABEL_31;
  }

  v13 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    return isUniquelyReferenced_nonNull_native;
  }

LABEL_3:
  v46 = v8;
  v47 = v10;
  v8 = 0;
  v58 = a2 & 0xFFFFFFFFFFFFFF8;
  v59 = a2 & 0xC000000000000001;
  v56 = v13;
  v57 = a2;
  while (1)
  {
    if (v59)
    {
      v17 = MEMORY[0x231919680](v8, a2);
    }

    else
    {
      if (v8 >= *(v58 + 16))
      {
        goto LABEL_28;
      }

      v17 = *(a2 + 8 * v8 + 32);
    }

    v18 = v17;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      v13 = sub_2304A6044();
      if (!v13)
      {
        return isUniquelyReferenced_nonNull_native;
      }

      goto LABEL_3;
    }

    v19 = sub_2304A5A64();
    if (!v20)
    {
      v39 = isUniquelyReferenced_nonNull_native;
      v40 = *v48;
      v61 = 0;
      v62 = 0xE000000000000000;

      sub_2304A6104();
      v41 = "Cannot add a value to the store that contains corrupt extended attributes with no name: ";
LABEL_26:
      MEMORY[0x2319192E0](0xD000000000000058, (v41 - 32) | 0x8000000000000000);
      v42 = v50;
      sub_2304A5944();
      sub_2304A3E00(&qword_281499F78, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
      v43 = v52;
      v44 = sub_2304A62D4();
      MEMORY[0x2319192E0](v44);

      (*(v51 + 8))(v42, v43);
      v54(v40, v61, v62);

      (*(v55 + 104))(v47, *MEMORY[0x277D468D0], v46);
      sub_2304A53E4();
      sub_2304A3E00(&unk_281499F28, MEMORY[0x277D468E0], MEMORY[0x277D468E8]);
      swift_allocError();
      sub_2304A53D4();
      swift_willThrow();
      isUniquelyReferenced_nonNull_native = v39;

      return isUniquelyReferenced_nonNull_native;
    }

    v21 = v19;
    v22 = v20;
    v63 = v8 + 1;
    v23 = sub_2304A5A44();
    if (v24 >> 60 == 15)
    {
      v39 = isUniquelyReferenced_nonNull_native;

      v40 = *v48;
      v61 = 0;
      v62 = 0xE000000000000000;

      sub_2304A6104();
      v41 = "Cannot add a value to the store that contains corrupt extended attributes with no data: ";
      goto LABEL_26;
    }

    v25 = v23;
    v26 = v24;
    v60 = v18;
    v10 = isUniquelyReferenced_nonNull_native;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v10;
    v28 = sub_230469C40(v21, v22);
    v29 = v10[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_29;
    }

    a2 = v27;
    if (v10[3] < v31)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      isUniquelyReferenced_nonNull_native = v61;
      if (v27)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = &v61;
      sub_230472BC4();
      isUniquelyReferenced_nonNull_native = v61;
      if (a2)
      {
LABEL_4:
        v14 = (isUniquelyReferenced_nonNull_native[7] + 16 * v28);
        v15 = *v14;
        v16 = v14[1];
        *v14 = v25;
        v14[1] = v26;
        sub_2304617C4(v15, v16);

        goto LABEL_5;
      }
    }

LABEL_19:
    isUniquelyReferenced_nonNull_native[(v28 >> 6) + 8] |= 1 << v28;
    v34 = (isUniquelyReferenced_nonNull_native[6] + 16 * v28);
    *v34 = v21;
    v34[1] = v22;
    v35 = (isUniquelyReferenced_nonNull_native[7] + 16 * v28);
    *v35 = v25;
    v35[1] = v26;
    v36 = isUniquelyReferenced_nonNull_native[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_30;
    }

    isUniquelyReferenced_nonNull_native[2] = v38;

LABEL_5:
    ++v8;
    a2 = v57;
    if (v63 == v56)
    {
      return isUniquelyReferenced_nonNull_native;
    }
  }

  sub_230470D94(v31, isUniquelyReferenced_nonNull_native);
  v10 = v61;
  v32 = sub_230469C40(v21, v22);
  if ((a2 & 1) == (v33 & 1))
  {
    v28 = v32;
    isUniquelyReferenced_nonNull_native = v61;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  result = sub_2304A6314();
  __break(1u);
  return result;
}

uint64_t objectdestroy_11Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2304A3E00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2304A3E48(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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