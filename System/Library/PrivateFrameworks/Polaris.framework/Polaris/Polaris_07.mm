void sub_25EB03AD4()
{
  sub_25EB6E6B8();
  MEMORY[0x25F8C69B0](0xD000000000000030, 0x800000025EB8D7D0);
  MEMORY[0x25F8C69B0](0xD0000000000000CCLL, 0x800000025EB8D810);
  sub_25EB6E838();
  __break(1u);
}

void sub_25EB03B80()
{
  sub_25EB6E6B8();
  MEMORY[0x25F8C69B0](0xD00000000000002FLL, 0x800000025EB8D8E0);
  MEMORY[0x25F8C69B0](0xD0000000000000CCLL, 0x800000025EB8D810);
  sub_25EB6E838();
  __break(1u);
}

uint64_t sub_25EB03C2C(uint64_t a1)
{
  sub_25EB6E0E8();
  sub_25EB0D618(&qword_27FD11C58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_25EB6E238();
}

uint64_t sub_25EB03CC4(uint64_t a1)
{
  v4 = v1 + OBJC_IVAR____TtCC7Polaris12GraphManager22HashableEndpointServer_endpointServer;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtCC7Polaris12GraphManager22HashableEndpointServer_endpointServer));
  __swift_project_boxed_opaque_existential_1((v4 + 8), *(v4 + 32));
  v5 = sub_25EB6E148();
  os_unfair_lock_unlock(v4);
  if (v2)
  {
    sub_25EB6E6B8();
    MEMORY[0x25F8C69B0](0xD00000000000002FLL, 0x800000025EB8DB10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11C38, &qword_25EB789A8);
    sub_25EB6E748();
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = 2;
    sub_25EB0CA68();
    swift_willThrowTypedImpl();
  }

  return v5;
}

uint64_t GraphManager.HashableEndpointServer.deinit()
{
  v1 = OBJC_IVAR____TtCC7Polaris12GraphManager22HashableEndpointServer_id;
  v2 = sub_25EB6E0E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtCC7Polaris12GraphManager22HashableEndpointServer_endpointServer + 8));
  return v0;
}

uint64_t GraphManager.HashableEndpointServer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC7Polaris12GraphManager22HashableEndpointServer_id;
  v2 = sub_25EB6E0E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtCC7Polaris12GraphManager22HashableEndpointServer_endpointServer + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_25EB03F30()
{
  sub_25EB6EA28();
  sub_25EB6E0E8();
  sub_25EB0D618(&qword_27FD11C58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25EB6E238();
  return sub_25EB6EA58();
}

uint64_t sub_25EB03FCC()
{
  sub_25EB6EA28();
  sub_25EB6E0E8();
  sub_25EB0D618(&qword_27FD11C58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25EB6E238();
  return sub_25EB6EA58();
}

uint64_t sub_25EB0406C(uint64_t a1)
{
  sub_25EB6E0E8();
  sub_25EB0D618(&qword_27FD11C58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_25EB6E238();
}

uint64_t sub_25EB040F4(uint64_t a1)
{
  sub_25EB6EA28();
  sub_25EB6E0E8();
  sub_25EB0D618(&qword_27FD11C58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25EB6E238();
  return sub_25EB6EA58();
}

uint64_t sub_25EB041AC(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 24));
  sub_25EB04204((v1 + 32), a1, &v4);
  os_unfair_lock_unlock((v1 + 24));
  return v4;
}

uint64_t sub_25EB04204@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v49 = a3;
  v48 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v51 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v57 = &v47 - v5;
  v55 = sub_25EB6E138();
  v6 = *(v55 - 8);
  v7 = MEMORY[0x28223BE20](v55);
  v50 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - v9;
  v11 = *a1;
  v58 = MEMORY[0x277D84F90];
  v12 = v11 + 56;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 56);
  v16 = (v13 + 63) >> 6;
  v52 = v6 + 8;
  v53 = v6 + 16;
  v56 = v11;

  v18 = 0;
  v54 = v4;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_9:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = v55;
      (*(v6 + 16))(v10, *(v56 + 48) + *(v6 + 72) * (v20 | (v19 << 6)), v55);
      v22 = sub_25EB6E108();
      (*(v6 + 8))(v10, v21);
      result = sub_25EB0BB10(v22);
      v4 = v54;
      if (!v15)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v19 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v19);
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_9;
    }
  }

  v23 = v56;

  v47 = v58;
  v58 = MEMORY[0x277D84F90];
  v24 = 1 << *(v23 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v23 + 56);
  v27 = (v24 + 63) >> 6;

  v28 = 0;
  for (i = v50; v26; v4 = v54)
  {
    v30 = v28;
LABEL_19:
    v31 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v32 = v55;
    (*(v6 + 16))(i, *(v56 + 48) + *(v6 + 72) * (v31 | (v30 << 6)), v55);
    v33 = sub_25EB6E0F8();
    (*(v6 + 8))(i, v32);
    result = sub_25EB0BB10(v33);
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v27)
    {

      v34 = v58;
      v58 = v47;
      sub_25EB0B9D8(v34);
      v35 = v58;
      v55 = *(v48 + 16);
      if (v55)
      {
        v36 = 0;
        v37 = *(v51 + 16);
        v38 = (*(v51 + 80) + 32) & ~*(v51 + 80);
        v39 = v48 + v38;
        v40 = *(v51 + 72);
        v41 = v58 + v38;
        v42 = (v51 + 8);
        v43 = v57;
        v51 += 16;
        v53 = v48 + v38;
        v54 = v37;
        v56 = v58;
        while (2)
        {
          v37(v43, v39 + v40 * v36++, v4);
          v44 = *(v35 + 16) + 1;
          v45 = v41;
          do
          {
            if (!--v44)
            {
              (*v42)(v57, v4);
              v46 = 0;
              goto LABEL_29;
            }

            sub_25EAFD940(&qword_27FD11F30, MEMORY[0x277D3E7B8]);
            v45 += v40;
          }

          while ((sub_25EB6E248() & 1) == 0);
          v43 = v57;
          (*v42)(v57, v4);
          v37 = v54;
          v39 = v53;
          v35 = v56;
          if (v36 != v55)
          {
            continue;
          }

          break;
        }
      }

      v46 = 1;
LABEL_29:

      *v49 = v46;
      return result;
    }

    v26 = *(v12 + 8 * v30);
    ++v28;
    if (v26)
    {
      v28 = v30;
      goto LABEL_19;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_25EB046E0(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF8, &qword_25EB78988);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - v4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v35 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - v6;
  v7 = *(v1 + OBJC_IVAR____TtCC7Polaris12GraphManagerP33_8AAE28825E74C265BC34075E2BD49E3336GraphManagerExecutionSessionDelegate_graphManager);
  swift_unownedRetainStrong();
  if (!v7)
  {
    goto LABEL_36;
  }

  v39 = v5;
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  v8 = a1 & 0xFFFFFFFFFFFFFF8;

  sub_25EB6E998();
  sub_25EAFCC70(0, &qword_27FD11E08, 0x277D3E828);
  v9 = a1;
  if (!swift_dynamicCastMetatype())
  {
    v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = a1;
    if (v27)
    {
      v28 = v8 + 32;
      while (1)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          break;
        }

        v28 += 8;
        if (!--v27)
        {
          v9 = a1;
          goto LABEL_4;
        }
      }

      v9 = v8 | 1;
    }
  }

LABEL_4:
  while (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v33 = a1;
    v34 = v7;
    if (!v10)
    {
      goto LABEL_30;
    }

LABEL_6:
    v11 = 0;
    v37 = v9 & 0xFFFFFFFFFFFFFF8;
    v38 = v9 & 0xC000000000000001;
    v12 = (v35 + 48);
    v7 = MEMORY[0x277D84F90];
    v36 = (v35 + 32);
    while (1)
    {
      if (v38)
      {
        v13 = MEMORY[0x25F8C6D90](v11, v9);
      }

      else
      {
        if (v11 >= *(v37 + 16))
        {
          goto LABEL_27;
        }

        v13 = *(v9 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v16 = v9;
      v17 = [v13 resourceKey];
      v18 = sub_25EB6E268();
      v20 = v19;

      v21 = v18;
      v22 = v39;
      v23 = v20;
      a1 = v41;
      Key<>.init(_:)(v21, v23, v39);

      if ((*v12)(v22, 1, a1) == 1)
      {
        sub_25EB0D660(v22, &qword_27FD11BF8, &qword_25EB78988);
      }

      else
      {
        v24 = *v36;
        (*v36)(v40, v22, a1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_25EB062E0(0, v7[2] + 1, 1, v7);
        }

        v26 = v7[2];
        v25 = v7[3];
        if (v26 >= v25 >> 1)
        {
          v7 = sub_25EB062E0((v25 > 1), v26 + 1, 1, v7);
        }

        v7[2] = v26 + 1;
        v24(v7 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v26, v40, a1);
      }

      v9 = v16;
      ++v11;
      if (v15 == v10)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_25EAFCC70(0, &qword_27FD11E08, 0x277D3E828);

    v9 = sub_25EB6E848();
  }

  v10 = sub_25EB6E5F8();
  v33 = a1;
  v34 = v7;
  if (v10)
  {
    goto LABEL_6;
  }

LABEL_30:
  v7 = MEMORY[0x277D84F90];
LABEL_31:

  v1 = v34;
  (*(*v34 + 280))(v7);
  os_unfair_lock_lock(v1 + 6);
  sub_25EB04204(v1 + 4, v7, v42);

  os_unfair_lock_unlock(v1 + 6);
  if (v42[0] != 1)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    os_unfair_lock_unlock(v1 + 6);
    __break(1u);
    return;
  }

  v29 = v1[5];
  if (v29)
  {
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11E70, &qword_25EB78CB8);
    v31 = sub_25EB6E3C8();
    [v30 resourceRequestsAreComplete_];
  }

  else
  {
  }
}

void sub_25EB04C78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF8, &qword_25EB78988);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v56 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v49 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v59 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v49 - v11;
  v57 = swift_unownedRetainStrong();
  if (v57)
  {
    v12 = a1 + 56;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v60 = (v8 + 48);
    v55 = (v8 + 32);

    v17 = 0;
    v54 = MEMORY[0x277D84F90];
    while (1)
    {
      v18 = v17;
      if (!v15)
      {
        break;
      }

LABEL_9:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = (*(a1 + 48) + ((v17 << 10) | (16 * v19)));
      v21 = *v20;
      v22 = v20[1];

      Key<>.init(_:)(v21, v22, v6);
      if ((*v60)(v6, 1, v7) == 1)
      {
        sub_25EB0D660(v6, &qword_27FD11BF8, &qword_25EB78988);
      }

      else
      {
        v23 = *v55;
        (*v55)(v58, v6, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_25EB062E0(0, *(v54 + 2) + 1, 1, v54);
        }

        v25 = *(v54 + 2);
        v24 = *(v54 + 3);
        v26 = v25 + 1;
        if (v25 >= v24 >> 1)
        {
          v51 = v25 + 1;
          v28 = sub_25EB062E0((v24 > 1), v25 + 1, 1, v54);
          v26 = v51;
          v54 = v28;
        }

        v27 = v54;
        *(v54 + 2) = v26;
        v23(&v27[((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v25], v58, v7);
      }
    }

    while (1)
    {
      v17 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v17 >= v16)
      {
        break;
      }

      v15 = *(v12 + 8 * v17);
      ++v18;
      if (v15)
      {
        goto LABEL_9;
      }
    }

    (*(*v57 + 288))(v54);
    v58 = 0;

    v62 = MEMORY[0x277D84FA0];
    v29 = 1 << *(a1 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(a1 + 56);
    v32 = (v29 + 63) >> 6;
    v50 = (v8 + 8);
    v51 = v8 + 16;

    v33 = 0;
    v49 = xmmword_25EB78950;
    v6 = v7;
    v34 = v56;
    v52 = v8;
    v53 = a1;
    if (v31)
    {
      goto LABEL_21;
    }

LABEL_22:
    while (1)
    {
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v35 >= v32)
      {

        v46 = *(v57 + 40);
        if (v46)
        {
          v47 = v46;
          v48 = sub_25EB6E428();

          [v47 resourcesNoLongerWantedProcessed_];
        }

        else
        {
        }

        return;
      }

      v31 = *(v12 + 8 * v35);
      ++v33;
      if (v31)
      {
        while (1)
        {
          v36 = __clz(__rbit64(v31));
          v31 &= v31 - 1;
          v37 = *(a1 + 48) + ((v35 << 10) | (16 * v36));
          v38 = *v37;
          v39 = *(v37 + 8);
          swift_bridgeObjectRetain_n();
          Key<>.init(_:)(v38, v39, v34);
          if ((*v60)(v34, 1, v6) == 1)
          {

            sub_25EB0D660(v34, &qword_27FD11BF8, &qword_25EB78988);
            v33 = v35;
            if (!v31)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v54 = v38;
            v40 = v59;
            (*(v8 + 32))(v59, v34, v6);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD123C0, &qword_25EB78998);
            v41 = (*(v8 + 80) + 32) & ~*(v8 + 80);
            v42 = swift_allocObject();
            *(v42 + 16) = v49;
            (*(v8 + 16))(v42 + v41, v40, v6);
            v43 = v6;
            v6 = v57;
            os_unfair_lock_lock((v57 + 24));
            v44 = v58;
            sub_25EB04204(v6 + 4, v42, v61);
            v58 = v44;
            if (v44)
            {
              goto LABEL_38;
            }

            swift_setDeallocating();
            v45 = *v50;
            (*v50)(v42 + v41, v43);
            swift_deallocClassInstance();
            os_unfair_lock_unlock(v6 + 6);
            if (v61[0])
            {
              v45(v59, v43);
            }

            else
            {
              sub_25EB26244(v61, v54, v39);

              v45(v59, v43);
            }

            v33 = v35;
            v34 = v56;
            v6 = v43;
            v8 = v52;
            a1 = v53;
            if (!v31)
            {
              goto LABEL_22;
            }
          }

LABEL_21:
          v35 = v33;
        }
      }
    }

LABEL_36:
    __break(1u);
  }

  __break(1u);
LABEL_38:
  os_unfair_lock_unlock(v6 + 6);
  __break(1u);

  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_25EB05368(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC7Polaris12GraphManagerP33_8AAE28825E74C265BC34075E2BD49E3336GraphManagerExecutionSessionDelegate_graphManager);
  swift_unownedRetainStrong();
  if (v3)
  {
    sub_25EB0EDAC(v3 + 72, &v8, &qword_27FD11C40, &qword_25EB789B0);

    if (*(&v9 + 1))
    {
      sub_25EB0ED2C(&v8, v11);
      v4 = sub_25EB05464(a1);
      v5 = v12;
      v6 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      (*(v6 + 16))(v4, v5, v6);

      return __swift_destroy_boxed_opaque_existential_1Tm(v11);
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  return sub_25EB0D660(&v8, &qword_27FD11C40, &qword_25EB789B0);
}

uint64_t sub_25EB05464(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF8, &qword_25EB78988);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v42 = v10;
  v46 = v8;
  v36 = v1;
  v50 = MEMORY[0x277D84F90];
  sub_25EB2500C(0, v11, 0);
  v12 = v50;
  v13 = a1 + 56;
  result = sub_25EB6E568();
  v15 = result;
  v16 = 0;
  v44 = v7;
  v45 = (v7 + 48);
  v40 = a1 + 56;
  v41 = (v7 + 32);
  v37 = a1 + 64;
  v38 = v11;
  v39 = v5;
  v43 = a1;
  while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
  {
    v20 = v15 >> 6;
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
    {
      goto LABEL_23;
    }

    v21 = *(a1 + 36);
    v47 = v16;
    v48 = v21;
    v22 = (*(a1 + 48) + 16 * v15);
    v24 = *v22;
    v23 = v22[1];
    swift_bridgeObjectRetain_n();
    Key<>.init(_:)(v24, v23, v5);
    v25 = v46;
    result = (*v45)(v5, 1, v46);
    if (result == 1)
    {
      goto LABEL_27;
    }

    v26 = v42;
    v49 = *v41;
    v49(v42, v5, v25);

    v50 = v12;
    v28 = *(v12 + 16);
    v27 = *(v12 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_25EB2500C((v27 > 1), v28 + 1, 1);
      v12 = v50;
    }

    *(v12 + 16) = v28 + 1;
    result = (v49)(v12 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v28, v26, v25);
    a1 = v43;
    v17 = 1 << *(v43 + 32);
    if (v15 >= v17)
    {
      goto LABEL_24;
    }

    v13 = v40;
    v29 = *(v40 + 8 * v20);
    if ((v29 & (1 << v15)) == 0)
    {
      goto LABEL_25;
    }

    if (v48 != *(v43 + 36))
    {
      goto LABEL_26;
    }

    v30 = v29 & (-2 << (v15 & 0x3F));
    if (v30)
    {
      v17 = __clz(__rbit64(v30)) | v15 & 0x7FFFFFFFFFFFFFC0;
      v18 = v38;
      v19 = v47;
    }

    else
    {
      v31 = v20 << 6;
      v32 = v20 + 1;
      v18 = v38;
      v33 = (v37 + 8 * v20);
      while (v32 < (v17 + 63) >> 6)
      {
        v35 = *v33++;
        v34 = v35;
        v31 += 64;
        ++v32;
        if (v35)
        {
          result = sub_25EB0DE08(v15, v48, 0);
          v17 = __clz(__rbit64(v34)) + v31;
          goto LABEL_20;
        }
      }

      result = sub_25EB0DE08(v15, v48, 0);
LABEL_20:
      v19 = v47;
    }

    v16 = v19 + 1;
    v15 = v17;
    v5 = v39;
    if (v16 == v18)
    {
      return v12;
    }
  }

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
  __break(1u);
  return result;
}

uint64_t sub_25EB0582C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC7Polaris12GraphManagerP33_8AAE28825E74C265BC34075E2BD49E3336GraphManagerExecutionSessionDelegate_graphManager);
  swift_unownedRetainStrong();
  if (v3)
  {
    sub_25EB0EDAC(v3 + 72, &v8, &qword_27FD11C40, &qword_25EB789B0);

    if (*(&v9 + 1))
    {
      sub_25EB0ED2C(&v8, v11);
      v4 = sub_25EB05464(a1);
      v5 = v12;
      v6 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      (*(v6 + 24))(v4, v5, v6);

      return __swift_destroy_boxed_opaque_existential_1Tm(v11);
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  return sub_25EB0D660(&v8, &qword_27FD11C40, &qword_25EB789B0);
}

uint64_t sub_25EB05940(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = sub_25EB6E438();
  v7 = a1;
  a4(v6);
}

id sub_25EB059E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GraphManager.GraphManagerExecutionSessionDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_25EB05A70(uint64_t a1, SEL *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v32 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  sub_25EB0EDAC(v2 + 72, v30, &qword_27FD11C40, &qword_25EB789B0);
  v9 = v31;
  sub_25EB0D660(v30, &qword_27FD11C40, &qword_25EB789B0);
  if (v9)
  {
    v10 = *(v2 + 40);
    if (v10)
    {
      v25 = a2;
      v26 = v3;
      v11 = *(a1 + 16);
      v24 = v10;
      if (v11)
      {
        v12 = *(v32 + 16);
        v13 = a1 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
        v28 = *(v32 + 72);
        v29 = v12;
        v32 += 16;
        v27 = (v32 - 8);
        v14 = MEMORY[0x277D84F90];
        do
        {
          v29(v8, v13, v6);
          v15 = sub_25EB6E168();
          v17 = v16;
          (*v27)(v8, v6);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_25EB068B0(0, *(v14 + 2) + 1, 1, v14);
          }

          v19 = *(v14 + 2);
          v18 = *(v14 + 3);
          if (v19 >= v18 >> 1)
          {
            v14 = sub_25EB068B0((v18 > 1), v19 + 1, 1, v14);
          }

          *(v14 + 2) = v19 + 1;
          v20 = &v14[16 * v19];
          *(v20 + 4) = v15;
          *(v20 + 5) = v17;
          v13 += v28;
          --v11;
        }

        while (v11);
      }

      else
      {
        v14 = MEMORY[0x277D84F90];
      }

      sub_25EB0CDCC(v14);

      v22 = sub_25EB6E428();

      [v24 *v25];
    }
  }

  else
  {
    sub_25EB0CA68();
    swift_allocError();
    *v21 = xmmword_25EB78970;
    *(v21 + 16) = 4;
    swift_willThrow();
  }
}

void GraphManager.resourceAvailabilityHasChanged(forResources:to:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980) - 8);
    v8 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    do
    {
      sub_25EB6E168();
      v10 = objc_allocWithZone(PSExecutionSessionResourceAvailability);
      v11 = sub_25EB6E258();

      [v10 initWithResourceKey:v11 availability:a2];

      MEMORY[0x25F8C6A80]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25EB6E3F8();
      }

      sub_25EB6E418();
      v8 += v9;
      --v4;
    }

    while (v4);
    v2 = v13;
    v3 = v15;
  }

  v12 = v2[5];
  if (v12)
  {

    if (v3 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD11CC0, &qword_25EB789D0);
      sub_25EB6E848();
    }

    else
    {
      sub_25EB6E998();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD11CC0, &qword_25EB789D0);
    v14 = sub_25EB6E3C8();

    [v12 resourceAvailabilityHasChangedTo_];
  }

  else
  {
  }
}

void sub_25EB05FB8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v17 = a1;
    v2 = sub_25EB6E5F8();
    a1 = v17;
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  v3 = a1;
  sub_25EAFCC70(0, &qword_27FD11B58, 0x277CCABB0);
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v5 = v3;
    v6 = *(v1 + 40);
    v18 = v2;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x25F8C6D90](v4, v5);
      }

      else
      {
        v7 = *(v5 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = [objc_allocWithZone(MEMORY[0x277D3E6B8]) init];
      [v9 setType_];
      v10 = v8;
      sub_25EB6E2A8();
      v11 = sub_25EB6E258();

      [v9 setKey_];

      v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      [v9 setDefaultStride_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11CD0, &qword_25EB789D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25EB78950;
      *(inited + 32) = sub_25EB6E4F8();
      *(inited + 40) = [objc_allocWithZone(MEMORY[0x277D3E6C0]) initWithOffset_];
      sub_25EB0E264(inited, &qword_27FD11F20, &qword_25EB78D48, sub_25EAFD0D0);
      swift_setDeallocating();
      sub_25EB0D660(inited + 32, &qword_27FD11CD8, &qword_25EB789E0);
      sub_25EAFCC70(0, &qword_27FD11CE0, 0x277D3E6C0);
      sub_25EB0D6C0(&qword_27FD11CE8, &qword_27FD11B58, 0x277CCABB0);
      v14 = sub_25EB6E1F8();

      [v9 setSupportedStrides_];

      [v9 setOptions_];
      if (v6)
      {
        v15 = [v6 context];
        v16 = v9;
        [v15 addBuiltInResourceStream_];
      }

      ++v4;

      v5 = v3;
    }

    while (v18 != v4);
  }
}

void *sub_25EB062E0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD123C0, &qword_25EB78998);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_25EB064D0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11F90, &qword_25EB78DF0);
  v10 = *(sub_25EB6E138() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_25EB6E138() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_25EB066A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD11F40, &unk_25EB78DB0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_25EB067AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD124F0, &qword_25EB79650);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_25EB068B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11F28, &qword_25EB78D50);
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

void *sub_25EB069BC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11EF0, &qword_25EB78D28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11EF8, &unk_25EB78D30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25EB06AF0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD11BE0, &unk_25EB78940);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_25EB06B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_25EB6E358();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_25EB070E0(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_25EB6E6E8();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_25EB070E0(uint64_t a1, unint64_t a2)
{
  v2 = sub_25EB6E368();
  v6 = sub_25EB07160(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_25EB07160(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_25EB6E528();
    if (!v9 || (v10 = v9, v11 = sub_25EB06AF0(v9, 0), v12 = sub_25EB072B8(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_25EB6E2C8();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_25EB6E2C8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_25EB6E6E8();
LABEL_4:

  return sub_25EB6E2C8();
}

unint64_t sub_25EB072B8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_25EB074D8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_25EB6E338();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_25EB6E6E8();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_25EB074D8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_25EB6E318();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_25EB074D8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25EB6E348();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x25F8C69F0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_25EB07554(uint64_t a1, uint64_t a2)
{
  v61[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v55 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v47 - v9;
  MEMORY[0x28223BE20](v8);
  i = v47 - v11;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v61[0] = a1;
  v12 = *(a1 + 16);

  v49 = v12;
  if (!v12)
  {
    goto LABEL_29;
  }

  v13 = 0;
  v15 = *(v5 + 16);
  v14 = v5 + 16;
  v16 = *(v14 + 64);
  v51 = a1;
  v52 = a1 + ((v16 + 32) & ~v16);
  v58 = *(v14 + 56);
  v59 = v15;
  v56 = (a2 + 56);
  v57 = a2;
  v60 = v14;
  v17 = (v14 - 8);
  v48 = ((v14 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v53 = v13 + 1;
    v59(i, v52 + v58 * v13, v4);
    v50 = sub_25EAFD940(&qword_27FD11BD8, MEMORY[0x277D3E7B0]);
    v18 = sub_25EB6E228();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v56[v20 >> 6]) != 0)
    {
      break;
    }

    v25 = *v17;
LABEL_10:
    v25(i, v4);
    v13 = v53;
    if (v53 == v49)
    {
      goto LABEL_29;
    }
  }

  v23 = ~v19;
  while (1)
  {
    v59(v10, *(v57 + 48) + v20 * v58, v4);
    sub_25EAFD940(&qword_27FD11F30, MEMORY[0x277D3E7B8]);
    v24 = sub_25EB6E248();
    v25 = *v17;
    (*v17)(v10, v4);
    if (v24)
    {
      break;
    }

    v20 = (v20 + 1) & v23;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v56[v20 >> 6]) == 0)
    {
      a2 = v57;
      goto LABEL_10;
    }
  }

  v26 = v53;
  v61[1] = v53;
  v27 = (v25)(i, v4);
  v28 = v57;
  v29 = *(v57 + 32);
  v47[0] = ((1 << v29) + 63) >> 6;
  v30 = 8 * v47[0];
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_33;
  }

  while (2)
  {
    v47[1] = v47;
    MEMORY[0x28223BE20](v27);
    v20 = v47 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v20, v56, v31);
    v32 = *(v28 + 16);
    *(v20 + 8 * v21) &= ~v22;
    v48 = v20;
    v49 = (v32 - 1);
    v33 = *(v51 + 16);
    for (i = v33; ; v33 = i)
    {
      if (v26 == v33)
      {
        a2 = sub_25EB08984(v48, v47[0], v49, v28);
        goto LABEL_29;
      }

      if (v26 >= *(v51 + 16))
      {
        break;
      }

      v53 = v26;
      v59(v55, v52 + v26 * v58, v4);
      v35 = sub_25EB6E228();
      v36 = -1 << *(v28 + 32);
      v20 = v35 & ~v36;
      v22 = v20 >> 6;
      v21 = 1 << v20;
      if (((1 << v20) & v56[v20 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v59(v10, *(v57 + 48) + v20 * v58, v4);
      v37 = sub_25EB6E248();
      v25(v10, v4);
      if ((v37 & 1) == 0)
      {
        v38 = ~v36;
        while (1)
        {
          v20 = (v20 + 1) & v38;
          v22 = v20 >> 6;
          v21 = 1 << v20;
          if (((1 << v20) & v56[v20 >> 6]) == 0)
          {
            break;
          }

          v59(v10, *(v57 + 48) + v20 * v58, v4);
          v39 = sub_25EB6E248();
          v25(v10, v4);
          if (v39)
          {
            goto LABEL_24;
          }
        }

LABEL_15:
        v25(v55, v4);
        v28 = v57;
        v34 = v53;
        goto LABEL_16;
      }

LABEL_24:
      v25(v55, v4);
      v40 = v48[v22];
      v48[v22] = v40 & ~v21;
      v28 = v57;
      v34 = v53;
      if ((v40 & v21) != 0)
      {
        v41 = v49 - 1;
        if (__OFSUB__(v49, 1))
        {
          goto LABEL_32;
        }

        --v49;
        if (!v41)
        {

          a2 = MEMORY[0x277D84FA0];
          goto LABEL_29;
        }
      }

LABEL_16:
      v26 = v34 + 1;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    v43 = v30;

    v44 = v43;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v45 = v57;

      v28 = v45;
      v26 = v53;
      continue;
    }

    break;
  }

  v46 = swift_slowAlloc();
  memcpy(v46, v56, v44);
  a2 = sub_25EB08318(v46, v47[0], v57, v20, v61);

  MEMORY[0x25F8C9C00](v46, -1, -1);
LABEL_29:

  return a2;
}

uint64_t sub_25EB07BF8(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v83 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_25EB6E5B8();
    type metadata accessor for PSSGGraphID(0);
    sub_25EB0D618(&unk_27FD11DF0, type metadata accessor for PSSGGraphID, MEMORY[0x277D85378]);
    sub_25EB6E478();
    v5 = v78;
    v7 = v79;
    v8 = v80;
    v9 = v81;
    v10 = v82;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v73 = v5;
  v74 = v7;
  v75 = v8;
  v76 = v9;
  v64 = v8;
  v14 = (v8 + 64) >> 6;
  v70 = (v4 + 56);
  v77 = v10;
  v67 = v5;
  v68 = v14;
  v66 = v7;
  while (1)
  {
    if (v5 < 0)
    {
      v22 = sub_25EB6E638();
      if (!v22)
      {
        goto LABEL_65;
      }

      v71 = v22;
      type metadata accessor for PSSGGraphID(0);
      swift_dynamicCast();
      v20 = v72;
      v18 = v9;
      v2 = v10;
      if (!v72)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v15 = v10;
      v16 = v9;
      if (v10)
      {
LABEL_20:
        v2 = (v15 - 1) & v15;
        v20 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
        v21 = v20;
        v18 = v16;
      }

      else
      {
        if (v14 <= v9 + 1)
        {
          v17 = v9 + 1;
        }

        else
        {
          v17 = v14;
        }

        v18 = v17 - 1;
        v19 = v9;
        while (1)
        {
          v16 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_67;
          }

          if (v16 >= v14)
          {
            break;
          }

          v15 = *(v7 + 8 * v16);
          ++v19;
          if (v15)
          {
            goto LABEL_20;
          }
        }

        v20 = 0;
        v2 = 0;
      }

      v73 = v5;
      v74 = v7;
      v75 = v64;
      v76 = v18;
      v77 = v2;
      if (!v20)
      {
LABEL_65:
        v53 = v5;
        goto LABEL_63;
      }
    }

    v23 = v20;
    v24 = sub_25EB6E508();
    v25 = -1 << *(v4 + 32);
    v7 = v24 & ~v25;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v70[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v9 = v18;
    v10 = v2;
    v7 = v66;
    v5 = v67;
    v14 = v68;
  }

  v3 = ~v25;
  v26 = type metadata accessor for PSSGGraphID(0);
  v27 = *(*(v4 + 48) + 8 * v7);
  v69 = v26;
  while (1)
  {
    v28 = sub_25EB6E518();

    if (v28)
    {
      break;
    }

    v7 = (v7 + 1) & v3;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v70[v7 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(*(v4 + 48) + 8 * v7);
  }

  v30 = *(v4 + 32);
  v61 = ((1 << v30) + 63) >> 6;
  v6 = 8 * v61;
  v3 = v68;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v62 = &v60;
    MEMORY[0x28223BE20](v29);
    v32 = &v60 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v70, v31);
    v33 = *&v32[8 * v5] & ~v16;
    v34 = *(v4 + 16);
    v63 = v32;
    *&v32[8 * v5] = v33;
    v5 = v34 - 1;
    v36 = v66;
    v35 = v67;
LABEL_33:
    v65 = v5;
    while (v35 < 0)
    {
      v37 = sub_25EB6E638();
      if (!v37)
      {
        goto LABEL_61;
      }

      v71 = v37;
      swift_dynamicCast();
      v38 = v72;
      if (!v72)
      {
        goto LABEL_61;
      }

LABEL_50:
      v43 = sub_25EB6E508();
      v44 = v4;
      v45 = -1 << *(v4 + 32);
      v7 = v43 & ~v45;
      v46 = v7 >> 6;
      v47 = 1 << v7;
      if (((1 << v7) & v70[v7 >> 6]) != 0)
      {
        v48 = ~v45;
        while (1)
        {
          v49 = *(*(v44 + 48) + 8 * v7);
          v50 = sub_25EB6E518();

          if (v50)
          {
            break;
          }

          v7 = (v7 + 1) & v48;
          v46 = v7 >> 6;
          v47 = 1 << v7;
          if (((1 << v7) & v70[v7 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v3 = v68;

        v51 = v63[v46];
        v63[v46] = v51 & ~v47;
        v52 = (v51 & v47) == 0;
        v4 = v44;
        v36 = v66;
        v35 = v67;
        v5 = v65;
        if (!v52)
        {
          v5 = v65 - 1;
          if (__OFSUB__(v65, 1))
          {
            __break(1u);
          }

          if (v65 == 1)
          {

            v4 = MEMORY[0x277D84FA0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v4 = v44;
        v36 = v66;
        v35 = v67;
        v3 = v68;
        v5 = v65;
      }
    }

    if (v2)
    {
      v16 = v18;
LABEL_48:
      v41 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v38 = *(*(v35 + 48) + ((v16 << 9) | (8 * v41)));
      v42 = v38;
      v40 = v16;
LABEL_49:
      v73 = v35;
      v74 = v36;
      v75 = v64;
      v76 = v40;
      v18 = v40;
      v77 = v2;
      if (!v38)
      {
LABEL_61:
        v4 = sub_25EB08FDC(v63, v61, v5, v4, &unk_27FD123B0, qword_25EB78CA0);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v3 <= v18 + 1)
    {
      v39 = v18 + 1;
    }

    else
    {
      v39 = v3;
    }

    v40 = v39 - 1;
    while (1)
    {
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v16 >= v3)
      {
        v38 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v16);
      ++v18;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v55 = v6;

    v56 = v55;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v57 = swift_slowAlloc();
  memcpy(v57, v70, v56);
  sub_25EB086F0(v57, v61, v4, v7, &v73);
  v59 = v58;

  MEMORY[0x25F8C9C00](v57, -1, -1);
  v4 = v59;
LABEL_62:
  v53 = v73;
LABEL_63:
  sub_25EB0EC08(v53);
  return v4;
}

unint64_t sub_25EB08294(uint64_t a1, uint64_t a2)
{
  sub_25EB6E508();
  result = sub_25EB6E598();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_25EB08318(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v35 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v42 = &v35 - v15;
  result = MEMORY[0x28223BE20](v14);
  v48 = &v35 - v17;
  v18 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v36 = a1;
  v37 = v18 - 1;
  v19 = *a5;
  v20 = a5[1];
  v21 = *(*a5 + 16);
  if (v20 == v21)
  {
LABEL_2:

    return sub_25EB08984(v36, v35, v37, a3);
  }

  v40 = v10 + 32;
  v41 = v10;
  v43 = a3 + 56;
  v38 = a5;
  v46 = v10 + 16;
  v47 = (v10 + 8);
  while (v20 < v21)
  {
    v23 = *(v10 + 80);
    v45 = *(v10 + 72);
    v24 = v42;
    v44 = *(v10 + 16);
    v44(v42, v19 + ((v23 + 32) & ~v23) + v45 * v20, v9);
    a5[1] = v20 + 1;
    (*(v10 + 32))(v48, v24, v9);
    sub_25EAFD940(&qword_27FD11BD8, MEMORY[0x277D3E7B0]);
    v25 = sub_25EB6E228();
    v26 = -1 << *(a3 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    v29 = 1 << v27;
    if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
    {
      v22 = *v47;
LABEL_6:
      result = (v22)(v48, v9);
      goto LABEL_7;
    }

    v39 = v47 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30 = a3;
    v31 = ~v26;
    while (1)
    {
      v44(v13, *(v30 + 48) + v27 * v45, v9);
      sub_25EAFD940(&qword_27FD11F30, MEMORY[0x277D3E7B8]);
      v32 = sub_25EB6E248();
      v22 = *v47;
      (*v47)(v13, v9);
      if (v32)
      {
        break;
      }

      v27 = (v27 + 1) & v31;
      v28 = v27 >> 6;
      v29 = 1 << v27;
      if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
      {
        a3 = v30;
        a5 = v38;
        goto LABEL_6;
      }
    }

    result = (v22)(v48, v9);
    v33 = v36[v28];
    v36[v28] = v33 & ~v29;
    if ((v33 & v29) == 0)
    {
      a3 = v30;
      a5 = v38;
LABEL_7:
      v10 = v41;
      goto LABEL_8;
    }

    v34 = v37 - 1;
    v10 = v41;
    if (__OFSUB__(v37, 1))
    {
      goto LABEL_21;
    }

    a3 = v30;
    a5 = v38;
    --v37;
    if (!v34)
    {
      return MEMORY[0x277D84FA0];
    }

LABEL_8:
    v19 = *a5;
    v20 = a5[1];
    v21 = *(*a5 + 16);
    if (v20 == v21)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_25EB086F0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_25EB6E638())
          {
            goto LABEL_29;
          }

          type metadata accessor for PSSGGraphID(0);
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v5[3] = v15;
                v5[4] = 0;
                goto LABEL_29;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v5[3] = v11;
          v5[4] = v16;
          if (!v12)
          {
LABEL_29:

            sub_25EB08FDC(a1, a2, v30, a3, &unk_27FD123B0, qword_25EB78CA0);
            return;
          }
        }

        v18 = sub_25EB6E508();
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        type metadata accessor for PSSGGraphID(0);
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = sub_25EB6E518();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = sub_25EB6E518();

          if (v27)
          {
            goto LABEL_23;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_23:
      v5 = a5;

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_25EB08984(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - v9;
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD11FA0, &unk_25EB78E00);
  result = sub_25EB6E698();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_25EAFD940(&qword_27FD11BD8, MEMORY[0x277D3E7B0]);
    result = sub_25EB6E228();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_25EB08CA0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_25EB6E138();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11F38, &qword_25EB78DA8);
  result = sub_25EB6E698();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_25EB0D618(&unk_27FD11F50, MEMORY[0x277D3E738], MEMORY[0x277D3E740]);
    result = sub_25EB6E228();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_25EB08FDC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x277D84FA0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_25EB6E698();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_25EB6E508();
    v19 = -1 << *(v11 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v11 + 48) + 8 * v22) = v18;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_25EB091C8()
{
  v1 = v0;
  v2 = sub_25EB6E138();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11F38, &qword_25EB78DA8);
  v6 = *v0;
  v7 = sub_25EB6E668();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_25EB09400()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD11FA0, &unk_25EB78E00);
  v6 = *v0;
  v7 = sub_25EB6E668();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_25EB09640()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD12400, &unk_25EB79570);
  v2 = *v0;
  v3 = sub_25EB6E668();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25EB097B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD124A0, &qword_25EB78D40);
  v2 = *v0;
  v3 = sub_25EB6E668();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v21 = v18[2];
        v20 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v21;
        v22[3] = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_25EB09930(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_25EB6E668();
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

void *sub_25EB09A70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11F08, &qword_25EB795F0);
  v2 = *v0;
  v3 = sub_25EB6E668();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_25EB09BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25EB6E138();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_25EB0D618(&unk_27FD11F50, MEMORY[0x277D3E738], MEMORY[0x277D3E740]);
  v31 = a1;
  v10 = sub_25EB6E228();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_25EB0D618(&unk_27FD124E0, MEMORY[0x277D3E738], MEMORY[0x277D3E748]);
      v19 = sub_25EB6E248();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25EB091C8();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_25EB0A36C(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_25EB09E84(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_25EB6E648();

    if (v6)
    {
      v7 = sub_25EB0A204(v4, v5, sub_25EB26CA4, type metadata accessor for PSSGGraphID);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for PSSGGraphID(0);
  v10 = sub_25EB6E508();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_25EB6E518();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_25EB09930(&unk_27FD123B0, qword_25EB78CA0);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_25EB0A674(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_25EB0A044(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_25EB6E648();

    if (v6)
    {
      v7 = sub_25EB0A204(v4, v5, sub_25EB26C7C, type metadata accessor for PSSGResourceID);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for PSSGResourceID(0);
  v10 = sub_25EB6E508();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_25EB6E518();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_25EB09930(&qword_27FD11E00, &unk_25EB79550);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_25EB0A674(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_25EB0A204(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  v7 = v4;

  v8 = sub_25EB6E5F8();
  v9 = swift_unknownObjectRetain();
  v10 = a3(v9, v8);
  v19 = v10;

  v11 = sub_25EB6E508();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    a4(0);
    while (1)
    {
      v15 = *(*(v10 + 48) + 8 * v13);
      v16 = sub_25EB6E518();

      if (v16)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v17 = *(*(v10 + 48) + 8 * v13);
  sub_25EB0A674(v13);
  result = sub_25EB6E518();
  if (result)
  {
    *v7 = v19;
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25EB0A36C(int64_t a1)
{
  v3 = sub_25EB6E138();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_25EB6E578();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_25EB0D618(&unk_27FD11F50, MEMORY[0x277D3E738], MEMORY[0x277D3E740]);
        v24 = sub_25EB6E228();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_25EB0A674(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_25EB6E578();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_25EB6E508();

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

uint64_t sub_25EB0A814(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25EB0C4E8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_25EB6E958();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_25EB6E408();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_25EB0A948(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_25EB0A948(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_25EB0B088(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_25EB0AE94((*a3 + 4 * *v77), (*a3 + 4 * *v79), (*a3 + 4 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 4 * v17);
            *(v20 + 4 * v17) = *(v20 + 4 * v16);
            *(v20 + 4 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25EB066A8(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_25EB066A8((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_25EB0AE94((*a3 + 4 * *v70), (*a3 + 4 * *v72), (*a3 + 4 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 4 * v7 - 4;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 4 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 4;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_25EB0AE94(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 4)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 4;
    v5 -= 4;
    v18 = v14;
    do
    {
      v19 = v5 + 4;
      v21 = *(v18 - 4);
      v18 -= 4;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 4, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 4;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFFCLL])
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

uint64_t sub_25EB0B09C(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_25EB0B2F0((v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_25EB0B260(v11, v6, a2, a1);

    MEMORY[0x25F8C9C00](v11, -1, -1);
  }

  return v9;
}

void *sub_25EB0B260(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_25EB0B2F0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_25EB0B2F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a2;
  v66 = a1;
  v6 = sub_25EB6E138();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v75 = (v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v61 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v76 = (v61 - v14);
  result = MEMORY[0x28223BE20](v13);
  v65 = v61 - v16;
  v17 = *(a3 + 16);
  v18 = *(a4 + 16);
  v77 = v7 + 16;
  v73 = a4;
  v74 = a3;
  v69 = v7;
  if (v18 >= v17)
  {
    v42 = 0;
    v43 = *(a3 + 56);
    v64 = a3 + 56;
    v44 = 1 << *(a3 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & v43;
    v47 = (v44 + 63) >> 6;
    v72 = a4 + 56;
    v76 = (v7 + 8);
    j = v47;
    v68 = 0;
    if (v46)
    {
      goto LABEL_30;
    }

LABEL_31:
    v49 = v42;
    while (1)
    {
      v42 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v42 >= v47)
      {
LABEL_44:

        return sub_25EB08CA0(v66, v62, v68, a3);
      }

      v50 = *(v64 + 8 * v42);
      ++v49;
      if (v50)
      {
        v48 = __clz(__rbit64(v50));
        for (i = ((v50 - 1) & v50); ; i = ((v46 - 1) & v46))
        {
          v51 = v48 | (v42 << 6);
          v52 = *(a3 + 48);
          v53 = *(v7 + 72);
          v70 = v51;
          v54 = *(v7 + 16);
          v54(v75, v52 + v53 * v51, v6);
          sub_25EB0D618(&unk_27FD11F50, MEMORY[0x277D3E738], MEMORY[0x277D3E740]);
          v55 = sub_25EB6E228();
          v56 = -1 << *(a4 + 32);
          v57 = v55 & ~v56;
          if ((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
          {
            v65 = (v76 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v58 = ~v56;
            while (1)
            {
              v54(v12, *(v73 + 48) + v57 * v53, v6);
              sub_25EB0D618(&unk_27FD124E0, MEMORY[0x277D3E738], MEMORY[0x277D3E748]);
              v59 = sub_25EB6E248();
              v60 = *v76;
              (*v76)(v12, v6);
              if (v59)
              {
                break;
              }

              v57 = (v57 + 1) & v58;
              if (((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
              {
                a4 = v73;
                goto LABEL_42;
              }
            }

            result = (v60)(v75, v6);
            v7 = v69;
            *(v66 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
            v47 = j;
            v27 = __OFADD__(v68++, 1);
            a4 = v73;
            a3 = v74;
            v46 = i;
            if (v27)
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
            v60 = *v76;
LABEL_42:
            result = (v60)(v75, v6);
            a3 = v74;
            v7 = v69;
            v47 = j;
            v46 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v48 = __clz(__rbit64(v46));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v68 = 0;
    v19 = a4;
    v20 = 0;
    v22 = v19 + 56;
    v21 = *(v19 + 56);
    v61[0] = v22;
    v23 = 1 << *(v22 - 24);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & v21;
    v26 = (v23 + 63) >> 6;
    v63 = v7 + 32;
    v64 = v26;
    v70 = a3 + 56;
    v75 = (v7 + 8);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_10:
    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v20 >= v26)
      {
        goto LABEL_44;
      }

      v30 = *(v61[0] + 8 * v20);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        for (j = (v30 - 1) & v30; ; j = (v25 - 1) & v25)
        {
          v31 = *(v7 + 72);
          v32 = *(v73 + 48) + v31 * (v28 | (v20 << 6));
          v33 = v65;
          i = *(v7 + 16);
          v72 = v31;
          i(v65, v32, v6);
          (*(v7 + 32))(v76, v33, v6);
          sub_25EB0D618(&unk_27FD11F50, MEMORY[0x277D3E738], MEMORY[0x277D3E740]);
          v34 = sub_25EB6E228();
          v35 = -1 << *(a3 + 32);
          v36 = v34 & ~v35;
          v37 = v36 >> 6;
          v38 = 1 << v36;
          if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) != 0)
          {
            v61[1] = v75 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v39 = ~v35;
            while (1)
            {
              i(v12, *(v74 + 48) + v36 * v72, v6);
              sub_25EB0D618(&unk_27FD124E0, MEMORY[0x277D3E738], MEMORY[0x277D3E748]);
              v40 = sub_25EB6E248();
              v41 = *v75;
              (*v75)(v12, v6);
              if (v40)
              {
                break;
              }

              v36 = (v36 + 1) & v39;
              v37 = v36 >> 6;
              v38 = 1 << v36;
              if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) == 0)
              {
                a3 = v74;
                goto LABEL_21;
              }
            }

            result = (v41)(v76, v6);
            v25 = j;
            v66[v37] |= v38;
            v7 = v69;
            v27 = __OFADD__(v68++, 1);
            a3 = v74;
            v26 = v64;
            if (v27)
            {
              goto LABEL_48;
            }

            if (!v25)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v41 = *v75;
LABEL_21:
            result = (v41)(v76, v6);
            v7 = v69;
            v26 = v64;
            v25 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v28 = __clz(__rbit64(v25));
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

uint64_t sub_25EB0B9D8(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_25EB062E0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25EB0BB10(uint64_t a1)
{
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v4 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v78 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF8, &qword_25EB78988);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v59 - v9;
  result = MEMORY[0x28223BE20](v8);
  v14 = &v59 - v13;
  v15 = *(a1 + 16);
  v16 = *v1;
  v17 = *(*v1 + 2);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v76 = v12;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v10;
  if (!isUniquelyReferenced_nonNull_native || (v20 = *(v16 + 3) >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_25EB062E0(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = *(v16 + 3) >> 1;
  }

  v22 = *(v16 + 2);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  result = sub_25EB0C238(&v79, &v16[v18 + v17 * v22], v20 - v22, a1);
  if (result < v15)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v26 = *(v16 + 2);
    v27 = __OFADD__(v26, result);
    v28 = v26 + result;
    if (v27)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v16 + 2) = v28;
  }

  if (result != v23)
  {
    result = sub_25EB0EC08(v79);
LABEL_14:
    *v1 = v16;
    return result;
  }

LABEL_17:
  v74 = *(v16 + 2);
  v25 = v80;
  v65 = v79;
  v28 = v82;
  v24 = &v84;
  v60 = v81;
  v29 = v83;
  v63 = v80;
  if (v83)
  {
    v30 = v82;
LABEL_27:
    v72 = (v29 - 1) & v29;
    v34 = v77;
    (*(v2 + 16))(v14, *(v65 + 48) + (__clz(__rbit64(v29)) | (v30 << 6)) * v17, v77);
    v67 = *(v2 + 56);
    v67(v14, 0, 1, v34);
    v33 = v30;
    while (1)
    {
      v35 = v75;
      sub_25EB0EDAC(v14, v75, &qword_27FD11BF8, &qword_25EB78988);
      v36 = *(v2 + 48);
      v2 += 48;
      v71 = v36;
      if (v36(v35, 1, v34) == 1)
      {
        break;
      }

      v38 = (v4 + 32);
      v62 = (v60 + 64) >> 6;
      v66 = v4 + 56;
      v64 = (v4 + 16);
      v61 = (v4 + 8);
      v37 = v75;
      v73 = v38;
      while (1)
      {
        sub_25EB0D660(v37, &qword_27FD11BF8, &qword_25EB78988);
        v39 = *(v16 + 3);
        v40 = v39 >> 1;
        if ((v39 >> 1) < v74 + 1)
        {
          v16 = sub_25EB062E0((v39 > 1), v74 + 1, 1, v16);
          v40 = *(v16 + 3) >> 1;
        }

        v41 = v76;
        sub_25EB0EDAC(v14, v76, &qword_27FD11BF8, &qword_25EB78988);
        if (v71(v41, 1, v77) != 1)
        {
          break;
        }

        v42 = v33;
        v43 = v76;
        v4 = v74;
LABEL_38:
        v33 = v42;
        sub_25EB0D660(v43, &qword_27FD11BF8, &qword_25EB78988);
        v74 = v4;
LABEL_33:
        *(v16 + 2) = v4;
        v37 = v75;
        sub_25EB0EDAC(v14, v75, &qword_27FD11BF8, &qword_25EB78988);
        if (v71(v37, 1, v77) == 1)
        {
          goto LABEL_30;
        }
      }

      v69 = &v16[v18];
      v4 = v74;
      v44 = *v73;
      if (v74 <= v40)
      {
        v45 = v40;
      }

      else
      {
        v45 = v74;
      }

      v70 = v45;
      v43 = v76;
      v46 = v77;
      v47 = v78;
      v68 = v44;
      while (1)
      {
        v51 = v47;
        v52 = v43;
        v53 = v46;
        v54 = v44;
        v44(v51, v52, v46);
        if (v4 == v70)
        {
          (*v61)(v78, v53);
          v4 = v70;
          v74 = v70;
          goto LABEL_33;
        }

        sub_25EB0D660(v14, &qword_27FD11BF8, &qword_25EB78988);
        v74 = v4;
        v54(&v69[v4 * v17], v78, v53);
        v55 = v72;
        if (!v72)
        {
          break;
        }

        v56 = v33;
LABEL_55:
        v72 = (v55 - 1) & v55;
        v49 = v77;
        (*v64)(v14, *(v65 + 48) + (__clz(__rbit64(v55)) | (v56 << 6)) * v17, v77);
        v48 = 0;
        v58 = v56;
LABEL_44:
        v4 = v74 + 1;
        v67(v14, v48, 1, v49);
        v43 = v76;
        sub_25EB0EDAC(v14, v76, &qword_27FD11BF8, &qword_25EB78988);
        v50 = v71(v43, 1, v49);
        v46 = v49;
        v33 = v58;
        v42 = v58;
        v47 = v78;
        v44 = v68;
        if (v50 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v62 <= v33 + 1)
      {
        v57 = v33 + 1;
      }

      else
      {
        v57 = v62;
      }

      v58 = v57 - 1;
      while (1)
      {
        v56 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v56 >= v62)
        {
          v72 = 0;
          v48 = 1;
          v49 = v77;
          goto LABEL_44;
        }

        v55 = *(v63 + 8 * v56);
        ++v33;
        if (v55)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v34 = v77;
      v67 = *(v2 + 56);
      v67(v14, 1, 1, v77);
      v72 = 0;
    }

    v37 = v75;
LABEL_30:
    sub_25EB0D660(v14, &qword_27FD11BF8, &qword_25EB78988);
    sub_25EB0EC08(v65);
    result = sub_25EB0D660(v37, &qword_27FD11BF8, &qword_25EB78988);
    goto LABEL_14;
  }

LABEL_20:
  v31 = (*(v24 - 32) + 64) >> 6;
  if (v31 <= v28 + 1)
  {
    v32 = v28 + 1;
  }

  else
  {
    v32 = v31;
  }

  v33 = v32 - 1;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v31)
    {
      goto LABEL_57;
    }

    v29 = *(v25 + 8 * v30);
    ++v28;
    if (v29)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25EB0C238(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t _s7Polaris12GraphManagerC5ErrorO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v7 == 2)
      {
        v17 = *a1;
        if (v3 == v6 && v2 == v5)
        {
          sub_25EB0EE14(v17, v2, 2u);
          sub_25EB0EE14(v3, v2, 2u);
          sub_25EB0EE2C(v3, v2, 2u);
          v8 = v3;
          v9 = v2;
          v10 = 2;
          goto LABEL_41;
        }

        v13 = sub_25EB6E988();
        sub_25EB0EE14(v6, v5, 2u);
        sub_25EB0EE14(v3, v2, 2u);
        sub_25EB0EE2C(v3, v2, 2u);
        v14 = v6;
        v15 = v5;
        v16 = 2;
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    if (v4 == 3)
    {
      if (v7 == 3)
      {
        if (v3 == v6 && v2 == v5)
        {
          sub_25EB0EE14(*a1, v2, 3u);
          sub_25EB0EE14(v3, v2, 3u);
          sub_25EB0EE2C(v3, v2, 3u);
          v8 = v3;
          v9 = v2;
          v10 = 3;
LABEL_41:
          sub_25EB0EE2C(v8, v9, v10);
          return 1;
        }

        v13 = sub_25EB6E988();
        sub_25EB0EE14(v6, v5, 3u);
        sub_25EB0EE14(v3, v2, 3u);
        sub_25EB0EE2C(v3, v2, 3u);
        v14 = v6;
        v15 = v5;
        v16 = 3;
LABEL_38:
        sub_25EB0EE2C(v14, v15, v16);
        return v13 & 1;
      }

      goto LABEL_35;
    }

    if (v3 | v2)
    {
      if (v7 == 4 && v6 == 1 && !v5)
      {
        sub_25EB0EE2C(*a1, v2, 4u);
        v19 = 1;
        sub_25EB0EE2C(1, 0, 4u);
        return v19;
      }
    }

    else if (v7 == 4 && !(v5 | v6))
    {
      sub_25EB0EE2C(*a1, v2, 4u);
      v8 = 0;
      v9 = 0;
      v10 = 4;
      goto LABEL_41;
    }

    goto LABEL_35;
  }

  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v11 = *a1;
      if (v3 == v6 && v2 == v5)
      {
        sub_25EB0EE14(v11, v2, 0);
        sub_25EB0EE14(v3, v2, 0);
        sub_25EB0EE2C(v3, v2, 0);
        v8 = v3;
        v9 = v2;
        v10 = 0;
        goto LABEL_41;
      }

      v13 = sub_25EB6E988();
      sub_25EB0EE14(v6, v5, 0);
      sub_25EB0EE14(v3, v2, 0);
      sub_25EB0EE2C(v3, v2, 0);
      v14 = v6;
      v15 = v5;
      v16 = 0;
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (v7 != 1)
  {
LABEL_35:
    sub_25EB0EE14(*a2, a2[1], v7);
    sub_25EB0EE14(v3, v2, v4);
    sub_25EB0EE2C(v3, v2, v4);
    sub_25EB0EE2C(v6, v5, v7);
    return 0;
  }

  if (v3 != v6 || v2 != v5)
  {
    v13 = sub_25EB6E988();
    sub_25EB0EE14(v6, v5, 1u);
    sub_25EB0EE14(v3, v2, 1u);
    sub_25EB0EE2C(v3, v2, 1u);
    v14 = v6;
    v15 = v5;
    v16 = 1;
    goto LABEL_38;
  }

  v19 = 1;
  sub_25EB0EE14(*a1, v2, 1u);
  sub_25EB0EE14(v3, v2, 1u);
  sub_25EB0EE2C(v3, v2, 1u);
  sub_25EB0EE2C(v3, v2, 1u);
  return v19;
}

uint64_t sub_25EB0C8D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_25EAFD940(&qword_27FD11BD8, MEMORY[0x277D3E7B0]);
  result = MEMORY[0x25F8C6B20](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_25EB25F60(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

unint64_t sub_25EB0CA68()
{
  result = qword_27FD11C10;
  if (!qword_27FD11C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD11C10);
  }

  return result;
}

void sub_25EB0CADC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_25EB6E5F8())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11F98, &qword_25EB78DF8);
      v3 = sub_25EB6E698();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_25EB6E5F8();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x25F8C6D90](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_25EB6E508();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_25EAFCC70(0, &qword_27FD11C20, 0x277D3E698);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_25EB6E518();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_25EB6E508();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_25EAFCC70(0, &qword_27FD11C20, 0x277D3E698);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_25EB6E518();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_25EB0CDCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x25F8C6B20](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_25EB26244(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_25EB0CEAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_25EB0EC74();
  result = MEMORY[0x25F8C6B20](v2, &type metadata for PSSGResourceIDSwift, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);

      sub_25EB26618(&v10, v9, v8, v7, v6);

      v5 += 4;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t (*sub_25EB0CFB4(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(id *, uint64_t (*)(void))))(uint64_t)
{
  v9 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a2(0); ; i = v20(0))
  {
    v12 = i;
    v13 = sub_25EB0D618(a3, a4, MEMORY[0x277D85378]);
    result = MEMORY[0x25F8C6B20](v10, v12, v13);
    v22 = result;
    if (v9)
    {
      break;
    }

    a3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a3)
    {
      return result;
    }

LABEL_7:
    v15 = 0;
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x25F8C6D90](v15, a1);
      }

      else
      {
        if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * v15 + 32);
      }

      a2 = v16;
      v17 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      a4 = &v22;
      a5(&v21, v16);

      ++v15;
      if (v17 == a3)
      {
        return v22;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v18 = a2;
    v19 = sub_25EB6E5F8();
    v20 = v18;
    v10 = v19;
  }

  a4 = result;
  a3 = sub_25EB6E5F8();
  result = a4;
  if (a3)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_25EB0D11C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_25EB0EC20();
  result = MEMORY[0x25F8C6B20](v2, &type metadata for PSSGGraphIDSwift, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);

      sub_25EB26AA4(&v10, v9, v8, v7, v6);

      v5 += 4;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

unint64_t sub_25EB0D1DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD11F80, &unk_25EB78DE0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD123E0, &unk_25EB79560);
    v7 = sub_25EB6E898();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25EB0EDAC(v9, v5, &unk_27FD11F80, &unk_25EB78DE0);
      result = sub_25EAFD040(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_25EB6E138();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_25EB0D408(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v14 = sub_25EB6E898();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_25EB0EDAC(v16, v12, a2, v27);
      result = sub_25EAFD040(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
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

uint64_t sub_25EB0D618(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25EB0D660(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25EB0D6C0(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_25EAFCC70(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for GraphManager.HashableEndpointServer(uint64_t a1)
{
  result = qword_27FD11D08;
  if (!qword_27FD11D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25EB0D7A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_25EB0D7F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_25EB0D844@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_25EB0DB64()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD11CF8, &qword_25EB78B30);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t get_enum_tag_for_layout_string_7Polaris12GraphManagerC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25EB0DBC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25EB0DC0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_25EB0DC50(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_25EB0DC80(uint64_t a1)
{
  result = sub_25EB6E0E8();
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

uint64_t sub_25EB0DD78()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11D18, &unk_25EB78C40);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_25EB0DE08(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_25EB0DE14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11EC8, &unk_25EB78D00);
    v3 = sub_25EB6E898();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v10 = *(i - 2);
      v9 = *(i - 1);
      v11 = *i;

      result = sub_25EAFCB44(v5, v6, v7, v8);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 32 * result);
      *v14 = v5;
      v14[1] = v6;
      v14[2] = v7;
      v14[3] = v8;
      v15 = (v3[7] + 24 * result);
      *v15 = v10;
      v15[1] = v9;
      v15[2] = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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

unint64_t sub_25EB0DF60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11EC0, &qword_25EB78CF8);
    v3 = sub_25EB6E898();
    v21 = v3 + 64;
    v23 = v3;

    for (i = (a1 + 48); ; i += 9)
    {
      v22 = v1;
      v5 = *(i - 2);
      v6 = *(i - 1);
      v8 = *i;
      v7 = i[1];
      v10 = i[2];
      v9 = i[3];
      v11 = i[4];
      v12 = i[5];
      v13 = i[6];

      sub_25EB0E880(v10, v9, v11, v12);

      result = sub_25EAFCA88(v5, v6, v8, v7);
      if (v15)
      {
        break;
      }

      *(v21 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v16 = (v23[6] + 32 * result);
      *v16 = v5;
      v16[1] = v6;
      v16[2] = v8;
      v16[3] = v7;
      v17 = (v23[7] + 40 * result);
      *v17 = v10;
      v17[1] = v9;
      v17[2] = v11;
      v17[3] = v12;
      v17[4] = v13;
      v18 = v23[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v23[2] = v20;
      v1 = v22 - 1;
      if (v22 == 1)
      {

        return v23;
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

unint64_t sub_25EB0E0E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD11EE0, &qword_25EB78D18);
    v3 = sub_25EB6E898();
    v4 = a1 + 32;

    while (1)
    {
      sub_25EB0EDAC(v4, &v13, &qword_27FD120E0, &qword_25EB78D20);
      v5 = v13;
      v6 = v14;
      result = sub_25EAFCBE4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25EB0EC10(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_25EB0E264(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_25EB6E898();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);
      v11 = v9;
      result = a4(v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v11;
      v14 = v7[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v7[2] = v16;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_25EB0E35C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD121C0, &qword_25EB78CF0);
    v3 = sub_25EB6E898();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_25EAFCBE4(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25EB0E484(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11EA8, &unk_25EB78CE0);
    v3 = sub_25EB6E898();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_25EAFD1BC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_25EB0E590(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_25EB6E898();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *i;
      v8 = *(i - 1);

      result = sub_25EAFD168(v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v8;
      *(v5[7] + 8 * result) = v7;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
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

unint64_t sub_25EB0E680(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11E88, &qword_25EB78CC8);
    v3 = sub_25EB6E898();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v11 = *i;
      v5 = *(i - 1);

      result = sub_25EAFD168(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_25EB0E794(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11E80, &qword_25EB78CC0);
    v3 = sub_25EB6E898();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_25EAFD168(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

void sub_25EB0E880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_25EB0E8EC(unint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a3;
    v10 = a2;
    v11 = sub_25EB6E5F8();
    a2 = v10;
    a3 = v9;
    if (v11)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v6 = sub_25EB6E698();
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = sub_25EB6E5F8();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = MEMORY[0x277D84FA0];
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v12 = v6 + 56;
  v44 = v8;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v13 = 0;
    v41 = v4;
    while (1)
    {
      v14 = MEMORY[0x25F8C6D90](v13, v4);
      v15 = __OFADD__(v13++, 1);
      if (v15)
      {
        break;
      }

      v16 = v14;
      v17 = sub_25EB6E508();
      v18 = -1 << *(v6 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = *(v12 + 8 * (v19 >> 6));
      v22 = 1 << v19;
      if (((1 << v19) & v21) != 0)
      {
        v23 = ~v18;
        a4(0);
        while (1)
        {
          v24 = *(*(v6 + 48) + 8 * v19);
          v25 = sub_25EB6E518();

          if (v25)
          {
            break;
          }

          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = *(v12 + 8 * (v19 >> 6));
          v22 = 1 << v19;
          if (((1 << v19) & v21) == 0)
          {
            v8 = v44;
            v4 = v41;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v44;
        v4 = v41;
        if (v13 == v44)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v12 + 8 * v20) = v22 | v21;
        *(*(v6 + 48) + 8 * v19) = v16;
        v26 = *(v6 + 16);
        v15 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v15)
        {
          goto LABEL_32;
        }

        *(v6 + 16) = v27;
        if (v13 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v28 = 0;
    v42 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v28 != v42)
    {
      v29 = *(v4 + 32 + 8 * v28);
      v30 = sub_25EB6E508();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = *(v12 + 8 * (v32 >> 6));
      v35 = 1 << v32;
      if (((1 << v32) & v34) != 0)
      {
        v36 = ~v31;
        a4(0);
        while (1)
        {
          v37 = *(*(v6 + 48) + 8 * v32);
          v38 = sub_25EB6E518();

          if (v38)
          {
            break;
          }

          v32 = (v32 + 1) & v36;
          v33 = v32 >> 6;
          v34 = *(v12 + 8 * (v32 >> 6));
          v35 = 1 << v32;
          if (((1 << v32) & v34) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v12 + 8 * v33) = v35 | v34;
        *(*(v6 + 48) + 8 * v32) = v29;
        v39 = *(v6 + 16);
        v15 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v15)
        {
          goto LABEL_34;
        }

        *(v6 + 16) = v40;
      }

      if (++v28 == v44)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

_OWORD *sub_25EB0EC10(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_25EB0EC20()
{
  result = qword_27FD11F00;
  if (!qword_27FD11F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD11F00);
  }

  return result;
}

unint64_t sub_25EB0EC74()
{
  result = qword_27FD11F10;
  if (!qword_27FD11F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD11F10);
  }

  return result;
}

uint64_t sub_25EB0ECC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25EB0ED2C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_25EB0ED5C@<X0>(_DWORD *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  result = sub_25EB6E188();
  *a1 = v3;
  return result;
}

uint64_t sub_25EB0EDAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25EB0EE14(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_25EB0EE2C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

void *sub_25EB0EE68(void *a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t (*a4)(uint64_t))
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v6 = a1;
    v7 = sub_25EB6E7E8();

    if (v7)
    {
      a4(v8);
      swift_dynamicCast();
      return v14;
    }
  }

  else if (*(a2 + 16))
  {
    v10 = a3(a1);
    if (v11)
    {
      v12 = *(*(a2 + 56) + 8 * v10);
      v13 = v12;
      return v12;
    }
  }

  return 0;
}

uint64_t sub_25EB0EF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_25EAFCBE4(a1, a2);
  if (v3)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25EB0EF7C(void *a1, uint64_t a2, void (*a3)(void))
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = a1;
    v5 = sub_25EB6E648();
  }

  else if (*(a2 + 16) && (a3(0), v6 = sub_25EB6E508(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v8);
      v5 = sub_25EB6E518();

      if (v5)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_25EB0F088(uint64_t a1)
{
  v2 = sub_25EB6E138();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v23 - v8;
  result = MEMORY[0x28223BE20](v7);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v16 = *(a1 + 56);
  v15 = a1 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v6, v12, v2);
      sub_25EB25C78(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25EB0F298(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_25EB26244(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_25EB0F39C(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(id *))
{
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_25EB6E5B8();
    a2(0);
    sub_25EB24DC0(a3, 255, a4, MEMORY[0x277D85378]);
    sub_25EB6E478();
    v6 = v23[1];
    v10 = v23[2];
    v11 = v23[3];
    v12 = v23[4];
    v13 = v23[5];
  }

  else
  {
    v12 = 0;
    v14 = -1 << *(a1 + 32);
    v10 = (a1 + 56);
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = (v16 & *(a1 + 56));
  }

  v17 = (v11 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (!v13)
    {
      break;
    }

LABEL_12:
    v21 = (v19 - 1) & v19;
    if (!*(*(v6 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19))))))
    {
LABEL_18:
      sub_25EB0EC08(v6);
      return;
    }

    while (1)
    {
      a5(v23);

      v12 = v20;
      v13 = v21;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_25EB6E638())
      {
        a2(0);
        swift_dynamicCast();
        v20 = v12;
        v21 = v13;
        if (v23[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v20 = (v18 + 1);
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_18;
    }

    v19 = v10[v20];
    ++v18;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_25EB0F5A4(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v27 = MEMORY[0x277D84F90];
    sub_25EB6E718();
    v4 = v1 + 56;
    result = sub_25EB6E568();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v21 = v1 + 64;
    v22 = v1;
    v23 = v2;
    v24 = v7;
    v25 = v1 + 56;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v26 = v6;
      if (*(*(v1 + 48) + 32 * v5 + 24))
      {
        v10 = objc_allocWithZone(PSSGResourceID);

        v11 = sub_25EB6E258();
        v12 = sub_25EB6E258();
        [v10 initLocalWithName:v11 session:v12];

        v1 = v22;
      }

      else
      {
        v13 = objc_allocWithZone(PSSGResourceID);

        v12 = sub_25EB6E258();
        [v13 initGlobalWithName_];
      }

      sub_25EB6E6F8();
      sub_25EB6E728();
      sub_25EB6E738();
      result = sub_25EB6E708();
      v8 = 1 << *(v1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_26;
      }

      v4 = v25;
      v14 = *(v25 + 8 * v9);
      if ((v14 & (1 << v5)) == 0)
      {
        goto LABEL_27;
      }

      v7 = v24;
      if (v24 != *(v1 + 36))
      {
        goto LABEL_28;
      }

      v15 = v14 & (-2 << (v5 & 0x3F));
      if (v15)
      {
        v8 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v9 << 6;
        v17 = v9 + 1;
        v18 = (v21 + 8 * v9);
        while (v17 < (v8 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            result = sub_25EB0DE08(v5, v24, 0);
            v8 = __clz(__rbit64(v19)) + v16;
            goto LABEL_4;
          }
        }

        result = sub_25EB0DE08(v5, v24, 0);
      }

LABEL_4:
      v6 = v26 + 1;
      v5 = v8;
      if (v26 + 1 == v23)
      {
        return v27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

void sub_25EB0F894(uint64_t a1)
{
  v1 = a1;
  v38 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_25EB6E5F8();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v46 = MEMORY[0x277D84F90];
    sub_25EB2502C(0, v2 & ~(v2 >> 63), 0);
    v41 = v46;
    if (v38)
    {
      v3 = sub_25EB6E5A8();
    }

    else
    {
      v3 = sub_25EB6E568();
      v4 = *(v1 + 36);
    }

    v43 = v3;
    v44 = v4;
    v45 = v38 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v35 = v1 + 56;
      v34 = v1 + 64;
      v36 = v2;
      v37 = v1;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_38;
        }

        v8 = v43;
        v9 = v45;
        v39 = v44;
        sub_25EB2EF50(v43, v44, v45, v1, type metadata accessor for PSSGResourceID);
        v11 = v10;
        v12 = [v10 name];
        v13 = sub_25EB6E268();
        v40 = v14;

        v15 = [v11 session];
        if (v15)
        {
          v16 = v15;
          v17 = sub_25EB6E268();
          v19 = v18;
        }

        else
        {

          v17 = 0;
          v19 = 0;
        }

        v20 = v41;
        v46 = v41;
        v22 = *(v41 + 16);
        v21 = *(v41 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_25EB2502C((v21 > 1), v22 + 1, 1);
          v20 = v46;
        }

        *(v20 + 16) = v22 + 1;
        v23 = (v20 + 32 * v22);
        v23[4] = v13;
        v23[5] = v40;
        v23[6] = v17;
        v23[7] = v19;
        v41 = v20;
        if (v38)
        {
          v1 = v37;
          if (!v9)
          {
            goto LABEL_43;
          }

          if (sub_25EB6E5C8())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v36;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD124A8, &qword_25EB79620);
          v6 = sub_25EB6E468();
          sub_25EB6E658();
          v6(v42, 0);
          if (v5 == v36)
          {
LABEL_35:
            sub_25EB0DE08(v43, v44, v45);
            return;
          }
        }

        else
        {
          v1 = v37;
          if (v9)
          {
            goto LABEL_44;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          v24 = 1 << *(v37 + 32);
          if (v8 >= v24)
          {
            goto LABEL_39;
          }

          v25 = v8 >> 6;
          v26 = *(v35 + 8 * (v8 >> 6));
          if (((v26 >> v8) & 1) == 0)
          {
            goto LABEL_40;
          }

          if (*(v37 + 36) != v39)
          {
            goto LABEL_41;
          }

          v27 = v26 & (-2 << (v8 & 0x3F));
          if (v27)
          {
            v24 = __clz(__rbit64(v27)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v36;
          }

          else
          {
            v28 = v25 << 6;
            v29 = v25 + 1;
            v30 = (v34 + 8 * v25);
            v2 = v36;
            while (v29 < (v24 + 63) >> 6)
            {
              v32 = *v30++;
              v31 = v32;
              v28 += 64;
              ++v29;
              if (v32)
              {
                sub_25EB0DE08(v8, v39, 0);
                v24 = __clz(__rbit64(v31)) + v28;
                goto LABEL_34;
              }
            }

            sub_25EB0DE08(v8, v39, 0);
          }

LABEL_34:
          v33 = *(v37 + 36);
          v43 = v24;
          v44 = v33;
          v45 = 0;
          if (v5 == v2)
          {
            goto LABEL_35;
          }
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }
}

uint64_t sub_25EB0FC54(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v25 = MEMORY[0x277D84F90];
    sub_25EB6E718();
    v4 = v1 + 56;
    result = sub_25EB6E568();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v20 = v1 + 64;
    v21 = v7;
    v22 = v2;
    v23 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v24 = v6;
      v10 = objc_allocWithZone(PSSGGraphID);

      v11 = sub_25EB6E258();
      v12 = sub_25EB6E258();
      [v10 initWithName:v11 session:v12];

      sub_25EB6E6F8();
      sub_25EB6E728();
      v1 = v23;
      sub_25EB6E738();
      result = sub_25EB6E708();
      v8 = 1 << *(v23 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v13 = *(v4 + 8 * v9);
      if ((v13 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      v7 = v21;
      if (v21 != *(v23 + 36))
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (v5 & 0x3F));
      if (v14)
      {
        v8 = __clz(__rbit64(v14)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v9 << 6;
        v16 = v9 + 1;
        v17 = (v20 + 8 * v9);
        while (v16 < (v8 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = sub_25EB0DE08(v5, v21, 0);
            v8 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        result = sub_25EB0DE08(v5, v21, 0);
      }

LABEL_4:
      v6 = v24 + 1;
      v5 = v8;
      if (v24 + 1 == v22)
      {
        return v25;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_25EB0FEF0(uint64_t a1)
{
  v1 = a1;
  v37 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_25EB6E5F8();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v45 = MEMORY[0x277D84F90];
    sub_25EB2506C(0, v2 & ~(v2 >> 63), 0);
    v40 = v45;
    if (v37)
    {
      v3 = sub_25EB6E5A8();
    }

    else
    {
      v3 = sub_25EB6E568();
      v4 = *(v1 + 36);
    }

    v42 = v3;
    v43 = v4;
    v44 = v37 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v34 = v1 + 56;
      v33 = v1 + 64;
      v35 = v2;
      v36 = v1;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v42;
        v9 = v44;
        v38 = v43;
        sub_25EB2EF50(v42, v43, v44, v1, type metadata accessor for PSSGGraphID);
        v11 = v10;
        v12 = [v10 name];
        v13 = sub_25EB6E268();
        v39 = v14;

        v15 = [v11 session];
        v16 = sub_25EB6E268();
        v18 = v17;

        v19 = v40;
        v45 = v40;
        v21 = *(v40 + 16);
        v20 = *(v40 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_25EB2506C((v20 > 1), v21 + 1, 1);
          v19 = v45;
        }

        *(v19 + 16) = v21 + 1;
        v22 = (v19 + 32 * v21);
        v22[4] = v13;
        v22[5] = v39;
        v22[6] = v16;
        v22[7] = v18;
        v40 = v19;
        if (v37)
        {
          v1 = v36;
          if (!v9)
          {
            goto LABEL_40;
          }

          if (sub_25EB6E5C8())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v35;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12480, &qword_25EB795F8);
          v6 = sub_25EB6E468();
          sub_25EB6E658();
          v6(v41, 0);
          if (v5 == v35)
          {
LABEL_32:
            sub_25EB0DE08(v42, v43, v44);
            return;
          }
        }

        else
        {
          v1 = v36;
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v23 = 1 << *(v36 + 32);
          if (v8 >= v23)
          {
            goto LABEL_36;
          }

          v24 = v8 >> 6;
          v25 = *(v34 + 8 * (v8 >> 6));
          if (((v25 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v36 + 36) != v38)
          {
            goto LABEL_38;
          }

          v26 = v25 & (-2 << (v8 & 0x3F));
          if (v26)
          {
            v23 = __clz(__rbit64(v26)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v35;
          }

          else
          {
            v27 = v24 << 6;
            v28 = v24 + 1;
            v29 = (v33 + 8 * v24);
            v2 = v35;
            while (v28 < (v23 + 63) >> 6)
            {
              v31 = *v29++;
              v30 = v31;
              v27 += 64;
              ++v28;
              if (v31)
              {
                sub_25EB0DE08(v8, v38, 0);
                v23 = __clz(__rbit64(v30)) + v27;
                goto LABEL_31;
              }
            }

            sub_25EB0DE08(v8, v38, 0);
          }

LABEL_31:
          v32 = *(v36 + 36);
          v42 = v23;
          v43 = v32;
          v44 = 0;
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

uint64_t sub_25EB1029C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v37 = MEMORY[0x277D84F90];
  sub_25EB250CC(0, v1, 0);
  v2 = v37;
  v4 = v3 + 64;
  v5 = sub_25EB6E568();
  v6 = *(v3 + 36);
  result = type metadata accessor for PSSGGraph(v5);
  v32 = v3;
  v8 = 0;
  v28 = v3 + 72;
  v29 = v1;
  v30 = v6;
  v31 = v3 + 64;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v3 + 32))
  {
    if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_22;
    }

    if (v6 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v34 = v5 >> 6;
    v33 = v8;
    v10 = (*(v3 + 56) + 24 * v5);
    v11 = v10[1];
    v35 = *v10;
    v36 = v2;
    v12 = v10[2];
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v13 = objc_allocWithZone(PSSGGraphID);
    v14 = sub_25EB6E258();
    v15 = sub_25EB6E258();
    v16 = [v13 initWithName:v14 session:v15];

    v17 = sub_25EB130B0(v35, v11, v12);
    v2 = v36;

    v19 = *(v36 + 16);
    v18 = *(v36 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_25EB250CC((v18 > 1), v19 + 1, 1);
      v2 = v36;
    }

    *(v2 + 16) = v19 + 1;
    v20 = v2 + 16 * v19;
    *(v20 + 32) = v16;
    *(v20 + 40) = v17;
    v3 = v32;
    v9 = 1 << *(v32 + 32);
    if (v5 >= v9)
    {
      goto LABEL_24;
    }

    v4 = v31;
    v21 = *(v31 + 8 * v34);
    if ((v21 & (1 << v5)) == 0)
    {
      goto LABEL_25;
    }

    LODWORD(v6) = v30;
    if (v30 != *(v32 + 36))
    {
      goto LABEL_26;
    }

    v22 = v21 & (-2 << (v5 & 0x3F));
    if (v22)
    {
      v9 = __clz(__rbit64(v22)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v34 << 6;
      v24 = v34 + 1;
      v25 = (v28 + 8 * v34);
      while (v24 < (v9 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_25EB0DE08(v5, v30, 0);
          v9 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_25EB0DE08(v5, v30, 0);
    }

LABEL_4:
    v8 = v33 + 1;
    v5 = v9;
    if (v33 + 1 == v29)
    {
      return v2;
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
  return result;
}

uint64_t sub_25EB105CC(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v56 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v56;
  }

  v4 = a1;
  v58 = MEMORY[0x277D84F90];
  sub_25EB2508C(0, v3, 0);
  v56 = v58;
  v5 = v4 + 64;
  result = sub_25EB6E568();
  v7 = result;
  v8 = 0;
  v9 = *(v4 + 36);
  v44 = v4 + 72;
  v45 = v3;
  v47 = v4 + 64;
  v48 = v4;
  v46 = v9;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
  {
    if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_28;
    }

    if (v9 != *(v4 + 36))
    {
      goto LABEL_29;
    }

    v57 = v2;
    v50 = v7 >> 6;
    v49 = v8;
    v11 = *(v4 + 48) + 32 * v7;
    v12 = (*(v4 + 56) + 40 * v7);
    v14 = *v12;
    v13 = v12[1];
    v15 = v12[2];
    v16 = v12[3];
    v55 = *v12;
    v54 = v16;
    if (*(v11 + 24))
    {
      v52 = objc_allocWithZone(PSSGResourceID);

      sub_25EB0E880(v14, v13, v15, v16);

      v17 = sub_25EB6E258();
      v18 = sub_25EB6E258();
      v53 = [v52 initLocalWithName:v17 session:v18];
    }

    else
    {
      v19 = objc_allocWithZone(PSSGResourceID);

      sub_25EB0E880(v14, v13, v15, v16);

      v18 = sub_25EB6E258();
      v53 = [v19 initGlobalWithName_];
    }

    v20 = v15;

    if (v13)
    {
      v21 = objc_allocWithZone(PSSGGraphID);
      v22 = v55;
      v23 = v15;
      v24 = v16;
      sub_25EB0E880(v55, v13, v23, v16);

      sub_25EB0E880(v55, v13, v20, v16);
      v25 = sub_25EB6E258();
      v26 = sub_25EB6E258();
      v27 = [v21 initWithName:v25 session:v26];
      sub_25EB315C4(v55, v13, v20, v54);
    }

    else
    {
      v22 = v55;
      v28 = v15;
      v24 = v16;
      sub_25EB0E880(v55, 0, v28, v16);

      v27 = 0;
    }

    v51 = objc_allocWithZone(PSSGResource);

    v30 = sub_25EB0FC54(v29);
    sub_25EB315C4(v22, v13, v20, v24);
    swift_bridgeObjectRelease_n();
    sub_25EB0CF6C(v30);

    type metadata accessor for PSSGGraphID(0);
    sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID, MEMORY[0x277D85378]);
    v31 = v24;
    v32 = sub_25EB6E428();

    v33 = [v51 initWithProducer:v27 consumers:v32];

    sub_25EB315C4(v22, v13, v20, v31);

    v35 = *(v58 + 16);
    v34 = *(v58 + 24);
    if (v35 >= v34 >> 1)
    {
      result = sub_25EB2508C((v34 > 1), v35 + 1, 1);
    }

    *(v58 + 16) = v35 + 1;
    v36 = v58 + 16 * v35;
    *(v36 + 32) = v53;
    *(v36 + 40) = v33;
    v5 = v47;
    v4 = v48;
    v10 = 1 << *(v48 + 32);
    v9 = v46;
    if (v7 >= v10)
    {
      goto LABEL_30;
    }

    v37 = *(v47 + 8 * v50);
    if ((v37 & (1 << v7)) == 0)
    {
      goto LABEL_31;
    }

    if (v46 != *(v48 + 36))
    {
      goto LABEL_32;
    }

    v38 = v37 & (-2 << (v7 & 0x3F));
    if (v38)
    {
      v10 = __clz(__rbit64(v38)) | v7 & 0x7FFFFFFFFFFFFFC0;
      v2 = v57;
    }

    else
    {
      v39 = v50 << 6;
      v40 = v50 + 1;
      v41 = (v44 + 8 * v50);
      v2 = v57;
      while (v40 < (v10 + 63) >> 6)
      {
        v43 = *v41++;
        v42 = v43;
        v39 += 64;
        ++v40;
        if (v43)
        {
          result = sub_25EB0DE08(v7, v46, 0);
          v10 = __clz(__rbit64(v42)) + v39;
          goto LABEL_4;
        }
      }

      result = sub_25EB0DE08(v7, v46, 0);
    }

LABEL_4:
    v8 = v49 + 1;
    v7 = v10;
    if (v49 + 1 == v45)
    {
      return v56;
    }
  }

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
  return result;
}

void sub_25EB10B34(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_25EB6E5F8();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v47 = MEMORY[0x277D84F90];
    sub_25EB2512C(0, v2 & ~(v2 >> 63), 0);
    v42 = v47;
    if (v35)
    {
      v3 = sub_25EB6E758();
    }

    else
    {
      v3 = sub_25EB6E568();
      v4 = *(v1 + 36);
    }

    v44 = v3;
    v45 = v4;
    v46 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v33 = v2;
      v34 = v1;
      while (v5 < v2)
      {
        if (__OFADD__(v5, 1))
        {
          goto LABEL_24;
        }

        v36 = v44;
        v37 = v45;
        v38 = v5 + 1;
        v41 = v46;
        sub_25EB2F2C0(v43, v44, v45, v46, v1, type metadata accessor for PSSGGraphID, sub_25EAFD168, type metadata accessor for PSSGGraph);
        v13 = v12;
        v14 = v43[0];
        v15 = [v12 name];
        v16 = sub_25EB6E268();
        v39 = v17;
        v40 = v16;

        v18 = [v13 session];
        v19 = sub_25EB6E268();
        v21 = v20;

        v22 = v14;
        v23 = sub_25EB2FB74(v22);
        v25 = v24;
        v27 = v26;

        v28 = v42;
        v47 = v42;
        v30 = *(v42 + 16);
        v29 = *(v42 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_25EB2512C((v29 > 1), v30 + 1, 1);
          v28 = v47;
        }

        *(v28 + 16) = v30 + 1;
        v31 = (v28 + 56 * v30);
        v31[4] = v40;
        v31[5] = v39;
        v31[6] = v19;
        v31[7] = v21;
        v31[8] = v23;
        v31[9] = v25;
        v31[10] = v27;
        v42 = v28;
        if (v35)
        {
          v1 = v34;
          if (!v41)
          {
            goto LABEL_26;
          }

          v2 = v33;
          if (sub_25EB6E788())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12498, &unk_25EB79610);
          v32 = sub_25EB6E218();
          sub_25EB6E828();
          v32(v43, 0);
        }

        else
        {
          v1 = v34;
          sub_25EB2F15C(v36, v37, v41, v34, type metadata accessor for PSSGGraphID, sub_25EAFD168);
          v7 = v6;
          v9 = v8;
          v11 = v10;
          sub_25EB0DE08(v36, v37, v41);
          v44 = v7;
          v45 = v9;
          v46 = v11 & 1;
          v2 = v33;
        }

        ++v5;
        if (v38 == v2)
        {
          sub_25EB0DE08(v44, v45, v46);
          return;
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
}

uint64_t sub_25EB10EB8(uint64_t a1)
{
  v1 = a1;
  v46 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_25EB6E5F8();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v61 = MEMORY[0x277D84F90];
    sub_25EB2510C(0, v2 & ~(v2 >> 63), 0);
    v55 = v61;
    if (v46)
    {
      result = sub_25EB6E758();
    }

    else
    {
      result = sub_25EB6E568();
      v4 = *(v1 + 36);
    }

    v58 = result;
    v59 = v4;
    v60 = v46 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v44 = v2;
      v45 = v1;
      while (1)
      {
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v47 = v58;
        v48 = v59;
        v54 = v60;
        sub_25EB2F2C0(&v57, v58, v59, v60, v1, type metadata accessor for PSSGResourceID, sub_25EAFD114, type metadata accessor for PSSGResource);
        v7 = v57;
        v9 = v8;
        v10 = [v9 name];
        v11 = sub_25EB6E268();
        v52 = v12;
        v53 = v11;

        v13 = [v9 session];
        if (v13)
        {
          v14 = v13;
          v15 = sub_25EB6E268();
          v50 = v16;
          v51 = v15;
        }

        else
        {

          v50 = 0;
          v51 = 0;
        }

        v17 = v7;
        v18 = [v17 producer];
        if (v18)
        {
          v19 = v18;
          v20 = [v18 name];
          v49 = sub_25EB6E268();
          v22 = v21;

          v23 = [v19 session];
          v24 = sub_25EB6E268();
          v26 = v25;
        }

        else
        {
          v49 = 0;
          v22 = 0;
          v24 = 0;
          v26 = 0;
        }

        sub_25EB315C4(0, 0, 0, 0);
        v27 = [v17 consumers];
        type metadata accessor for PSSGGraphID(0);
        sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID, MEMORY[0x277D85378]);
        v28 = sub_25EB6E438();

        sub_25EB0FEF0(v28);
        v30 = v29;

        v31 = sub_25EB0D11C(v30);

        v32 = v55;
        v61 = v55;
        v34 = *(v55 + 16);
        v33 = *(v55 + 24);
        if (v34 >= v33 >> 1)
        {
          result = sub_25EB2510C((v33 > 1), v34 + 1, 1);
          v32 = v61;
        }

        *(v32 + 16) = v34 + 1;
        v35 = (v32 + 72 * v34);
        v35[4] = v53;
        v35[5] = v52;
        v35[6] = v51;
        v35[7] = v50;
        v35[8] = v49;
        v35[9] = v22;
        v35[10] = v24;
        v35[11] = v26;
        v35[12] = v31;
        v55 = v32;
        if (v46)
        {
          v1 = v45;
          if (!v54)
          {
            goto LABEL_33;
          }

          v36 = v44;
          if (sub_25EB6E788())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD12470, &qword_25EB795E8);
          v43 = sub_25EB6E218();
          sub_25EB6E828();
          result = v43(v56, 0);
          if (v6 == v44)
          {
LABEL_28:
            sub_25EB0DE08(v58, v59, v60);
            return v55;
          }
        }

        else
        {
          v1 = v45;
          sub_25EB2F15C(v47, v48, v54, v45, type metadata accessor for PSSGResourceID, sub_25EAFD114);
          v38 = v37;
          v40 = v39;
          v42 = v41;
          result = sub_25EB0DE08(v47, v48, v54);
          v58 = v38;
          v59 = v40;
          v60 = v42 & 1;
          v36 = v44;
          if (v6 == v44)
          {
            goto LABEL_28;
          }
        }

        ++v5;
        if (v6 >= v36)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  return result;
}

uint64_t sub_25EB11390()
{
  v0 = sub_25EB6E1B8();
  __swift_allocate_value_buffer(v0, qword_27FD2EED0);
  __swift_project_value_buffer(v0, qword_27FD2EED0);

  return sub_25EB6E1A8();
}

id PSSGGraphInput.init(resource:type:)(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithResource:a1 type:a2];

  return v3;
}

id PSSGGraphInput.init(resource:type:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR___PSSGGraphInput_resource) = a1;
  *(v2 + OBJC_IVAR___PSSGGraphInput_type) = a2;
  v4.super_class = PSSGGraphInput;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t PSSGGraphInput.description.getter()
{
  v1 = v0;
  v2 = [v0 resource];
  v3 = [v2 description];
  v4 = sub_25EB6E268();

  MEMORY[0x25F8C69B0](8250, 0xE200000000000000);
  [v1 type];
  v5 = sub_25EB6E968();
  MEMORY[0x25F8C69B0](v5);

  return v4;
}

BOOL PSSGGraphInput.isEqual(_:)(uint64_t a1)
{
  v2 = sub_25EB0EDAC(a1, v11, &qword_27FD12030, &qword_25EB78E40);
  if (v12)
  {
    type metadata accessor for PSSGGraphInput(v2);
    if (swift_dynamicCast())
    {
      sub_25EAFCC70(0, &qword_27FD12038, 0x277D82BB8);
      v3 = v1;
      v4 = [v1 resource];
      v5 = [v10 resource];
      v6 = sub_25EB6E518();

      if (v6)
      {
        v7 = [v3 type];
        v8 = [v10 type];

        return v7 == v8;
      }
    }
  }

  else
  {
    sub_25EB0D660(v11, &qword_27FD12030, &qword_25EB78E40);
  }

  return 0;
}

unint64_t PSSGGraphInput.hash.getter()
{
  v1 = [v0 resource];
  v2 = [v1 hash];

  return [v0 type] ^ v2;
}

uint64_t sub_25EB11B5C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12530, &qword_25EB79930);
  v15 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v12 = v1[4];
  v13 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EB31E1C();

  sub_25EB6EA78();
  v16 = v6;
  v17 = v7;
  v18 = v13;
  v19 = v9;
  v20 = 0;
  sub_25EB24FB8();
  v10 = v14;
  sub_25EB6E948();

  if (!v10)
  {
    v16 = v12;
    v20 = 1;
    type metadata accessor for PSInputType(0);
    sub_25EB24DC0(&qword_27FD12540, 255, type metadata accessor for PSInputType, &protocol conformance descriptor for PSInputType);
    sub_25EB6E948();
  }

  return (*(v15 + 8))(v5, v3);
}

uint64_t sub_25EB11D70@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12548, &qword_25EB79938);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EB31E1C();
  sub_25EB6EA68();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = 0;
  sub_25EB30590();
  sub_25EB6E8F8();
  v9 = v16;
  v10 = v18;
  v13 = v17;
  v14 = v15;
  type metadata accessor for PSInputType(0);
  v19 = 1;
  sub_25EB24DC0(&qword_27FD12550, 255, type metadata accessor for PSInputType, &protocol conformance descriptor for PSInputType);
  sub_25EB6E8F8();
  (*(v6 + 8))(v8, v5);
  v11 = v15;
  *a2 = v14;
  a2[1] = v9;
  a2[2] = v13;
  a2[3] = v10;
  a2[4] = v11;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}