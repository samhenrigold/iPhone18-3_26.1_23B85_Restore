char *sub_23819D880(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = &v3[OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_callback];
  *v7 = 0;
  v7[1] = 0;
  swift_unknownObjectWeakInit();
  sub_2381CA09C();
  v8 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessoriesLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33F8, &qword_2381CB298);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *&v3[v8] = v9;
  *&v3[OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessories] = MEMORY[0x277D84F90];
  v3[OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_systemTrackingEnabled] = 1;
  *&v3[OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_dkAccessory] = 0;
  v10 = *v7;
  v11 = v7[1];
  *v7 = a2;
  v7[1] = a3;

  sub_2381A5CDC(v10, v11);
  swift_unknownObjectWeakAssign();
  v17.receiver = v3;
  v17.super_class = type metadata accessor for DockAccessoryManagerHelper(0);
  v12 = objc_msgSendSuper2(&v17, sel_init);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = v12;
    sub_2381C9ABC();
  }

  return v12;
}

uint64_t sub_23819DA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = swift_task_alloc();
  *(v8 + 16) = v12;
  *v12 = v8;
  v12[1] = sub_23819DAE0;

  return sub_2381A3EC4(a5, a6, a8);
}

uint64_t sub_23819DAE0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23819DBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2381A6008(a3, v25 - v10, &qword_27DEF33A0, &qword_2381CB200);
  v12 = sub_2381CA24C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2381A6070(v11, &qword_27DEF33A0, &qword_2381CB200);
  }

  else
  {
    sub_2381CA23C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2381CA21C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2381CA12C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2381A6070(a3, &qword_27DEF33A0, &qword_2381CB200);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2381A6070(a3, &qword_27DEF33A0, &qword_2381CB200);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23819DED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2381A6008(a3, v25 - v10, &qword_27DEF33A0, &qword_2381CB200);
  v12 = sub_2381CA24C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2381A6070(v11, &qword_27DEF33A0, &qword_2381CB200);
  }

  else
  {
    sub_2381CA23C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2381CA21C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2381CA12C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33D0, &qword_2381CC9C0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_2381A6070(a3, &qword_27DEF33A0, &qword_2381CB200);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2381A6070(a3, &qword_27DEF33A0, &qword_2381CB200);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33D0, &qword_2381CC9C0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23819E1E8(char a1)
{
  v2 = v1;
  v4 = sub_2381CA0AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_logger;
  v30 = *(v5 + 16);
  v30(&v28 - v10, v2 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_logger, v4, v9);
  v13 = sub_2381CA08C();
  v14 = sub_2381CA2DC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v7;
    v16 = v15;
    *v15 = 67109120;
    *(v15 + 4) = a1 & 1;
    _os_log_impl(&dword_23819C000, v13, v14, "Helper: setting system tracking enabled %{BOOL}d", v15, 8u);
    v17 = v16;
    v7 = v29;
    MEMORY[0x2383EBBE0](v17, -1, -1);
  }

  v18 = *(v5 + 8);
  result = v18(v11, v4);
  *(v2 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_systemTrackingEnabled) = a1 & 1;
  if (a1)
  {
    (v30)(v7, v2 + v12, v4);
    v20 = sub_2381CA08C();
    v21 = sub_2381CA2DC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_23819C000, v20, v21, "System tracking enabled, stopping tracking loop for previously-vended accessories", v22, 2u);
      MEMORY[0x2383EBBE0](v22, -1, -1);
    }

    v23 = v18(v7, v4);
    v24 = *(v2 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessoriesLock);
    MEMORY[0x28223BE20](v23);
    *(&v28 - 2) = v2;
    MEMORY[0x28223BE20](v25);
    *(&v28 - 2) = sub_2381A5F7C;
    *(&v28 - 1) = v26;

    os_unfair_lock_lock(v24 + 4);
    sub_2381A6584();
    os_unfair_lock_unlock(v24 + 4);
  }

  else
  {
    v27 = *(v2 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_dkAccessory);
    if (v27)
    {
      *(v27 + OBJC_IVAR____TtC7DockKit13DockAccessory__tracking) = 0;
    }
  }

  return result;
}

void sub_23819E500(uint64_t a1)
{
  *&v54 = sub_2381CA0AC();
  v2 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessories;
  swift_beginAccess();
  v42 = v5;
  v6 = *(a1 + v5);
  v7 = *(v6 + 16);
  v50 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_logger;
  v52 = v6;

  v44 = a1;
  v51 = v7;
  if (v7)
  {
    v9 = 0;
    v48 = (v2 + 8);
    v49 = (v2 + 16);
    v10 = v52 + 40;
    *&v8 = 136315138;
    v43 = v8;
    v45 = v4;
    while (v9 < *(v52 + 16))
    {
      v11 = *(v10 - 8);

      (v11)(&v56, v12);
      v13 = v56;
      if (v56)
      {
        v53 = v11;
        v14 = a1;
        (*v49)(v4, a1 + v50, v54);
        v15 = v13;
        v16 = sub_2381CA08C();
        v17 = sub_2381CA2DC();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v47 = v15;
          v56 = v46;
          *v18 = v43;

          v19 = sub_2381C9B0C();
          v20 = sub_2381C9A0C();
          v22 = v21;

          v23 = sub_2381C3094(v20, v22, &v56);
          a1 = v44;

          *(v18 + 4) = v23;
          _os_log_impl(&dword_23819C000, v16, v17, "Stopping tracking loop for %s", v18, 0xCu);
          v24 = v46;
          __swift_destroy_boxed_opaque_existential_0(v46);
          MEMORY[0x2383EBBE0](v24, -1, -1);
          v25 = v18;
          v4 = v45;
          MEMORY[0x2383EBBE0](v25, -1, -1);

          v26 = (*v48)(v4, v54);
          v27 = v47;
        }

        else
        {

          v26 = (*v48)(v4, v54);
          v27 = v15;
          a1 = v14;
        }

        (v53)(&v56, v26);
        v28 = v56;
        if (v56)
        {
          sub_2381C9C4C();
          if (swift_dynamicCastClass())
          {
            v29 = v28;
            sub_2381C9BDC();

            v4 = v45;
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {
      }

      ++v9;
      v10 += 16;
      if (v51 == v9)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_15:

  v30 = *(a1 + v42);
  v31 = *(v30 + 16);

  if (v31)
  {
    v32 = 0;
    v33 = v31 - 1;
    v34 = MEMORY[0x277D84F90];
LABEL_17:
    v35 = v32;
    while (v35 < *(v30 + 16))
    {
      v54 = *(v30 + 32 + 16 * v35);
      v32 = (v35 + 1);

      (v54)(&v55, v36);
      if (v55)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = v34;
        v53 = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2381C363C(0, *(v34 + 16) + 1, 1);
          v34 = v56;
        }

        v38 = v54;
        v40 = *(v34 + 16);
        v39 = *(v34 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_2381C363C((v39 > 1), v40 + 1, 1);
          v38 = v54;
          v34 = v56;
        }

        *(v34 + 16) = v40 + 1;
        *(v34 + 16 * v40 + 32) = v38;
        v33 = v53;
        if (v53 != v35)
        {
          goto LABEL_17;
        }

        goto LABEL_29;
      }

      ++v35;
      if (v31 == v32)
      {
        goto LABEL_29;
      }
    }

LABEL_31:
    __break(1u);
    return;
  }

  v34 = MEMORY[0x277D84F90];
LABEL_29:

  *(v44 + v42) = v34;
}

uint64_t sub_23819E9C4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessories;
  swift_beginAccess();
  v24 = v6;
  v7 = *(a1 + v6);
  v8 = *(v7 + 16);

  if (v8)
  {
    v10 = 0;
    while (v10 < *(v7 + 16))
    {
      v11 = v10 + 1;
      *v26 = *(v7 + 32 + 16 * v10);

      sub_23819EBFC(v26, a2, a1, a3);

      v10 = v11;
      if (v8 == v11)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_5:

  v12 = *(a1 + v24);
  v13 = *(v12 + 16);

  if (v13)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
LABEL_7:
    v16 = v14;
    while (v16 < *(v12 + 16))
    {
      v25 = *(v12 + 32 + 16 * v16);
      v14 = v16 + 1;

      (v25)(&v27, v17);
      if (v27)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        v26[0] = v15;
        if ((result & 1) == 0)
        {
          result = sub_2381C363C(0, *(v15 + 2) + 1, 1);
          v15 = v26[0];
        }

        v18 = v25;
        v20 = *(v15 + 2);
        v19 = *(v15 + 3);
        v21 = v20 + 1;
        if (v20 >= v19 >> 1)
        {
          v22 = v20 + 1;
          v23 = v20;
          result = sub_2381C363C((v19 > 1), v20 + 1, 1);
          v21 = v22;
          v20 = v23;
          v18 = v25;
          v15 = v26[0];
        }

        *(v15 + 2) = v21;
        *(v15 + v20 + 2) = v18;
        if (v13 - 1 != v16)
        {
          goto LABEL_7;
        }

        goto LABEL_19;
      }

      ++v16;
      if (v13 == v14)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    __break(1u);
    return result;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_19:

  *(a1 + v24) = v15;
}

void sub_23819EBFC(void (**a1)(void **__return_ptr, uint64_t), void *a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v8 = sub_2381CA0AC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  (*a1)(&v39, v10);
  v14 = v39;
  if (v39)
  {
    v37 = v13;
    v15 = sub_2381C9B0C();

    sub_2381C9A2C();
    v16 = v15;
    v17 = a2;
    v18 = sub_2381CA2FC();

    if (v18)
    {
      v19 = v9;
      (*(v9 + 16))(v12, a3 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_logger, v8);
      v16 = v16;
      v20 = sub_2381CA08C();
      v21 = sub_2381CA2DC();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v36 = v4;
        v23 = v22;
        v35 = swift_slowAlloc();
        v39 = v35;
        *v23 = 136315394;

        v34 = v21;
        v24 = sub_2381C9A0C();
        v26 = sub_2381C3094(v24, v25, &v39);

        *(v23 + 4) = v26;
        *(v23 + 12) = 1024;
        v27 = v20;
        v28 = sub_2381C9E5C();
        *(v23 + 14) = v28 == sub_2381C9E5C();
        _os_log_impl(&dword_23819C000, v27, v34, "Updating tracking button state on %s to %{BOOL}d", v23, 0x12u);
        v29 = v35;
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x2383EBBE0](v29, -1, -1);
        MEMORY[0x2383EBBE0](v23, -1, -1);
      }

      else
      {
      }

      v30 = (*(v19 + 8))(v12, v8);
      v37(&v39, v30);
      v31 = v39;
      if (v39)
      {
        sub_2381C9C4C();
        if (!swift_dynamicCastClass())
        {

          return;
        }

        v32 = v31;
        sub_2381C9E5C();
        sub_2381C9E5C();
        sub_2381C9C3C();
      }
    }
  }
}

uint64_t sub_23819EF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_2381CA0AC();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23819EFE4, 0, 0);
}

uint64_t sub_23819EFE4()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_logger;
  v0[7] = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_logger;
  v6 = *(v3 + 16);
  v0[8] = v6;
  v0[9] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, &v4[v5], v2);
  v7 = v4;
  v8 = sub_2381CA08C();
  v9 = sub_2381CA2DC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[2];
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v10[OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_systemTrackingEnabled];

    _os_log_impl(&dword_23819C000, v8, v9, "XPC disconnected, attempting to re-connect and set system tracking enabled: %{BOOL}d", v11, 8u);
    MEMORY[0x2383EBBE0](v11, -1, -1);
  }

  else
  {

    v8 = v0[2];
  }

  v12 = v0[6];
  v13 = v0[3];
  v14 = v0[4];

  v15 = *(v14 + 8);
  v0[10] = v15;
  v0[11] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v12, v13);
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v17 = v0[2];
    v18 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_systemTrackingEnabled;
    v0[13] = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_systemTrackingEnabled;
    v19 = *(v17 + v18);
    v20 = swift_task_alloc();
    v0[14] = v20;
    *v20 = v0;
    v20[1] = sub_23819F208;

    return MEMORY[0x28215B1E0](v19);
  }

  else
  {

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_23819F208()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23819F354, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23819F354()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 64);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);

  v2(v4, &v6[v3], v5);
  v7 = v6;
  v8 = v1;
  v9 = sub_2381CA08C();
  v10 = sub_2381CA2CC();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 120);
  if (v11)
  {
    v13 = *(v0 + 104);
    v14 = *(v0 + 16);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 67109378;
    *(v15 + 4) = v14[v13];

    *(v15 + 8) = 2112;
    v17 = v12;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 10) = v18;
    *v16 = v18;
    _os_log_impl(&dword_23819C000, v9, v10, "Failed setting system tracking enabled: %{BOOL}d, %@", v15, 0x12u);
    sub_2381A6070(v16, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v16, -1, -1);
    MEMORY[0x2383EBBE0](v15, -1, -1);
  }

  else
  {
    v19 = *(v0 + 16);
  }

  (*(v0 + 80))(*(v0 + 40), *(v0 + 24));

  v20 = *(v0 + 8);

  return v20();
}

id sub_23819F660()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DockAccessoryManagerHelper(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23819F758(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_2381CA24C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v13[8] = a4;
  v14 = v4;
  v15 = a1;
  sub_23819DBD4(0, 0, v11, &unk_2381CB210, v13);
}

uint64_t DockKitError.hashValue.getter()
{
  v1 = *v0;
  sub_2381CA45C();
  MEMORY[0x2383EB620](v1);
  return sub_2381CA49C();
}

uint64_t _s7DockKit0A9AccessoryC11FramingModeO9hashValueSivg_0()
{
  v1 = *v0;
  sub_2381CA45C();
  MEMORY[0x2383EB620](v1);
  return sub_2381CA49C();
}

uint64_t sub_23819F998(uint64_t a1)
{
  v2 = *v1;
  sub_2381CA45C();
  MEMORY[0x2383EB620](v2);
  return sub_2381CA49C();
}

uint64_t DockKitError.errorDescription.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2381C98FC();

  return v1;
}

uint64_t sub_23819FD08()
{
  v0 = sub_2381CA0AC();
  __swift_allocate_value_buffer(v0, qword_27DEF32A8);
  __swift_project_value_buffer(v0, qword_27DEF32A8);
  return sub_2381CA09C();
}

uint64_t sub_23819FD88@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v94 = sub_2381CA0AC();
  v96 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v95 = &v83 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33E0, &qword_2381CB288);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v83 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v83 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v83 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v83 - v20;
  MEMORY[0x28223BE20](v22);
  v87 = &v83 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v83 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v83 - v28;
  v98 = a1;
  v30 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33E8, &qword_2381CB290);
  result = swift_dynamicCast();
  if (result)
  {
    *a2 = v97;
    return result;
  }

  v84 = v15;
  v85 = v9;
  v86 = a2;
  v91 = v12;
  v32 = sub_2381C9FFC();
  v89 = *(v32 - 8);
  v33 = *(v89 + 56);
  v90 = v29;
  v88 = v32;
  v33(v29, 1, 1);
  v92 = sub_2381C990C();
  v34 = [v92 domain];
  v35 = sub_2381CA0FC();
  v37 = v36;

  if (v35 == 0xD000000000000012 && 0x80000002381CCE50 == v37)
  {

LABEL_7:
    v39 = v92;
    [v92 code];
    v40 = [v39 localizedDescription];
    sub_2381CA0FC();

    sub_2381C9FEC();
    v41 = v88;
    (v33)(v26, 0, 1, v88);
    v42 = v90;
    sub_2381A5F98(v26, v90);
    v43 = v91;
    if (qword_27DEF32A0 != -1)
    {
      swift_once();
    }

    v44 = v94;
    v45 = __swift_project_value_buffer(v94, qword_27DEF32A8);
    (*(v96 + 16))(v95, v45, v44);
    v46 = v39;
    v47 = sub_2381CA08C();
    v48 = sub_2381CA2DC();

    v49 = os_log_type_enabled(v47, v48);
    v50 = v89;
    if (v49)
    {
      v51 = swift_slowAlloc();
      v52 = v41;
      v53 = swift_slowAlloc();
      *v51 = 138412546;
      *(v51 + 4) = v46;
      *v53 = v46;
      *(v51 + 12) = 2112;
      swift_beginAccess();
      v54 = v42;
      v55 = v87;
      sub_2381A6008(v54, v87, &qword_27DEF33E0, &qword_2381CB288);
      if ((*(v50 + 48))(v55, 1, v52) == 1)
      {
        v56 = v46;
        sub_2381A6070(v55, &qword_27DEF33E0, &qword_2381CB288);
        v57 = 0;
      }

      else
      {
        sub_2381A3A5C(&qword_27DEF33F0, MEMORY[0x277D05CF8], MEMORY[0x277D05D00]);
        swift_allocError();
        (*(v89 + 32))(v63, v55, v52);
        v64 = v46;
        v50 = v89;
        v57 = _swift_stdlib_bridgeErrorToNSError();
      }

      *(v51 + 14) = v57;
      v53[1] = v57;
      _os_log_impl(&dword_23819C000, v47, v48, "nsErr is %@, coreErr = %@", v51, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF32F0, &qword_2381CB490);
      swift_arrayDestroy();
      MEMORY[0x2383EBBE0](v53, -1, -1);
      MEMORY[0x2383EBBE0](v51, -1, -1);
      v41 = v88;
      v42 = v90;
    }

    v65 = v96;
    (*(v96 + 8))(v95, v44);
    goto LABEL_17;
  }

  v38 = sub_2381CA40C();

  if (v38)
  {
    goto LABEL_7;
  }

  v98 = a1;
  v58 = a1;
  v59 = v88;
  v60 = swift_dynamicCast();
  (v33)(v21, v60 ^ 1u, 1, v59);
  v61 = v21;
  v41 = v59;
  v42 = v90;
  sub_2381A5F98(v61, v90);
  sub_2381A6008(v42, v18, &qword_27DEF33E0, &qword_2381CB288);
  v50 = v89;
  v62 = (*(v89 + 48))(v18, 1, v59);
  v43 = v91;
  if (v62 == 1)
  {

    sub_2381A6070(v18, &qword_27DEF33E0, &qword_2381CB288);
    result = sub_2381A6070(v42, &qword_27DEF33E0, &qword_2381CB288);
    *v86 = 3;
    return result;
  }

  sub_2381A6070(v18, &qword_27DEF33E0, &qword_2381CB288);
  v44 = v94;
  v65 = v96;
LABEL_17:
  v66 = v93;
  if (qword_27DEF32A0 != -1)
  {
    swift_once();
  }

  v67 = __swift_project_value_buffer(v44, qword_27DEF32A8);
  (*(v65 + 16))(v66, v67, v44);
  v68 = sub_2381CA08C();
  v69 = sub_2381CA2DC();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *v70 = 138412290;
    swift_beginAccess();
    v72 = v84;
    sub_2381A6008(v42, v84, &qword_27DEF33E0, &qword_2381CB288);
    if ((*(v50 + 48))(v72, 1, v41) == 1)
    {
      sub_2381A6070(v72, &qword_27DEF33E0, &qword_2381CB288);
      v73 = 0;
    }

    else
    {
      sub_2381A3A5C(&qword_27DEF33F0, MEMORY[0x277D05CF8], MEMORY[0x277D05D00]);
      swift_allocError();
      (*(v50 + 32))(v75, v72, v41);
      v66 = v93;
      v73 = _swift_stdlib_bridgeErrorToNSError();
    }

    *(v70 + 4) = v73;
    *v71 = v73;
    _os_log_impl(&dword_23819C000, v68, v69, "Converting coreErr = %@ to public", v70, 0xCu);
    sub_2381A6070(v71, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v71, -1, -1);
    MEMORY[0x2383EBBE0](v70, -1, -1);
    v43 = v91;
    v74 = v92;
    v44 = v94;
  }

  else
  {
    v74 = v68;
    v68 = v92;
  }

  (*(v65 + 8))(v66, v44);
  swift_beginAccess();
  sub_2381A6008(v42, v43, &qword_27DEF33E0, &qword_2381CB288);
  if ((*(v50 + 48))(v43, 1, v41) == 1)
  {
    goto LABEL_28;
  }

  v76 = v85;
  sub_2381A6008(v43, v85, &qword_27DEF33E0, &qword_2381CB288);
  v77 = (*(v50 + 88))(v76, v41);
  if (v77 != *MEMORY[0x277D05C30])
  {
    if (v77 == *MEMORY[0x277D05C48] || v77 == *MEMORY[0x277D05C50])
    {
      goto LABEL_31;
    }

    if (v77 == *MEMORY[0x277D05C70])
    {
      goto LABEL_36;
    }

    if (v77 == *MEMORY[0x277D05C90] || v77 == *MEMORY[0x277D05C18] || v77 == *MEMORY[0x277D05CE0])
    {
LABEL_31:
      (*(v50 + 8))(v85, v41);
      v78 = 1;
      goto LABEL_32;
    }

    if (v77 == *MEMORY[0x277D05CF0] || v77 == *MEMORY[0x277D05C20])
    {
LABEL_36:
      (*(v50 + 8))(v85, v41);
      goto LABEL_28;
    }

    if (v77 == *MEMORY[0x277D05CE8])
    {
      (*(v50 + 8))(v85, v41);
      v78 = 2;
      goto LABEL_32;
    }

    if (v77 == *MEMORY[0x277D05C98] || v77 == *MEMORY[0x277D05CC0])
    {
      goto LABEL_31;
    }

    if (v77 == *MEMORY[0x277D05CD0])
    {
      goto LABEL_47;
    }

    v81 = v77;
    if (v77 == *MEMORY[0x277D05CC8] || v77 == *MEMORY[0x277D05CA8] || v77 == *MEMORY[0x277D05CA0] || v77 == *MEMORY[0x277D05C68])
    {
      goto LABEL_52;
    }

    if (v77 != *MEMORY[0x277D05CB0])
    {
      if (v77 == *MEMORY[0x277D05C40] || v77 == *MEMORY[0x277D05C28] || v77 == *MEMORY[0x277D05C10])
      {
LABEL_52:
        (*(v89 + 8))(v85, v88);
LABEL_53:
        v80 = 2;
        goto LABEL_54;
      }

      if (v77 != *MEMORY[0x277D05C88])
      {
        if (v77 == *MEMORY[0x277D05C80] || v77 == *MEMORY[0x277D05CB8])
        {
          (*(v89 + 8))(v85, v88);
        }

        else
        {
          if (v77 == *MEMORY[0x277D05C60])
          {
            (*(v89 + 8))(v85, v88);
            v80 = 4;
            goto LABEL_54;
          }

          if (v77 == *MEMORY[0x277D05C58])
          {
            (*(v89 + 8))(v85, v88);
            v80 = 5;
            goto LABEL_54;
          }

          if (v77 == *MEMORY[0x277D05C78])
          {
            (*(v89 + 8))(v85, v88);
            v80 = 6;
            goto LABEL_54;
          }

          if (v77 == *MEMORY[0x277D05C38])
          {
            (*(v89 + 8))(v85, v88);
            v80 = 7;
            goto LABEL_54;
          }

          v82 = *MEMORY[0x277D05CD8];
          (*(v89 + 8))(v85, v88);
          if (v81 == v82)
          {
            goto LABEL_53;
          }
        }

        v80 = 3;
        goto LABEL_54;
      }
    }

LABEL_47:
    (*(v89 + 8))(v85, v88);
    v80 = 1;
LABEL_54:
    *v86 = v80;
    sub_2381A6070(v91, &qword_27DEF33E0, &qword_2381CB288);
    v79 = v90;
    return sub_2381A6070(v79, &qword_27DEF33E0, &qword_2381CB288);
  }

  (*(v50 + 8))(v76, v41);
LABEL_28:
  v78 = 3;
LABEL_32:
  *v86 = v78;
  sub_2381A6070(v43, &qword_27DEF33E0, &qword_2381CB288);
  v79 = v42;
  return sub_2381A6070(v79, &qword_27DEF33E0, &qword_2381CB288);
}

BOOL sub_2381A0BF8()
{
  v1 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
  v2 = *(v0 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = *(v0 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled);
  v4 = *(v0 + v1);

  os_unfair_lock_unlock(v4 + 4);

  return (v3 & 1) == 0;
}

uint64_t sub_2381A0C88()
{
  type metadata accessor for DockAccessoryManager(0);
  swift_allocObject();
  result = sub_2381A0D24();
  qword_27DEF32C8 = result;
  return result;
}

uint64_t static DockAccessoryManager.shared.getter()
{
  if (qword_27DEF32C0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2381A0D24()
{
  *(v0 + 24) = 0;
  sub_2381CA09C();
  v1 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33F8, &qword_2381CB298);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled) = 0;
  *(v0 + 16) = [objc_allocWithZone(sub_2381C9ADC()) init];
  return v0;
}

uint64_t sub_2381A0DE4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 112) = a1;
  v3 = sub_2381CA0AC();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381A0EB4, 0, 0);
}

uint64_t sub_2381A0EB4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager_logger;
  *(v0 + 56) = OBJC_IVAR____TtC7DockKit20DockAccessoryManager_logger;
  v6 = *(v3 + 16);
  *(v0 + 64) = v6;
  *(v0 + 72) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);
  v7 = sub_2381CA08C();
  v8 = sub_2381CA2BC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 112);
    v10 = swift_slowAlloc();
    *v10 = 67240192;
    *(v10 + 4) = v9;
    _os_log_impl(&dword_23819C000, v7, v8, "API: setSystemTrackingEnabled: %{BOOL,public}d", v10, 8u);
    MEMORY[0x2383EBBE0](v10, -1, -1);
  }

  v11 = *(v0 + 48);
  v12 = *(v0 + 24);
  v13 = *(v0 + 32);

  v14 = *(v13 + 8);
  *(v0 + 80) = v14;
  *(v0 + 88) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v11, v12);
  v15 = swift_task_alloc();
  *(v0 + 96) = v15;
  *v15 = v0;
  v15[1] = sub_2381A1048;
  v16 = *(v0 + 112);

  return MEMORY[0x28215B1E0](v16);
}

uint64_t sub_2381A1048()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_2381A129C;
  }

  else
  {
    v2 = sub_2381A115C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2381A115C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 16);
  v3 = *(v0 + 112);
  v4 = *(v2 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock);
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_2381A3238;
  *(v6 + 24) = v5;

  os_unfair_lock_lock(v4 + 4);
  sub_2381A3258();
  os_unfair_lock_unlock(v4 + 4);

  if (!v1)
  {
    v8 = *(v0 + 16);

    v9 = *(v8 + 24);
    if (v9)
    {
      v10 = *(v0 + 112);
      v11 = v9;
      sub_23819E1E8(v10);
    }

    v12 = *(v0 + 8);

    return v12();
  }

  return result;
}

uint64_t sub_2381A129C()
{
  v18 = v0;
  v1 = *(v0 + 104);
  (*(v0 + 64))(*(v0 + 40), *(v0 + 16) + *(v0 + 56), *(v0 + 24));
  v2 = v1;
  v3 = sub_2381CA08C();
  v4 = sub_2381CA2CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_23819C000, v3, v4, "Failed in setSystemTrackingEnabled: %@", v6, 0xCu);
    sub_2381A6070(v7, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v7, -1, -1);
    MEMORY[0x2383EBBE0](v6, -1, -1);
  }

  v10 = *(v0 + 104);
  v11 = *(v0 + 80);
  v12 = *(v0 + 40);
  v13 = *(v0 + 24);

  v11(v12, v13);
  sub_23819FD88(v10, v17);
  LOBYTE(v13) = v17[0];
  sub_2381A319C();
  swift_allocError();
  *v14 = v13;
  swift_willThrow();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2381A1474@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v18 = a1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3400, &qword_2381CB2A0);
  v3 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v5 = &v16 - v4;
  v6 = sub_2381CA0AC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v2 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager_logger, v6, v8);
  v11 = sub_2381CA08C();
  v12 = sub_2381CA2BC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v16 = v2;
    v14 = v13;
    *v13 = 0;
    _os_log_impl(&dword_23819C000, v11, v12, "API: accessoryStateChanges", v13, 2u);
    MEMORY[0x2383EBBE0](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D85778], v17);
  return sub_2381CA2AC();
}

uint64_t sub_2381A16D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3408, &qword_2381CB2A8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;

  sub_2381CA25C();
  v11 = sub_2381CA24C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v5 + 32))(&v13[v12], v7, v4);

  sub_23819DBD4(0, 0, v10, &unk_2381CB2B8, v13);
}

uint64_t sub_2381A18E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3410, &qword_2381CB2C0);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3408, &qword_2381CB2A8);
  v5[9] = v7;
  v8 = *(v7 - 8);
  v5[10] = v8;
  v5[11] = *(v8 + 64);
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381A1A20, 0, 0);
}

uint64_t sub_2381A1A20()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v5 + 16);
  *(v0 + 104) = v6;
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v9 = objc_allocWithZone(type metadata accessor for DockAccessoryManagerHelper(0));
  v10 = v6;
  v11 = sub_23819D880(v6, sub_2381A6408, v8);
  v12 = *(v5 + 24);
  *(v5 + 24) = v11;

  v13 = *(v5 + 24);
  if (v13)
  {
    v14 = *(*(v0 + 32) + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled);
    v15 = v13;
    sub_23819E1E8((v14 & 1) == 0);

    v16 = swift_task_alloc();
    *(v0 + 112) = v16;
    *v16 = v0;
    v16[1] = sub_2381A1C74;

    return sub_2381A20B0();
  }

  else
  {
    sub_2381A319C();
    v18 = swift_allocError();
    *v19 = 2;
    swift_willThrow();
    v20 = *(v0 + 64);
    v21 = *(v0 + 48);
    v22 = *(v0 + 56);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    sub_2381CA26C();
    (*(v22 + 8))(v20, v21);
    sub_2381CA27C();

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_2381A1C74()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_2381A1EC4;
  }

  else
  {
    v2 = sub_2381A1D88;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2381A1D88()
{
  v1 = *(*(v0 + 32) + 24);
  if (v1)
  {
    v2 = *(v0 + 120);
    sub_2381A3A5C(&qword_27DEF3418, type metadata accessor for DockAccessoryManagerHelper, &unk_2381CB1D8);
    v3 = v1;
    sub_2381C9A6C();

    if (v2)
    {
      v4 = *(v0 + 64);
      v5 = *(v0 + 48);
      v6 = *(v0 + 56);
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      sub_2381CA26C();
      (*(v6 + 8))(v4, v5);
      sub_2381CA27C();
    }

    v7 = *(v0 + 8);

    v7();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2381A1EC4()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_2381CA26C();
  (*(v4 + 8))(v2, v3);
  sub_2381CA27C();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2381A1F90(uint64_t a1, _BYTE *a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3410, &qword_2381CB2C0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  LOBYTE(v8) = *a2;
  v11 = a1;
  v12 = v8;
  v13 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3408, &qword_2381CB2A8);
  sub_2381CA26C();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2381A20B0()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381A214C, 0, 0);
}

uint64_t sub_2381A214C()
{
  v0[4] = *(v0[2] + 16);
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_2381A21E8;

  return MEMORY[0x28215B1A0]();
}

uint64_t sub_2381A21E8(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 48) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2381A2338, 0, 0);
  }
}

uint64_t sub_2381A2338(uint64_t a1)
{
  if (*(v1 + 48))
  {
    v2 = sub_2381C9B0C();
    sub_2381C9A1C();

    v3 = sub_2381C99EC();
    if (v3 == sub_2381C99EC())
    {
      v4 = swift_task_alloc();
      *(v1 + 56) = v4;
      *v4 = v1;
      v4[1] = sub_2381A2448;

      return MEMORY[0x28215B198]();
    }
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_2381A2448(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_2381A26B4;
  }

  else
  {
    v4 = sub_2381A255C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2381A255C()
{
  v1 = *(*(v0 + 16) + 24);
  if (v1)
  {
    v2 = *(v0 + 64);
    v3 = *(v0 + 24);
    v4 = v1;
    v5 = sub_2381C9B0C();
    v6 = sub_2381CA24C();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v4;
    v7[5] = v5;
    v7[6] = 0;
    v7[7] = 0;
    v7[8] = v2;
    v8 = v4;
    v9 = v5;
    sub_23819DBD4(0, 0, v3, &unk_2381CB268, v7);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2381A26B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DockAccessoryManager.deinit()
{
  v1 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager_logger;
  v2 = sub_2381CA0AC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DockAccessoryManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager_logger;
  v2 = sub_2381CA0AC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void *sub_2381A285C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2381A2880(uint64_t a1, id *a2)
{
  result = sub_2381CA0DC();
  *a2 = 0;
  return result;
}

uint64_t sub_2381A28F8(uint64_t a1, id *a2)
{
  v3 = sub_2381CA0EC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2381A2978@<X0>(uint64_t *a1@<X8>)
{
  sub_2381CA0FC();
  v2 = sub_2381CA0CC();

  *a1 = v2;
  return result;
}

uint64_t sub_2381A29BC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2381CA0CC();

  *a2 = v3;
  return result;
}

uint64_t sub_2381A2A04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2381CA0FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2381A2A30(uint64_t a1)
{
  v2 = sub_2381A3A5C(&qword_27DEF33C0, type metadata accessor for DeviceType, &unk_2381CB10C);
  v3 = sub_2381A3A5C(&qword_27DEF33C8, type metadata accessor for DeviceType, &unk_2381CB0AC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2381A2AEC()
{
  v0 = sub_2381CA0FC();
  v1 = MEMORY[0x2383EB340](v0);

  return v1;
}

uint64_t sub_2381A2B28(uint64_t a1)
{
  sub_2381CA0FC();
  sub_2381CA14C();
}

uint64_t sub_2381A2B7C(uint64_t a1)
{
  sub_2381CA0FC();
  sub_2381CA45C();
  sub_2381CA14C();
  v1 = sub_2381CA49C();

  return v1;
}

uint64_t sub_2381A2BF0(void *a1, uint64_t *a2)
{
  v2 = sub_2381CA0FC();
  v4 = v3;
  if (v2 == sub_2381CA0FC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2381CA40C();
  }

  return v7 & 1;
}

uint64_t sub_2381A2C78(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2381A2D70;

  return v6(a1);
}

uint64_t sub_2381A2D70()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_2381A2E90(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33B0, &qword_2381CC860);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33B8, &qword_2381CB240);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2381A2FC4(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33D8, &qword_2381CB280);
  v10 = *(type metadata accessor for DockAccessory.TrackedSubjectType(0) - 8);
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
  v15 = *(type metadata accessor for DockAccessory.TrackedSubjectType(0) - 8);
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

unint64_t sub_2381A319C()
{
  result = qword_27DEF32E8;
  if (!qword_27DEF32E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF32E8);
  }

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

unint64_t sub_2381A3284()
{
  result = qword_27DEF32F8;
  if (!qword_27DEF32F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF32F8);
  }

  return result;
}

uint64_t sub_2381A3304(uint64_t a1)
{
  result = sub_2381CA0AC();
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

uint64_t getEnumTagSinglePayload for DockKitError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DockKitError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2381A3574(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2381A35AC(uint64_t a1)
{
  result = sub_2381CA0AC();
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

uint64_t dispatch thunk of DockAccessoryManager.setSystemTrackingEnabled(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 240) + **(*v1 + 240));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23819DAE0;

  return v6(a1);
}

uint64_t initializeBufferWithCopyOfBuffer for DockAccessory.MotionState(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy32_16(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2381A383C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2381A385C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2381A38A8(uint64_t a1, int a2)
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

uint64_t sub_2381A38C8(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy48_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2381A3918(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2381A3938(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2381A3A5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2381A3AF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2381A6574;

  return sub_23819DA14(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2381A3BCC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2381A3C04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2381A6574;

  return sub_2381A2C78(a1, v4);
}

uint64_t sub_2381A3CBC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2381A3DB0;

  return v5(v2 + 32);
}

uint64_t sub_2381A3DB0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2381A3EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_2381CA0AC();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = type metadata accessor for DockAccessory.Identifier(0);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381A3FDC, 0, 0);
}

uint64_t sub_2381A3FDC()
{
  v51 = v0;
  sub_2381C9A1C();
  v1 = sub_2381C99EC();
  if (v1 == sub_2381C99EC())
  {
    v2 = (*(v0 + 64) + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_callback);
    v3 = *v2;
    *(v0 + 136) = *v2;
    *(v0 + 144) = v2[1];
    if (v3)
    {
      v4 = *(v0 + 128);
      v5 = *(v0 + 104);

      v6 = sub_2381C9A0C();
      v8 = v7;
      *(v0 + 232) = *(v5 + 24);
      sub_2381C99FC();
      *v4 = v6;
      v4[1] = v8;
      v9 = sub_2381C9C5C();
      if (v9 == sub_2381C9C5C())
      {
        *(v0 + 152) = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_manager;
        Strong = swift_unknownObjectWeakLoadStrong();
        *(v0 + 160) = Strong;
        if (Strong)
        {
          v11 = swift_task_alloc();
          *(v0 + 168) = v11;
          *v11 = v0;
          v11[1] = sub_2381A4508;

          return MEMORY[0x28215B1A0]();
        }
      }

      (*(*(v0 + 80) + 16))(*(v0 + 96), *(v0 + 64) + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_logger, *(v0 + 72));
      v12 = sub_2381CA08C();
      v13 = sub_2381CA2DC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_23819C000, v12, v13, "updating previously-emitted accessories tracking button state", v14, 2u);
        MEMORY[0x2383EBBE0](v14, -1, -1);
      }

      v15 = *(v0 + 96);
      v16 = *(v0 + 72);
      v17 = *(v0 + 80);
      v19 = *(v0 + 56);
      v18 = *(v0 + 64);
      v20 = *(v0 + 40);

      (*(v17 + 8))(v15, v16);
      v21 = *(v18 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessoriesLock);
      v22 = swift_task_alloc();
      v22[2] = v18;
      v22[3] = v20;
      v22[4] = v19;
      v23 = swift_task_alloc();
      *(v23 + 16) = sub_2381A5B7C;
      *(v23 + 24) = v22;

      os_unfair_lock_lock(v21 + 4);
      sub_2381A6584();
      os_unfair_lock_unlock(v21 + 4);

      v24 = *(v0 + 64);

      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessories;
      swift_beginAccess();
      v27 = *(v24 + v26);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + v26) = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_2381A2E90(0, v27[2] + 1, 1, v27);
        *(v24 + v26) = v27;
      }

      v29 = v27[2];
      v30 = v27[3];
      v31 = v29 + 1;
      if (v29 >= v30 >> 1)
      {
        v46 = v27;
        v47 = v27[2];
        v48 = sub_2381A2E90((v30 > 1), v29 + 1, 1, v46);
        v29 = v47;
        v27 = v48;
      }

      v32 = *(v0 + 64);
      v27[2] = v31;
      v33 = &v27[2 * v29];
      v33[4] = sub_2381A5BD4;
      v33[5] = v25;
      *(v24 + v26) = v27;
      swift_endAccess();

      v34 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_dkAccessory;
      v35 = *(v32 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_dkAccessory);
      if (!v35 || (v36 = *(v0 + 120), sub_2381A5C1C(v35 + OBJC_IVAR____TtC7DockKit13DockAccessory_identifier, v36), v37 = sub_2381C99AC(), sub_2381A5C80(v36), (v37 & 1) == 0))
      {
        v38 = *(v0 + 112);
        sub_2381A5C1C(*(v0 + 128), v38);
        type metadata accessor for DockAccessory(0);
        swift_allocObject();
        *(v32 + v34) = sub_2381AD6D4(v38, 0);
      }

      v39 = *(v32 + v34);
      v41 = *(v0 + 136);
      v40 = *(v0 + 144);
      v42 = *(v0 + 128);
      if (v39)
      {
        v50[0] = 0;

        v43 = sub_2381C9E5C();
        v44 = v43 == sub_2381C9E5C();
        v41(v39, v50, v44);
        sub_2381A5CDC(v41, v40);

        sub_2381A5C80(v42);
      }

      else
      {
        sub_2381A5C80(*(v0 + 128));
        sub_2381A5CDC(v41, v40);
      }
    }
  }

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_2381A4508(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_2381A50D8;
  }

  else
  {

    v4 = sub_2381A4624;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2381A4624()
{
  v47 = v0;
  v1 = v0[22];
  if (!v1)
  {
    goto LABEL_10;
  }

  sub_2381C9C4C();
  v2 = swift_dynamicCastClass();
  v0[24] = v2;
  if (!v2)
  {

LABEL_10:
    v45 = 0;
    v8 = 0;
    v9 = v0[23];
    goto LABEL_11;
  }

  sub_2381A5CEC();
  v3 = v1;
  v4 = sub_2381C9B0C();

  v5 = sub_2381CA2FC();
  if ((v5 & 1) == 0)
  {

    goto LABEL_10;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[25] = Strong;
  if (Strong)
  {
    v7 = swift_task_alloc();
    v0[26] = v7;
    *v7 = v0;
    v7[1] = sub_2381A4B68;

    return MEMORY[0x28215B198]();
  }

  v9 = v0[23];
  sub_2381C9C3C();
  v8 = v0[24];
  v45 = 1;
LABEL_11:
  (*(v0[10] + 16))(v0[12], v0[8] + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_logger, v0[9]);
  v10 = sub_2381CA08C();
  v11 = sub_2381CA2DC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_23819C000, v10, v11, "updating previously-emitted accessories tracking button state", v12, 2u);
    MEMORY[0x2383EBBE0](v12, -1, -1);
  }

  v13 = v0[12];
  v14 = v0[9];
  v15 = v0[10];
  v17 = v0[7];
  v16 = v0[8];
  v18 = v0[5];

  (*(v15 + 8))(v13, v14);
  v19 = *(v16 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessoriesLock);
  v20 = swift_task_alloc();
  v20[2] = v16;
  v20[3] = v18;
  v20[4] = v17;
  v21 = swift_task_alloc();
  *(v21 + 16) = sub_2381A5B7C;
  *(v21 + 24) = v20;

  os_unfair_lock_lock(v19 + 4);
  sub_2381A6584();
  os_unfair_lock_unlock(v19 + 4);

  if (!v9)
  {
    v22 = v0[8];

    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessories;
    swift_beginAccess();
    v25 = *(v22 + v24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v22 + v24) = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_2381A2E90(0, v25[2] + 1, 1, v25);
      *(v22 + v24) = v25;
    }

    v28 = v25[2];
    v27 = v25[3];
    if (v28 >= v27 >> 1)
    {
      v25 = sub_2381A2E90((v27 > 1), v28 + 1, 1, v25);
    }

    v29 = v0[8];
    v25[2] = v28 + 1;
    v30 = &v25[2 * v28];
    v30[4] = sub_2381A5BD4;
    v30[5] = v23;
    *(v22 + v24) = v25;
    swift_endAccess();

    v31 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_dkAccessory;
    v32 = *(v29 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_dkAccessory);
    if (!v32 || (v33 = v0[15], sub_2381A5C1C(v32 + OBJC_IVAR____TtC7DockKit13DockAccessory_identifier, v33), v34 = sub_2381C99AC(), sub_2381A5C80(v33), (v34 & 1) == 0))
    {
      v35 = v0[14];
      sub_2381A5C1C(v0[16], v35);
      type metadata accessor for DockAccessory(0);
      swift_allocObject();
      v36 = v8;
      *(v29 + v31) = sub_2381AD6D4(v35, v8);
    }

    v37 = *(v29 + v31);
    v39 = v0[17];
    v38 = v0[18];
    v40 = v0[16];
    if (v37)
    {
      v46[0] = v45;

      v41 = sub_2381C9E5C();
      v42 = v41 == sub_2381C9E5C();
      v39(v37, v46, v42);
      sub_2381A5CDC(v39, v38);

      sub_2381A5C80(v40);
    }

    else
    {
      sub_2381A5C80(v0[16]);
      sub_2381A5CDC(v39, v38);
    }

    v43 = v0[1];

    return v43();
  }

  return result;
}

uint64_t sub_2381A4B68(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = sub_2381A5624;
  }

  else
  {

    *(v4 + 224) = a1;
    v5 = sub_2381A4C98;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2381A4C98()
{
  v39 = v0;
  sub_2381C9E5C();
  sub_2381C9E5C();
  v1 = v0[27];
  sub_2381C9C3C();
  v2 = v0[24];
  (*(v0[10] + 16))(v0[12], v0[8] + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_logger, v0[9]);
  v3 = sub_2381CA08C();
  v4 = sub_2381CA2DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23819C000, v3, v4, "updating previously-emitted accessories tracking button state", v5, 2u);
    MEMORY[0x2383EBBE0](v5, -1, -1);
  }

  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[5];

  (*(v8 + 8))(v6, v7);
  v12 = *(v9 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessoriesLock);
  v13 = swift_task_alloc();
  v13[2] = v9;
  v13[3] = v11;
  v13[4] = v10;
  v14 = swift_task_alloc();
  *(v14 + 16) = sub_2381A5B7C;
  *(v14 + 24) = v13;

  os_unfair_lock_lock(v12 + 4);
  sub_2381A6584();
  os_unfair_lock_unlock(v12 + 4);

  if (!v1)
  {
    v16 = v0[8];

    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessories;
    swift_beginAccess();
    v19 = *(v16 + v18);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v16 + v18) = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_2381A2E90(0, v19[2] + 1, 1, v19);
      *(v16 + v18) = v19;
    }

    v22 = v19[2];
    v21 = v19[3];
    if (v22 >= v21 >> 1)
    {
      v19 = sub_2381A2E90((v21 > 1), v22 + 1, 1, v19);
    }

    v23 = v0[8];
    v19[2] = v22 + 1;
    v24 = &v19[2 * v22];
    v24[4] = sub_2381A5BD4;
    v24[5] = v17;
    *(v16 + v18) = v19;
    swift_endAccess();

    v25 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_dkAccessory;
    v26 = *(v23 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_dkAccessory);
    if (!v26 || (v27 = v0[15], sub_2381A5C1C(v26 + OBJC_IVAR____TtC7DockKit13DockAccessory_identifier, v27), v28 = sub_2381C99AC(), sub_2381A5C80(v27), (v28 & 1) == 0))
    {
      v29 = v0[14];
      sub_2381A5C1C(v0[16], v29);
      type metadata accessor for DockAccessory(0);
      swift_allocObject();
      v30 = v2;
      *(v23 + v25) = sub_2381AD6D4(v29, v2);
    }

    v31 = *(v23 + v25);
    v33 = v0[17];
    v32 = v0[18];
    v34 = v0[16];
    if (v31)
    {
      v38[0] = 1;

      v35 = sub_2381C9E5C();
      v36 = v35 == sub_2381C9E5C();
      v33(v31, v38, v36);
      sub_2381A5CDC(v33, v32);

      sub_2381A5C80(v34);
    }

    else
    {
      sub_2381A5C80(v0[16]);
      sub_2381A5CDC(v33, v32);
    }

    v37 = v0[1];

    return v37();
  }

  return result;
}

uint64_t sub_2381A50D8()
{
  v49 = v0;
  v1 = *(v0 + 184);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);

  (*(v3 + 16))(v2, v5 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_logger, v4);
  v6 = v1;
  v7 = sub_2381CA08C();
  v8 = sub_2381CA2CC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_23819C000, v7, v8, "failed fetching connected accessory %@", v9, 0xCu);
    sub_2381A6070(v10, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v10, -1, -1);
    MEMORY[0x2383EBBE0](v9, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  v13 = *(v0 + 184);
  (*(*(v0 + 80) + 16))(*(v0 + 96), *(v0 + 64) + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_logger, *(v0 + 72));
  v14 = sub_2381CA08C();
  v15 = sub_2381CA2DC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_23819C000, v14, v15, "updating previously-emitted accessories tracking button state", v16, 2u);
    MEMORY[0x2383EBBE0](v16, -1, -1);
  }

  v17 = *(v0 + 96);
  v18 = *(v0 + 72);
  v19 = *(v0 + 80);
  v21 = *(v0 + 56);
  v20 = *(v0 + 64);
  v22 = *(v0 + 40);

  (*(v19 + 8))(v17, v18);
  v23 = *(v20 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessoriesLock);
  v24 = swift_task_alloc();
  v24[2] = v20;
  v24[3] = v22;
  v24[4] = v21;
  v25 = swift_task_alloc();
  *(v25 + 16) = sub_2381A5B7C;
  *(v25 + 24) = v24;

  os_unfair_lock_lock(v23 + 4);
  sub_2381A6584();
  os_unfair_lock_unlock(v23 + 4);

  v26 = *(v0 + 64);

  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessories;
  swift_beginAccess();
  v29 = *(v26 + v28);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + v28) = v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = sub_2381A2E90(0, v29[2] + 1, 1, v29);
    *(v26 + v28) = v29;
  }

  v32 = v29[2];
  v31 = v29[3];
  if (v32 >= v31 >> 1)
  {
    v29 = sub_2381A2E90((v31 > 1), v32 + 1, 1, v29);
  }

  v33 = *(v0 + 64);
  v29[2] = v32 + 1;
  v34 = &v29[2 * v32];
  v34[4] = sub_2381A5BD4;
  v34[5] = v27;
  *(v26 + v28) = v29;
  swift_endAccess();

  v35 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_dkAccessory;
  v36 = *(v33 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_dkAccessory);
  if (!v36 || (v37 = *(v0 + 120), sub_2381A5C1C(v36 + OBJC_IVAR____TtC7DockKit13DockAccessory_identifier, v37), v38 = sub_2381C99AC(), sub_2381A5C80(v37), (v38 & 1) == 0))
  {
    v39 = *(v0 + 112);
    sub_2381A5C1C(*(v0 + 128), v39);
    type metadata accessor for DockAccessory(0);
    swift_allocObject();
    *(v33 + v35) = sub_2381AD6D4(v39, 0);
  }

  v40 = *(v33 + v35);
  v42 = *(v0 + 136);
  v41 = *(v0 + 144);
  v43 = *(v0 + 128);
  if (v40)
  {
    v48[0] = v13 == 0;

    v44 = sub_2381C9E5C();
    v45 = v44 == sub_2381C9E5C();
    v42(v40, v48, v45);
    sub_2381A5CDC(v42, v41);

    sub_2381A5C80(v43);
  }

  else
  {
    sub_2381A5C80(*(v0 + 128));
    sub_2381A5CDC(v42, v41);
  }

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_2381A5624()
{
  v51 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);

  (*(v4 + 16))(v3, v6 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_logger, v5);
  v7 = v1;
  v8 = sub_2381CA08C();
  v9 = sub_2381CA2CC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_23819C000, v8, v9, "failed fetching connected accessory %@", v10, 0xCu);
    sub_2381A6070(v11, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v11, -1, -1);
    MEMORY[0x2383EBBE0](v10, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  v14 = *(v0 + 184);
  (*(*(v0 + 80) + 16))(*(v0 + 96), *(v0 + 64) + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_logger, *(v0 + 72));
  v15 = sub_2381CA08C();
  v16 = sub_2381CA2DC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_23819C000, v15, v16, "updating previously-emitted accessories tracking button state", v17, 2u);
    MEMORY[0x2383EBBE0](v17, -1, -1);
  }

  v18 = *(v0 + 96);
  v19 = *(v0 + 72);
  v20 = *(v0 + 80);
  v22 = *(v0 + 56);
  v21 = *(v0 + 64);
  v23 = *(v0 + 40);

  (*(v20 + 8))(v18, v19);
  v24 = *(v21 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessoriesLock);
  v25 = swift_task_alloc();
  v25[2] = v21;
  v25[3] = v23;
  v25[4] = v22;
  v26 = swift_task_alloc();
  *(v26 + 16) = sub_2381A5B7C;
  *(v26 + 24) = v25;

  os_unfair_lock_lock(v24 + 4);
  sub_2381A6584();
  os_unfair_lock_unlock(v24 + 4);

  v27 = *(v0 + 64);

  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_weakPublishedAccessories;
  swift_beginAccess();
  v30 = *(v27 + v29);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + v29) = v30;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v30 = sub_2381A2E90(0, v30[2] + 1, 1, v30);
    *(v27 + v29) = v30;
  }

  v33 = v30[2];
  v32 = v30[3];
  if (v33 >= v32 >> 1)
  {
    v30 = sub_2381A2E90((v32 > 1), v33 + 1, 1, v30);
  }

  v34 = *(v0 + 64);
  v30[2] = v33 + 1;
  v35 = &v30[2 * v33];
  v35[4] = sub_2381A5BD4;
  v35[5] = v28;
  *(v27 + v29) = v30;
  swift_endAccess();

  v36 = OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_dkAccessory;
  v37 = *(v34 + OBJC_IVAR____TtC7DockKit26DockAccessoryManagerHelper_dkAccessory);
  if (!v37 || (v38 = *(v0 + 120), sub_2381A5C1C(v37 + OBJC_IVAR____TtC7DockKit13DockAccessory_identifier, v38), v39 = sub_2381C99AC(), sub_2381A5C80(v38), (v39 & 1) == 0))
  {
    v40 = *(v0 + 112);
    sub_2381A5C1C(*(v0 + 128), v40);
    type metadata accessor for DockAccessory(0);
    swift_allocObject();
    v41 = v2;
    *(v34 + v36) = sub_2381AD6D4(v40, v2);
  }

  v42 = *(v34 + v36);
  v44 = *(v0 + 136);
  v43 = *(v0 + 144);
  v45 = *(v0 + 128);
  if (v42)
  {
    v50[0] = v14 == 0;

    v46 = sub_2381C9E5C();
    v47 = v46 == sub_2381C9E5C();
    v44(v42, v50, v47);
    sub_2381A5CDC(v44, v43);

    sub_2381A5C80(v45);
  }

  else
  {
    sub_2381A5C80(*(v0 + 128));
    sub_2381A5CDC(v44, v43);
  }

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_2381A5B9C()
{
  MEMORY[0x2383EBC80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2381A5BD4@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_2381A5C1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DockAccessory.Identifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2381A5C80(uint64_t a1)
{
  v2 = type metadata accessor for DockAccessory.Identifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2381A5CDC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2381A5CEC()
{
  result = qword_27DEF33A8;
  if (!qword_27DEF33A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEF33A8);
  }

  return result;
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

uint64_t sub_2381A5D88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2381A6574;

  return sub_2381A3CBC(a1, v4);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2381A5E88()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2381A5EC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2381A6574;

  return sub_23819EF18(a1, v4, v5, v6);
}

uint64_t sub_2381A5F98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33E0, &qword_2381CB288);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2381A6008(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2381A6070(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_2381A6198()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3408, &qword_2381CB2A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2381A6270(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3408, &qword_2381CB2A8) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23819DAE0;

  return sub_2381A18E4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2381A6374()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3408, &qword_2381CB2A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2381A6408(uint64_t a1, _BYTE *a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3408, &qword_2381CB2A8);

  return sub_2381A1F90(a1, a2, a3);
}

uint64_t sub_2381A64A8(uint64_t a1, int a2)
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

uint64_t sub_2381A64C8(uint64_t result, int a2, int a3)
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

void sub_2381A6518(uint64_t a1, unint64_t *a2, uint64_t a3)
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

id sub_2381A659C()
{
  v1 = &v0[OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_feedbackCallback];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_eventCallback];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_batteryCallback];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_trackingSummaryCallback];
  *v4 = 0;
  *(v4 + 1) = 0;
  swift_unknownObjectWeakInit();
  sub_2381CA09C();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for DockAccessoryHelper(0);
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_2381A668C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a2;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2381A66B8, 0, 0);
}

uint64_t sub_2381A66B8()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_feedbackCallback;
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v0 + 56);
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v6 = *(v0 + 32);
    v7 = *(v1 + 8);

    v2(v6, v5, v4, 0, 0, v3);
    sub_2381A5CDC(v2, v7);
  }

  **(v0 + 16) = v2 == 0;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2381A6890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2381A68B4, 0, 0);
}

uint64_t sub_2381A68B4()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_eventCallback;
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v0 + 32);
    v4 = *(v1 + 8);

    v2(v3, 0, 0);
    sub_2381A5CDC(v2, v4);
  }

  **(v0 + 16) = v2 == 0;
  v5 = *(v0 + 8);

  return v5();
}

void sub_2381A6A0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = sub_2381C9B0C();

      sub_2381C9A2C();
      LOBYTE(v13) = sub_2381CA2FC();

      if (v13)
      {
        v15 = sub_2381CA24C();
        (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
        v16 = swift_allocObject();
        v16[2] = 0;
        v16[3] = 0;
        v16[4] = v6;
        v16[5] = a2;
        v17 = v6;
        v18 = a2;
        sub_23819DED4(0, 0, v10, a4, v16);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2381A6B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2381A6BA4, 0, 0);
}

uint64_t sub_2381A6BA4()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_batteryCallback;
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v0 + 32);
    v4 = *(v1 + 8);

    v2(v3, 0, 0);
    sub_2381A5CDC(v2, v4);
  }

  **(v0 + 16) = v2 == 0;
  v5 = *(v0 + 8);

  return v5();
}

void sub_2381A6CDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = sub_2381C9B0C();

      sub_2381C9A2C();
      LOBYTE(v9) = sub_2381CA2FC();

      if (v9)
      {
        v11 = sub_2381C992C();
        v13 = v12;
        v14 = sub_2381CA24C();
        (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
        v15 = swift_allocObject();
        v15[2] = 0;
        v15[3] = 0;
        v15[4] = v3;
        v15[5] = v11;
        v15[6] = v13;
        v16 = v3;
        sub_23819DED4(0, 0, v6, &unk_2381CC870, v15);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2381A6E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_2381A6E88, 0, 0);
}

uint64_t sub_2381A6E88()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_trackingSummaryCallback;
  v2 = *v1;
  if (*v1)
  {
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    v5 = *(v1 + 8);

    v2(v4, v3, 0, 0);
    sub_2381A5CDC(v2, v5);
  }

  **(v0 + 16) = v2 == 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2381A7058(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2381CA0AC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_logger, v4, v6);
  v9 = sub_2381CA08C();
  v10 = sub_2381CA2DC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_23819C000, v9, v10, "accessory disconnected, sending error to delegate", v11, 2u);
    MEMORY[0x2383EBBE0](v11, -1, -1);
  }

  result = (*(v5 + 8))(v8, v4);
  v13 = *(v2 + OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_feedbackCallback);
  if (v13)
  {
    v14 = *(v2 + OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_feedbackCallback + 8);

    v13(MEMORY[0x277D84F90], MEMORY[0x277D84F90], MEMORY[0x277D84F90], a1, 1, 0.0);
    result = sub_2381A5CDC(v13, v14);
  }

  v15 = v2 + OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_eventCallback;
  v16 = *(v2 + OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_eventCallback);
  if (v16)
  {
    v17 = *(v15 + 8);

    v16(0, a1, 1);
    return sub_2381A5CDC(v16, v17);
  }

  return result;
}

id sub_2381A72A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DockAccessoryHelper(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t DockAccessory.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DockAccessory.Identifier(0);
  MEMORY[0x28223BE20](v2);
  sub_2381C4208(v0 + OBJC_IVAR____TtC7DockKit13DockAccessory_identifier, &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DockAccessory.Identifier);
  v4 = sub_2381CA10C();
  v24 = 0xD000000000000011;
  v25 = 0x80000002381CCEF0;
  MEMORY[0x2383EB320](v4);

  MEMORY[0x2383EB320](0xD000000000000013, 0x80000002381CCF10);

  v6 = v24;
  v5 = v25;
  v7 = (v0 + OBJC_IVAR____TtC7DockKit13DockAccessory_firmwareVersion);
  swift_beginAccess();
  v8 = v7[1];
  v22 = *v7;
  v23 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3430, &qword_2381CB360);
  v9 = sub_2381CA10C();
  v11 = v10;
  v22 = v6;
  v23 = v5;

  MEMORY[0x2383EB320](v9, v11);

  MEMORY[0x2383EB320](0xD000000000000011, 0x80000002381CCF30);

  v12 = v22;
  v13 = v23;
  v14 = (v1 + OBJC_IVAR____TtC7DockKit13DockAccessory_hardwareModel);
  swift_beginAccess();
  v15 = v14[1];
  v20 = *v14;
  v21 = v15;

  v16 = sub_2381CA10C();
  v18 = v17;
  v20 = v12;
  v21 = v13;

  MEMORY[0x2383EB320](v16, v18);

  MEMORY[0x2383EB320](15906, 0xE200000000000000);

  return v20;
}

uint64_t sub_2381A7698(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t DockAccessory.Identifier.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DockAccessory.Identifier.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DockAccessory.Identifier(0) + 24);
  v4 = sub_2381C99BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DockAccessory.Identifier.debugDescription.getter(uint64_t a1)
{
  v8 = sub_2381CA11C();

  MEMORY[0x2383EB320](45, 0xE100000000000000);

  v2 = *v1;
  v3 = v1[1];

  MEMORY[0x2383EB320](v2, v3);

  MEMORY[0x2383EB320](45, 0xE100000000000000);

  type metadata accessor for DockAccessory.Identifier(0);
  v4 = sub_2381C999C();
  v6 = v5;

  MEMORY[0x2383EB320](v4, v6);

  return v8;
}

uint64_t static DockAccessory.Identifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DockAccessory.Identifier(0);

  return sub_2381C99AC();
}

uint64_t DockAccessory.Identifier.hash(into:)(uint64_t a1)
{
  MEMORY[0x2383EB620](0);
  type metadata accessor for DockAccessory.Identifier(0);
  sub_2381C99BC();
  sub_2381C41C0(&qword_27DEF3438, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_2381CA0BC();
}

uint64_t DockAccessory.Identifier.hashValue.getter()
{
  sub_2381CA45C();
  MEMORY[0x2383EB620](0);
  type metadata accessor for DockAccessory.Identifier(0);
  sub_2381C99BC();
  sub_2381C41C0(&qword_27DEF3438, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2381CA0BC();
  return sub_2381CA49C();
}

uint64_t sub_2381A7A58()
{
  sub_2381CA45C();
  MEMORY[0x2383EB620](0);
  sub_2381C99BC();
  sub_2381C41C0(&qword_27DEF3438, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2381CA0BC();
  return sub_2381CA49C();
}

uint64_t sub_2381A7B04(uint64_t a1)
{
  MEMORY[0x2383EB620](0);
  sub_2381C99BC();
  sub_2381C41C0(&qword_27DEF3438, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_2381CA0BC();
}

uint64_t sub_2381A7B98(uint64_t a1)
{
  sub_2381CA45C();
  MEMORY[0x2383EB620](0);
  sub_2381C99BC();
  sub_2381C41C0(&qword_27DEF3438, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2381CA0BC();
  return sub_2381CA49C();
}

__n128 DockAccessory.CameraInformation.cameraIntrinsics.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v3;
  result = *(v1 + 64);
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

__n128 DockAccessory.CameraInformation.init(captureDevice:cameraPosition:orientation:cameraIntrinsics:referenceDimensions:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v8 = *a3;
  *a8 = a1;
  *(a8 + 8) = a2;
  v9 = *(a4 + 16);
  *(a8 + 32) = *a4;
  *(a8 + 48) = v9;
  result = *(a4 + 32);
  *(a8 + 64) = result;
  *(a8 + 80) = *(a4 + 48);
  *(a8 + 88) = a5;
  *(a8 + 96) = a6;
  *(a8 + 104) = a7 & 1;
  *(a8 + 16) = v8;
  return result;
}

uint64_t DockAccessory.State.debugDescription.getter()
{
  if (*v0)
  {
    return 0x64656B636F44;
  }

  else
  {
    return 0x64656B636F646E55;
  }
}

uint64_t DockAccessory.State.hashValue.getter()
{
  v1 = *v0;
  sub_2381CA45C();
  MEMORY[0x2383EB620](v1);
  return sub_2381CA49C();
}

uint64_t sub_2381A7D94()
{
  if (*v0)
  {
    return 0x64656B636F44;
  }

  else
  {
    return 0x64656B636F646E55;
  }
}

uint64_t sub_2381A7E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x676E696B63617274 && a2 == 0xED0000646E617453)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2381CA40C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2381A7EF4(uint64_t a1)
{
  v2 = sub_2381A87A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2381A7F30(uint64_t a1)
{
  v2 = sub_2381A87A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2381A7F78(uint64_t a1)
{
  v2 = sub_2381A87F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2381A7FB4(uint64_t a1)
{
  v2 = sub_2381A87F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DockAccessory.Category.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3440, &qword_2381CB368);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3448, &qword_2381CB370);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2381A87A0();
  sub_2381CA4BC();
  sub_2381A87F4();
  sub_2381CA3EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t DockAccessory.Category.hashValue.getter()
{
  sub_2381CA45C();
  MEMORY[0x2383EB620](0);
  return sub_2381CA49C();
}

uint64_t DockAccessory.Category.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3460, &qword_2381CB378);
  v16 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3468, &qword_2381CB380);
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2381A87A0();
  sub_2381CA4AC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_2381CA3DC() + 16) == 1)
    {
      sub_2381A87F4();
      sub_2381CA3BC();
      v10 = v15;
      (*(v9 + 8))(v5, v3);
    }

    else
    {
      v11 = sub_2381CA35C();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3470, &qword_2381CB388);
      *v13 = &type metadata for DockAccessory.Category;
      sub_2381CA3CC();
      sub_2381CA34C();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84160], v11);
      swift_willThrow();
      v10 = v15;
    }

    (*(v10 + 8))(v8, v17);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2381A8540(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3440, &qword_2381CB368);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3448, &qword_2381CB370);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2381A87A0();
  sub_2381CA4BC();
  sub_2381A87F4();
  sub_2381CA3EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2381A8718()
{
  sub_2381CA45C();
  MEMORY[0x2383EB620](0);
  return sub_2381CA49C();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2381A87A0()
{
  result = qword_27DEF3450;
  if (!qword_27DEF3450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3450);
  }

  return result;
}

unint64_t sub_2381A87F4()
{
  result = qword_27DEF3458;
  if (!qword_27DEF3458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF3458);
  }

  return result;
}

uint64_t sub_2381A8848(uint64_t a1)
{
  sub_2381CA45C();
  MEMORY[0x2383EB620](0);
  return sub_2381CA49C();
}

uint64_t DockAccessory.Observation.init(identifier:type:rect:faceYawAngle:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v10 = *a2;
  *(a4 + 8) = a1;
  *a4 = v10;
  *(a4 + 16) = a5;
  *(a4 + 24) = a6;
  *(a4 + 32) = a7;
  *(a4 + 40) = a8;
  v11 = type metadata accessor for DockAccessory.Observation(0);
  return sub_2381C4E68(a3, a4 + *(v11 + 28), &qword_27DEF3478, &qword_2381CB390);
}

uint64_t DockAccessory.StateChanges.Iterator.next()(uint64_t a1)
{
  type metadata accessor for DockAccessory.StateChanges.Iterator(0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3480, &qword_2381CB3A0);
  *v3 = v1;
  v3[1] = sub_2381A6574;

  return MEMORY[0x2822003F0](a1, v4);
}

uint64_t sub_2381A8AA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3480, &qword_2381CB3A0);
  *v3 = v1;
  v3[1] = sub_2381C9818;

  return MEMORY[0x2822003F0](a1, v4);
}

uint64_t sub_2381A8B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a2;
  v6[4] = a3;
  v10 = swift_task_alloc();
  v6[5] = v10;
  *v10 = v6;
  v10[1] = sub_2381A8C20;

  return MEMORY[0x282200308](a1, a5, a6);
}

uint64_t sub_2381A8C20()
{
  v2 = *(*v1 + 24);
  *(*v1 + 48) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_2381CA21C();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_2381C9858;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_2381CA21C();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_2381C9850;
  }

  return MEMORY[0x2822009F8](v6, v3, v5);
}

void *DockAccessory.MotionState.error.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

uint64_t DockAccessory.MotionStates.Iterator.next()(uint64_t a1)
{
  type metadata accessor for DockAccessory.MotionStates.Iterator(0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3490, &qword_2381CB3B8);
  *v3 = v1;
  v3[1] = sub_2381A6574;

  return MEMORY[0x2822003F0](a1, v4);
}

uint64_t sub_2381A8F4C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3490, &qword_2381CB3B8);
  *v3 = v1;
  v3[1] = sub_2381C9818;

  return MEMORY[0x2822003F0](a1, v4);
}

uint64_t sub_2381A9038@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void)@<X2>, char *a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = *(v8 + 16);
  v12(&v14 - v10, v4, v7, v9);
  (v12)(a4, v11, v7);
  a3(0);
  sub_2381CA28C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t DockAccessory.TrackedPerson.speakingConfidence.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for DockAccessory.TrackedPerson(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t DockAccessory.TrackedPerson.lookingAtCameraConfidence.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for DockAccessory.TrackedPerson(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_2381A94E4(uint64_t (*a1)(void), double a2, double a3, double a4, double a5)
{
  result = a1(0);
  v11 = (v5 + *(result + 20));
  *v11 = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  return result;
}

uint64_t sub_2381A95E4(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  result = a3(0);
  v7 = v3 + *(result + 24);
  *v7 = a1;
  *(v7 + 8) = a2 & 1;
  return result;
}

uint64_t sub_2381A9694@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_2381A971C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a2(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t DockAccessory.TrackingState.trackedSubjects.getter()
{
  type metadata accessor for DockAccessory.TrackingState(0);
}

uint64_t DockAccessory.TrackingState.trackedSubjects.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DockAccessory.TrackingState(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t DockAccessory.TrackingState.description.getter()
{
  v1 = v0;
  v60 = type metadata accessor for DockAccessory.TrackedObject(0);
  MEMORY[0x28223BE20](v60);
  v59 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DockAccessory.TrackedPerson(0);
  MEMORY[0x28223BE20](v58);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DockAccessory.TrackedSubjectType(0);
  v5 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v63 = 0x3D656D6974;
  *(&v63 + 1) = 0xE500000000000000;
  sub_2381C998C();
  sub_2381C41C0(&qword_27DEF34A0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v8 = sub_2381CA3FC();
  MEMORY[0x2383EB320](v8);

  MEMORY[0x2383EB320](2592, 0xE200000000000000);
  v9 = v63;
  v67 = v63;
  v10 = *(v1 + *(type metadata accessor for DockAccessory.TrackingState(0) + 20));
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v61 = *(v5 + 72);
    do
    {
      sub_2381C4208(v12, v7, type metadata accessor for DockAccessory.TrackedSubjectType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v13 = v59;
        sub_2381C4A44(v7, v59, type metadata accessor for DockAccessory.TrackedObject);
        *&v63 = 0x207463656A626FLL;
        *(&v63 + 1) = 0xE700000000000000;
        v14 = sub_2381C999C();
        v17 = sub_2381C49A8(5, v14, v15, v16);
        v19 = v18;
        v21 = v20;
        v23 = v22;

        v24 = MEMORY[0x2383EB2F0](v17, v19, v21, v23);
        v26 = v25;

        MEMORY[0x2383EB320](v24, v26);

        MEMORY[0x2383EB320](32, 0xE100000000000000);
        MEMORY[0x2383EB320](v63, *(&v63 + 1));

        v65 = 0;
        v66 = 0xE000000000000000;
        MEMORY[0x2383EB320](0x3D74636572, 0xE500000000000000);
        v27 = (v13 + *(v60 + 20));
        v28 = v27[1];
        v63 = *v27;
        v64 = v28;
        type metadata accessor for CGRect(0);
        sub_2381CA37C();
        MEMORY[0x2383EB320](32, 0xE100000000000000);
        MEMORY[0x2383EB320](v65, v66);

        v29 = type metadata accessor for DockAccessory.TrackedObject;
        v30 = v13;
      }

      else
      {
        sub_2381C4A44(v7, v4, type metadata accessor for DockAccessory.TrackedPerson);
        *&v63 = 0x206E6F73726570;
        *(&v63 + 1) = 0xE700000000000000;
        v31 = sub_2381C999C();
        v34 = sub_2381C49A8(5, v31, v32, v33);
        v36 = v35;
        v38 = v37;
        v40 = v39;

        v41 = MEMORY[0x2383EB2F0](v34, v36, v38, v40);
        v43 = v42;

        MEMORY[0x2383EB320](v41, v43);

        MEMORY[0x2383EB320](32, 0xE100000000000000);
        MEMORY[0x2383EB320](v63, *(&v63 + 1));

        v65 = 0;
        v66 = 0xE000000000000000;
        MEMORY[0x2383EB320](0x3D74636572, 0xE500000000000000);
        v44 = v58;
        v45 = &v4[*(v58 + 20)];
        v46 = *(v45 + 1);
        v63 = *v45;
        v64 = v46;
        type metadata accessor for CGRect(0);
        sub_2381CA37C();
        MEMORY[0x2383EB320](32, 0xE100000000000000);
        MEMORY[0x2383EB320](v65, v66);

        *&v63 = 0x79636E65696C6173;
        *(&v63 + 1) = 0xE90000000000003DLL;
        v47 = &v4[v44[6]];
        v48 = *v47;
        LOBYTE(v47) = v47[8];
        v65 = v48;
        LOBYTE(v66) = v47;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF34A8, &qword_2381CB3C8);
        v49 = sub_2381CA10C();
        MEMORY[0x2383EB320](v49);

        MEMORY[0x2383EB320](32, 0xE100000000000000);
        MEMORY[0x2383EB320](v63, *(&v63 + 1));

        *&v63 = 0x676E696B61657073;
        *(&v63 + 1) = 0xE90000000000003DLL;
        v50 = &v4[v44[7]];
        v51 = *v50;
        LOBYTE(v50) = v50[8];
        v65 = v51;
        LOBYTE(v66) = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF34B0, &qword_2381CB3D0);
        v52 = sub_2381CA10C();
        MEMORY[0x2383EB320](v52);

        MEMORY[0x2383EB320](32, 0xE100000000000000);
        MEMORY[0x2383EB320](v63, *(&v63 + 1));

        *&v63 = 0x3D676E696B6F6F6CLL;
        *(&v63 + 1) = 0xE800000000000000;
        v53 = &v4[v44[8]];
        v54 = *v53;
        LOBYTE(v53) = v53[8];
        v65 = v54;
        LOBYTE(v66) = v53;
        v55 = sub_2381CA10C();
        MEMORY[0x2383EB320](v55);

        MEMORY[0x2383EB320](32, 0xE100000000000000);
        MEMORY[0x2383EB320](v63, *(&v63 + 1));

        v29 = type metadata accessor for DockAccessory.TrackedPerson;
        v30 = v4;
      }

      sub_2381C4AAC(v30, v29);
      MEMORY[0x2383EB320](10, 0xE100000000000000);
      v12 += v61;
      --v11;
    }

    while (v11);
    return v67;
  }

  return v9;
}

uint64_t DockAccessory.TrackingStates.Iterator.next()(uint64_t a1)
{
  type metadata accessor for DockAccessory.TrackingStates.Iterator(0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF34B8, &qword_2381CB3E0);
  *v3 = v1;
  v3[1] = sub_2381A6574;

  return MEMORY[0x2822003F0](a1, v4);
}

uint64_t sub_2381AA014(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF34B8, &qword_2381CB3E0);
  *v3 = v1;
  v3[1] = sub_2381C9818;

  return MEMORY[0x2822003F0](a1, v4);
}

uint64_t DockAccessory.AccessoryEvent.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      MEMORY[0x2383EB620](3);
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v3 = v1;
      }

      else
      {
        v3 = 0;
      }

      return MEMORY[0x2383EB640](v3);
    }

    else
    {
      if (v1 | v2 ^ 0x80)
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }

      return MEMORY[0x2383EB620](v5);
    }
  }

  else
  {
    MEMORY[0x2383EB620](0);
    MEMORY[0x2383EB620](v1);
    return sub_2381CA47C();
  }
}

uint64_t DockAccessory.AccessoryEvent.hashValue.getter()
{
  sub_2381CA45C();
  DockAccessory.AccessoryEvent.hash(into:)();
  return sub_2381CA49C();
}

uint64_t sub_2381AA22C()
{
  sub_2381CA45C();
  DockAccessory.AccessoryEvent.hash(into:)();
  return sub_2381CA49C();
}

uint64_t sub_2381AA284(uint64_t a1)
{
  sub_2381CA45C();
  DockAccessory.AccessoryEvent.hash(into:)();
  return sub_2381CA49C();
}

uint64_t DockAccessory.AccessoryEvents.Iterator.next()(uint64_t a1)
{
  type metadata accessor for DockAccessory.AccessoryEvents.Iterator(0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF34C8, &qword_2381CB3F8);
  *v3 = v1;
  v3[1] = sub_23819DAE0;

  return MEMORY[0x2822003F0](a1, v4);
}

uint64_t sub_2381AA3A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF34C8, &qword_2381CB3F8);
  *v3 = v1;
  v3[1] = sub_2381A2D70;

  return MEMORY[0x2822003F0](a1, v4);
}

uint64_t sub_2381AA464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a2;
  v6[4] = a3;
  v10 = swift_task_alloc();
  v6[5] = v10;
  *v10 = v6;
  v10[1] = sub_2381AA51C;

  return MEMORY[0x282200308](a1, a5, a6);
}

uint64_t sub_2381AA51C()
{
  v2 = *(*v1 + 24);
  *(*v1 + 48) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_2381CA21C();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_2381AA6C4;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_2381CA21C();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_2381AA6AC;
  }

  return MEMORY[0x2822009F8](v6, v3, v5);
}

uint64_t sub_2381AA6C4()
{
  v0[2] = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33E8, &qword_2381CB290);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t sub_2381AA7E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3950, &qword_2381CC9E0);
  v19 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v18 = &v16 - v3;
  v4 = sub_2381CA0AC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v1 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v4, v6);
  v9 = sub_2381CA08C();
  v10 = sub_2381CA2BC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v17 = v2;
    v12 = v11;
    *v11 = 0;
    _os_log_impl(&dword_23819C000, v9, v10, "API: getAccessoryEvents", v11, 2u);
    v2 = v17;
    MEMORY[0x2383EBBE0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v13 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  if (*(v1 + v13))
  {
    (*(v19 + 104))(v18, *MEMORY[0x277D85778], v2);
    return sub_2381CA2AC();
  }

  else
  {
    sub_2381A319C();
    swift_allocError();
    *v15 = 1;
    return swift_willThrow();
  }
}

uint64_t DockAccessory.BatteryState.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DockAccessory.BatteryState.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 25);
  sub_2381CA14C();
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  MEMORY[0x2383EB640](*&v4);
  sub_2381CA47C();
  return MEMORY[0x2383EB620](v3);
}

uint64_t DockAccessory.BatteryState.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 25);
  sub_2381CA45C();
  sub_2381CA14C();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x2383EB640](*&v3);
  sub_2381CA47C();
  MEMORY[0x2383EB620](v2);
  return sub_2381CA49C();
}

uint64_t sub_2381AAC10()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *(v0 + 24);
  v4 = *(v0 + 25);
  v7 = *v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  sub_2381CA45C();
  DockAccessory.BatteryState.hash(into:)(v6);
  return sub_2381CA49C();
}

uint64_t sub_2381AAC78(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  v8 = *v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  sub_2381CA45C();
  DockAccessory.BatteryState.hash(into:)(v7);
  return sub_2381CA49C();
}

uint64_t DockAccessory.BatteryStates.Iterator.next()(uint64_t a1)
{
  type metadata accessor for DockAccessory.BatteryStates.Iterator(0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF34D8, &qword_2381CB410);
  *v3 = v1;
  v3[1] = sub_2381A6574;

  return MEMORY[0x2822003F0](a1, v4);
}

uint64_t sub_2381AADA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF34D8, &qword_2381CB410);
  *v3 = v1;
  v3[1] = sub_2381C9818;

  return MEMORY[0x2822003F0](a1, v4);
}

uint64_t sub_2381AAECC@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, char *a5@<X8>)
{
  v8 = v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  v15 = *(v11 + 16);
  v15(&v17 - v13, v8, v10, v12);
  (v15)(a5, v14, v10);
  a3(0);
  sub_2381CA28C();
  sub_2381C4AAC(v8, a4);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_2381AB028()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3938, &qword_2381CC988);
  v19 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v18 = &v16 - v3;
  v4 = sub_2381CA0AC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v1 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v4, v6);
  v9 = sub_2381CA08C();
  v10 = sub_2381CA2BC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v17 = v2;
    v12 = v11;
    *v11 = 0;
    _os_log_impl(&dword_23819C000, v9, v10, "API: getAccessoryBatteryStates", v11, 2u);
    v2 = v17;
    MEMORY[0x2383EBBE0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v13 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  if (*(v1 + v13))
  {
    (*(v19 + 104))(v18, *MEMORY[0x277D85778], v2);
    return sub_2381CA2AC();
  }

  else
  {
    sub_2381A319C();
    swift_allocError();
    *v15 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_2381AB304@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_2381AB334(uint64_t a1)
{
  v2 = sub_2381C4CBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2381AB370(uint64_t a1)
{
  v2 = sub_2381C4CBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2381AB3AC(uint64_t a1)
{
  v2 = sub_2381C4C68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2381AB3E8(uint64_t a1)
{
  v2 = sub_2381C4C68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2381AB424()
{
  v1 = 0x6974616D6F747561;
  v2 = 1952867692;
  if (*v0 != 2)
  {
    v2 = 0x7468676972;
  }

  if (*v0)
  {
    v1 = 0x7265746E6563;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2381AB494@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2381C7EF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2381AB4C8(uint64_t a1)
{
  v2 = sub_2381C4B6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2381AB504(uint64_t a1)
{
  v2 = sub_2381C4B6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2381AB540(uint64_t a1)
{
  v2 = sub_2381C4C14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2381AB57C(uint64_t a1)
{
  v2 = sub_2381C4C14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2381AB5B8(uint64_t a1)
{
  v2 = sub_2381C4BC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2381AB5F4(uint64_t a1)
{
  v2 = sub_2381C4BC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DockAccessory.FramingMode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF34E8, &qword_2381CB420);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF34F0, &qword_2381CB428);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF34F8, &qword_2381CB430);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3500, &qword_2381CB438);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3508, &qword_2381CB440);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2381C4B6C();
  sub_2381CA4BC();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_2381C4C14();
      v18 = v27;
      sub_2381CA3EC();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_2381C4BC0();
      v18 = v30;
      sub_2381CA3EC();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_2381C4C68();
    v18 = v24;
    sub_2381CA3EC();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_2381C4CBC();
  sub_2381CA3EC();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t DockAccessory.FramingMode.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3538, &qword_2381CB448);
  v40 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3540, &qword_2381CB450);
  v5 = *(v4 - 8);
  v42 = v4;
  v43 = v5;
  MEMORY[0x28223BE20](v4);
  v46 = v35 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3548, &qword_2381CB458);
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v8 = v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3550, &qword_2381CB460);
  v39 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3558, &qword_2381CB468);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v35 - v14;
  v16 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_2381C4B6C();
  v17 = v48;
  sub_2381CA4AC();
  if (!v17)
  {
    v36 = v9;
    v37 = 0;
    v18 = v46;
    v19 = v47;
    v48 = v13;
    v20 = v15;
    v21 = sub_2381CA3DC();
    v22 = *(v21 + 16);
    if (!v22 || ((v23 = *(v21 + 32), v22 == 1) ? (v24 = v23 == 4) : (v24 = 1), v24))
    {
      v25 = sub_2381CA35C();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3470, &qword_2381CB388);
      *v27 = &type metadata for DockAccessory.FramingMode;
      sub_2381CA3CC();
      sub_2381CA34C();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
      swift_willThrow();
      (*(v48 + 8))(v20, v12);
    }

    else
    {
      v35[1] = v21;
      if (v23 <= 1)
      {
        if (v23)
        {
          v51 = 1;
          sub_2381C4C68();
          v32 = v37;
          sub_2381CA3BC();
          if (!v32)
          {
            (*(v38 + 8))(v8, v41);
            goto LABEL_23;
          }
        }

        else
        {
          v50 = 0;
          sub_2381C4CBC();
          v28 = v37;
          sub_2381CA3BC();
          if (!v28)
          {
            (*(v39 + 8))(v11, v36);
LABEL_23:
            (*(v48 + 8))(v15, v12);
LABEL_25:
            swift_unknownObjectRelease();
            *v45 = v23;
            return __swift_destroy_boxed_opaque_existential_0(v49);
          }
        }

        (*(v48 + 8))(v15, v12);
        goto LABEL_20;
      }

      v29 = v45;
      v30 = v48;
      if (v23 == 2)
      {
        v52 = 2;
        sub_2381C4C14();
        v31 = v37;
        sub_2381CA3BC();
        if (!v31)
        {
          (*(v43 + 8))(v18, v42);
          (*(v30 + 8))(v20, v12);
          swift_unknownObjectRelease();
          *v29 = 2;
          return __swift_destroy_boxed_opaque_existential_0(v49);
        }
      }

      else
      {
        v53 = 3;
        sub_2381C4BC0();
        v33 = v37;
        sub_2381CA3BC();
        if (!v33)
        {
          (*(v40 + 8))(v19, v44);
          (*(v30 + 8))(v20, v12);
          goto LABEL_25;
        }
      }

      (*(v30 + 8))(v20, v12);
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v49);
}

void DockAccessory.Limits.Limit.init(positionRange:maximumSpeed:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  if (a4 >= 0.0 && a3 > a2)
  {
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
  }

  else
  {
    sub_2381A319C();
    swift_allocError();
    *v5 = 3;
    swift_willThrow();
  }
}

__n128 DockAccessory.Limits.yaw.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u8[8];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 DockAccessory.Limits.pitch.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[3].n128_u64[0];
  v3 = v1[3].n128_u8[8];
  result = v1[2];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 DockAccessory.Limits.roll.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[5].n128_u64[0];
  v3 = v1[5].n128_u8[8];
  result = v1[4];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 DockAccessory.Limits.init(yaw:pitch:roll:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  v6 = *(a2 + 16);
  v7 = a3[1].n128_u64[0];
  v5 = *(a1 + 24);
  v10 = *(a2 + 24);
  v9 = a3[1].n128_u8[8];
  *a4 = *a1;
  *(a4 + 16) = v4;
  *(a4 + 24) = v5;
  *(a4 + 32) = *a2;
  *(a4 + 48) = v6;
  *(a4 + 56) = v10;
  result = *a3;
  *(a4 + 64) = *a3;
  *(a4 + 80) = v7;
  *(a4 + 88) = v9;
  return result;
}

uint64_t DockAccessory.framingMode.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7DockKit13DockAccessory__framingModeLock;
  v4 = *(v1 + OBJC_IVAR____TtC7DockKit13DockAccessory__framingModeLock);

  os_unfair_lock_lock(v4 + 4);

  LOBYTE(v4) = *(v1 + OBJC_IVAR____TtC7DockKit13DockAccessory__framingMode);
  v5 = *(v1 + v3);

  os_unfair_lock_unlock(v5 + 4);

  *a1 = v4;
  return result;
}

double DockAccessory.regionOfInterest.getter()
{
  v1 = OBJC_IVAR____TtC7DockKit13DockAccessory__roiLock;
  v2 = *(v0 + OBJC_IVAR____TtC7DockKit13DockAccessory__roiLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = *(v0 + OBJC_IVAR____TtC7DockKit13DockAccessory__roi);
  v4 = *(v0 + v1);

  os_unfair_lock_unlock(v4 + 4);

  return v3;
}

uint64_t sub_2381AC3A4@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3920, &qword_2381CC950);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v90 = &v81 - v4;
  v5 = sub_2381CA0AC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v81 - v10;
  v12 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v92 = v1;
  if (!*(v1 + v12))
  {
    sub_2381A319C();
    v39 = swift_allocError();
    *v40 = 1;
    v91 = v39;
    return swift_willThrow();
  }

  v88 = v3;
  v13 = *(v6 + 16);
  v84 = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  v85 = v13;
  v86 = v6 + 16;
  v13(v11, v92 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v5);
  v14 = sub_2381CA08C();
  v15 = sub_2381CA2BC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = v12;
    v17 = v2;
    v18 = v8;
    v19 = v6;
    v20 = v5;
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_23819C000, v14, v15, "API: getMotionStates", v21, 2u);
    v22 = v21;
    v5 = v20;
    v6 = v19;
    v8 = v18;
    v2 = v17;
    v12 = v16;
    MEMORY[0x2383EBBE0](v22, -1, -1);
  }

  v24 = *(v6 + 8);
  v23 = v6 + 8;
  v87 = v24;
  v24(v11, v5);
  v25 = MEMORY[0x277D84F90];
  v94 = MEMORY[0x277D84F90];
  v26 = *(v92 + v12);
  v83 = v5;
  if (!v26)
  {
    v29 = v90;
    goto LABEL_41;
  }

  v27 = v26;
  v28 = sub_2381C9C1C();

  v29 = v90;
  v81 = v23;
  if (v28)
  {
    v30 = sub_2381CA00C();

    sub_2381CA04C();
    v31 = sub_2381CA01C();
    if (*(v30 + 16))
    {
      v33 = sub_2381C38BC(v31, v32);
      v35 = v34;

      if (v35)
      {
        v36 = *(*(v30 + 56) + 8 * v33);

        v37 = swift_dynamicCastClass();
        v5 = v83;
        if (v37)
        {
          v38 = v36;
          MEMORY[0x2383EB370]();
          if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2381CA1FC();
            v5 = v83;
          }

          sub_2381CA20C();

          v25 = v94;
          v29 = v90;
        }

        else
        {

          v25 = MEMORY[0x277D84F90];
          v29 = v90;
        }
      }

      else
      {

        v25 = MEMORY[0x277D84F90];
        v29 = v90;
        v5 = v83;
      }
    }

    else
    {

      v25 = MEMORY[0x277D84F90];
    }
  }

  v42 = *(v92 + v12);
  if (!v42)
  {
    goto LABEL_41;
  }

  v43 = v42;
  v44 = sub_2381C9C1C();

  if (v44)
  {
    v45 = sub_2381CA00C();

    sub_2381CA04C();
    v46 = sub_2381CA03C();
    if (!*(v45 + 16))
    {

      goto LABEL_29;
    }

    v82 = v8;
    v48 = sub_2381C38BC(v46, v47);
    v50 = v49;

    if (v50)
    {
      v51 = *(*(v45 + 56) + 8 * v48);

      v52 = swift_dynamicCastClass();
      v5 = v83;
      if (v52)
      {
        v53 = v51;
        MEMORY[0x2383EB370]();
        v8 = v82;
        if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2381CA1FC();
          v5 = v83;
        }

        sub_2381CA20C();

        v25 = v94;
        goto LABEL_29;
      }
    }

    else
    {

      v5 = v83;
    }

    v8 = v82;
  }

LABEL_29:
  v54 = *(v92 + v12);
  if (v54)
  {
    v55 = v54;
    v56 = sub_2381C9C1C();

    if (v56)
    {
      v57 = sub_2381CA00C();

      sub_2381CA04C();
      v58 = sub_2381CA02C();
      if (*(v57 + 16))
      {
        v82 = v8;
        v60 = sub_2381C38BC(v58, v59);
        v62 = v61;

        if (v62)
        {
          v63 = *(*(v57 + 56) + 8 * v60);

          v64 = swift_dynamicCastClass();
          v5 = v83;
          if (v64)
          {
            v65 = v63;
            MEMORY[0x2383EB370]();
            v8 = v82;
            if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_2381CA1FC();
              v5 = v83;
            }

            sub_2381CA20C();

            v25 = v94;
            v29 = v90;
            goto LABEL_41;
          }
        }

        else
        {

          v5 = v83;
        }

        v8 = v82;
        v29 = v90;
      }

      else
      {
      }
    }
  }

LABEL_41:
  v85(v8, v92 + v84, v5);
  v66 = sub_2381CA08C();
  v67 = sub_2381CA2DC();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = v25;
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v93 = v70;
    *v69 = 136315138;
    v71 = sub_2381CA04C();

    v73 = MEMORY[0x2383EB3A0](v72, v71);
    v82 = v8;
    v74 = v73;
    v76 = v75;

    v77 = sub_2381C3094(v74, v76, &v93);

    *(v69 + 4) = v77;
    v29 = v90;
    _os_log_impl(&dword_23819C000, v66, v67, "Requesting motion states with actuators: %s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v70);
    MEMORY[0x2383EBBE0](v70, -1, -1);
    v78 = v69;
    v25 = v68;
    MEMORY[0x2383EBBE0](v78, -1, -1);

    v79 = v87(v82, v83);
  }

  else
  {

    v79 = v87(v8, v5);
  }

  v80 = MEMORY[0x28223BE20](v79);
  *(&v81 - 2) = v92;
  *(&v81 - 1) = v25;
  (*(v88 + 104))(v29, *MEMORY[0x277D85778], v2, v80);

  sub_2381CA2AC();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_2381ACC64()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3900, &qword_2381CC908);
  v19 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v18 = &v16 - v3;
  v4 = sub_2381CA0AC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v1 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v4, v6);
  v9 = sub_2381CA08C();
  v10 = sub_2381CA2BC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v17 = v2;
    v12 = v11;
    *v11 = 0;
    _os_log_impl(&dword_23819C000, v9, v10, "API: getTrackingStates", v11, 2u);
    v2 = v17;
    MEMORY[0x2383EBBE0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v13 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  if (*(v1 + v13))
  {
    type metadata accessor for DockAccessory.TrackingState(0);
    (*(v19 + 104))(v18, *MEMORY[0x277D85778], v2);
    return sub_2381CA2AC();
  }

  else
  {
    sub_2381A319C();
    swift_allocError();
    *v15 = 1;
    return swift_willThrow();
  }
}

void sub_2381ACF4C(uint64_t a1@<X8>)
{
  v71 = sub_2381CA0AC();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2381C9BBC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v82 = v1;
  v10 = *(v1 + v9);
  v11 = 0.0;
  if (!v10 || (v12 = v10, v13 = sub_2381C9C1C(), v12, !v13))
  {
    v30 = 0.0;
    v31 = 1;
    v32 = 0.0;
    v33 = 0.0;
    v34 = 0.0;
    v35 = 0.0;
    v36 = 1;
    v37 = 0.0;
    v38 = 0.0;
    v39 = 1;
    v40 = 0.0;
    goto LABEL_11;
  }

  v14 = *(v82 + v9);
  if (!v14)
  {
    goto LABEL_40;
  }

  v15 = v14;
  v16 = sub_2381C9C1C();

  if (!v16)
  {
LABEL_41:
    __break(1u);
    return;
  }

  v17 = sub_2381C9E0C();
  v18 = v2;
  if (!v2)
  {
    v44 = v17;
    v68 = 0;

    v81 = *(v44 + 16);
    if (v81)
    {
      v45 = 0;
      v40 = 0.0;
      v38 = 0.0;
      v37 = 0.0;
      v79 = (v6 + 8);
      v80 = v6 + 16;
      v72 = 1;
      v73 = 1;
      v74 = 0.0;
      v75 = 0.0;
      v76 = 0.0;
      v77 = 0.0;
      v86 = 1;
      v30 = 0.0;
      v78 = v44;
      while (1)
      {
        if (v45 >= *(v44 + 16))
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        (*(v6 + 16))(v8, v44 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v45, v5);
        sub_2381C9B7C();
        v47 = v46;
        sub_2381C9B6C();
        if (v47 > v48)
        {
          goto LABEL_39;
        }

        v49 = v48;
        sub_2381C9BAC();
        if (v50 < 0.0 || v49 <= v47)
        {

          sub_2381A319C();
          v18 = swift_allocError();
          *v67 = 3;
          swift_willThrow();
          (*v79)(v8, v5);
          goto LABEL_7;
        }

        v51 = v50;
        v52 = sub_2381C9B9C();
        v54 = v53;
        sub_2381CA04C();
        if (v52 == sub_2381CA01C() && v54 == v55)
        {
          break;
        }

        v56 = sub_2381CA40C();

        if (v56)
        {
          goto LABEL_25;
        }

LABEL_26:
        v57 = sub_2381C9B9C();
        v59 = v58;
        if (v57 == sub_2381CA03C() && v59 == v60)
        {

LABEL_30:
          v73 = 0;
          v77 = -v49;
          v75 = -v47;
          v74 = v51;
          goto LABEL_31;
        }

        v61 = sub_2381CA40C();

        if (v61)
        {
          goto LABEL_30;
        }

LABEL_31:
        v62 = sub_2381C9B9C();
        v64 = v63;
        if (v62 == sub_2381CA02C() && v64 == v65)
        {

          (*v79)(v8, v5);
        }

        else
        {
          v66 = sub_2381CA40C();

          (*v79)(v8, v5);
          if ((v66 & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        v86 = 0;
        v11 = v47;
        v30 = v49;
        v76 = v51;
LABEL_16:
        ++v45;
        v44 = v78;
        if (v81 == v45)
        {
          goto LABEL_36;
        }
      }

LABEL_25:
      v72 = 0;
      v37 = v47;
      v38 = v49;
      v40 = v51;
      goto LABEL_26;
    }

    v86 = 1;
    v30 = 0.0;
    v76 = 0.0;
    v77 = 0.0;
    v75 = 0.0;
    v74 = 0.0;
    v73 = 1;
    v37 = 0.0;
    v38 = 0.0;
    v72 = 1;
    v40 = 0.0;
LABEL_36:

    v32 = v76;
    v33 = v77;
    v31 = v86;
    v34 = v75;
    v35 = v74;
    v36 = v73;
    v39 = v72;
LABEL_11:
    v41 = v39 & 1;
    v85 = v41;
    v42 = v36 & 1;
    v84 = v42;
    v43 = v31 & 1;
    v83 = v43;
    *a1 = v37;
    *(a1 + 8) = v38;
    *(a1 + 16) = v40;
    *(a1 + 24) = v41;
    *(a1 + 32) = v33;
    *(a1 + 40) = v34;
    *(a1 + 48) = v35;
    *(a1 + 56) = v42;
    *(a1 + 64) = v11;
    *(a1 + 72) = v30;
    *(a1 + 80) = v32;
    *(a1 + 88) = v43;
    return;
  }

LABEL_7:
  v19 = v70;
  v20 = v69;
  v21 = v71;
  (*(v70 + 16))(v69, v82 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v71);
  v22 = v18;
  v23 = sub_2381CA08C();
  v24 = sub_2381CA2DC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    v27 = v18;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 4) = v28;
    *v26 = v28;
    _os_log_impl(&dword_23819C000, v23, v24, "Caught err %@ and returning public", v25, 0xCu);
    sub_2381A6070(v26, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v26, -1, -1);
    MEMORY[0x2383EBBE0](v25, -1, -1);
  }

  (*(v19 + 8))(v20, v21);
  sub_2381A319C();
  swift_allocError();
  sub_23819FD88(v18, v29);
  swift_willThrow();
}

uint64_t sub_2381AD6D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2381CA0AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2381CA09C();
  v10 = (v2 + OBJC_IVAR____TtC7DockKit13DockAccessory_firmwareVersion);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v2 + OBJC_IVAR____TtC7DockKit13DockAccessory_hardwareModel);
  *v11 = 0;
  v11[1] = 0;
  *(v2 + OBJC_IVAR____TtC7DockKit13DockAccessory__framingMode) = 0;
  v12 = OBJC_IVAR____TtC7DockKit13DockAccessory__framingModeLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33F8, &qword_2381CB298);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v3 + v12) = v13;
  v14 = v3 + OBJC_IVAR____TtC7DockKit13DockAccessory__roi;
  *v14 = 0;
  *(v14 + 8) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v14 + 16) = _Q0;
  v20 = OBJC_IVAR____TtC7DockKit13DockAccessory__roiLock;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v3 + v20) = v21;
  *(v3 + OBJC_IVAR____TtC7DockKit13DockAccessory__tracking) = 0;
  v22 = OBJC_IVAR____TtC7DockKit13DockAccessory__orientationProgressLock;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v3 + v22) = v23;
  *(v3 + OBJC_IVAR____TtC7DockKit13DockAccessory__orientationProgress) = 0;
  sub_2381C993C();
  v24 = OBJC_IVAR____TtC7DockKit13DockAccessory__animateCommandLock;
  sub_2381CA07C();
  *(v3 + v24) = sub_2381CA06C();
  sub_2381C993C();
  *(v3 + OBJC_IVAR____TtC7DockKit13DockAccessory__maxPositionFrequency) = 0x4000000000000000;
  *(v3 + OBJC_IVAR____TtC7DockKit13DockAccessory__maxAnimateFrequency) = 0x4000000000000000;
  v25 = OBJC_IVAR____TtC7DockKit13DockAccessory_trackingSummaryLock;
  *(v3 + v25) = sub_2381CA06C();
  *(v3 + OBJC_IVAR____TtC7DockKit13DockAccessory_publishSummaryPeriod) = 0x3FA999999999999ALL;
  sub_2381C993C();
  v26 = OBJC_IVAR____TtC7DockKit13DockAccessory_allocatedLock;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v3 + v26) = v27;
  *(v3 + OBJC_IVAR____TtC7DockKit13DockAccessory_accessory) = 0;
  *(v3 + OBJC_IVAR____TtC7DockKit13DockAccessory_helper) = 0;
  sub_2381C4208(a1, v3 + OBJC_IVAR____TtC7DockKit13DockAccessory_identifier, type metadata accessor for DockAccessory.Identifier);
  if (a2 && (sub_2381C9C4C(), (v28 = swift_dynamicCastClass()) != 0))
  {
    v29 = v28;
    v30 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
    swift_beginAccess();
    *(v3 + v30) = v29;
    swift_unknownObjectRetain();
    v31 = v29;
    v32 = sub_2381C9AFC();
    v34 = v33;

    v35 = (v3 + OBJC_IVAR____TtC7DockKit13DockAccessory_firmwareVersion);
    swift_beginAccess();
    *v35 = v32;
    v35[1] = v34;

    swift_beginAccess();
    v36 = *(v3 + v30);
    if (v36)
    {
      swift_endAccess();
      v37 = v36;
      v36 = sub_2381C9B1C();
      v39 = v38;
      swift_unknownObjectRelease();

      sub_2381C4AAC(a1, type metadata accessor for DockAccessory.Identifier);
    }

    else
    {
      sub_2381C4AAC(a1, type metadata accessor for DockAccessory.Identifier);
      swift_endAccess();
      swift_unknownObjectRelease();
      v39 = 0;
    }

    v43 = (v3 + OBJC_IVAR____TtC7DockKit13DockAccessory_hardwareModel);
    swift_beginAccess();
    *v43 = v36;
    v43[1] = v39;
  }

  else
  {
    (*(v7 + 16))(v9, v3 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v6);
    v40 = sub_2381CA08C();
    v41 = sub_2381CA2DC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_23819C000, v40, v41, "No stand provided, cannot use this object for IPC", v42, 2u);
      MEMORY[0x2383EBBE0](v42, -1, -1);
    }

    swift_unknownObjectRelease();
    sub_2381C4AAC(a1, type metadata accessor for DockAccessory.Identifier);
    (*(v7 + 8))(v9, v6);
  }

  return v3;
}

uint64_t DockAccessory.deinit()
{
  v1 = v0;
  v2 = sub_2381CA0AC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v2, v4);
  v8 = sub_2381CA08C();
  v9 = sub_2381CA2DC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23819C000, v8, v9, "DockAccessory de-init: cleaning up", v10, 2u);
    MEMORY[0x2383EBBE0](v10, -1, -1);
  }

  v11 = *(v3 + 8);
  v11(v6, v2);
  v12 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v13 = *(v1 + v12);
  if (v13)
  {
    v14 = v13;
    sub_2381C9BDC();

    v15 = *(v1 + v12);
    if (v15)
    {
      v16 = v15;
      sub_2381C9AEC();
    }
  }

  v11((v1 + v7), v2);
  sub_2381C4AAC(v1 + OBJC_IVAR____TtC7DockKit13DockAccessory_identifier, type metadata accessor for DockAccessory.Identifier);

  v17 = OBJC_IVAR____TtC7DockKit13DockAccessory__lastOrientationCommandTime;
  v18 = sub_2381C998C();
  v19 = *(*(v18 - 8) + 8);
  v19(v1 + v17, v18);

  v19(v1 + OBJC_IVAR____TtC7DockKit13DockAccessory__lastAnimateCommandTime, v18);

  v19(v1 + OBJC_IVAR____TtC7DockKit13DockAccessory_lastSummaryPublishTime, v18);

  return v1;
}

uint64_t DockAccessory.__deallocating_deinit()
{
  DockAccessory.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t static DockAccessory.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DockAccessory.Identifier(0);

  return sub_2381C99AC();
}

uint64_t DockAccessory.hash(into:)(uint64_t a1)
{
  MEMORY[0x2383EB620](0);
  type metadata accessor for DockAccessory.Identifier(0);
  sub_2381C99BC();
  sub_2381C41C0(&qword_27DEF3438, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_2381CA0BC();
}

id DockAccessory.setOrientation(_:duration:relative:)(uint64_t a1, uint64_t a2, int a3, double a4, double a5, double a6)
{
  v7 = v6;
  LODWORD(v8) = a3;
  v14 = sub_2381CA0AC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v7 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v14, v16);
  v19 = sub_2381CA08C();
  v40 = sub_2381CA2BC();
  v20 = os_log_type_enabled(v19, v40);
  v42 = a1;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v41 = v8;
    v8 = v21;
    v39 = swift_slowAlloc();
    v43[0] = v39;
    *v8 = 134350082;
    *(v8 + 4) = a4;
    *(v8 + 12) = 2050;
    *(v8 + 14) = a5;
    *(v8 + 22) = 2050;
    *(v8 + 24) = a6;
    *(v8 + 32) = 2082;
    v22 = sub_2381CA4DC();
    v24 = sub_2381C3094(v22, v23, v43);
    v38 = v14;
    v25 = v7;
    v26 = v24;

    *(v8 + 34) = v26;
    v7 = v25;
    *(v8 + 42) = 1026;
    *(v8 + 44) = v41 & 1;
    _os_log_impl(&dword_23819C000, v19, v40, "API: setOrientation: %{public}f, %{public}f, %{public}f dur %{public}s, rel: %{BOOL,public}d", v8, 0x30u);
    v27 = v39;
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x2383EBBE0](v27, -1, -1);
    v28 = v8;
    LOBYTE(v8) = v41;
    MEMORY[0x2383EBBE0](v28, -1, -1);

    (*(v15 + 8))(v18, v38);
  }

  else
  {

    (*(v15 + 8))(v18, v14);
  }

  v29 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  if (*(v7 + v29))
  {
    if (qword_27DEF32C0 != -1)
    {
      swift_once();
    }

    v30 = qword_27DEF32C8;
    v31 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
    v32 = *(qword_27DEF32C8 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock);

    os_unfair_lock_lock(v32 + 4);

    v33 = *(v30 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled);
    v34 = *(v30 + v31);

    os_unfair_lock_unlock(v34 + 4);

    if (v33)
    {
      return sub_2381AE3F0(v42, a2, v8 & 1, a4, a5, a6);
    }

    else
    {
      result = sub_2381CA38C();
      __break(1u);
    }
  }

  else
  {
    sub_2381A319C();
    swift_allocError();
    *v36 = 1;
    return swift_willThrow();
  }

  return result;
}

id sub_2381AE3F0(uint64_t a1, uint64_t a2, int a3, double a4, double a5, double a6)
{
  v7 = v6;
  v72 = a3;
  v69 = a1;
  v70 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  MEMORY[0x28223BE20](v8 - 8);
  v71 = &v67 - v9;
  v10 = sub_2381C998C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_2381CA0AC();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v68 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v67 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v67 - v19;
  v21 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v22 = *(v6 + v21);
  if (!v22 || (v23 = v22, v24 = sub_2381C9C2C(), v23, (v24 & 1) == 0))
  {
    v37 = v73;
    v38 = v74;
    (*(v73 + 16))(v20, v7 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v74);
    v39 = sub_2381CA08C();
    v40 = sub_2381CA2DC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_23819C000, v39, v40, "Tracking button off, motors disabled", v41, 2u);
      MEMORY[0x2383EBBE0](v41, -1, -1);
    }

    (*(v37 + 8))(v20, v38);
    v36 = 2;
    goto LABEL_10;
  }

  v25 = OBJC_IVAR____TtC7DockKit13DockAccessory__orientationProgressLock;
  v26 = *(v7 + OBJC_IVAR____TtC7DockKit13DockAccessory__orientationProgressLock);

  os_unfair_lock_lock(v26 + 4);

  v27 = OBJC_IVAR____TtC7DockKit13DockAccessory__lastOrientationCommandTime;
  swift_beginAccess();
  (*(v11 + 16))(v13, v7 + v27, v10);
  sub_2381C995C();
  v29 = v28;
  (*(v11 + 8))(v13, v10);
  if (fabs(v29) < 1.0 / *(v7 + OBJC_IVAR____TtC7DockKit13DockAccessory__maxPositionFrequency))
  {
    v30 = v73;
    v31 = v74;
    (*(v73 + 16))(v17, v7 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v74);
    v32 = sub_2381CA08C();
    v33 = sub_2381CA2BC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_23819C000, v32, v33, "rate limiting set orientation API", v34, 2u);
      MEMORY[0x2383EBBE0](v34, -1, -1);
    }

    (*(v30 + 8))(v17, v31);
    v35 = *(v7 + v25);

    os_unfair_lock_unlock(v35 + 4);

    v36 = 7;
LABEL_10:
    sub_2381A319C();
    swift_allocError();
    *v42 = v36;
    return swift_willThrow();
  }

  sub_2381C997C();
  swift_beginAccess();
  (*(v11 + 40))(v7 + v27, v13, v10);
  swift_endAccess();
  v44 = OBJC_IVAR____TtC7DockKit13DockAccessory__orientationProgress;
  v45 = *(v7 + OBJC_IVAR____TtC7DockKit13DockAccessory__orientationProgress);
  if (v45 && ([v45 isCancelled] & 1) == 0)
  {
    result = *(v7 + v44);
    if (!result)
    {
      __break(1u);
      return result;
    }

    if (([result isFinished] & 1) == 0)
    {
      v46 = v73;
      v47 = v74;
      (*(v73 + 16))(v68, v7 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v74);
      v48 = sub_2381CA08C();
      v49 = sub_2381CA2DC();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_23819C000, v48, v49, "Orientation in progress, cancelling", v50, 2u);
        MEMORY[0x2383EBBE0](v50, -1, -1);
      }

      (*(v46 + 8))(v68, v47);
      v51 = *(v7 + v44);
      if (v51)
      {
        [v51 cancel];
      }
    }
  }

  v52 = *(v7 + v25);

  os_unfair_lock_unlock(v52 + 4);

  v53 = *(v7 + v21);
  if (v53)
  {
    v54 = v53;
    sub_2381C9BEC();
  }

  v55 = [objc_allocWithZone(sub_2381C9B5C()) init];
  sub_2381C9B2C();
  sub_2381C9B4C();
  sub_2381C9B3C();
  v56 = [objc_opt_self() progressWithTotalUnitCount_];
  v57 = sub_2381CA24C();
  v58 = v71;
  (*(*(v57 - 8) + 56))(v71, 1, 1, v57);
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  *(v59 + 24) = 0;
  v60 = v70;
  *(v59 + 32) = v69;
  *(v59 + 40) = v60;
  *(v59 + 48) = v7;
  *(v59 + 56) = v55;
  *(v59 + 64) = v72 & 1;
  *(v59 + 72) = v56;

  v61 = v55;
  v62 = v56;
  sub_23819DBD4(0, 0, v58, &unk_2381CC900, v59);

  v63 = *(v7 + v25);

  os_unfair_lock_lock(v63 + 4);

  v64 = *(v7 + v44);
  *(v7 + v44) = v62;
  v65 = v62;

  v66 = *(v7 + v25);

  os_unfair_lock_unlock(v66 + 4);

  return v65;
}

id DockAccessory.setOrientation(_:duration:relative:)(uint64_t a1, uint64_t a2, int a3, __n128 a4, __n128 a5)
{
  v42 = a4;
  v43 = a5;
  v9 = sub_2381CA0AC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v47 = v5;
  if (*(v5 + v13))
  {
    v39 = a3;
    v40 = a2;
    v41 = a1;
    if (qword_27DEF32C0 != -1)
    {
      swift_once();
    }

    v14 = qword_27DEF32C8;
    v15 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
    v16 = *(qword_27DEF32C8 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock);

    os_unfair_lock_lock(v16 + 4);

    v17 = *(v14 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled);
    v18 = *(v14 + v15);

    os_unfair_lock_unlock(v18 + 4);

    if (v17)
    {
      v19 = sub_2381CA2EC();
      *&v48.quaternion.vector.f64[2] = v42;
      *v48.vector.f64 = v43;
      v46[0] = v42;
      v46[1] = v43;
      SPRotation3DGetEulerAngles(&v44, v48, v46, v19);
      SPVector3DMake(&v44, *&v44, *(&v44 + 1), v45);
      v20 = v44;
      v43.n128_f64[0] = v45;
      v21 = v10;
      (*(v10 + 16))(v12, v47 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v9);
      v22 = v9;
      v23 = sub_2381CA08C();
      v24 = sub_2381CA2BC();
      v25 = os_log_type_enabled(v23, v24);
      v26 = v41;
      if (v25)
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v42.n128_u64[0] = v21;
        v29 = v28;
        *&v44 = v28;
        *v27 = 134350082;
        *(v27 + 4) = v20;
        *(v27 + 12) = 2050;
        *(v27 + 14) = *(&v20 + 1);
        *(v27 + 22) = 2050;
        *(v27 + 24) = v43.n128_u64[0];
        *(v27 + 32) = 2082;
        v30 = sub_2381CA4DC();
        v32 = sub_2381C3094(v30, v31, &v44);
        v38 = v22;
        v33 = *(&v20 + 1);
        v34 = v32;
        v26 = v41;

        *(v27 + 34) = v34;
        *(v27 + 42) = 1026;
        *(v27 + 44) = v39 & 1;
        _os_log_impl(&dword_23819C000, v23, v24, "API: setOrientationR: %{public}f, %{public}f, %{public}f dur %{public}s, rel: %{BOOL,public}d", v27, 0x30u);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x2383EBBE0](v29, -1, -1);
        MEMORY[0x2383EBBE0](v27, -1, -1);

        (*(v42.n128_u64[0] + 8))(v12, v38);
        v35 = v40;
      }

      else
      {

        (*(v10 + 8))(v12, v22);
        v35 = v40;
        v33 = *(&v20 + 1);
      }

      return sub_2381AE3F0(v26, v35, BYTE8(v20) & 1, *&v20, v33, v43.n128_f64[0]);
    }

    else
    {
      result = sub_2381CA38C();
      __break(1u);
    }
  }

  else
  {
    sub_2381A319C();
    swift_allocError();
    *v36 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2381AEFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = v13;
  *(v8 + 160) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 40) = a4;
  v9 = sub_2381CA0AC();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  v10 = sub_2381C9D6C();
  *(v8 + 104) = v10;
  *(v8 + 112) = *(v10 - 8);
  *(v8 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381AF0D4, 0, 0);
}

uint64_t sub_2381AF0D4()
{
  v1 = *(v0 + 56);
  v2 = sub_2381CA4CC();
  sub_2381CA4CC();
  v4 = v3;
  v5 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (v6 && (v7 = v6, v8 = sub_2381C9C1C(), *(v0 + 128) = v8, v7, v8))
  {
    v9 = v4 / 1.0e18 + v2;
    v11 = *(v0 + 112);
    v10 = *(v0 + 120);
    v12 = *(v0 + 104);
    v13 = *(v0 + 72);
    v14 = *(v0 + 56);
    v15 = swift_task_alloc();
    *(v0 + 136) = v15;
    *(v15 + 16) = v14;
    *(v15 + 24) = v13;
    (*(v11 + 104))(v10, *MEMORY[0x277D05BD0], v12);
    v16 = swift_task_alloc();
    *(v0 + 144) = v16;
    *v16 = v0;
    v16[1] = sub_2381AF2C4;
    v17 = *(v0 + 120);
    v18 = *(v0 + 160);
    v19 = *(v0 + 64);
    v20.n128_f64[0] = v9;

    return MEMORY[0x28215B378](v19, v18, v17, sub_2381C8748, v15, v20);
  }

  else
  {

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_2381AF2C4()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 152) = v0;

  (*(v4 + 8))(v3, v5);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2381AF4AC, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7();
  }
}

uint64_t sub_2381AF4AC()
{
  v1 = v0[19];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = v0[7];

  (*(v3 + 16))(v2, v5 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v4);
  v6 = v1;
  v7 = sub_2381CA08C();
  v8 = sub_2381CA2CC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[19];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_23819C000, v7, v8, "Caught %@ while setting orientation, canceling progress", v10, 0xCu);
    sub_2381A6070(v11, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v11, -1, -1);
    MEMORY[0x2383EBBE0](v10, -1, -1);
  }

  v14 = v0[19];
  v16 = v0[11];
  v15 = v0[12];
  v18 = v0[9];
  v17 = v0[10];

  (*(v16 + 8))(v15, v17);
  [v18 cancel];

  v19 = v0[1];

  return v19();
}

uint64_t DockAccessory.setOrientation(_:duration:relative:)(uint64_t a1, uint64_t a2, char a3, double a4, double a5, double a6)
{
  *(v7 + 72) = a2;
  *(v7 + 80) = v6;
  *(v7 + 120) = a3;
  *(v7 + 64) = a1;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 40) = a4;
  v8 = sub_2381CA0AC();
  *(v7 + 88) = v8;
  *(v7 + 96) = *(v8 - 8);
  *(v7 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381AF748, 0, 0);
}

uint64_t sub_2381AF748()
{
  v34 = v0;
  (*(*(v0 + 96) + 16))(*(v0 + 104), *(v0 + 80) + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, *(v0 + 88));
  v1 = sub_2381CA08C();
  v2 = sub_2381CA2BC();
  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);
  if (v3)
  {
    v32 = *(v0 + 120);
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v9 = *(v0 + 40);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33 = v11;
    *v10 = 134350082;
    *(v10 + 4) = v9;
    *(v10 + 12) = 2050;
    *(v10 + 14) = v8;
    *(v10 + 22) = 2050;
    *(v10 + 24) = v7;
    *(v10 + 32) = 2082;
    v12 = sub_2381CA4DC();
    v14 = sub_2381C3094(v12, v13, &v33);

    *(v10 + 34) = v14;
    *(v10 + 42) = 1026;
    *(v10 + 44) = v32;
    _os_log_impl(&dword_23819C000, v1, v2, "API: setOrientation: %{public}f, %{public}f, %{public}f dur %{public}s, rel: %{BOOL,public}d", v10, 0x30u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x2383EBBE0](v11, -1, -1);
    MEMORY[0x2383EBBE0](v10, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  v15 = *(v0 + 80);
  v16 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  if (*(v15 + v16))
  {
    if (qword_27DEF32C0 != -1)
    {
      swift_once();
    }

    v17 = qword_27DEF32C8;
    v18 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
    v19 = *(qword_27DEF32C8 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock);

    os_unfair_lock_lock(v19 + 4);

    v20 = *(v17 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled);
    v21 = *(v17 + v18);

    os_unfair_lock_unlock(v21 + 4);

    if (v20)
    {
      v22 = swift_task_alloc();
      *(v0 + 112) = v22;
      *v22 = v0;
      v22[1] = sub_2381AFB10;
      v23 = *(v0 + 72);
      v24 = *(v0 + 120);
      v25 = *(v0 + 64);
      v26 = *(v0 + 48);
      v27 = *(v0 + 56);
      v28 = *(v0 + 40);

      return sub_2381AFC3C(v25, v23, v24, v28, v26, v27);
    }

    else
    {
      return sub_2381CA38C();
    }
  }

  else
  {
    sub_2381A319C();
    swift_allocError();
    *v30 = 1;
    swift_willThrow();

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_2381AFB10(uint64_t a1)
{
  v4 = *v2;

  v6 = *(v4 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_2381AFC3C(uint64_t a1, uint64_t a2, char a3, double a4, double a5, double a6)
{
  *(v7 + 72) = a2;
  *(v7 + 80) = v6;
  *(v7 + 200) = a3;
  *(v7 + 64) = a1;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 40) = a4;
  v8 = sub_2381C9D6C();
  *(v7 + 88) = v8;
  *(v7 + 96) = *(v8 - 8);
  *(v7 + 104) = swift_task_alloc();
  v9 = sub_2381CA0AC();
  *(v7 + 112) = v9;
  *(v7 + 120) = *(v9 - 8);
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381AFD74, 0, 0);
}

uint64_t sub_2381AFD74()
{
  v1 = *(v0 + 80);
  v2 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 && (v4 = v3, v5 = sub_2381C9C2C(), v4, (v5 & 1) != 0))
  {
    v6 = *(v0 + 80);
    v7 = OBJC_IVAR____TtC7DockKit13DockAccessory__orientationProgressLock;
    *(v0 + 144) = OBJC_IVAR____TtC7DockKit13DockAccessory__orientationProgressLock;
    v8 = *(v6 + v7);
    v9 = swift_task_alloc();
    *(v9 + 16) = sub_2381C8550;
    *(v9 + 24) = v6;

    os_unfair_lock_lock(v8 + 4);
    sub_2381C9884(v10);
    os_unfair_lock_unlock(v8 + 4);

    v11 = *(v1 + v2);
    if (v11)
    {
      v12 = v11;
      sub_2381C9BEC();
    }

    v13 = [objc_allocWithZone(sub_2381C9B5C()) init];
    *(v0 + 152) = v13;
    sub_2381C9B2C();
    sub_2381C9B4C();
    sub_2381C9B3C();
    v14 = [objc_opt_self() progressWithTotalUnitCount_];
    *(v0 + 160) = v14;
    v15 = sub_2381CA4CC();
    sub_2381CA4CC();
    v17 = *(v1 + v2);
    if (v17 && (v18 = v16, v19 = v17, v20 = sub_2381C9C1C(), *(v0 + 168) = v20, v19, v20))
    {
      v21 = v18 / 1.0e18 + v15;
      v23 = *(v0 + 96);
      v22 = *(v0 + 104);
      v25 = *(v0 + 80);
      v24 = *(v0 + 88);
      v26 = swift_task_alloc();
      *(v0 + 176) = v26;
      *(v26 + 16) = v25;
      *(v26 + 24) = v14;
      (*(v23 + 104))(v22, *MEMORY[0x277D05BD0], v24);
      v27 = swift_task_alloc();
      *(v0 + 184) = v27;
      *v27 = v0;
      v27[1] = sub_2381B02A4;
      v28 = *(v0 + 104);
      v29 = *(v0 + 200);
      v30.n128_f64[0] = v21;

      return MEMORY[0x28215B378](v13, v29, v28, sub_2381C98A0, v26, v30);
    }

    else
    {
      v39 = *(v0 + 160);
      v40 = *(v0 + 80);
      v41 = *(v40 + *(v0 + 144));
      v42 = swift_task_alloc();
      *(v42 + 16) = v40;
      *(v42 + 24) = v39;
      v43 = swift_task_alloc();
      *(v43 + 16) = sub_2381C856C;
      *(v43 + 24) = v42;

      os_unfair_lock_lock(v41 + 4);
      sub_2381C9884(v44);
      os_unfair_lock_unlock(v41 + 4);

      v45 = *(v0 + 8);
      v46 = *(v0 + 160);

      return v45(v46);
    }
  }

  else
  {
    (*(*(v0 + 120) + 16))(*(v0 + 136), *(v0 + 80) + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, *(v0 + 112));
    v31 = sub_2381CA08C();
    v32 = sub_2381CA2DC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_23819C000, v31, v32, "Tracking button off, motors disabled", v33, 2u);
      MEMORY[0x2383EBBE0](v33, -1, -1);
    }

    v34 = *(v0 + 136);
    v35 = *(v0 + 112);
    v36 = *(v0 + 120);

    (*(v36 + 8))(v34, v35);
    sub_2381A319C();
    swift_allocError();
    *v37 = 2;
    swift_willThrow();

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_2381B02A4()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = v2[21];
    (*(v2[12] + 8))(v2[13], v2[11]);

    v4 = sub_2381B0554;
  }

  else
  {
    v5 = v2[21];
    (*(v2[12] + 8))(v2[13], v2[11]);

    v4 = sub_2381B0408;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2381B0408()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  v3 = *(v0 + 80);
  v4 = *(v3 + *(v0 + 144));
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_2381C856C;
  *(v6 + 24) = v5;

  os_unfair_lock_lock(v4 + 4);
  sub_2381C9884(v7);
  os_unfair_lock_unlock(v4 + 4);
  if (v1)
  {
  }

  else
  {

    v9 = *(v0 + 8);
    v10 = *(v0 + 160);

    return v9(v10);
  }
}

uint64_t sub_2381B0554()
{
  v1 = v0[24];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[10];

  (*(v3 + 16))(v2, v5 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v4);
  v6 = v1;
  v7 = sub_2381CA08C();
  v8 = sub_2381CA2DC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[24];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_23819C000, v7, v8, "caught err %@, returning public", v10, 0xCu);
    sub_2381A6070(v11, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v11, -1, -1);
    MEMORY[0x2383EBBE0](v10, -1, -1);
  }

  v14 = v0[24];
  v16 = v0[19];
  v15 = v0[20];
  v18 = v0[15];
  v17 = v0[16];
  v19 = v0[14];

  (*(v18 + 8))(v17, v19);
  sub_2381A319C();
  swift_allocError();
  sub_23819FD88(v14, v20);
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t DockAccessory.setOrientation(_:duration:relative:)(unint64_t a1, unint64_t a2, unsigned __int8 a3, __n128 a4, __n128 a5)
{
  v6[5].n128_u64[0] = a2;
  v6[5].n128_u64[1] = v5;
  v6[8].n128_u8[0] = a3;
  v6[4].n128_u64[1] = a1;
  v6[1] = a4;
  v6[2] = a5;
  v7 = sub_2381CA0AC();
  v6[6].n128_u64[0] = v7;
  v6[6].n128_u64[1] = *(v7 - 8);
  v6[7].n128_u64[0] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381B082C, 0, 0);
}

uint64_t sub_2381B082C()
{
  v44 = v0;
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    if (qword_27DEF32C0 != -1)
    {
      swift_once();
    }

    v3 = qword_27DEF32C8;
    v4 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
    v5 = *(qword_27DEF32C8 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock);

    os_unfair_lock_lock(v5 + 4);

    v6 = *(v3 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled);
    v7 = *(v3 + v4);

    os_unfair_lock_unlock(v7 + 4);

    if (v6)
    {
      v9 = *(v0 + 104);
      v8 = *(v0 + 112);
      v11 = *(v0 + 88);
      v10 = *(v0 + 96);
      v38 = *(v0 + 16);
      v39 = *(v0 + 32);
      v12 = sub_2381CA2EC();
      *&v46.quaternion.vector.f64[2] = v38;
      *v46.vector.f64 = v39;
      v41[0] = v38;
      v41[1] = v39;
      SPRotation3DGetEulerAngles(v42, v46, v41, v12);
      SPVector3DMake(v42, v42[0], v42[1], v43);
      v14 = v42[0];
      v13 = v42[1];
      v15 = v43;
      (*(v9 + 16))(v8, v11 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v10);
      v16 = sub_2381CA08C();
      v17 = sub_2381CA2BC();
      v18 = os_log_type_enabled(v16, v17);
      v20 = *(v0 + 104);
      v19 = *(v0 + 112);
      v21 = *(v0 + 96);
      if (v18)
      {
        v36 = *(v0 + 128);
        v37 = *(v0 + 112);
        v22 = v14;
        v40 = v13;
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *&v42[0] = v24;
        *v23 = 134350082;
        *(v23 + 4) = v14;
        *(v23 + 12) = 2050;
        *(v23 + 14) = v40;
        *(v23 + 22) = 2050;
        *(v23 + 24) = v15;
        *(v23 + 32) = 2082;
        v25 = sub_2381CA4DC();
        v27 = sub_2381C3094(v25, v26, v42);

        *(v23 + 34) = v27;
        v14 = v22;
        *(v23 + 42) = 1026;
        *(v23 + 44) = v36;
        _os_log_impl(&dword_23819C000, v16, v17, "API: setOrientationR: %{public}f, %{public}f, %{public}f dur %{public}s, rel: %{BOOL,public}d", v23, 0x30u);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x2383EBBE0](v24, -1, -1);
        v28 = v23;
        v13 = v40;
        MEMORY[0x2383EBBE0](v28, -1, -1);

        (*(v20 + 8))(v37, v21);
      }

      else
      {

        (*(v20 + 8))(v19, v21);
      }

      v32 = swift_task_alloc();
      *(v0 + 120) = v32;
      *v32 = v0;
      v32[1] = sub_2381B0C44;
      v33 = *(v0 + 80);
      v34 = *(v0 + 128);
      v35 = *(v0 + 72);

      return sub_2381AFC3C(v35, v33, v34, v14, v13, v15);
    }

    else
    {
      return sub_2381CA38C();
    }
  }

  else
  {
    sub_2381A319C();
    swift_allocError();
    *v29 = 1;
    swift_willThrow();

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_2381B0C44(uint64_t a1)
{
  v4 = *v2;

  v6 = *(v4 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_2381B0D70(uint64_t a1)
{
  v2 = sub_2381CA0AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v8 = sub_2381C998C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC7DockKit13DockAccessory__lastOrientationCommandTime;
  swift_beginAccess();
  (*(v9 + 16))(v11, a1 + v12, v8);
  sub_2381C995C();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  if (fabs(v14) >= 1.0 / *(a1 + OBJC_IVAR____TtC7DockKit13DockAccessory__maxPositionFrequency))
  {
    sub_2381C997C();
    swift_beginAccess();
    (*(v9 + 40))(a1 + v12, v11, v8);
    swift_endAccess();
    v20 = OBJC_IVAR____TtC7DockKit13DockAccessory__orientationProgress;
    result = *(a1 + OBJC_IVAR____TtC7DockKit13DockAccessory__orientationProgress);
    if (result)
    {
      result = [result isCancelled];
      if ((result & 1) == 0)
      {
        result = *(a1 + v20);
        if (result)
        {
          result = [result isFinished];
          if ((result & 1) == 0)
          {
            (*(v3 + 16))(v25, a1 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v2);
            v21 = sub_2381CA08C();
            v22 = sub_2381CA2DC();
            if (os_log_type_enabled(v21, v22))
            {
              v23 = swift_slowAlloc();
              *v23 = 0;
              _os_log_impl(&dword_23819C000, v21, v22, "Orientation in progress, cancelling", v23, 2u);
              MEMORY[0x2383EBBE0](v23, -1, -1);
            }

            (*(v3 + 8))(v25, v2);
            result = *(a1 + v20);
            if (result)
            {
              return [result cancel];
            }
          }
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  else
  {
    (*(v3 + 16))(v7, a1 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v2);
    v15 = sub_2381CA08C();
    v16 = sub_2381CA2BC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_23819C000, v15, v16, "rate limiting set orientation API", v17, 2u);
      MEMORY[0x2383EBBE0](v17, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    sub_2381A319C();
    swift_allocError();
    *v18 = 7;
    return swift_willThrow();
  }

  return result;
}

char *sub_2381B1180(uint64_t a1, uint64_t a2, void *a3)
{
  v41 = a3;
  v42 = sub_2381CA0AC();
  v4 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  v16 = sub_2381C9D1C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2381C9DEC();
  result = (*(v17 + 88))(v19, v16);
  if (result == *MEMORY[0x277D05BB0])
  {
    return result;
  }

  if (result == *MEMORY[0x277D05BC8])
  {
    v21 = v42;
    (*(v4 + 16))(v12, a2 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v42);
    v22 = sub_2381CA08C();
    v23 = sub_2381CA2DC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_23819C000, v22, v23, "completed: increase completed unit count", v24, 2u);
      MEMORY[0x2383EBBE0](v24, -1, -1);
    }

    (*(v4 + 8))(v12, v21);
    v25 = v41;
    result = [v41 completedUnitCount];
    if (!__OFADD__(result, 1))
    {
      return [v25 setCompletedUnitCount_];
    }

    __break(1u);
    return result;
  }

  if (result == *MEMORY[0x277D05BC0])
  {
    v26 = v42;
    (*(v4 + 16))(v15, a2 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v42);
    v27 = sub_2381CA08C();
    v28 = sub_2381CA2DC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_23819C000, v27, v28, "canceled: canceling progress", v29, 2u);
      MEMORY[0x2383EBBE0](v29, -1, -1);
    }

    (*(v4 + 8))(v15, v26);
    return [v41 cancel];
  }

  v30 = *(v4 + 16);
  v31 = a2 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  if (result == *MEMORY[0x277D05BB8])
  {
    v32 = v42;
    v30(v9, v31, v42);
    v33 = sub_2381CA08C();
    v34 = sub_2381CA2DC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_23819C000, v33, v34, "failed: canceling progress", v35, 2u);
      MEMORY[0x2383EBBE0](v35, -1, -1);
    }

    (*(v4 + 8))(v9, v32);
    return [v41 cancel];
  }

  v36 = v42;
  v30(v6, v31, v42);
  v37 = sub_2381CA08C();
  v38 = sub_2381CA2DC();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_23819C000, v37, v38, "default: canceling progress", v39, 2u);
    v40 = v39;
    v36 = v42;
    MEMORY[0x2383EBBE0](v40, -1, -1);
  }

  (*(v4 + 8))(v6, v36);
  [v41 cancel];
  return (*(v17 + 8))(v19, v16);
}

uint64_t DockAccessory.setAngularVelocity(_:)(double a1, double a2, double a3)
{
  *(v4 + 64) = v3;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 40) = a1;
  v5 = sub_2381CA0AC();
  *(v4 + 72) = v5;
  *(v4 + 80) = *(v5 - 8);
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381B1798, 0, 0);
}

uint64_t sub_2381B1798()
{
  v1 = *(v0 + 13);
  v2 = *(v0 + 9);
  v3 = *(v0 + 10);
  v4 = *(v0 + 8);
  v5 = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  *(v0 + 14) = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  v6 = *(v3 + 16);
  *(v0 + 15) = v6;
  *(v0 + 16) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v46 = v4;
  v6(v1, v4 + v5, v2);
  v7 = sub_2381CA08C();
  v8 = sub_2381CA2BC();
  if (os_log_type_enabled(v7, v8))
  {
    v10 = *(v0 + 6);
    v9 = *(v0 + 7);
    v11 = *(v0 + 5);
    v12 = swift_slowAlloc();
    *v12 = 134349568;
    *(v12 + 4) = v11;
    *(v12 + 12) = 2050;
    *(v12 + 14) = v10;
    *(v12 + 22) = 2050;
    *(v12 + 24) = v9;
    _os_log_impl(&dword_23819C000, v7, v8, "API: setAngularVelocity: %{public}f, %{public}f, %{public}f", v12, 0x20u);
    MEMORY[0x2383EBBE0](v12, -1, -1);
  }

  v13 = *(v0 + 13);
  v14 = *(v0 + 9);
  v15 = *(v0 + 10);
  v16 = *(v0 + 8);

  v17 = *(v15 + 8);
  *(v0 + 17) = v17;
  *(v0 + 18) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v13, v14);
  v18 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v19 = *(v16 + v18);
  if (!v19)
  {
    v37 = 1;
LABEL_18:
    sub_2381A319C();
    swift_allocError();
    *v43 = v37;
    swift_willThrow();

    v44 = *(v0 + 1);
    goto LABEL_19;
  }

  v20 = v19;
  v21 = sub_2381C9C2C();

  if ((v21 & 1) == 0)
  {
    v6(*(v0 + 12), v46 + v5, *(v0 + 9));
    v38 = sub_2381CA08C();
    v39 = sub_2381CA2DC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_23819C000, v38, v39, "Tracking button off, motors disabled", v40, 2u);
      MEMORY[0x2383EBBE0](v40, -1, -1);
    }

    v41 = *(v0 + 12);
    v42 = *(v0 + 9);

    v17(v41, v42);
    v37 = 2;
    goto LABEL_18;
  }

  if (qword_27DEF32C0 != -1)
  {
    swift_once();
  }

  v22 = qword_27DEF32C8;
  v23 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
  v24 = *(qword_27DEF32C8 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock);

  os_unfair_lock_lock(v24 + 4);

  v25 = *(v22 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled);
  v26 = *(v22 + v23);

  os_unfair_lock_unlock(v26 + 4);

  if ((v25 & 1) == 0)
  {
    return sub_2381CA38C();
  }

  v27 = *(v16 + v18);
  if (v27)
  {
    v28 = v27;
    sub_2381C9BEC();

    v29 = *(v16 + v18);
    if (v29)
    {
      v30 = v29;
      v31 = sub_2381C9C1C();
      *(v0 + 19) = v31;

      if (v31)
      {
        v32 = -v0[5];
        v33 = swift_task_alloc();
        *(v0 + 20) = v33;
        *v33 = v0;
        v33[1] = sub_2381B1C50;
        v34.n128_f64[0] = v0[6];
        v35.n128_f64[0] = v0[7];
        v36.n128_f64[0] = v32;

        return MEMORY[0x28215B3A0](v34, v36, v35);
      }
    }
  }

  v44 = *(v0 + 1);
LABEL_19:

  return v44();
}

uint64_t sub_2381B1C50()
{
  v2 = *v1;
  *(v2 + 168) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2381B1DAC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2381B1DAC()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 120);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);

  v2(v4, v6 + v3, v5);
  v7 = v1;
  v8 = sub_2381CA08C();
  v9 = sub_2381CA2DC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 168);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_23819C000, v8, v9, "caught err %@, returning public", v11, 0xCu);
    sub_2381A6070(v12, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v12, -1, -1);
    MEMORY[0x2383EBBE0](v11, -1, -1);
  }

  v15 = *(v0 + 168);
  v16 = *(v0 + 136);
  v17 = *(v0 + 88);
  v18 = *(v0 + 72);

  v16(v17, v18);
  sub_2381A319C();
  swift_allocError();
  sub_23819FD88(v15, v19);
  swift_willThrow();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t DockAccessory.setLimits(_:)(uint64_t *a1)
{
  v3 = sub_2381CA0AC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v112 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v111 = &v81 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF35D0, &qword_2381CB498);
  MEMORY[0x28223BE20](v8 - 8);
  v85 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v86 = &v81 - v11;
  MEMORY[0x28223BE20](v12);
  v90 = &v81 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v81 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v81 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v81 - v21;
  v23 = *a1;
  v103 = a1[1];
  v104 = v23;
  v102 = a1[2];
  v101 = *(a1 + 24);
  v24 = a1[5];
  v97 = a1[4];
  v98 = v24;
  v99 = a1[6];
  v109 = *(a1 + 56);
  v25 = a1[9];
  v93 = a1[8];
  v92 = v25;
  v91 = a1[10];
  v100 = *(a1 + 88);
  v26 = sub_2381C9BBC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v29 = v27 + 56;
  v110 = v22;
  v28(v22, 1, 1, v26);
  v28(v19, 1, 1, v26);
  v89 = v26;
  v88 = v28;
  v87 = v29;
  v28(v16, 1, 1, v26);
  if (qword_27DEF32C0 != -1)
  {
    swift_once();
  }

  v108 = v16;
  v106 = v19;
  v30 = qword_27DEF32C8;
  v31 = OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock;
  v32 = *(qword_27DEF32C8 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabledLock);

  os_unfair_lock_lock(v32 + 4);

  v33 = *(v30 + OBJC_IVAR____TtC7DockKit20DockAccessoryManager__systemDisabled);
  v34 = *(v30 + v31);

  os_unfair_lock_unlock(v34 + 4);

  if ((v33 & 1) == 0)
  {
    result = sub_2381CA38C();
    __break(1u);
    return result;
  }

  v36 = v4 + 16;
  v35 = *(v4 + 16);
  v107 = v1;
  v94 = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  v37 = v1 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  v38 = v111;
  v95 = v35;
  v35(v111, v37, v3);
  v39 = sub_2381CA08C();
  v40 = v4;
  v41 = sub_2381CA2BC();
  v42 = os_log_type_enabled(v39, v41);
  v96 = v40;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v117 = v83;
    *v43 = 136446722;
    v113 = v104;
    v114 = v103;
    v115 = v102;
    v44 = v101;
    v116 = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF35D8, &qword_2381CB4A0);
    v84 = v36;
    v45 = sub_2381CA10C();
    v47 = sub_2381C3094(v45, v46, &v117);

    *(v43 + 4) = v47;
    v82 = v3;
    *(v43 + 12) = 2082;
    v113 = v97;
    v114 = v98;
    v115 = v99;
    v116 = v109;
    v48 = sub_2381CA10C();
    v50 = sub_2381C3094(v48, v49, &v117);

    *(v43 + 14) = v50;
    *(v43 + 22) = 2082;
    v113 = v93;
    v114 = v92;
    v115 = v91;
    v116 = v100;
    v51 = sub_2381CA10C();
    v53 = sub_2381C3094(v51, v52, &v117);

    *(v43 + 24) = v53;
    _os_log_impl(&dword_23819C000, v39, v41, "API: setLimits: %{public}s, %{public}s, %{public}s", v43, 0x20u);
    v54 = v83;
    swift_arrayDestroy();
    MEMORY[0x2383EBBE0](v54, -1, -1);
    MEMORY[0x2383EBBE0](v43, -1, -1);

    v55 = *(v40 + 8);
    v56 = v82;
    v55(v111, v82);
    v57 = v105;
    v58 = v106;
    if (v44)
    {
      goto LABEL_6;
    }
  }

  else
  {

    v55 = *(v40 + 8);
    v55(v38, v3);
    v56 = v3;
    v57 = v105;
    v58 = v106;
    if (v101)
    {
LABEL_6:
      if (v109)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  sub_2381CA04C();
  sub_2381CA01C();
  v59 = v90;
  sub_2381C9B8C();
  if (v57)
  {
    goto LABEL_15;
  }

  v60 = v110;
  sub_2381A6070(v110, &qword_27DEF35D0, &qword_2381CB498);
  v88(v59, 0, 1, v89);
  sub_2381C4E68(v59, v60, &qword_27DEF35D0, &qword_2381CB498);
  if ((v109 & 1) == 0)
  {
LABEL_12:
    sub_2381CA04C();
    sub_2381CA03C();
    v61 = v86;
    sub_2381C9B8C();
    if (!v57)
    {
      sub_2381A6070(v58, &qword_27DEF35D0, &qword_2381CB498);
      v88(v61, 0, 1, v89);
      sub_2381C4E68(v61, v58, &qword_27DEF35D0, &qword_2381CB498);
      if (v100)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

LABEL_15:
    v63 = v57;
    goto LABEL_16;
  }

LABEL_7:
  if (v100)
  {
    goto LABEL_22;
  }

LABEL_14:
  sub_2381CA04C();
  sub_2381CA02C();
  v62 = v85;
  sub_2381C9B8C();
  if (v57)
  {
    goto LABEL_15;
  }

  v74 = v108;
  sub_2381A6070(v108, &qword_27DEF35D0, &qword_2381CB498);
  v88(v62, 0, 1, v89);
  sub_2381C4E68(v62, v74, &qword_27DEF35D0, &qword_2381CB498);
LABEL_22:
  v75 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  v76 = v107;
  swift_beginAccess();
  v77 = *(v76 + v75);
  if (v77)
  {
    swift_endAccess();
    v78 = v77;
    v79 = sub_2381C9C1C();

    if (!v79)
    {
LABEL_19:
      v72 = v108;
LABEL_20:
      sub_2381A6070(v72, &qword_27DEF35D0, &qword_2381CB498);
      sub_2381A6070(v58, &qword_27DEF35D0, &qword_2381CB498);
      return sub_2381A6070(v110, &qword_27DEF35D0, &qword_2381CB498);
    }

    v80 = v108;
    sub_2381C9E1C();
    if (!v57)
    {

      v72 = v80;
      goto LABEL_20;
    }

    v63 = v57;
LABEL_16:
    v95(v112, v107 + v94, v56);
    v64 = v63;
    v65 = sub_2381CA08C();
    v66 = sub_2381CA2DC();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v67 = 138412290;
      v69 = v63;
      v70 = _swift_stdlib_bridgeErrorToNSError();
      *(v67 + 4) = v70;
      *v68 = v70;
      _os_log_impl(&dword_23819C000, v65, v66, "Caught err %@ and returning public", v67, 0xCu);
      sub_2381A6070(v68, &qword_27DEF32F0, &qword_2381CB490);
      MEMORY[0x2383EBBE0](v68, -1, -1);
      MEMORY[0x2383EBBE0](v67, -1, -1);
    }

    v55(v112, v56);
    sub_2381A319C();
    swift_allocError();
    sub_23819FD88(v63, v71);
    swift_willThrow();

    goto LABEL_19;
  }

  sub_2381A6070(v108, &qword_27DEF35D0, &qword_2381CB498);
  sub_2381A6070(v58, &qword_27DEF35D0, &qword_2381CB498);
  sub_2381A6070(v110, &qword_27DEF35D0, &qword_2381CB498);
  return swift_endAccess();
}

void sub_2381B2A6C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t))
{
  v12 = OBJC_IVAR____TtC7DockKit13DockAccessory_helper;
  if (*(v6 + OBJC_IVAR____TtC7DockKit13DockAccessory_helper) || (v13 = [objc_allocWithZone(type metadata accessor for DockAccessoryHelper(0)) init], v14 = *(v6 + v12), *(v6 + v12) = v13, v14, *(v6 + v12)))
  {
    swift_unknownObjectWeakAssign();
    v15 = *(v6 + v12);
    if (v15)
    {
      v16 = &v15[*a4];
      v17 = *v16;
      v18 = v16[1];
      *v16 = a2;
      v16[1] = a3;
      v19 = v15;
      a5(v17, v18);
      a6(a2, a3);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2381B2B84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3958, &qword_2381CC9E8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;

  sub_2381CA25C();
  v11 = sub_2381CA24C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v5 + 32))(&v13[v12], v7, v4);

  sub_23819DBD4(0, 0, v10, &unk_2381CC9F8, v13);
}

uint64_t sub_2381B2D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_2381CA0AC();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381B2E58, 0, 0);
}

uint64_t sub_2381B2E58()
{
  (*(v0[7] + 16))(v0[8], v0[5] + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v0[6]);
  v1 = sub_2381CA08C();
  v2 = sub_2381CA2DC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23819C000, v1, v2, "Stopping event feedback", v3, 2u);
    MEMORY[0x2383EBBE0](v3, -1, -1);
  }

  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];

  (*(v5 + 8))(v4, v6);
  v8 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v9 = *(v7 + v8);
  v0[9] = v9;
  if (v9)
  {
    v13 = (*MEMORY[0x277D05B30] + MEMORY[0x277D05B30]);
    v9;
    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = sub_2381B3038;

    return v13();
  }

  else
  {

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_2381B3038()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2381B317C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2381B317C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2381B31E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_2381A6008(a3, v22 - v9, &qword_27DEF33A0, &qword_2381CB200);
  v11 = sub_2381CA24C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2381A6070(v10, &qword_27DEF33A0, &qword_2381CB200);
  }

  else
  {
    sub_2381CA23C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2381CA21C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2381CA12C() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_2381A6070(a3, &qword_27DEF33A0, &qword_2381CB200);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2381A6070(a3, &qword_27DEF33A0, &qword_2381CB200);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2381B3494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3958, &qword_2381CC9E8);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v5[9] = *(v7 + 64);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381B3568, 0, 0);
}

uint64_t sub_2381B3568()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v7 = *(v4 + v6);
  (*(v3 + 16))(v1, v5, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v1, v2);
  v10 = v7;
  sub_2381B2A6C(v7, sub_2381C963C, v9, &OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_eventCallback, sub_2381C982C, sub_2381C9830);

  v11 = *(v4 + OBJC_IVAR____TtC7DockKit13DockAccessory_helper);
  v0[11] = v11;
  if (v11)
  {
    v12 = *(v4 + v6);
    v0[12] = v12;
    if (v12)
    {
      v19 = (*MEMORY[0x277D05B38] + MEMORY[0x277D05B38]);
      v12;
      v13 = v11;
      v14 = swift_task_alloc();
      v0[13] = v14;
      *v14 = v0;
      v14[1] = sub_2381B37DC;

      return v19(v13);
    }
  }

  else
  {
    sub_2381A319C();
    v16 = swift_allocError();
    *v17 = 2;
    swift_willThrow();
    sub_2381CA27C();
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_2381B37DC()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2381C989C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 96);

    v4 = *(v2 + 8);

    return v4();
  }
}

void sub_2381B3924(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3960, &qword_2381CCA00);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  if (!a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3958, &qword_2381CC9E8);
    sub_2381CA27C();
    return;
  }

  v11 = a1;
  v12 = sub_2381C9EBC();
  v13 = sub_2381C9EAC();
  v14 = *(v13 + 16);
  if (v14)
  {
    v24 = v11;
    v25 = a3;
    sub_2381C9EDC();
    v26 = v12;
    v23 = v8;
    v15 = (v8 + 8);
    v16 = v7;
    v17 = 32;
    do
    {
      v18 = a4;
      v19 = *(v13 + v17);
      v20 = v26 == sub_2381C9E6C();
      v27 = v19;
      a4 = v18;
      v28 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3958, &qword_2381CC9E8);
      sub_2381CA26C();
      (*v15)(v10, v16);
      v17 += 8;
      --v14;
    }

    while (v14);

    LOBYTE(a3) = v25;
    LOBYTE(v12) = v26;
    v7 = v16;
    v8 = v23;
    v11 = v24;
  }

  else
  {
  }

  sub_2381C9EDC();
  if (sub_2381C9E9C() == v12)
  {
    v27 = 0.0;
    v21 = 0x80;
LABEL_14:
    v28 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3958, &qword_2381CC9E8);
    sub_2381CA26C();
    (*(v8 + 8))(v10, v7);
    goto LABEL_15;
  }

  if (sub_2381C9E7C() == v12)
  {
    *&v27 = 1;
    v21 = 0x80;
    goto LABEL_14;
  }

  if (sub_2381C9E8C() == v12)
  {
    v27 = sub_2381C9ECC() / 100.0;
    v21 = 64;
    goto LABEL_14;
  }

LABEL_15:
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3958, &qword_2381CC9E8);
    sub_2381CA27C();
  }
}

uint64_t sub_2381B3BE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3940, &qword_2381CC990);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;

  sub_2381CA25C();
  v11 = sub_2381CA24C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v5 + 32))(&v13[v12], v7, v4);

  sub_23819DBD4(0, 0, v10, &unk_2381CC9A0, v13);
}

uint64_t sub_2381B3DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_2381CA0AC();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381B3EC4, 0, 0);
}

uint64_t sub_2381B3EC4()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  v0[10] = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  v6 = *(v3 + 16);
  v0[11] = v6;
  v0[12] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);
  v7 = sub_2381CA08C();
  v8 = sub_2381CA2DC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23819C000, v7, v8, "Stopping battery states", v9, 2u);
    MEMORY[0x2383EBBE0](v9, -1, -1);
  }

  v10 = v0[9];
  v11 = v0[6];
  v12 = v0[7];
  v13 = v0[5];

  v14 = *(v12 + 8);
  v0[13] = v14;
  v14(v10, v11);
  v15 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v16 = *(v13 + v15);
  v0[14] = v16;
  if (v16)
  {
    v20 = (*MEMORY[0x277D05B28] + MEMORY[0x277D05B28]);
    v16;
    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_2381B40C4;

    return v20();
  }

  else
  {

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_2381B40C4()
{
  v2 = *v1;
  *(v2 + 128) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2381B4210, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2381B4210()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);

  v2(v4, v6 + v3, v5);
  v7 = v1;
  v8 = sub_2381CA08C();
  v9 = sub_2381CA2CC();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 128);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_23819C000, v8, v9, "Failed stopping battery states: %@", v12, 0xCu);
    sub_2381A6070(v13, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v13, -1, -1);
    MEMORY[0x2383EBBE0](v12, -1, -1);
  }

  else
  {
  }

  (*(v0 + 104))(*(v0 + 64), *(v0 + 48));

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2381B43C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3940, &qword_2381CC990);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v5[9] = *(v7 + 64);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381B449C, 0, 0);
}

uint64_t sub_2381B449C()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v7 = *(v4 + v6);
  (*(v3 + 16))(v1, v5, v2);
  v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  (*(v3 + 32))(v9 + v8, v1, v2);
  v10 = v7;

  sub_2381B2A6C(v7, sub_2381C91A4, v9, &OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_batteryCallback, sub_2381C982C, sub_2381C9830);

  v11 = *(v4 + OBJC_IVAR____TtC7DockKit13DockAccessory_helper);
  v0[11] = v11;
  if (v11)
  {
    v12 = *(v4 + v6);
    v0[12] = v12;
    if (v12)
    {
      v20 = (*MEMORY[0x277D05B40] + MEMORY[0x277D05B40]);
      v12;
      v13 = v11;
      v14 = swift_task_alloc();
      v0[13] = v14;
      *v14 = v0;
      v14[1] = sub_2381B4794;

      return v20(v13);
    }

    else
    {
      v19 = swift_task_alloc();
      v0[15] = v19;
      *v19 = v0;
      v19[1] = sub_2381B490C;

      return sub_2381B4EE0();
    }
  }

  else
  {
    sub_2381A319C();
    v16 = swift_allocError();
    *v17 = 2;
    swift_willThrow();
    sub_2381CA27C();

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_2381B4794()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2381B4A48, 0, 0);
  }

  else
  {
    v3 = *(v2 + 96);

    v4 = swift_task_alloc();
    *(v2 + 120) = v4;
    *v4 = v2;
    v4[1] = sub_2381B490C;

    return sub_2381B4EE0();
  }
}

uint64_t sub_2381B490C()
{
  v2 = *v1;
  *(v2 + 128) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2381B4AC8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2381B4A48()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 112);
  sub_2381CA27C();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2381B4AC8()
{
  v1 = *(v0 + 128);
  sub_2381CA27C();

  v2 = *(v0 + 8);

  return v2();
}

void sub_2381B4B3C(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v36 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3948, &qword_2381CC9C8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = sub_2381CA0AC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v19 = &v35 - v17;
  if (a1)
  {
    v35 = a5;
    v20 = a1;
    v21 = sub_2381C9EFC();
    if (v21 >= 3)
    {
      (*(v13 + 16))(v15, a4 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v12);
      v26 = sub_2381CA08C();
      v27 = sub_2381CA2DC();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_23819C000, v26, v27, "Unknown charge state, default to notCharging", v28, 2u);
        MEMORY[0x2383EBBE0](v28, -1, -1);
      }

      (*(v13 + 8))(v15, v12);
      v22 = 0;
    }

    else
    {
      v22 = v21;
    }

    v29 = sub_2381C9F1C();
    v31 = v30;
    sub_2381C9F0C();
    v33 = v32;
    v34 = sub_2381C9EEC();
    v37 = v29;
    v38 = v31;
    v39 = v33;
    v40 = v34 & 1;
    v41 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3940, &qword_2381CC990);
    sub_2381CA26C();
    (*(v9 + 8))(v11, v8);
    if (v36)
    {
      sub_2381CA27C();
    }
  }

  else
  {
    (*(v13 + 16))(&v35 - v17, a4 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v12, v18);
    v23 = sub_2381CA08C();
    v24 = sub_2381CA2CC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_23819C000, v23, v24, "Got nil battery state", v25, 2u);
      MEMORY[0x2383EBBE0](v25, -1, -1);
    }

    (*(v13 + 8))(v19, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3940, &qword_2381CC990);
    sub_2381CA27C();
  }
}

uint64_t sub_2381B4EE0()
{
  v1[9] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381B4F88, 0, 0);
}

uint64_t sub_2381B4F88()
{
  v1 = v0[9];
  v2 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  v0[12] = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[13] = v3;
  if (v3)
  {
    v7 = (*MEMORY[0x277D05B48] + MEMORY[0x277D05B48]);
    v3;
    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_2381B50B4;

    return v7();
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2381B50B4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_2381B567C;
  }

  else
  {

    v4 = sub_2381B51D0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void *sub_2381B51D0()
{
  v1 = *(v0[9] + v0[12]);
  v2 = v0[15];
  if (v1)
  {
    if (v2 >> 62)
    {
LABEL_30:
      v32 = v2;
      v3 = sub_2381CA39C();
      v2 = v32;
      v4 = v0[15];
      if (v3)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v4 = v0[15];
      if (v3)
      {
LABEL_4:
        v34 = v0 + 2;
        v5 = v0[9];
        v6 = OBJC_IVAR____TtC7DockKit13DockAccessory_helper;
        v44 = v2 & 0xC000000000000001;
        v40 = v4 + 32;
        v41 = v2 & 0xFFFFFFFFFFFFFF8;
        v2 = v1;
        v42 = v2;
        v7 = 0;
        v36 = v5;
        v37 = v3;
        v35 = v6;
        while (1)
        {
          if (v44)
          {
            v2 = MEMORY[0x2383EB4F0](v7, v0[15]);
          }

          else
          {
            if (v7 >= *(v41 + 16))
            {
              goto LABEL_29;
            }

            v2 = *(v40 + 8 * v7);
          }

          v8 = v2;
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          v10 = *(v5 + v6);
          if (!v10)
          {
            goto LABEL_6;
          }

          v11 = v42;
          v12 = v10;
          v13 = sub_2381C9B0C();

          v1 = OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_trackingStand;
          Strong = swift_unknownObjectWeakLoadStrong();
          if (!Strong)
          {
            break;
          }

          v43 = v13;

          result = swift_unknownObjectWeakLoadStrong();
          if (!result)
          {
            __break(1u);
            return result;
          }

          v16 = result;
          v17 = sub_2381C9B0C();

          sub_2381C9A2C();
          v1 = sub_2381CA2FC();

          if (v1)
          {
            v18 = v0;
            v20 = v0[10];
            v19 = v0[11];
            v21 = sub_2381CA24C();
            v22 = *(v21 - 8);
            (*(v22 + 56))(v19, 1, 1, v21);
            v23 = swift_allocObject();
            v23[2] = 0;
            v23[3] = 0;
            v23[4] = v12;
            v23[5] = v8;
            sub_2381A6008(v19, v20, &qword_27DEF33A0, &qword_2381CB200);
            v38 = v22;
            LODWORD(v20) = (*(v22 + 48))(v20, 1, v21);
            v24 = v8;

            v25 = v18;
            v26 = v18[10];
            v39 = v24;
            if (v20 == 1)
            {
              sub_2381A6070(v26, &qword_27DEF33A0, &qword_2381CB200);
            }

            else
            {
              sub_2381CA23C();
              (*(v38 + 8))(v26, v21);
            }

            v9 = v7 + 1;
            v27 = v23[2];
            swift_unknownObjectRetain();

            v0 = v25;
            v6 = v35;
            if (v27)
            {
              swift_getObjectType();
              v28 = sub_2381CA21C();
              v30 = v29;
              swift_unknownObjectRelease();
            }

            else
            {
              v28 = 0;
              v30 = 0;
            }

            sub_2381A6070(v25[11], &qword_27DEF33A0, &qword_2381CB200);
            v31 = swift_allocObject();
            *(v31 + 16) = &unk_2381CC9B0;
            *(v31 + 24) = v23;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33D0, &qword_2381CC9C0);
            if (v30 | v28)
            {
              *v34 = 0;
              v34[1] = 0;
              v25[4] = v28;
              v25[5] = v30;
            }

            v5 = v36;
            v3 = v37;
            v1 = swift_task_create();
          }

          else
          {

            v9 = v7 + 1;
          }

LABEL_7:
          ++v7;
          if (v9 == v3)
          {

            goto LABEL_31;
          }
        }

LABEL_6:
        goto LABEL_7;
      }
    }
  }

LABEL_31:

  v33 = v0[1];

  return v33();
}

uint64_t sub_2381B567C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2381B56F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3928, &qword_2381CC958);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v18 - v12;

  sub_2381CA25C();
  v14 = sub_2381CA24C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v7 + 16))(v10, a1, v6);
  v15 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = a2;
  (*(v7 + 32))(&v16[v15], v10, v6);
  *&v16[(v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8] = a3;

  sub_23819DBD4(0, 0, v13, &unk_2381CC968, v16);
}

uint64_t sub_2381B592C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_2381CA0AC();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381B59EC, 0, 0);
}

uint64_t sub_2381B59EC()
{
  (*(v0[7] + 16))(v0[8], v0[5] + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v0[6]);
  v1 = sub_2381CA08C();
  v2 = sub_2381CA2DC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23819C000, v1, v2, "Stopping actuator feedback", v3, 2u);
    MEMORY[0x2383EBBE0](v3, -1, -1);
  }

  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];

  (*(v5 + 8))(v4, v6);
  v8 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v9 = *(v7 + v8);
  if (v9 && (v10 = v9, v11 = sub_2381C9C1C(), v0[9] = v11, v10, v11))
  {
    v12 = swift_task_alloc();
    v0[10] = v12;
    *v12 = v0;
    v12[1] = sub_2381B5BC8;

    return MEMORY[0x28215B398]();
  }

  else
  {

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2381B5BC8()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2381C97E0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2381B5D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[36] = a5;
  v6[37] = a6;
  v6[35] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3930, &qword_2381CC970);
  v6[38] = v7;
  v6[39] = *(v7 - 8);
  v6[40] = swift_task_alloc();
  v8 = sub_2381CA0AC();
  v6[41] = v8;
  v6[42] = *(v8 - 8);
  v6[43] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3928, &qword_2381CC958);
  v6[44] = v9;
  v10 = *(v9 - 8);
  v6[45] = v10;
  v6[46] = *(v10 + 64);
  v6[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381B5EA8, 0, 0);
}

uint64_t sub_2381B5EA8()
{
  v61 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 352);
  v3 = *(v0 + 360);
  v4 = *(v0 + 280);
  v5 = *(v0 + 288);
  v6 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v7 = *(v4 + v6);
  (*(v3 + 16))(v1, v5, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v1, v2);
  v10 = v7;
  sub_2381B2A6C(v7, sub_2381C8D80, v9, &OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_feedbackCallback, sub_2381C982C, sub_2381C9830);

  v11 = OBJC_IVAR____TtC7DockKit13DockAccessory_helper;
  if (*(v4 + OBJC_IVAR____TtC7DockKit13DockAccessory_helper))
  {
    v12 = *(v4 + v6);
    if (v12)
    {
      v13 = v12;
      v14 = sub_2381C9C1C();
      *(v0 + 384) = v14;

      if (v14)
      {
        v18 = *(v4 + v11);
        *(v0 + 392) = v18;
        if (v18)
        {
          v19 = v18;
          v20 = swift_task_alloc();
          *(v0 + 400) = v20;
          *v20 = v0;
          v20[1] = sub_2381B63C4;
          v15 = *(v0 + 296);
          v16 = v19;
          v17 = 1;
        }

        else
        {
          __break(1u);
        }

        return MEMORY[0x28215B390](v15, v16, v17);
      }
    }
  }

  else
  {
    sub_2381A319C();
    v21 = swift_allocError();
    *v22 = 2;
    swift_willThrow();
    v24 = *(v0 + 336);
    v23 = *(v0 + 344);
    v25 = *(v0 + 328);
    v26 = *(v0 + 280);
    SPVector3DMake(&v57, 0.0, 0.0, 0.0);
    v55 = v58;
    v56 = v60;
    v53 = v57;
    v54 = v59;
    SPVector3DMake(&v57, 0.0, 0.0, 0.0);
    v51 = v58;
    v52 = v60;
    v49 = v57;
    v50 = v59;
    (*(v24 + 16))(v23, v26 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v25);
    v27 = v21;
    v28 = sub_2381CA08C();
    v29 = sub_2381CA2DC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = v21;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_23819C000, v28, v29, "Converting private err %@ to public", v30, 0xCu);
      sub_2381A6070(v31, &qword_27DEF32F0, &qword_2381CB490);
      MEMORY[0x2383EBBE0](v31, -1, -1);
      MEMORY[0x2383EBBE0](v30, -1, -1);
    }

    v34 = *(v0 + 344);
    v36 = *(v0 + 328);
    v35 = *(v0 + 336);
    v37 = *(v0 + 312);
    v38 = *(v0 + 320);
    v48 = *(v0 + 304);

    (*(v35 + 8))(v34, v36);
    sub_23819FD88(v21, &v57);
    LOBYTE(v35) = v57;
    v39 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
    [v39 timeIntervalSinceNow];
    v41 = v40;

    v42 = swift_allocError();
    *v43 = v35;
    *(v0 + 32) = v54;
    *(v0 + 40) = v56;
    *(v0 + 16) = v53;
    *(v0 + 24) = v55;
    *(v0 + 64) = v50;
    *(v0 + 72) = v52;
    *(v0 + 48) = v49;
    *(v0 + 56) = v51;
    *(v0 + 80) = v41;
    *(v0 + 88) = v42;
    v44 = *(v0 + 80);
    *(v0 + 144) = *(v0 + 64);
    *(v0 + 160) = v44;
    v45 = *(v0 + 48);
    *(v0 + 112) = *(v0 + 32);
    *(v0 + 128) = v45;
    *(v0 + 96) = *(v0 + 16);
    sub_2381C8E3C(v0 + 16, v0 + 176);
    sub_2381CA26C();
    (*(v37 + 8))(v38, v48);
    sub_2381CA27C();
    sub_2381C8E84(v0 + 16);
  }

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_2381B63C4()
{
  v2 = *v1;
  *(v2 + 408) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2381B6524, 0, 0);
  }

  else
  {
    v3 = *(v2 + 384);

    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_2381B6524()
{
  v41 = v0;
  v1 = *(v0 + 384);

  v2 = *(v0 + 408);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 328);
  v6 = *(v0 + 280);
  SPVector3DMake(&v37, 0.0, 0.0, 0.0);
  v35 = v39;
  v36 = v40;
  v33 = v37;
  v34 = v38;
  SPVector3DMake(&v37, 0.0, 0.0, 0.0);
  v31 = v40;
  v32 = v39;
  v29 = v37;
  v30 = v38;
  (*(v4 + 16))(v3, v6 + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v5);
  v7 = v2;
  v8 = sub_2381CA08C();
  v9 = sub_2381CA2DC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_23819C000, v8, v9, "Converting private err %@ to public", v10, 0xCu);
    sub_2381A6070(v11, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v11, -1, -1);
    MEMORY[0x2383EBBE0](v10, -1, -1);
  }

  v14 = *(v0 + 344);
  v16 = *(v0 + 328);
  v15 = *(v0 + 336);
  v18 = *(v0 + 312);
  v17 = *(v0 + 320);
  v28 = *(v0 + 304);

  (*(v15 + 8))(v14, v16);
  sub_23819FD88(v2, &v37);
  LOBYTE(v15) = v37;
  v19 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  [v19 timeIntervalSinceNow];
  v21 = v20;

  sub_2381A319C();
  v22 = swift_allocError();
  *v23 = v15;
  *(v0 + 16) = v33;
  *(v0 + 24) = v34;
  *(v0 + 32) = v35;
  *(v0 + 40) = v36;
  *(v0 + 48) = v29;
  *(v0 + 56) = v30;
  *(v0 + 64) = v32;
  *(v0 + 72) = v31;
  *(v0 + 80) = v21;
  *(v0 + 88) = v22;
  v24 = *(v0 + 80);
  *(v0 + 144) = *(v0 + 64);
  *(v0 + 160) = v24;
  v25 = *(v0 + 48);
  *(v0 + 112) = *(v0 + 32);
  *(v0 + 128) = v25;
  *(v0 + 96) = *(v0 + 16);
  sub_2381C8E3C(v0 + 16, v0 + 176);
  sub_2381CA26C();
  (*(v18 + 8))(v17, v28);
  sub_2381CA27C();
  sub_2381C8E84(v0 + 16);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_2381B684C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6, double a7)
{
  v54 = a5;
  v50 = a4;
  v47 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3930, &qword_2381CC970);
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v46 - v11;
  SPVector3DMake(&v68, 0.0, 0.0, 0.0);
  v61 = *(&v68 + 1);
  v59 = v68;
  v49 = *(&v69 + 1);
  v57 = v69;
  SPVector3DMake(&v68, 0.0, 0.0, 0.0);
  v60 = *(&v68 + 1);
  v58 = v68;
  v48 = *(&v69 + 1);
  v56 = v69;
  v12 = *(a3 + 16);
  v13 = *(a1 + 16);
  v55 = a6;
  v46 = a1;
  if (v12 != v13 || !v13)
  {
LABEL_27:
    if (!v13 || (v29 = v47, *(v47 + 16) != v13))
    {
LABEL_53:
      *&v69 = v56;
      *(&v69 + 1) = v48;
      *&v68 = v58;
      *(&v68 + 1) = v60;
      *&v71 = v57;
      *(&v71 + 1) = v49;
      *&v70 = v59;
      *(&v70 + 1) = v61;
      *&v72 = a7;
      *(&v72 + 1) = v50;
      v65 = v70;
      v66 = v71;
      v67 = v72;
      v64 = v69;
      v63 = v68;
      v44 = v50;
      sub_2381C8E3C(&v68, v62);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3928, &qword_2381CC958);
      v45 = v51;
      sub_2381CA26C();
      (*(v52 + 8))(v45, v53);
      if (v54)
      {
        sub_2381CA27C();
      }

      return sub_2381C8E84(&v68);
    }

    sub_2381CA04C();
    v30 = 0;
    v31 = (v29 + 32);
    v32 = (v46 + 40);
    while (1)
    {
      v34 = *(v32 - 1);
      v33 = *v32;

      if (v34 == sub_2381CA01C() && v33 == v35)
      {
        break;
      }

      v37 = sub_2381CA40C();

      if (v37)
      {
        goto LABEL_39;
      }

      if (v34 == sub_2381CA03C() && v33 == v38)
      {

LABEL_45:
        if (v30 >= v13)
        {
          goto LABEL_59;
        }

        v39 = *v31 ^ 0x8000000000000000;
        v40 = &v72;
        goto LABEL_41;
      }

      v41 = sub_2381CA40C();

      if (v41)
      {
        goto LABEL_45;
      }

      if (v34 == sub_2381CA02C() && v33 == v42)
      {
      }

      else
      {
        v43 = sub_2381CA40C();

        if ((v43 & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      if (v30 >= v13)
      {
        goto LABEL_61;
      }

      v39 = *v31;
      v40 = &v71;
LABEL_41:
      *(v40 - 32) = v39;
LABEL_42:
      ++v30;
      ++v31;
      v32 += 2;
      if (v13 == v30)
      {
        goto LABEL_53;
      }
    }

LABEL_39:
    if (v30 >= v13)
    {
      goto LABEL_57;
    }

    v39 = *v31;
    v40 = &v73;
    goto LABEL_41;
  }

  sub_2381CA04C();
  v14 = 0;
  v15 = (a3 + 32);
  v16 = (a1 + 40);
  while (1)
  {
    v18 = *(v16 - 1);
    v17 = *v16;

    if (v18 == sub_2381CA01C() && v17 == v19)
    {
      break;
    }

    v21 = sub_2381CA40C();

    if (v21)
    {
      goto LABEL_13;
    }

    if (v18 == sub_2381CA03C() && v17 == v23)
    {

LABEL_19:
      if (v14 >= v12)
      {
        goto LABEL_58;
      }

      v24 = *v15 ^ 0x8000000000000000;
      v25 = &v72 + 8;
      goto LABEL_15;
    }

    v26 = sub_2381CA40C();

    if (v26)
    {
      goto LABEL_19;
    }

    if (v18 == sub_2381CA02C() && v17 == v27)
    {
    }

    else
    {
      v28 = sub_2381CA40C();

      if ((v28 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    if (v14 >= v12)
    {
      goto LABEL_60;
    }

    v24 = *v15;
    v25 = &v71 + 8;
LABEL_15:
    *(v25 - 32) = v24;
LABEL_16:
    ++v14;
    ++v15;
    v16 += 2;
    if (v12 == v14)
    {
      goto LABEL_27;
    }
  }

LABEL_13:
  if (v14 < v12)
  {
    v24 = *v15;
    v25 = &v74;
    goto LABEL_15;
  }

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
  return result;
}

uint64_t sub_2381B6E5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3908, &qword_2381CC910);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;

  sub_2381CA25C();
  v11 = sub_2381CA24C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v5 + 32))(&v13[v12], v7, v4);

  sub_23819DBD4(0, 0, v10, &unk_2381CC920, v13);
}

uint64_t sub_2381B7070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, char *, uint64_t, void *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF33A0, &qword_2381CB200);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_2381CA24C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;

  a5(0, 0, v10, a4, v12);
}

uint64_t sub_2381B7180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_2381CA0AC();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381B724C, 0, 0);
}

uint64_t sub_2381B724C()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  v0[10] = OBJC_IVAR____TtC7DockKit13DockAccessory_logger;
  v6 = *(v3 + 16);
  v0[11] = v6;
  v0[12] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);
  v7 = sub_2381CA08C();
  v8 = sub_2381CA2DC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23819C000, v7, v8, "Stopping tracking states", v9, 2u);
    MEMORY[0x2383EBBE0](v9, -1, -1);
  }

  v10 = v0[9];
  v11 = v0[6];
  v12 = v0[7];
  v13 = v0[5];

  v14 = *(v12 + 8);
  v0[13] = v14;
  v14(v10, v11);
  v15 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v16 = *(v13 + v15);
  v0[14] = v16;
  if (v16)
  {
    v20 = (*MEMORY[0x277D05B50] + MEMORY[0x277D05B50]);
    v16;
    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_2381B744C;

    return v20();
  }

  else
  {

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_2381B744C()
{
  v2 = *v1;
  *(v2 + 128) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2381B7598, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2381B7598()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);

  v2(v4, v6 + v3, v5);
  v7 = v1;
  v8 = sub_2381CA08C();
  v9 = sub_2381CA2CC();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 128);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_23819C000, v8, v9, "Failed stopping tracking states: %@", v12, 0xCu);
    sub_2381A6070(v13, &qword_27DEF32F0, &qword_2381CB490);
    MEMORY[0x2383EBBE0](v13, -1, -1);
    MEMORY[0x2383EBBE0](v12, -1, -1);
  }

  else
  {
  }

  (*(v0 + 104))(*(v0 + 64), *(v0 + 48));

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2381B7750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_2381CA0AC();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF3908, &qword_2381CC910);
  v5[10] = v7;
  v8 = *(v7 - 8);
  v5[11] = v8;
  v5[12] = *(v8 + 64);
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2381B7880, 0, 0);
}

uint64_t sub_2381B7880()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[5];
  v5 = v0[6];
  v6 = OBJC_IVAR____TtC7DockKit13DockAccessory_accessory;
  swift_beginAccess();
  v7 = *(v4 + v6);
  (*(v3 + 16))(v1, v5, v2);
  v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  (*(v3 + 32))(v9 + v8, v1, v2);
  v10 = v7;

  sub_2381B2A6C(v7, sub_2381C88E4, v9, &OBJC_IVAR____TtC7DockKit19DockAccessoryHelper_trackingSummaryCallback, sub_2381C982C, sub_2381C9830);

  v11 = *(v4 + OBJC_IVAR____TtC7DockKit13DockAccessory_helper);
  v0[14] = v11;
  if (v11)
  {
    v12 = *(v4 + v6);
    v0[15] = v12;
    if (v12)
    {
      v30 = (*MEMORY[0x277D05B58] + MEMORY[0x277D05B58]);
      v12;
      v13 = v11;
      v14 = swift_task_alloc();
      v0[16] = v14;
      *v14 = v0;
      v14[1] = sub_2381B7CA8;

      return v30(v13);
    }

    else
    {
      v29 = swift_task_alloc();
      v0[18] = v29;
      *v29 = v0;
      v29[1] = sub_2381B7E20;

      return sub_2381B8C4C();
    }
  }

  else
  {
    sub_2381A319C();
    v16 = swift_allocError();
    *v17 = 2;
    swift_willThrow();
    (*(v0[8] + 16))(v0[9], v0[5] + OBJC_IVAR____TtC7DockKit13DockAccessory_logger, v0[7]);
    v18 = v16;
    v19 = sub_2381CA08C();
    v20 = sub_2381CA2CC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = v16;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_23819C000, v19, v20, "Failed to get tracking Summary: %@", v21, 0xCu);
      sub_2381A6070(v22, &qword_27DEF32F0, &qword_2381CB490);
      MEMORY[0x2383EBBE0](v22, -1, -1);
      MEMORY[0x2383EBBE0](v21, -1, -1);
    }

    v25 = v0[9];
    v26 = v0[7];
    v27 = v0[8];

    (*(v27 + 8))(v25, v26);
    sub_2381CA27C();

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_2381B7CA8()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2381B7F68, 0, 0);
  }

  else
  {
    v3 = *(v2 + 120);

    v4 = swift_task_alloc();
    *(v2 + 144) = v4;
    *v4 = v2;
    v4[1] = sub_2381B7E20;

    return sub_2381B8C4C();
  }
}