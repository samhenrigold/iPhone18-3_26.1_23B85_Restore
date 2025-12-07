uint64_t sub_248A9A780()
{
  v1 = v0;
  if (qword_27EEC4B40 != -1)
  {
    swift_once();
  }

  v2 = sub_248AA375C();
  __swift_project_value_buffer(v2, qword_27EEC5520);
  v3 = sub_248AA373C();
  v4 = sub_248AA3BCC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_248A99000, v3, v4, "setupSceneHosting()", v5, 2u);
    MEMORY[0x24C1E3AE0](v5, -1, -1);
  }

  if (*&v1[OBJC_IVAR____TtC15DeviceSharingUI20RemoteViewController_hostingController])
  {
    sub_248A9AE30();
    swift_allocError();
    *v6 = 0xD00000000000002DLL;
    v6[1] = 0x8000000248AA4DC0;
    return swift_willThrow();
  }

  else
  {
    aBlock[4] = sub_248A9A9F8;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_248A9AAD4;
    aBlock[3] = &block_descriptor;
    v8 = _Block_copy(aBlock);
    [v1 _beginDelayingPresentation_cancellationHandler_];
    _Block_release(v8);
    result = sub_248AA3C8C();
    __break(1u);
  }

  return result;
}

uint64_t sub_248A9A9F8()
{
  if (qword_27EEC4B40 != -1)
  {
    swift_once();
  }

  v0 = sub_248AA375C();
  __swift_project_value_buffer(v0, qword_27EEC5520);
  v1 = sub_248AA373C();
  v2 = sub_248AA3BAC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_248A99000, v1, v2, "_beginDelayingPresentation timed out", v3, 2u);
    MEMORY[0x24C1E3AE0](v3, -1, -1);
  }

  return 0;
}

uint64_t sub_248A9AAD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  LOBYTE(a2) = v3(a2);

  return a2 & 1;
}

id sub_248A9AB34()
{
  v1 = v0;
  if (qword_27EEC4B40 != -1)
  {
    swift_once();
  }

  v2 = sub_248AA375C();
  __swift_project_value_buffer(v2, qword_27EEC5520);
  v3 = sub_248AA373C();
  v4 = sub_248AA3BCC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_248A99000, v3, v4, "clientIsReady()", v5, 2u);
    MEMORY[0x24C1E3AE0](v5, -1, -1);
  }

  return [v1 _endDelayingPresentation];
}

id sub_248A9AD64()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_248A9AE30()
{
  result = qword_27EEC4C88;
  if (!qword_27EEC4C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC4C88);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_248A9AE90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_248A9AED8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SceneVisibilityManager.bundleIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_248A9AF60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_248A9B09C();
  sub_248AA36FC();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_248A9B000()
{
  swift_getKeyPath();
  sub_248A9B09C();
  sub_248AA36FC();

  return *(v0 + 32);
}

unint64_t sub_248A9B09C()
{
  result = qword_27EEC4DB8;
  if (!qword_27EEC4DB8)
  {
    type metadata accessor for SceneVisibilityManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC4DB8);
  }

  return result;
}

uint64_t type metadata accessor for SceneVisibilityManager(uint64_t a1)
{
  result = qword_27EEC4DC0;
  if (!qword_27EEC4DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_248A9B140(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_248A9B09C();
    sub_248AA36EC();
  }

  return result;
}

void *sub_248A9B220()
{
  swift_getKeyPath();
  sub_248A9B09C();
  sub_248AA36FC();

  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

id sub_248A9B298@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_248A9B09C();
  sub_248AA36FC();

  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

void sub_248A9B320(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_248A9B09C();
    sub_248AA36EC();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_248A9CAD0(0, &qword_27EEC4DE0, 0x277D0AD08);
  v5 = v4;
  v6 = a1;
  v7 = sub_248AA3BDC();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 40);
LABEL_8:
  *(v2 + 40) = a1;
}

uint64_t SceneVisibilityManager.__allocating_init(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  sub_248AA370C();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return v4;
}

uint64_t SceneVisibilityManager.init(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  sub_248AA370C();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void sub_248A9B52C()
{
  v1 = sub_248A9B9B8();
  sub_248A9B320(v1);
  if (qword_27EEC4B48 != -1)
  {
    swift_once();
  }

  v2 = sub_248AA375C();
  __swift_project_value_buffer(v2, qword_27EEC5538);

  oslog = sub_248AA373C();
  v3 = sub_248AA3BCC();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136446210;
    v9 = v5;
    v6 = sub_248AA3D2C();
    MEMORY[0x24C1E34A0](v6);

    MEMORY[0x24C1E34A0](23389, 0xE200000000000000);
    MEMORY[0x24C1E34A0](*(v0 + 16), *(v0 + 24));
    MEMORY[0x24C1E34A0](93, 0xE100000000000000);
    v7 = sub_248A9C268(91, 0xE100000000000000, &v9);

    *(v4 + 4) = v7;
    _os_log_impl(&dword_248A99000, oslog, v3, "%{public}s Scene visibility manager activated.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C1E3AE0](v5, -1, -1);
    MEMORY[0x24C1E3AE0](v4, -1, -1);
  }
}

void sub_248A9B714()
{
  swift_getKeyPath();
  sub_248A9B09C();
  sub_248AA36FC();

  [*(v0 + 40) invalidate];
  if (*(v0 + 40))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_248AA36EC();
  }

  if (qword_27EEC4B48 != -1)
  {
    swift_once();
  }

  v2 = sub_248AA375C();
  __swift_project_value_buffer(v2, qword_27EEC5538);

  v3 = sub_248AA373C();
  v4 = sub_248AA3BCC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136446210;
    v9 = v6;
    v7 = sub_248AA3D2C();
    MEMORY[0x24C1E34A0](v7);

    MEMORY[0x24C1E34A0](23389, 0xE200000000000000);
    MEMORY[0x24C1E34A0](*(v0 + 16), *(v0 + 24));
    MEMORY[0x24C1E34A0](93, 0xE100000000000000);
    v8 = sub_248A9C268(91, 0xE100000000000000, &v9);

    *(v5 + 4) = v8;
    _os_log_impl(&dword_248A99000, v3, v4, "%{public}s Scene visibility manager invalidated.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1E3AE0](v6, -1, -1);
    MEMORY[0x24C1E3AE0](v5, -1, -1);
  }
}

id sub_248A9B9B8()
{
  v0 = [objc_opt_self() configurationForDefaultMainDisplayMonitor];
  v1 = swift_allocObject();
  swift_weakInit();
  v5[4] = sub_248A9CB50;
  v5[5] = v1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_248A9BB58;
  v5[3] = &block_descriptor_0;
  v2 = _Block_copy(v5);

  [v0 setTransitionHandler_];
  _Block_release(v2);
  v3 = [objc_opt_self() monitorWithConfiguration_];

  return v3;
}

uint64_t sub_248A9BAE4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_248A9CB70(a1, a2);
  }

  return result;
}

void sub_248A9BB58(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

BOOL sub_248A9BBF8(void *a1)
{
  v2 = v1;
  v3 = [a1 elements];
  sub_248A9CAD0(0, &qword_27EEC4DD0, 0x277D0AD00);
  v4 = sub_248AA3B3C();

  v36 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_248AA3C9C())
  {
    v35 = v2;
    v6 = 0;
    v2 = v4 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1E35B0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [v7 bundleIdentifier];
      if (v10)
      {
        v11 = v10;
        v12 = sub_248AA3AEC();
        v14 = v13;

        if (v12 == *(v35 + 16) && v14 == *(v35 + 24))
        {

LABEL_18:
          sub_248AA3C3C();
          sub_248AA3C5C();
          sub_248AA3C6C();
          sub_248AA3C4C();
          goto LABEL_5;
        }

        v16 = sub_248AA3CAC();

        if (v16)
        {
          goto LABEL_18;
        }
      }

LABEL_5:
      ++v6;
      if (v9 == i)
      {
        v2 = v35;
        v17 = v36;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v17 = MEMORY[0x277D84F90];
LABEL_25:

  if (qword_27EEC4B48 != -1)
  {
    swift_once();
  }

  v18 = sub_248AA375C();
  __swift_project_value_buffer(v18, qword_27EEC5538);
  swift_retain_n();

  v19 = sub_248AA373C();
  v20 = sub_248AA3B9C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 136446466;
    v37 = v22;
    v23 = sub_248AA3D2C();
    MEMORY[0x24C1E34A0](v23);

    MEMORY[0x24C1E34A0](23389, 0xE200000000000000);
    MEMORY[0x24C1E34A0](*(v2 + 16), *(v2 + 24));
    MEMORY[0x24C1E34A0](93, 0xE100000000000000);
    v24 = sub_248A9C268(91, 0xE100000000000000, &v37);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2050;
    v25 = v17 & 0x4000000000000000;
    if (v17 < 0 || v25)
    {
      v26 = sub_248AA3C9C();
    }

    else
    {
      v26 = *(v17 + 16);
    }

    *(v21 + 14) = v26;

    _os_log_impl(&dword_248A99000, v19, v20, "%{public}s Handling layout monitor transition, scene element count = %{public}ld.", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x24C1E3AE0](v22, -1, -1);
    MEMORY[0x24C1E3AE0](v21, -1, -1);
  }

  else
  {

    v25 = v17 & 0x4000000000000000;
  }

  if (v17 < 0 || v25)
  {
    v27 = sub_248AA3C9C();
  }

  else
  {
    v27 = *(v17 + 16);
  }

  v28 = sub_248AA373C();
  v29 = sub_248AA3B9C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 136446466;
    v37 = v31;
    v32 = sub_248AA3D2C();
    MEMORY[0x24C1E34A0](v32);

    MEMORY[0x24C1E34A0](23389, 0xE200000000000000);
    MEMORY[0x24C1E34A0](*(v2 + 16), *(v2 + 24));
    MEMORY[0x24C1E34A0](93, 0xE100000000000000);
    v33 = sub_248A9C268(91, 0xE100000000000000, &v37);

    *(v30 + 4) = v33;
    *(v30 + 12) = 1026;
    *(v30 + 14) = v27 != 0;
    _os_log_impl(&dword_248A99000, v28, v29, "%{public}s Is any scene visible = %{BOOL,public}d.", v30, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x24C1E3AE0](v31, -1, -1);
    MEMORY[0x24C1E3AE0](v30, -1, -1);
  }

  return v27 != 0;
}

uint64_t SceneVisibilityManager.deinit()
{

  v1 = OBJC_IVAR____TtC15DeviceSharingUI22SceneVisibilityManager___observationRegistrar;
  v2 = sub_248AA371C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SceneVisibilityManager.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC15DeviceSharingUI22SceneVisibilityManager___observationRegistrar;
  v2 = sub_248AA371C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

unint64_t sub_248A9C268(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_248A9C334(v11, 0, 0, 1, a1, a2);
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
    sub_248A9CA28(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_248A9C334(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_248A9C440(a5, a6);
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
    result = sub_248AA3C2C();
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

void *sub_248A9C440(uint64_t a1, unint64_t a2)
{
  v3 = sub_248A9C48C(a1, a2);
  sub_248A9C5BC(&unk_285B6BC60);
  return v3;
}

void *sub_248A9C48C(uint64_t a1, unint64_t a2)
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

  v6 = sub_248A9C6A8(v5, 0);
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

  result = sub_248AA3C2C();
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
        v10 = sub_248AA3B1C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_248A9C6A8(v10, 0);
        result = sub_248AA3BFC();
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

uint64_t sub_248A9C5BC(uint64_t result)
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

  result = sub_248A9C71C(result, v11, 1, v3);
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

void *sub_248A9C6A8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4DD8, &qword_248AA46E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_248A9C71C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4DD8, &qword_248AA46E0);
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

void sub_248A9C860(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_248A9B320(v1);
}

void sub_248A9C890()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
  v4 = v2;
}

uint64_t sub_248A9C8D0(uint64_t a1)
{
  result = sub_248AA371C();
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

uint64_t sub_248A9CA28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_248A9CAD0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_248A9CB18()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_248A9CB70(void *a1, void *a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = qword_27EEC4B48;
    v6 = a2;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_248AA375C();
    __swift_project_value_buffer(v7, qword_27EEC5538);
    v8 = v6;

    v9 = sub_248AA373C();
    v10 = sub_248AA3B9C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v11 = 136446466;
      v30 = v13;
      v14 = sub_248AA3D2C();
      MEMORY[0x24C1E34A0](v14);

      MEMORY[0x24C1E34A0](23389, 0xE200000000000000);
      MEMORY[0x24C1E34A0](*(v3 + 16), *(v3 + 24));
      MEMORY[0x24C1E34A0](93, 0xE100000000000000);
      v15 = sub_248A9C268(91, 0xE100000000000000, &v30);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2114;
      *(v11 + 14) = v8;
      *v12 = a2;
      v16 = v8;
      _os_log_impl(&dword_248A99000, v9, v10, "%{public}s Handling layout monitor transition for layout = %{public}@.", v11, 0x16u);
      sub_248A9D050(v12);
      MEMORY[0x24C1E3AE0](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x24C1E3AE0](v13, -1, -1);
      MEMORY[0x24C1E3AE0](v11, -1, -1);
    }

    v17 = sub_248A9BBF8(v8);
    if (v17 == *(v3 + 32))
    {

      *(v3 + 32) = v17;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_248A9B09C();
      sub_248AA36EC();
    }
  }

  else
  {
    if (qword_27EEC4B48 != -1)
    {
      swift_once();
    }

    v20 = sub_248AA375C();
    __swift_project_value_buffer(v20, qword_27EEC5538);

    v21 = a1;
    v29 = sub_248AA373C();
    v22 = sub_248AA3BAC();

    if (os_log_type_enabled(v29, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v23 = 136446466;
      v30 = v25;
      v26 = sub_248AA3D2C();
      MEMORY[0x24C1E34A0](v26);

      MEMORY[0x24C1E34A0](23389, 0xE200000000000000);
      MEMORY[0x24C1E34A0](*(v3 + 16), *(v3 + 24));
      MEMORY[0x24C1E34A0](93, 0xE100000000000000);
      v27 = sub_248A9C268(91, 0xE100000000000000, &v30);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2114;
      *(v23 + 14) = v21;
      *v24 = v21;
      v28 = v21;
      _os_log_impl(&dword_248A99000, v29, v22, "%{public}s Could not handle layout monitor transition because could not get layout for layout monitor = %{public}@.", v23, 0x16u);
      sub_248A9D050(v24);
      MEMORY[0x24C1E3AE0](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x24C1E3AE0](v25, -1, -1);
      MEMORY[0x24C1E3AE0](v23, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_248A9D050(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4DE8, &qword_248AA46E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void RemoteView.init(target:)()
{
  if (qword_27EEC4B40 != -1)
  {
    swift_once();
  }

  v0 = sub_248AA375C();
  __swift_project_value_buffer(v0, qword_27EEC5520);
  oslog = sub_248AA373C();
  v1 = sub_248AA3BCC();
  if (os_log_type_enabled(oslog, v1))
  {
    swift_slowAlloc();
    swift_slowAlloc();
    sub_248AA3C8C();
    __break(1u);
  }

  else
  {
  }
}

id RemoteView.makeUIViewController(context:)()
{
  if (qword_27EEC4B40 != -1)
  {
    swift_once();
  }

  v0 = sub_248AA375C();
  __swift_project_value_buffer(v0, qword_27EEC5520);
  v1 = sub_248AA373C();
  v2 = sub_248AA3BCC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_248A99000, v1, v2, "Creating RemoteViewController", v3, 2u);
    MEMORY[0x24C1E3AE0](v3, -1, -1);
  }

  v4 = type metadata accessor for RemoteViewController();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC15DeviceSharingUI20RemoteViewController_hostingController] = 0;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
  sub_248A9A780();
  return v6;
}

uint64_t sub_248A9D42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_248A9D680();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_248A9D490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_248A9D680();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_248A9D510(uint64_t a1)
{
  sub_248A9D680();
  sub_248AA397C();
  __break(1u);
}

unint64_t sub_248A9D53C()
{
  result = qword_27EEC4DF8;
  if (!qword_27EEC4DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC4DF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteViewTarget(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RemoteViewTarget(_WORD *result, int a2, int a3)
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

unint64_t sub_248A9D680()
{
  result = qword_27EEC4E00;
  if (!qword_27EEC4E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC4E00);
  }

  return result;
}

uint64_t RemoteViewTarget.hashValue.getter()
{
  sub_248AA3CFC();
  MEMORY[0x24C1E36A0](0);
  return sub_248AA3D1C();
}

uint64_t sub_248A9D7AC()
{
  sub_248AA3CFC();
  MEMORY[0x24C1E36A0](0);
  return sub_248AA3D1C();
}

uint64_t sub_248A9D818(uint64_t a1)
{
  sub_248AA3CFC();
  MEMORY[0x24C1E36A0](0);
  return sub_248AA3D1C();
}

unint64_t sub_248A9D85C()
{
  result = qword_27EEC4E08;
  if (!qword_27EEC4E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC4E08);
  }

  return result;
}

Swift::String __swiftcall String.localized(bundle:)(NSBundle bundle)
{
  v1 = sub_248AA36DC();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::Void __swiftcall UIViewController.embed(childController:)(UIViewController *childController)
{
  [v1 addChildViewController_];
  v3 = [v1 view];
  v4 = [(UIViewController *)childController view];
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    sub_248AA3C8C();
    __break(1u);
  }

  else
  {
    v6 = v4;
    v7 = v3;
    v23 = v6;
    [v7 addSubview_];
    [(UIView *)v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E10, &qword_248AA48E0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_248AA48D0;
    v10 = [(UIView *)v23 leadingAnchor];
    v11 = [v7 leadingAnchor];
    v12 = [(NSLayoutXAxisAnchor *)v10 constraintEqualToAnchor:v11];

    *(v9 + 32) = v12;
    v13 = [(UIView *)v23 trailingAnchor];
    v14 = [v7 trailingAnchor];
    v15 = [(NSLayoutXAxisAnchor *)v13 constraintEqualToAnchor:v14];

    *(v9 + 40) = v15;
    v16 = [(UIView *)v23 topAnchor];
    v17 = [v7 topAnchor];
    v18 = [(NSLayoutYAxisAnchor *)v16 constraintEqualToAnchor:v17];

    *(v9 + 48) = v18;
    v19 = [(UIView *)v23 bottomAnchor];
    v20 = [v7 bottomAnchor];
    v21 = [(NSLayoutYAxisAnchor *)v19 constraintEqualToAnchor:v20];

    *(v9 + 56) = v21;
    sub_248A9DCF4();
    v22 = sub_248AA3B2C();

    [v8 activateConstraints_];

    [(UIViewController *)childController didMoveToParentViewController:v1];
  }
}

unint64_t sub_248A9DCF4()
{
  result = qword_27EEC4E18;
  if (!qword_27EEC4E18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEC4E18);
  }

  return result;
}

uint64_t sub_248A9DD54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_248AA388C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E20, &qword_248AA4920);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_248AA03B0(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_248AA37CC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_248AA3BBC();
    v13 = sub_248AA39AC();
    sub_248AA372C();

    sub_248AA387C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t TextWithAnimatedEllipsis.init(localizedText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E20, &qword_248AA4920);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for TextWithAnimatedEllipsis(0);
  v7 = (a3 + *(result + 20));
  *v7 = a1;
  v7[1] = a2;
  return result;
}

uint64_t TextWithAnimatedEllipsis.body.getter@<X0>(uint64_t a1@<X8>)
{
  v15[2] = a1;
  v2 = type metadata accessor for TextWithAnimatedEllipsis(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v21 = vdupq_n_s64(0x3FC999999999999AuLL);
  v22 = 0x3FC999999999999ALL;
  sub_248A9FC2C(v1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_248A9FC94(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  v15[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E28, &qword_248AA4928);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E30, &qword_248AA4930);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC4E38, &qword_248AA4938);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC4E40, &qword_248AA4940);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC4E48, &qword_248AA4948);
  v10 = MEMORY[0x277CDF6F0];
  v11 = sub_248AA0348(&qword_27EEC4E50, &qword_27EEC4E48, &qword_248AA4948, MEMORY[0x277CDF6F0]);
  v12 = sub_248AA0348(&qword_27EEC4E58, &qword_27EEC4E40, &qword_248AA4940, v10);
  v16 = &type metadata for TextWithAnimatedEllipsis.TextOpacity;
  v17 = v9;
  v18 = v8;
  v19 = v11;
  v20 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = &type metadata for TextWithAnimatedEllipsis.TextOpacity;
  v17 = v7;
  v18 = v8;
  v19 = OpaqueTypeConformance2;
  v20 = v12;
  swift_getOpaqueTypeConformance2();
  sub_248A9FD44();
  return sub_248AA37EC();
}

uint64_t sub_248A9E244@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_248AA37CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248A9DD54(v8);
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == *MEMORY[0x277CDFA88])
  {
    type metadata accessor for TextWithAnimatedEllipsis(0);

    sub_248AA3A3C();
    sub_248AA3A4C();

    v10 = sub_248AA39BC();
    v12 = v11;
    v14 = v13;

    v15 = sub_248AA39CC();
    *&v87 = a3;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    sub_248AA0390(v10, v12, v14 & 1);

    sub_248AA3A3C();
    sub_248AA3A4C();

    v21 = sub_248AA39BC();
    v23 = v22;
    LOBYTE(v12) = v24;

    *&v86 = sub_248AA39CC();
    v85 = v25;
    v83 = v26;
    v84 = v27;
    sub_248AA0390(v21, v23, v12 & 1);

    sub_248AA0390(v16, v18, v20 & 1);

    sub_248AA3A3C();
    sub_248AA3A4C();

    v28 = sub_248AA39BC();
    v30 = v29;
    v32 = v31;

    v33 = v86;
    v34 = v85;
    v35 = sub_248AA39CC();
    v82 = v36;
    LOBYTE(v18) = v37;
    v39 = v38;
    sub_248AA0390(v28, v30, v32 & 1);

    sub_248AA0390(v33, v34, v83 & 1);

    v40 = v18 & 1;
    v41 = v82;
    *&v88 = v35;
    *(&v88 + 1) = v82;
    *&v89 = v18 & 1;
    *(&v89 + 1) = v39;
    LOBYTE(v90) = 0;
  }

  else
  {
    v42 = v9;
    v43 = *MEMORY[0x277CDFA90];
    v44 = (a2 + *(type metadata accessor for TextWithAnimatedEllipsis(0) + 20));
    v45 = v44[1];
    if (v42 != v43)
    {
      *&v88 = *v44;
      *(&v88 + 1) = v45;
      *&v89 = 0;
      *(&v89 + 1) = MEMORY[0x277D84F90];
      v90 = 256;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E70, &qword_248AA4950);
      sub_248A9FDD0();
      sub_248AA38AC();
      v87 = v91;
      v86 = v92;
      v80 = v93;
      v81 = v94;
      result = (*(v6 + 8))(v8, v5);
      v79 = v86;
      v78 = v87;
      goto LABEL_7;
    }

    sub_248AA3A3C();
    sub_248AA3A4C();

    v46 = sub_248AA39BC();
    v48 = v47;
    v50 = v49;

    v51 = sub_248AA39CC();
    *&v87 = a3;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    sub_248AA0390(v46, v48, v50 & 1);

    sub_248AA3A3C();
    sub_248AA3A4C();

    v57 = sub_248AA39BC();
    v59 = v58;
    LOBYTE(v46) = v60;

    *&v86 = sub_248AA39CC();
    v85 = v61;
    v83 = v62;
    v84 = v63;
    sub_248AA0390(v57, v59, v46 & 1);

    sub_248AA0390(v52, v54, v56 & 1);

    sub_248AA3A3C();
    sub_248AA3A4C();

    v64 = sub_248AA39BC();
    v66 = v65;
    v68 = v67;

    v69 = v86;
    v70 = v85;
    v35 = sub_248AA39CC();
    v82 = v71;
    LOBYTE(v54) = v72;
    v74 = v73;
    sub_248AA0390(v64, v66, v68 & 1);

    sub_248AA0390(v69, v70, v83 & 1);

    v40 = v54 & 1;
    v41 = v82;
    *&v88 = v35;
    *(&v88 + 1) = v82;
    *&v89 = v54 & 1;
    *(&v89 + 1) = v74;
    LOBYTE(v90) = 1;
  }

  v75 = v41;
  sub_248AA03A0(v35, v41, v40);

  sub_248AA38AC();
  v88 = v91;
  v89 = v92;
  v90 = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E70, &qword_248AA4950);
  sub_248A9FDD0();
  sub_248AA38AC();
  v76 = v35;
  a3 = v87;
  sub_248AA0390(v76, v75, v40);

  v78 = v91;
  v79 = v92;
  v80 = v93;
  v81 = v94;
LABEL_7:
  *a3 = v78;
  *(a3 + 16) = v79;
  *(a3 + 32) = v80;
  *(a3 + 33) = v81;
  return result;
}

uint64_t sub_248A9E9F8@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E28, &qword_248AA4928);
  v2 = *(v1 - 8);
  v50 = v1;
  v51 = v2;
  MEMORY[0x28223BE20](v1);
  v48 = &v42 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E38, &qword_248AA4938);
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E40, &qword_248AA4940);
  v59 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v54 = &v42 - v9;
  MEMORY[0x28223BE20](v8);
  v55 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E48, &qword_248AA4948);
  v12 = *(v11 - 8);
  v57 = v11;
  v58 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v56 = &v42 - v16;
  swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4EA8, &qword_248AA4A30);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC4EB0, &qword_248AA4A38);
  v19 = sub_248AA0348(&qword_27EEC4EB8, &qword_27EEC4EB0, &qword_248AA4A38, MEMORY[0x277CDF848]);
  v60 = MEMORY[0x277D839F8];
  v61 = v18;
  v62 = v18;
  v63 = v19;
  v64 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = v15;
  sub_248AA37AC();
  v21 = MEMORY[0x277CDF6F0];
  v43 = sub_248AA0348(&qword_27EEC4E50, &qword_27EEC4E48, &qword_248AA4948, MEMORY[0x277CDF6F0]);
  v22 = v57;
  MEMORY[0x24C1E3190](v15, &type metadata for TextWithAnimatedEllipsis.TextOpacity, v57, v43);
  v23 = *(v58 + 8);
  v58 += 8;
  v44 = v23;
  v23(v15, v22);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4EC0, &qword_248AA4A60);
  v60 = MEMORY[0x277D839F8];
  v61 = v17;
  v62 = v18;
  v63 = OpaqueTypeConformance2;
  v64 = v19;
  swift_getOpaqueTypeConformance2();
  v24 = v54;
  sub_248AA37AC();
  v25 = sub_248AA0348(&qword_27EEC4E58, &qword_27EEC4E40, &qword_248AA4940, v21);
  MEMORY[0x24C1E3190](v24, &type metadata for TextWithAnimatedEllipsis.TextOpacity, v5, v25);
  v27 = v59 + 8;
  v26 = *(v59 + 8);
  v26(v24, v5);
  v59 = v27;
  swift_getKeyPath();
  v28 = v45;
  sub_248AA37AC();
  MEMORY[0x24C1E3190](v28, &type metadata for TextWithAnimatedEllipsis.TextOpacity, v5, v25);
  v26(v28, v5);
  v29 = v57;
  v30 = v43;
  MEMORY[0x24C1E31C0](v56, &type metadata for TextWithAnimatedEllipsis.TextOpacity, v57, v43);
  v31 = v46;
  sub_248AA381C();
  v60 = &type metadata for TextWithAnimatedEllipsis.TextOpacity;
  v61 = v29;
  v62 = v5;
  v63 = v30;
  v64 = v25;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = v48;
  v34 = v31;
  v35 = v54;
  v36 = v47;
  sub_248AA381C();
  v60 = &type metadata for TextWithAnimatedEllipsis.TextOpacity;
  v61 = v36;
  v62 = v5;
  v63 = v32;
  v64 = v25;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v50;
  MEMORY[0x24C1E31A0](v33, &type metadata for TextWithAnimatedEllipsis.TextOpacity, v50, v37);
  (*(v51 + 8))(v33, v38);
  (*(v49 + 8))(v34, v36);
  v39 = v57;
  v40 = v44;
  v44(v53, v57);
  v26(v35, v5);
  v26(v55, v5);
  return v40(v56, v39);
}

uint64_t sub_248A9F0E8@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v1 = sub_248AA3ADC();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4EB0, &qword_248AA4A38);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v16 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v17 = 0x3FECCCCCCCCCCCCDLL;
  sub_248AA3ACC();
  v12 = MEMORY[0x277D839F8];
  sub_248AA37BC();
  v13 = sub_248AA0348(&qword_27EEC4EB8, &qword_27EEC4EB0, &qword_248AA4A38, MEMORY[0x277CDF848]);
  MEMORY[0x24C1E3280](v9, v12, v2, v13);
  v14 = *(v3 + 8);
  v14(v9, v2);
  v17 = 0x3FC999999999999ALL;
  sub_248AA3ACC();
  sub_248AA37BC();
  MEMORY[0x24C1E3280](v6, v12, v2, v13);
  v14(v6, v2);
  MEMORY[0x24C1E32A0](v11, v12, v2, v13);
  sub_248AA38FC();
  v14(v6, v2);
  v14(v9, v2);
  return (v14)(v11, v2);
}

uint64_t sub_248A9F3EC@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4EA8, &qword_248AA4A30);
  v3 = *(v2 - 8);
  v27 = v2;
  v28 = v3;
  MEMORY[0x28223BE20](v2);
  v26 = &v25 - v4;
  v5 = sub_248AA3ADC();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4EB0, &qword_248AA4A38);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v25 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v25 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - v17;
  v30 = 0x3FC999999999999ALL;
  sub_248AA3ABC();
  v19 = MEMORY[0x277D839F8];
  sub_248AA37BC();
  v20 = sub_248AA0348(&qword_27EEC4EB8, &qword_27EEC4EB0, &qword_248AA4A38, MEMORY[0x277CDF848]);
  MEMORY[0x24C1E3280](v16, v19, v6, v20);
  v21 = *(v7 + 8);
  v21(v16, v6);
  v30 = 0x3FECCCCCCCCCCCCDLL;
  sub_248AA3ACC();
  sub_248AA37BC();
  MEMORY[0x24C1E3280](v13, v19, v6, v20);
  v21(v13, v6);
  v30 = 0x3FC999999999999ALL;
  sub_248AA3ACC();
  sub_248AA37BC();
  MEMORY[0x24C1E3280](v10, v19, v6, v20);
  v21(v10, v6);
  MEMORY[0x24C1E32A0](v18, v19, v6, v20);
  v22 = v26;
  sub_248AA38FC();
  v30 = v19;
  v31 = v6;
  v32 = v6;
  v33 = v20;
  v34 = v20;
  swift_getOpaqueTypeConformance2();
  v23 = v27;
  sub_248AA38FC();
  (*(v28 + 8))(v22, v23);
  v21(v10, v6);
  v21(v13, v6);
  v21(v16, v6);
  return (v21)(v18, v6);
}

uint64_t sub_248A9F868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[2] = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v21 = vdupq_n_s64(0x3FC999999999999AuLL);
  v22 = 0x3FC999999999999ALL;
  sub_248A9FC2C(v2, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_248A9FC94(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  v15[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E28, &qword_248AA4928);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E30, &qword_248AA4930);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC4E38, &qword_248AA4938);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC4E40, &qword_248AA4940);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC4E48, &qword_248AA4948);
  v10 = MEMORY[0x277CDF6F0];
  v11 = sub_248AA0348(&qword_27EEC4E50, &qword_27EEC4E48, &qword_248AA4948, MEMORY[0x277CDF6F0]);
  v12 = sub_248AA0348(&qword_27EEC4E58, &qword_27EEC4E40, &qword_248AA4940, v10);
  v16 = &type metadata for TextWithAnimatedEllipsis.TextOpacity;
  v17 = v9;
  v18 = v8;
  v19 = v11;
  v20 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = &type metadata for TextWithAnimatedEllipsis.TextOpacity;
  v17 = v7;
  v18 = v8;
  v19 = OpaqueTypeConformance2;
  v20 = v12;
  swift_getOpaqueTypeConformance2();
  sub_248A9FD44();
  return sub_248AA37EC();
}

uint64_t sub_248A9FB14(uint64_t a1)
{
  v2 = sub_248AA37CC();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_248AA386C();
}

uint64_t type metadata accessor for TextWithAnimatedEllipsis(uint64_t a1)
{
  result = qword_27EEC4E80;
  if (!qword_27EEC4E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_248A9FC2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextWithAnimatedEllipsis(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_248A9FC94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextWithAnimatedEllipsis(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

unint64_t sub_248A9FD44()
{
  result = qword_27EEC4E60;
  if (!qword_27EEC4E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC4E30, &qword_248AA4930);
    sub_248A9FDD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC4E60);
  }

  return result;
}

unint64_t sub_248A9FDD0()
{
  result = qword_27EEC4E68;
  if (!qword_27EEC4E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC4E70, &qword_248AA4950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC4E68);
  }

  return result;
}

uint64_t sub_248A9FE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E78, &unk_248AA49B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_248A9FF5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E78, &unk_248AA49B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_248AA0024(uint64_t a1)
{
  sub_248AA0098(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_248AA0098(uint64_t a1)
{
  if (!qword_27EEC4E90)
  {
    sub_248AA37CC();
    v1 = sub_248AA378C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EEC4E90);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TextWithAnimatedEllipsis.TextOpacity(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TextWithAnimatedEllipsis.TextOpacity(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(type metadata accessor for TextWithAnimatedEllipsis(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E20, &qword_248AA4920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_248AA37CC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_248AA02C8@<X0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for TextWithAnimatedEllipsis(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_248A9E244(v5, a2);
}

uint64_t sub_248AA0348(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_248AA0390(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_248AA03A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_248AA03B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4E20, &qword_248AA4920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_248AA04F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneSpecification();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_248AA058C(uint64_t a1, uint64_t a2)
{
  v8 = sub_248AA389C();
  MEMORY[0x28223BE20](v8);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_248AA38AC();
}

void *sub_248AA0684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_248AA389C();
  MEMORY[0x28223BE20](v8);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_248AA38AC();
}

uint64_t View.isHidden(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v37 = a3;
  LODWORD(v33) = a1;
  v5 = *(a2 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = sub_248AA37DC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  v18 = sub_248AA38BC();
  v35 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v32 - v19;
  if (v33)
  {
    v33 = v18;
    v21 = v37;
    sub_248AA3A1C();
    v22 = sub_248AA0B94();
    v38 = v21;
    v39 = v22;
    WitnessTable = swift_getWitnessTable();
    v23 = *(v12 + 16);
    v23(v17, v15, v11);
    v24 = *(v12 + 8);
    v24(v15, v11);
    v23(v15, v17, v11);
    v18 = v33;
    sub_248AA058C(v15, v11);
    v24(v15, v11);
    v24(v17, v11);
  }

  else
  {
    v25 = *(v5 + 16);
    v25(v10, WitnessTable, a2);
    v25(v8, v10, a2);
    v26 = sub_248AA0B94();
    v44 = v37;
    v45 = v26;
    swift_getWitnessTable();
    sub_248AA0684(v8, v11, a2);
    v27 = *(v5 + 8);
    v27(v8, a2);
    v27(v10, a2);
  }

  v28 = sub_248AA0B94();
  v29 = v37;
  v42 = v37;
  v43 = v28;
  v40 = swift_getWitnessTable();
  v41 = v29;
  swift_getWitnessTable();
  v30 = v35;
  (*(v35 + 16))(v36, v20, v18);
  return (*(v30 + 8))(v20, v18);
}

unint64_t sub_248AA0B94()
{
  result = qword_27EEC4ED0;
  if (!qword_27EEC4ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC4ED0);
  }

  return result;
}

uint64_t sub_248AA0BE8(uint64_t *a1)
{
  sub_248AA37DC();
  sub_248AA38BC();
  sub_248AA0B94();
  swift_getWitnessTable();
  return swift_getWitnessTable();
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

uint64_t sub_248AA0D48(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_248AA375C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_248AA374C();
}

uint64_t sub_248AA0DC0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4F88, &qword_248AA4B28);
  sub_248AA3A6C();
  return v2;
}

uint64_t AsyncButton.init(role:action:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v12 = type metadata accessor for AsyncButton(0, a5, a6, a4);
  v13 = a7 + *(v12 + 44);
  sub_248AA3A5C();
  *v13 = v16;
  *(v13 + 1) = v17;
  sub_248AA2AC0(a1, a7 + *(v12 + 40), &qword_27EEC4ED8, &qword_248AA4AA8);
  *a7 = a2;
  a7[1] = a3;

  a4(v14);

  return sub_248AA2B28(a1, &qword_27EEC4ED8, &qword_248AA4AA8);
}

uint64_t AsyncButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = *(a1 - 8);
  v30 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4ED8, &qword_248AA4AA8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v27 = &v27 - v8;
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = sub_248AA3AAC();
  v32 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v29 = &v27 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC4EE0, &qword_248AA4AB0);
  v14 = sub_248AA37DC();
  v33 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v28 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v31 = &v27 - v17;
  sub_248AA2AC0(v2 + *(a1 + 40), v9, &qword_27EEC4ED8, &qword_248AA4AA8);
  (*(v4 + 16))(v6, v2, a1);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v10;
  *(v19 + 24) = v11;
  (*(v4 + 32))(v19 + v18, v6, a1);
  v35 = v10;
  v36 = v11;
  v37 = v2;
  v20 = v29;
  sub_248AA3A9C();
  sub_248AA0DC0(a1);
  WitnessTable = swift_getWitnessTable();
  v22 = v28;
  sub_248AA3A2C();
  (*(v32 + 8))(v20, v12);
  v23 = sub_248AA1EF4();
  v38 = WitnessTable;
  v39 = v23;
  swift_getWitnessTable();
  v24 = v31;
  sub_248AA0C90();
  v25 = *(v33 + 8);
  v25(v22, v14);
  sub_248AA0C90();
  return (v25)(v24, v14);
}

uint64_t sub_248AA13B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AsyncButton(0, a2, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4F90, &qword_248AA4B30);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  sub_248AA0E20(1, v7);
  v14 = sub_248AA3B8C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v8 + 16))(v10, a1, v7);
  sub_248AA3B6C();
  v15 = sub_248AA3B5C();
  v16 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 2) = v15;
  *(v17 + 3) = v18;
  *(v17 + 4) = a2;
  *(v17 + 5) = a3;
  (*(v8 + 32))(&v17[v16], v10, v7);
  sub_248AA1AF0(0, 0, v13, &unk_248AA4B40, v17);
}

uint64_t sub_248AA15BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for AsyncButton(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*(v6 - 8) + 64);

  (*(*(v5 - 8) + 8))(v4 + v8 + *(v6 + 36), v5);
  v10 = *(v6 + 40);
  v11 = sub_248AA376C();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v4 + v8 + v10, 1, v11))
  {
    (*(v12 + 8))(v4 + v8 + v10, v11);
  }

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t sub_248AA173C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for AsyncButton(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_248AA13B0(v9, v5, v6, v7);
}

uint64_t sub_248AA17C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_248AA3B6C();
  v6[5] = sub_248AA3B5C();
  v8 = sub_248AA3B4C();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x2822009F8](sub_248AA185C, v8, v7);
}

uint64_t sub_248AA185C()
{
  v3 = (**(v0 + 16) + ***(v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_248AA1948;

  return v3();
}

uint64_t sub_248AA1948()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_248AA1A68, v3, v2);
}

uint64_t sub_248AA1A68()
{
  v1 = v0[4];
  v2 = v0[3];

  v4 = type metadata accessor for AsyncButton(0, v2, v1, v3);
  sub_248AA0E20(0, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_248AA1AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4F90, &qword_248AA4B30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_248AA2AC0(a3, v25 - v10, &qword_27EEC4F90, &qword_248AA4B30);
  v12 = sub_248AA3B8C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_248AA2B28(v11, &qword_27EEC4F90, &qword_248AA4B30);
  }

  else
  {
    sub_248AA3B7C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_248AA3B4C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_248AA3AFC() + 32;
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

      sub_248AA2B28(a3, &qword_27EEC4F90, &qword_248AA4B30);

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

  sub_248AA2B28(a3, &qword_27EEC4F90, &qword_248AA4B30);
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

uint64_t sub_248AA1DF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AsyncButton(0, v6, v7, v8);
  sub_248AA0C90();
  sub_248AA0C90();
  return (*(v3 + 8))(v5, a2);
}

unint64_t sub_248AA1EF4()
{
  result = qword_27EEC4EE8[0];
  if (!qword_27EEC4EE8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC4EE0, &qword_248AA4AB0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EEC4EE8);
  }

  return result;
}

void sub_248AA1FA8(uint64_t a1)
{
  sub_248AA259C();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_248AA25EC(319);
      if (v3 <= 0x3F)
      {
        sub_248AA2644();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_248AA2060(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_248AA376C() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 80);
  v15 = *(v6 + 64);
  v16 = *(v8 + 80);
  v17 = *(v8 + 64);
  v18 = 7;
  if (!v10)
  {
    v18 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 < a2)
  {
    v19 = ((v18 + v17 + ((v15 + v16 + ((v14 + 16) & ~v14)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v20 = v19 & 0xFFFFFFF8;
    if ((v19 & 0xFFFFFFF8) != 0)
    {
      v21 = 2;
    }

    else
    {
      v21 = a2 - v13 + 1;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *(a1 + v19);
        if (v24)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v24 = *(a1 + v19);
        if (v24)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v23)
    {
      v24 = *(a1 + v19);
      if (v24)
      {
LABEL_27:
        v25 = v24 - 1;
        if (v20)
        {
          v25 = 0;
          LODWORD(v20) = *a1;
        }

        return v13 + (v20 | v25) + 1;
      }
    }
  }

  if ((v12 & 0x80000000) == 0)
  {
    v27 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }

  v28 = (a1 + v14 + 16) & ~v14;
  if (v7 != v13)
  {
    if (v10 >= 2)
    {
      v30 = (*(v9 + 48))((v28 + v15 + v16) & ~v16);
      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v29 = *(v6 + 48);

  return v29(v28, v7, v5);
}

void sub_248AA22CC(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(sub_248AA376C() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v8 + 80);
  v16 = *(v8 + 64);
  v17 = *(v11 + 80);
  v18 = *(v11 + 64);
  if (v9 <= v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = v9;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  if (!v13)
  {
    ++v18;
  }

  v21 = ((v18 + ((v16 + v17 + ((v15 + 16) & ~v15)) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v20 < a3)
  {
    if (((v18 + ((v16 + v17 + ((v15 + 16) & ~v15)) & ~v17) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a3 - v20 + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v10 = v23;
    }

    else
    {
      v10 = 0;
    }
  }

  if (a2 > v20)
  {
    if (v21)
    {
      v24 = 1;
    }

    else
    {
      v24 = a2 - v20;
    }

    if (v21)
    {
      v25 = ~v20 + a2;
      bzero(a1, v21);
      *a1 = v25;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        *(a1 + v21) = v24;
      }

      else
      {
        *(a1 + v21) = v24;
      }
    }

    else if (v10)
    {
      *(a1 + v21) = v24;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *(a1 + v21) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *(a1 + v21) = 0;
LABEL_41:
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!v10)
  {
    goto LABEL_41;
  }

  *(a1 + v21) = 0;
  if (!a2)
  {
    return;
  }

LABEL_42:
  if ((v19 & 0x80000000) != 0)
  {
    v26 = (a1 + v15 + 16) & ~v15;
    if (v9 == v20)
    {
      v27 = *(v30 + 56);

      v27(v26, a2, v9, v7);
    }

    else if (v13 >= 2)
    {
      v28 = *(v12 + 56);
      v29 = (v26 + v16 + v17) & ~v17;

      v28(v29, (a2 + 1));
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    *a1 = (a2 - 1);
  }
}

unint64_t sub_248AA259C()
{
  result = qword_27EEC4F70;
  if (!qword_27EEC4F70)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27EEC4F70);
  }

  return result;
}

void sub_248AA25EC(uint64_t a1)
{
  if (!qword_27EEC4F78)
  {
    sub_248AA376C();
    v1 = sub_248AA3BEC();
    if (!v2)
    {
      atomic_store(v1, &qword_27EEC4F78);
    }
  }
}

void sub_248AA2644()
{
  if (!qword_27EEC4F80)
  {
    v0 = sub_248AA3A8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEC4F80);
    }
  }
}

uint64_t sub_248AA2694(void *a1)
{
  sub_248AA3AAC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC4EE0, &qword_248AA4AB0);
  sub_248AA37DC();
  swift_getWitnessTable();
  sub_248AA1EF4();
  return swift_getWitnessTable();
}

uint64_t sub_248AA2738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = type metadata accessor for AsyncButton(0, v5, *(v4 + 40), a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v7 + 48) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  swift_unknownObjectRelease();

  (*(*(v5 - 8) + 8))(v4 + v8 + *(v6 + 36), v5);
  v10 = *(v6 + 40);
  v11 = sub_248AA376C();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v4 + v8 + v10, 1, v11))
  {
    (*(v12 + 8))(v4 + v8 + v10, v11);
  }

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t sub_248AA28C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(type metadata accessor for AsyncButton(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_248AA29CC;

  return sub_248AA17C0(a1, v11, v12, v4 + v10, v7, v8);
}

uint64_t sub_248AA29CC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_248AA2AC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_248AA2B28(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_248AA2B88(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_248AA2C80;

  return v6(a1);
}

uint64_t sub_248AA2C80()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_248AA2D78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248AA2F54;

  return sub_248AA2B88(a1, v4);
}

uint64_t sub_248AA2E30()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248AA2E68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248AA29CC;

  return sub_248AA2B88(a1, v4);
}

uint64_t CircularProgressView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_248AA38DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4F98, &qword_248AA4B60);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  sub_248AA379C();
  sub_248AA38CC();
  sub_248AA0348(&qword_27EEC4FA0, &qword_27EEC4F98, &qword_248AA4B60, MEMORY[0x277CDD7F8]);
  sub_248AA31BC();
  sub_248AA39FC();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4FB0, &qword_248AA4B68) + 36));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4FB8, &qword_248AA4B70) + 28);
  v12 = *MEMORY[0x277CDF440];
  v13 = sub_248AA377C();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  result = swift_getKeyPath();
  *v10 = result;
  return result;
}

unint64_t sub_248AA31BC()
{
  result = qword_27EEC4FA8;
  if (!qword_27EEC4FA8)
  {
    sub_248AA38DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC4FA8);
  }

  return result;
}

uint64_t sub_248AA3214@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_248AA38DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4F98, &qword_248AA4B60);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  sub_248AA379C();
  sub_248AA38CC();
  sub_248AA0348(&qword_27EEC4FA0, &qword_27EEC4F98, &qword_248AA4B60, MEMORY[0x277CDD7F8]);
  sub_248AA31BC();
  sub_248AA39FC();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4FB0, &qword_248AA4B68) + 36));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC4FB8, &qword_248AA4B70) + 28);
  v12 = *MEMORY[0x277CDF440];
  v13 = sub_248AA377C();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  result = swift_getKeyPath();
  *v10 = result;
  return result;
}

uint64_t sub_248AA3498(uint64_t a1)
{
  v2 = sub_248AA377C();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return MEMORY[0x24C1E31E0](v4);
}

unint64_t sub_248AA3594()
{
  result = qword_27EEC4FC0;
  if (!qword_27EEC4FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC4FB0, &qword_248AA4B68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC4F98, &qword_248AA4B60);
    sub_248AA38DC();
    sub_248AA0348(&qword_27EEC4FA0, &qword_27EEC4F98, &qword_248AA4B60, MEMORY[0x277CDD7F8]);
    sub_248AA31BC();
    swift_getOpaqueTypeConformance2();
    sub_248AA0348(&qword_27EEC4FC8, &qword_27EEC4FB8, &qword_248AA4B70, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC4FC0);
  }

  return result;
}