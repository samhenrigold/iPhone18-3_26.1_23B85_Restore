_BYTE *sub_1E3C6BE74(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E3C6BF3C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E3C6C00C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 12);
        }

        break;
    }
  }

  return result;
}

void type metadata accessor for timeval()
{
  if (!qword_1ECF35D48)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECF35D48);
    }
  }
}

uint64_t sub_1E3C6C150()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_63(v1);

  return sub_1E3C6B86C();
}

void sub_1E3C6C1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *a4;
  sub_1E394C48C(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v9);
  *a4 = v9;
}

uint64_t sub_1E3C6C248()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_63(v1);

  return sub_1E3C6B86C();
}

uint64_t sub_1E3C6C314(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E3C6C374(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 56);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1E3C6C3F4;
}

void sub_1E3C6C3F4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 56) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1E3C6C478(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1E3C6C4B8(a1);
  return v2;
}

uint64_t sub_1E3C6C4B8(uint64_t a1)
{
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 16) = a1;
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x1E696AC70]) init];
  return v1;
}

uint64_t sub_1E3C6C514()
{
  OUTLINED_FUNCTION_8();
  (*(v1 + 264))(0);

  sub_1E32AF6F8(v0 + 48);
  return v0;
}

uint64_t sub_1E3C6C578()
{
  sub_1E3C6C514();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

void sub_1E3C6C5AC()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    *(v0 + 40) = 1;
    v1 = objc_opt_self();
    v2 = [v1 defaultCenter];
    if (_MergedGlobals_220 != -1)
    {
      OUTLINED_FUNCTION_1_184(&_MergedGlobals_220);
    }

    [v2 addObserver:v0 selector:sel_onImageWillLoad_ name:qword_1EE2AA7B8 object:0];

    v3 = [v1 defaultCenter];
    v4 = v3;
    if (qword_1EE28C268 != -1)
    {
      OUTLINED_FUNCTION_0_194(&qword_1EE28C268);
      v3 = v4;
    }

    [v3 addObserver:v0 selector:sel_onImageDidLoad_ name:qword_1EE2AA7C0 object:0];
  }
}

void sub_1E3C6C6F4(char a1)
{
  v2 = v1;
  if (*(v1 + 40) == 1)
  {
    *(v2 + 40) = 0;
    v4 = objc_opt_self();
    v5 = [v4 defaultCenter];
    if (_MergedGlobals_220 != -1)
    {
      OUTLINED_FUNCTION_1_184(&_MergedGlobals_220);
    }

    [v5 removeObserver:v2 name:qword_1EE2AA7B8 object:0];

    v6 = [v4 defaultCenter];
    if (qword_1EE28C268 != -1)
    {
      OUTLINED_FUNCTION_0_194(&qword_1EE28C268);
    }

    [v6 removeObserver:v2 name:qword_1EE2AA7C0 object:0];

    *(v2 + 32) = 0;

    if (a1)
    {
      v7 = [*(v2 + 24) allObjects];
      v8 = sub_1E42062B4();

      v9 = sub_1E32AE9B0(v8);
      if (v9)
      {
        v10 = v9;
        if (v9 < 1)
        {
          __break(1u);
        }

        else
        {
          v11 = 0;
          v29 = *(*v2 + 224);
          v27 = *(**(v2 + 16) + 112);
          v25 = "entStorage";
          v26 = v8 & 0xC000000000000001;
          v28 = v8;
          do
          {
            if (v26)
            {
              v12 = MEMORY[0x1E6911E60](v11, v8);
            }

            else
            {
              v12 = *(v8 + 8 * v11 + 32);
              swift_unknownObjectRetain();
            }

            if (v29())
            {
              v14 = v13;
              ObjectType = swift_getObjectType();
              sub_1E42074B4();
              MEMORY[0x1E69109E0](0xD00000000000003ALL, v25 | 0x8000000000000000);
              sub_1E4207614();
              (*(v14 + 32))(0, 0xE000000000000000, ObjectType, v14);

              swift_unknownObjectRelease();
            }

            v16 = mach_absolute_time();
            v17 = v27(v16);
            v19 = v18;
            if (v29())
            {
              v21 = v20;
              if (v19)
              {
                v22 = 0;
              }

              else
              {
                v22 = v17;
              }

              v23 = VUIErrorCancelled();
              v24 = swift_getObjectType();
              (*(v21 + 24))(v22, 1, v23, v24, v21);

              swift_unknownObjectRelease();
            }

            ++v11;
            [*(v2 + 24) removeObject_];
            swift_unknownObjectRelease();
            v8 = v28;
          }

          while (v10 != v11);
        }
      }

      else
      {
      }
    }
  }
}

void sub_1E3C6CAB4(double a1)
{
  if (*(v1 + 40) == 1)
  {
    type metadata accessor for ExpirationMonitor();
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = a1;
    *(v1 + 32) = sub_1E41E1BA4(sub_1E3C6D6AC, v4, a1);

    OUTLINED_FUNCTION_8();
    (*(v5 + 136))();
  }
}

void sub_1E3C6CBC0()
{
  if ((*(v0 + 41) & 1) == 0)
  {
    *(v0 + 41) = 1;
    OUTLINED_FUNCTION_8();
    if ((*(v1 + 224))())
    {
      v3 = v2;
      ObjectType = swift_getObjectType();
      (*(v3 + 32))(0xD000000000000032, 0x80000001E427A0B0, ObjectType, v3);

      swift_unknownObjectRelease();
    }
  }
}

void sub_1E3C6CC9C()
{
  v1 = v0;
  v2 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 41))
  {
    return;
  }

  sub_1E41FDF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  v8 = sub_1E42070E4();
  sub_1E329505C(v29);
  v9 = sub_1E41FDF24();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v30 = 0u;
    v31 = 0u;
LABEL_9:
    sub_1E329505C(&v30);
    return;
  }

  v10 = v9;
  v28[1] = 0xD000000000000031;
  v28[2] = 0x80000001E427A1A0;
  sub_1E4207414();
  sub_1E375D7E8(v10, &v30, v29);

  sub_1E375D84C(v29);
  if (!*(&v31 + 1))
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) != 0 && (OUTLINED_FUNCTION_8(), v12 = (*(v11 + 112))(), (v13 & 1) == 0))
  {
    v14 = v12;
    v15 = *(v1 + 24);
    swift_unknownObjectRetain();
    v16 = [v15 containsObject_];
    if (v16)
    {
      swift_unknownObjectRelease_n();
    }

    else
    {
      v17 = VUISignpostLogObject(v16);
      swift_unknownObjectRetain();
      sub_1E41FFBB4();
      v18 = sub_1E4206BA4();
      v19 = VUISignpostLogObject(v18);
      sub_1E41FFBA4();

      v20 = *(v1 + 24);
      [v20 addObject_];

      v21 = swift_unknownObjectRelease();
      if ((*(*v1 + 224))(v21))
      {
        v23 = v22;
        ObjectType = swift_getObjectType();
        (*(v23 + 16))(v14, 1, ObjectType, v23);
        swift_unknownObjectRelease();
      }

      if (*(v1 + 32))
      {
        OUTLINED_FUNCTION_8();
        v26 = *(v25 + 136);

        v26(v27);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      (*(v4 + 8))(v7, v2);
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_1E3C6D02C()
{
  v1 = v0;
  v2 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v37 - v9;
  sub_1E41FDF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  v11 = sub_1E42070E4();
  sub_1E329505C(v38);
  v12 = sub_1E41FDF24();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v39 = 0u;
    v40 = 0u;
LABEL_8:
    sub_1E329505C(&v39);
    return;
  }

  v13 = v12;
  v37[1] = 0xD000000000000031;
  v37[2] = 0x80000001E427A1A0;
  sub_1E4207414();
  sub_1E375D7E8(v13, &v39, v38);

  sub_1E375D84C(v38);
  if (!*(&v40 + 1))
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  if (swift_dynamicCast() & 1) == 0 || (OUTLINED_FUNCTION_8(), v15 = (*(v14 + 112))(), (v16))
  {
    swift_unknownObjectRelease();
    return;
  }

  v37[0] = v15;
  v17 = sub_1E41FDF24();
  if (v17)
  {
    v18 = v17;
    *&v39 = 0xD00000000000002DLL;
    *(&v39 + 1) = 0x80000001E427A220;
    sub_1E4207414();
    sub_1E375D7E8(v18, &v39, v38);

    sub_1E375D84C(v38);
    if (*(&v40 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
      if (swift_dynamicCast())
      {
        v19 = v38[0];
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  sub_1E329505C(&v39);
  v19 = 0;
LABEL_17:
  v20 = v1[3];
  swift_unknownObjectRetain();
  v21 = [v20 containsObject_];
  if (v21)
  {
    v22 = VUISignpostLogObject(v21);
    swift_unknownObjectRetain();
    sub_1E41FFBB4();
    v23 = sub_1E4206B94();
    v24 = VUISignpostLogObject(v23);
    sub_1E41FFBA4();

    v25 = v1[3];
    [v25 removeObject_];

    v26 = swift_unknownObjectRelease();
    if ((*(*v1 + 28))(v26))
    {
      v28 = v27;
      ObjectType = swift_getObjectType();
      (*(v28 + 24))(v37[0], 1, v19, ObjectType, v28);
      swift_unknownObjectRelease();
    }

    v30 = (*(v4 + 8))(v10, v2);
  }

  else
  {
    v30 = swift_unknownObjectRelease();
  }

  if ((*(*v1 + 36))(v30))
  {
    v31 = sub_1E4206BB4();
    v32 = VUISignpostLogObject(v31);
    sub_1E41FFBE4();
    sub_1E41FFBA4();

    v33 = (*(v4 + 8))(v7, v2);
    if ((*(*v1 + 28))(v33))
    {
      v35 = v34;
      v36 = swift_getObjectType();
      (*(v35 + 8))(v36, v35);
      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1E3C6D550(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FDEE4();

  a4(v10);

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1E3C6D63C()
{
  result = sub_1E4205ED4();
  qword_1EE2AA7B8 = result;
  return result;
}

uint64_t sub_1E3C6D674()
{
  result = sub_1E4205ED4();
  qword_1EE2AA7C0 = result;
  return result;
}

void sub_1E3C6D6AC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = (*(*Strong + 224))(Strong);
    v3 = v2;

    if (v1)
    {
      ObjectType = swift_getObjectType();
      sub_1E42074B4();
      MEMORY[0x1E69109E0](0xD000000000000023, 0x80000001E427A250);
      sub_1E4206594();
      MEMORY[0x1E69109E0](0xD00000000000001FLL, 0x80000001E427A280);
      (*(v3 + 32))(0, 0xE000000000000000, ObjectType, v3);
      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  v5 = swift_weakLoadStrong();
  if (v5)
  {
    (*(*v5 + 264))(1);
  }
}

id sub_1E3C6D88C()
{
  swift_beginAccess();
  v1 = *(v0 + 104);

  return v1;
}

void sub_1E3C6D8D0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  *(v1 + 104) = a1;
}

uint64_t sub_1E3C6D94C(uint64_t a1)
{
  v2 = sub_1E3E60700();
  v3 = *v2;
  *(v1 + 104) = *v2;
  type metadata accessor for ImageLayout();
  v4 = v3;
  *(v1 + 112) = sub_1E3BD61D8();
  v5 = sub_1E3C2F9A0();
  v6 = *(*v5 + 1728);

  v7 = v6();
  v8 = *sub_1E3E5FDEC();
  v9 = *(*v7 + 680);
  v10 = v8;
  v9(v8);

  (v6)(v11);
  OUTLINED_FUNCTION_2_1();
  (*(v12 + 2072))(21);

  (v6)(v13);
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 2024))(2, 0);

  (v6)(v15);
  OUTLINED_FUNCTION_2_1();
  (*(v16 + 2168))(10);

  v18 = (v6)(v17);
  (*(*v18 + 232))(0x4036000000000000, 0);

  v20 = (v6)(v19);
  sub_1E3C37CBC(v20, 39);

  return v5;
}

double sub_1E3C6DBB4()
{

  return result;
}

uint64_t sub_1E3C6DBE4()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3C6DC1C()
{
  v0 = sub_1E3C6DBE4();

  return MEMORY[0x1EEE6BDC0](v0, 120, 7);
}

uint64_t sub_1E3C6DC94(uint64_t a1)
{
  v1 = *sub_1E3E5FD88();
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 680);
  v4 = v1;
  v3(v1);
  OUTLINED_FUNCTION_36();
  (*(v5 + 2056))(2, 0);
  OUTLINED_FUNCTION_36();
  (*(v6 + 2080))(2, 0);
  OUTLINED_FUNCTION_36();
  (*(v7 + 1984))(5);
  OUTLINED_FUNCTION_36();
  (*(v8 + 1696))(14);
  OUTLINED_FUNCTION_36();
  return (*(v9 + 256))(0x7FF0000000000000, 0);
}

uint64_t sub_1E3C6DE18()
{
  OUTLINED_FUNCTION_30();
  (*(v2 + 1696))(19);
  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_22_3();
  v3 = *(*v1 + 680);
  v4 = v0;
  v3(v0);
  OUTLINED_FUNCTION_36();
  (*(v5 + 2056))(1, 0);
  OUTLINED_FUNCTION_36();
  (*(v6 + 2080))(1, 0);
  sub_1E3952C88();
  OUTLINED_FUNCTION_6_22();
  (*(v7 + 160))(v11);
  OUTLINED_FUNCTION_36();
  (*(v8 + 1984))(5);
  OUTLINED_FUNCTION_36();
  return (*(v9 + 256))(0x7FF0000000000000, 0);
}

uint64_t sub_1E3C6DFCC(double a1)
{
  OUTLINED_FUNCTION_30();
  (*(v4 + 2240))(1);
  OUTLINED_FUNCTION_36();
  (*(v5 + 1808))(3);
  sub_1E3E60A14();
  OUTLINED_FUNCTION_22_3();
  v6 = *(*v2 + 872);
  v7 = v1;
  v6(v1);
  (*(*v2 + 440))(*&a1, 0);
  OUTLINED_FUNCTION_36();
  (*(v8 + 2000))(0);
  sub_1E3E5FB0C();
  OUTLINED_FUNCTION_22_3();
  v9 = *(*v2 + 776);
  v10 = v1;
  v9(v1);
  OUTLINED_FUNCTION_8();
  v11 = OUTLINED_FUNCTION_36_0();
  v12(v11);
  OUTLINED_FUNCTION_36();
  v13 = OUTLINED_FUNCTION_36_0();
  v14(v13);
  OUTLINED_FUNCTION_36();
  (*(v15 + 608))(0);
  sub_1E39537A8();
  v33[0] = v16;
  v33[1] = v17;
  v33[2] = v18;
  v33[3] = v19;
  v34 = 0;
  (*(*v2 + 560))(v33);
  v20.n128_u64[0] = *sub_1E3E60BBC();
  v31[0] = j__OUTLINED_FUNCTION_7_78(v20);
  v31[1] = v21;
  v31[2] = v22;
  v31[3] = v23;
  v32 = 0;
  (*(*v2 + 1856))(v31);
  sub_1E3E60F2C();
  OUTLINED_FUNCTION_22_3();
  v24 = *(*v2 + 1832);
  v25 = v1;
  v24(v1);
  OUTLINED_FUNCTION_36();
  v27 = (*(v26 + 1712))(1);
  v27.n128_u64[0] = 6.0;
  j__OUTLINED_FUNCTION_7_78(v27);
  OUTLINED_FUNCTION_6_22();
  return (*(v28 + 184))(v30);
}

double sub_1E3C6E348(uint64_t a1)
{
  OUTLINED_FUNCTION_26_0();
  (*(v2 + 312))(0x4048000000000000, 0);
  (*(*a1 + 208))(0x4048000000000000, 0);
  v3 = *(MEMORY[0x1E69DDCE0] + 16);
  v18[0] = *MEMORY[0x1E69DDCE0];
  v18[1] = v3;
  v19 = 0;
  v4 = (*(*a1 + 160))(v18);
  v5 = *(*a1 + 1744);
  v5(v4);
  OUTLINED_FUNCTION_30();
  v6 = OUTLINED_FUNCTION_36_0();
  v7(v6);

  v5(v8);
  OUTLINED_FUNCTION_2_1();
  v9 = OUTLINED_FUNCTION_36_0();
  v10(v9);

  v5(v11);
  OUTLINED_FUNCTION_2_1();
  (*(v12 + 440))(0x3FF0000000000000, 0);

  v5(v13);
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 1712))(1);

  (*(*a1 + 1768))(v15);
  OUTLINED_FUNCTION_2_1();
  (*(v16 + 1816))(0x4035D5D5D5D5D5D6, 0);

  return result;
}

uint64_t sub_1E3C6E604(uint64_t a1)
{
  sub_1E3952C78();
  OUTLINED_FUNCTION_6_22();
  (*(v2 + 160))(v13);
  v3 = sub_1E3E5FDEC();
  v4 = *v3;
  v5 = *(*a1 + 680);
  v6 = *v3;
  v5(v4);
  v7 = *v3;
  v8 = *(*a1 + 872);
  v9 = v7;
  v8(v7);
  v10 = [objc_opt_self() clearColor];
  OUTLINED_FUNCTION_36();
  return (*(v11 + 752))();
}

uint64_t sub_1E3C6E74C()
{
  v2[0] = 0x4008000000000000;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0x4010000000000000;
  v3 = 0;
  OUTLINED_FUNCTION_26_0();
  return (*(v0 + 160))(v2);
}

double sub_1E3C6E7AC@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_26_0();
  v3 = (*(v2 + 392))();
  if (v3)
  {
    OUTLINED_FUNCTION_8();
    v5 = COERCE_DOUBLE((*(v4 + 432))());
    v7 = v6;

    if (v7)
    {
      v8 = 0;
      v3 = 0;
    }

    else if (v5 <= 1.0)
    {
      v3 = 0;
      v8 = 0x4048000000000000;
    }

    else
    {
      v8 = 0;
      v3 = 0x4048000000000000;
    }
  }

  else
  {
    v8 = 0;
  }

  j__OUTLINED_FUNCTION_51_1();
  j__OUTLINED_FUNCTION_18();
  v16 = j__OUTLINED_FUNCTION_18() & 1;
  OUTLINED_FUNCTION_58_2();
  v9 = OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_6_14(v9, v10, v11, v12, 0, 1, 0, 1, v14, v15, SHIBYTE(v15), v16);
  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 24) = v8;
  *(a1 + 32) = v3;
  *(a1 + 40) = 256;
  *(a1 + 42) = v19;
  *(a1 + 58) = *v20;
  result = *&v20[14];
  *(a1 + 72) = *&v20[14];
  *(a1 + 88) = 1;
  *(a1 + 89) = v21;
  return result;
}

uint64_t type metadata accessor for StandardLockupListView(uint64_t a1)
{
  result = qword_1EE2997B0;
  if (!qword_1EE2997B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3C6E960()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_173();
  v9 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = type metadata accessor for StandardLockupListView(0);
  v17 = v16[13];
  *(v0 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *v0 = v8;
  memcpy(v0 + 1, v6, 0xC3uLL);
  type metadata accessor for ContextMenuModel(0);
  swift_retain_n();
  sub_1E3E6CDBC();

  sub_1E4207414();
  (*(v11 + 104))(v15, *MEMORY[0x1E697E660], v9);
  v0[26] = sub_1E4188148(v8, v15);
  v18 = sub_1E39C408C();
  if (v18)
  {
    j__OUTLINED_FUNCTION_18();
    v19 = OUTLINED_FUNCTION_57_20();
    sub_1E39C26D0(v19, v20);
    v22 = v21;

    if (!v22)
    {
LABEL_5:
      v18 = 0;
      goto LABEL_6;
    }

    type metadata accessor for ImageViewModel();
    OUTLINED_FUNCTION_20_2();
    v18 = swift_dynamicCastClass();
    if (!v18)
    {

      goto LABEL_5;
    }
  }

LABEL_6:
  v0[27] = v18;
  if (!sub_1E39C408C() && !sub_1E39C408C())
  {
    goto LABEL_11;
  }

  j__OUTLINED_FUNCTION_18();
  v23 = OUTLINED_FUNCTION_57_20();
  sub_1E39C26D0(v23, v24);
  v26 = v25;

  if (v26 && *v26 != _TtC8VideosUI13TextViewModel)
  {

LABEL_11:
    v26 = 0;
  }

  v0[28] = v26;
  if (!sub_1E39C408C())
  {
LABEL_16:
    v30 = 0;
    goto LABEL_17;
  }

  j__OUTLINED_FUNCTION_18();
  v27 = OUTLINED_FUNCTION_57_20();
  sub_1E39C26D0(v27, v28);
  v30 = v29;

  if (v30 && *v30 != _TtC8VideosUI13TextViewModel)
  {

    goto LABEL_16;
  }

LABEL_17:
  v0[29] = v30;
  if (!sub_1E39C408C())
  {
LABEL_21:
    v34 = 0;
    goto LABEL_22;
  }

  j__OUTLINED_FUNCTION_18();
  v31 = OUTLINED_FUNCTION_57_20();
  sub_1E39C26D0(v31, v32);
  v34 = v33;

  if (v34 && *v34 != _TtC8VideosUI13TextViewModel)
  {

    goto LABEL_21;
  }

LABEL_22:
  v0[31] = v34;
  sub_1E39C1F18();
  v36 = v35;
  if (sub_1E32AE9B0(v35))
  {
    if ((v36 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](0, v36);
    }

    else
    {
      if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }
    }

    j__OUTLINED_FUNCTION_18();
    v37 = OUTLINED_FUNCTION_57_20();
    sub_1E39C26D0(v37, v38);
    v40 = v39;
  }

  else
  {

    v40 = 0;
  }

  v0[30] = v40;
  v41 = sub_1E39C408C();
  v43 = v41;
  if (v41)
  {
    v44 = sub_1E39C408C();

    if (v44)
    {
      j__OUTLINED_FUNCTION_18();
      v45 = OUTLINED_FUNCTION_57_20();
      sub_1E39C26D0(v45, v46);
      v43 = v47;

      if (!v43 || *v43 == _TtC8VideosUI13TextViewModel)
      {
        goto LABEL_34;
      }
    }

    v43 = 0;
  }

LABEL_34:
  v0[32] = v43;
  if (!v4)
  {
    if (v40)
    {
      if ((*(*v40 + 392))(v41, v42))
      {
        type metadata accessor for TextBadgeLayout(0);
        if (!swift_dynamicCastClass())
        {
        }
      }
    }

    type metadata accessor for TextBadgePresenter(0);
    v48 = OUTLINED_FUNCTION_20_2();
    v4 = sub_1E3789F30(v48);
  }

  *(v0 + v16[14]) = v4;
  if (v2)
  {
  }

  else
  {
    type metadata accessor for ImageBadgePresenter(0);
    v2 = sub_1E375E078(v8);
  }

  *(v0 + v16[15]) = v2;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C6EE78()
{
  OUTLINED_FUNCTION_31_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35D50, &qword_1E42C6B98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_5();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35D58, &qword_1E42C6BA0);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_41();
  sub_1E3C6F078();
  *(v2 + *(v3 + 36)) = 0;
  v9 = *(v0 + 208);
  OUTLINED_FUNCTION_30_50();
  OUTLINED_FUNCTION_33_4();
  v14 = sub_1E3C74E64(v10, v11, v12, v13);
  sub_1E4187EA8(v9, v3, v14);
  OUTLINED_FUNCTION_33_4();
  sub_1E325F69C(v15, v16);
  OUTLINED_FUNCTION_36();
  v18 = (*(v17 + 392))();
  OUTLINED_FUNCTION_3_8();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_67_0();
  LOBYTE(v3) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_67_0();
  v20 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_67_0();
  v21 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(v18, v3 & 1, v20 & 1, 1, v21 & 1, v5, OpaqueTypeConformance2);

  (*(v7 + 8))(v1, v5);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C6F078()
{
  OUTLINED_FUNCTION_31_1();
  v61 = v4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35DE8, &qword_1E42C6C78);
  OUTLINED_FUNCTION_0_10();
  v53 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v52 = v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35DF0, &qword_1E42C6C80);
  OUTLINED_FUNCTION_0_10();
  v54 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v56 = v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35DF8, &qword_1E42C6C88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v58 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E00, &qword_1E42C6C90);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35D80, &qword_1E42C6BB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_41();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E08, &qword_1E42C6C98);
  OUTLINED_FUNCTION_0_10();
  v55 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_49_2();
  v20 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_74_1();
  type metadata accessor for StandardLockupListView(0);
  v24 = v1;
  sub_1E3746E10(v0);
  v25 = sub_1E3B02A04();
  (*(v22 + 8))(v0, v20);
  if (v25)
  {
    sub_1E3C6F6E8();
    v26 = v55;
    (*(v55 + 16))(v15, v3, v17);
    OUTLINED_FUNCTION_35_5();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35D88, &qword_1E42C6BB8);
    v27 = sub_1E3C74960();
    OUTLINED_FUNCTION_29_58(v27);
    swift_getOpaqueTypeConformance2();
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35DA8, &qword_1E42C6BC8);
    v29 = sub_1E3C74A18();
    v63 = v28;
    v64 = v29;
    OUTLINED_FUNCTION_59_22();
    sub_1E4201F44();
    sub_1E3743538(v2, v58, &qword_1ECF35D80, &qword_1E42C6BB0);
    swift_storeEnumTagMultiPayload();
    sub_1E3C74860();
    v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35DC8, &qword_1E42C6BD8);
    v31 = sub_1E3C74AD0();
    v63 = v30;
    v64 = v31;
    OUTLINED_FUNCTION_59_22();
    sub_1E4201F44();
    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v32, v33);
    (*(v26 + 8))(v3, v17);
  }

  else
  {
    v34 = v57;
    v35 = v58;
    if (*(v24 + 256))
    {
      v36 = v2;
      v37 = v56;
      sub_1E3C6F978();
      v38 = v54;
      (*(v54 + 16))(v15, v37, v34);
      OUTLINED_FUNCTION_35_5();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35D88, &qword_1E42C6BB8);
      v39 = sub_1E3C74960();
      OUTLINED_FUNCTION_29_58(v39);
      swift_getOpaqueTypeConformance2();
      v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35DA8, &qword_1E42C6BC8);
      v41 = sub_1E3C74A18();
      v63 = v40;
      v64 = v41;
      OUTLINED_FUNCTION_59_22();
      sub_1E4201F44();
      sub_1E3743538(v36, v35, &qword_1ECF35D80, &qword_1E42C6BB0);
      swift_storeEnumTagMultiPayload();
      sub_1E3C74860();
      v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35DC8, &qword_1E42C6BD8);
      v43 = sub_1E3C74AD0();
      v63 = v42;
      v64 = v43;
      OUTLINED_FUNCTION_59_22();
      sub_1E4201F44();
      OUTLINED_FUNCTION_82();
      sub_1E325F69C(v44, v45);
      (*(v38 + 8))(v56, v34);
    }

    else
    {
      v46 = v52;
      sub_1E3C6FB7C();
      v47 = v53;
      v48 = v59;
      (*(v53 + 16))(v35, v46, v59);
      swift_storeEnumTagMultiPayload();
      sub_1E3C74860();
      v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35DC8, &qword_1E42C6BD8);
      v50 = sub_1E3C74AD0();
      v63 = v49;
      v64 = v50;
      swift_getOpaqueTypeConformance2();
      sub_1E4201F44();
      (*(v47 + 8))(v46, v48);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C6F978()
{
  OUTLINED_FUNCTION_93();
  v3 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35DC0, &qword_1E42C6BD0);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35DA8, &qword_1E42C6BC8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_5();
  sub_1E3C70D68();
  *v1 = sub_1E4201D44();
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35ED8, &qword_1E42C6D70);
  sub_1E3C72B90();
  sub_1E4203DA4();
  v11 = OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_92_1(v11, v12, v13, v14, v15, v16, v17, v18, v23);
  OUTLINED_FUNCTION_49_5();
  sub_1E3741EA0(v19, v20, v21, v22);
  memcpy((v2 + *(v9 + 36)), v24, 0x70uLL);
  sub_1E4202474();
  sub_1E3C74A18();
  sub_1E4203224();
  (*(v5 + 8))(v0, v3);
  sub_1E325F69C(v2, &qword_1ECF35DA8);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3C6FB7C()
{
  OUTLINED_FUNCTION_93();
  v28 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35DE0, &unk_1E42C6BE0);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_49_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35DC8, &qword_1E42C6BD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_4();
  sub_1E3C70D68();
  OUTLINED_FUNCTION_36();
  if ((*(v10 + 392))())
  {
    OUTLINED_FUNCTION_26_0();
    v12 = (*(v11 + 1152))();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 1;
  }

  *v2 = sub_1E4201B84();
  *(v2 + 8) = v12;
  *(v2 + 16) = v14 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35F18, &qword_1E42C6DB0);
  sub_1E3C71E98();
  sub_1E4203DA4();
  v15 = OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_92_1(v15, v16, v17, v18, v19, v20, v21, v22, v27);
  v23 = OUTLINED_FUNCTION_98();
  sub_1E3741EA0(v23, v24, v25, v26);
  memcpy((v1 + *(v8 + 36)), v29, 0x70uLL);
  sub_1E4202474();
  sub_1E3C74AD0();
  sub_1E4203224();
  (*(v4 + 8))(v0, v28);
  sub_1E325F69C(v1, &qword_1ECF35DC8);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3C6FE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_21_5();
  a25 = v30;
  a26 = v35;
  v37 = v36;
  v210 = v38;
  v214 = sub_1E4203B14();
  OUTLINED_FUNCTION_0_10();
  v213 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E18, &qword_1E42C6CA8);
  v44 = OUTLINED_FUNCTION_17_2(v43);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E20, &qword_1E42C6CB0);
  v48 = OUTLINED_FUNCTION_17_2(v47);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v50);
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v218 = v51;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v53);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295A8, &unk_1E42B9500);
  OUTLINED_FUNCTION_0_10();
  v220 = v54;
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v58);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B0, &unk_1E429B6F0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B8, &unk_1E42B9510);
  v67 = OUTLINED_FUNCTION_17_2(v66);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E28, &qword_1E42C6CB8);
  OUTLINED_FUNCTION_17_2(v74);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v202 - v76;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E30, &qword_1E42C6CC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_8_4();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E38, &qword_1E42C6CC8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E40, &qword_1E42C6CD0);
  OUTLINED_FUNCTION_17_2(v84);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_14_5();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E48, &qword_1E42C6CD8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v90);
  sub_1E3C70D68();
  v91 = v37;
  sub_1E3C70E18();
  v92 = sub_1E4202744();
  v93 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v92)
  {
    v93 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  sub_1E3741EA0(v28, v29, &qword_1ECF35E40, &qword_1E42C6CD0);
  v94 = v29 + *(v86 + 36);
  *v94 = v93;
  *(v94 + 8) = v31;
  *(v94 + 16) = v32;
  *(v94 + 24) = v33;
  *(v94 + 32) = v34;
  *(v94 + 40) = 0;
  sub_1E3741EA0(v29, v226, &qword_1ECF35E48, &qword_1E42C6CD8);
  sub_1E3C71318();
  v95 = sub_1E4202744();
  v96 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v95)
  {
    v96 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v77, v27, &qword_1ECF35E28, &qword_1E42C6CB8);
  v97 = (v27 + *(v203 + 36));
  *v97 = v96;
  OUTLINED_FUNCTION_11_4(v97);
  sub_1E3741EA0(v27, v26, &qword_1ECF35E30, &qword_1E42C6CC0);
  *(v26 + *(v79 + 36)) = 256;
  sub_1E3741EA0(v26, v227, &qword_1ECF35E38, &qword_1E42C6CC8);
  v98 = v205;
  v99 = v204;
  if (v91[28])
  {

    v102 = sub_1E3C27528(v100, v101);
    v103 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_28_47(v103);
    OUTLINED_FUNCTION_0_195();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_38_35(OpaqueTypeConformance2, v105, OpaqueTypeConformance2);
    v106 = OUTLINED_FUNCTION_70_19();
    v107(v106);
    sub_1E4202744();
    v95 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    v108 = v223;
    if (!v109)
    {
      v95 = sub_1E4202774();
    }

    if (v102)
    {
      v110 = *(*v102 + 152);

      v110(&v232, v111);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v113 = OUTLINED_FUNCTION_76_14();
    v114(v113, v215, v98);
    v115 = (v102 + *(v99 + 36));
    *v115 = v95;
    OUTLINED_FUNCTION_11_4(v115);
    OUTLINED_FUNCTION_12_19();
    sub_1E3741EA0(v116, v117, v118, v119);
    OUTLINED_FUNCTION_12_19();
    sub_1E3741EA0(v120, v121, v122, v123);
    v112 = 0;
  }

  else
  {
    v112 = 1;
    v108 = v223;
    v102 = v228;
  }

  v124 = 1;
  __swift_storeEnumTagSinglePayload(v102, v112, 1, v99);
  if (v91[29])
  {

    v127 = sub_1E3C27528(v125, v126);
    v128 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_28_47(v128);
    OUTLINED_FUNCTION_0_195();
    v129 = swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_38_35(v129, v130, v129);
    v131 = OUTLINED_FUNCTION_70_19();
    v132(v131);
    sub_1E4202744();
    v95 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v109)
    {
      v95 = sub_1E4202774();
    }

    if (v127)
    {
      v133 = *(*v127 + 152);

      v133(&v233, v134);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v135 = OUTLINED_FUNCTION_76_14();
    v136(v135, v216, v98);
    v137 = (v127 + *(v99 + 36));
    *v137 = v95;
    OUTLINED_FUNCTION_11_4(v137);
    OUTLINED_FUNCTION_12_19();
    sub_1E3741EA0(v138, v139, v140, v141);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v142, v143, v144, v145);
    v124 = 0;
  }

  v146 = 1;
  __swift_storeEnumTagSinglePayload(v108, v124, 1, v99);
  sub_1E3C71750();
  v147 = v91[32];
  if (v147)
  {

    v150 = sub_1E3C27528(v148, v149);
    v151 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_28_47(v151);
    OUTLINED_FUNCTION_0_195();
    v152 = swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_38_35(v152, v153, v152);
    OUTLINED_FUNCTION_15_5();
    v154(v147, v95);
    sub_1E4202744();
    v155 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v109)
    {
      v155 = sub_1E4202774();
    }

    if (v150)
    {
      v156 = *(*v150 + 152);

      v156(&v234, v157);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v159 = OUTLINED_FUNCTION_76_14();
    v160(v159, v217, v98);
    v161 = (v150 + *(v99 + 36));
    *v161 = v155;
    OUTLINED_FUNCTION_11_4(v161);
    OUTLINED_FUNCTION_12_19();
    sub_1E3741EA0(v162, v163, v164, v165);
    v158 = v206;
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v166, v167, v168, v169);
    v146 = 0;
  }

  else
  {
    v158 = v206;
  }

  __swift_storeEnumTagSinglePayload(v158, v146, 1, v99);
  v170 = v208;
  sub_1E3C71A10();
  v171 = v209;
  sub_1E4203B04();
  v172 = v221;
  sub_1E3743538(v226, v221, &qword_1ECF35E48, &qword_1E42C6CD8);
  v231[0] = v172;
  v173 = v222;
  sub_1E3743538(v227, v222, &qword_1ECF35E38, &qword_1E42C6CC8);
  v231[1] = v173;
  OUTLINED_FUNCTION_12_19();
  sub_1E3743538(v174, v175, v176, v177);
  v231[2] = v146;
  OUTLINED_FUNCTION_12_19();
  sub_1E3743538(v178, v179, v180, v181);
  v231[3] = v146;
  v182 = v224;
  v183 = v225;
  sub_1E3743538(v224, v225, &qword_1ECF35E20, &qword_1E42C6CB0);
  v231[4] = v183;
  v184 = v207;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v185, v186, v187, v188);
  v231[5] = v184;
  v189 = v211;
  sub_1E3743538(v170, v211, &qword_1ECF35E18, &qword_1E42C6CA8);
  v229 = 0;
  v230 = 0;
  v231[6] = v189;
  v231[7] = &v229;
  v190 = v213;
  v191 = v212;
  v192 = v214;
  (*(v213 + 16))(v212, v171, v214);
  v231[8] = v191;
  sub_1E3C71D10(v231, v210);
  v193 = *(v190 + 8);
  v193(v171, v192);
  sub_1E325F69C(v170, &qword_1ECF35E18);
  sub_1E325F69C(v158, &qword_1ECF295B8);
  sub_1E325F69C(v182, &qword_1ECF35E20);
  v194 = OUTLINED_FUNCTION_84_14(&v235);
  sub_1E325F69C(v194, v195);
  v196 = OUTLINED_FUNCTION_84_14(&a13);
  sub_1E325F69C(v196, v197);
  sub_1E325F69C(v227, &qword_1ECF35E38);
  sub_1E325F69C(v226, &qword_1ECF35E48);
  v193(v191, v192);
  sub_1E325F69C(v189, &qword_1ECF35E18);
  sub_1E325F69C(v184, &qword_1ECF295B8);
  sub_1E325F69C(v225, &qword_1ECF35E20);
  v198 = OUTLINED_FUNCTION_84_14(&v237);
  sub_1E325F69C(v198, v199);
  v200 = OUTLINED_FUNCTION_84_14(&v236);
  sub_1E325F69C(v200, v201);
  sub_1E325F69C(v222, &qword_1ECF35E38);
  sub_1E325F69C(v221, &qword_1ECF35E48);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3C70D68()
{
  OUTLINED_FUNCTION_8();
  if ((*(v0 + 392))() && (OUTLINED_FUNCTION_30(), (*(v1 + 176))(&v6), , (v7 & 1) == 0))
  {
    OUTLINED_FUNCTION_13_3(v2, v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }
}

void sub_1E3C70E18()
{
  OUTLINED_FUNCTION_9_4();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E90, &qword_1E42C6D38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E98, &qword_1E42C6D40);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v11);
  v12 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_74_1();
  v56 = v1;
  v16 = *(v1 + 216);
  if (v16)
  {
    v51 = v9;
    v52 = v7;
    if ((*(*v16 + 392))())
    {
      type metadata accessor for ImageLayout();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v18 = v17;
        type metadata accessor for StandardLockupListView(0);
        sub_1E3746E10(v0);
        v19 = sub_1E3B02A04();
        (*(v14 + 8))(v0, v12);
        (*(*v18 + 1712))(v19 & 1);
      }
    }

    sub_1E3C6E7AC(v61);
    v20 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(v16, v61, 0, v20 & 1, 0, 0, v2);
    v21 = sub_1E4203D64();
    v23 = v22;
    if ((*(*v16 + 392))() && (OUTLINED_FUNCTION_8(), (*(v24 + 176))(v62), (v63 & 1) == 0))
    {
      v27.n128_u64[0] = v62[2];
      v28.n128_u64[0] = v62[3];
      v25.n128_u64[0] = v62[0];
      v26.n128_u64[0] = v62[1];
      j_nullsub_1(v25, v26, v27, v28);
    }

    else
    {
      OUTLINED_FUNCTION_5_8();
    }

    OUTLINED_FUNCTION_3();
    v34 = v2 + *(v5 + 36);
    *v34 = sub_1E4201D54();
    *(v34 + 8) = 0;
    *(v34 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35EA8, &qword_1E42C6D50);
    sub_1E3C73DC4(v56, v35, v36, v37, v38, v39, v40, v41, v50, v51, v52, v4, v54, v56, v57, v58, v59, v60, v61[0], v61[1]);
    sub_1E4202734();

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35EB0, &qword_1E42C6D58);
    OUTLINED_FUNCTION_75_15(*(v42 + 36));
    OUTLINED_FUNCTION_11_4(v43);
    v44 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35EB8, &qword_1E42C6D60) + 36));
    *v44 = v21;
    v44[1] = v23;
    sub_1E3D79C84();
    sub_1E3C75048();
    sub_1E4203184();
    sub_1E325F69C(v2, &qword_1ECF35E90);
    OUTLINED_FUNCTION_15_16();
    swift_getOpaqueTypeConformance2();
    sub_1E4202ED4();
    sub_1E375C31C(v61);

    OUTLINED_FUNCTION_15_5();
    v45(v55, v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35EA0, &qword_1E42C6D48);
    v46 = OUTLINED_FUNCTION_22_1();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35EA0, &qword_1E42C6D48);
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_10_3();

    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  }
}

void sub_1E3C71318()
{
  OUTLINED_FUNCTION_31_1();
  v3 = OUTLINED_FUNCTION_173();
  v4 = type metadata accessor for Monogram(v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32A48, &qword_1E42B9538);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_20_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E88, &qword_1E42C6D30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_49_2();
  v13 = sub_1E39C408C();
  if (v13)
  {
    v14 = v13;
    v40 = v11;
    v41 = v9;
    v15 = sub_1E39C408C();
    v16 = v15;
    v42 = v0;
    if (v15)
    {
      v17 = (*(*v15 + 392))(v15);

      if (v17)
      {
        OUTLINED_FUNCTION_8();
        v19 = *(v18 + 304);

        v16 = v19(v20);
        LOBYTE(v19) = v21;

        if (v19)
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    v27 = j__OUTLINED_FUNCTION_51_1();
    j__OUTLINED_FUNCTION_18();
    v39 = j__OUTLINED_FUNCTION_18() & 1;
    OUTLINED_FUNCTION_58_2();
    OUTLINED_FUNCTION_6_14(v16, v16, v27 & 1, &v52, 0, 1, 0, 1, v37, v38, SHIBYTE(v38), v39);

    v43 = v52;
    v44 = v53;
    v45 = v16;
    v46 = v16;
    v47 = 256;
    v48 = v55;
    v49 = v56;
    v50 = v57;
    v51 = v58;

    sub_1E375C2C0(&v43, &v52);
    sub_1E3BD63E4(v14, 0, &v43, 0, 0, 0, 0, 0, v8);
    v28 = sub_1E3D79C84();
    v29 = v28[1];
    *&v52 = *v28;
    *(&v52 + 1) = v29;
    v30 = sub_1E3C74FAC(&qword_1EE23BF18, type metadata accessor for Monogram);
    v31 = MEMORY[0x1E69E6158];
    v32 = MEMORY[0x1E69E6168];
    sub_1E4203184();
    sub_1E3C74FF0(v8, type metadata accessor for Monogram);
    *&v52 = v4;
    *(&v52 + 1) = v31;
    v53 = v30;
    v54 = v32;
    OUTLINED_FUNCTION_15_16();
    swift_getOpaqueTypeConformance2();
    sub_1E4202ED4();
    sub_1E375C31C(&v43);

    OUTLINED_FUNCTION_15_5();
    v33(v1, v41);
    sub_1E3741EA0(v2, v42, &qword_1ECF35E88, &qword_1E42C6D30);
    v34 = OUTLINED_FUNCTION_22_1();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v40);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  }
}

void sub_1E3C71750()
{
  OUTLINED_FUNCTION_9_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E60, &qword_1E42C6D00);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_41();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E68, &qword_1E42C6D08);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_28_6();
  if (*(v0 + 240))
  {
    OUTLINED_FUNCTION_8();
    v9 = (*(v11 + 392))();
    if (v9)
    {
      OUTLINED_FUNCTION_30();
      (*(v12 + 152))(v31);
      v13 = v31[3];
      v14 = v32;

      goto LABEL_6;
    }

LABEL_5:
    v13 = 0;
    v14 = 1;
LABEL_6:
    if (*(v0 + 248) && sub_1E3C27528(v9, v10))
    {
      OUTLINED_FUNCTION_30();
      (*(v15 + 152))(&v33);
    }

    if (v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = v13;
    }

    *v1 = sub_1E4201B84();
    *(v1 + 8) = v16;
    *(v1 + 16) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E70, &unk_1E42C6D10);
    sub_1E3C74288();
    v17 = sub_1E4202744();
    v18 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v17)
    {
      v18 = sub_1E4202774();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    sub_1E3741EA0(v1, v2, &qword_1ECF35E60, &qword_1E42C6D00);
    v19 = (v2 + *(v6 + 36));
    *v19 = v18;
    OUTLINED_FUNCTION_11_4(v19);
    OUTLINED_FUNCTION_72_19(v2, v3);
    OUTLINED_FUNCTION_21_1();
    sub_1E3741EA0(v20, v21, v22, &qword_1E42C6D08);
    v23 = OUTLINED_FUNCTION_22_1();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v6);
    OUTLINED_FUNCTION_10_3();
    return;
  }

  if (*(v0 + 248))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_10_3();

  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
}

void sub_1E3C71A10()
{
  OUTLINED_FUNCTION_9_4();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E58, &qword_1E42C6CE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_4();
  v6 = *v0;
  if (sub_1E39C408C())
  {

    if (sub_1E39C408C())
    {
      OUTLINED_FUNCTION_30();
      v8 = (*(v7 + 392))();

      if (v8)
      {
        v9 = *(*v8 + 152);

        v9(&v41, v10);

        if ((v42 & 1) == 0)
        {
          OUTLINED_FUNCTION_13_3(v11, v12, v13, v14);
          goto LABEL_11;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    OUTLINED_FUNCTION_5_8();
LABEL_11:
    v21 = v15;

    sub_1E397F070(v6, v8, &v43);
    v22 = v44;
    v23 = v45;
    v24 = v46;
    v25 = sub_1E4202734();
    v40 = v24;
    v39 = 0;
    *v38 = v43;
    *&v38[16] = v22;
    *&v38[24] = v23;
    v38[32] = v24;
    v38[33] = 0;
    v38[40] = v25;
    *&v38[48] = 0;
    *&v38[56] = v21;
    memset(&v38[64], 0, 17);
    v26 = [objc_opt_self() sharedInstance];
    if (v26)
    {
      v27 = v26;
      v28 = sub_1E3741090(1163022157, 0xE400000000000000, v26);
      v30 = v29;

      if (v30)
      {
        v37[0] = v28;
        v37[1] = v30;
        sub_1E32822E0(v31, v32, v33);
        sub_1E42071D4();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF339A0, &unk_1E42C6CF0);
      v34 = sub_1E3B3969C();
      sub_1E32822E0(v34, v35, v36);
      sub_1E4203114();

      memcpy(v37, v38, 0x51uLL);
      sub_1E325F69C(v37, &qword_1ECF339A0);
      sub_1E3C74F10(v1, v3);
      __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
      OUTLINED_FUNCTION_10_3();
    }

    else
    {
      __break(1u);
    }

    return;
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_10_3();

  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
}

uint64_t sub_1E3C71D10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E3743538(*a1, a2, &qword_1ECF35E48, &qword_1E42C6CD8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E50, &qword_1E42C6CE0);
  sub_1E3743538(a1[1], a2 + v4[12], &qword_1ECF35E38, &qword_1E42C6CC8);
  sub_1E3743538(a1[2], a2 + v4[16], &qword_1ECF295B8, &unk_1E42B9510);
  sub_1E3743538(a1[3], a2 + v4[20], &qword_1ECF295B8, &unk_1E42B9510);
  sub_1E3743538(a1[4], a2 + v4[24], &qword_1ECF35E20, &qword_1E42C6CB0);
  sub_1E3743538(a1[5], a2 + v4[28], &qword_1ECF295B8, &unk_1E42B9510);
  sub_1E3743538(a1[6], a2 + v4[32], &qword_1ECF35E18, &qword_1E42C6CA8);
  v5 = a2 + v4[36];
  v6 = a1[7];
  v7 = a1[8];
  v8 = *v6;
  LOBYTE(v6) = *(v6 + 8);
  *v5 = v8;
  *(v5 + 8) = v6;
  v9 = v4[40];
  v10 = sub_1E4203B14();
  v11 = *(*(v10 - 8) + 16);

  return v11(a2 + v9, v7, v10);
}

void sub_1E3C71E98()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_5_16();
  v37 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35F20, &qword_1E42C6DB8);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_28_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35F28, &qword_1E42C6DC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35F30, &qword_1E42C6DC8);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v11);
  *v8 = sub_1E4201D44();
  *(v8 + 1) = 0;
  v8[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35F38, &qword_1E42C6DD0);
  sub_1E3C72134();
  OUTLINED_FUNCTION_55_0();
  sub_1E3A1558C(v12, v13);
  sub_1E4202ED4();
  OUTLINED_FUNCTION_55_0();
  sub_1E325F69C(v14, v15);
  *v1 = sub_1E4201D44();
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35F48, &qword_1E42C6DD8);
  sub_1E3C727A0();
  OUTLINED_FUNCTION_49_5();
  sub_1E3743538(v16, v17, v18, v19);
  v20 = OUTLINED_FUNCTION_124();
  sub_1E3743538(v20, v21, &qword_1ECF35F20, &qword_1E42C6DB8);
  v22 = v37;
  OUTLINED_FUNCTION_49_5();
  sub_1E3743538(v23, v24, v25, v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35F50, &qword_1E42C6DE0);
  sub_1E3743538(v0, v22 + *(v27 + 48), &qword_1ECF35F20, &qword_1E42C6DB8);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v28, v29);
  OUTLINED_FUNCTION_33_4();
  sub_1E325F69C(v30, v31);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v32, v33);
  OUTLINED_FUNCTION_33_4();
  sub_1E325F69C(v34, v35);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3C72134()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_5_16();
  v77 = v8;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32AC0, &qword_1E42B95B0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_5();
  v78 = v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_3();
  v76 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E28, &qword_1E42C6CB8);
  OUTLINED_FUNCTION_17_2(v13);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v15);
  v70[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E30, &qword_1E42C6CC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v70 - v17;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35F80, &qword_1E42C6E18);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_5();
  v75 = v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_25_3();
  v73 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E40, &qword_1E42C6CD0);
  OUTLINED_FUNCTION_17_2(v24);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_49_2();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E48, &qword_1E42C6CD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_74_1();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35F88, &unk_1E42C6E20);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_5();
  v72 = v30;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_25_3();
  v79 = v33;
  sub_1E3C70E18();
  v34 = sub_1E4202744();
  v35 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v34)
  {
    v35 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_5_23();
  sub_1E3741EA0(v3, v0, &qword_1ECF35E40, &qword_1E42C6CD0);
  v36 = (v0 + *(v26 + 36));
  *v36 = v35;
  OUTLINED_FUNCTION_32_15(v36);
  v37 = sub_1E4202754();
  v38 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v37)
  {
    v38 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_5_23();
  sub_1E3741EA0(v0, v2, &qword_1ECF35E48, &qword_1E42C6CD8);
  v39 = (v2 + *(v28 + 36));
  *v39 = v38;
  OUTLINED_FUNCTION_32_15(v39);
  sub_1E3741EA0(v2, v79, &qword_1ECF35F88, &unk_1E42C6E20);
  v40 = v70[1];
  sub_1E3C71318();
  sub_1E4202744();
  v41 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v42)
  {
    v41 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  sub_1E3741EA0(v40, v18, &qword_1ECF35E28, &qword_1E42C6CB8);
  v43 = &v18[*(v70[0] + 36)];
  *v43 = v41;
  *(v43 + 1) = v4;
  *(v43 + 2) = v5;
  *(v43 + 3) = v6;
  *(v43 + 4) = v7;
  v43[40] = 0;
  sub_1E4202754();
  OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v42)
  {
    sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v18, v1, &qword_1ECF35E30, &qword_1E42C6CC0);
  OUTLINED_FUNCTION_75_15(*(v71 + 36));
  OUTLINED_FUNCTION_11_4(v44);
  v45 = v73;
  OUTLINED_FUNCTION_49_5();
  sub_1E3741EA0(v46, v47, v48, v49);
  v50 = v76;
  sub_1E4203B04();
  *(v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32AE0, &qword_1E42B95D0) + 36)) = 0;
  sub_1E4203DA4();
  sub_1E4200D94();
  v51 = (v50 + *(v74 + 36));
  v52 = v81;
  *v51 = v80;
  v51[1] = v52;
  v51[2] = v82;
  v53 = v79;
  v54 = v72;
  OUTLINED_FUNCTION_55_0();
  sub_1E3743538(v55, v56, v57, &unk_1E42C6E20);
  v58 = v75;
  OUTLINED_FUNCTION_49_5();
  sub_1E3743538(v59, v60, v61, v62);
  v63 = v78;
  sub_1E3743538(v50, v78, &qword_1ECF32AC0, &qword_1E42B95B0);
  v64 = v77;
  sub_1E3743538(v54, v77, &qword_1ECF35F88, &unk_1E42C6E20);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35F90, &unk_1E42C6E30);
  sub_1E3743538(v58, v64 + *(v65 + 48), &qword_1ECF35F80, &qword_1E42C6E18);
  sub_1E3743538(v63, v64 + *(v65 + 64), &qword_1ECF32AC0, &qword_1E42B95B0);
  sub_1E325F69C(v50, &qword_1ECF32AC0);
  sub_1E325F69C(v45, &qword_1ECF35F80);
  sub_1E325F69C(v53, &qword_1ECF35F88);
  sub_1E325F69C(v63, &qword_1ECF32AC0);
  v66 = OUTLINED_FUNCTION_32_0();
  sub_1E325F69C(v66, v67);
  v68 = OUTLINED_FUNCTION_35_5();
  sub_1E325F69C(v68, v69);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3C729F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v22;
  a20 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E18, &qword_1E42C6CA8);
  v25 = OUTLINED_FUNCTION_17_2(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_34_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35F70, &qword_1E42C6E00);
  v28 = v27 - 8;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;
  *v34 = sub_1E4201D44();
  *(v34 + 1) = 0;
  v34[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35F00, &qword_1E42C6D98);
  sub_1E3C73640();
  v34[*(v28 + 44)] = 0;
  sub_1E3C71A10();
  OUTLINED_FUNCTION_90_1();
  v35 = OUTLINED_FUNCTION_98();
  sub_1E3743538(v35, v36, &qword_1ECF35E18, &qword_1E42C6CA8);
  OUTLINED_FUNCTION_93_11();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35F78, &unk_1E42C6E08);
  OUTLINED_FUNCTION_91_10(*(v37 + 48));
  OUTLINED_FUNCTION_95_12(v21);
  OUTLINED_FUNCTION_70_17(v34);
  OUTLINED_FUNCTION_95_12(v20);
  OUTLINED_FUNCTION_70_17(v31);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C72B90()
{
  OUTLINED_FUNCTION_21_5();
  v5 = v4;
  OUTLINED_FUNCTION_5_16();
  v89 = v6;
  v88 = sub_1E4203B14();
  OUTLINED_FUNCTION_0_10();
  v83 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_5();
  v87 = v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v77 - v11;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v77[1] = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_74_1();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295A8, &unk_1E42B9500);
  OUTLINED_FUNCTION_0_10();
  v79 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v18 = v17;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B0, &unk_1E429B6F0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B8, &unk_1E42B9510);
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_5();
  v86 = v24;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25_3();
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35EE0, &qword_1E42C6D78);
  v29 = OUTLINED_FUNCTION_17_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_5();
  v85 = v30;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_25_3();
  v34 = v33;
  OUTLINED_FUNCTION_36();
  if ((*(v35 + 392))())
  {
    OUTLINED_FUNCTION_30();
    v37 = (*(v36 + 1152))();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 1;
  }

  *v1 = sub_1E4201B84();
  *(v1 + 8) = v37;
  *(v1 + 16) = v39 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35EE8, &qword_1E42C6D80);
  sub_1E3C73294();
  sub_1E3741EA0(v1, v34, &qword_1ECF35EE0, &qword_1E42C6D78);
  if (*(v5 + 256))
  {

    v42 = sub_1E3C27528(v40, v41);
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    OUTLINED_FUNCTION_0_195();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v44 = v78;
    sub_1E3883AF4(v42, v78, OpaqueTypeConformance2);
    OUTLINED_FUNCTION_15_5();
    v45(v0, v44);
    sub_1E4202744();
    OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v46)
    {
      sub_1E4202774();
    }

    if (v42)
    {
      v47 = *(*v42 + 152);

      v47(&v92, v48);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_5_23();

    v51 = OUTLINED_FUNCTION_76_14();
    v52(v51, v18, v80);
    v50 = v84;
    OUTLINED_FUNCTION_75_15(*(v84 + 36));
    OUTLINED_FUNCTION_32_15(v53);
    OUTLINED_FUNCTION_12_19();
    sub_1E3741EA0(v54, v55, v56, v57);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v58, v59, v60, v61);
    v49 = 0;
  }

  else
  {
    v49 = 1;
    v50 = v84;
  }

  v81 = v27;
  __swift_storeEnumTagSinglePayload(v27, v49, 1, v50);
  sub_1E4203B04();
  v91 = 0;
  v82 = v34;
  v62 = v85;
  sub_1E3743538(v34, v85, &qword_1ECF35EE0, &qword_1E42C6D78);
  v63 = v86;
  sub_1E3743538(v27, v86, &qword_1ECF295B8, &unk_1E42B9510);
  v90 = 0;
  v64 = v83;
  v65 = v12;
  v66 = *(v83 + 16);
  v67 = v87;
  v68 = v88;
  v66(v87, v65, v88);
  v69 = v91;
  v70 = v89;
  *v89 = v3;
  *(v70 + 8) = v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35EF0, &qword_1E42C6D88);
  sub_1E3743538(v62, v70 + v71[12], &qword_1ECF35EE0, &qword_1E42C6D78);
  sub_1E3743538(v63, v70 + v71[16], &qword_1ECF295B8, &unk_1E42B9510);
  v72 = v70 + v71[20];
  v73 = v90;
  *v72 = v2;
  v72[8] = v73;
  v66(v70 + v71[24], v67, v68);
  v74 = *(v64 + 8);
  v74(v65, v68);
  sub_1E325F69C(v81, &qword_1ECF295B8);
  sub_1E325F69C(v82, &qword_1ECF35EE0);
  v74(v67, v68);
  sub_1E325F69C(v63, &qword_1ECF295B8);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v75, v76);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3C73294()
{
  OUTLINED_FUNCTION_31_1();
  v31 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E18, &qword_1E42C6CA8);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25_3();
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35EF8, &qword_1E42C6D90);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_77_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E28, &qword_1E42C6CB8);
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_5();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_34_1();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E40, &qword_1E42C6CD0);
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_28_6();
  sub_1E3C70E18();
  sub_1E3C71318();
  *v4 = sub_1E4201D44();
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35F00, &qword_1E42C6D98);
  sub_1E3C73640();
  sub_1E3C71A10();
  v25 = OUTLINED_FUNCTION_124();
  sub_1E3743538(v25, v26, &qword_1ECF35E40, &qword_1E42C6CD0);
  sub_1E3743538(v3, v20, &qword_1ECF35E28, &qword_1E42C6CB8);
  sub_1E3743538(v4, v15, &qword_1ECF35EF8, &qword_1E42C6D90);
  sub_1E3743538(v10, v2, &qword_1ECF35E18, &qword_1E42C6CA8);
  OUTLINED_FUNCTION_21_1();
  sub_1E3743538(v27, v28, v29, &qword_1E42C6CD0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35F08, &qword_1E42C6DA0);
  sub_1E3743538(v20, v31 + v30[12], &qword_1ECF35E28, &qword_1E42C6CB8);
  sub_1E3743538(v15, v31 + v30[16], &qword_1ECF35EF8, &qword_1E42C6D90);
  sub_1E3743538(v2, v31 + v30[20], &qword_1ECF35E18, &qword_1E42C6CA8);
  sub_1E325F69C(v10, &qword_1ECF35E18);
  sub_1E325F69C(v4, &qword_1ECF35EF8);
  sub_1E325F69C(v3, &qword_1ECF35E28);
  sub_1E325F69C(v1, &qword_1ECF35E40);
  sub_1E325F69C(v2, &qword_1ECF35E18);
  sub_1E325F69C(v15, &qword_1ECF35EF8);
  sub_1E325F69C(v20, &qword_1ECF35E28);
  sub_1E325F69C(v0, &qword_1ECF35E40);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C73640()
{
  OUTLINED_FUNCTION_9_4();
  v4 = v3;
  v112 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E20, &qword_1E42C6CB0);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_77_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v102 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295A8, &unk_1E42B9500);
  OUTLINED_FUNCTION_0_10();
  v110 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_28_6();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B0, &unk_1E429B6F0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B8, &unk_1E42B9510);
  v26 = OUTLINED_FUNCTION_17_2(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_5();
  v114 = v27;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_18_6();
  v113 = v29;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_18_6();
  v117 = v31;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_25_3();
  v118 = v33;
  v115 = v19;
  v116 = v4;
  v34 = *(v4 + 224);
  v109 = v9;
  if (v34)
  {
    v105 = v0;
    v106 = v2;

    v37 = v14;
    v38 = sub_1E3C27528(v35, v36);
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    OUTLINED_FUNCTION_0_195();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E3883AF4(v38, v9, OpaqueTypeConformance2);
    v40 = *(v11 + 8);
    v103 = v37;
    v40(v37, v9);
    sub_1E4202744();
    v41 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v42)
    {
      v41 = sub_1E4202774();
    }

    v104 = v11;
    if (v38)
    {
      v43 = *(*v38 + 152);

      v43(&v119, v44);
      v45 = v110;

      OUTLINED_FUNCTION_32_1();
    }

    else
    {
      v45 = v110;
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v47 = v108;
    (*(v45 + 32))(v108, v1, v15);
    v19 = v115;
    v48 = (v47 + *(v115 + 36));
    *v48 = v41;
    OUTLINED_FUNCTION_11_4(v48);
    v49 = v107;
    OUTLINED_FUNCTION_72_19(v47, v107);
    OUTLINED_FUNCTION_72_19(v49, v118);
    v46 = 0;
    v2 = v106;
    v11 = v104;
    v14 = v103;
  }

  else
  {
    v46 = 1;
  }

  v50 = 1;
  __swift_storeEnumTagSinglePayload(v118, v46, 1, v19);
  if (*(v116 + 232))
  {
    v110 = v15;

    v53 = v11;
    v54 = sub_1E3C27528(v51, v52);
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    OUTLINED_FUNCTION_0_195();
    v55 = swift_getOpaqueTypeConformance2();
    v56 = v109;
    sub_1E3883AF4(v54, v109, v55);
    (*(v53 + 8))(v14, v56);
    sub_1E4202744();
    OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v42)
    {
      sub_1E4202774();
    }

    if (v54)
    {
      v57 = *(*v54 + 152);

      v57(&v120, v58);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v60 = OUTLINED_FUNCTION_35_5();
    v61(v60);
    v19 = v115;
    OUTLINED_FUNCTION_75_15(*(v115 + 36));
    OUTLINED_FUNCTION_11_4(v62);
    OUTLINED_FUNCTION_12_19();
    sub_1E3741EA0(v63, v64, v65, v66);
    v59 = v117;
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v67, v68, v69, v70);
    v50 = 0;
  }

  else
  {
    v59 = v117;
  }

  __swift_storeEnumTagSinglePayload(v59, v50, 1, v19);
  sub_1E3C71750();
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v71, v72, v73, v74);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v75, v76, v77, v78);
  v79 = v111;
  sub_1E3743538(v2, v111, &qword_1ECF35E20, &qword_1E42C6CB0);
  v80 = v112;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v81, v82, v83, v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35F10, &qword_1E42C6DA8);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v86, v87, v88, v89);
  sub_1E3743538(v79, v80 + *(v85 + 64), &qword_1ECF35E20, &qword_1E42C6CB0);
  OUTLINED_FUNCTION_55_0();
  sub_1E325F69C(v90, v91);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v92, v93);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v94, v95);
  OUTLINED_FUNCTION_55_0();
  sub_1E325F69C(v96, v97);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v98, v99);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v100, v101);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3C73DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29600, &unk_1E429B740);
  v27 = OUTLINED_FUNCTION_17_2(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_34_1();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29608, &qword_1E42B96E0);
  v30 = OUTLINED_FUNCTION_17_2(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_4_6();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &a9 - v35;
  sub_1E3C73F34();
  sub_1E3C741BC(v21);
  OUTLINED_FUNCTION_90_1();
  v37 = OUTLINED_FUNCTION_98();
  sub_1E3743538(v37, v38, &qword_1ECF29600, &unk_1E429B740);
  OUTLINED_FUNCTION_93_11();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35ED0, &qword_1E42C6D68);
  v40 = v25 + *(v39 + 48);
  *v40 = 0;
  *(v40 + 8) = 0;
  OUTLINED_FUNCTION_91_10(*(v39 + 64));
  OUTLINED_FUNCTION_95_12(v21);
  OUTLINED_FUNCTION_70_17(v36);
  OUTLINED_FUNCTION_95_12(v20);
  OUTLINED_FUNCTION_70_17(v33);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C73F34()
{
  OUTLINED_FUNCTION_9_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29240, &unk_1E429B770);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v39 - v10;
  if (*(v0 + *(type metadata accessor for StandardLockupListView(0) + 60)) && (v12 = sub_1E37605C4()) != 0)
  {
    v14 = v12;
    v15 = sub_1E37608FC(v12, v13);
    sub_1E3EB9BB4(v40);
    v16 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(v14, v40, v15, v16 & 1, 0, 0, v1);
    sub_1E375C31C(v40);
    if (v15 && (OUTLINED_FUNCTION_8(), v18 = *(v17 + 152), v39[1] = v2, v19 = , v18(&v41, v19), , (v42 & 1) == 0))
    {
      OUTLINED_FUNCTION_13_3(v20, v21, v22, v23);
    }

    else
    {
      OUTLINED_FUNCTION_5_8();
    }

    OUTLINED_FUNCTION_3();
    v29 = sub_1E4202734();

    v30 = OUTLINED_FUNCTION_124();
    v31(v30);
    v32 = (v8 + *(v4 + 36));
    *v32 = v29;
    OUTLINED_FUNCTION_11_4(v32);
    OUTLINED_FUNCTION_72_19(v8, v11);
    OUTLINED_FUNCTION_21_1();
    sub_1E3741EA0(v33, v34, v35, &unk_1E429B770);
    v36 = OUTLINED_FUNCTION_22_1();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v4);
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_10_3();

    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  }
}

uint64_t sub_1E3C741BC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PlaybackStatus(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v5 = sub_1E39C408C();
  if (v5)
  {
    sub_1E413D6F4(v5, v1);
    sub_1E3C75118(v1, a1);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
  }

  else
  {
    OUTLINED_FUNCTION_32_2();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v3);
  }
}

void sub_1E3C74288()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E78, &qword_1E42D6520);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_77_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33808, &qword_1E42C2F00);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v38 - v14;
  v39 = *(v2 + 240);
  v38[2] = v2;

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB28, &qword_1E42A2A60);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFD8, &qword_1E42A6810);
  sub_1E4148F70(sub_1E3C74F80, v38, v16, v17, v15);

  v39 = *(v2 + 248);

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29088, &qword_1E42B7E40);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295A8, &unk_1E42B9500);
  sub_1E4148F70(sub_1E3C74658, 0, v18, v19, v0);

  OUTLINED_FUNCTION_49_5();
  sub_1E3743538(v20, v21, v22, v23);
  sub_1E3743538(v0, v9, &qword_1ECF35E78, &qword_1E42D6520);
  OUTLINED_FUNCTION_49_5();
  sub_1E3743538(v24, v25, v26, v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E80, &unk_1E42C6D20);
  sub_1E3743538(v9, v4 + *(v28 + 48), &qword_1ECF35E78, &qword_1E42D6520);
  v29 = v4 + *(v28 + 64);
  *v29 = 0;
  *(v29 + 8) = 0;
  OUTLINED_FUNCTION_55_0();
  sub_1E325F69C(v30, v31);
  OUTLINED_FUNCTION_33_4();
  sub_1E325F69C(v32, v33);
  OUTLINED_FUNCTION_55_0();
  sub_1E325F69C(v34, v35);
  OUTLINED_FUNCTION_33_4();
  sub_1E325F69C(v36, v37);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C74520(uint64_t *a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_173();
  type metadata accessor for TextBadge(v4);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = *a1;
  v10 = *(a2 + *(type metadata accessor for StandardLockupListView(0) + 56));

  OUTLINED_FUNCTION_18();
  sub_1E3FC96D0(v9, v10, v8);
  sub_1E3C74FAC(qword_1EE23BBE8, type metadata accessor for TextBadge);
  View.accessibilityIdentifier(key:location:)();
  sub_1E3C74FF0(v8, type metadata accessor for TextBadge);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFD8, &qword_1E42A6810);
  v11 = OUTLINED_FUNCTION_22_1();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_1E3C74658@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  v7 = sub_1E3C27528(v5, v6);
  OUTLINED_FUNCTION_0_195();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E3883AF4(v7, v3, OpaqueTypeConformance2);

  v9 = OUTLINED_FUNCTION_124();
  v10(v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295A8, &unk_1E42B9500);
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v11);
}

unint64_t sub_1E3C74790()
{
  result = qword_1ECF35D68;
  if (!qword_1ECF35D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35D70, &qword_1E42C6BA8);
    sub_1E3C74860();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35DC8, &qword_1E42C6BD8);
    sub_1E3C74AD0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35D68);
  }

  return result;
}

unint64_t sub_1E3C74860()
{
  result = qword_1ECF35D78;
  if (!qword_1ECF35D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35D80, &qword_1E42C6BB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35D88, &qword_1E42C6BB8);
    sub_1E3C74960();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35DA8, &qword_1E42C6BC8);
    sub_1E3C74A18();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35D78);
  }

  return result;
}

unint64_t sub_1E3C74960()
{
  result = qword_1ECF35D90;
  if (!qword_1ECF35D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35D88, &qword_1E42C6BB8);
    sub_1E3A1558C(&qword_1ECF35D98, &qword_1ECF35DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35D90);
  }

  return result;
}

unint64_t sub_1E3C74A18()
{
  result = qword_1ECF35DB0;
  if (!qword_1ECF35DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35DA8, &qword_1E42C6BC8);
    sub_1E3A1558C(&qword_1ECF35DB8, &qword_1ECF35DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35DB0);
  }

  return result;
}

unint64_t sub_1E3C74AD0()
{
  result = qword_1ECF35DD0;
  if (!qword_1ECF35DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35DC8, &qword_1E42C6BD8);
    sub_1E3A1558C(&qword_1ECF35DD8, &qword_1ECF35DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35DD0);
  }

  return result;
}

uint64_t sub_1E3C74BDC(uint64_t a1)
{
  type metadata accessor for ViewModel();
  OUTLINED_FUNCTION_39_6();
  if (!(!v3 & v2))
  {
    type metadata accessor for ContextMenuModel(319);
    OUTLINED_FUNCTION_39_6();
    if (!(!v3 & v2))
    {
      sub_1E3C74E00(319, qword_1EE282B40, type metadata accessor for ImageViewModel, MEMORY[0x1E69E6720]);
      OUTLINED_FUNCTION_39_6();
      if (!(!v3 & v2))
      {
        sub_1E3C74E00(319, qword_1EE283398, type metadata accessor for TextViewModel, MEMORY[0x1E69E6720]);
        OUTLINED_FUNCTION_39_6();
        if (!(!v3 & v2))
        {
          sub_1E3C74E00(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
          if (v5 > 0x3F)
          {
            return v4;
          }

          else
          {
            sub_1E3C74E00(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
            OUTLINED_FUNCTION_39_6();
            if (!(!v3 & v2))
            {
              type metadata accessor for TextBadgePresenter(319);
              OUTLINED_FUNCTION_39_6();
              if (!(!v3 & v2))
              {
                sub_1E3C74E00(319, qword_1EE274498, type metadata accessor for ImageBadgePresenter, MEMORY[0x1E69E6720]);
                OUTLINED_FUNCTION_39_6();
                if (!(!v3 & v2))
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_1E3C74E00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E3C74E64(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    sub_1E3A1558C(&qword_1EE2889E0, &qword_1ECF2C5D8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E3C74F10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35E58, &qword_1E42C6CE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3C74FAC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E3C74FF0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1E3C75048()
{
  result = qword_1ECF35EC0;
  if (!qword_1ECF35EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35E90, &qword_1E42C6D38);
    swift_getOpaqueTypeConformance2();
    sub_1E3A1558C(&qword_1ECF35EC8, &qword_1ECF35EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35EC0);
  }

  return result;
}

uint64_t sub_1E3C75118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackStatus(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_91_10@<X0>(uint64_t a1@<X8>)
{

  return sub_1E3743538(v4, v3 + a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_95_12(uint64_t a1)
{

  return sub_1E325F69C(a1, v1);
}

void sub_1E3C7522C(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1E3C75288(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI39ViewControllerHostingCollectionViewCell_hostedViewController;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E38D12C8;
}

id sub_1E3C7530C()
{
  v1 = OBJC_IVAR____TtC8VideosUI39ViewControllerHostingCollectionViewCell____lazy_storage___containerView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI39ViewControllerHostingCollectionViewCell____lazy_storage___containerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI39ViewControllerHostingCollectionViewCell____lazy_storage___containerView);
  }

  else
  {
    v4 = [objc_allocWithZone(VUIBaseView) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1E3C75380(char a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_21();
    v2 = (*(v1 + 96))();
    if (v2)
    {
      v3 = v2;
      v4 = [v2 view];

      if (v4)
      {
        v5 = OUTLINED_FUNCTION_6_12();
        [v6 v7];
      }
    }
  }

  else
  {
    sub_1E3C75490();
  }

  OUTLINED_FUNCTION_6_12();
}

void sub_1E3C75490()
{
  v1 = v0;
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    v36 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))();
    if (!v36)
    {
LABEL_18:
      OUTLINED_FUNCTION_8_19();
      return;
    }

    v37 = v36;
    v47 = [v36 view];

    if (v47)
    {
      v38 = [v1 vuiContentView];
      [v38 bounds];
      OUTLINED_FUNCTION_3();

      v39 = OUTLINED_FUNCTION_6();
      [v40 v41];
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  v2 = objc_opt_self();
  if (([v2 isMac] & 1) != 0 || objc_msgSend(v2, sel_isPad))
  {
    v3 = [v1 vuiContentView];
    [v3 bounds];
    OUTLINED_FUNCTION_3();

    v48.origin.x = OUTLINED_FUNCTION_6();
    CGRectGetWidth(v48);
  }

  v4 = OUTLINED_FUNCTION_17_91();
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v49.origin.x = v6;
  v49.origin.y = v8;
  v49.size.width = v10;
  v49.size.height = v12;
  CGRectGetWidth(v49);
  v13 = OUTLINED_FUNCTION_17_91();
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v50.origin.x = v15;
  v50.origin.y = v17;
  v50.size.width = v19;
  v50.size.height = v21;
  CGRectGetHeight(v50);
  v22 = sub_1E3C7530C();
  v23 = OUTLINED_FUNCTION_17_91();
  [v23 bounds];

  [v1 vuiIsRTL];
  VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
  [v22 setFrame_];

  v24 = OUTLINED_FUNCTION_17_91();
  [v24 bounds];

  v25 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v26 = v25();
  if (v26)
  {
    v27 = v26;
    v28 = [v26 view];

    if (v28)
    {
      [*(v1 + OBJC_IVAR____TtC8VideosUI39ViewControllerHostingCollectionViewCell____lazy_storage___containerView) bounds];
      [v1 vuiIsRTL];
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      [v28 setFrame_];

      goto LABEL_8;
    }

    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

LABEL_8:
  v29 = v25();
  if (!v29)
  {
    goto LABEL_18;
  }

  v30 = v29;
  v46 = [v29 view];

  if (!v46)
  {
    goto LABEL_18;
  }

  v31 = OBJC_IVAR____TtC8VideosUI39ViewControllerHostingCollectionViewCell____lazy_storage___containerView;
  v32 = [*(v1 + OBJC_IVAR____TtC8VideosUI39ViewControllerHostingCollectionViewCell____lazy_storage___containerView) vuiBackgroundColor];
  v33 = [v46 vuiBackgroundColor];
  v34 = v33;
  if (v32)
  {
    if (v33)
    {
      sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
      v35 = sub_1E4206F64();

      if (v35)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v34 = v32;
  }

  else if (!v33)
  {
    goto LABEL_24;
  }

LABEL_23:
  v42 = *(v1 + v31);
  v43 = [v46 vuiBackgroundColor];
  [v42 setVuiBackgroundColor_];

LABEL_24:
  OUTLINED_FUNCTION_8_19();
}

void sub_1E3C75944()
{
  v1 = v0;
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 96))();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 view];

    if (v5)
    {
      v6 = [v5 superview];
      if (!v6 || (v7 = v6, sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250), v8 = v1, v9 = sub_1E4206F64(), v7, v8, (v9 & 1) == 0))
      {
        sub_1E3C75490();
        v10 = sub_1E39DFFC8();
        v11 = [v1 vuiContentView];
        if (v10)
        {
          v12 = sub_1E3C7530C();
          v13 = OBJC_IVAR____TtC8VideosUI39ViewControllerHostingCollectionViewCell____lazy_storage___containerView;
          [v11 vui:v12 addSubview:*&v1[OBJC_IVAR____TtC8VideosUI39ViewControllerHostingCollectionViewCell____lazy_storage___containerView] oldView:?];

          v11 = *&v1[v13];
        }

        [v11 vui:v5 addSubview:0 oldView:?];
      }
    }
  }

  if (sub_1E39DFFC8())
  {
    v14 = objc_opt_self();
    if (([v14 isPad] & 1) != 0 || objc_msgSend(v14, sel_isMac))
    {
      v15 = [v1 vuiContentView];
      [v15 setClipsToBounds_];

      v16 = [v1 vuiCellView];
      [v16 setClipsToBounds_];
    }

    v17 = sub_1E3C7530C();
    [v17 setClipsToBounds_];
  }
}

void sub_1E3C75BA4()
{
  v1 = v0;
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 96))();
  if (v3)
  {
    v29 = v3;
    v4 = [v3 parentViewController];
    if (v4)
    {

      v35 = v29;
      sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
      v5 = v29;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FB8, &qword_1E42C6F30);
      if (OUTLINED_FUNCTION_90_0(&aBlock, &v35, v7, v6))
      {
        sub_1E3251BE8(&aBlock, v36);
        v8 = v37;
        v9 = v38;
        __swift_project_boxed_opaque_existential_1(v36, v37);
        if ((*(v9 + 8))(0, v8, v9))
        {
          v10 = [v5 vuiView];
          if (!v10)
          {
LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

          v11 = v10;
          v12 = [v10 snapshotViewAfterScreenUpdates_];

          if (v12)
          {
            v13 = v12;
            v14 = [v5 vuiView];
            if (!v14)
            {
LABEL_20:
              __break(1u);
              return;
            }

            v15 = v14;
            [v14 frame];
            OUTLINED_FUNCTION_3();

            v16 = OUTLINED_FUNCTION_6();
            [v17 v18];
          }

          v19 = [v1 vuiContentView];
          [v19 vui:v12 addSubview:0 oldView:?];

          v20 = objc_opt_self();
          v21 = swift_allocObject();
          *(v21 + 16) = v12;
          v33 = sub_1E3C77400;
          v34 = v21;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v31 = sub_1E378AEA4;
          v32 = &block_descriptor_82;
          v22 = _Block_copy(&aBlock);
          v23 = v12;

          v24 = swift_allocObject();
          *(v24 + 16) = v12;
          v33 = sub_1E3C7741C;
          v34 = v24;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v31 = sub_1E37EB82C;
          v32 = &block_descriptor_7_0;
          v25 = _Block_copy(&aBlock);
          v26 = v23;

          [v20 animateWithDuration:v22 animations:v25 completion:0.5];
          _Block_release(v25);
          _Block_release(v22);
        }

        __swift_destroy_boxed_opaque_existential_1(v36);
      }

      else
      {
        OUTLINED_FUNCTION_19_9();
        sub_1E325F748(&aBlock, &qword_1ECF35FC0, &qword_1E42C6F38);
      }

      [v5 vui:0 willMoveToParentViewController:?];
      v27 = [v5 view];
      if (v27)
      {
        v28 = v27;
        [v27 vui_removeFromSuperView];

        [v5 vui_removeFromParentViewController];
        return;
      }

      __break(1u);
      goto LABEL_19;
    }
  }
}

id sub_1E3C75FC0()
{
  OUTLINED_FUNCTION_0_8();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI39ViewControllerHostingCollectionViewCell____lazy_storage___containerView) = 0;
  v5 = type metadata accessor for ViewControllerHostingCollectionViewCell();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E3C76074(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8VideosUI39ViewControllerHostingCollectionViewCell____lazy_storage___containerView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ViewControllerHostingCollectionViewCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3C76124()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewControllerHostingCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3C761A4()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 96))();
}

uint64_t sub_1E3C761F0()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 104))();
}

void (*sub_1E3C7623C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  v2[4] = (*(v3 + 112))();
  return sub_1E37BCF0C;
}

uint64_t sub_1E3C762C4()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 152))();
}

uint64_t sub_1E3C76310()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 160))();
}

uint64_t sub_1E3C7635C()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 96))();
  if (!v1 || (LOBYTE(v37[0]) = v1, sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258), v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FB0, &qword_1E42C6E48), v10 = OUTLINED_FUNCTION_0_196(v2, v3, v4, v5, v6, v7, v8, v9, v32, v33, v34, v35, v36, v37[0]), (v10 & 1) == 0))
  {
    OUTLINED_FUNCTION_28_0();
    goto LABEL_6;
  }

  if (!v35)
  {
LABEL_6:
    sub_1E325F748(&v32, &qword_1ECF35FA8, &qword_1E42C6E40);
    v20 = 0;
    return v20 & 1;
  }

  v18 = OUTLINED_FUNCTION_4_5(v10, v11, v12, v13, v14, v15, v16, v17, v32);
  sub_1E3251BE8(v18, v19);
  v20 = v38;
  OUTLINED_FUNCTION_70(v37);
  v21 = OUTLINED_FUNCTION_26_1();
  v23 = v22(v21);
  OUTLINED_FUNCTION_10_102(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33);
  return v20 & 1;
}

uint64_t sub_1E3C76454()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 96))();
  if (!v1 || (LOBYTE(v37[0]) = v1, sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258), v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FB0, &qword_1E42C6E48), v10 = OUTLINED_FUNCTION_0_196(v2, v3, v4, v5, v6, v7, v8, v9, v32, v33, v34, v35, v36, v37[0]), (v10 & 1) == 0))
  {
    OUTLINED_FUNCTION_28_0();
    goto LABEL_6;
  }

  if (!v35)
  {
LABEL_6:
    sub_1E325F748(&v32, &qword_1ECF35FA8, &qword_1E42C6E40);
    v20 = 0;
    return v20 & 1;
  }

  v18 = OUTLINED_FUNCTION_4_5(v10, v11, v12, v13, v14, v15, v16, v17, v32);
  sub_1E3251BE8(v18, v19);
  v20 = v38;
  OUTLINED_FUNCTION_70(v37);
  v21 = OUTLINED_FUNCTION_26_1();
  v23 = v22(v21);
  OUTLINED_FUNCTION_10_102(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33);
  return v20 & 1;
}

uint64_t sub_1E3C7654C()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 96))();
  if (!v1 || (LOBYTE(v37[0]) = v1, sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258), v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FB0, &qword_1E42C6E48), v10 = OUTLINED_FUNCTION_0_196(v2, v3, v4, v5, v6, v7, v8, v9, v32, v33, v34, v35, v36, v37[0]), (v10 & 1) == 0))
  {
    OUTLINED_FUNCTION_28_0();
    goto LABEL_6;
  }

  if (!v35)
  {
LABEL_6:
    sub_1E325F748(&v32, &qword_1ECF35FA8, &qword_1E42C6E40);
    v20 = 0;
    return v20 & 1;
  }

  v18 = OUTLINED_FUNCTION_4_5(v10, v11, v12, v13, v14, v15, v16, v17, v32);
  sub_1E3251BE8(v18, v19);
  v20 = v38;
  OUTLINED_FUNCTION_70(v37);
  v21 = OUTLINED_FUNCTION_26_1();
  v23 = v22(v21);
  OUTLINED_FUNCTION_10_102(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33);
  return v20 & 1;
}

uint64_t sub_1E3C76644()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 96))();
  if (!v1 || (LOBYTE(v37[0]) = v1, sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258), v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FB0, &qword_1E42C6E48), v10 = OUTLINED_FUNCTION_0_196(v2, v3, v4, v5, v6, v7, v8, v9, v32, v33, v34, v35, v36, v37[0]), (v10 & 1) == 0))
  {
    OUTLINED_FUNCTION_28_0();
    goto LABEL_6;
  }

  if (!v35)
  {
LABEL_6:
    sub_1E325F748(&v32, &qword_1ECF35FA8, &qword_1E42C6E40);
    v20 = 0;
    return v20 & 1;
  }

  v18 = OUTLINED_FUNCTION_4_5(v10, v11, v12, v13, v14, v15, v16, v17, v32);
  sub_1E3251BE8(v18, v19);
  v20 = v38;
  OUTLINED_FUNCTION_70(v37);
  v21 = OUTLINED_FUNCTION_26_1();
  v23 = v22(v21);
  OUTLINED_FUNCTION_10_102(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33);
  return v20 & 1;
}

id sub_1E3C7673C()
{
  OUTLINED_FUNCTION_21();
  if (*(v0 + 96))() && (sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FB0, &qword_1E42C6E48), (swift_dynamicCast()))
  {
    if (v7)
    {
      sub_1E3251BE8(&v6, v8);
      OUTLINED_FUNCTION_70(v8);
      v1 = OUTLINED_FUNCTION_26_1();
      v3 = v2(v1);
      __swift_destroy_boxed_opaque_existential_1(v8);
      return v3;
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_9();
  }

  sub_1E325F748(&v6, &qword_1ECF35FA8, &qword_1E42C6E40);
  v5 = *sub_1E3E60700();

  return v5;
}

double sub_1E3C768A8()
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 96))();
  if (!v2 || (LOBYTE(v37[0]) = v2, sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258), v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FB0, &qword_1E42C6E48), v11 = OUTLINED_FUNCTION_0_196(v3, v4, v5, v6, v7, v8, v9, v10, v32, v33, v34, v35, v36, v37[0]), (v11 & 1) == 0))
  {
    OUTLINED_FUNCTION_28_0();
    goto LABEL_6;
  }

  if (!v35)
  {
LABEL_6:
    sub_1E325F748(&v32, &qword_1ECF35FA8, &qword_1E42C6E40);
    return 0.0;
  }

  v19 = OUTLINED_FUNCTION_4_5(v11, v12, v13, v14, v15, v16, v17, v18, v32);
  sub_1E3251BE8(v19, v20);
  OUTLINED_FUNCTION_70(v37);
  v21 = OUTLINED_FUNCTION_26_1();
  v23 = v22(v21);
  OUTLINED_FUNCTION_16_96(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33);
  return v0;
}

double sub_1E3C769A8()
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 96))();
  if (!v2 || (LOBYTE(v37[0]) = v2, sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258), v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FB0, &qword_1E42C6E48), v11 = OUTLINED_FUNCTION_0_196(v3, v4, v5, v6, v7, v8, v9, v10, v32, v33, v34, v35, v36, v37[0]), (v11 & 1) == 0))
  {
    OUTLINED_FUNCTION_28_0();
    goto LABEL_6;
  }

  if (!v35)
  {
LABEL_6:
    sub_1E325F748(&v32, &qword_1ECF35FA8, &qword_1E42C6E40);
    return 0.0;
  }

  v19 = OUTLINED_FUNCTION_4_5(v11, v12, v13, v14, v15, v16, v17, v18, v32);
  sub_1E3251BE8(v19, v20);
  OUTLINED_FUNCTION_70(v37);
  v21 = OUTLINED_FUNCTION_26_1();
  v23 = v22(v21);
  OUTLINED_FUNCTION_16_96(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33);
  return v0;
}

double sub_1E3C76AA8()
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 96))();
  if (!v2 || (LOBYTE(v37[0]) = v2, sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258), v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FB0, &qword_1E42C6E48), v11 = OUTLINED_FUNCTION_0_196(v3, v4, v5, v6, v7, v8, v9, v10, v32, v33, v34, v35, v36, v37[0]), (v11 & 1) == 0))
  {
    OUTLINED_FUNCTION_28_0();
    goto LABEL_6;
  }

  if (!v35)
  {
LABEL_6:
    sub_1E325F748(&v32, &qword_1ECF35FA8, &qword_1E42C6E40);
    return 50.0;
  }

  v19 = OUTLINED_FUNCTION_4_5(v11, v12, v13, v14, v15, v16, v17, v18, v32);
  sub_1E3251BE8(v19, v20);
  OUTLINED_FUNCTION_70(v37);
  v21 = OUTLINED_FUNCTION_26_1();
  v23 = v22(v21);
  OUTLINED_FUNCTION_16_96(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33);
  return v0;
}

double sub_1E3C76BAC()
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 96))();
  if (!v2 || (LOBYTE(v37[0]) = v2, sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258), v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FB0, &qword_1E42C6E48), v11 = OUTLINED_FUNCTION_0_196(v3, v4, v5, v6, v7, v8, v9, v10, v32, v33, v34, v35, v36, v37[0]), (v11 & 1) == 0))
  {
    OUTLINED_FUNCTION_28_0();
    goto LABEL_6;
  }

  if (!v35)
  {
LABEL_6:
    sub_1E325F748(&v32, &qword_1ECF35FA8, &qword_1E42C6E40);
    return 10.0;
  }

  v19 = OUTLINED_FUNCTION_4_5(v11, v12, v13, v14, v15, v16, v17, v18, v32);
  sub_1E3251BE8(v19, v20);
  OUTLINED_FUNCTION_70(v37);
  v21 = OUTLINED_FUNCTION_26_1();
  v23 = v22(v21);
  OUTLINED_FUNCTION_16_96(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33);
  return v0;
}

uint64_t sub_1E3C76CAC()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 96))();
  if (!v1 || (LOBYTE(v37[0]) = v1, sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258), v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FB0, &qword_1E42C6E48), v10 = OUTLINED_FUNCTION_0_196(v2, v3, v4, v5, v6, v7, v8, v9, v32, v33, v34, v35, v36, v37[0]), (v10 & 1) == 0))
  {
    OUTLINED_FUNCTION_28_0();
    goto LABEL_6;
  }

  if (!v35)
  {
LABEL_6:
    sub_1E325F748(&v32, &qword_1ECF35FA8, &qword_1E42C6E40);
    v20 = 0;
    return v20 & 1;
  }

  v18 = OUTLINED_FUNCTION_4_5(v10, v11, v12, v13, v14, v15, v16, v17, v32);
  sub_1E3251BE8(v18, v19);
  v20 = v38;
  OUTLINED_FUNCTION_70(v37);
  v21 = OUTLINED_FUNCTION_26_1();
  v23 = v22(v21);
  OUTLINED_FUNCTION_10_102(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33);
  return v20 & 1;
}

uint64_t sub_1E3C76DA4(uint64_t a1, double a2)
{
  OUTLINED_FUNCTION_21();
  v5 = (*(v4 + 96))();
  if (!v5 || (v12 = v5, sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258), v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FB0, &qword_1E42C6E48), (OUTLINED_FUNCTION_90_0(&v13, &v12, v7, v6) & 1) == 0))
  {
    OUTLINED_FUNCTION_19_9();
    goto LABEL_6;
  }

  if (!v14)
  {
LABEL_6:
    sub_1E325F748(&v13, &qword_1ECF35FA8, &qword_1E42C6E40);
    return 0;
  }

  sub_1E3251BE8(&v13, v15);
  v8 = v16;
  v9 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v10 = (*(v9 + 16))(a1, v8, v9, a2);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v10;
}

uint64_t sub_1E3C76EDC(uint64_t a1, char a2, double a3)
{
  OUTLINED_FUNCTION_21();
  v7 = (*(v6 + 96))();
  if (!v7 || (v41[0] = v7, sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258), v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FB0, &qword_1E42C6E48), v15 = OUTLINED_FUNCTION_4_5(v8, v9, v10, v8, v11, v12, v13, v14, v40[0]), v19 = OUTLINED_FUNCTION_90_0(v15, v16, v17, v18), (v19 & 1) == 0))
  {
    OUTLINED_FUNCTION_28_0();
    goto LABEL_6;
  }

  if (!v40[3])
  {
LABEL_6:
    sub_1E325F748(v40, &qword_1ECF35FA8, &qword_1E42C6E40);
    return 0;
  }

  v27 = OUTLINED_FUNCTION_4_5(v19, v20, v21, v22, v23, v24, v25, v26, v40[0]);
  sub_1E3251BE8(v27, v28);
  v29 = v42;
  v30 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v31 = (*(v30 + 24))(a1, a2 & 1, v29, v30, a3);
  OUTLINED_FUNCTION_10_102(v31, v32, v33, v34, v35, v36, v37, v38, v40[0], v40[1]);
  return a1;
}

uint64_t sub_1E3C77014(uint64_t a1)
{
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 96))();
  if (v3 && (v31[0] = v3, sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258), v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FB0, &qword_1E42C6E48), v11 = OUTLINED_FUNCTION_4_5(v4, v5, v6, v4, v7, v8, v9, v10, v30[0]), v15 = OUTLINED_FUNCTION_90_0(v11, v12, v13, v14), (v15 & 1) != 0))
  {
    if (v30[3])
    {
      v23 = OUTLINED_FUNCTION_4_5(v15, v16, v17, v18, v19, v20, v21, v22, v30[0]);
      sub_1E3251BE8(v23, v24);
      v25 = v32;
      v26 = v33;
      __swift_project_boxed_opaque_existential_1(v31, v32);
      v27 = OUTLINED_FUNCTION_6_12();
      v28(a1, v25, v26, v27);
      return __swift_destroy_boxed_opaque_existential_1(v31);
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_0();
  }

  return sub_1E325F748(v30, &qword_1ECF35FA8, &qword_1E42C6E40);
}

void sub_1E3C77324(char a1)
{
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 96))();
  if (v3)
  {
    v8 = v3;
    ObjectType = swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v8, ObjectType, &protocol descriptor for TabBarChildControllerSupporting))
    {
      v6 = v5;
      v7 = swift_getObjectType();
      (*(v6 + 8))(a1 & 1, v7, v6);
    }
  }
}

id sub_1E3C77400()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

uint64_t sub_1E3C77434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  sub_1E42076E4();
  sub_1E42076E4();
  sub_1E4205D94();
  v14 = *(v7 + 8);
  v14(v10, a5);
  return (v14)(v13, a5);
}

id sub_1E3C7758C()
{
  v0 = objc_opt_self();
  v1 = sub_1E4205ED4();
  v2 = [objc_opt_self() vui_videosUIBundle];
  v3 = [v0 vuiImageNamed:v1 inBundle:v2];

  return v3;
}

id sub_1E3C7762C(unsigned __int8 a1)
{
  v2 = [v1 imageWithRenderingMode_];

  return v2;
}

id sub_1E3C77668()
{
  v1 = [v0 imageWithHorizontallyFlippedOrientation];

  return v1;
}

id sub_1E3C776A0(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  sub_1E4205F14();

  v3 = sub_1E4206124();

  if (v3)
  {
    v4 = sub_1E4205F14();
    v7 = OUTLINED_FUNCTION_1_185(v4, v5, v6);
    OUTLINED_FUNCTION_0_197(v7, v8, v9, v10, v11, v12, MEMORY[0x1E69E6158], v13, v32, v33, v34);
    OUTLINED_FUNCTION_2_151();

    objc_opt_self();
    v14 = OUTLINED_FUNCTION_3_149();

    v15 = [objc_opt_self() configurationPreferringMonochrome];
    v16 = [a2 vuiSystemImageNamed:v14 withConfiguration:v15 accessibilityDescription:0];
  }

  else
  {
    sub_1E4205F14();
    v18 = sub_1E4206124();

    if (v18 & 1) != 0 || (sub_1E4205F14(), v19 = sub_1E4206124(), , (v19))
    {
      v20 = sub_1E4205F14();
      v23 = OUTLINED_FUNCTION_1_185(v20, v21, v22);
      OUTLINED_FUNCTION_0_197(v23, v24, v25, v26, v27, v28, MEMORY[0x1E69E6158], v29, v32, v33, v34);
      OUTLINED_FUNCTION_2_151();

      objc_opt_self();
      v30 = OUTLINED_FUNCTION_3_149();

      v16 = [a2 vuiImageNamed_];
    }

    else
    {
      sub_1E37E96A4();
      v16 = sub_1E3834BC8();
    }
  }

  v17 = [v16 _imageThatSuppressesAccessibilityHairlineThickening];

  return v17;
}

unint64_t sub_1E3C77948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF35FC8;
  if (!qword_1ECF35FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35FC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VUIRenderingMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3C77A78(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  *(v12 + 112) = a11;
  *(v12 + 120) = v11;
  *(v12 + 80) = a9;
  *(v12 + 96) = a10;
  *(v12 + 64) = a7;
  *(v12 + 72) = a8;
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 24) = a2;
  *(v12 + 152) = a1;
  OUTLINED_FUNCTION_169();
  return OUTLINED_FUNCTION_24_64(v13, v14, v15);
}

uint64_t sub_1E3C77AC4()
{
  OUTLINED_FUNCTION_134();
  v1 = *(v0 + 120);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 152);
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  v8 = *(v0 + 88);
  v9 = *(v0 + 72);
  *(v5 + 16) = *(v0 + 104);
  *(v5 + 32) = v1;
  *(v5 + 40) = v4 & 1;
  *(v5 + 48) = v3;
  *(v5 + 56) = v2;
  *(v5 + 64) = v7;
  *(v5 + 80) = v6;
  *(v5 + 96) = v9;
  *(v5 + 112) = v8;
  v10 = swift_task_alloc();
  *(v0 + 136) = v10;
  sub_1E4205714();
  *v10 = v0;
  v10[1] = sub_1E3C77BF0;
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_60_23();

  return MEMORY[0x1EEE6DE38](v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1E3C77BF0()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3C77CF0()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

void sub_1E3C77D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_31_1();
  v52 = v26;
  v53 = v27;
  v49 = v28;
  v50 = v29;
  v31 = v30;
  v51 = v32;
  v34 = v33;
  v48 = a21;
  v46 = v35;
  v47 = a22;
  v45 = a23;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FF8, &qword_1E42C71D8);
  OUTLINED_FUNCTION_0_10();
  v38 = v37;
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = &v45 - v41;
  (*(v38 + 16))(&v45 - v41, v34, v36, v40);
  v43 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v44 = swift_allocObject();
  (*(v38 + 32))(v44 + v43, v42, v36);
  (*(a26 + 8))(v31 & 1, v46, v49, v50, v52, v53, v48, v47, v45, *(&v45 + 1), a24, sub_1E3C7CB4C, v44, a25, a26);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C77F38()
{
  OUTLINED_FUNCTION_31_1();
  v0 = sub_1E4204D64();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = (v5 - v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36000, &unk_1E42C71E0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v15 - v8);
  v10 = OUTLINED_FUNCTION_53();
  sub_1E37E93E8(v10, v11, &qword_1ECF36000, &unk_1E42C71E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(v2 + 32);
    v12(v6, v9, v0);
    sub_1E3C7CBC4(&qword_1ECF3DAD0, MEMORY[0x1E69D3990], MEMORY[0x1E69D3998]);
    v13 = swift_allocError();
    v12(v14, v6, v0);
    v16 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FF8, &qword_1E42C71D8);
    sub_1E42063C4();
  }

  else
  {
    v16 = *v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FF8, &qword_1E42C71D8);
    sub_1E42063D4();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C78120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_13_1(sub_1E3C78144, 0);
}

uint64_t sub_1E3C78144()
{
  OUTLINED_FUNCTION_134();
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = *(v0 + 32);
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_1E3C78248;
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DE38](v6, v7, v8, 0xD000000000000022, v9, v10, v4, v11);
}

uint64_t sub_1E3C78248()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1E3C78368()
{
  OUTLINED_FUNCTION_31_1();
  v14[1] = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DA40, &qword_1E42C71D0);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v14 - v8;
  (*(v5 + 16))(v14 - v8, v2, v3, v7);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v9, v3);
  v12 = OUTLINED_FUNCTION_53();
  v13(v12);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C784DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, unint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_31_1();
  v26 = v25;
  v90 = v27;
  v93 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v103 = a24;
  v104 = a25;
  v97 = v35;
  v98 = a23;
  v99 = a22;
  v95 = v36;
  v96 = a21;
  v94 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v92 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  v91 = v40 - v39;
  v41 = sub_1E4205A84();
  OUTLINED_FUNCTION_0_10();
  v43 = v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = v87 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v50 = v87 - v48;
  v51 = MEMORY[0x1E69D3C48];
  if ((v34 & 1) == 0)
  {
    v51 = MEMORY[0x1E69D3C50];
  }

  (*(v43 + 104))(v87 - v48, *v51, v41, v49);
  v100 = v50;
  v101 = v43;
  v52 = *(v43 + 16);
  v102 = v41;
  v52(v46, v50, v41);
  v53 = objc_allocWithZone(sub_1E4205AC4());
  v89 = v30;

  v87[0] = v32;
  v88 = sub_1E4205AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FE0, &qword_1E42C71B0);
  v54 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FE8, &qword_1E42C71B8) - 8);
  v55 = *(*v54 + 72);
  v56 = (*(*v54 + 80) + 32) & ~*(*v54 + 80);
  v57 = swift_allocObject();
  v87[2] = v57;
  *(v57 + 16) = xmmword_1E4298AD0;
  v58 = v57 + v56;
  v59 = (v57 + v56 + v54[14]);
  v60 = *MEMORY[0x1E69D3C68];
  v61 = sub_1E4205A94();
  OUTLINED_FUNCTION_2();
  v63 = *(v62 + 104);
  (v63)(v58, v60, v61);
  v87[1] = v26;
  v64 = v90;
  if (v26)
  {
    v65 = v26;
  }

  else
  {
    v64 = 0;
    v65 = 0xE000000000000000;
  }

  *v59 = v64;
  v59[1] = v65;
  v66 = (v58 + v55 + v54[14]);
  v63();
  v67 = v95;
  if (v93)
  {
    v68 = v93;
  }

  else
  {
    v67 = 0;
    v68 = 0xE000000000000000;
  }

  *v66 = v67;
  v66[1] = v68;
  v69 = (v58 + 2 * v55 + v54[14]);
  v63();
  v70 = v97;
  if (v96)
  {
    v71 = v96;
  }

  else
  {
    v70 = 0;
    v71 = 0xE000000000000000;
  }

  *v69 = v70;
  v69[1] = v71;
  v72 = v94;
  v73 = v58 + 3 * v55;
  v74 = v92;
  v75 = (v73 + v54[14]);
  v63();
  v76 = v88;
  v77 = v99;
  if (v98)
  {
    v78 = v98;
  }

  else
  {
    v77 = 0;
    v78 = 0xE000000000000000;
  }

  v79 = v91;
  *v75 = v77;
  v75[1] = v78;
  sub_1E3C7CBC4(&qword_1ECF35FF0, MEMORY[0x1E69D3C78], MEMORY[0x1E69D3C80]);

  v80 = v89;

  sub_1E4205CB4();
  sub_1E4205AB4();
  v81 = sub_1E3E37F30();
  (*(v74 + 16))(v79, v81, v72);

  v82 = sub_1E41FFC94();
  v83 = sub_1E42067E4();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = OUTLINED_FUNCTION_100();
    v105 = v85;
    *v84 = 136315138;
    *(v84 + 4) = sub_1E3270FC8(v87[0], v80, &v105);
    _os_log_impl(&dword_1E323F000, v82, v83, "SportsSubscriptionsManager: subscribeToEvent: %s", v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v85);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v74 + 8))(v79, v72);
  sub_1E4205004();
  v86 = sub_1E4204FF4();
  sub_1E4204F64();

  (*(v101 + 8))(v100, v102);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C78A48()
{
  OUTLINED_FUNCTION_31_1();
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = sub_1E3E37F30();
  (*(v2 + 16))(v6, v7, v0);

  v8 = sub_1E41FFC94();
  v9 = sub_1E42067E4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v15 = OUTLINED_FUNCTION_100();
    *v10 = 136315138;
    v11 = OUTLINED_FUNCTION_53();
    *(v10 + 4) = sub_1E3270FC8(v11, v12, v13);
    _os_log_impl(&dword_1E323F000, v8, v9, "SportsSubscriptionsManager: unsubscribeFromEvent: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v2 + 8))(v6, v0);
  sub_1E4205004();
  v14 = sub_1E4204FF4();
  OUTLINED_FUNCTION_53();
  sub_1E4204FA4();

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C78C58(void *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v4 = a1[4];
  v5 = OUTLINED_FUNCTION_27_0();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8);
  v12 = sub_1E3C7C5F8(v10, v2, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

uint64_t sub_1E3C78D6C()
{
  OUTLINED_FUNCTION_134();
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 72) = v2;
  v3 = *(v2 + 32);
  *(v0 + 120) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      if (((63 - v5) >> 6) - 1 == v9)
      {
        v18 = *(v0 + 64);

        OUTLINED_FUNCTION_25_66(v18 + 120);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FD0, qword_1E42C6FE8);
        sub_1E4205D14();
        swift_endAccess();
        OUTLINED_FUNCTION_15_12();
        OUTLINED_FUNCTION_60_23();

        __asm { BRAA            X1, X16 }
      }

      v8 = v9 + 1;
      v6 = *(v7 + 8 * v9++ + 72);
    }

    while (!v6);
  }

  *(v0 + 80) = v6;
  *(v0 + 88) = v8;
  v10 = *(v0 + 64);
  *(v0 + 96) = *(*(v7 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))) + 8);
  __swift_project_boxed_opaque_existential_1((v10 + 128), *(v10 + 152));

  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *v11 = v0;
  OUTLINED_FUNCTION_8_108(v11);
  OUTLINED_FUNCTION_60_23();

  return sub_1E3C78120(v12, v13, v14, v15);
}

uint64_t sub_1E3C78F1C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_50_31();
  }

  else
  {
    v8 = *(v3 + 64);
    v7 = sub_1E3C79028;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1E3C79028()
{
  OUTLINED_FUNCTION_134();

  v2 = *(v0 + 88);
  v3 = (*(v0 + 80) - 1) & *(v0 + 80);
  if (v3)
  {
    v4 = *(v0 + 72);
LABEL_7:
    *(v0 + 80) = v3;
    *(v0 + 88) = v2;
    v6 = *(v0 + 64);
    *(v0 + 96) = *(*(v4 + 48) + ((v2 << 10) | (16 * __clz(__rbit64(v3)))) + 8);
    __swift_project_boxed_opaque_existential_1((v6 + 128), *(v6 + 152));

    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *v7 = v0;
    OUTLINED_FUNCTION_8_108(v7);
    OUTLINED_FUNCTION_60_23();

    return sub_1E3C78120(v8, v9, v10, v11);
  }

  else
  {
    while (1)
    {
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v5 >= (((1 << *(v0 + 120)) + 63) >> 6))
      {
        v13 = *(v0 + 64);

        OUTLINED_FUNCTION_25_66(v13 + 120);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FD0, qword_1E42C6FE8);
        sub_1E4205D14();
        swift_endAccess();
        OUTLINED_FUNCTION_15_12();
        OUTLINED_FUNCTION_60_23();

        __asm { BRAA            X1, X16 }
      }

      v4 = *(v0 + 72);
      v3 = *(v4 + 8 * v5 + 64);
      ++v2;
      if (v3)
      {
        v2 = v5;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E3C791B0()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3C7920C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  OUTLINED_FUNCTION_24();
  *(v12 + 128) = a11;
  *(v12 + 136) = v11;
  *(v12 + 96) = a9;
  *(v12 + 112) = a10;
  *(v12 + 80) = v13;
  *(v12 + 88) = v14;
  *(v12 + 64) = v15;
  *(v12 + 72) = v16;
  *(v12 + 48) = v17;
  *(v12 + 56) = v18;
  *(v12 + 40) = v19;
  *(v12 + 184) = v20;
  v21 = sub_1E41FFCB4();
  *(v12 + 144) = v21;
  OUTLINED_FUNCTION_8_0(v21);
  *(v12 + 152) = v22;
  *(v12 + 160) = OUTLINED_FUNCTION_86_0();
  v23 = OUTLINED_FUNCTION_50_31();
  return OUTLINED_FUNCTION_24_64(v23, v24, 0);
}

uint64_t sub_1E3C792C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  OUTLINED_FUNCTION_27_2();
  v12 = *(v11 + 184);
  __swift_project_boxed_opaque_existential_1((*(v11 + 136) + 128), *(*(v11 + 136) + 152));
  v13 = swift_task_alloc();
  *(v11 + 168) = v13;
  *v13 = v11;
  v13[1] = sub_1E3C793A8;
  v14 = *(v11 + 96);
  v15 = *(v11 + 104);
  v16 = *(v11 + 80);
  v17 = *(v11 + 88);
  v18 = *(v11 + 64);
  v19 = *(v11 + 72);
  v20 = *(v11 + 56);

  return sub_1E3C77A78(v12 & 1, v20, v18, v19, v16, v17, v14, v15, a9, a10, a11);
}

uint64_t sub_1E3C793A8()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 176) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = *(v3 + 136);

    return MEMORY[0x1EEE6DFA0](sub_1E3C794E8, v9, 0);
  }
}

void sub_1E3C794E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_53_6();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_46_37();
  a22 = v24;
  v27 = v24[17];
  sub_1E42056B4();
  v29 = v28;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  a12 = *(v27 + 120);
  *(v27 + 120) = 0x8000000000000000;
  OUTLINED_FUNCTION_41_42();
  OUTLINED_FUNCTION_31_0();
  if (__OFADD__(v31, v32))
  {
    __break(1u);
  }

  else
  {
    v33 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294B8, &qword_1E429B158);
    v34 = sub_1E4207644();
    v35 = a12;
    if ((v34 & 1) == 0 || (OUTLINED_FUNCTION_41_42(), (v33 & 1) == (v36 & 1)))
    {
      *(v27 + 120) = v35;
      if (v33)
      {
      }

      else
      {
        v38 = OUTLINED_FUNCTION_39_3();
        sub_1E377E1B0(v38, v39, v29, v40, v35);
      }

      v42 = v24[5];
      v41 = v24[6];

      sub_1E3277398(&a12, v42, v41);
      swift_endAccess();

      sub_1E42056B4();
      if (*(*(v27 + 120) + 16))
      {

        OUTLINED_FUNCTION_41_42();
        v44 = v43;

        if (v44)
        {
        }
      }

      else
      {
      }

      v45 = v24[22];
      v47 = v24[19];
      v46 = v24[20];
      v48 = v24[18];

      v49 = sub_1E3E37F30();
      (*(v47 + 16))(v46, v49, v48);

      v50 = v45;

      v51 = sub_1E41FFC94();
      v52 = sub_1E42067E4();

      v53 = os_log_type_enabled(v51, v52);
      v54 = v24[22];
      v56 = v24[19];
      v55 = v24[20];
      v57 = v24[18];
      if (v53)
      {
        a11 = v24[20];
        v58 = v24[5];
        v59 = v24[6];
        a10 = v24[18];
        v60 = OUTLINED_FUNCTION_100();
        a12 = swift_slowAlloc();
        *v60 = 136315650;
        *(v60 + 4) = sub_1E3270FC8(v58, v59, &a12);
        *(v60 + 12) = 2080;
        v61 = sub_1E42056B4();
        v63 = sub_1E3270FC8(v61, v62, &a12);

        *(v60 + 14) = v63;
        *(v60 + 22) = 2080;
        v64 = sub_1E4206634();
        v66 = v65;

        v67 = sub_1E3270FC8(v64, v66, &a12);

        *(v60 + 24) = v67;
        _os_log_impl(&dword_1E323F000, v51, v52, "SportsSubscriptionsManager: added consumer %s to %s. Consumers: %s", v60, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_7_7();

        (*(v56 + 8))(a11, a10);
      }

      else
      {

        (*(v56 + 8))(v55, v57);
      }

      OUTLINED_FUNCTION_15_12();
      OUTLINED_FUNCTION_29_30();

      v69(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    else
    {
      OUTLINED_FUNCTION_29_30();

      sub_1E4207A74();
    }
  }
}

uint64_t sub_1E3C798C0()
{
  OUTLINED_FUNCTION_24();
  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  *(v1 + 272) = v3;
  *(v1 + 88) = v4;
  *(v1 + 96) = v5;
  *(v1 + 80) = v6;
  v7 = sub_1E42075E4();
  *(v1 + 120) = v7;
  OUTLINED_FUNCTION_8_0(v7);
  *(v1 + 128) = v8;
  *(v1 + 136) = OUTLINED_FUNCTION_86_0();
  v9 = sub_1E41FFCB4();
  *(v1 + 144) = v9;
  OUTLINED_FUNCTION_8_0(v9);
  *(v1 + 152) = v10;
  *(v1 + 160) = swift_task_alloc();
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 176) = swift_task_alloc();
  *(v1 + 184) = swift_task_alloc();
  *(v1 + 192) = swift_task_alloc();
  *(v1 + 200) = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_50_31();

  return MEMORY[0x1EEE6DFA0](v11, v12, 0);
}

void sub_1E3C79A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t), void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_53_6();
  a23 = v28;
  a24 = v29;
  OUTLINED_FUNCTION_46_37();
  a22 = v24;
  v30 = *(v24 + 112);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (!*(*(v30 + 120) + 16))
  {
    goto LABEL_7;
  }

  v31 = *(v24 + 104);

  v32 = OUTLINED_FUNCTION_41_42();
  if ((v33 & 1) == 0)
  {

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_20_70(v32);

  v34 = *(v31 + 16);

  if (!v34)
  {
LABEL_7:
    v37 = *(v24 + 200);
    v38 = *(v24 + 144);
    v39 = *(v24 + 152);
    v40 = sub_1E3E37F30();
    (*(v39 + 16))(v37, v40, v38);

    v41 = sub_1E41FFC94();
    sub_1E42067E4();

    if (OUTLINED_FUNCTION_84_1())
    {
      swift_slowAlloc();
      OUTLINED_FUNCTION_26_8();
      OUTLINED_FUNCTION_33_45();
      *(v25 + 4) = OUTLINED_FUNCTION_9_107(4.8149e-34, v42, v43, v44, v45, v46, v47, v48, v49);
      OUTLINED_FUNCTION_41_9(&dword_1E323F000, v50, v51, "SportsSubscriptionsManager.unsubscribeFromEvent: subscription for %s not found");
      __swift_destroy_boxed_opaque_existential_1(v26);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_7_7();
    }

    v52 = OUTLINED_FUNCTION_27_0();
    v53(v52);
    goto LABEL_10;
  }

  if (*(v24 + 272) == 1)
  {
    *(v24 + 64) = 0;
    *(v24 + 72) = 0xE000000000000000;
    MEMORY[0x1E69109E0](2125417, 0xE300000000000000);
    sub_1E4206594();
    MEMORY[0x1E69109E0](115, 0xE100000000000000);
    v36 = *(v24 + 64);
    v35 = *(v24 + 72);
  }

  else
  {
    v35 = 0xEB00000000796C65;
    v36 = 0x74616964656D6D69;
  }

  *(v24 + 208) = v35;
  v62 = *(v24 + 192);
  v64 = *(v24 + 144);
  v63 = *(v24 + 152);
  v65 = sub_1E3E37F30();
  *(v24 + 216) = v65;
  v66 = *(v63 + 16);
  *(v24 + 224) = v66;
  *(v24 + 232) = (v63 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v66(v62, v65, v64);

  v67 = sub_1E41FFC94();
  v68 = sub_1E42067E4();

  v69 = os_log_type_enabled(v67, v68);
  v70 = *(v24 + 192);
  v72 = *(v24 + 144);
  v71 = *(v24 + 152);
  if (v69)
  {
    a12 = *(v24 + 144);
    v27 = *(v24 + 96);
    v72 = *(v24 + 104);
    a11 = *(v24 + 192);
    v73 = v36;
    v74 = swift_slowAlloc();
    a13 = swift_slowAlloc();
    *v74 = 136315394;
    *(v74 + 4) = sub_1E3270FC8(v27, v72, &a13);
    *(v74 + 12) = 2080;
    *(v74 + 14) = sub_1E3270FC8(v73, v35, &a13);
    _os_log_impl(&dword_1E323F000, v67, v68, "SportsSubscriptionsManager: unsubscribing from %s %s", v74, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_7_7();

    v75 = *(v71 + 8);
    v75(a11, a12);
  }

  else
  {

    v75 = *(v71 + 8);
    v75(v70, v72);
  }

  *(v24 + 240) = v75;
  if (*(v24 + 272) == 1)
  {
    sub_1E4207CA4();
    sub_1E4207AA4();
    v76 = swift_task_alloc();
    *(v24 + 248) = v76;
    *v76 = v24;
    v76[1] = sub_1E3C7A3D8;
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_29_30();

    v82(v77, v78, v79, v80, v81, v82, v83, v84, a9, a10, a11, sub_1E38786F0, a13, a14, a15, a16);
    return;
  }

  v85 = *(v24 + 112);
  OUTLINED_FUNCTION_25_66(v85 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a13 = *(v85 + 120);
  *(v85 + 120) = 0x8000000000000000;
  v87 = OUTLINED_FUNCTION_27_0();
  sub_1E327D33C(v87, v88);
  OUTLINED_FUNCTION_31_0();
  if (__OFADD__(v91, v92))
  {
    __break(1u);
    return;
  }

  v93 = v89;
  v94 = v90;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294B8, &qword_1E429B158);
  v96 = OUTLINED_FUNCTION_54_26(v95);
  v97 = a13;
  if (v96)
  {
    v98 = sub_1E327D33C(*(v24 + 96), *(v24 + 104));
    if ((v94 & 1) != (v99 & 1))
    {
      OUTLINED_FUNCTION_29_30();

      sub_1E4207A74();
      return;
    }

    v93 = v98;
  }

  *(*(v24 + 112) + 120) = v97;
  if ((v94 & 1) == 0)
  {
    sub_1E377E1B0(v93, *(v24 + 96), *(v24 + 104), MEMORY[0x1E69E7CD0], v97);
  }

  OUTLINED_FUNCTION_42_47();
  swift_endAccess();

  v101 = *(*(isUniquelyReferenced_nonNull_native + 120) + 16);

  if (v101)
  {
    v102 = sub_1E327D33C(*(v24 + 96), *(v24 + 104));
    if (v103)
    {
      OUTLINED_FUNCTION_20_70(v102);
    }
  }

  OUTLINED_FUNCTION_28_48();
  v104 = OUTLINED_FUNCTION_39_3();
  v27(v104);

  v105 = sub_1E41FFC94();
  v106 = sub_1E42067E4();

  v107 = os_log_type_enabled(v105, v106);
  v108 = *(v24 + 240);
  v109 = *(v24 + 184);
  v110 = *(v24 + 144);
  v111 = *(v24 + 152);
  if (v107)
  {
    v72 = *(v24 + 104);
    a11 = *(v24 + 184);
    a12 = *(v24 + 240);
    v112 = *(v24 + 88);
    OUTLINED_FUNCTION_100();
    a9 = v111;
    v111 = OUTLINED_FUNCTION_59_23();
    a13 = v111;
    *v110 = 136315650;
    v113 = OUTLINED_FUNCTION_39_3();
    v116 = sub_1E3270FC8(v113, v114, v115);
    v117 = OUTLINED_FUNCTION_34_48(v116);
    *(v110 + 14) = sub_1E3270FC8(v117, v72, v118);
    *(v110 + 22) = v112;
    sub_1E4206634();

    v119 = OUTLINED_FUNCTION_35_5();
    v122 = sub_1E3270FC8(v119, v120, v121);

    *(v110 + 24) = v122;
    OUTLINED_FUNCTION_58_25(&dword_1E323F000, v123, v124, "SportsSubscriptionsManager: removed consumer %s for %s. Remaining: %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_6_0();

    (a12)(a11, a10);
  }

  else
  {

    v108(v109, v110);
  }

  if (*(*(*(v24 + 112) + 120) + 16))
  {
    v125 = *(v24 + 104);

    v126 = OUTLINED_FUNCTION_41_42();
    if (v127)
    {
      OUTLINED_FUNCTION_20_70(v126);

      v128 = *(v125 + 16);

      if (v128)
      {
        OUTLINED_FUNCTION_27_54();
        if (v130)
        {
          v129(*(v24 + 168));

          v169 = sub_1E41FFC94();
          sub_1E42067E4();
          OUTLINED_FUNCTION_40_46();
          v131 = OUTLINED_FUNCTION_84_1();
          v132 = *(v24 + 240);
          if (v131)
          {
            OUTLINED_FUNCTION_15_99();
            OUTLINED_FUNCTION_26_8();
            OUTLINED_FUNCTION_33_45();
            *(v111 + 4) = OUTLINED_FUNCTION_9_107(4.8149e-34, v133, v134, v135, v136, v137, v138, v139, v140);
            v143 = "SportsSubscriptionsManager: unsubscribe cancelled for %s - new consumers found";
LABEL_58:
            OUTLINED_FUNCTION_41_9(&dword_1E323F000, v141, v142, v143);
            __swift_destroy_boxed_opaque_existential_1(v72);
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_7_7();

            v179 = OUTLINED_FUNCTION_27_0();
            a12(v179);
LABEL_10:
            OUTLINED_FUNCTION_55_33();

            OUTLINED_FUNCTION_15_12();
            OUTLINED_FUNCTION_29_30();

            v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16);
            return;
          }
        }

        else
        {
          v129(*(v24 + 160));

          v169 = sub_1E41FFC94();
          sub_1E42067E4();
          OUTLINED_FUNCTION_40_46();
          v170 = OUTLINED_FUNCTION_84_1();
          v132 = *(v24 + 240);
          if (v170)
          {
            OUTLINED_FUNCTION_15_99();
            OUTLINED_FUNCTION_26_8();
            OUTLINED_FUNCTION_33_45();
            *(v111 + 4) = OUTLINED_FUNCTION_9_107(4.8149e-34, v171, v172, v173, v174, v175, v176, v177, v178);
            v143 = "SportsSubscriptionsManager: unsubscribe skipped for %s - still consumers left";
            goto LABEL_58;
          }
        }

        v180 = OUTLINED_FUNCTION_27_0();
        v132(v180);
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v144 = OUTLINED_FUNCTION_26_66();
  v145(v144);

  v146 = sub_1E41FFC94();
  sub_1E42067E4();
  OUTLINED_FUNCTION_40_46();
  v147 = OUTLINED_FUNCTION_84_1();
  v148 = *(v24 + 240);
  if (v147)
  {
    OUTLINED_FUNCTION_39_39();
    a13 = OUTLINED_FUNCTION_57_21();
    *v148 = 136315394;
    if (v111)
    {
      v149 = 0x646579616C6564;
    }

    else
    {
      v149 = 0;
    }

    if (v111)
    {
      v150 = 0xE700000000000000;
    }

    else
    {
      v150 = 0xE000000000000000;
    }

    sub_1E3270FC8(v149, v150, &a13);

    *(v148 + 14) = OUTLINED_FUNCTION_38_36(v151, v152, v153, v154, v155, v156, v157, v158);
    OUTLINED_FUNCTION_56_25(&dword_1E323F000, v159, v160, "SportsSubscriptionsManager: %s unsubscribe confirmed for %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v161 = OUTLINED_FUNCTION_27_0();
    a12(v161);
  }

  else
  {

    v162 = OUTLINED_FUNCTION_27_0();
    (v148)(v162);
  }

  __swift_project_boxed_opaque_existential_1((*(v24 + 112) + 128), *(*(v24 + 112) + 152));
  v163 = swift_task_alloc();
  *(v24 + 264) = v163;
  *v163 = v24;
  OUTLINED_FUNCTION_7_146(v163);
  OUTLINED_FUNCTION_29_30();

  sub_1E3C78120(v164, v165, v166, v167);
}

uint64_t sub_1E3C7A3D8()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 256) = v0;

  v7 = OUTLINED_FUNCTION_35_5();
  v8(v7);
  if (v0)
  {

    v9 = OUTLINED_FUNCTION_50_31();
  }

  else
  {
    v10 = *(v3 + 112);
    v9 = sub_1E3C7A544;
  }

  return MEMORY[0x1EEE6DFA0](v9, v10, 0);
}

void sub_1E3C7A544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t), void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_53_6();
  a23 = v27;
  a24 = v28;
  OUTLINED_FUNCTION_46_37();
  a22 = v24;
  v29 = v24[14];
  OUTLINED_FUNCTION_25_66(v29 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a13 = *(v29 + 120);
  *(v29 + 120) = 0x8000000000000000;
  v31 = OUTLINED_FUNCTION_27_0();
  sub_1E327D33C(v31, v32);
  OUTLINED_FUNCTION_31_0();
  if (__OFADD__(v35, v36))
  {
    __break(1u);
    return;
  }

  v37 = v33;
  v38 = v34;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294B8, &qword_1E429B158);
  v40 = OUTLINED_FUNCTION_54_26(v39);
  v41 = a13;
  if (v40)
  {
    v42 = sub_1E327D33C(v24[12], v24[13]);
    if ((v38 & 1) != (v43 & 1))
    {
      OUTLINED_FUNCTION_29_30();

      sub_1E4207A74();
      return;
    }

    v37 = v42;
  }

  *(v24[14] + 120) = v41;
  if ((v38 & 1) == 0)
  {
    sub_1E377E1B0(v37, v24[12], v24[13], MEMORY[0x1E69E7CD0], v41);
  }

  OUTLINED_FUNCTION_42_47();
  swift_endAccess();

  v45 = *(*(isUniquelyReferenced_nonNull_native + 120) + 16);

  if (v45)
  {
    v46 = sub_1E327D33C(v24[12], v24[13]);
    if (v47)
    {
      OUTLINED_FUNCTION_20_70(v46);
    }
  }

  OUTLINED_FUNCTION_28_48();
  v48 = OUTLINED_FUNCTION_39_3();
  v26(v48);

  v49 = sub_1E41FFC94();
  v50 = sub_1E42067E4();

  v51 = os_log_type_enabled(v49, v50);
  v52 = v24[30];
  v53 = v24[23];
  v54 = v24[18];
  v55 = v24[19];
  if (v51)
  {
    v25 = v24[13];
    a11 = v24[23];
    a12 = v24[30];
    v56 = v24[11];
    OUTLINED_FUNCTION_100();
    a9 = v55;
    v55 = OUTLINED_FUNCTION_59_23();
    a13 = v55;
    *v54 = 136315650;
    v57 = OUTLINED_FUNCTION_39_3();
    v60 = sub_1E3270FC8(v57, v58, v59);
    v61 = OUTLINED_FUNCTION_34_48(v60);
    *(v54 + 14) = sub_1E3270FC8(v61, v25, v62);
    *(v54 + 22) = v56;
    sub_1E4206634();

    v63 = OUTLINED_FUNCTION_35_5();
    v66 = sub_1E3270FC8(v63, v64, v65);

    *(v54 + 24) = v66;
    OUTLINED_FUNCTION_58_25(&dword_1E323F000, v67, v68, "SportsSubscriptionsManager: removed consumer %s for %s. Remaining: %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_6_0();

    (a12)(a11, a10);
  }

  else
  {

    v52(v53, v54);
  }

  if (*(*(v24[14] + 120) + 16))
  {
    v69 = v24[13];

    v70 = OUTLINED_FUNCTION_41_42();
    if (v71)
    {
      OUTLINED_FUNCTION_20_70(v70);

      v72 = *(v69 + 16);

      if (v72)
      {
        OUTLINED_FUNCTION_27_54();
        if (v74)
        {
          v73(v24[21]);

          v113 = sub_1E41FFC94();
          sub_1E42067E4();
          OUTLINED_FUNCTION_40_46();
          v75 = OUTLINED_FUNCTION_84_1();
          v76 = v24[30];
          if (v75)
          {
            OUTLINED_FUNCTION_15_99();
            OUTLINED_FUNCTION_26_8();
            OUTLINED_FUNCTION_33_45();
            *(v55 + 4) = OUTLINED_FUNCTION_9_107(4.8149e-34, v77, v78, v79, v80, v81, v82, v83, v84);
            v87 = "SportsSubscriptionsManager: unsubscribe cancelled for %s - new consumers found";
LABEL_38:
            OUTLINED_FUNCTION_41_9(&dword_1E323F000, v85, v86, v87);
            __swift_destroy_boxed_opaque_existential_1(v25);
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_7_7();

            v123 = OUTLINED_FUNCTION_27_0();
            a12(v123);
LABEL_40:
            OUTLINED_FUNCTION_55_33();

            OUTLINED_FUNCTION_15_12();
            OUTLINED_FUNCTION_29_30();

            v126(v125, v126, v127, v128, v129, v130, v131, v132, a9, a10, a11, a12, a13, a14, a15, a16);
            return;
          }
        }

        else
        {
          v73(v24[20]);

          v113 = sub_1E41FFC94();
          sub_1E42067E4();
          OUTLINED_FUNCTION_40_46();
          v114 = OUTLINED_FUNCTION_84_1();
          v76 = v24[30];
          if (v114)
          {
            OUTLINED_FUNCTION_15_99();
            OUTLINED_FUNCTION_26_8();
            OUTLINED_FUNCTION_33_45();
            *(v55 + 4) = OUTLINED_FUNCTION_9_107(4.8149e-34, v115, v116, v117, v118, v119, v120, v121, v122);
            v87 = "SportsSubscriptionsManager: unsubscribe skipped for %s - still consumers left";
            goto LABEL_38;
          }
        }

        v124 = OUTLINED_FUNCTION_27_0();
        v76(v124);
        goto LABEL_40;
      }
    }

    else
    {
    }
  }

  v88 = OUTLINED_FUNCTION_26_66();
  v89(v88);

  v90 = sub_1E41FFC94();
  sub_1E42067E4();
  OUTLINED_FUNCTION_40_46();
  v91 = OUTLINED_FUNCTION_84_1();
  v92 = v24[30];
  if (v91)
  {
    OUTLINED_FUNCTION_39_39();
    a13 = OUTLINED_FUNCTION_57_21();
    *v92 = 136315394;
    if (v55)
    {
      v93 = 0x646579616C6564;
    }

    else
    {
      v93 = 0;
    }

    if (v55)
    {
      v94 = 0xE700000000000000;
    }

    else
    {
      v94 = 0xE000000000000000;
    }

    sub_1E3270FC8(v93, v94, &a13);

    *(v92 + 14) = OUTLINED_FUNCTION_38_36(v95, v96, v97, v98, v99, v100, v101, v102);
    OUTLINED_FUNCTION_56_25(&dword_1E323F000, v103, v104, "SportsSubscriptionsManager: %s unsubscribe confirmed for %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v105 = OUTLINED_FUNCTION_27_0();
    a12(v105);
  }

  else
  {

    v106 = OUTLINED_FUNCTION_27_0();
    (v92)(v106);
  }

  __swift_project_boxed_opaque_existential_1((v24[14] + 128), *(v24[14] + 152));
  v107 = swift_task_alloc();
  v24[33] = v107;
  *v107 = v24;
  OUTLINED_FUNCTION_7_146(v107);
  OUTLINED_FUNCTION_29_30();

  sub_1E3C78120(v108, v109, v110, v111);
}

uint64_t sub_1E3C7AB58()
{
  OUTLINED_FUNCTION_80();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3C7AC08()
{
  OUTLINED_FUNCTION_80();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1E3C7ADCC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 128));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1E3C7ADFC()
{
  sub_1E3C7ADCC();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E3C7AE28()
{
  type metadata accessor for SportsManagerInterface();
  swift_allocObject();
  type metadata accessor for SportsSubscriptionsManager();
  v0 = swift_allocObject();
  *(v0 + 24) = MEMORY[0x1E69E7CD0];
  type metadata accessor for SportsSubscriptionsActor();
  v1 = swift_allocObject();
  v2 = swift_retain_n();
  *(v0 + 16) = sub_1E3C7C590(v2, v1);
  sub_1E3C7B008();

  qword_1ECF71550 = v0;
  return result;
}

uint64_t sub_1E3C7AEDC(void *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8);
  v12 = a2(v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

uint64_t *sub_1E3C7AFC8()
{
  if (qword_1ECF5C9C0 != -1)
  {
    OUTLINED_FUNCTION_18_77(&qword_1ECF5C9C0);
  }

  return &qword_1ECF71550;
}

double sub_1E3C7B008()
{
  v0 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = [objc_opt_self() defaultCenter];
  sub_1E4206C14();

  swift_allocObject();
  swift_weakInit();
  sub_1E3C7CBC4(&qword_1EE23B130, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1E4200844();

  (*(v2 + 8))(v6, v0);
  swift_beginAccess();
  sub_1E42004C4();
  swift_endAccess();

  return result;
}

double sub_1E3C7B1B4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  v2 = OUTLINED_FUNCTION_17_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - v3;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1E4206444();
    v8 = sub_1E4206474();
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;
    v10 = OUTLINED_FUNCTION_23_7();
    sub_1E37748D8(v10, v11, v4, v12, v13);
  }

  return result;
}

uint64_t sub_1E3C7B2C4()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_17_92();
  v4 = (*(v1 + 144) + **(v1 + 144));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1E3C7B3CC;

  return v4();
}

uint64_t sub_1E3C7B3CC()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_54();

  return v3();
}

uint64_t sub_1E3C7B4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  OUTLINED_FUNCTION_24();
  *(v12 + 104) = a11;
  *(v12 + 112) = v11;
  *(v12 + 88) = a10;
  *(v12 + 72) = a9;
  *(v12 + 56) = v13;
  *(v12 + 64) = v14;
  *(v12 + 40) = v15;
  *(v12 + 48) = v16;
  *(v12 + 24) = v17;
  *(v12 + 32) = v18;
  *(v12 + 16) = v19;
  *(v12 + 152) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v21);
  *(v12 + 120) = OUTLINED_FUNCTION_86_0();
  OUTLINED_FUNCTION_169();
  return OUTLINED_FUNCTION_24_64(v22, v23, v24);
}

uint64_t sub_1E3C7B54C(uint64_t a1)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = *(v1 + 104);
  v23 = *(v1 + 96);
  v24 = v3;
  v5 = *(v1 + 88);
  v6 = *(v1 + 72);
  v21 = *(v1 + 64);
  v22 = *(v1 + 80);
  v7 = *(v1 + 56);
  v8 = *(v1 + 40);
  v19 = *(v1 + 32);
  v20 = *(v1 + 48);
  v9 = *(v1 + 24);
  v18 = *(v1 + 16);
  v10 = *(v1 + 152);
  sub_1E4206444();
  v11 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v2;
  *(v12 + 40) = v10 & 1;
  *(v12 + 48) = v18;
  *(v12 + 56) = v9;
  *(v12 + 64) = v19;
  *(v12 + 72) = v8;
  *(v12 + 80) = v20;
  *(v12 + 88) = v7;
  *(v12 + 96) = v21;
  *(v12 + 104) = v6;
  *(v12 + 112) = v22;
  *(v12 + 120) = v5;
  *(v12 + 128) = v23;
  *(v12 + 136) = v4;

  v13 = OUTLINED_FUNCTION_23_7();
  *(v1 + 128) = sub_1E37748D8(v13, v14, v24, v15, v12);
  v16 = swift_task_alloc();
  *(v1 + 136) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
  *v16 = v1;
  v16[1] = sub_1E3C7B724;
  OUTLINED_FUNCTION_51_29();

  return MEMORY[0x1EEE6DA10]();
}

uint64_t sub_1E3C7B724()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  *(v4 + 144) = v0;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3C7B824()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_15_12();

  return v0();
}

uint64_t sub_1E3C7B884()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3C7B8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v17;
  *(v8 + 80) = v15;
  *(v8 + 96) = v16;
  *(v8 + 48) = v13;
  *(v8 + 64) = v14;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 128) = a5;
  *(v8 + 16) = a4;
  *(v8 + 24) = a6;
  OUTLINED_FUNCTION_169();
  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1E3C7B938()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_17_92();
  v3 = *(v1 + 152) + **(v1 + 152);
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_1E3C7BA78;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1E3C7BA78()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_54();

  return v3();
}

uint64_t sub_1E3C7BB58()
{
  OUTLINED_FUNCTION_24();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 88) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  *(v1 + 16) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v7);
  *(v1 + 56) = OUTLINED_FUNCTION_86_0();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1E3C7BBEC()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 88);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  sub_1E4206444();
  v8 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v1;
  *(v9 + 40) = v7;
  *(v9 + 48) = v6;
  *(v9 + 56) = v5;
  *(v9 + 64) = v4;
  *(v9 + 72) = v3;

  v10 = OUTLINED_FUNCTION_23_7();
  *(v0 + 64) = sub_1E37748D8(v10, v11, v2, v12, v9);
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
  *v13 = v0;
  v13[1] = sub_1E3C7BD58;
  OUTLINED_FUNCTION_51_29();

  return MEMORY[0x1EEE6DA10]();
}

uint64_t sub_1E3C7BD58()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  *(v4 + 80) = v0;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3C7BE58()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_15_12();

  return v0();
}

uint64_t sub_1E3C7BEB8()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3C7BF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v13;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  OUTLINED_FUNCTION_169();
  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3C7BF5C()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_17_92();
  v9 = (*(v1 + 160) + **(v1 + 160));
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1E3C7C074;
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);

  return v9(v7, v6, v4, v5, v3);
}

uint64_t sub_1E3C7C074()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_54();

  return v3();
}

uint64_t sub_1E3C7C154()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v3 + 120) = v0;

  v9 = OUTLINED_FUNCTION_35_5();
  v6(v9);
  if (!v0)
  {

    OUTLINED_FUNCTION_15_12();
    OUTLINED_FUNCTION_60_23();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_60_23();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1E3C7C2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  (*(v6 + 32))(&v16 - v11, v10);
  v13 = swift_allocObject();
  (*(v6 + 16))(v8, v12, a3);
  v14 = sub_1E3C7C42C(v8, v13, a3, a4);
  (*(v6 + 8))(v12, a3);
  return v14;
}

uint64_t sub_1E3C7C42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  (*(v7 + 32))(&v17 - v12, v11);
  *(a2 + 24) = MEMORY[0x1E69E7CD0];
  type metadata accessor for SportsSubscriptionsActor();
  v14 = swift_allocObject();
  (*(v7 + 16))(v9, v13, a3);
  *(a2 + 16) = sub_1E3C7C5F8(v9, v14, a3, a4);
  v15 = sub_1E3C7B008();
  (*(v7 + 8))(v13, a3, v15);
  return a2;
}

uint64_t sub_1E3C7C590(uint64_t a1, uint64_t a2)
{
  v7 = type metadata accessor for SportsManagerInterface();
  v8 = &off_1F5D7AA28;
  *&v6 = a1;
  swift_defaultActor_initialize();
  v4 = MEMORY[0x1E69E7CC8];
  *(a2 + 112) = 0x4000000000000000;
  *(a2 + 120) = v4;
  sub_1E3251BE8(&v6, a2 + 128);
  return a2;
}

uint64_t sub_1E3C7C5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v12 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  swift_defaultActor_initialize();
  v8 = MEMORY[0x1E69E7CC8];
  *(a2 + 112) = 0x4000000000000000;
  *(a2 + 120) = v8;
  sub_1E3251BE8(&v10, a2 + 128);
  return a2;
}

uint64_t sub_1E3C7C694()
{
  OUTLINED_FUNCTION_46_37();
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1E3286A7C;

  return sub_1E3C7B8E8(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1E3C7C79C()
{
  OUTLINED_FUNCTION_134();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E327C238;
  OUTLINED_FUNCTION_60_23();

  return sub_1E3C7BF1C(v2, v3, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_1E3C7C860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF35FD8;
  if (!qword_1ECF35FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35FD8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportsSubscriptionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3C7CA04()
{
  OUTLINED_FUNCTION_24();
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E327C238;

  return sub_1E3C7B2A8(v3, v4, v5, v2);
}

uint64_t sub_1E3C7CA94(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DA40, &qword_1E42C71D0);
  if (!a1)
  {
    return sub_1E42063D4();
  }

  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DA40, &qword_1E42C71D0);
  return sub_1E42063C4();
}

void sub_1E3C7CB4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35FF8, &qword_1E42C71D8);
  OUTLINED_FUNCTION_17_2(v0);

  sub_1E3C77F38();
}

uint64_t sub_1E3C7CBC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_56_25(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_57_21()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_58_25(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

unint64_t sub_1E3C7CC6C()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3C7CCAC(char a1)
{
  result = 6517363;
  switch(a1)
  {
    case 1:
      result = 0x6372536B726164;
      break;
    case 2:
      result = 0x616C706D65547369;
      break;
    case 3:
      result = 0x65646F43706F7263;
      break;
    case 4:
      result = 0x74616D726F66;
      break;
    case 5:
      result = 0x6669636570533370;
      break;
    case 6:
      result = OUTLINED_FUNCTION_56_0(1835362420);
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x47656C6261736964;
      break;
    case 9:
      result = 0x726562557369;
      break;
    case 10:
      result = 0x6874646977;
      break;
    case 11:
      result = 0x746867696568;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3C7CDFC(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 30324;
  switch(a1)
  {
    case 1:
      v3 = 0xE300000000000000;
      v4 = 6513005;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v4 = 0x6E6F69736976;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v4 = 0x656E6F6870;
      break;
    case 4:
      v3 = 0xE300000000000000;
      v4 = 6578544;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 30324;
  switch(a2)
  {
    case 1:
      v5 = 0xE300000000000000;
      v6 = 6513005;
      break;
    case 2:
      v5 = 0xE600000000000000;
      v6 = 0x6E6F69736976;
      break;
    case 3:
      v5 = 0xE500000000000000;
      v6 = 0x656E6F6870;
      break;
    case 4:
      v5 = 0xE300000000000000;
      v6 = 6578544;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3C7CF40(unsigned __int8 a1, char a2)
{
  v2 = 0x6C616974696E69;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x6C616974696E69;
  switch(v4)
  {
    case 1:
      v5 = 0x6563616C706572;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x646E65707061;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x747265736E69;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x6574656C6564;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6563616C706572;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x646E65707061;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x747265736E69;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v2 = 0x6574656C6564;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3C7D09C(unsigned __int8 a1, char a2)
{
  v2 = 0xEE00746E656D6761;
  v3 = 0x7246686372616573;
  v4 = a1;
  v5 = 0x7246686372616573;
  v6 = 0xEE00746E656D6761;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000013;
      v6 = 0x80000001E427A800;
      break;
    case 2:
      v5 = 0x6948686372616573;
      v7 = 7566446;
      goto LABEL_6;
    case 3:
      v5 = 0x7274537972657571;
      v7 = 6778473;
LABEL_6:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 4:
      v5 = 0x6554686372616573;
      v6 = 0xEA00000000006D72;
      break;
    case 5:
      v5 = 0x65646E49746E6968;
      v6 = 0xE900000000000078;
      break;
    case 6:
      v6 = 0xE600000000000000;
      v5 = 0x656372756F73;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000013;
      v2 = 0x80000001E427A800;
      break;
    case 2:
      v3 = 0x6948686372616573;
      v8 = 7566446;
      goto LABEL_14;
    case 3:
      v3 = 0x7274537972657571;
      v8 = 6778473;
LABEL_14:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 4:
      v3 = 0x6554686372616573;
      v2 = 0xEA00000000006D72;
      break;
    case 5:
      v3 = 0x65646E49746E6968;
      v2 = 0xE900000000000078;
      break;
    case 6:
      v2 = 0xE600000000000000;
      v3 = 0x656372756F73;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E42079A4();
  }

  return v10 & 1;
}

uint64_t sub_1E3C7D2A4(unsigned __int8 a1, char a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x426567617373656DLL;
    }

    if (v2 == 1)
    {
      v4 = 0x80000001E427AB20;
    }

    else
    {
      v4 = 0xEF746C7573655279;
    }
  }

  else
  {
    v4 = 0x80000001E427AB00;
    v3 = 0xD000000000000011;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0x426567617373656DLL;
    }

    if (a2 == 1)
    {
      v6 = 0x80000001E427AB20;
    }

    else
    {
      v6 = 0xEF746C7573655279;
    }
  }

  else
  {
    v6 = 0x80000001E427AB00;
    v5 = 0xD000000000000011;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3C7D394(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  if (v5 == a3(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E42079A4();
  }

  return v10 & 1;
}

uint64_t sub_1E3C7D424(unsigned __int8 a1, char a2)
{
  v2 = 6517363;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 6517363;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x6372536B726164;
      break;
    case 2:
      v5 = 0x616C706D65547369;
      v6 = 6579572;
      goto LABEL_10;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x65646F43706F7263;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x74616D726F66;
      break;
    case 5:
      v5 = 0x6669636570533370;
      v6 = 7497065;
LABEL_10:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 6:
      v3 = 0xE500000000000000;
      v5 = 0x656D656874;
      break;
    case 7:
      v5 = 0xD000000000000011;
      v3 = 0x80000001E4260C10;
      break;
    case 8:
      v5 = 0x47656C6261736964;
      v3 = 0xEF746E6569646172;
      break;
    case 9:
      v3 = 0xE600000000000000;
      v5 = 0x726562557369;
      break;
    case 10:
      v3 = 0xE500000000000000;
      v5 = 0x6874646977;
      break;
    case 11:
      v3 = 0xE600000000000000;
      v5 = 0x746867696568;
      break;
    default:
      break;
  }

  v7 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE700000000000000;
      v2 = 0x6372536B726164;
      break;
    case 2:
      v2 = 0x616C706D65547369;
      v8 = 6579572;
      goto LABEL_23;
    case 3:
      v7 = 0xE800000000000000;
      v2 = 0x65646F43706F7263;
      break;
    case 4:
      v7 = 0xE600000000000000;
      v2 = 0x74616D726F66;
      break;
    case 5:
      v2 = 0x6669636570533370;
      v8 = 7497065;
LABEL_23:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 6:
      v7 = 0xE500000000000000;
      v2 = 0x656D656874;
      break;
    case 7:
      v2 = 0xD000000000000011;
      v7 = 0x80000001E4260C10;
      break;
    case 8:
      v2 = 0x47656C6261736964;
      v7 = 0xEF746E6569646172;
      break;
    case 9:
      v7 = 0xE600000000000000;
      v2 = 0x726562557369;
      break;
    case 10:
      v7 = 0xE500000000000000;
      v2 = 0x6874646977;
      break;
    case 11:
      v7 = 0xE600000000000000;
      v2 = 0x746867696568;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E42079A4();
  }

  return v10 & 1;
}

uint64_t sub_1E3C7D730(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_1E4207B44();
  v4 = a2(a1);
  OUTLINED_FUNCTION_18_0(v4, v5, v6);

  return sub_1E4207BA4();
}

uint64_t sub_1E3C7D790(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3C7D83C(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3C7D8FC(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3C7DA20(uint64_t a1, unsigned __int8 a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3C7DAC4(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3C7DC40(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  a3(a2);
  sub_1E4206014();
}

uint64_t sub_1E3C7DCC8(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3C7DD80(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1E4207B44();
  v5 = a3(a2);
  OUTLINED_FUNCTION_18_0(v5, v6, v7);

  return sub_1E4207BA4();
}

unint64_t sub_1E3C7DDD4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3C7CC6C();
  *v1 = result;
  return result;
}

unint64_t sub_1E3C7DDFC()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3C7CCAC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1E3C7DE2C()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207A04();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v0;
  }
}

void sub_1E3C7DE74(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 13:
      OUTLINED_FUNCTION_23();
      break;
    case 3:
    case 4:
    case 7:
    case 12:
    case 14:
    case 15:
    case 18:
      OUTLINED_FUNCTION_26_67();
      break;
    case 5:
    case 8:
    case 10:
    case 16:
    case 17:
      return;
    case 6:
      OUTLINED_FUNCTION_11_105();
      break;
    case 9:
      OUTLINED_FUNCTION_12_98();
      break;
    case 11:
      OUTLINED_FUNCTION_2_152(10);
      break;
    default:
      OUTLINED_FUNCTION_43_3(36);
      break;
  }
}

unint64_t sub_1E3C7E134(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3C7DE2C();
  *v1 = result;
  return result;
}

void sub_1E3C7E15C()
{
  v1 = OUTLINED_FUNCTION_11_15();
  sub_1E3C7DE74(v1);
  *v0 = v2;
  v0[1] = v3;
}

unint64_t sub_1E3C7E18C()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3C7E1CC(char a1)
{
  result = 0x7246686372616573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x6948686372616573;
      break;
    case 3:
      result = 0x7274537972657571;
      break;
    case 4:
      result = 0x6554686372616573;
      break;
    case 5:
      result = 0x65646E49746E6968;
      break;
    case 6:
      result = 0x656372756F73;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1E3C7E330(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3C7E18C();
  *v1 = result;
  return result;
}

unint64_t sub_1E3C7E358()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3C7E1CC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

VideosUI::ViewModelKeys::Sports_optional __swiftcall ViewModelKeys.Sports.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207A04();
  OUTLINED_FUNCTION_15_19();
  if (v1 >= 0x2D)
  {
    return 45;
  }

  else
  {
    return v1;
  }
}

void ViewModelKeys.Sports.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
    case 5:
      OUTLINED_FUNCTION_18_78();
      break;
    case 2:
      OUTLINED_FUNCTION_2_152(13);
      break;
    case 3:
    case 4:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 29:
    case 30:
    case 31:
    case 32:
    case 34:
    case 37:
    case 39:
    case 40:
      return;
    case 16:
    case 41:
      OUTLINED_FUNCTION_1_38();
      break;
    case 33:
    case 36:
      OUTLINED_FUNCTION_23();
      break;
    case 35:
      OUTLINED_FUNCTION_2_152(10);
      break;
    case 38:
      OUTLINED_FUNCTION_12_98();
      break;
    case 43:
      OUTLINED_FUNCTION_17_93();
      break;
    default:
      OUTLINED_FUNCTION_70_1();
      break;
  }
}

VideosUI::ViewModelKeys::Sports_optional sub_1E3C7E91C@<W0>(Swift::String *a1@<X0>, VideosUI::ViewModelKeys::Sports_optional *a2@<X8>)
{
  result.value = ViewModelKeys.Sports.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_1E3C7E94C(void *a1@<X8>)
{
  ViewModelKeys.Sports.rawValue.getter(*v1);
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_1E3C7E980()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3C7E9C0(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_0_198();
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x426567617373656DLL;
}

unint64_t sub_1E3C7EA40(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3C7E980();
  *v1 = result;
  return result;
}

unint64_t sub_1E3C7EA68()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3C7E9C0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1E3C7EA98()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

void sub_1E3C7EAD8(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 8:
      return;
    case 6:
      OUTLINED_FUNCTION_2_152(5);
      break;
    case 7:
      OUTLINED_FUNCTION_23();
      break;
    default:
      OUTLINED_FUNCTION_0_198();
      break;
  }
}

unint64_t sub_1E3C7EC80(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3C7EA98();
  *v1 = result;
  return result;
}

void sub_1E3C7ECA8()
{
  v1 = OUTLINED_FUNCTION_11_15();
  sub_1E3C7EAD8(v1);
  *v0 = v2;
  v0[1] = v3;
}

unint64_t sub_1E3C7ECD8()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207A04();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 0x1D)
  {
    return 29;
  }

  else
  {
    return v0;
  }
}

void sub_1E3C7ED20(char a1)
{
  switch(a1)
  {
    case 5:
    case 6:
    case 9:
    case 10:
    case 12:
    case 14:
    case 15:
    case 18:
    case 23:
    case 24:
      return;
    case 11:
    case 20:
    case 26:
      OUTLINED_FUNCTION_2_152(9);
      break;
    case 13:
      OUTLINED_FUNCTION_11_105();
      break;
    case 16:
    case 17:
    case 22:
    case 27:
      OUTLINED_FUNCTION_23();
      break;
    case 19:
      OUTLINED_FUNCTION_43_3(18);
      break;
    case 21:
      OUTLINED_FUNCTION_2_152(5);
      break;
    default:
      OUTLINED_FUNCTION_23_43();
      break;
  }
}

unint64_t sub_1E3C7F130(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3C7ECD8();
  *v1 = result;
  return result;
}

void sub_1E3C7F158()
{
  v1 = OUTLINED_FUNCTION_11_15();
  sub_1E3C7ED20(v1);
  *v0 = v2;
  v0[1] = v3;
}

VideosUI::ViewModelKeys_optional __swiftcall ViewModelKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207A04();
  OUTLINED_FUNCTION_15_19();
  if (v1 >= 0x24)
  {
    return 36;
  }

  else
  {
    return v1;
  }
}

void ViewModelKeys.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 2:
    case 15:
    case 17:
    case 27:
    case 33:
      OUTLINED_FUNCTION_23();
      break;
    case 3:
      OUTLINED_FUNCTION_1_38();
      break;
    case 5:
      OUTLINED_FUNCTION_2_152(9);
      break;
    case 10:
      OUTLINED_FUNCTION_17_93();
      break;
    case 14:
      OUTLINED_FUNCTION_56_0(1970037110);
      break;
    case 16:
    case 19:
      OUTLINED_FUNCTION_2_152(5);
      break;
    case 18:
      OUTLINED_FUNCTION_18_78();
      break;
    case 20:
      OUTLINED_FUNCTION_0_198();
      break;
    case 23:
      OUTLINED_FUNCTION_56_0(1734631778);
      break;
    case 29:
    case 34:
    case 35:
      OUTLINED_FUNCTION_70_1();
      break;
    default:
      return;
  }
}

VideosUI::ViewModelKeys_optional sub_1E3C7F5DC@<W0>(Swift::String *a1@<X0>, VideosUI::ViewModelKeys_optional *a2@<X8>)
{
  result.value = ViewModelKeys.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_1E3C7F60C(void *a1@<X8>)
{
  ViewModelKeys.rawValue.getter(*v1);
  *a1 = v3;
  a1[1] = v4;
}

VideosUI::ViewModelRequestType_optional __swiftcall ViewModelRequestType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t ViewModelRequestType.rawValue.getter(char a1)
{
  result = 0x6C616974696E69;
  switch(a1)
  {
    case 1:
      result = 0x6563616C706572;
      break;
    case 2:
      result = 0x646E65707061;
      break;
    case 3:
      result = 0x747265736E69;
      break;
    case 4:
      result = 0x6574656C6564;
      break;
    default:
      return result;
  }

  return result;
}

VideosUI::ViewModelRequestType_optional sub_1E3C7F780@<W0>(Swift::String *a1@<X0>, VideosUI::ViewModelRequestType_optional *a2@<X8>)
{
  result.value = ViewModelRequestType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1E3C7F7B0@<X0>(uint64_t *a1@<X8>)
{
  result = ViewModelRequestType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1E3C7F7DC()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3C7F828(char a1)
{
  result = 30324;
  switch(a1)
  {
    case 1:
      result = 6513005;
      break;
    case 2:
      result = 0x6E6F69736976;
      break;
    case 3:
      result = OUTLINED_FUNCTION_56_0(1852794992);
      break;
    case 4:
      result = 6578544;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1E3C7F8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF36008;
  if (!qword_1ECF36008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36008);
  }

  return result;
}

unint64_t sub_1E3C7F8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF36010;
  if (!qword_1ECF36010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36010);
  }

  return result;
}

unint64_t sub_1E3C7F950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF36018;
  if (!qword_1ECF36018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36018);
  }

  return result;
}

unint64_t sub_1E3C7F9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF36020;
  if (!qword_1ECF36020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36020);
  }

  return result;
}

unint64_t sub_1E3C7FA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF36028;
  if (!qword_1ECF36028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36028);
  }

  return result;
}

unint64_t sub_1E3C7FA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF36030;
  if (!qword_1ECF36030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36030);
  }

  return result;
}

unint64_t sub_1E3C7FAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF36038;
  if (!qword_1ECF36038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36038);
  }

  return result;
}

unint64_t sub_1E3C7FB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF36040;
  if (!qword_1ECF36040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36040);
  }

  return result;
}

unint64_t sub_1E3C7FBD8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3C7F7DC();
  *v1 = result;
  return result;
}

unint64_t sub_1E3C7FC00()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3C7F828(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1E3C7FC2C()
{
  result = qword_1ECF36048;
  if (!qword_1ECF36048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF36050, qword_1E42C78B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36048);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ViewModelKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0xDD)
  {
    goto LABEL_17;
  }

  if (a2 + 35 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 35) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 36);
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

      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 36);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 36);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v8 = v6 - 36;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v8);
}

_BYTE *storeEnumTagSinglePayload for ViewModelKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDC)
  {
    v6 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 35);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E3C7FDF4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 11);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3C7FEBC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 19);
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

      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 19);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 19);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v8);
}

_BYTE *sub_1E3C7FF40(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 18);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E3C80008(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ViewModelKeys.Sports(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0xD4)
  {
    goto LABEL_17;
  }

  if (a2 + 44 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 44) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 45);
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

      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 45);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 45);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2D;
  v8 = v6 - 45;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v8);
}

_BYTE *storeEnumTagSinglePayload for ViewModelKeys.Sports(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 44 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 44) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD3)
  {
    v6 = ((a2 - 212) >> 8) + 1;
    *result = a2 + 44;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 44);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E3C8021C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E3C802E4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 8);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3C803AC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0xE4)
  {
    goto LABEL_17;
  }

  if (a2 + 28 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 28) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 29);
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

      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 29);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 29);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v8 = v6 - 29;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v8);
}

_BYTE *sub_1E3C80430(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE3)
  {
    v6 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 28);
        }

        break;
    }
  }

  return result;
}

_BYTE *_s8VideosUI20ViewModelRequestTypeOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

id sub_1E3C805D8(int a1, __int128 *a2)
{
  v6 = v2;
  v7 = a2;
  v8 = [a2 localDragSession];
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = [v8 items];
  OUTLINED_FUNCTION_87_0();
  swift_unknownObjectRelease();
  sub_1E3280A90(0, &qword_1ECF309A8, 0x1E69DC990);
  v10 = sub_1E42062B4();

  if (!sub_1E32AE9B0(v10))
  {

LABEL_9:
    v67 = 0u;
    v68 = 0u;
LABEL_10:
    sub_1E329505C(&v67);
LABEL_11:
    v63 = 0;
    goto LABEL_12;
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_59:
    OUTLINED_FUNCTION_15_44();
  }

  else
  {
    OUTLINED_FUNCTION_9_39();
    if (!v11)
    {
      __break(1u);
LABEL_61:
      v53 = MEMORY[0x1E6911E60](0, v3);
      goto LABEL_49;
    }

    v12 = *(v10 + 32);
  }

  OUTLINED_FUNCTION_87_0();

  v13 = [v3 localObject];

  if (v13)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v64 = 0u;
    v65 = 0u;
  }

  v67 = v64;
  v68 = v65;
  if (!*(&v65 + 1))
  {
    goto LABEL_10;
  }

  sub_1E3280A90(0, &qword_1EE23B350, off_1E8728420);
  if ((OUTLINED_FUNCTION_21_4() & 1) == 0)
  {
    goto LABEL_11;
  }

  v51 = v64;
  v52 = sub_1E37903E8(v51);
  v63 = v51;
  if (!v52)
  {
    goto LABEL_12;
  }

  v3 = v52;
  result = sub_1E32AE9B0(v52);
  if (!result)
  {

    goto LABEL_12;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_61;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v53 = *(v3 + 32);
LABEL_49:
  v54 = v53;

  v55 = sub_1E3C823F8(v54);
  if (v56)
  {
    v14 = v55;
    v15 = v56;
    goto LABEL_13;
  }

LABEL_12:

  v14 = 0;
  v15 = 0xE000000000000000;
LABEL_13:
  v16 = objc_opt_self();
  v17 = [v16 sharedInstance];
  v18 = [v17 multiviewIdentifiers];

  v19 = sub_1E42062B4();
  *&v67 = v14;
  *(&v67 + 1) = v15;
  MEMORY[0x1EEE9AC00](v20);
  v59[2] = &v67;
  LOBYTE(v18) = sub_1E3849DF8(sub_1E3756228, v59, v19);

  if (v18)
  {
    v21 = [objc_allocWithZone(MEMORY[0x1E69DC9C0]) initWithDropOperation_];
  }

  else
  {
    v22 = *(v6 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_playerView);
    [v7 locationInView_];
    OUTLINED_FUNCTION_18_3();
    v25 = sub_1E3C80D54(v23, v24);
    v60 = 0;
    if ((v26 & 1) != 0 || (v27 = v25, [v22 frame], v69.x = v4, v69.y = v5, !CGRectContainsPoint(v70, v69)))
    {
      v61 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_45();
      v28 += 53;
      v29 = *v28;
      v30 = (*v28)();
      v31 = sub_1E32AE9B0(v30);

      v32 = [v16 sharedInstance];
      v33 = [v32 maxMultiviewPlayerCount];

      if (v31 >= v33)
      {
        v57 = MEMORY[0x1E69E7D40];
        *&v64 = v29();
        *&v67 = v27;
        BYTE8(v67) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C4F8, &qword_1E42A6EC8);
        sub_1E3827828(&qword_1ECF2C500, &qword_1ECF2C4F8, &qword_1E42A6EC8);
        sub_1E38D2054(&v67, &v66);
        v58 = v66;

        if (v58)
        {
          v61 = (*((*v57 & *v22) + 0x398))(v58);
        }

        else
        {
          v61 = 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_45();
        (*(v34 + 1136))(1, v27, 1, 0, 0);
        v61 = 0;
      }
    }

    OUTLINED_FUNCTION_45();
    v7 = v6;
    v36 = (*(v35 + 424))();
    v62 = MEMORY[0x1E69E7CC0];
    *&v67 = MEMORY[0x1E69E7CC0];
    v37 = sub_1E32AE9B0(v36);
    v38 = 0;
    v3 = v36 & 0xC000000000000001;
    v6 = v36 & 0xFFFFFFFFFFFFFF8;
    while (v37 != v38)
    {
      if (v3)
      {
        v39 = MEMORY[0x1E6911E60](v38, v36);
      }

      else
      {
        if (v38 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v39 = *(v36 + 8 * v38 + 32);
      }

      v40 = v39;
      v41 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v7 = v22;
      v42 = (*((*MEMORY[0x1E69E7D40] & *v22) + 0x398))(v39);

      ++v38;
      if (v42)
      {
        v7 = &v67;
        MEMORY[0x1E6910BF0]();
        if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();
        v62 = v67;
        v38 = v41;
      }
    }

    v43 = v62;
    v44 = sub_1E32AE9B0(v62);
    v45 = 0;
    v3 = v43 & 0xFFFFFFFFFFFFFF8;
    v6 = MEMORY[0x1E69E7D40];
    v46 = v61;
    while (v44 != v45)
    {
      if ((v43 & 0xC000000000000001) != 0)
      {
        v49 = OUTLINED_FUNCTION_39_0();
        v47 = MEMORY[0x1E6911E60](v49);
      }

      else
      {
        if (v45 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v47 = *(v43 + 8 * v45 + 32);
      }

      v7 = v47;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_21();
      (*(v48 + 760))();

      ++v45;
    }

    v21 = [objc_allocWithZone(MEMORY[0x1E69DC9C0]) initWithDropOperation_];
  }

  return v21;
}

unint64_t sub_1E3C80D54(double a1, double a2)
{
  OUTLINED_FUNCTION_21();
  v4 += 117;
  v5 = *v4;
  result = (*v4)();
  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  for (i = result + 56; ; i += 32)
  {
    if (v9 == v8)
    {

      v12 = (v5)(v11);
      v13 = *(v12 + 16);
      if (v13)
      {
        v24 = MEMORY[0x1E69E7CC0];
        sub_1E3887DC4(0, v13, 0);
        v14 = v24;
        v15 = v12 + 56;
        do
        {
          sub_1E3FB3074(a1, a2);
          v17 = v16;
          v19 = *(v24 + 16);
          v18 = *(v24 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_1E3887DC4((v18 > 1), v19 + 1, 1);
          }

          *(v24 + 16) = v19 + 1;
          *(v24 + 8 * v19 + 32) = v17;
          v15 += 32;
          --v13;
        }

        while (v13);
      }

      else
      {

        v14 = MEMORY[0x1E69E7CC0];
      }

      v20 = *(v14 + 16);
      if (v20)
      {
        v8 = 0;
        v21 = v20 - 1;
        if (v21)
        {
          v22 = *(v14 + 32);
          v23 = 5;
          do
          {
            if (*(v14 + 8 * v23) < v22)
            {
              v8 = v23 - 4;
              v22 = *(v14 + 8 * v23);
            }

            ++v23;
            --v21;
          }

          while (v21);
        }
      }

      else
      {
        v8 = 0;
      }

LABEL_19:

      return v8;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    v25.x = a1;
    v25.y = a2;
    result = CGRectContainsPoint(*(i - 24), v25);
    if (result)
    {
      goto LABEL_19;
    }

    ++v8;
  }

  __break(1u);
  return result;
}

void sub_1E3C80FD4(int a1, id a2)
{
  v4 = [a2 localDragSession];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = [v4 items];
  swift_unknownObjectRelease();
  sub_1E3280A90(0, &qword_1ECF309A8, 0x1E69DC990);
  v6 = sub_1E42062B4();

  if (!sub_1E32AE9B0(v6))
  {

LABEL_9:
    v19 = 0u;
    v20 = 0u;
LABEL_10:
    sub_1E329505C(&v19);
    return;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1E6911E60](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v7 = *(v6 + 32);
  }

  v8 = v7;

  v9 = [v8 localObject];

  if (v9)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    goto LABEL_10;
  }

  sub_1E3280A90(0, &qword_1EE23B350, off_1E8728420);
  if (OUTLINED_FUNCTION_21_4())
  {
    [a2 locationInView_];
    v12 = sub_1E3C80D54(v10, v11);
    if (v13)
    {
      v12 = sub_1E41FDD54();
    }

    v14 = v12;
    OUTLINED_FUNCTION_21();
    v16 = (*(v15 + 576))();
    if (v16)
    {
      [v16 multiPlayerViewController:v2 didBeginDropWithMediaInfo:v17 atIndex:v14];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1E3C81214(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_21();
  v32 = v2;
  v4 = (*(v3 + 424))();
  v31 = MEMORY[0x1E69E7CC0];
  *&v35 = MEMORY[0x1E69E7CC0];
  v5 = sub_1E32AE9B0(v4);
  v6 = 0;
  v7 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_playerView;
  while (v5 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1E6911E60](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v8 = *(v4 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      OUTLINED_FUNCTION_15_44();
LABEL_25:
      OUTLINED_FUNCTION_87_0();

      v25 = [v7 localObject];

      if (v25)
      {
        sub_1E4207264();
        swift_unknownObjectRelease();
      }

      else
      {
        v33 = 0u;
        v34 = 0u;
      }

      v35 = v33;
      v36 = v34;
      if (*(&v34 + 1))
      {
        sub_1E3280A90(0, &qword_1EE23B350, off_1E8728420);
        if (OUTLINED_FUNCTION_21_4())
        {
          OUTLINED_FUNCTION_21();
          v29 = (*(v28 + 576))();
          if (v29)
          {
            [v29 multiPlayerViewController:v2 didEndDropWithMediaInfo:v33];

            swift_unknownObjectRelease();
          }

          else
          {
          }

          return;
        }

LABEL_30:
        OUTLINED_FUNCTION_21();
        v26 = OUTLINED_FUNCTION_0_199();
        v27(v26);
        return;
      }

LABEL_29:
      sub_1E329505C(&v35);
      goto LABEL_30;
    }

    v2 = *&v7[v32];
    OUTLINED_FUNCTION_21();
    v12 = (*(v11 + 920))(v9);

    ++v6;
    if (v12)
    {
      MEMORY[0x1E6910BF0]();
      OUTLINED_FUNCTION_4_157();
      if (v14)
      {
        OUTLINED_FUNCTION_3_150(v13);
        sub_1E42062F4();
      }

      v2 = &v35;
      OUTLINED_FUNCTION_39_0();
      sub_1E4206324();
      v31 = v35;
      v6 = v10;
    }
  }

  v15 = sub_1E32AE9B0(v31);
  v16 = 0;
  v7 = (v31 & 0xFFFFFFFFFFFFFF8);
  while (v15 != v16)
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1E6911E60](v16, v31);
    }

    else
    {
      if (v16 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v17 = *(v31 + 8 * v16 + 32);
    }

    v2 = v17;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_21();
    v18 = OUTLINED_FUNCTION_0_199();
    v19(v18);

    ++v16;
  }

  v20 = [a2 localDragSession];
  v2 = v32;
  if (!v20)
  {
LABEL_28:
    v35 = 0u;
    v36 = 0u;
    goto LABEL_29;
  }

  v21 = [v20 items];
  OUTLINED_FUNCTION_87_0();
  swift_unknownObjectRelease();
  sub_1E3280A90(0, &qword_1ECF309A8, 0x1E69DC990);
  v22 = sub_1E42062B4();

  if (!sub_1E32AE9B0(v22))
  {

    goto LABEL_28;
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_9_39();
  if (v23)
  {
    v24 = *(v22 + 32);
    goto LABEL_25;
  }

  __break(1u);
}