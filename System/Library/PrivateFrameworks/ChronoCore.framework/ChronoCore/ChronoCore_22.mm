uint64_t sub_224C4D398(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_224C4D51C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[20];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224C245AC(a1, v4, v5, (v1 + 4), (v1 + 9), (v1 + 14), v6);
}

uint64_t objectdestroy_139Tm()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_224C4D63C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[20];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224C254FC(a1, v4, v5, (v1 + 4), (v1 + 9), (v1 + 14), v6);
}

uint64_t sub_224C4D7E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[20];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224C2170C(a1, v4, v5, (v1 + 4), (v1 + 9), (v1 + 14), v6);
}

uint64_t sub_224C4D8B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[20];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224C22780(a1, v4, v5, (v1 + 4), (v1 + 9), (v1 + 14), v6);
}

uint64_t objectdestroy_175Tm()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 21);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 30);
  __swift_destroy_boxed_opaque_existential_1(v0 + 35);
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  __swift_destroy_boxed_opaque_existential_1(v0 + 45);
  __swift_destroy_boxed_opaque_existential_1(v0 + 54);
  __swift_destroy_boxed_opaque_existential_1(v0 + 59);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 69);
  __swift_destroy_boxed_opaque_existential_1(v0 + 75);
  __swift_destroy_boxed_opaque_existential_1(v0 + 82);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (v0[95])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 92);
  }

  if (v0[100])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 97);
  }

  if (v0[105])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 102);
  }

  return MEMORY[0x2821FE8E8](v0, 856, 7);
}

uint64_t sub_224C4DC78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 80);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *(a2 + 80) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_226Tm(void (*a1)(void, __n128), uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(v2 + 2);

  __swift_destroy_boxed_opaque_existential_1(v2 + 16);
  __swift_destroy_boxed_opaque_existential_1(v2 + 21);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v2 + 30);
  __swift_destroy_boxed_opaque_existential_1(v2 + 35);
  __swift_destroy_boxed_opaque_existential_1(v2 + 40);
  __swift_destroy_boxed_opaque_existential_1(v2 + 45);
  __swift_destroy_boxed_opaque_existential_1(v2 + 54);
  __swift_destroy_boxed_opaque_existential_1(v2 + 59);
  __swift_destroy_boxed_opaque_existential_1(v2 + 64);
  __swift_destroy_boxed_opaque_existential_1(v2 + 69);
  __swift_destroy_boxed_opaque_existential_1(v2 + 75);
  __swift_destroy_boxed_opaque_existential_1(v2 + 82);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (v2[95])
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 92);
  }

  if (v2[100])
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 97);
  }

  if (v2[105])
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 102);
  }

  (a1)(v2[107]);

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

unint64_t sub_224C4DE90()
{
  result = qword_27D6F56C8;
  if (!qword_27D6F56C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F56C8);
  }

  return result;
}

unint64_t sub_224C4DEE4()
{
  result = qword_27D6F5700;
  if (!qword_27D6F5700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5700);
  }

  return result;
}

unint64_t sub_224C4DF38()
{
  result = qword_27D6F5708;
  if (!qword_27D6F5708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5708);
  }

  return result;
}

uint64_t sub_224C4DFAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[20];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224C23694(a1, v4, v5, (v1 + 4), (v1 + 9), (v1 + 14), v6);
}

uint64_t sub_224C4E0D4(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5828, &qword_224DBBD58);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t objectdestroy_152Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

void sub_224C4E240(void *a1)
{
  sub_224DA9688();

  sub_224C40C80(a1);
}

uint64_t sub_224C4E30C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224C4E374(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224C4E3D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_224C4E454()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + qword_28135C9F0);
  os_unfair_lock_lock(*(v2 + 16));
  v1();
  os_unfair_lock_unlock(*(v2 + 16));
}

uint64_t sub_224C4E718(uint64_t a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC10ChronoCore38ConcreteManagedConfigurationPrimitives_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_224C4E7FC()
{
  if (qword_281351508 != -1)
  {
    swift_once();
  }

  v0 = sub_224DAB258();
  __swift_project_value_buffer(v0, qword_281364E68);
  v1 = sub_224DAB228();
  v2 = sub_224DAF2A8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_224A2F000, v1, v2, "Received Profile Restrictions Changed Notification", v3, 2u);
    MEMORY[0x22AA5EED0](v3, -1, -1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_224D164B4();

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_224C4E918(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong[5];
    v5 = Strong[6];
    __swift_project_boxed_opaque_existential_1(Strong + 2, v4);
    sub_224C4E9AC(v4, v5);
    sub_224DAB378();
  }

  return result;
}

void sub_224C4E9AC(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))(v39, 256, a1);
  sub_224C4EE10(v39, v36);
  if (!*(&v37 + 1))
  {
    sub_224C4EE80(v39);
    sub_224C4EE80(v36);
    return;
  }

  v38[1] = v36[1];
  v38[2] = v37;
  v38[0] = v36[0];
  if (!*(*(&v37 + 1) + 16))
  {
LABEL_38:
    sub_224C4EE80(v39);
    sub_224A699F0(v38);
    return;
  }

  v3 = sub_224B3DF0C(v2);

  if (v3 >> 62)
  {
LABEL_44:
    v4 = sub_224DAF838();
    if (v4)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_37:

    goto LABEL_38;
  }

LABEL_5:
  v5 = 0;
  v6 = v3 & 0xC000000000000001;
  v23 = v3 + 32;
  v24 = v3 & 0xFFFFFFFFFFFFFF8;
  v7 = &off_27853F000;
  v32 = v3;
  v25 = v3 & 0xC000000000000001;
  v26 = v4;
  while (1)
  {
    if (v6)
    {
      v8 = MEMORY[0x22AA5DCC0](v5, v3);
      v9 = __OFADD__(v5, 1);
      v10 = v5 + 1;
      if (v9)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (v5 >= *(v24 + 16))
      {
        goto LABEL_47;
      }

      v8 = *(v23 + 8 * v5);
      v9 = __OFADD__(v5, 1);
      v10 = v5 + 1;
      if (v9)
      {
        goto LABEL_43;
      }
    }

    v34 = v8;
    v11 = [v8 containerDescriptors];
    sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
    v3 = sub_224DAF008();

    v31 = v10;
    if (v3 >> 62)
    {
      break;
    }

    v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_14;
    }

LABEL_36:

    v6 = v25;
    v5 = v31;
    v3 = v32;
    if (v31 == v26)
    {
      goto LABEL_37;
    }
  }

  v12 = sub_224DAF838();
  if (!v12)
  {
    goto LABEL_36;
  }

LABEL_14:
  v13 = 0;
  v14 = v3 & 0xC000000000000001;
  v27 = v3 + 32;
  v28 = v3 & 0xFFFFFFFFFFFFFF8;
  v33 = v3;
  v29 = v3 & 0xC000000000000001;
  v30 = v12;
  while (2)
  {
    if (v14)
    {
      v15 = MEMORY[0x22AA5DCC0](v13, v3);
      v9 = __OFADD__(v13++, 1);
      if (v9)
      {
        goto LABEL_42;
      }

LABEL_21:
      v35 = v15;
      v16 = [v15 v7[321]];
      sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
      v17 = sub_224DAF008();

      if (v17 >> 62)
      {
        v18 = sub_224DAF838();
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      for (i = 0; v18 != i; ++i)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x22AA5DCC0](i, v17);
        }

        else
        {
          if (i >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v20 = *(v17 + 8 * i + 32);
        }

        v21 = v20;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        v22 = [v20 extensionIdentity];
        v3 = [v22 isRemote];

        if (v3)
        {
          sub_224C4EE80(v39);

          sub_224A699F0(v38);
          return;
        }
      }

      v14 = v29;
      v7 = &off_27853F000;
      v3 = v33;
      if (v13 != v30)
      {
        continue;
      }

      goto LABEL_36;
    }

    break;
  }

  if (v13 < *(v28 + 16))
  {
    v15 = *(v27 + 8 * v13);
    v9 = __OFADD__(v13++, 1);
    if (v9)
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    goto LABEL_21;
  }

  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t sub_224C4ED9C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_224C4EE10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F50E0, &qword_224DB41A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224C4EE80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F50E0, &qword_224DB41A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for NetworkAuthorizationChangeInfo(uint64_t a1)
{
  result = qword_2813537C0;
  if (!qword_2813537C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_224C4EF5C(uint64_t a1)
{
  sub_224C4EFE8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_224C4EFE8()
{
  if (!qword_281351930)
  {
    v0 = sub_224DAA028();
    if (!v1)
    {
      atomic_store(v0, &qword_281351930);
    }
  }
}

uint64_t sub_224C4F048()
{
  v1 = 0x6465776F6C6C61;
  if (*v0 != 1)
  {
    v1 = 0x6465696E6564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

unint64_t sub_224C4F0A4()
{
  result = qword_27D6F59F0;
  if (!qword_27D6F59F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F59F0);
  }

  return result;
}

uint64_t sub_224C4F0F8()
{
  sub_224A3D418(v0[2], v0[3]);
  sub_224A3D418(v0[4], v0[5]);
  sub_224A3D418(v0[6], v0[7]);
  sub_224A3D418(v0[8], v0[9]);

  return swift_deallocClassInstance();
}

uint64_t sub_224C4F16C(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = result;
    v6 = *(v2 + 24);

    v3(v5 & 0x101, a2);

    return sub_224A3D418(v3, v6);
  }

  return result;
}

uint64_t sub_224C4F1F4(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 32);
  if (v3)
  {
    v5 = result;
    v6 = *(v2 + 40);

    v3(v5 & 0x101, a2);

    return sub_224A3D418(v3, v6);
  }

  return result;
}

uint64_t sub_224C4F27C(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 48);
  if (v3)
  {
    v5 = result;
    v6 = *(v2 + 56);

    v3(v5 & 0x101, a2);

    return sub_224A3D418(v3, v6);
  }

  return result;
}

uint64_t sub_224C4F304(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 64);
  if (v3)
  {
    v5 = result;
    v6 = *(v2 + 72);

    v3(v5 & 0x101, a2);

    return sub_224A3D418(v3, v6);
  }

  return result;
}

uint64_t sub_224C4F38C()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F53D0, &qword_224DB56A8);
    sub_224C4F4C8();
    v1 = sub_224DAB3A8();
    *(v0 + 40) = v1;
  }

  return v1;
}

uint64_t sub_224C4F424()
{

  return swift_deallocClassInstance();
}

unint64_t sub_224C4F4C8()
{
  result = qword_27D6F40D8;
  if (!qword_27D6F40D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F53D0, &qword_224DB56A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F40D8);
  }

  return result;
}

id sub_224C4F55C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WidgetCenterServer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_224C4F644()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__listener;
  v3 = *(v1 + OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__listener);
  if (v3)
  {
    [v3 setDelegate_];
    v3 = *(v1 + v2);
  }

  return [v3 resume];
}

double sub_224C4F7E4(uint64_t a1, int a2, void *aBlock, void (*a4)(uint64_t, void *))
{
  v5 = _Block_copy(aBlock);
  _Block_copy(v5);

  a4(v6, v5);
  _Block_release(v5);
  _Block_release(v5);

  return result;
}

uint64_t sub_224C4F858()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_224C4FA10;
  }

  else
  {
    v2 = sub_224C4F988;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_224C4F988()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_224C4FA10()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_224C4FA98()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_224C4FC40;
  }

  else
  {

    v2 = sub_224C4FBB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_224C4FBB4()
{
  v1 = *(v0 + 192);

  sub_224C54434(v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_224C4FC40()
{
  v1 = *(v0 + 200);
  sub_224C54434(*(v0 + 192));

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_224C4FCE0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 24);
  if (v2)
  {
    v7 = sub_224DA9518();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_224C4FE84(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_224DAB7B8();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v43 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_224DAB848();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v9);
  v41 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v40 - v17;
  v19 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v20 = [a3 extensionIdentity];
  v21 = [a3 kind];
  v40 = sub_224DAEE18();
  v47 = v22;

  v23 = *(v12 + 16);
  v23(v18, a1, v11);
  v51 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23(v51, v18, v11);
  v24 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v25 = swift_allocObject();
  v48 = v12;
  v49 = v11;
  (*(v12 + 32))(v25 + v24, v18, v11);
  v26 = *v19;
  v50 = v20;
  sub_224B5BA90(v20);
  if (v27)
  {
    v28 = v27;
    v29 = swift_allocObject();
    v29[2] = v26;
    v29[3] = v28;
    v30 = v47;
    v29[4] = v40;
    v29[5] = v30;
    v29[6] = sub_224B677B8;
    v29[7] = v25;
    aBlock[4] = sub_224BFD5A8;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_29;
    v31 = _Block_copy(aBlock);

    v40 = v28;

    v32 = v41;
    sub_224DAB7E8();
    v52 = MEMORY[0x277D84F90];
    sub_224A3AF98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    v33 = v43;
    v34 = v46;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v32, v33, v31);
    _Block_release(v31);

    (*(v45 + 8))(v33, v34);
    (*(v42 + 8))(v32, v44);

    v35 = v51;
    v36 = v49;
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    aBlock[0] = sub_224CBC42C(24, 0xD000000000000025, 0x8000000224DC72C0);
    v37 = v49;
    v38 = v51;
    sub_224DAF0D8();

    v35 = v38;
    v36 = v37;
  }

  return (*(v48 + 8))(v35, v36);
}

uint64_t sub_224C5055C(uint64_t a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v5 = sub_224DAEE18();
  v7 = v6;
  v4[4] = v6;
  v8 = sub_224DAEE18();
  v10 = v9;
  v4[5] = v9;

  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_224C50658;

  return sub_224A3C050(v5, v7, v8, v10);
}

uint64_t sub_224C50658()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 24);
  if (v2)
  {
    v7 = sub_224DA9518();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v8 = *(v5 + 8);

  return v8();
}

void sub_224C50928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = sub_224DA9518();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a4 + 16))(a4);
}

uint64_t sub_224C509A4()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F38C0, &qword_224DB31E8);
  v1[3] = swift_task_alloc();
  v2 = sub_224DAC5E8();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v1[9] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C50B80, 0, 0);
}

uint64_t sub_224C50B80(uint64_t a1)
{
  v2 = sub_224DAF2C8();
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[9];
  if (!v3)
  {
    (*(v5 + 56))(v1[9], 1, 1, v1[10]);
    goto LABEL_6;
  }

  sub_224A32920(v2, v3, 1, v1[9]);

  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
LABEL_6:
    sub_224A3311C(v1[9], &unk_27D6F5060, &qword_224DB5620);
    goto LABEL_7;
  }

  v7 = v1[12];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[5];
  v35 = v1[4];
  v11 = v1[2];
  (*(v1[11] + 32))(v7, v1[9], v1[10]);
  __swift_project_boxed_opaque_existential_1((v11 + 144), *(v11 + 168));
  v12 = off_283828B60[0];
  v34 = type metadata accessor for PushService();
  v13 = v12(v34, &off_283828B40);
  *(swift_task_alloc() + 16) = v7;
  sub_224AFD7C0(sub_224C51E08, v13, v9);

  sub_224A3796C(v9, v8, &qword_27D6F3BB0, &unk_224DB8CF0);
  if ((*(v10 + 48))(v8, 1, v35) != 1)
  {
    v22 = v1[3];
    (*(v1[5] + 32))(v1[6], v1[7], v1[4]);
    __swift_project_boxed_opaque_existential_1((v11 + 144), *(v11 + 168));
    v23 = sub_224DAC588();
    off_283828B90(v23, v24, v34, &off_283828B40);

    v25 = sub_224DAE438();
    v26 = *(v25 - 8);
    v27 = (*(v26 + 48))(v22, 1, v25);
    v28 = v1[8];
    v30 = v1[5];
    v29 = v1[6];
    v31 = v1[3];
    v32 = v1[4];
    if (v27 == 1)
    {
      (*(v30 + 8))(v1[6], v1[4]);
      sub_224A3311C(v28, &qword_27D6F3BB0, &unk_224DB8CF0);
      sub_224A3311C(v31, &unk_27D6F38C0, &qword_224DB31E8);
      v18 = 0;
      v19 = 0xF000000000000000;
    }

    else
    {
      v18 = sub_224DAE428();
      v19 = v33;
      (*(v30 + 8))(v29, v32);
      sub_224A3311C(v28, &qword_27D6F3BB0, &unk_224DB8CF0);
      (*(v26 + 8))(v31, v25);
    }

    (*(v1[11] + 8))(v1[12], v1[10]);
    goto LABEL_8;
  }

  v15 = v1[11];
  v14 = v1[12];
  v16 = v1[10];
  v17 = v1[7];
  sub_224A3311C(v1[8], &qword_27D6F3BB0, &unk_224DB8CF0);
  sub_224A3311C(v17, &qword_27D6F3BB0, &unk_224DB8CF0);
  (*(v15 + 8))(v14, v16);
LABEL_7:
  v18 = 0;
  v19 = 0xF000000000000000;
LABEL_8:

  v20 = v1[1];

  return v20(v18, v19);
}

uint64_t sub_224C50FB4(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B90, &qword_224DB5C50);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v36 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v35 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v35 - v21;
  v23 = sub_224DAC578();
  if (v23)
  {
    v35 = v7;
    v37 = v2;
    v24 = *MEMORY[0x277CFA130];
    v25 = v23;
    swift_beginAccess();
    sub_224A3796C(v25 + v24, v22, &unk_27D6F5060, &qword_224DB5620);

    v26 = *(v4 + 48);
    if (v26(v22, 1, v3) != 1)
    {
      (*(v4 + 16))(v19, v38, v3);
      (*(v4 + 56))(v19, 0, 1, v3);
      v28 = *(v8 + 48);
      sub_224A3796C(v22, v11, &unk_27D6F5060, &qword_224DB5620);
      v38 = v28;
      sub_224A3796C(v19, &v11[v28], &unk_27D6F5060, &qword_224DB5620);
      if (v26(v11, 1, v3) == 1)
      {
        sub_224A3311C(v19, &unk_27D6F5060, &qword_224DB5620);
        if (v26(&v11[v38], 1, v3) == 1)
        {
          sub_224A3311C(v11, &unk_27D6F5060, &qword_224DB5620);
          v27 = 1;
          goto LABEL_11;
        }
      }

      else
      {
        v29 = v36;
        sub_224A3796C(v11, v36, &unk_27D6F5060, &qword_224DB5620);
        v30 = v38;
        if (v26(&v11[v38], 1, v3) != 1)
        {
          v32 = v35;
          (*(v4 + 32))(v35, &v11[v30], v3);
          sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FB0]);
          v33 = v29;
          v27 = sub_224DAEDD8();
          v34 = *(v4 + 8);
          v34(v32, v3);
          sub_224A3311C(v19, &unk_27D6F5060, &qword_224DB5620);
          v34(v33, v3);
          sub_224A3311C(v11, &unk_27D6F5060, &qword_224DB5620);
          goto LABEL_11;
        }

        sub_224A3311C(v19, &unk_27D6F5060, &qword_224DB5620);
        (*(v4 + 8))(v29, v3);
      }

      sub_224A3311C(v11, &qword_27D6F5B90, &qword_224DB5C50);
      v27 = 0;
      goto LABEL_11;
    }

    v27 = 0;
  }

  else
  {
    (*(v4 + 56))(v22, 1, 1, v3);
    v27 = 0;
  }

LABEL_11:
  sub_224A3311C(v22, &unk_27D6F5060, &qword_224DB5620);
  return v27 & 1;
}

uint64_t sub_224C51620(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_224C516C8;

  return sub_224C509A4();
}

uint64_t sub_224C516C8(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = *v2;

  if (a2 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_224DA96B8();
    sub_224AC1D9C(a1, a2);
  }

  v8 = *(v5 + 24);
  (v8)[2](v8, v7, 0);

  _Block_release(v8);
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_224C51840()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  sub_224A3311C(v0 + 184, &unk_27D6F4FB0, &unk_224DBADC8);

  return swift_deallocClassInstance();
}

uint64_t sub_224C518B0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_224ACED1C;

  return sub_224C51620(v2, v3);
}

uint64_t sub_224C5195C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v24 - v11;
  sub_224A3796C(a3, v24 - v11, &unk_27D6F4620, &qword_224DB34D0);
  v13 = sub_224DAF128();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_224A3311C(v12, &unk_27D6F4620, &qword_224DB34D0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_224DAF118();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_224DAF0C8();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_224DAEE48() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_224A3311C(a3, &unk_27D6F4620, &qword_224DB34D0);

    return v22;
  }

LABEL_8:
  sub_224A3311C(a3, &unk_27D6F4620, &qword_224DB34D0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_224C51C58()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_224C51D50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_224ACED1C;

  return sub_224A3BBFC(a1, v4);
}

void sub_224C51E28(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v64 - v11;
  v13 = sub_224A47CD8(a1, a2);
  v14 = v13;
  if (v15)
  {
    v16 = v13;
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v17 = sub_224DAB258();
    __swift_project_value_buffer(v17, qword_281364E50);

    v18 = sub_224DAB228();
    v19 = sub_224DAF288();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v71 = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_224A33F74(a1, a2, &v71);
      *(v20 + 12) = 2082;
      v22 = [objc_opt_self() currentConnection];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 description];

        v25 = sub_224DAEE18();
        v27 = v26;
      }

      else
      {
        v25 = 0x6E776F6E6B6E75;
        v27 = 0xE700000000000000;
      }

      v42 = sub_224A33F74(v25, v27, &v71);

      *(v20 + 14) = v42;
      _os_log_impl(&dword_224A2F000, v18, v19, "[WidgetCenter] %{public}s reload configuration recommendations requested from  %{public}s - not authorized", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v21, -1, -1);
      MEMORY[0x22AA5EED0](v20, -1, -1);
    }

    v43 = v14;
    v44 = sub_224DA9518();
    (*(a4 + 16))(a4, v44);

    sub_224C54434(v14);
    sub_224C54434(v14);
  }

  else
  {
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v70 = v14;
    v68 = sub_224DAB258();
    __swift_project_value_buffer(v68, qword_281364E50);

    v28 = sub_224DAB228();
    v29 = sub_224DAF2A8();

    v30 = os_log_type_enabled(v28, v29);
    v69 = v8;
    if (v30)
    {
      v66 = v29;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v71 = v32;
      *v31 = 136446466;
      v67 = a1;
      *(v31 + 4) = sub_224A33F74(a1, a2, &v71);
      *(v31 + 12) = 2082;
      v33 = [objc_opt_self() currentConnection];
      if (v33)
      {
        v34 = v33;
        v35 = [v33 description];
        v65 = v9;
        v36 = v32;
        v37 = a4;
        v38 = v35;

        v39 = sub_224DAEE18();
        v41 = v40;

        a4 = v37;
        v32 = v36;
        v9 = v65;
      }

      else
      {
        v39 = 0x6E776F6E6B6E75;
        v41 = 0xE700000000000000;
      }

      v45 = sub_224A33F74(v39, v41, &v71);

      *(v31 + 14) = v45;
      _os_log_impl(&dword_224A2F000, v28, v66, "[WidgetCenter] %{public}s reload configuration recommendations requested from  %{public}s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v32, -1, -1);
      MEMORY[0x22AA5EED0](v31, -1, -1);

      a1 = v67;
    }

    else
    {
    }

    __swift_project_boxed_opaque_existential_1(a3 + 3, a3[6]);

    sub_224DA9FF8();
    v46 = sub_224DAC668();
    (*(v9 + 8))(v12, v69);
    if (*(v46 + 16))
    {
      if (qword_281351460 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v68, qword_281364DC0);

      v47 = sub_224DAB228();
      v48 = sub_224DAF2A8();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v71 = v50;
        *v49 = 136446210;
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3508, &qword_224DB3AA0);
        v52 = MEMORY[0x22AA5D380](v46, v51);
        v54 = sub_224A33F74(v52, v53, &v71);

        *(v49 + 4) = v54;
        _os_log_impl(&dword_224A2F000, v47, v48, "Reloading configuration recommendations for extensions: %{public}s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v50);
        MEMORY[0x22AA5EED0](v50, -1, -1);
        MEMORY[0x22AA5EED0](v49, -1, -1);
      }

      __swift_project_boxed_opaque_existential_1(a3 + 13, a3[16]);
      sub_224DACAC8();

      (*(a4 + 16))(a4, 0);
      v55 = v70;
    }

    else
    {

      if (qword_281351460 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v68, qword_281364DC0);

      v56 = sub_224DAB228();
      v57 = sub_224DAF288();

      v58 = os_log_type_enabled(v56, v57);
      v59 = v70;
      if (v58)
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v62 = a1;
        v63 = v61;
        v71 = v61;
        *v60 = 136446210;
        *(v60 + 4) = sub_224A33F74(v62, a2, &v71);
        _os_log_impl(&dword_224A2F000, v56, v57, "[WidgetCenter] No matching extensions found for %{public}s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v63);
        MEMORY[0x22AA5EED0](v63, -1, -1);
        MEMORY[0x22AA5EED0](v60, -1, -1);
      }

      (*(a4 + 16))(a4, 0);
      v55 = v59;
    }

    sub_224C54434(v55);
  }
}

void sub_224C52650(void *a1, void (**a2)(void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v21 - v11;
  _Block_copy(a2);
  v13 = sub_224DAF2C8();
  if (!v14)
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_5;
  }

  sub_224A32920(v13, v14, 1, v7);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
LABEL_5:
    sub_224A3311C(v7, &unk_27D6F5060, &qword_224DB5620);
    sub_224BFD554();
    v18 = swift_allocError();
    *v19 = 26;
    v20 = sub_224DA9518();
    (a2)[2](a2, v20);

    goto LABEL_6;
  }

  (*(v9 + 32))(v12, v7, v8);
  v15 = sub_224DA9FE8();
  v17 = v16;
  _Block_copy(a2);
  sub_224C51E28(v15, v17, a1, a2);
  _Block_release(a2);

  (*(v9 + 8))(v12, v8);
LABEL_6:
  _Block_release(a2);
}

void sub_224C528C0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v20 - v11;
  v13 = sub_224DAF2C8();
  if (v14)
  {
    sub_224A32920(v13, v14, 1, v7);

    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v12, v7, v8);
      __swift_project_boxed_opaque_existential_1(a1 + 8, a1[11]);
      sub_224DAC808();
      sub_224A3B79C(0, &qword_281350830, 0x277CFA358);
      v15 = sub_224DAEFF8();
      (*(a2 + 16))(a2, v15, 0);

      (*(v9 + 8))(v12, v8);
      return;
    }
  }

  else
  {
    (*(v9 + 56))(v7, 1, 1, v8);
  }

  sub_224A3311C(v7, &unk_27D6F5060, &qword_224DB5620);
  sub_224BFD554();
  v16 = swift_allocError();
  *v17 = 26;
  sub_224A3B79C(0, &qword_281350830, 0x277CFA358);
  v18 = sub_224DAEFF8();
  v19 = sub_224DA9518();
  (*(a2 + 16))(a2, v18, v19);
}

uint64_t sub_224C52B8C(void *a1, void *a2, uint64_t a3)
{
  v82 = a3;
  v5 = sub_224DACB98();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = (&v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v74 - v14;
  sub_224DAE518();
  sub_224DA9FF8();
  sub_224DAA278();
  __swift_project_boxed_opaque_existential_1(a2 + 3, a2[6]);
  sub_224DAC6C8();
  if (v84)
  {
    v76 = v6;
    v77 = v5;
    sub_224A36F98(&v83, v85);
    sub_224DAE558();
    __swift_project_boxed_opaque_existential_1(v85, v85[3]);
    sub_224DAE338();
    sub_224DAE528();
    v80 = sub_224DAE548();
    v16 = sub_224DAE518();
    v18 = sub_224A47CD8(v16, v17);
    v20 = v19;

    v79 = v20;
    if (v20)
    {
      if (qword_2813514B8 != -1)
      {
        swift_once();
      }

      v21 = sub_224DAB258();
      __swift_project_value_buffer(v21, qword_281364E50);
      v22 = a1;

      v23 = sub_224DAB228();
      v24 = sub_224DAF288();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v78 = v12;
        v27 = v26;
        v28 = swift_slowAlloc();
        *&v83 = v28;
        *v25 = 138543618;
        *(v25 + 4) = v22;
        *v27 = v22;
        *(v25 + 12) = 2082;
        v29 = a2[2];
        v30 = v22;
        v31 = [v29 description];
        v32 = sub_224DAEE18();
        v33 = v18;
        v35 = v34;

        v36 = sub_224A33F74(v32, v35, &v83);
        v18 = v33;

        *(v25 + 14) = v36;
        _os_log_impl(&dword_224A2F000, v23, v24, "[WidgetCenter] %{public}@ reload widgets requested from  %{public}s - not authorized", v25, 0x16u);
        sub_224A3311C(v27, &unk_27D6F69F0, &unk_224DB3900);
        v37 = v27;
        v12 = v78;
        MEMORY[0x22AA5EED0](v37, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x22AA5EED0](v28, -1, -1);
        MEMORY[0x22AA5EED0](v25, -1, -1);
      }

      v38 = sub_224DA9518();
      (*(v82 + 16))(v82, v38);

      v39 = v80;
    }

    else
    {
      if (qword_2813514B8 != -1)
      {
        swift_once();
      }

      v75 = v18;
      v78 = v12;
      v54 = sub_224DAB258();
      __swift_project_value_buffer(v54, qword_281364E50);
      v55 = a1;

      v56 = sub_224DAB228();
      v57 = sub_224DAF2A8();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *&v83 = v74;
        *v58 = 138543618;
        *(v58 + 4) = v55;
        *v59 = v55;
        *(v58 + 12) = 2082;
        v60 = a2[2];
        v61 = v55;
        v62 = [v60 description];
        v63 = sub_224DAEE18();
        v65 = v64;

        v66 = sub_224A33F74(v63, v65, &v83);

        *(v58 + 14) = v66;
        _os_log_impl(&dword_224A2F000, v56, v57, "[WidgetCenter] %{public}@ reload widgets requested from  %{public}s", v58, 0x16u);
        sub_224A3311C(v59, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v59, -1, -1);
        v67 = v74;
        __swift_destroy_boxed_opaque_existential_1(v74);
        MEMORY[0x22AA5EED0](v67, -1, -1);
        MEMORY[0x22AA5EED0](v58, -1, -1);
      }

      __swift_project_boxed_opaque_existential_1(a2 + 8, a2[11]);
      v68 = swift_allocObject();
      v69 = a2[2];
      v70 = objc_opt_self();
      v39 = v80;
      v71 = v80;
      v68[2] = [v70 processHandleForNSXPCConnection_];
      v68[3] = 0xD000000000000012;
      v68[4] = 0x8000000224DBC070;
      *v9 = v68;
      v73 = v76;
      v72 = v77;
      (*(v76 + 104))(v9, *MEMORY[0x277CF9B90], v77);
      sub_224DAC768();

      (*(v73 + 8))(v9, v72);
      (*(v82 + 16))(v82, 0);
      v12 = v78;
      v18 = v75;
    }

    sub_224C54434(v18);

    (*(v81 + 8))(v15, v12);
    return __swift_destroy_boxed_opaque_existential_1(v85);
  }

  else
  {
    sub_224A3311C(&v83, &unk_27D6F4700, &unk_224DB3A10);
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v40 = sub_224DAB258();
    __swift_project_value_buffer(v40, qword_281364E50);
    v41 = a1;
    v42 = sub_224DAB228();
    v43 = sub_224DAF288();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = v12;
      v46 = swift_slowAlloc();
      v85[0] = v46;
      *v44 = 136446210;
      v47 = sub_224DAE518();
      v49 = sub_224A33F74(v47, v48, v85);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_224A2F000, v42, v43, "[WidgetCenter] Unable to reload widgets for extension bundle identifier [%{public}s] because it is not a valid widget extension identity.", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      v50 = v46;
      v12 = v45;
      MEMORY[0x22AA5EED0](v50, -1, -1);
      MEMORY[0x22AA5EED0](v44, -1, -1);
    }

    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v51 = sub_224CBC42C(24, 0, 0);
    v52 = sub_224DA9518();
    (*(v82 + 16))(v82, v52);

    return (*(v81 + 8))(v15, v12);
  }
}

void sub_224C53480(void *a1, uint64_t a2)
{
  v4 = sub_224DACB98();
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = (v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v27 - v15;
  v17 = a1[2];
  v18 = sub_224DAF2C8();
  if (v19)
  {
    v28 = v4;
    sub_224A32920(v18, v19, 1, v11);

    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      (*(v13 + 32))(v16, v11, v12);
      v20 = a1[11];
      v27[1] = a1[12];
      __swift_project_boxed_opaque_existential_1(a1 + 8, v20);
      v21 = swift_allocObject();
      v21[2] = [objc_opt_self() processHandleForNSXPCConnection_];
      v21[3] = 0xD000000000000012;
      v21[4] = 0x8000000224DBC070;
      *v7 = v21;
      v22 = v28;
      v23 = v29;
      (*(v29 + 104))(v7, *MEMORY[0x277CF9B90], v28);
      sub_224DAC748();
      (*(v23 + 8))(v7, v22);
      (*(a2 + 16))(a2, 0);
      (*(v13 + 8))(v16, v12);
      return;
    }
  }

  else
  {
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  sub_224A3311C(v11, &unk_27D6F5060, &qword_224DB5620);
  sub_224BFD554();
  v24 = swift_allocError();
  *v25 = 9;
  v26 = sub_224DA9518();
  (*(a2 + 16))(a2, v26);
}

void sub_224C53818(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6)
{
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v12);
  v14 = &v65 - v13;
  v76 = sub_224DADE98();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v15);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = swift_allocObject();
  *(v82 + 16) = a6;
  sub_224A3796C((a5 + 23), &v79, &unk_27D6F4FB0, &unk_224DBADC8);
  if (!v80)
  {
    _Block_copy(a6);
    sub_224A3311C(&v79, &unk_27D6F4FB0, &unk_224DBADC8);

    return;
  }

  v72 = a2;
  v73 = a1;
  sub_224A36F98(&v79, v81);
  _Block_copy(a6);

  v78 = a3;
  v18 = sub_224A47CD8(a3, a4);
  v19 = v18;
  v21 = v20;
  if (v20)
  {
    v22 = v18;
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v23 = sub_224DAB258();
    __swift_project_value_buffer(v23, qword_281364E50);

    v24 = sub_224DAB228();
    v25 = sub_224DAF288();

    if (os_log_type_enabled(v24, v25))
    {
      v71 = v21;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v79 = v27;
      *v26 = 136446466;
      *(v26 + 4) = sub_224A33F74(v78, a4, &v79);
      *(v26 + 12) = 2082;
      v28 = [objc_opt_self() currentConnection];
      if (v28)
      {
        v29 = v28;
        v30 = [v28 description];

        v31 = sub_224DAEE18();
        v33 = v32;
      }

      else
      {
        v31 = 0x6E776F6E6B6E75;
        v33 = 0xE700000000000000;
      }

      v46 = sub_224A33F74(v31, v33, &v79);

      *(v26 + 14) = v46;
      _os_log_impl(&dword_224A2F000, v24, v25, "[WidgetCenter] %{public}s ingest widget relevance archive from %{public}s - not authorized", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v27, -1, -1);
      MEMORY[0x22AA5EED0](v26, -1, -1);
    }

    else
    {
    }

LABEL_29:
    swift_willThrow();
    v57 = v19;
    goto LABEL_30;
  }

  if (qword_2813514B8 != -1)
  {
    swift_once();
  }

  v70 = sub_224DAB258();
  __swift_project_value_buffer(v70, qword_281364E50);

  v34 = sub_224DAB228();
  v35 = sub_224DAF2A8();

  v69 = v35;
  v36 = os_log_type_enabled(v34, v35);
  v71 = v21;
  if (v36)
  {
    v67 = v34;
    v68 = v19;
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v79 = v38;
    *v37 = 136446466;
    *(v37 + 4) = sub_224A33F74(v78, a4, &v79);
    *(v37 + 12) = 2082;
    v39 = [objc_opt_self() currentConnection];
    if (v39)
    {
      v40 = v39;
      v41 = [v39 description];
      v66 = v38;
      v42 = v41;

      v43 = sub_224DAEE18();
      v45 = v44;

      v38 = v66;
    }

    else
    {
      v43 = 0x6E776F6E6B6E75;
      v45 = 0xE700000000000000;
    }

    v47 = sub_224A33F74(v43, v45, &v79);

    *(v37 + 14) = v47;
    v48 = v67;
    _os_log_impl(&dword_224A2F000, v67, v69, "[WidgetCenter] %{public}s ingest widget relevance archive from %{public}s", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v38, -1, -1);
    MEMORY[0x22AA5EED0](v37, -1, -1);

    v19 = v68;
  }

  else
  {
  }

  __swift_project_boxed_opaque_existential_1(a5 + 13, a5[16]);
  if (!sub_224DADA38())
  {
    v49 = v72;
    goto LABEL_24;
  }

  sub_224DA9FF8();
  v49 = v72;
  sub_224DACA08();
  (*(v75 + 8))(v14, v77);
  v50 = v76;
  sub_224DACF08();

  (*(v74 + 8))(v17, v50);
  if (!v79)
  {
LABEL_24:
    if (qword_281351460 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v70, qword_281364DC0);

    v58 = sub_224DAB228();
    v59 = sub_224DAF288();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v62 = v49;
      v63 = v61;
      *&v79 = v61;
      *v60 = 136446466;
      *(v60 + 4) = sub_224A33F74(v73, v62, &v79);
      *(v60 + 12) = 2082;
      *(v60 + 14) = sub_224A33F74(v78, a4, &v79);
      _os_log_impl(&dword_224A2F000, v58, v59, "[WidgetCenter] No matching descriptors found for %{public}s in %{public}s", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v63, -1, -1);
      MEMORY[0x22AA5EED0](v60, -1, -1);
    }

    sub_224BFD554();
    swift_allocError();
    *v64 = 1;
    goto LABEL_29;
  }

  v51 = v79;
  v52 = [v51 extensionIdentity];
  v53 = objc_allocWithZone(MEMORY[0x277CFA418]);
  v54 = sub_224DAEDE8();
  v55 = [v53 initWithExtensionIdentity:v52 kind:v54];

  v56 = *__swift_project_boxed_opaque_existential_1(v81, v81[3]);
  _Block_copy(a6);

  sub_224B66FF8(v55, v56, a6);
  _Block_release(a6);

  v57 = v19;
LABEL_30:
  sub_224C54434(v57);
  __swift_destroy_boxed_opaque_existential_1(v81);
}

void sub_224C5411C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void (**a6)(void, void, void, void))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v28 - v19;
  if (!a4)
  {
    _Block_copy(a6);
    v22 = sub_224DAF2C8();
    if (v23)
    {
      v28[0] = a2;
      sub_224A32920(v22, v23, 1, v15);

      if ((*(v17 + 48))(v15, 1, v16) != 1)
      {
        (*(v17 + 32))(v20, v15, v16);
        a3 = sub_224DA9FE8();
        v21 = v24;
        (*(v17 + 8))(v20, v16);
        a2 = v28[0];
        goto LABEL_3;
      }
    }

    else
    {
      (*(v17 + 56))(v15, 1, 1, v16);
    }

    sub_224A3311C(v15, &unk_27D6F5060, &qword_224DB5620);
    sub_224BFD554();
    v25 = swift_allocError();
    *v26 = 26;
    v27 = sub_224DA9518();
    (a6)[2](a6, v27, 0, 0);

    goto LABEL_9;
  }

  _Block_copy(a6);
  v21 = a4;
LABEL_3:
  _Block_copy(a6);

  sub_224C53818(a1, a2, a3, v21, a5, a6);
  _Block_release(a6);

LABEL_9:
  _Block_release(a6);
}

uint64_t sub_224C54440()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_224ACFF60;

  return sub_224C5055C(v2, v3, v5, v4);
}

double sub_224C545D0()
{
  v1 = sub_224DAB7B8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAB848();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAEDE8();
  Serial = BSDispatchQueueCreateSerial();

  aBlock[4] = sub_224C54AE0;
  v17 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_30;
  v13 = _Block_copy(aBlock);

  sub_224DAB7E8();
  v15[1] = MEMORY[0x277D84F90];
  sub_224A3AF98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A4C290();
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v10, v5, v13);
  _Block_release(v13);

  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);

  return result;
}

double sub_224C54850(uint64_t a1)
{
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281365120);
  v3 = sub_224DAB228();
  v4 = sub_224DAF2A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_224A2F000, v3, v4, "Starting activity replication service", v5, 2u);
    MEMORY[0x22AA5EED0](v5, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((a1 + 48), *(a1 + 72));
  sub_224DAAC48();
  if (*(a1 + 32) == 1)
  {
    sub_224BBCEA4();
  }

  else
  {
    sub_224BB9908();
  }

  return sub_224C093A0();
}

uint64_t sub_224C54A6C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return swift_deallocClassInstance();
}

void sub_224C54B88(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v193 = a5;
  v185 = a4;
  v179 = a3;
  v163 = a6;
  v166 = sub_224DAAEA8();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166, v8);
  v164 = v153 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_224DA9908();
  v161 = *(v162 - 8);
  v11 = MEMORY[0x28223BE20](v162, v10);
  v159 = v153 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v160 = v153 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v181 = v153 - v17;
  v180 = sub_224DAAFC8();
  v188 = *(v180 - 8);
  v19 = MEMORY[0x28223BE20](v180, v18);
  v191 = v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v190 = v153 - v22;
  v184 = type metadata accessor for ReplicatedExtension(0);
  MEMORY[0x28223BE20](v184, v23);
  v183 = v153 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_224DACE38();
  v168 = *(v189 - 8);
  v26 = MEMORY[0x28223BE20](v189, v25);
  v167 = v153 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v182 = v153 - v30;
  MEMORY[0x28223BE20](v29, v31);
  v186 = v153 - v32;
  v178 = sub_224DAAB88();
  v177 = *(v178 - 8);
  v34 = MEMORY[0x28223BE20](v178, v33);
  v170 = v153 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v36);
  v169 = v153 - v37;
  v173 = sub_224DAB0F8();
  v172 = *(v173 - 8);
  v39 = MEMORY[0x28223BE20](v173, v38);
  v187 = v153 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v41);
  v174 = v153 - v42;
  v43 = sub_224DAAF48();
  v44 = *(v43 - 8);
  v46 = MEMORY[0x28223BE20](v43, v45);
  v158 = v153 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v48);
  v50 = v153 - v49;
  sub_224DAF538();
  v51 = *(v44 + 16);
  v51(v50, a1, v43);
  sub_224DAAEF8();
  v52 = sub_224DAF4F8();
  (*(v44 + 8))(v50, v43);
  v199 = v52;
  if (!v52)
  {
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    v51(v62, a1, v43);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v175 = v51;
  v176 = v44 + 16;
  v154 = v43;
  v155 = a1;
  v53 = *(a2 + 16);
  if (!v53)
  {
LABEL_6:
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    v58 = v57;
    v59 = *MEMORY[0x277CFA138];
    v60 = v199;
    swift_beginAccess();
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
    (*(*(v61 - 8) + 16))(v58, &v60[v59], v61);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return;
  }

  v54 = a2 + 32;
  while (1)
  {
    sub_224A3317C(v54, &v194);
    sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
    __swift_project_boxed_opaque_existential_1(&v194, v195);
    v55 = sub_224DAE338();
    v56 = sub_224DAF6A8();

    if (v56)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(&v194);
    v54 += 40;
    if (!--v53)
    {
      goto LABEL_6;
    }
  }

  sub_224A36F98(&v194, &v196);
  sub_224A36F98(&v196, &v197);
  if (qword_2813592A8 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v63 = qword_2813652C8;
    v64 = v189;
    if (!*(qword_2813652C8 + 16) || (v65 = sub_224B0B668(6), (v66 & 1) == 0))
    {
      type metadata accessor for ReplicationService.ReplicationServiceError(0);
      sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
      swift_allocError();
      *v82 = 0x6F69736E65747865;
      v82[1] = 0xE90000000000006ELL;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

LABEL_25:
      __swift_destroy_boxed_opaque_existential_1(&v197);
      return;
    }

    v67 = v172;
    v68 = *(v63 + 56) + *(v172 + 72) * v65;
    v69 = v187;
    v70 = v173;
    (*(v172 + 16))(v187, v68, v173);
    (*(v67 + 32))(v174, v69, v70);
    v71 = sub_224DAE9C8();
    v72 = v71;
    *&v196 = MEMORY[0x277D84F90];
    if (v71 >> 62)
    {
      v73 = sub_224DAF838();
    }

    else
    {
      v73 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v74 = MEMORY[0x277D84F90];
    if (v73)
    {
      v75 = 0;
      v187 = (v72 & 0xC000000000000001);
      while (1)
      {
        if (v187)
        {
          v76 = MEMORY[0x22AA5DCC0](v75, v72);
        }

        else
        {
          if (v75 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_49;
          }

          v76 = *(v72 + 8 * v75 + 32);
        }

        v77 = v76;
        v78 = v75 + 1;
        if (__OFADD__(v75, 1))
        {
          break;
        }

        v79 = v73;
        v80 = [v76 extensionIdentity];
        v81 = sub_224DAF6A8();

        if (v81)
        {
          sub_224DAF9B8();
          sub_224DAF9F8();
          sub_224DAFA08();
          sub_224DAF9C8();
        }

        else
        {
        }

        v73 = v79;
        ++v75;
        if (v78 == v79)
        {
          v83 = v196;
          v64 = v189;
          v74 = MEMORY[0x277D84F90];
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v83 = MEMORY[0x277D84F90];
LABEL_28:

    v84 = sub_224DAE9D8();
    v85 = v84;
    *&v196 = v74;
    if (!(v84 >> 62))
    {
      v86 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v86)
      {
        break;
      }

      goto LABEL_30;
    }

    v86 = sub_224DAF838();
    if (!v86)
    {
      break;
    }

LABEL_30:
    v171 = v83;
    v87 = 0;
    v88 = v85 & 0xC000000000000001;
    v89 = v85 & 0xFFFFFFFFFFFFFF8;
    v187 = v85;
    v179 = v85 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v88)
      {
        v90 = MEMORY[0x22AA5DCC0](v87, v85);
      }

      else
      {
        if (v87 >= *(v89 + 16))
        {
          goto LABEL_51;
        }

        v90 = *(v85 + 8 * v87 + 32);
      }

      v91 = v90;
      v92 = v87 + 1;
      if (__OFADD__(v87, 1))
      {
        break;
      }

      if (*(v193 + 16) && (v93 = sub_224B0B6F0(2), (v94 & 1) != 0))
      {
        v95 = *(*(v193 + 56) + 8 * v93);
      }

      else
      {
        LOBYTE(v95) = 0;
      }

      sub_224C5A4C4(v91, v95);
      if (v96)
      {
        v97 = v86;
        v98 = [v91 extensionIdentity];
        v99 = sub_224DAF6A8();

        if (v99)
        {
          sub_224DAF9B8();
          sub_224DAF9F8();
          sub_224DAFA08();
          sub_224DAF9C8();
        }

        else
        {
        }

        v86 = v97;
        v85 = v187;
        v89 = v179;
      }

      else
      {
      }

      ++v87;
      if (v92 == v86)
      {
        v64 = v189;
        goto LABEL_55;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    swift_once();
  }

LABEL_55:

  sub_224DAE9F8();
  v171 = sub_224DAE9A8();
  v187 = sub_224DA06F0(MEMORY[0x277D84F90]);
  v100 = v169;
  sub_224DAB0C8();
  v101 = sub_224DAAB78();
  v102 = v177[1];
  v103 = v100;
  v104 = v178;
  v102(v103, v178);
  v105 = v170;
  sub_224DAB0C8();
  v106 = sub_224DAAB68();
  v102(v105, v104);
  v156 = v106;
  v107 = v186;
  if (v106 < v101)
  {
    goto LABEL_77;
  }

  v169 = (v168 + 2);
  v170 = (v168 + 1);
  v168 = (v188 + 16);
  v153[1] = v188 + 32;
  v157 = v188 + 8;
  v153[0] = v188 + 40;
  while (2)
  {
    v193 = v101;
    __swift_project_boxed_opaque_existential_1(&v197, v198);
    sub_224DAE388();
    v178 = v185[3];
    v179 = v185[4];
    v177 = __swift_project_boxed_opaque_existential_1(v185, v178);
    v108 = *v169;
    v109 = v182;
    (*v169)(v182, v107, v64);
    v110 = v183;
    v108(v183, v109, v64);
    v111 = sub_224DAE9C8();
    v112 = v184;
    *&v110[*(v184 + 20)] = v111;
    v113 = sub_224DAE9D8();
    v114 = *v170;
    (*v170)(v109, v64);
    *&v110[*(v112 + 24)] = v113;
    sub_224C5B048(&qword_281358F80, type metadata accessor for ReplicatedExtension, &unk_224DBD0D4);
    v115 = v110;
    v116 = v193;
    sub_224C5B048(&qword_281358F88, type metadata accessor for ReplicatedExtension, &unk_224DBD0AC);
    v117 = v192;
    v118 = sub_224DAB0A8();
    v192 = v117;
    if (v117)
    {
      goto LABEL_71;
    }

    v120 = v118;
    v121 = v119;
    sub_224C5AF9C(v115);
    v114(v107, v64);
    v122 = sub_224DA9688();
    (*(*(v122 - 8) + 56))(v181, 1, 1, v122);
    sub_224A77FD0(v120, v121);
    v123 = v190;
    sub_224DAAFB8();
    v124 = v180;
    (*v168)(v191, v123, v180);
    v125 = v187;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v196 = v125;
    v127 = sub_224B31510(v116);
    v129 = *(v125 + 2);
    v130 = (v128 & 1) == 0;
    v131 = __OFADD__(v129, v130);
    v132 = v129 + v130;
    if (!v131)
    {
      v133 = v128;
      if (*(v125 + 3) >= v132)
      {
        v135 = v175;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_63;
        }

        v137 = v127;
        sub_224B25C8C();
        v127 = v137;
        v136 = v196;
        if ((v133 & 1) == 0)
        {
          goto LABEL_66;
        }

LABEL_64:
        v115 = v188;
        (*(v188 + 40))(*(v136 + 7) + *(v188 + 72) * v127, v191, v124);
        sub_224A78024(v120, v121);
        (*(v115 + 8))(v190, v124);
      }

      else
      {
        sub_224B10264(v132, isUniquelyReferenced_nonNull_native);
        v127 = sub_224B31510(v116);
        v135 = v175;
        if ((v133 & 1) != (v134 & 1))
        {
          goto LABEL_78;
        }

LABEL_63:
        v136 = v196;
        if (v133)
        {
          goto LABEL_64;
        }

LABEL_66:
        *&v136[8 * (v127 >> 6) + 64] |= 1 << v127;
        *(*(v136 + 6) + 8 * v127) = v193;
        v115 = v188;
        (*(v188 + 32))(*(v136 + 7) + *(v188 + 72) * v127, v191, v124);
        sub_224A78024(v120, v121);
        (*(v115 + 8))(v190, v124);
        v138 = *(v136 + 2);
        v131 = __OFADD__(v138, 1);
        v139 = v138 + 1;
        if (v131)
        {
          goto LABEL_76;
        }

        *(v136 + 2) = v139;
      }

      v187 = v136;
      if (v156 == v193)
      {
        v140 = v114;
        __swift_project_boxed_opaque_existential_1(&v197, v198);
        v141 = sub_224DAE388();
        v142 = v164;
        MEMORY[0x22AA59200](v141);
        v143 = v192;
        sub_224DACD18();
        v144 = v171;
        if (v143)
        {
          (*(v165 + 8))(v142, v166);

          v114(v167, v189);
          (*(v172 + 8))(v174, v173);
        }

        else
        {
          v145 = sub_224DAE9C8();
          sub_224D0F250(v145, v142);
          v146 = v165;

          v147 = sub_224DAE9D8();
          sub_224D0F278(v147, v142);

          v148 = v160;
          sub_224DAAE88();
          (*(v146 + 8))(v142, v166);
          v140(v167, v189);
          v135(v158, v155, v154);
          v149 = v161;
          v150 = v148;
          v151 = v148;
          v152 = v162;
          (*(v161 + 16))(v159, v151, v162);
          sub_224DAAF78();

          (*(v149 + 8))(v150, v152);
          (*(v172 + 8))(v174, v173);
        }

        goto LABEL_25;
      }

      v101 = v193 + 1;
      v64 = v189;
      v107 = v186;
      if (v193 == -1)
      {
        __break(1u);
LABEL_71:

        sub_224C5AF9C(v115);
        v114(v107, v64);
        (*(v172 + 8))(v174, v173);

        __swift_destroy_boxed_opaque_existential_1(&v197);
        return;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  sub_224DAFDD8();
  __break(1u);
}

uint64_t sub_224C56080@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a3;
  v75 = a2;
  v83 = a1;
  v73 = a4;
  v4 = sub_224DA9908();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v68 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DACE38();
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v74 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for ReplicatedExtension(0);
  MEMORY[0x28223BE20](v78, v10);
  v79 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DAAFC8();
  v81 = *(v12 - 8);
  v82 = v12;
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v80 = &v67 - v18;
  v19 = sub_224DAAB88();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_224DAB0F8();
  v25 = *(v24 - 8);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v67 - v31;
  if (qword_2813592A8 != -1)
  {
    swift_once();
  }

  v33 = qword_2813652C8;
  if (!*(qword_2813652C8 + 16) || (v34 = sub_224B0B668(6), (v35 & 1) == 0))
  {
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    *v38 = 0x6F69736E65747865;
    v38[1] = 0xE90000000000006ELL;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  (*(v25 + 16))(v29, *(v33 + 56) + *(v25 + 72) * v34, v24);
  (*(v25 + 32))(v32, v29, v24);
  sub_224DAB0C8();
  v67 = sub_224DAAEB8();
  v37 = v36;
  (*(v20 + 8))(v23, v19);
  if (v37)
  {
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    sub_224DAAF88();
LABEL_13:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v25 + 8))(v32, v24);
  }

  v40 = sub_224DAAFD8();
  if (!*(v40 + 16) || (v41 = sub_224B31510(v67), (v42 & 1) == 0))
  {

    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    sub_224DAAF88();
    goto LABEL_13;
  }

  v43 = v81;
  v44 = v82;
  (*(v81 + 16))(v16, *(v40 + 56) + *(v81 + 72) * v41, v82);

  (*(v43 + 32))(v80, v16, v44);
  v45 = v76[4];
  v83 = __swift_project_boxed_opaque_existential_1(v76, v76[3]);
  v46 = sub_224DAAFA8();
  v48 = v47;
  sub_224C5B048(&qword_281358F80, type metadata accessor for ReplicatedExtension, &unk_224DBD0D4);
  sub_224C5B048(&qword_281358F88, type metadata accessor for ReplicatedExtension, &unk_224DBD0AC);
  v66 = v45;
  v49 = v77;
  sub_224DAB098();
  if (v49)
  {
    sub_224A78024(v46, v48);
    (*(v81 + 8))(v80, v82);
    return (*(v25 + 8))(v32, v24);
  }

  sub_224A78024(v46, v48);
  v50 = v68;
  v51 = v75;
  sub_224DAAD98();
  sub_224BFEC80(v50, v74);
  v52 = (*(v69 + 8))(v50, v70);
  MEMORY[0x28223BE20](v52, v53);
  sub_224D41B08(sub_224C5AF34, (&v67 - 4), v54);
  v83 = v55;
  MEMORY[0x28223BE20](v55, v56);
  v66 = v51;
  sub_224D41B08(sub_224C5AF68, (&v67 - 4), v57);
  v77 = v58;
  v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5A98, &qword_224DBC300) + 48);
  v59 = v71;
  v60 = v72;
  v62 = v73;
  v61 = v74;
  (*(v71 + 16))(v73, v74, v72);
  sub_224DAE9F8();
  v63 = sub_224DAE9A8();
  (*(v59 + 8))(v61, v60);
  sub_224C5AF9C(v79);
  (*(v81 + 8))(v80, v82);
  (*(v25 + 8))(v32, v24);
  *(v62 + v78) = v63;
  _s15ExtensionChangeOMa(0);
  swift_storeEnumTagMultiPayload();
  v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37E8, &qword_224DBD800) + 44);
  v65 = sub_224DAAE38();
  return (*(*(v65 - 8) + 16))(v62 + v64, v75, v65);
}

uint64_t sub_224C569B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v38 = a3;
  v39 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v37 = &v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v34 = &v30 - v9;
  v10 = sub_224DA9908();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DAAF48();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DAF538();
  v19 = *(v15 + 16);
  v31 = a1;
  v19(v18, a1, v14);
  sub_224DAAEF8();
  v20 = sub_224DAF4F8();
  (*(v15 + 8))(v18, v14);
  if (v20)
  {
    v21 = v39;
    sub_224DAAD98();
    v22 = *MEMORY[0x277CFA138];
    swift_beginAccess();
    (*(v32 + 16))(v34, &v20[v22], v33);
    v23 = *MEMORY[0x277CFA130];
    swift_beginAccess();
    sub_224AFD468(&v20[v23], v37);
    sub_224DA9898();
    v24 = sub_224DAF508();

    (*(v35 + 8))(v13, v36);
    v25 = v38;
    *v38 = v24;
    _s15ExtensionChangeOMa(0);
    swift_storeEnumTagMultiPayload();
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37E8, &qword_224DBD800) + 44);
    v27 = sub_224DAAE38();
    return (*(*(v27 - 8) + 16))(v25 + v26, v21, v27);
  }

  else
  {
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    v19(v29, v31, v14);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_224C56DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v111 = a3;
  v109 = a4;
  v110 = a2;
  v5 = sub_224DAA618();
  v107 = *(v5 - 8);
  v108 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v106 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  MEMORY[0x28223BE20](v105, v8);
  v101 = &v94 - v9;
  v104 = sub_224DA9908();
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104, v10);
  v99 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v100 = *(v103 - 8);
  v13 = MEMORY[0x28223BE20](v103, v12);
  v98 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v97 = &v94 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v114 = (&v94 - v19);
  v117 = sub_224DA9688();
  v115 = *(v117 - 8);
  MEMORY[0x28223BE20](v117, v20);
  v116 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_224DAAFC8();
  v118 = *(v22 - 8);
  v119 = v22;
  v24 = MEMORY[0x28223BE20](v22, v23);
  v113 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v120 = &v94 - v27;
  v28 = sub_224DAAB88();
  v121 = *(v28 - 8);
  v122 = v28;
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_224DAB0F8();
  v127 = *(v123 - 8);
  v33 = MEMORY[0x28223BE20](v123, v32);
  v35 = &v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v36);
  v124 = &v94 - v37;
  v38 = sub_224DAAF48();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v40);
  v42 = &v94 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  sub_224DAAF88();
  v44 = sub_224DAAF08();
  v46 = v45;
  v47 = *(v39 + 8);
  v47(v42, v38);
  v48 = sub_224AFC108(v44, v46);
  if (v48 == 13)
  {
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    v50 = v49;
    sub_224DAAF88();
    v51 = sub_224DAAF08();
    v53 = v52;
    v47(v42, v38);
    *v50 = v51;
    v50[1] = v53;
LABEL_10:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v94 = v47;
  v95 = v38;
  v96 = v43;
  if (qword_2813592A8 != -1)
  {
    v93 = v48;
    swift_once();
    v48 = v93;
  }

  v54 = qword_2813652C8;
  v55 = v127;
  if (!*(qword_2813652C8 + 16) || (v56 = sub_224B0B668(v48), (v57 & 1) == 0))
  {
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    *v64 = 1852793705;
    v64[1] = 0xE400000000000000;
    goto LABEL_10;
  }

  v58 = v123;
  (*(v55 + 16))(v35, *(v54 + 56) + *(v55 + 72) * v56, v123);
  v59 = v124;
  (*(v55 + 32))(v124, v35, v58);
  sub_224DAB0C8();
  v60 = sub_224DAAEB8();
  v62 = v61;
  (*(v121 + 8))(v31, v122);
  if (v62)
  {
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v55 + 8))(v59, v58);
  }

  else
  {
    v65 = sub_224DAAFD8();
    if (*(v65 + 16) && (v66 = sub_224B31510(v60), (v67 & 1) != 0))
    {
      v122 = v60;
      v69 = v118;
      v68 = v119;
      v70 = v113;
      (*(v118 + 16))(v113, *(v65 + 56) + *(v118 + 72) * v66, v119);

      (*(v69 + 32))(v120, v70, v68);
      v71 = v114;
      sub_224DAAF98();
      v72 = v115;
      v73 = v117;
      v74 = (*(v115 + 48))(v71, 1, v117);
      v75 = v124;
      if (v74 == 1)
      {
        sub_224B6B120(v71);
        type metadata accessor for ReplicationService.ReplicationServiceError(0);
        sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
        swift_allocError();
        sub_224DAAF88();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*(v69 + 8))(v120, v68);
        return (*(v127 + 8))(v75, v123);
      }

      else
      {
        v76 = *(v72 + 32);
        v121 = v72 + 32;
        v114 = v76;
        v76(v116, v71, v73);
        __swift_project_boxed_opaque_existential_1(v111, v111[3]);
        v77 = sub_224DAAFA8();
        v79 = v78;
        sub_224AFC264();
        sub_224AFC2B8();
        v80 = v112;
        sub_224DAB098();
        sub_224A78024(v77, v79);
        if (v80)
        {
          (*(v72 + 8))(v116, v117);
          (*(v118 + 8))(v120, v119);
          return (*(v127 + 8))(v124, v123);
        }

        else
        {
          v122 = v125;
          v115 = v126;
          sub_224DAAF88();
          sub_224DAAEF8();
          v113 = v81;
          v112 = sub_224C5AFF8(&qword_281351980, MEMORY[0x277CF9F98]);
          v111 = sub_224C5AFF8(&unk_281351950, MEMORY[0x277CF9FC0]);
          v96 = sub_224C5AFF8(&qword_281351978, MEMORY[0x277CF9FA0]);
          sub_224C5AFF8(&qword_281351970, MEMORY[0x277CF9FA8]);
          v82 = v98;
          sub_224DAA208();
          v94(v42, v95);
          v83 = v99;
          sub_224DAAD98();
          v84 = v103;
          sub_224DAA1E8();
          sub_224DA9898();
          v85 = v97;
          sub_224DAA1D8();
          (*(v102 + 8))(v83, v104);
          v86 = v100;
          v87 = *(v100 + 8);
          v87(v82, v84);
          (*(v86 + 16))(v82, v85, v84);
          v88 = v106;
          sub_224DAA5D8();
          v87(v85, v84);
          (*(v118 + 8))(v120, v119);
          (*(v127 + 8))(v124, v123);
          v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A60, &qword_224DBC810) + 48);
          v90 = v109;
          (*(v107 + 32))(v109, v88, v108);
          v114(v90 + v89, v116, v117);
          _s10IconChangeOMa(0);
          swift_storeEnumTagMultiPayload();
          v91 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56B0, &unk_224DB4140) + 44);
          v92 = sub_224DAAE38();
          return (*(*(v92 - 8) + 16))(v90 + v91, v110, v92);
        }
      }
    }

    else
    {

      type metadata accessor for ReplicationService.ReplicationServiceError(0);
      sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
      swift_allocError();
      sub_224DAAF88();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return (*(v127 + 8))(v124, v58);
    }
  }
}

uint64_t sub_224C57C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v39 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  MEMORY[0x28223BE20](v33, v4);
  v35 = v30 - v5;
  v6 = sub_224DA9908();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v31 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DAAF48();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v34 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v32 = v30 - v20;
  (*(v10 + 16))(v13, a1, v9);
  v30[2] = sub_224DAAEF8();
  v30[1] = sub_224C5AFF8(&qword_281351980, MEMORY[0x277CF9F98]);
  sub_224C5AFF8(&unk_281351950, MEMORY[0x277CF9FC0]);
  sub_224C5AFF8(&qword_281351978, MEMORY[0x277CF9FA0]);
  sub_224C5AFF8(&qword_281351970, MEMORY[0x277CF9FA8]);
  sub_224DAA208();
  (*(v10 + 8))(v13, v9);
  v21 = v31;
  sub_224DAAD98();
  v22 = v14;
  sub_224DAA1E8();
  sub_224DA9898();
  v23 = v32;
  sub_224DAA1D8();
  (*(v36 + 8))(v21, v37);
  v24 = v34;
  (*(v34 + 8))(v18, v22);
  v25 = v38;
  (*(v24 + 32))(v38, v23, v22);
  _s10IconChangeOMa(0);
  v26 = v25;
  swift_storeEnumTagMultiPayload();
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56B0, &unk_224DB4140) + 44);
  v28 = sub_224DAAE38();
  return (*(*(v28 - 8) + 16))(v26 + v27, v39, v28);
}

uint64_t sub_224C580E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v111 = a5;
  v102 = a4;
  v103 = a2;
  v107 = a1;
  v104 = sub_224DA9908();
  v101 = *(v104 - 8);
  MEMORY[0x28223BE20](v104, v6);
  v100 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v97 = &v93 - v10;
  v106 = sub_224DAC268();
  v99 = *(v106 - 8);
  v12 = MEMORY[0x28223BE20](v106, v11);
  v105 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v98 = &v93 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v109 = &v93 - v18;
  v115 = sub_224DAAFC8();
  v113 = *(v115 - 8);
  v20 = MEMORY[0x28223BE20](v115, v19);
  v110 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v114 = &v93 - v23;
  v24 = sub_224DAAB88();
  v116 = *(v24 - 8);
  v117 = v24;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_224DAB0F8();
  v119 = *(v120 - 8);
  v29 = MEMORY[0x28223BE20](v120, v28);
  v31 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v32);
  v118 = &v93 - v33;
  v34 = sub_224DAAF48();
  v35 = *(v34 - 8);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v108 = &v93 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v39);
  v41 = &v93 - v40;
  v42 = a3;
  sub_224DAAF88();
  v43 = sub_224DAAF08();
  v45 = v44;
  v46 = *(v35 + 8);
  v46(v41, v34);
  v47 = sub_224AFC108(v43, v45);
  if (v47 == 13)
  {
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    v49 = v48;
    sub_224DAAF88();
    v50 = sub_224DAAF08();
    v52 = v51;
    v46(v41, v34);
    *v49 = v50;
    v49[1] = v52;
LABEL_10:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v53 = v47;
  v94 = v46;
  v95 = v34;
  v96 = v42;
  if (qword_2813592A8 != -1)
  {
    swift_once();
  }

  v54 = qword_2813652C8;
  if (!*(qword_2813652C8 + 16) || (v55 = sub_224B0B668(v53), (v56 & 1) == 0))
  {
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    v65 = v64;
    *v64 = sub_224AF02C0(v53);
    v65[1] = v66;
    goto LABEL_10;
  }

  v57 = v119;
  v58 = v120;
  (*(v119 + 16))(v31, *(v54 + 56) + *(v119 + 72) * v55, v120);
  v59 = v118;
  (*(v57 + 32))(v118, v31, v58);
  sub_224DAB0C8();
  v60 = sub_224DAAEB8();
  v62 = v61;
  (*(v116 + 8))(v27, v117);
  if (v62)
  {
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v57 + 8))(v59, v58);
  }

  v67 = sub_224DAAFD8();
  if (!*(v67 + 16) || (v68 = sub_224B31510(v60), (v69 & 1) == 0))
  {

    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v119 + 8))(v118, v120);
  }

  v70 = v113;
  v71 = v110;
  v72 = v115;
  (*(v113 + 16))(v110, *(v67 + 56) + *(v113 + 72) * v68, v115);

  (*(v70 + 32))(v114, v71, v72);
  __swift_project_boxed_opaque_existential_1(v111, v111[3]);
  v73 = sub_224DAAFA8();
  v75 = v74;
  sub_224C4DEE4();
  sub_224C4DF38();
  v76 = v112;
  sub_224DAB098();
  if (v76)
  {
    sub_224A78024(v73, v75);
    (*(v70 + 8))(v114, v115);
    return (*(v119 + 8))(v118, v120);
  }

  sub_224A78024(v73, v75);
  v77 = v109;
  v78 = v114;
  sub_224DAAF98();
  v79 = sub_224DA9688();
  v80 = *(v79 - 8);
  v81 = (*(v80 + 48))(v77, 1, v79);
  v82 = v120;
  if (v81 != 1)
  {
    v83 = v107;
    (*(v80 + 32))(v107, v77, v79);
    v84 = v108;
    sub_224DAAF88();
    sub_224DAAEF8();
    v117 = sub_224DA96A8();
    v86 = v85;

    if (v86 >> 60 == 15)
    {
      sub_224C4DE90();
      swift_allocError();
      swift_willThrow();
      v94(v84, v95);
      (*(v80 + 8))(v83, v79);
      (*(v113 + 8))(v78, v115);
    }

    else
    {
      v87 = v78;
      sub_224DAAD38();
      sub_224C5B048(&qword_27D6F56D0, MEMORY[0x277CF9978], MEMORY[0x277CF9998]);
      v88 = v105;
      v89 = v106;
      sub_224DAAD18();
      v116 = sub_224DAC248();
      v112 = sub_224DAC258();
      sub_224DAC218();
      v90 = v98;
      sub_224DAC228();
      sub_224AC1D9C(v117, v86);
      v91 = *(v99 + 8);
      v91(v88, v89);
      v94(v108, v95);
      v92 = v100;
      sub_224DAAD98();
      sub_224B44A4C(v92, v103);
      (*(v101 + 8))(v92, v104);
      v91(v90, v89);
      (*(v113 + 8))(v87, v115);
    }

    return (*(v119 + 8))(v118, v120);
  }

  sub_224B6B120(v77);
  type metadata accessor for ReplicationService.ReplicationServiceError(0);
  sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
  swift_allocError();
  sub_224DAAF88();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  (*(v113 + 8))(v78, v115);
  return (*(v119 + 8))(v118, v82);
}

uint64_t sub_224C58DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v114 = a5;
  v104 = a4;
  v105 = a2;
  v110 = a1;
  v106 = sub_224DA9908();
  v103 = *(v106 - 8);
  MEMORY[0x28223BE20](v106, v6);
  v102 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v100 = &v96 - v10;
  v109 = sub_224DAC2B8();
  v101 = *(v109 - 8);
  v12 = MEMORY[0x28223BE20](v109, v11);
  v108 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v107 = &v96 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v112 = &v96 - v18;
  v19 = sub_224DAAFC8();
  v117 = *(v19 - 8);
  v118 = v19;
  v21 = MEMORY[0x28223BE20](v19, v20);
  v113 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v116 = &v96 - v24;
  v25 = sub_224DAAB88();
  v119 = *(v25 - 8);
  v120 = v25;
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_224DAB0F8();
  v122 = *(v123 - 8);
  v30 = MEMORY[0x28223BE20](v123, v29);
  v32 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v33);
  v121 = &v96 - v34;
  v35 = sub_224DAAF48();
  v36 = *(v35 - 8);
  v38 = MEMORY[0x28223BE20](v35, v37);
  v111 = &v96 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v40);
  v42 = &v96 - v41;
  v43 = a3;
  sub_224DAAF88();
  v44 = sub_224DAAF08();
  v46 = v45;
  v49 = *(v36 + 8);
  v47 = v36 + 8;
  v48 = v49;
  v49(v42, v35);
  v50 = sub_224AFC108(v44, v46);
  if (v50 == 13)
  {
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    v52 = v51;
    sub_224DAAF88();
    v53 = sub_224DAAF08();
    v55 = v54;
    v48(v42, v35);
    *v52 = v53;
    v52[1] = v55;
LABEL_10:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v56 = v50;
  v96 = v47;
  v97 = v48;
  v98 = v35;
  v99 = v43;
  if (qword_2813592A8 != -1)
  {
    swift_once();
  }

  v57 = qword_2813652C8;
  if (!*(qword_2813652C8 + 16) || (v58 = sub_224B0B668(v56), (v59 & 1) == 0))
  {
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    v68 = v67;
    *v67 = sub_224AF02C0(v56);
    v68[1] = v69;
    goto LABEL_10;
  }

  v60 = v122;
  v61 = v123;
  (*(v122 + 16))(v32, *(v57 + 56) + *(v122 + 72) * v58, v123);
  v62 = v121;
  (*(v60 + 32))(v121, v32, v61);
  sub_224DAB0C8();
  v63 = sub_224DAAEB8();
  v65 = v64;
  (*(v119 + 8))(v28, v120);
  if (v65)
  {
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v60 + 8))(v62, v61);
  }

  v70 = sub_224DAAFD8();
  if (!*(v70 + 16) || (v71 = sub_224B31510(v63), (v72 & 1) == 0))
  {

    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v122 + 8))(v121, v123);
  }

  v73 = v117;
  v74 = v118;
  v75 = v113;
  (*(v117 + 16))(v113, *(v70 + 56) + *(v117 + 72) * v71, v118);

  v76 = v116;
  (*(v73 + 32))(v116, v75, v74);
  __swift_project_boxed_opaque_existential_1(v114, v114[3]);
  v77 = sub_224DAAFA8();
  v79 = v78;
  sub_224AFC580();
  sub_224AFC5D4();
  v80 = v115;
  sub_224DAB098();
  if (v80)
  {
    sub_224A78024(v77, v79);
    (*(v73 + 8))(v76, v118);
    return (*(v122 + 8))(v121, v123);
  }

  sub_224A78024(v77, v79);
  v81 = v112;
  sub_224DAAF98();
  v82 = sub_224DA9688();
  v83 = *(v82 - 8);
  v84 = (*(v83 + 48))(v81, 1, v82);
  v85 = v123;
  if (v84 == 1)
  {
    sub_224B6B120(v81);
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v86 = v110;
    (*(v83 + 32))(v110, v81, v82);
    v87 = v111;
    sub_224DAAF88();
    sub_224DAAEF8();
    v120 = sub_224DA96A8();
    v89 = v88;

    if (v89 >> 60 != 15)
    {
      sub_224DAAD38();
      sub_224C5B048(&qword_27D6F3868, MEMORY[0x277CF99B8], MEMORY[0x277CF99D8]);
      v91 = v108;
      v90 = v109;
      sub_224DAAD18();
      v92 = v97;
      sub_224DAC2A8();
      sub_224DAC288();
      sub_224DAC298();
      sub_224AC1D9C(v120, v89);
      v93 = *(v101 + 8);
      v93(v91, v90);
      v92(v111, v98);
      v94 = v102;
      sub_224DAAD98();
      v95 = v107;
      sub_224CBE434(v94);
      (*(v103 + 8))(v94, v106);
      v93(v95, v90);
      (*(v117 + 8))(v116, v118);
      return (*(v122 + 8))(v121, v123);
    }

    sub_224AFC52C();
    swift_allocError();
    swift_willThrow();
    v97(v87, v98);
    (*(v83 + 8))(v86, v82);
  }

  (*(v117 + 8))(v76, v118);
  return (*(v122 + 8))(v121, v85);
}

uint64_t sub_224C59AA4@<X0>(uint64_t (*a1)(char *)@<X3>, uint64_t *a2@<X8>)
{
  v4 = sub_224DA9908();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DAAD98();
  v9 = a1(v8);
  result = (*(v5 + 8))(v8, v4);
  *a2 = v9;
  return result;
}

uint64_t sub_224C59BA8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_224DA9908();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v24 - v13;
  sub_224A3B79C(0, &qword_281350958, 0x277CFA360);
  result = sub_224DAAE58();
  if (!v3)
  {
    v24[0] = a2;
    sub_224DAAE48();
    v16 = sub_224DA9898();
    v24[3] = a3;
    v18 = v17;
    v19 = sub_224DA9898();
    v21 = v20;
    v24[0] = v16;
    v24[1] = v18;

    MEMORY[0x22AA5D210](v19, v21);

    v22 = sub_224DAEDE8();

    sub_224A3B79C(0, &qword_281350838, 0x277CCACA8);
    sub_224DAAE58();

    v23 = *(v7 + 8);
    v23(v11, v6);
    return (v23)(v14, v6);
  }

  return result;
}

uint64_t sub_224C59DD4(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v3 = sub_224DADA98();
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAAF48();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DAF538();
  v12 = *(v8 + 16);
  v21 = a1;
  v12(v11, a1, v7);
  sub_224DAAEF8();
  v13 = sub_224DAF4F8();
  (*(v8 + 8))(v11, v7);
  if (v13)
  {
    sub_224DACA18();
    sub_224DACF08();
    (*(v22 + 8))(v6, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5AB0, &unk_224DBC310);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5AB8, &qword_224DC1B30);
    v15 = *(v14 - 8);
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_224DB3100;
    (*(v15 + 104))(v17 + v16, *MEMORY[0x277CF9E08], v14);
    sub_224DACF98();

    v18 = sub_224DACF18();
  }

  else
  {
    v18 = type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    v12(v19, v21, v7);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v18;
}

uint64_t sub_224C5A14C(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v3 = sub_224DADF68();
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAAF48();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DAF538();
  v12 = *(v8 + 16);
  v21 = a1;
  v12(v11, a1, v7);
  sub_224DAAEF8();
  v13 = sub_224DAF4F8();
  (*(v8 + 8))(v11, v7);
  if (v13)
  {
    sub_224DACA18();
    sub_224DACF08();
    (*(v22 + 8))(v6, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5AA0, &qword_224DBC308);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5AA8, &qword_224DC1B20);
    v15 = *(v14 - 8);
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_224DB3100;
    (*(v15 + 104))(v17 + v16, *MEMORY[0x277CF9E08], v14);
    sub_224DACF98();

    v18 = sub_224DACF18();
  }

  else
  {
    v18 = type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    v12(v19, v21, v7);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v18;
}

void sub_224C5A4C4(void *a1, char a2)
{
  if ([a1 isHidden])
  {
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v4 = sub_224DAB258();
    __swift_project_value_buffer(v4, qword_281365120);
    v5 = a1;
    v6 = sub_224DAB228();
    v7 = sub_224DAF278();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v38 = v9;
      *v8 = 136315138;
      v10 = [v5 succinctDescription];

      if (v10)
      {
        v11 = sub_224DAEE18();
        v13 = v12;

        v14 = sub_224A33F74(v11, v13, &v38);

        *(v8 + 4) = v14;
        _os_log_impl(&dword_224A2F000, v6, v7, "will not replicate hidden descriptor:%s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v9);
        MEMORY[0x22AA5EED0](v9, -1, -1);
        MEMORY[0x22AA5EED0](v8, -1, -1);
LABEL_28:

        return;
      }

      __break(1u);
      goto LABEL_31;
    }

LABEL_27:

    goto LABEL_28;
  }

  if ((a2 & 4) != 0)
  {
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v26 = sub_224DAB258();
    __swift_project_value_buffer(v26, qword_281365120);
    v5 = a1;
    v6 = sub_224DAB228();
    v17 = sub_224DAF278();
    if (!os_log_type_enabled(v6, v17))
    {
      goto LABEL_27;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v38 = v19;
    *v18 = 136315138;
    v27 = [v5 succinctDescription];

    if (!v27)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v28 = sub_224DAEE18();
    v30 = v29;

    v31 = sub_224A33F74(v28, v30, &v38);

    *(v18 + 4) = v31;
    v25 = "device is a reverse source. will replicate descriptor:%s";
    goto LABEL_20;
  }

  sub_224DA9E78();
  sub_224DA9E68();
  v15 = sub_224DA9DD8();

  if (v15)
  {
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v16 = sub_224DAB258();
    __swift_project_value_buffer(v16, qword_281365120);
    v5 = a1;
    v6 = sub_224DAB228();
    v17 = sub_224DAF2A8();
    if (!os_log_type_enabled(v6, v17))
    {
      goto LABEL_27;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v38 = v19;
    *v18 = 136315138;
    v20 = [v5 succinctDescription];

    if (!v20)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v21 = sub_224DAEE18();
    v23 = v22;

    v24 = sub_224A33F74(v21, v23, &v38);

    *(v18 + 4) = v24;
    v25 = "replicateAllVisibleControls default is enabled. will replicate descriptor:%s";
LABEL_20:
    _os_log_impl(&dword_224A2F000, v6, v17, v25, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x22AA5EED0](v19, -1, -1);
    MEMORY[0x22AA5EED0](v18, -1, -1);
    goto LABEL_28;
  }

  sub_224DAF608();
  if (MEMORY[0x22AA5D960](a1))
  {
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v32 = sub_224DAB258();
    __swift_project_value_buffer(v32, qword_281365120);
    v5 = a1;
    v6 = sub_224DAB228();
    v17 = sub_224DAF278();
    if (!os_log_type_enabled(v6, v17))
    {
      goto LABEL_27;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v38 = v19;
    *v18 = 136315138;
    v33 = [v5 succinctDescription];

    if (!v33)
    {
LABEL_33:
      __break(1u);
      return;
    }

    v34 = sub_224DAEE18();
    v36 = v35;

    v37 = sub_224A33F74(v34, v36, &v38);

    *(v18 + 4) = v37;
    v25 = "will replicate descriptor:%s";
    goto LABEL_20;
  }
}

uint64_t sub_224C5AA38(uint64_t a1, void (**a2)(char *, char *, uint64_t))
{
  v4 = sub_224DACE38();
  v55 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v50 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v57 = &v48 - v9;
  v56 = sub_224DA9908();
  v10 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  v51 = v4;
  if (v14)
  {
    v49 = a2;
    v58 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v14, 0);
    v15 = v58;
    v17 = *(v10 + 16);
    v16 = v10 + 16;
    v18 = (a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64)));
    v53 = *(v16 + 56);
    v54 = v17;
    v52 = (v16 - 8);
    do
    {
      v19 = v56;
      v20 = v16;
      v54(v13, v18, v56);
      v21 = sub_224DA9898();
      v23 = v22;
      (*v52)(v13, v19);
      v58 = v15;
      v25 = *(v15 + 16);
      v24 = *(v15 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_224A3DFD8((v24 > 1), v25 + 1, 1);
        v15 = v58;
      }

      *(v15 + 16) = v25 + 1;
      v26 = v15 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
      v18 = v53 + v18;
      --v14;
      v16 = v20;
    }

    while (v14);
    v4 = v51;
    a2 = v49;
  }

  v27 = sub_224AE8AF4(v15);

  v54 = a2[2];
  if (v54)
  {
    v28 = 0;
    v53 = *(v55 + 16);
    v48 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v52 = (a2 + v48);
    v56 = *(v55 + 72);
    v29 = v27 + 56;
    v49 = (v55 + 32);
    v55 += 16;
    v30 = (v55 - 8);
    v31 = MEMORY[0x277D84F90];
    v53(v57, a2 + v48, v4);
    while (1)
    {
      v32 = sub_224DACDC8();
      v33 = &v32[*MEMORY[0x277CFA128]];
      swift_beginAccess();
      v35 = *v33;
      v34 = *(v33 + 1);

      if (!v34)
      {
        goto LABEL_10;
      }

      if (!*(v27 + 16))
      {
        break;
      }

      sub_224DAFE68();
      sub_224DAEE78();
      v36 = sub_224DAFEA8();
      v37 = -1 << *(v27 + 32);
      v38 = v36 & ~v37;
      if (((*(v29 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
      {
        break;
      }

      v39 = ~v37;
      while (1)
      {
        v40 = (*(v27 + 48) + 16 * v38);
        v41 = *v40 == v35 && v34 == v40[1];
        if (v41 || (sub_224DAFD88() & 1) != 0)
        {
          break;
        }

        v38 = (v38 + 1) & v39;
        if (((*(v29 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v42 = *v49;
      (*v49)(v50, v57, v51);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_224ADA6D0(0, *(v31 + 16) + 1, 1);
        v31 = v59;
      }

      v45 = *(v31 + 16);
      v44 = *(v31 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_224ADA6D0((v44 > 1), v45 + 1, 1);
        v31 = v59;
      }

      *(v31 + 16) = v45 + 1;
      v46 = v51;
      v42((v31 + v48 + v45 * v56), v50, v51);
      v4 = v46;
LABEL_11:
      if (++v28 == v54)
      {
        goto LABEL_30;
      }

      v53(v57, v52 + v56 * v28, v4);
    }

LABEL_9:

    v4 = v51;
LABEL_10:
    (*v30)(v57, v4);
    goto LABEL_11;
  }

  v31 = MEMORY[0x277D84F90];
LABEL_30:

  return v31;
}

uint64_t sub_224C5AF9C(uint64_t a1)
{
  v2 = type metadata accessor for ReplicatedExtension(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224C5AFF8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F3900, &unk_224DB4640);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_224C5B048(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224C5B090(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BC8, &qword_224DB48A8);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v41[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v41[-v10];
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v41[-v13];
  v15 = sub_224DABD28();
  v17 = v16;
  swift_beginAccess();
  v18 = *(v1 + 16);
  if (*(v18 + 16) && (, v19 = sub_224A3A40C(v15, v17), v21 = v20, , (v21 & 1) != 0))
  {
    v44 = a1;
    v22 = *(v18 + 56);
    v23 = sub_224DABD48();
    v24 = *(v23 - 8);
    (*(v24 + 16))(v14, v22 + *(v24 + 72) * v19, v23);

    (*(v24 + 56))(v14, 0, 1, v23);
    sub_224C5B59C(v14, v11);
    if ((*(v24 + 48))(v11, 1, v23) == 1)
    {
      sub_224C5B534(v11);
      a1 = v44;
      v25 = sub_224DABD38();
      v27 = v26;
      v28 = 0;
      v29 = 0xF000000000000000;
      goto LABEL_10;
    }

    v43 = sub_224DABD38();
    v37 = v36;
    (*(v24 + 8))(v11, v23);
    a1 = v44;
    v25 = sub_224DABD38();
    v27 = v38;
    v29 = v37;
    if (v37 >> 60 == 15)
    {
      v28 = v43;
LABEL_10:
      if (v27 >> 60 == 15)
      {
        sub_224AC1D9C(v28, v29);
LABEL_12:
        v34 = 0;
        goto LABEL_7;
      }

      goto LABEL_15;
    }

    if (v27 >> 60 == 15)
    {
      v28 = v43;
LABEL_15:
      sub_224AC1D9C(v28, v29);
      sub_224AC1D9C(v25, v27);
      goto LABEL_6;
    }

    v39 = v43;
    v40 = v29;
    sub_224AECAB0(v43, v29);
    sub_224A77FD0(v25, v27);
    v42 = sub_224CCC88C(v39, v40, v25, v27);
    sub_224A78024(v25, v27);
    sub_224AC1D9C(v39, v40);
    sub_224AC1D9C(v25, v27);
    sub_224AC1D9C(v39, v40);
    if (v42)
    {
      goto LABEL_12;
    }
  }

  else
  {

    v23 = sub_224DABD48();
    (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  }

LABEL_6:
  v30 = sub_224DABD28();
  v32 = v31;
  sub_224DABD48();
  v33 = *(v23 - 8);
  (*(v33 + 16))(v7, a1, v23);
  v34 = 1;
  (*(v33 + 56))(v7, 0, 1, v23);
  swift_beginAccess();
  sub_224B07824(v7, v30, v32);
  swift_endAccess();
LABEL_7:
  sub_224C5B534(v14);
  return v34;
}

uint64_t sub_224C5B534(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BC8, &qword_224DB48A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224C5B59C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BC8, &qword_224DB48A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224C5B60C()
{
  if (!*(v0 + 40))
  {
    return MEMORY[0x277D84FA0];
  }

  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (*(v0 + 40) == 1)
  {
    __swift_project_boxed_opaque_existential_1(v0, *(v0 + 24));
    return (*(v2 + 8))(v1, v2);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v0, *(v0 + 24));
    return (*(v2 + 16))(v1, v2);
  }
}

void *sub_224C5B6F8(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_224C5BB34(result, a2, a3);

    return v6;
  }

  return result;
}

void *sub_224C5B770(uint64_t a1)
{
  v2 = v1;
  v41 = *MEMORY[0x277D85DE8];
  v4 = sub_224DA9688();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v40 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v9 = ((1 << v8) + 63) >> 6;
  v10 = 8 * v9;
  if ((v8 & 0x3Fu) > 0xD)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v30 = v9;
    v31 = v2;
    v29[1] = v29;
    MEMORY[0x28223BE20](v7, v10);
    v32 = v29 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v11);
    v9 = 0;
    v2 = a1 + 56;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v15 = (v12 + 63) >> 6;
    v37 = v5 + 16;
    v38 = 0;
    v33 = (v5 + 8);
    v34 = v5;
    v35 = v4;
    v36 = a1;
LABEL_6:
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v39 = (v14 - 1) & v14;
LABEL_13:
      v19 = v16 | (v9 << 6);
      (*(v5 + 16))(v40, *(a1 + 48) + *(v5 + 72) * v19, v4);
      v20 = sub_224DA95B8();
      v21 = (v20 + 40);
      v22 = *(v20 + 16) + 1;
      do
      {
        if (!--v22)
        {

          v4 = v35;
          (*v33)(v40, v35);
          a1 = v36;
          v5 = v34;
          v14 = v39;
          goto LABEL_6;
        }

        if (*(v21 - 1) == 0x6C6F686563616C70 && *v21 == 0xEC00000073726564)
        {
          break;
        }

        v21 += 2;
      }

      while ((sub_224DAFD88() & 1) == 0);

      v4 = v35;
      (*v33)(v40, v35);
      *&v32[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
      v14 = v39;
      v24 = __OFADD__(v38++, 1);
      a1 = v36;
      v5 = v34;
      if (v24)
      {
        __break(1u);
        return sub_224B04F30(v32, v30, v38, a1);
      }
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {
        return sub_224B04F30(v32, v30, v38, a1);
      }

      v18 = *(v2 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_26:
    v26 = v10;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v10 = v26;
  }

  v27 = swift_slowAlloc();
  v28 = sub_224C5B6F8(v27, v9, a1);

  result = MEMORY[0x22AA5EED0](v27, -1, -1);
  if (!v2)
  {
    return v28;
  }

  return result;
}

uint64_t sub_224C5BB34(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a1;
  v4 = sub_224DA9688();
  result = MEMORY[0x28223BE20](v4, v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a3;
  v36 = 0;
  v10 = 0;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v33 = v7;
  v34 = result;
  v30 = (v7 + 8);
  v31 = v7 + 16;
  v32 = v9;
LABEL_5:
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v37 = (v16 - 1) & v16;
LABEL_12:
    v21 = v18 | (v10 << 6);
    (*(v33 + 16))(v9, *(v35 + 48) + *(v33 + 72) * v21, v4);
    v22 = sub_224DA95B8();
    v23 = (v22 + 40);
    v24 = *(v22 + 16) + 1;
    do
    {
      if (!--v24)
      {

        v9 = v32;
        v4 = v34;
        result = (*v30)(v32, v34);
        v16 = v37;
        goto LABEL_5;
      }

      if (*(v23 - 1) == 0x6C6F686563616C70 && *v23 == 0xEC00000073726564)
      {
        break;
      }

      v23 += 2;
    }

    while ((sub_224DAFD88() & 1) == 0);

    v9 = v32;
    v4 = v34;
    result = (*v30)(v32, v34);
    *(v29 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = __OFADD__(v36++, 1);
    v16 = v37;
    if (v26)
    {
      __break(1u);
LABEL_22:
      v27 = v35;

      return sub_224B04F30(v29, v28, v36, v27);
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
      goto LABEL_22;
    }

    v20 = *(v12 + 8 * v10);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v37 = (v20 - 1) & v20;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224C5BDEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_224C5BE34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_224C5BF4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileReaperScenario(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224C5BFB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileReaperProtectionConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224C5C014(uint64_t a1)
{
  v2 = type metadata accessor for FileReaperProtectionConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_224C5C084(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_224C5C0CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_224C5C144(uint64_t a1)
{
  result = sub_224DAB848();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_224C5C1FC(uint64_t a1)
{
  v1 = type metadata accessor for FileReaperProtectionConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_224C5C2B0(void (*a1)(void, void, void, void))
{
  v3 = [*(v1 + 16) allBudgets];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6000, qword_224DBE790);
  v4 = sub_224DAF008();

  v26 = 0;
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
        return;
      }

      v7 = *(v4 + 8 * v6 + 32);
      if (*(v7 + 16))
      {

        v8 = sub_224A3A40C(1701667182, 0xE400000000000000);
        if ((v9 & 1) == 0)
        {
          goto LABEL_3;
        }

        sub_224A33E0C(*(v7 + 56) + 32 * v8, v25);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_3;
        }

        if (!*(v7 + 16) || (v10 = sub_224A3A40C(0x65636E616C6162, 0xE700000000000000), (v11 & 1) == 0))
        {

LABEL_3:

          goto LABEL_4;
        }

        sub_224A33E0C(*(v7 + 56) + 32 * v10, v25);

        sub_224C5C748();
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_3;
        }

        if (qword_2813514A8 != -1)
        {
          swift_once();
        }

        v12 = sub_224DAB258();
        __swift_project_value_buffer(v12, qword_281364E38);

        v13 = v23;
        v14 = sub_224DAB228();
        v15 = sub_224DAF278();

        if (os_log_type_enabled(v14, v15))
        {
          v22 = a1;
          v16 = swift_slowAlloc();
          log = v14;
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v25[0] = v18;
          *v16 = 136446466;
          *(v16 + 4) = sub_224A33F74(v23, v24, v25);
          *(v16 + 12) = 2114;
          *(v16 + 14) = v13;
          *v17 = v13;
          v19 = v13;
          _os_log_impl(&dword_224A2F000, log, v15, "budget: %{public}s, budget: %{public}@", v16, 0x16u);
          sub_224AD68CC(v17);
          MEMORY[0x22AA5EED0](v17, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v18);
          MEMORY[0x22AA5EED0](v18, -1, -1);
          v20 = v16;
          a1 = v22;
          MEMORY[0x22AA5EED0](v20, -1, -1);
        }

        else
        {
        }

        a1(v23, v24, [v13 integerValue], &v26);

        if (v26 == 1)
        {
LABEL_20:

          return;
        }
      }

LABEL_4:
      if (v5 == ++v6)
      {
        goto LABEL_20;
      }
    }
  }
}

uint64_t sub_224C5C678(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{

  sub_224DAD6F8();
  sub_224AFC154();
  v9 = sub_224DAF748();

  if (v9)
  {
    *a6 = a3;
    *(a6 + 8) = 0;
    *a4 = 1;
  }

  return result;
}

unint64_t sub_224C5C748()
{
  result = qword_281350850;
  if (!qword_281350850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281350850);
  }

  return result;
}

void sub_224C5C794(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [*(a1 + 16) allBudgets];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6000, qword_224DBE790);
  v5 = sub_224DAF008();

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
        return;
      }

      v8 = *(v5 + 8 * v7 + 32);
      if (*(v8 + 16))
      {

        v9 = sub_224A3A40C(1701667182, 0xE400000000000000);
        if (v10)
        {
          sub_224A33E0C(*(v8 + 56) + 32 * v9, v27);
          if (swift_dynamicCast())
          {
            if (*(v8 + 16) && (v11 = sub_224A3A40C(0x65636E616C6162, 0xE700000000000000), (v12 & 1) != 0))
            {
              sub_224A33E0C(*(v8 + 56) + 32 * v11, v27);

              sub_224C5C748();
              if (swift_dynamicCast())
              {
                if (qword_2813514A8 != -1)
                {
                  swift_once();
                }

                v13 = sub_224DAB258();
                __swift_project_value_buffer(v13, qword_281364E38);

                v14 = v25;
                v15 = sub_224DAB228();
                v16 = sub_224DAF278();

                if (os_log_type_enabled(v15, v16))
                {
                  v23 = a2;
                  v17 = swift_slowAlloc();
                  log = v15;
                  v18 = swift_slowAlloc();
                  v19 = swift_slowAlloc();
                  v27[0] = v19;
                  *v17 = 136446466;
                  *(v17 + 4) = sub_224A33F74(v25, v26, v27);
                  *(v17 + 12) = 2114;
                  *(v17 + 14) = v14;
                  *v18 = v14;
                  v20 = v14;
                  _os_log_impl(&dword_224A2F000, log, v16, "budget: %{public}s, budget: %{public}@", v17, 0x16u);
                  sub_224AD68CC(v18);
                  MEMORY[0x22AA5EED0](v18, -1, -1);
                  __swift_destroy_boxed_opaque_existential_1(v19);
                  MEMORY[0x22AA5EED0](v19, -1, -1);
                  v21 = v17;
                  a2 = v23;
                  MEMORY[0x22AA5EED0](v21, -1, -1);
                }

                else
                {
                }

                sub_224BEDA38(v25, v26, [v14 integerValue], &v28, a2, a3);

                goto LABEL_4;
              }
            }

            else
            {
            }
          }
        }
      }

LABEL_4:
      if (v6 == ++v7)
      {

        return;
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10ChronoCore27WidgetRelevanceServiceEventO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_224C5CBE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_224C5CC28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_224C5CC6C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_224C5CC94(unint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  if (!v5)
  {
    if (!v7)
    {
      return sub_224C911AC(v4, v6);
    }

    return 0;
  }

  if (v5 == 1)
  {
    if (v7 == 1)
    {
      return sub_224C911C0(v4, v6);
    }

    return 0;
  }

  return v7 == 2 && v6 == 0;
}

uint64_t (*sub_224C5CCE8(uint64_t (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x277D84F90];
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_224A3317C(v8, v16);
      v10 = v6(v16);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_1(v16);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_224A36F98(v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_224ADA390(0, *(v9 + 16) + 1, 1);
          v9 = v17;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_224ADA390((v12 > 1), v13 + 1, 1);
          v9 = v17;
        }

        *(v9 + 16) = v13 + 1;
        result = sub_224A36F98(v15, v9 + 40 * v13 + 32);
        v6 = v14;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1(v16);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t sub_224C5CE60(uint64_t a1)
{
  v48 = sub_224DAAF48();
  v3 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v4);
  v40 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v6 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v7);
  v9 = v30 - v8;
  v10 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v30[1] = v1;
    v50 = MEMORY[0x277D84F90];
    sub_224ADA350(0, v10, 0);
    v49 = v50;
    v47 = a1 + 56;
    result = sub_224DAF798();
    v12 = result;
    v13 = 0;
    v36 = v3 + 8;
    v37 = v3 + 16;
    v34 = v3;
    v35 = v6 + 32;
    v31 = a1 + 64;
    v32 = v10;
    v38 = v6;
    v33 = a1;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v47 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_22;
      }

      v41 = v13;
      v42 = *(a1 + 36);
      v43 = 1 << v12;
      v16 = v40;
      (*(v3 + 16))(v40, *(a1 + 48) + *(v3 + 72) * v12, v48);
      v17 = sub_224DAAEF8();
      v45 = v18;
      v46 = v17;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
      sub_224A33088(&qword_281351980, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9F98]);
      sub_224A33088(&unk_281351950, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FC0]);
      sub_224A33088(&qword_281351978, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA0]);
      sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA8]);
      v3 = v34;
      sub_224DAA208();
      (*(v3 + 8))(v16, v48);
      v19 = v49;
      v50 = v49;
      v21 = *(v49 + 16);
      v20 = *(v49 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_224ADA350((v20 > 1), v21 + 1, 1);
        v19 = v50;
      }

      *(v19 + 16) = v21 + 1;
      v22 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v49 = v19;
      result = (*(v38 + 32))(v19 + v22 + *(v38 + 72) * v21, v9, v39);
      a1 = v33;
      v14 = 1 << *(v33 + 32);
      if (v12 >= v14)
      {
        goto LABEL_23;
      }

      v23 = *(v47 + 8 * v15);
      if ((v23 & v43) == 0)
      {
        goto LABEL_24;
      }

      if (v42 != *(v33 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v12 & 0x3F));
      if (v24)
      {
        v14 = __clz(__rbit64(v24)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v15 << 6;
        v26 = v15 + 1;
        v27 = (v31 + 8 * v15);
        while (v26 < (v14 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_224A3E204(v12, v42, 0);
            v14 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_224A3E204(v12, v42, 0);
      }

LABEL_4:
      v13 = v41 + 1;
      v12 = v14;
      if (v41 + 1 == v32)
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
  }

  return result;
}

void sub_224C5D31C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v19 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224DAF538();
    sub_224C6BAE4(&unk_2813509A0, 255, MEMORY[0x277CFA140], MEMORY[0x277D85378]);
    sub_224DAF1F8();
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
    v6 = v18;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
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

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v12 = (v11 - 1) & v11;
    if (!*(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v11))))))
    {
LABEL_20:
      sub_224A3B7E4(v2);
      return;
    }

    while (1)
    {
      MEMORY[0x22AA5D350]();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_224DAF038();
      }

      sub_224DAF078();
      v6 = v12;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_224DAF878())
      {
        sub_224DAF538();
        swift_dynamicCast();
        v12 = v6;
        if (v13)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v11 = *(v3 + 8 * v5);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_224C5D570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v7 = sub_224DAB018();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v42 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v30 - v13;
  v15 = sub_224DAAD48();
  result = MEMORY[0x28223BE20](v15, v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  if (v21)
  {
    v31 = v20;
    v32 = v18;
    v34 = result;
    v35 = a3;
    v33 = v3;
    v40 = (v3 + qword_2813652F8);
    v22 = *(sub_224DAAF48() - 8);
    v38 = v8 + 8;
    v39 = (v8 + 16);
    v37 = v8 + 32;
    v23 = a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v36 = *(v22 + 72);
    v24 = MEMORY[0x277D84F90];
    while (1)
    {
      (*v40)(v23, v41);
      if (v4)
      {
        break;
      }

      (*v39)(v42, v14, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_224AD92B8(0, v24[2] + 1, 1, v24);
      }

      v26 = v24[2];
      v25 = v24[3];
      if (v26 >= v25 >> 1)
      {
        v24 = sub_224AD92B8((v25 > 1), v26 + 1, 1, v24);
      }

      (*(v8 + 8))(v14, v7);
      v24[2] = v26 + 1;
      (*(v8 + 32))(v24 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v26, v42, v7);
      v23 += v36;
      if (!--v21)
      {
        __swift_project_boxed_opaque_existential_1((v33 + 40), *(v33 + 64));
        v28 = v31;
        v27 = v32;
        v29 = v34;
        (*(v32 + 104))(v31, *MEMORY[0x277D46688], v34);
        sub_224DAABC8();
        (*(v27 + 8))(v28, v29);
      }
    }
  }

  return result;
}

void *sub_224C5D90C(unint64_t a1)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v52 - v7;
  v9 = sub_224DAAF28();
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v70 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v74 = v52 - v15;
  MEMORY[0x28223BE20](v14, v16);
  v69 = v52 - v17;
  v68 = sub_224DAAF48();
  v71 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v18);
  v20 = v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_224DAB0B8();
  v57 = *(v21 - 1);
  MEMORY[0x28223BE20](v21, v22);
  v24 = v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_224DAAC58();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v25);
  v53 = v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v24;
  if (a1 >> 62)
  {
    goto LABEL_50;
  }

  v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v27)
  {
    v28 = a1;
    a1 = v1;
    v76 = MEMORY[0x277D84F90];
    result = sub_224ADA17C(0, v27 & ~(v27 >> 63), 0);
    if ((v27 & 0x8000000000000000) == 0)
    {
      v60 = v8;
      v52[0] = v21;
      v52[2] = v3;
      v8 = 0;
      v30 = v28;
      v67 = v28 & 0xC000000000000001;
      v52[1] = v1;
      v1 = *(v1 + 32);
      v59 = v28 & 0xFFFFFFFFFFFFFF8;
      v3 = v1 >> 6;
      v58 = v1 & 0x3F;
      v61 = v71 + 32;
      v62 = "liveControlReplicator";
      v65 = v27;
      v66 = v28;
      v31 = v76;
      v63 = v1 >> 6;
      v64 = v1;
      while (1)
      {
        if (v67)
        {
          v32 = MEMORY[0x22AA5DCC0](v8, v30);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            v27 = sub_224DAF838();
            goto LABEL_3;
          }

          if (v8 >= *(v59 + 16))
          {
            goto LABEL_49;
          }

          v32 = *(v30 + 8 * v8 + 32);
        }

        v21 = v32;
        v73 = v31;
        if (v3)
        {
          if (v3 != 1)
          {
            v36 = 1852793705;
            if (v1 != 129)
            {
              v36 = 0x7974697669746361;
            }

            if (v1 == 128)
            {
              v36 = 0x6F69736E65747865;
            }

            v72 = v36;
            goto LABEL_37;
          }

          v75[0] = 0;
          v75[1] = 0xE000000000000000;
          sub_224DAF938();

          strcpy(v75, "configuration-");
          HIBYTE(v75[1]) = -18;
          if (v58 > 1)
          {
            if (v58 == 2)
            {
              v33 = 0xEF77656976657270;
            }

            else
            {
              v33 = 0xEC0000006576696CLL;
            }

            v34 = 0x2D6C6F72746E6F63;
          }

          else
          {
            v33 = 0xE800000000000000;
            if (v58)
            {
              v34 = 0x656E696C656D6974;
            }

            else
            {
              v34 = 0x746F687370616E73;
            }
          }
        }

        else
        {
          v33 = 0xE800000000000000;
          strcpy(v75, "archive-");
          BYTE1(v75[1]) = 0;
          WORD1(v75[1]) = 0;
          HIDWORD(v75[1]) = -402653184;
          if (v1 <= 1)
          {
            v34 = 0x746F687370616E73;
            if (!v1)
            {
              v34 = 0x6C6F686563616C70;
              v33 = 0xEB00000000726564;
            }
          }

          else
          {
            v35 = 0xEF77656976657270;
            if (v1 != 3)
            {
              v35 = 0xEC0000006576696CLL;
            }

            if (v1 == 2)
            {
              v34 = 0x656E696C656D6974;
            }

            else
            {
              v34 = 0x2D6C6F72746E6F63;
            }

            if (v1 == 2)
            {
              v33 = 0xE800000000000000;
            }

            else
            {
              v33 = v35;
            }
          }
        }

        MEMORY[0x22AA5D210](v34, v33);

        v72 = v75[0];
LABEL_37:
        v37 = v20;
        v38 = v21 + *MEMORY[0x277CFA128];
        swift_beginAccess();
        if (*(v38 + 1))
        {
          v39 = v74;

          v40 = v60;
          sub_224DA9888();
          v41 = sub_224DA9908();
          v42 = *(v41 - 8);
          result = (*(v42 + 48))(v40, 1, v41);
          if (result == 1)
          {
            goto LABEL_52;
          }

          (*(v42 + 32))(v39, v40, v41);
          (*(v42 + 56))(v39, 0, 1, v41);
        }

        else
        {
          v43 = sub_224DA9908();
          (*(*(v43 - 8) + 56))(v74, 1, 1, v43);
        }

        v44 = v69;
        sub_224BFF92C(v74, v69);
        v45 = [v21 tokenString];
        sub_224DAEE18();

        sub_224C6BA7C(v44, v70, MEMORY[0x277D46780]);

        v20 = v37;
        sub_224DAAEE8();
        sub_224ACFD2C(v44);

        v31 = v73;
        v76 = v73;
        a1 = *(v73 + 16);
        v46 = *(v73 + 24);
        if (a1 >= v46 >> 1)
        {
          sub_224ADA17C((v46 > 1), a1 + 1, 1);
          v31 = v76;
        }

        ++v8;
        *(v31 + 16) = a1 + 1;
        (*(v71 + 32))(v31 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * a1, v20, v68);
        v30 = v66;
        v3 = v63;
        v1 = v64;
        if (v65 == v8)
        {
          v21 = v52[0];
          v47 = v57;
          goto LABEL_47;
        }
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
  }

  else
  {
    v47 = v57;
    v31 = MEMORY[0x277D84F90];
LABEL_47:
    v48 = v55;
    v49 = v53;
    v50 = v56;
    (*(v55 + 104))(v53, *MEMORY[0x277D46560], v56);
    v51 = v54;
    (*(v47 + 104))(v54, *MEMORY[0x277D46828], v21);
    sub_224C5D570(v31, v49, v51);

    (*(v47 + 8))(v51, v21);
    return (*(v48 + 8))(v49, v50);
  }

  return result;
}

uint64_t sub_224C5E21C(unint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3890, &unk_224DB9C30);
  v7 = MEMORY[0x28223BE20](v83, v6);
  v82 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v81 = &v66 - v11;
  MEMORY[0x28223BE20](v10, v12);
  v80 = &v66 - v13;
  v14 = sub_224DAAF48();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v79 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_224DAB0B8();
  MEMORY[0x28223BE20](v18, v19);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    while (1)
    {
      v69 = v22;
      v70 = v20;
      v71 = v18;

      v25 = sub_224A3DADC(v24);

      __swift_project_boxed_opaque_existential_1((v4 + 40), *(v4 + 64));
      v26 = sub_224DAABB8();
      if (v3)
      {
      }

      v27 = v26;

      v28 = sub_224C6AAE0(v27, v4, v25, sub_224C69568, sub_224C69568);
      v68 = 0;
      v29 = v28;

      swift_bridgeObjectRelease_n();
      v30 = *(v29 + 2);
      if (!v30)
      {

LABEL_25:
        __swift_project_boxed_opaque_existential_1((v4 + 40), *(v4 + 64));
        v62 = v70;
        v61 = v71;
        v63 = v69;
        (*(v70 + 104))(v69, *MEMORY[0x277D46828], v71);
        sub_224DAABF8();
        (*(v62 + 8))(v63, v61);
      }

      v67 = v4;
      v91 = MEMORY[0x277D84F90];
      v18 = &v91;
      sub_224ADA17C(0, v30, 0);
      v90 = v91;
      v31 = v29 + 64;
      v3 = sub_224DAF798();
      v22 = 0;
      v4 = v15;
      v77 = v15 + 32;
      v78 = v15 + 16;
      v72 = v29 + 72;
      v73 = v30;
      v15 = 1;
      v74 = v29 + 64;
      v75 = v4;
      v76 = v29;
      while ((v3 & 0x8000000000000000) == 0 && v3 < 1 << v29[32])
      {
        if ((*&v31[8 * (v3 >> 6)] & (1 << v3)) == 0)
        {
          goto LABEL_29;
        }

        v86 = 1 << v3;
        v87 = v3 >> 6;
        v32 = *(v29 + 9);
        v84 = v22;
        v85 = v32;
        v33 = v83;
        v34 = *(v83 + 48);
        v35 = *(v29 + 6);
        v89 = *(v4 + 72);
        v36 = v80;
        (*(v4 + 16))(v80, v35 + v89 * v3, v14);
        v37 = *(v29 + 7);
        v18 = sub_224DA9908();
        v38 = v14;
        v39 = *(v18 - 1);
        v40 = v37 + *(v39 + 72) * v3;
        v41 = *(v39 + 16);
        v88 = v3;
        v41(&v36[v34], v40, v18);
        v42 = *(v4 + 32);
        v43 = v81;
        v42(v81, v36, v38);
        v44 = &v36[v34];
        v45 = v79;
        (*(v39 + 32))(&v43[*(v33 + 48)], v44, v18);
        v46 = v43;
        v47 = v82;
        sub_224A44E4C(v46, v82, &qword_27D6F3890, &unk_224DB9C30);
        v48 = *(v33 + 48);
        v42(v45, v47, v38);
        (*(v39 + 8))(v47 + v48, v18);
        v49 = v90;
        v91 = v90;
        v51 = *(v90 + 16);
        v50 = *(v90 + 24);
        v14 = v51 + 1;
        if (v51 >= v50 >> 1)
        {
          v18 = &v91;
          sub_224ADA17C((v50 > 1), v51 + 1, 1);
          v49 = v91;
        }

        *(v49 + 16) = v14;
        v4 = v75;
        v52 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        v90 = v49;
        v42((v49 + v52 + v51 * v89), v45, v38);
        v29 = v76;
        v15 = 1;
        v3 = 1 << v76[32];
        if (v88 >= v3)
        {
          goto LABEL_30;
        }

        v14 = v38;
        v31 = v74;
        v22 = v86;
        v53 = *&v74[8 * v87];
        if ((v53 & v86) == 0)
        {
          goto LABEL_31;
        }

        v22 = *(v76 + 9);
        if (v85 != v22)
        {
          goto LABEL_32;
        }

        v54 = v53 & (-2 << (v88 & 0x3F));
        if (v54)
        {
          v3 = __clz(__rbit64(v54)) | v88 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v55 = v76;
          v56 = v87 << 6;
          v57 = v87 + 1;
          v58 = &v72[8 * v87];
          while (v57 < (v3 + 63) >> 6)
          {
            v60 = *v58++;
            v59 = v60;
            v56 += 64;
            ++v57;
            if (v60)
            {
              sub_224A3E204(v88, v85, 0);
              v3 = __clz(__rbit64(v59)) + v56;
              goto LABEL_22;
            }
          }

          sub_224A3E204(v88, v85, 0);
LABEL_22:
          v29 = v55;
        }

        v22 = v84 + 1;
        if (v84 + 1 == v73)
        {

          v4 = v67;
          goto LABEL_25;
        }
      }

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
      v64 = v20;
      v65 = v22;
      result = sub_224DAF838();
      v22 = v65;
      v20 = v64;
      if (!result)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_224C5E930(uint64_t a1)
{
  v3 = sub_224DAAF28();
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v65 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v64 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v68 = &v45 - v12;
  v63 = sub_224DAAF48();
  v13 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_224DAB0B8();
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v17);
  v48 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_224DAAC58();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + 16);
  if (!v24)
  {
    v69 = MEMORY[0x277D84F90];
    goto LABEL_35;
  }

  v45 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v20;
  v47 = v19;
  v71 = MEMORY[0x277D84F90];
  v62 = v1;
  v67 = v24;
  sub_224ADA17C(0, v24, 0);
  v26 = *(v10 + 16);
  v25 = v10 + 16;
  v27 = a1 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
  v57 = "liveControlReplicator";
  v58 = v26;
  v28 = *(v1 + 32);
  v29 = v28 >> 6;
  v69 = v71;
  v51 = v28 & 0x3F;
  v52 = v28;
  v54 = *(v25 + 56);
  v55 = (v25 - 8);
  v53 = v13 + 32;
  v60 = v13;
  v61 = v25;
  v59 = v16;
  v56 = v28 >> 6;
  do
  {
    v58(v68, v27, v9);
    if (!v29)
    {
      v30 = 0xE800000000000000;
      strcpy(v70, "archive-");
      BYTE1(v70[1]) = 0;
      WORD1(v70[1]) = 0;
      HIDWORD(v70[1]) = -402653184;
      if (v52 <= 1)
      {
        v31 = 0x746F687370616E73;
        if (!v52)
        {
          v31 = 0x6C6F686563616C70;
          v30 = 0xEB00000000726564;
        }
      }

      else
      {
        v32 = 0xEF77656976657270;
        if (v52 != 3)
        {
          v32 = 0xEC0000006576696CLL;
        }

        if (v52 == 2)
        {
          v31 = 0x656E696C656D6974;
        }

        else
        {
          v31 = 0x2D6C6F72746E6F63;
        }

        if (v52 == 2)
        {
          v30 = 0xE800000000000000;
        }

        else
        {
          v30 = v32;
        }
      }

      goto LABEL_28;
    }

    if (v29 == 1)
    {
      v70[0] = 0;
      v70[1] = 0xE000000000000000;
      sub_224DAF938();

      strcpy(v70, "configuration-");
      HIBYTE(v70[1]) = -18;
      if (v51 > 1)
      {
        if (v51 == 2)
        {
          v30 = 0xEF77656976657270;
        }

        else
        {
          v30 = 0xEC0000006576696CLL;
        }

        v31 = 0x2D6C6F72746E6F63;
      }

      else
      {
        v30 = 0xE800000000000000;
        if (v51)
        {
          v31 = 0x656E696C656D6974;
        }

        else
        {
          v31 = 0x746F687370616E73;
        }
      }

LABEL_28:
      MEMORY[0x22AA5D210](v31, v30);

      v66 = v70[0];
      goto LABEL_29;
    }

    v33 = 1852793705;
    if (v52 != 129)
    {
      v33 = 0x7974697669746361;
    }

    if (v52 == 128)
    {
      v33 = 0x6F69736E65747865;
    }

    v66 = v33;
LABEL_29:
    v34 = sub_224DA9908();
    v35 = v64;
    (*(*(v34 - 8) + 56))(v64, 1, 1, v34);
    v36 = v68;
    sub_224DAA218();
    sub_224C6BA7C(v35, v65, MEMORY[0x277D46780]);
    sub_224DAAEE8();
    sub_224ACFD2C(v35);
    (*v55)(v36, v9);
    v37 = v69;
    v71 = v69;
    v39 = *(v69 + 16);
    v38 = *(v69 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_224ADA17C((v38 > 1), v39 + 1, 1);
      v37 = v71;
    }

    *(v37 + 16) = v39 + 1;
    v40 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v69 = v37;
    (*(v60 + 32))(v37 + v40 + *(v60 + 72) * v39, v16, v63);
    v27 += v54;
    --v67;
    v29 = v56;
  }

  while (v67);
  v19 = v47;
  v20 = v46;
  v23 = v45;
LABEL_35:
  (*(v20 + 104))(v23, *MEMORY[0x277D46560], v19);
  v41 = v49;
  v42 = v48;
  v43 = v50;
  (*(v49 + 104))(v48, *MEMORY[0x277D46828], v50);
  sub_224C5D570(v69, v23, v42);

  (*(v41 + 8))(v42, v43);
  return (*(v20 + 8))(v23, v19);
}

uint64_t sub_224C5F0E8(uint64_t a1)
{
  v3 = v1;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3890, &unk_224DB9C30);
  v6 = MEMORY[0x28223BE20](v83, v5);
  v82 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v81 = &v66 - v10;
  MEMORY[0x28223BE20](v9, v11);
  v80 = &v66 - v12;
  v13 = sub_224DAAF48();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v79 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DAB0B8();
  result = MEMORY[0x28223BE20](v17, v18);
  if (!*(a1 + 16))
  {
    return result;
  }

  v69 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v21;
  v71 = result;

  v23 = sub_224AE9604(v22);

  __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
  v24 = sub_224DAABB8();
  if (v2)
  {
  }

  v25 = v24;

  v26 = sub_224C6AAE0(v25, v1, v23, sub_224C69F08, sub_224C69F08);
  v68 = 0;
  v27 = v26;

  swift_bridgeObjectRelease_n();
  v28 = *(v27 + 2);
  if (!v28)
  {

LABEL_24:
    __swift_project_boxed_opaque_existential_1((v3 + 40), *(v3 + 64));
    v64 = v70;
    v63 = v71;
    v65 = v69;
    (*(v70 + 104))(v69, *MEMORY[0x277D46828], v71);
    sub_224DAABF8();
    (*(v64 + 8))(v65, v63);
  }

  v67 = v1;
  v91 = MEMORY[0x277D84F90];
  sub_224ADA17C(0, v28, 0);
  v90 = v91;
  v29 = v27 + 64;
  result = sub_224DAF798();
  v30 = result;
  v31 = 0;
  v32 = v14;
  v77 = v14 + 32;
  v78 = v14 + 16;
  v72 = v27 + 72;
  v73 = v28;
  v74 = v27 + 64;
  v75 = v14;
  v76 = v27;
  while ((v30 & 0x8000000000000000) == 0 && v30 < 1 << v27[32])
  {
    if ((*&v29[8 * (v30 >> 6)] & (1 << v30)) == 0)
    {
      goto LABEL_28;
    }

    v86 = 1 << v30;
    v87 = v30 >> 6;
    v33 = *(v27 + 9);
    v84 = v31;
    v85 = v33;
    v34 = v83;
    v35 = *(v83 + 48);
    v36 = *(v27 + 6);
    v89 = *(v32 + 72);
    v37 = v80;
    (*(v32 + 16))(v80, v36 + v89 * v30, v13);
    v38 = *(v27 + 7);
    v39 = sub_224DA9908();
    v40 = v13;
    v41 = *(v39 - 8);
    v42 = v38 + *(v41 + 72) * v30;
    v43 = *(v41 + 16);
    v88 = v30;
    v43(&v37[v35], v42, v39);
    v44 = *(v32 + 32);
    v45 = v81;
    v44(v81, v37, v40);
    v46 = &v37[v35];
    v47 = v79;
    (*(v41 + 32))(&v45[*(v34 + 48)], v46, v39);
    v48 = v45;
    v49 = v82;
    sub_224A44E4C(v48, v82, &qword_27D6F3890, &unk_224DB9C30);
    v50 = *(v34 + 48);
    v44(v47, v49, v40);
    (*(v41 + 8))(v49 + v50, v39);
    v51 = v90;
    v91 = v90;
    v53 = *(v90 + 16);
    v52 = *(v90 + 24);
    if (v53 >= v52 >> 1)
    {
      sub_224ADA17C((v52 > 1), v53 + 1, 1);
      v51 = v91;
    }

    *(v51 + 16) = v53 + 1;
    v32 = v75;
    v54 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v90 = v51;
    v44((v51 + v54 + v53 * v89), v47, v40);
    v27 = v76;
    v30 = 1 << v76[32];
    result = v88;
    if (v88 >= v30)
    {
      goto LABEL_29;
    }

    v13 = v40;
    v29 = v74;
    v55 = *&v74[8 * v87];
    if ((v55 & v86) == 0)
    {
      goto LABEL_30;
    }

    if (v85 != *(v76 + 9))
    {
      goto LABEL_31;
    }

    v56 = v55 & (-2 << (v88 & 0x3F));
    if (v56)
    {
      v30 = __clz(__rbit64(v56)) | v88 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v57 = v76;
      v58 = v87 << 6;
      v59 = v87 + 1;
      v60 = &v72[8 * v87];
      while (v59 < (v30 + 63) >> 6)
      {
        v62 = *v60++;
        v61 = v62;
        v58 += 64;
        ++v59;
        if (v62)
        {
          result = sub_224A3E204(v88, v85, 0);
          v30 = __clz(__rbit64(v61)) + v58;
          goto LABEL_21;
        }
      }

      result = sub_224A3E204(v88, v85, 0);
LABEL_21:
      v27 = v57;
    }

    v31 = v84 + 1;
    if (v84 + 1 == v73)
    {

      v3 = v67;
      goto LABEL_24;
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
  return result;
}

double sub_224C5F7C4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v21 - v4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5300, &qword_224DB6600);
  v6 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v7);
  v9 = &v21 - v8;
  v10 = *(v0 + 136);
  v11 = __swift_project_boxed_opaque_existential_1((v0 + 112), v10);
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v11, v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14);
  v15 = sub_224DAA168();
  (*(v12 + 8))(v14, v10);
  v23 = v15;
  v24 = *(v1 + 104);
  v16 = v24;
  v17 = sub_224DAF358();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  v18 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4730, &unk_224DBAF00);
  sub_224AC319C();
  sub_224A33088(&qword_281351010, &unk_27D6F4730, &unk_224DBAF00, MEMORY[0x277CBCD90]);
  sub_224C6BAE4(&qword_281350A80, 255, sub_224AC319C, MEMORY[0x277D85228]);
  sub_224DAB448();
  sub_224A3311C(v5, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351210, &unk_27D6F5300, &qword_224DB6600, MEMORY[0x277CBCD60]);
  v19 = v22;
  sub_224DAB488();

  (*(v6 + 8))(v9, v19);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return result;
}

void sub_224C5FB98()
{
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3890, &unk_224DB9C30);
  v3 = MEMORY[0x28223BE20](v143, v2);
  v142 = &v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v141 = &v130 - v7;
  MEMORY[0x28223BE20](v6, v8);
  v140 = &v130 - v9;
  v10 = sub_224DAAF28();
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v150 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v149 = &v130 - v15;
  *&v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v154 = *(v148 - 8);
  MEMORY[0x28223BE20](v148, v16);
  v147 = &v130 - v17;
  v151 = sub_224DAAF48();
  v18 = *(v151 - 1);
  v20 = MEMORY[0x28223BE20](v151, v19);
  v22 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v130 - v25;
  v28 = MEMORY[0x28223BE20](v24, v27);
  v139 = &v130 - v29;
  MEMORY[0x28223BE20](v28, v30);
  v155 = &v130 - v31;
  v32 = sub_224DAB8C8();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v34);
  v36 = (&v130 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = v0[13];
  *v36 = v37;
  (*(v33 + 104))(v36, *MEMORY[0x277D85200], v32);
  v38 = v37;
  LOBYTE(v37) = sub_224DAB8F8();
  (*(v33 + 8))(v36, v32);
  if (v37)
  {
    v134 = v26;
    v135 = v22;
    v152 = v18;
    v39 = v0[31];
    v133 = v0;
    __swift_project_boxed_opaque_existential_1(v0 + 28, v39);
    v40 = sub_224DAC678();
    v41 = v40;
    v42 = *(v40 + 16);
    v43 = MEMORY[0x277D84F90];
    if (v42)
    {
      v44 = 0;
      v45 = v40 + 32;
      while (v44 < *(v41 + 16))
      {
        sub_224A3317C(v45, &v157);
        __swift_project_boxed_opaque_existential_1(&v157, v158);
        v46 = sub_224DAE338();
        v47 = [v46 isRemote];

        if (v47)
        {
          __swift_destroy_boxed_opaque_existential_1(&v157);
        }

        else
        {
          sub_224A36F98(&v157, v156);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v159 = v43;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_224ADA390(0, *(v43 + 16) + 1, 1);
            v43 = v159;
          }

          v50 = *(v43 + 16);
          v49 = *(v43 + 24);
          if (v50 >= v49 >> 1)
          {
            sub_224ADA390((v49 > 1), v50 + 1, 1);
            v43 = v159;
          }

          *(v43 + 16) = v50 + 1;
          sub_224A36F98(v156, v43 + 40 * v50 + 32);
        }

        ++v44;
        v45 += 40;
        if (v42 == v44)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_13:

      v51 = *(v43 + 16);
      if (v51)
      {
        *&v156[0] = MEMORY[0x277D84F90];
        sub_224ADA17C(0, v51, 0);
        v146 = "liveControlReplicator";
        v137 = v43;
        v52 = v43 + 32;
        v145 = (v154 + 8);
        v144 = v152 + 32;
        v54 = v155;
        v53 = *&v156[0];
        do
        {
          v154 = v53;
          v155 = v51;
          sub_224A3317C(v52, &v157);
          __swift_project_boxed_opaque_existential_1(&v157, v158);
          v153 = sub_224DAE328();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
          sub_224A33088(&qword_281351980, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9F98]);
          sub_224A33088(&unk_281351950, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FC0]);
          sub_224A33088(&qword_281351978, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA0]);
          sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA8]);
          v55 = v147;
          sub_224DAA208();
          v56 = sub_224DA9908();
          v57 = v149;
          (*(*(v56 - 8) + 56))(v149, 1, 1, v56);
          v58 = v148;
          sub_224DAA218();
          sub_224C6BA7C(v57, v150, MEMORY[0x277D46780]);
          v53 = v154;
          sub_224DAAEE8();
          sub_224ACFD2C(v57);
          (*v145)(v55, v58);
          __swift_destroy_boxed_opaque_existential_1(&v157);
          *&v156[0] = v53;
          v60 = *(v53 + 16);
          v59 = *(v53 + 24);
          if (v60 >= v59 >> 1)
          {
            sub_224ADA17C((v59 > 1), v60 + 1, 1);
            v53 = *&v156[0];
          }

          *(v53 + 16) = v60 + 1;
          (*(v152 + 32))(v53 + ((*(v152 + 80) + 32) & ~*(v152 + 80)) + *(v152 + 72) * v60, v54, v151);
          v52 += 40;
          v51 = v155 - 1;
        }

        while (v155 != 1);
      }

      else
      {

        v53 = MEMORY[0x277D84F90];
      }

      v61 = sub_224AE924C(v53);

      __swift_project_boxed_opaque_existential_1(v133 + 3, v133[6]);
      v62 = sub_224DAABB8();
      v63 = v152;
      if (v1)
      {

        return;
      }

      v132 = v61;
      v64 = sub_224C6831C(v62);
      v131 = 0;

      v65 = *(v64 + 2);
      if (v65)
      {
        *&v157 = MEMORY[0x277D84F90];
        sub_224ADA17C(0, v65, 0);
        v155 = v157;
        v66 = v64 + 64;
        v67 = sub_224DAF798();
        v68 = 0;
        v145 = (v63 + 16);
        v144 = v63 + 32;
        v136 = v64 + 72;
        v69 = v151;
        v137 = v65;
        v146 = v64 + 64;
        v138 = v64;
        while ((v67 & 0x8000000000000000) == 0 && v67 < 1 << v64[32])
        {
          if ((*&v66[8 * (v67 >> 6)] & (1 << v67)) == 0)
          {
            goto LABEL_64;
          }

          v149 = 1 << v67;
          v150 = v67 >> 6;
          v72 = *(v64 + 9);
          v147 = v68;
          *&v148 = v72;
          v73 = *(v143 + 48);
          v74 = *(v64 + 6);
          v154 = *(v63 + 72);
          v75 = v74 + v154 * v67;
          v76 = *(v63 + 16);
          v77 = v63;
          v78 = v140;
          v76(v140, v75, v69);
          v153 = v67;
          v79 = *(v64 + 7);
          v80 = sub_224DA9908();
          v81 = v69;
          v82 = *(v80 - 8);
          (*(v82 + 16))(&v78[v73], v79 + *(v82 + 72) * v67, v80);
          v83 = *(v77 + 32);
          v84 = v141;
          v83(v141, v78, v81);
          v85 = v143;
          v86 = &v78[v73];
          v87 = v81;
          (*(v82 + 32))(&v84[*(v143 + 48)], v86, v80);
          v88 = v84;
          v89 = v142;
          sub_224A44E4C(v88, v142, &qword_27D6F3890, &unk_224DB9C30);
          v90 = *(v85 + 48);
          v91 = v139;
          v83(v139, v89, v87);
          (*(v82 + 8))(v89 + v90, v80);
          *&v157 = v155;
          v93 = *(v155 + 16);
          v92 = *(v155 + 24);
          if (v93 >= v92 >> 1)
          {
            sub_224ADA17C((v92 > 1), v93 + 1, 1);
            v155 = v157;
          }

          v94 = v155;
          *(v155 + 16) = v93 + 1;
          v83((v94 + ((*(v152 + 80) + 32) & ~*(v152 + 80)) + v93 * v154), v91, v87);
          v64 = v138;
          v67 = 1 << v138[32];
          v66 = v146;
          if (v153 >= v67)
          {
            goto LABEL_65;
          }

          v95 = *&v146[8 * v150];
          if ((v95 & v149) == 0)
          {
            goto LABEL_66;
          }

          if (v148 != *(v138 + 9))
          {
            goto LABEL_67;
          }

          v69 = v87;
          v96 = v95 & (-2 << (v153 & 0x3F));
          if (v96)
          {
            v67 = __clz(__rbit64(v96)) | v153 & 0x7FFFFFFFFFFFFFC0;
            v63 = v152;
            v70 = v137;
            v71 = v147;
          }

          else
          {
            v97 = v150 << 6;
            v98 = (v150 + 1);
            v99 = &v136[8 * v150];
            v63 = v152;
            v70 = v137;
            while (v98 < (v67 + 63) >> 6)
            {
              v101 = *v99++;
              v100 = v101;
              v97 += 64;
              ++v98;
              if (v101)
              {
                sub_224A3E204(v153, v148, 0);
                v67 = __clz(__rbit64(v100)) + v97;
                goto LABEL_40;
              }
            }

            sub_224A3E204(v153, v148, 0);
LABEL_40:
            v71 = v147;
          }

          v68 = v71 + 1;
          if (v68 == v70)
          {

            goto LABEL_43;
          }
        }

        goto LABEL_63;
      }

      v155 = MEMORY[0x277D84F90];
      v69 = v151;
LABEL_43:
      v102 = sub_224AE924C(v155);

      if (*(v102 + 16) <= *(v132 + 16) >> 3)
      {
        *&v157 = v132;
        sub_224AFF078(v102, v103);
        v69 = v151;

        v104 = v157;
      }

      else
      {
        v104 = sub_224AFF5A0(v102, v132);
      }

      v105 = v131;
      v146 = sub_224C5CE60(v104);
      v147 = v105;
      v107 = 0;
      v108 = v104 + 56;
      v109 = 1 << *(v104 + 32);
      v110 = -1;
      if (v109 < 64)
      {
        v110 = ~(-1 << v109);
      }

      v111 = v110 & *(v104 + 56);
      v112 = (v109 + 63) >> 6;
      v154 = v63 + 32;
      v155 = v63 + 16;
      v151 = (v63 + 8);
      *&v106 = 136446210;
      v148 = v106;
      v153 = v104;
      if (v111)
      {
        goto LABEL_51;
      }

LABEL_52:
      while (1)
      {
        v113 = v107 + 1;
        if (__OFADD__(v107, 1))
        {
          break;
        }

        if (v113 >= v112)
        {

          sub_224C66568(v146);

          return;
        }

        v111 = *(v108 + 8 * v113);
        ++v107;
        if (v111)
        {
          while (1)
          {
            v114 = v134;
            (*(v63 + 16))(v134, *(v104 + 48) + *(v63 + 72) * (__clz(__rbit64(v111)) | (v113 << 6)), v69);
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v111 &= v111 - 1;
            v115 = sub_224DAB258();
            __swift_project_value_buffer(v115, qword_281365120);
            v116 = v135;
            (*v154)(v135, v114, v69);
            v117 = v69;
            v118 = sub_224DAB228();
            v119 = sub_224DAF2A8();
            if (os_log_type_enabled(v118, v119))
            {
              v120 = swift_slowAlloc();
              v150 = swift_slowAlloc();
              *&v157 = v150;
              *v120 = v148;
              sub_224C6BAE4(&qword_281351720, 255, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
              LODWORD(v149) = v119;
              v121 = sub_224DAFD28();
              v122 = v117;
              v124 = v123;
              v125 = v116;
              v126 = v122;
              (*v151)(v125, v122);
              v127 = sub_224A33F74(v121, v124, &v157);

              *(v120 + 4) = v127;
              _os_log_impl(&dword_224A2F000, v118, v149, "Found unreplicated icon: %{public}s", v120, 0xCu);
              v128 = v150;
              __swift_destroy_boxed_opaque_existential_1(v150);
              MEMORY[0x22AA5EED0](v128, -1, -1);
              v129 = v120;
              v63 = v152;
              MEMORY[0x22AA5EED0](v129, -1, -1);

              v107 = v113;
              v69 = v126;
              v104 = v153;
              if (!v111)
              {
                goto LABEL_52;
              }
            }

            else
            {

              (*v151)(v116, v117);
              v107 = v113;
              v69 = v117;
              v104 = v153;
              if (!v111)
              {
                goto LABEL_52;
              }
            }

LABEL_51:
            v113 = v107;
          }
        }
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
  }

  __break(1u);
}

void sub_224C60B98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v125 = &v107 - v3;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v126 = *(v124 - 8);
  MEMORY[0x28223BE20](v124, v4);
  v108 = &v107 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v116 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v120 = &v107 - v11;
  v12 = sub_224DAAF28();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v114 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_224DAAF48();
  v129 = *(v115 - 8);
  MEMORY[0x28223BE20](v115, v15);
  v121 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v119 = &v107 - v19;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v128 = *(v118 - 8);
  MEMORY[0x28223BE20](v118, v20);
  v117 = &v107 - v21;
  v22 = v0[31];
  v110 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 28, v22);
  v23 = sub_224DAC678();
  v24 = v23;
  v25 = *(v23 + 16);
  if (v25)
  {
    v26 = 0;
    v27 = (v23 + 32);
    v28 = MEMORY[0x277D84F90];
    while (v26 < *(v24 + 16))
    {
      sub_224A3317C(v27, &v136);
      __swift_project_boxed_opaque_existential_1(&v136, v137);
      v29 = sub_224DAE338();
      v30 = [v29 isRemote];

      if (v30)
      {
        sub_224A36F98(&v136, &v133);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v131 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_224ADA390(0, *(v28 + 16) + 1, 1);
          v28 = v131;
        }

        v33 = *(v28 + 16);
        v32 = *(v28 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_224ADA390((v32 > 1), v33 + 1, 1);
          v28 = v131;
        }

        *(v28 + 16) = v33 + 1;
        sub_224A36F98(&v133, v28 + 40 * v33 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(&v136);
      }

      ++v26;
      v27 += 40;
      if (v25 == v26)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_57;
  }

  v28 = MEMORY[0x277D84F90];
LABEL_13:

  __swift_project_boxed_opaque_existential_1(v110 + 3, v110[6]);
  v34 = sub_224DAABB8();
  v107 = 0;
  v46 = MEMORY[0x277D84F90];
  v122 = *(v28 + 16);
  if (v122)
  {
    v27 = 0;
    v47 = v28 + 32;
    v113 = (v128 + 16);
    v111 = "liveControlReplicator";
    v112 = (v129 + 1);
    *&v35 = 136446210;
    v109 = v35;
    v123 = v34;
    while (v27 < *(v28 + 16))
    {
      sub_224A3317C(v47, &v136);
      __swift_project_boxed_opaque_existential_1(&v136, v137);
      v49 = sub_224DAE338();
      v50 = &v49[*MEMORY[0x277CFA128]];
      swift_beginAccess();
      v51 = *(v50 + 1);

      if (v51)
      {
        v128 = v47;
        v129 = v46;
        __swift_project_boxed_opaque_existential_1(&v136, v137);
        v52 = sub_224DAE338();
        sub_224DAF538();
        v53 = *MEMORY[0x277CFA138];
        swift_beginAccess();
        (*v113)(v117, &v52[v53], v118);
        v54 = *MEMORY[0x277CFA130];
        swift_beginAccess();
        sub_224A3796C(&v52[v54], v119, &unk_27D6F5060, &qword_224DB5620);
        v55 = sub_224DAF508();

        v127 = v55;
        v56 = [v55 tokenString];
        sub_224DAEE18();
        v57 = v120;
        sub_224DA9888();
        v58 = sub_224DA9908();
        v59 = *(v58 - 8);
        if ((*(v59 + 48))(v57, 1, v58) == 1)
        {
          __break(1u);
          return;
        }

        v60 = v114;
        (*(v59 + 32))(v114, v57, v58);
        v61 = *(v59 + 56);
        v61(v60, 0, 1, v58);
        v62 = v121;
        sub_224DAAEE8();
        v63 = v123;
        if (*(v123 + 16) && (v64 = sub_224B0B3CC(v62), (v65 & 1) != 0))
        {
          v48 = v116;
          (*(v59 + 16))(v116, *(v63 + 56) + *(v59 + 72) * v64, v58);

          (*v112)(v62, v115);
          v61(v48, 0, 1, v58);
          sub_224A3311C(v48, &unk_27D6F5630, &unk_224DB34C0);
          v46 = v129;
        }

        else
        {
          v66 = v116;
          v61(v116, 1, 1, v58);
          sub_224A3311C(v66, &unk_27D6F5630, &unk_224DB34C0);
          if (qword_2813516C8 != -1)
          {
            swift_once();
          }

          v67 = sub_224DAB258();
          __swift_project_value_buffer(v67, qword_281365120);
          sub_224A3317C(&v136, &v133);
          v68 = sub_224DAB228();
          v69 = sub_224DAF2A8();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            v130 = v71;
            *v70 = v109;
            __swift_project_boxed_opaque_existential_1(&v133, v134);
            v72 = sub_224DAE338();
            v73 = [v72 description];

            v74 = sub_224DAEE18();
            v76 = v75;

            __swift_destroy_boxed_opaque_existential_1(&v133);
            v77 = sub_224A33F74(v74, v76, &v130);
            v62 = v121;

            *(v70 + 4) = v77;
            _os_log_impl(&dword_224A2F000, v68, v69, "Found orphaned remote extension: %{public}s", v70, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v71);
            MEMORY[0x22AA5EED0](v71, -1, -1);
            MEMORY[0x22AA5EED0](v70, -1, -1);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(&v133);
          }

          v46 = v129;
          v78 = v127;
          sub_224A3317C(&v136, &v133);
          v79 = swift_isUniquelyReferenced_nonNull_native();
          v132 = v46;
          if ((v79 & 1) == 0)
          {
            v46 = sub_224A5C040(0, v46[2] + 1, 1, v46);
            v132 = v46;
          }

          v81 = v46[2];
          v80 = v46[3];
          if (v81 >= v80 >> 1)
          {
            v46 = sub_224A5C040((v80 > 1), v81 + 1, 1, v46);

            v132 = v46;
          }

          else
          {
          }

          (*v112)(v62, v115);
          v82 = v134;
          v83 = v135;
          v84 = __swift_mutable_project_boxed_opaque_existential_1(&v133, v134);
          MEMORY[0x28223BE20](v84, v84);
          v86 = &v107 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v87 + 16))(v86);
          sub_224A5C064(v81, v86, &v132, v82, v83);
          __swift_destroy_boxed_opaque_existential_1(&v133);
        }

        v47 = v128;
      }

      ++v27;
      __swift_destroy_boxed_opaque_existential_1(&v136);
      v47 += 40;
      if (v122 == v27)
      {
        goto LABEL_38;
      }
    }

LABEL_57:
    __break(1u);
    swift_once();
    v36 = sub_224DAB258();
    __swift_project_value_buffer(v36, qword_281365120);
    v37 = v27;
    v38 = sub_224DAB228();
    v39 = sub_224DAF288();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = v27;
      v42 = swift_slowAlloc();
      *v40 = 138543362;
      v43 = v41;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v44;
      *v42 = v44;
      _os_log_impl(&dword_224A2F000, v38, v39, "Could not retrieve record versions: %{public}@", v40, 0xCu);
      sub_224A3311C(v42, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v42, -1, -1);
      MEMORY[0x22AA5EED0](v40, -1, -1);
      v45 = v41;
LABEL_16:

      return;
    }

    v98 = v27;
LABEL_47:

    return;
  }

LABEL_38:

  v88 = v46[2];
  if (v88)
  {
    *&v133 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v129 = v46;
    v89 = (v46 + 4);
    v90 = (v46 + 4);
    v91 = v88;
    do
    {
      sub_224A3317C(v90, &v136);
      __swift_project_boxed_opaque_existential_1(&v136, v137);
      sub_224DAE338();
      __swift_destroy_boxed_opaque_existential_1(&v136);
      sub_224DAF9B8();
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      v90 += 40;
      --v91;
    }

    while (v91);
    v92 = v133;
    __swift_project_boxed_opaque_existential_1(v110 + 39, v110[42]);
    sub_224BB36A8(v92);

    v130 = MEMORY[0x277D84F90];
    sub_224ADA350(0, v88, 0);
    v93 = v130;
    v94 = v108;
    do
    {
      sub_224A3317C(v89, &v136);
      __swift_project_boxed_opaque_existential_1(&v136, v137);
      sub_224DAE328();
      sub_224DA9FF8();
      __swift_project_boxed_opaque_existential_1(&v136, v137);
      v95 = sub_224DAE338();
      swift_beginAccess();

      sub_224DAA258();
      __swift_destroy_boxed_opaque_existential_1(&v136);
      v130 = v93;
      v97 = *(v93 + 16);
      v96 = *(v93 + 24);
      if (v97 >= v96 >> 1)
      {
        sub_224ADA350((v96 > 1), v97 + 1, 1);
        v94 = v108;
        v93 = v130;
      }

      *(v93 + 16) = v97 + 1;
      (*(v126 + 32))(v93 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v97, v94, v124);
      v89 += 40;
      --v88;
    }

    while (v88);

    swift_getObjectType();
    v99 = v107;
    sub_224DA9CE8();
    if (v99)
    {

      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v100 = sub_224DAB258();
      __swift_project_value_buffer(v100, qword_281365120);
      v101 = v99;
      v38 = sub_224DAB228();
      v102 = sub_224DAF288();

      if (os_log_type_enabled(v38, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        *v103 = 138543362;
        v105 = v99;
        v106 = _swift_stdlib_bridgeErrorToNSError();
        *(v103 + 4) = v106;
        *v104 = v106;
        _os_log_impl(&dword_224A2F000, v38, v102, "Could not remove icons for purged remote extensions: %{public}@", v103, 0xCu);
        sub_224A3311C(v104, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v104, -1, -1);
        MEMORY[0x22AA5EED0](v103, -1, -1);
        v45 = v99;
        goto LABEL_16;
      }

      v98 = v99;
      goto LABEL_47;
    }
  }

  else
  {
  }
}

void sub_224C61CEC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v26 - v4;
  v6 = *(v0 + 16);
  if (v6)
  {
    v7 = *(v0 + 304);
    v8 = qword_2813652D8;
    if ((*(v7 + qword_2813652D8) & 1) == 0)
    {
      *(v7 + qword_2813652D8) = 1;
      v9 = sub_224DAF128();
      (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
      v10 = swift_allocObject();
      v10[2] = 0;
      v10[3] = 0;
      v10[4] = v7;

      sub_224D8E744(0, 0, v5, &unk_224DBC7A8, v10);

      v8 = qword_2813652D8;
    }

    v11 = *(v1 + 352);
    if ((*(v11 + v8) & 1) == 0)
    {
      *(v11 + v8) = 1;
      v12 = sub_224DAF128();
      (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = v11;

      sub_224D8E744(0, 0, v5, &unk_224DBC7B0, v13);
    }

    v14 = sub_224DAF128();
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v1;

    sub_224D8E744(0, 0, v5, &unk_224DBC7C0, v15);

    __swift_project_boxed_opaque_existential_1((v1 + 224), *(v1 + 248));
    v26[1] = sub_224DAC698();
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5500, &unk_224DB4040);
    sub_224A33088(&qword_281351048, &unk_27D6F5500, &unk_224DB4040, MEMORY[0x277CBCD90]);
    sub_224DAB488();

    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    sub_224C62944();
    sub_224C62C78();
  }

  if ((v6 & 2) != 0)
  {
    v16 = *(v1 + 304);
    v17 = qword_2813652D8;
    if ((*(v16 + qword_2813652D8) & 1) == 0)
    {
      *(v16 + qword_2813652D8) = 1;
      v18 = sub_224DAF128();
      (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = 0;
      v19[4] = v16;

      sub_224D8E744(0, 0, v5, &unk_224DBC788, v19);

      v17 = qword_2813652D8;
    }

    v20 = *(v1 + 352);
    if ((*(v20 + v17) & 1) == 0)
    {
      *(v20 + v17) = 1;
      v21 = sub_224DAF128();
      (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
      v22 = swift_allocObject();
      v22[2] = 0;
      v22[3] = 0;
      v22[4] = v20;

      sub_224D8E744(0, 0, v5, &unk_224DBC790, v22);
    }

    v23 = *(v1 + 360);
    if ((v23 & 1) != 0 || *(v1 + 361) == 1)
    {
      if ((v6 & 1) == 0)
      {
        v24 = sub_224DAF128();
        (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
        v25 = swift_allocObject();
        v25[2] = 0;
        v25[3] = 0;
        v25[4] = v1;

        sub_224D8E744(0, 0, v5, &unk_224DBC7A0, v25);
      }

      sub_224C63720(v23, *(v1 + 361));
      sub_224C63ADC();
    }
  }
}

uint64_t sub_224C622A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_224DAAE38();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = sub_224DA9908();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33A8, &unk_224DB35D0);
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33B0, &qword_224DBC7F0);
  v4[14] = v8;
  v4[15] = *(v8 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C6248C, 0, 0);
}

uint64_t sub_224C6248C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1((v0[4] + 24), *(v0[4] + 48));
  sub_224DAACA8();
  sub_224DAF158();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_224C625A4;
  v5 = v0[14];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_224C625A4()
{

  return MEMORY[0x2822009F8](sub_224C626A0, 0, 0);
}

uint64_t sub_224C626A0()
{
  v1 = v0 + 2;
  v2 = v0[2];
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v0[6];
      v0[3] = MEMORY[0x277D84F90];
      sub_224ADA3D0(0, v3, 0);
      v5 = v0[3];
      v6 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v7 = *(v4 + 72);
      v8 = *(v4 + 16);
      do
      {
        v9 = v0[6];
        v10 = v0[7];
        v11 = v0[5];
        v8(v10, v6, v11);
        sub_224DAAD98();
        (*(v9 + 8))(v10, v11);
        v0[3] = v5;
        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_224ADA3D0((v12 > 1), v13 + 1, 1);
          v5 = v0[3];
        }

        v15 = v0[9];
        v14 = v0[10];
        v16 = v0[8];
        *(v5 + 16) = v13 + 1;
        (*(v15 + 32))(v5 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13, v14, v16);
        v6 += v7;
        --v3;
      }

      while (v3);

      v1 = v0 + 2;
    }

    else
    {

      v5 = MEMORY[0x277D84F90];
    }

    sub_224C67A0C(v5);

    v19 = swift_task_alloc();
    v0[17] = v19;
    *v19 = v0;
    v19[1] = sub_224C625A4;
    v20 = v0[14];

    return MEMORY[0x2822003E8](v1, 0, 0, v20);
  }

  else
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

    v17 = v0[1];

    return v17();
  }
}

double sub_224C62944()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v14 - v3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5AC8, &qword_224DBC7D0);
  v5 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v6);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(v0 + 33, v0[36]);
  v16 = sub_224DADA28();
  v9 = v0[13];
  v17 = v9;
  v10 = sub_224DAF358();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5AD0, &qword_224DBC7D8);
  sub_224AC319C();
  sub_224A33088(&qword_281351098, &qword_27D6F5AD0, &qword_224DBC7D8, MEMORY[0x277CBCD90]);
  sub_224C6BAE4(&qword_281350A80, 255, sub_224AC319C, MEMORY[0x277D85228]);
  sub_224DAB448();
  sub_224A3311C(v4, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&unk_281351260, &qword_27D6F5AC8, &qword_224DBC7D0, MEMORY[0x277CBCD60]);
  v12 = v15;
  sub_224DAB488();

  (*(v5 + 8))(v8, v12);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return result;
}

double sub_224C62C78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v22 - v3;
  v5 = sub_224DAA118();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51C8, &qword_224DBAEF0);
  v11 = *(v10 - 8);
  v22 = v10;
  v23 = v11;
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v22 - v13;
  v15 = *(v0 + 152);
  swift_getObjectType();
  v24 = v15;
  (*(v6 + 104))(v9, *MEMORY[0x277CFA000], v5);
  swift_unknownObjectRetain();
  v16 = sub_224DA9F38();
  (*(v6 + 8))(v9, v5);
  swift_unknownObjectRelease();
  v24 = v16;
  v17 = *(v0 + 104);
  v25 = v17;
  v18 = sub_224DAF358();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  v19 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5208, &unk_224DBAF30);
  sub_224AC319C();
  sub_224A33088(&qword_281351050, &qword_27D6F5208, &unk_224DBAF30, MEMORY[0x277CBCD90]);
  sub_224C6BAE4(&qword_281350A80, 255, sub_224AC319C, MEMORY[0x277D85228]);
  sub_224DAB448();
  sub_224A3311C(v4, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351238, &qword_27D6F51C8, &qword_224DBAEF0, MEMORY[0x277CBCD60]);
  v20 = v22;
  sub_224DAB488();

  (*(v23 + 8))(v14, v20);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return result;
}

uint64_t sub_224C6307C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_224DAAE38();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = sub_224DA9908();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33A8, &unk_224DB35D0);
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33B0, &qword_224DBC7F0);
  v4[14] = v8;
  v4[15] = *(v8 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C63268, 0, 0);
}

uint64_t sub_224C63268()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1((v0[4] + 24), *(v0[4] + 48));
  sub_224DAACA8();
  sub_224DAF158();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_224C63380;
  v5 = v0[14];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_224C63380()
{

  return MEMORY[0x2822009F8](sub_224C6347C, 0, 0);
}

uint64_t sub_224C6347C()
{
  v1 = v0 + 2;
  v2 = v0[2];
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v0[6];
      v0[3] = MEMORY[0x277D84F90];
      sub_224ADA3D0(0, v3, 0);
      v5 = v0[3];
      v6 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v7 = *(v4 + 72);
      v8 = *(v4 + 16);
      do
      {
        v9 = v0[6];
        v10 = v0[7];
        v11 = v0[5];
        v8(v10, v6, v11);
        sub_224DAAD98();
        (*(v9 + 8))(v10, v11);
        v0[3] = v5;
        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_224ADA3D0((v12 > 1), v13 + 1, 1);
          v5 = v0[3];
        }

        v15 = v0[9];
        v14 = v0[10];
        v16 = v0[8];
        *(v5 + 16) = v13 + 1;
        (*(v15 + 32))(v5 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13, v14, v16);
        v6 += v7;
        --v3;
      }

      while (v3);

      v1 = v0 + 2;
    }

    else
    {

      v5 = MEMORY[0x277D84F90];
    }

    sub_224C67A0C(v5);

    v19 = swift_task_alloc();
    v0[17] = v19;
    *v19 = v0;
    v19[1] = sub_224C63380;
    v20 = v0[14];

    return MEMORY[0x2822003E8](v1, 0, 0, v20);
  }

  else
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

    v17 = v0[1];

    return v17();
  }
}

void sub_224C63720(int a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v20 - v8;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5AF8, &qword_224DBC818);
  v10 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v11);
  v13 = &v20 - v12;
  v21 = a1;
  if (a1 & 1) != 0 || (a2)
  {
    v20 = a2;
    v23 = sub_224C9AAF4();
    v24 = *(v3 + 104);
    v14 = v24;
    v15 = sub_224DAF358();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
    v16 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B00, &unk_224DBC820);
    sub_224AC319C();
    sub_224A33088(&qword_2813511A8, &qword_27D6F5B00, &unk_224DBC820, MEMORY[0x277CBCD90]);
    sub_224C6BAE4(&qword_281350A80, 255, sub_224AC319C, MEMORY[0x277D85228]);
    sub_224DAB448();
    sub_224A3311C(v9, &qword_27D6F5090, &qword_224DB5C30);

    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v21 & 1;
    *(v18 + 25) = v20 & 1;
    sub_224A33088(&qword_2813512E8, &qword_27D6F5AF8, &qword_224DBC818, MEMORY[0x277CBCD60]);
    v19 = v22;
    sub_224DAB488();

    (*(v10 + 8))(v13, v19);
    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();
  }

  else
  {
    sub_224DAFB58();
    __break(1u);
  }
}

double sub_224C63ADC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v14 - v3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5AE8, &qword_224DBC7F8);
  v5 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v6);
  v8 = &v14 - v7;
  v16 = sub_224C9AB10();
  v9 = *(v0 + 104);
  v17 = v9;
  v10 = sub_224DAF358();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5AF0, &unk_224DBC800);
  sub_224AC319C();
  sub_224A33088(&qword_2813511C0, &qword_27D6F5AF0, &unk_224DBC800, MEMORY[0x277CBCD90]);
  sub_224C6BAE4(&qword_281350A80, 255, sub_224AC319C, MEMORY[0x277D85228]);
  sub_224DAB448();
  sub_224A3311C(v4, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351300, &qword_27D6F5AE8, &qword_224DBC7F8, MEMORY[0x277CBCD60]);
  v12 = v15;
  sub_224DAB488();

  (*(v5 + 8))(v8, v12);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return result;
}

uint64_t sub_224C63DF8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  __swift_destroy_boxed_opaque_existential_1((v0 + 224));
  __swift_destroy_boxed_opaque_existential_1((v0 + 264));

  __swift_destroy_boxed_opaque_existential_1((v0 + 312));

  return v0;
}

uint64_t sub_224C63E68()
{
  sub_224C63DF8();

  return swift_deallocClassInstance();
}

void sub_224C63ECC()
{
  sub_224C5F7C4();
  sub_224C5FB98();
  sub_224C61CEC();
}

uint64_t sub_224C63F5C(uint64_t a1, uint64_t a2)
{
  result = sub_224C6BAE4(qword_281354410, a2, type metadata accessor for ExtensionReplicationProvider, &unk_224DBC730);
  *(a1 + 8) = result;
  return result;
}

double sub_224C63FB4(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (v2)
    {
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v6 = sub_224DAB258();
      __swift_project_value_buffer(v6, qword_281365120);
      v7 = sub_224DAB228();
      v8 = sub_224DAF2A8();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_224A2F000, v7, v8, "Received first unlock notification", v9, 2u);
        MEMORY[0x22AA5EED0](v9, -1, -1);
      }

      __swift_project_boxed_opaque_existential_1((v5 + 224), *(v5 + 248));
      v10 = sub_224DAC678();
      sub_224C64114(v10);

      sub_224C5FB98();
    }
  }

  return result;
}

double sub_224C64114(uint64_t a1)
{
  v92 = sub_224DACE38();
  v86 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v2);
  v91 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5AC0, &qword_224DBC780);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v100 = &v85 - v6;
  v103 = sub_224DAA618();
  v94 = *(v103 - 8);
  MEMORY[0x28223BE20](v103, v7);
  v99 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B00, &unk_224DB9AB0);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v98 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v102 = &v85 - v15;
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v85 - v17;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v19 = *(v104 - 8);
  v21 = MEMORY[0x28223BE20](v104, v20);
  v90 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v89 = &v85 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v97 = &v85 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v93 = &v85 - v31;
  MEMORY[0x28223BE20](v30, v32);
  v101 = &v85 - v33;
  v34 = *(a1 + 16);
  v87 = a1;
  if (v34)
  {
    v35 = a1 + 32;
    v36 = MEMORY[0x277D84F90];
    v96 = (v19 + 32);
    v37 = v34;
    do
    {
      sub_224A3317C(v35, v105);
      __swift_project_boxed_opaque_existential_1(v105, v106);
      v38 = sub_224DAE338();
      v39 = v102;
      sub_224DAF4E8();
      sub_224A44E4C(v39, v18, &qword_27D6F4B00, &unk_224DB9AB0);

      __swift_destroy_boxed_opaque_existential_1(v105);
      v40 = v104;
      if ((*(v19 + 48))(v18, 1, v104) == 1)
      {
        sub_224A3311C(v18, &qword_27D6F4B00, &unk_224DB9AB0);
      }

      else
      {
        v41 = *v96;
        (*v96)(v101, v18, v40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_224AD99A8(0, *(v36 + 2) + 1, 1, v36);
        }

        v43 = *(v36 + 2);
        v42 = *(v36 + 3);
        if (v43 >= v42 >> 1)
        {
          v36 = sub_224AD99A8((v42 > 1), v43 + 1, 1, v36);
        }

        *(v36 + 2) = v43 + 1;
        v41(&v36[((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v43], v101, v104);
      }

      v35 += 40;
      --v37;
    }

    while (v37);
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
  }

  v101 = *(v36 + 2);
  if (v101)
  {
    v44 = 0;
    v95 = (v19 + 32);
    v96 = (v19 + 16);
    v88 = (v19 + 8);
    v102 = MEMORY[0x277D84F90];
    v45 = v104;
    v46 = v93;
    while (v44 < *(v36 + 2))
    {
      v47 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v48 = *(v19 + 72);
      (*(v19 + 16))(v46, &v36[v47 + v48 * v44], v45);
      sub_224DAA1F8();
      v49 = sub_224DAA048();

      if (v49)
      {
        (*v88)(v46, v45);
      }

      else
      {
        v50 = v46;
        v51 = *v95;
        (*v95)(v97, v50, v45);
        v52 = v102;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v105[0] = v52;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_224ADA350(0, *(v52 + 16) + 1, 1);
          v52 = v105[0];
        }

        v55 = *(v52 + 16);
        v54 = *(v52 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_224ADA350((v54 > 1), v55 + 1, 1);
          v52 = v105[0];
        }

        *(v52 + 16) = v55 + 1;
        v102 = v52;
        v56 = v52 + v47 + v55 * v48;
        v45 = v104;
        (v51)(v56, v97, v104);
        v46 = v93;
      }

      if (v101 == ++v44)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_42:
    swift_once();
    goto LABEL_38;
  }

  v102 = MEMORY[0x277D84F90];
LABEL_24:

  if (v34)
  {
    v57 = v87 + 32;
    v58 = (v19 + 48);
    v96 = (v19 + 16);
    v97 = (v19 + 32);
    v95 = (v86 + 8);
    v93 = (v19 + 8);
    v59 = (v94 + 56);
    v60 = (v94 + 48);
    v101 = (v94 + 32);
    v61 = MEMORY[0x277D84F90];
    v88 = v58;
    v87 = v94 + 48;
    do
    {
      sub_224A3317C(v57, v105);
      __swift_project_boxed_opaque_existential_1(v105, v106);
      v62 = sub_224DAE338();
      v63 = v98;
      sub_224DAF4E8();

      v64 = v104;
      if ((*v58)(v63, 1, v104) == 1)
      {
        sub_224A3311C(v63, &qword_27D6F4B00, &unk_224DB9AB0);
        v65 = 1;
        v66 = v100;
      }

      else
      {
        v67 = v89;
        (*v97)(v89, v63, v64);
        (*v96)(v90, v67, v64);
        __swift_project_boxed_opaque_existential_1(v105, v106);
        v68 = v91;
        sub_224DAE388();
        sub_224DACD58();
        (*v95)(v68, v92);
        v66 = v100;
        v60 = v87;
        sub_224DAA5D8();
        v69 = v67;
        v58 = v88;
        (*v93)(v69, v104);
        v65 = 0;
      }

      v70 = v103;
      (*v59)(v66, v65, 1, v103);
      __swift_destroy_boxed_opaque_existential_1(v105);
      if ((*v60)(v66, 1, v70) == 1)
      {
        sub_224A3311C(v66, &qword_27D6F5AC0, &qword_224DBC780);
      }

      else
      {
        v71 = v70;
        v72 = *v101;
        (*v101)(v99, v66, v71);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_224AD9980(0, *(v61 + 2) + 1, 1, v61);
        }

        v74 = *(v61 + 2);
        v73 = *(v61 + 3);
        if (v74 >= v73 >> 1)
        {
          v61 = sub_224AD9980((v73 > 1), v74 + 1, 1, v61);
        }

        *(v61 + 2) = v74 + 1;
        v72(&v61[((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v74], v99, v103);
      }

      v57 += 40;
      --v34;
    }

    while (v34);
  }

  if (qword_2813515D0 != -1)
  {
    goto LABEL_42;
  }

LABEL_38:
  v75 = sub_224DAB258();
  __swift_project_value_buffer(v75, qword_281364F40);
  v76 = v102;

  v77 = sub_224DAB228();
  v78 = sub_224DAF2A8();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v105[0] = v80;
    *v79 = 136446210;
    v81 = MEMORY[0x22AA5D380](v76, v104);
    v83 = sub_224A33F74(v81, v82, v105);

    *(v79 + 4) = v83;
    _os_log_impl(&dword_224A2F000, v77, v78, "Requesting reload of local icons for replication: %{public}s", v79, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v80);
    MEMORY[0x22AA5EED0](v80, -1, -1);
    MEMORY[0x22AA5EED0](v79, -1, -1);
  }

  swift_getObjectType();
  sub_224DA9CF8();

  return result;
}

void sub_224C64DB0(uint64_t *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B00, &unk_224DB9AB0);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v85 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v76 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v78 = *(v10 - 1);
  MEMORY[0x28223BE20](v10, v11);
  v84 = v76 - v12;
  v13 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v81 = v9;
    v16 = MEMORY[0x277D84F90];
    v88 = MEMORY[0x277D84F90];
    v17 = *(v13 + 16);
    if (v17)
    {
      v18 = v13 + 32;
      do
      {
        sub_224A3317C(v18, v87);
        __swift_project_boxed_opaque_existential_1(v87, v87[3]);
        v19 = sub_224DAE338();
        if ([v19 isRemote])
        {

          __swift_destroy_boxed_opaque_existential_1(v87);
        }

        else
        {
          v20 = __swift_destroy_boxed_opaque_existential_1(v87);
          MEMORY[0x22AA5D350](v20);
          if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_224DAF038();
          }

          sub_224DAF078();
          v16 = v88;
        }

        v18 += 40;
        --v17;
      }

      while (v17);
    }

    if (v16 >> 62)
    {
LABEL_43:
      v82 = sub_224DAF838();
      if (v82)
      {
LABEL_12:
        if (qword_2813515D0 != -1)
        {
          swift_once();
        }

        v21 = sub_224DAB258();
        v22 = __swift_project_value_buffer(v21, qword_281364F40);

        v76[2] = v22;
        v23 = sub_224DAB228();
        v24 = sub_224DAF2A8();

        v25 = os_log_type_enabled(v23, v24);
        v77 = v10;
        v83 = v16;
        if (v25)
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v87[0] = v27;
          *v26 = 136446210;
          v28 = sub_224DAF538();
          v29 = MEMORY[0x22AA5D380](v16, v28);
          v31 = sub_224A33F74(v29, v30, v87);
          v16 = v83;

          *(v26 + 4) = v31;
          v10 = v77;
          _os_log_impl(&dword_224A2F000, v23, v24, "Requesting deletion of extensions: %{public}s", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v27);
          MEMORY[0x22AA5EED0](v27, -1, -1);
          MEMORY[0x22AA5EED0](v26, -1, -1);
        }

        sub_224C5E21C(v16);
        v76[1] = v15;
        v76[0] = 0;

        v32 = 0;
        v79 = v16 & 0xFFFFFFFFFFFFFF8;
        v80 = v16 & 0xC000000000000001;
        v15 = (v78 + 48);
        v33 = (v78 + 32);
        v86 = MEMORY[0x277D84F90];
        v34 = &qword_27D6F4B00;
        v35 = v10;
        do
        {
          if (v80)
          {
            v37 = MEMORY[0x22AA5DCC0](v32, v16);
            v16 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              goto LABEL_41;
            }
          }

          else
          {
            if (v32 >= *(v79 + 16))
            {
              goto LABEL_42;
            }

            v37 = *(v16 + 8 * v32 + 32);
            v16 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
              goto LABEL_43;
            }
          }

          v38 = v37;
          v10 = v34;
          v39 = v85;
          sub_224DAF4E8();
          v40 = v39;
          v34 = v10;
          v41 = v81;
          sub_224A44E4C(v40, v81, v10, &unk_224DB9AB0);

          if ((*v15)(v41, 1, v35) == 1)
          {
            sub_224A3311C(v41, v10, &unk_224DB9AB0);
          }

          else
          {
            v42 = *v33;
            (*v33)(v84, v41, v35);
            v43 = v86;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v43 = sub_224AD99A8(0, v43[2] + 1, 1, v43);
            }

            v45 = v43[2];
            v44 = v43[3];
            v86 = v43;
            if (v45 >= v44 >> 1)
            {
              v86 = sub_224AD99A8((v44 > 1), v45 + 1, 1, v86);
            }

            v46 = v86;
            v86[2] = v45 + 1;
            v35 = v77;
            v42(&v46[((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v45], v84, v77);
            v34 = v10;
          }

          ++v32;
          v36 = v16 == v82;
          v16 = v83;
        }

        while (!v36);
        v47 = v35;

        v48 = v86;

        v49 = sub_224DAB228();
        v50 = sub_224DAF2A8();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v87[0] = v52;
          *v51 = 136446210;
          v53 = MEMORY[0x22AA5D380](v48, v35);
          v55 = sub_224A33F74(v53, v54, v87);

          *(v51 + 4) = v55;
          _os_log_impl(&dword_224A2F000, v49, v50, "Requesting deletion of icons for: %{public}s", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v52);
          MEMORY[0x22AA5EED0](v52, -1, -1);
          MEMORY[0x22AA5EED0](v51, -1, -1);
        }

        v56 = v76[0];
        sub_224C5F0E8(v48);
        if (v56)
        {

          v57 = v56;
          v58 = sub_224DAB228();
          v59 = sub_224DAF288();

          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            v87[0] = v62;
            *v60 = 136446466;
            v63 = MEMORY[0x22AA5D380](v48, v35);
            v65 = sub_224A33F74(v63, v64, v87);

            *(v60 + 4) = v65;
            v47 = v77;
            *(v60 + 12) = 2114;
            v66 = v56;
            v67 = _swift_stdlib_bridgeErrorToNSError();
            *(v60 + 14) = v67;
            *v61 = v67;
            _os_log_impl(&dword_224A2F000, v58, v59, "Failed to request deletion icons for: %{public}s - %{public}@", v60, 0x16u);
            sub_224A3311C(v61, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v61, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v62);
            MEMORY[0x22AA5EED0](v62, -1, -1);
            MEMORY[0x22AA5EED0](v60, -1, -1);
          }

          else
          {
          }
        }

        else
        {
        }

        v68 = v86;

        v69 = sub_224DAB228();
        v70 = sub_224DAF2A8();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v87[0] = v72;
          *v71 = 136446210;
          v73 = MEMORY[0x22AA5D380](v68, v47);
          v75 = sub_224A33F74(v73, v74, v87);

          *(v71 + 4) = v75;
          _os_log_impl(&dword_224A2F000, v69, v70, "Removing local icons for: %{public}s", v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v72);
          MEMORY[0x22AA5EED0](v72, -1, -1);
          MEMORY[0x22AA5EED0](v71, -1, -1);
        }

        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_224DA9CE8();

        swift_unknownObjectRelease();
        goto LABEL_45;
      }
    }

    else
    {
      v82 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v82)
      {
        goto LABEL_12;
      }
    }

LABEL_45:
  }
}

void sub_224C65A3C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_224DADDA8();
    v4 = sub_224DADD98();

    sub_224C691B0(v4, v3);
    v6 = v5;

    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = 0;
      v9 = v6 + 32;
      v10 = MEMORY[0x277D84F90];
      while (v8 < *(v6 + 16))
      {
        sub_224A3317C(v9, &v26);
        __swift_project_boxed_opaque_existential_1(&v26, v27);
        v11 = sub_224DAE338();
        v12 = [v11 isRemote];

        if (v12)
        {
          __swift_destroy_boxed_opaque_existential_1(&v26);
        }

        else
        {
          sub_224A36F98(&v26, v25);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v28 = v10;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_224ADA390(0, *(v10 + 16) + 1, 1);
            v10 = v28;
          }

          v15 = *(v10 + 16);
          v14 = *(v10 + 24);
          if (v15 >= v14 >> 1)
          {
            sub_224ADA390((v14 > 1), v15 + 1, 1);
            v10 = v28;
          }

          *(v10 + 16) = v15 + 1;
          sub_224A36F98(v25, v10 + 40 * v15 + 32);
        }

        ++v8;
        v9 += 40;
        if (v7 == v8)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
LABEL_14:

      if (*(v10 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5AD8, &qword_224DBC7E0);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5AE0, &qword_224DBC7E8);
        v17 = *(v16 - 8);
        v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_224DB3100;
        (*(v17 + 104))(v19 + v18, *MEMORY[0x277CF9E08], v16);
        sub_224DACF98();

        v20 = sub_224DACF58();

        v21 = *(v10 + 16);
        v22 = MEMORY[0x277D84F90];
        if (v21)
        {
          *&v25[0] = MEMORY[0x277D84F90];
          sub_224DAF9E8();
          v23 = v10 + 32;
          do
          {
            sub_224A3317C(v23, &v26);
            __swift_project_boxed_opaque_existential_1(&v26, v27);
            sub_224DAE338();
            __swift_destroy_boxed_opaque_existential_1(&v26);
            sub_224DAF9B8();
            sub_224DAF9F8();
            sub_224DAFA08();
            sub_224DAF9C8();
            v23 += 40;
            --v21;
          }

          while (v21);
          v22 = *&v25[0];
        }

        v24 = sub_224A3DADC(v22);

        sub_224C65E30(v24, v20);

        sub_224C64114(v10);
      }

      else
      {
      }

      sub_224C5FB98();
    }
  }
}

uint64_t sub_224C65E30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    result = sub_224DAF838();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(a1 + 16);
    if (!result)
    {
      return result;
    }
  }

  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  v8 = sub_224DAABB8();

  v10 = sub_224C6B7C4(v9, a2, v3, v8);

  if (qword_2813515D0 != -1)
  {
    swift_once();
  }

  v11 = sub_224DAB258();
  __swift_project_value_buffer(v11, qword_281364F40);

  v12 = sub_224DAB228();
  v13 = sub_224DAF2A8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 134349570;
    if ((v10 & 0xC000000000000001) != 0)
    {
      v16 = sub_224DAF838();
    }

    else
    {
      v16 = *(v10 + 16);
    }

    *(v14 + 4) = v16;

    *(v14 + 12) = 2050;
    if (v6)
    {
      v18 = sub_224DAF838();
    }

    else
    {
      v18 = *(a1 + 16);
    }

    *(v14 + 14) = v18;

    *(v14 + 22) = 2082;
    sub_224DAF538();
    sub_224C6BAE4(&unk_2813509A0, 255, MEMORY[0x277CFA140], MEMORY[0x277D85378]);
    v19 = sub_224DAF1C8();
    v21 = sub_224A33F74(v19, v20, &v24);

    *(v14 + 24) = v21;
    _os_log_impl(&dword_224A2F000, v12, v13, "Requesting replication of %{public}ld out of %{public}ld extensions: %{public}s", v14, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x22AA5EED0](v15, -1, -1);
    MEMORY[0x22AA5EED0](v14, -1, -1);
  }

  else
  {
  }

  sub_224C5D31C(v10, v17);
  v23 = v22;

  if (v23 >> 62)
  {
    if (!sub_224DAF838())
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_20:
    sub_224C5D90C(v23);
  }

LABEL_22:
}

double sub_224C66508(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224C66568(v2);
  }

  return result;
}

double sub_224C66568(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v35 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v11 = v13;
    v37 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v14 = a1 + v37;
    v15 = *(v12 + 56);
    v39 = (v12 + 16);
    v36 = (v12 - 8);
    v41 = MEMORY[0x277D84F90];
    v38 = v2;
    v13(v9, a1 + v37, v2);
    while (1)
    {
      sub_224DAA1F8();
      v16 = sub_224DAA048();

      if (v16)
      {
        (*v36)(v9, v2);
      }

      else
      {
        v17 = v12;
        v18 = *v39;
        (*v39)(v40, v9, v2);
        v19 = v41;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = v19;
        v42 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_224ADA350(0, *(v19 + 16) + 1, 1);
          v21 = v42;
        }

        v23 = *(v21 + 16);
        v22 = *(v21 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_224ADA350((v22 > 1), v23 + 1, 1);
          v21 = v42;
        }

        *(v21 + 16) = v23 + 1;
        v41 = v21;
        v24 = v21 + v37 + v23 * v15;
        v2 = v38;
        v18(v24, v40, v38);
        v12 = v17;
      }

      v14 += v15;
      if (!--v10)
      {
        break;
      }

      v11(v9, v14, v2);
    }
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  if (*(v41 + 16))
  {
    if (qword_2813515D0 != -1)
    {
      swift_once();
    }

    v25 = sub_224DAB258();
    __swift_project_value_buffer(v25, qword_281364F40);
    v26 = v41;

    v27 = sub_224DAB228();
    v28 = sub_224DAF2A8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v42 = v30;
      *v29 = 136446210;
      v31 = MEMORY[0x22AA5D380](v26, v2);
      v33 = sub_224A33F74(v31, v32, &v42);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_224A2F000, v27, v28, "Requesting replication of icons for %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x22AA5EED0](v30, -1, -1);
      MEMORY[0x22AA5EED0](v29, -1, -1);
    }

    sub_224C5E930(v26);
  }

  return result;
}

double sub_224C66A9C(char *a1, uint64_t a2, int a3, int a4)
{
  v76 = a1;
  v6 = sub_224DACE38();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v68 - v13;
  v75 = _s15ExtensionChangeOMa(0);
  MEMORY[0x28223BE20](v75, v15);
  v17 = (v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37E8, &qword_224DBD800);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = v68 - v20;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return result;
  }

  v24 = Strong;
  v70 = v11;
  v71 = a3;
  v72 = a4;
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v69 = sub_224DAB258();
  v25 = __swift_project_value_buffer(v69, qword_281365120);
  sub_224A3796C(v76, v21, &qword_27D6F37E8, &qword_224DBD800);
  v26 = sub_224DAB228();
  v27 = sub_224DAF2A8();
  v28 = os_log_type_enabled(v26, v27);
  v74 = v24;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v68[1] = v25;
    v30 = v29;
    v31 = swift_slowAlloc();
    v77 = v31;
    *v30 = 136446210;
    v32 = sub_224C6BCA0();
    v73 = v7;
    v33 = v14;
    v34 = v6;
    v36 = v35;
    sub_224A3311C(v21, &qword_27D6F37E8, &qword_224DBD800);
    v37 = sub_224A33F74(v32, v36, &v77);
    v6 = v34;
    v14 = v33;
    v7 = v73;

    *(v30 + 4) = v37;
    _os_log_impl(&dword_224A2F000, v26, v27, "Received remote extension update %{public}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    v38 = v31;
    v24 = v74;
    MEMORY[0x22AA5EED0](v38, -1, -1);
    MEMORY[0x22AA5EED0](v30, -1, -1);
  }

  else
  {

    sub_224A3311C(v21, &qword_27D6F37E8, &qword_224DBD800);
  }

  sub_224C6BA7C(v76, v17, _s15ExtensionChangeOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v47 = *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5A98, &qword_224DBC300) + 48));
    (*(v7 + 32))(v14, v17, v6);
    if (qword_2813515D0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v69, qword_281364F40);
    v48 = v70;
    v75 = *(v7 + 16);
    v76 = v14;
    v75(v70, v14, v6);
    v49 = v47;
    v50 = sub_224DAB228();
    v51 = sub_224DAF2A8();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v73 = v7;
      v54 = v53;
      *v52 = 138543618;
      v55 = sub_224DACDC8();
      v56 = v48;
      v57 = *(v73 + 8);
      v57(v56, v6);
      *(v52 + 4) = v55;
      *(v52 + 12) = 2114;
      *(v52 + 14) = v49;
      *v54 = v55;
      v54[1] = v49;
      v58 = v49;
      _os_log_impl(&dword_224A2F000, v50, v51, "Received remote extension insert of %{public}@,  %{public}@", v52, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F69F0, &unk_224DB3900);
      swift_arrayDestroy();
      v59 = v54;
      v7 = v73;
      MEMORY[0x22AA5EED0](v59, -1, -1);
      MEMORY[0x22AA5EED0](v52, -1, -1);
    }

    else
    {

      v60 = v48;
      v57 = *(v7 + 8);
      v57(v60, v6);
    }

    __swift_project_boxed_opaque_existential_1((v74 + 312), *(v74 + 336));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F36C0, qword_224DBC830);
    v61 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_224DB3100;
    v75((v62 + v61), v76, v6);
    sub_224BB1A6C(v62);

    swift_setDeallocating();
    v63 = v6;
    v57((v62 + v61), v6);
    swift_deallocClassInstance();
    if (v71)
    {
      if (v72)
      {
        v64 = v49;
LABEL_23:
        v65 = v64;
        __swift_project_boxed_opaque_existential_1((v74 + 312), *(v74 + 336));
        v66 = v76;
        v67 = sub_224DACDC8();
        sub_224BB2A3C(v65, v67);

        v57(v66, v63);

        return result;
      }

      sub_224DAE9C8();
    }

    else if (v72)
    {
      sub_224DAE9D8();
    }

    sub_224DAE9F8();
    v64 = sub_224DAE9A8();
    goto LABEL_23;
  }

  v39 = *v17;
  v40 = sub_224DAB228();
  v41 = sub_224DAF2A8();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138543362;
    *(v42 + 4) = v39;
    *v43 = v39;
    v44 = v39;
    _os_log_impl(&dword_224A2F000, v40, v41, "Received remote extension deletion of %{public}@", v42, 0xCu);
    sub_224A3311C(v43, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v43, -1, -1);
    MEMORY[0x22AA5EED0](v42, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((v24 + 312), *(v24 + 336));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB2780;
  *(inited + 32) = v39;
  v46 = v39;
  sub_224BB36A8(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  return result;
}

uint64_t sub_224C672CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v44 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v44 - v15;
  v17 = _s10IconChangeOMa(0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224C6BA7C(a1, v20, _s10IconChangeOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = a2;
    (*(v5 + 32))(v16, v20, v4);
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v21 = sub_224DAB258();
    v22 = __swift_project_value_buffer(v21, qword_281365120);
    v23 = *(v5 + 16);
    v23(v13, v16, v4);
    v46 = v22;
    v24 = sub_224DAB228();
    v25 = sub_224DAF2A8();
    v26 = os_log_type_enabled(v24, v25);
    v47 = v9;
    v49 = v23;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v48 = v16;
      v28 = v27;
      v29 = swift_slowAlloc();
      v51[0] = v29;
      *v28 = 136446210;
      sub_224A33088(&qword_281351848, &unk_27D6F56A0, &unk_224DB4150, MEMORY[0x277CFA030]);
      v30 = sub_224DAFD28();
      v32 = v31;
      v45 = v5;
      v33 = *(v5 + 8);
      v33(v13, v4);
      v34 = sub_224A33F74(v30, v32, v51);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_224A2F000, v24, v25, "Received remote icon deletion for %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x22AA5EED0](v29, -1, -1);
      v35 = v28;
      v16 = v48;
      MEMORY[0x22AA5EED0](v35, -1, -1);

      v36 = v33;
      v5 = v45;
    }

    else
    {

      v36 = *(v5 + 8);
      v36(v13, v4);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v50 = *(Strong + 168);
      swift_unknownObjectRetain();

      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3548, &unk_224DB3AF0);
      v42 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_224DB3100;
      v49(v43 + v42, v16, v4);
      sub_224DA9CE8();
      v36(v16, v4);
      swift_unknownObjectRelease();
    }

    else
    {
      return (v36)(v16, v4);
    }
  }

  else
  {
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A60, &qword_224DBC810) + 48);
    v38 = sub_224DA9688();
    (*(*(v38 - 8) + 8))(&v20[v37], v38);
    v39 = sub_224DAA618();
    return (*(*(v39 - 8) + 8))(v20, v39);
  }
}

void sub_224C67A0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v79 - v4;
  v94 = sub_224DA9908();
  v86 = *(v94 - 8);
  MEMORY[0x28223BE20](v94, v6);
  v89 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DACE38();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v91 = &v79 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v92 = &v79 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v79 - v21;
  v23 = *(v1 + 200);
  v82 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + 176), v23);
  v24 = sub_224DAD888();
  v80 = v13;

  v83 = sub_224AE9AE8(v25);

  v26 = *(v24 + 16);
  v93 = v8;
  v85 = v24;
  v95 = v5;
  v90 = v26;
  if (v26)
  {
    v27 = v24;
    v28 = 0;
    v88 = v9 + 16;
    v84 = (v9 + 8);
    v87 = (v9 + 32);
    v29 = MEMORY[0x277D84F90];
    while (v28 < *(v27 + 16))
    {
      v30 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v31 = *(v9 + 72);
      (*(v9 + 16))(v22, v27 + v30 + v31 * v28, v8);
      v32 = sub_224DACDC8();
      v33 = [v32 isRemote];

      if (v33)
      {
        v34 = v9;
        v35 = *v87;
        (*v87)(v91, v22, v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v97[0] = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_224ADA6D0(0, *(v29 + 16) + 1, 1);
          v29 = v97[0];
        }

        v38 = *(v29 + 16);
        v37 = *(v29 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_224ADA6D0((v37 > 1), v38 + 1, 1);
          v29 = v97[0];
        }

        *(v29 + 16) = v38 + 1;
        v39 = v29 + v30 + v38 * v31;
        v8 = v93;
        v35(v39, v91, v93);
        v9 = v34;
        v27 = v85;
      }

      else
      {
        (*v84)(v22, v8);
      }

      ++v28;
      v5 = v95;
      if (v90 == v28)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

  v29 = MEMORY[0x277D84F90];
LABEL_13:
  v40 = *(v29 + 16);
  v81 = v9;
  if (v40)
  {
    v41 = v29;
    v42 = v8;
    v90 = *(v9 + 16);
    v91 = (v9 + 16);
    v43 = v41 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v44 = *(v9 + 72);
    v87 = v41;
    v88 = v44;
    v45 = MEMORY[0x277D84F90];
    do
    {
      v47 = v92;
      v90(v92, v43, v42);
      v48 = sub_224DACDC8();
      swift_beginAccess();

      v49 = sub_224DAA058();
      v51 = v50;

      (*(v9 + 8))(v47, v42);
      if (v51)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_224A865C4(0, *(v45 + 2) + 1, 1, v45);
        }

        v53 = *(v45 + 2);
        v52 = *(v45 + 3);
        if (v53 >= v52 >> 1)
        {
          v45 = sub_224A865C4((v52 > 1), v53 + 1, 1, v45);
        }

        *(v45 + 2) = v53 + 1;
        v46 = &v45[16 * v53];
        *(v46 + 4) = v49;
        *(v46 + 5) = v51;
        v42 = v93;
      }

      v43 += v88;
      --v40;
    }

    while (v40);

    v5 = v95;
    v8 = v42;
  }

  else
  {

    v45 = MEMORY[0x277D84F90];
  }

  v54 = MEMORY[0x277D84F90];
  v93 = *(v45 + 2);
  if (v93)
  {
    v55 = 0;
    v56 = (v86 + 48);
    v57 = (v86 + 32);
    v58 = v45 + 40;
    while (v55 < *(v45 + 2))
    {

      sub_224DA9888();

      v59 = v94;
      if ((*v56)(v5, 1, v94) == 1)
      {
        sub_224A3311C(v5, &unk_27D6F5630, &unk_224DB34C0);
      }

      else
      {
        v60 = *v57;
        (*v57)(v89, v5, v59);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_224AD9958(0, *(v54 + 2) + 1, 1, v54);
        }

        v62 = *(v54 + 2);
        v61 = *(v54 + 3);
        if (v62 >= v61 >> 1)
        {
          v54 = sub_224AD9958((v61 > 1), v62 + 1, 1, v54);
        }

        *(v54 + 2) = v62 + 1;
        v60(&v54[((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v62], v89, v94);
        v5 = v95;
      }

      v55 = (v55 + 1);
      v58 += 16;
      if (v93 == v55)
      {
        goto LABEL_35;
      }
    }

LABEL_48:
    __break(1u);
    return;
  }

LABEL_35:

  v63 = sub_224AE9AE8(v54);

  v64 = v83;
  v65 = v85;
  if (*(v83 + 16) <= *(v63 + 16) >> 3)
  {
    goto LABEL_39;
  }

  v66 = sub_224B010F8(v83, v63);

  v63 = *(v66 + 16);
  if (v63)
  {
    while (1)
    {
      v67 = sub_224B0CD48(v63, 0);
      v68 = sub_224B2FC4C(v97, &v67[(*(v86 + 80) + 32) & ~*(v86 + 80)], v63, v66);
      sub_224A3B7E4(v97[0]);
      if (v68 == v63)
      {
        break;
      }

      __break(1u);
LABEL_39:
      v97[0] = v63;
      sub_224AFF564(v64);

      v66 = v97[0];
      v63 = *(v97[0] + 16);
      if (!v63)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
LABEL_40:

    v67 = MEMORY[0x277D84F90];
  }

  v69 = sub_224C5AA38(v67, v65);

  sub_224A3317C(v82 + 312, v97);
  v70 = __swift_project_boxed_opaque_existential_1(v97, v97[3]);
  v71 = *(v69 + 16);
  v72 = v81;
  if (v71)
  {
    v93 = v70;
    v96 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v74 = *(v72 + 16);
    v73 = v72 + 16;
    v94 = v69;
    v95 = v74;
    v75 = v69 + ((*(v73 + 64) + 32) & ~*(v73 + 64));
    v76 = *(v73 + 56);
    v77 = v80;
    do
    {
      (v95)(v77, v75, v8);
      sub_224DACDC8();
      (*(v73 - 8))(v77, v8);
      sub_224DAF9B8();
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      v75 += v76;
      --v71;
    }

    while (v71);

    v78 = v96;
  }

  else
  {

    v78 = MEMORY[0x277D84F90];
  }

  sub_224BB36A8(v78);

  __swift_destroy_boxed_opaque_existential_1(v97);
}

void *sub_224C6831C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD)
  {
    goto LABEL_2;
  }

  v12 = 8 * (v6 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v8 = v12;
LABEL_2:
    MEMORY[0x28223BE20](a1, v8);
    v10 = v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_224C6847C(v10, v7, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v13 = swift_slowAlloc();
  v14 = v2;
  v15 = sub_224C6896C(v13, v7, v3);
  result = MEMORY[0x22AA5EED0](v13, -1, -1);
  if (!v14)
  {
    return v15;
  }

  return result;
}

uint64_t sub_224C6847C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v52 = a2;
  v53 = a1;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3890, &unk_224DB9C30);
  v5 = MEMORY[0x28223BE20](v71, v4);
  v70 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v69 = &v52 - v8;
  v68 = sub_224DA9908();
  v9 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v10);
  v67 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_224DAAF48();
  result = MEMORY[0x28223BE20](v72, v12);
  v65 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v62 = v9;
  v63 = a3;
  v17 = *(a3 + 64);
  v56 = a3 + 64;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v54 = 0;
  v55 = (v18 + 63) >> 6;
  v60 = v9 + 16;
  v61 = v14 + 2;
  v66 = v14;
  v58 = (v9 + 8);
  v59 = v14 + 1;
  while (v20)
  {
    v26 = __clz(__rbit64(v20));
    v64 = (v20 - 1) & v20;
LABEL_12:
    v29 = v26 | (v16 << 6);
    v30 = v63;
    v31 = v65;
    v32 = v66[2];
    v32(v65, v63[6] + v66[9] * v29, v72);
    v33 = v30[7];
    v34 = *(v62 + 72);
    v57 = v29;
    v35 = v33 + v34 * v29;
    v36 = *(v62 + 16);
    v37 = v67;
    v38 = v68;
    v36(v67, v35, v68);
    v39 = v69;
    v40 = v31;
    v41 = v72;
    v32(v69, v40, v72);
    v36((v39 + *(v71 + 48)), v37, v38);
    v42 = v70;
    sub_224A3796C(v39, v70, &qword_27D6F3890, &unk_224DB9C30);
    v43 = sub_224DAAF08();
    v45 = v44;
    v46 = v66[1];
    v46(v42, v41);
    if (v43 == 1852793705 && v45 == 0xE400000000000000)
    {

      v47 = *(v71 + 48);
      sub_224A3311C(v69, &qword_27D6F3890, &unk_224DB9C30);
      v48 = *v58;
      v49 = v70 + v47;
      v50 = v68;
      (*v58)(v49, v68);
      v48(v67, v50);
      result = (v46)(v65, v72);
      v20 = v64;
      goto LABEL_15;
    }

    v21 = sub_224DAFD88();

    v22 = *(v71 + 48);
    sub_224A3311C(v69, &qword_27D6F3890, &unk_224DB9C30);
    v23 = *v58;
    v24 = v70 + v22;
    v25 = v68;
    (*v58)(v24, v68);
    v23(v67, v25);
    result = (v46)(v65, v72);
    v20 = v64;
    if (v21)
    {
LABEL_15:
      *(v53 + ((v57 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v57;
      if (__OFADD__(v54++, 1))
      {
        __break(1u);
        return sub_224B2D094(v53, v52, v54, v63);
      }
    }
  }

  v27 = v16;
  while (1)
  {
    v16 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v16 >= v55)
    {
      return sub_224B2D094(v53, v52, v54, v63);
    }

    v28 = *(v56 + 8 * v16);
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v64 = (v28 - 1) & v28;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_224C6896C(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_224C6847C(result, a2, a3);

    return v6;
  }

  return result;
}

void *sub_224C689E4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v12 = a6(v11, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

unint64_t *sub_224C68AAC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_224C6B358(v10, a2, a3, a4, a6);
    v12 = v11;
    swift_bridgeObjectRelease_n();

    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

uint64_t sub_224C68B84(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, __int128 *a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, uint64_t a21, uint64_t a22)
{
  v39 = a6;
  v40 = a7;
  v45 = a14;
  v46 = a15;
  v41 = a10;
  v42 = a8;
  v43 = a11;
  v44 = a13;
  v50[3] = a17;
  v51 = a19;
  v52 = a20;
  v53 = a21;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
  (*(*(a17 - 8) + 32))(boxed_opaque_existential_1, a2, a17);
  v48 = a18;
  v49 = a22;
  v28 = __swift_allocate_boxed_opaque_existential_1(v47);
  (*(*(a18 - 8) + 32))(v28, a12, a18);
  type metadata accessor for ExtensionReplicationProvider();
  v29 = swift_allocObject();
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v47, v48);
  MEMORY[0x28223BE20](v30, v30);
  v32 = (&v39 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32);
  v34 = *v32;
  *(v29 + 336) = type metadata accessor for RemoteWidgetExtensionService();
  *(v29 + 344) = sub_224C6BAE4(&qword_281353CB0, 255, type metadata accessor for RemoteWidgetExtensionService, &unk_224DB9790);
  *(v29 + 312) = v34;
  *(v29 + 96) = MEMORY[0x277D84FA0];
  *(v29 + 16) = a1;
  sub_224ACFF34(v50, v29 + 24);
  *(v29 + 104) = a3;
  sub_224A36F98(a4, v29 + 112);
  v36 = v39;
  v35 = v40;
  *(v29 + 152) = a5;
  *(v29 + 160) = v36;
  *(v29 + 168) = v35;
  sub_224AB1DE0(v42, (v29 + 176));
  sub_224A36F98(a9, v29 + 224);
  sub_224A36F98(v41, v29 + 264);
  v37 = v44;
  *(v29 + 304) = v43;
  *(v29 + 352) = v37;
  LOBYTE(v37) = v46;
  *(v29 + 360) = v45;
  *(v29 + 361) = v37;
  __swift_destroy_boxed_opaque_existential_1(v47);
  return v29;
}