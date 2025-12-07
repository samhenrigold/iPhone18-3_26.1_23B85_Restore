uint64_t sub_249D60FF0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249D61010(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

double sub_249D61054@<D0>(uint64_t a1@<X8>)
{
  sub_249D60468();
  sub_249D72B44();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

double sub_249D610C0@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 1;
  return result;
}

uint64_t sub_249D610D8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = a1;
  v4 = sub_249D3858C();
  a2[1] = v4;
  a2[2] = &off_281BC0468;
  v5 = type metadata accessor for ObservedSettingsStore();
  v6 = objc_allocWithZone(v5);
  v7 = v3;
  v8 = v4;
  v9 = [v6 init];
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  [*&v8[OBJC_IVAR____TtCE12DrawingBoardCSo7FBScene8Observer_settingsObservers] addObject_];
  a2[5] = sub_249D61C64;
  a2[6] = v10;
  a2[7] = v9;
  v11 = objc_allocWithZone(v5);
  v12 = v8;
  v13 = [v11 init];
  v14 = swift_allocObject();
  *(v14 + 16) = v7;
  v15 = *&v12[OBJC_IVAR____TtCE12DrawingBoardCSo7FBScene8Observer_clientSettingsObservers];
  v16 = v13;
  [v15 addObject_];

  a2[8] = sub_249D61C6C;
  a2[9] = v14;
  a2[10] = v16;
  result = swift_allocObject();
  *(result + 16) = v12;
  a2[3] = sub_249D61C74;
  a2[4] = result;
  return result;
}

void sub_249D61270(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = a1;
  v4 = sub_249D3FAB0();
  a2[1] = v4;
  a2[2] = &off_281BC05C8;
  v5 = type metadata accessor for ObservedSettingsStore();
  v6 = objc_allocWithZone(v5);
  v7 = v3;
  v8 = v4;
  v9 = [v6 init];
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  [*&v8[OBJC_IVAR____TtCE12DrawingBoardCSo8FBSScene8Observer_settingsObservers] addObject_];
  a2[5] = sub_249D61C64;
  a2[6] = v10;
  a2[7] = v9;
  v11 = [objc_allocWithZone(v5) init];
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  v13 = *&v8[OBJC_IVAR____TtCE12DrawingBoardCSo8FBSScene8Observer_clientSettingsObservers];
  v14 = v11;
  [v13 addObject_];

  a2[8] = sub_249D61C6C;
  a2[9] = v12;
  a2[10] = v14;
  a2[3] = sub_249D6155C;
  a2[4] = 0;
}

uint64_t ObservedScene.subscript.getter(uint64_t *a1, uint64_t a2)
{
  v4 = *(v2 + *(a2 + 28) + 8);
  v5 = *a1;
  ObjectType = swift_getObjectType();
  return (*(v4 + 16))(a1, *(v5 + *MEMORY[0x277D84DE8] + 8), ObjectType, v4);
}

id ObservedScene.settings.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 36));
  v4 = v3[1];
  v6 = v3[2];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v6;

  return v6;
}

id ObservedScene.clientSettings.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 40));
  v4 = v3[1];
  v6 = v3[2];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v6;

  return v6;
}

uint64_t sub_249D615A8(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtCE12DrawingBoardCSo7FBScene8Observer_processToken;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 4;
  }

  v3 = Strong;
  v4 = *(v1 + 8);
  v5 = Strong + OBJC_IVAR____TtC12DrawingBoard14ProcessMonitor_state;
  os_unfair_lock_lock((Strong + OBJC_IVAR____TtC12DrawingBoard14ProcessMonitor_state));
  v6 = sub_249D38884(v4, *(v5 + 16));
  if (v6)
  {
    v7 = v6;
    v8 = sub_249D6DA54();
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_unlock(v5);

  return v8;
}

void sub_249D6164C(uint64_t a1)
{
  v2 = *v1;
  sub_249D38A20(0, &qword_27EF1B0A0, 0x277CF0B58);
  sub_249D38A68();
  v3 = sub_249D732C4();
  [v2 sendActions_];
}

void sub_249D6172C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getExtendedExistentialTypeMetadata_unique();
    sub_249D61B84();
    if (v2 <= 0x3F)
    {
      sub_249D61BD4(319, &qword_27EF1BE58, &qword_27EF1BE60, 0x277D0ADD0);
      if (v3 <= 0x3F)
      {
        sub_249D61BD4(319, &qword_27EF1BE68, &qword_27EF1BE70, 0x277D0ADB0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_249D6183C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 24;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_249D61990(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 24);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

unint64_t sub_249D61B84()
{
  result = qword_27EF1BE50;
  if (!qword_27EF1BE50)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27EF1BE50);
  }

  return result;
}

void sub_249D61BD4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    v6 = sub_249D38A20(255, a3, a4);
    v9 = type metadata accessor for ObservedSettings(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_249D61C2C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t SceneActivationPolicyError.sceneIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SceneActivationPolicyError.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_249D734E4();
  MEMORY[0x24C201340](0xD000000000000015, 0x8000000249D7B5E0);
  MEMORY[0x24C201340](v1, v2);
  MEMORY[0x24C201340](8250, 0xE200000000000000);
  swift_getErrorValue();
  sub_249D73694();
  return 0;
}

uint64_t sub_249D61D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [ObjCClassFromMetadata activate];
  v12[4] = sub_249D620C8;
  v12[5] = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_249D62480;
  v12[3] = &block_descriptor_3;
  v8 = _Block_copy(v12);

  LOBYTE(a1) = [ObjCClassFromMetadata addCommitHandler:v8 forPhase:a1];
  _Block_release(v8);
  if ((a1 & 1) == 0)
  {
    v9 = [ObjCClassFromMetadata currentPhase];
    sub_249D624DC();
    swift_allocError();
    *v10 = v9;
    swift_willThrow();
  }
}

uint64_t sub_249D61EFC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249D61F34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF1C1A0, &qword_249D76580);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  sub_249D73274();
  sub_249D73264();
  v5 = MEMORY[0x277D85700];
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_249D73294();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);

  v7 = sub_249D73264();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v5;
  v8[4] = a1;
  sub_249D62214(0, 0, v4, &unk_249D78EA8, v8);
}

uint64_t sub_249D620D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_249D73274();
  *(v4 + 48) = sub_249D73264();
  v6 = sub_249D73254();

  return MEMORY[0x2822009F8](sub_249D62168, v6, v5);
}

uint64_t sub_249D62168()
{
  v1 = *(v0 + 40);

  swift_beginAccess();
  v2 = *(v1 + 16);

  v2(v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_249D62214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF1C1A0, &qword_249D76580);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_249D4493C(a3, v22 - v9);
  v11 = sub_249D73294();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_249D62624(v10);
  }

  else
  {
    sub_249D73284();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_249D73254();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_249D73164() + 32;

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

      sub_249D62624(a3);

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

  sub_249D62624(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_249D62480(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_249D624DC()
{
  result = qword_27EF1BE78;
  if (!qword_27EF1BE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BE78);
  }

  return result;
}

uint64_t sub_249D62530()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249D62570(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_249D416E0;

  return sub_249D620D0(a1, v4, v5, v6);
}

uint64_t sub_249D62624(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF1C1A0, &qword_249D76580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s13ScheduleErrorOwet(uint64_t a1, int a2)
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

uint64_t _s13ScheduleErrorOwst(uint64_t result, int a2, int a3)
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

void FBScene.setContent<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LocalSceneExtension();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for LocalSceneExtension.HostComponent();
  if ([v4 componentForExtension:ObjCClassFromMetadata ofClass:swift_getObjCClassFromMetadata()])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF1B950, &unk_249D778E0);
    swift_dynamicCast();
    sub_249D52024(a1, a2, a3, a4);
  }
}

Swift::Void __swiftcall LocalWindowScene._readySceneForConnection()()
{
  v1 = v0;
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel__readySceneForConnection);
  v2 = [v0 _FBSScene];
  v3 = [objc_allocWithZone(MEMORY[0x277D75DA0]) initWithWindowScene_];
  [v3 makeKeyAndVisible];
  v4 = FBSScene.contentBuilder.getter();
  v4();
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BE80, qword_249D78F10));
  v6 = sub_249D72BD4();
  [v3 setRootViewController_];

  v7 = objc_opt_self();
  v8 = v3;
  v9 = [v7 blueColor];
  [v8 setBackgroundColor_];

  v10 = *&v1[OBJC_IVAR____TtC12DrawingBoard16LocalWindowScene_myWindow];
  *&v1[OBJC_IVAR____TtC12DrawingBoard16LocalWindowScene_myWindow] = v8;
}

id LocalWindowScene.__allocating_init(session:connectionOptions:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithSession:a1 connectionOptions:a2];

  return v5;
}

id LocalWindowScene.init(session:connectionOptions:)(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC12DrawingBoard16LocalWindowScene_myWindow] = 0;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithSession_connectionOptions_, a1, a2);

  return v6;
}

id sub_249D62C64(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, *a1);
}

uint64_t SceneViewHostedContent.init(message:headerContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  *a7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BE90, &qword_249D78F90);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for SceneViewHostedContent(0, a5, a6, v14);
  v16 = a7 + v15[9];
  result = swift_getKeyPath();
  *v16 = result;
  v16[88] = 0;
  v18 = (a7 + v15[10]);
  *v18 = a3;
  v18[1] = a4;
  v19 = (a7 + v15[11]);
  *v19 = a1;
  v19[1] = a2;
  return result;
}

void sub_249D62DD0(uint64_t a1)
{
  swift_getObjectType();
  v2 = v1 + OBJC_IVAR____TtC12DrawingBoard21ObservedSettingsStore_storage;
  os_unfair_lock_lock(v2);
  sub_249D64A78((v2 + 8));
  os_unfair_lock_unlock(v2);
}

uint64_t sub_249D62E40(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_249D730B4();
}

uint64_t sub_249D63010@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_249D72B14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BE90, &qword_249D78F90);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_249D65698(v2, &v14 - v9, &qword_27EF1BE90, &qword_249D78F90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_249D72944();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_249D73314();
    v13 = sub_249D72DB4();
    sub_249D728C4();

    sub_249D72B04();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_249D63210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_249D72B14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + *(a1 + 36));
  *&v25[9] = *(v9 + 73);
  v10 = v9[3];
  v24[2] = v9[2];
  v24[3] = v10;
  *v25 = v9[4];
  v11 = v9[1];
  v24[0] = *v9;
  v24[1] = v11;
  if (v25[24])
  {
    v12 = v9[2];
    v13 = v9[3];
    *(a2 + 32) = v12;
    *(a2 + 48) = v13;
    v14 = v9[4];
    *(a2 + 64) = v14;
    *(a2 + 80) = *(v9 + 10);
    v15 = *v9;
    v16 = v9[1];
    *a2 = *v9;
    *(a2 + 16) = v16;
    v17 = *(v9 + 73);
    v22[3] = v13;
    v23[0] = v14;
    *(v23 + 9) = v17;
    v22[1] = v16;
    v22[2] = v12;
    v22[0] = v15;
    return sub_249D65698(v22, &v21, &qword_27EF1B658, qword_249D77060);
  }

  else
  {

    sub_249D73314();
    v19 = sub_249D72DB4();
    sub_249D728C4();

    sub_249D72B04();
    swift_getAtKeyPath();
    sub_249D44B88(v24, &qword_27EF1B650, &unk_249D791B0);
    return (*(v6 + 8))(v8, v5);
  }
}

void sub_249D633F4(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  sub_249D63210(a1, v12);
  if (!v12[0])
  {
    goto LABEL_5;
  }

  v4 = v12[5];
  v3 = v12[6];
  v5 = v12[7];

  v6 = v5;
  v7 = sub_249D44B88(v12, &qword_27EF1B658, qword_249D77060);
  v8 = v4(v7);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

LABEL_5:
    v11 = 0;
    v9 = 0;
    v6 = 0;
    goto LABEL_6;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = v3;
  *(v9 + 32) = v6;
  v10 = v6;
  v11 = sub_249D6563C;
LABEL_6:
  *a2 = v11;
  a2[1] = v9;
  a2[2] = v6;
}

uint64_t SceneViewHostedContent.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v4 = sub_249D72944();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v50 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = &v40 - v7;
  v41 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BE98, &qword_249D78FD0);
  swift_getTupleTypeMetadata3();
  sub_249D730A4();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_249D72FA4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BEA0, &qword_249D78FD8);
  v12 = sub_249D72A74();
  v43 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v15 = sub_249D72A74();
  v47 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BEA8, &qword_249D78FE0);
  v44 = v15;
  v18 = sub_249D72A74();
  v49 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v45 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v46 = &v40 - v21;
  v22 = *(a1 + 24);
  v54 = v41;
  v55 = v22;
  v56 = v2;
  sub_249D72BC4();
  sub_249D72F94();
  sub_249D72F04();
  v23 = swift_getWitnessTable();
  sub_249D72E84();

  (*(v9 + 8))(v11, v8);
  sub_249D73054();
  v24 = sub_249D3C4C8(&qword_27EF1BEB0, &qword_27EF1BEA0, &qword_249D78FD8, MEMORY[0x277CE0868]);
  v62 = v23;
  v63 = v24;
  v25 = swift_getWitnessTable();
  sub_249D72EC4();
  (*(v43 + 8))(v14, v12);
  v26 = v48;
  sub_249D63010(v48);
  v27 = v50;
  v28 = v51;
  v29 = v52;
  (*(v51 + 104))(v50, *MEMORY[0x277CDF3C0], v52);
  v30 = sub_249D72934();
  v31 = *(v28 + 8);
  v31(v27, v29);
  v31(v26, v29);
  if (v30)
  {
    v32 = sub_249D72F04();
  }

  else
  {
    v32 = sub_249D72F34();
  }

  v61 = v32;
  sub_249D72DC4();
  v59 = v25;
  v60 = MEMORY[0x277CDFC60];
  v33 = v44;
  v34 = swift_getWitnessTable();
  v35 = v45;
  sub_249D72E44();

  (*(v47 + 8))(v17, v33);
  v36 = sub_249D3C4C8(&qword_27EF1BEB8, &qword_27EF1BEA8, &qword_249D78FE0, MEMORY[0x277CE0728]);
  v57 = v34;
  v58 = v36;
  swift_getWitnessTable();
  v37 = v46;
  sub_249D5A878();
  v38 = *(v49 + 8);
  v38(v35, v18);
  sub_249D5A878();
  return (v38)(v37, v18);
}

uint64_t sub_249D63C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BF58, &qword_249D79090);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v39 - v9;
  v11 = *(a2 - 8);
  v12 = MEMORY[0x28223BE20](v8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  sub_249D73274();
  v46 = sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = type metadata accessor for SceneViewHostedContent(0, a2, a3, v17);
  (*(a1 + *(v18 + 40)))();
  sub_249D5A878();
  v19 = *(v11 + 8);
  v43 = v11 + 8;
  v44 = v19;
  v19(v14, a2);
  v20 = (a1 + *(v18 + 44));
  v21 = v20[1];
  *&v82 = *v20;
  *(&v82 + 1) = v21;
  sub_249D65340();

  v22 = sub_249D72E14();
  v42 = v16;
  v24 = v23;
  LOBYTE(v21) = v25;
  v48 = a3;
  v26 = sub_249D72DD4();
  (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
  sub_249D72DE4();
  v47 = v14;
  sub_249D44B88(v10, &qword_27EF1BF58, &qword_249D79090);
  v27 = sub_249D72DF4();
  v39 = v28;
  v40 = v29;
  v41 = v30;

  sub_249D65394(v22, v24, v21 & 1);

  v31 = sub_249D72BC4();
  LOBYTE(v53) = 1;
  sub_249D641F4(a2, v48, &v82);
  v74 = v86;
  v75 = v87;
  v76 = v88;
  v77 = v89;
  v70 = v82;
  v71 = v83;
  v72 = v84;
  v73 = v85;
  v78[0] = v82;
  v78[1] = v83;
  v78[2] = v84;
  v78[3] = v85;
  v78[4] = v86;
  v78[5] = v87;
  v78[6] = v88;
  v78[7] = v89;
  sub_249D65698(&v70, &v79, &qword_27EF1BF68, &qword_249D79098);
  sub_249D44B88(v78, &qword_27EF1BF68, &qword_249D79098);
  *(&v69[4] + 7) = v74;
  *(&v69[5] + 7) = v75;
  *(&v69[6] + 7) = v76;
  *(&v69[7] + 7) = v77;
  *(v69 + 7) = v70;
  *(&v69[1] + 7) = v71;
  *(&v69[2] + 7) = v72;
  *(&v69[3] + 7) = v73;
  LOBYTE(v22) = v53;
  v32 = sub_249D72F24();
  v33 = sub_249D72DC4();
  *(&v80[5] + 1) = v69[5];
  *(&v80[6] + 1) = v69[6];
  *(&v80[7] + 1) = v69[7];
  *(&v80[1] + 1) = v69[1];
  *(&v80[2] + 1) = v69[2];
  *(&v80[3] + 1) = v69[3];
  *(&v80[4] + 1) = v69[4];
  v79 = v31;
  LOBYTE(v80[0]) = v22;
  *(v80 + 1) = v69[0];
  *&v80[8] = *(&v69[7] + 15);
  *(&v80[8] + 1) = v32;
  v81 = v33;
  v34 = v47;
  v35 = v42;
  (*(v11 + 16))(v47, v42, a2);
  v36 = v39;
  v64 = v27;
  v65 = v39;
  LOBYTE(v22) = v40 & 1;
  v66 = v40 & 1;
  v67 = v41;
  v68[0] = v34;
  v68[1] = &v64;
  v61 = v80[7];
  v62 = v80[8];
  v63 = v81;
  v57 = v80[3];
  v58 = v80[4];
  v59 = v80[5];
  v60 = v80[6];
  v53 = v79;
  v54 = v80[0];
  v55 = v80[1];
  v56 = v80[2];
  v68[2] = &v53;
  sub_249D653A4(v27, v39, v40 & 1);

  sub_249D65698(&v79, &v82, &qword_27EF1BE98, &qword_249D78FD0);
  v52[0] = a2;
  v52[1] = MEMORY[0x277CE0BD8];
  v52[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BE98, &qword_249D78FD0);
  v49 = v48;
  v50 = MEMORY[0x277CE0BC8];
  v51 = sub_249D653B4();
  sub_249D62E40(v68, 3uLL, v52);
  sub_249D44B88(&v79, &qword_27EF1BE98, &qword_249D78FD0);
  sub_249D65394(v27, v36, v22);

  v37 = v44;
  v44(v35, a2);
  v90 = v61;
  v91 = v62;
  v92 = v63;
  v86 = v57;
  v87 = v58;
  v89 = v60;
  v88 = v59;
  v82 = v53;
  v83 = v54;
  v84 = v55;
  v85 = v56;
  sub_249D44B88(&v82, &qword_27EF1BE98, &qword_249D78FD0);
  sub_249D65394(v64, v65, v66);

  v37(v47, a2);
}

uint64_t sub_249D641F4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v76 = a3;
  v5 = sub_249D72B94();
  MEMORY[0x28223BE20](v5 - 8);
  v85 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_249D73274();
  v80 = sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = type metadata accessor for SceneViewHostedContent(0, a1, a2, v7);
  sub_249D63210(v8, &v92);
  v100 = v94;
  v101 = v95;
  v102 = v96;
  v103 = v97;
  v98 = v92;
  v99 = v93;
  if (v92)
  {
    v9 = v99;
    KeyPath = swift_getKeyPath();
    ObjectType = swift_getObjectType();
    (*(v9 + 16))(v86, KeyPath, MEMORY[0x277D837D0], ObjectType, v9);

    sub_249D44B88(&v98, &qword_27EF1B658, qword_249D77060);
    v12 = v86[0];
    v13 = v86[1];
  }

  else
  {
    v13 = 0xE300000000000000;
    v12 = 7104878;
  }

  *&v92 = v12;
  *(&v92 + 1) = v13;
  sub_249D65340();
  v83 = sub_249D72E14();
  v82 = v14;
  v79 = v15;
  v84 = v16;
  sub_249D633F4(v8, &v92);
  v17 = v92;
  if (v92)
  {
    v18 = v93;
    v19 = *(&v92 + 1);
    v20 = swift_getKeyPath();
    v21 = v17();
    [v21 frame];
    v77 = v22;
    v78 = v23;
    v75 = v24;
    v81 = v25;
    sub_249D62DD0(v20);

    sub_249D654CC(v17, v19, v18);
    *&v27 = v75;
    *&v26 = v77;
    *(&v26 + 1) = v78;
    *(&v27 + 1) = v81;
  }

  else
  {
    v26 = 0uLL;
    v27 = 0uLL;
  }

  v92 = v26;
  v93 = v27;
  LOBYTE(v94) = v17 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BBF0, &qword_249D782A0);
  *&v92 = sub_249D73154();
  *(&v92 + 1) = v28;
  *&v81 = sub_249D72E14();
  *&v77 = v29;
  LODWORD(v75) = v30;
  *&v78 = v31;
  sub_249D633F4(v8, &v92);
  v32 = v92;
  if (v92)
  {
    v33 = v93;
    v34 = *(&v92 + 1);
    v35 = swift_getKeyPath();
    v36 = v32();
    [v36 interfaceOrientation];
    sub_249D62DD0(v35);

    sub_249D654CC(v32, v34, v33);
  }

  v37 = BSInterfaceOrientationDescription();
  v38 = sub_249D73144();
  v40 = v39;

  *&v92 = v38;
  *(&v92 + 1) = v40;
  v41 = sub_249D72E14();
  v73 = v42;
  v44 = v43;
  v74 = v45;
  sub_249D72B84();
  sub_249D72B74();
  sub_249D633F4(v8, &v92);
  v46 = v92;
  if (v92)
  {
    v47 = v93;
    v48 = *(&v92 + 1);
    v49 = swift_getKeyPath();
    v50 = v46();
    [v50 userInterfaceStyle];
    sub_249D62DD0(v49);

    sub_249D654CC(v46, v48, v47);
  }

  sub_249D72B64();

  sub_249D72B74();
  sub_249D72BA4();
  v51 = sub_249D72E04();
  v71 = v51;
  v72 = v52;
  v85 = v53;
  v54 = v79 & 1;
  LOBYTE(v92) = v79 & 1;
  v55 = v75 & 1;
  LOBYTE(v86[0]) = v75 & 1;
  v56 = v44 & 1;
  v91 = v44 & 1;
  v90 = v79 & 1;
  v89 = v75 & 1;
  v88 = v44 & 1;
  v58 = v57 & 1;
  v87 = v57 & 1;
  v59 = v75 & 1;
  v60 = v44 & 1;
  v61 = v83;
  v62 = v76;
  *v76 = v83;
  v63 = v61;
  v64 = v82;
  v62[1] = v82;
  *(v62 + 16) = v54;
  v65 = v81;
  v62[3] = v84;
  v62[4] = v65;
  v66 = v77;
  v62[5] = v77;
  *(v62 + 48) = v59;
  v62[7] = v78;
  v62[8] = v41;
  v67 = v73;
  v62[9] = v73;
  *(v62 + 80) = v60;
  v62[11] = v74;
  v62[12] = v51;
  v62[13] = v52;
  *(v62 + 112) = v57 & 1;
  v62[15] = v53;
  sub_249D653A4(v63, v64, v54);

  sub_249D653A4(v65, v66, v55);

  sub_249D653A4(v41, v67, v56);

  v68 = v71;
  v69 = v72;
  sub_249D653A4(v71, v72, v58);

  sub_249D65394(v68, v69, v58);

  sub_249D65394(v41, v67, v91);

  sub_249D65394(v81, v66, v86[0]);

  sub_249D65394(v83, v82, v92);
}

void sub_249D64A1C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_249D73144();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_249D64A78(void *a1)
{
  result = sub_249D733C4();
  if (v3)
  {
    sub_249D65340();
    v4 = sub_249D733A4();

    if (v4[2])
    {
      v6 = v4[4];
      v5 = v4[5];

      if (*(*a1 + 16) && (sub_249D68D54(v6, v5), (v7 & 1) != 0))
      {
      }

      else
      {
        type metadata accessor for OpaqueObservable(0);
        v8 = swift_allocObject();
        sub_249D728A4();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v10 = *a1;
        sub_249D6A420(v8, v6, v5, isUniquelyReferenced_nonNull_native);
        swift_bridgeObjectRelease_n();
        *a1 = v10;
      }

      swift_getKeyPath();
      sub_249D655A4();
      sub_249D72874();
    }

    else
    {
    }
  }

  return result;
}

double sub_249D64C24@<D0>(uint64_t a1@<X8>)
{
  EnvironmentValues.hostingScene.getter(v5);
  v2 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_249D64CA4(uint64_t a1)
{
  v2 = sub_249D72944();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_249D72AC4();
}

double sub_249D64D88@<D0>(uint64_t a1@<X8>)
{
  EnvironmentValues.hostingScene.getter(v5);
  v2 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  return result;
}

void sub_249D64E34(uint64_t a1)
{
  sub_249D6508C(319);
  if (v1 <= 0x3F)
  {
    sub_249D650E4(319);
    if (v2 <= 0x3F)
    {
      sub_249D61B84();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_249D64EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EF1BEC0, qword_249D79040);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_249D64FC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EF1BEC0, qword_249D79040);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

void sub_249D6508C(uint64_t a1)
{
  if (!qword_27EF1BF48)
  {
    sub_249D72944();
    v1 = sub_249D72954();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF1BF48);
    }
  }
}

void sub_249D650E4(uint64_t a1)
{
  if (!qword_27EF1BF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B658, qword_249D77060);
    v1 = sub_249D72954();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF1BF50);
    }
  }
}

uint64_t sub_249D65148(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BE98, &qword_249D78FD0);
  swift_getTupleTypeMetadata3();
  sub_249D730A4();
  swift_getWitnessTable();
  sub_249D72FA4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BEA0, &qword_249D78FD8);
  sub_249D72A74();
  sub_249D72A74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BEA8, &qword_249D78FE0);
  sub_249D72A74();
  swift_getWitnessTable();
  sub_249D3C4C8(&qword_27EF1BEB0, &qword_27EF1BEA0, &qword_249D78FD8, MEMORY[0x277CE0868]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_249D3C4C8(&qword_27EF1BEB8, &qword_27EF1BEA8, &qword_249D78FE0, MEMORY[0x277CE0728]);
  return swift_getWitnessTable();
}

unint64_t sub_249D65340()
{
  result = qword_27EF1BF60;
  if (!qword_27EF1BF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BF60);
  }

  return result;
}

uint64_t sub_249D65394(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_249D653A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_249D653B4()
{
  result = qword_27EF1BF70;
  if (!qword_27EF1BF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BE98, &qword_249D78FD0);
    sub_249D3C4C8(&qword_27EF1BF78, &qword_27EF1BF80, qword_249D790A0, MEMORY[0x277CE1198]);
    sub_249D3C4C8(&qword_27EF1BEB8, &qword_27EF1BEA8, &qword_249D78FE0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BF70);
  }

  return result;
}

id sub_249D65498@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 userInterfaceStyle];
  *a2 = result;
  return result;
}

void sub_249D654CC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
  }
}

id sub_249D6551C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 interfaceOrientation];
  *a2 = result;
  return result;
}

id sub_249D6555C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 frame];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

unint64_t sub_249D655A4()
{
  result = qword_27EF1BF88;
  if (!qword_27EF1BF88)
  {
    type metadata accessor for OpaqueObservable(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BF88);
  }

  return result;
}

uint64_t sub_249D655FC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249D6563C()
{
  v1 = (*(v0 + 16))();
  v2 = objc_opt_self();

  return MEMORY[0x2821FE938](v1, v2, 0, 0, 0);
}

uint64_t sub_249D65698(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_249D65700()
{
  v1 = OBJC_IVAR____TtC12DrawingBoard16OpaqueObservable___observationRegistrar;
  v2 = sub_249D728B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for OpaqueObservable(uint64_t a1)
{
  result = qword_27EF1BF98;
  if (!qword_27EF1BF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249D657F0(uint64_t a1)
{
  result = sub_249D728B4();
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

uint64_t sub_249D658C8(void *a1, uint64_t a2)
{
  swift_getObjectType();
  if ((a2 & 0xC000000000000001) != 0)
  {

    sub_249D73434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B6C0, &qword_249D79340);
    result = sub_249D732E4();
    a2 = v24;
    v4 = v25;
    v5 = v26;
    v6 = v27;
    v7 = v28;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v4 = a2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a2 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  while (a2 < 0)
  {
    if (!sub_249D73474())
    {
      return sub_249D39114(a2);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B6C0, &qword_249D79340);
    swift_dynamicCast();
    v14 = v6;
    v15 = v7;
    if (!v23)
    {
      return sub_249D39114(a2);
    }

LABEL_19:
    sub_249D733D4();
    result = swift_isClassType();
    if ((result & 1) == 0)
    {
      goto LABEL_25;
    }

    sub_249D733C4();
    v18 = v17;

    if (v18)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      if ([swift_getObjCClassFromMetadata() isSubclassOfClass_])
      {
        v20 = sub_249D73134();

        v21 = NSSelectorFromString(v20);

        [a1 addPropagatedProperty_];
      }

      else
      {
      }
    }

    v6 = v14;
    v7 = v15;
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_15:
    v15 = (v13 - 1) & v13;
    v16 = *(*(a2 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
      return sub_249D39114(a2);
    }

    goto LABEL_19;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      return sub_249D39114(a2);
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void *sub_249D65B7C(void *a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 0xC000000000000001) != 0)
  {

    sub_249D73434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B6C0, &qword_249D79340);
    result = sub_249D732E4();
    v2 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    v7 = v27;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v4 = a2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a2 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  while (v2 < 0)
  {
    if (!sub_249D73474())
    {
      return sub_249D39114(v2);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B6C0, &qword_249D79340);
    swift_dynamicCast();
    v14 = v6;
    v15 = v7;
    if (!v22)
    {
      return sub_249D39114(v2);
    }

LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BFE0, &qword_249D79348);
    if (swift_dynamicCastClass())
    {

      sub_249D733C4();
      v18 = v17;

      if (v18)
      {
        v19 = sub_249D73134();

        v20 = NSSelectorFromString(v19);

        [a1 removePropagatedProperty_];
      }
    }

    v6 = v14;
    v7 = v15;
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v2 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
      return sub_249D39114(v2);
    }

    goto LABEL_18;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      return sub_249D39114(v2);
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_249D65DE4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 && a3 != 1)
  {
    sub_249D4EDC8();
    v11 = a2;
    sub_249D72994();
    v12 = v15;
    v14 = v11;
    v15 = a4;
    v12(&v15, &v14);
  }

  result = sub_249D4A0FC(a5, a6);
  if ((result & 1) == 0)
  {
    sub_249D65B7C(a1, a5);
    return sub_249D658C8(a1, a6);
  }

  return result;
}

uint64_t sub_249D65EC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v44 = a2;
  v3 = sub_249D72B14();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v35 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BFA8, &qword_249D79318);
  MEMORY[0x28223BE20](v39);
  v6 = &v35 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BFB0, &qword_249D79320);
  MEMORY[0x28223BE20](v42);
  v41 = &v35 - v7;
  v8 = *v2;
  v9 = *(v2 + 8);
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  v38 = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  *(v12 + 24) = v9;
  *(v12 + 32) = v10;
  *(v12 + 40) = v11;
  v46 = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_249D668FC;
  *(v13 + 24) = v12;

  sub_249D5E38C(v8, v9);
  v40 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BFB8, &qword_249D79328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B160, &qword_249D79330);
  sub_249D66914();
  sub_249D3C254();
  sub_249D72EB4();

  v14 = swift_allocObject();
  *(v14 + 2) = sub_249D668FC;
  *(v14 + 3) = v12;
  *(v14 + 4) = v10;
  v15 = &v6[*(v39 + 36)];
  *v15 = sub_249D5E430;
  v15[1] = v14;
  v15[2] = 0;
  v15[3] = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = v8;
  *(v16 + 24) = v9;
  v43 = v10;
  *(v16 + 32) = v10;
  v17 = v9;
  v18 = v38;
  *(v16 + 40) = v38;
  LOBYTE(v46) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_249D669B8;
  *(v19 + 24) = v16;
  sub_249D5E38C(v8, v17);
  sub_249D66A0C();
  v20 = v40;

  v40 = v20;
  v21 = v41;
  sub_249D72EB4();

  sub_249D44B88(v6, &qword_27EF1BFA8, &qword_249D79318);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_249D669B8;
  *(v22 + 24) = v16;
  *(v22 + 32) = v18;
  v23 = (v21 + *(v42 + 36));
  *v23 = sub_249D5E5F8;
  v23[1] = v22;
  v23[2] = 0;
  v23[3] = 0;
  if (v17 == 1)
  {
    v46 = v8;
    sub_249D5E38C(v8, 1);
    v24 = v8;
  }

  else
  {
    sub_249D5E38C(v8, 0);
    sub_249D73314();
    v25 = sub_249D72DB4();
    sub_249D728C4();

    v26 = v35;
    sub_249D72B04();
    swift_getAtKeyPath();
    sub_249D5CCD0(v8, 0);
    (*(v36 + 8))(v26, v37);
    v24 = v46;
  }

  v27 = swift_allocObject();
  *(v27 + 16) = v8;
  *(v27 + 24) = v17;
  *(v27 + 32) = v43;
  *(v27 + 40) = v18;
  v45 = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_249D66B38;
  *(v28 + 24) = v27;
  sub_249D5E38C(v8, v17);
  sub_249D66B74();
  sub_249D3D7DC();
  v29 = v40;

  v30 = v44;
  sub_249D72EB4();

  sub_249D44B88(v21, &qword_27EF1BFB0, &qword_249D79320);
  v31 = v45;

  v32 = swift_allocObject();
  *(v32 + 2) = sub_249D66B38;
  *(v32 + 3) = v27;
  *(v32 + 4) = v31;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BFD8, &qword_249D79338);
  v34 = (v30 + *(result + 36));
  *v34 = sub_249D5E430;
  v34[1] = v32;
  v34[2] = 0;
  v34[3] = 0;
  return result;
}

uint64_t sub_249D664CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, char a7)
{
  v12 = sub_249D72B14();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D84F90];
  if (a5)
  {
    v23 = a4;
    v17 = sub_249D5E38C(a4, 1);
  }

  else
  {
    sub_249D5E38C(a4, 0);
    sub_249D73314();
    v18 = sub_249D72DB4();
    sub_249D728C4();

    sub_249D72B04();
    swift_getAtKeyPath();
    sub_249D5CCD0(a4, 0);
    v17 = (*(v13 + 8))(v15, v12);
    a4 = v23;
  }

  if (v16 >> 62 && (v17 = sub_249D73444()) != 0)
  {
    v17 = sub_249D4C1AC(MEMORY[0x277D84F90]);
    v19 = v17;
    if (!a6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v19 = MEMORY[0x277D84FA0];
    if (!a6)
    {
      goto LABEL_10;
    }
  }

  if (a7)
  {
    MEMORY[0x28223BE20](v17);
    *(&v22 - 4) = a3;
    *(&v22 - 3) = a6;
    *(&v22 - 2) = v19;
    *(&v22 - 1) = a4;
    v20 = a6;
    sub_249D39550(sub_249D66D84, (&v22 - 6));
  }

LABEL_10:
}

uint64_t sub_249D66700(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, char a7)
{
  v13 = sub_249D72B14();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  if (a5)
  {
    v23 = a4;
    v18 = sub_249D5E38C(a4, 1);
    if (!a6)
    {
    }
  }

  else
  {
    sub_249D5E38C(a4, 0);
    sub_249D73314();
    v19 = sub_249D72DB4();
    sub_249D728C4();

    sub_249D72B04();
    swift_getAtKeyPath();
    sub_249D5CCD0(a4, 0);
    v18 = (*(v14 + 8))(v16, v13);
    a4 = v23;
    if (!a6)
    {
    }
  }

  if (a7)
  {
    MEMORY[0x28223BE20](v18);
    *(&v22 - 4) = a3;
    *(&v22 - 3) = a6;
    *(&v22 - 2) = v17;
    *(&v22 - 1) = a4;
    v20 = a6;
    sub_249D39550(sub_249D66C90, (&v22 - 6));
  }
}

unint64_t sub_249D66914()
{
  result = qword_27EF1BFC0;
  if (!qword_27EF1BFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BFB8, &qword_249D79328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BFC0);
  }

  return result;
}

uint64_t sub_249D66978()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249D669D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_249D66A0C()
{
  result = qword_27EF1BFC8;
  if (!qword_27EF1BFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BFA8, &qword_249D79318);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BFB8, &qword_249D79328);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B160, &qword_249D79330);
    sub_249D66914();
    sub_249D3C254();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BFC8);
  }

  return result;
}

uint64_t sub_249D66B00()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

unint64_t sub_249D66B74()
{
  result = qword_27EF1BFD0;
  if (!qword_27EF1BFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BFB0, &qword_249D79320);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BFA8, &qword_249D79318);
    sub_249D66A0C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BFD0);
  }

  return result;
}

uint64_t sub_249D66C50()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_249D66CA0()
{
  result = qword_27EF1BFE8;
  if (!qword_27EF1BFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BFD8, &qword_249D79338);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BFB0, &qword_249D79320);
    sub_249D66B74();
    sub_249D3D7DC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BFE8);
  }

  return result;
}

uint64_t SceneSettings.subscript.setter(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v7 = *(a3 + 16);
  v8 = *(v6 + *MEMORY[0x277D84568] + 8);
  v32 = a4;
  v9 = type metadata accessor for FBValue(0, v7, v8, a4);
  v30 = *(v9 - 1);
  v31 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = (&v30 - v10);
  v12 = sub_249D73394();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v17 = *(v8 - 8);
  v18 = MEMORY[0x28223BE20](v14);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v30 - v21;
  v23 = *(v13 + 16);
  v33 = a1;
  v23(v16, a1, v12);
  if ((*(v17 + 48))(v16, 1, v8) == 1)
  {
    v24 = *(v13 + 8);
    v24(v16, v12);
    sub_249D6890C(a2, v36);

    sub_249D689EC(v36);
    return (v24)(v33, v12);
  }

  else
  {
    (*(v17 + 32))(v22, v16, v8);
    (*(v17 + 16))(v20, v22, v8);
    sub_249D53828(a2, v20, v32, v11);
    v26 = v31;
    v27 = v34;
    sub_249D531C0(v31, v36);
    v32 = v12;
    v28 = *(v30 + 8);

    v28(v11, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *v27;
    *v27 = 0x8000000000000000;
    sub_249D6A1E4(v36, a2, isUniquelyReferenced_nonNull_native);

    *v27 = v35;
    (*(v13 + 8))(v33, v32);
    return (*(v17 + 8))(v22, v8);
  }
}

uint64_t sub_249D67178(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 8);
  v8 = sub_249D73394();
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v11 = *a3;
  (*(v12 + 16))(&v17 - v9, a1);
  v15 = type metadata accessor for SceneSettings(0, v6, v13, v14);

  return SceneSettings.subscript.setter(v10, v11, v15, v7);
}

void (*SceneSettings.subscript.modify(void *a1, void *a2, uint64_t a3, uint64_t a4))(uint64_t ***a1, char a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  v12 = sub_249D73394();
  v11[4] = v12;
  v13 = *(v12 - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  SceneSettings.subscript.getter(a2, v15);
  return sub_249D673EC;
}

void sub_249D673EC(uint64_t ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v7 = v2[2];
    v9 = *v2;
    v8 = v2[1];
    (v6[2])((*a1)[6], v4, v5);

    SceneSettings.subscript.setter(v3, v9, v8, v7);
    (v6[1])(v4, v5);
  }

  else
  {
    v10 = v2[2];
    v12 = *v2;
    v11 = v2[1];

    SceneSettings.subscript.setter(v4, v12, v11, v10);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_249D67524@<X0>(void *a1@<X0>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v7 = *(*a1 + *MEMORY[0x277D84568] + 8);
  v8 = sub_249D73394();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  v12 = *v3;
  if (*(v12 + 16) && (v13 = sub_249D68CA0(a1), (v14 & 1) != 0))
  {
    v23 = v9;
    v24 = a2;
    v25 = *(*(v12 + 56) + 96 * v13 + 48);

    v25(v26, v15);

    sub_249D6A3B4(v26, v27);
    sub_249D6A3C4(v27, v26);
    v16 = swift_dynamicCast();
    v17 = *(*(v7 - 8) + 56);
    if (v16)
    {
      v18 = *(v7 - 8);
      v17(v11, 0, 1, v7);
      (*(v18 + 32))(a3, v11, v7);
      v17(a3, 0, 1, v7);
      return __swift_destroy_boxed_opaque_existential_1(v27);
    }

    else
    {
      v17(v11, 1, 1, v7);
      (*(v23 + 8))(v11, v8);
      *&v26[0] = 0;
      *(&v26[0] + 1) = 0xE000000000000000;
      sub_249D734E4();
      MEMORY[0x24C201340](0xD000000000000038, 0x8000000249D7B750);
      v21 = sub_249D73804();
      MEMORY[0x24C201340](v21);

      MEMORY[0x24C201340](0x3A646E756F66203BLL, 0xE900000000000020);
      __swift_project_boxed_opaque_existential_1(v27, v28);
      sub_249D73694();
      result = sub_249D735B4();
      __break(1u);
    }
  }

  else
  {
    v20 = *(*(v7 - 8) + 56);

    return v20(a3, 1, 1, v7);
  }

  return result;
}

uint64_t SceneSettings.subscript.setter(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_249D6A974(a1, a2, a3, a4, a5);
  v6 = sub_249D73394();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

uint64_t sub_249D679B0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = (*a2 + *MEMORY[0x277D84568]);
  v7 = *v6;
  v8 = v6[1];
  v32 = a4;
  v9 = type metadata accessor for FBValue(0, v7, v8, a4);
  v30 = *(v9 - 1);
  v31 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = (&v30 - v10);
  v12 = sub_249D73394();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v17 = *(v8 - 8);
  v18 = MEMORY[0x28223BE20](v14);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v30 - v21;
  v23 = *(v13 + 16);
  v33 = a1;
  v23(v16, a1, v12);
  if ((*(v17 + 48))(v16, 1, v8) == 1)
  {
    v24 = *(v13 + 8);
    v24(v16, v12);
    sub_249D6890C(a2, v36);

    sub_249D689EC(v36);
    return (v24)(v33, v12);
  }

  else
  {
    (*(v17 + 32))(v22, v16, v8);
    (*(v17 + 16))(v20, v22, v8);
    sub_249D53828(a2, v20, v32, v11);
    v26 = v31;
    v27 = v34;
    sub_249D531C0(v31, v36);
    v32 = v12;
    v28 = *(v30 + 8);

    v28(v11, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *v27;
    *v27 = 0x8000000000000000;
    sub_249D6A1E4(v36, a2, isUniquelyReferenced_nonNull_native);

    *v27 = v35;
    (*(v13 + 8))(v33, v32);
    return (*(v17 + 8))(v22, v8);
  }
}

void (*SceneSettings.subscript.modify(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v11 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a5;
  v12[4] = v5;
  v12[1] = a3;
  v12[2] = a4;
  *v12 = a2;
  v14 = sub_249D73394();
  v13[5] = v14;
  v15 = *(v14 - 8);
  v13[6] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[7] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v13[8] = v17;
  sub_249D67524(a3, 146, v17);
  return sub_249D67EC8;
}

void sub_249D67EC8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v7 = (*a1)[3];
  v9 = (*a1)[1];
  v8 = (*a1)[2];
  v10 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[7], v4, v5);

    sub_249D6A974(v3, v10, v9, v8, v7);
    v11 = *(v6 + 8);
    v11(v3, v5);
    v11(v4, v5);
  }

  else
  {

    sub_249D6A974(v4, v10, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_249D67FEC(uint64_t *a1)
{
  v2 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v1;
  *v1 = 0x8000000000000000;
  sub_249D6AB70(v2, sub_249D6A6C8, 0, isUniquelyReferenced_nonNull_native, &v6);

  v4 = v6;

  *v1 = v4;
  return result;
}

unint64_t sub_249D68098@<X0>(unint64_t *a1@<X8>)
{
  result = sub_249D6E248(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t sub_249D680C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_249D6E248(MEMORY[0x277D84F90]);

  *a2 = v3;
  return result;
}

uint64_t sub_249D6810C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v20 = result + 64;
  v21 = result;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v19 = (v4 + 63) >> 6;
  while (v6)
  {
    v7 = __clz(__rbit64(v6));
    v22 = (v6 - 1) & v6;
LABEL_13:
    v10 = v7 | (v3 << 6);
    v11 = *(*(result + 48) + 8 * v10);
    v12 = *(result + 56) + 96 * v10;
    v13 = *(v12 + 88);
    v25 = *v12;
    v23 = *(v12 + 24);
    v26 = *(v12 + 8);
    v27 = v23;
    v24 = *(v12 + 56);
    v28 = *(v12 + 40);
    v29 = v24;
    v30 = *(v12 + 72);
    v31 = v13;

    v14 = v2;
    v15 = sub_249D68CA0(v11);
    v17 = v16;

    if ((v17 & 1) == 0)
    {

      return 0;
    }

    v18 = *(*(v14 + 56) + 96 * v15 + 16);

    LOBYTE(v18) = v18(&v25);

    v2 = v14;
    result = v21;
    v6 = v22;
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = v3;
  while (1)
  {
    v3 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v3 >= v19)
    {
      return 1;
    }

    v9 = *(v20 + 8 * v3);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v22 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t SceneSettings.description.getter()
{
  sub_249D68480(*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BFF8, &qword_249D79358);
  sub_249D6AA84();
  v1 = sub_249D730E4();

  return v1;
}

uint64_t sub_249D68480(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v34 = MEMORY[0x277D84F90];
  sub_249D6A59C(0, v1, 0);
  v2 = v34;
  v4 = v3 + 64;
  result = sub_249D73404();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v25 = v3 + 72;
  v26 = v1;
  v27 = v8;
  v28 = v3 + 64;
  v29 = v3;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v30 = v7;
    v31 = v2;
    v11 = *(*(v3 + 56) + 96 * v6 + 80);

    sub_249D733C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BC08, &qword_249D782B8);
    v32 = sub_249D73154();
    v33 = v12;
    v13 = MEMORY[0x24C201340](8250, 0xE200000000000000);
    v14 = v11(v13);
    MEMORY[0x24C201340](v14);

    v2 = v31;

    v16 = *(v31 + 16);
    v15 = *(v31 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_249D6A59C((v15 > 1), v16 + 1, 1);
      v2 = v31;
    }

    *(v2 + 16) = v16 + 1;
    v17 = v2 + 16 * v16;
    *(v17 + 32) = v32;
    *(v17 + 40) = v33;
    v3 = v29;
    v9 = 1 << *(v29 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = v28;
    v18 = *(v28 + 8 * v10);
    if ((v18 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v27;
    if (v27 != *(v29 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v6 & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (v25 + 8 * v10);
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_249D6AB64(v6, v27, 0);
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_249D6AB64(v6, v27, 0);
    }

LABEL_4:
    v7 = v30 + 1;
    v6 = v9;
    if (v30 + 1 == v26)
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

uint64_t sub_249D687C0(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_249D68D10(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_249D6961C(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_249D69BA8();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_249D73594();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_249D73444();
  v8 = sub_249D68A54(v4, v7);

  v9 = sub_249D68D10(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_249D6961C(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

unint64_t sub_249D6890C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  result = sub_249D68CA0(a1);
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  if (v12)
  {
    v13 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_249D69D08();
      v15 = v23;
    }

    v16 = (*(v15 + 56) + 96 * v13);
    v22 = v16[1];
    v20 = v16[3];
    v21 = *v16;
    v18 = v16[5];
    v19 = v16[2];
    v17 = v16[4];
    result = sub_249D697A8(v13, v15);
    v10 = v17;
    v11 = v18;
    v8 = v19;
    v9 = v20;
    v7 = v22;
    v6 = v21;
    *v3 = v15;
  }

  *a2 = v6;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v9;
  a2[4] = v10;
  a2[5] = v11;
  return result;
}

uint64_t sub_249D689EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BFF0, &qword_249D79350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249D68A54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1C090, &unk_249D79BE0);
    v2 = sub_249D735F4();
    v19 = v2;
    sub_249D73574();
    v3 = sub_249D735A4();
    if (v3)
    {
      v4 = v3;
      sub_249D38A20(0, &qword_27EF1C088, 0x277D46F60);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_249D38A20(0, &qword_27EF1B098, 0x277D0AAB8);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_249D68DCC(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_249D73364();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_249D735A4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

unint64_t sub_249D68CA0(uint64_t a1)
{
  sub_249D733F4();
  v2 = sub_249D730C4();
  return sub_249D69950(a1, v2);
}

unint64_t sub_249D68D10(uint64_t a1)
{
  v2 = sub_249D73364();

  return sub_249D69A1C(a1, v2);
}

unint64_t sub_249D68D54(uint64_t a1, uint64_t a2)
{
  sub_249D73774();
  sub_249D73184();
  v4 = sub_249D737A4();

  return sub_249D69AF0(a1, a2, v4);
}

uint64_t sub_249D68DCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1C090, &unk_249D79BE0);
  result = sub_249D735E4();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_249D73364();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_249D69034(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1C0A0, &qword_249D79BF0);
  v33 = v4;
  result = sub_249D735E4();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 96 * v20;
      v34 = *v22;
      v38 = *(v22 + 24);
      v39 = *(v22 + 8);
      v36 = *(v22 + 56);
      v37 = *(v22 + 40);
      v35 = *(v22 + 72);
      v23 = *(v22 + 88);
      if ((v33 & 1) == 0)
      {
      }

      sub_249D733F4();
      result = sub_249D730C4();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 96 * v15;
      *v16 = v34;
      *(v16 + 8) = v39;
      *(v16 + 24) = v38;
      *(v16 + 40) = v37;
      *(v16 + 56) = v36;
      *(v16 + 72) = v35;
      *(v16 + 88) = v23;
      ++*(v7 + 16);
      v5 = v32;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero(v9, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_249D69374(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EF1C1B0, &unk_249D79420);
  v34 = v4;
  result = sub_249D735E4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_249D73774();
      sub_249D73184();
      result = sub_249D737A4();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

void sub_249D6961C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_249D73414() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_249D73364();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_249D697A8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_249D73414() + 1) & ~v5;
    sub_249D733F4();
    do
    {
      result = sub_249D730C4();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 >= v8 && v3 >= v9)
        {
LABEL_15:
          v12 = *(a2 + 48);
          v13 = (v12 + 8 * v3);
          v14 = (v12 + 8 * v6);
          if (v3 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
          }

          v15 = *(a2 + 56);
          result = v15 + 96 * v3;
          v16 = (v15 + 96 * v6);
          if (v3 != v6 || result >= v16 + 96)
          {
            result = memmove(result, v16, 0x60uLL);
            v3 = v6;
          }
        }
      }

      else if (v9 >= v8 || v3 >= v9)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_249D69950(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_249D733F4();
    do
    {
      if (sub_249D73124())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_249D69A1C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_249D38A20(0, &qword_27EF1C088, 0x277D46F60);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_249D73374();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_249D69AF0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_249D736A4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_249D69BA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1C090, &unk_249D79BE0);
  v2 = *v0;
  v3 = sub_249D735D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_249D69D08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1C0A0, &qword_249D79BF0);
  v2 = *v0;
  v3 = sub_249D735D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 96 * v17;
        v19 = *v18;
        v20 = *(v18 + 88);
        v21 = *(v18 + 8);
        v25 = *(v18 + 24);
        v22 = *(v18 + 40);
        v26 = *(v18 + 56);
        v23 = *(v18 + 72);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v24 = *(v4 + 56) + 96 * v17;
        *v24 = v19;
        *(v24 + 8) = v21;
        *(v24 + 24) = v25;
        *(v24 + 40) = v22;
        *(v24 + 56) = v26;
        *(v24 + 72) = v23;
        *(v24 + 88) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_249D69EFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EF1C1B0, &unk_249D79420);
  v2 = *v0;
  v3 = sub_249D735D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_249D6A06C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_249D68D10(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_249D68DCC(v13, a3 & 1);
      v8 = sub_249D68D10(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_249D38A20(0, &qword_27EF1C088, 0x277D46F60);
        sub_249D736F4();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v16 = v8;
      sub_249D69BA8();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return a2;
}

uint64_t sub_249D6A1E4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_249D68CA0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_249D69034(v14, a3 & 1);
      v9 = sub_249D68CA0(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_249D733F4();
        result = sub_249D736F4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_249D69D08();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 96 * v9);
    v21 = a1[3];
    v20[2] = a1[2];
    v20[3] = v21;
    v22 = a1[5];
    v20[4] = a1[4];
    v20[5] = v22;
    v23 = a1[1];
    *v20 = *a1;
    v20[1] = v23;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  v25 = (v19[7] + 96 * v9);
  v26 = a1[1];
  *v25 = *a1;
  v25[1] = v26;
  v27 = a1[5];
  v25[4] = a1[4];
  v25[5] = v27;
  v28 = a1[3];
  v25[2] = a1[2];
  v25[3] = v28;
  v29 = v19[2];
  v13 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v30;
}

_OWORD *sub_249D6A3B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_249D6A3C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_249D6A420(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_249D68D54(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_249D69374(v16, a4 & 1);
      v11 = sub_249D68D54(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_249D736F4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_249D69EFC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

char *sub_249D6A59C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_249D6A5BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_249D6A5BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1C098, &qword_249D79418);
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

uint64_t sub_249D6A6C8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 12);
  v3 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v3;
  v4 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v4;
  v5 = a1[5];
  *(a2 + 64) = a1[4];
  *(a2 + 80) = v5;
  *(a2 + 96) = v2;
}

uint64_t sub_249D6A778@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = v1[3];
  v4 = v1[4];
  if (v4)
  {
    v6 = v1[3];
LABEL_10:
    v10 = __clz(__rbit64(v4)) | (v6 << 6);
    v11 = *(*(v3 + 48) + 8 * v10);
    v12 = *(v3 + 56) + 96 * v10;
    v13 = *v12;
    v14 = *(v12 + 88);
    v26 = v1[5];
    v29[0] = v11;
    v29[1] = v13;
    v30 = *(v12 + 8);
    v15 = *(v12 + 40);
    v31 = *(v12 + 24);
    v32 = v15;
    v16 = *(v12 + 56);
    v17 = *(v12 + 72);
    v1[3] = v6;
    v1[4] = (v4 - 1) & v4;
    v33 = v16;
    v34 = v17;
    v35 = v14;

    v26(v27, v29);

    v19 = v27[0];
    v20 = v27[1];
    v21 = v27[2];
    v22 = v27[3];
    v23 = v27[4];
    v24 = v27[5];
    v25 = v28;
LABEL_11:
    *a1 = v19;
    *(a1 + 16) = v20;
    *(a1 + 32) = v21;
    *(a1 + 48) = v22;
    *(a1 + 64) = v23;
    *(a1 + 80) = v24;
    *(a1 + 96) = v25;
  }

  else
  {
    v7 = (v1[2] + 64) >> 6;
    if (v7 <= v5 + 1)
    {
      v8 = v5 + 1;
    }

    else
    {
      v8 = (v1[2] + 64) >> 6;
    }

    v9 = v8 - 1;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v6 >= v7)
      {
        v25 = 0;
        v1[3] = v9;
        v1[4] = 0;
        v19 = 0uLL;
        v20 = 0uLL;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        goto LABEL_11;
      }

      v4 = *(v1[1] + 8 * v6);
      ++v5;
      if (v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_249D6A974(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_249D73394();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, a1);
  return sub_249D679B0(v10, a3, v12, a5);
}

unint64_t sub_249D6AA84()
{
  result = qword_27EF1C000[0];
  if (!qword_27EF1C000[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BFF8, &qword_249D79358);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF1C000);
  }

  return result;
}

__n128 sub_249D6AAFC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_249D6AB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_249D6AB64(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_249D6AB70(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{

  sub_249D6A778(&v32);
  v7 = v32;
  v27 = v35;
  v28 = v36;
  v29 = v37;
  v30 = v38;
  v25 = v33;
  v26 = v34;
  if (!v32)
  {
LABEL_15:
    sub_249D39114(a1);
  }

  while (1)
  {
    v10 = *a5;
    v11 = sub_249D68CA0(v7);
    v13 = v10[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      break;
    }

    v17 = v12;
    if (v10[3] < v16)
    {
      sub_249D69034(v16, a4 & 1);
      v11 = sub_249D68CA0(v7);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v19 = *a5;
      if (v17)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (a4)
    {
      goto LABEL_10;
    }

    v23 = v11;
    sub_249D69D08();
    v11 = v23;
    v19 = *a5;
    if (v17)
    {
LABEL_3:
      v8 = v11;

      v9 = (v19[7] + 96 * v8);
      v9[2] = v27;
      v9[3] = v28;
      v9[4] = v29;
      v9[5] = v30;
      *v9 = v25;
      v9[1] = v26;

      goto LABEL_4;
    }

LABEL_11:
    v19[(v11 >> 6) + 8] |= 1 << v11;
    *(v19[6] + 8 * v11) = v7;
    v20 = (v19[7] + 96 * v11);
    *v20 = v25;
    v20[1] = v26;
    v20[4] = v29;
    v20[5] = v30;
    v20[2] = v27;
    v20[3] = v28;
    v21 = v19[2];
    v15 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v15)
    {
      goto LABEL_17;
    }

    v19[2] = v22;
LABEL_4:
    sub_249D6A778(&v32);
    v7 = v32;
    v27 = v35;
    v28 = v36;
    v29 = v37;
    v30 = v38;
    a4 = 1;
    v25 = v33;
    v26 = v34;
    if (!v32)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  sub_249D733F4();
  result = sub_249D736F4();
  __break(1u);
  return result;
}

uint64_t sub_249D6AE40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a1;
  v41 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1C0A8, &qword_249D794D0);
  MEMORY[0x28223BE20](v37);
  v31 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1C0B0, &qword_249D794D8);
  v6 = *(v5 - 8);
  v39 = v5;
  v40 = v6;
  MEMORY[0x28223BE20](v5);
  v38 = &v30 - v7;
  swift_getKeyPath();
  v36 = OBJC_IVAR____TtC12DrawingBoard20ApplyActivationModel___observationRegistrar;
  v47 = v2;
  v35 = sub_249D6B348();
  sub_249D72874();

  v9 = *(v2 + 88);
  v8 = *(v2 + 96);
  v10 = *(v3 + 104);
  v11 = *(v3 + 112);
  v12 = *(v3 + 120);
  v47 = *(v3 + 88);
  v48 = v8;
  v32 = v8;
  v49 = v10;
  v50 = v11;
  LOBYTE(v51) = v12;
  v13 = swift_allocObject();
  v33 = sub_249D6B3A0;
  *(v13 + 16) = sub_249D6B3A0;
  *(v13 + 24) = v3;
  sub_249D4EB0C(v9, v8, v10, v11, v12);
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1C0B8, &qword_249D79508);
  sub_249D6B4D0();
  sub_249D5961C();
  sub_249D72EB4();

  v14 = v47;
  v15 = v48;
  v17 = v49;
  v16 = v50;
  v18 = v51;

  sub_249D4EB0C(v14, v15, v17, v16, v18);
  sub_249D4EB2C(v9, v32, v10, v11, v12);
  v19 = swift_allocObject();
  *(v19 + 16) = v33;
  *(v19 + 24) = v3;
  *(v19 + 32) = v14;
  *(v19 + 40) = v15;
  *(v19 + 48) = v17;
  *(v19 + 56) = v16;
  *(v19 + 64) = v18;

  v20 = v37;
  v21 = v31;
  v22 = &v31[*(v37 + 36)];
  *v22 = sub_249D6B650;
  v22[1] = v19;
  v22[2] = 0;
  v22[3] = 0;
  swift_getKeyPath();
  v47 = v3;
  sub_249D72874();

  LOBYTE(v47) = *(v3 + 72);
  v23 = sub_249D6B66C();

  v24 = v38;
  v25 = v20;
  sub_249D72EF4();

  sub_249D6B750(v21);
  swift_getKeyPath();
  v47 = v3;
  sub_249D72874();

  swift_beginAccess();
  sub_249D56584(v3 + 16, &v47);
  v26 = v50;
  v27 = v51;
  __swift_project_boxed_opaque_existential_1(&v47, v50);
  v46 = (*(v27 + 16))(v26, v27) & 1;

  v42 = v25;
  v43 = MEMORY[0x277D839B0];
  v44 = v23;
  v45 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  v28 = v39;
  sub_249D72EF4();

  (*(v40 + 8))(v24, v28);
  return __swift_destroy_boxed_opaque_existential_1(&v47);
}

unint64_t sub_249D6B348()
{
  result = qword_27EF1BA28;
  if (!qword_27EF1BA28)
  {
    type metadata accessor for ApplyActivationModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BA28);
  }

  return result;
}

uint64_t sub_249D6B3A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *, _OWORD *, uint64_t, __n128))
{
  v6 = *(a1 + 32);
  v7 = *(a2 + 32);
  v8 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v8;
  v14 = v6;
  v9 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v9;
  v12 = v7;
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (a4)(v13, v11, a3);
}

uint64_t sub_249D6B490()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_249D6B4D0()
{
  result = qword_27EF1C0C0;
  if (!qword_27EF1C0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1C0B8, &qword_249D79508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1C0C0);
  }

  return result;
}

uint64_t sub_249D6B534(void (*a1)(_OWORD *, _OWORD *, void, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v5 = *(a3 + 16);
  v7[0] = *a3;
  v7[1] = v5;
  v8 = v4;
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (a1)(v7, v7, 0);
}

uint64_t sub_249D6B608()
{

  sub_249D4EB2C(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

unint64_t sub_249D6B66C()
{
  result = qword_27EF1C0C8;
  if (!qword_27EF1C0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1C0A8, &qword_249D794D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1C0B8, &qword_249D79508);
    sub_249D6B4D0();
    sub_249D5961C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1C0C8);
  }

  return result;
}

uint64_t sub_249D6B750(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1C0A8, &qword_249D794D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249D6B7C8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1C0B0, &qword_249D794D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1C0A8, &qword_249D794D0);
  sub_249D6B66C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t get_enum_tag_for_layout_string_12DrawingBoard10SceneEventV4KindO(uint64_t a1)
{
  v1 = *(a1 + 40) >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_249D6B8BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_249D6B904(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_249D6B968()
{
  v1 = *v0;
  v2 = *(v0 + 40);
  v3 = v2 >> 61;
  if ((v2 >> 61) <= 2)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        sub_249D734E4();

        strcpy(v14, "clientConnect-");
        HIBYTE(v14[1]) = -18;
        v8 = [v1 bundleIdentifier];
        if (!v8)
        {
          v7 = 0xE700000000000000;
          v10 = 0x6E776F6E6B6E75;
          goto LABEL_19;
        }

        goto LABEL_13;
      }

      strcpy(v14, "invalidate-");
      HIDWORD(v14[1]) = -352321536;
      if (v1)
      {
LABEL_10:
        v8 = [v1 description];
LABEL_13:
        v9 = v8;
        v10 = sub_249D73144();
        v7 = v11;

LABEL_19:
        v6 = v10;
        goto LABEL_20;
      }
    }

    else
    {
      sub_249D734E4();

      v14[0] = 0x636165446C6C6977;
      v14[1] = 0xEF2D657461766974;
      if (v1)
      {
        goto LABEL_10;
      }
    }

    v10 = 1701736302;
    v7 = 0xE400000000000000;
    goto LABEL_19;
  }

  if (v3 == 3)
  {
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    MEMORY[0x24C201340](0x53746E65746E6F63, 0xED00002D65746174);
    type metadata accessor for FBSceneContentState(0);
    sub_249D73564();
    return v14[0];
  }

  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  if (v3 == 4)
  {
    sub_249D734E4();

    v14[0] = 0xD000000000000011;
    v14[1] = 0x8000000249D7B790;
    sub_249D734E4();
    MEMORY[0x24C201340](0xD000000000000015, 0x8000000249D7B5E0);
    MEMORY[0x24C201340](v4, v5);
    MEMORY[0x24C201340](8250, 0xE200000000000000);
    swift_getErrorValue();
    sub_249D73694();
    v6 = 0;
    v7 = 0xE000000000000000;
LABEL_20:
    MEMORY[0x24C201340](v6, v7);

    return v14[0];
  }

  v12 = vorrq_s8(*(v0 + 8), *(v0 + 24));
  if (((v2 == 0xA000000000000000) & ((v1 | *&vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)) | v4 | v5) == 0)) != 0)
  {
    return 0x697463416C6C6977;
  }

  else
  {
    return 0x7669746341646964;
  }
}

uint64_t sub_249D6BCB8()
{
  v3 = *(v0 + 8);

  MEMORY[0x24C201340](8250, 0xE200000000000000);
  v1 = sub_249D6B968();
  MEMORY[0x24C201340](v1);

  return v3;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_249D6BD30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_249D6BD80(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 4 * -a2;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_249D6BDF0(uint64_t result, uint64_t a2)
{
  if (a2 < 5)
  {
    v2 = *(result + 40) & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
    *(result + 32) &= 3uLL;
    *(result + 40) = v2;
  }

  else
  {
    *result = (a2 - 5);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 40) = 0xA000000000000000;
  }

  return result;
}

uint64_t View.transactionalOnChange<A>(of:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v32 = a2;
  v35 = a1;
  v40 = a8;
  v14 = *(a5 - 8);
  v36 = *(v14 + 64);
  MEMORY[0x28223BE20](a1);
  v34 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v16;
  v42 = v17;
  v43 = v18;
  v44 = v19;
  v37 = MEMORY[0x277CE0DB8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = *(OpaqueTypeMetadata2 - 8);
  v38 = OpaqueTypeMetadata2;
  v39 = v21;
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v33 = &v32 - v22;
  v23 = swift_allocObject();
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = a7;
  v23[6] = a2;
  v23[7] = a3;

  v24 = v35;
  v25 = a7;
  sub_249D72EB4();

  v26 = v34;
  (*(v14 + 16))(v34, v24, a5);
  v27 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = a4;
  *(v28 + 3) = a5;
  *(v28 + 4) = a6;
  *(v28 + 5) = v25;
  *(v28 + 6) = v32;
  *(v28 + 7) = a3;
  (*(v14 + 32))(&v28[v27], v26, a5);

  v41 = a4;
  v42 = a5;
  v43 = a6;
  v44 = v25;
  swift_getOpaqueTypeConformance2();
  v29 = v38;
  v30 = v33;
  sub_249D72EE4();

  return (*(v39 + 8))(v30, v29);
}

uint64_t sub_249D6C11C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a4(a1, a2, a3);
}

uint64_t sub_249D6C1EC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_249D6C254(void (*a1)(uint64_t, uint64_t, void, __n128), uint64_t a2, uint64_t a3)
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (a1)(a3, a3, 0);
}

uint64_t sub_249D6C314()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_249D6C414(uint64_t *a1)
{
  swift_getOpaqueTypeMetadata2();
  sub_249D72A74();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_249D6C518()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_249D6C5C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  sub_249D610D8(v6, v15);
  KeyPath = swift_getKeyPath();
  v8 = v15[2];
  ObjectType = swift_getObjectType();
  (*(v8 + 16))(aBlock, KeyPath, MEMORY[0x277D839B0], ObjectType, v8);

  result = sub_249D6C8D0(v15);
  if (LOBYTE(aBlock[0]) == 1)
  {
    v11 = swift_allocObject();
    v11[2] = a1;
    v11[3] = a2;
    v11[4] = v3;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_249D6C980;
    *(v12 + 24) = v11;
    aBlock[4] = sub_249D6C9EC;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_249D39A00;
    aBlock[3] = &block_descriptor_4;
    v13 = _Block_copy(aBlock);
    sub_249D447C8(a1, a2);

    [v6 deactivate_];
    _Block_release(v13);
  }

  return result;
}

uint64_t sub_249D6C790()
{
  sub_249D610D8(*(*v0 + 16), (v5 + 1));
  KeyPath = swift_getKeyPath();
  v2 = *(&v5[2] + 1);
  ObjectType = swift_getObjectType();
  (*(v2 + 16))(v5, KeyPath, MEMORY[0x277D839B0], ObjectType, v2);

  sub_249D6C8D0(v5 + 1);
  return LOBYTE(v5[0]);
}

unint64_t sub_249D6C850(uint64_t a1)
{
  result = sub_249D6C878();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_249D6C878()
{
  result = qword_27EF1C0D0;
  if (!qword_27EF1C0D0)
  {
    type metadata accessor for DeactivationSceneActivationPolicyModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1C0D0);
  }

  return result;
}

uint64_t sub_249D6C8D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B4A8, &qword_249D79960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249D6C938()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249D6C980(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  if (v3)
  {
    v3(*(v4 + 16), a1);
  }

  return (*(v4 + 24))(*(v4 + 16), a1);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249D6CA0C@<X0>(void *a1@<X8>)
{
  sub_249D3D63C();
  result = sub_249D72B44();
  *a1 = v3;
  return result;
}

uint64_t sub_249D6CA5C(uint64_t *a1)
{
  sub_249D3D63C();

  return sub_249D72B54();
}

uint64_t View.propagateSceneSettings(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_249D72EA4();
}

uint64_t sub_249D6CB80@<X0>(void *a1@<X8>)
{
  sub_249D3D63C();
  result = sub_249D72B44();
  *a1 = v3;
  return result;
}

uint64_t sub_249D6CBD4(uint64_t a1, void (*a2)(uint64_t))
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a2(a1);
}

uint64_t sub_249D6CC8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249D6CCCC(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1C0D8, qword_249D799A0);
  sub_249D72A74();
  sub_249D6CD44();
  return swift_getWitnessTable();
}

unint64_t sub_249D6CD44()
{
  result = qword_27EF1C0E0;
  if (!qword_27EF1C0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1C0D8, qword_249D799A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1C0E0);
  }

  return result;
}

uint64_t sub_249D6CDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_249D6CECC();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_249D6CE20()
{
  sub_249D6CE68();

  return sub_249D72B44();
}

unint64_t sub_249D6CE68()
{
  result = qword_27EF1C0E8;
  if (!qword_27EF1C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1C0E8);
  }

  return result;
}

unint64_t sub_249D6CECC()
{
  result = qword_27EF1BC98;
  if (!qword_27EF1BC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B3D8, &qword_249D786C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BC98);
  }

  return result;
}

void sub_249D6CF30(uint64_t a1)
{
  swift_getObjectType();
  v3 = v1 + OBJC_IVAR____TtC12DrawingBoard21ObservedSettingsStore_storage;
  os_unfair_lock_lock(v3);
  sub_249D6D15C((v3 + 8), a1);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_249D6CFA8(void *a1, void *a2)
{
  v2 = *a1 + 64;
  v3 = 1 << *(*a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_10:
    v5 &= v5 - 1;

    v10 = sub_249D73134();

    v11 = NSSelectorFromString(v10);

    if ([a2 containsProperty_])
    {
      swift_getKeyPath();
      sub_249D655A4();
      sub_249D72864();
    }

    v8 = v9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_249D6D15C(uint64_t *a1, uint64_t a2)
{
  result = sub_249D6D2A0(a2);
  if (v4)
  {
    v5 = result;
    v6 = v4;
    if (*(*a1 + 16) && (sub_249D68D54(result, v4), (v7 & 1) != 0))
    {
    }

    else
    {
      type metadata accessor for OpaqueObservable(0);
      v8 = swift_allocObject();
      sub_249D728A4();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *a1;
      sub_249D6A420(v8, v5, v6, isUniquelyReferenced_nonNull_native);
      swift_bridgeObjectRelease_n();
      *a1 = v10;
    }

    swift_getKeyPath();
    sub_249D655A4();
    sub_249D72874();
  }

  return result;
}

uint64_t sub_249D6D2A0(uint64_t a1)
{
  result = sub_249D733C4();
  if (v2)
  {
    sub_249D65340();
    v3 = sub_249D733A4();

    if (*(v3 + 16))
    {
      v4 = *(v3 + 32);

      return v4;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_249D6D3F8()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1C0F8, ">b");
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_249D6D428(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF1C100, &qword_249D79A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249D6D49C()
{
  sub_249D73774();
  sub_249D73184();

  return sub_249D737A4();
}

uint64_t sub_249D6D588(uint64_t a1)
{
  sub_249D73184();
}

uint64_t sub_249D6D660(uint64_t a1)
{
  sub_249D73774();
  sub_249D73184();

  return sub_249D737A4();
}

unint64_t sub_249D6D748@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_249D6E5D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_249D6D778(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0x8000000249D7A200;
  v6 = 0xD000000000000011;
  v7 = 0x656E6563536F6ELL;
  if (v2 != 3)
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = 0x6F69747265737361;
    v3 = 0xED0000646C65486ELL;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

id sub_249D6D820()
{
  result = [objc_allocWithZone(type metadata accessor for ProcessMonitor()) init];
  qword_27EF20598 = result;
  return result;
}

void sub_249D6D850()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong + OBJC_IVAR____TtC12DrawingBoard14ProcessMonitor_state;
    v4 = *(v0 + 8);
    os_unfair_lock_lock(v3);
    [*(v3 + 8) removeObject_];
    if (([*(v3 + 8) containsObject_] & 1) == 0)
    {
    }

    os_unfair_lock_unlock(v3);
  }

  MEMORY[0x24C202330](v0);
  v5 = *(v0 + 8);
}

void sub_249D6D918(uint64_t a1, id a2)
{
  v4 = *a1;
  v5 = [a2 identity];
  LODWORD(v4) = [v4 containsObject_];

  if (v4)
  {
    v6 = [a2 identity];
    v7 = [a2 exitContext];
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if ((v9 & 0xC000000000000001) == 0)
      {
LABEL_9:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = *(a1 + 8);
        sub_249D6A06C(v8, v6, isUniquelyReferenced_nonNull_native);

        *(a1 + 8) = v14;
        return;
      }

      if (v9 < 0)
      {
        v10 = *(a1 + 8);
      }

      else
      {
        v10 = v9 & 0xFFFFFFFFFFFFFF8;
      }

      v11 = sub_249D73444();
      if (!__OFADD__(v11, 1))
      {
        *(a1 + 8) = sub_249D68A54(v10, v11 + 1);
        goto LABEL_9;
      }

      __break(1u);
    }

    else
    {
      v13 = sub_249D687C0(v6);
    }
  }
}

uint64_t sub_249D6DA54()
{
  result = [v0 launchError];
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1C190, &unk_249D77DF0);
    sub_249D6E1FC();
    result = swift_dynamicCast();
    if (result)
    {
      v2 = [v3 code];

      if ((v2 & 0x8000000000000000) != 0)
      {
        return 0;
      }

      else if (v2 > 8)
      {
        return 4;
      }

      else
      {
        return byte_249D79BFA[v2];
      }
    }
  }

  return result;
}

id sub_249D6DB18()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC12DrawingBoard14ProcessMonitor_state];
  v3 = [objc_allocWithZone(MEMORY[0x277CCA940]) init];
  v4 = sub_249D6E4D8(MEMORY[0x277D84F90]);
  *v2 = 0;
  *(v2 + 1) = v3;
  *(v2 + 2) = v4;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v10, sel_init);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 sharedInstance];
  [v8 addObserver_];

  return v7;
}

uint64_t sub_249D6DC54()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1C120, &qword_249D79AD0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_249D6DC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_249D73274();
  v5[4] = sub_249D73264();
  v7 = sub_249D73254();

  return MEMORY[0x2822009F8](sub_249D6DD20, v7, v6);
}

uint64_t sub_249D6DD20()
{
  v1 = v0[3];
  v2 = v0[2];

  v3 = (v2 + OBJC_IVAR____TtC12DrawingBoard14ProcessMonitor_state);
  os_unfair_lock_lock(v3);
  sub_249D6D918(&v3[2], v1);
  os_unfair_lock_unlock(v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_249D6DF20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_249D6DF68(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for PreventActivationReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PreventActivationReason(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_249D6E12C(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakTakeInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_249D6E158(uint64_t a1, uint64_t a2)
{
  v4 = swift_unknownObjectWeakTakeAssign();
  v5 = *(v4 + 8);
  *(v4 + 8) = *(a2 + 8);

  return a1;
}

unint64_t sub_249D6E1A8()
{
  result = qword_27EF1C188;
  if (!qword_27EF1C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1C188);
  }

  return result;
}

unint64_t sub_249D6E1FC()
{
  result = qword_27EF1C198;
  if (!qword_27EF1C198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF1C198);
  }

  return result;
}

unint64_t sub_249D6E248(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1C0A0, &qword_249D79BF0);
    v3 = sub_249D73604();

    for (i = (a1 + 64); ; i = (i + 104))
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v17 = *i;
      v18 = *(i - 1);
      v15 = i[2];
      v16 = i[1];
      v14 = i[3];
      v7 = *(i + 8);

      result = sub_249D68CA0(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v10 = v3[7] + 96 * result;
      *v10 = v6;
      *(v10 + 8) = v18;
      *(v10 + 24) = v17;
      *(v10 + 40) = v16;
      *(v10 + 56) = v15;
      *(v10 + 72) = v14;
      *(v10 + 88) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_249D6E3D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EF1C1B0, &unk_249D79420);
    v3 = sub_249D73604();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_249D68D54(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_249D6E4D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1C090, &unk_249D79BE0);
    v3 = sub_249D73604();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_249D68D10(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_249D6E5D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_249D73614();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_249D6E61C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_249D6E664(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_249D416E0;

  return sub_249D6DC88(a1, v4, v5, v7, v6);
}

uint64_t TypedIdentifier.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t TypedIdentifier.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TypedIdentifier.description.getter()
{
  v0 = sub_249D6EB98();

  return v0;
}

uint64_t sub_249D6E8C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_249D6E930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_249D6E9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_249D6EA10()
{
  v0 = sub_249D6EB98();

  return v0;
}

uint64_t sub_249D6EA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_249D6EABC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = TypedIdentifier.init(stringLiteral:)(*a1, a1[1], v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_249D6EAFC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_249D6EB98();
  a1[1] = v2;
}

uint64_t static TypedIdentifier.< infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_249D736A4();
  }
}

uint64_t sub_249D6EBBC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_249D6ECA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t View.transformSceneSettings<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = a2;
  v11[6] = a3;

  sub_249D72EA4();
}

uint64_t sub_249D6EDE0@<X0>(void *a1@<X8>)
{
  sub_249D6CE68();
  result = sub_249D72B44();
  *a1 = v3;
  return result;
}

uint64_t sub_249D6EE30@<X0>(void *a1@<X8>)
{
  sub_249D6CE68();
  result = sub_249D72B44();
  *a1 = v3;
  return result;
}

uint64_t sub_249D6EE80(uint64_t *a1)
{
  sub_249D6CE68();

  return sub_249D72B54();
}

uint64_t sub_249D6EEE4(uint64_t *a1, void (*a2)(uint64_t *))
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *a1;
  sub_249D6F110();

  sub_249D680C8(&v5, &v6);
  a2(&v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B3D8, &qword_249D786C0);
  sub_249D67FEC(&v6);
}

uint64_t sub_249D6F014()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t View.sceneSettings<A>(_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  swift_getKeyPath();
  v8 = v5;
  sub_249D6F110();

  sub_249D680C8(&v8, &v7);
  sub_249D72E54();
}

unint64_t sub_249D6F110()
{
  result = qword_27EF1B228;
  if (!qword_27EF1B228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF1B228);
  }

  return result;
}

uint64_t View.sceneSettings<A>(_:_:)(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_249D68098(&v9);
  a2(&v9);
  swift_getKeyPath();
  sub_249D6F110();
  sub_249D680C8(&v9, &v8);
  sub_249D72E54();
}

uint64_t get_witness_table_7SwiftUI4ViewRzSo23FBSMutableSceneSettingsCRbd__r__lAA15ModifiedContentVyxAA32_EnvironmentKeyTransformModifierVy12DrawingBoard0eF0VyADGGGAaBHPxAaBHD1__AmA0cL0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_249D72A74();
  sub_249D3C4C8(a4, a2, a3, a5);
  return swift_getWitnessTable();
}

uint64_t sub_249D6F328@<X0>(uint64_t *a2@<X8>)
{
  result = swift_unknownObjectUnownedLoadStrong();
  *a2 = result;
  return result;
}

id sub_249D6F364@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentState];
  *a2 = result;
  return result;
}

uint64_t sub_249D6F398()
{
  swift_getKeyPath();
  sub_249D6FE1C(&qword_27EF1B138, type metadata accessor for SnapshotSource, &protocol conformance descriptor for SnapshotSource);
  sub_249D72874();
}

BOOL SnapshotSource.isActive.getter()
{
  swift_getKeyPath();
  sub_249D6FE1C(&qword_27EF1B138, type metadata accessor for SnapshotSource, &protocol conformance descriptor for SnapshotSource);
  sub_249D72874();

  v1 = *(v0 + 24);
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = sub_249D3858C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_249D73514();

  sub_249D6FE1C(&qword_27EF1B090, _s8ObserverCMa, &unk_249D75274);
  sub_249D72874();

  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = [Strong contentState];

  return v5 != 2;
}

void sub_249D6F5F4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
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
    sub_249D6FE1C(&qword_27EF1B138, type metadata accessor for SnapshotSource, &protocol conformance descriptor for SnapshotSource);
    sub_249D72864();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_249D3C308();
  v5 = v4;
  v6 = a1;
  v7 = sub_249D73374();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 24);
LABEL_8:
  *(v2 + 24) = a1;
}

uint64_t SnapshotSource.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_249D72FD4();
  *(v0 + 24) = 0;
  sub_249D728A4();
  return v0;
}

uint64_t SnapshotSource.update<A>(snapshot:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v6 = sub_249D72FD4();
  swift_getKeyPath();
  v9 = v3;
  v10 = v6;
  v11 = v3;
  sub_249D6FE1C(&qword_27EF1B138, type metadata accessor for SnapshotSource, &protocol conformance descriptor for SnapshotSource);
  sub_249D72864();
}

uint64_t SnapshotSource.update(snapshot:)(uint64_t a1)
{
  sub_249D72FD4();
  swift_getKeyPath();
  sub_249D6FE1C(&qword_27EF1B138, type metadata accessor for SnapshotSource, &protocol conformance descriptor for SnapshotSource);
  sub_249D72864();
}

uint64_t sub_249D6FA24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_249D6FE1C(&qword_27EF1B138, type metadata accessor for SnapshotSource, &protocol conformance descriptor for SnapshotSource);
  sub_249D72874();

  *a2 = *(v3 + 16);
}

uint64_t sub_249D6FAD0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_249D6FE1C(&qword_27EF1B138, type metadata accessor for SnapshotSource, &protocol conformance descriptor for SnapshotSource);
  sub_249D72864();
}

void *sub_249D6FB9C()
{
  swift_getKeyPath();
  sub_249D6FE1C(&qword_27EF1B138, type metadata accessor for SnapshotSource, &protocol conformance descriptor for SnapshotSource);
  sub_249D72874();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

id sub_249D6FC44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_249D6FE1C(&qword_27EF1B138, type metadata accessor for SnapshotSource, &protocol conformance descriptor for SnapshotSource);
  sub_249D72874();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_249D6FD00(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_249D6F5F4(v1);
}

void sub_249D6FD30(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_249D6F5F4(v1);
}

uint64_t type metadata accessor for SnapshotSource(uint64_t a1)
{
  result = qword_27EF1C250;
  if (!qword_27EF1C250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_249D6FDAC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentState];
  *a2 = result;
  return result;
}

uint64_t sub_249D6FDE0@<X0>(uint64_t *a2@<X8>)
{
  result = swift_unknownObjectUnownedLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_249D6FE1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SnapshotSource.__allocating_init<A>(snapshot:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_249D700D4(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

uint64_t SnapshotSource.init<A>(snapshot:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_249D700D4(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t SnapshotSource.init()(uint64_t a1)
{
  *(v1 + 16) = sub_249D72FD4();
  *(v1 + 24) = 0;
  sub_249D728A4();
  return v1;
}

uint64_t SnapshotSource.deinit()
{

  v1 = OBJC_IVAR____TtC12DrawingBoard14SnapshotSource___observationRegistrar;
  v2 = sub_249D728B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SnapshotSource.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12DrawingBoard14SnapshotSource___observationRegistrar;
  v2 = sub_249D728B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_249D700D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v3 + 16) = sub_249D72FD4();
  *(v3 + 24) = 0;
  sub_249D728A4();
  (*(v6 + 16))(v8, a1, a2);
  v9 = sub_249D72FD4();
  swift_getKeyPath();
  v12 = v3;
  v13 = v9;
  v14 = v3;
  sub_249D6FE1C(&qword_27EF1B138, type metadata accessor for SnapshotSource, &protocol conformance descriptor for SnapshotSource);
  sub_249D72864();

  return v3;
}

uint64_t sub_249D70288(uint64_t a1)
{
  result = sub_249D728B4();
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

void sub_249D70370()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

uint64_t sub_249D703A8()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t (*sub_249D703FC(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x168uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + OBJC_IVAR____TtCV12DrawingBoard22WindowPropertiesReader6Reader__windowProperties);
  v7 = *(v1 + OBJC_IVAR____TtCV12DrawingBoard22WindowPropertiesReader6Reader__windowProperties + 16);
  v6 = *(v1 + OBJC_IVAR____TtCV12DrawingBoard22WindowPropertiesReader6Reader__windowProperties + 32);
  v8 = *(v1 + OBJC_IVAR____TtCV12DrawingBoard22WindowPropertiesReader6Reader__windowProperties);
  *(v3 + 41) = *(v1 + OBJC_IVAR____TtCV12DrawingBoard22WindowPropertiesReader6Reader__windowProperties + 41);
  v3[1] = v7;
  v3[2] = v6;
  *v3 = v8;
  v10 = v5[1];
  v9 = v5[2];
  v11 = *v5;
  *(v3 + 105) = *(v5 + 41);
  v3[5] = v10;
  v3[6] = v9;
  v3[4] = v11;
  sub_249D70B54(v3, (v3 + 8));
  *(v4 + 44) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1C278, "l^");
  MEMORY[0x24C201180]();
  return sub_249D704D0;
}

void sub_249D704D0(_OWORD **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 36);
  v3 = *(*a1 + 296);
  v4 = (*a1)[1];
  v1[12] = **a1;
  v1[13] = v4;
  v1[14] = v1[2];
  *(v1 + 233) = *(v1 + 41);
  v5 = v1[17];
  v1[19] = v1[16];
  v1[20] = v5;
  *(v1 + 42) = v2;
  *(v1 + 344) = v3;
  sub_249D72FF4();
  v6 = v1[13];
  v1[8] = v1[12];
  v1[9] = v6;
  v1[10] = v1[14];
  *(v1 + 169) = *(v1 + 233);
  sub_249D70BC4((v1 + 8));

  free(v1);
}

id sub_249D7079C()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_viewDidLayoutSubviews);
  v2 = sub_249D703FC(v15);
  if (*(v1 + 40))
  {
    return (v2)(v15, 0);
  }

  v4 = v1;
  result = [v0 view];
  if (result)
  {
    v5 = result;
    v6 = [result window];

    if (v6)
    {
      [v6 frame];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
    }

    else
    {
      v8 = 0;
      v10 = 0;
      v12 = 0;
      v14 = 0;
    }

    *v4 = v8;
    v4[1] = v10;
    v4[2] = v12;
    v4[3] = v14;
    return (v2)(v15, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_249D70AB8(uint64_t a1)
{
  result = sub_249D728F4();
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

uint64_t sub_249D70B54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1C278, "l^");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249D70BC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1C278, "l^");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_249D70C2C()
{
  v1 = sub_249D728F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[1];
  v17 = *v0;
  v18 = v5;
  v19[0] = v0[2];
  *(v19 + 9) = *(v0 + 41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1C278, "l^");
  sub_249D73004();
  v6 = type metadata accessor for WindowPropertiesReader(0);
  v7 = *(v2 + 16);
  v7(v4, v0 + *(v6 + 20), v1);
  v8 = type metadata accessor for WindowPropertiesReader.Reader(0);
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtCV12DrawingBoard22WindowPropertiesReader6Reader__windowProperties];
  v12 = v19[3];
  v11 = v20[0];
  v13 = v19[2];
  *(v10 + 41) = *(v20 + 9);
  *(v10 + 1) = v12;
  *(v10 + 2) = v11;
  *v10 = v13;
  v7(&v9[OBJC_IVAR____TtCV12DrawingBoard22WindowPropertiesReader6Reader_logger], v4, v1);
  v16.receiver = v9;
  v16.super_class = v8;
  v14 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, 0, 0);
  (*(v2 + 8))(v4, v1);
  return v14;
}

uint64_t sub_249D70E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_249D71CF8(&qword_27EF1C2A8, &unk_249D7A140);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_249D70EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_249D71CF8(&qword_27EF1C2A8, &unk_249D7A140);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_249D70F28(uint64_t a1)
{
  sub_249D71CF8(&qword_27EF1C2A8, &unk_249D7A140);
  sub_249D72D84();
  __break(1u);
}

uint64_t sub_249D70F94(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_249D70FF0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_249D70FF0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_249D710BC(v11, 0, 0, 1, a1, a2);
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
    sub_249D6A3C4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_249D710BC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_249D711C8(a5, a6);
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
    result = sub_249D73504();
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

void *sub_249D711C8(uint64_t a1, unint64_t a2)
{
  v3 = sub_249D71214(a1, a2);
  sub_249D71344(&unk_285CF5E40);
  return v3;
}

void *sub_249D71214(uint64_t a1, unint64_t a2)
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

  v6 = sub_249D71430(v5, 0);
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

  result = sub_249D73504();
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
        v10 = sub_249D731B4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_249D71430(v10, 0);
        result = sub_249D734D4();
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

uint64_t sub_249D71344(uint64_t result)
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

  result = sub_249D714A4(result, v11, 1, v3);
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

void *sub_249D71430(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1C280, &unk_249D7A0E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_249D714A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1C280, &unk_249D7A0E0);
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

uint64_t sub_249D71598(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = a1;
    [v3 frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    if (![v3 interfaceOrientation])
    {
      v12 = sub_249D728D4();
      v13 = sub_249D73304();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_249D35000, v12, v13, "moved to window with unknown interfaceOrientation", v14, 2u);
        MEMORY[0x24C202240](v14, -1, -1);
      }
    }

    v15 = sub_249D728D4();
    v16 = sub_249D73324();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v37 = v18;
      *v17 = 136315394;
      v19 = BSInterfaceOrientationDescription();
      v20 = sub_249D73144();
      v22 = v21;

      v23 = sub_249D70FF0(v20, v22, &v37);

      *(v17 + 4) = v23;
      *(v17 + 12) = 2080;
      *&v40 = v5;
      *(&v40 + 1) = v7;
      *&v41 = v9;
      *(&v41 + 1) = v11;
      type metadata accessor for CGRect(0);
      v24 = sub_249D73154();
      v26 = sub_249D70FF0(v24, v25, &v37);

      *(v17 + 14) = v26;
      _os_log_impl(&dword_249D35000, v15, v16, "hosting window moved: %s, %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C202240](v18, -1, -1);
      MEMORY[0x24C202240](v17, -1, -1);
    }

    v27 = *(v2 + OBJC_IVAR____TtCV12DrawingBoard22WindowPropertiesReader6Reader__windowProperties + 16);
    v37 = *(v2 + OBJC_IVAR____TtCV12DrawingBoard22WindowPropertiesReader6Reader__windowProperties);
    v38 = v27;
    v29 = *(v2 + OBJC_IVAR____TtCV12DrawingBoard22WindowPropertiesReader6Reader__windowProperties);
    v28 = *(v2 + OBJC_IVAR____TtCV12DrawingBoard22WindowPropertiesReader6Reader__windowProperties + 16);
    v39[0] = *(v2 + OBJC_IVAR____TtCV12DrawingBoard22WindowPropertiesReader6Reader__windowProperties + 32);
    *(v39 + 9) = *(v2 + OBJC_IVAR____TtCV12DrawingBoard22WindowPropertiesReader6Reader__windowProperties + 41);
    v34 = v29;
    v35 = v28;
    *v36 = *(v2 + OBJC_IVAR____TtCV12DrawingBoard22WindowPropertiesReader6Reader__windowProperties + 32);
    *&v36[9] = *(v2 + OBJC_IVAR____TtCV12DrawingBoard22WindowPropertiesReader6Reader__windowProperties + 41);
    sub_249D70B54(&v37, &v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1C278, "l^");
    sub_249D72FF4();
  }

  else
  {
    v30 = *(v1 + OBJC_IVAR____TtCV12DrawingBoard22WindowPropertiesReader6Reader__windowProperties + 16);
    v37 = *(v1 + OBJC_IVAR____TtCV12DrawingBoard22WindowPropertiesReader6Reader__windowProperties);
    v38 = v30;
    v32 = *(v1 + OBJC_IVAR____TtCV12DrawingBoard22WindowPropertiesReader6Reader__windowProperties);
    v31 = *(v1 + OBJC_IVAR____TtCV12DrawingBoard22WindowPropertiesReader6Reader__windowProperties + 16);
    v39[0] = *(v1 + OBJC_IVAR____TtCV12DrawingBoard22WindowPropertiesReader6Reader__windowProperties + 32);
    *(v39 + 9) = *(v1 + OBJC_IVAR____TtCV12DrawingBoard22WindowPropertiesReader6Reader__windowProperties + 41);
    v34 = v32;
    v35 = v31;
    *v36 = *(v1 + OBJC_IVAR____TtCV12DrawingBoard22WindowPropertiesReader6Reader__windowProperties + 32);
    *&v36[9] = *(v1 + OBJC_IVAR____TtCV12DrawingBoard22WindowPropertiesReader6Reader__windowProperties + 41);
    sub_249D70B54(&v37, &v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1C278, "l^");
    sub_249D72FF4();
  }

  v40 = v34;
  v41 = v35;
  v42[0] = *v36;
  *(v42 + 9) = *&v36[9];
  return sub_249D70BC4(&v40);
}

uint64_t sub_249D71910()
{
  v1 = [v0 interfaceOrientation];
  if (!v1)
  {
    v2 = sub_249D728D4();
    v3 = sub_249D73304();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_249D35000, v2, v3, "changed orientation to unknown", v4, 2u);
      MEMORY[0x24C202240](v4, -1, -1);
    }
  }

  v6 = sub_249D703FC(v8);
  if ((*(v5 + 40) & 1) == 0)
  {
    *(v5 + 32) = v1;
  }

  return (v6)(v8, 0);
}

uint64_t sub_249D71A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_249D728F4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_249D71AE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_249D728F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_249D71BA4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_249D71BDC(uint64_t a1)
{
  sub_249D71C60(319);
  if (v1 <= 0x3F)
  {
    sub_249D728F4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_249D71C60(uint64_t a1)
{
  if (!qword_27EF1C298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BCD0, &qword_249D78AF0);
    v1 = sub_249D73014();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF1C298);
    }
  }
}

uint64_t sub_249D71CF8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WindowPropertiesReader(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_249D71D3C(unint64_t a1, double a2, double a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v27.origin.x = *v3;
  v27.origin.y = v6;
  v27.size.width = v7;
  v27.size.height = v8;
  MinX = CGRectGetMinX(v27);
  v28.origin.x = v5;
  v28.origin.y = v6;
  v28.size.width = v7;
  v28.size.height = v8;
  MinY = CGRectGetMinY(v28);
  v29.origin.x = v5;
  v29.origin.y = v6;
  v29.size.width = v7;
  v29.size.height = v8;
  MaxX = CGRectGetMaxX(v29);
  v30.origin.x = v5;
  v30.origin.y = v6;
  v30.size.width = v7;
  v30.size.height = v8;
  v9 = CGRectGetMinY(v30);
  v31.origin.x = v5;
  v31.origin.y = v6;
  v31.size.width = v7;
  v31.size.height = v8;
  v10 = CGRectGetMaxX(v31);
  v32.origin.x = v5;
  v32.origin.y = v6;
  v32.size.width = v7;
  v32.size.height = v8;
  MaxY = CGRectGetMaxY(v32);
  v33.origin.x = v5;
  v33.origin.y = v6;
  v33.size.width = v7;
  v33.size.height = v8;
  v12 = CGRectGetMinX(v33);
  v34.origin.x = v5;
  v34.origin.y = v6;
  v34.size.width = v7;
  v34.size.height = v8;
  v13 = CGRectGetMaxY(v34);
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v17 = a3 - v9;
      v15 = a3 - MaxY;
      v14 = a3 - v13;
      v13 = v12;
      MaxY = v10;
      v9 = MaxX;
      v18 = a3 - MinY;
      v16 = MinX;
      goto LABEL_9;
    }

    v18 = MinY;
    if (a1 == 4)
    {
      v16 = a2 - MinX;
      v17 = v9;
      v9 = a2 - MaxX;
      v15 = MaxY;
      MaxY = a2 - v10;
      v14 = v13;
      v13 = a2 - v12;
      goto LABEL_9;
    }

    goto LABEL_37;
  }

  v14 = v12;
  v15 = v10;
  v16 = MinY;
  v17 = MaxX;
  v18 = MinX;
  if (a1 >= 2)
  {
    if (a1 == 2)
    {
      v18 = a2 - MinX;
      v16 = a3 - MinY;
      v17 = a2 - MaxX;
      v9 = a3 - v9;
      v15 = a2 - v10;
      MaxY = a3 - MaxY;
      v14 = a2 - v12;
      v13 = a3 - v13;
      goto LABEL_9;
    }

LABEL_37:
    sub_249D735B4();
    __break(1u);
    return;
  }

LABEL_9:
  if (v17 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  if (v15 < v19)
  {
    v19 = v15;
  }

  if (v14 < v19)
  {
    v19 = v14;
  }

  if (v9 >= v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = v9;
  }

  if (MaxY < v20)
  {
    v20 = MaxY;
  }

  if (v13 < v20)
  {
    v20 = v13;
  }

  if (v18 > v17)
  {
    v17 = v18;
  }

  if (v17 <= v15)
  {
    v17 = v15;
  }

  if (v17 <= v14)
  {
    v17 = v14;
  }

  if (v16 > v9)
  {
    v21 = v16;
  }

  else
  {
    v21 = v9;
  }

  if (v21 <= MaxY)
  {
    v21 = MaxY;
  }

  if (v21 > v13)
  {
    v13 = v21;
  }

  *v3 = v19;
  v3[1] = v20;
  v3[2] = v17 - v19;
  v3[3] = v13 - v20;
}

double sub_249D71FCC@<D0>(_OWORD *a2@<X8>)
{
  sub_249D4EDC8();
  sub_249D72994();
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_249D72020(void *a1)
{
  sub_249D4EDC8();

  return sub_249D729A4();
}

uint64_t Transaction.init(sceneTransitioner:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_249D4EDC8();
  sub_249D729A4();
  return 0;
}

uint64_t sub_249D72100()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t Transaction.init(actions:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_249D7281C;
  *(v3 + 24) = v2;
  sub_249D4EDC8();
  sub_249D729A4();
  return 0;
}

uint64_t sub_249D721E8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t Transaction.init(action:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BCA8, &qword_249D786D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249D7A1C0;
  *(inited + 32) = a1;
  v3 = a1;
  sub_249D4C840(inited);
  v5 = v4;
  swift_setDeallocating();
  swift_arrayDestroy();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_249D7281C;
  *(v7 + 24) = v6;
  sub_249D4EDC8();

  sub_249D729A4();

  return 0;
}

uint64_t withSceneTransition<A>(transitioner:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  KeyPath = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v13[0] = sub_249D72820;
  v13[1] = v11;

  sub_249D72430(KeyPath, v13, a3, a4, a5);
}

uint64_t sub_249D72430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x28223BE20](a1);
  v8[1] = 0;
  (*(v6 + 16))(v8 - v5);
  swift_setAtWritableKeyPath();

  sub_249D72A94();
}

uint64_t withSceneActions<A>(_:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;

  withSceneTransition<A>(transitioner:body:)(sub_249D727EC, v8, a2, a3, a4);
}

void sub_249D72630(uint64_t a1, void *a2, uint64_t a3)
{
  sub_249D4C7F4();
  sub_249D38A68();
  v4 = sub_249D732C4();
  [a2 setActions_];
}

uint64_t withSceneAction<A>(_:body:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BCA8, &qword_249D786D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249D7A1C0;
  *(inited + 32) = a1;
  v9 = a1;
  sub_249D4C840(inited);
  v11 = v10;
  swift_setDeallocating();
  swift_arrayDestroy();
  withSceneActions<A>(_:body:)(v11, a2, a3, a4);
}

double sub_249D72794@<D0>(_OWORD *a2@<X8>)
{
  sub_249D4EDC8();
  sub_249D72994();
  result = *&v4;
  *a2 = v4;
  return result;
}